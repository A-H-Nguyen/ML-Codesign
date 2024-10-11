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


// IP VLNV: xilinx.com:ip:pxi_ii_core:1.0
// IP Revision: 0

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module ii_level0_wire_pxi_ii_core_0 (
  blp_s_aclk_ctrl_00,
  ulp_m_aclk_ctrl_00,
  blp_s_aclk_extra_c_00,
  ulp_m_aclk_extra_c_00,
  blp_s_aclk_data_h2c_00,
  ulp_m_aclk_data_h2c_00,
  blp_s_aclk_kernel_00,
  ulp_m_aclk_kernel_00,
  blp_s_aresetn_data_h2c_00,
  ulp_m_aresetn_data_h2c_00,
  BLP_S_BSCAN_USER_00_drck,
  BLP_S_BSCAN_USER_00_reset,
  BLP_S_BSCAN_USER_00_sel,
  BLP_S_BSCAN_USER_00_capture,
  BLP_S_BSCAN_USER_00_shift,
  BLP_S_BSCAN_USER_00_update,
  BLP_S_BSCAN_USER_00_tdi,
  BLP_S_BSCAN_USER_00_runtest,
  BLP_S_BSCAN_USER_00_tck,
  BLP_S_BSCAN_USER_00_tms,
  BLP_S_BSCAN_USER_00_bscanid_en,
  BLP_S_BSCAN_USER_00_tdo,
  ULP_M_BSCAN_USER_00_drck,
  ULP_M_BSCAN_USER_00_reset,
  ULP_M_BSCAN_USER_00_sel,
  ULP_M_BSCAN_USER_00_capture,
  ULP_M_BSCAN_USER_00_shift,
  ULP_M_BSCAN_USER_00_update,
  ULP_M_BSCAN_USER_00_tdi,
  ULP_M_BSCAN_USER_00_runtest,
  ULP_M_BSCAN_USER_00_tck,
  ULP_M_BSCAN_USER_00_tms,
  ULP_M_BSCAN_USER_00_bscanid_en,
  ULP_M_BSCAN_USER_00_tdo,
  BLP_S_AXI_CTRL_USER_00_araddr,
  BLP_S_AXI_CTRL_USER_00_arprot,
  BLP_S_AXI_CTRL_USER_00_arready,
  BLP_S_AXI_CTRL_USER_00_arvalid,
  BLP_S_AXI_CTRL_USER_00_awaddr,
  BLP_S_AXI_CTRL_USER_00_awprot,
  BLP_S_AXI_CTRL_USER_00_awready,
  BLP_S_AXI_CTRL_USER_00_awvalid,
  BLP_S_AXI_CTRL_USER_00_bready,
  BLP_S_AXI_CTRL_USER_00_bresp,
  BLP_S_AXI_CTRL_USER_00_bvalid,
  BLP_S_AXI_CTRL_USER_00_rdata,
  BLP_S_AXI_CTRL_USER_00_rready,
  BLP_S_AXI_CTRL_USER_00_rresp,
  BLP_S_AXI_CTRL_USER_00_rvalid,
  BLP_S_AXI_CTRL_USER_00_wdata,
  BLP_S_AXI_CTRL_USER_00_wready,
  BLP_S_AXI_CTRL_USER_00_wstrb,
  BLP_S_AXI_CTRL_USER_00_wvalid,
  ULP_M_AXI_CTRL_USER_00_araddr,
  ULP_M_AXI_CTRL_USER_00_arprot,
  ULP_M_AXI_CTRL_USER_00_arready,
  ULP_M_AXI_CTRL_USER_00_arvalid,
  ULP_M_AXI_CTRL_USER_00_awaddr,
  ULP_M_AXI_CTRL_USER_00_awprot,
  ULP_M_AXI_CTRL_USER_00_awready,
  ULP_M_AXI_CTRL_USER_00_awvalid,
  ULP_M_AXI_CTRL_USER_00_bready,
  ULP_M_AXI_CTRL_USER_00_bresp,
  ULP_M_AXI_CTRL_USER_00_bvalid,
  ULP_M_AXI_CTRL_USER_00_rdata,
  ULP_M_AXI_CTRL_USER_00_rready,
  ULP_M_AXI_CTRL_USER_00_rresp,
  ULP_M_AXI_CTRL_USER_00_rvalid,
  ULP_M_AXI_CTRL_USER_00_wdata,
  ULP_M_AXI_CTRL_USER_00_wready,
  ULP_M_AXI_CTRL_USER_00_wstrb,
  ULP_M_AXI_CTRL_USER_00_wvalid,
  BLP_S_AXI_DATA_H2C_00_araddr,
  BLP_S_AXI_DATA_H2C_00_arburst,
  BLP_S_AXI_DATA_H2C_00_arlen,
  BLP_S_AXI_DATA_H2C_00_arready,
  BLP_S_AXI_DATA_H2C_00_arvalid,
  BLP_S_AXI_DATA_H2C_00_awaddr,
  BLP_S_AXI_DATA_H2C_00_awburst,
  BLP_S_AXI_DATA_H2C_00_awlen,
  BLP_S_AXI_DATA_H2C_00_awready,
  BLP_S_AXI_DATA_H2C_00_awvalid,
  BLP_S_AXI_DATA_H2C_00_bready,
  BLP_S_AXI_DATA_H2C_00_bresp,
  BLP_S_AXI_DATA_H2C_00_bvalid,
  BLP_S_AXI_DATA_H2C_00_rdata,
  BLP_S_AXI_DATA_H2C_00_rlast,
  BLP_S_AXI_DATA_H2C_00_rready,
  BLP_S_AXI_DATA_H2C_00_rresp,
  BLP_S_AXI_DATA_H2C_00_rvalid,
  BLP_S_AXI_DATA_H2C_00_wdata,
  BLP_S_AXI_DATA_H2C_00_wlast,
  BLP_S_AXI_DATA_H2C_00_wready,
  BLP_S_AXI_DATA_H2C_00_wstrb,
  BLP_S_AXI_DATA_H2C_00_wvalid,
  ULP_M_AXI_DATA_H2C_00_araddr,
  ULP_M_AXI_DATA_H2C_00_arburst,
  ULP_M_AXI_DATA_H2C_00_arid,
  ULP_M_AXI_DATA_H2C_00_arlen,
  ULP_M_AXI_DATA_H2C_00_arready,
  ULP_M_AXI_DATA_H2C_00_arvalid,
  ULP_M_AXI_DATA_H2C_00_awaddr,
  ULP_M_AXI_DATA_H2C_00_awburst,
  ULP_M_AXI_DATA_H2C_00_awid,
  ULP_M_AXI_DATA_H2C_00_awlen,
  ULP_M_AXI_DATA_H2C_00_awready,
  ULP_M_AXI_DATA_H2C_00_awvalid,
  ULP_M_AXI_DATA_H2C_00_bid,
  ULP_M_AXI_DATA_H2C_00_bready,
  ULP_M_AXI_DATA_H2C_00_bresp,
  ULP_M_AXI_DATA_H2C_00_bvalid,
  ULP_M_AXI_DATA_H2C_00_rdata,
  ULP_M_AXI_DATA_H2C_00_rid,
  ULP_M_AXI_DATA_H2C_00_rlast,
  ULP_M_AXI_DATA_H2C_00_rready,
  ULP_M_AXI_DATA_H2C_00_rresp,
  ULP_M_AXI_DATA_H2C_00_rvalid,
  ULP_M_AXI_DATA_H2C_00_wdata,
  ULP_M_AXI_DATA_H2C_00_wlast,
  ULP_M_AXI_DATA_H2C_00_wready,
  ULP_M_AXI_DATA_H2C_00_wstrb,
  ULP_M_AXI_DATA_H2C_00_wvalid,
  BLP_S_AXI_DATA_H2C_00_arid,
  BLP_S_AXI_DATA_H2C_00_awid,
  BLP_S_AXI_DATA_H2C_00_bid,
  BLP_S_AXI_DATA_H2C_00_rid
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.blp_s_aclk_ctrl_00, FREQ_HZ 125000000, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.blp_s_aclk_ctrl_00 CLK" *)
input wire blp_s_aclk_ctrl_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ulp_m_aclk_ctrl_00, FREQ_HZ 125000000, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ulp_m_aclk_ctrl_00 CLK" *)
output wire ulp_m_aclk_ctrl_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.blp_s_aclk_extra_c_00, FREQ_HZ 500000000, PHASE 0, CLK_DOMAIN cd_extra_c_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.blp_s_aclk_extra_c_00 CLK" *)
input wire blp_s_aclk_extra_c_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ulp_m_aclk_extra_c_00, FREQ_HZ 500000000, PHASE 0, CLK_DOMAIN cd_extra_c_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ulp_m_aclk_extra_c_00 CLK" *)
output wire ulp_m_aclk_extra_c_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.blp_s_aclk_data_h2c_00, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_data_h2c_00, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_00:BLP_S_AXI_DATA_H2C_00:BLP_S_BSCAN_USER_00, ASSOCIATED_RESET BLP_S_ARESETN_DATA_H2C_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.blp_s_aclk_data_h2c_00 CLK" *)
input wire blp_s_aclk_data_h2c_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ulp_m_aclk_data_h2c_00, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_data_h2c_00, ASSOCIATED_BUSIF ULP_M_AXI_CTRL_USER_00:ULP_M_AXI_DATA_H2C_00:ULP_M_BSCAN_USER_00, ASSOCIATED_RESET ULP_M_ARESETN_DATA_H2C_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ulp_m_aclk_data_h2c_00 CLK" *)
output wire ulp_m_aclk_data_h2c_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.blp_s_aclk_kernel_00, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_extra_b_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.blp_s_aclk_kernel_00 CLK" *)
input wire blp_s_aclk_kernel_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ulp_m_aclk_kernel_00, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_extra_b_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ulp_m_aclk_kernel_00 CLK" *)
output wire ulp_m_aclk_kernel_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.blp_s_aresetn_data_h2c_00, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.blp_s_aresetn_data_h2c_00 RST" *)
input wire [0 : 0] blp_s_aresetn_data_h2c_00;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ulp_m_aresetn_data_h2c_00, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ulp_m_aresetn_data_h2c_00 RST" *)
output wire [0 : 0] ulp_m_aresetn_data_h2c_00;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 DRCK" *)
input wire [0 : 0] BLP_S_BSCAN_USER_00_drck;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 RESET" *)
input wire [0 : 0] BLP_S_BSCAN_USER_00_reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 SEL" *)
input wire [0 : 0] BLP_S_BSCAN_USER_00_sel;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 CAPTURE" *)
input wire [0 : 0] BLP_S_BSCAN_USER_00_capture;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 SHIFT" *)
input wire [0 : 0] BLP_S_BSCAN_USER_00_shift;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 UPDATE" *)
input wire [0 : 0] BLP_S_BSCAN_USER_00_update;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TDI" *)
input wire [0 : 0] BLP_S_BSCAN_USER_00_tdi;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 RUNTEST" *)
input wire [0 : 0] BLP_S_BSCAN_USER_00_runtest;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TCK" *)
input wire [0 : 0] BLP_S_BSCAN_USER_00_tck;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TMS" *)
input wire [0 : 0] BLP_S_BSCAN_USER_00_tms;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 BSCANID_EN" *)
input wire [0 : 0] BLP_S_BSCAN_USER_00_bscanid_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TDO" *)
output wire [0 : 0] BLP_S_BSCAN_USER_00_tdo;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 DRCK" *)
output wire [0 : 0] ULP_M_BSCAN_USER_00_drck;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 RESET" *)
output wire [0 : 0] ULP_M_BSCAN_USER_00_reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 SEL" *)
output wire [0 : 0] ULP_M_BSCAN_USER_00_sel;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 CAPTURE" *)
output wire [0 : 0] ULP_M_BSCAN_USER_00_capture;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 SHIFT" *)
output wire [0 : 0] ULP_M_BSCAN_USER_00_shift;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 UPDATE" *)
output wire [0 : 0] ULP_M_BSCAN_USER_00_update;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TDI" *)
output wire [0 : 0] ULP_M_BSCAN_USER_00_tdi;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 RUNTEST" *)
output wire [0 : 0] ULP_M_BSCAN_USER_00_runtest;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TCK" *)
output wire [0 : 0] ULP_M_BSCAN_USER_00_tck;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TMS" *)
output wire [0 : 0] ULP_M_BSCAN_USER_00_tms;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 BSCANID_EN" *)
output wire [0 : 0] ULP_M_BSCAN_USER_00_bscanid_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TDO" *)
input wire [0 : 0] ULP_M_BSCAN_USER_00_tdo;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARADDR" *)
input wire [24 : 0] BLP_S_AXI_CTRL_USER_00_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARPROT" *)
input wire [2 : 0] BLP_S_AXI_CTRL_USER_00_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARREADY" *)
output wire BLP_S_AXI_CTRL_USER_00_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARVALID" *)
input wire BLP_S_AXI_CTRL_USER_00_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWADDR" *)
input wire [24 : 0] BLP_S_AXI_CTRL_USER_00_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWPROT" *)
input wire [2 : 0] BLP_S_AXI_CTRL_USER_00_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWREADY" *)
output wire BLP_S_AXI_CTRL_USER_00_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWVALID" *)
input wire BLP_S_AXI_CTRL_USER_00_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BREADY" *)
input wire BLP_S_AXI_CTRL_USER_00_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BRESP" *)
output wire [1 : 0] BLP_S_AXI_CTRL_USER_00_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BVALID" *)
output wire BLP_S_AXI_CTRL_USER_00_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RDATA" *)
output wire [31 : 0] BLP_S_AXI_CTRL_USER_00_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RREADY" *)
input wire BLP_S_AXI_CTRL_USER_00_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RRESP" *)
output wire [1 : 0] BLP_S_AXI_CTRL_USER_00_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RVALID" *)
output wire BLP_S_AXI_CTRL_USER_00_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WDATA" *)
input wire [31 : 0] BLP_S_AXI_CTRL_USER_00_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WREADY" *)
output wire BLP_S_AXI_CTRL_USER_00_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WSTRB" *)
input wire [3 : 0] BLP_S_AXI_CTRL_USER_00_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_00, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 1, NUM_WRITE\
_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, SLR_ASSIGNMENT slr0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WVALID" *)
input wire BLP_S_AXI_CTRL_USER_00_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARADDR" *)
output wire [24 : 0] ULP_M_AXI_CTRL_USER_00_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARPROT" *)
output wire [2 : 0] ULP_M_AXI_CTRL_USER_00_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARREADY" *)
input wire ULP_M_AXI_CTRL_USER_00_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARVALID" *)
output wire ULP_M_AXI_CTRL_USER_00_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWADDR" *)
output wire [24 : 0] ULP_M_AXI_CTRL_USER_00_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWPROT" *)
output wire [2 : 0] ULP_M_AXI_CTRL_USER_00_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWREADY" *)
input wire ULP_M_AXI_CTRL_USER_00_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWVALID" *)
output wire ULP_M_AXI_CTRL_USER_00_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BREADY" *)
output wire ULP_M_AXI_CTRL_USER_00_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BRESP" *)
input wire [1 : 0] ULP_M_AXI_CTRL_USER_00_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BVALID" *)
input wire ULP_M_AXI_CTRL_USER_00_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RDATA" *)
input wire [31 : 0] ULP_M_AXI_CTRL_USER_00_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RREADY" *)
output wire ULP_M_AXI_CTRL_USER_00_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RRESP" *)
input wire [1 : 0] ULP_M_AXI_CTRL_USER_00_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RVALID" *)
input wire ULP_M_AXI_CTRL_USER_00_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WDATA" *)
output wire [31 : 0] ULP_M_AXI_CTRL_USER_00_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WREADY" *)
input wire ULP_M_AXI_CTRL_USER_00_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WSTRB" *)
output wire [3 : 0] ULP_M_AXI_CTRL_USER_00_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_00, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 1, NUM_WRITE\
_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, SLR_ASSIGNMENT slr0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WVALID" *)
output wire ULP_M_AXI_CTRL_USER_00_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARADDR" *)
input wire [63 : 0] BLP_S_AXI_DATA_H2C_00_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARBURST" *)
input wire [1 : 0] BLP_S_AXI_DATA_H2C_00_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLEN" *)
input wire [7 : 0] BLP_S_AXI_DATA_H2C_00_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARREADY" *)
output wire BLP_S_AXI_DATA_H2C_00_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARVALID" *)
input wire BLP_S_AXI_DATA_H2C_00_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWADDR" *)
input wire [63 : 0] BLP_S_AXI_DATA_H2C_00_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWBURST" *)
input wire [1 : 0] BLP_S_AXI_DATA_H2C_00_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLEN" *)
input wire [7 : 0] BLP_S_AXI_DATA_H2C_00_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWREADY" *)
output wire BLP_S_AXI_DATA_H2C_00_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWVALID" *)
input wire BLP_S_AXI_DATA_H2C_00_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BREADY" *)
input wire BLP_S_AXI_DATA_H2C_00_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BRESP" *)
output wire [1 : 0] BLP_S_AXI_DATA_H2C_00_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BVALID" *)
output wire BLP_S_AXI_DATA_H2C_00_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RDATA" *)
output wire [511 : 0] BLP_S_AXI_DATA_H2C_00_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RLAST" *)
output wire BLP_S_AXI_DATA_H2C_00_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RREADY" *)
input wire BLP_S_AXI_DATA_H2C_00_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RRESP" *)
output wire [1 : 0] BLP_S_AXI_DATA_H2C_00_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RVALID" *)
output wire BLP_S_AXI_DATA_H2C_00_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WDATA" *)
input wire [511 : 0] BLP_S_AXI_DATA_H2C_00_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WLAST" *)
input wire BLP_S_AXI_DATA_H2C_00_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WREADY" *)
output wire BLP_S_AXI_DATA_H2C_00_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WSTRB" *)
input wire [63 : 0] BLP_S_AXI_DATA_H2C_00_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WVALID" *)
input wire BLP_S_AXI_DATA_H2C_00_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARADDR" *)
output wire [63 : 0] ULP_M_AXI_DATA_H2C_00_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARBURST" *)
output wire [1 : 0] ULP_M_AXI_DATA_H2C_00_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARID" *)
output wire [5 : 0] ULP_M_AXI_DATA_H2C_00_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARLEN" *)
output wire [7 : 0] ULP_M_AXI_DATA_H2C_00_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARREADY" *)
input wire ULP_M_AXI_DATA_H2C_00_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARVALID" *)
output wire ULP_M_AXI_DATA_H2C_00_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWADDR" *)
output wire [63 : 0] ULP_M_AXI_DATA_H2C_00_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWBURST" *)
output wire [1 : 0] ULP_M_AXI_DATA_H2C_00_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWID" *)
output wire [5 : 0] ULP_M_AXI_DATA_H2C_00_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWLEN" *)
output wire [7 : 0] ULP_M_AXI_DATA_H2C_00_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWREADY" *)
input wire ULP_M_AXI_DATA_H2C_00_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWVALID" *)
output wire ULP_M_AXI_DATA_H2C_00_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BID" *)
input wire [5 : 0] ULP_M_AXI_DATA_H2C_00_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BREADY" *)
output wire ULP_M_AXI_DATA_H2C_00_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BRESP" *)
input wire [1 : 0] ULP_M_AXI_DATA_H2C_00_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BVALID" *)
input wire ULP_M_AXI_DATA_H2C_00_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RDATA" *)
input wire [511 : 0] ULP_M_AXI_DATA_H2C_00_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RID" *)
input wire [5 : 0] ULP_M_AXI_DATA_H2C_00_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RLAST" *)
input wire ULP_M_AXI_DATA_H2C_00_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RREADY" *)
output wire ULP_M_AXI_DATA_H2C_00_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RRESP" *)
input wire [1 : 0] ULP_M_AXI_DATA_H2C_00_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RVALID" *)
input wire ULP_M_AXI_DATA_H2C_00_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WDATA" *)
output wire [511 : 0] ULP_M_AXI_DATA_H2C_00_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WLAST" *)
output wire ULP_M_AXI_DATA_H2C_00_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WREADY" *)
input wire ULP_M_AXI_DATA_H2C_00_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WSTRB" *)
output wire [63 : 0] ULP_M_AXI_DATA_H2C_00_wstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_DATA_H2C_00, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 2, NUM_WRITE\
_THREADS 2, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, SLR_ASSIGNMENT slr0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WVALID" *)
output wire ULP_M_AXI_DATA_H2C_00_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARID" *)
input wire [5 : 0] BLP_S_AXI_DATA_H2C_00_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWID" *)
input wire [5 : 0] BLP_S_AXI_DATA_H2C_00_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BID" *)
output wire [5 : 0] BLP_S_AXI_DATA_H2C_00_bid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_00, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 2, NUM_WRITE\
_THREADS 2, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, SLR_ASSIGNMENT slr0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RID" *)
output wire [5 : 0] BLP_S_AXI_DATA_H2C_00_rid;

  bd_8181 inst (
    .blp_s_aclk_ctrl_00(blp_s_aclk_ctrl_00),
    .ulp_m_aclk_ctrl_00(ulp_m_aclk_ctrl_00),
    .blp_s_aclk_extra_c_00(blp_s_aclk_extra_c_00),
    .ulp_m_aclk_extra_c_00(ulp_m_aclk_extra_c_00),
    .blp_s_aclk_data_h2c_00(blp_s_aclk_data_h2c_00),
    .ulp_m_aclk_data_h2c_00(ulp_m_aclk_data_h2c_00),
    .blp_s_aclk_kernel_00(blp_s_aclk_kernel_00),
    .ulp_m_aclk_kernel_00(ulp_m_aclk_kernel_00),
    .blp_s_aresetn_data_h2c_00(blp_s_aresetn_data_h2c_00),
    .ulp_m_aresetn_data_h2c_00(ulp_m_aresetn_data_h2c_00),
    .BLP_S_BSCAN_USER_00_drck(BLP_S_BSCAN_USER_00_drck),
    .BLP_S_BSCAN_USER_00_reset(BLP_S_BSCAN_USER_00_reset),
    .BLP_S_BSCAN_USER_00_sel(BLP_S_BSCAN_USER_00_sel),
    .BLP_S_BSCAN_USER_00_capture(BLP_S_BSCAN_USER_00_capture),
    .BLP_S_BSCAN_USER_00_shift(BLP_S_BSCAN_USER_00_shift),
    .BLP_S_BSCAN_USER_00_update(BLP_S_BSCAN_USER_00_update),
    .BLP_S_BSCAN_USER_00_tdi(BLP_S_BSCAN_USER_00_tdi),
    .BLP_S_BSCAN_USER_00_runtest(BLP_S_BSCAN_USER_00_runtest),
    .BLP_S_BSCAN_USER_00_tck(BLP_S_BSCAN_USER_00_tck),
    .BLP_S_BSCAN_USER_00_tms(BLP_S_BSCAN_USER_00_tms),
    .BLP_S_BSCAN_USER_00_bscanid_en(BLP_S_BSCAN_USER_00_bscanid_en),
    .BLP_S_BSCAN_USER_00_tdo(BLP_S_BSCAN_USER_00_tdo),
    .ULP_M_BSCAN_USER_00_drck(ULP_M_BSCAN_USER_00_drck),
    .ULP_M_BSCAN_USER_00_reset(ULP_M_BSCAN_USER_00_reset),
    .ULP_M_BSCAN_USER_00_sel(ULP_M_BSCAN_USER_00_sel),
    .ULP_M_BSCAN_USER_00_capture(ULP_M_BSCAN_USER_00_capture),
    .ULP_M_BSCAN_USER_00_shift(ULP_M_BSCAN_USER_00_shift),
    .ULP_M_BSCAN_USER_00_update(ULP_M_BSCAN_USER_00_update),
    .ULP_M_BSCAN_USER_00_tdi(ULP_M_BSCAN_USER_00_tdi),
    .ULP_M_BSCAN_USER_00_runtest(ULP_M_BSCAN_USER_00_runtest),
    .ULP_M_BSCAN_USER_00_tck(ULP_M_BSCAN_USER_00_tck),
    .ULP_M_BSCAN_USER_00_tms(ULP_M_BSCAN_USER_00_tms),
    .ULP_M_BSCAN_USER_00_bscanid_en(ULP_M_BSCAN_USER_00_bscanid_en),
    .ULP_M_BSCAN_USER_00_tdo(ULP_M_BSCAN_USER_00_tdo),
    .BLP_S_AXI_CTRL_USER_00_araddr(BLP_S_AXI_CTRL_USER_00_araddr),
    .BLP_S_AXI_CTRL_USER_00_arprot(BLP_S_AXI_CTRL_USER_00_arprot),
    .BLP_S_AXI_CTRL_USER_00_arready(BLP_S_AXI_CTRL_USER_00_arready),
    .BLP_S_AXI_CTRL_USER_00_arvalid(BLP_S_AXI_CTRL_USER_00_arvalid),
    .BLP_S_AXI_CTRL_USER_00_awaddr(BLP_S_AXI_CTRL_USER_00_awaddr),
    .BLP_S_AXI_CTRL_USER_00_awprot(BLP_S_AXI_CTRL_USER_00_awprot),
    .BLP_S_AXI_CTRL_USER_00_awready(BLP_S_AXI_CTRL_USER_00_awready),
    .BLP_S_AXI_CTRL_USER_00_awvalid(BLP_S_AXI_CTRL_USER_00_awvalid),
    .BLP_S_AXI_CTRL_USER_00_bready(BLP_S_AXI_CTRL_USER_00_bready),
    .BLP_S_AXI_CTRL_USER_00_bresp(BLP_S_AXI_CTRL_USER_00_bresp),
    .BLP_S_AXI_CTRL_USER_00_bvalid(BLP_S_AXI_CTRL_USER_00_bvalid),
    .BLP_S_AXI_CTRL_USER_00_rdata(BLP_S_AXI_CTRL_USER_00_rdata),
    .BLP_S_AXI_CTRL_USER_00_rready(BLP_S_AXI_CTRL_USER_00_rready),
    .BLP_S_AXI_CTRL_USER_00_rresp(BLP_S_AXI_CTRL_USER_00_rresp),
    .BLP_S_AXI_CTRL_USER_00_rvalid(BLP_S_AXI_CTRL_USER_00_rvalid),
    .BLP_S_AXI_CTRL_USER_00_wdata(BLP_S_AXI_CTRL_USER_00_wdata),
    .BLP_S_AXI_CTRL_USER_00_wready(BLP_S_AXI_CTRL_USER_00_wready),
    .BLP_S_AXI_CTRL_USER_00_wstrb(BLP_S_AXI_CTRL_USER_00_wstrb),
    .BLP_S_AXI_CTRL_USER_00_wvalid(BLP_S_AXI_CTRL_USER_00_wvalid),
    .ULP_M_AXI_CTRL_USER_00_araddr(ULP_M_AXI_CTRL_USER_00_araddr),
    .ULP_M_AXI_CTRL_USER_00_arprot(ULP_M_AXI_CTRL_USER_00_arprot),
    .ULP_M_AXI_CTRL_USER_00_arready(ULP_M_AXI_CTRL_USER_00_arready),
    .ULP_M_AXI_CTRL_USER_00_arvalid(ULP_M_AXI_CTRL_USER_00_arvalid),
    .ULP_M_AXI_CTRL_USER_00_awaddr(ULP_M_AXI_CTRL_USER_00_awaddr),
    .ULP_M_AXI_CTRL_USER_00_awprot(ULP_M_AXI_CTRL_USER_00_awprot),
    .ULP_M_AXI_CTRL_USER_00_awready(ULP_M_AXI_CTRL_USER_00_awready),
    .ULP_M_AXI_CTRL_USER_00_awvalid(ULP_M_AXI_CTRL_USER_00_awvalid),
    .ULP_M_AXI_CTRL_USER_00_bready(ULP_M_AXI_CTRL_USER_00_bready),
    .ULP_M_AXI_CTRL_USER_00_bresp(ULP_M_AXI_CTRL_USER_00_bresp),
    .ULP_M_AXI_CTRL_USER_00_bvalid(ULP_M_AXI_CTRL_USER_00_bvalid),
    .ULP_M_AXI_CTRL_USER_00_rdata(ULP_M_AXI_CTRL_USER_00_rdata),
    .ULP_M_AXI_CTRL_USER_00_rready(ULP_M_AXI_CTRL_USER_00_rready),
    .ULP_M_AXI_CTRL_USER_00_rresp(ULP_M_AXI_CTRL_USER_00_rresp),
    .ULP_M_AXI_CTRL_USER_00_rvalid(ULP_M_AXI_CTRL_USER_00_rvalid),
    .ULP_M_AXI_CTRL_USER_00_wdata(ULP_M_AXI_CTRL_USER_00_wdata),
    .ULP_M_AXI_CTRL_USER_00_wready(ULP_M_AXI_CTRL_USER_00_wready),
    .ULP_M_AXI_CTRL_USER_00_wstrb(ULP_M_AXI_CTRL_USER_00_wstrb),
    .ULP_M_AXI_CTRL_USER_00_wvalid(ULP_M_AXI_CTRL_USER_00_wvalid),
    .BLP_S_AXI_DATA_H2C_00_araddr(BLP_S_AXI_DATA_H2C_00_araddr),
    .BLP_S_AXI_DATA_H2C_00_arburst(BLP_S_AXI_DATA_H2C_00_arburst),
    .BLP_S_AXI_DATA_H2C_00_arlen(BLP_S_AXI_DATA_H2C_00_arlen),
    .BLP_S_AXI_DATA_H2C_00_arready(BLP_S_AXI_DATA_H2C_00_arready),
    .BLP_S_AXI_DATA_H2C_00_arvalid(BLP_S_AXI_DATA_H2C_00_arvalid),
    .BLP_S_AXI_DATA_H2C_00_awaddr(BLP_S_AXI_DATA_H2C_00_awaddr),
    .BLP_S_AXI_DATA_H2C_00_awburst(BLP_S_AXI_DATA_H2C_00_awburst),
    .BLP_S_AXI_DATA_H2C_00_awlen(BLP_S_AXI_DATA_H2C_00_awlen),
    .BLP_S_AXI_DATA_H2C_00_awready(BLP_S_AXI_DATA_H2C_00_awready),
    .BLP_S_AXI_DATA_H2C_00_awvalid(BLP_S_AXI_DATA_H2C_00_awvalid),
    .BLP_S_AXI_DATA_H2C_00_bready(BLP_S_AXI_DATA_H2C_00_bready),
    .BLP_S_AXI_DATA_H2C_00_bresp(BLP_S_AXI_DATA_H2C_00_bresp),
    .BLP_S_AXI_DATA_H2C_00_bvalid(BLP_S_AXI_DATA_H2C_00_bvalid),
    .BLP_S_AXI_DATA_H2C_00_rdata(BLP_S_AXI_DATA_H2C_00_rdata),
    .BLP_S_AXI_DATA_H2C_00_rlast(BLP_S_AXI_DATA_H2C_00_rlast),
    .BLP_S_AXI_DATA_H2C_00_rready(BLP_S_AXI_DATA_H2C_00_rready),
    .BLP_S_AXI_DATA_H2C_00_rresp(BLP_S_AXI_DATA_H2C_00_rresp),
    .BLP_S_AXI_DATA_H2C_00_rvalid(BLP_S_AXI_DATA_H2C_00_rvalid),
    .BLP_S_AXI_DATA_H2C_00_wdata(BLP_S_AXI_DATA_H2C_00_wdata),
    .BLP_S_AXI_DATA_H2C_00_wlast(BLP_S_AXI_DATA_H2C_00_wlast),
    .BLP_S_AXI_DATA_H2C_00_wready(BLP_S_AXI_DATA_H2C_00_wready),
    .BLP_S_AXI_DATA_H2C_00_wstrb(BLP_S_AXI_DATA_H2C_00_wstrb),
    .BLP_S_AXI_DATA_H2C_00_wvalid(BLP_S_AXI_DATA_H2C_00_wvalid),
    .ULP_M_AXI_DATA_H2C_00_araddr(ULP_M_AXI_DATA_H2C_00_araddr),
    .ULP_M_AXI_DATA_H2C_00_arburst(ULP_M_AXI_DATA_H2C_00_arburst),
    .ULP_M_AXI_DATA_H2C_00_arid(ULP_M_AXI_DATA_H2C_00_arid),
    .ULP_M_AXI_DATA_H2C_00_arlen(ULP_M_AXI_DATA_H2C_00_arlen),
    .ULP_M_AXI_DATA_H2C_00_arready(ULP_M_AXI_DATA_H2C_00_arready),
    .ULP_M_AXI_DATA_H2C_00_arvalid(ULP_M_AXI_DATA_H2C_00_arvalid),
    .ULP_M_AXI_DATA_H2C_00_awaddr(ULP_M_AXI_DATA_H2C_00_awaddr),
    .ULP_M_AXI_DATA_H2C_00_awburst(ULP_M_AXI_DATA_H2C_00_awburst),
    .ULP_M_AXI_DATA_H2C_00_awid(ULP_M_AXI_DATA_H2C_00_awid),
    .ULP_M_AXI_DATA_H2C_00_awlen(ULP_M_AXI_DATA_H2C_00_awlen),
    .ULP_M_AXI_DATA_H2C_00_awready(ULP_M_AXI_DATA_H2C_00_awready),
    .ULP_M_AXI_DATA_H2C_00_awvalid(ULP_M_AXI_DATA_H2C_00_awvalid),
    .ULP_M_AXI_DATA_H2C_00_bid(ULP_M_AXI_DATA_H2C_00_bid),
    .ULP_M_AXI_DATA_H2C_00_bready(ULP_M_AXI_DATA_H2C_00_bready),
    .ULP_M_AXI_DATA_H2C_00_bresp(ULP_M_AXI_DATA_H2C_00_bresp),
    .ULP_M_AXI_DATA_H2C_00_bvalid(ULP_M_AXI_DATA_H2C_00_bvalid),
    .ULP_M_AXI_DATA_H2C_00_rdata(ULP_M_AXI_DATA_H2C_00_rdata),
    .ULP_M_AXI_DATA_H2C_00_rid(ULP_M_AXI_DATA_H2C_00_rid),
    .ULP_M_AXI_DATA_H2C_00_rlast(ULP_M_AXI_DATA_H2C_00_rlast),
    .ULP_M_AXI_DATA_H2C_00_rready(ULP_M_AXI_DATA_H2C_00_rready),
    .ULP_M_AXI_DATA_H2C_00_rresp(ULP_M_AXI_DATA_H2C_00_rresp),
    .ULP_M_AXI_DATA_H2C_00_rvalid(ULP_M_AXI_DATA_H2C_00_rvalid),
    .ULP_M_AXI_DATA_H2C_00_wdata(ULP_M_AXI_DATA_H2C_00_wdata),
    .ULP_M_AXI_DATA_H2C_00_wlast(ULP_M_AXI_DATA_H2C_00_wlast),
    .ULP_M_AXI_DATA_H2C_00_wready(ULP_M_AXI_DATA_H2C_00_wready),
    .ULP_M_AXI_DATA_H2C_00_wstrb(ULP_M_AXI_DATA_H2C_00_wstrb),
    .ULP_M_AXI_DATA_H2C_00_wvalid(ULP_M_AXI_DATA_H2C_00_wvalid),
    .BLP_S_AXI_DATA_H2C_00_arid(BLP_S_AXI_DATA_H2C_00_arid),
    .BLP_S_AXI_DATA_H2C_00_awid(BLP_S_AXI_DATA_H2C_00_awid),
    .BLP_S_AXI_DATA_H2C_00_bid(BLP_S_AXI_DATA_H2C_00_bid),
    .BLP_S_AXI_DATA_H2C_00_rid(BLP_S_AXI_DATA_H2C_00_rid)
  );
endmodule
