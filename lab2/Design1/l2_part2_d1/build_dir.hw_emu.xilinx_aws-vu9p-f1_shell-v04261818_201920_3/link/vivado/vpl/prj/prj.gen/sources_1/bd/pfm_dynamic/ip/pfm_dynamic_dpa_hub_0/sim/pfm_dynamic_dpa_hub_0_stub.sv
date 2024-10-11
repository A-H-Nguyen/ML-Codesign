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
// Filename:    pfm_dynamic_dpa_hub_0_stub.sv
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
module pfm_dynamic_dpa_hub_0 (
  input bit_as_bool s_aximm_clk,
  input bit_as_bool s_aximm_aresetn,
  input bit_as_bool trace_clk,
  input bit_as_bool trace_aresetn,
  input bit_as_bool axilite_clk,
  input bit_as_bool axilite_aresetn,
  output bit_as_bool trace_tready0,
  input bit [63 : 0] trace_tdata0,
  input bit_as_bool trace_tlast0,
  input bit [7 : 0] trace_tid0,
  input bit [7 : 0] trace_tdest0,
  input bit_as_bool trace_tvalid0,
  output bit_as_bool trace_tready1,
  output bit [63 : 0] trace_tdata1,
  input bit_as_bool trace_tlast1,
  input bit [7 : 0] trace_tid1,
  input bit [7 : 0] trace_tdest1,
  input bit_as_bool trace_tvalid1,
  input bit [7 : 0] s_axi_awaddr,
  input bit_as_bool s_axi_awvalid,
  output bit_as_bool s_axi_awready,
  input bit [31 : 0] s_axi_wdata,
  input bit [3 : 0] s_axi_wstrb,
  input bit_as_bool s_axi_wvalid,
  output bit_as_bool s_axi_wready,
  output bit_as_bool s_axi_bvalid,
  input bit_as_bool s_axi_bready,
  output bit [1 : 0] s_axi_bresp,
  input bit [7 : 0] s_axi_araddr,
  input bit_as_bool s_axi_arvalid,
  output bit_as_bool s_axi_arready,
  output bit [31 : 0] s_axi_rdata,
  output bit [1 : 0] s_axi_rresp,
  output bit_as_bool s_axi_rvalid,
  input bit_as_bool s_axi_rready,
  input bit [7 : 0] s_axihub_awaddr,
  input bit_as_bool s_axihub_awvalid,
  output bit_as_bool s_axihub_awready,
  input bit [31 : 0] s_axihub_wdata,
  input bit [3 : 0] s_axihub_wstrb,
  input bit_as_bool s_axihub_wvalid,
  output bit_as_bool s_axihub_wready,
  output bit_as_bool s_axihub_bvalid,
  input bit_as_bool s_axihub_bready,
  output bit [1 : 0] s_axihub_bresp,
  input bit [7 : 0] s_axihub_araddr,
  input bit_as_bool s_axihub_arvalid,
  output bit_as_bool s_axihub_arready,
  output bit [31 : 0] s_axihub_rdata,
  output bit [1 : 0] s_axihub_rresp,
  output bit_as_bool s_axihub_rvalid,
  input bit_as_bool s_axihub_rready,
  input bit [31 : 0] s_aximm_awaddr,
  input bit_as_bool s_aximm_awvalid,
  output bit_as_bool s_aximm_awready,
  input bit [7 : 0] s_aximm_awlen,
  input bit [2 : 0] s_aximm_awsize,
  input bit [1 : 0] s_aximm_awburst,
  input bit [0 : 0] s_aximm_awid,
  input bit [63 : 0] s_aximm_wdata,
  input bit [7 : 0] s_aximm_wstrb,
  input bit_as_bool s_aximm_wvalid,
  output bit_as_bool s_aximm_wready,
  output bit_as_bool s_aximm_bvalid,
  input bit_as_bool s_aximm_bready,
  input bit_as_bool s_aximm_wlast,
  output bit_as_bool s_aximm_rlast,
  output bit [1 : 0] s_aximm_bresp,
  output bit [0 : 0] s_aximm_bid,
  input bit [31 : 0] s_aximm_araddr,
  input bit_as_bool s_aximm_arvalid,
  output bit_as_bool s_aximm_arready,
  input bit [7 : 0] s_aximm_arlen,
  input bit [2 : 0] s_aximm_arsize,
  input bit [1 : 0] s_aximm_arburst,
  input bit [0 : 0] s_aximm_arid,
  output bit [63 : 0] s_aximm_rdata,
  output bit [0 : 0] s_aximm_rid,
  output bit [1 : 0] s_aximm_rresp,
  output bit_as_bool s_aximm_rvalid,
  input bit_as_bool s_aximm_rready
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module pfm_dynamic_dpa_hub_0 (s_aximm_clk,s_aximm_aresetn,trace_clk,trace_aresetn,axilite_clk,axilite_aresetn,trace_tready0,trace_tdata0,trace_tlast0,trace_tid0,trace_tdest0,trace_tvalid0,trace_tready1,trace_tdata1,trace_tlast1,trace_tid1,trace_tdest1,trace_tvalid1,s_axi_awaddr,s_axi_awvalid,s_axi_awready,s_axi_wdata,s_axi_wstrb,s_axi_wvalid,s_axi_wready,s_axi_bvalid,s_axi_bready,s_axi_bresp,s_axi_araddr,s_axi_arvalid,s_axi_arready,s_axi_rdata,s_axi_rresp,s_axi_rvalid,s_axi_rready,s_axihub_awaddr,s_axihub_awvalid,s_axihub_awready,s_axihub_wdata,s_axihub_wstrb,s_axihub_wvalid,s_axihub_wready,s_axihub_bvalid,s_axihub_bready,s_axihub_bresp,s_axihub_araddr,s_axihub_arvalid,s_axihub_arready,s_axihub_rdata,s_axihub_rresp,s_axihub_rvalid,s_axihub_rready,s_aximm_awaddr,s_aximm_awvalid,s_aximm_awready,s_aximm_awlen,s_aximm_awsize,s_aximm_awburst,s_aximm_awid,s_aximm_wdata,s_aximm_wstrb,s_aximm_wvalid,s_aximm_wready,s_aximm_bvalid,s_aximm_bready,s_aximm_wlast,s_aximm_rlast,s_aximm_bresp,s_aximm_bid,s_aximm_araddr,s_aximm_arvalid,s_aximm_arready,s_aximm_arlen,s_aximm_arsize,s_aximm_arburst,s_aximm_arid,s_aximm_rdata,s_aximm_rid,s_aximm_rresp,s_aximm_rvalid,s_aximm_rready)
(* integer foreign = "SystemC";
*);
  input bit s_aximm_clk;
  input bit s_aximm_aresetn;
  input bit trace_clk;
  input bit trace_aresetn;
  input bit axilite_clk;
  input bit axilite_aresetn;
  output wire trace_tready0;
  input bit [63 : 0] trace_tdata0;
  input bit trace_tlast0;
  input bit [7 : 0] trace_tid0;
  input bit [7 : 0] trace_tdest0;
  input bit trace_tvalid0;
  output wire trace_tready1;
  output wire [63 : 0] trace_tdata1;
  input bit trace_tlast1;
  input bit [7 : 0] trace_tid1;
  input bit [7 : 0] trace_tdest1;
  input bit trace_tvalid1;
  input bit [7 : 0] s_axi_awaddr;
  input bit s_axi_awvalid;
  output wire s_axi_awready;
  input bit [31 : 0] s_axi_wdata;
  input bit [3 : 0] s_axi_wstrb;
  input bit s_axi_wvalid;
  output wire s_axi_wready;
  output wire s_axi_bvalid;
  input bit s_axi_bready;
  output wire [1 : 0] s_axi_bresp;
  input bit [7 : 0] s_axi_araddr;
  input bit s_axi_arvalid;
  output wire s_axi_arready;
  output wire [31 : 0] s_axi_rdata;
  output wire [1 : 0] s_axi_rresp;
  output wire s_axi_rvalid;
  input bit s_axi_rready;
  input bit [7 : 0] s_axihub_awaddr;
  input bit s_axihub_awvalid;
  output wire s_axihub_awready;
  input bit [31 : 0] s_axihub_wdata;
  input bit [3 : 0] s_axihub_wstrb;
  input bit s_axihub_wvalid;
  output wire s_axihub_wready;
  output wire s_axihub_bvalid;
  input bit s_axihub_bready;
  output wire [1 : 0] s_axihub_bresp;
  input bit [7 : 0] s_axihub_araddr;
  input bit s_axihub_arvalid;
  output wire s_axihub_arready;
  output wire [31 : 0] s_axihub_rdata;
  output wire [1 : 0] s_axihub_rresp;
  output wire s_axihub_rvalid;
  input bit s_axihub_rready;
  input bit [31 : 0] s_aximm_awaddr;
  input bit s_aximm_awvalid;
  output wire s_aximm_awready;
  input bit [7 : 0] s_aximm_awlen;
  input bit [2 : 0] s_aximm_awsize;
  input bit [1 : 0] s_aximm_awburst;
  input bit [0 : 0] s_aximm_awid;
  input bit [63 : 0] s_aximm_wdata;
  input bit [7 : 0] s_aximm_wstrb;
  input bit s_aximm_wvalid;
  output wire s_aximm_wready;
  output wire s_aximm_bvalid;
  input bit s_aximm_bready;
  input bit s_aximm_wlast;
  output wire s_aximm_rlast;
  output wire [1 : 0] s_aximm_bresp;
  output wire [0 : 0] s_aximm_bid;
  input bit [31 : 0] s_aximm_araddr;
  input bit s_aximm_arvalid;
  output wire s_aximm_arready;
  input bit [7 : 0] s_aximm_arlen;
  input bit [2 : 0] s_aximm_arsize;
  input bit [1 : 0] s_aximm_arburst;
  input bit [0 : 0] s_aximm_arid;
  output wire [63 : 0] s_aximm_rdata;
  output wire [0 : 0] s_aximm_rid;
  output wire [1 : 0] s_aximm_rresp;
  output wire s_aximm_rvalid;
  input bit s_aximm_rready;
endmodule
`endif

`ifdef RIVIERA
(* SC_MODULE_EXPORT *)
module pfm_dynamic_dpa_hub_0 (s_aximm_clk,s_aximm_aresetn,trace_clk,trace_aresetn,axilite_clk,axilite_aresetn,trace_tready0,trace_tdata0,trace_tlast0,trace_tid0,trace_tdest0,trace_tvalid0,trace_tready1,trace_tdata1,trace_tlast1,trace_tid1,trace_tdest1,trace_tvalid1,s_axi_awaddr,s_axi_awvalid,s_axi_awready,s_axi_wdata,s_axi_wstrb,s_axi_wvalid,s_axi_wready,s_axi_bvalid,s_axi_bready,s_axi_bresp,s_axi_araddr,s_axi_arvalid,s_axi_arready,s_axi_rdata,s_axi_rresp,s_axi_rvalid,s_axi_rready,s_axihub_awaddr,s_axihub_awvalid,s_axihub_awready,s_axihub_wdata,s_axihub_wstrb,s_axihub_wvalid,s_axihub_wready,s_axihub_bvalid,s_axihub_bready,s_axihub_bresp,s_axihub_araddr,s_axihub_arvalid,s_axihub_arready,s_axihub_rdata,s_axihub_rresp,s_axihub_rvalid,s_axihub_rready,s_aximm_awaddr,s_aximm_awvalid,s_aximm_awready,s_aximm_awlen,s_aximm_awsize,s_aximm_awburst,s_aximm_awid,s_aximm_wdata,s_aximm_wstrb,s_aximm_wvalid,s_aximm_wready,s_aximm_bvalid,s_aximm_bready,s_aximm_wlast,s_aximm_rlast,s_aximm_bresp,s_aximm_bid,s_aximm_araddr,s_aximm_arvalid,s_aximm_arready,s_aximm_arlen,s_aximm_arsize,s_aximm_arburst,s_aximm_arid,s_aximm_rdata,s_aximm_rid,s_aximm_rresp,s_aximm_rvalid,s_aximm_rready)
  input bit s_aximm_clk;
  input bit s_aximm_aresetn;
  input bit trace_clk;
  input bit trace_aresetn;
  input bit axilite_clk;
  input bit axilite_aresetn;
  output wire trace_tready0;
  input bit [63 : 0] trace_tdata0;
  input bit trace_tlast0;
  input bit [7 : 0] trace_tid0;
  input bit [7 : 0] trace_tdest0;
  input bit trace_tvalid0;
  output wire trace_tready1;
  output wire [63 : 0] trace_tdata1;
  input bit trace_tlast1;
  input bit [7 : 0] trace_tid1;
  input bit [7 : 0] trace_tdest1;
  input bit trace_tvalid1;
  input bit [7 : 0] s_axi_awaddr;
  input bit s_axi_awvalid;
  output wire s_axi_awready;
  input bit [31 : 0] s_axi_wdata;
  input bit [3 : 0] s_axi_wstrb;
  input bit s_axi_wvalid;
  output wire s_axi_wready;
  output wire s_axi_bvalid;
  input bit s_axi_bready;
  output wire [1 : 0] s_axi_bresp;
  input bit [7 : 0] s_axi_araddr;
  input bit s_axi_arvalid;
  output wire s_axi_arready;
  output wire [31 : 0] s_axi_rdata;
  output wire [1 : 0] s_axi_rresp;
  output wire s_axi_rvalid;
  input bit s_axi_rready;
  input bit [7 : 0] s_axihub_awaddr;
  input bit s_axihub_awvalid;
  output wire s_axihub_awready;
  input bit [31 : 0] s_axihub_wdata;
  input bit [3 : 0] s_axihub_wstrb;
  input bit s_axihub_wvalid;
  output wire s_axihub_wready;
  output wire s_axihub_bvalid;
  input bit s_axihub_bready;
  output wire [1 : 0] s_axihub_bresp;
  input bit [7 : 0] s_axihub_araddr;
  input bit s_axihub_arvalid;
  output wire s_axihub_arready;
  output wire [31 : 0] s_axihub_rdata;
  output wire [1 : 0] s_axihub_rresp;
  output wire s_axihub_rvalid;
  input bit s_axihub_rready;
  input bit [31 : 0] s_aximm_awaddr;
  input bit s_aximm_awvalid;
  output wire s_aximm_awready;
  input bit [7 : 0] s_aximm_awlen;
  input bit [2 : 0] s_aximm_awsize;
  input bit [1 : 0] s_aximm_awburst;
  input bit [0 : 0] s_aximm_awid;
  input bit [63 : 0] s_aximm_wdata;
  input bit [7 : 0] s_aximm_wstrb;
  input bit s_aximm_wvalid;
  output wire s_aximm_wready;
  output wire s_aximm_bvalid;
  input bit s_aximm_bready;
  input bit s_aximm_wlast;
  output wire s_aximm_rlast;
  output wire [1 : 0] s_aximm_bresp;
  output wire [0 : 0] s_aximm_bid;
  input bit [31 : 0] s_aximm_araddr;
  input bit s_aximm_arvalid;
  output wire s_aximm_arready;
  input bit [7 : 0] s_aximm_arlen;
  input bit [2 : 0] s_aximm_arsize;
  input bit [1 : 0] s_aximm_arburst;
  input bit [0 : 0] s_aximm_arid;
  output wire [63 : 0] s_aximm_rdata;
  output wire [0 : 0] s_aximm_rid;
  output wire [1 : 0] s_aximm_rresp;
  output wire s_aximm_rvalid;
  input bit s_aximm_rready;
endmodule
`endif
