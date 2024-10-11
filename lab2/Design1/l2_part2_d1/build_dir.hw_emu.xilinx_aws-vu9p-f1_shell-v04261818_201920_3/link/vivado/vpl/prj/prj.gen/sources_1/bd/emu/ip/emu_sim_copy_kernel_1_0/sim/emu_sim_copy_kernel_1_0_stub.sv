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
// Filename:    emu_sim_copy_kernel_1_0_stub.sv
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
module emu_sim_copy_kernel_1_0 (
  input bit [5 : 0] s_axi_control_AWADDR,
  input bit_as_bool s_axi_control_AWVALID,
  output bit_as_bool s_axi_control_AWREADY,
  input bit [31 : 0] s_axi_control_WDATA,
  input bit [3 : 0] s_axi_control_WSTRB,
  input bit_as_bool s_axi_control_WVALID,
  output bit_as_bool s_axi_control_WREADY,
  output bit [1 : 0] s_axi_control_BRESP,
  output bit_as_bool s_axi_control_BVALID,
  input bit_as_bool s_axi_control_BREADY,
  input bit [5 : 0] s_axi_control_ARADDR,
  input bit_as_bool s_axi_control_ARVALID,
  output bit_as_bool s_axi_control_ARREADY,
  output bit [31 : 0] s_axi_control_RDATA,
  output bit [1 : 0] s_axi_control_RRESP,
  output bit_as_bool s_axi_control_RVALID,
  input bit_as_bool s_axi_control_RREADY,
  input bit_as_bool ap_clk,
  input bit_as_bool ap_rst_n,
  output bit_as_bool interrupt,
  output bit [63 : 0] m_axi_gmem_AWADDR,
  output bit [7 : 0] m_axi_gmem_AWLEN,
  output bit [2 : 0] m_axi_gmem_AWSIZE,
  output bit [1 : 0] m_axi_gmem_AWBURST,
  output bit [0 : 0] m_axi_gmem_AWLOCK,
  output bit [3 : 0] m_axi_gmem_AWREGION,
  output bit [3 : 0] m_axi_gmem_AWCACHE,
  output bit [2 : 0] m_axi_gmem_AWPROT,
  output bit [3 : 0] m_axi_gmem_AWQOS,
  output bit_as_bool m_axi_gmem_AWVALID,
  input bit_as_bool m_axi_gmem_AWREADY,
  output bit [511 : 0] m_axi_gmem_WDATA,
  output bit [63 : 0] m_axi_gmem_WSTRB,
  output bit_as_bool m_axi_gmem_WLAST,
  output bit_as_bool m_axi_gmem_WVALID,
  input bit_as_bool m_axi_gmem_WREADY,
  input bit [1 : 0] m_axi_gmem_BRESP,
  input bit_as_bool m_axi_gmem_BVALID,
  output bit_as_bool m_axi_gmem_BREADY,
  output bit [63 : 0] m_axi_gmem_ARADDR,
  output bit [7 : 0] m_axi_gmem_ARLEN,
  output bit [2 : 0] m_axi_gmem_ARSIZE,
  output bit [1 : 0] m_axi_gmem_ARBURST,
  output bit [0 : 0] m_axi_gmem_ARLOCK,
  output bit [3 : 0] m_axi_gmem_ARREGION,
  output bit [3 : 0] m_axi_gmem_ARCACHE,
  output bit [2 : 0] m_axi_gmem_ARPROT,
  output bit [3 : 0] m_axi_gmem_ARQOS,
  output bit_as_bool m_axi_gmem_ARVALID,
  input bit_as_bool m_axi_gmem_ARREADY,
  input bit [511 : 0] m_axi_gmem_RDATA,
  input bit [1 : 0] m_axi_gmem_RRESP,
  input bit_as_bool m_axi_gmem_RLAST,
  input bit_as_bool m_axi_gmem_RVALID,
  output bit_as_bool m_axi_gmem_RREADY
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module emu_sim_copy_kernel_1_0 (s_axi_control_AWADDR,s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA,s_axi_control_WSTRB,s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP,s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR,s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA,s_axi_control_RRESP,s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_gmem_AWADDR,m_axi_gmem_AWLEN,m_axi_gmem_AWSIZE,m_axi_gmem_AWBURST,m_axi_gmem_AWLOCK,m_axi_gmem_AWREGION,m_axi_gmem_AWCACHE,m_axi_gmem_AWPROT,m_axi_gmem_AWQOS,m_axi_gmem_AWVALID,m_axi_gmem_AWREADY,m_axi_gmem_WDATA,m_axi_gmem_WSTRB,m_axi_gmem_WLAST,m_axi_gmem_WVALID,m_axi_gmem_WREADY,m_axi_gmem_BRESP,m_axi_gmem_BVALID,m_axi_gmem_BREADY,m_axi_gmem_ARADDR,m_axi_gmem_ARLEN,m_axi_gmem_ARSIZE,m_axi_gmem_ARBURST,m_axi_gmem_ARLOCK,m_axi_gmem_ARREGION,m_axi_gmem_ARCACHE,m_axi_gmem_ARPROT,m_axi_gmem_ARQOS,m_axi_gmem_ARVALID,m_axi_gmem_ARREADY,m_axi_gmem_RDATA,m_axi_gmem_RRESP,m_axi_gmem_RLAST,m_axi_gmem_RVALID,m_axi_gmem_RREADY)
(* integer foreign = "SystemC";
*);
  input bit [5 : 0] s_axi_control_AWADDR;
  input bit s_axi_control_AWVALID;
  output wire s_axi_control_AWREADY;
  input bit [31 : 0] s_axi_control_WDATA;
  input bit [3 : 0] s_axi_control_WSTRB;
  input bit s_axi_control_WVALID;
  output wire s_axi_control_WREADY;
  output wire [1 : 0] s_axi_control_BRESP;
  output wire s_axi_control_BVALID;
  input bit s_axi_control_BREADY;
  input bit [5 : 0] s_axi_control_ARADDR;
  input bit s_axi_control_ARVALID;
  output wire s_axi_control_ARREADY;
  output wire [31 : 0] s_axi_control_RDATA;
  output wire [1 : 0] s_axi_control_RRESP;
  output wire s_axi_control_RVALID;
  input bit s_axi_control_RREADY;
  input bit ap_clk;
  input bit ap_rst_n;
  output wire interrupt;
  output wire [63 : 0] m_axi_gmem_AWADDR;
  output wire [7 : 0] m_axi_gmem_AWLEN;
  output wire [2 : 0] m_axi_gmem_AWSIZE;
  output wire [1 : 0] m_axi_gmem_AWBURST;
  output wire [0 : 0] m_axi_gmem_AWLOCK;
  output wire [3 : 0] m_axi_gmem_AWREGION;
  output wire [3 : 0] m_axi_gmem_AWCACHE;
  output wire [2 : 0] m_axi_gmem_AWPROT;
  output wire [3 : 0] m_axi_gmem_AWQOS;
  output wire m_axi_gmem_AWVALID;
  input bit m_axi_gmem_AWREADY;
  output wire [511 : 0] m_axi_gmem_WDATA;
  output wire [63 : 0] m_axi_gmem_WSTRB;
  output wire m_axi_gmem_WLAST;
  output wire m_axi_gmem_WVALID;
  input bit m_axi_gmem_WREADY;
  input bit [1 : 0] m_axi_gmem_BRESP;
  input bit m_axi_gmem_BVALID;
  output wire m_axi_gmem_BREADY;
  output wire [63 : 0] m_axi_gmem_ARADDR;
  output wire [7 : 0] m_axi_gmem_ARLEN;
  output wire [2 : 0] m_axi_gmem_ARSIZE;
  output wire [1 : 0] m_axi_gmem_ARBURST;
  output wire [0 : 0] m_axi_gmem_ARLOCK;
  output wire [3 : 0] m_axi_gmem_ARREGION;
  output wire [3 : 0] m_axi_gmem_ARCACHE;
  output wire [2 : 0] m_axi_gmem_ARPROT;
  output wire [3 : 0] m_axi_gmem_ARQOS;
  output wire m_axi_gmem_ARVALID;
  input bit m_axi_gmem_ARREADY;
  input bit [511 : 0] m_axi_gmem_RDATA;
  input bit [1 : 0] m_axi_gmem_RRESP;
  input bit m_axi_gmem_RLAST;
  input bit m_axi_gmem_RVALID;
  output wire m_axi_gmem_RREADY;
endmodule
`endif

`ifdef RIVIERA
(* SC_MODULE_EXPORT *)
module emu_sim_copy_kernel_1_0 (s_axi_control_AWADDR,s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA,s_axi_control_WSTRB,s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP,s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR,s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA,s_axi_control_RRESP,s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_gmem_AWADDR,m_axi_gmem_AWLEN,m_axi_gmem_AWSIZE,m_axi_gmem_AWBURST,m_axi_gmem_AWLOCK,m_axi_gmem_AWREGION,m_axi_gmem_AWCACHE,m_axi_gmem_AWPROT,m_axi_gmem_AWQOS,m_axi_gmem_AWVALID,m_axi_gmem_AWREADY,m_axi_gmem_WDATA,m_axi_gmem_WSTRB,m_axi_gmem_WLAST,m_axi_gmem_WVALID,m_axi_gmem_WREADY,m_axi_gmem_BRESP,m_axi_gmem_BVALID,m_axi_gmem_BREADY,m_axi_gmem_ARADDR,m_axi_gmem_ARLEN,m_axi_gmem_ARSIZE,m_axi_gmem_ARBURST,m_axi_gmem_ARLOCK,m_axi_gmem_ARREGION,m_axi_gmem_ARCACHE,m_axi_gmem_ARPROT,m_axi_gmem_ARQOS,m_axi_gmem_ARVALID,m_axi_gmem_ARREADY,m_axi_gmem_RDATA,m_axi_gmem_RRESP,m_axi_gmem_RLAST,m_axi_gmem_RVALID,m_axi_gmem_RREADY)
  input bit [5 : 0] s_axi_control_AWADDR;
  input bit s_axi_control_AWVALID;
  output wire s_axi_control_AWREADY;
  input bit [31 : 0] s_axi_control_WDATA;
  input bit [3 : 0] s_axi_control_WSTRB;
  input bit s_axi_control_WVALID;
  output wire s_axi_control_WREADY;
  output wire [1 : 0] s_axi_control_BRESP;
  output wire s_axi_control_BVALID;
  input bit s_axi_control_BREADY;
  input bit [5 : 0] s_axi_control_ARADDR;
  input bit s_axi_control_ARVALID;
  output wire s_axi_control_ARREADY;
  output wire [31 : 0] s_axi_control_RDATA;
  output wire [1 : 0] s_axi_control_RRESP;
  output wire s_axi_control_RVALID;
  input bit s_axi_control_RREADY;
  input bit ap_clk;
  input bit ap_rst_n;
  output wire interrupt;
  output wire [63 : 0] m_axi_gmem_AWADDR;
  output wire [7 : 0] m_axi_gmem_AWLEN;
  output wire [2 : 0] m_axi_gmem_AWSIZE;
  output wire [1 : 0] m_axi_gmem_AWBURST;
  output wire [0 : 0] m_axi_gmem_AWLOCK;
  output wire [3 : 0] m_axi_gmem_AWREGION;
  output wire [3 : 0] m_axi_gmem_AWCACHE;
  output wire [2 : 0] m_axi_gmem_AWPROT;
  output wire [3 : 0] m_axi_gmem_AWQOS;
  output wire m_axi_gmem_AWVALID;
  input bit m_axi_gmem_AWREADY;
  output wire [511 : 0] m_axi_gmem_WDATA;
  output wire [63 : 0] m_axi_gmem_WSTRB;
  output wire m_axi_gmem_WLAST;
  output wire m_axi_gmem_WVALID;
  input bit m_axi_gmem_WREADY;
  input bit [1 : 0] m_axi_gmem_BRESP;
  input bit m_axi_gmem_BVALID;
  output wire m_axi_gmem_BREADY;
  output wire [63 : 0] m_axi_gmem_ARADDR;
  output wire [7 : 0] m_axi_gmem_ARLEN;
  output wire [2 : 0] m_axi_gmem_ARSIZE;
  output wire [1 : 0] m_axi_gmem_ARBURST;
  output wire [0 : 0] m_axi_gmem_ARLOCK;
  output wire [3 : 0] m_axi_gmem_ARREGION;
  output wire [3 : 0] m_axi_gmem_ARCACHE;
  output wire [2 : 0] m_axi_gmem_ARPROT;
  output wire [3 : 0] m_axi_gmem_ARQOS;
  output wire m_axi_gmem_ARVALID;
  input bit m_axi_gmem_ARREADY;
  input bit [511 : 0] m_axi_gmem_RDATA;
  input bit [1 : 0] m_axi_gmem_RRESP;
  input bit m_axi_gmem_RLAST;
  input bit m_axi_gmem_RVALID;
  output wire m_axi_gmem_RREADY;
endmodule
`endif
