################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name blp_s_aclk_ctrl_00 -period 8 [get_ports blp_s_aclk_ctrl_00]
create_clock -name blp_s_aclk_extra_c_00 -period 2 [get_ports blp_s_aclk_extra_c_00]
create_clock -name blp_s_aclk_data_h2c_00 -period 4 [get_ports blp_s_aclk_data_h2c_00]
create_clock -name blp_s_aclk_kernel_00 -period 4 [get_ports blp_s_aclk_kernel_00]
create_clock -name BLP_S_BSCAN_USER_00_drck -period 10 [get_ports BLP_S_BSCAN_USER_00_drck]
create_clock -name BLP_S_BSCAN_USER_00_update -period 10 [get_ports BLP_S_BSCAN_USER_00_update]
create_clock -name BLP_S_BSCAN_USER_00_tck -period 10 [get_ports BLP_S_BSCAN_USER_00_tck]

################################################################################