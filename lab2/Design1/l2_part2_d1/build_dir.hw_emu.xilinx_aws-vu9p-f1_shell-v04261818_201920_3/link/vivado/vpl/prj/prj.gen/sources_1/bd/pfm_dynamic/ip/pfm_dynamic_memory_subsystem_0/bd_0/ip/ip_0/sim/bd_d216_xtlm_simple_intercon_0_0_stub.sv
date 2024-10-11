// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
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


//------------------------------------------------------------------------------------
// Filename:    bd_d216_xtlm_simple_intercon_0_0_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//   Aldec Riviera-PRO Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module bd_d216_xtlm_simple_intercon_0_0 (
  input bit [0 : 0] s00_axi_awid,
  input bit [63 : 0] s00_axi_awaddr,
  input bit [7 : 0] s00_axi_awlen,
  input bit [2 : 0] s00_axi_awsize,
  input bit [1 : 0] s00_axi_awburst,
  input bit_as_bool s00_axi_awlock,
  input bit [3 : 0] s00_axi_awcache,
  input bit [2 : 0] s00_axi_awprot,
  input bit [3 : 0] s00_axi_awqos,
  input bit [0 : 0] s00_axi_awuser,
  input bit_as_bool s00_axi_awvalid,
  output bit_as_bool s00_axi_awready,
  input bit [31 : 0] s00_axi_wdata,
  input bit [3 : 0] s00_axi_wstrb,
  input bit_as_bool s00_axi_wlast,
  input bit [0 : 0] s00_axi_wuser,
  input bit_as_bool s00_axi_wvalid,
  output bit_as_bool s00_axi_wready,
  output bit [0 : 0] s00_axi_bid,
  output bit [1 : 0] s00_axi_bresp,
  output bit [0 : 0] s00_axi_buser,
  output bit_as_bool s00_axi_bvalid,
  input bit_as_bool s00_axi_bready,
  input bit [0 : 0] s00_axi_arid,
  input bit [63 : 0] s00_axi_araddr,
  input bit [7 : 0] s00_axi_arlen,
  input bit [2 : 0] s00_axi_arsize,
  input bit [1 : 0] s00_axi_arburst,
  input bit_as_bool s00_axi_arlock,
  input bit [3 : 0] s00_axi_arcache,
  input bit [2 : 0] s00_axi_arprot,
  input bit [3 : 0] s00_axi_arqos,
  input bit [0 : 0] s00_axi_aruser,
  input bit_as_bool s00_axi_arvalid,
  output bit_as_bool s00_axi_arready,
  output bit [0 : 0] s00_axi_rid,
  output bit [31 : 0] s00_axi_rdata,
  output bit [1 : 0] s00_axi_rresp,
  output bit_as_bool s00_axi_rlast,
  output bit [0 : 0] s00_axi_ruser,
  output bit_as_bool s00_axi_rvalid,
  input bit_as_bool s00_axi_rready,
  input bit_as_bool s00_axi_aclk,
  input bit_as_bool s00_axi_aresetn,
  output bit [4 : 0] m00_axi_awid,
  output bit [33 : 0] m00_axi_awaddr,
  output bit [7 : 0] m00_axi_awlen,
  output bit [2 : 0] m00_axi_awsize,
  output bit [1 : 0] m00_axi_awburst,
  output bit_as_bool m00_axi_awlock,
  output bit [3 : 0] m00_axi_awcache,
  output bit [2 : 0] m00_axi_awprot,
  output bit [3 : 0] m00_axi_awqos,
  output bit [31 : 0] m00_axi_awuser,
  output bit_as_bool m00_axi_awvalid,
  input bit_as_bool m00_axi_awready,
  output bit [511 : 0] m00_axi_wdata,
  output bit [63 : 0] m00_axi_wstrb,
  output bit_as_bool m00_axi_wlast,
  output bit [0 : 0] m00_axi_wuser,
  output bit_as_bool m00_axi_wvalid,
  input bit_as_bool m00_axi_wready,
  input bit [4 : 0] m00_axi_bid,
  input bit [1 : 0] m00_axi_bresp,
  input bit [0 : 0] m00_axi_buser,
  input bit_as_bool m00_axi_bvalid,
  output bit_as_bool m00_axi_bready,
  output bit [4 : 0] m00_axi_arid,
  output bit [33 : 0] m00_axi_araddr,
  output bit [7 : 0] m00_axi_arlen,
  output bit [2 : 0] m00_axi_arsize,
  output bit [1 : 0] m00_axi_arburst,
  output bit_as_bool m00_axi_arlock,
  output bit [3 : 0] m00_axi_arcache,
  output bit [2 : 0] m00_axi_arprot,
  output bit [3 : 0] m00_axi_arqos,
  output bit [31 : 0] m00_axi_aruser,
  output bit_as_bool m00_axi_arvalid,
  input bit_as_bool m00_axi_arready,
  input bit [4 : 0] m00_axi_rid,
  input bit [511 : 0] m00_axi_rdata,
  input bit [1 : 0] m00_axi_rresp,
  input bit_as_bool m00_axi_rlast,
  input bit [0 : 0] m00_axi_ruser,
  input bit_as_bool m00_axi_rvalid,
  output bit_as_bool m00_axi_rready,
  input bit_as_bool m00_axi_aclk,
  input bit_as_bool m00_axi_aresetn,
  output bit [4 : 0] m02_axi_awid,
  output bit [33 : 0] m02_axi_awaddr,
  output bit [7 : 0] m02_axi_awlen,
  output bit [2 : 0] m02_axi_awsize,
  output bit [1 : 0] m02_axi_awburst,
  output bit_as_bool m02_axi_awlock,
  output bit [3 : 0] m02_axi_awcache,
  output bit [2 : 0] m02_axi_awprot,
  output bit [3 : 0] m02_axi_awqos,
  output bit [31 : 0] m02_axi_awuser,
  output bit_as_bool m02_axi_awvalid,
  input bit_as_bool m02_axi_awready,
  output bit [511 : 0] m02_axi_wdata,
  output bit [63 : 0] m02_axi_wstrb,
  output bit_as_bool m02_axi_wlast,
  output bit [0 : 0] m02_axi_wuser,
  output bit_as_bool m02_axi_wvalid,
  input bit_as_bool m02_axi_wready,
  input bit [4 : 0] m02_axi_bid,
  input bit [1 : 0] m02_axi_bresp,
  input bit [0 : 0] m02_axi_buser,
  input bit_as_bool m02_axi_bvalid,
  output bit_as_bool m02_axi_bready,
  output bit [4 : 0] m02_axi_arid,
  output bit [33 : 0] m02_axi_araddr,
  output bit [7 : 0] m02_axi_arlen,
  output bit [2 : 0] m02_axi_arsize,
  output bit [1 : 0] m02_axi_arburst,
  output bit_as_bool m02_axi_arlock,
  output bit [3 : 0] m02_axi_arcache,
  output bit [2 : 0] m02_axi_arprot,
  output bit [3 : 0] m02_axi_arqos,
  output bit [31 : 0] m02_axi_aruser,
  output bit_as_bool m02_axi_arvalid,
  input bit_as_bool m02_axi_arready,
  input bit [4 : 0] m02_axi_rid,
  input bit [511 : 0] m02_axi_rdata,
  input bit [1 : 0] m02_axi_rresp,
  input bit_as_bool m02_axi_rlast,
  input bit [0 : 0] m02_axi_ruser,
  input bit_as_bool m02_axi_rvalid,
  output bit_as_bool m02_axi_rready,
  input bit_as_bool m02_axi_aclk,
  input bit_as_bool m02_axi_aresetn,
  output bit [0 : 0] m05_axi_awid,
  output bit [16 : 0] m05_axi_awaddr,
  output bit [7 : 0] m05_axi_awlen,
  output bit [2 : 0] m05_axi_awsize,
  output bit [1 : 0] m05_axi_awburst,
  output bit_as_bool m05_axi_awlock,
  output bit [3 : 0] m05_axi_awcache,
  output bit [2 : 0] m05_axi_awprot,
  output bit [3 : 0] m05_axi_awqos,
  output bit [0 : 0] m05_axi_awuser,
  output bit_as_bool m05_axi_awvalid,
  input bit_as_bool m05_axi_awready,
  output bit [511 : 0] m05_axi_wdata,
  output bit [63 : 0] m05_axi_wstrb,
  output bit_as_bool m05_axi_wlast,
  output bit [0 : 0] m05_axi_wuser,
  output bit_as_bool m05_axi_wvalid,
  input bit_as_bool m05_axi_wready,
  input bit [0 : 0] m05_axi_bid,
  input bit [1 : 0] m05_axi_bresp,
  input bit [0 : 0] m05_axi_buser,
  input bit_as_bool m05_axi_bvalid,
  output bit_as_bool m05_axi_bready,
  output bit [0 : 0] m05_axi_arid,
  output bit [16 : 0] m05_axi_araddr,
  output bit [7 : 0] m05_axi_arlen,
  output bit [2 : 0] m05_axi_arsize,
  output bit [1 : 0] m05_axi_arburst,
  output bit_as_bool m05_axi_arlock,
  output bit [3 : 0] m05_axi_arcache,
  output bit [2 : 0] m05_axi_arprot,
  output bit [3 : 0] m05_axi_arqos,
  output bit [0 : 0] m05_axi_aruser,
  output bit_as_bool m05_axi_arvalid,
  input bit_as_bool m05_axi_arready,
  input bit [0 : 0] m05_axi_rid,
  input bit [511 : 0] m05_axi_rdata,
  input bit [1 : 0] m05_axi_rresp,
  input bit_as_bool m05_axi_rlast,
  input bit [0 : 0] m05_axi_ruser,
  input bit_as_bool m05_axi_rvalid,
  output bit_as_bool m05_axi_rready,
  input bit_as_bool m05_axi_aclk,
  input bit_as_bool m05_axi_aresetn,
  output bit [4 : 0] m03_axi_awid,
  output bit [33 : 0] m03_axi_awaddr,
  output bit [7 : 0] m03_axi_awlen,
  output bit [2 : 0] m03_axi_awsize,
  output bit [1 : 0] m03_axi_awburst,
  output bit_as_bool m03_axi_awlock,
  output bit [3 : 0] m03_axi_awcache,
  output bit [2 : 0] m03_axi_awprot,
  output bit [3 : 0] m03_axi_awqos,
  output bit [31 : 0] m03_axi_awuser,
  output bit_as_bool m03_axi_awvalid,
  input bit_as_bool m03_axi_awready,
  output bit [511 : 0] m03_axi_wdata,
  output bit [63 : 0] m03_axi_wstrb,
  output bit_as_bool m03_axi_wlast,
  output bit [0 : 0] m03_axi_wuser,
  output bit_as_bool m03_axi_wvalid,
  input bit_as_bool m03_axi_wready,
  input bit [4 : 0] m03_axi_bid,
  input bit [1 : 0] m03_axi_bresp,
  input bit [0 : 0] m03_axi_buser,
  input bit_as_bool m03_axi_bvalid,
  output bit_as_bool m03_axi_bready,
  output bit [4 : 0] m03_axi_arid,
  output bit [33 : 0] m03_axi_araddr,
  output bit [7 : 0] m03_axi_arlen,
  output bit [2 : 0] m03_axi_arsize,
  output bit [1 : 0] m03_axi_arburst,
  output bit_as_bool m03_axi_arlock,
  output bit [3 : 0] m03_axi_arcache,
  output bit [2 : 0] m03_axi_arprot,
  output bit [3 : 0] m03_axi_arqos,
  output bit [31 : 0] m03_axi_aruser,
  output bit_as_bool m03_axi_arvalid,
  input bit_as_bool m03_axi_arready,
  input bit [4 : 0] m03_axi_rid,
  input bit [511 : 0] m03_axi_rdata,
  input bit [1 : 0] m03_axi_rresp,
  input bit_as_bool m03_axi_rlast,
  input bit [0 : 0] m03_axi_ruser,
  input bit_as_bool m03_axi_rvalid,
  output bit_as_bool m03_axi_rready,
  input bit_as_bool m03_axi_aclk,
  input bit_as_bool m03_axi_aresetn,
  output bit [0 : 0] m04_axi_awid,
  output bit [16 : 0] m04_axi_awaddr,
  output bit [7 : 0] m04_axi_awlen,
  output bit [2 : 0] m04_axi_awsize,
  output bit [1 : 0] m04_axi_awburst,
  output bit_as_bool m04_axi_awlock,
  output bit [3 : 0] m04_axi_awcache,
  output bit [2 : 0] m04_axi_awprot,
  output bit [3 : 0] m04_axi_awqos,
  output bit [0 : 0] m04_axi_awuser,
  output bit_as_bool m04_axi_awvalid,
  input bit_as_bool m04_axi_awready,
  output bit [511 : 0] m04_axi_wdata,
  output bit [63 : 0] m04_axi_wstrb,
  output bit_as_bool m04_axi_wlast,
  output bit [0 : 0] m04_axi_wuser,
  output bit_as_bool m04_axi_wvalid,
  input bit_as_bool m04_axi_wready,
  input bit [0 : 0] m04_axi_bid,
  input bit [1 : 0] m04_axi_bresp,
  input bit [0 : 0] m04_axi_buser,
  input bit_as_bool m04_axi_bvalid,
  output bit_as_bool m04_axi_bready,
  output bit [0 : 0] m04_axi_arid,
  output bit [16 : 0] m04_axi_araddr,
  output bit [7 : 0] m04_axi_arlen,
  output bit [2 : 0] m04_axi_arsize,
  output bit [1 : 0] m04_axi_arburst,
  output bit_as_bool m04_axi_arlock,
  output bit [3 : 0] m04_axi_arcache,
  output bit [2 : 0] m04_axi_arprot,
  output bit [3 : 0] m04_axi_arqos,
  output bit [0 : 0] m04_axi_aruser,
  output bit_as_bool m04_axi_arvalid,
  input bit_as_bool m04_axi_arready,
  input bit [0 : 0] m04_axi_rid,
  input bit [511 : 0] m04_axi_rdata,
  input bit [1 : 0] m04_axi_rresp,
  input bit_as_bool m04_axi_rlast,
  input bit [0 : 0] m04_axi_ruser,
  input bit_as_bool m04_axi_rvalid,
  output bit_as_bool m04_axi_rready,
  input bit_as_bool m04_axi_aclk,
  input bit_as_bool m04_axi_aresetn,
  output bit [0 : 0] m06_axi_awid,
  output bit [16 : 0] m06_axi_awaddr,
  output bit [7 : 0] m06_axi_awlen,
  output bit [2 : 0] m06_axi_awsize,
  output bit [1 : 0] m06_axi_awburst,
  output bit_as_bool m06_axi_awlock,
  output bit [3 : 0] m06_axi_awcache,
  output bit [2 : 0] m06_axi_awprot,
  output bit [3 : 0] m06_axi_awqos,
  output bit [0 : 0] m06_axi_awuser,
  output bit_as_bool m06_axi_awvalid,
  input bit_as_bool m06_axi_awready,
  output bit [511 : 0] m06_axi_wdata,
  output bit [63 : 0] m06_axi_wstrb,
  output bit_as_bool m06_axi_wlast,
  output bit [0 : 0] m06_axi_wuser,
  output bit_as_bool m06_axi_wvalid,
  input bit_as_bool m06_axi_wready,
  input bit [0 : 0] m06_axi_bid,
  input bit [1 : 0] m06_axi_bresp,
  input bit [0 : 0] m06_axi_buser,
  input bit_as_bool m06_axi_bvalid,
  output bit_as_bool m06_axi_bready,
  output bit [0 : 0] m06_axi_arid,
  output bit [16 : 0] m06_axi_araddr,
  output bit [7 : 0] m06_axi_arlen,
  output bit [2 : 0] m06_axi_arsize,
  output bit [1 : 0] m06_axi_arburst,
  output bit_as_bool m06_axi_arlock,
  output bit [3 : 0] m06_axi_arcache,
  output bit [2 : 0] m06_axi_arprot,
  output bit [3 : 0] m06_axi_arqos,
  output bit [0 : 0] m06_axi_aruser,
  output bit_as_bool m06_axi_arvalid,
  input bit_as_bool m06_axi_arready,
  input bit [0 : 0] m06_axi_rid,
  input bit [511 : 0] m06_axi_rdata,
  input bit [1 : 0] m06_axi_rresp,
  input bit_as_bool m06_axi_rlast,
  input bit [0 : 0] m06_axi_ruser,
  input bit_as_bool m06_axi_rvalid,
  output bit_as_bool m06_axi_rready,
  input bit_as_bool m06_axi_aclk,
  input bit_as_bool m06_axi_aresetn,
  output bit [34 : 0] m01_axi_awaddr,
  output bit [7 : 0] m01_axi_awlen,
  output bit [2 : 0] m01_axi_awsize,
  output bit [1 : 0] m01_axi_awburst,
  output bit [2 : 0] m01_axi_awprot,
  output bit_as_bool m01_axi_awvalid,
  input bit_as_bool m01_axi_awready,
  output bit [511 : 0] m01_axi_wdata,
  output bit [63 : 0] m01_axi_wstrb,
  output bit_as_bool m01_axi_wlast,
  output bit_as_bool m01_axi_wvalid,
  input bit_as_bool m01_axi_wready,
  input bit [1 : 0] m01_axi_bresp,
  input bit_as_bool m01_axi_bvalid,
  output bit_as_bool m01_axi_bready,
  output bit [34 : 0] m01_axi_araddr,
  output bit [7 : 0] m01_axi_arlen,
  output bit [2 : 0] m01_axi_arsize,
  output bit [1 : 0] m01_axi_arburst,
  output bit [2 : 0] m01_axi_arprot,
  output bit_as_bool m01_axi_arvalid,
  input bit_as_bool m01_axi_arready,
  input bit [511 : 0] m01_axi_rdata,
  input bit [1 : 0] m01_axi_rresp,
  input bit_as_bool m01_axi_rlast,
  input bit_as_bool m01_axi_rvalid,
  output bit_as_bool m01_axi_rready,
  input bit_as_bool m01_axi_aclk,
  input bit_as_bool m01_axi_aresetn,
  input bit [0 : 0] s03_axi_awid,
  input bit [63 : 0] s03_axi_awaddr,
  input bit [7 : 0] s03_axi_awlen,
  input bit [2 : 0] s03_axi_awsize,
  input bit [1 : 0] s03_axi_awburst,
  input bit_as_bool s03_axi_awlock,
  input bit [3 : 0] s03_axi_awcache,
  input bit [2 : 0] s03_axi_awprot,
  input bit [3 : 0] s03_axi_awqos,
  input bit [0 : 0] s03_axi_awuser,
  input bit_as_bool s03_axi_awvalid,
  output bit_as_bool s03_axi_awready,
  input bit [31 : 0] s03_axi_wdata,
  input bit [3 : 0] s03_axi_wstrb,
  input bit_as_bool s03_axi_wlast,
  input bit [0 : 0] s03_axi_wuser,
  input bit_as_bool s03_axi_wvalid,
  output bit_as_bool s03_axi_wready,
  output bit [0 : 0] s03_axi_bid,
  output bit [1 : 0] s03_axi_bresp,
  output bit [0 : 0] s03_axi_buser,
  output bit_as_bool s03_axi_bvalid,
  input bit_as_bool s03_axi_bready,
  input bit [0 : 0] s03_axi_arid,
  input bit [63 : 0] s03_axi_araddr,
  input bit [7 : 0] s03_axi_arlen,
  input bit [2 : 0] s03_axi_arsize,
  input bit [1 : 0] s03_axi_arburst,
  input bit_as_bool s03_axi_arlock,
  input bit [3 : 0] s03_axi_arcache,
  input bit [2 : 0] s03_axi_arprot,
  input bit [3 : 0] s03_axi_arqos,
  input bit [0 : 0] s03_axi_aruser,
  input bit_as_bool s03_axi_arvalid,
  output bit_as_bool s03_axi_arready,
  output bit [0 : 0] s03_axi_rid,
  output bit [31 : 0] s03_axi_rdata,
  output bit [1 : 0] s03_axi_rresp,
  output bit_as_bool s03_axi_rlast,
  output bit [0 : 0] s03_axi_ruser,
  output bit_as_bool s03_axi_rvalid,
  input bit_as_bool s03_axi_rready,
  input bit_as_bool s03_axi_aclk,
  input bit_as_bool s03_axi_aresetn,
  input bit [0 : 0] s01_axi_awid,
  input bit [63 : 0] s01_axi_awaddr,
  input bit [7 : 0] s01_axi_awlen,
  input bit [2 : 0] s01_axi_awsize,
  input bit [1 : 0] s01_axi_awburst,
  input bit_as_bool s01_axi_awlock,
  input bit [3 : 0] s01_axi_awcache,
  input bit [2 : 0] s01_axi_awprot,
  input bit [3 : 0] s01_axi_awqos,
  input bit [0 : 0] s01_axi_awuser,
  input bit_as_bool s01_axi_awvalid,
  output bit_as_bool s01_axi_awready,
  input bit [31 : 0] s01_axi_wdata,
  input bit [3 : 0] s01_axi_wstrb,
  input bit_as_bool s01_axi_wlast,
  input bit [0 : 0] s01_axi_wuser,
  input bit_as_bool s01_axi_wvalid,
  output bit_as_bool s01_axi_wready,
  output bit [0 : 0] s01_axi_bid,
  output bit [1 : 0] s01_axi_bresp,
  output bit [0 : 0] s01_axi_buser,
  output bit_as_bool s01_axi_bvalid,
  input bit_as_bool s01_axi_bready,
  input bit [0 : 0] s01_axi_arid,
  input bit [63 : 0] s01_axi_araddr,
  input bit [7 : 0] s01_axi_arlen,
  input bit [2 : 0] s01_axi_arsize,
  input bit [1 : 0] s01_axi_arburst,
  input bit_as_bool s01_axi_arlock,
  input bit [3 : 0] s01_axi_arcache,
  input bit [2 : 0] s01_axi_arprot,
  input bit [3 : 0] s01_axi_arqos,
  input bit [0 : 0] s01_axi_aruser,
  input bit_as_bool s01_axi_arvalid,
  output bit_as_bool s01_axi_arready,
  output bit [0 : 0] s01_axi_rid,
  output bit [31 : 0] s01_axi_rdata,
  output bit [1 : 0] s01_axi_rresp,
  output bit_as_bool s01_axi_rlast,
  output bit [0 : 0] s01_axi_ruser,
  output bit_as_bool s01_axi_rvalid,
  input bit_as_bool s01_axi_rready,
  input bit_as_bool s01_axi_aclk,
  input bit_as_bool s01_axi_aresetn,
  input bit [0 : 0] s02_axi_awid,
  input bit [63 : 0] s02_axi_awaddr,
  input bit [7 : 0] s02_axi_awlen,
  input bit [2 : 0] s02_axi_awsize,
  input bit [1 : 0] s02_axi_awburst,
  input bit_as_bool s02_axi_awlock,
  input bit [3 : 0] s02_axi_awcache,
  input bit [2 : 0] s02_axi_awprot,
  input bit [3 : 0] s02_axi_awqos,
  input bit [0 : 0] s02_axi_awuser,
  input bit_as_bool s02_axi_awvalid,
  output bit_as_bool s02_axi_awready,
  input bit [31 : 0] s02_axi_wdata,
  input bit [3 : 0] s02_axi_wstrb,
  input bit_as_bool s02_axi_wlast,
  input bit [0 : 0] s02_axi_wuser,
  input bit_as_bool s02_axi_wvalid,
  output bit_as_bool s02_axi_wready,
  output bit [0 : 0] s02_axi_bid,
  output bit [1 : 0] s02_axi_bresp,
  output bit [0 : 0] s02_axi_buser,
  output bit_as_bool s02_axi_bvalid,
  input bit_as_bool s02_axi_bready,
  input bit [0 : 0] s02_axi_arid,
  input bit [63 : 0] s02_axi_araddr,
  input bit [7 : 0] s02_axi_arlen,
  input bit [2 : 0] s02_axi_arsize,
  input bit [1 : 0] s02_axi_arburst,
  input bit_as_bool s02_axi_arlock,
  input bit [3 : 0] s02_axi_arcache,
  input bit [2 : 0] s02_axi_arprot,
  input bit [3 : 0] s02_axi_arqos,
  input bit [0 : 0] s02_axi_aruser,
  input bit_as_bool s02_axi_arvalid,
  output bit_as_bool s02_axi_arready,
  output bit [0 : 0] s02_axi_rid,
  output bit [31 : 0] s02_axi_rdata,
  output bit [1 : 0] s02_axi_rresp,
  output bit_as_bool s02_axi_rlast,
  output bit [0 : 0] s02_axi_ruser,
  output bit_as_bool s02_axi_rvalid,
  input bit_as_bool s02_axi_rready,
  input bit_as_bool s02_axi_aclk,
  input bit_as_bool s02_axi_aresetn,
  input bit [63 : 0] s04_axi_awaddr,
  input bit [7 : 0] s04_axi_awlen,
  input bit [2 : 0] s04_axi_awsize,
  input bit_as_bool s04_axi_awlock,
  input bit [3 : 0] s04_axi_awcache,
  input bit [2 : 0] s04_axi_awprot,
  input bit [3 : 0] s04_axi_awregion,
  input bit [3 : 0] s04_axi_awqos,
  input bit_as_bool s04_axi_awvalid,
  output bit_as_bool s04_axi_awready,
  input bit [511 : 0] s04_axi_wdata,
  input bit [63 : 0] s04_axi_wstrb,
  input bit_as_bool s04_axi_wlast,
  input bit_as_bool s04_axi_wvalid,
  output bit_as_bool s04_axi_wready,
  output bit [1 : 0] s04_axi_bresp,
  output bit_as_bool s04_axi_bvalid,
  input bit_as_bool s04_axi_bready,
  input bit [63 : 0] s04_axi_araddr,
  input bit [7 : 0] s04_axi_arlen,
  input bit [2 : 0] s04_axi_arsize,
  input bit_as_bool s04_axi_arlock,
  input bit [3 : 0] s04_axi_arcache,
  input bit [2 : 0] s04_axi_arprot,
  input bit [3 : 0] s04_axi_arregion,
  input bit [3 : 0] s04_axi_arqos,
  input bit_as_bool s04_axi_arvalid,
  output bit_as_bool s04_axi_arready,
  output bit [511 : 0] s04_axi_rdata,
  output bit [1 : 0] s04_axi_rresp,
  output bit_as_bool s04_axi_rlast,
  output bit_as_bool s04_axi_rvalid,
  input bit_as_bool s04_axi_rready,
  input bit_as_bool s04_axi_aclk,
  input bit_as_bool s04_axi_aresetn
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module bd_d216_xtlm_simple_intercon_0_0 (s00_axi_awid,s00_axi_awaddr,s00_axi_awlen,s00_axi_awsize,s00_axi_awburst,s00_axi_awlock,s00_axi_awcache,s00_axi_awprot,s00_axi_awqos,s00_axi_awuser,s00_axi_awvalid,s00_axi_awready,s00_axi_wdata,s00_axi_wstrb,s00_axi_wlast,s00_axi_wuser,s00_axi_wvalid,s00_axi_wready,s00_axi_bid,s00_axi_bresp,s00_axi_buser,s00_axi_bvalid,s00_axi_bready,s00_axi_arid,s00_axi_araddr,s00_axi_arlen,s00_axi_arsize,s00_axi_arburst,s00_axi_arlock,s00_axi_arcache,s00_axi_arprot,s00_axi_arqos,s00_axi_aruser,s00_axi_arvalid,s00_axi_arready,s00_axi_rid,s00_axi_rdata,s00_axi_rresp,s00_axi_rlast,s00_axi_ruser,s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn,m00_axi_awid,m00_axi_awaddr,m00_axi_awlen,m00_axi_awsize,m00_axi_awburst,m00_axi_awlock,m00_axi_awcache,m00_axi_awprot,m00_axi_awqos,m00_axi_awuser,m00_axi_awvalid,m00_axi_awready,m00_axi_wdata,m00_axi_wstrb,m00_axi_wlast,m00_axi_wuser,m00_axi_wvalid,m00_axi_wready,m00_axi_bid,m00_axi_bresp,m00_axi_buser,m00_axi_bvalid,m00_axi_bready,m00_axi_arid,m00_axi_araddr,m00_axi_arlen,m00_axi_arsize,m00_axi_arburst,m00_axi_arlock,m00_axi_arcache,m00_axi_arprot,m00_axi_arqos,m00_axi_aruser,m00_axi_arvalid,m00_axi_arready,m00_axi_rid,m00_axi_rdata,m00_axi_rresp,m00_axi_rlast,m00_axi_ruser,m00_axi_rvalid,m00_axi_rready,m00_axi_aclk,m00_axi_aresetn,m02_axi_awid,m02_axi_awaddr,m02_axi_awlen,m02_axi_awsize,m02_axi_awburst,m02_axi_awlock,m02_axi_awcache,m02_axi_awprot,m02_axi_awqos,m02_axi_awuser,m02_axi_awvalid,m02_axi_awready,m02_axi_wdata,m02_axi_wstrb,m02_axi_wlast,m02_axi_wuser,m02_axi_wvalid,m02_axi_wready,m02_axi_bid,m02_axi_bresp,m02_axi_buser,m02_axi_bvalid,m02_axi_bready,m02_axi_arid,m02_axi_araddr,m02_axi_arlen,m02_axi_arsize,m02_axi_arburst,m02_axi_arlock,m02_axi_arcache,m02_axi_arprot,m02_axi_arqos,m02_axi_aruser,m02_axi_arvalid,m02_axi_arready,m02_axi_rid,m02_axi_rdata,m02_axi_rresp,m02_axi_rlast,m02_axi_ruser,m02_axi_rvalid,m02_axi_rready,m02_axi_aclk,m02_axi_aresetn,m05_axi_awid,m05_axi_awaddr,m05_axi_awlen,m05_axi_awsize,m05_axi_awburst,m05_axi_awlock,m05_axi_awcache,m05_axi_awprot,m05_axi_awqos,m05_axi_awuser,m05_axi_awvalid,m05_axi_awready,m05_axi_wdata,m05_axi_wstrb,m05_axi_wlast,m05_axi_wuser,m05_axi_wvalid,m05_axi_wready,m05_axi_bid,m05_axi_bresp,m05_axi_buser,m05_axi_bvalid,m05_axi_bready,m05_axi_arid,m05_axi_araddr,m05_axi_arlen,m05_axi_arsize,m05_axi_arburst,m05_axi_arlock,m05_axi_arcache,m05_axi_arprot,m05_axi_arqos,m05_axi_aruser,m05_axi_arvalid,m05_axi_arready,m05_axi_rid,m05_axi_rdata,m05_axi_rresp,m05_axi_rlast,m05_axi_ruser,m05_axi_rvalid,m05_axi_rready,m05_axi_aclk,m05_axi_aresetn,m03_axi_awid,m03_axi_awaddr,m03_axi_awlen,m03_axi_awsize,m03_axi_awburst,m03_axi_awlock,m03_axi_awcache,m03_axi_awprot,m03_axi_awqos,m03_axi_awuser,m03_axi_awvalid,m03_axi_awready,m03_axi_wdata,m03_axi_wstrb,m03_axi_wlast,m03_axi_wuser,m03_axi_wvalid,m03_axi_wready,m03_axi_bid,m03_axi_bresp,m03_axi_buser,m03_axi_bvalid,m03_axi_bready,m03_axi_arid,m03_axi_araddr,m03_axi_arlen,m03_axi_arsize,m03_axi_arburst,m03_axi_arlock,m03_axi_arcache,m03_axi_arprot,m03_axi_arqos,m03_axi_aruser,m03_axi_arvalid,m03_axi_arready,m03_axi_rid,m03_axi_rdata,m03_axi_rresp,m03_axi_rlast,m03_axi_ruser,m03_axi_rvalid,m03_axi_rready,m03_axi_aclk,m03_axi_aresetn,m04_axi_awid,m04_axi_awaddr,m04_axi_awlen,m04_axi_awsize,m04_axi_awburst,m04_axi_awlock,m04_axi_awcache,m04_axi_awprot,m04_axi_awqos,m04_axi_awuser,m04_axi_awvalid,m04_axi_awready,m04_axi_wdata,m04_axi_wstrb,m04_axi_wlast,m04_axi_wuser,m04_axi_wvalid,m04_axi_wready,m04_axi_bid,m04_axi_bresp,m04_axi_buser,m04_axi_bvalid,m04_axi_bready,m04_axi_arid,m04_axi_araddr,m04_axi_arlen,m04_axi_arsize,m04_axi_arburst,m04_axi_arlock,m04_axi_arcache,m04_axi_arprot,m04_axi_arqos,m04_axi_aruser,m04_axi_arvalid,m04_axi_arready,m04_axi_rid,m04_axi_rdata,m04_axi_rresp,m04_axi_rlast,m04_axi_ruser,m04_axi_rvalid,m04_axi_rready,m04_axi_aclk,m04_axi_aresetn,m06_axi_awid,m06_axi_awaddr,m06_axi_awlen,m06_axi_awsize,m06_axi_awburst,m06_axi_awlock,m06_axi_awcache,m06_axi_awprot,m06_axi_awqos,m06_axi_awuser,m06_axi_awvalid,m06_axi_awready,m06_axi_wdata,m06_axi_wstrb,m06_axi_wlast,m06_axi_wuser,m06_axi_wvalid,m06_axi_wready,m06_axi_bid,m06_axi_bresp,m06_axi_buser,m06_axi_bvalid,m06_axi_bready,m06_axi_arid,m06_axi_araddr,m06_axi_arlen,m06_axi_arsize,m06_axi_arburst,m06_axi_arlock,m06_axi_arcache,m06_axi_arprot,m06_axi_arqos,m06_axi_aruser,m06_axi_arvalid,m06_axi_arready,m06_axi_rid,m06_axi_rdata,m06_axi_rresp,m06_axi_rlast,m06_axi_ruser,m06_axi_rvalid,m06_axi_rready,m06_axi_aclk,m06_axi_aresetn,m01_axi_awaddr,m01_axi_awlen,m01_axi_awsize,m01_axi_awburst,m01_axi_awprot,m01_axi_awvalid,m01_axi_awready,m01_axi_wdata,m01_axi_wstrb,m01_axi_wlast,m01_axi_wvalid,m01_axi_wready,m01_axi_bresp,m01_axi_bvalid,m01_axi_bready,m01_axi_araddr,m01_axi_arlen,m01_axi_arsize,m01_axi_arburst,m01_axi_arprot,m01_axi_arvalid,m01_axi_arready,m01_axi_rdata,m01_axi_rresp,m01_axi_rlast,m01_axi_rvalid,m01_axi_rready,m01_axi_aclk,m01_axi_aresetn,s03_axi_awid,s03_axi_awaddr,s03_axi_awlen,s03_axi_awsize,s03_axi_awburst,s03_axi_awlock,s03_axi_awcache,s03_axi_awprot,s03_axi_awqos,s03_axi_awuser,s03_axi_awvalid,s03_axi_awready,s03_axi_wdata,s03_axi_wstrb,s03_axi_wlast,s03_axi_wuser,s03_axi_wvalid,s03_axi_wready,s03_axi_bid,s03_axi_bresp,s03_axi_buser,s03_axi_bvalid,s03_axi_bready,s03_axi_arid,s03_axi_araddr,s03_axi_arlen,s03_axi_arsize,s03_axi_arburst,s03_axi_arlock,s03_axi_arcache,s03_axi_arprot,s03_axi_arqos,s03_axi_aruser,s03_axi_arvalid,s03_axi_arready,s03_axi_rid,s03_axi_rdata,s03_axi_rresp,s03_axi_rlast,s03_axi_ruser,s03_axi_rvalid,s03_axi_rready,s03_axi_aclk,s03_axi_aresetn,s01_axi_awid,s01_axi_awaddr,s01_axi_awlen,s01_axi_awsize,s01_axi_awburst,s01_axi_awlock,s01_axi_awcache,s01_axi_awprot,s01_axi_awqos,s01_axi_awuser,s01_axi_awvalid,s01_axi_awready,s01_axi_wdata,s01_axi_wstrb,s01_axi_wlast,s01_axi_wuser,s01_axi_wvalid,s01_axi_wready,s01_axi_bid,s01_axi_bresp,s01_axi_buser,s01_axi_bvalid,s01_axi_bready,s01_axi_arid,s01_axi_araddr,s01_axi_arlen,s01_axi_arsize,s01_axi_arburst,s01_axi_arlock,s01_axi_arcache,s01_axi_arprot,s01_axi_arqos,s01_axi_aruser,s01_axi_arvalid,s01_axi_arready,s01_axi_rid,s01_axi_rdata,s01_axi_rresp,s01_axi_rlast,s01_axi_ruser,s01_axi_rvalid,s01_axi_rready,s01_axi_aclk,s01_axi_aresetn,s02_axi_awid,s02_axi_awaddr,s02_axi_awlen,s02_axi_awsize,s02_axi_awburst,s02_axi_awlock,s02_axi_awcache,s02_axi_awprot,s02_axi_awqos,s02_axi_awuser,s02_axi_awvalid,s02_axi_awready,s02_axi_wdata,s02_axi_wstrb,s02_axi_wlast,s02_axi_wuser,s02_axi_wvalid,s02_axi_wready,s02_axi_bid,s02_axi_bresp,s02_axi_buser,s02_axi_bvalid,s02_axi_bready,s02_axi_arid,s02_axi_araddr,s02_axi_arlen,s02_axi_arsize,s02_axi_arburst,s02_axi_arlock,s02_axi_arcache,s02_axi_arprot,s02_axi_arqos,s02_axi_aruser,s02_axi_arvalid,s02_axi_arready,s02_axi_rid,s02_axi_rdata,s02_axi_rresp,s02_axi_rlast,s02_axi_ruser,s02_axi_rvalid,s02_axi_rready,s02_axi_aclk,s02_axi_aresetn,s04_axi_awaddr,s04_axi_awlen,s04_axi_awsize,s04_axi_awlock,s04_axi_awcache,s04_axi_awprot,s04_axi_awregion,s04_axi_awqos,s04_axi_awvalid,s04_axi_awready,s04_axi_wdata,s04_axi_wstrb,s04_axi_wlast,s04_axi_wvalid,s04_axi_wready,s04_axi_bresp,s04_axi_bvalid,s04_axi_bready,s04_axi_araddr,s04_axi_arlen,s04_axi_arsize,s04_axi_arlock,s04_axi_arcache,s04_axi_arprot,s04_axi_arregion,s04_axi_arqos,s04_axi_arvalid,s04_axi_arready,s04_axi_rdata,s04_axi_rresp,s04_axi_rlast,s04_axi_rvalid,s04_axi_rready,s04_axi_aclk,s04_axi_aresetn)
(* integer foreign = "SystemC";
*);
  input bit [0 : 0] s00_axi_awid;
  input bit [63 : 0] s00_axi_awaddr;
  input bit [7 : 0] s00_axi_awlen;
  input bit [2 : 0] s00_axi_awsize;
  input bit [1 : 0] s00_axi_awburst;
  input bit s00_axi_awlock;
  input bit [3 : 0] s00_axi_awcache;
  input bit [2 : 0] s00_axi_awprot;
  input bit [3 : 0] s00_axi_awqos;
  input bit [0 : 0] s00_axi_awuser;
  input bit s00_axi_awvalid;
  output wire s00_axi_awready;
  input bit [31 : 0] s00_axi_wdata;
  input bit [3 : 0] s00_axi_wstrb;
  input bit s00_axi_wlast;
  input bit [0 : 0] s00_axi_wuser;
  input bit s00_axi_wvalid;
  output wire s00_axi_wready;
  output wire [0 : 0] s00_axi_bid;
  output wire [1 : 0] s00_axi_bresp;
  output wire [0 : 0] s00_axi_buser;
  output wire s00_axi_bvalid;
  input bit s00_axi_bready;
  input bit [0 : 0] s00_axi_arid;
  input bit [63 : 0] s00_axi_araddr;
  input bit [7 : 0] s00_axi_arlen;
  input bit [2 : 0] s00_axi_arsize;
  input bit [1 : 0] s00_axi_arburst;
  input bit s00_axi_arlock;
  input bit [3 : 0] s00_axi_arcache;
  input bit [2 : 0] s00_axi_arprot;
  input bit [3 : 0] s00_axi_arqos;
  input bit [0 : 0] s00_axi_aruser;
  input bit s00_axi_arvalid;
  output wire s00_axi_arready;
  output wire [0 : 0] s00_axi_rid;
  output wire [31 : 0] s00_axi_rdata;
  output wire [1 : 0] s00_axi_rresp;
  output wire s00_axi_rlast;
  output wire [0 : 0] s00_axi_ruser;
  output wire s00_axi_rvalid;
  input bit s00_axi_rready;
  input bit s00_axi_aclk;
  input bit s00_axi_aresetn;
  output wire [4 : 0] m00_axi_awid;
  output wire [33 : 0] m00_axi_awaddr;
  output wire [7 : 0] m00_axi_awlen;
  output wire [2 : 0] m00_axi_awsize;
  output wire [1 : 0] m00_axi_awburst;
  output wire m00_axi_awlock;
  output wire [3 : 0] m00_axi_awcache;
  output wire [2 : 0] m00_axi_awprot;
  output wire [3 : 0] m00_axi_awqos;
  output wire [31 : 0] m00_axi_awuser;
  output wire m00_axi_awvalid;
  input bit m00_axi_awready;
  output wire [511 : 0] m00_axi_wdata;
  output wire [63 : 0] m00_axi_wstrb;
  output wire m00_axi_wlast;
  output wire [0 : 0] m00_axi_wuser;
  output wire m00_axi_wvalid;
  input bit m00_axi_wready;
  input bit [4 : 0] m00_axi_bid;
  input bit [1 : 0] m00_axi_bresp;
  input bit [0 : 0] m00_axi_buser;
  input bit m00_axi_bvalid;
  output wire m00_axi_bready;
  output wire [4 : 0] m00_axi_arid;
  output wire [33 : 0] m00_axi_araddr;
  output wire [7 : 0] m00_axi_arlen;
  output wire [2 : 0] m00_axi_arsize;
  output wire [1 : 0] m00_axi_arburst;
  output wire m00_axi_arlock;
  output wire [3 : 0] m00_axi_arcache;
  output wire [2 : 0] m00_axi_arprot;
  output wire [3 : 0] m00_axi_arqos;
  output wire [31 : 0] m00_axi_aruser;
  output wire m00_axi_arvalid;
  input bit m00_axi_arready;
  input bit [4 : 0] m00_axi_rid;
  input bit [511 : 0] m00_axi_rdata;
  input bit [1 : 0] m00_axi_rresp;
  input bit m00_axi_rlast;
  input bit [0 : 0] m00_axi_ruser;
  input bit m00_axi_rvalid;
  output wire m00_axi_rready;
  input bit m00_axi_aclk;
  input bit m00_axi_aresetn;
  output wire [4 : 0] m02_axi_awid;
  output wire [33 : 0] m02_axi_awaddr;
  output wire [7 : 0] m02_axi_awlen;
  output wire [2 : 0] m02_axi_awsize;
  output wire [1 : 0] m02_axi_awburst;
  output wire m02_axi_awlock;
  output wire [3 : 0] m02_axi_awcache;
  output wire [2 : 0] m02_axi_awprot;
  output wire [3 : 0] m02_axi_awqos;
  output wire [31 : 0] m02_axi_awuser;
  output wire m02_axi_awvalid;
  input bit m02_axi_awready;
  output wire [511 : 0] m02_axi_wdata;
  output wire [63 : 0] m02_axi_wstrb;
  output wire m02_axi_wlast;
  output wire [0 : 0] m02_axi_wuser;
  output wire m02_axi_wvalid;
  input bit m02_axi_wready;
  input bit [4 : 0] m02_axi_bid;
  input bit [1 : 0] m02_axi_bresp;
  input bit [0 : 0] m02_axi_buser;
  input bit m02_axi_bvalid;
  output wire m02_axi_bready;
  output wire [4 : 0] m02_axi_arid;
  output wire [33 : 0] m02_axi_araddr;
  output wire [7 : 0] m02_axi_arlen;
  output wire [2 : 0] m02_axi_arsize;
  output wire [1 : 0] m02_axi_arburst;
  output wire m02_axi_arlock;
  output wire [3 : 0] m02_axi_arcache;
  output wire [2 : 0] m02_axi_arprot;
  output wire [3 : 0] m02_axi_arqos;
  output wire [31 : 0] m02_axi_aruser;
  output wire m02_axi_arvalid;
  input bit m02_axi_arready;
  input bit [4 : 0] m02_axi_rid;
  input bit [511 : 0] m02_axi_rdata;
  input bit [1 : 0] m02_axi_rresp;
  input bit m02_axi_rlast;
  input bit [0 : 0] m02_axi_ruser;
  input bit m02_axi_rvalid;
  output wire m02_axi_rready;
  input bit m02_axi_aclk;
  input bit m02_axi_aresetn;
  output wire [0 : 0] m05_axi_awid;
  output wire [16 : 0] m05_axi_awaddr;
  output wire [7 : 0] m05_axi_awlen;
  output wire [2 : 0] m05_axi_awsize;
  output wire [1 : 0] m05_axi_awburst;
  output wire m05_axi_awlock;
  output wire [3 : 0] m05_axi_awcache;
  output wire [2 : 0] m05_axi_awprot;
  output wire [3 : 0] m05_axi_awqos;
  output wire [0 : 0] m05_axi_awuser;
  output wire m05_axi_awvalid;
  input bit m05_axi_awready;
  output wire [511 : 0] m05_axi_wdata;
  output wire [63 : 0] m05_axi_wstrb;
  output wire m05_axi_wlast;
  output wire [0 : 0] m05_axi_wuser;
  output wire m05_axi_wvalid;
  input bit m05_axi_wready;
  input bit [0 : 0] m05_axi_bid;
  input bit [1 : 0] m05_axi_bresp;
  input bit [0 : 0] m05_axi_buser;
  input bit m05_axi_bvalid;
  output wire m05_axi_bready;
  output wire [0 : 0] m05_axi_arid;
  output wire [16 : 0] m05_axi_araddr;
  output wire [7 : 0] m05_axi_arlen;
  output wire [2 : 0] m05_axi_arsize;
  output wire [1 : 0] m05_axi_arburst;
  output wire m05_axi_arlock;
  output wire [3 : 0] m05_axi_arcache;
  output wire [2 : 0] m05_axi_arprot;
  output wire [3 : 0] m05_axi_arqos;
  output wire [0 : 0] m05_axi_aruser;
  output wire m05_axi_arvalid;
  input bit m05_axi_arready;
  input bit [0 : 0] m05_axi_rid;
  input bit [511 : 0] m05_axi_rdata;
  input bit [1 : 0] m05_axi_rresp;
  input bit m05_axi_rlast;
  input bit [0 : 0] m05_axi_ruser;
  input bit m05_axi_rvalid;
  output wire m05_axi_rready;
  input bit m05_axi_aclk;
  input bit m05_axi_aresetn;
  output wire [4 : 0] m03_axi_awid;
  output wire [33 : 0] m03_axi_awaddr;
  output wire [7 : 0] m03_axi_awlen;
  output wire [2 : 0] m03_axi_awsize;
  output wire [1 : 0] m03_axi_awburst;
  output wire m03_axi_awlock;
  output wire [3 : 0] m03_axi_awcache;
  output wire [2 : 0] m03_axi_awprot;
  output wire [3 : 0] m03_axi_awqos;
  output wire [31 : 0] m03_axi_awuser;
  output wire m03_axi_awvalid;
  input bit m03_axi_awready;
  output wire [511 : 0] m03_axi_wdata;
  output wire [63 : 0] m03_axi_wstrb;
  output wire m03_axi_wlast;
  output wire [0 : 0] m03_axi_wuser;
  output wire m03_axi_wvalid;
  input bit m03_axi_wready;
  input bit [4 : 0] m03_axi_bid;
  input bit [1 : 0] m03_axi_bresp;
  input bit [0 : 0] m03_axi_buser;
  input bit m03_axi_bvalid;
  output wire m03_axi_bready;
  output wire [4 : 0] m03_axi_arid;
  output wire [33 : 0] m03_axi_araddr;
  output wire [7 : 0] m03_axi_arlen;
  output wire [2 : 0] m03_axi_arsize;
  output wire [1 : 0] m03_axi_arburst;
  output wire m03_axi_arlock;
  output wire [3 : 0] m03_axi_arcache;
  output wire [2 : 0] m03_axi_arprot;
  output wire [3 : 0] m03_axi_arqos;
  output wire [31 : 0] m03_axi_aruser;
  output wire m03_axi_arvalid;
  input bit m03_axi_arready;
  input bit [4 : 0] m03_axi_rid;
  input bit [511 : 0] m03_axi_rdata;
  input bit [1 : 0] m03_axi_rresp;
  input bit m03_axi_rlast;
  input bit [0 : 0] m03_axi_ruser;
  input bit m03_axi_rvalid;
  output wire m03_axi_rready;
  input bit m03_axi_aclk;
  input bit m03_axi_aresetn;
  output wire [0 : 0] m04_axi_awid;
  output wire [16 : 0] m04_axi_awaddr;
  output wire [7 : 0] m04_axi_awlen;
  output wire [2 : 0] m04_axi_awsize;
  output wire [1 : 0] m04_axi_awburst;
  output wire m04_axi_awlock;
  output wire [3 : 0] m04_axi_awcache;
  output wire [2 : 0] m04_axi_awprot;
  output wire [3 : 0] m04_axi_awqos;
  output wire [0 : 0] m04_axi_awuser;
  output wire m04_axi_awvalid;
  input bit m04_axi_awready;
  output wire [511 : 0] m04_axi_wdata;
  output wire [63 : 0] m04_axi_wstrb;
  output wire m04_axi_wlast;
  output wire [0 : 0] m04_axi_wuser;
  output wire m04_axi_wvalid;
  input bit m04_axi_wready;
  input bit [0 : 0] m04_axi_bid;
  input bit [1 : 0] m04_axi_bresp;
  input bit [0 : 0] m04_axi_buser;
  input bit m04_axi_bvalid;
  output wire m04_axi_bready;
  output wire [0 : 0] m04_axi_arid;
  output wire [16 : 0] m04_axi_araddr;
  output wire [7 : 0] m04_axi_arlen;
  output wire [2 : 0] m04_axi_arsize;
  output wire [1 : 0] m04_axi_arburst;
  output wire m04_axi_arlock;
  output wire [3 : 0] m04_axi_arcache;
  output wire [2 : 0] m04_axi_arprot;
  output wire [3 : 0] m04_axi_arqos;
  output wire [0 : 0] m04_axi_aruser;
  output wire m04_axi_arvalid;
  input bit m04_axi_arready;
  input bit [0 : 0] m04_axi_rid;
  input bit [511 : 0] m04_axi_rdata;
  input bit [1 : 0] m04_axi_rresp;
  input bit m04_axi_rlast;
  input bit [0 : 0] m04_axi_ruser;
  input bit m04_axi_rvalid;
  output wire m04_axi_rready;
  input bit m04_axi_aclk;
  input bit m04_axi_aresetn;
  output wire [0 : 0] m06_axi_awid;
  output wire [16 : 0] m06_axi_awaddr;
  output wire [7 : 0] m06_axi_awlen;
  output wire [2 : 0] m06_axi_awsize;
  output wire [1 : 0] m06_axi_awburst;
  output wire m06_axi_awlock;
  output wire [3 : 0] m06_axi_awcache;
  output wire [2 : 0] m06_axi_awprot;
  output wire [3 : 0] m06_axi_awqos;
  output wire [0 : 0] m06_axi_awuser;
  output wire m06_axi_awvalid;
  input bit m06_axi_awready;
  output wire [511 : 0] m06_axi_wdata;
  output wire [63 : 0] m06_axi_wstrb;
  output wire m06_axi_wlast;
  output wire [0 : 0] m06_axi_wuser;
  output wire m06_axi_wvalid;
  input bit m06_axi_wready;
  input bit [0 : 0] m06_axi_bid;
  input bit [1 : 0] m06_axi_bresp;
  input bit [0 : 0] m06_axi_buser;
  input bit m06_axi_bvalid;
  output wire m06_axi_bready;
  output wire [0 : 0] m06_axi_arid;
  output wire [16 : 0] m06_axi_araddr;
  output wire [7 : 0] m06_axi_arlen;
  output wire [2 : 0] m06_axi_arsize;
  output wire [1 : 0] m06_axi_arburst;
  output wire m06_axi_arlock;
  output wire [3 : 0] m06_axi_arcache;
  output wire [2 : 0] m06_axi_arprot;
  output wire [3 : 0] m06_axi_arqos;
  output wire [0 : 0] m06_axi_aruser;
  output wire m06_axi_arvalid;
  input bit m06_axi_arready;
  input bit [0 : 0] m06_axi_rid;
  input bit [511 : 0] m06_axi_rdata;
  input bit [1 : 0] m06_axi_rresp;
  input bit m06_axi_rlast;
  input bit [0 : 0] m06_axi_ruser;
  input bit m06_axi_rvalid;
  output wire m06_axi_rready;
  input bit m06_axi_aclk;
  input bit m06_axi_aresetn;
  output wire [34 : 0] m01_axi_awaddr;
  output wire [7 : 0] m01_axi_awlen;
  output wire [2 : 0] m01_axi_awsize;
  output wire [1 : 0] m01_axi_awburst;
  output wire [2 : 0] m01_axi_awprot;
  output wire m01_axi_awvalid;
  input bit m01_axi_awready;
  output wire [511 : 0] m01_axi_wdata;
  output wire [63 : 0] m01_axi_wstrb;
  output wire m01_axi_wlast;
  output wire m01_axi_wvalid;
  input bit m01_axi_wready;
  input bit [1 : 0] m01_axi_bresp;
  input bit m01_axi_bvalid;
  output wire m01_axi_bready;
  output wire [34 : 0] m01_axi_araddr;
  output wire [7 : 0] m01_axi_arlen;
  output wire [2 : 0] m01_axi_arsize;
  output wire [1 : 0] m01_axi_arburst;
  output wire [2 : 0] m01_axi_arprot;
  output wire m01_axi_arvalid;
  input bit m01_axi_arready;
  input bit [511 : 0] m01_axi_rdata;
  input bit [1 : 0] m01_axi_rresp;
  input bit m01_axi_rlast;
  input bit m01_axi_rvalid;
  output wire m01_axi_rready;
  input bit m01_axi_aclk;
  input bit m01_axi_aresetn;
  input bit [0 : 0] s03_axi_awid;
  input bit [63 : 0] s03_axi_awaddr;
  input bit [7 : 0] s03_axi_awlen;
  input bit [2 : 0] s03_axi_awsize;
  input bit [1 : 0] s03_axi_awburst;
  input bit s03_axi_awlock;
  input bit [3 : 0] s03_axi_awcache;
  input bit [2 : 0] s03_axi_awprot;
  input bit [3 : 0] s03_axi_awqos;
  input bit [0 : 0] s03_axi_awuser;
  input bit s03_axi_awvalid;
  output wire s03_axi_awready;
  input bit [31 : 0] s03_axi_wdata;
  input bit [3 : 0] s03_axi_wstrb;
  input bit s03_axi_wlast;
  input bit [0 : 0] s03_axi_wuser;
  input bit s03_axi_wvalid;
  output wire s03_axi_wready;
  output wire [0 : 0] s03_axi_bid;
  output wire [1 : 0] s03_axi_bresp;
  output wire [0 : 0] s03_axi_buser;
  output wire s03_axi_bvalid;
  input bit s03_axi_bready;
  input bit [0 : 0] s03_axi_arid;
  input bit [63 : 0] s03_axi_araddr;
  input bit [7 : 0] s03_axi_arlen;
  input bit [2 : 0] s03_axi_arsize;
  input bit [1 : 0] s03_axi_arburst;
  input bit s03_axi_arlock;
  input bit [3 : 0] s03_axi_arcache;
  input bit [2 : 0] s03_axi_arprot;
  input bit [3 : 0] s03_axi_arqos;
  input bit [0 : 0] s03_axi_aruser;
  input bit s03_axi_arvalid;
  output wire s03_axi_arready;
  output wire [0 : 0] s03_axi_rid;
  output wire [31 : 0] s03_axi_rdata;
  output wire [1 : 0] s03_axi_rresp;
  output wire s03_axi_rlast;
  output wire [0 : 0] s03_axi_ruser;
  output wire s03_axi_rvalid;
  input bit s03_axi_rready;
  input bit s03_axi_aclk;
  input bit s03_axi_aresetn;
  input bit [0 : 0] s01_axi_awid;
  input bit [63 : 0] s01_axi_awaddr;
  input bit [7 : 0] s01_axi_awlen;
  input bit [2 : 0] s01_axi_awsize;
  input bit [1 : 0] s01_axi_awburst;
  input bit s01_axi_awlock;
  input bit [3 : 0] s01_axi_awcache;
  input bit [2 : 0] s01_axi_awprot;
  input bit [3 : 0] s01_axi_awqos;
  input bit [0 : 0] s01_axi_awuser;
  input bit s01_axi_awvalid;
  output wire s01_axi_awready;
  input bit [31 : 0] s01_axi_wdata;
  input bit [3 : 0] s01_axi_wstrb;
  input bit s01_axi_wlast;
  input bit [0 : 0] s01_axi_wuser;
  input bit s01_axi_wvalid;
  output wire s01_axi_wready;
  output wire [0 : 0] s01_axi_bid;
  output wire [1 : 0] s01_axi_bresp;
  output wire [0 : 0] s01_axi_buser;
  output wire s01_axi_bvalid;
  input bit s01_axi_bready;
  input bit [0 : 0] s01_axi_arid;
  input bit [63 : 0] s01_axi_araddr;
  input bit [7 : 0] s01_axi_arlen;
  input bit [2 : 0] s01_axi_arsize;
  input bit [1 : 0] s01_axi_arburst;
  input bit s01_axi_arlock;
  input bit [3 : 0] s01_axi_arcache;
  input bit [2 : 0] s01_axi_arprot;
  input bit [3 : 0] s01_axi_arqos;
  input bit [0 : 0] s01_axi_aruser;
  input bit s01_axi_arvalid;
  output wire s01_axi_arready;
  output wire [0 : 0] s01_axi_rid;
  output wire [31 : 0] s01_axi_rdata;
  output wire [1 : 0] s01_axi_rresp;
  output wire s01_axi_rlast;
  output wire [0 : 0] s01_axi_ruser;
  output wire s01_axi_rvalid;
  input bit s01_axi_rready;
  input bit s01_axi_aclk;
  input bit s01_axi_aresetn;
  input bit [0 : 0] s02_axi_awid;
  input bit [63 : 0] s02_axi_awaddr;
  input bit [7 : 0] s02_axi_awlen;
  input bit [2 : 0] s02_axi_awsize;
  input bit [1 : 0] s02_axi_awburst;
  input bit s02_axi_awlock;
  input bit [3 : 0] s02_axi_awcache;
  input bit [2 : 0] s02_axi_awprot;
  input bit [3 : 0] s02_axi_awqos;
  input bit [0 : 0] s02_axi_awuser;
  input bit s02_axi_awvalid;
  output wire s02_axi_awready;
  input bit [31 : 0] s02_axi_wdata;
  input bit [3 : 0] s02_axi_wstrb;
  input bit s02_axi_wlast;
  input bit [0 : 0] s02_axi_wuser;
  input bit s02_axi_wvalid;
  output wire s02_axi_wready;
  output wire [0 : 0] s02_axi_bid;
  output wire [1 : 0] s02_axi_bresp;
  output wire [0 : 0] s02_axi_buser;
  output wire s02_axi_bvalid;
  input bit s02_axi_bready;
  input bit [0 : 0] s02_axi_arid;
  input bit [63 : 0] s02_axi_araddr;
  input bit [7 : 0] s02_axi_arlen;
  input bit [2 : 0] s02_axi_arsize;
  input bit [1 : 0] s02_axi_arburst;
  input bit s02_axi_arlock;
  input bit [3 : 0] s02_axi_arcache;
  input bit [2 : 0] s02_axi_arprot;
  input bit [3 : 0] s02_axi_arqos;
  input bit [0 : 0] s02_axi_aruser;
  input bit s02_axi_arvalid;
  output wire s02_axi_arready;
  output wire [0 : 0] s02_axi_rid;
  output wire [31 : 0] s02_axi_rdata;
  output wire [1 : 0] s02_axi_rresp;
  output wire s02_axi_rlast;
  output wire [0 : 0] s02_axi_ruser;
  output wire s02_axi_rvalid;
  input bit s02_axi_rready;
  input bit s02_axi_aclk;
  input bit s02_axi_aresetn;
  input bit [63 : 0] s04_axi_awaddr;
  input bit [7 : 0] s04_axi_awlen;
  input bit [2 : 0] s04_axi_awsize;
  input bit s04_axi_awlock;
  input bit [3 : 0] s04_axi_awcache;
  input bit [2 : 0] s04_axi_awprot;
  input bit [3 : 0] s04_axi_awregion;
  input bit [3 : 0] s04_axi_awqos;
  input bit s04_axi_awvalid;
  output wire s04_axi_awready;
  input bit [511 : 0] s04_axi_wdata;
  input bit [63 : 0] s04_axi_wstrb;
  input bit s04_axi_wlast;
  input bit s04_axi_wvalid;
  output wire s04_axi_wready;
  output wire [1 : 0] s04_axi_bresp;
  output wire s04_axi_bvalid;
  input bit s04_axi_bready;
  input bit [63 : 0] s04_axi_araddr;
  input bit [7 : 0] s04_axi_arlen;
  input bit [2 : 0] s04_axi_arsize;
  input bit s04_axi_arlock;
  input bit [3 : 0] s04_axi_arcache;
  input bit [2 : 0] s04_axi_arprot;
  input bit [3 : 0] s04_axi_arregion;
  input bit [3 : 0] s04_axi_arqos;
  input bit s04_axi_arvalid;
  output wire s04_axi_arready;
  output wire [511 : 0] s04_axi_rdata;
  output wire [1 : 0] s04_axi_rresp;
  output wire s04_axi_rlast;
  output wire s04_axi_rvalid;
  input bit s04_axi_rready;
  input bit s04_axi_aclk;
  input bit s04_axi_aresetn;
endmodule
`endif

`ifdef RIVIERA
(* SC_MODULE_EXPORT *)
module bd_d216_xtlm_simple_intercon_0_0 (s00_axi_awid,s00_axi_awaddr,s00_axi_awlen,s00_axi_awsize,s00_axi_awburst,s00_axi_awlock,s00_axi_awcache,s00_axi_awprot,s00_axi_awqos,s00_axi_awuser,s00_axi_awvalid,s00_axi_awready,s00_axi_wdata,s00_axi_wstrb,s00_axi_wlast,s00_axi_wuser,s00_axi_wvalid,s00_axi_wready,s00_axi_bid,s00_axi_bresp,s00_axi_buser,s00_axi_bvalid,s00_axi_bready,s00_axi_arid,s00_axi_araddr,s00_axi_arlen,s00_axi_arsize,s00_axi_arburst,s00_axi_arlock,s00_axi_arcache,s00_axi_arprot,s00_axi_arqos,s00_axi_aruser,s00_axi_arvalid,s00_axi_arready,s00_axi_rid,s00_axi_rdata,s00_axi_rresp,s00_axi_rlast,s00_axi_ruser,s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn,m00_axi_awid,m00_axi_awaddr,m00_axi_awlen,m00_axi_awsize,m00_axi_awburst,m00_axi_awlock,m00_axi_awcache,m00_axi_awprot,m00_axi_awqos,m00_axi_awuser,m00_axi_awvalid,m00_axi_awready,m00_axi_wdata,m00_axi_wstrb,m00_axi_wlast,m00_axi_wuser,m00_axi_wvalid,m00_axi_wready,m00_axi_bid,m00_axi_bresp,m00_axi_buser,m00_axi_bvalid,m00_axi_bready,m00_axi_arid,m00_axi_araddr,m00_axi_arlen,m00_axi_arsize,m00_axi_arburst,m00_axi_arlock,m00_axi_arcache,m00_axi_arprot,m00_axi_arqos,m00_axi_aruser,m00_axi_arvalid,m00_axi_arready,m00_axi_rid,m00_axi_rdata,m00_axi_rresp,m00_axi_rlast,m00_axi_ruser,m00_axi_rvalid,m00_axi_rready,m00_axi_aclk,m00_axi_aresetn,m02_axi_awid,m02_axi_awaddr,m02_axi_awlen,m02_axi_awsize,m02_axi_awburst,m02_axi_awlock,m02_axi_awcache,m02_axi_awprot,m02_axi_awqos,m02_axi_awuser,m02_axi_awvalid,m02_axi_awready,m02_axi_wdata,m02_axi_wstrb,m02_axi_wlast,m02_axi_wuser,m02_axi_wvalid,m02_axi_wready,m02_axi_bid,m02_axi_bresp,m02_axi_buser,m02_axi_bvalid,m02_axi_bready,m02_axi_arid,m02_axi_araddr,m02_axi_arlen,m02_axi_arsize,m02_axi_arburst,m02_axi_arlock,m02_axi_arcache,m02_axi_arprot,m02_axi_arqos,m02_axi_aruser,m02_axi_arvalid,m02_axi_arready,m02_axi_rid,m02_axi_rdata,m02_axi_rresp,m02_axi_rlast,m02_axi_ruser,m02_axi_rvalid,m02_axi_rready,m02_axi_aclk,m02_axi_aresetn,m05_axi_awid,m05_axi_awaddr,m05_axi_awlen,m05_axi_awsize,m05_axi_awburst,m05_axi_awlock,m05_axi_awcache,m05_axi_awprot,m05_axi_awqos,m05_axi_awuser,m05_axi_awvalid,m05_axi_awready,m05_axi_wdata,m05_axi_wstrb,m05_axi_wlast,m05_axi_wuser,m05_axi_wvalid,m05_axi_wready,m05_axi_bid,m05_axi_bresp,m05_axi_buser,m05_axi_bvalid,m05_axi_bready,m05_axi_arid,m05_axi_araddr,m05_axi_arlen,m05_axi_arsize,m05_axi_arburst,m05_axi_arlock,m05_axi_arcache,m05_axi_arprot,m05_axi_arqos,m05_axi_aruser,m05_axi_arvalid,m05_axi_arready,m05_axi_rid,m05_axi_rdata,m05_axi_rresp,m05_axi_rlast,m05_axi_ruser,m05_axi_rvalid,m05_axi_rready,m05_axi_aclk,m05_axi_aresetn,m03_axi_awid,m03_axi_awaddr,m03_axi_awlen,m03_axi_awsize,m03_axi_awburst,m03_axi_awlock,m03_axi_awcache,m03_axi_awprot,m03_axi_awqos,m03_axi_awuser,m03_axi_awvalid,m03_axi_awready,m03_axi_wdata,m03_axi_wstrb,m03_axi_wlast,m03_axi_wuser,m03_axi_wvalid,m03_axi_wready,m03_axi_bid,m03_axi_bresp,m03_axi_buser,m03_axi_bvalid,m03_axi_bready,m03_axi_arid,m03_axi_araddr,m03_axi_arlen,m03_axi_arsize,m03_axi_arburst,m03_axi_arlock,m03_axi_arcache,m03_axi_arprot,m03_axi_arqos,m03_axi_aruser,m03_axi_arvalid,m03_axi_arready,m03_axi_rid,m03_axi_rdata,m03_axi_rresp,m03_axi_rlast,m03_axi_ruser,m03_axi_rvalid,m03_axi_rready,m03_axi_aclk,m03_axi_aresetn,m04_axi_awid,m04_axi_awaddr,m04_axi_awlen,m04_axi_awsize,m04_axi_awburst,m04_axi_awlock,m04_axi_awcache,m04_axi_awprot,m04_axi_awqos,m04_axi_awuser,m04_axi_awvalid,m04_axi_awready,m04_axi_wdata,m04_axi_wstrb,m04_axi_wlast,m04_axi_wuser,m04_axi_wvalid,m04_axi_wready,m04_axi_bid,m04_axi_bresp,m04_axi_buser,m04_axi_bvalid,m04_axi_bready,m04_axi_arid,m04_axi_araddr,m04_axi_arlen,m04_axi_arsize,m04_axi_arburst,m04_axi_arlock,m04_axi_arcache,m04_axi_arprot,m04_axi_arqos,m04_axi_aruser,m04_axi_arvalid,m04_axi_arready,m04_axi_rid,m04_axi_rdata,m04_axi_rresp,m04_axi_rlast,m04_axi_ruser,m04_axi_rvalid,m04_axi_rready,m04_axi_aclk,m04_axi_aresetn,m06_axi_awid,m06_axi_awaddr,m06_axi_awlen,m06_axi_awsize,m06_axi_awburst,m06_axi_awlock,m06_axi_awcache,m06_axi_awprot,m06_axi_awqos,m06_axi_awuser,m06_axi_awvalid,m06_axi_awready,m06_axi_wdata,m06_axi_wstrb,m06_axi_wlast,m06_axi_wuser,m06_axi_wvalid,m06_axi_wready,m06_axi_bid,m06_axi_bresp,m06_axi_buser,m06_axi_bvalid,m06_axi_bready,m06_axi_arid,m06_axi_araddr,m06_axi_arlen,m06_axi_arsize,m06_axi_arburst,m06_axi_arlock,m06_axi_arcache,m06_axi_arprot,m06_axi_arqos,m06_axi_aruser,m06_axi_arvalid,m06_axi_arready,m06_axi_rid,m06_axi_rdata,m06_axi_rresp,m06_axi_rlast,m06_axi_ruser,m06_axi_rvalid,m06_axi_rready,m06_axi_aclk,m06_axi_aresetn,m01_axi_awaddr,m01_axi_awlen,m01_axi_awsize,m01_axi_awburst,m01_axi_awprot,m01_axi_awvalid,m01_axi_awready,m01_axi_wdata,m01_axi_wstrb,m01_axi_wlast,m01_axi_wvalid,m01_axi_wready,m01_axi_bresp,m01_axi_bvalid,m01_axi_bready,m01_axi_araddr,m01_axi_arlen,m01_axi_arsize,m01_axi_arburst,m01_axi_arprot,m01_axi_arvalid,m01_axi_arready,m01_axi_rdata,m01_axi_rresp,m01_axi_rlast,m01_axi_rvalid,m01_axi_rready,m01_axi_aclk,m01_axi_aresetn,s03_axi_awid,s03_axi_awaddr,s03_axi_awlen,s03_axi_awsize,s03_axi_awburst,s03_axi_awlock,s03_axi_awcache,s03_axi_awprot,s03_axi_awqos,s03_axi_awuser,s03_axi_awvalid,s03_axi_awready,s03_axi_wdata,s03_axi_wstrb,s03_axi_wlast,s03_axi_wuser,s03_axi_wvalid,s03_axi_wready,s03_axi_bid,s03_axi_bresp,s03_axi_buser,s03_axi_bvalid,s03_axi_bready,s03_axi_arid,s03_axi_araddr,s03_axi_arlen,s03_axi_arsize,s03_axi_arburst,s03_axi_arlock,s03_axi_arcache,s03_axi_arprot,s03_axi_arqos,s03_axi_aruser,s03_axi_arvalid,s03_axi_arready,s03_axi_rid,s03_axi_rdata,s03_axi_rresp,s03_axi_rlast,s03_axi_ruser,s03_axi_rvalid,s03_axi_rready,s03_axi_aclk,s03_axi_aresetn,s01_axi_awid,s01_axi_awaddr,s01_axi_awlen,s01_axi_awsize,s01_axi_awburst,s01_axi_awlock,s01_axi_awcache,s01_axi_awprot,s01_axi_awqos,s01_axi_awuser,s01_axi_awvalid,s01_axi_awready,s01_axi_wdata,s01_axi_wstrb,s01_axi_wlast,s01_axi_wuser,s01_axi_wvalid,s01_axi_wready,s01_axi_bid,s01_axi_bresp,s01_axi_buser,s01_axi_bvalid,s01_axi_bready,s01_axi_arid,s01_axi_araddr,s01_axi_arlen,s01_axi_arsize,s01_axi_arburst,s01_axi_arlock,s01_axi_arcache,s01_axi_arprot,s01_axi_arqos,s01_axi_aruser,s01_axi_arvalid,s01_axi_arready,s01_axi_rid,s01_axi_rdata,s01_axi_rresp,s01_axi_rlast,s01_axi_ruser,s01_axi_rvalid,s01_axi_rready,s01_axi_aclk,s01_axi_aresetn,s02_axi_awid,s02_axi_awaddr,s02_axi_awlen,s02_axi_awsize,s02_axi_awburst,s02_axi_awlock,s02_axi_awcache,s02_axi_awprot,s02_axi_awqos,s02_axi_awuser,s02_axi_awvalid,s02_axi_awready,s02_axi_wdata,s02_axi_wstrb,s02_axi_wlast,s02_axi_wuser,s02_axi_wvalid,s02_axi_wready,s02_axi_bid,s02_axi_bresp,s02_axi_buser,s02_axi_bvalid,s02_axi_bready,s02_axi_arid,s02_axi_araddr,s02_axi_arlen,s02_axi_arsize,s02_axi_arburst,s02_axi_arlock,s02_axi_arcache,s02_axi_arprot,s02_axi_arqos,s02_axi_aruser,s02_axi_arvalid,s02_axi_arready,s02_axi_rid,s02_axi_rdata,s02_axi_rresp,s02_axi_rlast,s02_axi_ruser,s02_axi_rvalid,s02_axi_rready,s02_axi_aclk,s02_axi_aresetn,s04_axi_awaddr,s04_axi_awlen,s04_axi_awsize,s04_axi_awlock,s04_axi_awcache,s04_axi_awprot,s04_axi_awregion,s04_axi_awqos,s04_axi_awvalid,s04_axi_awready,s04_axi_wdata,s04_axi_wstrb,s04_axi_wlast,s04_axi_wvalid,s04_axi_wready,s04_axi_bresp,s04_axi_bvalid,s04_axi_bready,s04_axi_araddr,s04_axi_arlen,s04_axi_arsize,s04_axi_arlock,s04_axi_arcache,s04_axi_arprot,s04_axi_arregion,s04_axi_arqos,s04_axi_arvalid,s04_axi_arready,s04_axi_rdata,s04_axi_rresp,s04_axi_rlast,s04_axi_rvalid,s04_axi_rready,s04_axi_aclk,s04_axi_aresetn)
  input bit [0 : 0] s00_axi_awid;
  input bit [63 : 0] s00_axi_awaddr;
  input bit [7 : 0] s00_axi_awlen;
  input bit [2 : 0] s00_axi_awsize;
  input bit [1 : 0] s00_axi_awburst;
  input bit s00_axi_awlock;
  input bit [3 : 0] s00_axi_awcache;
  input bit [2 : 0] s00_axi_awprot;
  input bit [3 : 0] s00_axi_awqos;
  input bit [0 : 0] s00_axi_awuser;
  input bit s00_axi_awvalid;
  output wire s00_axi_awready;
  input bit [31 : 0] s00_axi_wdata;
  input bit [3 : 0] s00_axi_wstrb;
  input bit s00_axi_wlast;
  input bit [0 : 0] s00_axi_wuser;
  input bit s00_axi_wvalid;
  output wire s00_axi_wready;
  output wire [0 : 0] s00_axi_bid;
  output wire [1 : 0] s00_axi_bresp;
  output wire [0 : 0] s00_axi_buser;
  output wire s00_axi_bvalid;
  input bit s00_axi_bready;
  input bit [0 : 0] s00_axi_arid;
  input bit [63 : 0] s00_axi_araddr;
  input bit [7 : 0] s00_axi_arlen;
  input bit [2 : 0] s00_axi_arsize;
  input bit [1 : 0] s00_axi_arburst;
  input bit s00_axi_arlock;
  input bit [3 : 0] s00_axi_arcache;
  input bit [2 : 0] s00_axi_arprot;
  input bit [3 : 0] s00_axi_arqos;
  input bit [0 : 0] s00_axi_aruser;
  input bit s00_axi_arvalid;
  output wire s00_axi_arready;
  output wire [0 : 0] s00_axi_rid;
  output wire [31 : 0] s00_axi_rdata;
  output wire [1 : 0] s00_axi_rresp;
  output wire s00_axi_rlast;
  output wire [0 : 0] s00_axi_ruser;
  output wire s00_axi_rvalid;
  input bit s00_axi_rready;
  input bit s00_axi_aclk;
  input bit s00_axi_aresetn;
  output wire [4 : 0] m00_axi_awid;
  output wire [33 : 0] m00_axi_awaddr;
  output wire [7 : 0] m00_axi_awlen;
  output wire [2 : 0] m00_axi_awsize;
  output wire [1 : 0] m00_axi_awburst;
  output wire m00_axi_awlock;
  output wire [3 : 0] m00_axi_awcache;
  output wire [2 : 0] m00_axi_awprot;
  output wire [3 : 0] m00_axi_awqos;
  output wire [31 : 0] m00_axi_awuser;
  output wire m00_axi_awvalid;
  input bit m00_axi_awready;
  output wire [511 : 0] m00_axi_wdata;
  output wire [63 : 0] m00_axi_wstrb;
  output wire m00_axi_wlast;
  output wire [0 : 0] m00_axi_wuser;
  output wire m00_axi_wvalid;
  input bit m00_axi_wready;
  input bit [4 : 0] m00_axi_bid;
  input bit [1 : 0] m00_axi_bresp;
  input bit [0 : 0] m00_axi_buser;
  input bit m00_axi_bvalid;
  output wire m00_axi_bready;
  output wire [4 : 0] m00_axi_arid;
  output wire [33 : 0] m00_axi_araddr;
  output wire [7 : 0] m00_axi_arlen;
  output wire [2 : 0] m00_axi_arsize;
  output wire [1 : 0] m00_axi_arburst;
  output wire m00_axi_arlock;
  output wire [3 : 0] m00_axi_arcache;
  output wire [2 : 0] m00_axi_arprot;
  output wire [3 : 0] m00_axi_arqos;
  output wire [31 : 0] m00_axi_aruser;
  output wire m00_axi_arvalid;
  input bit m00_axi_arready;
  input bit [4 : 0] m00_axi_rid;
  input bit [511 : 0] m00_axi_rdata;
  input bit [1 : 0] m00_axi_rresp;
  input bit m00_axi_rlast;
  input bit [0 : 0] m00_axi_ruser;
  input bit m00_axi_rvalid;
  output wire m00_axi_rready;
  input bit m00_axi_aclk;
  input bit m00_axi_aresetn;
  output wire [4 : 0] m02_axi_awid;
  output wire [33 : 0] m02_axi_awaddr;
  output wire [7 : 0] m02_axi_awlen;
  output wire [2 : 0] m02_axi_awsize;
  output wire [1 : 0] m02_axi_awburst;
  output wire m02_axi_awlock;
  output wire [3 : 0] m02_axi_awcache;
  output wire [2 : 0] m02_axi_awprot;
  output wire [3 : 0] m02_axi_awqos;
  output wire [31 : 0] m02_axi_awuser;
  output wire m02_axi_awvalid;
  input bit m02_axi_awready;
  output wire [511 : 0] m02_axi_wdata;
  output wire [63 : 0] m02_axi_wstrb;
  output wire m02_axi_wlast;
  output wire [0 : 0] m02_axi_wuser;
  output wire m02_axi_wvalid;
  input bit m02_axi_wready;
  input bit [4 : 0] m02_axi_bid;
  input bit [1 : 0] m02_axi_bresp;
  input bit [0 : 0] m02_axi_buser;
  input bit m02_axi_bvalid;
  output wire m02_axi_bready;
  output wire [4 : 0] m02_axi_arid;
  output wire [33 : 0] m02_axi_araddr;
  output wire [7 : 0] m02_axi_arlen;
  output wire [2 : 0] m02_axi_arsize;
  output wire [1 : 0] m02_axi_arburst;
  output wire m02_axi_arlock;
  output wire [3 : 0] m02_axi_arcache;
  output wire [2 : 0] m02_axi_arprot;
  output wire [3 : 0] m02_axi_arqos;
  output wire [31 : 0] m02_axi_aruser;
  output wire m02_axi_arvalid;
  input bit m02_axi_arready;
  input bit [4 : 0] m02_axi_rid;
  input bit [511 : 0] m02_axi_rdata;
  input bit [1 : 0] m02_axi_rresp;
  input bit m02_axi_rlast;
  input bit [0 : 0] m02_axi_ruser;
  input bit m02_axi_rvalid;
  output wire m02_axi_rready;
  input bit m02_axi_aclk;
  input bit m02_axi_aresetn;
  output wire [0 : 0] m05_axi_awid;
  output wire [16 : 0] m05_axi_awaddr;
  output wire [7 : 0] m05_axi_awlen;
  output wire [2 : 0] m05_axi_awsize;
  output wire [1 : 0] m05_axi_awburst;
  output wire m05_axi_awlock;
  output wire [3 : 0] m05_axi_awcache;
  output wire [2 : 0] m05_axi_awprot;
  output wire [3 : 0] m05_axi_awqos;
  output wire [0 : 0] m05_axi_awuser;
  output wire m05_axi_awvalid;
  input bit m05_axi_awready;
  output wire [511 : 0] m05_axi_wdata;
  output wire [63 : 0] m05_axi_wstrb;
  output wire m05_axi_wlast;
  output wire [0 : 0] m05_axi_wuser;
  output wire m05_axi_wvalid;
  input bit m05_axi_wready;
  input bit [0 : 0] m05_axi_bid;
  input bit [1 : 0] m05_axi_bresp;
  input bit [0 : 0] m05_axi_buser;
  input bit m05_axi_bvalid;
  output wire m05_axi_bready;
  output wire [0 : 0] m05_axi_arid;
  output wire [16 : 0] m05_axi_araddr;
  output wire [7 : 0] m05_axi_arlen;
  output wire [2 : 0] m05_axi_arsize;
  output wire [1 : 0] m05_axi_arburst;
  output wire m05_axi_arlock;
  output wire [3 : 0] m05_axi_arcache;
  output wire [2 : 0] m05_axi_arprot;
  output wire [3 : 0] m05_axi_arqos;
  output wire [0 : 0] m05_axi_aruser;
  output wire m05_axi_arvalid;
  input bit m05_axi_arready;
  input bit [0 : 0] m05_axi_rid;
  input bit [511 : 0] m05_axi_rdata;
  input bit [1 : 0] m05_axi_rresp;
  input bit m05_axi_rlast;
  input bit [0 : 0] m05_axi_ruser;
  input bit m05_axi_rvalid;
  output wire m05_axi_rready;
  input bit m05_axi_aclk;
  input bit m05_axi_aresetn;
  output wire [4 : 0] m03_axi_awid;
  output wire [33 : 0] m03_axi_awaddr;
  output wire [7 : 0] m03_axi_awlen;
  output wire [2 : 0] m03_axi_awsize;
  output wire [1 : 0] m03_axi_awburst;
  output wire m03_axi_awlock;
  output wire [3 : 0] m03_axi_awcache;
  output wire [2 : 0] m03_axi_awprot;
  output wire [3 : 0] m03_axi_awqos;
  output wire [31 : 0] m03_axi_awuser;
  output wire m03_axi_awvalid;
  input bit m03_axi_awready;
  output wire [511 : 0] m03_axi_wdata;
  output wire [63 : 0] m03_axi_wstrb;
  output wire m03_axi_wlast;
  output wire [0 : 0] m03_axi_wuser;
  output wire m03_axi_wvalid;
  input bit m03_axi_wready;
  input bit [4 : 0] m03_axi_bid;
  input bit [1 : 0] m03_axi_bresp;
  input bit [0 : 0] m03_axi_buser;
  input bit m03_axi_bvalid;
  output wire m03_axi_bready;
  output wire [4 : 0] m03_axi_arid;
  output wire [33 : 0] m03_axi_araddr;
  output wire [7 : 0] m03_axi_arlen;
  output wire [2 : 0] m03_axi_arsize;
  output wire [1 : 0] m03_axi_arburst;
  output wire m03_axi_arlock;
  output wire [3 : 0] m03_axi_arcache;
  output wire [2 : 0] m03_axi_arprot;
  output wire [3 : 0] m03_axi_arqos;
  output wire [31 : 0] m03_axi_aruser;
  output wire m03_axi_arvalid;
  input bit m03_axi_arready;
  input bit [4 : 0] m03_axi_rid;
  input bit [511 : 0] m03_axi_rdata;
  input bit [1 : 0] m03_axi_rresp;
  input bit m03_axi_rlast;
  input bit [0 : 0] m03_axi_ruser;
  input bit m03_axi_rvalid;
  output wire m03_axi_rready;
  input bit m03_axi_aclk;
  input bit m03_axi_aresetn;
  output wire [0 : 0] m04_axi_awid;
  output wire [16 : 0] m04_axi_awaddr;
  output wire [7 : 0] m04_axi_awlen;
  output wire [2 : 0] m04_axi_awsize;
  output wire [1 : 0] m04_axi_awburst;
  output wire m04_axi_awlock;
  output wire [3 : 0] m04_axi_awcache;
  output wire [2 : 0] m04_axi_awprot;
  output wire [3 : 0] m04_axi_awqos;
  output wire [0 : 0] m04_axi_awuser;
  output wire m04_axi_awvalid;
  input bit m04_axi_awready;
  output wire [511 : 0] m04_axi_wdata;
  output wire [63 : 0] m04_axi_wstrb;
  output wire m04_axi_wlast;
  output wire [0 : 0] m04_axi_wuser;
  output wire m04_axi_wvalid;
  input bit m04_axi_wready;
  input bit [0 : 0] m04_axi_bid;
  input bit [1 : 0] m04_axi_bresp;
  input bit [0 : 0] m04_axi_buser;
  input bit m04_axi_bvalid;
  output wire m04_axi_bready;
  output wire [0 : 0] m04_axi_arid;
  output wire [16 : 0] m04_axi_araddr;
  output wire [7 : 0] m04_axi_arlen;
  output wire [2 : 0] m04_axi_arsize;
  output wire [1 : 0] m04_axi_arburst;
  output wire m04_axi_arlock;
  output wire [3 : 0] m04_axi_arcache;
  output wire [2 : 0] m04_axi_arprot;
  output wire [3 : 0] m04_axi_arqos;
  output wire [0 : 0] m04_axi_aruser;
  output wire m04_axi_arvalid;
  input bit m04_axi_arready;
  input bit [0 : 0] m04_axi_rid;
  input bit [511 : 0] m04_axi_rdata;
  input bit [1 : 0] m04_axi_rresp;
  input bit m04_axi_rlast;
  input bit [0 : 0] m04_axi_ruser;
  input bit m04_axi_rvalid;
  output wire m04_axi_rready;
  input bit m04_axi_aclk;
  input bit m04_axi_aresetn;
  output wire [0 : 0] m06_axi_awid;
  output wire [16 : 0] m06_axi_awaddr;
  output wire [7 : 0] m06_axi_awlen;
  output wire [2 : 0] m06_axi_awsize;
  output wire [1 : 0] m06_axi_awburst;
  output wire m06_axi_awlock;
  output wire [3 : 0] m06_axi_awcache;
  output wire [2 : 0] m06_axi_awprot;
  output wire [3 : 0] m06_axi_awqos;
  output wire [0 : 0] m06_axi_awuser;
  output wire m06_axi_awvalid;
  input bit m06_axi_awready;
  output wire [511 : 0] m06_axi_wdata;
  output wire [63 : 0] m06_axi_wstrb;
  output wire m06_axi_wlast;
  output wire [0 : 0] m06_axi_wuser;
  output wire m06_axi_wvalid;
  input bit m06_axi_wready;
  input bit [0 : 0] m06_axi_bid;
  input bit [1 : 0] m06_axi_bresp;
  input bit [0 : 0] m06_axi_buser;
  input bit m06_axi_bvalid;
  output wire m06_axi_bready;
  output wire [0 : 0] m06_axi_arid;
  output wire [16 : 0] m06_axi_araddr;
  output wire [7 : 0] m06_axi_arlen;
  output wire [2 : 0] m06_axi_arsize;
  output wire [1 : 0] m06_axi_arburst;
  output wire m06_axi_arlock;
  output wire [3 : 0] m06_axi_arcache;
  output wire [2 : 0] m06_axi_arprot;
  output wire [3 : 0] m06_axi_arqos;
  output wire [0 : 0] m06_axi_aruser;
  output wire m06_axi_arvalid;
  input bit m06_axi_arready;
  input bit [0 : 0] m06_axi_rid;
  input bit [511 : 0] m06_axi_rdata;
  input bit [1 : 0] m06_axi_rresp;
  input bit m06_axi_rlast;
  input bit [0 : 0] m06_axi_ruser;
  input bit m06_axi_rvalid;
  output wire m06_axi_rready;
  input bit m06_axi_aclk;
  input bit m06_axi_aresetn;
  output wire [34 : 0] m01_axi_awaddr;
  output wire [7 : 0] m01_axi_awlen;
  output wire [2 : 0] m01_axi_awsize;
  output wire [1 : 0] m01_axi_awburst;
  output wire [2 : 0] m01_axi_awprot;
  output wire m01_axi_awvalid;
  input bit m01_axi_awready;
  output wire [511 : 0] m01_axi_wdata;
  output wire [63 : 0] m01_axi_wstrb;
  output wire m01_axi_wlast;
  output wire m01_axi_wvalid;
  input bit m01_axi_wready;
  input bit [1 : 0] m01_axi_bresp;
  input bit m01_axi_bvalid;
  output wire m01_axi_bready;
  output wire [34 : 0] m01_axi_araddr;
  output wire [7 : 0] m01_axi_arlen;
  output wire [2 : 0] m01_axi_arsize;
  output wire [1 : 0] m01_axi_arburst;
  output wire [2 : 0] m01_axi_arprot;
  output wire m01_axi_arvalid;
  input bit m01_axi_arready;
  input bit [511 : 0] m01_axi_rdata;
  input bit [1 : 0] m01_axi_rresp;
  input bit m01_axi_rlast;
  input bit m01_axi_rvalid;
  output wire m01_axi_rready;
  input bit m01_axi_aclk;
  input bit m01_axi_aresetn;
  input bit [0 : 0] s03_axi_awid;
  input bit [63 : 0] s03_axi_awaddr;
  input bit [7 : 0] s03_axi_awlen;
  input bit [2 : 0] s03_axi_awsize;
  input bit [1 : 0] s03_axi_awburst;
  input bit s03_axi_awlock;
  input bit [3 : 0] s03_axi_awcache;
  input bit [2 : 0] s03_axi_awprot;
  input bit [3 : 0] s03_axi_awqos;
  input bit [0 : 0] s03_axi_awuser;
  input bit s03_axi_awvalid;
  output wire s03_axi_awready;
  input bit [31 : 0] s03_axi_wdata;
  input bit [3 : 0] s03_axi_wstrb;
  input bit s03_axi_wlast;
  input bit [0 : 0] s03_axi_wuser;
  input bit s03_axi_wvalid;
  output wire s03_axi_wready;
  output wire [0 : 0] s03_axi_bid;
  output wire [1 : 0] s03_axi_bresp;
  output wire [0 : 0] s03_axi_buser;
  output wire s03_axi_bvalid;
  input bit s03_axi_bready;
  input bit [0 : 0] s03_axi_arid;
  input bit [63 : 0] s03_axi_araddr;
  input bit [7 : 0] s03_axi_arlen;
  input bit [2 : 0] s03_axi_arsize;
  input bit [1 : 0] s03_axi_arburst;
  input bit s03_axi_arlock;
  input bit [3 : 0] s03_axi_arcache;
  input bit [2 : 0] s03_axi_arprot;
  input bit [3 : 0] s03_axi_arqos;
  input bit [0 : 0] s03_axi_aruser;
  input bit s03_axi_arvalid;
  output wire s03_axi_arready;
  output wire [0 : 0] s03_axi_rid;
  output wire [31 : 0] s03_axi_rdata;
  output wire [1 : 0] s03_axi_rresp;
  output wire s03_axi_rlast;
  output wire [0 : 0] s03_axi_ruser;
  output wire s03_axi_rvalid;
  input bit s03_axi_rready;
  input bit s03_axi_aclk;
  input bit s03_axi_aresetn;
  input bit [0 : 0] s01_axi_awid;
  input bit [63 : 0] s01_axi_awaddr;
  input bit [7 : 0] s01_axi_awlen;
  input bit [2 : 0] s01_axi_awsize;
  input bit [1 : 0] s01_axi_awburst;
  input bit s01_axi_awlock;
  input bit [3 : 0] s01_axi_awcache;
  input bit [2 : 0] s01_axi_awprot;
  input bit [3 : 0] s01_axi_awqos;
  input bit [0 : 0] s01_axi_awuser;
  input bit s01_axi_awvalid;
  output wire s01_axi_awready;
  input bit [31 : 0] s01_axi_wdata;
  input bit [3 : 0] s01_axi_wstrb;
  input bit s01_axi_wlast;
  input bit [0 : 0] s01_axi_wuser;
  input bit s01_axi_wvalid;
  output wire s01_axi_wready;
  output wire [0 : 0] s01_axi_bid;
  output wire [1 : 0] s01_axi_bresp;
  output wire [0 : 0] s01_axi_buser;
  output wire s01_axi_bvalid;
  input bit s01_axi_bready;
  input bit [0 : 0] s01_axi_arid;
  input bit [63 : 0] s01_axi_araddr;
  input bit [7 : 0] s01_axi_arlen;
  input bit [2 : 0] s01_axi_arsize;
  input bit [1 : 0] s01_axi_arburst;
  input bit s01_axi_arlock;
  input bit [3 : 0] s01_axi_arcache;
  input bit [2 : 0] s01_axi_arprot;
  input bit [3 : 0] s01_axi_arqos;
  input bit [0 : 0] s01_axi_aruser;
  input bit s01_axi_arvalid;
  output wire s01_axi_arready;
  output wire [0 : 0] s01_axi_rid;
  output wire [31 : 0] s01_axi_rdata;
  output wire [1 : 0] s01_axi_rresp;
  output wire s01_axi_rlast;
  output wire [0 : 0] s01_axi_ruser;
  output wire s01_axi_rvalid;
  input bit s01_axi_rready;
  input bit s01_axi_aclk;
  input bit s01_axi_aresetn;
  input bit [0 : 0] s02_axi_awid;
  input bit [63 : 0] s02_axi_awaddr;
  input bit [7 : 0] s02_axi_awlen;
  input bit [2 : 0] s02_axi_awsize;
  input bit [1 : 0] s02_axi_awburst;
  input bit s02_axi_awlock;
  input bit [3 : 0] s02_axi_awcache;
  input bit [2 : 0] s02_axi_awprot;
  input bit [3 : 0] s02_axi_awqos;
  input bit [0 : 0] s02_axi_awuser;
  input bit s02_axi_awvalid;
  output wire s02_axi_awready;
  input bit [31 : 0] s02_axi_wdata;
  input bit [3 : 0] s02_axi_wstrb;
  input bit s02_axi_wlast;
  input bit [0 : 0] s02_axi_wuser;
  input bit s02_axi_wvalid;
  output wire s02_axi_wready;
  output wire [0 : 0] s02_axi_bid;
  output wire [1 : 0] s02_axi_bresp;
  output wire [0 : 0] s02_axi_buser;
  output wire s02_axi_bvalid;
  input bit s02_axi_bready;
  input bit [0 : 0] s02_axi_arid;
  input bit [63 : 0] s02_axi_araddr;
  input bit [7 : 0] s02_axi_arlen;
  input bit [2 : 0] s02_axi_arsize;
  input bit [1 : 0] s02_axi_arburst;
  input bit s02_axi_arlock;
  input bit [3 : 0] s02_axi_arcache;
  input bit [2 : 0] s02_axi_arprot;
  input bit [3 : 0] s02_axi_arqos;
  input bit [0 : 0] s02_axi_aruser;
  input bit s02_axi_arvalid;
  output wire s02_axi_arready;
  output wire [0 : 0] s02_axi_rid;
  output wire [31 : 0] s02_axi_rdata;
  output wire [1 : 0] s02_axi_rresp;
  output wire s02_axi_rlast;
  output wire [0 : 0] s02_axi_ruser;
  output wire s02_axi_rvalid;
  input bit s02_axi_rready;
  input bit s02_axi_aclk;
  input bit s02_axi_aresetn;
  input bit [63 : 0] s04_axi_awaddr;
  input bit [7 : 0] s04_axi_awlen;
  input bit [2 : 0] s04_axi_awsize;
  input bit s04_axi_awlock;
  input bit [3 : 0] s04_axi_awcache;
  input bit [2 : 0] s04_axi_awprot;
  input bit [3 : 0] s04_axi_awregion;
  input bit [3 : 0] s04_axi_awqos;
  input bit s04_axi_awvalid;
  output wire s04_axi_awready;
  input bit [511 : 0] s04_axi_wdata;
  input bit [63 : 0] s04_axi_wstrb;
  input bit s04_axi_wlast;
  input bit s04_axi_wvalid;
  output wire s04_axi_wready;
  output wire [1 : 0] s04_axi_bresp;
  output wire s04_axi_bvalid;
  input bit s04_axi_bready;
  input bit [63 : 0] s04_axi_araddr;
  input bit [7 : 0] s04_axi_arlen;
  input bit [2 : 0] s04_axi_arsize;
  input bit s04_axi_arlock;
  input bit [3 : 0] s04_axi_arcache;
  input bit [2 : 0] s04_axi_arprot;
  input bit [3 : 0] s04_axi_arregion;
  input bit [3 : 0] s04_axi_arqos;
  input bit s04_axi_arvalid;
  output wire s04_axi_arready;
  output wire [511 : 0] s04_axi_rdata;
  output wire [1 : 0] s04_axi_rresp;
  output wire s04_axi_rlast;
  output wire s04_axi_rvalid;
  input bit s04_axi_rready;
  input bit s04_axi_aclk;
  input bit s04_axi_aresetn;
endmodule
`endif
