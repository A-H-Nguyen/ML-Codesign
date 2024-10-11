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
(* CHECK_LICENSE_TYPE = "cl_aws_0_0,aws_v1_0_3_top,{}" *)
(* CORE_GENERATION_INFO = "cl_aws_0_0,aws_v1_0_3_top,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=aws,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_MODE=2,C_DDR_A_PRESENT=0,C_DDR_B_PRESENT=0,C_DDR_D_PRESENT=0,C_NUM_A_CLOCKS=2,C_NUM_B_CLOCKS=1,C_NUM_C_CLOCKS=1,C_VENDOR_ID=0x1D0F,C_DEVICE_ID=0xF010,C_SUBSYSTEM_VENDOR_ID=0xFEDD,C_SUBSYSTEM_ID=0x1D51,C_CLOCK_A0_PERIOD=4.0,C_CLOCK_A1_PERIOD=8.0,C_CLOCK_B0_PERIOD=4.0,C_CLOCK_C0_PERIOD=2.0,C_CLOCK_A_RECIPE=1,C_CLOCK_B\
_RECIPE=0,C_CLOCK_C_RECIPE=0,C_NUM_STAGES_STATS=1,C_PCIM_PRESENT=0}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module cl_aws_0_0 (
  clk_main_a0,
  clk_extra_a1,
  clk_extra_a2,
  clk_extra_a3,
  clk_extra_b0,
  clk_extra_b1,
  clk_extra_c0,
  clk_extra_c1,
  kernel_rst_n,
  rst_main_n,
  sh_cl_flr_assert,
  cl_sh_flr_done,
  cl_sh_status0,
  cl_sh_status1,
  cl_sh_id0,
  cl_sh_id1,
  sh_cl_ctl0,
  sh_cl_ctl1,
  sh_cl_status_vdip,
  cl_sh_status_vled,
  sh_cl_pwr_state,
  cl_sh_dma_wr_full,
  cl_sh_dma_rd_full,
  cl_sh_pcim_awid,
  cl_sh_pcim_awaddr,
  cl_sh_pcim_awlen,
  cl_sh_pcim_awsize,
  cl_sh_pcim_awuser,
  cl_sh_pcim_awvalid,
  sh_cl_pcim_awready,
  cl_sh_pcim_wdata,
  cl_sh_pcim_wstrb,
  cl_sh_pcim_wlast,
  cl_sh_pcim_wvalid,
  sh_cl_pcim_wready,
  sh_cl_pcim_bid,
  sh_cl_pcim_bresp,
  sh_cl_pcim_bvalid,
  cl_sh_pcim_bready,
  cl_sh_pcim_arid,
  cl_sh_pcim_araddr,
  cl_sh_pcim_arlen,
  cl_sh_pcim_arsize,
  cl_sh_pcim_aruser,
  cl_sh_pcim_arvalid,
  sh_cl_pcim_arready,
  sh_cl_pcim_rid,
  sh_cl_pcim_rdata,
  sh_cl_pcim_rresp,
  sh_cl_pcim_rlast,
  sh_cl_pcim_rvalid,
  cl_sh_pcim_rready,
  cfg_max_payload,
  cfg_max_read_req,
  cl_sh_apppf_irq_req,
  sh_cl_apppf_irq_ack,
  sh_cl_dma_pcis_awid,
  sh_cl_dma_pcis_awaddr,
  sh_cl_dma_pcis_awlen,
  sh_cl_dma_pcis_awsize,
  sh_cl_dma_pcis_awvalid,
  cl_sh_dma_pcis_awready,
  sh_cl_dma_pcis_wdata,
  sh_cl_dma_pcis_wstrb,
  sh_cl_dma_pcis_wlast,
  sh_cl_dma_pcis_wvalid,
  cl_sh_dma_pcis_wready,
  cl_sh_dma_pcis_bid,
  cl_sh_dma_pcis_bresp,
  cl_sh_dma_pcis_bvalid,
  sh_cl_dma_pcis_bready,
  sh_cl_dma_pcis_arid,
  sh_cl_dma_pcis_araddr,
  sh_cl_dma_pcis_arlen,
  sh_cl_dma_pcis_arsize,
  sh_cl_dma_pcis_arvalid,
  cl_sh_dma_pcis_arready,
  cl_sh_dma_pcis_rid,
  cl_sh_dma_pcis_rdata,
  cl_sh_dma_pcis_rresp,
  cl_sh_dma_pcis_rlast,
  cl_sh_dma_pcis_rvalid,
  sh_cl_dma_pcis_rready,
  sda_cl_awvalid,
  sda_cl_awaddr,
  cl_sda_awready,
  sda_cl_wvalid,
  sda_cl_wdata,
  sda_cl_wstrb,
  cl_sda_wready,
  cl_sda_bvalid,
  cl_sda_bresp,
  sda_cl_bready,
  sda_cl_arvalid,
  sda_cl_araddr,
  cl_sda_arready,
  cl_sda_rvalid,
  cl_sda_rdata,
  cl_sda_rresp,
  sda_cl_rready,
  sh_ocl_awvalid,
  sh_ocl_awaddr,
  ocl_sh_awready,
  sh_ocl_wvalid,
  sh_ocl_wdata,
  sh_ocl_wstrb,
  ocl_sh_wready,
  ocl_sh_bvalid,
  ocl_sh_bresp,
  sh_ocl_bready,
  sh_ocl_arvalid,
  sh_ocl_araddr,
  ocl_sh_arready,
  ocl_sh_rvalid,
  ocl_sh_rdata,
  ocl_sh_rresp,
  sh_ocl_rready,
  sh_bar1_awvalid,
  sh_bar1_awaddr,
  bar1_sh_awready,
  sh_bar1_wvalid,
  sh_bar1_wdata,
  sh_bar1_wstrb,
  bar1_sh_wready,
  bar1_sh_bvalid,
  bar1_sh_bresp,
  sh_bar1_bready,
  sh_bar1_arvalid,
  sh_bar1_araddr,
  bar1_sh_arready,
  bar1_sh_rvalid,
  bar1_sh_rdata,
  bar1_sh_rresp,
  sh_bar1_rready,
  sh_cl_glcount0,
  sh_cl_glcount1,
  clk_main_a0_out,
  clk_extra_a1_out,
  clk_extra_b0_out,
  clk_extra_c0_out,
  rst_main_n_out,
  kernel_rst_n_out,
  flr_assert,
  flr_done,
  status_vdip,
  status_vled,
  irq_req,
  irq_ack,
  glcount0,
  glcount1,
  m_axi_ocl_awaddr,
  m_axi_ocl_awvalid,
  m_axi_ocl_awready,
  m_axi_ocl_wdata,
  m_axi_ocl_wstrb,
  m_axi_ocl_wvalid,
  m_axi_ocl_wready,
  m_axi_ocl_bresp,
  m_axi_ocl_bvalid,
  m_axi_ocl_bready,
  m_axi_ocl_araddr,
  m_axi_ocl_arvalid,
  m_axi_ocl_arready,
  m_axi_ocl_rdata,
  m_axi_ocl_rresp,
  m_axi_ocl_rvalid,
  m_axi_ocl_rready,
  m_axi_pcis_awid,
  m_axi_pcis_awaddr,
  m_axi_pcis_awlen,
  m_axi_pcis_awsize,
  m_axi_pcis_awvalid,
  m_axi_pcis_awready,
  m_axi_pcis_wdata,
  m_axi_pcis_wstrb,
  m_axi_pcis_wlast,
  m_axi_pcis_wvalid,
  m_axi_pcis_wready,
  m_axi_pcis_bid,
  m_axi_pcis_bresp,
  m_axi_pcis_bvalid,
  m_axi_pcis_bready,
  m_axi_pcis_arid,
  m_axi_pcis_araddr,
  m_axi_pcis_arlen,
  m_axi_pcis_arsize,
  m_axi_pcis_arvalid,
  m_axi_pcis_arready,
  m_axi_pcis_rid,
  m_axi_pcis_rdata,
  m_axi_pcis_rresp,
  m_axi_pcis_rlast,
  m_axi_pcis_rvalid,
  m_axi_pcis_rready,
  m_axi_pcis_awburst,
  m_axi_pcis_arburst
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH clk_main_a0" *)
input wire clk_main_a0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH clk_extra_a1" *)
input wire clk_extra_a1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH clk_extra_a2" *)
input wire clk_extra_a2;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH clk_extra_a3" *)
input wire clk_extra_a3;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH clk_extra_b0" *)
input wire clk_extra_b0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH clk_extra_b1" *)
input wire clk_extra_b1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH clk_extra_c0" *)
input wire clk_extra_c0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH clk_extra_c1" *)
input wire clk_extra_c1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH kernel_rst_n" *)
input wire kernel_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH rst_main_n" *)
input wire rst_main_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_flr_assert" *)
input wire sh_cl_flr_assert;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_flr_done" *)
output wire cl_sh_flr_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_status0" *)
output wire [31 : 0] cl_sh_status0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_status1" *)
output wire [31 : 0] cl_sh_status1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_id0" *)
output wire [31 : 0] cl_sh_id0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_id1" *)
output wire [31 : 0] cl_sh_id1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_ctl0" *)
input wire [31 : 0] sh_cl_ctl0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_ctl1" *)
input wire [31 : 0] sh_cl_ctl1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_status_vdip" *)
input wire [15 : 0] sh_cl_status_vdip;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_status_vled" *)
output wire [15 : 0] cl_sh_status_vled;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_pwr_state" *)
input wire [1 : 0] sh_cl_pwr_state;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_dma_wr_full" *)
output wire cl_sh_dma_wr_full;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_dma_rd_full" *)
output wire cl_sh_dma_rd_full;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_awid" *)
output wire [15 : 0] cl_sh_pcim_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_awaddr" *)
output wire [63 : 0] cl_sh_pcim_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_awlen" *)
output wire [7 : 0] cl_sh_pcim_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_awsize" *)
output wire [2 : 0] cl_sh_pcim_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_awuser" *)
output wire [18 : 0] cl_sh_pcim_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_awvalid" *)
output wire cl_sh_pcim_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_pcim_awready" *)
input wire sh_cl_pcim_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_wdata" *)
output wire [511 : 0] cl_sh_pcim_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_wstrb" *)
output wire [63 : 0] cl_sh_pcim_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_wlast" *)
output wire cl_sh_pcim_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_wvalid" *)
output wire cl_sh_pcim_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_pcim_wready" *)
input wire sh_cl_pcim_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_pcim_bid" *)
input wire [15 : 0] sh_cl_pcim_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_pcim_bresp" *)
input wire [1 : 0] sh_cl_pcim_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_pcim_bvalid" *)
input wire sh_cl_pcim_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_bready" *)
output wire cl_sh_pcim_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_arid" *)
output wire [15 : 0] cl_sh_pcim_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_araddr" *)
output wire [63 : 0] cl_sh_pcim_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_arlen" *)
output wire [7 : 0] cl_sh_pcim_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_arsize" *)
output wire [2 : 0] cl_sh_pcim_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_aruser" *)
output wire [18 : 0] cl_sh_pcim_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_arvalid" *)
output wire cl_sh_pcim_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_pcim_arready" *)
input wire sh_cl_pcim_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_pcim_rid" *)
input wire [15 : 0] sh_cl_pcim_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_pcim_rdata" *)
input wire [511 : 0] sh_cl_pcim_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_pcim_rresp" *)
input wire [1 : 0] sh_cl_pcim_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_pcim_rlast" *)
input wire sh_cl_pcim_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_pcim_rvalid" *)
input wire sh_cl_pcim_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_pcim_rready" *)
output wire cl_sh_pcim_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cfg_max_payload" *)
input wire [1 : 0] cfg_max_payload;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cfg_max_read_req" *)
input wire [2 : 0] cfg_max_read_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_apppf_irq_req" *)
output wire [15 : 0] cl_sh_apppf_irq_req;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_apppf_irq_ack" *)
input wire [15 : 0] sh_cl_apppf_irq_ack;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_dma_pcis_awid" *)
input wire [5 : 0] sh_cl_dma_pcis_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_dma_pcis_awaddr" *)
input wire [63 : 0] sh_cl_dma_pcis_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_dma_pcis_awlen" *)
input wire [7 : 0] sh_cl_dma_pcis_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_dma_pcis_awsize" *)
input wire [2 : 0] sh_cl_dma_pcis_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_dma_pcis_awvalid" *)
input wire sh_cl_dma_pcis_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_dma_pcis_awready" *)
output wire cl_sh_dma_pcis_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_dma_pcis_wdata" *)
input wire [511 : 0] sh_cl_dma_pcis_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_dma_pcis_wstrb" *)
input wire [63 : 0] sh_cl_dma_pcis_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_dma_pcis_wlast" *)
input wire sh_cl_dma_pcis_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_dma_pcis_wvalid" *)
input wire sh_cl_dma_pcis_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_dma_pcis_wready" *)
output wire cl_sh_dma_pcis_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_dma_pcis_bid" *)
output wire [5 : 0] cl_sh_dma_pcis_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_dma_pcis_bresp" *)
output wire [1 : 0] cl_sh_dma_pcis_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_dma_pcis_bvalid" *)
output wire cl_sh_dma_pcis_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_dma_pcis_bready" *)
input wire sh_cl_dma_pcis_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_dma_pcis_arid" *)
input wire [5 : 0] sh_cl_dma_pcis_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_dma_pcis_araddr" *)
input wire [63 : 0] sh_cl_dma_pcis_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_dma_pcis_arlen" *)
input wire [7 : 0] sh_cl_dma_pcis_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_dma_pcis_arsize" *)
input wire [2 : 0] sh_cl_dma_pcis_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_dma_pcis_arvalid" *)
input wire sh_cl_dma_pcis_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_dma_pcis_arready" *)
output wire cl_sh_dma_pcis_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_dma_pcis_rid" *)
output wire [5 : 0] cl_sh_dma_pcis_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_dma_pcis_rdata" *)
output wire [511 : 0] cl_sh_dma_pcis_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_dma_pcis_rresp" *)
output wire [1 : 0] cl_sh_dma_pcis_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_dma_pcis_rlast" *)
output wire cl_sh_dma_pcis_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sh_dma_pcis_rvalid" *)
output wire cl_sh_dma_pcis_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_dma_pcis_rready" *)
input wire sh_cl_dma_pcis_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sda_cl_awvalid" *)
input wire sda_cl_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sda_cl_awaddr" *)
input wire [31 : 0] sda_cl_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sda_awready" *)
output wire cl_sda_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sda_cl_wvalid" *)
input wire sda_cl_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sda_cl_wdata" *)
input wire [31 : 0] sda_cl_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sda_cl_wstrb" *)
input wire [3 : 0] sda_cl_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sda_wready" *)
output wire cl_sda_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sda_bvalid" *)
output wire cl_sda_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sda_bresp" *)
output wire [1 : 0] cl_sda_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sda_cl_bready" *)
input wire sda_cl_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sda_cl_arvalid" *)
input wire sda_cl_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sda_cl_araddr" *)
input wire [31 : 0] sda_cl_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sda_arready" *)
output wire cl_sda_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sda_rvalid" *)
output wire cl_sda_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sda_rdata" *)
output wire [31 : 0] cl_sda_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH cl_sda_rresp" *)
output wire [1 : 0] cl_sda_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sda_cl_rready" *)
input wire sda_cl_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ocl_awvalid" *)
input wire sh_ocl_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ocl_awaddr" *)
input wire [31 : 0] sh_ocl_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH ocl_sh_awready" *)
output wire ocl_sh_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ocl_wvalid" *)
input wire sh_ocl_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ocl_wdata" *)
input wire [31 : 0] sh_ocl_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ocl_wstrb" *)
input wire [3 : 0] sh_ocl_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH ocl_sh_wready" *)
output wire ocl_sh_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH ocl_sh_bvalid" *)
output wire ocl_sh_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH ocl_sh_bresp" *)
output wire [1 : 0] ocl_sh_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ocl_bready" *)
input wire sh_ocl_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ocl_arvalid" *)
input wire sh_ocl_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ocl_araddr" *)
input wire [31 : 0] sh_ocl_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH ocl_sh_arready" *)
output wire ocl_sh_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH ocl_sh_rvalid" *)
output wire ocl_sh_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH ocl_sh_rdata" *)
output wire [31 : 0] ocl_sh_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH ocl_sh_rresp" *)
output wire [1 : 0] ocl_sh_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_ocl_rready" *)
input wire sh_ocl_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_bar1_awvalid" *)
input wire sh_bar1_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_bar1_awaddr" *)
input wire [31 : 0] sh_bar1_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH bar1_sh_awready" *)
output wire bar1_sh_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_bar1_wvalid" *)
input wire sh_bar1_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_bar1_wdata" *)
input wire [31 : 0] sh_bar1_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_bar1_wstrb" *)
input wire [3 : 0] sh_bar1_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH bar1_sh_wready" *)
output wire bar1_sh_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH bar1_sh_bvalid" *)
output wire bar1_sh_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH bar1_sh_bresp" *)
output wire [1 : 0] bar1_sh_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_bar1_bready" *)
input wire sh_bar1_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_bar1_arvalid" *)
input wire sh_bar1_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_bar1_araddr" *)
input wire [31 : 0] sh_bar1_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH bar1_sh_arready" *)
output wire bar1_sh_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH bar1_sh_rvalid" *)
output wire bar1_sh_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH bar1_sh_rdata" *)
output wire [31 : 0] bar1_sh_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH bar1_sh_rresp" *)
output wire [1 : 0] bar1_sh_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_bar1_rready" *)
input wire sh_bar1_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_glcount0" *)
input wire [63 : 0] sh_cl_glcount0;
(* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 S_SH sh_cl_glcount1" *)
input wire [63 : 0] sh_cl_glcount1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_MAIN_A0, FREQ_HZ 250000000, CLK_DOMAIN clk_main_a0_out, ASSOCIATED_BUSIF M_AXI_PCIS:S_AXI_PCIM:S_AXI_DDRA:S_AXI_DDRB:S_AXI_DDRC:S_AXI_DDRD:M_AXI_SDA:M_AXI_OCL:M_AXI_BAR1, ASSOCIATED_RESET rst_main_n_out:kernel_rst_n_out, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_MAIN_A0 CLK" *)
output wire clk_main_a0_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_EXTRA_A1, FREQ_HZ 125000000, CLK_DOMAIN clk_extra_a1_out, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_EXTRA_A1 CLK" *)
output wire clk_extra_a1_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_EXTRA_B0, FREQ_HZ 250000000, CLK_DOMAIN clk_extra_b0_out, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_EXTRA_B0 CLK" *)
output wire clk_extra_b0_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_EXTRA_C0, FREQ_HZ 500000000, CLK_DOMAIN clk_extra_c0_out, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_EXTRA_C0 CLK" *)
output wire clk_extra_c0_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET_MAIN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET_MAIN RST" *)
output wire rst_main_n_out;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET_KERNEL, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET_KERNEL RST" *)
output wire kernel_rst_n_out;
output wire flr_assert;
input wire flr_done;
output wire [15 : 0] status_vdip;
input wire [15 : 0] status_vled;
input wire [15 : 0] irq_req;
output wire [15 : 0] irq_ack;
output wire [63 : 0] glcount0;
output wire [63 : 0] glcount1;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_OCL AWADDR" *)
output wire [31 : 0] m_axi_ocl_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_OCL AWVALID" *)
output wire m_axi_ocl_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_OCL AWREADY" *)
input wire m_axi_ocl_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_OCL WDATA" *)
output wire [31 : 0] m_axi_ocl_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_OCL WSTRB" *)
output wire [3 : 0] m_axi_ocl_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_OCL WVALID" *)
output wire m_axi_ocl_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_OCL WREADY" *)
input wire m_axi_ocl_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_OCL BRESP" *)
input wire [1 : 0] m_axi_ocl_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_OCL BVALID" *)
input wire m_axi_ocl_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_OCL BREADY" *)
output wire m_axi_ocl_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_OCL ARADDR" *)
output wire [31 : 0] m_axi_ocl_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_OCL ARVALID" *)
output wire m_axi_ocl_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_OCL ARREADY" *)
input wire m_axi_ocl_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_OCL RDATA" *)
input wire [31 : 0] m_axi_ocl_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_OCL RRESP" *)
input wire [1 : 0] m_axi_ocl_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_OCL RVALID" *)
input wire m_axi_ocl_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_OCL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN clk_main_a0_out, NUM_READ_THREADS 1, NUM_WRITE_THREADS\
 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_OCL RREADY" *)
output wire m_axi_ocl_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS AWID" *)
output wire [5 : 0] m_axi_pcis_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS AWADDR" *)
output wire [63 : 0] m_axi_pcis_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS AWLEN" *)
output wire [7 : 0] m_axi_pcis_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS AWSIZE" *)
output wire [2 : 0] m_axi_pcis_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS AWVALID" *)
output wire m_axi_pcis_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS AWREADY" *)
input wire m_axi_pcis_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS WDATA" *)
output wire [511 : 0] m_axi_pcis_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS WSTRB" *)
output wire [63 : 0] m_axi_pcis_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS WLAST" *)
output wire m_axi_pcis_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS WVALID" *)
output wire m_axi_pcis_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS WREADY" *)
input wire m_axi_pcis_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS BID" *)
input wire [5 : 0] m_axi_pcis_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS BRESP" *)
input wire [1 : 0] m_axi_pcis_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS BVALID" *)
input wire m_axi_pcis_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS BREADY" *)
output wire m_axi_pcis_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS ARID" *)
output wire [5 : 0] m_axi_pcis_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS ARADDR" *)
output wire [63 : 0] m_axi_pcis_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS ARLEN" *)
output wire [7 : 0] m_axi_pcis_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS ARSIZE" *)
output wire [2 : 0] m_axi_pcis_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS ARVALID" *)
output wire m_axi_pcis_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS ARREADY" *)
input wire m_axi_pcis_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS RID" *)
input wire [5 : 0] m_axi_pcis_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS RDATA" *)
input wire [511 : 0] m_axi_pcis_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS RRESP" *)
input wire [1 : 0] m_axi_pcis_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS RLAST" *)
input wire m_axi_pcis_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS RVALID" *)
input wire m_axi_pcis_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS RREADY" *)
output wire m_axi_pcis_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS AWBURST" *)
output wire [1 : 0] m_axi_pcis_awburst;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_PCIS, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, NUM_READ_THREADS 2, NUM_WRITE_THREADS 2, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN clk_main_a0_o\
ut, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_PCIS ARBURST" *)
output wire [1 : 0] m_axi_pcis_arburst;

  aws_v1_0_3_top #(
    .C_MODE(2),
    .C_DDR_A_PRESENT(0),
    .C_DDR_B_PRESENT(0),
    .C_DDR_D_PRESENT(0),
    .C_NUM_A_CLOCKS(2),
    .C_NUM_B_CLOCKS(1),
    .C_NUM_C_CLOCKS(1),
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
    .clk_extra_a1(clk_extra_a1),
    .clk_extra_a2(clk_extra_a2),
    .clk_extra_a3(clk_extra_a3),
    .clk_extra_b0(clk_extra_b0),
    .clk_extra_b1(clk_extra_b1),
    .clk_extra_c0(clk_extra_c0),
    .clk_extra_c1(clk_extra_c1),
    .kernel_rst_n(kernel_rst_n),
    .rst_main_n(rst_main_n),
    .sh_cl_flr_assert(sh_cl_flr_assert),
    .cl_sh_flr_done(cl_sh_flr_done),
    .cl_sh_status0(cl_sh_status0),
    .cl_sh_status1(cl_sh_status1),
    .cl_sh_id0(cl_sh_id0),
    .cl_sh_id1(cl_sh_id1),
    .sh_cl_ctl0(sh_cl_ctl0),
    .sh_cl_ctl1(sh_cl_ctl1),
    .sh_cl_status_vdip(sh_cl_status_vdip),
    .cl_sh_status_vled(cl_sh_status_vled),
    .sh_cl_pwr_state(sh_cl_pwr_state),
    .cl_sh_dma_wr_full(cl_sh_dma_wr_full),
    .cl_sh_dma_rd_full(cl_sh_dma_rd_full),
    .cl_sh_pcim_awid(cl_sh_pcim_awid),
    .cl_sh_pcim_awaddr(cl_sh_pcim_awaddr),
    .cl_sh_pcim_awlen(cl_sh_pcim_awlen),
    .cl_sh_pcim_awsize(cl_sh_pcim_awsize),
    .cl_sh_pcim_awuser(cl_sh_pcim_awuser),
    .cl_sh_pcim_awvalid(cl_sh_pcim_awvalid),
    .sh_cl_pcim_awready(sh_cl_pcim_awready),
    .cl_sh_pcim_wdata(cl_sh_pcim_wdata),
    .cl_sh_pcim_wstrb(cl_sh_pcim_wstrb),
    .cl_sh_pcim_wlast(cl_sh_pcim_wlast),
    .cl_sh_pcim_wvalid(cl_sh_pcim_wvalid),
    .sh_cl_pcim_wready(sh_cl_pcim_wready),
    .sh_cl_pcim_bid(sh_cl_pcim_bid),
    .sh_cl_pcim_bresp(sh_cl_pcim_bresp),
    .sh_cl_pcim_bvalid(sh_cl_pcim_bvalid),
    .cl_sh_pcim_bready(cl_sh_pcim_bready),
    .cl_sh_pcim_arid(cl_sh_pcim_arid),
    .cl_sh_pcim_araddr(cl_sh_pcim_araddr),
    .cl_sh_pcim_arlen(cl_sh_pcim_arlen),
    .cl_sh_pcim_arsize(cl_sh_pcim_arsize),
    .cl_sh_pcim_aruser(cl_sh_pcim_aruser),
    .cl_sh_pcim_arvalid(cl_sh_pcim_arvalid),
    .sh_cl_pcim_arready(sh_cl_pcim_arready),
    .sh_cl_pcim_rid(sh_cl_pcim_rid),
    .sh_cl_pcim_rdata(sh_cl_pcim_rdata),
    .sh_cl_pcim_rresp(sh_cl_pcim_rresp),
    .sh_cl_pcim_rlast(sh_cl_pcim_rlast),
    .sh_cl_pcim_rvalid(sh_cl_pcim_rvalid),
    .cl_sh_pcim_rready(cl_sh_pcim_rready),
    .cfg_max_payload(cfg_max_payload),
    .cfg_max_read_req(cfg_max_read_req),
    .CLK_300M_DIMM0_DP(1'B0),
    .CLK_300M_DIMM0_DN(1'B0),
    .M_A_ACT_N(),
    .M_A_MA(),
    .M_A_BA(),
    .M_A_BG(),
    .M_A_CKE(),
    .M_A_ODT(),
    .M_A_CS_N(),
    .M_A_CLK_DN(),
    .M_A_CLK_DP(),
    .M_A_PAR(),
    .M_A_DQ(),
    .M_A_ECC(),
    .M_A_DQS_DP(),
    .M_A_DQS_DN(),
    .cl_RST_DIMM_A_N(),
    .CLK_300M_DIMM1_DP(1'B0),
    .CLK_300M_DIMM1_DN(1'B0),
    .M_B_ACT_N(),
    .M_B_MA(),
    .M_B_BA(),
    .M_B_BG(),
    .M_B_CKE(),
    .M_B_ODT(),
    .M_B_CS_N(),
    .M_B_CLK_DN(),
    .M_B_CLK_DP(),
    .M_B_PAR(),
    .M_B_DQ(),
    .M_B_ECC(),
    .M_B_DQS_DP(),
    .M_B_DQS_DN(),
    .cl_RST_DIMM_B_N(),
    .CLK_300M_DIMM3_DP(1'B0),
    .CLK_300M_DIMM3_DN(1'B0),
    .M_D_ACT_N(),
    .M_D_MA(),
    .M_D_BA(),
    .M_D_BG(),
    .M_D_CKE(),
    .M_D_ODT(),
    .M_D_CS_N(),
    .M_D_CLK_DN(),
    .M_D_CLK_DP(),
    .M_D_PAR(),
    .M_D_DQ(),
    .M_D_ECC(),
    .M_D_DQS_DP(),
    .M_D_DQS_DN(),
    .cl_RST_DIMM_D_N(),
    .sh_ddr_stat_addr0(8'B0),
    .sh_ddr_stat_wr0(1'B0),
    .sh_ddr_stat_rd0(1'B0),
    .sh_ddr_stat_wdata0(32'B0),
    .ddr_sh_stat_ack0(),
    .ddr_sh_stat_rdata0(),
    .ddr_sh_stat_int0(),
    .sh_ddr_stat_addr1(8'B0),
    .sh_ddr_stat_wr1(1'B0),
    .sh_ddr_stat_rd1(1'B0),
    .sh_ddr_stat_wdata1(32'B0),
    .ddr_sh_stat_ack1(),
    .ddr_sh_stat_rdata1(),
    .ddr_sh_stat_int1(),
    .sh_ddr_stat_addr2(8'B0),
    .sh_ddr_stat_wr2(1'B0),
    .sh_ddr_stat_rd2(1'B0),
    .sh_ddr_stat_wdata2(32'B0),
    .ddr_sh_stat_ack2(),
    .ddr_sh_stat_rdata2(),
    .ddr_sh_stat_int2(),
    .cl_sh_ddr_awid(),
    .cl_sh_ddr_awaddr(),
    .cl_sh_ddr_awlen(),
    .cl_sh_ddr_awsize(),
    .cl_sh_ddr_awburst(),
    .cl_sh_ddr_awvalid(),
    .sh_cl_ddr_awready(1'B0),
    .cl_sh_ddr_wid(),
    .cl_sh_ddr_wdata(),
    .cl_sh_ddr_wstrb(),
    .cl_sh_ddr_wlast(),
    .cl_sh_ddr_wvalid(),
    .sh_cl_ddr_wready(1'B0),
    .sh_cl_ddr_bid(16'B0),
    .sh_cl_ddr_bresp(2'B0),
    .sh_cl_ddr_bvalid(1'B0),
    .cl_sh_ddr_bready(),
    .cl_sh_ddr_arid(),
    .cl_sh_ddr_araddr(),
    .cl_sh_ddr_arlen(),
    .cl_sh_ddr_arsize(),
    .cl_sh_ddr_arburst(),
    .cl_sh_ddr_arvalid(),
    .sh_cl_ddr_arready(1'B0),
    .sh_cl_ddr_rid(16'B0),
    .sh_cl_ddr_rdata(512'B0),
    .sh_cl_ddr_rresp(2'B0),
    .sh_cl_ddr_rlast(1'B1),
    .sh_cl_ddr_rvalid(1'B0),
    .cl_sh_ddr_rready(),
    .sh_cl_ddr_is_ready(1'B0),
    .cl_sh_apppf_irq_req(cl_sh_apppf_irq_req),
    .sh_cl_apppf_irq_ack(sh_cl_apppf_irq_ack),
    .sh_cl_dma_pcis_awid(sh_cl_dma_pcis_awid),
    .sh_cl_dma_pcis_awaddr(sh_cl_dma_pcis_awaddr),
    .sh_cl_dma_pcis_awlen(sh_cl_dma_pcis_awlen),
    .sh_cl_dma_pcis_awsize(sh_cl_dma_pcis_awsize),
    .sh_cl_dma_pcis_awvalid(sh_cl_dma_pcis_awvalid),
    .cl_sh_dma_pcis_awready(cl_sh_dma_pcis_awready),
    .sh_cl_dma_pcis_wdata(sh_cl_dma_pcis_wdata),
    .sh_cl_dma_pcis_wstrb(sh_cl_dma_pcis_wstrb),
    .sh_cl_dma_pcis_wlast(sh_cl_dma_pcis_wlast),
    .sh_cl_dma_pcis_wvalid(sh_cl_dma_pcis_wvalid),
    .cl_sh_dma_pcis_wready(cl_sh_dma_pcis_wready),
    .cl_sh_dma_pcis_bid(cl_sh_dma_pcis_bid),
    .cl_sh_dma_pcis_bresp(cl_sh_dma_pcis_bresp),
    .cl_sh_dma_pcis_bvalid(cl_sh_dma_pcis_bvalid),
    .sh_cl_dma_pcis_bready(sh_cl_dma_pcis_bready),
    .sh_cl_dma_pcis_arid(sh_cl_dma_pcis_arid),
    .sh_cl_dma_pcis_araddr(sh_cl_dma_pcis_araddr),
    .sh_cl_dma_pcis_arlen(sh_cl_dma_pcis_arlen),
    .sh_cl_dma_pcis_arsize(sh_cl_dma_pcis_arsize),
    .sh_cl_dma_pcis_arvalid(sh_cl_dma_pcis_arvalid),
    .cl_sh_dma_pcis_arready(cl_sh_dma_pcis_arready),
    .cl_sh_dma_pcis_rid(cl_sh_dma_pcis_rid),
    .cl_sh_dma_pcis_rdata(cl_sh_dma_pcis_rdata),
    .cl_sh_dma_pcis_rresp(cl_sh_dma_pcis_rresp),
    .cl_sh_dma_pcis_rlast(cl_sh_dma_pcis_rlast),
    .cl_sh_dma_pcis_rvalid(cl_sh_dma_pcis_rvalid),
    .sh_cl_dma_pcis_rready(sh_cl_dma_pcis_rready),
    .sda_cl_awvalid(sda_cl_awvalid),
    .sda_cl_awaddr(sda_cl_awaddr),
    .cl_sda_awready(cl_sda_awready),
    .sda_cl_wvalid(sda_cl_wvalid),
    .sda_cl_wdata(sda_cl_wdata),
    .sda_cl_wstrb(sda_cl_wstrb),
    .cl_sda_wready(cl_sda_wready),
    .cl_sda_bvalid(cl_sda_bvalid),
    .cl_sda_bresp(cl_sda_bresp),
    .sda_cl_bready(sda_cl_bready),
    .sda_cl_arvalid(sda_cl_arvalid),
    .sda_cl_araddr(sda_cl_araddr),
    .cl_sda_arready(cl_sda_arready),
    .cl_sda_rvalid(cl_sda_rvalid),
    .cl_sda_rdata(cl_sda_rdata),
    .cl_sda_rresp(cl_sda_rresp),
    .sda_cl_rready(sda_cl_rready),
    .sh_ocl_awvalid(sh_ocl_awvalid),
    .sh_ocl_awaddr(sh_ocl_awaddr),
    .ocl_sh_awready(ocl_sh_awready),
    .sh_ocl_wvalid(sh_ocl_wvalid),
    .sh_ocl_wdata(sh_ocl_wdata),
    .sh_ocl_wstrb(sh_ocl_wstrb),
    .ocl_sh_wready(ocl_sh_wready),
    .ocl_sh_bvalid(ocl_sh_bvalid),
    .ocl_sh_bresp(ocl_sh_bresp),
    .sh_ocl_bready(sh_ocl_bready),
    .sh_ocl_arvalid(sh_ocl_arvalid),
    .sh_ocl_araddr(sh_ocl_araddr),
    .ocl_sh_arready(ocl_sh_arready),
    .ocl_sh_rvalid(ocl_sh_rvalid),
    .ocl_sh_rdata(ocl_sh_rdata),
    .ocl_sh_rresp(ocl_sh_rresp),
    .sh_ocl_rready(sh_ocl_rready),
    .sh_bar1_awvalid(sh_bar1_awvalid),
    .sh_bar1_awaddr(sh_bar1_awaddr),
    .bar1_sh_awready(bar1_sh_awready),
    .sh_bar1_wvalid(sh_bar1_wvalid),
    .sh_bar1_wdata(sh_bar1_wdata),
    .sh_bar1_wstrb(sh_bar1_wstrb),
    .bar1_sh_wready(bar1_sh_wready),
    .bar1_sh_bvalid(bar1_sh_bvalid),
    .bar1_sh_bresp(bar1_sh_bresp),
    .sh_bar1_bready(sh_bar1_bready),
    .sh_bar1_arvalid(sh_bar1_arvalid),
    .sh_bar1_araddr(sh_bar1_araddr),
    .bar1_sh_arready(bar1_sh_arready),
    .bar1_sh_rvalid(bar1_sh_rvalid),
    .bar1_sh_rdata(bar1_sh_rdata),
    .bar1_sh_rresp(bar1_sh_rresp),
    .sh_bar1_rready(sh_bar1_rready),
    .sh_cl_glcount0(sh_cl_glcount0),
    .sh_cl_glcount1(sh_cl_glcount1),
    .clk_main_a0_out(clk_main_a0_out),
    .clk_extra_a1_out(clk_extra_a1_out),
    .clk_extra_a2_out(),
    .clk_extra_a3_out(),
    .clk_extra_b0_out(clk_extra_b0_out),
    .clk_extra_b1_out(),
    .clk_extra_c0_out(clk_extra_c0_out),
    .clk_extra_c1_out(),
    .rst_main_n_out(rst_main_n_out),
    .kernel_rst_n_out(kernel_rst_n_out),
    .flr_assert(flr_assert),
    .flr_done(flr_done),
    .status_vdip(status_vdip),
    .status_vled(status_vled),
    .irq_req(irq_req),
    .irq_ack(irq_ack),
    .glcount0(glcount0),
    .glcount1(glcount1),
    .s_axi_ddra_awid(16'B0),
    .s_axi_ddra_awaddr(64'B0),
    .s_axi_ddra_awlen(8'B0),
    .s_axi_ddra_awsize(3'D6),
    .s_axi_ddra_awvalid(1'B0),
    .s_axi_ddra_awready(),
    .s_axi_ddra_wdata(512'B0),
    .s_axi_ddra_wstrb(64'HFFFFFFFFFFFFFFFF),
    .s_axi_ddra_wlast(1'B0),
    .s_axi_ddra_wvalid(1'B0),
    .s_axi_ddra_wready(),
    .s_axi_ddra_bid(),
    .s_axi_ddra_bresp(),
    .s_axi_ddra_bvalid(),
    .s_axi_ddra_bready(1'B0),
    .s_axi_ddra_arid(16'B0),
    .s_axi_ddra_araddr(64'B0),
    .s_axi_ddra_arlen(8'B0),
    .s_axi_ddra_arsize(3'D6),
    .s_axi_ddra_arvalid(1'B0),
    .s_axi_ddra_arready(),
    .s_axi_ddra_rid(),
    .s_axi_ddra_rdata(),
    .s_axi_ddra_rresp(),
    .s_axi_ddra_rlast(),
    .s_axi_ddra_rvalid(),
    .s_axi_ddra_rready(1'B0),
    .ddra_is_ready(),
    .s_axi_ddrb_awid(16'B0),
    .s_axi_ddrb_awaddr(64'B0),
    .s_axi_ddrb_awlen(8'B0),
    .s_axi_ddrb_awsize(3'D6),
    .s_axi_ddrb_awvalid(1'B0),
    .s_axi_ddrb_awready(),
    .s_axi_ddrb_wdata(512'B0),
    .s_axi_ddrb_wstrb(64'HFFFFFFFFFFFFFFFF),
    .s_axi_ddrb_wlast(1'B0),
    .s_axi_ddrb_wvalid(1'B0),
    .s_axi_ddrb_wready(),
    .s_axi_ddrb_bid(),
    .s_axi_ddrb_bresp(),
    .s_axi_ddrb_bvalid(),
    .s_axi_ddrb_bready(1'B0),
    .s_axi_ddrb_arid(16'B0),
    .s_axi_ddrb_araddr(64'B0),
    .s_axi_ddrb_arlen(8'B0),
    .s_axi_ddrb_arsize(3'D6),
    .s_axi_ddrb_arvalid(1'B0),
    .s_axi_ddrb_arready(),
    .s_axi_ddrb_rid(),
    .s_axi_ddrb_rdata(),
    .s_axi_ddrb_rresp(),
    .s_axi_ddrb_rlast(),
    .s_axi_ddrb_rvalid(),
    .s_axi_ddrb_rready(1'B0),
    .ddrb_is_ready(),
    .s_axi_ddrc_awid(16'B0),
    .s_axi_ddrc_awaddr(64'B0),
    .s_axi_ddrc_awlen(8'B0),
    .s_axi_ddrc_awsize(3'D6),
    .s_axi_ddrc_awvalid(1'B0),
    .s_axi_ddrc_awready(),
    .s_axi_ddrc_wdata(512'B0),
    .s_axi_ddrc_wstrb(64'HFFFFFFFFFFFFFFFF),
    .s_axi_ddrc_wlast(1'B0),
    .s_axi_ddrc_wvalid(1'B0),
    .s_axi_ddrc_wready(),
    .s_axi_ddrc_bid(),
    .s_axi_ddrc_bresp(),
    .s_axi_ddrc_bvalid(),
    .s_axi_ddrc_bready(1'B0),
    .s_axi_ddrc_arid(16'B0),
    .s_axi_ddrc_araddr(64'B0),
    .s_axi_ddrc_arlen(8'B0),
    .s_axi_ddrc_arsize(3'D6),
    .s_axi_ddrc_arvalid(1'B0),
    .s_axi_ddrc_arready(),
    .s_axi_ddrc_rid(),
    .s_axi_ddrc_rdata(),
    .s_axi_ddrc_rresp(),
    .s_axi_ddrc_rlast(),
    .s_axi_ddrc_rvalid(),
    .s_axi_ddrc_rready(1'B0),
    .ddrc_is_ready(),
    .s_axi_ddrd_awid(16'B0),
    .s_axi_ddrd_awaddr(64'B0),
    .s_axi_ddrd_awlen(8'B0),
    .s_axi_ddrd_awsize(3'D6),
    .s_axi_ddrd_awvalid(1'B0),
    .s_axi_ddrd_awready(),
    .s_axi_ddrd_wdata(512'B0),
    .s_axi_ddrd_wstrb(64'HFFFFFFFFFFFFFFFF),
    .s_axi_ddrd_wlast(1'B0),
    .s_axi_ddrd_wvalid(1'B0),
    .s_axi_ddrd_wready(),
    .s_axi_ddrd_bid(),
    .s_axi_ddrd_bresp(),
    .s_axi_ddrd_bvalid(),
    .s_axi_ddrd_bready(1'B0),
    .s_axi_ddrd_arid(16'B0),
    .s_axi_ddrd_araddr(64'B0),
    .s_axi_ddrd_arlen(8'B0),
    .s_axi_ddrd_arsize(3'D6),
    .s_axi_ddrd_arvalid(1'B0),
    .s_axi_ddrd_arready(),
    .s_axi_ddrd_rid(),
    .s_axi_ddrd_rdata(),
    .s_axi_ddrd_rresp(),
    .s_axi_ddrd_rlast(),
    .s_axi_ddrd_rvalid(),
    .s_axi_ddrd_rready(1'B0),
    .ddrd_is_ready(),
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
    .m_axi_ocl_awaddr(m_axi_ocl_awaddr),
    .m_axi_ocl_awvalid(m_axi_ocl_awvalid),
    .m_axi_ocl_awready(m_axi_ocl_awready),
    .m_axi_ocl_wdata(m_axi_ocl_wdata),
    .m_axi_ocl_wstrb(m_axi_ocl_wstrb),
    .m_axi_ocl_wvalid(m_axi_ocl_wvalid),
    .m_axi_ocl_wready(m_axi_ocl_wready),
    .m_axi_ocl_bresp(m_axi_ocl_bresp),
    .m_axi_ocl_bvalid(m_axi_ocl_bvalid),
    .m_axi_ocl_bready(m_axi_ocl_bready),
    .m_axi_ocl_araddr(m_axi_ocl_araddr),
    .m_axi_ocl_arvalid(m_axi_ocl_arvalid),
    .m_axi_ocl_arready(m_axi_ocl_arready),
    .m_axi_ocl_rdata(m_axi_ocl_rdata),
    .m_axi_ocl_rresp(m_axi_ocl_rresp),
    .m_axi_ocl_rvalid(m_axi_ocl_rvalid),
    .m_axi_ocl_rready(m_axi_ocl_rready),
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
    .m_axi_pcis_awid(m_axi_pcis_awid),
    .m_axi_pcis_awaddr(m_axi_pcis_awaddr),
    .m_axi_pcis_awlen(m_axi_pcis_awlen),
    .m_axi_pcis_awsize(m_axi_pcis_awsize),
    .m_axi_pcis_awvalid(m_axi_pcis_awvalid),
    .m_axi_pcis_awready(m_axi_pcis_awready),
    .m_axi_pcis_wdata(m_axi_pcis_wdata),
    .m_axi_pcis_wstrb(m_axi_pcis_wstrb),
    .m_axi_pcis_wlast(m_axi_pcis_wlast),
    .m_axi_pcis_wvalid(m_axi_pcis_wvalid),
    .m_axi_pcis_wready(m_axi_pcis_wready),
    .m_axi_pcis_bid(m_axi_pcis_bid),
    .m_axi_pcis_bresp(m_axi_pcis_bresp),
    .m_axi_pcis_bvalid(m_axi_pcis_bvalid),
    .m_axi_pcis_bready(m_axi_pcis_bready),
    .m_axi_pcis_arid(m_axi_pcis_arid),
    .m_axi_pcis_araddr(m_axi_pcis_araddr),
    .m_axi_pcis_arlen(m_axi_pcis_arlen),
    .m_axi_pcis_arsize(m_axi_pcis_arsize),
    .m_axi_pcis_arvalid(m_axi_pcis_arvalid),
    .m_axi_pcis_arready(m_axi_pcis_arready),
    .m_axi_pcis_rid(m_axi_pcis_rid),
    .m_axi_pcis_rdata(m_axi_pcis_rdata),
    .m_axi_pcis_rresp(m_axi_pcis_rresp),
    .m_axi_pcis_rlast(m_axi_pcis_rlast),
    .m_axi_pcis_rvalid(m_axi_pcis_rvalid),
    .m_axi_pcis_rready(m_axi_pcis_rready),
    .m_axi_pcis_awburst(m_axi_pcis_awburst),
    .m_axi_pcis_arburst(m_axi_pcis_arburst),
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
