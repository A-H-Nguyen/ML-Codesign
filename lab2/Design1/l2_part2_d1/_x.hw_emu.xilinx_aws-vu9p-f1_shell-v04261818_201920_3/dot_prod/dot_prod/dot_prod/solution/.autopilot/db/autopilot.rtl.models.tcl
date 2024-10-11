set SynModuleInfo {
  {SRCNAME dot_prod_Pipeline_load MODELNAME dot_prod_Pipeline_load RTLNAME dot_prod_dot_prod_Pipeline_load
    SUBMODULES {
      {MODELNAME dot_prod_flow_control_loop_pipe_sequential_init RTLNAME dot_prod_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dot_prod_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dot_prod_Pipeline_compute MODELNAME dot_prod_Pipeline_compute RTLNAME dot_prod_dot_prod_Pipeline_compute
    SUBMODULES {
      {MODELNAME dot_prod_mul_32s_32s_32_2_1 RTLNAME dot_prod_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dot_prod MODELNAME dot_prod RTLNAME dot_prod IS_TOP 1
    SUBMODULES {
      {MODELNAME dot_prod_va_buffer_RAM_AUTO_1R1W RTLNAME dot_prod_va_buffer_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dot_prod_control_s_axi RTLNAME dot_prod_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME dot_prod_gmem_m_axi RTLNAME dot_prod_gmem_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
