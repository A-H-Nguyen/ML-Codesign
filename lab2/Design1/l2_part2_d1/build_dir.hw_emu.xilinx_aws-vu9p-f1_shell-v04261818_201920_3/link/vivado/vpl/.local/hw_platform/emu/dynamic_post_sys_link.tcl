 
set fd [open "./_post_sys_link_gen_constrs.xdc" w]
puts $fd "# No content"
close $fd

# Connect available interrupt pins on compute units to the interrupt vector
# -------------------------------------------------------------------------

# The wiring proc takes in the CU's interrupt BD pin and the overall interrupt index
proc wire_cu_to_xlconcat_intr {__cu_inst_intr_pin __intr_pin_num} {
  # Set number of xlconcat blocks and number of interrupts per block
  set __num_xlconcat 4
  set __num_pin_per_xlconcat 32

  # Get the xlconcat instance and pin number to work on now
  set __xlconcat_inst_num [expr {$__intr_pin_num / $__num_pin_per_xlconcat}]
  set __xlconcat_pin_num [expr {$__intr_pin_num - ($__xlconcat_inst_num * $__num_pin_per_xlconcat)}]

  # Ensure that the xlconcat instance and its pin exist, then get those objects
  if {($__xlconcat_pin_num < $__num_pin_per_xlconcat) && ($__xlconcat_inst_num < $__num_xlconcat)} {
    set __xlconcat_inst [get_bd_cells -hierarchical -quiet -filter NAME=~xlconcat_interrupt_${__xlconcat_inst_num}]
    set __xlconcat_pin [get_bd_pins -of_objects $__xlconcat_inst -quiet -filter NAME=~In${__xlconcat_pin_num}]

    # If the xlconcat pin object exists, disconnect it from ground and connect the CU's interrupt BD pin to it
    if {[llength $__xlconcat_pin] == 1} {
      disconnect_bd_net /interrupt_concat/xlconstant_gnd_dout $__xlconcat_pin -quiet
      connect_bd_net $__cu_inst_intr_pin $__xlconcat_pin -quiet
    } else {
      puts "(Post-linking DSA Tcl hook) No available xlconcat pins found"
    }
  } else {
      puts "(Post-linking DSA Tcl hook) No remaining xlconcat pins to connect to"
  }
}

# Make sure the kernel key in the config_info dict exists
if {[dict exists $config_info kernels]} {
  # Make sure that list of kernels is populated
  set __k_list [dict get $config_info kernels]
  if {[llength $__k_list] > 0} {
    # Translate the list of kernels to a list of BD cells and their AXI-Lite address offsets
    set __cu_inst_addr_list {}
    # Iterate over each kernel
    foreach __k_inst $__k_list {
      set __cu_bd_cell_list [get_bd_cells -quiet -filter "VLNV=~*:*:${__k_inst}:*"]
      # Iterate over each compute unit for the current kernel
      foreach __cu_bd_cell $__cu_bd_cell_list {
        set __cu_bd_cell_sub [string range $__cu_bd_cell 1 [string length $__cu_bd_cell]]
        set ctrl_addr_space [get_bd_addr_spaces /userpf_control_*]
        if {[llength $ctrl_addr_space] != 0 } {
          if {[llength [get_bd_addr_segs -of_objects $ctrl_addr_space -filter "NAME =~ *${__cu_bd_cell_sub}_*"]]>0 } {
            set __cu_offset [get_property OFFSET [get_bd_addr_segs -of_objects $ctrl_addr_space -filter "NAME =~ *${__cu_bd_cell_sub}_*"]]
            lappend __cu_inst_addr_list "$__cu_bd_cell $__cu_offset"
          }
        }
        }
    }
    # Make sure the list of BD cells and their AXI-Lite address offsets is populated
    if {[llength $__cu_inst_addr_list] > 0} {
      # Order the list by increasing AXI-Lite address offsets, then extract just ordered BD cells
      set __cu_inst_list {}
      unset __cu_inst_list
      set __cu_inst_addr_list_ordered [lsort -index 1 $__cu_inst_addr_list]
      foreach __cu_pair $__cu_inst_addr_list_ordered {
        lappend __cu_inst_list [lindex $__cu_pair 0]
      }
      # Of the BD cells, iterate through those with an interrupt BD pin
      set __intr_pin_num 0
      foreach __cu_inst_intr $__cu_inst_list { 
        set __cu_inst_intr_pin [get_bd_pins -of_objects [get_bd_cells $__cu_inst_intr] -quiet -filter "TYPE=~intr"]
        if {[llength $__cu_inst_intr_pin] == 1} {
          # When a BD cell has an interrupt BD pin, wire it to the next available xlconcat pin
          wire_cu_to_xlconcat_intr $__cu_inst_intr_pin $__intr_pin_num
          incr __intr_pin_num
        }
      }
    }   else {
      puts "(Post-linking DSA Tcl hook) No BD cells found for interrupt wiring"
    }
  } else {
  puts "(Post-linking DSA Tcl hook) No CUs found for interrupt wiring"
  }
} else {
  puts "(Post-linking DSA Tcl hook) No kernels key in config_info dict for interrupt wiring"
}

#if {[get_bd_cells dynamic_region] != "" } {
#    move_bd_cells [get_bd_cells dynamic_region] [get_bd_cells -filter {NAME!="static_region" && NAME!="dynamic_region"}]
#}
set_property generate_synth_checkpoint 0 [get_files pfm_dynamic.bd]
assign_bd_address

