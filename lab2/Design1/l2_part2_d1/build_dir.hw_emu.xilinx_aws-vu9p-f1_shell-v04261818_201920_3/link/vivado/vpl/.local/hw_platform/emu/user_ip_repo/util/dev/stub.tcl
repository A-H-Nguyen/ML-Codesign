create_project -f project_1 myproj -part xcku115-flvb2104-2-e
set_property BOARD_PART xilinx.com:kcu1500:part0:1.0 [current_project]
set_property ip_repo_paths ./local_repo [current_fileset]
update_ip_catalog -rebuild
create_bd_design test

#set num_si 1
#set num_mi 0
#set num_clks 1
#set num_ddr4_mem 4

set CONFIG {
  num_si 2
  num_mi 0
  num_clks 1
  num_ddr4_mem 4
}
set env(SDX_HIP_BOARD_INFO) {
xilinx.com:kcu1500:ddr4_sdram_c0:1.0 {ddr_component_intf ddr4_sdram_c0 diff_clock_intf default_300mhz_clk0 preset {CONFIG.ADDN_UI_CLKOUT1_FREQ_HZ 100 CONFIG.C0.CS_WIDTH 2 CONFIG.C0.ControllerType DDR4_SDRAM CONFIG.C0.DDR4_AxiAddressWidth 32 CONFIG.C0.DDR4_AxiDataWidth 512 CONFIG.C0.DDR4_CasLatency 16 CONFIG.C0.DDR4_CasWriteLatency 12 CONFIG.C0.DDR4_Clamshell true CONFIG.C0.DDR4_DataWidth 72 CONFIG.C0.DDR4_Ecc true CONFIG.C0.DDR4_InputClockPeriod 3332 CONFIG.C0.DDR4_MemoryPart MT40A512M16HA-083E CONFIG.C0.DDR4_MemoryType Components CONFIG.C0.DDR4_TimePeriod 833 CONFIG.C0.System_Clock Differential}} xilinx.com:kcu1500:ddr4_sdram_c1:1.0 {ddr_component_intf ddr4_sdram_c1 diff_clock_intf default_300mhz_clk1 preset {CONFIG.ADDN_UI_CLKOUT1_FREQ_HZ 100 CONFIG.C0.CS_WIDTH 2 CONFIG.C0.ControllerType DDR4_SDRAM CONFIG.C0.DDR4_AxiAddressWidth 32 CONFIG.C0.DDR4_AxiDataWidth 512 CONFIG.C0.DDR4_CasLatency 16 CONFIG.C0.DDR4_CasWriteLatency 12 CONFIG.C0.DDR4_Clamshell true CONFIG.C0.DDR4_DataWidth 64 CONFIG.C0.DDR4_Ecc false CONFIG.C0.DDR4_InputClockPeriod 3332 CONFIG.C0.DDR4_MemoryPart MT40A512M16HA-083E CONFIG.C0.DDR4_MemoryType Components CONFIG.C0.DDR4_TimePeriod 833 CONFIG.C0.System_Clock Differential}} xilinx.com:kcu1500:ddr4_sdram_c2:1.0 {ddr_component_intf ddr4_sdram_c2 diff_clock_intf default_300mhz_clk2 preset {CONFIG.ADDN_UI_CLKOUT1_FREQ_HZ 100 CONFIG.C0.CS_WIDTH 2 CONFIG.C0.ControllerType DDR4_SDRAM CONFIG.C0.DDR4_AxiAddressWidth 32 CONFIG.C0.DDR4_AxiDataWidth 512 CONFIG.C0.DDR4_CasLatency 16 CONFIG.C0.DDR4_CasWriteLatency 12 CONFIG.C0.DDR4_Clamshell true CONFIG.C0.DDR4_DataWidth 72 CONFIG.C0.DDR4_Ecc true CONFIG.C0.DDR4_InputClockPeriod 3332 CONFIG.C0.DDR4_MemoryPart MT40A512M16HA-083E CONFIG.C0.DDR4_MemoryType Components CONFIG.C0.DDR4_TimePeriod 833 CONFIG.C0.System_Clock Differential}} xilinx.com:kcu1500:ddr4_sdram_c3:1.0 {ddr_component_intf ddr4_sdram_c3 diff_clock_intf default_300mhz_clk3 preset {CONFIG.ADDN_UI_CLKOUT1_FREQ_HZ 100 CONFIG.C0.CS_WIDTH 2 CONFIG.C0.ControllerType DDR4_SDRAM CONFIG.C0.DDR4_AxiAddressWidth 32 CONFIG.C0.DDR4_AxiDataWidth 512 CONFIG.C0.DDR4_CasLatency 16 CONFIG.C0.DDR4_CasWriteLatency 12 CONFIG.C0.DDR4_Clamshell true CONFIG.C0.DDR4_DataWidth 72 CONFIG.C0.DDR4_Ecc true CONFIG.C0.DDR4_InputClockPeriod 3332 CONFIG.C0.DDR4_MemoryPart MT40A512M16HA-083E CONFIG.C0.DDR4_MemoryType Components CONFIG.C0.DDR4_TimePeriod 833 CONFIG.C0.System_Clock Differential}}
}

set env(SDX_HIP_ADDR_INFO) {
 S00_AXI {
   DDR4_MEM00 {0x00000000 0x0000000020000000} 
   DDR4_MEM01 {0x20000000 0x0000000020000000} 
   DDR4_MEM02 {0x40000000 0x0000000020000000} 
   DDR4_MEM03 {0x60000000 0x0000000020000000}
 }
}

set env(SDX_HIP_ADDR_INFO) {
 S00_AXI {
   DDR4_MEM00 {0x00000000 0x0000000020000000} 
   DDR4_MEM02 {0x40000000 0x0000000020000000} 
   DDR4_MEM03 {0x60000000 0x0000000020000000}
 }
  S01_AXI {
   DDR4_MEM00 {0x00000000 0x0000000020000000} 
   DDR4_MEM02 {0x40000000 0x0000000020000000} 
  }
}

set boundary_config {
  ports {
    aclk {
      CONFIG.FREQ_HZ 100000000
      CONFIG.PHASE 0
      CONFIG.CLK_DOMAIN domain_a
    }
    aclk1 {
      CONFIG.FREQ_HZ 150000000
      CONFIG.PHASE 0
      CONFIG.CLK_DOMAIN domain_b
    }
  }
  intf_ports {
    S00_AXI {
      CONFIG.FREQ_HZ 100000000
      CONFIG.PHASE 0
      CONFIG.CLK_DOMAIN domain_a
    }
    S01_AXI {
      CONFIG.FREQ_HZ 100000000
      CONFIG.PHASE 0
      CONFIG.CLK_DOMAIN domain_a
    }
    S02_AXI {
      CONFIG.FREQ_HZ 100000000
      CONFIG.PHASE 0
      CONFIG.CLK_DOMAIN domain_a
    }
    S_AXI_CTRL {
      CONFIG.FREQ_HZ 100000000
      CONFIG.PHASE 0
      CONFIG.CLK_DOMAIN domain_a
    }
    DDR4_MEM00_DIFF_CLK {
      CONFIG.FREQ_HZ 300000000
    }
    DDR4_MEM01_DIFF_CLK {
      CONFIG.FREQ_HZ 300000000
    }
    DDR4_MEM02_DIFF_CLK {
      CONFIG.FREQ_HZ 300000000
    }
    DDR4_MEM03_DIFF_CLK {
      CONFIG.FREQ_HZ 300000000
    }

  }
}
proc prime_boundary { boundary_config } {  
  dict for {t config} $boundary_config {
    dict for {name property_set} $config {
      set o [get_bd_$t $name] 
      if {[llength $o] == 1} {
        set_property -dict $property_set $o
      }
    }
  }
}
proc redo {} { uplevel 1 { current_bd_instance /; delete_all; source xit/generate_boundary.xit; prime_boundary $boundary_config; source xit/generate_contents.xit } }
proc send_msg { s i m } { puts "$s $i $m" }