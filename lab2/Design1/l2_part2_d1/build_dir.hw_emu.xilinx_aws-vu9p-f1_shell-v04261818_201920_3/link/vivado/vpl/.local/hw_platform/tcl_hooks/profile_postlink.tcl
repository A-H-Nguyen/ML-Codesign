proc set_dpa_fifo_config {} {
  set fifoObj [get_bd_cells -quiet -hier -filter {NAME=~"dpa_fifo"}]
  set fifoSeg [get_bd_addr_segs -quiet -of_objects [get_bd_intf_pins -quiet $fifoObj/S_AXI_FULL]]
  set fifoSlaveSeg [get_bd_addr_segs -quiet -of_objects $fifoSeg]

  if {$fifoSlaveSeg == {}} {
    return;
  }

  set fifoOffset [get_property -quiet OFFSET $fifoSlaveSeg]
  set fifoRange [get_property -quiet RANGE $fifoSlaveSeg]
  
  set fifoBase [expr $fifoOffset & 0x0ffffffff]
  set fifoHigh [expr ($fifoOffset + $fifoRange - 1) & 0x0ffffffff]

  set_property CONFIG.C_AXI4_BASEADDR 0x0 $fifoObj
  set_property CONFIG.C_AXI4_HIGHADDR [format 0x%X $fifoHigh] $fifoObj
  set_property CONFIG.C_AXI4_BASEADDR [format 0x%X $fifoBase] $fifoObj
}

set_dpa_fifo_config