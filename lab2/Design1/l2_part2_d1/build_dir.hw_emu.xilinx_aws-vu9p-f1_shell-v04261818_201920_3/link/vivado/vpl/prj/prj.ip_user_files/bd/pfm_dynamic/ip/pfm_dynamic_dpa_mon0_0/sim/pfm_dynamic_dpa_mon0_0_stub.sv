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
// Filename:    pfm_dynamic_dpa_mon0_0_stub.sv
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
module pfm_dynamic_dpa_mon0_0 (
  input bit_as_bool mon_clk,
  input bit_as_bool mon_resetn,
  input bit_as_bool trace_clk,
  input bit_as_bool trace_rst,
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
  input bit_as_bool mon_AWVALID,
  input bit_as_bool mon_AWREADY,
  input bit [63 : 0] mon_AWADDR,
  input bit [0 : 0] mon_AWID,
  input bit [7 : 0] mon_AWLEN,
  input bit [2 : 0] mon_AWSIZE,
  input bit [1 : 0] mon_AWBURST,
  input bit_as_bool mon_WVALID,
  input bit_as_bool mon_WREADY,
  input bit [511 : 0] mon_WDATA,
  input bit [63 : 0] mon_WSTRB,
  input bit_as_bool mon_WLAST,
  input bit_as_bool mon_ARVALID,
  input bit_as_bool mon_ARREADY,
  input bit [63 : 0] mon_ARADDR,
  input bit [0 : 0] mon_ARID,
  input bit [7 : 0] mon_ARLEN,
  input bit [2 : 0] mon_ARSIZE,
  input bit [1 : 0] mon_ARBURST,
  input bit_as_bool mon_RVALID,
  input bit_as_bool mon_RREADY,
  input bit [511 : 0] mon_RDATA,
  input bit_as_bool mon_RLAST,
  input bit [0 : 0] mon_RID,
  input bit [1 : 0] mon_RRESP,
  input bit_as_bool mon_BVALID,
  input bit_as_bool mon_BREADY,
  input bit [1 : 0] mon_BRESP,
  input bit [0 : 0] mon_BID,
  input bit_as_bool m_axis_rd_tready,
  output bit [63 : 0] m_axis_rd_tdata,
  output bit_as_bool m_axis_rd_tlast,
  output bit [7 : 0] m_axis_rd_tid,
  output bit [7 : 0] m_axis_rd_tdest,
  input bit_as_bool m_axis_wr_tready,
  output bit [63 : 0] m_axis_wr_tdata,
  output bit_as_bool m_axis_wr_tlast,
  output bit [7 : 0] m_axis_wr_tid,
  output bit [7 : 0] m_axis_wr_tdest,
  output bit_as_bool m_axis_wr_tvalid,
  output bit_as_bool m_axis_rd_tvalid,
  input bit [7 : 0] s_axi_awaddr_mon,
  input bit [2 : 0] s_axi_awprot_mon,
  input bit_as_bool s_axi_awvalid_mon,
  input bit_as_bool s_axi_awready_mon,
  input bit [31 : 0] s_axi_wdata_mon,
  input bit [3 : 0] s_axi_wstrb_mon,
  input bit_as_bool s_axi_wvalid_mon,
  input bit_as_bool s_axi_wready_mon,
  input bit [1 : 0] s_axi_bresp_mon,
  input bit_as_bool s_axi_bvalid_mon,
  input bit_as_bool s_axi_bready_mon,
  input bit [7 : 0] s_axi_araddr_mon,
  input bit [2 : 0] s_axi_arprot_mon,
  input bit_as_bool s_axi_arvalid_mon,
  input bit_as_bool s_axi_arready_mon,
  input bit [31 : 0] s_axi_rdata_mon,
  input bit [1 : 0] s_axi_rresp_mon,
  input bit_as_bool s_axi_rvalid_mon,
  input bit_as_bool s_axi_rready_mon
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module pfm_dynamic_dpa_mon0_0 (mon_clk,mon_resetn,trace_clk,trace_rst,s_axi_awaddr,s_axi_awvalid,s_axi_awready,s_axi_wdata,s_axi_wstrb,s_axi_wvalid,s_axi_wready,s_axi_bvalid,s_axi_bready,s_axi_bresp,s_axi_araddr,s_axi_arvalid,s_axi_arready,s_axi_rdata,s_axi_rresp,s_axi_rvalid,s_axi_rready,mon_AWVALID,mon_AWREADY,mon_AWADDR,mon_AWID,mon_AWLEN,mon_AWSIZE,mon_AWBURST,mon_WVALID,mon_WREADY,mon_WDATA,mon_WSTRB,mon_WLAST,mon_ARVALID,mon_ARREADY,mon_ARADDR,mon_ARID,mon_ARLEN,mon_ARSIZE,mon_ARBURST,mon_RVALID,mon_RREADY,mon_RDATA,mon_RLAST,mon_RID,mon_RRESP,mon_BVALID,mon_BREADY,mon_BRESP,mon_BID,m_axis_rd_tready,m_axis_rd_tdata,m_axis_rd_tlast,m_axis_rd_tid,m_axis_rd_tdest,m_axis_wr_tready,m_axis_wr_tdata,m_axis_wr_tlast,m_axis_wr_tid,m_axis_wr_tdest,m_axis_wr_tvalid,m_axis_rd_tvalid,s_axi_awaddr_mon,s_axi_awprot_mon,s_axi_awvalid_mon,s_axi_awready_mon,s_axi_wdata_mon,s_axi_wstrb_mon,s_axi_wvalid_mon,s_axi_wready_mon,s_axi_bresp_mon,s_axi_bvalid_mon,s_axi_bready_mon,s_axi_araddr_mon,s_axi_arprot_mon,s_axi_arvalid_mon,s_axi_arready_mon,s_axi_rdata_mon,s_axi_rresp_mon,s_axi_rvalid_mon,s_axi_rready_mon)
(* integer foreign = "SystemC";
*);
  input bit mon_clk;
  input bit mon_resetn;
  input bit trace_clk;
  input bit trace_rst;
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
  input bit mon_AWVALID;
  input bit mon_AWREADY;
  input bit [63 : 0] mon_AWADDR;
  input bit [0 : 0] mon_AWID;
  input bit [7 : 0] mon_AWLEN;
  input bit [2 : 0] mon_AWSIZE;
  input bit [1 : 0] mon_AWBURST;
  input bit mon_WVALID;
  input bit mon_WREADY;
  input bit [511 : 0] mon_WDATA;
  input bit [63 : 0] mon_WSTRB;
  input bit mon_WLAST;
  input bit mon_ARVALID;
  input bit mon_ARREADY;
  input bit [63 : 0] mon_ARADDR;
  input bit [0 : 0] mon_ARID;
  input bit [7 : 0] mon_ARLEN;
  input bit [2 : 0] mon_ARSIZE;
  input bit [1 : 0] mon_ARBURST;
  input bit mon_RVALID;
  input bit mon_RREADY;
  input bit [511 : 0] mon_RDATA;
  input bit mon_RLAST;
  input bit [0 : 0] mon_RID;
  input bit [1 : 0] mon_RRESP;
  input bit mon_BVALID;
  input bit mon_BREADY;
  input bit [1 : 0] mon_BRESP;
  input bit [0 : 0] mon_BID;
  input bit m_axis_rd_tready;
  output wire [63 : 0] m_axis_rd_tdata;
  output wire m_axis_rd_tlast;
  output wire [7 : 0] m_axis_rd_tid;
  output wire [7 : 0] m_axis_rd_tdest;
  input bit m_axis_wr_tready;
  output wire [63 : 0] m_axis_wr_tdata;
  output wire m_axis_wr_tlast;
  output wire [7 : 0] m_axis_wr_tid;
  output wire [7 : 0] m_axis_wr_tdest;
  output wire m_axis_wr_tvalid;
  output wire m_axis_rd_tvalid;
  input bit [7 : 0] s_axi_awaddr_mon;
  input bit [2 : 0] s_axi_awprot_mon;
  input bit s_axi_awvalid_mon;
  input bit s_axi_awready_mon;
  input bit [31 : 0] s_axi_wdata_mon;
  input bit [3 : 0] s_axi_wstrb_mon;
  input bit s_axi_wvalid_mon;
  input bit s_axi_wready_mon;
  input bit [1 : 0] s_axi_bresp_mon;
  input bit s_axi_bvalid_mon;
  input bit s_axi_bready_mon;
  input bit [7 : 0] s_axi_araddr_mon;
  input bit [2 : 0] s_axi_arprot_mon;
  input bit s_axi_arvalid_mon;
  input bit s_axi_arready_mon;
  input bit [31 : 0] s_axi_rdata_mon;
  input bit [1 : 0] s_axi_rresp_mon;
  input bit s_axi_rvalid_mon;
  input bit s_axi_rready_mon;
endmodule
`endif

`ifdef RIVIERA
(* SC_MODULE_EXPORT *)
module pfm_dynamic_dpa_mon0_0 (mon_clk,mon_resetn,trace_clk,trace_rst,s_axi_awaddr,s_axi_awvalid,s_axi_awready,s_axi_wdata,s_axi_wstrb,s_axi_wvalid,s_axi_wready,s_axi_bvalid,s_axi_bready,s_axi_bresp,s_axi_araddr,s_axi_arvalid,s_axi_arready,s_axi_rdata,s_axi_rresp,s_axi_rvalid,s_axi_rready,mon_AWVALID,mon_AWREADY,mon_AWADDR,mon_AWID,mon_AWLEN,mon_AWSIZE,mon_AWBURST,mon_WVALID,mon_WREADY,mon_WDATA,mon_WSTRB,mon_WLAST,mon_ARVALID,mon_ARREADY,mon_ARADDR,mon_ARID,mon_ARLEN,mon_ARSIZE,mon_ARBURST,mon_RVALID,mon_RREADY,mon_RDATA,mon_RLAST,mon_RID,mon_RRESP,mon_BVALID,mon_BREADY,mon_BRESP,mon_BID,m_axis_rd_tready,m_axis_rd_tdata,m_axis_rd_tlast,m_axis_rd_tid,m_axis_rd_tdest,m_axis_wr_tready,m_axis_wr_tdata,m_axis_wr_tlast,m_axis_wr_tid,m_axis_wr_tdest,m_axis_wr_tvalid,m_axis_rd_tvalid,s_axi_awaddr_mon,s_axi_awprot_mon,s_axi_awvalid_mon,s_axi_awready_mon,s_axi_wdata_mon,s_axi_wstrb_mon,s_axi_wvalid_mon,s_axi_wready_mon,s_axi_bresp_mon,s_axi_bvalid_mon,s_axi_bready_mon,s_axi_araddr_mon,s_axi_arprot_mon,s_axi_arvalid_mon,s_axi_arready_mon,s_axi_rdata_mon,s_axi_rresp_mon,s_axi_rvalid_mon,s_axi_rready_mon)
  input bit mon_clk;
  input bit mon_resetn;
  input bit trace_clk;
  input bit trace_rst;
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
  input bit mon_AWVALID;
  input bit mon_AWREADY;
  input bit [63 : 0] mon_AWADDR;
  input bit [0 : 0] mon_AWID;
  input bit [7 : 0] mon_AWLEN;
  input bit [2 : 0] mon_AWSIZE;
  input bit [1 : 0] mon_AWBURST;
  input bit mon_WVALID;
  input bit mon_WREADY;
  input bit [511 : 0] mon_WDATA;
  input bit [63 : 0] mon_WSTRB;
  input bit mon_WLAST;
  input bit mon_ARVALID;
  input bit mon_ARREADY;
  input bit [63 : 0] mon_ARADDR;
  input bit [0 : 0] mon_ARID;
  input bit [7 : 0] mon_ARLEN;
  input bit [2 : 0] mon_ARSIZE;
  input bit [1 : 0] mon_ARBURST;
  input bit mon_RVALID;
  input bit mon_RREADY;
  input bit [511 : 0] mon_RDATA;
  input bit mon_RLAST;
  input bit [0 : 0] mon_RID;
  input bit [1 : 0] mon_RRESP;
  input bit mon_BVALID;
  input bit mon_BREADY;
  input bit [1 : 0] mon_BRESP;
  input bit [0 : 0] mon_BID;
  input bit m_axis_rd_tready;
  output wire [63 : 0] m_axis_rd_tdata;
  output wire m_axis_rd_tlast;
  output wire [7 : 0] m_axis_rd_tid;
  output wire [7 : 0] m_axis_rd_tdest;
  input bit m_axis_wr_tready;
  output wire [63 : 0] m_axis_wr_tdata;
  output wire m_axis_wr_tlast;
  output wire [7 : 0] m_axis_wr_tid;
  output wire [7 : 0] m_axis_wr_tdest;
  output wire m_axis_wr_tvalid;
  output wire m_axis_rd_tvalid;
  input bit [7 : 0] s_axi_awaddr_mon;
  input bit [2 : 0] s_axi_awprot_mon;
  input bit s_axi_awvalid_mon;
  input bit s_axi_awready_mon;
  input bit [31 : 0] s_axi_wdata_mon;
  input bit [3 : 0] s_axi_wstrb_mon;
  input bit s_axi_wvalid_mon;
  input bit s_axi_wready_mon;
  input bit [1 : 0] s_axi_bresp_mon;
  input bit s_axi_bvalid_mon;
  input bit s_axi_bready_mon;
  input bit [7 : 0] s_axi_araddr_mon;
  input bit [2 : 0] s_axi_arprot_mon;
  input bit s_axi_arvalid_mon;
  input bit s_axi_arready_mon;
  input bit [31 : 0] s_axi_rdata_mon;
  input bit [1 : 0] s_axi_rresp_mon;
  input bit s_axi_rvalid_mon;
  input bit s_axi_rready_mon;
endmodule
`endif
