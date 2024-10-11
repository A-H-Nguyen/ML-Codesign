//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Fri Oct 11 17:31:57 2024
//Host        : ip-172-31-83-237.ec2.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target pfm_dynamic_wrapper.bd
//Design      : pfm_dynamic_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module pfm_dynamic_wrapper
   (C0_DDR_MAXI_0_araddr,
    C0_DDR_MAXI_0_arburst,
    C0_DDR_MAXI_0_arlen,
    C0_DDR_MAXI_0_arprot,
    C0_DDR_MAXI_0_arready,
    C0_DDR_MAXI_0_arsize,
    C0_DDR_MAXI_0_arvalid,
    C0_DDR_MAXI_0_awaddr,
    C0_DDR_MAXI_0_awburst,
    C0_DDR_MAXI_0_awlen,
    C0_DDR_MAXI_0_awprot,
    C0_DDR_MAXI_0_awready,
    C0_DDR_MAXI_0_awsize,
    C0_DDR_MAXI_0_awvalid,
    C0_DDR_MAXI_0_bready,
    C0_DDR_MAXI_0_bresp,
    C0_DDR_MAXI_0_bvalid,
    C0_DDR_MAXI_0_rdata,
    C0_DDR_MAXI_0_rlast,
    C0_DDR_MAXI_0_rready,
    C0_DDR_MAXI_0_rresp,
    C0_DDR_MAXI_0_rvalid,
    C0_DDR_MAXI_0_wdata,
    C0_DDR_MAXI_0_wlast,
    C0_DDR_MAXI_0_wready,
    C0_DDR_MAXI_0_wstrb,
    C0_DDR_MAXI_0_wvalid,
    clkwiz_kernel2_clk_0,
    clkwiz_kernel2_rst_0,
    clkwiz_kernel_clk_0,
    clkwiz_kernel_rst_0,
    data_M_AXI_0_araddr,
    data_M_AXI_0_arburst,
    data_M_AXI_0_arcache,
    data_M_AXI_0_arid,
    data_M_AXI_0_arlen,
    data_M_AXI_0_arlock,
    data_M_AXI_0_arprot,
    data_M_AXI_0_arqos,
    data_M_AXI_0_arready,
    data_M_AXI_0_arregion,
    data_M_AXI_0_arsize,
    data_M_AXI_0_arvalid,
    data_M_AXI_0_awaddr,
    data_M_AXI_0_awburst,
    data_M_AXI_0_awcache,
    data_M_AXI_0_awid,
    data_M_AXI_0_awlen,
    data_M_AXI_0_awlock,
    data_M_AXI_0_awprot,
    data_M_AXI_0_awqos,
    data_M_AXI_0_awready,
    data_M_AXI_0_awregion,
    data_M_AXI_0_awsize,
    data_M_AXI_0_awvalid,
    data_M_AXI_0_bid,
    data_M_AXI_0_bready,
    data_M_AXI_0_bresp,
    data_M_AXI_0_bvalid,
    data_M_AXI_0_rdata,
    data_M_AXI_0_rid,
    data_M_AXI_0_rlast,
    data_M_AXI_0_rready,
    data_M_AXI_0_rresp,
    data_M_AXI_0_rvalid,
    data_M_AXI_0_wdata,
    data_M_AXI_0_wlast,
    data_M_AXI_0_wready,
    data_M_AXI_0_wstrb,
    data_M_AXI_0_wvalid,
    data_M_AXI_1_araddr,
    data_M_AXI_1_arburst,
    data_M_AXI_1_arcache,
    data_M_AXI_1_arid,
    data_M_AXI_1_arlen,
    data_M_AXI_1_arlock,
    data_M_AXI_1_arprot,
    data_M_AXI_1_arqos,
    data_M_AXI_1_arready,
    data_M_AXI_1_arregion,
    data_M_AXI_1_arsize,
    data_M_AXI_1_arvalid,
    data_M_AXI_1_awaddr,
    data_M_AXI_1_awburst,
    data_M_AXI_1_awcache,
    data_M_AXI_1_awid,
    data_M_AXI_1_awlen,
    data_M_AXI_1_awlock,
    data_M_AXI_1_awprot,
    data_M_AXI_1_awqos,
    data_M_AXI_1_awready,
    data_M_AXI_1_awregion,
    data_M_AXI_1_awsize,
    data_M_AXI_1_awvalid,
    data_M_AXI_1_bid,
    data_M_AXI_1_bready,
    data_M_AXI_1_bresp,
    data_M_AXI_1_bvalid,
    data_M_AXI_1_rdata,
    data_M_AXI_1_rid,
    data_M_AXI_1_rlast,
    data_M_AXI_1_rready,
    data_M_AXI_1_rresp,
    data_M_AXI_1_rvalid,
    data_M_AXI_1_wdata,
    data_M_AXI_1_wlast,
    data_M_AXI_1_wready,
    data_M_AXI_1_wstrb,
    data_M_AXI_1_wvalid,
    data_M_AXI_2_araddr,
    data_M_AXI_2_arburst,
    data_M_AXI_2_arcache,
    data_M_AXI_2_arid,
    data_M_AXI_2_arlen,
    data_M_AXI_2_arlock,
    data_M_AXI_2_arprot,
    data_M_AXI_2_arqos,
    data_M_AXI_2_arready,
    data_M_AXI_2_arregion,
    data_M_AXI_2_arsize,
    data_M_AXI_2_arvalid,
    data_M_AXI_2_awaddr,
    data_M_AXI_2_awburst,
    data_M_AXI_2_awcache,
    data_M_AXI_2_awid,
    data_M_AXI_2_awlen,
    data_M_AXI_2_awlock,
    data_M_AXI_2_awprot,
    data_M_AXI_2_awqos,
    data_M_AXI_2_awready,
    data_M_AXI_2_awregion,
    data_M_AXI_2_awsize,
    data_M_AXI_2_awvalid,
    data_M_AXI_2_bid,
    data_M_AXI_2_bready,
    data_M_AXI_2_bresp,
    data_M_AXI_2_bvalid,
    data_M_AXI_2_rdata,
    data_M_AXI_2_rid,
    data_M_AXI_2_rlast,
    data_M_AXI_2_rready,
    data_M_AXI_2_rresp,
    data_M_AXI_2_rvalid,
    data_M_AXI_2_wdata,
    data_M_AXI_2_wlast,
    data_M_AXI_2_wready,
    data_M_AXI_2_wstrb,
    data_M_AXI_2_wvalid,
    data_M_AXI_3_araddr,
    data_M_AXI_3_arburst,
    data_M_AXI_3_arcache,
    data_M_AXI_3_arid,
    data_M_AXI_3_arlen,
    data_M_AXI_3_arlock,
    data_M_AXI_3_arprot,
    data_M_AXI_3_arqos,
    data_M_AXI_3_arready,
    data_M_AXI_3_arregion,
    data_M_AXI_3_arsize,
    data_M_AXI_3_arvalid,
    data_M_AXI_3_awaddr,
    data_M_AXI_3_awburst,
    data_M_AXI_3_awcache,
    data_M_AXI_3_awid,
    data_M_AXI_3_awlen,
    data_M_AXI_3_awlock,
    data_M_AXI_3_awprot,
    data_M_AXI_3_awqos,
    data_M_AXI_3_awready,
    data_M_AXI_3_awregion,
    data_M_AXI_3_awsize,
    data_M_AXI_3_awvalid,
    data_M_AXI_3_bid,
    data_M_AXI_3_bready,
    data_M_AXI_3_bresp,
    data_M_AXI_3_bvalid,
    data_M_AXI_3_rdata,
    data_M_AXI_3_rid,
    data_M_AXI_3_rlast,
    data_M_AXI_3_rready,
    data_M_AXI_3_rresp,
    data_M_AXI_3_rvalid,
    data_M_AXI_3_wdata,
    data_M_AXI_3_wlast,
    data_M_AXI_3_wready,
    data_M_AXI_3_wstrb,
    data_M_AXI_3_wvalid,
    data_M_AXI_4_araddr,
    data_M_AXI_4_arburst,
    data_M_AXI_4_arcache,
    data_M_AXI_4_arid,
    data_M_AXI_4_arlen,
    data_M_AXI_4_arlock,
    data_M_AXI_4_arprot,
    data_M_AXI_4_arqos,
    data_M_AXI_4_arready,
    data_M_AXI_4_arregion,
    data_M_AXI_4_arsize,
    data_M_AXI_4_arvalid,
    data_M_AXI_4_awaddr,
    data_M_AXI_4_awburst,
    data_M_AXI_4_awcache,
    data_M_AXI_4_awid,
    data_M_AXI_4_awlen,
    data_M_AXI_4_awlock,
    data_M_AXI_4_awprot,
    data_M_AXI_4_awqos,
    data_M_AXI_4_awready,
    data_M_AXI_4_awregion,
    data_M_AXI_4_awsize,
    data_M_AXI_4_awvalid,
    data_M_AXI_4_bid,
    data_M_AXI_4_bready,
    data_M_AXI_4_bresp,
    data_M_AXI_4_bvalid,
    data_M_AXI_4_rdata,
    data_M_AXI_4_rid,
    data_M_AXI_4_rlast,
    data_M_AXI_4_rready,
    data_M_AXI_4_rresp,
    data_M_AXI_4_rvalid,
    data_M_AXI_4_wdata,
    data_M_AXI_4_wlast,
    data_M_AXI_4_wready,
    data_M_AXI_4_wstrb,
    data_M_AXI_4_wvalid,
    ddr_default_clk_0,
    ddr_default_rst_0,
    dma_pcie_aclk,
    dma_pcie_arst,
    irq_cu,
    userpf_control_M_AXI_araddr,
    userpf_control_M_AXI_arprot,
    userpf_control_M_AXI_arready,
    userpf_control_M_AXI_arvalid,
    userpf_control_M_AXI_awaddr,
    userpf_control_M_AXI_awprot,
    userpf_control_M_AXI_awready,
    userpf_control_M_AXI_awvalid,
    userpf_control_M_AXI_bready,
    userpf_control_M_AXI_bresp,
    userpf_control_M_AXI_bvalid,
    userpf_control_M_AXI_rdata,
    userpf_control_M_AXI_rready,
    userpf_control_M_AXI_rresp,
    userpf_control_M_AXI_rvalid,
    userpf_control_M_AXI_wdata,
    userpf_control_M_AXI_wready,
    userpf_control_M_AXI_wstrb,
    userpf_control_M_AXI_wvalid);
  output [34:0]C0_DDR_MAXI_0_araddr;
  output [1:0]C0_DDR_MAXI_0_arburst;
  output [7:0]C0_DDR_MAXI_0_arlen;
  output [2:0]C0_DDR_MAXI_0_arprot;
  input [0:0]C0_DDR_MAXI_0_arready;
  output [2:0]C0_DDR_MAXI_0_arsize;
  output [0:0]C0_DDR_MAXI_0_arvalid;
  output [34:0]C0_DDR_MAXI_0_awaddr;
  output [1:0]C0_DDR_MAXI_0_awburst;
  output [7:0]C0_DDR_MAXI_0_awlen;
  output [2:0]C0_DDR_MAXI_0_awprot;
  input [0:0]C0_DDR_MAXI_0_awready;
  output [2:0]C0_DDR_MAXI_0_awsize;
  output [0:0]C0_DDR_MAXI_0_awvalid;
  output [0:0]C0_DDR_MAXI_0_bready;
  input [1:0]C0_DDR_MAXI_0_bresp;
  input [0:0]C0_DDR_MAXI_0_bvalid;
  input [511:0]C0_DDR_MAXI_0_rdata;
  input [0:0]C0_DDR_MAXI_0_rlast;
  output [0:0]C0_DDR_MAXI_0_rready;
  input [1:0]C0_DDR_MAXI_0_rresp;
  input [0:0]C0_DDR_MAXI_0_rvalid;
  output [511:0]C0_DDR_MAXI_0_wdata;
  output [0:0]C0_DDR_MAXI_0_wlast;
  input [0:0]C0_DDR_MAXI_0_wready;
  output [63:0]C0_DDR_MAXI_0_wstrb;
  output [0:0]C0_DDR_MAXI_0_wvalid;
  input clkwiz_kernel2_clk_0;
  input clkwiz_kernel2_rst_0;
  input clkwiz_kernel_clk_0;
  input clkwiz_kernel_rst_0;
  input [63:0]data_M_AXI_0_araddr;
  input [1:0]data_M_AXI_0_arburst;
  input [3:0]data_M_AXI_0_arcache;
  input [0:0]data_M_AXI_0_arid;
  input [7:0]data_M_AXI_0_arlen;
  input data_M_AXI_0_arlock;
  input [2:0]data_M_AXI_0_arprot;
  input [3:0]data_M_AXI_0_arqos;
  output data_M_AXI_0_arready;
  input [3:0]data_M_AXI_0_arregion;
  input [2:0]data_M_AXI_0_arsize;
  input data_M_AXI_0_arvalid;
  input [63:0]data_M_AXI_0_awaddr;
  input [1:0]data_M_AXI_0_awburst;
  input [3:0]data_M_AXI_0_awcache;
  input [0:0]data_M_AXI_0_awid;
  input [7:0]data_M_AXI_0_awlen;
  input data_M_AXI_0_awlock;
  input [2:0]data_M_AXI_0_awprot;
  input [3:0]data_M_AXI_0_awqos;
  output data_M_AXI_0_awready;
  input [3:0]data_M_AXI_0_awregion;
  input [2:0]data_M_AXI_0_awsize;
  input data_M_AXI_0_awvalid;
  output [0:0]data_M_AXI_0_bid;
  input data_M_AXI_0_bready;
  output [1:0]data_M_AXI_0_bresp;
  output data_M_AXI_0_bvalid;
  output [31:0]data_M_AXI_0_rdata;
  output [0:0]data_M_AXI_0_rid;
  output data_M_AXI_0_rlast;
  input data_M_AXI_0_rready;
  output [1:0]data_M_AXI_0_rresp;
  output data_M_AXI_0_rvalid;
  input [31:0]data_M_AXI_0_wdata;
  input data_M_AXI_0_wlast;
  output data_M_AXI_0_wready;
  input [3:0]data_M_AXI_0_wstrb;
  input data_M_AXI_0_wvalid;
  input [63:0]data_M_AXI_1_araddr;
  input [1:0]data_M_AXI_1_arburst;
  input [3:0]data_M_AXI_1_arcache;
  input [0:0]data_M_AXI_1_arid;
  input [7:0]data_M_AXI_1_arlen;
  input data_M_AXI_1_arlock;
  input [2:0]data_M_AXI_1_arprot;
  input [3:0]data_M_AXI_1_arqos;
  output data_M_AXI_1_arready;
  input [3:0]data_M_AXI_1_arregion;
  input [2:0]data_M_AXI_1_arsize;
  input data_M_AXI_1_arvalid;
  input [63:0]data_M_AXI_1_awaddr;
  input [1:0]data_M_AXI_1_awburst;
  input [3:0]data_M_AXI_1_awcache;
  input [0:0]data_M_AXI_1_awid;
  input [7:0]data_M_AXI_1_awlen;
  input data_M_AXI_1_awlock;
  input [2:0]data_M_AXI_1_awprot;
  input [3:0]data_M_AXI_1_awqos;
  output data_M_AXI_1_awready;
  input [3:0]data_M_AXI_1_awregion;
  input [2:0]data_M_AXI_1_awsize;
  input data_M_AXI_1_awvalid;
  output [0:0]data_M_AXI_1_bid;
  input data_M_AXI_1_bready;
  output [1:0]data_M_AXI_1_bresp;
  output data_M_AXI_1_bvalid;
  output [511:0]data_M_AXI_1_rdata;
  output [0:0]data_M_AXI_1_rid;
  output data_M_AXI_1_rlast;
  input data_M_AXI_1_rready;
  output [1:0]data_M_AXI_1_rresp;
  output data_M_AXI_1_rvalid;
  input [511:0]data_M_AXI_1_wdata;
  input data_M_AXI_1_wlast;
  output data_M_AXI_1_wready;
  input [63:0]data_M_AXI_1_wstrb;
  input data_M_AXI_1_wvalid;
  input [63:0]data_M_AXI_2_araddr;
  input [1:0]data_M_AXI_2_arburst;
  input [3:0]data_M_AXI_2_arcache;
  input [0:0]data_M_AXI_2_arid;
  input [7:0]data_M_AXI_2_arlen;
  input data_M_AXI_2_arlock;
  input [2:0]data_M_AXI_2_arprot;
  input [3:0]data_M_AXI_2_arqos;
  output data_M_AXI_2_arready;
  input [3:0]data_M_AXI_2_arregion;
  input [2:0]data_M_AXI_2_arsize;
  input data_M_AXI_2_arvalid;
  input [63:0]data_M_AXI_2_awaddr;
  input [1:0]data_M_AXI_2_awburst;
  input [3:0]data_M_AXI_2_awcache;
  input [0:0]data_M_AXI_2_awid;
  input [7:0]data_M_AXI_2_awlen;
  input data_M_AXI_2_awlock;
  input [2:0]data_M_AXI_2_awprot;
  input [3:0]data_M_AXI_2_awqos;
  output data_M_AXI_2_awready;
  input [3:0]data_M_AXI_2_awregion;
  input [2:0]data_M_AXI_2_awsize;
  input data_M_AXI_2_awvalid;
  output [0:0]data_M_AXI_2_bid;
  input data_M_AXI_2_bready;
  output [1:0]data_M_AXI_2_bresp;
  output data_M_AXI_2_bvalid;
  output [511:0]data_M_AXI_2_rdata;
  output [0:0]data_M_AXI_2_rid;
  output data_M_AXI_2_rlast;
  input data_M_AXI_2_rready;
  output [1:0]data_M_AXI_2_rresp;
  output data_M_AXI_2_rvalid;
  input [511:0]data_M_AXI_2_wdata;
  input data_M_AXI_2_wlast;
  output data_M_AXI_2_wready;
  input [63:0]data_M_AXI_2_wstrb;
  input data_M_AXI_2_wvalid;
  input [63:0]data_M_AXI_3_araddr;
  input [1:0]data_M_AXI_3_arburst;
  input [3:0]data_M_AXI_3_arcache;
  input [0:0]data_M_AXI_3_arid;
  input [7:0]data_M_AXI_3_arlen;
  input data_M_AXI_3_arlock;
  input [2:0]data_M_AXI_3_arprot;
  input [3:0]data_M_AXI_3_arqos;
  output data_M_AXI_3_arready;
  input [3:0]data_M_AXI_3_arregion;
  input [2:0]data_M_AXI_3_arsize;
  input data_M_AXI_3_arvalid;
  input [63:0]data_M_AXI_3_awaddr;
  input [1:0]data_M_AXI_3_awburst;
  input [3:0]data_M_AXI_3_awcache;
  input [0:0]data_M_AXI_3_awid;
  input [7:0]data_M_AXI_3_awlen;
  input data_M_AXI_3_awlock;
  input [2:0]data_M_AXI_3_awprot;
  input [3:0]data_M_AXI_3_awqos;
  output data_M_AXI_3_awready;
  input [3:0]data_M_AXI_3_awregion;
  input [2:0]data_M_AXI_3_awsize;
  input data_M_AXI_3_awvalid;
  output [0:0]data_M_AXI_3_bid;
  input data_M_AXI_3_bready;
  output [1:0]data_M_AXI_3_bresp;
  output data_M_AXI_3_bvalid;
  output [511:0]data_M_AXI_3_rdata;
  output [0:0]data_M_AXI_3_rid;
  output data_M_AXI_3_rlast;
  input data_M_AXI_3_rready;
  output [1:0]data_M_AXI_3_rresp;
  output data_M_AXI_3_rvalid;
  input [511:0]data_M_AXI_3_wdata;
  input data_M_AXI_3_wlast;
  output data_M_AXI_3_wready;
  input [63:0]data_M_AXI_3_wstrb;
  input data_M_AXI_3_wvalid;
  input [63:0]data_M_AXI_4_araddr;
  input [1:0]data_M_AXI_4_arburst;
  input [3:0]data_M_AXI_4_arcache;
  input [0:0]data_M_AXI_4_arid;
  input [7:0]data_M_AXI_4_arlen;
  input data_M_AXI_4_arlock;
  input [2:0]data_M_AXI_4_arprot;
  input [3:0]data_M_AXI_4_arqos;
  output data_M_AXI_4_arready;
  input [3:0]data_M_AXI_4_arregion;
  input [2:0]data_M_AXI_4_arsize;
  input data_M_AXI_4_arvalid;
  input [63:0]data_M_AXI_4_awaddr;
  input [1:0]data_M_AXI_4_awburst;
  input [3:0]data_M_AXI_4_awcache;
  input [0:0]data_M_AXI_4_awid;
  input [7:0]data_M_AXI_4_awlen;
  input data_M_AXI_4_awlock;
  input [2:0]data_M_AXI_4_awprot;
  input [3:0]data_M_AXI_4_awqos;
  output data_M_AXI_4_awready;
  input [3:0]data_M_AXI_4_awregion;
  input [2:0]data_M_AXI_4_awsize;
  input data_M_AXI_4_awvalid;
  output [0:0]data_M_AXI_4_bid;
  input data_M_AXI_4_bready;
  output [1:0]data_M_AXI_4_bresp;
  output data_M_AXI_4_bvalid;
  output [511:0]data_M_AXI_4_rdata;
  output [0:0]data_M_AXI_4_rid;
  output data_M_AXI_4_rlast;
  input data_M_AXI_4_rready;
  output [1:0]data_M_AXI_4_rresp;
  output data_M_AXI_4_rvalid;
  input [511:0]data_M_AXI_4_wdata;
  input data_M_AXI_4_wlast;
  output data_M_AXI_4_wready;
  input [63:0]data_M_AXI_4_wstrb;
  input data_M_AXI_4_wvalid;
  input ddr_default_clk_0;
  input ddr_default_rst_0;
  input dma_pcie_aclk;
  input [0:0]dma_pcie_arst;
  output [127:0]irq_cu;
  input [63:0]userpf_control_M_AXI_araddr;
  input [2:0]userpf_control_M_AXI_arprot;
  output [0:0]userpf_control_M_AXI_arready;
  input [0:0]userpf_control_M_AXI_arvalid;
  input [63:0]userpf_control_M_AXI_awaddr;
  input [2:0]userpf_control_M_AXI_awprot;
  output [0:0]userpf_control_M_AXI_awready;
  input [0:0]userpf_control_M_AXI_awvalid;
  input [0:0]userpf_control_M_AXI_bready;
  output [1:0]userpf_control_M_AXI_bresp;
  output [0:0]userpf_control_M_AXI_bvalid;
  output [31:0]userpf_control_M_AXI_rdata;
  input [0:0]userpf_control_M_AXI_rready;
  output [1:0]userpf_control_M_AXI_rresp;
  output [0:0]userpf_control_M_AXI_rvalid;
  input [31:0]userpf_control_M_AXI_wdata;
  output [0:0]userpf_control_M_AXI_wready;
  input [3:0]userpf_control_M_AXI_wstrb;
  input [0:0]userpf_control_M_AXI_wvalid;

  wire [34:0]C0_DDR_MAXI_0_araddr;
  wire [1:0]C0_DDR_MAXI_0_arburst;
  wire [7:0]C0_DDR_MAXI_0_arlen;
  wire [2:0]C0_DDR_MAXI_0_arprot;
  wire [0:0]C0_DDR_MAXI_0_arready;
  wire [2:0]C0_DDR_MAXI_0_arsize;
  wire [0:0]C0_DDR_MAXI_0_arvalid;
  wire [34:0]C0_DDR_MAXI_0_awaddr;
  wire [1:0]C0_DDR_MAXI_0_awburst;
  wire [7:0]C0_DDR_MAXI_0_awlen;
  wire [2:0]C0_DDR_MAXI_0_awprot;
  wire [0:0]C0_DDR_MAXI_0_awready;
  wire [2:0]C0_DDR_MAXI_0_awsize;
  wire [0:0]C0_DDR_MAXI_0_awvalid;
  wire [0:0]C0_DDR_MAXI_0_bready;
  wire [1:0]C0_DDR_MAXI_0_bresp;
  wire [0:0]C0_DDR_MAXI_0_bvalid;
  wire [511:0]C0_DDR_MAXI_0_rdata;
  wire [0:0]C0_DDR_MAXI_0_rlast;
  wire [0:0]C0_DDR_MAXI_0_rready;
  wire [1:0]C0_DDR_MAXI_0_rresp;
  wire [0:0]C0_DDR_MAXI_0_rvalid;
  wire [511:0]C0_DDR_MAXI_0_wdata;
  wire [0:0]C0_DDR_MAXI_0_wlast;
  wire [0:0]C0_DDR_MAXI_0_wready;
  wire [63:0]C0_DDR_MAXI_0_wstrb;
  wire [0:0]C0_DDR_MAXI_0_wvalid;
  wire clkwiz_kernel2_clk_0;
  wire clkwiz_kernel2_rst_0;
  wire clkwiz_kernel_clk_0;
  wire clkwiz_kernel_rst_0;
  wire [63:0]data_M_AXI_0_araddr;
  wire [1:0]data_M_AXI_0_arburst;
  wire [3:0]data_M_AXI_0_arcache;
  wire [0:0]data_M_AXI_0_arid;
  wire [7:0]data_M_AXI_0_arlen;
  wire data_M_AXI_0_arlock;
  wire [2:0]data_M_AXI_0_arprot;
  wire [3:0]data_M_AXI_0_arqos;
  wire data_M_AXI_0_arready;
  wire [3:0]data_M_AXI_0_arregion;
  wire [2:0]data_M_AXI_0_arsize;
  wire data_M_AXI_0_arvalid;
  wire [63:0]data_M_AXI_0_awaddr;
  wire [1:0]data_M_AXI_0_awburst;
  wire [3:0]data_M_AXI_0_awcache;
  wire [0:0]data_M_AXI_0_awid;
  wire [7:0]data_M_AXI_0_awlen;
  wire data_M_AXI_0_awlock;
  wire [2:0]data_M_AXI_0_awprot;
  wire [3:0]data_M_AXI_0_awqos;
  wire data_M_AXI_0_awready;
  wire [3:0]data_M_AXI_0_awregion;
  wire [2:0]data_M_AXI_0_awsize;
  wire data_M_AXI_0_awvalid;
  wire [0:0]data_M_AXI_0_bid;
  wire data_M_AXI_0_bready;
  wire [1:0]data_M_AXI_0_bresp;
  wire data_M_AXI_0_bvalid;
  wire [31:0]data_M_AXI_0_rdata;
  wire [0:0]data_M_AXI_0_rid;
  wire data_M_AXI_0_rlast;
  wire data_M_AXI_0_rready;
  wire [1:0]data_M_AXI_0_rresp;
  wire data_M_AXI_0_rvalid;
  wire [31:0]data_M_AXI_0_wdata;
  wire data_M_AXI_0_wlast;
  wire data_M_AXI_0_wready;
  wire [3:0]data_M_AXI_0_wstrb;
  wire data_M_AXI_0_wvalid;
  wire [63:0]data_M_AXI_1_araddr;
  wire [1:0]data_M_AXI_1_arburst;
  wire [3:0]data_M_AXI_1_arcache;
  wire [0:0]data_M_AXI_1_arid;
  wire [7:0]data_M_AXI_1_arlen;
  wire data_M_AXI_1_arlock;
  wire [2:0]data_M_AXI_1_arprot;
  wire [3:0]data_M_AXI_1_arqos;
  wire data_M_AXI_1_arready;
  wire [3:0]data_M_AXI_1_arregion;
  wire [2:0]data_M_AXI_1_arsize;
  wire data_M_AXI_1_arvalid;
  wire [63:0]data_M_AXI_1_awaddr;
  wire [1:0]data_M_AXI_1_awburst;
  wire [3:0]data_M_AXI_1_awcache;
  wire [0:0]data_M_AXI_1_awid;
  wire [7:0]data_M_AXI_1_awlen;
  wire data_M_AXI_1_awlock;
  wire [2:0]data_M_AXI_1_awprot;
  wire [3:0]data_M_AXI_1_awqos;
  wire data_M_AXI_1_awready;
  wire [3:0]data_M_AXI_1_awregion;
  wire [2:0]data_M_AXI_1_awsize;
  wire data_M_AXI_1_awvalid;
  wire [0:0]data_M_AXI_1_bid;
  wire data_M_AXI_1_bready;
  wire [1:0]data_M_AXI_1_bresp;
  wire data_M_AXI_1_bvalid;
  wire [511:0]data_M_AXI_1_rdata;
  wire [0:0]data_M_AXI_1_rid;
  wire data_M_AXI_1_rlast;
  wire data_M_AXI_1_rready;
  wire [1:0]data_M_AXI_1_rresp;
  wire data_M_AXI_1_rvalid;
  wire [511:0]data_M_AXI_1_wdata;
  wire data_M_AXI_1_wlast;
  wire data_M_AXI_1_wready;
  wire [63:0]data_M_AXI_1_wstrb;
  wire data_M_AXI_1_wvalid;
  wire [63:0]data_M_AXI_2_araddr;
  wire [1:0]data_M_AXI_2_arburst;
  wire [3:0]data_M_AXI_2_arcache;
  wire [0:0]data_M_AXI_2_arid;
  wire [7:0]data_M_AXI_2_arlen;
  wire data_M_AXI_2_arlock;
  wire [2:0]data_M_AXI_2_arprot;
  wire [3:0]data_M_AXI_2_arqos;
  wire data_M_AXI_2_arready;
  wire [3:0]data_M_AXI_2_arregion;
  wire [2:0]data_M_AXI_2_arsize;
  wire data_M_AXI_2_arvalid;
  wire [63:0]data_M_AXI_2_awaddr;
  wire [1:0]data_M_AXI_2_awburst;
  wire [3:0]data_M_AXI_2_awcache;
  wire [0:0]data_M_AXI_2_awid;
  wire [7:0]data_M_AXI_2_awlen;
  wire data_M_AXI_2_awlock;
  wire [2:0]data_M_AXI_2_awprot;
  wire [3:0]data_M_AXI_2_awqos;
  wire data_M_AXI_2_awready;
  wire [3:0]data_M_AXI_2_awregion;
  wire [2:0]data_M_AXI_2_awsize;
  wire data_M_AXI_2_awvalid;
  wire [0:0]data_M_AXI_2_bid;
  wire data_M_AXI_2_bready;
  wire [1:0]data_M_AXI_2_bresp;
  wire data_M_AXI_2_bvalid;
  wire [511:0]data_M_AXI_2_rdata;
  wire [0:0]data_M_AXI_2_rid;
  wire data_M_AXI_2_rlast;
  wire data_M_AXI_2_rready;
  wire [1:0]data_M_AXI_2_rresp;
  wire data_M_AXI_2_rvalid;
  wire [511:0]data_M_AXI_2_wdata;
  wire data_M_AXI_2_wlast;
  wire data_M_AXI_2_wready;
  wire [63:0]data_M_AXI_2_wstrb;
  wire data_M_AXI_2_wvalid;
  wire [63:0]data_M_AXI_3_araddr;
  wire [1:0]data_M_AXI_3_arburst;
  wire [3:0]data_M_AXI_3_arcache;
  wire [0:0]data_M_AXI_3_arid;
  wire [7:0]data_M_AXI_3_arlen;
  wire data_M_AXI_3_arlock;
  wire [2:0]data_M_AXI_3_arprot;
  wire [3:0]data_M_AXI_3_arqos;
  wire data_M_AXI_3_arready;
  wire [3:0]data_M_AXI_3_arregion;
  wire [2:0]data_M_AXI_3_arsize;
  wire data_M_AXI_3_arvalid;
  wire [63:0]data_M_AXI_3_awaddr;
  wire [1:0]data_M_AXI_3_awburst;
  wire [3:0]data_M_AXI_3_awcache;
  wire [0:0]data_M_AXI_3_awid;
  wire [7:0]data_M_AXI_3_awlen;
  wire data_M_AXI_3_awlock;
  wire [2:0]data_M_AXI_3_awprot;
  wire [3:0]data_M_AXI_3_awqos;
  wire data_M_AXI_3_awready;
  wire [3:0]data_M_AXI_3_awregion;
  wire [2:0]data_M_AXI_3_awsize;
  wire data_M_AXI_3_awvalid;
  wire [0:0]data_M_AXI_3_bid;
  wire data_M_AXI_3_bready;
  wire [1:0]data_M_AXI_3_bresp;
  wire data_M_AXI_3_bvalid;
  wire [511:0]data_M_AXI_3_rdata;
  wire [0:0]data_M_AXI_3_rid;
  wire data_M_AXI_3_rlast;
  wire data_M_AXI_3_rready;
  wire [1:0]data_M_AXI_3_rresp;
  wire data_M_AXI_3_rvalid;
  wire [511:0]data_M_AXI_3_wdata;
  wire data_M_AXI_3_wlast;
  wire data_M_AXI_3_wready;
  wire [63:0]data_M_AXI_3_wstrb;
  wire data_M_AXI_3_wvalid;
  wire [63:0]data_M_AXI_4_araddr;
  wire [1:0]data_M_AXI_4_arburst;
  wire [3:0]data_M_AXI_4_arcache;
  wire [0:0]data_M_AXI_4_arid;
  wire [7:0]data_M_AXI_4_arlen;
  wire data_M_AXI_4_arlock;
  wire [2:0]data_M_AXI_4_arprot;
  wire [3:0]data_M_AXI_4_arqos;
  wire data_M_AXI_4_arready;
  wire [3:0]data_M_AXI_4_arregion;
  wire [2:0]data_M_AXI_4_arsize;
  wire data_M_AXI_4_arvalid;
  wire [63:0]data_M_AXI_4_awaddr;
  wire [1:0]data_M_AXI_4_awburst;
  wire [3:0]data_M_AXI_4_awcache;
  wire [0:0]data_M_AXI_4_awid;
  wire [7:0]data_M_AXI_4_awlen;
  wire data_M_AXI_4_awlock;
  wire [2:0]data_M_AXI_4_awprot;
  wire [3:0]data_M_AXI_4_awqos;
  wire data_M_AXI_4_awready;
  wire [3:0]data_M_AXI_4_awregion;
  wire [2:0]data_M_AXI_4_awsize;
  wire data_M_AXI_4_awvalid;
  wire [0:0]data_M_AXI_4_bid;
  wire data_M_AXI_4_bready;
  wire [1:0]data_M_AXI_4_bresp;
  wire data_M_AXI_4_bvalid;
  wire [511:0]data_M_AXI_4_rdata;
  wire [0:0]data_M_AXI_4_rid;
  wire data_M_AXI_4_rlast;
  wire data_M_AXI_4_rready;
  wire [1:0]data_M_AXI_4_rresp;
  wire data_M_AXI_4_rvalid;
  wire [511:0]data_M_AXI_4_wdata;
  wire data_M_AXI_4_wlast;
  wire data_M_AXI_4_wready;
  wire [63:0]data_M_AXI_4_wstrb;
  wire data_M_AXI_4_wvalid;
  wire ddr_default_clk_0;
  wire ddr_default_rst_0;
  wire dma_pcie_aclk;
  wire [0:0]dma_pcie_arst;
  wire [127:0]irq_cu;
  wire [63:0]userpf_control_M_AXI_araddr;
  wire [2:0]userpf_control_M_AXI_arprot;
  wire [0:0]userpf_control_M_AXI_arready;
  wire [0:0]userpf_control_M_AXI_arvalid;
  wire [63:0]userpf_control_M_AXI_awaddr;
  wire [2:0]userpf_control_M_AXI_awprot;
  wire [0:0]userpf_control_M_AXI_awready;
  wire [0:0]userpf_control_M_AXI_awvalid;
  wire [0:0]userpf_control_M_AXI_bready;
  wire [1:0]userpf_control_M_AXI_bresp;
  wire [0:0]userpf_control_M_AXI_bvalid;
  wire [31:0]userpf_control_M_AXI_rdata;
  wire [0:0]userpf_control_M_AXI_rready;
  wire [1:0]userpf_control_M_AXI_rresp;
  wire [0:0]userpf_control_M_AXI_rvalid;
  wire [31:0]userpf_control_M_AXI_wdata;
  wire [0:0]userpf_control_M_AXI_wready;
  wire [3:0]userpf_control_M_AXI_wstrb;
  wire [0:0]userpf_control_M_AXI_wvalid;

  pfm_dynamic pfm_dynamic_i
       (.C0_DDR_MAXI_0_araddr(C0_DDR_MAXI_0_araddr),
        .C0_DDR_MAXI_0_arburst(C0_DDR_MAXI_0_arburst),
        .C0_DDR_MAXI_0_arlen(C0_DDR_MAXI_0_arlen),
        .C0_DDR_MAXI_0_arprot(C0_DDR_MAXI_0_arprot),
        .C0_DDR_MAXI_0_arready(C0_DDR_MAXI_0_arready),
        .C0_DDR_MAXI_0_arsize(C0_DDR_MAXI_0_arsize),
        .C0_DDR_MAXI_0_arvalid(C0_DDR_MAXI_0_arvalid),
        .C0_DDR_MAXI_0_awaddr(C0_DDR_MAXI_0_awaddr),
        .C0_DDR_MAXI_0_awburst(C0_DDR_MAXI_0_awburst),
        .C0_DDR_MAXI_0_awlen(C0_DDR_MAXI_0_awlen),
        .C0_DDR_MAXI_0_awprot(C0_DDR_MAXI_0_awprot),
        .C0_DDR_MAXI_0_awready(C0_DDR_MAXI_0_awready),
        .C0_DDR_MAXI_0_awsize(C0_DDR_MAXI_0_awsize),
        .C0_DDR_MAXI_0_awvalid(C0_DDR_MAXI_0_awvalid),
        .C0_DDR_MAXI_0_bready(C0_DDR_MAXI_0_bready),
        .C0_DDR_MAXI_0_bresp(C0_DDR_MAXI_0_bresp),
        .C0_DDR_MAXI_0_bvalid(C0_DDR_MAXI_0_bvalid),
        .C0_DDR_MAXI_0_rdata(C0_DDR_MAXI_0_rdata),
        .C0_DDR_MAXI_0_rlast(C0_DDR_MAXI_0_rlast),
        .C0_DDR_MAXI_0_rready(C0_DDR_MAXI_0_rready),
        .C0_DDR_MAXI_0_rresp(C0_DDR_MAXI_0_rresp),
        .C0_DDR_MAXI_0_rvalid(C0_DDR_MAXI_0_rvalid),
        .C0_DDR_MAXI_0_wdata(C0_DDR_MAXI_0_wdata),
        .C0_DDR_MAXI_0_wlast(C0_DDR_MAXI_0_wlast),
        .C0_DDR_MAXI_0_wready(C0_DDR_MAXI_0_wready),
        .C0_DDR_MAXI_0_wstrb(C0_DDR_MAXI_0_wstrb),
        .C0_DDR_MAXI_0_wvalid(C0_DDR_MAXI_0_wvalid),
        .clkwiz_kernel2_clk_0(clkwiz_kernel2_clk_0),
        .clkwiz_kernel2_rst_0(clkwiz_kernel2_rst_0),
        .clkwiz_kernel_clk_0(clkwiz_kernel_clk_0),
        .clkwiz_kernel_rst_0(clkwiz_kernel_rst_0),
        .data_M_AXI_0_araddr(data_M_AXI_0_araddr),
        .data_M_AXI_0_arburst(data_M_AXI_0_arburst),
        .data_M_AXI_0_arcache(data_M_AXI_0_arcache),
        .data_M_AXI_0_arid(data_M_AXI_0_arid),
        .data_M_AXI_0_arlen(data_M_AXI_0_arlen),
        .data_M_AXI_0_arlock(data_M_AXI_0_arlock),
        .data_M_AXI_0_arprot(data_M_AXI_0_arprot),
        .data_M_AXI_0_arqos(data_M_AXI_0_arqos),
        .data_M_AXI_0_arready(data_M_AXI_0_arready),
        .data_M_AXI_0_arregion(data_M_AXI_0_arregion),
        .data_M_AXI_0_arsize(data_M_AXI_0_arsize),
        .data_M_AXI_0_arvalid(data_M_AXI_0_arvalid),
        .data_M_AXI_0_awaddr(data_M_AXI_0_awaddr),
        .data_M_AXI_0_awburst(data_M_AXI_0_awburst),
        .data_M_AXI_0_awcache(data_M_AXI_0_awcache),
        .data_M_AXI_0_awid(data_M_AXI_0_awid),
        .data_M_AXI_0_awlen(data_M_AXI_0_awlen),
        .data_M_AXI_0_awlock(data_M_AXI_0_awlock),
        .data_M_AXI_0_awprot(data_M_AXI_0_awprot),
        .data_M_AXI_0_awqos(data_M_AXI_0_awqos),
        .data_M_AXI_0_awready(data_M_AXI_0_awready),
        .data_M_AXI_0_awregion(data_M_AXI_0_awregion),
        .data_M_AXI_0_awsize(data_M_AXI_0_awsize),
        .data_M_AXI_0_awvalid(data_M_AXI_0_awvalid),
        .data_M_AXI_0_bid(data_M_AXI_0_bid),
        .data_M_AXI_0_bready(data_M_AXI_0_bready),
        .data_M_AXI_0_bresp(data_M_AXI_0_bresp),
        .data_M_AXI_0_bvalid(data_M_AXI_0_bvalid),
        .data_M_AXI_0_rdata(data_M_AXI_0_rdata),
        .data_M_AXI_0_rid(data_M_AXI_0_rid),
        .data_M_AXI_0_rlast(data_M_AXI_0_rlast),
        .data_M_AXI_0_rready(data_M_AXI_0_rready),
        .data_M_AXI_0_rresp(data_M_AXI_0_rresp),
        .data_M_AXI_0_rvalid(data_M_AXI_0_rvalid),
        .data_M_AXI_0_wdata(data_M_AXI_0_wdata),
        .data_M_AXI_0_wlast(data_M_AXI_0_wlast),
        .data_M_AXI_0_wready(data_M_AXI_0_wready),
        .data_M_AXI_0_wstrb(data_M_AXI_0_wstrb),
        .data_M_AXI_0_wvalid(data_M_AXI_0_wvalid),
        .data_M_AXI_1_araddr(data_M_AXI_1_araddr),
        .data_M_AXI_1_arburst(data_M_AXI_1_arburst),
        .data_M_AXI_1_arcache(data_M_AXI_1_arcache),
        .data_M_AXI_1_arid(data_M_AXI_1_arid),
        .data_M_AXI_1_arlen(data_M_AXI_1_arlen),
        .data_M_AXI_1_arlock(data_M_AXI_1_arlock),
        .data_M_AXI_1_arprot(data_M_AXI_1_arprot),
        .data_M_AXI_1_arqos(data_M_AXI_1_arqos),
        .data_M_AXI_1_arready(data_M_AXI_1_arready),
        .data_M_AXI_1_arregion(data_M_AXI_1_arregion),
        .data_M_AXI_1_arsize(data_M_AXI_1_arsize),
        .data_M_AXI_1_arvalid(data_M_AXI_1_arvalid),
        .data_M_AXI_1_awaddr(data_M_AXI_1_awaddr),
        .data_M_AXI_1_awburst(data_M_AXI_1_awburst),
        .data_M_AXI_1_awcache(data_M_AXI_1_awcache),
        .data_M_AXI_1_awid(data_M_AXI_1_awid),
        .data_M_AXI_1_awlen(data_M_AXI_1_awlen),
        .data_M_AXI_1_awlock(data_M_AXI_1_awlock),
        .data_M_AXI_1_awprot(data_M_AXI_1_awprot),
        .data_M_AXI_1_awqos(data_M_AXI_1_awqos),
        .data_M_AXI_1_awready(data_M_AXI_1_awready),
        .data_M_AXI_1_awregion(data_M_AXI_1_awregion),
        .data_M_AXI_1_awsize(data_M_AXI_1_awsize),
        .data_M_AXI_1_awvalid(data_M_AXI_1_awvalid),
        .data_M_AXI_1_bid(data_M_AXI_1_bid),
        .data_M_AXI_1_bready(data_M_AXI_1_bready),
        .data_M_AXI_1_bresp(data_M_AXI_1_bresp),
        .data_M_AXI_1_bvalid(data_M_AXI_1_bvalid),
        .data_M_AXI_1_rdata(data_M_AXI_1_rdata),
        .data_M_AXI_1_rid(data_M_AXI_1_rid),
        .data_M_AXI_1_rlast(data_M_AXI_1_rlast),
        .data_M_AXI_1_rready(data_M_AXI_1_rready),
        .data_M_AXI_1_rresp(data_M_AXI_1_rresp),
        .data_M_AXI_1_rvalid(data_M_AXI_1_rvalid),
        .data_M_AXI_1_wdata(data_M_AXI_1_wdata),
        .data_M_AXI_1_wlast(data_M_AXI_1_wlast),
        .data_M_AXI_1_wready(data_M_AXI_1_wready),
        .data_M_AXI_1_wstrb(data_M_AXI_1_wstrb),
        .data_M_AXI_1_wvalid(data_M_AXI_1_wvalid),
        .data_M_AXI_2_araddr(data_M_AXI_2_araddr),
        .data_M_AXI_2_arburst(data_M_AXI_2_arburst),
        .data_M_AXI_2_arcache(data_M_AXI_2_arcache),
        .data_M_AXI_2_arid(data_M_AXI_2_arid),
        .data_M_AXI_2_arlen(data_M_AXI_2_arlen),
        .data_M_AXI_2_arlock(data_M_AXI_2_arlock),
        .data_M_AXI_2_arprot(data_M_AXI_2_arprot),
        .data_M_AXI_2_arqos(data_M_AXI_2_arqos),
        .data_M_AXI_2_arready(data_M_AXI_2_arready),
        .data_M_AXI_2_arregion(data_M_AXI_2_arregion),
        .data_M_AXI_2_arsize(data_M_AXI_2_arsize),
        .data_M_AXI_2_arvalid(data_M_AXI_2_arvalid),
        .data_M_AXI_2_awaddr(data_M_AXI_2_awaddr),
        .data_M_AXI_2_awburst(data_M_AXI_2_awburst),
        .data_M_AXI_2_awcache(data_M_AXI_2_awcache),
        .data_M_AXI_2_awid(data_M_AXI_2_awid),
        .data_M_AXI_2_awlen(data_M_AXI_2_awlen),
        .data_M_AXI_2_awlock(data_M_AXI_2_awlock),
        .data_M_AXI_2_awprot(data_M_AXI_2_awprot),
        .data_M_AXI_2_awqos(data_M_AXI_2_awqos),
        .data_M_AXI_2_awready(data_M_AXI_2_awready),
        .data_M_AXI_2_awregion(data_M_AXI_2_awregion),
        .data_M_AXI_2_awsize(data_M_AXI_2_awsize),
        .data_M_AXI_2_awvalid(data_M_AXI_2_awvalid),
        .data_M_AXI_2_bid(data_M_AXI_2_bid),
        .data_M_AXI_2_bready(data_M_AXI_2_bready),
        .data_M_AXI_2_bresp(data_M_AXI_2_bresp),
        .data_M_AXI_2_bvalid(data_M_AXI_2_bvalid),
        .data_M_AXI_2_rdata(data_M_AXI_2_rdata),
        .data_M_AXI_2_rid(data_M_AXI_2_rid),
        .data_M_AXI_2_rlast(data_M_AXI_2_rlast),
        .data_M_AXI_2_rready(data_M_AXI_2_rready),
        .data_M_AXI_2_rresp(data_M_AXI_2_rresp),
        .data_M_AXI_2_rvalid(data_M_AXI_2_rvalid),
        .data_M_AXI_2_wdata(data_M_AXI_2_wdata),
        .data_M_AXI_2_wlast(data_M_AXI_2_wlast),
        .data_M_AXI_2_wready(data_M_AXI_2_wready),
        .data_M_AXI_2_wstrb(data_M_AXI_2_wstrb),
        .data_M_AXI_2_wvalid(data_M_AXI_2_wvalid),
        .data_M_AXI_3_araddr(data_M_AXI_3_araddr),
        .data_M_AXI_3_arburst(data_M_AXI_3_arburst),
        .data_M_AXI_3_arcache(data_M_AXI_3_arcache),
        .data_M_AXI_3_arid(data_M_AXI_3_arid),
        .data_M_AXI_3_arlen(data_M_AXI_3_arlen),
        .data_M_AXI_3_arlock(data_M_AXI_3_arlock),
        .data_M_AXI_3_arprot(data_M_AXI_3_arprot),
        .data_M_AXI_3_arqos(data_M_AXI_3_arqos),
        .data_M_AXI_3_arready(data_M_AXI_3_arready),
        .data_M_AXI_3_arregion(data_M_AXI_3_arregion),
        .data_M_AXI_3_arsize(data_M_AXI_3_arsize),
        .data_M_AXI_3_arvalid(data_M_AXI_3_arvalid),
        .data_M_AXI_3_awaddr(data_M_AXI_3_awaddr),
        .data_M_AXI_3_awburst(data_M_AXI_3_awburst),
        .data_M_AXI_3_awcache(data_M_AXI_3_awcache),
        .data_M_AXI_3_awid(data_M_AXI_3_awid),
        .data_M_AXI_3_awlen(data_M_AXI_3_awlen),
        .data_M_AXI_3_awlock(data_M_AXI_3_awlock),
        .data_M_AXI_3_awprot(data_M_AXI_3_awprot),
        .data_M_AXI_3_awqos(data_M_AXI_3_awqos),
        .data_M_AXI_3_awready(data_M_AXI_3_awready),
        .data_M_AXI_3_awregion(data_M_AXI_3_awregion),
        .data_M_AXI_3_awsize(data_M_AXI_3_awsize),
        .data_M_AXI_3_awvalid(data_M_AXI_3_awvalid),
        .data_M_AXI_3_bid(data_M_AXI_3_bid),
        .data_M_AXI_3_bready(data_M_AXI_3_bready),
        .data_M_AXI_3_bresp(data_M_AXI_3_bresp),
        .data_M_AXI_3_bvalid(data_M_AXI_3_bvalid),
        .data_M_AXI_3_rdata(data_M_AXI_3_rdata),
        .data_M_AXI_3_rid(data_M_AXI_3_rid),
        .data_M_AXI_3_rlast(data_M_AXI_3_rlast),
        .data_M_AXI_3_rready(data_M_AXI_3_rready),
        .data_M_AXI_3_rresp(data_M_AXI_3_rresp),
        .data_M_AXI_3_rvalid(data_M_AXI_3_rvalid),
        .data_M_AXI_3_wdata(data_M_AXI_3_wdata),
        .data_M_AXI_3_wlast(data_M_AXI_3_wlast),
        .data_M_AXI_3_wready(data_M_AXI_3_wready),
        .data_M_AXI_3_wstrb(data_M_AXI_3_wstrb),
        .data_M_AXI_3_wvalid(data_M_AXI_3_wvalid),
        .data_M_AXI_4_araddr(data_M_AXI_4_araddr),
        .data_M_AXI_4_arburst(data_M_AXI_4_arburst),
        .data_M_AXI_4_arcache(data_M_AXI_4_arcache),
        .data_M_AXI_4_arid(data_M_AXI_4_arid),
        .data_M_AXI_4_arlen(data_M_AXI_4_arlen),
        .data_M_AXI_4_arlock(data_M_AXI_4_arlock),
        .data_M_AXI_4_arprot(data_M_AXI_4_arprot),
        .data_M_AXI_4_arqos(data_M_AXI_4_arqos),
        .data_M_AXI_4_arready(data_M_AXI_4_arready),
        .data_M_AXI_4_arregion(data_M_AXI_4_arregion),
        .data_M_AXI_4_arsize(data_M_AXI_4_arsize),
        .data_M_AXI_4_arvalid(data_M_AXI_4_arvalid),
        .data_M_AXI_4_awaddr(data_M_AXI_4_awaddr),
        .data_M_AXI_4_awburst(data_M_AXI_4_awburst),
        .data_M_AXI_4_awcache(data_M_AXI_4_awcache),
        .data_M_AXI_4_awid(data_M_AXI_4_awid),
        .data_M_AXI_4_awlen(data_M_AXI_4_awlen),
        .data_M_AXI_4_awlock(data_M_AXI_4_awlock),
        .data_M_AXI_4_awprot(data_M_AXI_4_awprot),
        .data_M_AXI_4_awqos(data_M_AXI_4_awqos),
        .data_M_AXI_4_awready(data_M_AXI_4_awready),
        .data_M_AXI_4_awregion(data_M_AXI_4_awregion),
        .data_M_AXI_4_awsize(data_M_AXI_4_awsize),
        .data_M_AXI_4_awvalid(data_M_AXI_4_awvalid),
        .data_M_AXI_4_bid(data_M_AXI_4_bid),
        .data_M_AXI_4_bready(data_M_AXI_4_bready),
        .data_M_AXI_4_bresp(data_M_AXI_4_bresp),
        .data_M_AXI_4_bvalid(data_M_AXI_4_bvalid),
        .data_M_AXI_4_rdata(data_M_AXI_4_rdata),
        .data_M_AXI_4_rid(data_M_AXI_4_rid),
        .data_M_AXI_4_rlast(data_M_AXI_4_rlast),
        .data_M_AXI_4_rready(data_M_AXI_4_rready),
        .data_M_AXI_4_rresp(data_M_AXI_4_rresp),
        .data_M_AXI_4_rvalid(data_M_AXI_4_rvalid),
        .data_M_AXI_4_wdata(data_M_AXI_4_wdata),
        .data_M_AXI_4_wlast(data_M_AXI_4_wlast),
        .data_M_AXI_4_wready(data_M_AXI_4_wready),
        .data_M_AXI_4_wstrb(data_M_AXI_4_wstrb),
        .data_M_AXI_4_wvalid(data_M_AXI_4_wvalid),
        .ddr_default_clk_0(ddr_default_clk_0),
        .ddr_default_rst_0(ddr_default_rst_0),
        .dma_pcie_aclk(dma_pcie_aclk),
        .dma_pcie_arst(dma_pcie_arst),
        .irq_cu(irq_cu),
        .userpf_control_M_AXI_araddr(userpf_control_M_AXI_araddr),
        .userpf_control_M_AXI_arprot(userpf_control_M_AXI_arprot),
        .userpf_control_M_AXI_arready(userpf_control_M_AXI_arready),
        .userpf_control_M_AXI_arvalid(userpf_control_M_AXI_arvalid),
        .userpf_control_M_AXI_awaddr(userpf_control_M_AXI_awaddr),
        .userpf_control_M_AXI_awprot(userpf_control_M_AXI_awprot),
        .userpf_control_M_AXI_awready(userpf_control_M_AXI_awready),
        .userpf_control_M_AXI_awvalid(userpf_control_M_AXI_awvalid),
        .userpf_control_M_AXI_bready(userpf_control_M_AXI_bready),
        .userpf_control_M_AXI_bresp(userpf_control_M_AXI_bresp),
        .userpf_control_M_AXI_bvalid(userpf_control_M_AXI_bvalid),
        .userpf_control_M_AXI_rdata(userpf_control_M_AXI_rdata),
        .userpf_control_M_AXI_rready(userpf_control_M_AXI_rready),
        .userpf_control_M_AXI_rresp(userpf_control_M_AXI_rresp),
        .userpf_control_M_AXI_rvalid(userpf_control_M_AXI_rvalid),
        .userpf_control_M_AXI_wdata(userpf_control_M_AXI_wdata),
        .userpf_control_M_AXI_wready(userpf_control_M_AXI_wready),
        .userpf_control_M_AXI_wstrb(userpf_control_M_AXI_wstrb),
        .userpf_control_M_AXI_wvalid(userpf_control_M_AXI_wvalid));
endmodule
