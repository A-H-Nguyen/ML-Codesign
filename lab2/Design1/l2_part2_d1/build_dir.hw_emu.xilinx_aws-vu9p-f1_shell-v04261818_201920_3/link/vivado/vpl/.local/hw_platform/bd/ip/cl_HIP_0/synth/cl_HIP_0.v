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


// IP VLNV: xilinx.com:ip:sdx_memory_subsystem:1.0
// IP Revision: 5

(* X_CORE_INFO = "bd_3329,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "cl_HIP_0,bd_3329,{}" *)
(* CORE_GENERATION_INFO = "cl_HIP_0,bd_3329,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=sdx_memory_subsystem,x_ipVersion=1.0,x_ipCoreRevision=5,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,NUM_SI=1,NUM_CLKS=1,ADVANCED_PROPERTIES=plram_specifications __ SIZE 128K AXI_DATA_WIDTH 512 SLR_ASSIGNMENT SLR2 _ _ SIZE 128K AXI_DATA_WIDTH 512 SLR_ASSIGNMENT SLR1 _ _ SIZE 128K AXI_DATA_WIDTH 512 SLR_ASSIGNMENT SLR0 __,Component_Name=cl_HIP_0}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module cl_HIP_0 (
  aclk,
  aresetn,
  S00_AXI_awaddr,
  S00_AXI_awlen,
  S00_AXI_awprot,
  S00_AXI_awregion,
  S00_AXI_awvalid,
  S00_AXI_awready,
  S00_AXI_wdata,
  S00_AXI_wstrb,
  S00_AXI_wlast,
  S00_AXI_wvalid,
  S00_AXI_wready,
  S00_AXI_bresp,
  S00_AXI_bvalid,
  S00_AXI_bready,
  S00_AXI_araddr,
  S00_AXI_arlen,
  S00_AXI_arprot,
  S00_AXI_arregion,
  S00_AXI_arvalid,
  S00_AXI_arready,
  S00_AXI_rdata,
  S00_AXI_rresp,
  S00_AXI_rlast,
  S00_AXI_rvalid,
  S00_AXI_rready,
  s_sh_rst_main_n,
  s_sh_clk_main_a0,
  s_sh_clk_300m_dimm0_dp,
  s_sh_clk_300m_dimm0_dn,
  s_sh_clk_300m_dimm1_dp,
  s_sh_clk_300m_dimm1_dn,
  s_sh_clk_300m_dimm3_dp,
  s_sh_clk_300m_dimm3_dn,
  s_sh_sh_ddr_stat_wr0,
  s_sh_sh_ddr_stat_rd0,
  s_sh_sh_ddr_stat_wr1,
  s_sh_sh_ddr_stat_rd1,
  s_sh_sh_ddr_stat_wr2,
  s_sh_sh_ddr_stat_rd2,
  s_sh_sh_cl_ddr_awready,
  s_sh_sh_cl_ddr_wready,
  s_sh_sh_cl_ddr_bvalid,
  s_sh_sh_cl_ddr_arready,
  s_sh_sh_cl_ddr_rlast,
  s_sh_sh_cl_ddr_rvalid,
  s_sh_sh_cl_ddr_is_ready,
  s_sh_sh_ddr_stat_addr0,
  s_sh_sh_ddr_stat_wdata0,
  s_sh_sh_ddr_stat_addr1,
  s_sh_sh_ddr_stat_wdata1,
  s_sh_sh_ddr_stat_addr2,
  s_sh_sh_ddr_stat_wdata2,
  s_sh_sh_cl_ddr_bid,
  s_sh_sh_cl_ddr_bresp,
  s_sh_sh_cl_ddr_rid,
  s_sh_sh_cl_ddr_rdata,
  s_sh_sh_cl_ddr_rresp,
  s_sh_ddr_sh_stat_ack0,
  s_sh_ddr_sh_stat_ack1,
  s_sh_ddr_sh_stat_ack2,
  s_sh_m_a_act_n,
  s_sh_m_a_cke,
  s_sh_m_a_odt,
  s_sh_m_a_cs_n,
  s_sh_m_a_clk_dn,
  s_sh_m_a_clk_dp,
  s_sh_m_a_par,
  s_sh_cl_rst_dimm_a_n,
  s_sh_m_b_act_n,
  s_sh_m_b_cke,
  s_sh_m_b_odt,
  s_sh_m_b_cs_n,
  s_sh_m_b_clk_dn,
  s_sh_m_b_clk_dp,
  s_sh_m_b_par,
  s_sh_cl_rst_dimm_b_n,
  s_sh_m_d_act_n,
  s_sh_m_d_cke,
  s_sh_m_d_odt,
  s_sh_m_d_cs_n,
  s_sh_m_d_clk_dn,
  s_sh_m_d_clk_dp,
  s_sh_m_d_par,
  s_sh_cl_rst_dimm_d_n,
  s_sh_cl_sh_ddr_awvalid,
  s_sh_cl_sh_ddr_wlast,
  s_sh_cl_sh_ddr_wvalid,
  s_sh_cl_sh_ddr_bready,
  s_sh_cl_sh_ddr_arvalid,
  s_sh_cl_sh_ddr_rready,
  s_sh_m_a_ma,
  s_sh_m_a_ba,
  s_sh_m_a_bg,
  s_sh_m_b_ma,
  s_sh_m_b_ba,
  s_sh_m_b_bg,
  s_sh_m_d_ma,
  s_sh_m_d_ba,
  s_sh_m_d_bg,
  s_sh_ddr_sh_stat_rdata0,
  s_sh_ddr_sh_stat_int0,
  s_sh_ddr_sh_stat_rdata1,
  s_sh_ddr_sh_stat_int1,
  s_sh_ddr_sh_stat_rdata2,
  s_sh_ddr_sh_stat_int2,
  s_sh_cl_sh_ddr_awid,
  s_sh_cl_sh_ddr_awaddr,
  s_sh_cl_sh_ddr_awlen,
  s_sh_cl_sh_ddr_awsize,
  s_sh_cl_sh_ddr_awburst,
  s_sh_cl_sh_ddr_wid,
  s_sh_cl_sh_ddr_wdata,
  s_sh_cl_sh_ddr_wstrb,
  s_sh_cl_sh_ddr_arid,
  s_sh_cl_sh_ddr_araddr,
  s_sh_cl_sh_ddr_arlen,
  s_sh_cl_sh_ddr_arsize,
  s_sh_cl_sh_ddr_arburst,
  s_sh_m_a_dq,
  s_sh_m_a_ecc,
  s_sh_m_a_dqs_dp,
  s_sh_m_a_dqs_dn,
  s_sh_m_b_dq,
  s_sh_m_b_ecc,
  s_sh_m_b_dqs_dp,
  s_sh_m_b_dqs_dn,
  s_sh_m_d_dq,
  s_sh_m_d_ecc,
  s_sh_m_d_dqs_dp,
  s_sh_m_d_dqs_dn,
  ddr4_mem_calib_complete,
  S00_AXI_arid,
  S00_AXI_awid,
  S00_AXI_bid,
  S00_AXI_rid
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_data_h2c_00, ASSOCIATED_BUSIF S00_AXI, INSERT_VIP 0, ASSOCIATED_CLKEN m_sc_aclken" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *)
input wire [36 : 0] S00_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *)
input wire [7 : 0] S00_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *)
input wire [2 : 0] S00_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION" *)
input wire [3 : 0] S00_AXI_awregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *)
input wire S00_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *)
output wire S00_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *)
input wire [511 : 0] S00_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *)
input wire [63 : 0] S00_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *)
input wire S00_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *)
input wire S00_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *)
output wire S00_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *)
output wire [1 : 0] S00_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *)
output wire S00_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *)
input wire S00_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *)
input wire [36 : 0] S00_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *)
input wire [7 : 0] S00_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *)
input wire [2 : 0] S00_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION" *)
input wire [3 : 0] S00_AXI_arregion;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *)
input wire S00_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *)
output wire S00_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *)
output wire [511 : 0] S00_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *)
output wire [1 : 0] S00_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *)
output wire S00_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *)
output wire S00_AXI_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *)
input wire S00_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh rst_main_n" *)
input wire s_sh_rst_main_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh clk_main_a0" *)
input wire s_sh_clk_main_a0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM0_DP" *)
input wire s_sh_clk_300m_dimm0_dp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM0_DN" *)
input wire s_sh_clk_300m_dimm0_dn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM1_DP" *)
input wire s_sh_clk_300m_dimm1_dp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM1_DN" *)
input wire s_sh_clk_300m_dimm1_dn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM3_DP" *)
input wire s_sh_clk_300m_dimm3_dp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM3_DN" *)
input wire s_sh_clk_300m_dimm3_dn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr0" *)
input wire s_sh_sh_ddr_stat_wr0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd0" *)
input wire s_sh_sh_ddr_stat_rd0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr1" *)
input wire s_sh_sh_ddr_stat_wr1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd1" *)
input wire s_sh_sh_ddr_stat_rd1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr2" *)
input wire s_sh_sh_ddr_stat_wr2;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd2" *)
input wire s_sh_sh_ddr_stat_rd2;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_awready" *)
input wire s_sh_sh_cl_ddr_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_wready" *)
input wire s_sh_sh_cl_ddr_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bvalid" *)
input wire s_sh_sh_cl_ddr_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_arready" *)
input wire s_sh_sh_cl_ddr_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rlast" *)
input wire s_sh_sh_cl_ddr_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rvalid" *)
input wire s_sh_sh_cl_ddr_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_is_ready" *)
input wire s_sh_sh_cl_ddr_is_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr0" *)
input wire [7 : 0] s_sh_sh_ddr_stat_addr0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata0" *)
input wire [31 : 0] s_sh_sh_ddr_stat_wdata0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr1" *)
input wire [7 : 0] s_sh_sh_ddr_stat_addr1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata1" *)
input wire [31 : 0] s_sh_sh_ddr_stat_wdata1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr2" *)
input wire [7 : 0] s_sh_sh_ddr_stat_addr2;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata2" *)
input wire [31 : 0] s_sh_sh_ddr_stat_wdata2;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bid" *)
input wire [15 : 0] s_sh_sh_cl_ddr_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bresp" *)
input wire [1 : 0] s_sh_sh_cl_ddr_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rid" *)
input wire [15 : 0] s_sh_sh_cl_ddr_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rdata" *)
input wire [511 : 0] s_sh_sh_cl_ddr_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rresp" *)
input wire [1 : 0] s_sh_sh_cl_ddr_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack0" *)
output wire s_sh_ddr_sh_stat_ack0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack1" *)
output wire s_sh_ddr_sh_stat_ack1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack2" *)
output wire s_sh_ddr_sh_stat_ack2;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ACT_N" *)
output wire s_sh_m_a_act_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CKE" *)
output wire [0 : 0] s_sh_m_a_cke;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ODT" *)
output wire [0 : 0] s_sh_m_a_odt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CS_N" *)
output wire [0 : 0] s_sh_m_a_cs_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CLK_DN" *)
output wire [0 : 0] s_sh_m_a_clk_dn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CLK_DP" *)
output wire [0 : 0] s_sh_m_a_clk_dp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_PAR" *)
output wire s_sh_m_a_par;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_A_N" *)
output wire s_sh_cl_rst_dimm_a_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ACT_N" *)
output wire s_sh_m_b_act_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CKE" *)
output wire [0 : 0] s_sh_m_b_cke;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ODT" *)
output wire [0 : 0] s_sh_m_b_odt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CS_N" *)
output wire [0 : 0] s_sh_m_b_cs_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CLK_DN" *)
output wire [0 : 0] s_sh_m_b_clk_dn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CLK_DP" *)
output wire [0 : 0] s_sh_m_b_clk_dp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_PAR" *)
output wire s_sh_m_b_par;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_B_N" *)
output wire s_sh_cl_rst_dimm_b_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ACT_N" *)
output wire s_sh_m_d_act_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CKE" *)
output wire [0 : 0] s_sh_m_d_cke;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ODT" *)
output wire [0 : 0] s_sh_m_d_odt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CS_N" *)
output wire [0 : 0] s_sh_m_d_cs_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CLK_DN" *)
output wire [0 : 0] s_sh_m_d_clk_dn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CLK_DP" *)
output wire [0 : 0] s_sh_m_d_clk_dp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_PAR" *)
output wire s_sh_m_d_par;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_D_N" *)
output wire s_sh_cl_rst_dimm_d_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awvalid" *)
output wire s_sh_cl_sh_ddr_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wlast" *)
output wire s_sh_cl_sh_ddr_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wvalid" *)
output wire s_sh_cl_sh_ddr_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_bready" *)
output wire s_sh_cl_sh_ddr_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arvalid" *)
output wire s_sh_cl_sh_ddr_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_rready" *)
output wire s_sh_cl_sh_ddr_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_MA" *)
output wire [16 : 0] s_sh_m_a_ma;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_BA" *)
output wire [1 : 0] s_sh_m_a_ba;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_BG" *)
output wire [1 : 0] s_sh_m_a_bg;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_MA" *)
output wire [16 : 0] s_sh_m_b_ma;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_BA" *)
output wire [1 : 0] s_sh_m_b_ba;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_BG" *)
output wire [1 : 0] s_sh_m_b_bg;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_MA" *)
output wire [16 : 0] s_sh_m_d_ma;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_BA" *)
output wire [1 : 0] s_sh_m_d_ba;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_BG" *)
output wire [1 : 0] s_sh_m_d_bg;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata0" *)
output wire [31 : 0] s_sh_ddr_sh_stat_rdata0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int0" *)
output wire [7 : 0] s_sh_ddr_sh_stat_int0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata1" *)
output wire [31 : 0] s_sh_ddr_sh_stat_rdata1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int1" *)
output wire [7 : 0] s_sh_ddr_sh_stat_int1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata2" *)
output wire [31 : 0] s_sh_ddr_sh_stat_rdata2;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int2" *)
output wire [7 : 0] s_sh_ddr_sh_stat_int2;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awid" *)
output wire [15 : 0] s_sh_cl_sh_ddr_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awaddr" *)
output wire [63 : 0] s_sh_cl_sh_ddr_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awlen" *)
output wire [7 : 0] s_sh_cl_sh_ddr_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awsize" *)
output wire [2 : 0] s_sh_cl_sh_ddr_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awburst" *)
output wire [1 : 0] s_sh_cl_sh_ddr_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wid" *)
output wire [15 : 0] s_sh_cl_sh_ddr_wid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wdata" *)
output wire [511 : 0] s_sh_cl_sh_ddr_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wstrb" *)
output wire [63 : 0] s_sh_cl_sh_ddr_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arid" *)
output wire [15 : 0] s_sh_cl_sh_ddr_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_araddr" *)
output wire [63 : 0] s_sh_cl_sh_ddr_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arlen" *)
output wire [7 : 0] s_sh_cl_sh_ddr_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arsize" *)
output wire [2 : 0] s_sh_cl_sh_ddr_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arburst" *)
output wire [1 : 0] s_sh_cl_sh_ddr_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQ" *)
inout wire [63 : 0] s_sh_m_a_dq;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ECC" *)
inout wire [7 : 0] s_sh_m_a_ecc;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQS_DP" *)
inout wire [17 : 0] s_sh_m_a_dqs_dp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQS_DN" *)
inout wire [17 : 0] s_sh_m_a_dqs_dn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQ" *)
inout wire [63 : 0] s_sh_m_b_dq;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ECC" *)
inout wire [7 : 0] s_sh_m_b_ecc;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQS_DP" *)
inout wire [17 : 0] s_sh_m_b_dqs_dp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQS_DN" *)
inout wire [17 : 0] s_sh_m_b_dqs_dn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQ" *)
inout wire [63 : 0] s_sh_m_d_dq;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ECC" *)
inout wire [7 : 0] s_sh_m_d_ecc;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQS_DP" *)
inout wire [17 : 0] s_sh_m_d_dqs_dp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQS_DN" *)
inout wire [17 : 0] s_sh_m_d_dqs_dn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ddr4_mem_calib_complete, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ddr4_mem_calib_complete DATA" *)
output wire ddr4_mem_calib_complete;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *)
input wire [5 : 0] S00_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *)
input wire [5 : 0] S00_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *)
output wire [5 : 0] S00_AXI_bid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 6, ADDR_WIDTH 37, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RU\
SER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *)
output wire [5 : 0] S00_AXI_rid;

  bd_3329 inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .S00_AXI_awaddr(S00_AXI_awaddr),
    .S00_AXI_awlen(S00_AXI_awlen),
    .S00_AXI_awprot(S00_AXI_awprot),
    .S00_AXI_awregion(S00_AXI_awregion),
    .S00_AXI_awvalid(S00_AXI_awvalid),
    .S00_AXI_awready(S00_AXI_awready),
    .S00_AXI_wdata(S00_AXI_wdata),
    .S00_AXI_wstrb(S00_AXI_wstrb),
    .S00_AXI_wlast(S00_AXI_wlast),
    .S00_AXI_wvalid(S00_AXI_wvalid),
    .S00_AXI_wready(S00_AXI_wready),
    .S00_AXI_bresp(S00_AXI_bresp),
    .S00_AXI_bvalid(S00_AXI_bvalid),
    .S00_AXI_bready(S00_AXI_bready),
    .S00_AXI_araddr(S00_AXI_araddr),
    .S00_AXI_arlen(S00_AXI_arlen),
    .S00_AXI_arprot(S00_AXI_arprot),
    .S00_AXI_arregion(S00_AXI_arregion),
    .S00_AXI_arvalid(S00_AXI_arvalid),
    .S00_AXI_arready(S00_AXI_arready),
    .S00_AXI_rdata(S00_AXI_rdata),
    .S00_AXI_rresp(S00_AXI_rresp),
    .S00_AXI_rlast(S00_AXI_rlast),
    .S00_AXI_rvalid(S00_AXI_rvalid),
    .S00_AXI_rready(S00_AXI_rready),
    .s_sh_rst_main_n(s_sh_rst_main_n),
    .s_sh_clk_main_a0(s_sh_clk_main_a0),
    .s_sh_clk_300m_dimm0_dp(s_sh_clk_300m_dimm0_dp),
    .s_sh_clk_300m_dimm0_dn(s_sh_clk_300m_dimm0_dn),
    .s_sh_clk_300m_dimm1_dp(s_sh_clk_300m_dimm1_dp),
    .s_sh_clk_300m_dimm1_dn(s_sh_clk_300m_dimm1_dn),
    .s_sh_clk_300m_dimm3_dp(s_sh_clk_300m_dimm3_dp),
    .s_sh_clk_300m_dimm3_dn(s_sh_clk_300m_dimm3_dn),
    .s_sh_sh_ddr_stat_wr0(s_sh_sh_ddr_stat_wr0),
    .s_sh_sh_ddr_stat_rd0(s_sh_sh_ddr_stat_rd0),
    .s_sh_sh_ddr_stat_wr1(s_sh_sh_ddr_stat_wr1),
    .s_sh_sh_ddr_stat_rd1(s_sh_sh_ddr_stat_rd1),
    .s_sh_sh_ddr_stat_wr2(s_sh_sh_ddr_stat_wr2),
    .s_sh_sh_ddr_stat_rd2(s_sh_sh_ddr_stat_rd2),
    .s_sh_sh_cl_ddr_awready(s_sh_sh_cl_ddr_awready),
    .s_sh_sh_cl_ddr_wready(s_sh_sh_cl_ddr_wready),
    .s_sh_sh_cl_ddr_bvalid(s_sh_sh_cl_ddr_bvalid),
    .s_sh_sh_cl_ddr_arready(s_sh_sh_cl_ddr_arready),
    .s_sh_sh_cl_ddr_rlast(s_sh_sh_cl_ddr_rlast),
    .s_sh_sh_cl_ddr_rvalid(s_sh_sh_cl_ddr_rvalid),
    .s_sh_sh_cl_ddr_is_ready(s_sh_sh_cl_ddr_is_ready),
    .s_sh_sh_ddr_stat_addr0(s_sh_sh_ddr_stat_addr0),
    .s_sh_sh_ddr_stat_wdata0(s_sh_sh_ddr_stat_wdata0),
    .s_sh_sh_ddr_stat_addr1(s_sh_sh_ddr_stat_addr1),
    .s_sh_sh_ddr_stat_wdata1(s_sh_sh_ddr_stat_wdata1),
    .s_sh_sh_ddr_stat_addr2(s_sh_sh_ddr_stat_addr2),
    .s_sh_sh_ddr_stat_wdata2(s_sh_sh_ddr_stat_wdata2),
    .s_sh_sh_cl_ddr_bid(s_sh_sh_cl_ddr_bid),
    .s_sh_sh_cl_ddr_bresp(s_sh_sh_cl_ddr_bresp),
    .s_sh_sh_cl_ddr_rid(s_sh_sh_cl_ddr_rid),
    .s_sh_sh_cl_ddr_rdata(s_sh_sh_cl_ddr_rdata),
    .s_sh_sh_cl_ddr_rresp(s_sh_sh_cl_ddr_rresp),
    .s_sh_ddr_sh_stat_ack0(s_sh_ddr_sh_stat_ack0),
    .s_sh_ddr_sh_stat_ack1(s_sh_ddr_sh_stat_ack1),
    .s_sh_ddr_sh_stat_ack2(s_sh_ddr_sh_stat_ack2),
    .s_sh_m_a_act_n(s_sh_m_a_act_n),
    .s_sh_m_a_cke(s_sh_m_a_cke),
    .s_sh_m_a_odt(s_sh_m_a_odt),
    .s_sh_m_a_cs_n(s_sh_m_a_cs_n),
    .s_sh_m_a_clk_dn(s_sh_m_a_clk_dn),
    .s_sh_m_a_clk_dp(s_sh_m_a_clk_dp),
    .s_sh_m_a_par(s_sh_m_a_par),
    .s_sh_cl_rst_dimm_a_n(s_sh_cl_rst_dimm_a_n),
    .s_sh_m_b_act_n(s_sh_m_b_act_n),
    .s_sh_m_b_cke(s_sh_m_b_cke),
    .s_sh_m_b_odt(s_sh_m_b_odt),
    .s_sh_m_b_cs_n(s_sh_m_b_cs_n),
    .s_sh_m_b_clk_dn(s_sh_m_b_clk_dn),
    .s_sh_m_b_clk_dp(s_sh_m_b_clk_dp),
    .s_sh_m_b_par(s_sh_m_b_par),
    .s_sh_cl_rst_dimm_b_n(s_sh_cl_rst_dimm_b_n),
    .s_sh_m_d_act_n(s_sh_m_d_act_n),
    .s_sh_m_d_cke(s_sh_m_d_cke),
    .s_sh_m_d_odt(s_sh_m_d_odt),
    .s_sh_m_d_cs_n(s_sh_m_d_cs_n),
    .s_sh_m_d_clk_dn(s_sh_m_d_clk_dn),
    .s_sh_m_d_clk_dp(s_sh_m_d_clk_dp),
    .s_sh_m_d_par(s_sh_m_d_par),
    .s_sh_cl_rst_dimm_d_n(s_sh_cl_rst_dimm_d_n),
    .s_sh_cl_sh_ddr_awvalid(s_sh_cl_sh_ddr_awvalid),
    .s_sh_cl_sh_ddr_wlast(s_sh_cl_sh_ddr_wlast),
    .s_sh_cl_sh_ddr_wvalid(s_sh_cl_sh_ddr_wvalid),
    .s_sh_cl_sh_ddr_bready(s_sh_cl_sh_ddr_bready),
    .s_sh_cl_sh_ddr_arvalid(s_sh_cl_sh_ddr_arvalid),
    .s_sh_cl_sh_ddr_rready(s_sh_cl_sh_ddr_rready),
    .s_sh_m_a_ma(s_sh_m_a_ma),
    .s_sh_m_a_ba(s_sh_m_a_ba),
    .s_sh_m_a_bg(s_sh_m_a_bg),
    .s_sh_m_b_ma(s_sh_m_b_ma),
    .s_sh_m_b_ba(s_sh_m_b_ba),
    .s_sh_m_b_bg(s_sh_m_b_bg),
    .s_sh_m_d_ma(s_sh_m_d_ma),
    .s_sh_m_d_ba(s_sh_m_d_ba),
    .s_sh_m_d_bg(s_sh_m_d_bg),
    .s_sh_ddr_sh_stat_rdata0(s_sh_ddr_sh_stat_rdata0),
    .s_sh_ddr_sh_stat_int0(s_sh_ddr_sh_stat_int0),
    .s_sh_ddr_sh_stat_rdata1(s_sh_ddr_sh_stat_rdata1),
    .s_sh_ddr_sh_stat_int1(s_sh_ddr_sh_stat_int1),
    .s_sh_ddr_sh_stat_rdata2(s_sh_ddr_sh_stat_rdata2),
    .s_sh_ddr_sh_stat_int2(s_sh_ddr_sh_stat_int2),
    .s_sh_cl_sh_ddr_awid(s_sh_cl_sh_ddr_awid),
    .s_sh_cl_sh_ddr_awaddr(s_sh_cl_sh_ddr_awaddr),
    .s_sh_cl_sh_ddr_awlen(s_sh_cl_sh_ddr_awlen),
    .s_sh_cl_sh_ddr_awsize(s_sh_cl_sh_ddr_awsize),
    .s_sh_cl_sh_ddr_awburst(s_sh_cl_sh_ddr_awburst),
    .s_sh_cl_sh_ddr_wid(s_sh_cl_sh_ddr_wid),
    .s_sh_cl_sh_ddr_wdata(s_sh_cl_sh_ddr_wdata),
    .s_sh_cl_sh_ddr_wstrb(s_sh_cl_sh_ddr_wstrb),
    .s_sh_cl_sh_ddr_arid(s_sh_cl_sh_ddr_arid),
    .s_sh_cl_sh_ddr_araddr(s_sh_cl_sh_ddr_araddr),
    .s_sh_cl_sh_ddr_arlen(s_sh_cl_sh_ddr_arlen),
    .s_sh_cl_sh_ddr_arsize(s_sh_cl_sh_ddr_arsize),
    .s_sh_cl_sh_ddr_arburst(s_sh_cl_sh_ddr_arburst),
    .s_sh_m_a_dq(s_sh_m_a_dq),
    .s_sh_m_a_ecc(s_sh_m_a_ecc),
    .s_sh_m_a_dqs_dp(s_sh_m_a_dqs_dp),
    .s_sh_m_a_dqs_dn(s_sh_m_a_dqs_dn),
    .s_sh_m_b_dq(s_sh_m_b_dq),
    .s_sh_m_b_ecc(s_sh_m_b_ecc),
    .s_sh_m_b_dqs_dp(s_sh_m_b_dqs_dp),
    .s_sh_m_b_dqs_dn(s_sh_m_b_dqs_dn),
    .s_sh_m_d_dq(s_sh_m_d_dq),
    .s_sh_m_d_ecc(s_sh_m_d_ecc),
    .s_sh_m_d_dqs_dp(s_sh_m_d_dqs_dp),
    .s_sh_m_d_dqs_dn(s_sh_m_d_dqs_dn),
    .ddr4_mem_calib_complete(ddr4_mem_calib_complete),
    .S00_AXI_arid(S00_AXI_arid),
    .S00_AXI_awid(S00_AXI_awid),
    .S00_AXI_bid(S00_AXI_bid),
    .S00_AXI_rid(S00_AXI_rid)
  );
endmodule
