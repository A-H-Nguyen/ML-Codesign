namespace eval ::sdx_memory_subsystem {  
  if {[llength [info procs dbg_puts]] != 1} {
    proc dbg_puts { s } { }    
  }

  namespace eval util {
    proc get_clock_key { clock } {
      return "[get_property CONFIG.FREQ_HZ $clock]:[get_property CONFIG.PHASE $clock]:[get_property CONFIG.CLK_DOMAIN $clock]"
    }

    proc find_matching_clock { clock_key clock_pins } {
      foreach clock $clock_pins {
        set key [get_clock_key $clock]
        if {[string match $key $clock_key]} {
          return $clock
        }
      }
      return ""
    }
    proc find_associated_clock_pin { bd_intf_pin } {
      set interface [get_bd_intf_pins $bd_intf_pin]
      
      set parent_cell [get_bd_cells -of $interface]
      set interface_name [get_property NAME $interface] 
      if {[llength $parent_cell] == 0 } {
        send_msg_id {sdx_memory_subsystem 1-1} ERROR "Can't recover parent bdcell of $bd_intf_pin..."
        return {}
      }
      
      set parent_cell_clocks [get_bd_pins -of $parent_cell -filter {type=~clk}]
      foreach clock_pin $parent_cell_clocks {
        set associations [split [get_property CONFIG.ASSOCIATED_BUSIF $clock_pin] :]
        foreach a $associations {
          if {[string equal -nocase $a $interface_name]} {
            return $clock_pin
          }
        }
      }
    }
    proc find_first_unconnected_intf { interfaces } {
      foreach i $interfaces {
        if {[llength [get_bd_intf_nets -quiet -of $i]] == 0} {
          return $i
        }
      }
      return {};
    }
    proc find_first_unconnected_pin { pins } {
      foreach i $pins {
        if {[llength [get_bd_nets -quiet -of $i]] == 0} {
          return $i
        }
      }
      return {};
    }
    proc validate_clock_metadata { o } {
      foreach p {FREQ_HZ CLK_DOMAIN PHASE} {
        set v [get_property CONFIG.$p $o]
        if {[string length $v] == 0} {
          return false
        }
      }
      return true
    }

    proc xil_clog2 { i } {
      set l 1
      while {[expr 1<<$l] <= $i} { incr l }
      return $l
    }

    proc clog_range { range } {
      if {![regexp {(\d+)(K|M|G|T)} $range {} range_value range_type]} {
        send_msg_id {sdx_memory_subsystem_utils 1-1} ERROR "Segment range format incorrect: $range"
        return {}
      }
      set clog_range_type_map {K 10 M 20 G 30 T 40}
      set clog_range_type [dict get $clog_range_type_map $range_type]
      set range_high_addr [expr ($range_value*(1<<$clog_range_type))-1]
      set clog_range [xil_clog2 $range_high_addr]
      return $clog_range
    }

    proc get_board_component_ddr_size { board_component } {
      if {[llength $board_component] != 1} {
        send_msg_id {sdx_memory_subsystem 1-1} ERROR "Can't recover board component for $board_component_name"
        return {}
      }

      set size [get_property PARAM.size $board_component]
      if {[string length $size] == 0} {
        send_msg_id {sdx_memory_subsystem 1-1} ERROR "Can't recover size from board component $board_component_name.   Possible incomplete board definition"
        return {}
      }
      if {![regexp {(\d+[MGTP])} $size {} trimmed_size]} {
        send_msg_id {sdx_memory_subsystem 1-1} ERROR "Board component $board_component_name has a size property value ($size) in an unrecognized format."
        return {}
      }
      return $trimmed_size
    }

    proc get_resource_address_mappings { memory_subsystem_bdcell } {
      set mappings {}
      
      foreach si [get_bd_intf_pins $memory_subsystem_bdcell/S*_AXI] {
        set slave_segs [get_bd_addr_segs -of $si]
        foreach slave_seg $slave_segs {
          set resource_name [get_property NAME $slave_seg]
          set master_seg [get_bd_addr_segs -of $slave_seg]
          if {[llength $master_seg] == 1} {
            if {[dict exists $mappings $resource_name]} {
              set master_seg_offset [get_property OFFSET $master_seg]
              set master_seg_range  [get_property RANGE  $master_seg]
              if {[dict get $mappings $resource_name OFFSET] != $master_seg_offset} {
                send_msg_id {sdx_memory_subsystem 1-1} {CRITICAL WARNING} "Detected multiple address offsets for resource $resource_name (offset at $si was $master_seg_offset, other mappings at [dict get $mappings $resource_name OFFSET])"
              }              
            } else {
              dict set mappings $resource_name OFFSET [get_property OFFSET $master_seg]
              dict set mappings $resource_name RANGE [get_property RANGE $master_seg]
            }
          }
          if {[llength $master_seg] > 1} {
            send_msg_id {sdx_memory_subsystem 1-1} {CRITICAL WARNING} "Detected multiple mappings of $slave_seg from $si. This is not currently supported."
          }
          if {[llength $master_seg] == 0} {
            # Nothing to do - segment is either not mapped or has been excluded 
          }
        }
      }
      return $mappings
    }
  }  

  proc get_memory_resources { memory_subsystem_bdcell } {

    dbg_puts "BEGIN: get_memory_resources"
    set memory_subsystem_bdcell [get_bd_cells $memory_subsystem_bdcell]
    set fn sdx_memory_subsystem__hpfm_handoff.rld
    set ip_component_name [get_property CONFIG.COMPONENT_NAME $memory_subsystem_bdcell]
    set ip [get_ips $ip_component_name]
    set file [get_files $fn -of $ip]
    if {[llength $file] != 1} {
      send_msg_id {sdx_memory_subsystem 1-1} ERROR "Could not find HPFM metadata file.  The design must be validated and generated before calling this function."
      return {}      
    }
    set fp [open $file r]
    set data [read $fp]
    close $fp
    dbg_puts "result: $data"
    dbg_puts "END: get_memory_resources"
    return $data
  }

  proc map_memory_resource { master_interface memory_subsystem_bdcell memory_banks } {
    # ----------------------------------------------------------------------
    # Validate master_interface:
    set mi $master_interface
    set mi_vlnv [get_property VLNV $mi]
    set mi_mode [get_property MODE $mi]
    set mi_class [get_property CLASS $mi]
    set mi_type [get_property BD_ATTRIBUTE.TYPE $mi]
    if {![string match "xilinx.com:interface:aximm_rtl:*" $mi_vlnv]} {
      send_msg_id {sdx_memory_subsystem 1-1} ERROR "$master_interface is not an AXI Memory Mapped Interface"
      return;          
    }
    if {!(($mi_class == "bd_intf_port" && $mi_mode == "Slave") ||
      ($mi_class == "bd_intf_pin" && $mi_mode == "Master"))} {
      send_msg_id {sdx_memory_subsystem 1-1} ERROR "$master_interface cannot be connected to an AXI Memory Mapped Slave Interface"
      return;
    }
    
    if {![string match -nocase "END_POINT" $mi_type]} {
      send_msg_id {sdx_memory_subsystem 1-1} ERROR "$master_interface is not an AXI endpoint interface"
      return;
    }
    
    # ----------------------------------------------------------------------
    # Validate memory_subsystem_bdcell:
    set memory_subsystem $memory_subsystem_bdcell
    set memory_subsystem_vlnv [get_property VLNV $memory_subsystem_bdcell]
    if {![string match "xilinx.com:ip:sdx_memory_subsystem:*" $memory_subsystem_vlnv]} {
      send_msg_id {sdx_memory_subsystem 1-1} ERROR "$memory_subsystem_bdcell is not a memory_subsystem instance"
      return;
    }

    # ----------------------------------------------------------------------
    # Establish a connection if none already exists
    set mi_net [get_bd_intf_nets -quiet -of $mi]

    if {[llength $mi_net] == 0} {
      set target_si [util::find_first_unconnected_intf [get_bd_intf_pins $memory_subsystem/S*_AXI]]

      if {[llength $target_si] == 0} {
        # Add a new interface:
        set num_si [get_property CONFIG.NUM_SI $memory_subsystem]
        set_property CONFIG.NUM_SI [incr num_si] $memory_subsystem
        set idx [format %.2d [expr $num_si - 1]]
        set target_si [get_bd_intf_pins $memory_subsystem/S${idx}_AXI]
      }
      set master_clock_key [util::get_clock_key $mi] 
      # ----------------------------------------------------------------------
      # Find the clock source of the master
      set source_clock {}
      if {[get_property CLASS $master_interface] == "bd_intf_pin"} {
        set master_cell [get_bd_cells -of $master_interface]
        set master_clocks [get_bd_pins -filter {TYPE==clk} -of $master_cell]
        set source_clock_pin [util::find_associated_clock_pin $master_interface]
        if {[llength $source_clock_pin] == 0} {
          send_msg_id {sdx_memory_subsystem 1-1} ERROR "Could not identify a clock source pin of $master_interface on $master_cell..."
          return
        }
        set source_clock [find_bd_objs -thru_hier -relation CONNECTED_TO $source_clock_pin]
        if {[llength $source_clock] == 0} {
          send_msg_id {sdx_memory_subsystem 1-1} ERROR "$master_interface is associated to $source_clock_pin on $master_cell but this clock pin is not connected to a clock source..."
          return
        }
      } else {
        # Try to find the interface port association in an external clock ports
        foreach clock_port [get_bd_ports -filter {type==clk}] {
          set associated_busifs [split [get_property CONFIG.ASSOCIATED_BUSIF $clock_port] :]
          set association_match [lsearch -exact -inline $associated_busifs [get_property NAME $master_interface]]          
          if {[llength $association_match] == 1} {
            set source_clock $clock_port
            if {[get_property DIR $clock_port] == "O"} {
              set connected_source [find_bd_objs -thru_hier -relation CONNECTED_TO $clock_port]
              if {[llength $source_clock] == 1} {
                set source_clock $connected_source
              }
            }
            break
          }
        }

        if {[llength $source_clock] == 0} {
          send_msg_id {sdx_memory_subsystem 1-1} ERROR "$master_interface is not associated with any clock port. Unable to determine clock source."
        }
      }

      connect_bd_intf_net $master_interface $target_si

      # Validate bank names
      set si_bank_names {}
      foreach slave_segment [get_bd_addr_segs -of $target_si] {
        lappend si_bank_names [get_property NAME $slave_segment]
      }
      foreach bank $memory_banks {
        if {[lsearch -exact $si_bank_names $bank] == -1} {
          send_msg_id {sdx_memory_subsystem 1-1} {CRITICAL WARNING} "$bank is not a valid memory resource name at $target_si.   This mapping will be ignored."
        }
      }

      # ----------------------------------------------------------------------
      # Is the source clock already connected to the subsystem?
      set attached_clocks {}
      foreach clock_pin [get_bd_pins $memory_subsystem/aclk*] {
        set attached_clock_source [find_bd_objs -thru_hier -relation connected_to $clock_pin]
        if {[llength $attached_clock_source] == 1} {
          dict set attached_clocks [util::get_clock_key $attached_clock_source] $attached_clock_source
        } else {
          send_msg_id {sdx_memory_subsystem 1-1} "Found $clock_pin but it is not connected to any clock source - ignoring"
        }
      }

      set source_clock_key [util::get_clock_key $source_clock]
      
      if {[dict exists $attached_clocks $source_clock_key]} {
        set matching_attached_clock [dict get $attached_clocks $source_clock_key]
      } else {
        # ----------------------------------------------------------------------
        # None of the attached clocks match the master interface's clock...
        
        set available_aclk [util::find_first_unconnected_pin [get_bd_pins $memory_subsystem/aclk*]]          
        if {[llength $available_aclk] == 1} {
          connect_bd_net $source_clock [get_bd_pins $available_aclk]
        } else {
          set num_clks [get_property CONFIG.NUM_CLKS $memory_subsystem]
          set_property CONFIG.NUM_CLKS [expr $num_clks+1] $memory_subsystem          
          incr num_clks
          set clk_port_name aclk
          if {$num_clks > 1} { set clk_port_name aclk[expr $num_clks - 1] }
          connect_bd_net $source_clock [get_bd_pins $memory_subsystem/$clk_port_name]
        }
      }

      # ----------------------------------------------------------------------
      # Initially exclude all the available segments to avoid
      # interaction with subsequent address auto assignment
      set bank_segments [get_bd_addr_segs -of $target_si] 
      set mas [get_bd_addr_space -of $master_interface]
      foreach slave_seg $bank_segments {
        exclude_bd_addr_seg -quiet $slave_seg -target_address_space $mas
        set excluded_seg [get_bd_addr_segs -excluded -of $slave_seg]
        if {[llength $excluded_seg] != 1} {
          set slave_seg_name [get_property NAME $slave_seg]
          send_msg_id {1-1} {WARNING} "Unable to exclude $slave_seg_name in $mas. This can happen if the address width of $mas is too narrow to accommodate the memory bank."
        }
      }      
    } else {
      set target_si [find_bd_objs -thru_hier -relation CONNECTED_TO $mi]      
      set target_cell [get_bd_cells -of $target_si]
      set target_cell_vlnv [get_property VLNV $target_cell]
      
      if {![string match "xilinx.com:ip:sdx_memory_subsystem:*" $target_cell_vlnv]} {
        send_msg_id {sdx_memory_subsystem 1-1} WARNING "$master_interface has an existing connection but is not directly connected to $memory_subsystem - this is not recommended and subsequent errors may occur."
        set target_si_bridge [get_property BRIDGES $target_si]
        set target_mi [get_bd_intf_pins -of $target_cell -filter "NAME==$target_si_bridge"]
        if {[llength $target_mi] == 0} {
          send_msg_id {1-1} ERROR "Failed to traverse intermediate IP from SI $target_si (bridge: $target_si_bridge)"
          return
        }
        set reachable_slaves [find_bd_objs -thru_hier -relation addressable_slave $target_mi]
        dbg_puts "reachable_slaves of $target_mi:  $reachable_slaves"
        if {[llength $reachable_slaves] == 1} {
          set target_si $reachable_slaves
        } elseif {[llength $reachable_slaves] > 1} {
          dbg_puts "Multiple reachable slaves attached to $mi ($reachable_slaves).  Searching for first instance of memory subsystem"
          set target_si {}
          foreach rs $reachable_slaves {
            set rs_cell [get_bd_cells -of $rs]
            set rs_cell_path [get_property PATH $rs_cell] 
            set memory_subsystem_path [get_property PATH $memory_subsystem]
            if {[string equal $memory_subsystem_path $rs_cell_path]} {
              set target_si $rs
              break
            }              
          }
          if {[llength $target_si] == 0} {
            send_msg_id {sdx_memory_subsystem 1-1} ERROR "$master_interface was has existing connection ($mi) but the specified memory subsystem ($memory_subsystem) was not found on this connection"
            return;
          }
        }
      }
    }

    set addr_space [get_bd_addr_space -of $mi]
    if {[llength $addr_space] == 0} {
      send_msg_id {sdx_memory_subsystem 1-1} ERROR "Can't find any master address space for $mi - is it really an endpoint?"
      return ""
    }
    
    set current_resource_address_mappings [util::get_resource_address_mappings $memory_subsystem]
    
    # ----------------------------------------------------------------------
    # Include each requested memory bank in the master
    foreach bank [lsort $memory_banks] {
      set slave_segment [get_bd_addr_segs -of $target_si -filter "NAME=~*$bank*"]
      if {[llength $slave_segment] == 1} {
        set mapped_master_segment [get_bd_addr_segs -of $slave_segment]
        if {[llength $mapped_master_segment] == 1} {
          send_msg_id {sdx_memory_subsystem 1-1} {INFO} "Memory resource $bank is already mapped into $mapped_master_segment."
          continue
        }
        set excluded_master_segment [get_bd_addr_segs -excluded -of $slave_segment]
        if {[llength $excluded_master_segment] == 0} {
          send_msg_id {sdx_memory_subsystem 1-1} {CRITICAL WARNING} "Memory resources must be in the excluded state at $master_interface before they can be mapped. This usually occurs if $master_interface was not attached to $memory_subsystem with sdx_memory_subsystem::map_memory_resource. Use the IP integrator address editor to manually exclude the memory resources."
          return
        }
        if {[llength $excluded_master_segment] == 1} {          
          if {[dict exists $current_resource_address_mappings $bank]} {
            set master_addr_width [get_property CONFIG.ADDR_WIDTH $master_interface]
            set bank_min_addr_width [util::xil_clog2 [dict get $current_resource_address_mappings $bank OFFSET]]            
            if {$master_addr_width < $bank_min_addr_width} {
              send_msg_id {sdx_memory_subsystem 1-1} {CRITICAL WARNING} "Unable to map $bank at $master_interface because the interface address width is $master_addr_width but $bank requires a minimum address width of $bank_min_addr_width.  Increase the address width of $master_interface to resolve this issue."
              continue
            }             
          }
          include_bd_addr_seg -quiet $excluded_master_segment
          
          set included_segment [get_bd_addr_segs -of $slave_segment]
          if {[llength $included_segment] == 1} {
            send_msg_id {sdx_memory_subsystem 1-1} {INFO} "Mapped memory resource $bank from $memory_subsystem_bdcell into $master_interface"
          } else {
            send_msg_id {sdx_memory_subsystem 1-1} {CRITICAL WARNING} "Failed to map memory resource $bank from $memory_subsystem_bdcell into $master_interface"
          }
        }
      }
    }

    # ----------------------------------------------------------------------
    # Which banks are in use?
    set data_bank_utilization {}
    set si_ports [get_bd_intf_pins $memory_subsystem/S*_AXI]
    set ap [get_property CONFIG.ADVANCED_PROPERTIES $memory_subsystem]
    set replicated_ports {}
    
    if {[dict exists $ap resource_map_replication]} {
      set replicated_ports [dict keys [dict get $ap resource_map_replication]]
      foreach port $replicated_ports {
        if {[dict exists $ap resource_access_constraints $port]} {
          set accessible_banks [dict get $ap resource_access_constraints $port]
        } else {
          set accessible_banks {}
          foreach seg [get_bd_addr_segs -of [get_bd_intf_pins $memory_subsystem/$port]] {
            lappend accessible_banks [get_property NAME $seg]
          }
        }
        foreach bank $accessible_banks {
          dict lappend data_bank_utilization $bank $port
        }
      }
    } else {
      # TODO: DEPRECATE THIS - REQUIRE REPLICATION MAP AND CONSTRAINTS
      set replicated_ports S00_AXI
      set accessible_banks {}
      foreach seg [get_bd_addr_segs -of [get_bd_intf_pins $memory_subsystem/S00_AXI]] {
        lappend accessible_banks [get_property NAME $seg]        
      }
      foreach bank $accessible_banks {
        dict lappend data_bank_utilization $bank S00_AXI
      }
    }
    
    foreach si $si_ports {
      set si_name [get_property NAME $si]
      if {[lsearch $replicated_ports $si_name] != -1 && [llength $si_ports] > 1} {
        continue
      }
      set slave_segs [get_bd_addr_segs -of $si]
      foreach seg $slave_segs {
        set slave_seg_name [get_property NAME $seg]
        set master_addr_seg [get_bd_addr_segs -quiet -of $seg]
        if {[llength $master_addr_seg] == 1} {
          dict lappend data_bank_utilization $slave_seg_name $master_addr_seg
        }
      }      
    }
    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    # TODO: Remove when internal topology supports > 16 accessors to a bank
    # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    dict for {bank accessors} $data_bank_utilization {
      if {[llength $accessors] > 16} {
        set i 1
        foreach a [lsort $accessors] {          
          send_msg_id {sdx_memory_subsystem 1-1} INFO "<$i> $bank -> $a"          
          incr i
        }
        #send_msg_id {sdx_memory_subsystem 1-1} ERROR "Bank $bank has been mapped more than 16 times.   This is not currently supported."
      }
    }
    
    # ----------------------------------------------------------------------
    # Match control register mappings to bank utilization...
    #
    dbg_puts "BEGIN: Control register assignments"

    set ctrl_intf [get_bd_intf_pins -quiet $memory_subsystem/S_AXI_CTRL]
    set ctrl_master {}
    set ctrl_master_address_space {}
    if {[llength $ctrl_intf] == 1} {
      set ctrl_master [find_bd_objs -thru_hier -relation addressing_master $ctrl_intf]
      if {[llength $ctrl_master] == 1} {
        set ctrl_master_address_space [get_bd_addr_space -of $ctrl_master]        
        # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        # TODO: Remove this workaround once the DSAs have been updated to map only the available ctrl regs (or, ideally, none)
        # !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        set ctrl_intf_segs [lsort [get_bd_addr_segs -of $ctrl_intf]]        
        foreach ctrl_seg [lsort [get_bd_addr_segs -of $ctrl_intf]] {
          set master_seg [get_bd_addr_segs -quiet -of $ctrl_seg]
          set excluded_master_seg [get_bd_addr_segs -quiet -excluded -of $ctrl_seg]
          set mapped [expr [llength $master_seg] == 1]
          set excluded [expr [llength $excluded_master_seg] == 1]
          if {!$mapped && !$excluded} {        
            dbg_puts "Unmapped control segment $ctrl_seg - attempting to exclude at $ctrl_master_address_space"
            exclude_bd_addr_seg -quiet $ctrl_seg -target_address_space $ctrl_master_address_space
            set excluded_master_seg [get_bd_addr_segs -excluded -of $ctrl_seg]
          }          
          
          regexp {(\w+)_CTRL} [get_property NAME $ctrl_seg] {} data_bank_name          
          if {[dict exists $data_bank_utilization $data_bank_name]} {
            if {!$mapped} {
              dbg_puts "Memory resource $data_bank_name is in use - mapping companion control segment $excluded_master_seg"
              include_bd_addr_seg -quiet $excluded_master_seg
            } else {
              dbg_puts "Control segment $master_seg for utilized resource $data_bank_name is already mapped at $ctrl_master_address_space."
            }
          } else {
            # Prior greedy mapping detected (probably from DSA creation time)
            if {$mapped} {
              dbg_puts "Discovered prior mapping of $ctrl_seg in $ctrl_master_address_space.  $data_bank_name is not in use in this configuration so unmapping companion control segment."
              exclude_bd_addr_seg -quiet $ctrl_seg -target_address_space $ctrl_master_address_space
            }
          }          
        }
      } else {
        dbg_puts "Bypassing - no master attached to $ctrl_intf"
      }
    } else {
      dbg_puts "Bypassing - No control registers available in this board / memory configuration."
    }
    dbg_puts "END: Control register assignments"

  }
  
  proc add_plram { memory_subsystem_bdcell new_plram_specification } {
    set ip [get_bd_cells $memory_subsystem_bdcell]
    set advanced_properties [get_property CONFIG.ADVANCED_PROPERTIES $ip]
    if {$advanced_properties == "0"} {
      set advanced_properties {}
    }
    set plram_specifications {}
    if {[dict exists $advanced_properties plram_specifications]} {
      set plram_specifications [dict get $advanced_properties plram_specifications]
    }
    
    # Validate specification
    set valid 1
    foreach key {SIZE AXI_DATA_WIDTH SLR_ASSIGNMENT} {
      if {![dict exists $new_plram_specification $key]} {
        send_msg_id {sdx_memory_subsystem 1-1} {CRITICAL WARNING} "Missing $key in provided memory specification.   Specification will not be applied..."
        set valid 0
      }
    }
    if {$valid == 1} {
      lappend plram_specifications $new_plram_specification      
    }
    
    dict set advanced_properties plram_specifications $plram_specifications
    
    set_property CONFIG.ADVANCED_PROPERTIES $advanced_properties $ip
  }
    
  proc update_plram_specification { memory_subsystem_bdcell plram_name modified_plram_specification} {
    set ip [get_bd_cells $memory_subsystem_bdcell]
    
    set advanced_properties [get_property CONFIG.ADVANCED_PROPERTIES $ip]    
    if {![dict exists $advanced_properties plram_specifications]} {
      send_msg_id {sdx_memory_subsystem 1-1} {CRITICAL WARNING} "No specifications are available to update."
      return
    }

    if {[llength $ip] != 1} {
      send_msg_id {sdx_memory_subsystem 1-1} {CRITICAL WARNING} "Invalid memory subsystem handle: $memory_subsystem_bdcell"
      return
    }

    if {![string match PLRAM_MEM* $plram_name]} {
      send_msg_id {sdx_memory_subsystem 1-1} {CRITICAL WARNING} "Invalid PLRAM name: $plram_name"
      return
    }

    set plram_specifications [dict get $advanced_properties plram_specifications]
    regexp {(\d\d)} $plram_name {} idx
    set i [scan $idx %d]  
    if {$i > [llength $plram_specifications]} {
      send_msg_id {sdx_memory_subsystem 1-1} {CRITICAL WARNING} "$plram_name is not one of the defined PLRAM resources"
      return
    }
    set original_plram_specification [lindex $plram_specifications $i]
    set updated_plram_specification $original_plram_specification
    dict for {k v} $modified_plram_specification {
      dict set updated_plram_specification $k $v
    }
    set new_plram_specifications [lreplace $plram_specifications $i $i $updated_plram_specification]
    dict set advanced_properties plram_specifications $new_plram_specifications
    set_property CONFIG.ADVANCED_PROPERTIES $advanced_properties $ip

    if {[dict exists $modified_plram_specification SIZE]} {
      set replicated_port_name S00_AXI
      if {[dict exists $advanced_properties resource_map_replication]} {
        set replicated_port_names [dict keys [dict get $advanced_properties resource_map_replication]]
      }
      foreach si_name $replicated_port_names {
        set si [get_bd_intf_pins $ip/$si_name]
        set slave_segment [get_bd_addr_segs -filter "name=~$plram_name" -of $si]
        if {[llength $slave_segment] == 1} {  
          set master_segments [get_bd_addr_segs -of $slave_segment]
          foreach master_segment $master_segments {
            set master_range [get_property RANGE $master_segment]
            set new_plram_range [expr 1 << [util::clog_range [dict get $modified_plram_specification SIZE]]]          
            if {$master_range != $new_plram_range} {
              set_property RANGE $new_plram_range $master_segment
            }
          }
        }
      }      
    }
    send_msg_id {sdx_memory_subsystem 1-1} {INFO} "$plram_name has been updated to the following specification: $updated_plram_specification "
  }
}
