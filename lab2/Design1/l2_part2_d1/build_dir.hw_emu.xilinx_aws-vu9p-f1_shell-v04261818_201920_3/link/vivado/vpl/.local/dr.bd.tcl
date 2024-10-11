

#---------------------------
# Constant blocks
#---------------------------

#---------------------------
# Platform Parameters for shell-v04261818
#---------------------------
set slr0_interconnect_axilite_user_0 [get_bd_cell /slr0/interconnect_axilite_user_0]
    
set_property -dict [ list \
  CONFIG.NUM_SI 1 \
  CONFIG.NUM_MI 1 \
  ] $slr0_interconnect_axilite_user_0
set slr1_interconnect_axilite_user_1 [get_bd_cell /slr1/interconnect_axilite_user_1]
    
set_property -dict [ list \
  CONFIG.NUM_SI 1 \
  CONFIG.NUM_MI 2 \
  CONFIG.M01_HAS_REGSLICE 1 \
  ] $slr1_interconnect_axilite_user_1
set slr2_interconnect_axilite_user_2 [get_bd_cell /slr2/interconnect_axilite_user_2]
    
set_property -dict [ list \
  CONFIG.NUM_SI 1 \
  CONFIG.NUM_MI 1 \
  ] $slr2_interconnect_axilite_user_2

#---------------------------
# Instantiating dot_prod_1
#---------------------------
set dot_prod_1 [create_bd_cell -type ip -vlnv xilinx.com:hls:dot_prod:1.0 dot_prod_1]
  

#---------------------------
# Connectivity Phase 1
#---------------------------
connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /slr1/interconnect_axilite_user_1/M01_AXI] \
  [get_bd_intf_pins -auto_enable /dot_prod_1/s_axi_control] \

connect_bd_net  \
  [get_bd_pins -auto_enable /kernel_clk/clk] \
  [get_bd_pins -auto_enable /slr1/interconnect_axilite_user_1/M01_ACLK] \
  [get_bd_pins -auto_enable /dot_prod_1/ap_clk] \

connect_bd_net  \
  [get_bd_pins -auto_enable /slr1/psr_kernel_clk_1/interconnect_aresetn] \
  [get_bd_pins -auto_enable /slr1/interconnect_axilite_user_1/M01_ARESETN] \

connect_bd_net  \
  [get_bd_pins -auto_enable /slr1/psr_kernel_clk_1/peripheral_aresetn] \
  [get_bd_pins -auto_enable /dot_prod_1/ap_rst_n] \


#---------------------------
# Connectivity Phase 2
#---------------------------
sdx_memory_subsystem::map_memory_resource \
  [get_bd_intf_pins -auto_enable /dot_prod_1/m_axi_gmem] \
  [get_bd_cells /memory_subsystem] [list M01_AXI_MEM00]


#---------------------------
# Create Stream Map file
#---------------------------
set stream_subsystems [get_bd_cells * -hierarchical -quiet -filter {VLNV =~ "*:*:sdx_stream_subsystem:*"}]
if {[string length $stream_subsystems] > 0} {    
  set xmlFile $vpl_output_dir/qdma_stream_map.xml
  set fp [open ${xmlFile} w]
  puts $fp "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
  puts $fp "<xd:streamMap xmlns:xd=\"http://www.xilinx.com/xd\">"
  foreach streamSS [get_bd_cells * -hierarchical -quiet -filter {VLNV =~ "*:*:sdx_stream_subsystem:*"}] {
    set ssInstance [string trimleft $streamSS /]
    set ssRegion [get_property CONFIG.SLR_ASSIGNMENTS $streamSS]
    foreach ssIntf [get_bd_intf_pins $streamSS/* -quiet -filter {NAME=~"S??_AXIS"}] {
      set pinName [get_property NAME $ssIntf]
      set routeId [sdx_stream_subsystem::get_routeid $ssIntf]
      set flowId [sdx_stream_subsystem::get_flowid $ssIntf]
      puts $fp "  <xd:streamRoute xd:instanceRef=\"$ssInstance\" xd:portRef=\"$pinName\" xd:route=\"$routeId\" xd:flow=\"$flowId\" xd:region=\"$ssRegion\">"
      foreach connection [find_bd_objs -relation connected_to $ssIntf -thru_hier] {
        set connectedRegion [get_property CONFIG.SLR_ASSIGNMENTS [bd::utils::get_parent $connection]]
        set connectedPort [bd::utils::get_short_name $connection]
        set connectedInst [string trimleft [bd::utils::get_parent $connection] /]
        puts $fp "    <xd:connection xd:instanceRef=\"$connectedInst\" xd:portRef=\"$connectedPort\" xd:region=\"$connectedRegion\"/>"
      }
      puts $fp "  </xd:streamRoute>"
    }
    foreach ssIntf [get_bd_intf_pins $streamSS/* -quiet -filter {NAME=~"M??_AXIS"}] {
      set pinName [get_property NAME $ssIntf]
      set routeId [sdx_stream_subsystem::get_routeid $ssIntf]
      set flowId [sdx_stream_subsystem::get_flowid $ssIntf]
      puts $fp "  <xd:streamRoute xd:instanceRef=\"$ssInstance\" xd:portRef=\"$pinName\" xd:route=\"$routeId\" xd:flow=\"$flowId\" xd:region=\"$ssRegion\">"
      foreach connection [find_bd_objs -relation connected_to $ssIntf -thru_hier] {
        set connectedRegion [get_property CONFIG.SLR_ASSIGNMENTS [bd::utils::get_parent $connection]]
        set connectedPort [bd::utils::get_short_name $connection]
        set connectedInst [string trimleft [bd::utils::get_parent $connection] /]
        puts $fp "    <xd:connection xd:instanceRef=\"$connectedInst\" xd:portRef=\"$connectedPort\" xd:region=\"$connectedRegion\"/>"
      }
      puts $fp "  </xd:streamRoute>"
    }
  }
  puts $fp "</xd:streamMap>"
  close $fp
}

