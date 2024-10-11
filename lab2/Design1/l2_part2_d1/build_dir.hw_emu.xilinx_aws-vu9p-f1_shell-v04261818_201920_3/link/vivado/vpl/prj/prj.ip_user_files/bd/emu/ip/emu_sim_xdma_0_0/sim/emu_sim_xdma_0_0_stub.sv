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
// Filename:    emu_sim_xdma_0_0_stub.sv
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
module emu_sim_xdma_0_0 (
  output bit [0 : 0] m_aximm_awid,
  output bit [63 : 0] m_aximm_awaddr,
  output bit [7 : 0] m_aximm_awlen,
  output bit [2 : 0] m_aximm_awsize,
  output bit [1 : 0] m_aximm_awburst,
  output bit_as_bool m_aximm_awlock,
  output bit [3 : 0] m_aximm_awcache,
  output bit [2 : 0] m_aximm_awprot,
  output bit [3 : 0] m_aximm_awqos,
  output bit [31 : 0] m_aximm_awuser,
  output bit_as_bool m_aximm_awvalid,
  input bit_as_bool m_aximm_awready,
  output bit [31 : 0] m_aximm_wdata,
  output bit [3 : 0] m_aximm_wstrb,
  output bit_as_bool m_aximm_wlast,
  output bit [0 : 0] m_aximm_wuser,
  output bit_as_bool m_aximm_wvalid,
  input bit_as_bool m_aximm_wready,
  input bit [0 : 0] m_aximm_bid,
  input bit [1 : 0] m_aximm_bresp,
  input bit [0 : 0] m_aximm_buser,
  input bit_as_bool m_aximm_bvalid,
  output bit_as_bool m_aximm_bready,
  output bit [0 : 0] m_aximm_arid,
  output bit [63 : 0] m_aximm_araddr,
  output bit [7 : 0] m_aximm_arlen,
  output bit [2 : 0] m_aximm_arsize,
  output bit [1 : 0] m_aximm_arburst,
  output bit_as_bool m_aximm_arlock,
  output bit [3 : 0] m_aximm_arcache,
  output bit [2 : 0] m_aximm_arprot,
  output bit [3 : 0] m_aximm_arqos,
  output bit [31 : 0] m_aximm_aruser,
  output bit_as_bool m_aximm_arvalid,
  input bit_as_bool m_aximm_arready,
  input bit [0 : 0] m_aximm_rid,
  input bit [31 : 0] m_aximm_rdata,
  input bit [1 : 0] m_aximm_rresp,
  input bit_as_bool m_aximm_rlast,
  input bit [0 : 0] m_aximm_ruser,
  input bit_as_bool m_aximm_rvalid,
  output bit_as_bool m_aximm_rready,
  input bit_as_bool m_aximm_aclk,
  input bit_as_bool m_aximm_aresetn,
  output bit [63 : 0] m_axictrl_awaddr,
  output bit [2 : 0] m_axictrl_awprot,
  output bit_as_bool m_axictrl_awvalid,
  input bit_as_bool m_axictrl_awready,
  output bit [31 : 0] m_axictrl_wdata,
  output bit [3 : 0] m_axictrl_wstrb,
  output bit_as_bool m_axictrl_wvalid,
  input bit_as_bool m_axictrl_wready,
  input bit [1 : 0] m_axictrl_bresp,
  input bit_as_bool m_axictrl_bvalid,
  output bit_as_bool m_axictrl_bready,
  output bit [63 : 0] m_axictrl_araddr,
  output bit [2 : 0] m_axictrl_arprot,
  output bit_as_bool m_axictrl_arvalid,
  input bit_as_bool m_axictrl_arready,
  input bit [31 : 0] m_axictrl_rdata,
  input bit [1 : 0] m_axictrl_rresp,
  input bit_as_bool m_axictrl_rvalid,
  output bit_as_bool m_axictrl_rready,
  input bit_as_bool m_axictrl_aclk,
  input bit_as_bool m_axictrl_aresetn
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module emu_sim_xdma_0_0 (m_aximm_awid,m_aximm_awaddr,m_aximm_awlen,m_aximm_awsize,m_aximm_awburst,m_aximm_awlock,m_aximm_awcache,m_aximm_awprot,m_aximm_awqos,m_aximm_awuser,m_aximm_awvalid,m_aximm_awready,m_aximm_wdata,m_aximm_wstrb,m_aximm_wlast,m_aximm_wuser,m_aximm_wvalid,m_aximm_wready,m_aximm_bid,m_aximm_bresp,m_aximm_buser,m_aximm_bvalid,m_aximm_bready,m_aximm_arid,m_aximm_araddr,m_aximm_arlen,m_aximm_arsize,m_aximm_arburst,m_aximm_arlock,m_aximm_arcache,m_aximm_arprot,m_aximm_arqos,m_aximm_aruser,m_aximm_arvalid,m_aximm_arready,m_aximm_rid,m_aximm_rdata,m_aximm_rresp,m_aximm_rlast,m_aximm_ruser,m_aximm_rvalid,m_aximm_rready,m_aximm_aclk,m_aximm_aresetn,m_axictrl_awaddr,m_axictrl_awprot,m_axictrl_awvalid,m_axictrl_awready,m_axictrl_wdata,m_axictrl_wstrb,m_axictrl_wvalid,m_axictrl_wready,m_axictrl_bresp,m_axictrl_bvalid,m_axictrl_bready,m_axictrl_araddr,m_axictrl_arprot,m_axictrl_arvalid,m_axictrl_arready,m_axictrl_rdata,m_axictrl_rresp,m_axictrl_rvalid,m_axictrl_rready,m_axictrl_aclk,m_axictrl_aresetn)
(* integer foreign = "SystemC";
*);
  output wire [0 : 0] m_aximm_awid;
  output wire [63 : 0] m_aximm_awaddr;
  output wire [7 : 0] m_aximm_awlen;
  output wire [2 : 0] m_aximm_awsize;
  output wire [1 : 0] m_aximm_awburst;
  output wire m_aximm_awlock;
  output wire [3 : 0] m_aximm_awcache;
  output wire [2 : 0] m_aximm_awprot;
  output wire [3 : 0] m_aximm_awqos;
  output wire [31 : 0] m_aximm_awuser;
  output wire m_aximm_awvalid;
  input bit m_aximm_awready;
  output wire [31 : 0] m_aximm_wdata;
  output wire [3 : 0] m_aximm_wstrb;
  output wire m_aximm_wlast;
  output wire [0 : 0] m_aximm_wuser;
  output wire m_aximm_wvalid;
  input bit m_aximm_wready;
  input bit [0 : 0] m_aximm_bid;
  input bit [1 : 0] m_aximm_bresp;
  input bit [0 : 0] m_aximm_buser;
  input bit m_aximm_bvalid;
  output wire m_aximm_bready;
  output wire [0 : 0] m_aximm_arid;
  output wire [63 : 0] m_aximm_araddr;
  output wire [7 : 0] m_aximm_arlen;
  output wire [2 : 0] m_aximm_arsize;
  output wire [1 : 0] m_aximm_arburst;
  output wire m_aximm_arlock;
  output wire [3 : 0] m_aximm_arcache;
  output wire [2 : 0] m_aximm_arprot;
  output wire [3 : 0] m_aximm_arqos;
  output wire [31 : 0] m_aximm_aruser;
  output wire m_aximm_arvalid;
  input bit m_aximm_arready;
  input bit [0 : 0] m_aximm_rid;
  input bit [31 : 0] m_aximm_rdata;
  input bit [1 : 0] m_aximm_rresp;
  input bit m_aximm_rlast;
  input bit [0 : 0] m_aximm_ruser;
  input bit m_aximm_rvalid;
  output wire m_aximm_rready;
  input bit m_aximm_aclk;
  input bit m_aximm_aresetn;
  output wire [63 : 0] m_axictrl_awaddr;
  output wire [2 : 0] m_axictrl_awprot;
  output wire m_axictrl_awvalid;
  input bit m_axictrl_awready;
  output wire [31 : 0] m_axictrl_wdata;
  output wire [3 : 0] m_axictrl_wstrb;
  output wire m_axictrl_wvalid;
  input bit m_axictrl_wready;
  input bit [1 : 0] m_axictrl_bresp;
  input bit m_axictrl_bvalid;
  output wire m_axictrl_bready;
  output wire [63 : 0] m_axictrl_araddr;
  output wire [2 : 0] m_axictrl_arprot;
  output wire m_axictrl_arvalid;
  input bit m_axictrl_arready;
  input bit [31 : 0] m_axictrl_rdata;
  input bit [1 : 0] m_axictrl_rresp;
  input bit m_axictrl_rvalid;
  output wire m_axictrl_rready;
  input bit m_axictrl_aclk;
  input bit m_axictrl_aresetn;
endmodule
`endif

`ifdef RIVIERA
(* SC_MODULE_EXPORT *)
module emu_sim_xdma_0_0 (m_aximm_awid,m_aximm_awaddr,m_aximm_awlen,m_aximm_awsize,m_aximm_awburst,m_aximm_awlock,m_aximm_awcache,m_aximm_awprot,m_aximm_awqos,m_aximm_awuser,m_aximm_awvalid,m_aximm_awready,m_aximm_wdata,m_aximm_wstrb,m_aximm_wlast,m_aximm_wuser,m_aximm_wvalid,m_aximm_wready,m_aximm_bid,m_aximm_bresp,m_aximm_buser,m_aximm_bvalid,m_aximm_bready,m_aximm_arid,m_aximm_araddr,m_aximm_arlen,m_aximm_arsize,m_aximm_arburst,m_aximm_arlock,m_aximm_arcache,m_aximm_arprot,m_aximm_arqos,m_aximm_aruser,m_aximm_arvalid,m_aximm_arready,m_aximm_rid,m_aximm_rdata,m_aximm_rresp,m_aximm_rlast,m_aximm_ruser,m_aximm_rvalid,m_aximm_rready,m_aximm_aclk,m_aximm_aresetn,m_axictrl_awaddr,m_axictrl_awprot,m_axictrl_awvalid,m_axictrl_awready,m_axictrl_wdata,m_axictrl_wstrb,m_axictrl_wvalid,m_axictrl_wready,m_axictrl_bresp,m_axictrl_bvalid,m_axictrl_bready,m_axictrl_araddr,m_axictrl_arprot,m_axictrl_arvalid,m_axictrl_arready,m_axictrl_rdata,m_axictrl_rresp,m_axictrl_rvalid,m_axictrl_rready,m_axictrl_aclk,m_axictrl_aresetn)
  output wire [0 : 0] m_aximm_awid;
  output wire [63 : 0] m_aximm_awaddr;
  output wire [7 : 0] m_aximm_awlen;
  output wire [2 : 0] m_aximm_awsize;
  output wire [1 : 0] m_aximm_awburst;
  output wire m_aximm_awlock;
  output wire [3 : 0] m_aximm_awcache;
  output wire [2 : 0] m_aximm_awprot;
  output wire [3 : 0] m_aximm_awqos;
  output wire [31 : 0] m_aximm_awuser;
  output wire m_aximm_awvalid;
  input bit m_aximm_awready;
  output wire [31 : 0] m_aximm_wdata;
  output wire [3 : 0] m_aximm_wstrb;
  output wire m_aximm_wlast;
  output wire [0 : 0] m_aximm_wuser;
  output wire m_aximm_wvalid;
  input bit m_aximm_wready;
  input bit [0 : 0] m_aximm_bid;
  input bit [1 : 0] m_aximm_bresp;
  input bit [0 : 0] m_aximm_buser;
  input bit m_aximm_bvalid;
  output wire m_aximm_bready;
  output wire [0 : 0] m_aximm_arid;
  output wire [63 : 0] m_aximm_araddr;
  output wire [7 : 0] m_aximm_arlen;
  output wire [2 : 0] m_aximm_arsize;
  output wire [1 : 0] m_aximm_arburst;
  output wire m_aximm_arlock;
  output wire [3 : 0] m_aximm_arcache;
  output wire [2 : 0] m_aximm_arprot;
  output wire [3 : 0] m_aximm_arqos;
  output wire [31 : 0] m_aximm_aruser;
  output wire m_aximm_arvalid;
  input bit m_aximm_arready;
  input bit [0 : 0] m_aximm_rid;
  input bit [31 : 0] m_aximm_rdata;
  input bit [1 : 0] m_aximm_rresp;
  input bit m_aximm_rlast;
  input bit [0 : 0] m_aximm_ruser;
  input bit m_aximm_rvalid;
  output wire m_aximm_rready;
  input bit m_aximm_aclk;
  input bit m_aximm_aresetn;
  output wire [63 : 0] m_axictrl_awaddr;
  output wire [2 : 0] m_axictrl_awprot;
  output wire m_axictrl_awvalid;
  input bit m_axictrl_awready;
  output wire [31 : 0] m_axictrl_wdata;
  output wire [3 : 0] m_axictrl_wstrb;
  output wire m_axictrl_wvalid;
  input bit m_axictrl_wready;
  input bit [1 : 0] m_axictrl_bresp;
  input bit m_axictrl_bvalid;
  output wire m_axictrl_bready;
  output wire [63 : 0] m_axictrl_araddr;
  output wire [2 : 0] m_axictrl_arprot;
  output wire m_axictrl_arvalid;
  input bit m_axictrl_arready;
  input bit [31 : 0] m_axictrl_rdata;
  input bit [1 : 0] m_axictrl_rresp;
  input bit m_axictrl_rvalid;
  output wire m_axictrl_rready;
  input bit m_axictrl_aclk;
  input bit m_axictrl_aresetn;
endmodule
`endif
