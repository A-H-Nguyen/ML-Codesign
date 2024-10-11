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


// IP VLNV: xilinx.com:ip:smartconnect:1.0
// IP Revision: 12

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_3329_interconnect_S00_AXI_0 (
  aclk,
  aresetn,
  S00_AXI_awid,
  S00_AXI_awaddr,
  S00_AXI_awlen,
  S00_AXI_awsize,
  S00_AXI_awburst,
  S00_AXI_awlock,
  S00_AXI_awcache,
  S00_AXI_awprot,
  S00_AXI_awqos,
  S00_AXI_awvalid,
  S00_AXI_awready,
  S00_AXI_wdata,
  S00_AXI_wstrb,
  S00_AXI_wlast,
  S00_AXI_wvalid,
  S00_AXI_wready,
  S00_AXI_bid,
  S00_AXI_bresp,
  S00_AXI_bvalid,
  S00_AXI_bready,
  S00_AXI_arid,
  S00_AXI_araddr,
  S00_AXI_arlen,
  S00_AXI_arsize,
  S00_AXI_arburst,
  S00_AXI_arlock,
  S00_AXI_arcache,
  S00_AXI_arprot,
  S00_AXI_arqos,
  S00_AXI_arvalid,
  S00_AXI_arready,
  S00_AXI_rid,
  S00_AXI_rdata,
  S00_AXI_rresp,
  S00_AXI_rlast,
  S00_AXI_rvalid,
  S00_AXI_rready,
  M00_AXI_awid,
  M00_AXI_awaddr,
  M00_AXI_awlen,
  M00_AXI_awsize,
  M00_AXI_awburst,
  M00_AXI_awlock,
  M00_AXI_awcache,
  M00_AXI_awprot,
  M00_AXI_awqos,
  M00_AXI_awuser,
  M00_AXI_awvalid,
  M00_AXI_awready,
  M00_AXI_wdata,
  M00_AXI_wstrb,
  M00_AXI_wlast,
  M00_AXI_wuser,
  M00_AXI_wvalid,
  M00_AXI_wready,
  M00_AXI_bid,
  M00_AXI_bresp,
  M00_AXI_buser,
  M00_AXI_bvalid,
  M00_AXI_bready,
  M00_AXI_arid,
  M00_AXI_araddr,
  M00_AXI_arlen,
  M00_AXI_arsize,
  M00_AXI_arburst,
  M00_AXI_arlock,
  M00_AXI_arcache,
  M00_AXI_arprot,
  M00_AXI_arqos,
  M00_AXI_aruser,
  M00_AXI_arvalid,
  M00_AXI_arready,
  M00_AXI_rid,
  M00_AXI_rdata,
  M00_AXI_rresp,
  M00_AXI_rlast,
  M00_AXI_ruser,
  M00_AXI_rvalid,
  M00_AXI_rready,
  M01_AXI_awid,
  M01_AXI_awaddr,
  M01_AXI_awlen,
  M01_AXI_awsize,
  M01_AXI_awburst,
  M01_AXI_awlock,
  M01_AXI_awcache,
  M01_AXI_awprot,
  M01_AXI_awqos,
  M01_AXI_awuser,
  M01_AXI_awvalid,
  M01_AXI_awready,
  M01_AXI_wdata,
  M01_AXI_wstrb,
  M01_AXI_wlast,
  M01_AXI_wuser,
  M01_AXI_wvalid,
  M01_AXI_wready,
  M01_AXI_bid,
  M01_AXI_bresp,
  M01_AXI_buser,
  M01_AXI_bvalid,
  M01_AXI_bready,
  M01_AXI_arid,
  M01_AXI_araddr,
  M01_AXI_arlen,
  M01_AXI_arsize,
  M01_AXI_arburst,
  M01_AXI_arlock,
  M01_AXI_arcache,
  M01_AXI_arprot,
  M01_AXI_arqos,
  M01_AXI_aruser,
  M01_AXI_arvalid,
  M01_AXI_arready,
  M01_AXI_rid,
  M01_AXI_rdata,
  M01_AXI_rresp,
  M01_AXI_rlast,
  M01_AXI_ruser,
  M01_AXI_rvalid,
  M01_AXI_rready,
  M02_AXI_awid,
  M02_AXI_awaddr,
  M02_AXI_awlen,
  M02_AXI_awsize,
  M02_AXI_awburst,
  M02_AXI_awlock,
  M02_AXI_awcache,
  M02_AXI_awprot,
  M02_AXI_awqos,
  M02_AXI_awuser,
  M02_AXI_awvalid,
  M02_AXI_awready,
  M02_AXI_wdata,
  M02_AXI_wstrb,
  M02_AXI_wlast,
  M02_AXI_wuser,
  M02_AXI_wvalid,
  M02_AXI_wready,
  M02_AXI_bid,
  M02_AXI_bresp,
  M02_AXI_buser,
  M02_AXI_bvalid,
  M02_AXI_bready,
  M02_AXI_arid,
  M02_AXI_araddr,
  M02_AXI_arlen,
  M02_AXI_arsize,
  M02_AXI_arburst,
  M02_AXI_arlock,
  M02_AXI_arcache,
  M02_AXI_arprot,
  M02_AXI_arqos,
  M02_AXI_aruser,
  M02_AXI_arvalid,
  M02_AXI_arready,
  M02_AXI_rid,
  M02_AXI_rdata,
  M02_AXI_rresp,
  M02_AXI_rlast,
  M02_AXI_ruser,
  M02_AXI_rvalid,
  M02_AXI_rready,
  M03_AXI_awid,
  M03_AXI_awaddr,
  M03_AXI_awlen,
  M03_AXI_awsize,
  M03_AXI_awburst,
  M03_AXI_awlock,
  M03_AXI_awcache,
  M03_AXI_awprot,
  M03_AXI_awqos,
  M03_AXI_awuser,
  M03_AXI_awvalid,
  M03_AXI_awready,
  M03_AXI_wdata,
  M03_AXI_wstrb,
  M03_AXI_wlast,
  M03_AXI_wuser,
  M03_AXI_wvalid,
  M03_AXI_wready,
  M03_AXI_bid,
  M03_AXI_bresp,
  M03_AXI_buser,
  M03_AXI_bvalid,
  M03_AXI_bready,
  M03_AXI_arid,
  M03_AXI_araddr,
  M03_AXI_arlen,
  M03_AXI_arsize,
  M03_AXI_arburst,
  M03_AXI_arlock,
  M03_AXI_arcache,
  M03_AXI_arprot,
  M03_AXI_arqos,
  M03_AXI_aruser,
  M03_AXI_arvalid,
  M03_AXI_arready,
  M03_AXI_rid,
  M03_AXI_rdata,
  M03_AXI_rresp,
  M03_AXI_rlast,
  M03_AXI_ruser,
  M03_AXI_rvalid,
  M03_AXI_rready,
  M04_AXI_awid,
  M04_AXI_awaddr,
  M04_AXI_awlen,
  M04_AXI_awsize,
  M04_AXI_awburst,
  M04_AXI_awlock,
  M04_AXI_awcache,
  M04_AXI_awprot,
  M04_AXI_awqos,
  M04_AXI_awuser,
  M04_AXI_awvalid,
  M04_AXI_awready,
  M04_AXI_wdata,
  M04_AXI_wstrb,
  M04_AXI_wlast,
  M04_AXI_wuser,
  M04_AXI_wvalid,
  M04_AXI_wready,
  M04_AXI_bid,
  M04_AXI_bresp,
  M04_AXI_buser,
  M04_AXI_bvalid,
  M04_AXI_bready,
  M04_AXI_arid,
  M04_AXI_araddr,
  M04_AXI_arlen,
  M04_AXI_arsize,
  M04_AXI_arburst,
  M04_AXI_arlock,
  M04_AXI_arcache,
  M04_AXI_arprot,
  M04_AXI_arqos,
  M04_AXI_aruser,
  M04_AXI_arvalid,
  M04_AXI_arready,
  M04_AXI_rid,
  M04_AXI_rdata,
  M04_AXI_rresp,
  M04_AXI_rlast,
  M04_AXI_ruser,
  M04_AXI_rvalid,
  M04_AXI_rready,
  M05_AXI_awid,
  M05_AXI_awaddr,
  M05_AXI_awlen,
  M05_AXI_awsize,
  M05_AXI_awburst,
  M05_AXI_awlock,
  M05_AXI_awcache,
  M05_AXI_awprot,
  M05_AXI_awqos,
  M05_AXI_awuser,
  M05_AXI_awvalid,
  M05_AXI_awready,
  M05_AXI_wdata,
  M05_AXI_wstrb,
  M05_AXI_wlast,
  M05_AXI_wuser,
  M05_AXI_wvalid,
  M05_AXI_wready,
  M05_AXI_bid,
  M05_AXI_bresp,
  M05_AXI_buser,
  M05_AXI_bvalid,
  M05_AXI_bready,
  M05_AXI_arid,
  M05_AXI_araddr,
  M05_AXI_arlen,
  M05_AXI_arsize,
  M05_AXI_arburst,
  M05_AXI_arlock,
  M05_AXI_arcache,
  M05_AXI_arprot,
  M05_AXI_arqos,
  M05_AXI_aruser,
  M05_AXI_arvalid,
  M05_AXI_arready,
  M05_AXI_rid,
  M05_AXI_rdata,
  M05_AXI_rresp,
  M05_AXI_rlast,
  M05_AXI_ruser,
  M05_AXI_rvalid,
  M05_AXI_rready,
  M06_AXI_awid,
  M06_AXI_awaddr,
  M06_AXI_awlen,
  M06_AXI_awsize,
  M06_AXI_awburst,
  M06_AXI_awlock,
  M06_AXI_awcache,
  M06_AXI_awprot,
  M06_AXI_awqos,
  M06_AXI_awuser,
  M06_AXI_awvalid,
  M06_AXI_awready,
  M06_AXI_wdata,
  M06_AXI_wstrb,
  M06_AXI_wlast,
  M06_AXI_wuser,
  M06_AXI_wvalid,
  M06_AXI_wready,
  M06_AXI_bid,
  M06_AXI_bresp,
  M06_AXI_buser,
  M06_AXI_bvalid,
  M06_AXI_bready,
  M06_AXI_arid,
  M06_AXI_araddr,
  M06_AXI_arlen,
  M06_AXI_arsize,
  M06_AXI_arburst,
  M06_AXI_arlock,
  M06_AXI_arcache,
  M06_AXI_arprot,
  M06_AXI_arqos,
  M06_AXI_aruser,
  M06_AXI_arvalid,
  M06_AXI_arready,
  M06_AXI_rid,
  M06_AXI_rdata,
  M06_AXI_rresp,
  M06_AXI_rlast,
  M06_AXI_ruser,
  M06_AXI_rvalid,
  M06_AXI_rready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk, FREQ_HZ 250000000, PHASE 0, CLK_DOMAIN cd_data_h2c_00, ASSOCIATED_BUSIF M00_AXI:M01_AXI:M02_AXI:M03_AXI:M04_AXI:M05_AXI:M06_AXI:S00_AXI, INSERT_VIP 0, ASSOCIATED_CLKEN m_sc_aclken" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *)
input wire [5 : 0] S00_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *)
input wire [36 : 0] S00_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *)
input wire [7 : 0] S00_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *)
input wire [2 : 0] S00_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *)
input wire [1 : 0] S00_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *)
input wire [0 : 0] S00_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *)
input wire [3 : 0] S00_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *)
input wire [2 : 0] S00_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *)
input wire [3 : 0] S00_AXI_awqos;
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
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *)
output wire [5 : 0] S00_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *)
output wire [1 : 0] S00_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *)
output wire S00_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *)
input wire S00_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *)
input wire [5 : 0] S00_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *)
input wire [36 : 0] S00_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *)
input wire [7 : 0] S00_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *)
input wire [2 : 0] S00_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *)
input wire [1 : 0] S00_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *)
input wire [0 : 0] S00_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *)
input wire [3 : 0] S00_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *)
input wire [2 : 0] S00_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *)
input wire [3 : 0] S00_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *)
input wire S00_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *)
output wire S00_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *)
output wire [5 : 0] S00_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *)
output wire [511 : 0] S00_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *)
output wire [1 : 0] S00_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *)
output wire S00_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *)
output wire S00_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 6, ADDR_WIDTH 37, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RU\
SER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *)
input wire S00_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *)
output wire [2 : 0] M00_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *)
output wire [36 : 0] M00_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *)
output wire [7 : 0] M00_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *)
output wire [2 : 0] M00_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *)
output wire [1 : 0] M00_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *)
output wire [0 : 0] M00_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *)
output wire [3 : 0] M00_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *)
output wire [2 : 0] M00_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *)
output wire [3 : 0] M00_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER" *)
output wire [113 : 0] M00_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *)
output wire M00_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *)
input wire M00_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *)
output wire [511 : 0] M00_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *)
output wire [63 : 0] M00_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *)
output wire M00_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WUSER" *)
output wire [13 : 0] M00_AXI_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *)
output wire M00_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *)
input wire M00_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *)
input wire [2 : 0] M00_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *)
input wire [1 : 0] M00_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BUSER" *)
input wire [113 : 0] M00_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *)
input wire M00_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *)
output wire M00_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *)
output wire [2 : 0] M00_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *)
output wire [36 : 0] M00_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *)
output wire [7 : 0] M00_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *)
output wire [2 : 0] M00_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *)
output wire [1 : 0] M00_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *)
output wire [0 : 0] M00_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *)
output wire [3 : 0] M00_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *)
output wire [2 : 0] M00_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *)
output wire [3 : 0] M00_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER" *)
output wire [113 : 0] M00_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *)
output wire M00_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *)
input wire M00_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *)
input wire [2 : 0] M00_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *)
input wire [511 : 0] M00_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *)
input wire [1 : 0] M00_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *)
input wire M00_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RUSER" *)
input wire [13 : 0] M00_AXI_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *)
input wire M00_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 3, ADDR_WIDTH 37, AWUSER_WIDTH 114, ARUSER_WIDTH 114, WUSER_WIDTH 14, RUSER_WIDTH 14, BUSER_WIDTH 114, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 1, NUM_WRITE_THREA\
DS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, SLR_ASSIGNMENT SLR0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *)
output wire M00_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWID" *)
output wire [2 : 0] M01_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR" *)
output wire [36 : 0] M01_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLEN" *)
output wire [7 : 0] M01_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE" *)
output wire [2 : 0] M01_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWBURST" *)
output wire [1 : 0] M01_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK" *)
output wire [0 : 0] M01_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE" *)
output wire [3 : 0] M01_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT" *)
output wire [2 : 0] M01_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWQOS" *)
output wire [3 : 0] M01_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWUSER" *)
output wire [113 : 0] M01_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID" *)
output wire M01_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY" *)
input wire M01_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WDATA" *)
output wire [511 : 0] M01_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB" *)
output wire [63 : 0] M01_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WLAST" *)
output wire M01_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WUSER" *)
output wire [13 : 0] M01_AXI_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WVALID" *)
output wire M01_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WREADY" *)
input wire M01_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BID" *)
input wire [2 : 0] M01_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BRESP" *)
input wire [1 : 0] M01_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BUSER" *)
input wire [113 : 0] M01_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BVALID" *)
input wire M01_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BREADY" *)
output wire M01_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARID" *)
output wire [2 : 0] M01_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR" *)
output wire [36 : 0] M01_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLEN" *)
output wire [7 : 0] M01_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE" *)
output wire [2 : 0] M01_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARBURST" *)
output wire [1 : 0] M01_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK" *)
output wire [0 : 0] M01_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE" *)
output wire [3 : 0] M01_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT" *)
output wire [2 : 0] M01_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARQOS" *)
output wire [3 : 0] M01_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARUSER" *)
output wire [113 : 0] M01_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID" *)
output wire M01_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY" *)
input wire M01_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RID" *)
input wire [2 : 0] M01_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RDATA" *)
input wire [511 : 0] M01_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RRESP" *)
input wire [1 : 0] M01_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RLAST" *)
input wire M01_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RUSER" *)
input wire [13 : 0] M01_AXI_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RVALID" *)
input wire M01_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 3, ADDR_WIDTH 37, AWUSER_WIDTH 114, ARUSER_WIDTH 114, WUSER_WIDTH 14, RUSER_WIDTH 14, BUSER_WIDTH 114, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 1, NUM_WRITE_THREA\
DS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, SLR_ASSIGNMENT SLR0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RREADY" *)
output wire M01_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWID" *)
output wire [2 : 0] M02_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWADDR" *)
output wire [36 : 0] M02_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWLEN" *)
output wire [7 : 0] M02_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWSIZE" *)
output wire [2 : 0] M02_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWBURST" *)
output wire [1 : 0] M02_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWLOCK" *)
output wire [0 : 0] M02_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWCACHE" *)
output wire [3 : 0] M02_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWPROT" *)
output wire [2 : 0] M02_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWQOS" *)
output wire [3 : 0] M02_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWUSER" *)
output wire [113 : 0] M02_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWVALID" *)
output wire M02_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI AWREADY" *)
input wire M02_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WDATA" *)
output wire [511 : 0] M02_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WSTRB" *)
output wire [63 : 0] M02_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WLAST" *)
output wire M02_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WUSER" *)
output wire [13 : 0] M02_AXI_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WVALID" *)
output wire M02_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI WREADY" *)
input wire M02_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BID" *)
input wire [2 : 0] M02_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BRESP" *)
input wire [1 : 0] M02_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BUSER" *)
input wire [113 : 0] M02_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BVALID" *)
input wire M02_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI BREADY" *)
output wire M02_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARID" *)
output wire [2 : 0] M02_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARADDR" *)
output wire [36 : 0] M02_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARLEN" *)
output wire [7 : 0] M02_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARSIZE" *)
output wire [2 : 0] M02_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARBURST" *)
output wire [1 : 0] M02_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARLOCK" *)
output wire [0 : 0] M02_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARCACHE" *)
output wire [3 : 0] M02_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARPROT" *)
output wire [2 : 0] M02_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARQOS" *)
output wire [3 : 0] M02_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARUSER" *)
output wire [113 : 0] M02_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARVALID" *)
output wire M02_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI ARREADY" *)
input wire M02_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RID" *)
input wire [2 : 0] M02_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RDATA" *)
input wire [511 : 0] M02_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RRESP" *)
input wire [1 : 0] M02_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RLAST" *)
input wire M02_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RUSER" *)
input wire [13 : 0] M02_AXI_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RVALID" *)
input wire M02_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M02_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 3, ADDR_WIDTH 37, AWUSER_WIDTH 114, ARUSER_WIDTH 114, WUSER_WIDTH 14, RUSER_WIDTH 14, BUSER_WIDTH 114, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 1, NUM_WRITE_THREA\
DS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, SLR_ASSIGNMENT SLR0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M02_AXI RREADY" *)
output wire M02_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWID" *)
output wire [2 : 0] M03_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWADDR" *)
output wire [36 : 0] M03_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWLEN" *)
output wire [7 : 0] M03_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWSIZE" *)
output wire [2 : 0] M03_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWBURST" *)
output wire [1 : 0] M03_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWLOCK" *)
output wire [0 : 0] M03_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWCACHE" *)
output wire [3 : 0] M03_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWPROT" *)
output wire [2 : 0] M03_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWQOS" *)
output wire [3 : 0] M03_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWUSER" *)
output wire [113 : 0] M03_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWVALID" *)
output wire M03_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI AWREADY" *)
input wire M03_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI WDATA" *)
output wire [511 : 0] M03_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI WSTRB" *)
output wire [63 : 0] M03_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI WLAST" *)
output wire M03_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI WUSER" *)
output wire [13 : 0] M03_AXI_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI WVALID" *)
output wire M03_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI WREADY" *)
input wire M03_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI BID" *)
input wire [2 : 0] M03_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI BRESP" *)
input wire [1 : 0] M03_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI BUSER" *)
input wire [113 : 0] M03_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI BVALID" *)
input wire M03_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI BREADY" *)
output wire M03_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARID" *)
output wire [2 : 0] M03_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARADDR" *)
output wire [36 : 0] M03_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARLEN" *)
output wire [7 : 0] M03_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARSIZE" *)
output wire [2 : 0] M03_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARBURST" *)
output wire [1 : 0] M03_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARLOCK" *)
output wire [0 : 0] M03_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARCACHE" *)
output wire [3 : 0] M03_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARPROT" *)
output wire [2 : 0] M03_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARQOS" *)
output wire [3 : 0] M03_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARUSER" *)
output wire [113 : 0] M03_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARVALID" *)
output wire M03_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI ARREADY" *)
input wire M03_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RID" *)
input wire [2 : 0] M03_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RDATA" *)
input wire [511 : 0] M03_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RRESP" *)
input wire [1 : 0] M03_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RLAST" *)
input wire M03_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RUSER" *)
input wire [13 : 0] M03_AXI_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RVALID" *)
input wire M03_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M03_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 3, ADDR_WIDTH 37, AWUSER_WIDTH 114, ARUSER_WIDTH 114, WUSER_WIDTH 14, RUSER_WIDTH 14, BUSER_WIDTH 114, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 1, NUM_WRITE_THREA\
DS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, SLR_ASSIGNMENT SLR0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M03_AXI RREADY" *)
output wire M03_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI AWID" *)
output wire [2 : 0] M04_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI AWADDR" *)
output wire [36 : 0] M04_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI AWLEN" *)
output wire [7 : 0] M04_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI AWSIZE" *)
output wire [2 : 0] M04_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI AWBURST" *)
output wire [1 : 0] M04_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI AWLOCK" *)
output wire [0 : 0] M04_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI AWCACHE" *)
output wire [3 : 0] M04_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI AWPROT" *)
output wire [2 : 0] M04_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI AWQOS" *)
output wire [3 : 0] M04_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI AWUSER" *)
output wire [113 : 0] M04_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI AWVALID" *)
output wire M04_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI AWREADY" *)
input wire M04_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI WDATA" *)
output wire [511 : 0] M04_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI WSTRB" *)
output wire [63 : 0] M04_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI WLAST" *)
output wire M04_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI WUSER" *)
output wire [13 : 0] M04_AXI_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI WVALID" *)
output wire M04_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI WREADY" *)
input wire M04_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI BID" *)
input wire [2 : 0] M04_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI BRESP" *)
input wire [1 : 0] M04_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI BUSER" *)
input wire [113 : 0] M04_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI BVALID" *)
input wire M04_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI BREADY" *)
output wire M04_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI ARID" *)
output wire [2 : 0] M04_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI ARADDR" *)
output wire [36 : 0] M04_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI ARLEN" *)
output wire [7 : 0] M04_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI ARSIZE" *)
output wire [2 : 0] M04_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI ARBURST" *)
output wire [1 : 0] M04_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI ARLOCK" *)
output wire [0 : 0] M04_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI ARCACHE" *)
output wire [3 : 0] M04_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI ARPROT" *)
output wire [2 : 0] M04_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI ARQOS" *)
output wire [3 : 0] M04_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI ARUSER" *)
output wire [113 : 0] M04_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI ARVALID" *)
output wire M04_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI ARREADY" *)
input wire M04_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI RID" *)
input wire [2 : 0] M04_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI RDATA" *)
input wire [511 : 0] M04_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI RRESP" *)
input wire [1 : 0] M04_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI RLAST" *)
input wire M04_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI RUSER" *)
input wire [13 : 0] M04_AXI_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI RVALID" *)
input wire M04_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M04_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 3, ADDR_WIDTH 37, AWUSER_WIDTH 114, ARUSER_WIDTH 114, WUSER_WIDTH 14, RUSER_WIDTH 14, BUSER_WIDTH 114, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 1, NUM_WRITE_THREA\
DS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, SLR_ASSIGNMENT SLR0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M04_AXI RREADY" *)
output wire M04_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI AWID" *)
output wire [2 : 0] M05_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI AWADDR" *)
output wire [36 : 0] M05_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI AWLEN" *)
output wire [7 : 0] M05_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI AWSIZE" *)
output wire [2 : 0] M05_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI AWBURST" *)
output wire [1 : 0] M05_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI AWLOCK" *)
output wire [0 : 0] M05_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI AWCACHE" *)
output wire [3 : 0] M05_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI AWPROT" *)
output wire [2 : 0] M05_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI AWQOS" *)
output wire [3 : 0] M05_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI AWUSER" *)
output wire [113 : 0] M05_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI AWVALID" *)
output wire M05_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI AWREADY" *)
input wire M05_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI WDATA" *)
output wire [511 : 0] M05_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI WSTRB" *)
output wire [63 : 0] M05_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI WLAST" *)
output wire M05_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI WUSER" *)
output wire [13 : 0] M05_AXI_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI WVALID" *)
output wire M05_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI WREADY" *)
input wire M05_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI BID" *)
input wire [2 : 0] M05_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI BRESP" *)
input wire [1 : 0] M05_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI BUSER" *)
input wire [113 : 0] M05_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI BVALID" *)
input wire M05_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI BREADY" *)
output wire M05_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI ARID" *)
output wire [2 : 0] M05_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI ARADDR" *)
output wire [36 : 0] M05_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI ARLEN" *)
output wire [7 : 0] M05_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI ARSIZE" *)
output wire [2 : 0] M05_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI ARBURST" *)
output wire [1 : 0] M05_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI ARLOCK" *)
output wire [0 : 0] M05_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI ARCACHE" *)
output wire [3 : 0] M05_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI ARPROT" *)
output wire [2 : 0] M05_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI ARQOS" *)
output wire [3 : 0] M05_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI ARUSER" *)
output wire [113 : 0] M05_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI ARVALID" *)
output wire M05_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI ARREADY" *)
input wire M05_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI RID" *)
input wire [2 : 0] M05_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI RDATA" *)
input wire [511 : 0] M05_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI RRESP" *)
input wire [1 : 0] M05_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI RLAST" *)
input wire M05_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI RUSER" *)
input wire [13 : 0] M05_AXI_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI RVALID" *)
input wire M05_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M05_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 3, ADDR_WIDTH 37, AWUSER_WIDTH 114, ARUSER_WIDTH 114, WUSER_WIDTH 14, RUSER_WIDTH 14, BUSER_WIDTH 114, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 1, NUM_WRITE_THREA\
DS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, SLR_ASSIGNMENT SLR0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M05_AXI RREADY" *)
output wire M05_AXI_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI AWID" *)
output wire [2 : 0] M06_AXI_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI AWADDR" *)
output wire [36 : 0] M06_AXI_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI AWLEN" *)
output wire [7 : 0] M06_AXI_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI AWSIZE" *)
output wire [2 : 0] M06_AXI_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI AWBURST" *)
output wire [1 : 0] M06_AXI_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI AWLOCK" *)
output wire [0 : 0] M06_AXI_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI AWCACHE" *)
output wire [3 : 0] M06_AXI_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI AWPROT" *)
output wire [2 : 0] M06_AXI_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI AWQOS" *)
output wire [3 : 0] M06_AXI_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI AWUSER" *)
output wire [113 : 0] M06_AXI_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI AWVALID" *)
output wire M06_AXI_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI AWREADY" *)
input wire M06_AXI_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI WDATA" *)
output wire [511 : 0] M06_AXI_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI WSTRB" *)
output wire [63 : 0] M06_AXI_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI WLAST" *)
output wire M06_AXI_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI WUSER" *)
output wire [13 : 0] M06_AXI_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI WVALID" *)
output wire M06_AXI_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI WREADY" *)
input wire M06_AXI_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI BID" *)
input wire [2 : 0] M06_AXI_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI BRESP" *)
input wire [1 : 0] M06_AXI_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI BUSER" *)
input wire [113 : 0] M06_AXI_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI BVALID" *)
input wire M06_AXI_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI BREADY" *)
output wire M06_AXI_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI ARID" *)
output wire [2 : 0] M06_AXI_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI ARADDR" *)
output wire [36 : 0] M06_AXI_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI ARLEN" *)
output wire [7 : 0] M06_AXI_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI ARSIZE" *)
output wire [2 : 0] M06_AXI_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI ARBURST" *)
output wire [1 : 0] M06_AXI_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI ARLOCK" *)
output wire [0 : 0] M06_AXI_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI ARCACHE" *)
output wire [3 : 0] M06_AXI_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI ARPROT" *)
output wire [2 : 0] M06_AXI_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI ARQOS" *)
output wire [3 : 0] M06_AXI_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI ARUSER" *)
output wire [113 : 0] M06_AXI_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI ARVALID" *)
output wire M06_AXI_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI ARREADY" *)
input wire M06_AXI_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI RID" *)
input wire [2 : 0] M06_AXI_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI RDATA" *)
input wire [511 : 0] M06_AXI_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI RRESP" *)
input wire [1 : 0] M06_AXI_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI RLAST" *)
input wire M06_AXI_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI RUSER" *)
input wire [13 : 0] M06_AXI_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI RVALID" *)
input wire M06_AXI_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M06_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 250000000, ID_WIDTH 3, ADDR_WIDTH 37, AWUSER_WIDTH 114, ARUSER_WIDTH 114, WUSER_WIDTH 14, RUSER_WIDTH 14, BUSER_WIDTH 114, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0, CLK_DOMAIN cd_data_h2c_00, NUM_READ_THREADS 1, NUM_WRITE_THREA\
DS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, SLR_ASSIGNMENT SLR0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M06_AXI RREADY" *)
output wire M06_AXI_rready;

  bd_d1d2 inst (
    .aclk(aclk),
    .aresetn(aresetn),
    .S00_AXI_awid(S00_AXI_awid),
    .S00_AXI_awaddr(S00_AXI_awaddr),
    .S00_AXI_awlen(S00_AXI_awlen),
    .S00_AXI_awsize(S00_AXI_awsize),
    .S00_AXI_awburst(S00_AXI_awburst),
    .S00_AXI_awlock(S00_AXI_awlock),
    .S00_AXI_awcache(S00_AXI_awcache),
    .S00_AXI_awprot(S00_AXI_awprot),
    .S00_AXI_awqos(S00_AXI_awqos),
    .S00_AXI_awvalid(S00_AXI_awvalid),
    .S00_AXI_awready(S00_AXI_awready),
    .S00_AXI_wdata(S00_AXI_wdata),
    .S00_AXI_wstrb(S00_AXI_wstrb),
    .S00_AXI_wlast(S00_AXI_wlast),
    .S00_AXI_wvalid(S00_AXI_wvalid),
    .S00_AXI_wready(S00_AXI_wready),
    .S00_AXI_bid(S00_AXI_bid),
    .S00_AXI_bresp(S00_AXI_bresp),
    .S00_AXI_bvalid(S00_AXI_bvalid),
    .S00_AXI_bready(S00_AXI_bready),
    .S00_AXI_arid(S00_AXI_arid),
    .S00_AXI_araddr(S00_AXI_araddr),
    .S00_AXI_arlen(S00_AXI_arlen),
    .S00_AXI_arsize(S00_AXI_arsize),
    .S00_AXI_arburst(S00_AXI_arburst),
    .S00_AXI_arlock(S00_AXI_arlock),
    .S00_AXI_arcache(S00_AXI_arcache),
    .S00_AXI_arprot(S00_AXI_arprot),
    .S00_AXI_arqos(S00_AXI_arqos),
    .S00_AXI_arvalid(S00_AXI_arvalid),
    .S00_AXI_arready(S00_AXI_arready),
    .S00_AXI_rid(S00_AXI_rid),
    .S00_AXI_rdata(S00_AXI_rdata),
    .S00_AXI_rresp(S00_AXI_rresp),
    .S00_AXI_rlast(S00_AXI_rlast),
    .S00_AXI_rvalid(S00_AXI_rvalid),
    .S00_AXI_rready(S00_AXI_rready),
    .M00_AXI_awid(M00_AXI_awid),
    .M00_AXI_awaddr(M00_AXI_awaddr),
    .M00_AXI_awlen(M00_AXI_awlen),
    .M00_AXI_awsize(M00_AXI_awsize),
    .M00_AXI_awburst(M00_AXI_awburst),
    .M00_AXI_awlock(M00_AXI_awlock),
    .M00_AXI_awcache(M00_AXI_awcache),
    .M00_AXI_awprot(M00_AXI_awprot),
    .M00_AXI_awqos(M00_AXI_awqos),
    .M00_AXI_awuser(M00_AXI_awuser),
    .M00_AXI_awvalid(M00_AXI_awvalid),
    .M00_AXI_awready(M00_AXI_awready),
    .M00_AXI_wdata(M00_AXI_wdata),
    .M00_AXI_wstrb(M00_AXI_wstrb),
    .M00_AXI_wlast(M00_AXI_wlast),
    .M00_AXI_wuser(M00_AXI_wuser),
    .M00_AXI_wvalid(M00_AXI_wvalid),
    .M00_AXI_wready(M00_AXI_wready),
    .M00_AXI_bid(M00_AXI_bid),
    .M00_AXI_bresp(M00_AXI_bresp),
    .M00_AXI_buser(M00_AXI_buser),
    .M00_AXI_bvalid(M00_AXI_bvalid),
    .M00_AXI_bready(M00_AXI_bready),
    .M00_AXI_arid(M00_AXI_arid),
    .M00_AXI_araddr(M00_AXI_araddr),
    .M00_AXI_arlen(M00_AXI_arlen),
    .M00_AXI_arsize(M00_AXI_arsize),
    .M00_AXI_arburst(M00_AXI_arburst),
    .M00_AXI_arlock(M00_AXI_arlock),
    .M00_AXI_arcache(M00_AXI_arcache),
    .M00_AXI_arprot(M00_AXI_arprot),
    .M00_AXI_arqos(M00_AXI_arqos),
    .M00_AXI_aruser(M00_AXI_aruser),
    .M00_AXI_arvalid(M00_AXI_arvalid),
    .M00_AXI_arready(M00_AXI_arready),
    .M00_AXI_rid(M00_AXI_rid),
    .M00_AXI_rdata(M00_AXI_rdata),
    .M00_AXI_rresp(M00_AXI_rresp),
    .M00_AXI_rlast(M00_AXI_rlast),
    .M00_AXI_ruser(M00_AXI_ruser),
    .M00_AXI_rvalid(M00_AXI_rvalid),
    .M00_AXI_rready(M00_AXI_rready),
    .M01_AXI_awid(M01_AXI_awid),
    .M01_AXI_awaddr(M01_AXI_awaddr),
    .M01_AXI_awlen(M01_AXI_awlen),
    .M01_AXI_awsize(M01_AXI_awsize),
    .M01_AXI_awburst(M01_AXI_awburst),
    .M01_AXI_awlock(M01_AXI_awlock),
    .M01_AXI_awcache(M01_AXI_awcache),
    .M01_AXI_awprot(M01_AXI_awprot),
    .M01_AXI_awqos(M01_AXI_awqos),
    .M01_AXI_awuser(M01_AXI_awuser),
    .M01_AXI_awvalid(M01_AXI_awvalid),
    .M01_AXI_awready(M01_AXI_awready),
    .M01_AXI_wdata(M01_AXI_wdata),
    .M01_AXI_wstrb(M01_AXI_wstrb),
    .M01_AXI_wlast(M01_AXI_wlast),
    .M01_AXI_wuser(M01_AXI_wuser),
    .M01_AXI_wvalid(M01_AXI_wvalid),
    .M01_AXI_wready(M01_AXI_wready),
    .M01_AXI_bid(M01_AXI_bid),
    .M01_AXI_bresp(M01_AXI_bresp),
    .M01_AXI_buser(M01_AXI_buser),
    .M01_AXI_bvalid(M01_AXI_bvalid),
    .M01_AXI_bready(M01_AXI_bready),
    .M01_AXI_arid(M01_AXI_arid),
    .M01_AXI_araddr(M01_AXI_araddr),
    .M01_AXI_arlen(M01_AXI_arlen),
    .M01_AXI_arsize(M01_AXI_arsize),
    .M01_AXI_arburst(M01_AXI_arburst),
    .M01_AXI_arlock(M01_AXI_arlock),
    .M01_AXI_arcache(M01_AXI_arcache),
    .M01_AXI_arprot(M01_AXI_arprot),
    .M01_AXI_arqos(M01_AXI_arqos),
    .M01_AXI_aruser(M01_AXI_aruser),
    .M01_AXI_arvalid(M01_AXI_arvalid),
    .M01_AXI_arready(M01_AXI_arready),
    .M01_AXI_rid(M01_AXI_rid),
    .M01_AXI_rdata(M01_AXI_rdata),
    .M01_AXI_rresp(M01_AXI_rresp),
    .M01_AXI_rlast(M01_AXI_rlast),
    .M01_AXI_ruser(M01_AXI_ruser),
    .M01_AXI_rvalid(M01_AXI_rvalid),
    .M01_AXI_rready(M01_AXI_rready),
    .M02_AXI_awid(M02_AXI_awid),
    .M02_AXI_awaddr(M02_AXI_awaddr),
    .M02_AXI_awlen(M02_AXI_awlen),
    .M02_AXI_awsize(M02_AXI_awsize),
    .M02_AXI_awburst(M02_AXI_awburst),
    .M02_AXI_awlock(M02_AXI_awlock),
    .M02_AXI_awcache(M02_AXI_awcache),
    .M02_AXI_awprot(M02_AXI_awprot),
    .M02_AXI_awqos(M02_AXI_awqos),
    .M02_AXI_awuser(M02_AXI_awuser),
    .M02_AXI_awvalid(M02_AXI_awvalid),
    .M02_AXI_awready(M02_AXI_awready),
    .M02_AXI_wdata(M02_AXI_wdata),
    .M02_AXI_wstrb(M02_AXI_wstrb),
    .M02_AXI_wlast(M02_AXI_wlast),
    .M02_AXI_wuser(M02_AXI_wuser),
    .M02_AXI_wvalid(M02_AXI_wvalid),
    .M02_AXI_wready(M02_AXI_wready),
    .M02_AXI_bid(M02_AXI_bid),
    .M02_AXI_bresp(M02_AXI_bresp),
    .M02_AXI_buser(M02_AXI_buser),
    .M02_AXI_bvalid(M02_AXI_bvalid),
    .M02_AXI_bready(M02_AXI_bready),
    .M02_AXI_arid(M02_AXI_arid),
    .M02_AXI_araddr(M02_AXI_araddr),
    .M02_AXI_arlen(M02_AXI_arlen),
    .M02_AXI_arsize(M02_AXI_arsize),
    .M02_AXI_arburst(M02_AXI_arburst),
    .M02_AXI_arlock(M02_AXI_arlock),
    .M02_AXI_arcache(M02_AXI_arcache),
    .M02_AXI_arprot(M02_AXI_arprot),
    .M02_AXI_arqos(M02_AXI_arqos),
    .M02_AXI_aruser(M02_AXI_aruser),
    .M02_AXI_arvalid(M02_AXI_arvalid),
    .M02_AXI_arready(M02_AXI_arready),
    .M02_AXI_rid(M02_AXI_rid),
    .M02_AXI_rdata(M02_AXI_rdata),
    .M02_AXI_rresp(M02_AXI_rresp),
    .M02_AXI_rlast(M02_AXI_rlast),
    .M02_AXI_ruser(M02_AXI_ruser),
    .M02_AXI_rvalid(M02_AXI_rvalid),
    .M02_AXI_rready(M02_AXI_rready),
    .M03_AXI_awid(M03_AXI_awid),
    .M03_AXI_awaddr(M03_AXI_awaddr),
    .M03_AXI_awlen(M03_AXI_awlen),
    .M03_AXI_awsize(M03_AXI_awsize),
    .M03_AXI_awburst(M03_AXI_awburst),
    .M03_AXI_awlock(M03_AXI_awlock),
    .M03_AXI_awcache(M03_AXI_awcache),
    .M03_AXI_awprot(M03_AXI_awprot),
    .M03_AXI_awqos(M03_AXI_awqos),
    .M03_AXI_awuser(M03_AXI_awuser),
    .M03_AXI_awvalid(M03_AXI_awvalid),
    .M03_AXI_awready(M03_AXI_awready),
    .M03_AXI_wdata(M03_AXI_wdata),
    .M03_AXI_wstrb(M03_AXI_wstrb),
    .M03_AXI_wlast(M03_AXI_wlast),
    .M03_AXI_wuser(M03_AXI_wuser),
    .M03_AXI_wvalid(M03_AXI_wvalid),
    .M03_AXI_wready(M03_AXI_wready),
    .M03_AXI_bid(M03_AXI_bid),
    .M03_AXI_bresp(M03_AXI_bresp),
    .M03_AXI_buser(M03_AXI_buser),
    .M03_AXI_bvalid(M03_AXI_bvalid),
    .M03_AXI_bready(M03_AXI_bready),
    .M03_AXI_arid(M03_AXI_arid),
    .M03_AXI_araddr(M03_AXI_araddr),
    .M03_AXI_arlen(M03_AXI_arlen),
    .M03_AXI_arsize(M03_AXI_arsize),
    .M03_AXI_arburst(M03_AXI_arburst),
    .M03_AXI_arlock(M03_AXI_arlock),
    .M03_AXI_arcache(M03_AXI_arcache),
    .M03_AXI_arprot(M03_AXI_arprot),
    .M03_AXI_arqos(M03_AXI_arqos),
    .M03_AXI_aruser(M03_AXI_aruser),
    .M03_AXI_arvalid(M03_AXI_arvalid),
    .M03_AXI_arready(M03_AXI_arready),
    .M03_AXI_rid(M03_AXI_rid),
    .M03_AXI_rdata(M03_AXI_rdata),
    .M03_AXI_rresp(M03_AXI_rresp),
    .M03_AXI_rlast(M03_AXI_rlast),
    .M03_AXI_ruser(M03_AXI_ruser),
    .M03_AXI_rvalid(M03_AXI_rvalid),
    .M03_AXI_rready(M03_AXI_rready),
    .M04_AXI_awid(M04_AXI_awid),
    .M04_AXI_awaddr(M04_AXI_awaddr),
    .M04_AXI_awlen(M04_AXI_awlen),
    .M04_AXI_awsize(M04_AXI_awsize),
    .M04_AXI_awburst(M04_AXI_awburst),
    .M04_AXI_awlock(M04_AXI_awlock),
    .M04_AXI_awcache(M04_AXI_awcache),
    .M04_AXI_awprot(M04_AXI_awprot),
    .M04_AXI_awqos(M04_AXI_awqos),
    .M04_AXI_awuser(M04_AXI_awuser),
    .M04_AXI_awvalid(M04_AXI_awvalid),
    .M04_AXI_awready(M04_AXI_awready),
    .M04_AXI_wdata(M04_AXI_wdata),
    .M04_AXI_wstrb(M04_AXI_wstrb),
    .M04_AXI_wlast(M04_AXI_wlast),
    .M04_AXI_wuser(M04_AXI_wuser),
    .M04_AXI_wvalid(M04_AXI_wvalid),
    .M04_AXI_wready(M04_AXI_wready),
    .M04_AXI_bid(M04_AXI_bid),
    .M04_AXI_bresp(M04_AXI_bresp),
    .M04_AXI_buser(M04_AXI_buser),
    .M04_AXI_bvalid(M04_AXI_bvalid),
    .M04_AXI_bready(M04_AXI_bready),
    .M04_AXI_arid(M04_AXI_arid),
    .M04_AXI_araddr(M04_AXI_araddr),
    .M04_AXI_arlen(M04_AXI_arlen),
    .M04_AXI_arsize(M04_AXI_arsize),
    .M04_AXI_arburst(M04_AXI_arburst),
    .M04_AXI_arlock(M04_AXI_arlock),
    .M04_AXI_arcache(M04_AXI_arcache),
    .M04_AXI_arprot(M04_AXI_arprot),
    .M04_AXI_arqos(M04_AXI_arqos),
    .M04_AXI_aruser(M04_AXI_aruser),
    .M04_AXI_arvalid(M04_AXI_arvalid),
    .M04_AXI_arready(M04_AXI_arready),
    .M04_AXI_rid(M04_AXI_rid),
    .M04_AXI_rdata(M04_AXI_rdata),
    .M04_AXI_rresp(M04_AXI_rresp),
    .M04_AXI_rlast(M04_AXI_rlast),
    .M04_AXI_ruser(M04_AXI_ruser),
    .M04_AXI_rvalid(M04_AXI_rvalid),
    .M04_AXI_rready(M04_AXI_rready),
    .M05_AXI_awid(M05_AXI_awid),
    .M05_AXI_awaddr(M05_AXI_awaddr),
    .M05_AXI_awlen(M05_AXI_awlen),
    .M05_AXI_awsize(M05_AXI_awsize),
    .M05_AXI_awburst(M05_AXI_awburst),
    .M05_AXI_awlock(M05_AXI_awlock),
    .M05_AXI_awcache(M05_AXI_awcache),
    .M05_AXI_awprot(M05_AXI_awprot),
    .M05_AXI_awqos(M05_AXI_awqos),
    .M05_AXI_awuser(M05_AXI_awuser),
    .M05_AXI_awvalid(M05_AXI_awvalid),
    .M05_AXI_awready(M05_AXI_awready),
    .M05_AXI_wdata(M05_AXI_wdata),
    .M05_AXI_wstrb(M05_AXI_wstrb),
    .M05_AXI_wlast(M05_AXI_wlast),
    .M05_AXI_wuser(M05_AXI_wuser),
    .M05_AXI_wvalid(M05_AXI_wvalid),
    .M05_AXI_wready(M05_AXI_wready),
    .M05_AXI_bid(M05_AXI_bid),
    .M05_AXI_bresp(M05_AXI_bresp),
    .M05_AXI_buser(M05_AXI_buser),
    .M05_AXI_bvalid(M05_AXI_bvalid),
    .M05_AXI_bready(M05_AXI_bready),
    .M05_AXI_arid(M05_AXI_arid),
    .M05_AXI_araddr(M05_AXI_araddr),
    .M05_AXI_arlen(M05_AXI_arlen),
    .M05_AXI_arsize(M05_AXI_arsize),
    .M05_AXI_arburst(M05_AXI_arburst),
    .M05_AXI_arlock(M05_AXI_arlock),
    .M05_AXI_arcache(M05_AXI_arcache),
    .M05_AXI_arprot(M05_AXI_arprot),
    .M05_AXI_arqos(M05_AXI_arqos),
    .M05_AXI_aruser(M05_AXI_aruser),
    .M05_AXI_arvalid(M05_AXI_arvalid),
    .M05_AXI_arready(M05_AXI_arready),
    .M05_AXI_rid(M05_AXI_rid),
    .M05_AXI_rdata(M05_AXI_rdata),
    .M05_AXI_rresp(M05_AXI_rresp),
    .M05_AXI_rlast(M05_AXI_rlast),
    .M05_AXI_ruser(M05_AXI_ruser),
    .M05_AXI_rvalid(M05_AXI_rvalid),
    .M05_AXI_rready(M05_AXI_rready),
    .M06_AXI_awid(M06_AXI_awid),
    .M06_AXI_awaddr(M06_AXI_awaddr),
    .M06_AXI_awlen(M06_AXI_awlen),
    .M06_AXI_awsize(M06_AXI_awsize),
    .M06_AXI_awburst(M06_AXI_awburst),
    .M06_AXI_awlock(M06_AXI_awlock),
    .M06_AXI_awcache(M06_AXI_awcache),
    .M06_AXI_awprot(M06_AXI_awprot),
    .M06_AXI_awqos(M06_AXI_awqos),
    .M06_AXI_awuser(M06_AXI_awuser),
    .M06_AXI_awvalid(M06_AXI_awvalid),
    .M06_AXI_awready(M06_AXI_awready),
    .M06_AXI_wdata(M06_AXI_wdata),
    .M06_AXI_wstrb(M06_AXI_wstrb),
    .M06_AXI_wlast(M06_AXI_wlast),
    .M06_AXI_wuser(M06_AXI_wuser),
    .M06_AXI_wvalid(M06_AXI_wvalid),
    .M06_AXI_wready(M06_AXI_wready),
    .M06_AXI_bid(M06_AXI_bid),
    .M06_AXI_bresp(M06_AXI_bresp),
    .M06_AXI_buser(M06_AXI_buser),
    .M06_AXI_bvalid(M06_AXI_bvalid),
    .M06_AXI_bready(M06_AXI_bready),
    .M06_AXI_arid(M06_AXI_arid),
    .M06_AXI_araddr(M06_AXI_araddr),
    .M06_AXI_arlen(M06_AXI_arlen),
    .M06_AXI_arsize(M06_AXI_arsize),
    .M06_AXI_arburst(M06_AXI_arburst),
    .M06_AXI_arlock(M06_AXI_arlock),
    .M06_AXI_arcache(M06_AXI_arcache),
    .M06_AXI_arprot(M06_AXI_arprot),
    .M06_AXI_arqos(M06_AXI_arqos),
    .M06_AXI_aruser(M06_AXI_aruser),
    .M06_AXI_arvalid(M06_AXI_arvalid),
    .M06_AXI_arready(M06_AXI_arready),
    .M06_AXI_rid(M06_AXI_rid),
    .M06_AXI_rdata(M06_AXI_rdata),
    .M06_AXI_rresp(M06_AXI_rresp),
    .M06_AXI_rlast(M06_AXI_rlast),
    .M06_AXI_ruser(M06_AXI_ruser),
    .M06_AXI_rvalid(M06_AXI_rvalid),
    .M06_AXI_rready(M06_AXI_rready)
  );
endmodule
