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
// Filename:    pfm_dynamic_sim_ddr_2_0_stub.sv
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
module pfm_dynamic_sim_ddr_2_0 (
  input bit_as_bool c0_ui_clk,
  input bit [4 : 0] c0_ddr_saxi_awid,
  input bit [33 : 0] c0_ddr_saxi_awaddr,
  input bit [7 : 0] c0_ddr_saxi_awlen,
  input bit [2 : 0] c0_ddr_saxi_awsize,
  input bit [1 : 0] c0_ddr_saxi_awburst,
  input bit_as_bool c0_ddr_saxi_awlock,
  input bit [3 : 0] c0_ddr_saxi_awcache,
  input bit [2 : 0] c0_ddr_saxi_awprot,
  input bit [3 : 0] c0_ddr_saxi_awregion,
  input bit [3 : 0] c0_ddr_saxi_awqos,
  input bit [31 : 0] c0_ddr_saxi_awuser,
  input bit_as_bool c0_ddr_saxi_awvalid,
  output bit_as_bool c0_ddr_saxi_awready,
  input bit [511 : 0] c0_ddr_saxi_wdata,
  input bit [63 : 0] c0_ddr_saxi_wstrb,
  input bit_as_bool c0_ddr_saxi_wlast,
  input bit [0 : 0] c0_ddr_saxi_wuser,
  input bit_as_bool c0_ddr_saxi_wvalid,
  output bit_as_bool c0_ddr_saxi_wready,
  output bit [4 : 0] c0_ddr_saxi_bid,
  output bit [1 : 0] c0_ddr_saxi_bresp,
  output bit [0 : 0] c0_ddr_saxi_buser,
  output bit_as_bool c0_ddr_saxi_bvalid,
  input bit_as_bool c0_ddr_saxi_bready,
  input bit [4 : 0] c0_ddr_saxi_arid,
  input bit [33 : 0] c0_ddr_saxi_araddr,
  input bit [7 : 0] c0_ddr_saxi_arlen,
  input bit [2 : 0] c0_ddr_saxi_arsize,
  input bit [1 : 0] c0_ddr_saxi_arburst,
  input bit_as_bool c0_ddr_saxi_arlock,
  input bit [3 : 0] c0_ddr_saxi_arcache,
  input bit [2 : 0] c0_ddr_saxi_arprot,
  input bit [3 : 0] c0_ddr_saxi_arregion,
  input bit [3 : 0] c0_ddr_saxi_arqos,
  input bit [31 : 0] c0_ddr_saxi_aruser,
  input bit_as_bool c0_ddr_saxi_arvalid,
  output bit_as_bool c0_ddr_saxi_arready,
  output bit [4 : 0] c0_ddr_saxi_rid,
  output bit [511 : 0] c0_ddr_saxi_rdata,
  output bit [1 : 0] c0_ddr_saxi_rresp,
  output bit_as_bool c0_ddr_saxi_rlast,
  output bit [0 : 0] c0_ddr_saxi_ruser,
  output bit_as_bool c0_ddr_saxi_rvalid,
  input bit_as_bool c0_ddr_saxi_rready,
  input bit_as_bool c0_ddr_saxi_aclk,
  input bit_as_bool c0_ddr_saxi_aresetn,
  input bit [4 : 0] s_xdma_axi_awid,
  input bit [31 : 0] s_xdma_axi_awaddr,
  input bit [7 : 0] s_xdma_axi_awlen,
  input bit [2 : 0] s_xdma_axi_awsize,
  input bit [1 : 0] s_xdma_axi_awburst,
  input bit_as_bool s_xdma_axi_awlock,
  input bit [3 : 0] s_xdma_axi_awcache,
  input bit [2 : 0] s_xdma_axi_awprot,
  input bit [3 : 0] s_xdma_axi_awregion,
  input bit [3 : 0] s_xdma_axi_awqos,
  input bit [31 : 0] s_xdma_axi_awuser,
  input bit_as_bool s_xdma_axi_awvalid,
  output bit_as_bool s_xdma_axi_awready,
  input bit [31 : 0] s_xdma_axi_wdata,
  input bit [3 : 0] s_xdma_axi_wstrb,
  input bit_as_bool s_xdma_axi_wlast,
  input bit [0 : 0] s_xdma_axi_wuser,
  input bit_as_bool s_xdma_axi_wvalid,
  output bit_as_bool s_xdma_axi_wready,
  output bit [4 : 0] s_xdma_axi_bid,
  output bit [1 : 0] s_xdma_axi_bresp,
  output bit [0 : 0] s_xdma_axi_buser,
  output bit_as_bool s_xdma_axi_bvalid,
  input bit_as_bool s_xdma_axi_bready,
  input bit [4 : 0] s_xdma_axi_arid,
  input bit [31 : 0] s_xdma_axi_araddr,
  input bit [7 : 0] s_xdma_axi_arlen,
  input bit [2 : 0] s_xdma_axi_arsize,
  input bit [1 : 0] s_xdma_axi_arburst,
  input bit_as_bool s_xdma_axi_arlock,
  input bit [3 : 0] s_xdma_axi_arcache,
  input bit [2 : 0] s_xdma_axi_arprot,
  input bit [3 : 0] s_xdma_axi_arregion,
  input bit [3 : 0] s_xdma_axi_arqos,
  input bit [31 : 0] s_xdma_axi_aruser,
  input bit_as_bool s_xdma_axi_arvalid,
  output bit_as_bool s_xdma_axi_arready,
  output bit [4 : 0] s_xdma_axi_rid,
  output bit [31 : 0] s_xdma_axi_rdata,
  output bit [1 : 0] s_xdma_axi_rresp,
  output bit_as_bool s_xdma_axi_rlast,
  output bit [0 : 0] s_xdma_axi_ruser,
  output bit_as_bool s_xdma_axi_rvalid,
  input bit_as_bool s_xdma_axi_rready,
  input bit_as_bool s_xdma_axi_aclk,
  input bit_as_bool s_xdma_axi_aresetn
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module pfm_dynamic_sim_ddr_2_0 (c0_ui_clk,c0_ddr_saxi_awid,c0_ddr_saxi_awaddr,c0_ddr_saxi_awlen,c0_ddr_saxi_awsize,c0_ddr_saxi_awburst,c0_ddr_saxi_awlock,c0_ddr_saxi_awcache,c0_ddr_saxi_awprot,c0_ddr_saxi_awregion,c0_ddr_saxi_awqos,c0_ddr_saxi_awuser,c0_ddr_saxi_awvalid,c0_ddr_saxi_awready,c0_ddr_saxi_wdata,c0_ddr_saxi_wstrb,c0_ddr_saxi_wlast,c0_ddr_saxi_wuser,c0_ddr_saxi_wvalid,c0_ddr_saxi_wready,c0_ddr_saxi_bid,c0_ddr_saxi_bresp,c0_ddr_saxi_buser,c0_ddr_saxi_bvalid,c0_ddr_saxi_bready,c0_ddr_saxi_arid,c0_ddr_saxi_araddr,c0_ddr_saxi_arlen,c0_ddr_saxi_arsize,c0_ddr_saxi_arburst,c0_ddr_saxi_arlock,c0_ddr_saxi_arcache,c0_ddr_saxi_arprot,c0_ddr_saxi_arregion,c0_ddr_saxi_arqos,c0_ddr_saxi_aruser,c0_ddr_saxi_arvalid,c0_ddr_saxi_arready,c0_ddr_saxi_rid,c0_ddr_saxi_rdata,c0_ddr_saxi_rresp,c0_ddr_saxi_rlast,c0_ddr_saxi_ruser,c0_ddr_saxi_rvalid,c0_ddr_saxi_rready,c0_ddr_saxi_aclk,c0_ddr_saxi_aresetn,s_xdma_axi_awid,s_xdma_axi_awaddr,s_xdma_axi_awlen,s_xdma_axi_awsize,s_xdma_axi_awburst,s_xdma_axi_awlock,s_xdma_axi_awcache,s_xdma_axi_awprot,s_xdma_axi_awregion,s_xdma_axi_awqos,s_xdma_axi_awuser,s_xdma_axi_awvalid,s_xdma_axi_awready,s_xdma_axi_wdata,s_xdma_axi_wstrb,s_xdma_axi_wlast,s_xdma_axi_wuser,s_xdma_axi_wvalid,s_xdma_axi_wready,s_xdma_axi_bid,s_xdma_axi_bresp,s_xdma_axi_buser,s_xdma_axi_bvalid,s_xdma_axi_bready,s_xdma_axi_arid,s_xdma_axi_araddr,s_xdma_axi_arlen,s_xdma_axi_arsize,s_xdma_axi_arburst,s_xdma_axi_arlock,s_xdma_axi_arcache,s_xdma_axi_arprot,s_xdma_axi_arregion,s_xdma_axi_arqos,s_xdma_axi_aruser,s_xdma_axi_arvalid,s_xdma_axi_arready,s_xdma_axi_rid,s_xdma_axi_rdata,s_xdma_axi_rresp,s_xdma_axi_rlast,s_xdma_axi_ruser,s_xdma_axi_rvalid,s_xdma_axi_rready,s_xdma_axi_aclk,s_xdma_axi_aresetn)
(* integer foreign = "SystemC";
*);
  input bit c0_ui_clk;
  input bit [4 : 0] c0_ddr_saxi_awid;
  input bit [33 : 0] c0_ddr_saxi_awaddr;
  input bit [7 : 0] c0_ddr_saxi_awlen;
  input bit [2 : 0] c0_ddr_saxi_awsize;
  input bit [1 : 0] c0_ddr_saxi_awburst;
  input bit c0_ddr_saxi_awlock;
  input bit [3 : 0] c0_ddr_saxi_awcache;
  input bit [2 : 0] c0_ddr_saxi_awprot;
  input bit [3 : 0] c0_ddr_saxi_awregion;
  input bit [3 : 0] c0_ddr_saxi_awqos;
  input bit [31 : 0] c0_ddr_saxi_awuser;
  input bit c0_ddr_saxi_awvalid;
  output wire c0_ddr_saxi_awready;
  input bit [511 : 0] c0_ddr_saxi_wdata;
  input bit [63 : 0] c0_ddr_saxi_wstrb;
  input bit c0_ddr_saxi_wlast;
  input bit [0 : 0] c0_ddr_saxi_wuser;
  input bit c0_ddr_saxi_wvalid;
  output wire c0_ddr_saxi_wready;
  output wire [4 : 0] c0_ddr_saxi_bid;
  output wire [1 : 0] c0_ddr_saxi_bresp;
  output wire [0 : 0] c0_ddr_saxi_buser;
  output wire c0_ddr_saxi_bvalid;
  input bit c0_ddr_saxi_bready;
  input bit [4 : 0] c0_ddr_saxi_arid;
  input bit [33 : 0] c0_ddr_saxi_araddr;
  input bit [7 : 0] c0_ddr_saxi_arlen;
  input bit [2 : 0] c0_ddr_saxi_arsize;
  input bit [1 : 0] c0_ddr_saxi_arburst;
  input bit c0_ddr_saxi_arlock;
  input bit [3 : 0] c0_ddr_saxi_arcache;
  input bit [2 : 0] c0_ddr_saxi_arprot;
  input bit [3 : 0] c0_ddr_saxi_arregion;
  input bit [3 : 0] c0_ddr_saxi_arqos;
  input bit [31 : 0] c0_ddr_saxi_aruser;
  input bit c0_ddr_saxi_arvalid;
  output wire c0_ddr_saxi_arready;
  output wire [4 : 0] c0_ddr_saxi_rid;
  output wire [511 : 0] c0_ddr_saxi_rdata;
  output wire [1 : 0] c0_ddr_saxi_rresp;
  output wire c0_ddr_saxi_rlast;
  output wire [0 : 0] c0_ddr_saxi_ruser;
  output wire c0_ddr_saxi_rvalid;
  input bit c0_ddr_saxi_rready;
  input bit c0_ddr_saxi_aclk;
  input bit c0_ddr_saxi_aresetn;
  input bit [4 : 0] s_xdma_axi_awid;
  input bit [31 : 0] s_xdma_axi_awaddr;
  input bit [7 : 0] s_xdma_axi_awlen;
  input bit [2 : 0] s_xdma_axi_awsize;
  input bit [1 : 0] s_xdma_axi_awburst;
  input bit s_xdma_axi_awlock;
  input bit [3 : 0] s_xdma_axi_awcache;
  input bit [2 : 0] s_xdma_axi_awprot;
  input bit [3 : 0] s_xdma_axi_awregion;
  input bit [3 : 0] s_xdma_axi_awqos;
  input bit [31 : 0] s_xdma_axi_awuser;
  input bit s_xdma_axi_awvalid;
  output wire s_xdma_axi_awready;
  input bit [31 : 0] s_xdma_axi_wdata;
  input bit [3 : 0] s_xdma_axi_wstrb;
  input bit s_xdma_axi_wlast;
  input bit [0 : 0] s_xdma_axi_wuser;
  input bit s_xdma_axi_wvalid;
  output wire s_xdma_axi_wready;
  output wire [4 : 0] s_xdma_axi_bid;
  output wire [1 : 0] s_xdma_axi_bresp;
  output wire [0 : 0] s_xdma_axi_buser;
  output wire s_xdma_axi_bvalid;
  input bit s_xdma_axi_bready;
  input bit [4 : 0] s_xdma_axi_arid;
  input bit [31 : 0] s_xdma_axi_araddr;
  input bit [7 : 0] s_xdma_axi_arlen;
  input bit [2 : 0] s_xdma_axi_arsize;
  input bit [1 : 0] s_xdma_axi_arburst;
  input bit s_xdma_axi_arlock;
  input bit [3 : 0] s_xdma_axi_arcache;
  input bit [2 : 0] s_xdma_axi_arprot;
  input bit [3 : 0] s_xdma_axi_arregion;
  input bit [3 : 0] s_xdma_axi_arqos;
  input bit [31 : 0] s_xdma_axi_aruser;
  input bit s_xdma_axi_arvalid;
  output wire s_xdma_axi_arready;
  output wire [4 : 0] s_xdma_axi_rid;
  output wire [31 : 0] s_xdma_axi_rdata;
  output wire [1 : 0] s_xdma_axi_rresp;
  output wire s_xdma_axi_rlast;
  output wire [0 : 0] s_xdma_axi_ruser;
  output wire s_xdma_axi_rvalid;
  input bit s_xdma_axi_rready;
  input bit s_xdma_axi_aclk;
  input bit s_xdma_axi_aresetn;
endmodule
`endif

`ifdef RIVIERA
(* SC_MODULE_EXPORT *)
module pfm_dynamic_sim_ddr_2_0 (c0_ui_clk,c0_ddr_saxi_awid,c0_ddr_saxi_awaddr,c0_ddr_saxi_awlen,c0_ddr_saxi_awsize,c0_ddr_saxi_awburst,c0_ddr_saxi_awlock,c0_ddr_saxi_awcache,c0_ddr_saxi_awprot,c0_ddr_saxi_awregion,c0_ddr_saxi_awqos,c0_ddr_saxi_awuser,c0_ddr_saxi_awvalid,c0_ddr_saxi_awready,c0_ddr_saxi_wdata,c0_ddr_saxi_wstrb,c0_ddr_saxi_wlast,c0_ddr_saxi_wuser,c0_ddr_saxi_wvalid,c0_ddr_saxi_wready,c0_ddr_saxi_bid,c0_ddr_saxi_bresp,c0_ddr_saxi_buser,c0_ddr_saxi_bvalid,c0_ddr_saxi_bready,c0_ddr_saxi_arid,c0_ddr_saxi_araddr,c0_ddr_saxi_arlen,c0_ddr_saxi_arsize,c0_ddr_saxi_arburst,c0_ddr_saxi_arlock,c0_ddr_saxi_arcache,c0_ddr_saxi_arprot,c0_ddr_saxi_arregion,c0_ddr_saxi_arqos,c0_ddr_saxi_aruser,c0_ddr_saxi_arvalid,c0_ddr_saxi_arready,c0_ddr_saxi_rid,c0_ddr_saxi_rdata,c0_ddr_saxi_rresp,c0_ddr_saxi_rlast,c0_ddr_saxi_ruser,c0_ddr_saxi_rvalid,c0_ddr_saxi_rready,c0_ddr_saxi_aclk,c0_ddr_saxi_aresetn,s_xdma_axi_awid,s_xdma_axi_awaddr,s_xdma_axi_awlen,s_xdma_axi_awsize,s_xdma_axi_awburst,s_xdma_axi_awlock,s_xdma_axi_awcache,s_xdma_axi_awprot,s_xdma_axi_awregion,s_xdma_axi_awqos,s_xdma_axi_awuser,s_xdma_axi_awvalid,s_xdma_axi_awready,s_xdma_axi_wdata,s_xdma_axi_wstrb,s_xdma_axi_wlast,s_xdma_axi_wuser,s_xdma_axi_wvalid,s_xdma_axi_wready,s_xdma_axi_bid,s_xdma_axi_bresp,s_xdma_axi_buser,s_xdma_axi_bvalid,s_xdma_axi_bready,s_xdma_axi_arid,s_xdma_axi_araddr,s_xdma_axi_arlen,s_xdma_axi_arsize,s_xdma_axi_arburst,s_xdma_axi_arlock,s_xdma_axi_arcache,s_xdma_axi_arprot,s_xdma_axi_arregion,s_xdma_axi_arqos,s_xdma_axi_aruser,s_xdma_axi_arvalid,s_xdma_axi_arready,s_xdma_axi_rid,s_xdma_axi_rdata,s_xdma_axi_rresp,s_xdma_axi_rlast,s_xdma_axi_ruser,s_xdma_axi_rvalid,s_xdma_axi_rready,s_xdma_axi_aclk,s_xdma_axi_aresetn)
  input bit c0_ui_clk;
  input bit [4 : 0] c0_ddr_saxi_awid;
  input bit [33 : 0] c0_ddr_saxi_awaddr;
  input bit [7 : 0] c0_ddr_saxi_awlen;
  input bit [2 : 0] c0_ddr_saxi_awsize;
  input bit [1 : 0] c0_ddr_saxi_awburst;
  input bit c0_ddr_saxi_awlock;
  input bit [3 : 0] c0_ddr_saxi_awcache;
  input bit [2 : 0] c0_ddr_saxi_awprot;
  input bit [3 : 0] c0_ddr_saxi_awregion;
  input bit [3 : 0] c0_ddr_saxi_awqos;
  input bit [31 : 0] c0_ddr_saxi_awuser;
  input bit c0_ddr_saxi_awvalid;
  output wire c0_ddr_saxi_awready;
  input bit [511 : 0] c0_ddr_saxi_wdata;
  input bit [63 : 0] c0_ddr_saxi_wstrb;
  input bit c0_ddr_saxi_wlast;
  input bit [0 : 0] c0_ddr_saxi_wuser;
  input bit c0_ddr_saxi_wvalid;
  output wire c0_ddr_saxi_wready;
  output wire [4 : 0] c0_ddr_saxi_bid;
  output wire [1 : 0] c0_ddr_saxi_bresp;
  output wire [0 : 0] c0_ddr_saxi_buser;
  output wire c0_ddr_saxi_bvalid;
  input bit c0_ddr_saxi_bready;
  input bit [4 : 0] c0_ddr_saxi_arid;
  input bit [33 : 0] c0_ddr_saxi_araddr;
  input bit [7 : 0] c0_ddr_saxi_arlen;
  input bit [2 : 0] c0_ddr_saxi_arsize;
  input bit [1 : 0] c0_ddr_saxi_arburst;
  input bit c0_ddr_saxi_arlock;
  input bit [3 : 0] c0_ddr_saxi_arcache;
  input bit [2 : 0] c0_ddr_saxi_arprot;
  input bit [3 : 0] c0_ddr_saxi_arregion;
  input bit [3 : 0] c0_ddr_saxi_arqos;
  input bit [31 : 0] c0_ddr_saxi_aruser;
  input bit c0_ddr_saxi_arvalid;
  output wire c0_ddr_saxi_arready;
  output wire [4 : 0] c0_ddr_saxi_rid;
  output wire [511 : 0] c0_ddr_saxi_rdata;
  output wire [1 : 0] c0_ddr_saxi_rresp;
  output wire c0_ddr_saxi_rlast;
  output wire [0 : 0] c0_ddr_saxi_ruser;
  output wire c0_ddr_saxi_rvalid;
  input bit c0_ddr_saxi_rready;
  input bit c0_ddr_saxi_aclk;
  input bit c0_ddr_saxi_aresetn;
  input bit [4 : 0] s_xdma_axi_awid;
  input bit [31 : 0] s_xdma_axi_awaddr;
  input bit [7 : 0] s_xdma_axi_awlen;
  input bit [2 : 0] s_xdma_axi_awsize;
  input bit [1 : 0] s_xdma_axi_awburst;
  input bit s_xdma_axi_awlock;
  input bit [3 : 0] s_xdma_axi_awcache;
  input bit [2 : 0] s_xdma_axi_awprot;
  input bit [3 : 0] s_xdma_axi_awregion;
  input bit [3 : 0] s_xdma_axi_awqos;
  input bit [31 : 0] s_xdma_axi_awuser;
  input bit s_xdma_axi_awvalid;
  output wire s_xdma_axi_awready;
  input bit [31 : 0] s_xdma_axi_wdata;
  input bit [3 : 0] s_xdma_axi_wstrb;
  input bit s_xdma_axi_wlast;
  input bit [0 : 0] s_xdma_axi_wuser;
  input bit s_xdma_axi_wvalid;
  output wire s_xdma_axi_wready;
  output wire [4 : 0] s_xdma_axi_bid;
  output wire [1 : 0] s_xdma_axi_bresp;
  output wire [0 : 0] s_xdma_axi_buser;
  output wire s_xdma_axi_bvalid;
  input bit s_xdma_axi_bready;
  input bit [4 : 0] s_xdma_axi_arid;
  input bit [31 : 0] s_xdma_axi_araddr;
  input bit [7 : 0] s_xdma_axi_arlen;
  input bit [2 : 0] s_xdma_axi_arsize;
  input bit [1 : 0] s_xdma_axi_arburst;
  input bit s_xdma_axi_arlock;
  input bit [3 : 0] s_xdma_axi_arcache;
  input bit [2 : 0] s_xdma_axi_arprot;
  input bit [3 : 0] s_xdma_axi_arregion;
  input bit [3 : 0] s_xdma_axi_arqos;
  input bit [31 : 0] s_xdma_axi_aruser;
  input bit s_xdma_axi_arvalid;
  output wire s_xdma_axi_arready;
  output wire [4 : 0] s_xdma_axi_rid;
  output wire [31 : 0] s_xdma_axi_rdata;
  output wire [1 : 0] s_xdma_axi_rresp;
  output wire s_xdma_axi_rlast;
  output wire [0 : 0] s_xdma_axi_ruser;
  output wire s_xdma_axi_rvalid;
  input bit s_xdma_axi_rready;
  input bit s_xdma_axi_aclk;
  input bit s_xdma_axi_aresetn;
endmodule
`endif
