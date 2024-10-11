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
// Filename:    emu_sim_embedded_scheduler_sw_0_0_stub.sv
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
module emu_sim_embedded_scheduler_sw_0_0 (
  input bit [63 : 0] saxi_lite_cq_awaddr,
  input bit [2 : 0] saxi_lite_cq_awprot,
  input bit_as_bool saxi_lite_cq_awvalid,
  output bit_as_bool saxi_lite_cq_awready,
  input bit [31 : 0] saxi_lite_cq_wdata,
  input bit [3 : 0] saxi_lite_cq_wstrb,
  input bit_as_bool saxi_lite_cq_wvalid,
  output bit_as_bool saxi_lite_cq_wready,
  output bit [1 : 0] saxi_lite_cq_bresp,
  output bit_as_bool saxi_lite_cq_bvalid,
  input bit_as_bool saxi_lite_cq_bready,
  input bit [63 : 0] saxi_lite_cq_araddr,
  input bit [2 : 0] saxi_lite_cq_arprot,
  input bit_as_bool saxi_lite_cq_arvalid,
  output bit_as_bool saxi_lite_cq_arready,
  output bit [31 : 0] saxi_lite_cq_rdata,
  output bit [1 : 0] saxi_lite_cq_rresp,
  output bit_as_bool saxi_lite_cq_rvalid,
  input bit_as_bool saxi_lite_cq_rready,
  input bit_as_bool saxi_lite_cq_aclk,
  input bit_as_bool saxi_lite_cq_aresetn,
  output bit [63 : 0] maxi_lite_mb_awaddr,
  output bit [2 : 0] maxi_lite_mb_awprot,
  output bit_as_bool maxi_lite_mb_awvalid,
  input bit_as_bool maxi_lite_mb_awready,
  output bit [31 : 0] maxi_lite_mb_wdata,
  output bit [3 : 0] maxi_lite_mb_wstrb,
  output bit_as_bool maxi_lite_mb_wvalid,
  input bit_as_bool maxi_lite_mb_wready,
  input bit [1 : 0] maxi_lite_mb_bresp,
  input bit_as_bool maxi_lite_mb_bvalid,
  output bit_as_bool maxi_lite_mb_bready,
  output bit [63 : 0] maxi_lite_mb_araddr,
  output bit [2 : 0] maxi_lite_mb_arprot,
  output bit_as_bool maxi_lite_mb_arvalid,
  input bit_as_bool maxi_lite_mb_arready,
  input bit [31 : 0] maxi_lite_mb_rdata,
  input bit [1 : 0] maxi_lite_mb_rresp,
  input bit_as_bool maxi_lite_mb_rvalid,
  output bit_as_bool maxi_lite_mb_rready,
  input bit_as_bool maxi_lite_mb_aclk,
  input bit_as_bool maxi_lite_mb_aresetn,
  input bit_as_bool irq
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module emu_sim_embedded_scheduler_sw_0_0 (saxi_lite_cq_awaddr,saxi_lite_cq_awprot,saxi_lite_cq_awvalid,saxi_lite_cq_awready,saxi_lite_cq_wdata,saxi_lite_cq_wstrb,saxi_lite_cq_wvalid,saxi_lite_cq_wready,saxi_lite_cq_bresp,saxi_lite_cq_bvalid,saxi_lite_cq_bready,saxi_lite_cq_araddr,saxi_lite_cq_arprot,saxi_lite_cq_arvalid,saxi_lite_cq_arready,saxi_lite_cq_rdata,saxi_lite_cq_rresp,saxi_lite_cq_rvalid,saxi_lite_cq_rready,saxi_lite_cq_aclk,saxi_lite_cq_aresetn,maxi_lite_mb_awaddr,maxi_lite_mb_awprot,maxi_lite_mb_awvalid,maxi_lite_mb_awready,maxi_lite_mb_wdata,maxi_lite_mb_wstrb,maxi_lite_mb_wvalid,maxi_lite_mb_wready,maxi_lite_mb_bresp,maxi_lite_mb_bvalid,maxi_lite_mb_bready,maxi_lite_mb_araddr,maxi_lite_mb_arprot,maxi_lite_mb_arvalid,maxi_lite_mb_arready,maxi_lite_mb_rdata,maxi_lite_mb_rresp,maxi_lite_mb_rvalid,maxi_lite_mb_rready,maxi_lite_mb_aclk,maxi_lite_mb_aresetn,irq)
(* integer foreign = "SystemC";
*);
  input bit [63 : 0] saxi_lite_cq_awaddr;
  input bit [2 : 0] saxi_lite_cq_awprot;
  input bit saxi_lite_cq_awvalid;
  output wire saxi_lite_cq_awready;
  input bit [31 : 0] saxi_lite_cq_wdata;
  input bit [3 : 0] saxi_lite_cq_wstrb;
  input bit saxi_lite_cq_wvalid;
  output wire saxi_lite_cq_wready;
  output wire [1 : 0] saxi_lite_cq_bresp;
  output wire saxi_lite_cq_bvalid;
  input bit saxi_lite_cq_bready;
  input bit [63 : 0] saxi_lite_cq_araddr;
  input bit [2 : 0] saxi_lite_cq_arprot;
  input bit saxi_lite_cq_arvalid;
  output wire saxi_lite_cq_arready;
  output wire [31 : 0] saxi_lite_cq_rdata;
  output wire [1 : 0] saxi_lite_cq_rresp;
  output wire saxi_lite_cq_rvalid;
  input bit saxi_lite_cq_rready;
  input bit saxi_lite_cq_aclk;
  input bit saxi_lite_cq_aresetn;
  output wire [63 : 0] maxi_lite_mb_awaddr;
  output wire [2 : 0] maxi_lite_mb_awprot;
  output wire maxi_lite_mb_awvalid;
  input bit maxi_lite_mb_awready;
  output wire [31 : 0] maxi_lite_mb_wdata;
  output wire [3 : 0] maxi_lite_mb_wstrb;
  output wire maxi_lite_mb_wvalid;
  input bit maxi_lite_mb_wready;
  input bit [1 : 0] maxi_lite_mb_bresp;
  input bit maxi_lite_mb_bvalid;
  output wire maxi_lite_mb_bready;
  output wire [63 : 0] maxi_lite_mb_araddr;
  output wire [2 : 0] maxi_lite_mb_arprot;
  output wire maxi_lite_mb_arvalid;
  input bit maxi_lite_mb_arready;
  input bit [31 : 0] maxi_lite_mb_rdata;
  input bit [1 : 0] maxi_lite_mb_rresp;
  input bit maxi_lite_mb_rvalid;
  output wire maxi_lite_mb_rready;
  input bit maxi_lite_mb_aclk;
  input bit maxi_lite_mb_aresetn;
  input bit irq;
endmodule
`endif

`ifdef RIVIERA
(* SC_MODULE_EXPORT *)
module emu_sim_embedded_scheduler_sw_0_0 (saxi_lite_cq_awaddr,saxi_lite_cq_awprot,saxi_lite_cq_awvalid,saxi_lite_cq_awready,saxi_lite_cq_wdata,saxi_lite_cq_wstrb,saxi_lite_cq_wvalid,saxi_lite_cq_wready,saxi_lite_cq_bresp,saxi_lite_cq_bvalid,saxi_lite_cq_bready,saxi_lite_cq_araddr,saxi_lite_cq_arprot,saxi_lite_cq_arvalid,saxi_lite_cq_arready,saxi_lite_cq_rdata,saxi_lite_cq_rresp,saxi_lite_cq_rvalid,saxi_lite_cq_rready,saxi_lite_cq_aclk,saxi_lite_cq_aresetn,maxi_lite_mb_awaddr,maxi_lite_mb_awprot,maxi_lite_mb_awvalid,maxi_lite_mb_awready,maxi_lite_mb_wdata,maxi_lite_mb_wstrb,maxi_lite_mb_wvalid,maxi_lite_mb_wready,maxi_lite_mb_bresp,maxi_lite_mb_bvalid,maxi_lite_mb_bready,maxi_lite_mb_araddr,maxi_lite_mb_arprot,maxi_lite_mb_arvalid,maxi_lite_mb_arready,maxi_lite_mb_rdata,maxi_lite_mb_rresp,maxi_lite_mb_rvalid,maxi_lite_mb_rready,maxi_lite_mb_aclk,maxi_lite_mb_aresetn,irq)
  input bit [63 : 0] saxi_lite_cq_awaddr;
  input bit [2 : 0] saxi_lite_cq_awprot;
  input bit saxi_lite_cq_awvalid;
  output wire saxi_lite_cq_awready;
  input bit [31 : 0] saxi_lite_cq_wdata;
  input bit [3 : 0] saxi_lite_cq_wstrb;
  input bit saxi_lite_cq_wvalid;
  output wire saxi_lite_cq_wready;
  output wire [1 : 0] saxi_lite_cq_bresp;
  output wire saxi_lite_cq_bvalid;
  input bit saxi_lite_cq_bready;
  input bit [63 : 0] saxi_lite_cq_araddr;
  input bit [2 : 0] saxi_lite_cq_arprot;
  input bit saxi_lite_cq_arvalid;
  output wire saxi_lite_cq_arready;
  output wire [31 : 0] saxi_lite_cq_rdata;
  output wire [1 : 0] saxi_lite_cq_rresp;
  output wire saxi_lite_cq_rvalid;
  input bit saxi_lite_cq_rready;
  input bit saxi_lite_cq_aclk;
  input bit saxi_lite_cq_aresetn;
  output wire [63 : 0] maxi_lite_mb_awaddr;
  output wire [2 : 0] maxi_lite_mb_awprot;
  output wire maxi_lite_mb_awvalid;
  input bit maxi_lite_mb_awready;
  output wire [31 : 0] maxi_lite_mb_wdata;
  output wire [3 : 0] maxi_lite_mb_wstrb;
  output wire maxi_lite_mb_wvalid;
  input bit maxi_lite_mb_wready;
  input bit [1 : 0] maxi_lite_mb_bresp;
  input bit maxi_lite_mb_bvalid;
  output wire maxi_lite_mb_bready;
  output wire [63 : 0] maxi_lite_mb_araddr;
  output wire [2 : 0] maxi_lite_mb_arprot;
  output wire maxi_lite_mb_arvalid;
  input bit maxi_lite_mb_arready;
  input bit [31 : 0] maxi_lite_mb_rdata;
  input bit [1 : 0] maxi_lite_mb_rresp;
  input bit maxi_lite_mb_rvalid;
  output wire maxi_lite_mb_rready;
  input bit maxi_lite_mb_aclk;
  input bit maxi_lite_mb_aresetn;
  input bit irq;
endmodule
`endif
