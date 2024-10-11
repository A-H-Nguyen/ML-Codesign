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
// Filename:    bd_d216_plram_0_0_stub.sv
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
module bd_d216_plram_0_0 (
  input bit [0 : 0] s00_axi_awid,
  input bit [63 : 0] s00_axi_awaddr,
  input bit [7 : 0] s00_axi_awlen,
  input bit [2 : 0] s00_axi_awsize,
  input bit [1 : 0] s00_axi_awburst,
  input bit_as_bool s00_axi_awlock,
  input bit [3 : 0] s00_axi_awcache,
  input bit [2 : 0] s00_axi_awprot,
  input bit [3 : 0] s00_axi_awregion,
  input bit [3 : 0] s00_axi_awqos,
  input bit [0 : 0] s00_axi_awuser,
  input bit_as_bool s00_axi_awvalid,
  output bit_as_bool s00_axi_awready,
  input bit [511 : 0] s00_axi_wdata,
  input bit [63 : 0] s00_axi_wstrb,
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
  input bit [3 : 0] s00_axi_arregion,
  input bit [3 : 0] s00_axi_arqos,
  input bit [0 : 0] s00_axi_aruser,
  input bit_as_bool s00_axi_arvalid,
  output bit_as_bool s00_axi_arready,
  output bit [0 : 0] s00_axi_rid,
  output bit [511 : 0] s00_axi_rdata,
  output bit [1 : 0] s00_axi_rresp,
  output bit_as_bool s00_axi_rlast,
  output bit [0 : 0] s00_axi_ruser,
  output bit_as_bool s00_axi_rvalid,
  input bit_as_bool s00_axi_rready,
  input bit_as_bool s00_axi_aclk,
  input bit_as_bool s00_axi_aresetn
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module bd_d216_plram_0_0 (s00_axi_awid,s00_axi_awaddr,s00_axi_awlen,s00_axi_awsize,s00_axi_awburst,s00_axi_awlock,s00_axi_awcache,s00_axi_awprot,s00_axi_awregion,s00_axi_awqos,s00_axi_awuser,s00_axi_awvalid,s00_axi_awready,s00_axi_wdata,s00_axi_wstrb,s00_axi_wlast,s00_axi_wuser,s00_axi_wvalid,s00_axi_wready,s00_axi_bid,s00_axi_bresp,s00_axi_buser,s00_axi_bvalid,s00_axi_bready,s00_axi_arid,s00_axi_araddr,s00_axi_arlen,s00_axi_arsize,s00_axi_arburst,s00_axi_arlock,s00_axi_arcache,s00_axi_arprot,s00_axi_arregion,s00_axi_arqos,s00_axi_aruser,s00_axi_arvalid,s00_axi_arready,s00_axi_rid,s00_axi_rdata,s00_axi_rresp,s00_axi_rlast,s00_axi_ruser,s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn)
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
  input bit [3 : 0] s00_axi_awregion;
  input bit [3 : 0] s00_axi_awqos;
  input bit [0 : 0] s00_axi_awuser;
  input bit s00_axi_awvalid;
  output wire s00_axi_awready;
  input bit [511 : 0] s00_axi_wdata;
  input bit [63 : 0] s00_axi_wstrb;
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
  input bit [3 : 0] s00_axi_arregion;
  input bit [3 : 0] s00_axi_arqos;
  input bit [0 : 0] s00_axi_aruser;
  input bit s00_axi_arvalid;
  output wire s00_axi_arready;
  output wire [0 : 0] s00_axi_rid;
  output wire [511 : 0] s00_axi_rdata;
  output wire [1 : 0] s00_axi_rresp;
  output wire s00_axi_rlast;
  output wire [0 : 0] s00_axi_ruser;
  output wire s00_axi_rvalid;
  input bit s00_axi_rready;
  input bit s00_axi_aclk;
  input bit s00_axi_aresetn;
endmodule
`endif

`ifdef RIVIERA
(* SC_MODULE_EXPORT *)
module bd_d216_plram_0_0 (s00_axi_awid,s00_axi_awaddr,s00_axi_awlen,s00_axi_awsize,s00_axi_awburst,s00_axi_awlock,s00_axi_awcache,s00_axi_awprot,s00_axi_awregion,s00_axi_awqos,s00_axi_awuser,s00_axi_awvalid,s00_axi_awready,s00_axi_wdata,s00_axi_wstrb,s00_axi_wlast,s00_axi_wuser,s00_axi_wvalid,s00_axi_wready,s00_axi_bid,s00_axi_bresp,s00_axi_buser,s00_axi_bvalid,s00_axi_bready,s00_axi_arid,s00_axi_araddr,s00_axi_arlen,s00_axi_arsize,s00_axi_arburst,s00_axi_arlock,s00_axi_arcache,s00_axi_arprot,s00_axi_arregion,s00_axi_arqos,s00_axi_aruser,s00_axi_arvalid,s00_axi_arready,s00_axi_rid,s00_axi_rdata,s00_axi_rresp,s00_axi_rlast,s00_axi_ruser,s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn)
  input bit [0 : 0] s00_axi_awid;
  input bit [63 : 0] s00_axi_awaddr;
  input bit [7 : 0] s00_axi_awlen;
  input bit [2 : 0] s00_axi_awsize;
  input bit [1 : 0] s00_axi_awburst;
  input bit s00_axi_awlock;
  input bit [3 : 0] s00_axi_awcache;
  input bit [2 : 0] s00_axi_awprot;
  input bit [3 : 0] s00_axi_awregion;
  input bit [3 : 0] s00_axi_awqos;
  input bit [0 : 0] s00_axi_awuser;
  input bit s00_axi_awvalid;
  output wire s00_axi_awready;
  input bit [511 : 0] s00_axi_wdata;
  input bit [63 : 0] s00_axi_wstrb;
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
  input bit [3 : 0] s00_axi_arregion;
  input bit [3 : 0] s00_axi_arqos;
  input bit [0 : 0] s00_axi_aruser;
  input bit s00_axi_arvalid;
  output wire s00_axi_arready;
  output wire [0 : 0] s00_axi_rid;
  output wire [511 : 0] s00_axi_rdata;
  output wire [1 : 0] s00_axi_rresp;
  output wire s00_axi_rlast;
  output wire [0 : 0] s00_axi_ruser;
  output wire s00_axi_rvalid;
  input bit s00_axi_rready;
  input bit s00_axi_aclk;
  input bit s00_axi_aresetn;
endmodule
`endif
