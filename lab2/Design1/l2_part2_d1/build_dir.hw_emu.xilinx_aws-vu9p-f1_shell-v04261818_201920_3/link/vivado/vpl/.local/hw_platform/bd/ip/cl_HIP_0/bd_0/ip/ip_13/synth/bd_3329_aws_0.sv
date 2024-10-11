// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:aws:1.0
// IP Revision: 3

(* X_CORE_INFO = "aws_v1_0_3_top,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "bd_3329_aws_0,aws_v1_0_3_top,{}" *)
(* CORE_GENERATION_INFO = "bd_3329_aws_0,aws_v1_0_3_top,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=aws,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_MODE=1,C_DDR_A_PRESENT=1,C_DDR_B_PRESENT=1,C_DDR_D_PRESENT=1,C_NUM_A_CLOCKS=1,C_NUM_B_CLOCKS=0,C_NUM_C_CLOCKS=0,C_VENDOR_ID=0x1D0F,C_DEVICE_ID=0xF010,C_SUBSYSTEM_VENDOR_ID=0xFEDD,C_SUBSYSTEM_ID=0x1D51,C_CLOCK_A0_PERIOD=4.0,C_CLOCK_A1_PERIOD=8.0,C_CLOCK_B0_PERIOD=4.0,C_CLOCK_C0_PERIOD=2.0,C_CLOCK_A_RECIPE=1,C_CLOC\
K_B_RECIPE=0,C_CLOCK_C_RECIPE=0,C_NUM_STAGES_STATS=1,C_PCIM_PRESENT=0}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_3329_aws_0 (
  clk_main_a0,
  rst_main_n,
  CLK_300M_DIMM0_DP,
  CLK_300M_DIMM0_DN,
  M_A_ACT_N,
  M_A_MA,
  M_A_BA,
  M_A_BG,
  M_A_CKE,
  M_A_ODT,
  M_A_CS_N,
  M_A_CLK_DN,
  M_A_CLK_DP,
  M_A_PAR,
  M_A_DQ,
  M_A_ECC,
  M_A_DQS_DP,
  M_A_DQS_DN,
  cl_RST_DIMM_A_N,
  CLK_300M_DIMM1_DP,
  CLK_300M_DIMM1_DN,
  M_B_ACT_N,
  M_B_MA,
  M_B_BA,
  M_B_BG,
  M_B_CKE,
  M_B_ODT,
  M_B_CS_N,
  M_B_CLK_DN,
  M_B_CLK_DP,
  M_B_PAR,
  M_B_DQ,
  M_B_ECC,
  M_B_DQS_DP,
  M_B_DQS_DN,
  cl_RST_DIMM_B_N,
  CLK_300M_DIMM3_DP,
  CLK_300M_DIMM3_DN,
  M_D_ACT_N,
  M_D_MA,
  M_D_BA,
  M_D_BG,
  M_D_CKE,
  M_D_ODT,
  M_D_CS_N,
  M_D_CLK_DN,
  M_D_CLK_DP,
  M_D_PAR,
  M_D_DQ,
  M_D_ECC,
  M_D_DQS_DP,
  M_D_DQS_DN,
  cl_RST_DIMM_D_N,
  sh_ddr_stat_addr0,
  sh_ddr_stat_wr0,
  sh_ddr_stat_rd0,
  sh_ddr_stat_wdata0,
  ddr_sh_stat_ack0,
  ddr_sh_stat_rdata0,
  ddr_sh_stat_int0,
  sh_ddr_stat_addr1,
  sh_ddr_stat_wr1,
  sh_ddr_stat_rd1,
  sh_ddr_stat_wdata1,
  ddr_sh_stat_ack1,
  ddr_sh_stat_rdata1,
  ddr_sh_stat_int1,
  sh_ddr_stat_addr2,
  sh_ddr_stat_wr2,
  sh_ddr_stat_rd2,
  sh_ddr_stat_wdata2,
  ddr_sh_stat_ack2,
  ddr_sh_stat_rdata2,
  ddr_sh_stat_int2,
  cl_sh_ddr_awid,
  cl_sh_ddr_awaddr,
  cl_sh_ddr_awlen,
  cl_sh_ddr_awsize,
  cl_sh_ddr_awburst,
  cl_sh_ddr_awvalid,
  sh_cl_ddr_awready,
  cl_sh_ddr_wid,
  cl_sh_ddr_wdata,
  cl_sh_ddr_wstrb,
  cl_sh_ddr_wlast,
  cl_sh_ddr_wvalid,
  sh_cl_ddr_wready,
  sh_cl_ddr_bid,
  sh_cl_ddr_bresp,
  sh_cl_ddr_bvalid,
  cl_sh_ddr_bready,
  cl_sh_ddr_arid,
  cl_sh_ddr_araddr,
  cl_sh_ddr_arlen,
  cl_sh_ddr_arsize,
  cl_sh_ddr_arburst,
  cl_sh_ddr_arvalid,
  sh_cl_ddr_arready,
  sh_cl_ddr_rid,
  sh_cl_ddr_rdata,
  sh_cl_ddr_rresp,
  sh_cl_ddr_rlast,
  sh_cl_ddr_rvalid,
  cl_sh_ddr_rready,
  sh_cl_ddr_is_ready,
  clk_main_a0_out,
  rst_main_n_out,
  s_axi_ddra_awid,
  s_axi_ddra_awaddr,
  s_axi_ddra_awlen,
  s_axi_ddra_awsize,
  s_axi_ddra_awvalid,
  s_axi_ddra_awready,
  s_axi_ddra_wdata,
  s_axi_ddra_wstrb,
  s_axi_ddra_wlast,
  s_axi_ddra_wvalid,
  s_axi_ddra_wready,
  s_axi_ddra_bid,
  s_axi_ddra_bresp,
  s_axi_ddra_bvalid,
  s_axi_ddra_bready,
  s_axi_ddra_arid,
  s_axi_ddra_araddr,
  s_axi_ddra_arlen,
  s_axi_ddra_arsize,
  s_axi_ddra_arvalid,
  s_axi_ddra_arready,
  s_axi_ddra_rid,
  s_axi_ddra_rdata,
  s_axi_ddra_rresp,
  s_axi_ddra_rlast,
  s_axi_ddra_rvalid,
  s_axi_ddra_rready,
  ddra_is_ready,
  s_axi_ddrb_awid,
  s_axi_ddrb_awaddr,
  s_axi_ddrb_awlen,
  s_axi_ddrb_awsize,
  s_axi_ddrb_awvalid,
  s_axi_ddrb_awready,
  s_axi_ddrb_wdata,
  s_axi_ddrb_wstrb,
  s_axi_ddrb_wlast,
  s_axi_ddrb_wvalid,
  s_axi_ddrb_wready,
  s_axi_ddrb_bid,
  s_axi_ddrb_bresp,
  s_axi_ddrb_bvalid,
  s_axi_ddrb_bready,
  s_axi_ddrb_arid,
  s_axi_ddrb_araddr,
  s_axi_ddrb_arlen,
  s_axi_ddrb_arsize,
  s_axi_ddrb_arvalid,
  s_axi_ddrb_arready,
  s_axi_ddrb_rid,
  s_axi_ddrb_rdata,
  s_axi_ddrb_rresp,
  s_axi_ddrb_rlast,
  s_axi_ddrb_rvalid,
  s_axi_ddrb_rready,
  ddrb_is_ready,
  s_axi_ddrc_awid,
  s_axi_ddrc_awaddr,
  s_axi_ddrc_awlen,
  s_axi_ddrc_awsize,
  s_axi_ddrc_awvalid,
  s_axi_ddrc_awready,
  s_axi_ddrc_wdata,
  s_axi_ddrc_wstrb,
  s_axi_ddrc_wlast,
  s_axi_ddrc_wvalid,
  s_axi_ddrc_wready,
  s_axi_ddrc_bid,
  s_axi_ddrc_bresp,
  s_axi_ddrc_bvalid,
  s_axi_ddrc_bready,
  s_axi_ddrc_arid,
  s_axi_ddrc_araddr,
  s_axi_ddrc_arlen,
  s_axi_ddrc_arsize,
  s_axi_ddrc_arvalid,
  s_axi_ddrc_arready,
  s_axi_ddrc_rid,
  s_axi_ddrc_rdata,
  s_axi_ddrc_rresp,
  s_axi_ddrc_rlast,
  s_axi_ddrc_rvalid,
  s_axi_ddrc_rready,
  ddrc_is_ready,
  s_axi_ddrd_awid,
  s_axi_ddrd_awaddr,
  s_axi_ddrd_awlen,
  s_axi_ddrd_awsize,
  s_axi_ddrd_awvalid,
  s_axi_ddrd_awready,
  s_axi_ddrd_wdata,
  s_axi_ddrd_wstrb,
  s_axi_ddrd_wlast,
  s_axi_ddrd_wvalid,
  s_axi_ddrd_wready,
  s_axi_ddrd_bid,
  s_axi_ddrd_bresp,
  s_axi_ddrd_bvalid,
  s_axi_ddrd_bready,
  s_axi_ddrd_arid,
  s_axi_ddrd_araddr,
  s_axi_ddrd_arlen,
  s_axi_ddrd_arsize,
  s_axi_ddrd_arvalid,
  s_axi_ddrd_arready,
  s_axi_ddrd_rid,
  s_axi_ddrd_rdata,
  s_axi_ddrd_rresp,
  s_axi_ddrd_rlast,
  s_axi_ddrd_rvalid,
  s_axi_ddrd_rready,
  ddrd_is_ready
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH clk_main_a0" *)
input wire clk_main_a0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH rst_main_n" *)
input wire rst_main_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH CLK_300M_DIMM0_DP" *)
input wire CLK_300M_DIMM0_DP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH CLK_300M_DIMM0_DN" *)
input wire CLK_300M_DIMM0_DN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_A_ACT_N" *)
output wire M_A_ACT_N;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_A_MA" *)
output wire [16 : 0] M_A_MA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_A_BA" *)
output wire [1 : 0] M_A_BA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_A_BG" *)
output wire [1 : 0] M_A_BG;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_A_CKE" *)
output wire [0 : 0] M_A_CKE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_A_ODT" *)
output wire [0 : 0] M_A_ODT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_A_CS_N" *)
output wire [0 : 0] M_A_CS_N;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_A_CLK_DN" *)
output wire [0 : 0] M_A_CLK_DN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_A_CLK_DP" *)
output wire [0 : 0] M_A_CLK_DP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_A_PAR" *)
output wire M_A_PAR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_A_DQ" *)
inout wire [63 : 0] M_A_DQ;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_A_ECC" *)
inout wire [7 : 0] M_A_ECC;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_A_DQS_DP" *)
inout wire [17 : 0] M_A_DQS_DP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_A_DQS_DN" *)
inout wire [17 : 0] M_A_DQS_DN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_RST_DIMM_A_N" *)
output wire cl_RST_DIMM_A_N;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH CLK_300M_DIMM1_DP" *)
input wire CLK_300M_DIMM1_DP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH CLK_300M_DIMM1_DN" *)
input wire CLK_300M_DIMM1_DN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_B_ACT_N" *)
output wire M_B_ACT_N;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_B_MA" *)
output wire [16 : 0] M_B_MA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_B_BA" *)
output wire [1 : 0] M_B_BA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_B_BG" *)
output wire [1 : 0] M_B_BG;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_B_CKE" *)
output wire [0 : 0] M_B_CKE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_B_ODT" *)
output wire [0 : 0] M_B_ODT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_B_CS_N" *)
output wire [0 : 0] M_B_CS_N;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_B_CLK_DN" *)
output wire [0 : 0] M_B_CLK_DN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_B_CLK_DP" *)
output wire [0 : 0] M_B_CLK_DP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_B_PAR" *)
output wire M_B_PAR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_B_DQ" *)
inout wire [63 : 0] M_B_DQ;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_B_ECC" *)
inout wire [7 : 0] M_B_ECC;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_B_DQS_DP" *)
inout wire [17 : 0] M_B_DQS_DP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_B_DQS_DN" *)
inout wire [17 : 0] M_B_DQS_DN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_RST_DIMM_B_N" *)
output wire cl_RST_DIMM_B_N;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH CLK_300M_DIMM3_DP" *)
input wire CLK_300M_DIMM3_DP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH CLK_300M_DIMM3_DN" *)
input wire CLK_300M_DIMM3_DN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_D_ACT_N" *)
output wire M_D_ACT_N;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_D_MA" *)
output wire [16 : 0] M_D_MA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_D_BA" *)
output wire [1 : 0] M_D_BA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_D_BG" *)
output wire [1 : 0] M_D_BG;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_D_CKE" *)
output wire [0 : 0] M_D_CKE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_D_ODT" *)
output wire [0 : 0] M_D_ODT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_D_CS_N" *)
output wire [0 : 0] M_D_CS_N;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_D_CLK_DN" *)
output wire [0 : 0] M_D_CLK_DN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_D_CLK_DP" *)
output wire [0 : 0] M_D_CLK_DP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_D_PAR" *)
output wire M_D_PAR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_D_DQ" *)
inout wire [63 : 0] M_D_DQ;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_D_ECC" *)
inout wire [7 : 0] M_D_ECC;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_D_DQS_DP" *)
inout wire [17 : 0] M_D_DQS_DP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH M_D_DQS_DN" *)
inout wire [17 : 0] M_D_DQS_DN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_RST_DIMM_D_N" *)
output wire cl_RST_DIMM_D_N;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ddr_stat_addr0" *)
input wire [7 : 0] sh_ddr_stat_addr0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ddr_stat_wr0" *)
input wire sh_ddr_stat_wr0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ddr_stat_rd0" *)
input wire sh_ddr_stat_rd0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ddr_stat_wdata0" *)
input wire [31 : 0] sh_ddr_stat_wdata0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH ddr_sh_stat_ack0" *)
output wire ddr_sh_stat_ack0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH ddr_sh_stat_rdata0" *)
output wire [31 : 0] ddr_sh_stat_rdata0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH ddr_sh_stat_int0" *)
output wire [7 : 0] ddr_sh_stat_int0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ddr_stat_addr1" *)
input wire [7 : 0] sh_ddr_stat_addr1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ddr_stat_wr1" *)
input wire sh_ddr_stat_wr1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ddr_stat_rd1" *)
input wire sh_ddr_stat_rd1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ddr_stat_wdata1" *)
input wire [31 : 0] sh_ddr_stat_wdata1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH ddr_sh_stat_ack1" *)
output wire ddr_sh_stat_ack1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH ddr_sh_stat_rdata1" *)
output wire [31 : 0] ddr_sh_stat_rdata1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH ddr_sh_stat_int1" *)
output wire [7 : 0] ddr_sh_stat_int1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ddr_stat_addr2" *)
input wire [7 : 0] sh_ddr_stat_addr2;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ddr_stat_wr2" *)
input wire sh_ddr_stat_wr2;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ddr_stat_rd2" *)
input wire sh_ddr_stat_rd2;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ddr_stat_wdata2" *)
input wire [31 : 0] sh_ddr_stat_wdata2;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH ddr_sh_stat_ack2" *)
output wire ddr_sh_stat_ack2;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH ddr_sh_stat_rdata2" *)
output wire [31 : 0] ddr_sh_stat_rdata2;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH ddr_sh_stat_int2" *)
output wire [7 : 0] ddr_sh_stat_int2;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_awid" *)
output wire [15 : 0] cl_sh_ddr_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_awaddr" *)
output wire [63 : 0] cl_sh_ddr_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_awlen" *)
output wire [7 : 0] cl_sh_ddr_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_awsize" *)
output wire [2 : 0] cl_sh_ddr_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_awburst" *)
output wire [1 : 0] cl_sh_ddr_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_awvalid" *)
output wire cl_sh_ddr_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_ddr_awready" *)
input wire sh_cl_ddr_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_wid" *)
output wire [15 : 0] cl_sh_ddr_wid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_wdata" *)
output wire [511 : 0] cl_sh_ddr_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_wstrb" *)
output wire [63 : 0] cl_sh_ddr_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_wlast" *)
output wire cl_sh_ddr_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_wvalid" *)
output wire cl_sh_ddr_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_ddr_wready" *)
input wire sh_cl_ddr_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_ddr_bid" *)
input wire [15 : 0] sh_cl_ddr_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_ddr_bresp" *)
input wire [1 : 0] sh_cl_ddr_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_ddr_bvalid" *)
input wire sh_cl_ddr_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_bready" *)
output wire cl_sh_ddr_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_arid" *)
output wire [15 : 0] cl_sh_ddr_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_araddr" *)
output wire [63 : 0] cl_sh_ddr_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_arlen" *)
output wire [7 : 0] cl_sh_ddr_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_arsize" *)
output wire [2 : 0] cl_sh_ddr_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_arburst" *)
output wire [1 : 0] cl_sh_ddr_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_arvalid" *)
output wire cl_sh_ddr_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_ddr_arready" *)
input wire sh_cl_ddr_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_ddr_rid" *)
input wire [15 : 0] sh_cl_ddr_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_ddr_rdata" *)
input wire [511 : 0] sh_cl_ddr_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_ddr_rresp" *)
input wire [1 : 0] sh_cl_ddr_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_ddr_rlast" *)
input wire sh_cl_ddr_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_ddr_rvalid" *)
input wire sh_cl_ddr_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_ddr_rready" *)
output wire cl_sh_ddr_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_ddr_is_ready" *)
input wire sh_cl_ddr_is_ready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_MAIN_A0, FREQ_HZ 250000000, CLK_DOMAIN clk_main_a0_out, ASSOCIATED_BUSIF M_AXI_PCIS:S_AXI_PCIM:S_AXI_DDRA:S_AXI_DDRB:S_AXI_DDRC:S_AXI_DDRD:M_AXI_SDA:M_AXI_OCL:M_AXI_BAR1, ASSOCIATED_RESET rst_main_n_out:kernel_rst_n_out, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_MAIN_A0 CLK" *)
output wire clk_main_a0_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET_MAIN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET_MAIN RST" *)
output wire rst_main_n_out;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA AWID" *)
input wire [15 : 0] s_axi_ddra_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA AWADDR" *)
input wire [63 : 0] s_axi_ddra_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA AWLEN" *)
input wire [7 : 0] s_axi_ddra_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA AWSIZE" *)
input wire [2 : 0] s_axi_ddra_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA AWVALID" *)
input wire s_axi_ddra_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA AWREADY" *)
output wire s_axi_ddra_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA WDATA" *)
input wire [511 : 0] s_axi_ddra_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA WSTRB" *)
input wire [63 : 0] s_axi_ddra_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA WLAST" *)
input wire s_axi_ddra_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA WVALID" *)
input wire s_axi_ddra_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA WREADY" *)
output wire s_axi_ddra_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA BID" *)
output wire [15 : 0] s_axi_ddra_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA BRESP" *)
output wire [1 : 0] s_axi_ddra_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA BVALID" *)
output wire s_axi_ddra_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA BREADY" *)
input wire s_axi_ddra_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA ARID" *)
input wire [15 : 0] s_axi_ddra_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA ARADDR" *)
input wire [63 : 0] s_axi_ddra_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA ARLEN" *)
input wire [7 : 0] s_axi_ddra_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA ARSIZE" *)
input wire [2 : 0] s_axi_ddra_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA ARVALID" *)
input wire s_axi_ddra_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA ARREADY" *)
output wire s_axi_ddra_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA RID" *)
output wire [15 : 0] s_axi_ddra_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA RDATA" *)
output wire [511 : 0] s_axi_ddra_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA RRESP" *)
output wire [1 : 0] s_axi_ddra_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA RLAST" *)
output wire s_axi_ddra_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA RVALID" *)
output wire s_axi_ddra_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_DDRA, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN clk_main_a0_out, NUM_READ_THREADS 1, NUM_WRITE_THRE\
ADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRA RREADY" *)
input wire s_axi_ddra_rready;
output wire ddra_is_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB AWID" *)
input wire [15 : 0] s_axi_ddrb_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB AWADDR" *)
input wire [63 : 0] s_axi_ddrb_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB AWLEN" *)
input wire [7 : 0] s_axi_ddrb_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB AWSIZE" *)
input wire [2 : 0] s_axi_ddrb_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB AWVALID" *)
input wire s_axi_ddrb_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB AWREADY" *)
output wire s_axi_ddrb_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB WDATA" *)
input wire [511 : 0] s_axi_ddrb_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB WSTRB" *)
input wire [63 : 0] s_axi_ddrb_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB WLAST" *)
input wire s_axi_ddrb_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB WVALID" *)
input wire s_axi_ddrb_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB WREADY" *)
output wire s_axi_ddrb_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB BID" *)
output wire [15 : 0] s_axi_ddrb_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB BRESP" *)
output wire [1 : 0] s_axi_ddrb_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB BVALID" *)
output wire s_axi_ddrb_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB BREADY" *)
input wire s_axi_ddrb_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB ARID" *)
input wire [15 : 0] s_axi_ddrb_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB ARADDR" *)
input wire [63 : 0] s_axi_ddrb_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB ARLEN" *)
input wire [7 : 0] s_axi_ddrb_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB ARSIZE" *)
input wire [2 : 0] s_axi_ddrb_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB ARVALID" *)
input wire s_axi_ddrb_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB ARREADY" *)
output wire s_axi_ddrb_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB RID" *)
output wire [15 : 0] s_axi_ddrb_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB RDATA" *)
output wire [511 : 0] s_axi_ddrb_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB RRESP" *)
output wire [1 : 0] s_axi_ddrb_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB RLAST" *)
output wire s_axi_ddrb_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB RVALID" *)
output wire s_axi_ddrb_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_DDRB, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN clk_main_a0_out, NUM_READ_THREADS 1, NUM_WRITE_THRE\
ADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRB RREADY" *)
input wire s_axi_ddrb_rready;
output wire ddrb_is_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC AWID" *)
input wire [15 : 0] s_axi_ddrc_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC AWADDR" *)
input wire [63 : 0] s_axi_ddrc_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC AWLEN" *)
input wire [7 : 0] s_axi_ddrc_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC AWSIZE" *)
input wire [2 : 0] s_axi_ddrc_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC AWVALID" *)
input wire s_axi_ddrc_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC AWREADY" *)
output wire s_axi_ddrc_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC WDATA" *)
input wire [511 : 0] s_axi_ddrc_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC WSTRB" *)
input wire [63 : 0] s_axi_ddrc_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC WLAST" *)
input wire s_axi_ddrc_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC WVALID" *)
input wire s_axi_ddrc_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC WREADY" *)
output wire s_axi_ddrc_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC BID" *)
output wire [15 : 0] s_axi_ddrc_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC BRESP" *)
output wire [1 : 0] s_axi_ddrc_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC BVALID" *)
output wire s_axi_ddrc_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC BREADY" *)
input wire s_axi_ddrc_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC ARID" *)
input wire [15 : 0] s_axi_ddrc_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC ARADDR" *)
input wire [63 : 0] s_axi_ddrc_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC ARLEN" *)
input wire [7 : 0] s_axi_ddrc_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC ARSIZE" *)
input wire [2 : 0] s_axi_ddrc_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC ARVALID" *)
input wire s_axi_ddrc_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC ARREADY" *)
output wire s_axi_ddrc_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC RID" *)
output wire [15 : 0] s_axi_ddrc_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC RDATA" *)
output wire [511 : 0] s_axi_ddrc_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC RRESP" *)
output wire [1 : 0] s_axi_ddrc_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC RLAST" *)
output wire s_axi_ddrc_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC RVALID" *)
output wire s_axi_ddrc_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_DDRC, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN clk_main_a0_out, NUM_READ_THREADS 1, NUM_WRITE_THRE\
ADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRC RREADY" *)
input wire s_axi_ddrc_rready;
output wire ddrc_is_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD AWID" *)
input wire [15 : 0] s_axi_ddrd_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD AWADDR" *)
input wire [63 : 0] s_axi_ddrd_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD AWLEN" *)
input wire [7 : 0] s_axi_ddrd_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD AWSIZE" *)
input wire [2 : 0] s_axi_ddrd_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD AWVALID" *)
input wire s_axi_ddrd_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD AWREADY" *)
output wire s_axi_ddrd_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD WDATA" *)
input wire [511 : 0] s_axi_ddrd_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD WSTRB" *)
input wire [63 : 0] s_axi_ddrd_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD WLAST" *)
input wire s_axi_ddrd_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD WVALID" *)
input wire s_axi_ddrd_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD WREADY" *)
output wire s_axi_ddrd_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD BID" *)
output wire [15 : 0] s_axi_ddrd_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD BRESP" *)
output wire [1 : 0] s_axi_ddrd_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD BVALID" *)
output wire s_axi_ddrd_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD BREADY" *)
input wire s_axi_ddrd_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD ARID" *)
input wire [15 : 0] s_axi_ddrd_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD ARADDR" *)
input wire [63 : 0] s_axi_ddrd_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD ARLEN" *)
input wire [7 : 0] s_axi_ddrd_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD ARSIZE" *)
input wire [2 : 0] s_axi_ddrd_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD ARVALID" *)
input wire s_axi_ddrd_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD ARREADY" *)
output wire s_axi_ddrd_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD RID" *)
output wire [15 : 0] s_axi_ddrd_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD RDATA" *)
output wire [511 : 0] s_axi_ddrd_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD RRESP" *)
output wire [1 : 0] s_axi_ddrd_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD RLAST" *)
output wire s_axi_ddrd_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD RVALID" *)
output wire s_axi_ddrd_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_DDRD, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 16, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN clk_main_a0_out, NUM_READ_THREADS 1, NUM_WRITE_THRE\
ADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_DDRD RREADY" *)
input wire s_axi_ddrd_rready;
output wire ddrd_is_ready;

  aws_v1_0_3_top #(
    .C_MODE(1),
    .C_DDR_A_PRESENT(1),
    .C_DDR_B_PRESENT(1),
    .C_DDR_D_PRESENT(1),
    .C_NUM_A_CLOCKS(1),
    .C_NUM_B_CLOCKS(0),
    .C_NUM_C_CLOCKS(0),
    .C_VENDOR_ID('H1D0F),
    .C_DEVICE_ID('HF010),
    .C_SUBSYSTEM_VENDOR_ID('HFEDD),
    .C_SUBSYSTEM_ID('H1D51),
    .C_CLOCK_A0_PERIOD("4.0"),
    .C_CLOCK_A1_PERIOD("8.0"),
    .C_CLOCK_B0_PERIOD("4.0"),
    .C_CLOCK_C0_PERIOD("2.0"),
    .C_CLOCK_A_RECIPE(1),
    .C_CLOCK_B_RECIPE(0),
    .C_CLOCK_C_RECIPE(0),
    .C_NUM_STAGES_STATS(1),
    .C_PCIM_PRESENT(0)
  ) inst (
    .clk_main_a0(clk_main_a0),
    .clk_extra_a1(1'B0),
    .clk_extra_a2(1'B0),
    .clk_extra_a3(1'B0),
    .clk_extra_b0(1'B0),
    .clk_extra_b1(1'B0),
    .clk_extra_c0(1'B0),
    .clk_extra_c1(1'B0),
    .kernel_rst_n(1'B0),
    .rst_main_n(rst_main_n),
    .sh_cl_flr_assert(1'B0),
    .cl_sh_flr_done(),
    .cl_sh_status0(),
    .cl_sh_status1(),
    .cl_sh_id0(),
    .cl_sh_id1(),
    .sh_cl_ctl0(32'B0),
    .sh_cl_ctl1(32'B0),
    .sh_cl_status_vdip(16'B0),
    .cl_sh_status_vled(),
    .sh_cl_pwr_state(2'B0),
    .cl_sh_dma_wr_full(),
    .cl_sh_dma_rd_full(),
    .cl_sh_pcim_awid(),
    .cl_sh_pcim_awaddr(),
    .cl_sh_pcim_awlen(),
    .cl_sh_pcim_awsize(),
    .cl_sh_pcim_awuser(),
    .cl_sh_pcim_awvalid(),
    .sh_cl_pcim_awready(1'B0),
    .cl_sh_pcim_wdata(),
    .cl_sh_pcim_wstrb(),
    .cl_sh_pcim_wlast(),
    .cl_sh_pcim_wvalid(),
    .sh_cl_pcim_wready(1'B0),
    .sh_cl_pcim_bid(16'B0),
    .sh_cl_pcim_bresp(2'B0),
    .sh_cl_pcim_bvalid(1'B0),
    .cl_sh_pcim_bready(),
    .cl_sh_pcim_arid(),
    .cl_sh_pcim_araddr(),
    .cl_sh_pcim_arlen(),
    .cl_sh_pcim_arsize(),
    .cl_sh_pcim_aruser(),
    .cl_sh_pcim_arvalid(),
    .sh_cl_pcim_arready(1'B0),
    .sh_cl_pcim_rid(16'B0),
    .sh_cl_pcim_rdata(512'B0),
    .sh_cl_pcim_rresp(2'B0),
    .sh_cl_pcim_rlast(1'B1),
    .sh_cl_pcim_rvalid(1'B0),
    .cl_sh_pcim_rready(),
    .cfg_max_payload(2'B0),
    .cfg_max_read_req(3'B0),
    .CLK_300M_DIMM0_DP(CLK_300M_DIMM0_DP),
    .CLK_300M_DIMM0_DN(CLK_300M_DIMM0_DN),
    .M_A_ACT_N(M_A_ACT_N),
    .M_A_MA(M_A_MA),
    .M_A_BA(M_A_BA),
    .M_A_BG(M_A_BG),
    .M_A_CKE(M_A_CKE),
    .M_A_ODT(M_A_ODT),
    .M_A_CS_N(M_A_CS_N),
    .M_A_CLK_DN(M_A_CLK_DN),
    .M_A_CLK_DP(M_A_CLK_DP),
    .M_A_PAR(M_A_PAR),
    .M_A_DQ(M_A_DQ),
    .M_A_ECC(M_A_ECC),
    .M_A_DQS_DP(M_A_DQS_DP),
    .M_A_DQS_DN(M_A_DQS_DN),
    .cl_RST_DIMM_A_N(cl_RST_DIMM_A_N),
    .CLK_300M_DIMM1_DP(CLK_300M_DIMM1_DP),
    .CLK_300M_DIMM1_DN(CLK_300M_DIMM1_DN),
    .M_B_ACT_N(M_B_ACT_N),
    .M_B_MA(M_B_MA),
    .M_B_BA(M_B_BA),
    .M_B_BG(M_B_BG),
    .M_B_CKE(M_B_CKE),
    .M_B_ODT(M_B_ODT),
    .M_B_CS_N(M_B_CS_N),
    .M_B_CLK_DN(M_B_CLK_DN),
    .M_B_CLK_DP(M_B_CLK_DP),
    .M_B_PAR(M_B_PAR),
    .M_B_DQ(M_B_DQ),
    .M_B_ECC(M_B_ECC),
    .M_B_DQS_DP(M_B_DQS_DP),
    .M_B_DQS_DN(M_B_DQS_DN),
    .cl_RST_DIMM_B_N(cl_RST_DIMM_B_N),
    .CLK_300M_DIMM3_DP(CLK_300M_DIMM3_DP),
    .CLK_300M_DIMM3_DN(CLK_300M_DIMM3_DN),
    .M_D_ACT_N(M_D_ACT_N),
    .M_D_MA(M_D_MA),
    .M_D_BA(M_D_BA),
    .M_D_BG(M_D_BG),
    .M_D_CKE(M_D_CKE),
    .M_D_ODT(M_D_ODT),
    .M_D_CS_N(M_D_CS_N),
    .M_D_CLK_DN(M_D_CLK_DN),
    .M_D_CLK_DP(M_D_CLK_DP),
    .M_D_PAR(M_D_PAR),
    .M_D_DQ(M_D_DQ),
    .M_D_ECC(M_D_ECC),
    .M_D_DQS_DP(M_D_DQS_DP),
    .M_D_DQS_DN(M_D_DQS_DN),
    .cl_RST_DIMM_D_N(cl_RST_DIMM_D_N),
    .sh_ddr_stat_addr0(sh_ddr_stat_addr0),
    .sh_ddr_stat_wr0(sh_ddr_stat_wr0),
    .sh_ddr_stat_rd0(sh_ddr_stat_rd0),
    .sh_ddr_stat_wdata0(sh_ddr_stat_wdata0),
    .ddr_sh_stat_ack0(ddr_sh_stat_ack0),
    .ddr_sh_stat_rdata0(ddr_sh_stat_rdata0),
    .ddr_sh_stat_int0(ddr_sh_stat_int0),
    .sh_ddr_stat_addr1(sh_ddr_stat_addr1),
    .sh_ddr_stat_wr1(sh_ddr_stat_wr1),
    .sh_ddr_stat_rd1(sh_ddr_stat_rd1),
    .sh_ddr_stat_wdata1(sh_ddr_stat_wdata1),
    .ddr_sh_stat_ack1(ddr_sh_stat_ack1),
    .ddr_sh_stat_rdata1(ddr_sh_stat_rdata1),
    .ddr_sh_stat_int1(ddr_sh_stat_int1),
    .sh_ddr_stat_addr2(sh_ddr_stat_addr2),
    .sh_ddr_stat_wr2(sh_ddr_stat_wr2),
    .sh_ddr_stat_rd2(sh_ddr_stat_rd2),
    .sh_ddr_stat_wdata2(sh_ddr_stat_wdata2),
    .ddr_sh_stat_ack2(ddr_sh_stat_ack2),
    .ddr_sh_stat_rdata2(ddr_sh_stat_rdata2),
    .ddr_sh_stat_int2(ddr_sh_stat_int2),
    .cl_sh_ddr_awid(cl_sh_ddr_awid),
    .cl_sh_ddr_awaddr(cl_sh_ddr_awaddr),
    .cl_sh_ddr_awlen(cl_sh_ddr_awlen),
    .cl_sh_ddr_awsize(cl_sh_ddr_awsize),
    .cl_sh_ddr_awburst(cl_sh_ddr_awburst),
    .cl_sh_ddr_awvalid(cl_sh_ddr_awvalid),
    .sh_cl_ddr_awready(sh_cl_ddr_awready),
    .cl_sh_ddr_wid(cl_sh_ddr_wid),
    .cl_sh_ddr_wdata(cl_sh_ddr_wdata),
    .cl_sh_ddr_wstrb(cl_sh_ddr_wstrb),
    .cl_sh_ddr_wlast(cl_sh_ddr_wlast),
    .cl_sh_ddr_wvalid(cl_sh_ddr_wvalid),
    .sh_cl_ddr_wready(sh_cl_ddr_wready),
    .sh_cl_ddr_bid(sh_cl_ddr_bid),
    .sh_cl_ddr_bresp(sh_cl_ddr_bresp),
    .sh_cl_ddr_bvalid(sh_cl_ddr_bvalid),
    .cl_sh_ddr_bready(cl_sh_ddr_bready),
    .cl_sh_ddr_arid(cl_sh_ddr_arid),
    .cl_sh_ddr_araddr(cl_sh_ddr_araddr),
    .cl_sh_ddr_arlen(cl_sh_ddr_arlen),
    .cl_sh_ddr_arsize(cl_sh_ddr_arsize),
    .cl_sh_ddr_arburst(cl_sh_ddr_arburst),
    .cl_sh_ddr_arvalid(cl_sh_ddr_arvalid),
    .sh_cl_ddr_arready(sh_cl_ddr_arready),
    .sh_cl_ddr_rid(sh_cl_ddr_rid),
    .sh_cl_ddr_rdata(sh_cl_ddr_rdata),
    .sh_cl_ddr_rresp(sh_cl_ddr_rresp),
    .sh_cl_ddr_rlast(sh_cl_ddr_rlast),
    .sh_cl_ddr_rvalid(sh_cl_ddr_rvalid),
    .cl_sh_ddr_rready(cl_sh_ddr_rready),
    .sh_cl_ddr_is_ready(sh_cl_ddr_is_ready),
    .cl_sh_apppf_irq_req(),
    .sh_cl_apppf_irq_ack(16'B0),
    .sh_cl_dma_pcis_awid(6'B0),
    .sh_cl_dma_pcis_awaddr(64'B0),
    .sh_cl_dma_pcis_awlen(8'B0),
    .sh_cl_dma_pcis_awsize(3'B0),
    .sh_cl_dma_pcis_awvalid(1'B0),
    .cl_sh_dma_pcis_awready(),
    .sh_cl_dma_pcis_wdata(512'B0),
    .sh_cl_dma_pcis_wstrb(64'B1),
    .sh_cl_dma_pcis_wlast(1'B1),
    .sh_cl_dma_pcis_wvalid(1'B0),
    .cl_sh_dma_pcis_wready(),
    .cl_sh_dma_pcis_bid(),
    .cl_sh_dma_pcis_bresp(),
    .cl_sh_dma_pcis_bvalid(),
    .sh_cl_dma_pcis_bready(1'B0),
    .sh_cl_dma_pcis_arid(6'B0),
    .sh_cl_dma_pcis_araddr(64'B0),
    .sh_cl_dma_pcis_arlen(8'B0),
    .sh_cl_dma_pcis_arsize(3'B0),
    .sh_cl_dma_pcis_arvalid(1'B0),
    .cl_sh_dma_pcis_arready(),
    .cl_sh_dma_pcis_rid(),
    .cl_sh_dma_pcis_rdata(),
    .cl_sh_dma_pcis_rresp(),
    .cl_sh_dma_pcis_rlast(),
    .cl_sh_dma_pcis_rvalid(),
    .sh_cl_dma_pcis_rready(1'B0),
    .sda_cl_awvalid(1'B0),
    .sda_cl_awaddr(32'B0),
    .cl_sda_awready(),
    .sda_cl_wvalid(1'B0),
    .sda_cl_wdata(32'B0),
    .sda_cl_wstrb(4'B1),
    .cl_sda_wready(),
    .cl_sda_bvalid(),
    .cl_sda_bresp(),
    .sda_cl_bready(1'B0),
    .sda_cl_arvalid(1'B0),
    .sda_cl_araddr(32'B0),
    .cl_sda_arready(),
    .cl_sda_rvalid(),
    .cl_sda_rdata(),
    .cl_sda_rresp(),
    .sda_cl_rready(1'B0),
    .sh_ocl_awvalid(1'B0),
    .sh_ocl_awaddr(32'B0),
    .ocl_sh_awready(),
    .sh_ocl_wvalid(1'B0),
    .sh_ocl_wdata(32'B0),
    .sh_ocl_wstrb(4'B1),
    .ocl_sh_wready(),
    .ocl_sh_bvalid(),
    .ocl_sh_bresp(),
    .sh_ocl_bready(1'B0),
    .sh_ocl_arvalid(1'B0),
    .sh_ocl_araddr(32'B0),
    .ocl_sh_arready(),
    .ocl_sh_rvalid(),
    .ocl_sh_rdata(),
    .ocl_sh_rresp(),
    .sh_ocl_rready(1'B0),
    .sh_bar1_awvalid(1'B0),
    .sh_bar1_awaddr(32'B0),
    .bar1_sh_awready(),
    .sh_bar1_wvalid(1'B0),
    .sh_bar1_wdata(32'B0),
    .sh_bar1_wstrb(4'B1),
    .bar1_sh_wready(),
    .bar1_sh_bvalid(),
    .bar1_sh_bresp(),
    .sh_bar1_bready(1'B0),
    .sh_bar1_arvalid(1'B0),
    .sh_bar1_araddr(32'B0),
    .bar1_sh_arready(),
    .bar1_sh_rvalid(),
    .bar1_sh_rdata(),
    .bar1_sh_rresp(),
    .sh_bar1_rready(1'B0),
    .sh_cl_glcount0(64'B0),
    .sh_cl_glcount1(64'B0),
    .clk_main_a0_out(clk_main_a0_out),
    .clk_extra_a1_out(),
    .clk_extra_a2_out(),
    .clk_extra_a3_out(),
    .clk_extra_b0_out(),
    .clk_extra_b1_out(),
    .clk_extra_c0_out(),
    .clk_extra_c1_out(),
    .rst_main_n_out(rst_main_n_out),
    .kernel_rst_n_out(),
    .flr_assert(),
    .flr_done(1'B0),
    .status_vdip(),
    .status_vled(16'B0),
    .irq_req(16'B0),
    .irq_ack(),
    .glcount0(),
    .glcount1(),
    .s_axi_ddra_awid(s_axi_ddra_awid),
    .s_axi_ddra_awaddr(s_axi_ddra_awaddr),
    .s_axi_ddra_awlen(s_axi_ddra_awlen),
    .s_axi_ddra_awsize(s_axi_ddra_awsize),
    .s_axi_ddra_awvalid(s_axi_ddra_awvalid),
    .s_axi_ddra_awready(s_axi_ddra_awready),
    .s_axi_ddra_wdata(s_axi_ddra_wdata),
    .s_axi_ddra_wstrb(s_axi_ddra_wstrb),
    .s_axi_ddra_wlast(s_axi_ddra_wlast),
    .s_axi_ddra_wvalid(s_axi_ddra_wvalid),
    .s_axi_ddra_wready(s_axi_ddra_wready),
    .s_axi_ddra_bid(s_axi_ddra_bid),
    .s_axi_ddra_bresp(s_axi_ddra_bresp),
    .s_axi_ddra_bvalid(s_axi_ddra_bvalid),
    .s_axi_ddra_bready(s_axi_ddra_bready),
    .s_axi_ddra_arid(s_axi_ddra_arid),
    .s_axi_ddra_araddr(s_axi_ddra_araddr),
    .s_axi_ddra_arlen(s_axi_ddra_arlen),
    .s_axi_ddra_arsize(s_axi_ddra_arsize),
    .s_axi_ddra_arvalid(s_axi_ddra_arvalid),
    .s_axi_ddra_arready(s_axi_ddra_arready),
    .s_axi_ddra_rid(s_axi_ddra_rid),
    .s_axi_ddra_rdata(s_axi_ddra_rdata),
    .s_axi_ddra_rresp(s_axi_ddra_rresp),
    .s_axi_ddra_rlast(s_axi_ddra_rlast),
    .s_axi_ddra_rvalid(s_axi_ddra_rvalid),
    .s_axi_ddra_rready(s_axi_ddra_rready),
    .ddra_is_ready(ddra_is_ready),
    .s_axi_ddrb_awid(s_axi_ddrb_awid),
    .s_axi_ddrb_awaddr(s_axi_ddrb_awaddr),
    .s_axi_ddrb_awlen(s_axi_ddrb_awlen),
    .s_axi_ddrb_awsize(s_axi_ddrb_awsize),
    .s_axi_ddrb_awvalid(s_axi_ddrb_awvalid),
    .s_axi_ddrb_awready(s_axi_ddrb_awready),
    .s_axi_ddrb_wdata(s_axi_ddrb_wdata),
    .s_axi_ddrb_wstrb(s_axi_ddrb_wstrb),
    .s_axi_ddrb_wlast(s_axi_ddrb_wlast),
    .s_axi_ddrb_wvalid(s_axi_ddrb_wvalid),
    .s_axi_ddrb_wready(s_axi_ddrb_wready),
    .s_axi_ddrb_bid(s_axi_ddrb_bid),
    .s_axi_ddrb_bresp(s_axi_ddrb_bresp),
    .s_axi_ddrb_bvalid(s_axi_ddrb_bvalid),
    .s_axi_ddrb_bready(s_axi_ddrb_bready),
    .s_axi_ddrb_arid(s_axi_ddrb_arid),
    .s_axi_ddrb_araddr(s_axi_ddrb_araddr),
    .s_axi_ddrb_arlen(s_axi_ddrb_arlen),
    .s_axi_ddrb_arsize(s_axi_ddrb_arsize),
    .s_axi_ddrb_arvalid(s_axi_ddrb_arvalid),
    .s_axi_ddrb_arready(s_axi_ddrb_arready),
    .s_axi_ddrb_rid(s_axi_ddrb_rid),
    .s_axi_ddrb_rdata(s_axi_ddrb_rdata),
    .s_axi_ddrb_rresp(s_axi_ddrb_rresp),
    .s_axi_ddrb_rlast(s_axi_ddrb_rlast),
    .s_axi_ddrb_rvalid(s_axi_ddrb_rvalid),
    .s_axi_ddrb_rready(s_axi_ddrb_rready),
    .ddrb_is_ready(ddrb_is_ready),
    .s_axi_ddrc_awid(s_axi_ddrc_awid),
    .s_axi_ddrc_awaddr(s_axi_ddrc_awaddr),
    .s_axi_ddrc_awlen(s_axi_ddrc_awlen),
    .s_axi_ddrc_awsize(s_axi_ddrc_awsize),
    .s_axi_ddrc_awvalid(s_axi_ddrc_awvalid),
    .s_axi_ddrc_awready(s_axi_ddrc_awready),
    .s_axi_ddrc_wdata(s_axi_ddrc_wdata),
    .s_axi_ddrc_wstrb(s_axi_ddrc_wstrb),
    .s_axi_ddrc_wlast(s_axi_ddrc_wlast),
    .s_axi_ddrc_wvalid(s_axi_ddrc_wvalid),
    .s_axi_ddrc_wready(s_axi_ddrc_wready),
    .s_axi_ddrc_bid(s_axi_ddrc_bid),
    .s_axi_ddrc_bresp(s_axi_ddrc_bresp),
    .s_axi_ddrc_bvalid(s_axi_ddrc_bvalid),
    .s_axi_ddrc_bready(s_axi_ddrc_bready),
    .s_axi_ddrc_arid(s_axi_ddrc_arid),
    .s_axi_ddrc_araddr(s_axi_ddrc_araddr),
    .s_axi_ddrc_arlen(s_axi_ddrc_arlen),
    .s_axi_ddrc_arsize(s_axi_ddrc_arsize),
    .s_axi_ddrc_arvalid(s_axi_ddrc_arvalid),
    .s_axi_ddrc_arready(s_axi_ddrc_arready),
    .s_axi_ddrc_rid(s_axi_ddrc_rid),
    .s_axi_ddrc_rdata(s_axi_ddrc_rdata),
    .s_axi_ddrc_rresp(s_axi_ddrc_rresp),
    .s_axi_ddrc_rlast(s_axi_ddrc_rlast),
    .s_axi_ddrc_rvalid(s_axi_ddrc_rvalid),
    .s_axi_ddrc_rready(s_axi_ddrc_rready),
    .ddrc_is_ready(ddrc_is_ready),
    .s_axi_ddrd_awid(s_axi_ddrd_awid),
    .s_axi_ddrd_awaddr(s_axi_ddrd_awaddr),
    .s_axi_ddrd_awlen(s_axi_ddrd_awlen),
    .s_axi_ddrd_awsize(s_axi_ddrd_awsize),
    .s_axi_ddrd_awvalid(s_axi_ddrd_awvalid),
    .s_axi_ddrd_awready(s_axi_ddrd_awready),
    .s_axi_ddrd_wdata(s_axi_ddrd_wdata),
    .s_axi_ddrd_wstrb(s_axi_ddrd_wstrb),
    .s_axi_ddrd_wlast(s_axi_ddrd_wlast),
    .s_axi_ddrd_wvalid(s_axi_ddrd_wvalid),
    .s_axi_ddrd_wready(s_axi_ddrd_wready),
    .s_axi_ddrd_bid(s_axi_ddrd_bid),
    .s_axi_ddrd_bresp(s_axi_ddrd_bresp),
    .s_axi_ddrd_bvalid(s_axi_ddrd_bvalid),
    .s_axi_ddrd_bready(s_axi_ddrd_bready),
    .s_axi_ddrd_arid(s_axi_ddrd_arid),
    .s_axi_ddrd_araddr(s_axi_ddrd_araddr),
    .s_axi_ddrd_arlen(s_axi_ddrd_arlen),
    .s_axi_ddrd_arsize(s_axi_ddrd_arsize),
    .s_axi_ddrd_arvalid(s_axi_ddrd_arvalid),
    .s_axi_ddrd_arready(s_axi_ddrd_arready),
    .s_axi_ddrd_rid(s_axi_ddrd_rid),
    .s_axi_ddrd_rdata(s_axi_ddrd_rdata),
    .s_axi_ddrd_rresp(s_axi_ddrd_rresp),
    .s_axi_ddrd_rlast(s_axi_ddrd_rlast),
    .s_axi_ddrd_rvalid(s_axi_ddrd_rvalid),
    .s_axi_ddrd_rready(s_axi_ddrd_rready),
    .ddrd_is_ready(ddrd_is_ready),
    .m_axi_sda_awaddr(),
    .m_axi_sda_awvalid(),
    .m_axi_sda_awready(1'B0),
    .m_axi_sda_wdata(),
    .m_axi_sda_wstrb(),
    .m_axi_sda_wvalid(),
    .m_axi_sda_wready(1'B0),
    .m_axi_sda_bresp(2'B0),
    .m_axi_sda_bvalid(1'B0),
    .m_axi_sda_bready(),
    .m_axi_sda_araddr(),
    .m_axi_sda_arvalid(),
    .m_axi_sda_arready(1'B0),
    .m_axi_sda_rdata(32'B0),
    .m_axi_sda_rresp(2'B0),
    .m_axi_sda_rvalid(1'B0),
    .m_axi_sda_rready(),
    .m_axi_ocl_awaddr(),
    .m_axi_ocl_awvalid(),
    .m_axi_ocl_awready(1'B0),
    .m_axi_ocl_wdata(),
    .m_axi_ocl_wstrb(),
    .m_axi_ocl_wvalid(),
    .m_axi_ocl_wready(1'B0),
    .m_axi_ocl_bresp(2'B0),
    .m_axi_ocl_bvalid(1'B0),
    .m_axi_ocl_bready(),
    .m_axi_ocl_araddr(),
    .m_axi_ocl_arvalid(),
    .m_axi_ocl_arready(1'B0),
    .m_axi_ocl_rdata(32'B0),
    .m_axi_ocl_rresp(2'B0),
    .m_axi_ocl_rvalid(1'B0),
    .m_axi_ocl_rready(),
    .m_axi_bar1_awaddr(),
    .m_axi_bar1_awvalid(),
    .m_axi_bar1_awready(1'B0),
    .m_axi_bar1_wdata(),
    .m_axi_bar1_wstrb(),
    .m_axi_bar1_wvalid(),
    .m_axi_bar1_wready(1'B0),
    .m_axi_bar1_bresp(2'B0),
    .m_axi_bar1_bvalid(1'B0),
    .m_axi_bar1_bready(),
    .m_axi_bar1_araddr(),
    .m_axi_bar1_arvalid(),
    .m_axi_bar1_arready(1'B0),
    .m_axi_bar1_rdata(32'B0),
    .m_axi_bar1_rresp(2'B0),
    .m_axi_bar1_rvalid(1'B0),
    .m_axi_bar1_rready(),
    .m_axi_pcis_awid(),
    .m_axi_pcis_awaddr(),
    .m_axi_pcis_awlen(),
    .m_axi_pcis_awsize(),
    .m_axi_pcis_awvalid(),
    .m_axi_pcis_awready(1'B0),
    .m_axi_pcis_wdata(),
    .m_axi_pcis_wstrb(),
    .m_axi_pcis_wlast(),
    .m_axi_pcis_wvalid(),
    .m_axi_pcis_wready(1'B0),
    .m_axi_pcis_bid(6'B0),
    .m_axi_pcis_bresp(2'B0),
    .m_axi_pcis_bvalid(1'B0),
    .m_axi_pcis_bready(),
    .m_axi_pcis_arid(),
    .m_axi_pcis_araddr(),
    .m_axi_pcis_arlen(),
    .m_axi_pcis_arsize(),
    .m_axi_pcis_arvalid(),
    .m_axi_pcis_arready(1'B0),
    .m_axi_pcis_rid(6'B0),
    .m_axi_pcis_rdata(512'B0),
    .m_axi_pcis_rresp(2'B0),
    .m_axi_pcis_rlast(1'B0),
    .m_axi_pcis_rvalid(1'B0),
    .m_axi_pcis_rready(),
    .m_axi_pcis_awburst(),
    .m_axi_pcis_arburst(),
    .s_axi_pcim_awid(16'B0),
    .s_axi_pcim_awaddr(64'B0),
    .s_axi_pcim_awlen(8'B0),
    .s_axi_pcim_awsize(3'D6),
    .s_axi_pcim_awuser(19'B0),
    .s_axi_pcim_awvalid(1'B0),
    .s_axi_pcim_awready(),
    .s_axi_pcim_wdata(512'B0),
    .s_axi_pcim_wstrb(64'HFFFFFFFFFFFFFFFF),
    .s_axi_pcim_wlast(1'B0),
    .s_axi_pcim_wvalid(1'B0),
    .s_axi_pcim_wready(),
    .s_axi_pcim_bid(),
    .s_axi_pcim_bresp(),
    .s_axi_pcim_bvalid(),
    .s_axi_pcim_bready(1'B0),
    .s_axi_pcim_arid(16'B0),
    .s_axi_pcim_araddr(64'B0),
    .s_axi_pcim_arlen(8'B0),
    .s_axi_pcim_arsize(3'D6),
    .s_axi_pcim_aruser(19'B0),
    .s_axi_pcim_arvalid(1'B0),
    .s_axi_pcim_arready(),
    .s_axi_pcim_rid(),
    .s_axi_pcim_rdata(),
    .s_axi_pcim_rresp(),
    .s_axi_pcim_rlast(),
    .s_axi_pcim_rvalid(),
    .s_axi_pcim_rready(1'B0),
    .cfg_max_payload_out(),
    .cfg_max_read_req_out()
  );
endmodule
