set_param hd.clockRoutingWireReduction false
#SDACCEL CL Constraints


set_property HIGH_PRIORITY true [get_nets -of_objects [get_pins  "WRAPPER_INST/CL/HIP/inst/memory/aws/inst/gen_mem.sh_ddr_0/ddr_cores.DDR4_0/inst/u_ddr4_infrastructure/u_bufg_divClk/O"]] -quiet
set_property HIGH_PRIORITY true [get_nets -of_objects [get_pins  "WRAPPER_INST/CL/HIP/inst/memory/aws/inst/gen_mem.sh_ddr_0/ddr_cores.DDR4_1/inst/u_ddr4_infrastructure/u_bufg_divClk/O"]] -quiet
set_property HIGH_PRIORITY true [get_nets -of_objects [get_pins  "WRAPPER_INST/CL/HIP/inst/memory/aws/inst/gen_mem.sh_ddr_0/ddr_cores.DDR4_2/inst/u_ddr4_infrastructure/u_bufg_divClk/O"]] -quiet

# High-priority clocks
# --------------------
set_property HIGH_PRIORITY true [get_nets -of [get_pins {WRAPPER_INST/CL/HIP/inst/memory/aws/inst/gen_mem.sh_ddr_0/ddr*/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/u_ddr4_phy_pll/plle_loop[*].gen_plle4.PLLE4_BASE_INST_OTHER/CLKOUTPHY}]] -quiet
set_property HIGH_PRIORITY true [get_nets -top_net_of_hierarchical_group -of [get_pins WRAPPER_INST/CL/HIP/inst/memory/aws/inst/gen_mem.sh_ddr_0/ddr*/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[1].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[1].GEN_I_CONTROL.u_xiphy_control/xiphy_control/TX_BIT_CTRL_OUT0[26]]] -quiet
set_property HIGH_PRIORITY true [get_nets -top_net_of_hierarchical_group -of [get_pins WRAPPER_INST/CL/HIP/inst/memory/aws/inst/gen_mem.sh_ddr_0/ddr*/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[5].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[1].GEN_I_CONTROL.u_xiphy_control/xiphy_control/TX_BIT_CTRL_OUT0[26]]] -quiet
set_property HIGH_PRIORITY true [get_nets -top_net_of_hierarchical_group -of [get_pins WRAPPER_INST/CL/HIP/inst/memory/aws/inst/gen_mem.sh_ddr_0/ddr*/inst/u_ddr4_mem_intfc/u_mig_ddr4_phy/inst/generate_block1.u_ddr_xiphy/byte_num[9].xiphy_byte_wrapper.u_xiphy_byte_wrapper/I_CONTROL[1].GEN_I_CONTROL.u_xiphy_control/xiphy_control/TX_BIT_CTRL_OUT0[26]]] -quiet

# Set Async
set asyncFFs [get_cells -hier -filter  {NAME =~ WRAPPER_INST/CL/HIP/inst/memory/aws/inst/gen_mem.sh_ddr_0/*sync_wr_rst/in_q_reg[0] || NAME =~ WRAPPER_INST/CL/HIP/inst/memory/aws/inst/gen_mem.sh_ddr_0/*sync_wr_rst/sync_out_reg[0]}]
set asyncFFPins [get_pins -filter REF_PIN_NAME==CLR -of $asyncFFs]
set_false_path -to $asyncFFPins -quiet

#################################################################################################

#current_instance -quiet

 set dbg_cores [get_debug_cores -filter {NAME=~*CL/*}]
   if {[llength $dbg_cores] > 1} {
      set dbg_hub_cells [list \
         *runtest_i_reg \
         *tms_i_reg \
      ]
   } else {
      set dbg_hub_cells [list \
         *runtest_i_reg \
         *tms_i_reg \
         *update_i_reg \
         *shift_i_reg \
         *sel_i_reg \
         *tdi_i_reg \
         *tms_i_reg \
         *drck_i_reg \
         *reset_i_reg \
         *runtest_i_reg \
         *capture_i_reg \
         *bscanid_en_i_reg \
         *bscanid_i_reg[*] \
      ]
   }
   foreach cell $dbg_hub_cells {
      set dbg_reg [get_cells -quiet -hier -filter NAME=~*CL/*xsdbm*/$cell]
      if [llength $dbg_reg] {
         foreach reg $dbg_reg {
            puts "Setting false path to dbg register $reg"
            set_false_path -to [get_pins $reg/D]
         }
      }
   }

set c_adv_trigger 0
set list_dbg_cores [get_debug_cores]
set len [llength $list_dbg_cores]
for {set i 0} {$i < $len} {incr i} {
  set temp [lindex $list_dbg_cores $i]
  if {[get_property X_CORE_INFO [get_cells $temp]] != ""} {
    set x_core_info [get_property X_CORE_INFO [get_cells $temp]]
    set core_type [lindex [split $x_core_info ","] 0]
    if {[string compare $core_type "ila"] == 0} {
      set props [split [get_property CORE_GENERATION_INFO [get_cells $temp]] ","]
      set props_len [llength $props]
      for {set j 0} {$j < $props_len} {incr j} {
        set para [lindex [split [lindex $props $j] "="] 0]
        if {[string compare $para "C_ADV_TRIGGER"] == 0} {
          set c_adv_trigger [lindex [split [lindex $props $j] "="] 1]
        }
      }
      current_instance $temp
      if {$c_adv_trigger == 0} {
        set_false_path -from [get_pins -filter {REF_PIN_NAME=~CLK*} -of_objects [get_cells -hierarchical -filter {NAME =~ "*allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/I_WHOLE_SLICE.G_SLICE_IDX[*].U_ALL_SRL_SLICE/u_srl*/S*"}]] -to [get_pins -filter {REF_PIN_NAME=~D*} -of_objects [get_cells -hierarchical -filter {NAME =~ "*allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/I_WHOLE_SLICE.G_SLICE_IDX[*].U_ALL_SRL_SLICE/I_IS_TERMINATION_SLICE_W_OUTPUT_REG.DOUT_O_reg*"}]]
        set_false_path -from [get_pins -filter {REF_PIN_NAME=~CLK*} -of_objects [get_cells -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_sample_counter/u_scnt_cmp/allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/I_WHOLE_SLICE.G_SLICE_IDX[*].U_ALL_SRL_SLICE/u_srl*/S*"}]] -to [get_cells -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_sample_counter/u_scnt_cmp_q*" && IS_SEQUENTIAL } ]
        set_false_path -from [get_pins -filter {REF_PIN_NAME=~CLK*} -of_objects [get_cells -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_window_counter/u_wcnt_lcmp/allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/I_WHOLE_SLICE.G_SLICE_IDX[*].U_ALL_SRL_SLICE/u_srl*/S*"}]] -to [get_cells -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_window_counter/u_wcnt_lcmp_q*" && IS_SEQUENTIAL } ]
        set_false_path -from [get_pins -filter {REF_PIN_NAME=~CLK*} -of_objects [get_cells -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_window_counter/u_wcnt_hcmp/allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/I_WHOLE_SLICE.G_SLICE_IDX[*].U_ALL_SRL_SLICE/u_srl*/S*"}]] -to [get_cells -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_window_counter/u_wcnt_hcmp_q*" && IS_SEQUENTIAL } ]
      } else {
        set_false_path -from [get_pins -filter {REF_PIN_NAME=~CLK*} -of_objects [get_cells -hierarchical -filter {NAME =~ "*allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/I_WHOLE_SLICE.G_SLICE_IDX[*].U_ALL_SRL_SLICE/u_srl*/S*"}]] -to [get_pins -filter {REF_PIN_NAME=~D*} -of_objects [get_cells -hierarchical -filter {NAME =~ "*allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/I_WHOLE_SLICE.G_SLICE_IDX[*].U_ALL_SRL_SLICE/I_IS_TERMINATION_SLICE_W_OUTPUT_REG.DOUT_O_reg*"}]]
        set_false_path -from [get_pins -filter {REF_PIN_NAME=~CLK*} -of_objects [get_cells -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_sample_counter/u_scnt_cmp/allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/I_WHOLE_SLICE.G_SLICE_IDX[*].U_ALL_SRL_SLICE/u_srl*/S*"}]] -to [get_cells -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_sample_counter/u_scnt_cmp_q*" && IS_SEQUENTIAL } ]
        set_false_path -from [get_pins -filter {REF_PIN_NAME=~CLK*} -of_objects [get_cells -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_window_counter/u_wcnt_lcmp/allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/I_WHOLE_SLICE.G_SLICE_IDX[*].U_ALL_SRL_SLICE/u_srl*/S*"}]] -to [get_cells -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_window_counter/u_wcnt_lcmp_q*" && IS_SEQUENTIAL } ]
        set_false_path -from [get_pins -filter {REF_PIN_NAME=~CLK*} -of_objects [get_cells -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_window_counter/u_wcnt_hcmp/allx_typeA_match_detection.ltlib_v1_0_0_allx_typeA_inst/DUT/I_WHOLE_SLICE.G_SLICE_IDX[*].U_ALL_SRL_SLICE/u_srl*/S*"}]] -to [get_cells -hierarchical -filter { NAME =~  "*ila_core_inst/u_ila_cap_ctrl/u_cap_addrgen/u_cap_window_counter/u_wcnt_hcmp_q*" && IS_SEQUENTIAL } ]
        set_false_path -from [get_cells -hierarchical -filter { NAME =~ "*ADV_TRIG.u_adv_trig/fsm_mem_data*" && IS_SEQUENTIAL }] -to [get_cells -hierarchical -filter { NAME =~ "*ila_core_inst/ADV_TRIG.u_adv_trig/current_state_reg*" && IS_SEQUENTIAL} ] 
        set_false_path -from [get_cells -hierarchical -filter { NAME =~ "*ADV_TRIG.u_adv_trig/fsm_mem_data*" && IS_SEQUENTIAL }] -to [get_cells -hierarchical -filter { NAME =~ "*ila_core_inst/ADV_TRIG.u_adv_trig/cntcmpsel_reg*" && IS_SEQUENTIAL} ] 
        set_false_path -from [get_cells -hierarchical -filter { NAME =~ "*ADV_TRIG.u_adv_trig/fsm_mem_data*" && IS_SEQUENTIAL }] -to [get_cells -hierarchical -filter { NAME =~ "*ila_core_inst/ADV_TRIG.u_adv_trig/FLAG*" && IS_SEQUENTIAL} ]
        set_false_path -from [get_cells -hierarchical -filter { NAME =~ "*ADV_TRIG.u_adv_trig/fsm_mem_data*" && IS_SEQUENTIAL }] -to [get_cells -hierarchical -filter { NAME =~ "*ila_core_inst/COUNTER.u_count/G_COUNTER[*].U_COUNTER/counter_reg*" && IS_SEQUENTIAL}]
        set_false_path -from [get_cells -hierarchical -filter { NAME =~ "*ADV_TRIG.u_adv_trig/fsm_mem_data*" && IS_SEQUENTIAL }] -to [get_cells -hierarchical -filter { NAME =~ "*ADV_TRIG.u_adv_trig/trigger_reg*" && IS_SEQUENTIAL }]
        set_false_path -from [get_cells -hierarchical -filter { NAME =~ "*ADV_TRIG.u_adv_trig/fsm_mem_data*" && IS_SEQUENTIAL }] -to [get_cells -hierarchical -filter { NAME =~ "*ADV_TRIG.u_adv_trig/CAPTURE_O_reg*" && IS_SEQUENTIAL }]
      }
    }
  }
  current_instance
}

