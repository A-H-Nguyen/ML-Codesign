# aclk {FREQ_HZ 250000000 CLK_DOMAIN clk_main_a0_out PHASE 0.000} aclk1 {FREQ_HZ 250000000 CLK_DOMAIN cd_data_h2c_00 PHASE 0}
# Clock Domain: clk_main_a0_out
create_clock -name aclk -period 4.000 [get_ports aclk]
# Clock Domain: cd_data_h2c_00
create_clock -name aclk1 -period 4.000 [get_ports aclk1]
# Generated clocks
