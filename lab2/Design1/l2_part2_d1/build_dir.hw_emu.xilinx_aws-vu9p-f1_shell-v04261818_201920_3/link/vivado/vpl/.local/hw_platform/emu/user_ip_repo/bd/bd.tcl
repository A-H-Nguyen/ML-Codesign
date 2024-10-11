source resource_util.tcl

proc init { cell params } {
  set_property CONFIG.ADVANCED_PROPERTIES {} [get_bd_cells $cell]
}

# Moved to HIP
proc set_board_info_env { } {
}

proc set_addr_info_env { cell } {
  global env
  set ip [get_bd_cell $cell]

  # Address mapping handoff
  set addr_info {}
  foreach i [get_bd_intf_pins $ip/S*_AXI*] {
    set mapping_segs [get_bd_addr_segs -addressing -of $i]
    set slave_segs [get_bd_addr_segs -of $i]

    foreach sseg $slave_segs {
      set sseg_name [get_property NAME $sseg]
      foreach mseg $mapping_segs {
        set mseg_name [get_property NAME $mseg]
        if {[string match *$sseg_name $mseg_name]} {
          if {[string match DDR4* $sseg_name] || [string match M*_AXI_MEM* $sseg_name] || [string match PLRAM* $sseg_name]} {
            dict set addr_info [get_property NAME $i] $sseg_name [get_property OFFSET $mseg] [get_property range $mseg]
          } else {
            bd::send_msg -of $cell -type WARNING -msg_id 1 -text "[get_property NAME $sseg] is not a supported segment and will be ignored..."
          }
        }
      }
    }
  }

  set env(SDX_HIP_ADDR_INFO) $addr_info
}


proc set_si_clk_keys_info_env { cell } {
  global env
  set si_clk_keys_info {}
  
  foreach i [get_bd_intf_pins $cell/*AXI*] {
    set intf_obj [find_bd_objs -thru_hier -relation CONNECTED_TO $i]
    if {[llength $intf_obj] == 1} {
      dict set si_clk_keys_info [get_property NAME $i] [sdx_memory_subsystem::util::get_clock_key $intf_obj]
    } else {
      dict set si_clk_keys_info [get_property NAME $i] [sdx_memory_subsystem::util::get_clock_key [get_bd_pins $cell/aclk]]
    }
  }
  set env(SDX_HIP_SI_CLK_KEYS_INFO) "$si_clk_keys_info"
}

proc set_slr_info_env { cell } {
  global env
  set slr_info {}

  if {[get_param ips.enableSLRParameter] != 0} {
    foreach i [get_bd_intf_pins $cell/*AXI*] {
      set endpoint [find_bd_objs -thru_hier -relation CONNECTED_TO $i]
      if {[llength $endpoint] == 1} {
        set slr_assignment [get_property -quiet CONFIG.SLR_ASSIGNMENT $endpoint]
        if {[llength $slr_assignment] == 1} {
          dict set slr_info [get_property NAME $i] $slr_assignment
        } else {
          bd::send_msg -of $cell -type INFO -msg_id 1 -text "No SLR assignment metadata detected at $endpoint"
        }
      } else {
       bd::send_msg -of $cell -type WARNING -msg_id 1 -text "Did not find any object connected to $i"
      }
    }
  } else {
   # MESSAGE
  }

  set env(SDX_HIP_SLR_INFO) "$slr_info"
}

proc set_dsa_info_env { cell } {
  global env
  set dsa_info {}
  set ap [get_property CONFIG.ADVANCED_PROPERTIES [get_bd_cells $cell]]
  if {![dict exists $ap __temp_dsa_info]} {
    if {[info exists env(DSA_INFO)]} {
      set dsa_info $env(DSA_INFO)
    } else {
#      bd::send_msg -of $cell -type ERROR -msg_id 1 -text "Environment variable DSA_INFO is not defined.  Unable to proceed..."
      set dsa_info {}
    }    
  } else {
    set dsa_info [dict get $ap __temp_dsa_info]
  }
  set env(SDX_HIP_DSA_INFO) [string map {\n {}} $dsa_info]
}

proc pre_propagate { cell params } {
  global env
  set_board_info_env
  set_addr_info_env $cell
  set_slr_info_env $cell
  set_dsa_info_env $cell
}

proc propagate { cell params } {
  global env
  # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  # TODO: CR#####?
  # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  set_si_clk_keys_info_env $cell
}

proc post_config_ip { cell params } {
}
