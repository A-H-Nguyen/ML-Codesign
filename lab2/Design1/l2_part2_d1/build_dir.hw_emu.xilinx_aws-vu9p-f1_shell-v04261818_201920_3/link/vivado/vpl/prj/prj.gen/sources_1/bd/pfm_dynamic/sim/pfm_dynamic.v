//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Fri Oct 11 17:31:57 2024
//Host        : ip-172-31-83-237.ec2.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target pfm_dynamic.bd
//Design      : pfm_dynamic
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module System_DPA_imp_NCWU00
   (MON_M_AXI_araddr,
    MON_M_AXI_arcache,
    MON_M_AXI_arlen,
    MON_M_AXI_arlock,
    MON_M_AXI_arprot,
    MON_M_AXI_arqos,
    MON_M_AXI_arready,
    MON_M_AXI_arregion,
    MON_M_AXI_arsize,
    MON_M_AXI_arvalid,
    MON_M_AXI_awaddr,
    MON_M_AXI_awcache,
    MON_M_AXI_awlen,
    MON_M_AXI_awlock,
    MON_M_AXI_awprot,
    MON_M_AXI_awqos,
    MON_M_AXI_awready,
    MON_M_AXI_awregion,
    MON_M_AXI_awsize,
    MON_M_AXI_awvalid,
    MON_M_AXI_bid,
    MON_M_AXI_bready,
    MON_M_AXI_bresp,
    MON_M_AXI_bvalid,
    MON_M_AXI_rdata,
    MON_M_AXI_rid,
    MON_M_AXI_rlast,
    MON_M_AXI_rready,
    MON_M_AXI_rresp,
    MON_M_AXI_rvalid,
    MON_M_AXI_wdata,
    MON_M_AXI_wlast,
    MON_M_AXI_wready,
    MON_M_AXI_wstrb,
    MON_M_AXI_wvalid,
    MON_S_AXI_araddr,
    MON_S_AXI_arprot,
    MON_S_AXI_arready,
    MON_S_AXI_arvalid,
    MON_S_AXI_awaddr,
    MON_S_AXI_awprot,
    MON_S_AXI_awready,
    MON_S_AXI_awvalid,
    MON_S_AXI_bready,
    MON_S_AXI_bresp,
    MON_S_AXI_bvalid,
    MON_S_AXI_rdata,
    MON_S_AXI_rready,
    MON_S_AXI_rresp,
    MON_S_AXI_rvalid,
    MON_S_AXI_wdata,
    MON_S_AXI_wready,
    MON_S_AXI_wstrb,
    MON_S_AXI_wvalid,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S_AXIMM_araddr,
    S_AXIMM_arburst,
    S_AXIMM_arid,
    S_AXIMM_arlen,
    S_AXIMM_arready,
    S_AXIMM_arsize,
    S_AXIMM_arvalid,
    S_AXIMM_awaddr,
    S_AXIMM_awburst,
    S_AXIMM_awid,
    S_AXIMM_awlen,
    S_AXIMM_awready,
    S_AXIMM_awsize,
    S_AXIMM_awvalid,
    S_AXIMM_bid,
    S_AXIMM_bready,
    S_AXIMM_bresp,
    S_AXIMM_bvalid,
    S_AXIMM_rdata,
    S_AXIMM_rid,
    S_AXIMM_rlast,
    S_AXIMM_rready,
    S_AXIMM_rresp,
    S_AXIMM_rvalid,
    S_AXIMM_wdata,
    S_AXIMM_wlast,
    S_AXIMM_wready,
    S_AXIMM_wstrb,
    S_AXIMM_wvalid,
    dma_pcie_aclk,
    dma_pcie_arst,
    mon_clk,
    mon_resetn);
  input [63:0]MON_M_AXI_araddr;
  input [3:0]MON_M_AXI_arcache;
  input [7:0]MON_M_AXI_arlen;
  input [1:0]MON_M_AXI_arlock;
  input [2:0]MON_M_AXI_arprot;
  input [3:0]MON_M_AXI_arqos;
  input MON_M_AXI_arready;
  input [3:0]MON_M_AXI_arregion;
  input [2:0]MON_M_AXI_arsize;
  input MON_M_AXI_arvalid;
  input [63:0]MON_M_AXI_awaddr;
  input [3:0]MON_M_AXI_awcache;
  input [7:0]MON_M_AXI_awlen;
  input [1:0]MON_M_AXI_awlock;
  input [2:0]MON_M_AXI_awprot;
  input [3:0]MON_M_AXI_awqos;
  input MON_M_AXI_awready;
  input [3:0]MON_M_AXI_awregion;
  input [2:0]MON_M_AXI_awsize;
  input MON_M_AXI_awvalid;
  input MON_M_AXI_bid;
  input MON_M_AXI_bready;
  input [1:0]MON_M_AXI_bresp;
  input MON_M_AXI_bvalid;
  input [511:0]MON_M_AXI_rdata;
  input MON_M_AXI_rid;
  input MON_M_AXI_rlast;
  input MON_M_AXI_rready;
  input [1:0]MON_M_AXI_rresp;
  input MON_M_AXI_rvalid;
  input [511:0]MON_M_AXI_wdata;
  input MON_M_AXI_wlast;
  input MON_M_AXI_wready;
  input [63:0]MON_M_AXI_wstrb;
  input MON_M_AXI_wvalid;
  input [5:0]MON_S_AXI_araddr;
  input [2:0]MON_S_AXI_arprot;
  input MON_S_AXI_arready;
  input MON_S_AXI_arvalid;
  input [5:0]MON_S_AXI_awaddr;
  input [2:0]MON_S_AXI_awprot;
  input MON_S_AXI_awready;
  input MON_S_AXI_awvalid;
  input MON_S_AXI_bready;
  input [1:0]MON_S_AXI_bresp;
  input MON_S_AXI_bvalid;
  input [31:0]MON_S_AXI_rdata;
  input MON_S_AXI_rready;
  input [1:0]MON_S_AXI_rresp;
  input MON_S_AXI_rvalid;
  input [31:0]MON_S_AXI_wdata;
  input MON_S_AXI_wready;
  input [3:0]MON_S_AXI_wstrb;
  input MON_S_AXI_wvalid;
  input [63:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input [31:0]S_AXIMM_araddr;
  input [1:0]S_AXIMM_arburst;
  input [0:0]S_AXIMM_arid;
  input [7:0]S_AXIMM_arlen;
  output S_AXIMM_arready;
  input [2:0]S_AXIMM_arsize;
  input S_AXIMM_arvalid;
  input [31:0]S_AXIMM_awaddr;
  input [1:0]S_AXIMM_awburst;
  input [0:0]S_AXIMM_awid;
  input [7:0]S_AXIMM_awlen;
  output S_AXIMM_awready;
  input [2:0]S_AXIMM_awsize;
  input S_AXIMM_awvalid;
  output [0:0]S_AXIMM_bid;
  input S_AXIMM_bready;
  output [1:0]S_AXIMM_bresp;
  output S_AXIMM_bvalid;
  output [63:0]S_AXIMM_rdata;
  output [0:0]S_AXIMM_rid;
  output S_AXIMM_rlast;
  input S_AXIMM_rready;
  output [1:0]S_AXIMM_rresp;
  output S_AXIMM_rvalid;
  input [63:0]S_AXIMM_wdata;
  input S_AXIMM_wlast;
  output S_AXIMM_wready;
  input [7:0]S_AXIMM_wstrb;
  input S_AXIMM_wvalid;
  input dma_pcie_aclk;
  input dma_pcie_arst;
  input mon_clk;
  input mon_resetn;

  wire [63:0]S00_AXI_1_ARADDR;
  wire [2:0]S00_AXI_1_ARPROT;
  wire S00_AXI_1_ARREADY;
  wire S00_AXI_1_ARVALID;
  wire [63:0]S00_AXI_1_AWADDR;
  wire [2:0]S00_AXI_1_AWPROT;
  wire S00_AXI_1_AWREADY;
  wire S00_AXI_1_AWVALID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [63:0]dot_prod_1_m_axi_gmem_ARADDR;
  wire [7:0]dot_prod_1_m_axi_gmem_ARLEN;
  wire dot_prod_1_m_axi_gmem_ARREADY;
  wire [2:0]dot_prod_1_m_axi_gmem_ARSIZE;
  wire dot_prod_1_m_axi_gmem_ARVALID;
  wire [63:0]dot_prod_1_m_axi_gmem_AWADDR;
  wire [7:0]dot_prod_1_m_axi_gmem_AWLEN;
  wire dot_prod_1_m_axi_gmem_AWREADY;
  wire [2:0]dot_prod_1_m_axi_gmem_AWSIZE;
  wire dot_prod_1_m_axi_gmem_AWVALID;
  wire dot_prod_1_m_axi_gmem_BID;
  wire dot_prod_1_m_axi_gmem_BREADY;
  wire [1:0]dot_prod_1_m_axi_gmem_BRESP;
  wire dot_prod_1_m_axi_gmem_BVALID;
  wire [511:0]dot_prod_1_m_axi_gmem_RDATA;
  wire dot_prod_1_m_axi_gmem_RID;
  wire dot_prod_1_m_axi_gmem_RLAST;
  wire dot_prod_1_m_axi_gmem_RREADY;
  wire [1:0]dot_prod_1_m_axi_gmem_RRESP;
  wire dot_prod_1_m_axi_gmem_RVALID;
  wire [511:0]dot_prod_1_m_axi_gmem_WDATA;
  wire dot_prod_1_m_axi_gmem_WLAST;
  wire dot_prod_1_m_axi_gmem_WREADY;
  wire [63:0]dot_prod_1_m_axi_gmem_WSTRB;
  wire dot_prod_1_m_axi_gmem_WVALID;
  wire [7:0]dpa_ctrl_interconnect_M00_AXI_ARADDR;
  wire dpa_ctrl_interconnect_M00_AXI_ARREADY;
  wire dpa_ctrl_interconnect_M00_AXI_ARVALID;
  wire [7:0]dpa_ctrl_interconnect_M00_AXI_AWADDR;
  wire dpa_ctrl_interconnect_M00_AXI_AWREADY;
  wire dpa_ctrl_interconnect_M00_AXI_AWVALID;
  wire dpa_ctrl_interconnect_M00_AXI_BREADY;
  wire [1:0]dpa_ctrl_interconnect_M00_AXI_BRESP;
  wire dpa_ctrl_interconnect_M00_AXI_BVALID;
  wire [31:0]dpa_ctrl_interconnect_M00_AXI_RDATA;
  wire dpa_ctrl_interconnect_M00_AXI_RREADY;
  wire [1:0]dpa_ctrl_interconnect_M00_AXI_RRESP;
  wire dpa_ctrl_interconnect_M00_AXI_RVALID;
  wire [31:0]dpa_ctrl_interconnect_M00_AXI_WDATA;
  wire dpa_ctrl_interconnect_M00_AXI_WREADY;
  wire [3:0]dpa_ctrl_interconnect_M00_AXI_WSTRB;
  wire dpa_ctrl_interconnect_M00_AXI_WVALID;
  wire [7:0]dpa_ctrl_interconnect_M01_AXI_ARADDR;
  wire dpa_ctrl_interconnect_M01_AXI_ARREADY;
  wire dpa_ctrl_interconnect_M01_AXI_ARVALID;
  wire [7:0]dpa_ctrl_interconnect_M01_AXI_AWADDR;
  wire dpa_ctrl_interconnect_M01_AXI_AWREADY;
  wire dpa_ctrl_interconnect_M01_AXI_AWVALID;
  wire dpa_ctrl_interconnect_M01_AXI_BREADY;
  wire [1:0]dpa_ctrl_interconnect_M01_AXI_BRESP;
  wire dpa_ctrl_interconnect_M01_AXI_BVALID;
  wire [31:0]dpa_ctrl_interconnect_M01_AXI_RDATA;
  wire dpa_ctrl_interconnect_M01_AXI_RREADY;
  wire [1:0]dpa_ctrl_interconnect_M01_AXI_RRESP;
  wire dpa_ctrl_interconnect_M01_AXI_RVALID;
  wire [31:0]dpa_ctrl_interconnect_M01_AXI_WDATA;
  wire dpa_ctrl_interconnect_M01_AXI_WREADY;
  wire [3:0]dpa_ctrl_interconnect_M01_AXI_WSTRB;
  wire dpa_ctrl_interconnect_M01_AXI_WVALID;
  wire [63:0]dpa_mon0_TRACE_OUT_0_TDATA;
  wire [7:0]dpa_mon0_TRACE_OUT_0_TDEST;
  wire [7:0]dpa_mon0_TRACE_OUT_0_TID;
  wire dpa_mon0_TRACE_OUT_0_TLAST;
  wire dpa_mon0_TRACE_OUT_0_TREADY;
  wire dpa_mon0_TRACE_OUT_0_TVALID;
  wire [63:0]dpa_mon0_TRACE_OUT_1_TDATA;
  wire [7:0]dpa_mon0_TRACE_OUT_1_TDEST;
  wire [7:0]dpa_mon0_TRACE_OUT_1_TID;
  wire dpa_mon0_TRACE_OUT_1_TLAST;
  wire dpa_mon0_TRACE_OUT_1_TREADY;
  wire dpa_mon0_TRACE_OUT_1_TVALID;
  wire ext_reset_in_1_1;
  wire slowest_sync_clk_0_1;
  wire slowest_sync_clk_1_1;
  wire [5:0]slr1_M01_AXI_ARADDR;
  wire [2:0]slr1_M01_AXI_ARPROT;
  wire slr1_M01_AXI_ARREADY;
  wire slr1_M01_AXI_ARVALID;
  wire [5:0]slr1_M01_AXI_AWADDR;
  wire [2:0]slr1_M01_AXI_AWPROT;
  wire slr1_M01_AXI_AWREADY;
  wire slr1_M01_AXI_AWVALID;
  wire slr1_M01_AXI_BREADY;
  wire [1:0]slr1_M01_AXI_BRESP;
  wire slr1_M01_AXI_BVALID;
  wire [31:0]slr1_M01_AXI_RDATA;
  wire slr1_M01_AXI_RREADY;
  wire [1:0]slr1_M01_AXI_RRESP;
  wire slr1_M01_AXI_RVALID;
  wire [31:0]slr1_M01_AXI_WDATA;
  wire slr1_M01_AXI_WREADY;
  wire [3:0]slr1_M01_AXI_WSTRB;
  wire slr1_M01_AXI_WVALID;
  wire slr1_peripheral_aresetn;
  wire [31:0]xtlm_simple_intercon_0_M04_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_M04_AXI_ARBURST;
  wire [0:0]xtlm_simple_intercon_0_M04_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_M04_AXI_ARLEN;
  wire xtlm_simple_intercon_0_M04_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_M04_AXI_ARSIZE;
  wire xtlm_simple_intercon_0_M04_AXI_ARVALID;
  wire [31:0]xtlm_simple_intercon_0_M04_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_M04_AXI_AWBURST;
  wire [0:0]xtlm_simple_intercon_0_M04_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_M04_AXI_AWLEN;
  wire xtlm_simple_intercon_0_M04_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_M04_AXI_AWSIZE;
  wire xtlm_simple_intercon_0_M04_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_M04_AXI_BID;
  wire xtlm_simple_intercon_0_M04_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_M04_AXI_BRESP;
  wire xtlm_simple_intercon_0_M04_AXI_BVALID;
  wire [63:0]xtlm_simple_intercon_0_M04_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_M04_AXI_RID;
  wire xtlm_simple_intercon_0_M04_AXI_RLAST;
  wire xtlm_simple_intercon_0_M04_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_M04_AXI_RRESP;
  wire xtlm_simple_intercon_0_M04_AXI_RVALID;
  wire [63:0]xtlm_simple_intercon_0_M04_AXI_WDATA;
  wire xtlm_simple_intercon_0_M04_AXI_WLAST;
  wire xtlm_simple_intercon_0_M04_AXI_WREADY;
  wire [7:0]xtlm_simple_intercon_0_M04_AXI_WSTRB;
  wire xtlm_simple_intercon_0_M04_AXI_WVALID;

  assign S00_AXI_1_ARADDR = S00_AXI_araddr[63:0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[63:0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid;
  assign S00_AXI_1_BREADY = S00_AXI_bready;
  assign S00_AXI_1_RREADY = S00_AXI_rready;
  assign S00_AXI_1_WDATA = S00_AXI_wdata[31:0];
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[3:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid;
  assign S00_AXI_arready = S00_AXI_1_ARREADY;
  assign S00_AXI_awready = S00_AXI_1_AWREADY;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[31:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid = S00_AXI_1_RVALID;
  assign S00_AXI_wready = S00_AXI_1_WREADY;
  assign S_AXIMM_arready = xtlm_simple_intercon_0_M04_AXI_ARREADY;
  assign S_AXIMM_awready = xtlm_simple_intercon_0_M04_AXI_AWREADY;
  assign S_AXIMM_bid[0] = xtlm_simple_intercon_0_M04_AXI_BID;
  assign S_AXIMM_bresp[1:0] = xtlm_simple_intercon_0_M04_AXI_BRESP;
  assign S_AXIMM_bvalid = xtlm_simple_intercon_0_M04_AXI_BVALID;
  assign S_AXIMM_rdata[63:0] = xtlm_simple_intercon_0_M04_AXI_RDATA;
  assign S_AXIMM_rid[0] = xtlm_simple_intercon_0_M04_AXI_RID;
  assign S_AXIMM_rlast = xtlm_simple_intercon_0_M04_AXI_RLAST;
  assign S_AXIMM_rresp[1:0] = xtlm_simple_intercon_0_M04_AXI_RRESP;
  assign S_AXIMM_rvalid = xtlm_simple_intercon_0_M04_AXI_RVALID;
  assign S_AXIMM_wready = xtlm_simple_intercon_0_M04_AXI_WREADY;
  assign dot_prod_1_m_axi_gmem_ARADDR = MON_M_AXI_araddr[63:0];
  assign dot_prod_1_m_axi_gmem_ARLEN = MON_M_AXI_arlen[7:0];
  assign dot_prod_1_m_axi_gmem_ARREADY = MON_M_AXI_arready;
  assign dot_prod_1_m_axi_gmem_ARSIZE = MON_M_AXI_arsize[2:0];
  assign dot_prod_1_m_axi_gmem_ARVALID = MON_M_AXI_arvalid;
  assign dot_prod_1_m_axi_gmem_AWADDR = MON_M_AXI_awaddr[63:0];
  assign dot_prod_1_m_axi_gmem_AWLEN = MON_M_AXI_awlen[7:0];
  assign dot_prod_1_m_axi_gmem_AWREADY = MON_M_AXI_awready;
  assign dot_prod_1_m_axi_gmem_AWSIZE = MON_M_AXI_awsize[2:0];
  assign dot_prod_1_m_axi_gmem_AWVALID = MON_M_AXI_awvalid;
  assign dot_prod_1_m_axi_gmem_BID = MON_M_AXI_bid;
  assign dot_prod_1_m_axi_gmem_BREADY = MON_M_AXI_bready;
  assign dot_prod_1_m_axi_gmem_BRESP = MON_M_AXI_bresp[1:0];
  assign dot_prod_1_m_axi_gmem_BVALID = MON_M_AXI_bvalid;
  assign dot_prod_1_m_axi_gmem_RDATA = MON_M_AXI_rdata[511:0];
  assign dot_prod_1_m_axi_gmem_RID = MON_M_AXI_rid;
  assign dot_prod_1_m_axi_gmem_RLAST = MON_M_AXI_rlast;
  assign dot_prod_1_m_axi_gmem_RREADY = MON_M_AXI_rready;
  assign dot_prod_1_m_axi_gmem_RRESP = MON_M_AXI_rresp[1:0];
  assign dot_prod_1_m_axi_gmem_RVALID = MON_M_AXI_rvalid;
  assign dot_prod_1_m_axi_gmem_WDATA = MON_M_AXI_wdata[511:0];
  assign dot_prod_1_m_axi_gmem_WLAST = MON_M_AXI_wlast;
  assign dot_prod_1_m_axi_gmem_WREADY = MON_M_AXI_wready;
  assign dot_prod_1_m_axi_gmem_WSTRB = MON_M_AXI_wstrb[63:0];
  assign dot_prod_1_m_axi_gmem_WVALID = MON_M_AXI_wvalid;
  assign ext_reset_in_1_1 = dma_pcie_arst;
  assign slowest_sync_clk_0_1 = mon_clk;
  assign slowest_sync_clk_1_1 = dma_pcie_aclk;
  assign slr1_M01_AXI_ARADDR = MON_S_AXI_araddr[5:0];
  assign slr1_M01_AXI_ARPROT = MON_S_AXI_arprot[2:0];
  assign slr1_M01_AXI_ARREADY = MON_S_AXI_arready;
  assign slr1_M01_AXI_ARVALID = MON_S_AXI_arvalid;
  assign slr1_M01_AXI_AWADDR = MON_S_AXI_awaddr[5:0];
  assign slr1_M01_AXI_AWPROT = MON_S_AXI_awprot[2:0];
  assign slr1_M01_AXI_AWREADY = MON_S_AXI_awready;
  assign slr1_M01_AXI_AWVALID = MON_S_AXI_awvalid;
  assign slr1_M01_AXI_BREADY = MON_S_AXI_bready;
  assign slr1_M01_AXI_BRESP = MON_S_AXI_bresp[1:0];
  assign slr1_M01_AXI_BVALID = MON_S_AXI_bvalid;
  assign slr1_M01_AXI_RDATA = MON_S_AXI_rdata[31:0];
  assign slr1_M01_AXI_RREADY = MON_S_AXI_rready;
  assign slr1_M01_AXI_RRESP = MON_S_AXI_rresp[1:0];
  assign slr1_M01_AXI_RVALID = MON_S_AXI_rvalid;
  assign slr1_M01_AXI_WDATA = MON_S_AXI_wdata[31:0];
  assign slr1_M01_AXI_WREADY = MON_S_AXI_wready;
  assign slr1_M01_AXI_WSTRB = MON_S_AXI_wstrb[3:0];
  assign slr1_M01_AXI_WVALID = MON_S_AXI_wvalid;
  assign slr1_peripheral_aresetn = mon_resetn;
  assign xtlm_simple_intercon_0_M04_AXI_ARADDR = S_AXIMM_araddr[31:0];
  assign xtlm_simple_intercon_0_M04_AXI_ARBURST = S_AXIMM_arburst[1:0];
  assign xtlm_simple_intercon_0_M04_AXI_ARID = S_AXIMM_arid[0];
  assign xtlm_simple_intercon_0_M04_AXI_ARLEN = S_AXIMM_arlen[7:0];
  assign xtlm_simple_intercon_0_M04_AXI_ARSIZE = S_AXIMM_arsize[2:0];
  assign xtlm_simple_intercon_0_M04_AXI_ARVALID = S_AXIMM_arvalid;
  assign xtlm_simple_intercon_0_M04_AXI_AWADDR = S_AXIMM_awaddr[31:0];
  assign xtlm_simple_intercon_0_M04_AXI_AWBURST = S_AXIMM_awburst[1:0];
  assign xtlm_simple_intercon_0_M04_AXI_AWID = S_AXIMM_awid[0];
  assign xtlm_simple_intercon_0_M04_AXI_AWLEN = S_AXIMM_awlen[7:0];
  assign xtlm_simple_intercon_0_M04_AXI_AWSIZE = S_AXIMM_awsize[2:0];
  assign xtlm_simple_intercon_0_M04_AXI_AWVALID = S_AXIMM_awvalid;
  assign xtlm_simple_intercon_0_M04_AXI_BREADY = S_AXIMM_bready;
  assign xtlm_simple_intercon_0_M04_AXI_RREADY = S_AXIMM_rready;
  assign xtlm_simple_intercon_0_M04_AXI_WDATA = S_AXIMM_wdata[63:0];
  assign xtlm_simple_intercon_0_M04_AXI_WLAST = S_AXIMM_wlast;
  assign xtlm_simple_intercon_0_M04_AXI_WSTRB = S_AXIMM_wstrb[7:0];
  assign xtlm_simple_intercon_0_M04_AXI_WVALID = S_AXIMM_wvalid;
  pfm_dynamic_dpa_ctrl_interconnect_0 dpa_ctrl_interconnect
       (.ACLK(slowest_sync_clk_1_1),
        .ARESETN(ext_reset_in_1_1),
        .M00_ACLK(slowest_sync_clk_0_1),
        .M00_ARESETN(slr1_peripheral_aresetn),
        .M00_AXI_araddr(dpa_ctrl_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arready(dpa_ctrl_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(dpa_ctrl_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(dpa_ctrl_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awready(dpa_ctrl_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(dpa_ctrl_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(dpa_ctrl_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(dpa_ctrl_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(dpa_ctrl_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(dpa_ctrl_interconnect_M00_AXI_RDATA),
        .M00_AXI_rready(dpa_ctrl_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(dpa_ctrl_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(dpa_ctrl_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(dpa_ctrl_interconnect_M00_AXI_WDATA),
        .M00_AXI_wready(dpa_ctrl_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(dpa_ctrl_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(dpa_ctrl_interconnect_M00_AXI_WVALID),
        .M01_ACLK(slowest_sync_clk_0_1),
        .M01_ARESETN(slr1_peripheral_aresetn),
        .M01_AXI_araddr(dpa_ctrl_interconnect_M01_AXI_ARADDR),
        .M01_AXI_arready(dpa_ctrl_interconnect_M01_AXI_ARREADY),
        .M01_AXI_arvalid(dpa_ctrl_interconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(dpa_ctrl_interconnect_M01_AXI_AWADDR),
        .M01_AXI_awready(dpa_ctrl_interconnect_M01_AXI_AWREADY),
        .M01_AXI_awvalid(dpa_ctrl_interconnect_M01_AXI_AWVALID),
        .M01_AXI_bready(dpa_ctrl_interconnect_M01_AXI_BREADY),
        .M01_AXI_bresp(dpa_ctrl_interconnect_M01_AXI_BRESP),
        .M01_AXI_bvalid(dpa_ctrl_interconnect_M01_AXI_BVALID),
        .M01_AXI_rdata(dpa_ctrl_interconnect_M01_AXI_RDATA),
        .M01_AXI_rready(dpa_ctrl_interconnect_M01_AXI_RREADY),
        .M01_AXI_rresp(dpa_ctrl_interconnect_M01_AXI_RRESP),
        .M01_AXI_rvalid(dpa_ctrl_interconnect_M01_AXI_RVALID),
        .M01_AXI_wdata(dpa_ctrl_interconnect_M01_AXI_WDATA),
        .M01_AXI_wready(dpa_ctrl_interconnect_M01_AXI_WREADY),
        .M01_AXI_wstrb(dpa_ctrl_interconnect_M01_AXI_WSTRB),
        .M01_AXI_wvalid(dpa_ctrl_interconnect_M01_AXI_WVALID),
        .S00_ACLK(slowest_sync_clk_1_1),
        .S00_ARESETN(ext_reset_in_1_1),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID));
  pfm_dynamic_dpa_hub_0 dpa_hub
       (.axilite_aresetn(slr1_peripheral_aresetn),
        .axilite_clk(slowest_sync_clk_0_1),
        .s_axi_araddr(dpa_ctrl_interconnect_M00_AXI_ARADDR),
        .s_axi_arready(dpa_ctrl_interconnect_M00_AXI_ARREADY),
        .s_axi_arvalid(dpa_ctrl_interconnect_M00_AXI_ARVALID),
        .s_axi_awaddr(dpa_ctrl_interconnect_M00_AXI_AWADDR),
        .s_axi_awready(dpa_ctrl_interconnect_M00_AXI_AWREADY),
        .s_axi_awvalid(dpa_ctrl_interconnect_M00_AXI_AWVALID),
        .s_axi_bready(dpa_ctrl_interconnect_M00_AXI_BREADY),
        .s_axi_bresp(dpa_ctrl_interconnect_M00_AXI_BRESP),
        .s_axi_bvalid(dpa_ctrl_interconnect_M00_AXI_BVALID),
        .s_axi_rdata(dpa_ctrl_interconnect_M00_AXI_RDATA),
        .s_axi_rready(dpa_ctrl_interconnect_M00_AXI_RREADY),
        .s_axi_rresp(dpa_ctrl_interconnect_M00_AXI_RRESP),
        .s_axi_rvalid(dpa_ctrl_interconnect_M00_AXI_RVALID),
        .s_axi_wdata(dpa_ctrl_interconnect_M00_AXI_WDATA),
        .s_axi_wready(dpa_ctrl_interconnect_M00_AXI_WREADY),
        .s_axi_wstrb(dpa_ctrl_interconnect_M00_AXI_WSTRB),
        .s_axi_wvalid(dpa_ctrl_interconnect_M00_AXI_WVALID),
        .s_axihub_araddr(dpa_ctrl_interconnect_M01_AXI_ARADDR),
        .s_axihub_arready(dpa_ctrl_interconnect_M01_AXI_ARREADY),
        .s_axihub_arvalid(dpa_ctrl_interconnect_M01_AXI_ARVALID),
        .s_axihub_awaddr(dpa_ctrl_interconnect_M01_AXI_AWADDR),
        .s_axihub_awready(dpa_ctrl_interconnect_M01_AXI_AWREADY),
        .s_axihub_awvalid(dpa_ctrl_interconnect_M01_AXI_AWVALID),
        .s_axihub_bready(dpa_ctrl_interconnect_M01_AXI_BREADY),
        .s_axihub_bresp(dpa_ctrl_interconnect_M01_AXI_BRESP),
        .s_axihub_bvalid(dpa_ctrl_interconnect_M01_AXI_BVALID),
        .s_axihub_rdata(dpa_ctrl_interconnect_M01_AXI_RDATA),
        .s_axihub_rready(dpa_ctrl_interconnect_M01_AXI_RREADY),
        .s_axihub_rresp(dpa_ctrl_interconnect_M01_AXI_RRESP),
        .s_axihub_rvalid(dpa_ctrl_interconnect_M01_AXI_RVALID),
        .s_axihub_wdata(dpa_ctrl_interconnect_M01_AXI_WDATA),
        .s_axihub_wready(dpa_ctrl_interconnect_M01_AXI_WREADY),
        .s_axihub_wstrb(dpa_ctrl_interconnect_M01_AXI_WSTRB),
        .s_axihub_wvalid(dpa_ctrl_interconnect_M01_AXI_WVALID),
        .s_aximm_araddr(xtlm_simple_intercon_0_M04_AXI_ARADDR),
        .s_aximm_arburst(xtlm_simple_intercon_0_M04_AXI_ARBURST),
        .s_aximm_aresetn(ext_reset_in_1_1),
        .s_aximm_arid(xtlm_simple_intercon_0_M04_AXI_ARID),
        .s_aximm_arlen(xtlm_simple_intercon_0_M04_AXI_ARLEN),
        .s_aximm_arready(xtlm_simple_intercon_0_M04_AXI_ARREADY),
        .s_aximm_arsize(xtlm_simple_intercon_0_M04_AXI_ARSIZE),
        .s_aximm_arvalid(xtlm_simple_intercon_0_M04_AXI_ARVALID),
        .s_aximm_awaddr(xtlm_simple_intercon_0_M04_AXI_AWADDR),
        .s_aximm_awburst(xtlm_simple_intercon_0_M04_AXI_AWBURST),
        .s_aximm_awid(xtlm_simple_intercon_0_M04_AXI_AWID),
        .s_aximm_awlen(xtlm_simple_intercon_0_M04_AXI_AWLEN),
        .s_aximm_awready(xtlm_simple_intercon_0_M04_AXI_AWREADY),
        .s_aximm_awsize(xtlm_simple_intercon_0_M04_AXI_AWSIZE),
        .s_aximm_awvalid(xtlm_simple_intercon_0_M04_AXI_AWVALID),
        .s_aximm_bid(xtlm_simple_intercon_0_M04_AXI_BID),
        .s_aximm_bready(xtlm_simple_intercon_0_M04_AXI_BREADY),
        .s_aximm_bresp(xtlm_simple_intercon_0_M04_AXI_BRESP),
        .s_aximm_bvalid(xtlm_simple_intercon_0_M04_AXI_BVALID),
        .s_aximm_clk(slowest_sync_clk_1_1),
        .s_aximm_rdata(xtlm_simple_intercon_0_M04_AXI_RDATA),
        .s_aximm_rid(xtlm_simple_intercon_0_M04_AXI_RID),
        .s_aximm_rlast(xtlm_simple_intercon_0_M04_AXI_RLAST),
        .s_aximm_rready(xtlm_simple_intercon_0_M04_AXI_RREADY),
        .s_aximm_rresp(xtlm_simple_intercon_0_M04_AXI_RRESP),
        .s_aximm_rvalid(xtlm_simple_intercon_0_M04_AXI_RVALID),
        .s_aximm_wdata(xtlm_simple_intercon_0_M04_AXI_WDATA),
        .s_aximm_wlast(xtlm_simple_intercon_0_M04_AXI_WLAST),
        .s_aximm_wready(xtlm_simple_intercon_0_M04_AXI_WREADY),
        .s_aximm_wstrb(xtlm_simple_intercon_0_M04_AXI_WSTRB),
        .s_aximm_wvalid(xtlm_simple_intercon_0_M04_AXI_WVALID),
        .trace_aresetn(slr1_peripheral_aresetn),
        .trace_clk(slowest_sync_clk_0_1),
        .trace_tdata0(dpa_mon0_TRACE_OUT_0_TDATA),
        .trace_tdata1(dpa_mon0_TRACE_OUT_1_TDATA),
        .trace_tdest0(dpa_mon0_TRACE_OUT_0_TDEST),
        .trace_tdest1(dpa_mon0_TRACE_OUT_1_TDEST),
        .trace_tid0(dpa_mon0_TRACE_OUT_0_TID),
        .trace_tid1(dpa_mon0_TRACE_OUT_1_TID),
        .trace_tlast0(dpa_mon0_TRACE_OUT_0_TLAST),
        .trace_tlast1(dpa_mon0_TRACE_OUT_1_TLAST),
        .trace_tready0(dpa_mon0_TRACE_OUT_0_TREADY),
        .trace_tready1(dpa_mon0_TRACE_OUT_1_TREADY),
        .trace_tvalid0(dpa_mon0_TRACE_OUT_0_TVALID),
        .trace_tvalid1(dpa_mon0_TRACE_OUT_1_TVALID));
  (* DPA_IP_FULLNAME = "/dot_prod_1/m_axi_gmem-DDR[1]" *) 
  pfm_dynamic_dpa_mon0_0 dpa_mon0
       (.m_axis_rd_tdata(dpa_mon0_TRACE_OUT_1_TDATA),
        .m_axis_rd_tdest(dpa_mon0_TRACE_OUT_1_TDEST),
        .m_axis_rd_tid(dpa_mon0_TRACE_OUT_1_TID),
        .m_axis_rd_tlast(dpa_mon0_TRACE_OUT_1_TLAST),
        .m_axis_rd_tready(dpa_mon0_TRACE_OUT_1_TREADY),
        .m_axis_rd_tvalid(dpa_mon0_TRACE_OUT_1_TVALID),
        .m_axis_wr_tdata(dpa_mon0_TRACE_OUT_0_TDATA),
        .m_axis_wr_tdest(dpa_mon0_TRACE_OUT_0_TDEST),
        .m_axis_wr_tid(dpa_mon0_TRACE_OUT_0_TID),
        .m_axis_wr_tlast(dpa_mon0_TRACE_OUT_0_TLAST),
        .m_axis_wr_tready(dpa_mon0_TRACE_OUT_0_TREADY),
        .m_axis_wr_tvalid(dpa_mon0_TRACE_OUT_0_TVALID),
        .mon_ARADDR(dot_prod_1_m_axi_gmem_ARADDR),
        .mon_ARBURST({1'b0,1'b1}),
        .mon_ARID(1'b0),
        .mon_ARLEN(dot_prod_1_m_axi_gmem_ARLEN),
        .mon_ARREADY(dot_prod_1_m_axi_gmem_ARREADY),
        .mon_ARSIZE(dot_prod_1_m_axi_gmem_ARSIZE),
        .mon_ARVALID(dot_prod_1_m_axi_gmem_ARVALID),
        .mon_AWADDR(dot_prod_1_m_axi_gmem_AWADDR),
        .mon_AWBURST({1'b0,1'b1}),
        .mon_AWID(1'b0),
        .mon_AWLEN(dot_prod_1_m_axi_gmem_AWLEN),
        .mon_AWREADY(dot_prod_1_m_axi_gmem_AWREADY),
        .mon_AWSIZE(dot_prod_1_m_axi_gmem_AWSIZE),
        .mon_AWVALID(dot_prod_1_m_axi_gmem_AWVALID),
        .mon_BID(dot_prod_1_m_axi_gmem_BID),
        .mon_BREADY(dot_prod_1_m_axi_gmem_BREADY),
        .mon_BRESP(dot_prod_1_m_axi_gmem_BRESP),
        .mon_BVALID(dot_prod_1_m_axi_gmem_BVALID),
        .mon_RDATA(dot_prod_1_m_axi_gmem_RDATA),
        .mon_RID(dot_prod_1_m_axi_gmem_RID),
        .mon_RLAST(dot_prod_1_m_axi_gmem_RLAST),
        .mon_RREADY(dot_prod_1_m_axi_gmem_RREADY),
        .mon_RRESP(dot_prod_1_m_axi_gmem_RRESP),
        .mon_RVALID(dot_prod_1_m_axi_gmem_RVALID),
        .mon_WDATA(dot_prod_1_m_axi_gmem_WDATA),
        .mon_WLAST(dot_prod_1_m_axi_gmem_WLAST),
        .mon_WREADY(dot_prod_1_m_axi_gmem_WREADY),
        .mon_WSTRB(dot_prod_1_m_axi_gmem_WSTRB),
        .mon_WVALID(dot_prod_1_m_axi_gmem_WVALID),
        .mon_clk(slowest_sync_clk_0_1),
        .mon_resetn(slr1_peripheral_aresetn),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_araddr_mon({1'b0,1'b0,slr1_M01_AXI_ARADDR}),
        .s_axi_arprot_mon(slr1_M01_AXI_ARPROT),
        .s_axi_arready_mon(slr1_M01_AXI_ARREADY),
        .s_axi_arvalid(1'b0),
        .s_axi_arvalid_mon(slr1_M01_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awaddr_mon({1'b0,1'b0,slr1_M01_AXI_AWADDR}),
        .s_axi_awprot_mon(slr1_M01_AXI_AWPROT),
        .s_axi_awready_mon(slr1_M01_AXI_AWREADY),
        .s_axi_awvalid(1'b0),
        .s_axi_awvalid_mon(slr1_M01_AXI_AWVALID),
        .s_axi_bready(1'b0),
        .s_axi_bready_mon(slr1_M01_AXI_BREADY),
        .s_axi_bresp_mon(slr1_M01_AXI_BRESP),
        .s_axi_bvalid_mon(slr1_M01_AXI_BVALID),
        .s_axi_rdata_mon(slr1_M01_AXI_RDATA),
        .s_axi_rready(1'b0),
        .s_axi_rready_mon(slr1_M01_AXI_RREADY),
        .s_axi_rresp_mon(slr1_M01_AXI_RRESP),
        .s_axi_rvalid_mon(slr1_M01_AXI_RVALID),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wdata_mon(slr1_M01_AXI_WDATA),
        .s_axi_wready_mon(slr1_M01_AXI_WREADY),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wstrb_mon(slr1_M01_AXI_WSTRB),
        .s_axi_wvalid(1'b0),
        .s_axi_wvalid_mon(slr1_M01_AXI_WVALID),
        .trace_clk(slowest_sync_clk_0_1),
        .trace_rst(slr1_peripheral_aresetn));
endmodule

module interrupt_concat_imp_1SXQM3I
   (In0,
    xlconcat_interrupt_dout);
  input [0:0]In0;
  output [127:0]xlconcat_interrupt_dout;

  wire [0:0]In0_1;
  wire [31:0]xlconcat_interrupt_0_dout;
  wire [31:0]xlconcat_interrupt_1_dout;
  wire [31:0]xlconcat_interrupt_2_dout;
  wire [31:0]xlconcat_interrupt_3_dout;
  wire [127:0]xlconcat_interrupt_dout;
  wire [0:0]xlconstant_gnd_dout;

  assign In0_1 = In0[0];
  pfm_dynamic_xlconcat_interrupt_0 xlconcat_interrupt
       (.In0(xlconcat_interrupt_0_dout),
        .In1(xlconcat_interrupt_1_dout),
        .In2(xlconcat_interrupt_2_dout),
        .In3(xlconcat_interrupt_3_dout),
        .dout(xlconcat_interrupt_dout));
  pfm_dynamic_xlconcat_interrupt_0_0 xlconcat_interrupt_0
       (.In0(In0_1),
        .In1(xlconstant_gnd_dout),
        .In10(xlconstant_gnd_dout),
        .In11(xlconstant_gnd_dout),
        .In12(xlconstant_gnd_dout),
        .In13(xlconstant_gnd_dout),
        .In14(xlconstant_gnd_dout),
        .In15(xlconstant_gnd_dout),
        .In16(xlconstant_gnd_dout),
        .In17(xlconstant_gnd_dout),
        .In18(xlconstant_gnd_dout),
        .In19(xlconstant_gnd_dout),
        .In2(xlconstant_gnd_dout),
        .In20(xlconstant_gnd_dout),
        .In21(xlconstant_gnd_dout),
        .In22(xlconstant_gnd_dout),
        .In23(xlconstant_gnd_dout),
        .In24(xlconstant_gnd_dout),
        .In25(xlconstant_gnd_dout),
        .In26(xlconstant_gnd_dout),
        .In27(xlconstant_gnd_dout),
        .In28(xlconstant_gnd_dout),
        .In29(xlconstant_gnd_dout),
        .In3(xlconstant_gnd_dout),
        .In30(xlconstant_gnd_dout),
        .In31(xlconstant_gnd_dout),
        .In4(xlconstant_gnd_dout),
        .In5(xlconstant_gnd_dout),
        .In6(xlconstant_gnd_dout),
        .In7(xlconstant_gnd_dout),
        .In8(xlconstant_gnd_dout),
        .In9(xlconstant_gnd_dout),
        .dout(xlconcat_interrupt_0_dout));
  pfm_dynamic_xlconcat_interrupt_1_0 xlconcat_interrupt_1
       (.In0(xlconstant_gnd_dout),
        .In1(xlconstant_gnd_dout),
        .In10(xlconstant_gnd_dout),
        .In11(xlconstant_gnd_dout),
        .In12(xlconstant_gnd_dout),
        .In13(xlconstant_gnd_dout),
        .In14(xlconstant_gnd_dout),
        .In15(xlconstant_gnd_dout),
        .In16(xlconstant_gnd_dout),
        .In17(xlconstant_gnd_dout),
        .In18(xlconstant_gnd_dout),
        .In19(xlconstant_gnd_dout),
        .In2(xlconstant_gnd_dout),
        .In20(xlconstant_gnd_dout),
        .In21(xlconstant_gnd_dout),
        .In22(xlconstant_gnd_dout),
        .In23(xlconstant_gnd_dout),
        .In24(xlconstant_gnd_dout),
        .In25(xlconstant_gnd_dout),
        .In26(xlconstant_gnd_dout),
        .In27(xlconstant_gnd_dout),
        .In28(xlconstant_gnd_dout),
        .In29(xlconstant_gnd_dout),
        .In3(xlconstant_gnd_dout),
        .In30(xlconstant_gnd_dout),
        .In31(xlconstant_gnd_dout),
        .In4(xlconstant_gnd_dout),
        .In5(xlconstant_gnd_dout),
        .In6(xlconstant_gnd_dout),
        .In7(xlconstant_gnd_dout),
        .In8(xlconstant_gnd_dout),
        .In9(xlconstant_gnd_dout),
        .dout(xlconcat_interrupt_1_dout));
  pfm_dynamic_xlconcat_interrupt_2_0 xlconcat_interrupt_2
       (.In0(xlconstant_gnd_dout),
        .In1(xlconstant_gnd_dout),
        .In10(xlconstant_gnd_dout),
        .In11(xlconstant_gnd_dout),
        .In12(xlconstant_gnd_dout),
        .In13(xlconstant_gnd_dout),
        .In14(xlconstant_gnd_dout),
        .In15(xlconstant_gnd_dout),
        .In16(xlconstant_gnd_dout),
        .In17(xlconstant_gnd_dout),
        .In18(xlconstant_gnd_dout),
        .In19(xlconstant_gnd_dout),
        .In2(xlconstant_gnd_dout),
        .In20(xlconstant_gnd_dout),
        .In21(xlconstant_gnd_dout),
        .In22(xlconstant_gnd_dout),
        .In23(xlconstant_gnd_dout),
        .In24(xlconstant_gnd_dout),
        .In25(xlconstant_gnd_dout),
        .In26(xlconstant_gnd_dout),
        .In27(xlconstant_gnd_dout),
        .In28(xlconstant_gnd_dout),
        .In29(xlconstant_gnd_dout),
        .In3(xlconstant_gnd_dout),
        .In30(xlconstant_gnd_dout),
        .In31(xlconstant_gnd_dout),
        .In4(xlconstant_gnd_dout),
        .In5(xlconstant_gnd_dout),
        .In6(xlconstant_gnd_dout),
        .In7(xlconstant_gnd_dout),
        .In8(xlconstant_gnd_dout),
        .In9(xlconstant_gnd_dout),
        .dout(xlconcat_interrupt_2_dout));
  pfm_dynamic_xlconcat_interrupt_3_0 xlconcat_interrupt_3
       (.In0(xlconstant_gnd_dout),
        .In1(xlconstant_gnd_dout),
        .In10(xlconstant_gnd_dout),
        .In11(xlconstant_gnd_dout),
        .In12(xlconstant_gnd_dout),
        .In13(xlconstant_gnd_dout),
        .In14(xlconstant_gnd_dout),
        .In15(xlconstant_gnd_dout),
        .In16(xlconstant_gnd_dout),
        .In17(xlconstant_gnd_dout),
        .In18(xlconstant_gnd_dout),
        .In19(xlconstant_gnd_dout),
        .In2(xlconstant_gnd_dout),
        .In20(xlconstant_gnd_dout),
        .In21(xlconstant_gnd_dout),
        .In22(xlconstant_gnd_dout),
        .In23(xlconstant_gnd_dout),
        .In24(xlconstant_gnd_dout),
        .In25(xlconstant_gnd_dout),
        .In26(xlconstant_gnd_dout),
        .In27(xlconstant_gnd_dout),
        .In28(xlconstant_gnd_dout),
        .In29(xlconstant_gnd_dout),
        .In3(xlconstant_gnd_dout),
        .In30(xlconstant_gnd_dout),
        .In31(xlconstant_gnd_dout),
        .In4(xlconstant_gnd_dout),
        .In5(xlconstant_gnd_dout),
        .In6(xlconstant_gnd_dout),
        .In7(xlconstant_gnd_dout),
        .In8(xlconstant_gnd_dout),
        .In9(xlconstant_gnd_dout),
        .dout(xlconcat_interrupt_3_dout));
  pfm_dynamic_xlconstant_gnd_0 xlconstant_gnd
       (.dout(xlconstant_gnd_dout));
endmodule

module m00_couplers_imp_120WOX2
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [63:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [63:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[63:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m00_couplers_imp_184K1VH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [7:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [7:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [7:0]auto_cc_to_m00_regslice_ARADDR;
  wire [2:0]auto_cc_to_m00_regslice_ARPROT;
  wire auto_cc_to_m00_regslice_ARREADY;
  wire auto_cc_to_m00_regslice_ARVALID;
  wire [7:0]auto_cc_to_m00_regslice_AWADDR;
  wire [2:0]auto_cc_to_m00_regslice_AWPROT;
  wire auto_cc_to_m00_regslice_AWREADY;
  wire auto_cc_to_m00_regslice_AWVALID;
  wire auto_cc_to_m00_regslice_BREADY;
  wire [1:0]auto_cc_to_m00_regslice_BRESP;
  wire auto_cc_to_m00_regslice_BVALID;
  wire [31:0]auto_cc_to_m00_regslice_RDATA;
  wire auto_cc_to_m00_regslice_RREADY;
  wire [1:0]auto_cc_to_m00_regslice_RRESP;
  wire auto_cc_to_m00_regslice_RVALID;
  wire [31:0]auto_cc_to_m00_regslice_WDATA;
  wire auto_cc_to_m00_regslice_WREADY;
  wire [3:0]auto_cc_to_m00_regslice_WSTRB;
  wire auto_cc_to_m00_regslice_WVALID;
  wire [63:0]m00_couplers_to_auto_cc_ARADDR;
  wire [2:0]m00_couplers_to_auto_cc_ARPROT;
  wire m00_couplers_to_auto_cc_ARREADY;
  wire m00_couplers_to_auto_cc_ARVALID;
  wire [63:0]m00_couplers_to_auto_cc_AWADDR;
  wire [2:0]m00_couplers_to_auto_cc_AWPROT;
  wire m00_couplers_to_auto_cc_AWREADY;
  wire m00_couplers_to_auto_cc_AWVALID;
  wire m00_couplers_to_auto_cc_BREADY;
  wire [1:0]m00_couplers_to_auto_cc_BRESP;
  wire m00_couplers_to_auto_cc_BVALID;
  wire [31:0]m00_couplers_to_auto_cc_RDATA;
  wire m00_couplers_to_auto_cc_RREADY;
  wire [1:0]m00_couplers_to_auto_cc_RRESP;
  wire m00_couplers_to_auto_cc_RVALID;
  wire [31:0]m00_couplers_to_auto_cc_WDATA;
  wire m00_couplers_to_auto_cc_WREADY;
  wire [3:0]m00_couplers_to_auto_cc_WSTRB;
  wire m00_couplers_to_auto_cc_WVALID;
  wire [7:0]m00_regslice_to_m00_couplers_ARADDR;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [7:0]m00_regslice_to_m00_couplers_AWADDR;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [31:0]m00_regslice_to_m00_couplers_RDATA;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [31:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [3:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[7:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[7:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_cc_WREADY;
  assign m00_couplers_to_auto_cc_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  pfm_dynamic_auto_cc_1 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m00_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m00_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m00_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m00_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m00_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m00_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m00_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m00_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m00_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m00_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m00_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m00_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m00_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m00_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m00_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m00_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m00_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m00_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m00_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m00_couplers_to_auto_cc_ARADDR[7:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m00_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m00_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m00_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_cc_AWADDR[7:0]),
        .s_axi_awprot(m00_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m00_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m00_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m00_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m00_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_cc_WVALID));
  pfm_dynamic_m00_regslice_0 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m00_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m00_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m00_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m00_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m00_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m00_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m00_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m00_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m00_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m00_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m00_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m00_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m00_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m00_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m00_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m00_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m00_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m00_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m00_regslice_WVALID));
endmodule

module m00_couplers_imp_1IU07KW
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [63:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [63:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[63:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[63:0];
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_6BWSZC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [63:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [2:0]m01_couplers_to_m01_couplers_ARPROT;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [63:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [2:0]m01_couplers_to_m01_couplers_AWPROT;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[63:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_couplers_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_couplers_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[63:0];
  assign m01_couplers_to_m01_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign m01_couplers_to_m01_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_87NC3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [7:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [7:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [7:0]auto_cc_to_m01_regslice_ARADDR;
  wire [2:0]auto_cc_to_m01_regslice_ARPROT;
  wire auto_cc_to_m01_regslice_ARREADY;
  wire auto_cc_to_m01_regslice_ARVALID;
  wire [7:0]auto_cc_to_m01_regslice_AWADDR;
  wire [2:0]auto_cc_to_m01_regslice_AWPROT;
  wire auto_cc_to_m01_regslice_AWREADY;
  wire auto_cc_to_m01_regslice_AWVALID;
  wire auto_cc_to_m01_regslice_BREADY;
  wire [1:0]auto_cc_to_m01_regslice_BRESP;
  wire auto_cc_to_m01_regslice_BVALID;
  wire [31:0]auto_cc_to_m01_regslice_RDATA;
  wire auto_cc_to_m01_regslice_RREADY;
  wire [1:0]auto_cc_to_m01_regslice_RRESP;
  wire auto_cc_to_m01_regslice_RVALID;
  wire [31:0]auto_cc_to_m01_regslice_WDATA;
  wire auto_cc_to_m01_regslice_WREADY;
  wire [3:0]auto_cc_to_m01_regslice_WSTRB;
  wire auto_cc_to_m01_regslice_WVALID;
  wire [63:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [63:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;
  wire [7:0]m01_regslice_to_m01_couplers_ARADDR;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [7:0]m01_regslice_to_m01_couplers_AWADDR;
  wire m01_regslice_to_m01_couplers_AWREADY;
  wire m01_regslice_to_m01_couplers_AWVALID;
  wire m01_regslice_to_m01_couplers_BREADY;
  wire [1:0]m01_regslice_to_m01_couplers_BRESP;
  wire m01_regslice_to_m01_couplers_BVALID;
  wire [31:0]m01_regslice_to_m01_couplers_RDATA;
  wire m01_regslice_to_m01_couplers_RREADY;
  wire [1:0]m01_regslice_to_m01_couplers_RRESP;
  wire m01_regslice_to_m01_couplers_RVALID;
  wire [31:0]m01_regslice_to_m01_couplers_WDATA;
  wire m01_regslice_to_m01_couplers_WREADY;
  wire [3:0]m01_regslice_to_m01_couplers_WSTRB;
  wire m01_regslice_to_m01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[7:0] = m01_regslice_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[7:0] = m01_regslice_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_regslice_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[63:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[63:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
  pfm_dynamic_auto_cc_2 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m01_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m01_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m01_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m01_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m01_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m01_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m01_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m01_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m01_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m01_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m01_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[7:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[7:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
  pfm_dynamic_m01_regslice_7 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awready(m01_regslice_to_m01_couplers_AWREADY),
        .m_axi_awvalid(m01_regslice_to_m01_couplers_AWVALID),
        .m_axi_bready(m01_regslice_to_m01_couplers_BREADY),
        .m_axi_bresp(m01_regslice_to_m01_couplers_BRESP),
        .m_axi_bvalid(m01_regslice_to_m01_couplers_BVALID),
        .m_axi_rdata(m01_regslice_to_m01_couplers_RDATA),
        .m_axi_rready(m01_regslice_to_m01_couplers_RREADY),
        .m_axi_rresp(m01_regslice_to_m01_couplers_RRESP),
        .m_axi_rvalid(m01_regslice_to_m01_couplers_RVALID),
        .m_axi_wdata(m01_regslice_to_m01_couplers_WDATA),
        .m_axi_wready(m01_regslice_to_m01_couplers_WREADY),
        .m_axi_wstrb(m01_regslice_to_m01_couplers_WSTRB),
        .m_axi_wvalid(m01_regslice_to_m01_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m01_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m01_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m01_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m01_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m01_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m01_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m01_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m01_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m01_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m01_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m01_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m01_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m01_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m01_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m01_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m01_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m01_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m01_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m01_regslice_WVALID));
endmodule

module m01_couplers_imp_P1OJY6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [5:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [5:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [5:0]auto_cc_to_m01_regslice_ARADDR;
  wire [2:0]auto_cc_to_m01_regslice_ARPROT;
  wire auto_cc_to_m01_regslice_ARREADY;
  wire auto_cc_to_m01_regslice_ARVALID;
  wire [5:0]auto_cc_to_m01_regslice_AWADDR;
  wire [2:0]auto_cc_to_m01_regslice_AWPROT;
  wire auto_cc_to_m01_regslice_AWREADY;
  wire auto_cc_to_m01_regslice_AWVALID;
  wire auto_cc_to_m01_regslice_BREADY;
  wire [1:0]auto_cc_to_m01_regslice_BRESP;
  wire auto_cc_to_m01_regslice_BVALID;
  wire [31:0]auto_cc_to_m01_regslice_RDATA;
  wire auto_cc_to_m01_regslice_RREADY;
  wire [1:0]auto_cc_to_m01_regslice_RRESP;
  wire auto_cc_to_m01_regslice_RVALID;
  wire [31:0]auto_cc_to_m01_regslice_WDATA;
  wire auto_cc_to_m01_regslice_WREADY;
  wire [3:0]auto_cc_to_m01_regslice_WSTRB;
  wire auto_cc_to_m01_regslice_WVALID;
  wire [63:0]m01_couplers_to_auto_cc_ARADDR;
  wire [2:0]m01_couplers_to_auto_cc_ARPROT;
  wire m01_couplers_to_auto_cc_ARREADY;
  wire m01_couplers_to_auto_cc_ARVALID;
  wire [63:0]m01_couplers_to_auto_cc_AWADDR;
  wire [2:0]m01_couplers_to_auto_cc_AWPROT;
  wire m01_couplers_to_auto_cc_AWREADY;
  wire m01_couplers_to_auto_cc_AWVALID;
  wire m01_couplers_to_auto_cc_BREADY;
  wire [1:0]m01_couplers_to_auto_cc_BRESP;
  wire m01_couplers_to_auto_cc_BVALID;
  wire [31:0]m01_couplers_to_auto_cc_RDATA;
  wire m01_couplers_to_auto_cc_RREADY;
  wire [1:0]m01_couplers_to_auto_cc_RRESP;
  wire m01_couplers_to_auto_cc_RVALID;
  wire [31:0]m01_couplers_to_auto_cc_WDATA;
  wire m01_couplers_to_auto_cc_WREADY;
  wire [3:0]m01_couplers_to_auto_cc_WSTRB;
  wire m01_couplers_to_auto_cc_WVALID;
  wire [5:0]m01_regslice_to_m01_couplers_ARADDR;
  wire [2:0]m01_regslice_to_m01_couplers_ARPROT;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [5:0]m01_regslice_to_m01_couplers_AWADDR;
  wire [2:0]m01_regslice_to_m01_couplers_AWPROT;
  wire m01_regslice_to_m01_couplers_AWREADY;
  wire m01_regslice_to_m01_couplers_AWVALID;
  wire m01_regslice_to_m01_couplers_BREADY;
  wire [1:0]m01_regslice_to_m01_couplers_BRESP;
  wire m01_regslice_to_m01_couplers_BVALID;
  wire [31:0]m01_regslice_to_m01_couplers_RDATA;
  wire m01_regslice_to_m01_couplers_RREADY;
  wire [1:0]m01_regslice_to_m01_couplers_RRESP;
  wire m01_regslice_to_m01_couplers_RVALID;
  wire [31:0]m01_regslice_to_m01_couplers_WDATA;
  wire m01_regslice_to_m01_couplers_WREADY;
  wire [3:0]m01_regslice_to_m01_couplers_WSTRB;
  wire m01_regslice_to_m01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[5:0] = m01_regslice_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_regslice_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[5:0] = m01_regslice_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_regslice_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_regslice_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_cc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_cc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_cc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_cc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_cc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_cc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_cc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_cc_WREADY;
  assign m01_couplers_to_auto_cc_ARADDR = S_AXI_araddr[63:0];
  assign m01_couplers_to_auto_cc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_cc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_cc_AWADDR = S_AXI_awaddr[63:0];
  assign m01_couplers_to_auto_cc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_cc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_cc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_cc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_cc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_cc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_cc_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
  pfm_dynamic_auto_cc_0 auto_cc
       (.m_axi_aclk(M_ACLK_1),
        .m_axi_araddr(auto_cc_to_m01_regslice_ARADDR),
        .m_axi_aresetn(M_ARESETN_1),
        .m_axi_arprot(auto_cc_to_m01_regslice_ARPROT),
        .m_axi_arready(auto_cc_to_m01_regslice_ARREADY),
        .m_axi_arvalid(auto_cc_to_m01_regslice_ARVALID),
        .m_axi_awaddr(auto_cc_to_m01_regslice_AWADDR),
        .m_axi_awprot(auto_cc_to_m01_regslice_AWPROT),
        .m_axi_awready(auto_cc_to_m01_regslice_AWREADY),
        .m_axi_awvalid(auto_cc_to_m01_regslice_AWVALID),
        .m_axi_bready(auto_cc_to_m01_regslice_BREADY),
        .m_axi_bresp(auto_cc_to_m01_regslice_BRESP),
        .m_axi_bvalid(auto_cc_to_m01_regslice_BVALID),
        .m_axi_rdata(auto_cc_to_m01_regslice_RDATA),
        .m_axi_rready(auto_cc_to_m01_regslice_RREADY),
        .m_axi_rresp(auto_cc_to_m01_regslice_RRESP),
        .m_axi_rvalid(auto_cc_to_m01_regslice_RVALID),
        .m_axi_wdata(auto_cc_to_m01_regslice_WDATA),
        .m_axi_wready(auto_cc_to_m01_regslice_WREADY),
        .m_axi_wstrb(auto_cc_to_m01_regslice_WSTRB),
        .m_axi_wvalid(auto_cc_to_m01_regslice_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m01_couplers_to_auto_cc_ARADDR[5:0]),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arprot(m01_couplers_to_auto_cc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_cc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_cc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_cc_AWADDR[5:0]),
        .s_axi_awprot(m01_couplers_to_auto_cc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_cc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_cc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_cc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_cc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_cc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_cc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_cc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_cc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_cc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_cc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_cc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_cc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_cc_WVALID));
  pfm_dynamic_m01_regslice_6 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arprot(m01_regslice_to_m01_couplers_ARPROT),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awprot(m01_regslice_to_m01_couplers_AWPROT),
        .m_axi_awready(m01_regslice_to_m01_couplers_AWREADY),
        .m_axi_awvalid(m01_regslice_to_m01_couplers_AWVALID),
        .m_axi_bready(m01_regslice_to_m01_couplers_BREADY),
        .m_axi_bresp(m01_regslice_to_m01_couplers_BRESP),
        .m_axi_bvalid(m01_regslice_to_m01_couplers_BVALID),
        .m_axi_rdata(m01_regslice_to_m01_couplers_RDATA),
        .m_axi_rready(m01_regslice_to_m01_couplers_RREADY),
        .m_axi_rresp(m01_regslice_to_m01_couplers_RRESP),
        .m_axi_rvalid(m01_regslice_to_m01_couplers_RVALID),
        .m_axi_wdata(m01_regslice_to_m01_couplers_WDATA),
        .m_axi_wready(m01_regslice_to_m01_couplers_WREADY),
        .m_axi_wstrb(m01_regslice_to_m01_couplers_WSTRB),
        .m_axi_wvalid(m01_regslice_to_m01_couplers_WVALID),
        .s_axi_araddr(auto_cc_to_m01_regslice_ARADDR),
        .s_axi_arprot(auto_cc_to_m01_regslice_ARPROT),
        .s_axi_arready(auto_cc_to_m01_regslice_ARREADY),
        .s_axi_arvalid(auto_cc_to_m01_regslice_ARVALID),
        .s_axi_awaddr(auto_cc_to_m01_regslice_AWADDR),
        .s_axi_awprot(auto_cc_to_m01_regslice_AWPROT),
        .s_axi_awready(auto_cc_to_m01_regslice_AWREADY),
        .s_axi_awvalid(auto_cc_to_m01_regslice_AWVALID),
        .s_axi_bready(auto_cc_to_m01_regslice_BREADY),
        .s_axi_bresp(auto_cc_to_m01_regslice_BRESP),
        .s_axi_bvalid(auto_cc_to_m01_regslice_BVALID),
        .s_axi_rdata(auto_cc_to_m01_regslice_RDATA),
        .s_axi_rready(auto_cc_to_m01_regslice_RREADY),
        .s_axi_rresp(auto_cc_to_m01_regslice_RRESP),
        .s_axi_rvalid(auto_cc_to_m01_regslice_RVALID),
        .s_axi_wdata(auto_cc_to_m01_regslice_WDATA),
        .s_axi_wready(auto_cc_to_m01_regslice_WREADY),
        .s_axi_wstrb(auto_cc_to_m01_regslice_WSTRB),
        .s_axi_wvalid(auto_cc_to_m01_regslice_WVALID));
endmodule

module m02_couplers_imp_UGVDQZ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [63:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [63:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[63:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[63:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

(* CORE_GENERATION_INFO = "pfm_dynamic,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=pfm_dynamic,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=60,numReposBlks=38,numNonXlnxBlks=0,numHierBlks=22,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=Vitis,synth_mode=Global}" *) (* HW_HANDOFF = "pfm_dynamic.hwdef" *) 
module pfm_dynamic
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME C0_DDR_MAXI_0, ADDR_WIDTH 35, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_ddr_default_clk_0, DATA_WIDTH 512, FREQ_HZ 300120048, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [34:0]C0_DDR_MAXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 ARBURST" *) output [1:0]C0_DDR_MAXI_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 ARLEN" *) output [7:0]C0_DDR_MAXI_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 ARPROT" *) output [2:0]C0_DDR_MAXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 ARREADY" *) input [0:0]C0_DDR_MAXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 ARSIZE" *) output [2:0]C0_DDR_MAXI_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 ARVALID" *) output [0:0]C0_DDR_MAXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 AWADDR" *) output [34:0]C0_DDR_MAXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 AWBURST" *) output [1:0]C0_DDR_MAXI_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 AWLEN" *) output [7:0]C0_DDR_MAXI_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 AWPROT" *) output [2:0]C0_DDR_MAXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 AWREADY" *) input [0:0]C0_DDR_MAXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 AWSIZE" *) output [2:0]C0_DDR_MAXI_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 AWVALID" *) output [0:0]C0_DDR_MAXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 BREADY" *) output [0:0]C0_DDR_MAXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 BRESP" *) input [1:0]C0_DDR_MAXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 BVALID" *) input [0:0]C0_DDR_MAXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 RDATA" *) input [511:0]C0_DDR_MAXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 RLAST" *) input [0:0]C0_DDR_MAXI_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 RREADY" *) output [0:0]C0_DDR_MAXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 RRESP" *) input [1:0]C0_DDR_MAXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 RVALID" *) input [0:0]C0_DDR_MAXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 WDATA" *) output [511:0]C0_DDR_MAXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 WLAST" *) output [0:0]C0_DDR_MAXI_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 WREADY" *) input [0:0]C0_DDR_MAXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 WSTRB" *) output [63:0]C0_DDR_MAXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 C0_DDR_MAXI_0 WVALID" *) output [0:0]C0_DDR_MAXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKWIZ_KERNEL2_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKWIZ_KERNEL2_CLK_0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel2_clk_0, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clkwiz_kernel2_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CLKWIZ_KERNEL2_RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CLKWIZ_KERNEL2_RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input clkwiz_kernel2_rst_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKWIZ_KERNEL_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKWIZ_KERNEL_CLK_0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_0, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clkwiz_kernel_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CLKWIZ_KERNEL_RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CLKWIZ_KERNEL_RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input clkwiz_kernel_rst_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_M_AXI_0, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_dma_pcie_aclk, DATA_WIDTH 32, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]data_M_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 ARBURST" *) input [1:0]data_M_AXI_0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 ARCACHE" *) input [3:0]data_M_AXI_0_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 ARID" *) input [0:0]data_M_AXI_0_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 ARLEN" *) input [7:0]data_M_AXI_0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 ARLOCK" *) input data_M_AXI_0_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 ARPROT" *) input [2:0]data_M_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 ARQOS" *) input [3:0]data_M_AXI_0_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 ARREADY" *) output data_M_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 ARREGION" *) input [3:0]data_M_AXI_0_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 ARSIZE" *) input [2:0]data_M_AXI_0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 ARVALID" *) input data_M_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 AWADDR" *) input [63:0]data_M_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 AWBURST" *) input [1:0]data_M_AXI_0_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 AWCACHE" *) input [3:0]data_M_AXI_0_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 AWID" *) input [0:0]data_M_AXI_0_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 AWLEN" *) input [7:0]data_M_AXI_0_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 AWLOCK" *) input data_M_AXI_0_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 AWPROT" *) input [2:0]data_M_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 AWQOS" *) input [3:0]data_M_AXI_0_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 AWREADY" *) output data_M_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 AWREGION" *) input [3:0]data_M_AXI_0_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 AWSIZE" *) input [2:0]data_M_AXI_0_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 AWVALID" *) input data_M_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 BID" *) output [0:0]data_M_AXI_0_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 BREADY" *) input data_M_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 BRESP" *) output [1:0]data_M_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 BVALID" *) output data_M_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 RDATA" *) output [31:0]data_M_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 RID" *) output [0:0]data_M_AXI_0_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 RLAST" *) output data_M_AXI_0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 RREADY" *) input data_M_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 RRESP" *) output [1:0]data_M_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 RVALID" *) output data_M_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 WDATA" *) input [31:0]data_M_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 WLAST" *) input data_M_AXI_0_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 WREADY" *) output data_M_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 WSTRB" *) input [3:0]data_M_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_0 WVALID" *) input data_M_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_M_AXI_1, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_dma_pcie_aclk, DATA_WIDTH 512, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]data_M_AXI_1_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 ARBURST" *) input [1:0]data_M_AXI_1_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 ARCACHE" *) input [3:0]data_M_AXI_1_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 ARID" *) input [0:0]data_M_AXI_1_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 ARLEN" *) input [7:0]data_M_AXI_1_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 ARLOCK" *) input data_M_AXI_1_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 ARPROT" *) input [2:0]data_M_AXI_1_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 ARQOS" *) input [3:0]data_M_AXI_1_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 ARREADY" *) output data_M_AXI_1_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 ARREGION" *) input [3:0]data_M_AXI_1_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 ARSIZE" *) input [2:0]data_M_AXI_1_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 ARVALID" *) input data_M_AXI_1_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 AWADDR" *) input [63:0]data_M_AXI_1_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 AWBURST" *) input [1:0]data_M_AXI_1_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 AWCACHE" *) input [3:0]data_M_AXI_1_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 AWID" *) input [0:0]data_M_AXI_1_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 AWLEN" *) input [7:0]data_M_AXI_1_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 AWLOCK" *) input data_M_AXI_1_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 AWPROT" *) input [2:0]data_M_AXI_1_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 AWQOS" *) input [3:0]data_M_AXI_1_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 AWREADY" *) output data_M_AXI_1_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 AWREGION" *) input [3:0]data_M_AXI_1_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 AWSIZE" *) input [2:0]data_M_AXI_1_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 AWVALID" *) input data_M_AXI_1_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 BID" *) output [0:0]data_M_AXI_1_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 BREADY" *) input data_M_AXI_1_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 BRESP" *) output [1:0]data_M_AXI_1_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 BVALID" *) output data_M_AXI_1_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 RDATA" *) output [511:0]data_M_AXI_1_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 RID" *) output [0:0]data_M_AXI_1_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 RLAST" *) output data_M_AXI_1_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 RREADY" *) input data_M_AXI_1_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 RRESP" *) output [1:0]data_M_AXI_1_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 RVALID" *) output data_M_AXI_1_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 WDATA" *) input [511:0]data_M_AXI_1_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 WLAST" *) input data_M_AXI_1_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 WREADY" *) output data_M_AXI_1_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 WSTRB" *) input [63:0]data_M_AXI_1_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_1 WVALID" *) input data_M_AXI_1_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_M_AXI_2, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_dma_pcie_aclk, DATA_WIDTH 512, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]data_M_AXI_2_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 ARBURST" *) input [1:0]data_M_AXI_2_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 ARCACHE" *) input [3:0]data_M_AXI_2_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 ARID" *) input [0:0]data_M_AXI_2_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 ARLEN" *) input [7:0]data_M_AXI_2_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 ARLOCK" *) input data_M_AXI_2_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 ARPROT" *) input [2:0]data_M_AXI_2_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 ARQOS" *) input [3:0]data_M_AXI_2_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 ARREADY" *) output data_M_AXI_2_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 ARREGION" *) input [3:0]data_M_AXI_2_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 ARSIZE" *) input [2:0]data_M_AXI_2_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 ARVALID" *) input data_M_AXI_2_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 AWADDR" *) input [63:0]data_M_AXI_2_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 AWBURST" *) input [1:0]data_M_AXI_2_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 AWCACHE" *) input [3:0]data_M_AXI_2_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 AWID" *) input [0:0]data_M_AXI_2_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 AWLEN" *) input [7:0]data_M_AXI_2_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 AWLOCK" *) input data_M_AXI_2_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 AWPROT" *) input [2:0]data_M_AXI_2_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 AWQOS" *) input [3:0]data_M_AXI_2_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 AWREADY" *) output data_M_AXI_2_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 AWREGION" *) input [3:0]data_M_AXI_2_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 AWSIZE" *) input [2:0]data_M_AXI_2_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 AWVALID" *) input data_M_AXI_2_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 BID" *) output [0:0]data_M_AXI_2_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 BREADY" *) input data_M_AXI_2_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 BRESP" *) output [1:0]data_M_AXI_2_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 BVALID" *) output data_M_AXI_2_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 RDATA" *) output [511:0]data_M_AXI_2_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 RID" *) output [0:0]data_M_AXI_2_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 RLAST" *) output data_M_AXI_2_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 RREADY" *) input data_M_AXI_2_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 RRESP" *) output [1:0]data_M_AXI_2_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 RVALID" *) output data_M_AXI_2_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 WDATA" *) input [511:0]data_M_AXI_2_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 WLAST" *) input data_M_AXI_2_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 WREADY" *) output data_M_AXI_2_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 WSTRB" *) input [63:0]data_M_AXI_2_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_2 WVALID" *) input data_M_AXI_2_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_M_AXI_3, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_dma_pcie_aclk, DATA_WIDTH 512, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]data_M_AXI_3_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 ARBURST" *) input [1:0]data_M_AXI_3_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 ARCACHE" *) input [3:0]data_M_AXI_3_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 ARID" *) input [0:0]data_M_AXI_3_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 ARLEN" *) input [7:0]data_M_AXI_3_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 ARLOCK" *) input data_M_AXI_3_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 ARPROT" *) input [2:0]data_M_AXI_3_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 ARQOS" *) input [3:0]data_M_AXI_3_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 ARREADY" *) output data_M_AXI_3_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 ARREGION" *) input [3:0]data_M_AXI_3_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 ARSIZE" *) input [2:0]data_M_AXI_3_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 ARVALID" *) input data_M_AXI_3_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 AWADDR" *) input [63:0]data_M_AXI_3_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 AWBURST" *) input [1:0]data_M_AXI_3_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 AWCACHE" *) input [3:0]data_M_AXI_3_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 AWID" *) input [0:0]data_M_AXI_3_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 AWLEN" *) input [7:0]data_M_AXI_3_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 AWLOCK" *) input data_M_AXI_3_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 AWPROT" *) input [2:0]data_M_AXI_3_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 AWQOS" *) input [3:0]data_M_AXI_3_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 AWREADY" *) output data_M_AXI_3_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 AWREGION" *) input [3:0]data_M_AXI_3_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 AWSIZE" *) input [2:0]data_M_AXI_3_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 AWVALID" *) input data_M_AXI_3_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 BID" *) output [0:0]data_M_AXI_3_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 BREADY" *) input data_M_AXI_3_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 BRESP" *) output [1:0]data_M_AXI_3_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 BVALID" *) output data_M_AXI_3_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 RDATA" *) output [511:0]data_M_AXI_3_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 RID" *) output [0:0]data_M_AXI_3_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 RLAST" *) output data_M_AXI_3_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 RREADY" *) input data_M_AXI_3_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 RRESP" *) output [1:0]data_M_AXI_3_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 RVALID" *) output data_M_AXI_3_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 WDATA" *) input [511:0]data_M_AXI_3_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 WLAST" *) input data_M_AXI_3_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 WREADY" *) output data_M_AXI_3_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 WSTRB" *) input [63:0]data_M_AXI_3_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_3 WVALID" *) input data_M_AXI_3_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_M_AXI_4, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_dma_pcie_aclk, DATA_WIDTH 512, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]data_M_AXI_4_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 ARBURST" *) input [1:0]data_M_AXI_4_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 ARCACHE" *) input [3:0]data_M_AXI_4_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 ARID" *) input [0:0]data_M_AXI_4_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 ARLEN" *) input [7:0]data_M_AXI_4_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 ARLOCK" *) input data_M_AXI_4_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 ARPROT" *) input [2:0]data_M_AXI_4_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 ARQOS" *) input [3:0]data_M_AXI_4_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 ARREADY" *) output data_M_AXI_4_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 ARREGION" *) input [3:0]data_M_AXI_4_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 ARSIZE" *) input [2:0]data_M_AXI_4_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 ARVALID" *) input data_M_AXI_4_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 AWADDR" *) input [63:0]data_M_AXI_4_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 AWBURST" *) input [1:0]data_M_AXI_4_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 AWCACHE" *) input [3:0]data_M_AXI_4_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 AWID" *) input [0:0]data_M_AXI_4_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 AWLEN" *) input [7:0]data_M_AXI_4_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 AWLOCK" *) input data_M_AXI_4_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 AWPROT" *) input [2:0]data_M_AXI_4_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 AWQOS" *) input [3:0]data_M_AXI_4_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 AWREADY" *) output data_M_AXI_4_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 AWREGION" *) input [3:0]data_M_AXI_4_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 AWSIZE" *) input [2:0]data_M_AXI_4_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 AWVALID" *) input data_M_AXI_4_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 BID" *) output [0:0]data_M_AXI_4_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 BREADY" *) input data_M_AXI_4_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 BRESP" *) output [1:0]data_M_AXI_4_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 BVALID" *) output data_M_AXI_4_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 RDATA" *) output [511:0]data_M_AXI_4_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 RID" *) output [0:0]data_M_AXI_4_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 RLAST" *) output data_M_AXI_4_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 RREADY" *) input data_M_AXI_4_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 RRESP" *) output [1:0]data_M_AXI_4_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 RVALID" *) output data_M_AXI_4_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 WDATA" *) input [511:0]data_M_AXI_4_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 WLAST" *) input data_M_AXI_4_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 WREADY" *) output data_M_AXI_4_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 WSTRB" *) input [63:0]data_M_AXI_4_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 data_M_AXI_4 WVALID" *) input data_M_AXI_4_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DDR_DEFAULT_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DDR_DEFAULT_CLK_0, ASSOCIATED_BUSIF C0_DDR_MAXI_0, ASSOCIATED_RESET ddr_default_rst_0, CLK_DOMAIN pfm_dynamic_ddr_default_clk_0, FREQ_HZ 300120048, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input ddr_default_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DDR_DEFAULT_RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DDR_DEFAULT_RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input ddr_default_rst_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DMA_PCIE_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DMA_PCIE_ACLK, ASSOCIATED_BUSIF userpf_control_M_AXI:userpf_control_M_AXI_slr1:userpf_control_M_AXI_slr2:data_M_AXI_0:data_M_AXI_1:data_M_AXI_2:data_M_AXI_3:data_M_AXI_4, ASSOCIATED_RESET dma_pcie_arst, CLK_DOMAIN pfm_dynamic_dma_pcie_aclk, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input dma_pcie_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DMA_PCIE_ARST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DMA_PCIE_ARST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input [0:0]dma_pcie_arst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.IRQ_CU INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.IRQ_CU, PortWidth 128, SENSITIVITY NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:LEVEL_HIGH" *) output [127:0]irq_cu;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME userpf_control_M_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_dma_pcie_aclk, DATA_WIDTH 32, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]userpf_control_M_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI ARPROT" *) input [2:0]userpf_control_M_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI ARREADY" *) output [0:0]userpf_control_M_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI ARVALID" *) input [0:0]userpf_control_M_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI AWADDR" *) input [63:0]userpf_control_M_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI AWPROT" *) input [2:0]userpf_control_M_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI AWREADY" *) output [0:0]userpf_control_M_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI AWVALID" *) input [0:0]userpf_control_M_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI BREADY" *) input [0:0]userpf_control_M_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI BRESP" *) output [1:0]userpf_control_M_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI BVALID" *) output [0:0]userpf_control_M_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI RDATA" *) output [31:0]userpf_control_M_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI RREADY" *) input [0:0]userpf_control_M_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI RRESP" *) output [1:0]userpf_control_M_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI RVALID" *) output [0:0]userpf_control_M_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI WDATA" *) input [31:0]userpf_control_M_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI WREADY" *) output [0:0]userpf_control_M_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI WSTRB" *) input [3:0]userpf_control_M_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 userpf_control_M_AXI WVALID" *) input [0:0]userpf_control_M_AXI_wvalid;

  wire [63:0]S00_AXI_1_ARADDR;
  wire [2:0]S00_AXI_1_ARPROT;
  wire S00_AXI_1_ARREADY;
  wire S00_AXI_1_ARVALID;
  wire [63:0]S00_AXI_1_AWADDR;
  wire [2:0]S00_AXI_1_AWPROT;
  wire S00_AXI_1_AWREADY;
  wire S00_AXI_1_AWVALID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [31:0]S00_AXI_1_RDATA;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [31:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WREADY;
  wire [3:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire [63:0]connect_to_es_cu_M01_AXI_ARADDR;
  wire [0:0]connect_to_es_cu_M01_AXI_ARREADY;
  wire [0:0]connect_to_es_cu_M01_AXI_ARVALID;
  wire [63:0]connect_to_es_cu_M01_AXI_AWADDR;
  wire [0:0]connect_to_es_cu_M01_AXI_AWREADY;
  wire [0:0]connect_to_es_cu_M01_AXI_AWVALID;
  wire [0:0]connect_to_es_cu_M01_AXI_BREADY;
  wire [1:0]connect_to_es_cu_M01_AXI_BRESP;
  wire [0:0]connect_to_es_cu_M01_AXI_BVALID;
  wire [31:0]connect_to_es_cu_M01_AXI_RDATA;
  wire [0:0]connect_to_es_cu_M01_AXI_RREADY;
  wire [1:0]connect_to_es_cu_M01_AXI_RRESP;
  wire [0:0]connect_to_es_cu_M01_AXI_RVALID;
  wire [31:0]connect_to_es_cu_M01_AXI_WDATA;
  wire [0:0]connect_to_es_cu_M01_AXI_WREADY;
  wire [3:0]connect_to_es_cu_M01_AXI_WSTRB;
  wire [0:0]connect_to_es_cu_M01_AXI_WVALID;
  wire [63:0]connect_to_es_cu_M02_AXI_ARADDR;
  wire [2:0]connect_to_es_cu_M02_AXI_ARPROT;
  wire [0:0]connect_to_es_cu_M02_AXI_ARREADY;
  wire [0:0]connect_to_es_cu_M02_AXI_ARVALID;
  wire [63:0]connect_to_es_cu_M02_AXI_AWADDR;
  wire [2:0]connect_to_es_cu_M02_AXI_AWPROT;
  wire [0:0]connect_to_es_cu_M02_AXI_AWREADY;
  wire [0:0]connect_to_es_cu_M02_AXI_AWVALID;
  wire [0:0]connect_to_es_cu_M02_AXI_BREADY;
  wire [1:0]connect_to_es_cu_M02_AXI_BRESP;
  wire [0:0]connect_to_es_cu_M02_AXI_BVALID;
  wire [31:0]connect_to_es_cu_M02_AXI_RDATA;
  wire [0:0]connect_to_es_cu_M02_AXI_RREADY;
  wire [1:0]connect_to_es_cu_M02_AXI_RRESP;
  wire [0:0]connect_to_es_cu_M02_AXI_RVALID;
  wire [31:0]connect_to_es_cu_M02_AXI_WDATA;
  wire [0:0]connect_to_es_cu_M02_AXI_WREADY;
  wire [3:0]connect_to_es_cu_M02_AXI_WSTRB;
  wire [0:0]connect_to_es_cu_M02_AXI_WVALID;
  wire [63:0]connect_to_es_cu_M03_AXI_ARADDR;
  wire [0:0]connect_to_es_cu_M03_AXI_ARREADY;
  wire [0:0]connect_to_es_cu_M03_AXI_ARVALID;
  wire [63:0]connect_to_es_cu_M03_AXI_AWADDR;
  wire [0:0]connect_to_es_cu_M03_AXI_AWREADY;
  wire [0:0]connect_to_es_cu_M03_AXI_AWVALID;
  wire [0:0]connect_to_es_cu_M03_AXI_BREADY;
  wire [1:0]connect_to_es_cu_M03_AXI_BRESP;
  wire [0:0]connect_to_es_cu_M03_AXI_BVALID;
  wire [31:0]connect_to_es_cu_M03_AXI_RDATA;
  wire [0:0]connect_to_es_cu_M03_AXI_RREADY;
  wire [1:0]connect_to_es_cu_M03_AXI_RRESP;
  wire [0:0]connect_to_es_cu_M03_AXI_RVALID;
  wire [31:0]connect_to_es_cu_M03_AXI_WDATA;
  wire [0:0]connect_to_es_cu_M03_AXI_WREADY;
  wire [3:0]connect_to_es_cu_M03_AXI_WSTRB;
  wire [0:0]connect_to_es_cu_M03_AXI_WVALID;
  wire dot_prod_1_interrupt;
  wire [63:0]dot_prod_1_m_axi_gmem_ARADDR;
  wire [3:0]dot_prod_1_m_axi_gmem_ARCACHE;
  wire [7:0]dot_prod_1_m_axi_gmem_ARLEN;
  wire [1:0]dot_prod_1_m_axi_gmem_ARLOCK;
  wire [2:0]dot_prod_1_m_axi_gmem_ARPROT;
  wire [3:0]dot_prod_1_m_axi_gmem_ARQOS;
  wire [0:0]dot_prod_1_m_axi_gmem_ARREADY;
  wire [3:0]dot_prod_1_m_axi_gmem_ARREGION;
  wire [2:0]dot_prod_1_m_axi_gmem_ARSIZE;
  wire dot_prod_1_m_axi_gmem_ARVALID;
  wire [63:0]dot_prod_1_m_axi_gmem_AWADDR;
  wire [3:0]dot_prod_1_m_axi_gmem_AWCACHE;
  wire [7:0]dot_prod_1_m_axi_gmem_AWLEN;
  wire [1:0]dot_prod_1_m_axi_gmem_AWLOCK;
  wire [2:0]dot_prod_1_m_axi_gmem_AWPROT;
  wire [3:0]dot_prod_1_m_axi_gmem_AWQOS;
  wire [0:0]dot_prod_1_m_axi_gmem_AWREADY;
  wire [3:0]dot_prod_1_m_axi_gmem_AWREGION;
  wire [2:0]dot_prod_1_m_axi_gmem_AWSIZE;
  wire dot_prod_1_m_axi_gmem_AWVALID;
  wire dot_prod_1_m_axi_gmem_BREADY;
  wire [1:0]dot_prod_1_m_axi_gmem_BRESP;
  wire [0:0]dot_prod_1_m_axi_gmem_BVALID;
  wire [511:0]dot_prod_1_m_axi_gmem_RDATA;
  wire [0:0]dot_prod_1_m_axi_gmem_RLAST;
  wire dot_prod_1_m_axi_gmem_RREADY;
  wire [1:0]dot_prod_1_m_axi_gmem_RRESP;
  wire [0:0]dot_prod_1_m_axi_gmem_RVALID;
  wire [511:0]dot_prod_1_m_axi_gmem_WDATA;
  wire dot_prod_1_m_axi_gmem_WLAST;
  wire [0:0]dot_prod_1_m_axi_gmem_WREADY;
  wire [63:0]dot_prod_1_m_axi_gmem_WSTRB;
  wire dot_prod_1_m_axi_gmem_WVALID;
  wire ext_reset_in_0_1;
  wire [0:0]ext_reset_in_1_1;
  wire ext_reset_in_2_1;
  wire [127:0]irq_cu_1;
  wire [33:0]memory_subsystem_M00_AXI_ARADDR;
  wire [1:0]memory_subsystem_M00_AXI_ARBURST;
  wire [3:0]memory_subsystem_M00_AXI_ARCACHE;
  wire [4:0]memory_subsystem_M00_AXI_ARID;
  wire [7:0]memory_subsystem_M00_AXI_ARLEN;
  wire memory_subsystem_M00_AXI_ARLOCK;
  wire [2:0]memory_subsystem_M00_AXI_ARPROT;
  wire [3:0]memory_subsystem_M00_AXI_ARQOS;
  wire memory_subsystem_M00_AXI_ARREADY;
  wire [2:0]memory_subsystem_M00_AXI_ARSIZE;
  wire [31:0]memory_subsystem_M00_AXI_ARUSER;
  wire [0:0]memory_subsystem_M00_AXI_ARVALID;
  wire [33:0]memory_subsystem_M00_AXI_AWADDR;
  wire [1:0]memory_subsystem_M00_AXI_AWBURST;
  wire [3:0]memory_subsystem_M00_AXI_AWCACHE;
  wire [4:0]memory_subsystem_M00_AXI_AWID;
  wire [7:0]memory_subsystem_M00_AXI_AWLEN;
  wire memory_subsystem_M00_AXI_AWLOCK;
  wire [2:0]memory_subsystem_M00_AXI_AWPROT;
  wire [3:0]memory_subsystem_M00_AXI_AWQOS;
  wire memory_subsystem_M00_AXI_AWREADY;
  wire [2:0]memory_subsystem_M00_AXI_AWSIZE;
  wire [31:0]memory_subsystem_M00_AXI_AWUSER;
  wire [0:0]memory_subsystem_M00_AXI_AWVALID;
  wire [4:0]memory_subsystem_M00_AXI_BID;
  wire [0:0]memory_subsystem_M00_AXI_BREADY;
  wire [1:0]memory_subsystem_M00_AXI_BRESP;
  wire [0:0]memory_subsystem_M00_AXI_BUSER;
  wire memory_subsystem_M00_AXI_BVALID;
  wire [511:0]memory_subsystem_M00_AXI_RDATA;
  wire [4:0]memory_subsystem_M00_AXI_RID;
  wire memory_subsystem_M00_AXI_RLAST;
  wire [0:0]memory_subsystem_M00_AXI_RREADY;
  wire [1:0]memory_subsystem_M00_AXI_RRESP;
  wire [0:0]memory_subsystem_M00_AXI_RUSER;
  wire memory_subsystem_M00_AXI_RVALID;
  wire [511:0]memory_subsystem_M00_AXI_WDATA;
  wire [0:0]memory_subsystem_M00_AXI_WLAST;
  wire memory_subsystem_M00_AXI_WREADY;
  wire [63:0]memory_subsystem_M00_AXI_WSTRB;
  wire [0:0]memory_subsystem_M00_AXI_WUSER;
  wire [0:0]memory_subsystem_M00_AXI_WVALID;
  wire [34:0]memory_subsystem_M01_AXI_ARADDR;
  wire [1:0]memory_subsystem_M01_AXI_ARBURST;
  wire [7:0]memory_subsystem_M01_AXI_ARLEN;
  wire [2:0]memory_subsystem_M01_AXI_ARPROT;
  wire [0:0]memory_subsystem_M01_AXI_ARREADY;
  wire [2:0]memory_subsystem_M01_AXI_ARSIZE;
  wire [0:0]memory_subsystem_M01_AXI_ARVALID;
  wire [34:0]memory_subsystem_M01_AXI_AWADDR;
  wire [1:0]memory_subsystem_M01_AXI_AWBURST;
  wire [7:0]memory_subsystem_M01_AXI_AWLEN;
  wire [2:0]memory_subsystem_M01_AXI_AWPROT;
  wire [0:0]memory_subsystem_M01_AXI_AWREADY;
  wire [2:0]memory_subsystem_M01_AXI_AWSIZE;
  wire [0:0]memory_subsystem_M01_AXI_AWVALID;
  wire [0:0]memory_subsystem_M01_AXI_BREADY;
  wire [1:0]memory_subsystem_M01_AXI_BRESP;
  wire [0:0]memory_subsystem_M01_AXI_BVALID;
  wire [511:0]memory_subsystem_M01_AXI_RDATA;
  wire [0:0]memory_subsystem_M01_AXI_RLAST;
  wire [0:0]memory_subsystem_M01_AXI_RREADY;
  wire [1:0]memory_subsystem_M01_AXI_RRESP;
  wire [0:0]memory_subsystem_M01_AXI_RVALID;
  wire [511:0]memory_subsystem_M01_AXI_WDATA;
  wire [0:0]memory_subsystem_M01_AXI_WLAST;
  wire [0:0]memory_subsystem_M01_AXI_WREADY;
  wire [63:0]memory_subsystem_M01_AXI_WSTRB;
  wire [0:0]memory_subsystem_M01_AXI_WVALID;
  wire [33:0]memory_subsystem_M02_AXI_ARADDR;
  wire [1:0]memory_subsystem_M02_AXI_ARBURST;
  wire [3:0]memory_subsystem_M02_AXI_ARCACHE;
  wire [4:0]memory_subsystem_M02_AXI_ARID;
  wire [7:0]memory_subsystem_M02_AXI_ARLEN;
  wire memory_subsystem_M02_AXI_ARLOCK;
  wire [2:0]memory_subsystem_M02_AXI_ARPROT;
  wire [3:0]memory_subsystem_M02_AXI_ARQOS;
  wire memory_subsystem_M02_AXI_ARREADY;
  wire [2:0]memory_subsystem_M02_AXI_ARSIZE;
  wire [31:0]memory_subsystem_M02_AXI_ARUSER;
  wire [0:0]memory_subsystem_M02_AXI_ARVALID;
  wire [33:0]memory_subsystem_M02_AXI_AWADDR;
  wire [1:0]memory_subsystem_M02_AXI_AWBURST;
  wire [3:0]memory_subsystem_M02_AXI_AWCACHE;
  wire [4:0]memory_subsystem_M02_AXI_AWID;
  wire [7:0]memory_subsystem_M02_AXI_AWLEN;
  wire memory_subsystem_M02_AXI_AWLOCK;
  wire [2:0]memory_subsystem_M02_AXI_AWPROT;
  wire [3:0]memory_subsystem_M02_AXI_AWQOS;
  wire memory_subsystem_M02_AXI_AWREADY;
  wire [2:0]memory_subsystem_M02_AXI_AWSIZE;
  wire [31:0]memory_subsystem_M02_AXI_AWUSER;
  wire [0:0]memory_subsystem_M02_AXI_AWVALID;
  wire [4:0]memory_subsystem_M02_AXI_BID;
  wire [0:0]memory_subsystem_M02_AXI_BREADY;
  wire [1:0]memory_subsystem_M02_AXI_BRESP;
  wire [0:0]memory_subsystem_M02_AXI_BUSER;
  wire memory_subsystem_M02_AXI_BVALID;
  wire [511:0]memory_subsystem_M02_AXI_RDATA;
  wire [4:0]memory_subsystem_M02_AXI_RID;
  wire memory_subsystem_M02_AXI_RLAST;
  wire [0:0]memory_subsystem_M02_AXI_RREADY;
  wire [1:0]memory_subsystem_M02_AXI_RRESP;
  wire [0:0]memory_subsystem_M02_AXI_RUSER;
  wire memory_subsystem_M02_AXI_RVALID;
  wire [511:0]memory_subsystem_M02_AXI_WDATA;
  wire [0:0]memory_subsystem_M02_AXI_WLAST;
  wire memory_subsystem_M02_AXI_WREADY;
  wire [63:0]memory_subsystem_M02_AXI_WSTRB;
  wire [0:0]memory_subsystem_M02_AXI_WUSER;
  wire [0:0]memory_subsystem_M02_AXI_WVALID;
  wire [33:0]memory_subsystem_M03_AXI_ARADDR;
  wire [1:0]memory_subsystem_M03_AXI_ARBURST;
  wire [3:0]memory_subsystem_M03_AXI_ARCACHE;
  wire [4:0]memory_subsystem_M03_AXI_ARID;
  wire [7:0]memory_subsystem_M03_AXI_ARLEN;
  wire memory_subsystem_M03_AXI_ARLOCK;
  wire [2:0]memory_subsystem_M03_AXI_ARPROT;
  wire [3:0]memory_subsystem_M03_AXI_ARQOS;
  wire memory_subsystem_M03_AXI_ARREADY;
  wire [2:0]memory_subsystem_M03_AXI_ARSIZE;
  wire [31:0]memory_subsystem_M03_AXI_ARUSER;
  wire [0:0]memory_subsystem_M03_AXI_ARVALID;
  wire [33:0]memory_subsystem_M03_AXI_AWADDR;
  wire [1:0]memory_subsystem_M03_AXI_AWBURST;
  wire [3:0]memory_subsystem_M03_AXI_AWCACHE;
  wire [4:0]memory_subsystem_M03_AXI_AWID;
  wire [7:0]memory_subsystem_M03_AXI_AWLEN;
  wire memory_subsystem_M03_AXI_AWLOCK;
  wire [2:0]memory_subsystem_M03_AXI_AWPROT;
  wire [3:0]memory_subsystem_M03_AXI_AWQOS;
  wire memory_subsystem_M03_AXI_AWREADY;
  wire [2:0]memory_subsystem_M03_AXI_AWSIZE;
  wire [31:0]memory_subsystem_M03_AXI_AWUSER;
  wire [0:0]memory_subsystem_M03_AXI_AWVALID;
  wire [4:0]memory_subsystem_M03_AXI_BID;
  wire [0:0]memory_subsystem_M03_AXI_BREADY;
  wire [1:0]memory_subsystem_M03_AXI_BRESP;
  wire [0:0]memory_subsystem_M03_AXI_BUSER;
  wire memory_subsystem_M03_AXI_BVALID;
  wire [511:0]memory_subsystem_M03_AXI_RDATA;
  wire [4:0]memory_subsystem_M03_AXI_RID;
  wire memory_subsystem_M03_AXI_RLAST;
  wire [0:0]memory_subsystem_M03_AXI_RREADY;
  wire [1:0]memory_subsystem_M03_AXI_RRESP;
  wire [0:0]memory_subsystem_M03_AXI_RUSER;
  wire memory_subsystem_M03_AXI_RVALID;
  wire [511:0]memory_subsystem_M03_AXI_WDATA;
  wire [0:0]memory_subsystem_M03_AXI_WLAST;
  wire memory_subsystem_M03_AXI_WREADY;
  wire [63:0]memory_subsystem_M03_AXI_WSTRB;
  wire [0:0]memory_subsystem_M03_AXI_WUSER;
  wire [0:0]memory_subsystem_M03_AXI_WVALID;
  wire slowest_sync_clk_0_1;
  wire slowest_sync_clk_1_1;
  wire slowest_sync_clk_2_1;
  wire [5:0]slr1_M01_AXI_ARADDR;
  wire [2:0]slr1_M01_AXI_ARPROT;
  wire slr1_M01_AXI_ARREADY;
  wire slr1_M01_AXI_ARVALID;
  wire [5:0]slr1_M01_AXI_AWADDR;
  wire [2:0]slr1_M01_AXI_AWPROT;
  wire slr1_M01_AXI_AWREADY;
  wire slr1_M01_AXI_AWVALID;
  wire slr1_M01_AXI_BREADY;
  wire [1:0]slr1_M01_AXI_BRESP;
  wire slr1_M01_AXI_BVALID;
  wire [31:0]slr1_M01_AXI_RDATA;
  wire slr1_M01_AXI_RREADY;
  wire [1:0]slr1_M01_AXI_RRESP;
  wire slr1_M01_AXI_RVALID;
  wire [31:0]slr1_M01_AXI_WDATA;
  wire slr1_M01_AXI_WREADY;
  wire [3:0]slr1_M01_AXI_WSTRB;
  wire slr1_M01_AXI_WVALID;
  wire [0:0]slr1_peripheral_aresetn;
  wire [63:0]static_region_data_M_AXI_0_ARADDR;
  wire [1:0]static_region_data_M_AXI_0_ARBURST;
  wire [3:0]static_region_data_M_AXI_0_ARCACHE;
  wire [0:0]static_region_data_M_AXI_0_ARID;
  wire [7:0]static_region_data_M_AXI_0_ARLEN;
  wire static_region_data_M_AXI_0_ARLOCK;
  wire [2:0]static_region_data_M_AXI_0_ARPROT;
  wire [3:0]static_region_data_M_AXI_0_ARQOS;
  wire static_region_data_M_AXI_0_ARREADY;
  wire [3:0]static_region_data_M_AXI_0_ARREGION;
  wire [2:0]static_region_data_M_AXI_0_ARSIZE;
  wire static_region_data_M_AXI_0_ARVALID;
  wire [63:0]static_region_data_M_AXI_0_AWADDR;
  wire [1:0]static_region_data_M_AXI_0_AWBURST;
  wire [3:0]static_region_data_M_AXI_0_AWCACHE;
  wire [0:0]static_region_data_M_AXI_0_AWID;
  wire [7:0]static_region_data_M_AXI_0_AWLEN;
  wire static_region_data_M_AXI_0_AWLOCK;
  wire [2:0]static_region_data_M_AXI_0_AWPROT;
  wire [3:0]static_region_data_M_AXI_0_AWQOS;
  wire static_region_data_M_AXI_0_AWREADY;
  wire [3:0]static_region_data_M_AXI_0_AWREGION;
  wire [2:0]static_region_data_M_AXI_0_AWSIZE;
  wire static_region_data_M_AXI_0_AWVALID;
  wire [0:0]static_region_data_M_AXI_0_BID;
  wire static_region_data_M_AXI_0_BREADY;
  wire [1:0]static_region_data_M_AXI_0_BRESP;
  wire static_region_data_M_AXI_0_BVALID;
  wire [31:0]static_region_data_M_AXI_0_RDATA;
  wire [0:0]static_region_data_M_AXI_0_RID;
  wire static_region_data_M_AXI_0_RLAST;
  wire static_region_data_M_AXI_0_RREADY;
  wire [1:0]static_region_data_M_AXI_0_RRESP;
  wire static_region_data_M_AXI_0_RVALID;
  wire [31:0]static_region_data_M_AXI_0_WDATA;
  wire static_region_data_M_AXI_0_WLAST;
  wire static_region_data_M_AXI_0_WREADY;
  wire [3:0]static_region_data_M_AXI_0_WSTRB;
  wire static_region_data_M_AXI_0_WVALID;
  wire [63:0]static_region_data_M_AXI_1_ARADDR;
  wire [1:0]static_region_data_M_AXI_1_ARBURST;
  wire [3:0]static_region_data_M_AXI_1_ARCACHE;
  wire [0:0]static_region_data_M_AXI_1_ARID;
  wire [7:0]static_region_data_M_AXI_1_ARLEN;
  wire static_region_data_M_AXI_1_ARLOCK;
  wire [2:0]static_region_data_M_AXI_1_ARPROT;
  wire [3:0]static_region_data_M_AXI_1_ARQOS;
  wire static_region_data_M_AXI_1_ARREADY;
  wire [3:0]static_region_data_M_AXI_1_ARREGION;
  wire [2:0]static_region_data_M_AXI_1_ARSIZE;
  wire static_region_data_M_AXI_1_ARVALID;
  wire [63:0]static_region_data_M_AXI_1_AWADDR;
  wire [1:0]static_region_data_M_AXI_1_AWBURST;
  wire [3:0]static_region_data_M_AXI_1_AWCACHE;
  wire [0:0]static_region_data_M_AXI_1_AWID;
  wire [7:0]static_region_data_M_AXI_1_AWLEN;
  wire static_region_data_M_AXI_1_AWLOCK;
  wire [2:0]static_region_data_M_AXI_1_AWPROT;
  wire [3:0]static_region_data_M_AXI_1_AWQOS;
  wire static_region_data_M_AXI_1_AWREADY;
  wire [3:0]static_region_data_M_AXI_1_AWREGION;
  wire [2:0]static_region_data_M_AXI_1_AWSIZE;
  wire static_region_data_M_AXI_1_AWVALID;
  wire [0:0]static_region_data_M_AXI_1_BID;
  wire static_region_data_M_AXI_1_BREADY;
  wire [1:0]static_region_data_M_AXI_1_BRESP;
  wire static_region_data_M_AXI_1_BVALID;
  wire [511:0]static_region_data_M_AXI_1_RDATA;
  wire [0:0]static_region_data_M_AXI_1_RID;
  wire static_region_data_M_AXI_1_RLAST;
  wire static_region_data_M_AXI_1_RREADY;
  wire [1:0]static_region_data_M_AXI_1_RRESP;
  wire static_region_data_M_AXI_1_RVALID;
  wire [511:0]static_region_data_M_AXI_1_WDATA;
  wire static_region_data_M_AXI_1_WLAST;
  wire static_region_data_M_AXI_1_WREADY;
  wire [63:0]static_region_data_M_AXI_1_WSTRB;
  wire static_region_data_M_AXI_1_WVALID;
  wire [63:0]static_region_data_M_AXI_2_ARADDR;
  wire [1:0]static_region_data_M_AXI_2_ARBURST;
  wire [3:0]static_region_data_M_AXI_2_ARCACHE;
  wire [0:0]static_region_data_M_AXI_2_ARID;
  wire [7:0]static_region_data_M_AXI_2_ARLEN;
  wire static_region_data_M_AXI_2_ARLOCK;
  wire [2:0]static_region_data_M_AXI_2_ARPROT;
  wire [3:0]static_region_data_M_AXI_2_ARQOS;
  wire static_region_data_M_AXI_2_ARREADY;
  wire [3:0]static_region_data_M_AXI_2_ARREGION;
  wire [2:0]static_region_data_M_AXI_2_ARSIZE;
  wire static_region_data_M_AXI_2_ARVALID;
  wire [63:0]static_region_data_M_AXI_2_AWADDR;
  wire [1:0]static_region_data_M_AXI_2_AWBURST;
  wire [3:0]static_region_data_M_AXI_2_AWCACHE;
  wire [0:0]static_region_data_M_AXI_2_AWID;
  wire [7:0]static_region_data_M_AXI_2_AWLEN;
  wire static_region_data_M_AXI_2_AWLOCK;
  wire [2:0]static_region_data_M_AXI_2_AWPROT;
  wire [3:0]static_region_data_M_AXI_2_AWQOS;
  wire static_region_data_M_AXI_2_AWREADY;
  wire [3:0]static_region_data_M_AXI_2_AWREGION;
  wire [2:0]static_region_data_M_AXI_2_AWSIZE;
  wire static_region_data_M_AXI_2_AWVALID;
  wire [0:0]static_region_data_M_AXI_2_BID;
  wire static_region_data_M_AXI_2_BREADY;
  wire [1:0]static_region_data_M_AXI_2_BRESP;
  wire static_region_data_M_AXI_2_BVALID;
  wire [511:0]static_region_data_M_AXI_2_RDATA;
  wire [0:0]static_region_data_M_AXI_2_RID;
  wire static_region_data_M_AXI_2_RLAST;
  wire static_region_data_M_AXI_2_RREADY;
  wire [1:0]static_region_data_M_AXI_2_RRESP;
  wire static_region_data_M_AXI_2_RVALID;
  wire [511:0]static_region_data_M_AXI_2_WDATA;
  wire static_region_data_M_AXI_2_WLAST;
  wire static_region_data_M_AXI_2_WREADY;
  wire [63:0]static_region_data_M_AXI_2_WSTRB;
  wire static_region_data_M_AXI_2_WVALID;
  wire [63:0]static_region_data_M_AXI_3_ARADDR;
  wire [1:0]static_region_data_M_AXI_3_ARBURST;
  wire [3:0]static_region_data_M_AXI_3_ARCACHE;
  wire [0:0]static_region_data_M_AXI_3_ARID;
  wire [7:0]static_region_data_M_AXI_3_ARLEN;
  wire static_region_data_M_AXI_3_ARLOCK;
  wire [2:0]static_region_data_M_AXI_3_ARPROT;
  wire [3:0]static_region_data_M_AXI_3_ARQOS;
  wire static_region_data_M_AXI_3_ARREADY;
  wire [3:0]static_region_data_M_AXI_3_ARREGION;
  wire [2:0]static_region_data_M_AXI_3_ARSIZE;
  wire static_region_data_M_AXI_3_ARVALID;
  wire [63:0]static_region_data_M_AXI_3_AWADDR;
  wire [1:0]static_region_data_M_AXI_3_AWBURST;
  wire [3:0]static_region_data_M_AXI_3_AWCACHE;
  wire [0:0]static_region_data_M_AXI_3_AWID;
  wire [7:0]static_region_data_M_AXI_3_AWLEN;
  wire static_region_data_M_AXI_3_AWLOCK;
  wire [2:0]static_region_data_M_AXI_3_AWPROT;
  wire [3:0]static_region_data_M_AXI_3_AWQOS;
  wire static_region_data_M_AXI_3_AWREADY;
  wire [3:0]static_region_data_M_AXI_3_AWREGION;
  wire [2:0]static_region_data_M_AXI_3_AWSIZE;
  wire static_region_data_M_AXI_3_AWVALID;
  wire [0:0]static_region_data_M_AXI_3_BID;
  wire static_region_data_M_AXI_3_BREADY;
  wire [1:0]static_region_data_M_AXI_3_BRESP;
  wire static_region_data_M_AXI_3_BVALID;
  wire [511:0]static_region_data_M_AXI_3_RDATA;
  wire [0:0]static_region_data_M_AXI_3_RID;
  wire static_region_data_M_AXI_3_RLAST;
  wire static_region_data_M_AXI_3_RREADY;
  wire [1:0]static_region_data_M_AXI_3_RRESP;
  wire static_region_data_M_AXI_3_RVALID;
  wire [511:0]static_region_data_M_AXI_3_WDATA;
  wire static_region_data_M_AXI_3_WLAST;
  wire static_region_data_M_AXI_3_WREADY;
  wire [63:0]static_region_data_M_AXI_3_WSTRB;
  wire static_region_data_M_AXI_3_WVALID;
  wire [63:0]static_region_data_M_AXI_4_ARADDR;
  wire [1:0]static_region_data_M_AXI_4_ARBURST;
  wire [3:0]static_region_data_M_AXI_4_ARCACHE;
  wire [0:0]static_region_data_M_AXI_4_ARID;
  wire [7:0]static_region_data_M_AXI_4_ARLEN;
  wire static_region_data_M_AXI_4_ARLOCK;
  wire [2:0]static_region_data_M_AXI_4_ARPROT;
  wire [3:0]static_region_data_M_AXI_4_ARQOS;
  wire static_region_data_M_AXI_4_ARREADY;
  wire [3:0]static_region_data_M_AXI_4_ARREGION;
  wire [2:0]static_region_data_M_AXI_4_ARSIZE;
  wire static_region_data_M_AXI_4_ARVALID;
  wire [63:0]static_region_data_M_AXI_4_AWADDR;
  wire [1:0]static_region_data_M_AXI_4_AWBURST;
  wire [3:0]static_region_data_M_AXI_4_AWCACHE;
  wire [0:0]static_region_data_M_AXI_4_AWID;
  wire [7:0]static_region_data_M_AXI_4_AWLEN;
  wire static_region_data_M_AXI_4_AWLOCK;
  wire [2:0]static_region_data_M_AXI_4_AWPROT;
  wire [3:0]static_region_data_M_AXI_4_AWQOS;
  wire static_region_data_M_AXI_4_AWREADY;
  wire [3:0]static_region_data_M_AXI_4_AWREGION;
  wire [2:0]static_region_data_M_AXI_4_AWSIZE;
  wire static_region_data_M_AXI_4_AWVALID;
  wire [0:0]static_region_data_M_AXI_4_BID;
  wire static_region_data_M_AXI_4_BREADY;
  wire [1:0]static_region_data_M_AXI_4_BRESP;
  wire static_region_data_M_AXI_4_BVALID;
  wire [511:0]static_region_data_M_AXI_4_RDATA;
  wire [0:0]static_region_data_M_AXI_4_RID;
  wire static_region_data_M_AXI_4_RLAST;
  wire static_region_data_M_AXI_4_RREADY;
  wire [1:0]static_region_data_M_AXI_4_RRESP;
  wire static_region_data_M_AXI_4_RVALID;
  wire [511:0]static_region_data_M_AXI_4_WDATA;
  wire static_region_data_M_AXI_4_WLAST;
  wire static_region_data_M_AXI_4_WREADY;
  wire [63:0]static_region_data_M_AXI_4_WSTRB;
  wire static_region_data_M_AXI_4_WVALID;
  wire ui_clk_clk;
  wire ui_clk_sync_rst;
  wire [63:0]user_slr_icn_slave_ARADDR;
  wire [2:0]user_slr_icn_slave_ARPROT;
  wire [0:0]user_slr_icn_slave_ARREADY;
  wire [0:0]user_slr_icn_slave_ARVALID;
  wire [63:0]user_slr_icn_slave_AWADDR;
  wire [2:0]user_slr_icn_slave_AWPROT;
  wire [0:0]user_slr_icn_slave_AWREADY;
  wire [0:0]user_slr_icn_slave_AWVALID;
  wire [0:0]user_slr_icn_slave_BREADY;
  wire [1:0]user_slr_icn_slave_BRESP;
  wire [0:0]user_slr_icn_slave_BVALID;
  wire [31:0]user_slr_icn_slave_RDATA;
  wire [0:0]user_slr_icn_slave_RREADY;
  wire [1:0]user_slr_icn_slave_RRESP;
  wire [0:0]user_slr_icn_slave_RVALID;
  wire [31:0]user_slr_icn_slave_WDATA;
  wire [0:0]user_slr_icn_slave_WREADY;
  wire [3:0]user_slr_icn_slave_WSTRB;
  wire [0:0]user_slr_icn_slave_WVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARLEN;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARQOS;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWLEN;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWQOS;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BID;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BUSER;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RID;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RLAST;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RUSER;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WDATA;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WLAST;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WREADY;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WSTRB;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARLEN;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARQOS;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWLEN;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWQOS;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BID;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BUSER;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RID;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RLAST;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RUSER;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WDATA;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WLAST;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WREADY;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WSTRB;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARLEN;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARQOS;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWLEN;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWQOS;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BID;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BUSER;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RID;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RLAST;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RUSER;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WDATA;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WLAST;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WREADY;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WSTRB;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARLEN;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARQOS;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWLEN;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWQOS;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BID;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BUSER;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RID;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RLAST;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RUSER;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WDATA;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WLAST;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WREADY;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WSTRB;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARLEN;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARQOS;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWLEN;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWQOS;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BID;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RID;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RLAST;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WDATA;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WLAST;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WREADY;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WSTRB;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARLEN;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARQOS;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWLEN;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWQOS;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BID;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RID;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RLAST;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WDATA;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WLAST;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WREADY;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WSTRB;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARLEN;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARQOS;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWLEN;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWQOS;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BID;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RID;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RLAST;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WDATA;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WLAST;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WREADY;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WSTRB;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARLEN;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARQOS;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWLEN;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWQOS;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BID;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RID;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RLAST;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WDATA;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WLAST;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WREADY;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WSTRB;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WVALID;
  wire [31:0]xtlm_simple_intercon_0_M04_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_M04_AXI_ARBURST;
  wire [0:0]xtlm_simple_intercon_0_M04_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_M04_AXI_ARLEN;
  wire xtlm_simple_intercon_0_M04_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_M04_AXI_ARSIZE;
  wire xtlm_simple_intercon_0_M04_AXI_ARVALID;
  wire [31:0]xtlm_simple_intercon_0_M04_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_M04_AXI_AWBURST;
  wire [0:0]xtlm_simple_intercon_0_M04_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_M04_AXI_AWLEN;
  wire xtlm_simple_intercon_0_M04_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_M04_AXI_AWSIZE;
  wire xtlm_simple_intercon_0_M04_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_M04_AXI_BID;
  wire xtlm_simple_intercon_0_M04_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_M04_AXI_BRESP;
  wire xtlm_simple_intercon_0_M04_AXI_BVALID;
  wire [63:0]xtlm_simple_intercon_0_M04_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_M04_AXI_RID;
  wire xtlm_simple_intercon_0_M04_AXI_RLAST;
  wire xtlm_simple_intercon_0_M04_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_M04_AXI_RRESP;
  wire xtlm_simple_intercon_0_M04_AXI_RVALID;
  wire [63:0]xtlm_simple_intercon_0_M04_AXI_WDATA;
  wire xtlm_simple_intercon_0_M04_AXI_WLAST;
  wire xtlm_simple_intercon_0_M04_AXI_WREADY;
  wire [7:0]xtlm_simple_intercon_0_M04_AXI_WSTRB;
  wire xtlm_simple_intercon_0_M04_AXI_WVALID;

  assign C0_DDR_MAXI_0_araddr[34:0] = memory_subsystem_M01_AXI_ARADDR;
  assign C0_DDR_MAXI_0_arburst[1:0] = memory_subsystem_M01_AXI_ARBURST;
  assign C0_DDR_MAXI_0_arlen[7:0] = memory_subsystem_M01_AXI_ARLEN;
  assign C0_DDR_MAXI_0_arprot[2:0] = memory_subsystem_M01_AXI_ARPROT;
  assign C0_DDR_MAXI_0_arsize[2:0] = memory_subsystem_M01_AXI_ARSIZE;
  assign C0_DDR_MAXI_0_arvalid[0] = memory_subsystem_M01_AXI_ARVALID;
  assign C0_DDR_MAXI_0_awaddr[34:0] = memory_subsystem_M01_AXI_AWADDR;
  assign C0_DDR_MAXI_0_awburst[1:0] = memory_subsystem_M01_AXI_AWBURST;
  assign C0_DDR_MAXI_0_awlen[7:0] = memory_subsystem_M01_AXI_AWLEN;
  assign C0_DDR_MAXI_0_awprot[2:0] = memory_subsystem_M01_AXI_AWPROT;
  assign C0_DDR_MAXI_0_awsize[2:0] = memory_subsystem_M01_AXI_AWSIZE;
  assign C0_DDR_MAXI_0_awvalid[0] = memory_subsystem_M01_AXI_AWVALID;
  assign C0_DDR_MAXI_0_bready[0] = memory_subsystem_M01_AXI_BREADY;
  assign C0_DDR_MAXI_0_rready[0] = memory_subsystem_M01_AXI_RREADY;
  assign C0_DDR_MAXI_0_wdata[511:0] = memory_subsystem_M01_AXI_WDATA;
  assign C0_DDR_MAXI_0_wlast[0] = memory_subsystem_M01_AXI_WLAST;
  assign C0_DDR_MAXI_0_wstrb[63:0] = memory_subsystem_M01_AXI_WSTRB;
  assign C0_DDR_MAXI_0_wvalid[0] = memory_subsystem_M01_AXI_WVALID;
  assign data_M_AXI_0_arready = static_region_data_M_AXI_0_ARREADY;
  assign data_M_AXI_0_awready = static_region_data_M_AXI_0_AWREADY;
  assign data_M_AXI_0_bid[0] = static_region_data_M_AXI_0_BID;
  assign data_M_AXI_0_bresp[1:0] = static_region_data_M_AXI_0_BRESP;
  assign data_M_AXI_0_bvalid = static_region_data_M_AXI_0_BVALID;
  assign data_M_AXI_0_rdata[31:0] = static_region_data_M_AXI_0_RDATA;
  assign data_M_AXI_0_rid[0] = static_region_data_M_AXI_0_RID;
  assign data_M_AXI_0_rlast = static_region_data_M_AXI_0_RLAST;
  assign data_M_AXI_0_rresp[1:0] = static_region_data_M_AXI_0_RRESP;
  assign data_M_AXI_0_rvalid = static_region_data_M_AXI_0_RVALID;
  assign data_M_AXI_0_wready = static_region_data_M_AXI_0_WREADY;
  assign data_M_AXI_1_arready = static_region_data_M_AXI_1_ARREADY;
  assign data_M_AXI_1_awready = static_region_data_M_AXI_1_AWREADY;
  assign data_M_AXI_1_bid[0] = static_region_data_M_AXI_1_BID;
  assign data_M_AXI_1_bresp[1:0] = static_region_data_M_AXI_1_BRESP;
  assign data_M_AXI_1_bvalid = static_region_data_M_AXI_1_BVALID;
  assign data_M_AXI_1_rdata[511:0] = static_region_data_M_AXI_1_RDATA;
  assign data_M_AXI_1_rid[0] = static_region_data_M_AXI_1_RID;
  assign data_M_AXI_1_rlast = static_region_data_M_AXI_1_RLAST;
  assign data_M_AXI_1_rresp[1:0] = static_region_data_M_AXI_1_RRESP;
  assign data_M_AXI_1_rvalid = static_region_data_M_AXI_1_RVALID;
  assign data_M_AXI_1_wready = static_region_data_M_AXI_1_WREADY;
  assign data_M_AXI_2_arready = static_region_data_M_AXI_2_ARREADY;
  assign data_M_AXI_2_awready = static_region_data_M_AXI_2_AWREADY;
  assign data_M_AXI_2_bid[0] = static_region_data_M_AXI_2_BID;
  assign data_M_AXI_2_bresp[1:0] = static_region_data_M_AXI_2_BRESP;
  assign data_M_AXI_2_bvalid = static_region_data_M_AXI_2_BVALID;
  assign data_M_AXI_2_rdata[511:0] = static_region_data_M_AXI_2_RDATA;
  assign data_M_AXI_2_rid[0] = static_region_data_M_AXI_2_RID;
  assign data_M_AXI_2_rlast = static_region_data_M_AXI_2_RLAST;
  assign data_M_AXI_2_rresp[1:0] = static_region_data_M_AXI_2_RRESP;
  assign data_M_AXI_2_rvalid = static_region_data_M_AXI_2_RVALID;
  assign data_M_AXI_2_wready = static_region_data_M_AXI_2_WREADY;
  assign data_M_AXI_3_arready = static_region_data_M_AXI_3_ARREADY;
  assign data_M_AXI_3_awready = static_region_data_M_AXI_3_AWREADY;
  assign data_M_AXI_3_bid[0] = static_region_data_M_AXI_3_BID;
  assign data_M_AXI_3_bresp[1:0] = static_region_data_M_AXI_3_BRESP;
  assign data_M_AXI_3_bvalid = static_region_data_M_AXI_3_BVALID;
  assign data_M_AXI_3_rdata[511:0] = static_region_data_M_AXI_3_RDATA;
  assign data_M_AXI_3_rid[0] = static_region_data_M_AXI_3_RID;
  assign data_M_AXI_3_rlast = static_region_data_M_AXI_3_RLAST;
  assign data_M_AXI_3_rresp[1:0] = static_region_data_M_AXI_3_RRESP;
  assign data_M_AXI_3_rvalid = static_region_data_M_AXI_3_RVALID;
  assign data_M_AXI_3_wready = static_region_data_M_AXI_3_WREADY;
  assign data_M_AXI_4_arready = static_region_data_M_AXI_4_ARREADY;
  assign data_M_AXI_4_awready = static_region_data_M_AXI_4_AWREADY;
  assign data_M_AXI_4_bid[0] = static_region_data_M_AXI_4_BID;
  assign data_M_AXI_4_bresp[1:0] = static_region_data_M_AXI_4_BRESP;
  assign data_M_AXI_4_bvalid = static_region_data_M_AXI_4_BVALID;
  assign data_M_AXI_4_rdata[511:0] = static_region_data_M_AXI_4_RDATA;
  assign data_M_AXI_4_rid[0] = static_region_data_M_AXI_4_RID;
  assign data_M_AXI_4_rlast = static_region_data_M_AXI_4_RLAST;
  assign data_M_AXI_4_rresp[1:0] = static_region_data_M_AXI_4_RRESP;
  assign data_M_AXI_4_rvalid = static_region_data_M_AXI_4_RVALID;
  assign data_M_AXI_4_wready = static_region_data_M_AXI_4_WREADY;
  assign ext_reset_in_1_1 = dma_pcie_arst[0];
  assign irq_cu[127:0] = irq_cu_1;
  assign memory_subsystem_M01_AXI_ARREADY = C0_DDR_MAXI_0_arready[0];
  assign memory_subsystem_M01_AXI_AWREADY = C0_DDR_MAXI_0_awready[0];
  assign memory_subsystem_M01_AXI_BRESP = C0_DDR_MAXI_0_bresp[1:0];
  assign memory_subsystem_M01_AXI_BVALID = C0_DDR_MAXI_0_bvalid[0];
  assign memory_subsystem_M01_AXI_RDATA = C0_DDR_MAXI_0_rdata[511:0];
  assign memory_subsystem_M01_AXI_RLAST = C0_DDR_MAXI_0_rlast[0];
  assign memory_subsystem_M01_AXI_RRESP = C0_DDR_MAXI_0_rresp[1:0];
  assign memory_subsystem_M01_AXI_RVALID = C0_DDR_MAXI_0_rvalid[0];
  assign memory_subsystem_M01_AXI_WREADY = C0_DDR_MAXI_0_wready[0];
  assign slowest_sync_clk_1_1 = dma_pcie_aclk;
  assign static_region_data_M_AXI_0_ARADDR = data_M_AXI_0_araddr[63:0];
  assign static_region_data_M_AXI_0_ARBURST = data_M_AXI_0_arburst[1:0];
  assign static_region_data_M_AXI_0_ARCACHE = data_M_AXI_0_arcache[3:0];
  assign static_region_data_M_AXI_0_ARID = data_M_AXI_0_arid[0];
  assign static_region_data_M_AXI_0_ARLEN = data_M_AXI_0_arlen[7:0];
  assign static_region_data_M_AXI_0_ARLOCK = data_M_AXI_0_arlock;
  assign static_region_data_M_AXI_0_ARPROT = data_M_AXI_0_arprot[2:0];
  assign static_region_data_M_AXI_0_ARQOS = data_M_AXI_0_arqos[3:0];
  assign static_region_data_M_AXI_0_ARREGION = data_M_AXI_0_arregion[3:0];
  assign static_region_data_M_AXI_0_ARSIZE = data_M_AXI_0_arsize[2:0];
  assign static_region_data_M_AXI_0_ARVALID = data_M_AXI_0_arvalid;
  assign static_region_data_M_AXI_0_AWADDR = data_M_AXI_0_awaddr[63:0];
  assign static_region_data_M_AXI_0_AWBURST = data_M_AXI_0_awburst[1:0];
  assign static_region_data_M_AXI_0_AWCACHE = data_M_AXI_0_awcache[3:0];
  assign static_region_data_M_AXI_0_AWID = data_M_AXI_0_awid[0];
  assign static_region_data_M_AXI_0_AWLEN = data_M_AXI_0_awlen[7:0];
  assign static_region_data_M_AXI_0_AWLOCK = data_M_AXI_0_awlock;
  assign static_region_data_M_AXI_0_AWPROT = data_M_AXI_0_awprot[2:0];
  assign static_region_data_M_AXI_0_AWQOS = data_M_AXI_0_awqos[3:0];
  assign static_region_data_M_AXI_0_AWREGION = data_M_AXI_0_awregion[3:0];
  assign static_region_data_M_AXI_0_AWSIZE = data_M_AXI_0_awsize[2:0];
  assign static_region_data_M_AXI_0_AWVALID = data_M_AXI_0_awvalid;
  assign static_region_data_M_AXI_0_BREADY = data_M_AXI_0_bready;
  assign static_region_data_M_AXI_0_RREADY = data_M_AXI_0_rready;
  assign static_region_data_M_AXI_0_WDATA = data_M_AXI_0_wdata[31:0];
  assign static_region_data_M_AXI_0_WLAST = data_M_AXI_0_wlast;
  assign static_region_data_M_AXI_0_WSTRB = data_M_AXI_0_wstrb[3:0];
  assign static_region_data_M_AXI_0_WVALID = data_M_AXI_0_wvalid;
  assign static_region_data_M_AXI_1_ARADDR = data_M_AXI_1_araddr[63:0];
  assign static_region_data_M_AXI_1_ARBURST = data_M_AXI_1_arburst[1:0];
  assign static_region_data_M_AXI_1_ARCACHE = data_M_AXI_1_arcache[3:0];
  assign static_region_data_M_AXI_1_ARID = data_M_AXI_1_arid[0];
  assign static_region_data_M_AXI_1_ARLEN = data_M_AXI_1_arlen[7:0];
  assign static_region_data_M_AXI_1_ARLOCK = data_M_AXI_1_arlock;
  assign static_region_data_M_AXI_1_ARPROT = data_M_AXI_1_arprot[2:0];
  assign static_region_data_M_AXI_1_ARQOS = data_M_AXI_1_arqos[3:0];
  assign static_region_data_M_AXI_1_ARREGION = data_M_AXI_1_arregion[3:0];
  assign static_region_data_M_AXI_1_ARSIZE = data_M_AXI_1_arsize[2:0];
  assign static_region_data_M_AXI_1_ARVALID = data_M_AXI_1_arvalid;
  assign static_region_data_M_AXI_1_AWADDR = data_M_AXI_1_awaddr[63:0];
  assign static_region_data_M_AXI_1_AWBURST = data_M_AXI_1_awburst[1:0];
  assign static_region_data_M_AXI_1_AWCACHE = data_M_AXI_1_awcache[3:0];
  assign static_region_data_M_AXI_1_AWID = data_M_AXI_1_awid[0];
  assign static_region_data_M_AXI_1_AWLEN = data_M_AXI_1_awlen[7:0];
  assign static_region_data_M_AXI_1_AWLOCK = data_M_AXI_1_awlock;
  assign static_region_data_M_AXI_1_AWPROT = data_M_AXI_1_awprot[2:0];
  assign static_region_data_M_AXI_1_AWQOS = data_M_AXI_1_awqos[3:0];
  assign static_region_data_M_AXI_1_AWREGION = data_M_AXI_1_awregion[3:0];
  assign static_region_data_M_AXI_1_AWSIZE = data_M_AXI_1_awsize[2:0];
  assign static_region_data_M_AXI_1_AWVALID = data_M_AXI_1_awvalid;
  assign static_region_data_M_AXI_1_BREADY = data_M_AXI_1_bready;
  assign static_region_data_M_AXI_1_RREADY = data_M_AXI_1_rready;
  assign static_region_data_M_AXI_1_WDATA = data_M_AXI_1_wdata[511:0];
  assign static_region_data_M_AXI_1_WLAST = data_M_AXI_1_wlast;
  assign static_region_data_M_AXI_1_WSTRB = data_M_AXI_1_wstrb[63:0];
  assign static_region_data_M_AXI_1_WVALID = data_M_AXI_1_wvalid;
  assign static_region_data_M_AXI_2_ARADDR = data_M_AXI_2_araddr[63:0];
  assign static_region_data_M_AXI_2_ARBURST = data_M_AXI_2_arburst[1:0];
  assign static_region_data_M_AXI_2_ARCACHE = data_M_AXI_2_arcache[3:0];
  assign static_region_data_M_AXI_2_ARID = data_M_AXI_2_arid[0];
  assign static_region_data_M_AXI_2_ARLEN = data_M_AXI_2_arlen[7:0];
  assign static_region_data_M_AXI_2_ARLOCK = data_M_AXI_2_arlock;
  assign static_region_data_M_AXI_2_ARPROT = data_M_AXI_2_arprot[2:0];
  assign static_region_data_M_AXI_2_ARQOS = data_M_AXI_2_arqos[3:0];
  assign static_region_data_M_AXI_2_ARREGION = data_M_AXI_2_arregion[3:0];
  assign static_region_data_M_AXI_2_ARSIZE = data_M_AXI_2_arsize[2:0];
  assign static_region_data_M_AXI_2_ARVALID = data_M_AXI_2_arvalid;
  assign static_region_data_M_AXI_2_AWADDR = data_M_AXI_2_awaddr[63:0];
  assign static_region_data_M_AXI_2_AWBURST = data_M_AXI_2_awburst[1:0];
  assign static_region_data_M_AXI_2_AWCACHE = data_M_AXI_2_awcache[3:0];
  assign static_region_data_M_AXI_2_AWID = data_M_AXI_2_awid[0];
  assign static_region_data_M_AXI_2_AWLEN = data_M_AXI_2_awlen[7:0];
  assign static_region_data_M_AXI_2_AWLOCK = data_M_AXI_2_awlock;
  assign static_region_data_M_AXI_2_AWPROT = data_M_AXI_2_awprot[2:0];
  assign static_region_data_M_AXI_2_AWQOS = data_M_AXI_2_awqos[3:0];
  assign static_region_data_M_AXI_2_AWREGION = data_M_AXI_2_awregion[3:0];
  assign static_region_data_M_AXI_2_AWSIZE = data_M_AXI_2_awsize[2:0];
  assign static_region_data_M_AXI_2_AWVALID = data_M_AXI_2_awvalid;
  assign static_region_data_M_AXI_2_BREADY = data_M_AXI_2_bready;
  assign static_region_data_M_AXI_2_RREADY = data_M_AXI_2_rready;
  assign static_region_data_M_AXI_2_WDATA = data_M_AXI_2_wdata[511:0];
  assign static_region_data_M_AXI_2_WLAST = data_M_AXI_2_wlast;
  assign static_region_data_M_AXI_2_WSTRB = data_M_AXI_2_wstrb[63:0];
  assign static_region_data_M_AXI_2_WVALID = data_M_AXI_2_wvalid;
  assign static_region_data_M_AXI_3_ARADDR = data_M_AXI_3_araddr[63:0];
  assign static_region_data_M_AXI_3_ARBURST = data_M_AXI_3_arburst[1:0];
  assign static_region_data_M_AXI_3_ARCACHE = data_M_AXI_3_arcache[3:0];
  assign static_region_data_M_AXI_3_ARID = data_M_AXI_3_arid[0];
  assign static_region_data_M_AXI_3_ARLEN = data_M_AXI_3_arlen[7:0];
  assign static_region_data_M_AXI_3_ARLOCK = data_M_AXI_3_arlock;
  assign static_region_data_M_AXI_3_ARPROT = data_M_AXI_3_arprot[2:0];
  assign static_region_data_M_AXI_3_ARQOS = data_M_AXI_3_arqos[3:0];
  assign static_region_data_M_AXI_3_ARREGION = data_M_AXI_3_arregion[3:0];
  assign static_region_data_M_AXI_3_ARSIZE = data_M_AXI_3_arsize[2:0];
  assign static_region_data_M_AXI_3_ARVALID = data_M_AXI_3_arvalid;
  assign static_region_data_M_AXI_3_AWADDR = data_M_AXI_3_awaddr[63:0];
  assign static_region_data_M_AXI_3_AWBURST = data_M_AXI_3_awburst[1:0];
  assign static_region_data_M_AXI_3_AWCACHE = data_M_AXI_3_awcache[3:0];
  assign static_region_data_M_AXI_3_AWID = data_M_AXI_3_awid[0];
  assign static_region_data_M_AXI_3_AWLEN = data_M_AXI_3_awlen[7:0];
  assign static_region_data_M_AXI_3_AWLOCK = data_M_AXI_3_awlock;
  assign static_region_data_M_AXI_3_AWPROT = data_M_AXI_3_awprot[2:0];
  assign static_region_data_M_AXI_3_AWQOS = data_M_AXI_3_awqos[3:0];
  assign static_region_data_M_AXI_3_AWREGION = data_M_AXI_3_awregion[3:0];
  assign static_region_data_M_AXI_3_AWSIZE = data_M_AXI_3_awsize[2:0];
  assign static_region_data_M_AXI_3_AWVALID = data_M_AXI_3_awvalid;
  assign static_region_data_M_AXI_3_BREADY = data_M_AXI_3_bready;
  assign static_region_data_M_AXI_3_RREADY = data_M_AXI_3_rready;
  assign static_region_data_M_AXI_3_WDATA = data_M_AXI_3_wdata[511:0];
  assign static_region_data_M_AXI_3_WLAST = data_M_AXI_3_wlast;
  assign static_region_data_M_AXI_3_WSTRB = data_M_AXI_3_wstrb[63:0];
  assign static_region_data_M_AXI_3_WVALID = data_M_AXI_3_wvalid;
  assign static_region_data_M_AXI_4_ARADDR = data_M_AXI_4_araddr[63:0];
  assign static_region_data_M_AXI_4_ARBURST = data_M_AXI_4_arburst[1:0];
  assign static_region_data_M_AXI_4_ARCACHE = data_M_AXI_4_arcache[3:0];
  assign static_region_data_M_AXI_4_ARID = data_M_AXI_4_arid[0];
  assign static_region_data_M_AXI_4_ARLEN = data_M_AXI_4_arlen[7:0];
  assign static_region_data_M_AXI_4_ARLOCK = data_M_AXI_4_arlock;
  assign static_region_data_M_AXI_4_ARPROT = data_M_AXI_4_arprot[2:0];
  assign static_region_data_M_AXI_4_ARQOS = data_M_AXI_4_arqos[3:0];
  assign static_region_data_M_AXI_4_ARREGION = data_M_AXI_4_arregion[3:0];
  assign static_region_data_M_AXI_4_ARSIZE = data_M_AXI_4_arsize[2:0];
  assign static_region_data_M_AXI_4_ARVALID = data_M_AXI_4_arvalid;
  assign static_region_data_M_AXI_4_AWADDR = data_M_AXI_4_awaddr[63:0];
  assign static_region_data_M_AXI_4_AWBURST = data_M_AXI_4_awburst[1:0];
  assign static_region_data_M_AXI_4_AWCACHE = data_M_AXI_4_awcache[3:0];
  assign static_region_data_M_AXI_4_AWID = data_M_AXI_4_awid[0];
  assign static_region_data_M_AXI_4_AWLEN = data_M_AXI_4_awlen[7:0];
  assign static_region_data_M_AXI_4_AWLOCK = data_M_AXI_4_awlock;
  assign static_region_data_M_AXI_4_AWPROT = data_M_AXI_4_awprot[2:0];
  assign static_region_data_M_AXI_4_AWQOS = data_M_AXI_4_awqos[3:0];
  assign static_region_data_M_AXI_4_AWREGION = data_M_AXI_4_awregion[3:0];
  assign static_region_data_M_AXI_4_AWSIZE = data_M_AXI_4_awsize[2:0];
  assign static_region_data_M_AXI_4_AWVALID = data_M_AXI_4_awvalid;
  assign static_region_data_M_AXI_4_BREADY = data_M_AXI_4_bready;
  assign static_region_data_M_AXI_4_RREADY = data_M_AXI_4_rready;
  assign static_region_data_M_AXI_4_WDATA = data_M_AXI_4_wdata[511:0];
  assign static_region_data_M_AXI_4_WLAST = data_M_AXI_4_wlast;
  assign static_region_data_M_AXI_4_WSTRB = data_M_AXI_4_wstrb[63:0];
  assign static_region_data_M_AXI_4_WVALID = data_M_AXI_4_wvalid;
  assign ui_clk_clk = ddr_default_clk_0;
  assign ui_clk_sync_rst = ddr_default_rst_0;
  assign user_slr_icn_slave_ARADDR = userpf_control_M_AXI_araddr[63:0];
  assign user_slr_icn_slave_ARPROT = userpf_control_M_AXI_arprot[2:0];
  assign user_slr_icn_slave_ARVALID = userpf_control_M_AXI_arvalid[0];
  assign user_slr_icn_slave_AWADDR = userpf_control_M_AXI_awaddr[63:0];
  assign user_slr_icn_slave_AWPROT = userpf_control_M_AXI_awprot[2:0];
  assign user_slr_icn_slave_AWVALID = userpf_control_M_AXI_awvalid[0];
  assign user_slr_icn_slave_BREADY = userpf_control_M_AXI_bready[0];
  assign user_slr_icn_slave_RREADY = userpf_control_M_AXI_rready[0];
  assign user_slr_icn_slave_WDATA = userpf_control_M_AXI_wdata[31:0];
  assign user_slr_icn_slave_WSTRB = userpf_control_M_AXI_wstrb[3:0];
  assign user_slr_icn_slave_WVALID = userpf_control_M_AXI_wvalid[0];
  assign userpf_control_M_AXI_arready[0] = user_slr_icn_slave_ARREADY;
  assign userpf_control_M_AXI_awready[0] = user_slr_icn_slave_AWREADY;
  assign userpf_control_M_AXI_bresp[1:0] = user_slr_icn_slave_BRESP;
  assign userpf_control_M_AXI_bvalid[0] = user_slr_icn_slave_BVALID;
  assign userpf_control_M_AXI_rdata[31:0] = user_slr_icn_slave_RDATA;
  assign userpf_control_M_AXI_rresp[1:0] = user_slr_icn_slave_RRESP;
  assign userpf_control_M_AXI_rvalid[0] = user_slr_icn_slave_RVALID;
  assign userpf_control_M_AXI_wready[0] = user_slr_icn_slave_WREADY;
  System_DPA_imp_NCWU00 System_DPA
       (.MON_M_AXI_araddr(dot_prod_1_m_axi_gmem_ARADDR),
        .MON_M_AXI_arcache(dot_prod_1_m_axi_gmem_ARCACHE),
        .MON_M_AXI_arlen(dot_prod_1_m_axi_gmem_ARLEN),
        .MON_M_AXI_arlock(dot_prod_1_m_axi_gmem_ARLOCK),
        .MON_M_AXI_arprot(dot_prod_1_m_axi_gmem_ARPROT),
        .MON_M_AXI_arqos(dot_prod_1_m_axi_gmem_ARQOS),
        .MON_M_AXI_arready(dot_prod_1_m_axi_gmem_ARREADY),
        .MON_M_AXI_arregion(dot_prod_1_m_axi_gmem_ARREGION),
        .MON_M_AXI_arsize(dot_prod_1_m_axi_gmem_ARSIZE),
        .MON_M_AXI_arvalid(dot_prod_1_m_axi_gmem_ARVALID),
        .MON_M_AXI_awaddr(dot_prod_1_m_axi_gmem_AWADDR),
        .MON_M_AXI_awcache(dot_prod_1_m_axi_gmem_AWCACHE),
        .MON_M_AXI_awlen(dot_prod_1_m_axi_gmem_AWLEN),
        .MON_M_AXI_awlock(dot_prod_1_m_axi_gmem_AWLOCK),
        .MON_M_AXI_awprot(dot_prod_1_m_axi_gmem_AWPROT),
        .MON_M_AXI_awqos(dot_prod_1_m_axi_gmem_AWQOS),
        .MON_M_AXI_awready(dot_prod_1_m_axi_gmem_AWREADY),
        .MON_M_AXI_awregion(dot_prod_1_m_axi_gmem_AWREGION),
        .MON_M_AXI_awsize(dot_prod_1_m_axi_gmem_AWSIZE),
        .MON_M_AXI_awvalid(dot_prod_1_m_axi_gmem_AWVALID),
        .MON_M_AXI_bid(1'b0),
        .MON_M_AXI_bready(dot_prod_1_m_axi_gmem_BREADY),
        .MON_M_AXI_bresp(dot_prod_1_m_axi_gmem_BRESP),
        .MON_M_AXI_bvalid(dot_prod_1_m_axi_gmem_BVALID),
        .MON_M_AXI_rdata(dot_prod_1_m_axi_gmem_RDATA),
        .MON_M_AXI_rid(1'b0),
        .MON_M_AXI_rlast(dot_prod_1_m_axi_gmem_RLAST),
        .MON_M_AXI_rready(dot_prod_1_m_axi_gmem_RREADY),
        .MON_M_AXI_rresp(dot_prod_1_m_axi_gmem_RRESP),
        .MON_M_AXI_rvalid(dot_prod_1_m_axi_gmem_RVALID),
        .MON_M_AXI_wdata(dot_prod_1_m_axi_gmem_WDATA),
        .MON_M_AXI_wlast(dot_prod_1_m_axi_gmem_WLAST),
        .MON_M_AXI_wready(dot_prod_1_m_axi_gmem_WREADY),
        .MON_M_AXI_wstrb(dot_prod_1_m_axi_gmem_WSTRB),
        .MON_M_AXI_wvalid(dot_prod_1_m_axi_gmem_WVALID),
        .MON_S_AXI_araddr(slr1_M01_AXI_ARADDR),
        .MON_S_AXI_arprot(slr1_M01_AXI_ARPROT),
        .MON_S_AXI_arready(slr1_M01_AXI_ARREADY),
        .MON_S_AXI_arvalid(slr1_M01_AXI_ARVALID),
        .MON_S_AXI_awaddr(slr1_M01_AXI_AWADDR),
        .MON_S_AXI_awprot(slr1_M01_AXI_AWPROT),
        .MON_S_AXI_awready(slr1_M01_AXI_AWREADY),
        .MON_S_AXI_awvalid(slr1_M01_AXI_AWVALID),
        .MON_S_AXI_bready(slr1_M01_AXI_BREADY),
        .MON_S_AXI_bresp(slr1_M01_AXI_BRESP),
        .MON_S_AXI_bvalid(slr1_M01_AXI_BVALID),
        .MON_S_AXI_rdata(slr1_M01_AXI_RDATA),
        .MON_S_AXI_rready(slr1_M01_AXI_RREADY),
        .MON_S_AXI_rresp(slr1_M01_AXI_RRESP),
        .MON_S_AXI_rvalid(slr1_M01_AXI_RVALID),
        .MON_S_AXI_wdata(slr1_M01_AXI_WDATA),
        .MON_S_AXI_wready(slr1_M01_AXI_WREADY),
        .MON_S_AXI_wstrb(slr1_M01_AXI_WSTRB),
        .MON_S_AXI_wvalid(slr1_M01_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .S_AXIMM_araddr(xtlm_simple_intercon_0_M04_AXI_ARADDR),
        .S_AXIMM_arburst(xtlm_simple_intercon_0_M04_AXI_ARBURST),
        .S_AXIMM_arid(xtlm_simple_intercon_0_M04_AXI_ARID),
        .S_AXIMM_arlen(xtlm_simple_intercon_0_M04_AXI_ARLEN),
        .S_AXIMM_arready(xtlm_simple_intercon_0_M04_AXI_ARREADY),
        .S_AXIMM_arsize(xtlm_simple_intercon_0_M04_AXI_ARSIZE),
        .S_AXIMM_arvalid(xtlm_simple_intercon_0_M04_AXI_ARVALID),
        .S_AXIMM_awaddr(xtlm_simple_intercon_0_M04_AXI_AWADDR),
        .S_AXIMM_awburst(xtlm_simple_intercon_0_M04_AXI_AWBURST),
        .S_AXIMM_awid(xtlm_simple_intercon_0_M04_AXI_AWID),
        .S_AXIMM_awlen(xtlm_simple_intercon_0_M04_AXI_AWLEN),
        .S_AXIMM_awready(xtlm_simple_intercon_0_M04_AXI_AWREADY),
        .S_AXIMM_awsize(xtlm_simple_intercon_0_M04_AXI_AWSIZE),
        .S_AXIMM_awvalid(xtlm_simple_intercon_0_M04_AXI_AWVALID),
        .S_AXIMM_bid(xtlm_simple_intercon_0_M04_AXI_BID),
        .S_AXIMM_bready(xtlm_simple_intercon_0_M04_AXI_BREADY),
        .S_AXIMM_bresp(xtlm_simple_intercon_0_M04_AXI_BRESP),
        .S_AXIMM_bvalid(xtlm_simple_intercon_0_M04_AXI_BVALID),
        .S_AXIMM_rdata(xtlm_simple_intercon_0_M04_AXI_RDATA),
        .S_AXIMM_rid(xtlm_simple_intercon_0_M04_AXI_RID),
        .S_AXIMM_rlast(xtlm_simple_intercon_0_M04_AXI_RLAST),
        .S_AXIMM_rready(xtlm_simple_intercon_0_M04_AXI_RREADY),
        .S_AXIMM_rresp(xtlm_simple_intercon_0_M04_AXI_RRESP),
        .S_AXIMM_rvalid(xtlm_simple_intercon_0_M04_AXI_RVALID),
        .S_AXIMM_wdata(xtlm_simple_intercon_0_M04_AXI_WDATA),
        .S_AXIMM_wlast(xtlm_simple_intercon_0_M04_AXI_WLAST),
        .S_AXIMM_wready(xtlm_simple_intercon_0_M04_AXI_WREADY),
        .S_AXIMM_wstrb(xtlm_simple_intercon_0_M04_AXI_WSTRB),
        .S_AXIMM_wvalid(xtlm_simple_intercon_0_M04_AXI_WVALID),
        .dma_pcie_aclk(slowest_sync_clk_1_1),
        .dma_pcie_arst(ext_reset_in_1_1),
        .mon_clk(slowest_sync_clk_0_1),
        .mon_resetn(slr1_peripheral_aresetn));
  pfm_dynamic_dot_prod_1_0 dot_prod_1
       (.ap_clk(slowest_sync_clk_0_1),
        .ap_rst_n(slr1_peripheral_aresetn),
        .interrupt(dot_prod_1_interrupt),
        .m_axi_gmem_ARADDR(dot_prod_1_m_axi_gmem_ARADDR),
        .m_axi_gmem_ARCACHE(dot_prod_1_m_axi_gmem_ARCACHE),
        .m_axi_gmem_ARLEN(dot_prod_1_m_axi_gmem_ARLEN),
        .m_axi_gmem_ARLOCK(dot_prod_1_m_axi_gmem_ARLOCK),
        .m_axi_gmem_ARPROT(dot_prod_1_m_axi_gmem_ARPROT),
        .m_axi_gmem_ARQOS(dot_prod_1_m_axi_gmem_ARQOS),
        .m_axi_gmem_ARREADY(dot_prod_1_m_axi_gmem_ARREADY),
        .m_axi_gmem_ARREGION(dot_prod_1_m_axi_gmem_ARREGION),
        .m_axi_gmem_ARSIZE(dot_prod_1_m_axi_gmem_ARSIZE),
        .m_axi_gmem_ARVALID(dot_prod_1_m_axi_gmem_ARVALID),
        .m_axi_gmem_AWADDR(dot_prod_1_m_axi_gmem_AWADDR),
        .m_axi_gmem_AWCACHE(dot_prod_1_m_axi_gmem_AWCACHE),
        .m_axi_gmem_AWLEN(dot_prod_1_m_axi_gmem_AWLEN),
        .m_axi_gmem_AWLOCK(dot_prod_1_m_axi_gmem_AWLOCK),
        .m_axi_gmem_AWPROT(dot_prod_1_m_axi_gmem_AWPROT),
        .m_axi_gmem_AWQOS(dot_prod_1_m_axi_gmem_AWQOS),
        .m_axi_gmem_AWREADY(dot_prod_1_m_axi_gmem_AWREADY),
        .m_axi_gmem_AWREGION(dot_prod_1_m_axi_gmem_AWREGION),
        .m_axi_gmem_AWSIZE(dot_prod_1_m_axi_gmem_AWSIZE),
        .m_axi_gmem_AWVALID(dot_prod_1_m_axi_gmem_AWVALID),
        .m_axi_gmem_BREADY(dot_prod_1_m_axi_gmem_BREADY),
        .m_axi_gmem_BRESP(dot_prod_1_m_axi_gmem_BRESP),
        .m_axi_gmem_BVALID(dot_prod_1_m_axi_gmem_BVALID),
        .m_axi_gmem_RDATA(dot_prod_1_m_axi_gmem_RDATA),
        .m_axi_gmem_RLAST(dot_prod_1_m_axi_gmem_RLAST),
        .m_axi_gmem_RREADY(dot_prod_1_m_axi_gmem_RREADY),
        .m_axi_gmem_RRESP(dot_prod_1_m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(dot_prod_1_m_axi_gmem_RVALID),
        .m_axi_gmem_WDATA(dot_prod_1_m_axi_gmem_WDATA),
        .m_axi_gmem_WLAST(dot_prod_1_m_axi_gmem_WLAST),
        .m_axi_gmem_WREADY(dot_prod_1_m_axi_gmem_WREADY),
        .m_axi_gmem_WSTRB(dot_prod_1_m_axi_gmem_WSTRB),
        .m_axi_gmem_WVALID(dot_prod_1_m_axi_gmem_WVALID),
        .s_axi_control_ARADDR(slr1_M01_AXI_ARADDR),
        .s_axi_control_ARREADY(slr1_M01_AXI_ARREADY),
        .s_axi_control_ARVALID(slr1_M01_AXI_ARVALID),
        .s_axi_control_AWADDR(slr1_M01_AXI_AWADDR),
        .s_axi_control_AWREADY(slr1_M01_AXI_AWREADY),
        .s_axi_control_AWVALID(slr1_M01_AXI_AWVALID),
        .s_axi_control_BREADY(slr1_M01_AXI_BREADY),
        .s_axi_control_BRESP(slr1_M01_AXI_BRESP),
        .s_axi_control_BVALID(slr1_M01_AXI_BVALID),
        .s_axi_control_RDATA(slr1_M01_AXI_RDATA),
        .s_axi_control_RREADY(slr1_M01_AXI_RREADY),
        .s_axi_control_RRESP(slr1_M01_AXI_RRESP),
        .s_axi_control_RVALID(slr1_M01_AXI_RVALID),
        .s_axi_control_WDATA(slr1_M01_AXI_WDATA),
        .s_axi_control_WREADY(slr1_M01_AXI_WREADY),
        .s_axi_control_WSTRB(slr1_M01_AXI_WSTRB),
        .s_axi_control_WVALID(slr1_M01_AXI_WVALID));
  interrupt_concat_imp_1SXQM3I interrupt_concat
       (.In0(dot_prod_1_interrupt),
        .xlconcat_interrupt_dout(irq_cu_1));
  pfm_dynamic_kernel2_clk_0 kernel2_clk
       (.clk(slowest_sync_clk_2_1),
        .sync_rst(ext_reset_in_2_1));
  pfm_dynamic_kernel_clk_0 kernel_clk
       (.clk(slowest_sync_clk_0_1),
        .sync_rst(ext_reset_in_0_1));
  (* DPA_TRACE_SLAVE = "true" *) 
  pfm_dynamic_memory_subsystem_0 memory_subsystem
       (.M00_AXI_araddr(memory_subsystem_M00_AXI_ARADDR),
        .M00_AXI_arburst(memory_subsystem_M00_AXI_ARBURST),
        .M00_AXI_arcache(memory_subsystem_M00_AXI_ARCACHE),
        .M00_AXI_arid(memory_subsystem_M00_AXI_ARID),
        .M00_AXI_arlen(memory_subsystem_M00_AXI_ARLEN),
        .M00_AXI_arlock(memory_subsystem_M00_AXI_ARLOCK),
        .M00_AXI_arprot(memory_subsystem_M00_AXI_ARPROT),
        .M00_AXI_arqos(memory_subsystem_M00_AXI_ARQOS),
        .M00_AXI_arready(memory_subsystem_M00_AXI_ARREADY),
        .M00_AXI_arsize(memory_subsystem_M00_AXI_ARSIZE),
        .M00_AXI_aruser(memory_subsystem_M00_AXI_ARUSER),
        .M00_AXI_arvalid(memory_subsystem_M00_AXI_ARVALID),
        .M00_AXI_awaddr(memory_subsystem_M00_AXI_AWADDR),
        .M00_AXI_awburst(memory_subsystem_M00_AXI_AWBURST),
        .M00_AXI_awcache(memory_subsystem_M00_AXI_AWCACHE),
        .M00_AXI_awid(memory_subsystem_M00_AXI_AWID),
        .M00_AXI_awlen(memory_subsystem_M00_AXI_AWLEN),
        .M00_AXI_awlock(memory_subsystem_M00_AXI_AWLOCK),
        .M00_AXI_awprot(memory_subsystem_M00_AXI_AWPROT),
        .M00_AXI_awqos(memory_subsystem_M00_AXI_AWQOS),
        .M00_AXI_awready(memory_subsystem_M00_AXI_AWREADY),
        .M00_AXI_awsize(memory_subsystem_M00_AXI_AWSIZE),
        .M00_AXI_awuser(memory_subsystem_M00_AXI_AWUSER),
        .M00_AXI_awvalid(memory_subsystem_M00_AXI_AWVALID),
        .M00_AXI_bid(memory_subsystem_M00_AXI_BID),
        .M00_AXI_bready(memory_subsystem_M00_AXI_BREADY),
        .M00_AXI_bresp(memory_subsystem_M00_AXI_BRESP),
        .M00_AXI_buser(memory_subsystem_M00_AXI_BUSER),
        .M00_AXI_bvalid(memory_subsystem_M00_AXI_BVALID),
        .M00_AXI_rdata(memory_subsystem_M00_AXI_RDATA),
        .M00_AXI_rid(memory_subsystem_M00_AXI_RID),
        .M00_AXI_rlast(memory_subsystem_M00_AXI_RLAST),
        .M00_AXI_rready(memory_subsystem_M00_AXI_RREADY),
        .M00_AXI_rresp(memory_subsystem_M00_AXI_RRESP),
        .M00_AXI_ruser(memory_subsystem_M00_AXI_RUSER),
        .M00_AXI_rvalid(memory_subsystem_M00_AXI_RVALID),
        .M00_AXI_wdata(memory_subsystem_M00_AXI_WDATA),
        .M00_AXI_wlast(memory_subsystem_M00_AXI_WLAST),
        .M00_AXI_wready(memory_subsystem_M00_AXI_WREADY),
        .M00_AXI_wstrb(memory_subsystem_M00_AXI_WSTRB),
        .M00_AXI_wuser(memory_subsystem_M00_AXI_WUSER),
        .M00_AXI_wvalid(memory_subsystem_M00_AXI_WVALID),
        .M01_AXI_araddr(memory_subsystem_M01_AXI_ARADDR),
        .M01_AXI_arburst(memory_subsystem_M01_AXI_ARBURST),
        .M01_AXI_arlen(memory_subsystem_M01_AXI_ARLEN),
        .M01_AXI_arprot(memory_subsystem_M01_AXI_ARPROT),
        .M01_AXI_arready(memory_subsystem_M01_AXI_ARREADY),
        .M01_AXI_arsize(memory_subsystem_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(memory_subsystem_M01_AXI_ARVALID),
        .M01_AXI_awaddr(memory_subsystem_M01_AXI_AWADDR),
        .M01_AXI_awburst(memory_subsystem_M01_AXI_AWBURST),
        .M01_AXI_awlen(memory_subsystem_M01_AXI_AWLEN),
        .M01_AXI_awprot(memory_subsystem_M01_AXI_AWPROT),
        .M01_AXI_awready(memory_subsystem_M01_AXI_AWREADY),
        .M01_AXI_awsize(memory_subsystem_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(memory_subsystem_M01_AXI_AWVALID),
        .M01_AXI_bready(memory_subsystem_M01_AXI_BREADY),
        .M01_AXI_bresp(memory_subsystem_M01_AXI_BRESP),
        .M01_AXI_bvalid(memory_subsystem_M01_AXI_BVALID),
        .M01_AXI_rdata(memory_subsystem_M01_AXI_RDATA),
        .M01_AXI_rlast(memory_subsystem_M01_AXI_RLAST),
        .M01_AXI_rready(memory_subsystem_M01_AXI_RREADY),
        .M01_AXI_rresp(memory_subsystem_M01_AXI_RRESP),
        .M01_AXI_rvalid(memory_subsystem_M01_AXI_RVALID),
        .M01_AXI_wdata(memory_subsystem_M01_AXI_WDATA),
        .M01_AXI_wlast(memory_subsystem_M01_AXI_WLAST),
        .M01_AXI_wready(memory_subsystem_M01_AXI_WREADY),
        .M01_AXI_wstrb(memory_subsystem_M01_AXI_WSTRB),
        .M01_AXI_wvalid(memory_subsystem_M01_AXI_WVALID),
        .M02_AXI_araddr(memory_subsystem_M02_AXI_ARADDR),
        .M02_AXI_arburst(memory_subsystem_M02_AXI_ARBURST),
        .M02_AXI_arcache(memory_subsystem_M02_AXI_ARCACHE),
        .M02_AXI_arid(memory_subsystem_M02_AXI_ARID),
        .M02_AXI_arlen(memory_subsystem_M02_AXI_ARLEN),
        .M02_AXI_arlock(memory_subsystem_M02_AXI_ARLOCK),
        .M02_AXI_arprot(memory_subsystem_M02_AXI_ARPROT),
        .M02_AXI_arqos(memory_subsystem_M02_AXI_ARQOS),
        .M02_AXI_arready(memory_subsystem_M02_AXI_ARREADY),
        .M02_AXI_arsize(memory_subsystem_M02_AXI_ARSIZE),
        .M02_AXI_aruser(memory_subsystem_M02_AXI_ARUSER),
        .M02_AXI_arvalid(memory_subsystem_M02_AXI_ARVALID),
        .M02_AXI_awaddr(memory_subsystem_M02_AXI_AWADDR),
        .M02_AXI_awburst(memory_subsystem_M02_AXI_AWBURST),
        .M02_AXI_awcache(memory_subsystem_M02_AXI_AWCACHE),
        .M02_AXI_awid(memory_subsystem_M02_AXI_AWID),
        .M02_AXI_awlen(memory_subsystem_M02_AXI_AWLEN),
        .M02_AXI_awlock(memory_subsystem_M02_AXI_AWLOCK),
        .M02_AXI_awprot(memory_subsystem_M02_AXI_AWPROT),
        .M02_AXI_awqos(memory_subsystem_M02_AXI_AWQOS),
        .M02_AXI_awready(memory_subsystem_M02_AXI_AWREADY),
        .M02_AXI_awsize(memory_subsystem_M02_AXI_AWSIZE),
        .M02_AXI_awuser(memory_subsystem_M02_AXI_AWUSER),
        .M02_AXI_awvalid(memory_subsystem_M02_AXI_AWVALID),
        .M02_AXI_bid(memory_subsystem_M02_AXI_BID),
        .M02_AXI_bready(memory_subsystem_M02_AXI_BREADY),
        .M02_AXI_bresp(memory_subsystem_M02_AXI_BRESP),
        .M02_AXI_buser(memory_subsystem_M02_AXI_BUSER),
        .M02_AXI_bvalid(memory_subsystem_M02_AXI_BVALID),
        .M02_AXI_rdata(memory_subsystem_M02_AXI_RDATA),
        .M02_AXI_rid(memory_subsystem_M02_AXI_RID),
        .M02_AXI_rlast(memory_subsystem_M02_AXI_RLAST),
        .M02_AXI_rready(memory_subsystem_M02_AXI_RREADY),
        .M02_AXI_rresp(memory_subsystem_M02_AXI_RRESP),
        .M02_AXI_ruser(memory_subsystem_M02_AXI_RUSER),
        .M02_AXI_rvalid(memory_subsystem_M02_AXI_RVALID),
        .M02_AXI_wdata(memory_subsystem_M02_AXI_WDATA),
        .M02_AXI_wlast(memory_subsystem_M02_AXI_WLAST),
        .M02_AXI_wready(memory_subsystem_M02_AXI_WREADY),
        .M02_AXI_wstrb(memory_subsystem_M02_AXI_WSTRB),
        .M02_AXI_wuser(memory_subsystem_M02_AXI_WUSER),
        .M02_AXI_wvalid(memory_subsystem_M02_AXI_WVALID),
        .M03_AXI_araddr(memory_subsystem_M03_AXI_ARADDR),
        .M03_AXI_arburst(memory_subsystem_M03_AXI_ARBURST),
        .M03_AXI_arcache(memory_subsystem_M03_AXI_ARCACHE),
        .M03_AXI_arid(memory_subsystem_M03_AXI_ARID),
        .M03_AXI_arlen(memory_subsystem_M03_AXI_ARLEN),
        .M03_AXI_arlock(memory_subsystem_M03_AXI_ARLOCK),
        .M03_AXI_arprot(memory_subsystem_M03_AXI_ARPROT),
        .M03_AXI_arqos(memory_subsystem_M03_AXI_ARQOS),
        .M03_AXI_arready(memory_subsystem_M03_AXI_ARREADY),
        .M03_AXI_arsize(memory_subsystem_M03_AXI_ARSIZE),
        .M03_AXI_aruser(memory_subsystem_M03_AXI_ARUSER),
        .M03_AXI_arvalid(memory_subsystem_M03_AXI_ARVALID),
        .M03_AXI_awaddr(memory_subsystem_M03_AXI_AWADDR),
        .M03_AXI_awburst(memory_subsystem_M03_AXI_AWBURST),
        .M03_AXI_awcache(memory_subsystem_M03_AXI_AWCACHE),
        .M03_AXI_awid(memory_subsystem_M03_AXI_AWID),
        .M03_AXI_awlen(memory_subsystem_M03_AXI_AWLEN),
        .M03_AXI_awlock(memory_subsystem_M03_AXI_AWLOCK),
        .M03_AXI_awprot(memory_subsystem_M03_AXI_AWPROT),
        .M03_AXI_awqos(memory_subsystem_M03_AXI_AWQOS),
        .M03_AXI_awready(memory_subsystem_M03_AXI_AWREADY),
        .M03_AXI_awsize(memory_subsystem_M03_AXI_AWSIZE),
        .M03_AXI_awuser(memory_subsystem_M03_AXI_AWUSER),
        .M03_AXI_awvalid(memory_subsystem_M03_AXI_AWVALID),
        .M03_AXI_bid(memory_subsystem_M03_AXI_BID),
        .M03_AXI_bready(memory_subsystem_M03_AXI_BREADY),
        .M03_AXI_bresp(memory_subsystem_M03_AXI_BRESP),
        .M03_AXI_buser(memory_subsystem_M03_AXI_BUSER),
        .M03_AXI_bvalid(memory_subsystem_M03_AXI_BVALID),
        .M03_AXI_rdata(memory_subsystem_M03_AXI_RDATA),
        .M03_AXI_rid(memory_subsystem_M03_AXI_RID),
        .M03_AXI_rlast(memory_subsystem_M03_AXI_RLAST),
        .M03_AXI_rready(memory_subsystem_M03_AXI_RREADY),
        .M03_AXI_rresp(memory_subsystem_M03_AXI_RRESP),
        .M03_AXI_ruser(memory_subsystem_M03_AXI_RUSER),
        .M03_AXI_rvalid(memory_subsystem_M03_AXI_RVALID),
        .M03_AXI_wdata(memory_subsystem_M03_AXI_WDATA),
        .M03_AXI_wlast(memory_subsystem_M03_AXI_WLAST),
        .M03_AXI_wready(memory_subsystem_M03_AXI_WREADY),
        .M03_AXI_wstrb(memory_subsystem_M03_AXI_WSTRB),
        .M03_AXI_wuser(memory_subsystem_M03_AXI_WUSER),
        .M03_AXI_wvalid(memory_subsystem_M03_AXI_WVALID),
        .S00_AXI_araddr(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARADDR),
        .S00_AXI_arburst(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARBURST),
        .S00_AXI_arcache(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARCACHE),
        .S00_AXI_arid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARID),
        .S00_AXI_arlen(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARLEN),
        .S00_AXI_arlock(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARLOCK),
        .S00_AXI_arprot(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARPROT),
        .S00_AXI_arqos(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARQOS),
        .S00_AXI_arready(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARREADY),
        .S00_AXI_arsize(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARSIZE),
        .S00_AXI_aruser(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARUSER),
        .S00_AXI_arvalid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARVALID),
        .S00_AXI_awaddr(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWADDR),
        .S00_AXI_awburst(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWBURST),
        .S00_AXI_awcache(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWCACHE),
        .S00_AXI_awid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWID),
        .S00_AXI_awlen(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWLEN),
        .S00_AXI_awlock(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWLOCK),
        .S00_AXI_awprot(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWPROT),
        .S00_AXI_awqos(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWQOS),
        .S00_AXI_awready(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWREADY),
        .S00_AXI_awsize(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWSIZE),
        .S00_AXI_awuser(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWUSER),
        .S00_AXI_awvalid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWVALID),
        .S00_AXI_bid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BID),
        .S00_AXI_bready(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BREADY),
        .S00_AXI_bresp(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BRESP),
        .S00_AXI_buser(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BUSER),
        .S00_AXI_bvalid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BVALID),
        .S00_AXI_rdata(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RDATA),
        .S00_AXI_rid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RID),
        .S00_AXI_rlast(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RLAST),
        .S00_AXI_rready(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RREADY),
        .S00_AXI_rresp(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RRESP),
        .S00_AXI_ruser(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RUSER),
        .S00_AXI_rvalid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RVALID),
        .S00_AXI_wdata(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WDATA),
        .S00_AXI_wlast(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WLAST),
        .S00_AXI_wready(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WREADY),
        .S00_AXI_wstrb(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WSTRB),
        .S00_AXI_wuser(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WUSER),
        .S00_AXI_wvalid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WVALID),
        .S01_AXI_araddr(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARADDR),
        .S01_AXI_arburst(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARBURST),
        .S01_AXI_arcache(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARCACHE),
        .S01_AXI_arid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARID),
        .S01_AXI_arlen(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARLEN),
        .S01_AXI_arlock(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARLOCK),
        .S01_AXI_arprot(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARPROT),
        .S01_AXI_arqos(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARQOS),
        .S01_AXI_arready(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARREADY),
        .S01_AXI_arsize(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARSIZE),
        .S01_AXI_aruser(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARUSER),
        .S01_AXI_arvalid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARVALID),
        .S01_AXI_awaddr(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWADDR),
        .S01_AXI_awburst(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWBURST),
        .S01_AXI_awcache(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWCACHE),
        .S01_AXI_awid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWID),
        .S01_AXI_awlen(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWLEN),
        .S01_AXI_awlock(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWLOCK),
        .S01_AXI_awprot(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWPROT),
        .S01_AXI_awqos(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWQOS),
        .S01_AXI_awready(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWREADY),
        .S01_AXI_awsize(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWSIZE),
        .S01_AXI_awuser(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWUSER),
        .S01_AXI_awvalid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWVALID),
        .S01_AXI_bid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BID),
        .S01_AXI_bready(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BREADY),
        .S01_AXI_bresp(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BRESP),
        .S01_AXI_buser(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BUSER),
        .S01_AXI_bvalid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BVALID),
        .S01_AXI_rdata(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RDATA),
        .S01_AXI_rid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RID),
        .S01_AXI_rlast(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RLAST),
        .S01_AXI_rready(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RREADY),
        .S01_AXI_rresp(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RRESP),
        .S01_AXI_ruser(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RUSER),
        .S01_AXI_rvalid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RVALID),
        .S01_AXI_wdata(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WDATA),
        .S01_AXI_wlast(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WLAST),
        .S01_AXI_wready(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WREADY),
        .S01_AXI_wstrb(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WSTRB),
        .S01_AXI_wuser(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WUSER),
        .S01_AXI_wvalid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WVALID),
        .S02_AXI_araddr(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARADDR),
        .S02_AXI_arburst(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARBURST),
        .S02_AXI_arcache(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARCACHE),
        .S02_AXI_arid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARID),
        .S02_AXI_arlen(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARLEN),
        .S02_AXI_arlock(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARLOCK),
        .S02_AXI_arprot(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARPROT),
        .S02_AXI_arqos(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARQOS),
        .S02_AXI_arready(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARREADY),
        .S02_AXI_arsize(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARSIZE),
        .S02_AXI_aruser(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARUSER),
        .S02_AXI_arvalid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARVALID),
        .S02_AXI_awaddr(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWADDR),
        .S02_AXI_awburst(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWBURST),
        .S02_AXI_awcache(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWCACHE),
        .S02_AXI_awid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWID),
        .S02_AXI_awlen(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWLEN),
        .S02_AXI_awlock(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWLOCK),
        .S02_AXI_awprot(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWPROT),
        .S02_AXI_awqos(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWQOS),
        .S02_AXI_awready(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWREADY),
        .S02_AXI_awsize(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWSIZE),
        .S02_AXI_awuser(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWUSER),
        .S02_AXI_awvalid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWVALID),
        .S02_AXI_bid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BID),
        .S02_AXI_bready(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BREADY),
        .S02_AXI_bresp(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BRESP),
        .S02_AXI_buser(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BUSER),
        .S02_AXI_bvalid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BVALID),
        .S02_AXI_rdata(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RDATA),
        .S02_AXI_rid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RID),
        .S02_AXI_rlast(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RLAST),
        .S02_AXI_rready(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RREADY),
        .S02_AXI_rresp(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RRESP),
        .S02_AXI_ruser(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RUSER),
        .S02_AXI_rvalid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RVALID),
        .S02_AXI_wdata(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WDATA),
        .S02_AXI_wlast(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WLAST),
        .S02_AXI_wready(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WREADY),
        .S02_AXI_wstrb(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WSTRB),
        .S02_AXI_wuser(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WUSER),
        .S02_AXI_wvalid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WVALID),
        .S03_AXI_araddr(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARADDR),
        .S03_AXI_arburst(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARBURST),
        .S03_AXI_arcache(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARCACHE),
        .S03_AXI_arid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARID),
        .S03_AXI_arlen(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARLEN),
        .S03_AXI_arlock(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARLOCK),
        .S03_AXI_arprot(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARPROT),
        .S03_AXI_arqos(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARQOS),
        .S03_AXI_arready(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARREADY),
        .S03_AXI_arsize(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARSIZE),
        .S03_AXI_aruser(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARUSER),
        .S03_AXI_arvalid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARVALID),
        .S03_AXI_awaddr(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWADDR),
        .S03_AXI_awburst(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWBURST),
        .S03_AXI_awcache(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWCACHE),
        .S03_AXI_awid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWID),
        .S03_AXI_awlen(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWLEN),
        .S03_AXI_awlock(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWLOCK),
        .S03_AXI_awprot(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWPROT),
        .S03_AXI_awqos(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWQOS),
        .S03_AXI_awready(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWREADY),
        .S03_AXI_awsize(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWSIZE),
        .S03_AXI_awuser(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWUSER),
        .S03_AXI_awvalid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWVALID),
        .S03_AXI_bid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BID),
        .S03_AXI_bready(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BREADY),
        .S03_AXI_bresp(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BRESP),
        .S03_AXI_buser(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BUSER),
        .S03_AXI_bvalid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BVALID),
        .S03_AXI_rdata(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RDATA),
        .S03_AXI_rid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RID),
        .S03_AXI_rlast(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RLAST),
        .S03_AXI_rready(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RREADY),
        .S03_AXI_rresp(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RRESP),
        .S03_AXI_ruser(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RUSER),
        .S03_AXI_rvalid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RVALID),
        .S03_AXI_wdata(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WDATA),
        .S03_AXI_wlast(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WLAST),
        .S03_AXI_wready(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WREADY),
        .S03_AXI_wstrb(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WSTRB),
        .S03_AXI_wuser(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WUSER),
        .S03_AXI_wvalid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WVALID),
        .S04_AXI_araddr(dot_prod_1_m_axi_gmem_ARADDR),
        .S04_AXI_arcache(dot_prod_1_m_axi_gmem_ARCACHE),
        .S04_AXI_arlen(dot_prod_1_m_axi_gmem_ARLEN),
        .S04_AXI_arlock(dot_prod_1_m_axi_gmem_ARLOCK[0]),
        .S04_AXI_arprot(dot_prod_1_m_axi_gmem_ARPROT),
        .S04_AXI_arqos(dot_prod_1_m_axi_gmem_ARQOS),
        .S04_AXI_arready(dot_prod_1_m_axi_gmem_ARREADY),
        .S04_AXI_arregion(dot_prod_1_m_axi_gmem_ARREGION),
        .S04_AXI_arsize(dot_prod_1_m_axi_gmem_ARSIZE),
        .S04_AXI_arvalid(dot_prod_1_m_axi_gmem_ARVALID),
        .S04_AXI_awaddr(dot_prod_1_m_axi_gmem_AWADDR),
        .S04_AXI_awcache(dot_prod_1_m_axi_gmem_AWCACHE),
        .S04_AXI_awlen(dot_prod_1_m_axi_gmem_AWLEN),
        .S04_AXI_awlock(dot_prod_1_m_axi_gmem_AWLOCK[0]),
        .S04_AXI_awprot(dot_prod_1_m_axi_gmem_AWPROT),
        .S04_AXI_awqos(dot_prod_1_m_axi_gmem_AWQOS),
        .S04_AXI_awready(dot_prod_1_m_axi_gmem_AWREADY),
        .S04_AXI_awregion(dot_prod_1_m_axi_gmem_AWREGION),
        .S04_AXI_awsize(dot_prod_1_m_axi_gmem_AWSIZE),
        .S04_AXI_awvalid(dot_prod_1_m_axi_gmem_AWVALID),
        .S04_AXI_bready(dot_prod_1_m_axi_gmem_BREADY),
        .S04_AXI_bresp(dot_prod_1_m_axi_gmem_BRESP),
        .S04_AXI_bvalid(dot_prod_1_m_axi_gmem_BVALID),
        .S04_AXI_rdata(dot_prod_1_m_axi_gmem_RDATA),
        .S04_AXI_rlast(dot_prod_1_m_axi_gmem_RLAST),
        .S04_AXI_rready(dot_prod_1_m_axi_gmem_RREADY),
        .S04_AXI_rresp(dot_prod_1_m_axi_gmem_RRESP),
        .S04_AXI_rvalid(dot_prod_1_m_axi_gmem_RVALID),
        .S04_AXI_wdata(dot_prod_1_m_axi_gmem_WDATA),
        .S04_AXI_wlast(dot_prod_1_m_axi_gmem_WLAST),
        .S04_AXI_wready(dot_prod_1_m_axi_gmem_WREADY),
        .S04_AXI_wstrb(dot_prod_1_m_axi_gmem_WSTRB),
        .S04_AXI_wvalid(dot_prod_1_m_axi_gmem_WVALID),
        .aclk(ui_clk_clk),
        .aclk1(slowest_sync_clk_0_1),
        .aresetn(ui_clk_sync_rst));
  pfm_dynamic_sci pfm_dynamic_sci_inst
       ();
  pfm_dynamic_sim_ddr_0_0 sim_ddr_0
       (.c0_ddr_saxi_aclk(ui_clk_clk),
        .c0_ddr_saxi_araddr(memory_subsystem_M00_AXI_ARADDR),
        .c0_ddr_saxi_arburst(memory_subsystem_M00_AXI_ARBURST),
        .c0_ddr_saxi_arcache(memory_subsystem_M00_AXI_ARCACHE),
        .c0_ddr_saxi_aresetn(ui_clk_sync_rst),
        .c0_ddr_saxi_arid(memory_subsystem_M00_AXI_ARID),
        .c0_ddr_saxi_arlen(memory_subsystem_M00_AXI_ARLEN),
        .c0_ddr_saxi_arlock(memory_subsystem_M00_AXI_ARLOCK),
        .c0_ddr_saxi_arprot(memory_subsystem_M00_AXI_ARPROT),
        .c0_ddr_saxi_arqos(memory_subsystem_M00_AXI_ARQOS),
        .c0_ddr_saxi_arready(memory_subsystem_M00_AXI_ARREADY),
        .c0_ddr_saxi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .c0_ddr_saxi_arsize(memory_subsystem_M00_AXI_ARSIZE),
        .c0_ddr_saxi_aruser(memory_subsystem_M00_AXI_ARUSER),
        .c0_ddr_saxi_arvalid(memory_subsystem_M00_AXI_ARVALID),
        .c0_ddr_saxi_awaddr(memory_subsystem_M00_AXI_AWADDR),
        .c0_ddr_saxi_awburst(memory_subsystem_M00_AXI_AWBURST),
        .c0_ddr_saxi_awcache(memory_subsystem_M00_AXI_AWCACHE),
        .c0_ddr_saxi_awid(memory_subsystem_M00_AXI_AWID),
        .c0_ddr_saxi_awlen(memory_subsystem_M00_AXI_AWLEN),
        .c0_ddr_saxi_awlock(memory_subsystem_M00_AXI_AWLOCK),
        .c0_ddr_saxi_awprot(memory_subsystem_M00_AXI_AWPROT),
        .c0_ddr_saxi_awqos(memory_subsystem_M00_AXI_AWQOS),
        .c0_ddr_saxi_awready(memory_subsystem_M00_AXI_AWREADY),
        .c0_ddr_saxi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .c0_ddr_saxi_awsize(memory_subsystem_M00_AXI_AWSIZE),
        .c0_ddr_saxi_awuser(memory_subsystem_M00_AXI_AWUSER),
        .c0_ddr_saxi_awvalid(memory_subsystem_M00_AXI_AWVALID),
        .c0_ddr_saxi_bid(memory_subsystem_M00_AXI_BID),
        .c0_ddr_saxi_bready(memory_subsystem_M00_AXI_BREADY),
        .c0_ddr_saxi_bresp(memory_subsystem_M00_AXI_BRESP),
        .c0_ddr_saxi_buser(memory_subsystem_M00_AXI_BUSER),
        .c0_ddr_saxi_bvalid(memory_subsystem_M00_AXI_BVALID),
        .c0_ddr_saxi_rdata(memory_subsystem_M00_AXI_RDATA),
        .c0_ddr_saxi_rid(memory_subsystem_M00_AXI_RID),
        .c0_ddr_saxi_rlast(memory_subsystem_M00_AXI_RLAST),
        .c0_ddr_saxi_rready(memory_subsystem_M00_AXI_RREADY),
        .c0_ddr_saxi_rresp(memory_subsystem_M00_AXI_RRESP),
        .c0_ddr_saxi_ruser(memory_subsystem_M00_AXI_RUSER),
        .c0_ddr_saxi_rvalid(memory_subsystem_M00_AXI_RVALID),
        .c0_ddr_saxi_wdata(memory_subsystem_M00_AXI_WDATA),
        .c0_ddr_saxi_wlast(memory_subsystem_M00_AXI_WLAST),
        .c0_ddr_saxi_wready(memory_subsystem_M00_AXI_WREADY),
        .c0_ddr_saxi_wstrb(memory_subsystem_M00_AXI_WSTRB),
        .c0_ddr_saxi_wuser(memory_subsystem_M00_AXI_WUSER),
        .c0_ddr_saxi_wvalid(memory_subsystem_M00_AXI_WVALID),
        .c0_ui_clk(ui_clk_clk),
        .s_xdma_axi_aclk(ui_clk_clk),
        .s_xdma_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arburst({1'b0,1'b1}),
        .s_xdma_axi_arcache({1'b0,1'b0,1'b1,1'b1}),
        .s_xdma_axi_aresetn(ui_clk_sync_rst),
        .s_xdma_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arlock(1'b0),
        .s_xdma_axi_arprot({1'b0,1'b0,1'b0}),
        .s_xdma_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arsize({1'b0,1'b1,1'b0}),
        .s_xdma_axi_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arvalid(1'b0),
        .s_xdma_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awburst({1'b0,1'b1}),
        .s_xdma_axi_awcache({1'b0,1'b0,1'b1,1'b1}),
        .s_xdma_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awlock(1'b0),
        .s_xdma_axi_awprot({1'b0,1'b0,1'b0}),
        .s_xdma_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awsize({1'b0,1'b1,1'b0}),
        .s_xdma_axi_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awvalid(1'b0),
        .s_xdma_axi_bready(1'b0),
        .s_xdma_axi_rready(1'b0),
        .s_xdma_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_wlast(1'b0),
        .s_xdma_axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_xdma_axi_wuser(1'b0),
        .s_xdma_axi_wvalid(1'b0));
  pfm_dynamic_sim_ddr_2_0 sim_ddr_2
       (.c0_ddr_saxi_aclk(ui_clk_clk),
        .c0_ddr_saxi_araddr(memory_subsystem_M02_AXI_ARADDR),
        .c0_ddr_saxi_arburst(memory_subsystem_M02_AXI_ARBURST),
        .c0_ddr_saxi_arcache(memory_subsystem_M02_AXI_ARCACHE),
        .c0_ddr_saxi_aresetn(ui_clk_sync_rst),
        .c0_ddr_saxi_arid(memory_subsystem_M02_AXI_ARID),
        .c0_ddr_saxi_arlen(memory_subsystem_M02_AXI_ARLEN),
        .c0_ddr_saxi_arlock(memory_subsystem_M02_AXI_ARLOCK),
        .c0_ddr_saxi_arprot(memory_subsystem_M02_AXI_ARPROT),
        .c0_ddr_saxi_arqos(memory_subsystem_M02_AXI_ARQOS),
        .c0_ddr_saxi_arready(memory_subsystem_M02_AXI_ARREADY),
        .c0_ddr_saxi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .c0_ddr_saxi_arsize(memory_subsystem_M02_AXI_ARSIZE),
        .c0_ddr_saxi_aruser(memory_subsystem_M02_AXI_ARUSER),
        .c0_ddr_saxi_arvalid(memory_subsystem_M02_AXI_ARVALID),
        .c0_ddr_saxi_awaddr(memory_subsystem_M02_AXI_AWADDR),
        .c0_ddr_saxi_awburst(memory_subsystem_M02_AXI_AWBURST),
        .c0_ddr_saxi_awcache(memory_subsystem_M02_AXI_AWCACHE),
        .c0_ddr_saxi_awid(memory_subsystem_M02_AXI_AWID),
        .c0_ddr_saxi_awlen(memory_subsystem_M02_AXI_AWLEN),
        .c0_ddr_saxi_awlock(memory_subsystem_M02_AXI_AWLOCK),
        .c0_ddr_saxi_awprot(memory_subsystem_M02_AXI_AWPROT),
        .c0_ddr_saxi_awqos(memory_subsystem_M02_AXI_AWQOS),
        .c0_ddr_saxi_awready(memory_subsystem_M02_AXI_AWREADY),
        .c0_ddr_saxi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .c0_ddr_saxi_awsize(memory_subsystem_M02_AXI_AWSIZE),
        .c0_ddr_saxi_awuser(memory_subsystem_M02_AXI_AWUSER),
        .c0_ddr_saxi_awvalid(memory_subsystem_M02_AXI_AWVALID),
        .c0_ddr_saxi_bid(memory_subsystem_M02_AXI_BID),
        .c0_ddr_saxi_bready(memory_subsystem_M02_AXI_BREADY),
        .c0_ddr_saxi_bresp(memory_subsystem_M02_AXI_BRESP),
        .c0_ddr_saxi_buser(memory_subsystem_M02_AXI_BUSER),
        .c0_ddr_saxi_bvalid(memory_subsystem_M02_AXI_BVALID),
        .c0_ddr_saxi_rdata(memory_subsystem_M02_AXI_RDATA),
        .c0_ddr_saxi_rid(memory_subsystem_M02_AXI_RID),
        .c0_ddr_saxi_rlast(memory_subsystem_M02_AXI_RLAST),
        .c0_ddr_saxi_rready(memory_subsystem_M02_AXI_RREADY),
        .c0_ddr_saxi_rresp(memory_subsystem_M02_AXI_RRESP),
        .c0_ddr_saxi_ruser(memory_subsystem_M02_AXI_RUSER),
        .c0_ddr_saxi_rvalid(memory_subsystem_M02_AXI_RVALID),
        .c0_ddr_saxi_wdata(memory_subsystem_M02_AXI_WDATA),
        .c0_ddr_saxi_wlast(memory_subsystem_M02_AXI_WLAST),
        .c0_ddr_saxi_wready(memory_subsystem_M02_AXI_WREADY),
        .c0_ddr_saxi_wstrb(memory_subsystem_M02_AXI_WSTRB),
        .c0_ddr_saxi_wuser(memory_subsystem_M02_AXI_WUSER),
        .c0_ddr_saxi_wvalid(memory_subsystem_M02_AXI_WVALID),
        .c0_ui_clk(ui_clk_clk),
        .s_xdma_axi_aclk(ui_clk_clk),
        .s_xdma_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arburst({1'b0,1'b1}),
        .s_xdma_axi_arcache({1'b0,1'b0,1'b1,1'b1}),
        .s_xdma_axi_aresetn(ui_clk_sync_rst),
        .s_xdma_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arlock(1'b0),
        .s_xdma_axi_arprot({1'b0,1'b0,1'b0}),
        .s_xdma_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arsize({1'b0,1'b1,1'b0}),
        .s_xdma_axi_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arvalid(1'b0),
        .s_xdma_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awburst({1'b0,1'b1}),
        .s_xdma_axi_awcache({1'b0,1'b0,1'b1,1'b1}),
        .s_xdma_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awlock(1'b0),
        .s_xdma_axi_awprot({1'b0,1'b0,1'b0}),
        .s_xdma_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awsize({1'b0,1'b1,1'b0}),
        .s_xdma_axi_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awvalid(1'b0),
        .s_xdma_axi_bready(1'b0),
        .s_xdma_axi_rready(1'b0),
        .s_xdma_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_wlast(1'b0),
        .s_xdma_axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_xdma_axi_wuser(1'b0),
        .s_xdma_axi_wvalid(1'b0));
  pfm_dynamic_sim_ddr_3_0 sim_ddr_3
       (.c0_ddr_saxi_aclk(ui_clk_clk),
        .c0_ddr_saxi_araddr(memory_subsystem_M03_AXI_ARADDR),
        .c0_ddr_saxi_arburst(memory_subsystem_M03_AXI_ARBURST),
        .c0_ddr_saxi_arcache(memory_subsystem_M03_AXI_ARCACHE),
        .c0_ddr_saxi_aresetn(ui_clk_sync_rst),
        .c0_ddr_saxi_arid(memory_subsystem_M03_AXI_ARID),
        .c0_ddr_saxi_arlen(memory_subsystem_M03_AXI_ARLEN),
        .c0_ddr_saxi_arlock(memory_subsystem_M03_AXI_ARLOCK),
        .c0_ddr_saxi_arprot(memory_subsystem_M03_AXI_ARPROT),
        .c0_ddr_saxi_arqos(memory_subsystem_M03_AXI_ARQOS),
        .c0_ddr_saxi_arready(memory_subsystem_M03_AXI_ARREADY),
        .c0_ddr_saxi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .c0_ddr_saxi_arsize(memory_subsystem_M03_AXI_ARSIZE),
        .c0_ddr_saxi_aruser(memory_subsystem_M03_AXI_ARUSER),
        .c0_ddr_saxi_arvalid(memory_subsystem_M03_AXI_ARVALID),
        .c0_ddr_saxi_awaddr(memory_subsystem_M03_AXI_AWADDR),
        .c0_ddr_saxi_awburst(memory_subsystem_M03_AXI_AWBURST),
        .c0_ddr_saxi_awcache(memory_subsystem_M03_AXI_AWCACHE),
        .c0_ddr_saxi_awid(memory_subsystem_M03_AXI_AWID),
        .c0_ddr_saxi_awlen(memory_subsystem_M03_AXI_AWLEN),
        .c0_ddr_saxi_awlock(memory_subsystem_M03_AXI_AWLOCK),
        .c0_ddr_saxi_awprot(memory_subsystem_M03_AXI_AWPROT),
        .c0_ddr_saxi_awqos(memory_subsystem_M03_AXI_AWQOS),
        .c0_ddr_saxi_awready(memory_subsystem_M03_AXI_AWREADY),
        .c0_ddr_saxi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .c0_ddr_saxi_awsize(memory_subsystem_M03_AXI_AWSIZE),
        .c0_ddr_saxi_awuser(memory_subsystem_M03_AXI_AWUSER),
        .c0_ddr_saxi_awvalid(memory_subsystem_M03_AXI_AWVALID),
        .c0_ddr_saxi_bid(memory_subsystem_M03_AXI_BID),
        .c0_ddr_saxi_bready(memory_subsystem_M03_AXI_BREADY),
        .c0_ddr_saxi_bresp(memory_subsystem_M03_AXI_BRESP),
        .c0_ddr_saxi_buser(memory_subsystem_M03_AXI_BUSER),
        .c0_ddr_saxi_bvalid(memory_subsystem_M03_AXI_BVALID),
        .c0_ddr_saxi_rdata(memory_subsystem_M03_AXI_RDATA),
        .c0_ddr_saxi_rid(memory_subsystem_M03_AXI_RID),
        .c0_ddr_saxi_rlast(memory_subsystem_M03_AXI_RLAST),
        .c0_ddr_saxi_rready(memory_subsystem_M03_AXI_RREADY),
        .c0_ddr_saxi_rresp(memory_subsystem_M03_AXI_RRESP),
        .c0_ddr_saxi_ruser(memory_subsystem_M03_AXI_RUSER),
        .c0_ddr_saxi_rvalid(memory_subsystem_M03_AXI_RVALID),
        .c0_ddr_saxi_wdata(memory_subsystem_M03_AXI_WDATA),
        .c0_ddr_saxi_wlast(memory_subsystem_M03_AXI_WLAST),
        .c0_ddr_saxi_wready(memory_subsystem_M03_AXI_WREADY),
        .c0_ddr_saxi_wstrb(memory_subsystem_M03_AXI_WSTRB),
        .c0_ddr_saxi_wuser(memory_subsystem_M03_AXI_WUSER),
        .c0_ddr_saxi_wvalid(memory_subsystem_M03_AXI_WVALID),
        .c0_ui_clk(ui_clk_clk),
        .s_xdma_axi_aclk(ui_clk_clk),
        .s_xdma_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arburst({1'b0,1'b1}),
        .s_xdma_axi_arcache({1'b0,1'b0,1'b1,1'b1}),
        .s_xdma_axi_aresetn(ui_clk_sync_rst),
        .s_xdma_axi_arid({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arlock(1'b0),
        .s_xdma_axi_arprot({1'b0,1'b0,1'b0}),
        .s_xdma_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arsize({1'b0,1'b1,1'b0}),
        .s_xdma_axi_aruser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arvalid(1'b0),
        .s_xdma_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awburst({1'b0,1'b1}),
        .s_xdma_axi_awcache({1'b0,1'b0,1'b1,1'b1}),
        .s_xdma_axi_awid({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awlock(1'b0),
        .s_xdma_axi_awprot({1'b0,1'b0,1'b0}),
        .s_xdma_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awsize({1'b0,1'b1,1'b0}),
        .s_xdma_axi_awuser({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_awvalid(1'b0),
        .s_xdma_axi_bready(1'b0),
        .s_xdma_axi_rready(1'b0),
        .s_xdma_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_wlast(1'b0),
        .s_xdma_axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_xdma_axi_wuser(1'b0),
        .s_xdma_axi_wvalid(1'b0));
  slr0_imp_1Q3M93Z slr0
       (.M00_AXI_araddr(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARADDR),
        .M00_AXI_arburst(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARBURST),
        .M00_AXI_arcache(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARCACHE),
        .M00_AXI_arid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARID),
        .M00_AXI_arlen(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARLEN),
        .M00_AXI_arlock(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARLOCK),
        .M00_AXI_arprot(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARPROT),
        .M00_AXI_arqos(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARQOS),
        .M00_AXI_arready(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARREADY),
        .M00_AXI_arsize(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARSIZE),
        .M00_AXI_aruser(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARUSER),
        .M00_AXI_arvalid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARVALID),
        .M00_AXI_awaddr(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWADDR),
        .M00_AXI_awburst(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWBURST),
        .M00_AXI_awcache(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWCACHE),
        .M00_AXI_awid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWID),
        .M00_AXI_awlen(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWLEN),
        .M00_AXI_awlock(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWLOCK),
        .M00_AXI_awprot(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWPROT),
        .M00_AXI_awqos(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWQOS),
        .M00_AXI_awready(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWREADY),
        .M00_AXI_awsize(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWSIZE),
        .M00_AXI_awuser(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWUSER),
        .M00_AXI_awvalid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWVALID),
        .M00_AXI_bid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BID),
        .M00_AXI_bready(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BREADY),
        .M00_AXI_bresp(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BRESP),
        .M00_AXI_buser(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BUSER),
        .M00_AXI_bvalid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BVALID),
        .M00_AXI_rdata(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RDATA),
        .M00_AXI_rid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RID),
        .M00_AXI_rlast(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RLAST),
        .M00_AXI_rready(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RREADY),
        .M00_AXI_rresp(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RRESP),
        .M00_AXI_ruser(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RUSER),
        .M00_AXI_rvalid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RVALID),
        .M00_AXI_wdata(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WDATA),
        .M00_AXI_wlast(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WLAST),
        .M00_AXI_wready(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WREADY),
        .M00_AXI_wstrb(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WSTRB),
        .M00_AXI_wuser(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WUSER),
        .M00_AXI_wvalid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WVALID),
        .S00_AXI1_araddr(connect_to_es_cu_M01_AXI_ARADDR),
        .S00_AXI1_arready(connect_to_es_cu_M01_AXI_ARREADY),
        .S00_AXI1_arvalid(connect_to_es_cu_M01_AXI_ARVALID),
        .S00_AXI1_awaddr(connect_to_es_cu_M01_AXI_AWADDR),
        .S00_AXI1_awready(connect_to_es_cu_M01_AXI_AWREADY),
        .S00_AXI1_awvalid(connect_to_es_cu_M01_AXI_AWVALID),
        .S00_AXI1_bready(connect_to_es_cu_M01_AXI_BREADY),
        .S00_AXI1_bresp(connect_to_es_cu_M01_AXI_BRESP),
        .S00_AXI1_bvalid(connect_to_es_cu_M01_AXI_BVALID),
        .S00_AXI1_rdata(connect_to_es_cu_M01_AXI_RDATA),
        .S00_AXI1_rready(connect_to_es_cu_M01_AXI_RREADY),
        .S00_AXI1_rresp(connect_to_es_cu_M01_AXI_RRESP),
        .S00_AXI1_rvalid(connect_to_es_cu_M01_AXI_RVALID),
        .S00_AXI1_wdata(connect_to_es_cu_M01_AXI_WDATA),
        .S00_AXI1_wready(connect_to_es_cu_M01_AXI_WREADY),
        .S00_AXI1_wstrb(connect_to_es_cu_M01_AXI_WSTRB),
        .S00_AXI1_wvalid(connect_to_es_cu_M01_AXI_WVALID),
        .S00_AXI_araddr(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARADDR),
        .S00_AXI_arburst(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARBURST),
        .S00_AXI_arcache(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARCACHE),
        .S00_AXI_arid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARID),
        .S00_AXI_arlen(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARLEN),
        .S00_AXI_arlock(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARLOCK),
        .S00_AXI_arprot(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARPROT),
        .S00_AXI_arqos(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARQOS),
        .S00_AXI_arready(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARREADY),
        .S00_AXI_arsize(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARSIZE),
        .S00_AXI_aruser(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARUSER),
        .S00_AXI_arvalid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARVALID),
        .S00_AXI_awaddr(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWADDR),
        .S00_AXI_awburst(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWBURST),
        .S00_AXI_awcache(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWCACHE),
        .S00_AXI_awid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWID),
        .S00_AXI_awlen(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWLEN),
        .S00_AXI_awlock(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWLOCK),
        .S00_AXI_awprot(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWPROT),
        .S00_AXI_awqos(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWQOS),
        .S00_AXI_awready(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWREADY),
        .S00_AXI_awsize(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWSIZE),
        .S00_AXI_awuser(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWUSER),
        .S00_AXI_awvalid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWVALID),
        .S00_AXI_bid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BID),
        .S00_AXI_bready(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BREADY),
        .S00_AXI_bresp(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BRESP),
        .S00_AXI_buser(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BUSER),
        .S00_AXI_bvalid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BVALID),
        .S00_AXI_rdata(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RDATA),
        .S00_AXI_rid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RID),
        .S00_AXI_rlast(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RLAST),
        .S00_AXI_rready(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RREADY),
        .S00_AXI_rresp(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RRESP),
        .S00_AXI_ruser(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RUSER),
        .S00_AXI_rvalid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RVALID),
        .S00_AXI_wdata(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WDATA),
        .S00_AXI_wlast(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WLAST),
        .S00_AXI_wready(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WREADY),
        .S00_AXI_wstrb(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WSTRB),
        .S00_AXI_wuser(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WUSER),
        .S00_AXI_wvalid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WVALID),
        .ddr_default_clk_0(ui_clk_clk),
        .ddr_default_rst_0(ui_clk_sync_rst),
        .dma_pcie_aclk(slowest_sync_clk_1_1),
        .dma_pcie_arst(ext_reset_in_1_1),
        .ext_reset_in(ext_reset_in_0_1),
        .ext_reset_in1(ext_reset_in_2_1),
        .slowest_sync_clk(slowest_sync_clk_0_1),
        .slowest_sync_clk1(slowest_sync_clk_2_1));
  slr1_imp_IZT2WG slr1
       (.M00_AXI1_araddr(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARADDR),
        .M00_AXI1_arburst(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARBURST),
        .M00_AXI1_arcache(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARCACHE),
        .M00_AXI1_arid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARID),
        .M00_AXI1_arlen(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARLEN),
        .M00_AXI1_arlock(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARLOCK),
        .M00_AXI1_arprot(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARPROT),
        .M00_AXI1_arqos(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARQOS),
        .M00_AXI1_arready(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARREADY),
        .M00_AXI1_arsize(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARSIZE),
        .M00_AXI1_aruser(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARUSER),
        .M00_AXI1_arvalid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARVALID),
        .M00_AXI1_awaddr(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWADDR),
        .M00_AXI1_awburst(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWBURST),
        .M00_AXI1_awcache(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWCACHE),
        .M00_AXI1_awid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWID),
        .M00_AXI1_awlen(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWLEN),
        .M00_AXI1_awlock(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWLOCK),
        .M00_AXI1_awprot(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWPROT),
        .M00_AXI1_awqos(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWQOS),
        .M00_AXI1_awready(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWREADY),
        .M00_AXI1_awsize(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWSIZE),
        .M00_AXI1_awuser(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWUSER),
        .M00_AXI1_awvalid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWVALID),
        .M00_AXI1_bid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BID),
        .M00_AXI1_bready(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BREADY),
        .M00_AXI1_bresp(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BRESP),
        .M00_AXI1_buser(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BUSER),
        .M00_AXI1_bvalid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BVALID),
        .M00_AXI1_rdata(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RDATA),
        .M00_AXI1_rid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RID),
        .M00_AXI1_rlast(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RLAST),
        .M00_AXI1_rready(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RREADY),
        .M00_AXI1_rresp(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RRESP),
        .M00_AXI1_ruser(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RUSER),
        .M00_AXI1_rvalid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RVALID),
        .M00_AXI1_wdata(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WDATA),
        .M00_AXI1_wlast(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WLAST),
        .M00_AXI1_wready(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WREADY),
        .M00_AXI1_wstrb(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WSTRB),
        .M00_AXI1_wuser(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WUSER),
        .M00_AXI1_wvalid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WVALID),
        .M00_AXI2_araddr(S00_AXI_1_ARADDR),
        .M00_AXI2_arprot(S00_AXI_1_ARPROT),
        .M00_AXI2_arready(S00_AXI_1_ARREADY),
        .M00_AXI2_arvalid(S00_AXI_1_ARVALID),
        .M00_AXI2_awaddr(S00_AXI_1_AWADDR),
        .M00_AXI2_awprot(S00_AXI_1_AWPROT),
        .M00_AXI2_awready(S00_AXI_1_AWREADY),
        .M00_AXI2_awvalid(S00_AXI_1_AWVALID),
        .M00_AXI2_bready(S00_AXI_1_BREADY),
        .M00_AXI2_bresp(S00_AXI_1_BRESP),
        .M00_AXI2_bvalid(S00_AXI_1_BVALID),
        .M00_AXI2_rdata(S00_AXI_1_RDATA),
        .M00_AXI2_rready(S00_AXI_1_RREADY),
        .M00_AXI2_rresp(S00_AXI_1_RRESP),
        .M00_AXI2_rvalid(S00_AXI_1_RVALID),
        .M00_AXI2_wdata(S00_AXI_1_WDATA),
        .M00_AXI2_wready(S00_AXI_1_WREADY),
        .M00_AXI2_wstrb(S00_AXI_1_WSTRB),
        .M00_AXI2_wvalid(S00_AXI_1_WVALID),
        .M00_AXI_araddr(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARADDR),
        .M00_AXI_arburst(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARBURST),
        .M00_AXI_arcache(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARCACHE),
        .M00_AXI_arid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARID),
        .M00_AXI_arlen(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARLEN),
        .M00_AXI_arlock(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARLOCK),
        .M00_AXI_arprot(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARPROT),
        .M00_AXI_arqos(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARQOS),
        .M00_AXI_arready(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARREADY),
        .M00_AXI_arsize(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARSIZE),
        .M00_AXI_aruser(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARUSER),
        .M00_AXI_arvalid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARVALID),
        .M00_AXI_awaddr(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWADDR),
        .M00_AXI_awburst(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWBURST),
        .M00_AXI_awcache(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWCACHE),
        .M00_AXI_awid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWID),
        .M00_AXI_awlen(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWLEN),
        .M00_AXI_awlock(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWLOCK),
        .M00_AXI_awprot(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWPROT),
        .M00_AXI_awqos(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWQOS),
        .M00_AXI_awready(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWREADY),
        .M00_AXI_awsize(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWSIZE),
        .M00_AXI_awuser(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWUSER),
        .M00_AXI_awvalid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWVALID),
        .M00_AXI_bid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BID),
        .M00_AXI_bready(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BREADY),
        .M00_AXI_bresp(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BRESP),
        .M00_AXI_buser(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BUSER),
        .M00_AXI_bvalid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BVALID),
        .M00_AXI_rdata(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RDATA),
        .M00_AXI_rid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RID),
        .M00_AXI_rlast(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RLAST),
        .M00_AXI_rready(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RREADY),
        .M00_AXI_rresp(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RRESP),
        .M00_AXI_ruser(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RUSER),
        .M00_AXI_rvalid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RVALID),
        .M00_AXI_wdata(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WDATA),
        .M00_AXI_wlast(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WLAST),
        .M00_AXI_wready(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WREADY),
        .M00_AXI_wstrb(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WSTRB),
        .M00_AXI_wuser(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WUSER),
        .M00_AXI_wvalid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WVALID),
        .M01_AXI_araddr(slr1_M01_AXI_ARADDR),
        .M01_AXI_arprot(slr1_M01_AXI_ARPROT),
        .M01_AXI_arready(slr1_M01_AXI_ARREADY),
        .M01_AXI_arvalid(slr1_M01_AXI_ARVALID),
        .M01_AXI_awaddr(slr1_M01_AXI_AWADDR),
        .M01_AXI_awprot(slr1_M01_AXI_AWPROT),
        .M01_AXI_awready(slr1_M01_AXI_AWREADY),
        .M01_AXI_awvalid(slr1_M01_AXI_AWVALID),
        .M01_AXI_bready(slr1_M01_AXI_BREADY),
        .M01_AXI_bresp(slr1_M01_AXI_BRESP),
        .M01_AXI_bvalid(slr1_M01_AXI_BVALID),
        .M01_AXI_rdata(slr1_M01_AXI_RDATA),
        .M01_AXI_rready(slr1_M01_AXI_RREADY),
        .M01_AXI_rresp(slr1_M01_AXI_RRESP),
        .M01_AXI_rvalid(slr1_M01_AXI_RVALID),
        .M01_AXI_wdata(slr1_M01_AXI_WDATA),
        .M01_AXI_wready(slr1_M01_AXI_WREADY),
        .M01_AXI_wstrb(slr1_M01_AXI_WSTRB),
        .M01_AXI_wvalid(slr1_M01_AXI_WVALID),
        .S00_AXI1_araddr(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARADDR),
        .S00_AXI1_arburst(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARBURST),
        .S00_AXI1_arcache(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARCACHE),
        .S00_AXI1_arid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARID),
        .S00_AXI1_arlen(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARLEN),
        .S00_AXI1_arlock(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARLOCK),
        .S00_AXI1_arprot(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARPROT),
        .S00_AXI1_arqos(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARQOS),
        .S00_AXI1_arready(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARREADY),
        .S00_AXI1_arsize(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARSIZE),
        .S00_AXI1_aruser(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARUSER),
        .S00_AXI1_arvalid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARVALID),
        .S00_AXI1_awaddr(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWADDR),
        .S00_AXI1_awburst(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWBURST),
        .S00_AXI1_awcache(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWCACHE),
        .S00_AXI1_awid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWID),
        .S00_AXI1_awlen(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWLEN),
        .S00_AXI1_awlock(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWLOCK),
        .S00_AXI1_awprot(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWPROT),
        .S00_AXI1_awqos(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWQOS),
        .S00_AXI1_awready(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWREADY),
        .S00_AXI1_awsize(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWSIZE),
        .S00_AXI1_awuser(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWUSER),
        .S00_AXI1_awvalid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWVALID),
        .S00_AXI1_bid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BID),
        .S00_AXI1_bready(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BREADY),
        .S00_AXI1_bresp(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BRESP),
        .S00_AXI1_buser(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BUSER),
        .S00_AXI1_bvalid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BVALID),
        .S00_AXI1_rdata(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RDATA),
        .S00_AXI1_rid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RID),
        .S00_AXI1_rlast(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RLAST),
        .S00_AXI1_rready(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RREADY),
        .S00_AXI1_rresp(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RRESP),
        .S00_AXI1_ruser(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RUSER),
        .S00_AXI1_rvalid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RVALID),
        .S00_AXI1_wdata(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WDATA),
        .S00_AXI1_wlast(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WLAST),
        .S00_AXI1_wready(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WREADY),
        .S00_AXI1_wstrb(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WSTRB),
        .S00_AXI1_wuser(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WUSER),
        .S00_AXI1_wvalid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WVALID),
        .S00_AXI2_araddr(connect_to_es_cu_M02_AXI_ARADDR),
        .S00_AXI2_arprot(connect_to_es_cu_M02_AXI_ARPROT),
        .S00_AXI2_arready(connect_to_es_cu_M02_AXI_ARREADY),
        .S00_AXI2_arvalid(connect_to_es_cu_M02_AXI_ARVALID),
        .S00_AXI2_awaddr(connect_to_es_cu_M02_AXI_AWADDR),
        .S00_AXI2_awprot(connect_to_es_cu_M02_AXI_AWPROT),
        .S00_AXI2_awready(connect_to_es_cu_M02_AXI_AWREADY),
        .S00_AXI2_awvalid(connect_to_es_cu_M02_AXI_AWVALID),
        .S00_AXI2_bready(connect_to_es_cu_M02_AXI_BREADY),
        .S00_AXI2_bresp(connect_to_es_cu_M02_AXI_BRESP),
        .S00_AXI2_bvalid(connect_to_es_cu_M02_AXI_BVALID),
        .S00_AXI2_rdata(connect_to_es_cu_M02_AXI_RDATA),
        .S00_AXI2_rready(connect_to_es_cu_M02_AXI_RREADY),
        .S00_AXI2_rresp(connect_to_es_cu_M02_AXI_RRESP),
        .S00_AXI2_rvalid(connect_to_es_cu_M02_AXI_RVALID),
        .S00_AXI2_wdata(connect_to_es_cu_M02_AXI_WDATA),
        .S00_AXI2_wready(connect_to_es_cu_M02_AXI_WREADY),
        .S00_AXI2_wstrb(connect_to_es_cu_M02_AXI_WSTRB),
        .S00_AXI2_wvalid(connect_to_es_cu_M02_AXI_WVALID),
        .S00_AXI_araddr(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARADDR),
        .S00_AXI_arburst(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARBURST),
        .S00_AXI_arcache(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARCACHE),
        .S00_AXI_arid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARID),
        .S00_AXI_arlen(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARLEN),
        .S00_AXI_arlock(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARLOCK),
        .S00_AXI_arprot(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARPROT),
        .S00_AXI_arqos(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARQOS),
        .S00_AXI_arready(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARREADY),
        .S00_AXI_arsize(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARSIZE),
        .S00_AXI_aruser(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARUSER),
        .S00_AXI_arvalid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARVALID),
        .S00_AXI_awaddr(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWADDR),
        .S00_AXI_awburst(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWBURST),
        .S00_AXI_awcache(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWCACHE),
        .S00_AXI_awid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWID),
        .S00_AXI_awlen(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWLEN),
        .S00_AXI_awlock(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWLOCK),
        .S00_AXI_awprot(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWPROT),
        .S00_AXI_awqos(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWQOS),
        .S00_AXI_awready(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWREADY),
        .S00_AXI_awsize(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWSIZE),
        .S00_AXI_awuser(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWUSER),
        .S00_AXI_awvalid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWVALID),
        .S00_AXI_bid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BID),
        .S00_AXI_bready(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BREADY),
        .S00_AXI_bresp(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BRESP),
        .S00_AXI_buser(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BUSER),
        .S00_AXI_bvalid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BVALID),
        .S00_AXI_rdata(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RDATA),
        .S00_AXI_rid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RID),
        .S00_AXI_rlast(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RLAST),
        .S00_AXI_rready(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RREADY),
        .S00_AXI_rresp(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RRESP),
        .S00_AXI_ruser(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RUSER),
        .S00_AXI_rvalid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RVALID),
        .S00_AXI_wdata(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WDATA),
        .S00_AXI_wlast(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WLAST),
        .S00_AXI_wready(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WREADY),
        .S00_AXI_wstrb(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WSTRB),
        .S00_AXI_wuser(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WUSER),
        .S00_AXI_wvalid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WVALID),
        .ddr_default_clk_0(ui_clk_clk),
        .ddr_default_rst_0(ui_clk_sync_rst),
        .dma_pcie_aclk(slowest_sync_clk_1_1),
        .dma_pcie_arst(ext_reset_in_1_1),
        .ext_reset_in(ext_reset_in_0_1),
        .ext_reset_in1(ext_reset_in_2_1),
        .peripheral_aresetn(slr1_peripheral_aresetn),
        .slowest_sync_clk(slowest_sync_clk_0_1),
        .slowest_sync_clk1(slowest_sync_clk_2_1));
  slr2_imp_EEMOLC slr2
       (.M00_AXI_araddr(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARADDR),
        .M00_AXI_arburst(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARBURST),
        .M00_AXI_arcache(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARCACHE),
        .M00_AXI_arid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARID),
        .M00_AXI_arlen(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARLEN),
        .M00_AXI_arlock(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARLOCK),
        .M00_AXI_arprot(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARPROT),
        .M00_AXI_arqos(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARQOS),
        .M00_AXI_arready(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARREADY),
        .M00_AXI_arsize(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARSIZE),
        .M00_AXI_aruser(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARUSER),
        .M00_AXI_arvalid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARVALID),
        .M00_AXI_awaddr(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWADDR),
        .M00_AXI_awburst(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWBURST),
        .M00_AXI_awcache(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWCACHE),
        .M00_AXI_awid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWID),
        .M00_AXI_awlen(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWLEN),
        .M00_AXI_awlock(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWLOCK),
        .M00_AXI_awprot(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWPROT),
        .M00_AXI_awqos(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWQOS),
        .M00_AXI_awready(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWREADY),
        .M00_AXI_awsize(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWSIZE),
        .M00_AXI_awuser(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWUSER),
        .M00_AXI_awvalid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWVALID),
        .M00_AXI_bid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BID),
        .M00_AXI_bready(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BREADY),
        .M00_AXI_bresp(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BRESP),
        .M00_AXI_buser(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BUSER),
        .M00_AXI_bvalid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BVALID),
        .M00_AXI_rdata(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RDATA),
        .M00_AXI_rid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RID),
        .M00_AXI_rlast(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RLAST),
        .M00_AXI_rready(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RREADY),
        .M00_AXI_rresp(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RRESP),
        .M00_AXI_ruser(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RUSER),
        .M00_AXI_rvalid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RVALID),
        .M00_AXI_wdata(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WDATA),
        .M00_AXI_wlast(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WLAST),
        .M00_AXI_wready(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WREADY),
        .M00_AXI_wstrb(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WSTRB),
        .M00_AXI_wuser(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WUSER),
        .M00_AXI_wvalid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WVALID),
        .S00_AXI1_araddr(connect_to_es_cu_M03_AXI_ARADDR),
        .S00_AXI1_arready(connect_to_es_cu_M03_AXI_ARREADY),
        .S00_AXI1_arvalid(connect_to_es_cu_M03_AXI_ARVALID),
        .S00_AXI1_awaddr(connect_to_es_cu_M03_AXI_AWADDR),
        .S00_AXI1_awready(connect_to_es_cu_M03_AXI_AWREADY),
        .S00_AXI1_awvalid(connect_to_es_cu_M03_AXI_AWVALID),
        .S00_AXI1_bready(connect_to_es_cu_M03_AXI_BREADY),
        .S00_AXI1_bresp(connect_to_es_cu_M03_AXI_BRESP),
        .S00_AXI1_bvalid(connect_to_es_cu_M03_AXI_BVALID),
        .S00_AXI1_rdata(connect_to_es_cu_M03_AXI_RDATA),
        .S00_AXI1_rready(connect_to_es_cu_M03_AXI_RREADY),
        .S00_AXI1_rresp(connect_to_es_cu_M03_AXI_RRESP),
        .S00_AXI1_rvalid(connect_to_es_cu_M03_AXI_RVALID),
        .S00_AXI1_wdata(connect_to_es_cu_M03_AXI_WDATA),
        .S00_AXI1_wready(connect_to_es_cu_M03_AXI_WREADY),
        .S00_AXI1_wstrb(connect_to_es_cu_M03_AXI_WSTRB),
        .S00_AXI1_wvalid(connect_to_es_cu_M03_AXI_WVALID),
        .S00_AXI_araddr(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARADDR),
        .S00_AXI_arburst(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARBURST),
        .S00_AXI_arcache(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARCACHE),
        .S00_AXI_arid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARID),
        .S00_AXI_arlen(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARLEN),
        .S00_AXI_arlock(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARLOCK),
        .S00_AXI_arprot(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARPROT),
        .S00_AXI_arqos(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARQOS),
        .S00_AXI_arready(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARREADY),
        .S00_AXI_arsize(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARSIZE),
        .S00_AXI_aruser(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARUSER),
        .S00_AXI_arvalid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARVALID),
        .S00_AXI_awaddr(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWADDR),
        .S00_AXI_awburst(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWBURST),
        .S00_AXI_awcache(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWCACHE),
        .S00_AXI_awid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWID),
        .S00_AXI_awlen(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWLEN),
        .S00_AXI_awlock(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWLOCK),
        .S00_AXI_awprot(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWPROT),
        .S00_AXI_awqos(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWQOS),
        .S00_AXI_awready(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWREADY),
        .S00_AXI_awsize(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWSIZE),
        .S00_AXI_awuser(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWUSER),
        .S00_AXI_awvalid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWVALID),
        .S00_AXI_bid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BID),
        .S00_AXI_bready(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BREADY),
        .S00_AXI_bresp(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BRESP),
        .S00_AXI_buser(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BUSER),
        .S00_AXI_bvalid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BVALID),
        .S00_AXI_rdata(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RDATA),
        .S00_AXI_rid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RID),
        .S00_AXI_rlast(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RLAST),
        .S00_AXI_rready(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RREADY),
        .S00_AXI_rresp(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RRESP),
        .S00_AXI_ruser(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RUSER),
        .S00_AXI_rvalid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RVALID),
        .S00_AXI_wdata(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WDATA),
        .S00_AXI_wlast(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WLAST),
        .S00_AXI_wready(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WREADY),
        .S00_AXI_wstrb(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WSTRB),
        .S00_AXI_wuser(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WUSER),
        .S00_AXI_wvalid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WVALID),
        .ddr_default_clk_0(ui_clk_clk),
        .ddr_default_rst_0(ui_clk_sync_rst),
        .dma_pcie_aclk(slowest_sync_clk_1_1),
        .dma_pcie_arst(ext_reset_in_1_1),
        .ext_reset_in(ext_reset_in_0_1),
        .ext_reset_in1(ext_reset_in_2_1),
        .slowest_sync_clk(slowest_sync_clk_0_1),
        .slowest_sync_clk1(slowest_sync_clk_2_1));
  pfm_dynamic_user_slr_icn_0 user_slr_icn
       (.ACLK(slowest_sync_clk_1_1),
        .ARESETN(ext_reset_in_1_1),
        .M00_ACLK(slowest_sync_clk_1_1),
        .M00_ARESETN(ext_reset_in_1_1),
        .M00_AXI_araddr(connect_to_es_cu_M01_AXI_ARADDR),
        .M00_AXI_arready(connect_to_es_cu_M01_AXI_ARREADY),
        .M00_AXI_arvalid(connect_to_es_cu_M01_AXI_ARVALID),
        .M00_AXI_awaddr(connect_to_es_cu_M01_AXI_AWADDR),
        .M00_AXI_awready(connect_to_es_cu_M01_AXI_AWREADY),
        .M00_AXI_awvalid(connect_to_es_cu_M01_AXI_AWVALID),
        .M00_AXI_bready(connect_to_es_cu_M01_AXI_BREADY),
        .M00_AXI_bresp(connect_to_es_cu_M01_AXI_BRESP),
        .M00_AXI_bvalid(connect_to_es_cu_M01_AXI_BVALID),
        .M00_AXI_rdata(connect_to_es_cu_M01_AXI_RDATA),
        .M00_AXI_rready(connect_to_es_cu_M01_AXI_RREADY),
        .M00_AXI_rresp(connect_to_es_cu_M01_AXI_RRESP),
        .M00_AXI_rvalid(connect_to_es_cu_M01_AXI_RVALID),
        .M00_AXI_wdata(connect_to_es_cu_M01_AXI_WDATA),
        .M00_AXI_wready(connect_to_es_cu_M01_AXI_WREADY),
        .M00_AXI_wstrb(connect_to_es_cu_M01_AXI_WSTRB),
        .M00_AXI_wvalid(connect_to_es_cu_M01_AXI_WVALID),
        .M01_ACLK(slowest_sync_clk_1_1),
        .M01_ARESETN(ext_reset_in_1_1),
        .M01_AXI_araddr(connect_to_es_cu_M02_AXI_ARADDR),
        .M01_AXI_arprot(connect_to_es_cu_M02_AXI_ARPROT),
        .M01_AXI_arready(connect_to_es_cu_M02_AXI_ARREADY),
        .M01_AXI_arvalid(connect_to_es_cu_M02_AXI_ARVALID),
        .M01_AXI_awaddr(connect_to_es_cu_M02_AXI_AWADDR),
        .M01_AXI_awprot(connect_to_es_cu_M02_AXI_AWPROT),
        .M01_AXI_awready(connect_to_es_cu_M02_AXI_AWREADY),
        .M01_AXI_awvalid(connect_to_es_cu_M02_AXI_AWVALID),
        .M01_AXI_bready(connect_to_es_cu_M02_AXI_BREADY),
        .M01_AXI_bresp(connect_to_es_cu_M02_AXI_BRESP),
        .M01_AXI_bvalid(connect_to_es_cu_M02_AXI_BVALID),
        .M01_AXI_rdata(connect_to_es_cu_M02_AXI_RDATA),
        .M01_AXI_rready(connect_to_es_cu_M02_AXI_RREADY),
        .M01_AXI_rresp(connect_to_es_cu_M02_AXI_RRESP),
        .M01_AXI_rvalid(connect_to_es_cu_M02_AXI_RVALID),
        .M01_AXI_wdata(connect_to_es_cu_M02_AXI_WDATA),
        .M01_AXI_wready(connect_to_es_cu_M02_AXI_WREADY),
        .M01_AXI_wstrb(connect_to_es_cu_M02_AXI_WSTRB),
        .M01_AXI_wvalid(connect_to_es_cu_M02_AXI_WVALID),
        .M02_ACLK(slowest_sync_clk_1_1),
        .M02_ARESETN(ext_reset_in_1_1),
        .M02_AXI_araddr(connect_to_es_cu_M03_AXI_ARADDR),
        .M02_AXI_arready(connect_to_es_cu_M03_AXI_ARREADY),
        .M02_AXI_arvalid(connect_to_es_cu_M03_AXI_ARVALID),
        .M02_AXI_awaddr(connect_to_es_cu_M03_AXI_AWADDR),
        .M02_AXI_awready(connect_to_es_cu_M03_AXI_AWREADY),
        .M02_AXI_awvalid(connect_to_es_cu_M03_AXI_AWVALID),
        .M02_AXI_bready(connect_to_es_cu_M03_AXI_BREADY),
        .M02_AXI_bresp(connect_to_es_cu_M03_AXI_BRESP),
        .M02_AXI_bvalid(connect_to_es_cu_M03_AXI_BVALID),
        .M02_AXI_rdata(connect_to_es_cu_M03_AXI_RDATA),
        .M02_AXI_rready(connect_to_es_cu_M03_AXI_RREADY),
        .M02_AXI_rresp(connect_to_es_cu_M03_AXI_RRESP),
        .M02_AXI_rvalid(connect_to_es_cu_M03_AXI_RVALID),
        .M02_AXI_wdata(connect_to_es_cu_M03_AXI_WDATA),
        .M02_AXI_wready(connect_to_es_cu_M03_AXI_WREADY),
        .M02_AXI_wstrb(connect_to_es_cu_M03_AXI_WSTRB),
        .M02_AXI_wvalid(connect_to_es_cu_M03_AXI_WVALID),
        .S00_ACLK(slowest_sync_clk_1_1),
        .S00_ARESETN(ext_reset_in_1_1),
        .S00_AXI_araddr(user_slr_icn_slave_ARADDR),
        .S00_AXI_arprot(user_slr_icn_slave_ARPROT),
        .S00_AXI_arready(user_slr_icn_slave_ARREADY),
        .S00_AXI_arvalid(user_slr_icn_slave_ARVALID),
        .S00_AXI_awaddr(user_slr_icn_slave_AWADDR),
        .S00_AXI_awprot(user_slr_icn_slave_AWPROT),
        .S00_AXI_awready(user_slr_icn_slave_AWREADY),
        .S00_AXI_awvalid(user_slr_icn_slave_AWVALID),
        .S00_AXI_bready(user_slr_icn_slave_BREADY),
        .S00_AXI_bresp(user_slr_icn_slave_BRESP),
        .S00_AXI_bvalid(user_slr_icn_slave_BVALID),
        .S00_AXI_rdata(user_slr_icn_slave_RDATA),
        .S00_AXI_rready(user_slr_icn_slave_RREADY),
        .S00_AXI_rresp(user_slr_icn_slave_RRESP),
        .S00_AXI_rvalid(user_slr_icn_slave_RVALID),
        .S00_AXI_wdata(user_slr_icn_slave_WDATA),
        .S00_AXI_wready(user_slr_icn_slave_WREADY),
        .S00_AXI_wstrb(user_slr_icn_slave_WSTRB),
        .S00_AXI_wvalid(user_slr_icn_slave_WVALID));
  pfm_dynamic_xtlm_simple_intercon_0_0 xtlm_simple_intercon_0
       (.m00_axi_aclk(ui_clk_clk),
        .m00_axi_araddr(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARADDR),
        .m00_axi_arburst(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARBURST),
        .m00_axi_arcache(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARCACHE),
        .m00_axi_aresetn(ui_clk_sync_rst),
        .m00_axi_arid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARID),
        .m00_axi_arlen(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARLEN),
        .m00_axi_arlock(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARLOCK),
        .m00_axi_arprot(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARPROT),
        .m00_axi_arqos(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARQOS),
        .m00_axi_arready(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARREADY),
        .m00_axi_arsize(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARSIZE),
        .m00_axi_aruser(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARUSER),
        .m00_axi_arvalid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARVALID),
        .m00_axi_awaddr(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWADDR),
        .m00_axi_awburst(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWBURST),
        .m00_axi_awcache(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWCACHE),
        .m00_axi_awid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWID),
        .m00_axi_awlen(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWLEN),
        .m00_axi_awlock(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWLOCK),
        .m00_axi_awprot(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWPROT),
        .m00_axi_awqos(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWQOS),
        .m00_axi_awready(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWREADY),
        .m00_axi_awsize(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWSIZE),
        .m00_axi_awuser(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWUSER),
        .m00_axi_awvalid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWVALID),
        .m00_axi_bid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BID),
        .m00_axi_bready(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BREADY),
        .m00_axi_bresp(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BRESP),
        .m00_axi_buser(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BUSER),
        .m00_axi_bvalid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BVALID),
        .m00_axi_rdata(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RDATA),
        .m00_axi_rid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RID),
        .m00_axi_rlast(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RLAST),
        .m00_axi_rready(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RREADY),
        .m00_axi_rresp(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RRESP),
        .m00_axi_ruser(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RUSER),
        .m00_axi_rvalid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RVALID),
        .m00_axi_wdata(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WDATA),
        .m00_axi_wlast(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WLAST),
        .m00_axi_wready(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WREADY),
        .m00_axi_wstrb(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WSTRB),
        .m00_axi_wuser(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WUSER),
        .m00_axi_wvalid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WVALID),
        .m01_axi_aclk(ui_clk_clk),
        .m01_axi_araddr(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARADDR),
        .m01_axi_arburst(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARBURST),
        .m01_axi_arcache(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARCACHE),
        .m01_axi_aresetn(ui_clk_sync_rst),
        .m01_axi_arid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARID),
        .m01_axi_arlen(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARLEN),
        .m01_axi_arlock(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARLOCK),
        .m01_axi_arprot(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARPROT),
        .m01_axi_arqos(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARQOS),
        .m01_axi_arready(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARREADY),
        .m01_axi_arsize(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARSIZE),
        .m01_axi_aruser(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARUSER),
        .m01_axi_arvalid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARVALID),
        .m01_axi_awaddr(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWADDR),
        .m01_axi_awburst(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWBURST),
        .m01_axi_awcache(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWCACHE),
        .m01_axi_awid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWID),
        .m01_axi_awlen(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWLEN),
        .m01_axi_awlock(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWLOCK),
        .m01_axi_awprot(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWPROT),
        .m01_axi_awqos(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWQOS),
        .m01_axi_awready(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWREADY),
        .m01_axi_awsize(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWSIZE),
        .m01_axi_awuser(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWUSER),
        .m01_axi_awvalid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWVALID),
        .m01_axi_bid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BID),
        .m01_axi_bready(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BREADY),
        .m01_axi_bresp(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BRESP),
        .m01_axi_buser(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BUSER),
        .m01_axi_bvalid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BVALID),
        .m01_axi_rdata(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RDATA),
        .m01_axi_rid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RID),
        .m01_axi_rlast(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RLAST),
        .m01_axi_rready(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RREADY),
        .m01_axi_rresp(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RRESP),
        .m01_axi_ruser(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RUSER),
        .m01_axi_rvalid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RVALID),
        .m01_axi_wdata(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WDATA),
        .m01_axi_wlast(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WLAST),
        .m01_axi_wready(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WREADY),
        .m01_axi_wstrb(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WSTRB),
        .m01_axi_wuser(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WUSER),
        .m01_axi_wvalid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WVALID),
        .m02_axi_aclk(ui_clk_clk),
        .m02_axi_araddr(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARADDR),
        .m02_axi_arburst(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARBURST),
        .m02_axi_arcache(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARCACHE),
        .m02_axi_aresetn(ui_clk_sync_rst),
        .m02_axi_arid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARID),
        .m02_axi_arlen(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARLEN),
        .m02_axi_arlock(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARLOCK),
        .m02_axi_arprot(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARPROT),
        .m02_axi_arqos(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARQOS),
        .m02_axi_arready(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARREADY),
        .m02_axi_arsize(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARSIZE),
        .m02_axi_aruser(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARUSER),
        .m02_axi_arvalid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARVALID),
        .m02_axi_awaddr(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWADDR),
        .m02_axi_awburst(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWBURST),
        .m02_axi_awcache(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWCACHE),
        .m02_axi_awid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWID),
        .m02_axi_awlen(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWLEN),
        .m02_axi_awlock(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWLOCK),
        .m02_axi_awprot(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWPROT),
        .m02_axi_awqos(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWQOS),
        .m02_axi_awready(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWREADY),
        .m02_axi_awsize(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWSIZE),
        .m02_axi_awuser(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWUSER),
        .m02_axi_awvalid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWVALID),
        .m02_axi_bid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BID),
        .m02_axi_bready(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BREADY),
        .m02_axi_bresp(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BRESP),
        .m02_axi_buser(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BUSER),
        .m02_axi_bvalid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BVALID),
        .m02_axi_rdata(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RDATA),
        .m02_axi_rid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RID),
        .m02_axi_rlast(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RLAST),
        .m02_axi_rready(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RREADY),
        .m02_axi_rresp(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RRESP),
        .m02_axi_ruser(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RUSER),
        .m02_axi_rvalid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RVALID),
        .m02_axi_wdata(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WDATA),
        .m02_axi_wlast(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WLAST),
        .m02_axi_wready(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WREADY),
        .m02_axi_wstrb(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WSTRB),
        .m02_axi_wuser(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WUSER),
        .m02_axi_wvalid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WVALID),
        .m03_axi_aclk(ui_clk_clk),
        .m03_axi_araddr(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARADDR),
        .m03_axi_arburst(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARBURST),
        .m03_axi_arcache(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARCACHE),
        .m03_axi_aresetn(ui_clk_sync_rst),
        .m03_axi_arid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARID),
        .m03_axi_arlen(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARLEN),
        .m03_axi_arlock(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARLOCK),
        .m03_axi_arprot(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARPROT),
        .m03_axi_arqos(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARQOS),
        .m03_axi_arready(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARREADY),
        .m03_axi_arsize(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARSIZE),
        .m03_axi_aruser(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARUSER),
        .m03_axi_arvalid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARVALID),
        .m03_axi_awaddr(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWADDR),
        .m03_axi_awburst(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWBURST),
        .m03_axi_awcache(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWCACHE),
        .m03_axi_awid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWID),
        .m03_axi_awlen(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWLEN),
        .m03_axi_awlock(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWLOCK),
        .m03_axi_awprot(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWPROT),
        .m03_axi_awqos(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWQOS),
        .m03_axi_awready(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWREADY),
        .m03_axi_awsize(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWSIZE),
        .m03_axi_awuser(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWUSER),
        .m03_axi_awvalid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWVALID),
        .m03_axi_bid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BID),
        .m03_axi_bready(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BREADY),
        .m03_axi_bresp(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BRESP),
        .m03_axi_buser(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BUSER),
        .m03_axi_bvalid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BVALID),
        .m03_axi_rdata(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RDATA),
        .m03_axi_rid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RID),
        .m03_axi_rlast(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RLAST),
        .m03_axi_rready(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RREADY),
        .m03_axi_rresp(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RRESP),
        .m03_axi_ruser(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RUSER),
        .m03_axi_rvalid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RVALID),
        .m03_axi_wdata(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WDATA),
        .m03_axi_wlast(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WLAST),
        .m03_axi_wready(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WREADY),
        .m03_axi_wstrb(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WSTRB),
        .m03_axi_wuser(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WUSER),
        .m03_axi_wvalid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WVALID),
        .m04_axi_aclk(slowest_sync_clk_1_1),
        .m04_axi_araddr(xtlm_simple_intercon_0_M04_AXI_ARADDR),
        .m04_axi_arburst(xtlm_simple_intercon_0_M04_AXI_ARBURST),
        .m04_axi_aresetn(ext_reset_in_1_1),
        .m04_axi_arid(xtlm_simple_intercon_0_M04_AXI_ARID),
        .m04_axi_arlen(xtlm_simple_intercon_0_M04_AXI_ARLEN),
        .m04_axi_arready(xtlm_simple_intercon_0_M04_AXI_ARREADY),
        .m04_axi_arsize(xtlm_simple_intercon_0_M04_AXI_ARSIZE),
        .m04_axi_arvalid(xtlm_simple_intercon_0_M04_AXI_ARVALID),
        .m04_axi_awaddr(xtlm_simple_intercon_0_M04_AXI_AWADDR),
        .m04_axi_awburst(xtlm_simple_intercon_0_M04_AXI_AWBURST),
        .m04_axi_awid(xtlm_simple_intercon_0_M04_AXI_AWID),
        .m04_axi_awlen(xtlm_simple_intercon_0_M04_AXI_AWLEN),
        .m04_axi_awready(xtlm_simple_intercon_0_M04_AXI_AWREADY),
        .m04_axi_awsize(xtlm_simple_intercon_0_M04_AXI_AWSIZE),
        .m04_axi_awvalid(xtlm_simple_intercon_0_M04_AXI_AWVALID),
        .m04_axi_bid(xtlm_simple_intercon_0_M04_AXI_BID),
        .m04_axi_bready(xtlm_simple_intercon_0_M04_AXI_BREADY),
        .m04_axi_bresp(xtlm_simple_intercon_0_M04_AXI_BRESP),
        .m04_axi_buser(1'b0),
        .m04_axi_bvalid(xtlm_simple_intercon_0_M04_AXI_BVALID),
        .m04_axi_rdata(xtlm_simple_intercon_0_M04_AXI_RDATA),
        .m04_axi_rid(xtlm_simple_intercon_0_M04_AXI_RID),
        .m04_axi_rlast(xtlm_simple_intercon_0_M04_AXI_RLAST),
        .m04_axi_rready(xtlm_simple_intercon_0_M04_AXI_RREADY),
        .m04_axi_rresp(xtlm_simple_intercon_0_M04_AXI_RRESP),
        .m04_axi_ruser(1'b0),
        .m04_axi_rvalid(xtlm_simple_intercon_0_M04_AXI_RVALID),
        .m04_axi_wdata(xtlm_simple_intercon_0_M04_AXI_WDATA),
        .m04_axi_wlast(xtlm_simple_intercon_0_M04_AXI_WLAST),
        .m04_axi_wready(xtlm_simple_intercon_0_M04_AXI_WREADY),
        .m04_axi_wstrb(xtlm_simple_intercon_0_M04_AXI_WSTRB),
        .m04_axi_wvalid(xtlm_simple_intercon_0_M04_AXI_WVALID),
        .s00_axi_aclk(slowest_sync_clk_1_1),
        .s00_axi_araddr(static_region_data_M_AXI_0_ARADDR),
        .s00_axi_arburst(static_region_data_M_AXI_0_ARBURST),
        .s00_axi_arcache(static_region_data_M_AXI_0_ARCACHE),
        .s00_axi_aresetn(ext_reset_in_1_1),
        .s00_axi_arid(static_region_data_M_AXI_0_ARID),
        .s00_axi_arlen(static_region_data_M_AXI_0_ARLEN),
        .s00_axi_arlock(static_region_data_M_AXI_0_ARLOCK),
        .s00_axi_arprot(static_region_data_M_AXI_0_ARPROT),
        .s00_axi_arqos(static_region_data_M_AXI_0_ARQOS),
        .s00_axi_arready(static_region_data_M_AXI_0_ARREADY),
        .s00_axi_arregion(static_region_data_M_AXI_0_ARREGION),
        .s00_axi_arsize(static_region_data_M_AXI_0_ARSIZE),
        .s00_axi_arvalid(static_region_data_M_AXI_0_ARVALID),
        .s00_axi_awaddr(static_region_data_M_AXI_0_AWADDR),
        .s00_axi_awburst(static_region_data_M_AXI_0_AWBURST),
        .s00_axi_awcache(static_region_data_M_AXI_0_AWCACHE),
        .s00_axi_awid(static_region_data_M_AXI_0_AWID),
        .s00_axi_awlen(static_region_data_M_AXI_0_AWLEN),
        .s00_axi_awlock(static_region_data_M_AXI_0_AWLOCK),
        .s00_axi_awprot(static_region_data_M_AXI_0_AWPROT),
        .s00_axi_awqos(static_region_data_M_AXI_0_AWQOS),
        .s00_axi_awready(static_region_data_M_AXI_0_AWREADY),
        .s00_axi_awregion(static_region_data_M_AXI_0_AWREGION),
        .s00_axi_awsize(static_region_data_M_AXI_0_AWSIZE),
        .s00_axi_awvalid(static_region_data_M_AXI_0_AWVALID),
        .s00_axi_bid(static_region_data_M_AXI_0_BID),
        .s00_axi_bready(static_region_data_M_AXI_0_BREADY),
        .s00_axi_bresp(static_region_data_M_AXI_0_BRESP),
        .s00_axi_bvalid(static_region_data_M_AXI_0_BVALID),
        .s00_axi_rdata(static_region_data_M_AXI_0_RDATA),
        .s00_axi_rid(static_region_data_M_AXI_0_RID),
        .s00_axi_rlast(static_region_data_M_AXI_0_RLAST),
        .s00_axi_rready(static_region_data_M_AXI_0_RREADY),
        .s00_axi_rresp(static_region_data_M_AXI_0_RRESP),
        .s00_axi_rvalid(static_region_data_M_AXI_0_RVALID),
        .s00_axi_wdata(static_region_data_M_AXI_0_WDATA),
        .s00_axi_wlast(static_region_data_M_AXI_0_WLAST),
        .s00_axi_wready(static_region_data_M_AXI_0_WREADY),
        .s00_axi_wstrb(static_region_data_M_AXI_0_WSTRB),
        .s00_axi_wvalid(static_region_data_M_AXI_0_WVALID),
        .s01_axi_aclk(slowest_sync_clk_1_1),
        .s01_axi_araddr(static_region_data_M_AXI_1_ARADDR),
        .s01_axi_arburst(static_region_data_M_AXI_1_ARBURST),
        .s01_axi_arcache(static_region_data_M_AXI_1_ARCACHE),
        .s01_axi_aresetn(ext_reset_in_1_1),
        .s01_axi_arid(static_region_data_M_AXI_1_ARID),
        .s01_axi_arlen(static_region_data_M_AXI_1_ARLEN),
        .s01_axi_arlock(static_region_data_M_AXI_1_ARLOCK),
        .s01_axi_arprot(static_region_data_M_AXI_1_ARPROT),
        .s01_axi_arqos(static_region_data_M_AXI_1_ARQOS),
        .s01_axi_arready(static_region_data_M_AXI_1_ARREADY),
        .s01_axi_arregion(static_region_data_M_AXI_1_ARREGION),
        .s01_axi_arsize(static_region_data_M_AXI_1_ARSIZE),
        .s01_axi_arvalid(static_region_data_M_AXI_1_ARVALID),
        .s01_axi_awaddr(static_region_data_M_AXI_1_AWADDR),
        .s01_axi_awburst(static_region_data_M_AXI_1_AWBURST),
        .s01_axi_awcache(static_region_data_M_AXI_1_AWCACHE),
        .s01_axi_awid(static_region_data_M_AXI_1_AWID),
        .s01_axi_awlen(static_region_data_M_AXI_1_AWLEN),
        .s01_axi_awlock(static_region_data_M_AXI_1_AWLOCK),
        .s01_axi_awprot(static_region_data_M_AXI_1_AWPROT),
        .s01_axi_awqos(static_region_data_M_AXI_1_AWQOS),
        .s01_axi_awready(static_region_data_M_AXI_1_AWREADY),
        .s01_axi_awregion(static_region_data_M_AXI_1_AWREGION),
        .s01_axi_awsize(static_region_data_M_AXI_1_AWSIZE),
        .s01_axi_awvalid(static_region_data_M_AXI_1_AWVALID),
        .s01_axi_bid(static_region_data_M_AXI_1_BID),
        .s01_axi_bready(static_region_data_M_AXI_1_BREADY),
        .s01_axi_bresp(static_region_data_M_AXI_1_BRESP),
        .s01_axi_bvalid(static_region_data_M_AXI_1_BVALID),
        .s01_axi_rdata(static_region_data_M_AXI_1_RDATA),
        .s01_axi_rid(static_region_data_M_AXI_1_RID),
        .s01_axi_rlast(static_region_data_M_AXI_1_RLAST),
        .s01_axi_rready(static_region_data_M_AXI_1_RREADY),
        .s01_axi_rresp(static_region_data_M_AXI_1_RRESP),
        .s01_axi_rvalid(static_region_data_M_AXI_1_RVALID),
        .s01_axi_wdata(static_region_data_M_AXI_1_WDATA),
        .s01_axi_wlast(static_region_data_M_AXI_1_WLAST),
        .s01_axi_wready(static_region_data_M_AXI_1_WREADY),
        .s01_axi_wstrb(static_region_data_M_AXI_1_WSTRB),
        .s01_axi_wvalid(static_region_data_M_AXI_1_WVALID),
        .s02_axi_aclk(slowest_sync_clk_1_1),
        .s02_axi_araddr(static_region_data_M_AXI_2_ARADDR),
        .s02_axi_arburst(static_region_data_M_AXI_2_ARBURST),
        .s02_axi_arcache(static_region_data_M_AXI_2_ARCACHE),
        .s02_axi_aresetn(ext_reset_in_1_1),
        .s02_axi_arid(static_region_data_M_AXI_2_ARID),
        .s02_axi_arlen(static_region_data_M_AXI_2_ARLEN),
        .s02_axi_arlock(static_region_data_M_AXI_2_ARLOCK),
        .s02_axi_arprot(static_region_data_M_AXI_2_ARPROT),
        .s02_axi_arqos(static_region_data_M_AXI_2_ARQOS),
        .s02_axi_arready(static_region_data_M_AXI_2_ARREADY),
        .s02_axi_arregion(static_region_data_M_AXI_2_ARREGION),
        .s02_axi_arsize(static_region_data_M_AXI_2_ARSIZE),
        .s02_axi_arvalid(static_region_data_M_AXI_2_ARVALID),
        .s02_axi_awaddr(static_region_data_M_AXI_2_AWADDR),
        .s02_axi_awburst(static_region_data_M_AXI_2_AWBURST),
        .s02_axi_awcache(static_region_data_M_AXI_2_AWCACHE),
        .s02_axi_awid(static_region_data_M_AXI_2_AWID),
        .s02_axi_awlen(static_region_data_M_AXI_2_AWLEN),
        .s02_axi_awlock(static_region_data_M_AXI_2_AWLOCK),
        .s02_axi_awprot(static_region_data_M_AXI_2_AWPROT),
        .s02_axi_awqos(static_region_data_M_AXI_2_AWQOS),
        .s02_axi_awready(static_region_data_M_AXI_2_AWREADY),
        .s02_axi_awregion(static_region_data_M_AXI_2_AWREGION),
        .s02_axi_awsize(static_region_data_M_AXI_2_AWSIZE),
        .s02_axi_awvalid(static_region_data_M_AXI_2_AWVALID),
        .s02_axi_bid(static_region_data_M_AXI_2_BID),
        .s02_axi_bready(static_region_data_M_AXI_2_BREADY),
        .s02_axi_bresp(static_region_data_M_AXI_2_BRESP),
        .s02_axi_bvalid(static_region_data_M_AXI_2_BVALID),
        .s02_axi_rdata(static_region_data_M_AXI_2_RDATA),
        .s02_axi_rid(static_region_data_M_AXI_2_RID),
        .s02_axi_rlast(static_region_data_M_AXI_2_RLAST),
        .s02_axi_rready(static_region_data_M_AXI_2_RREADY),
        .s02_axi_rresp(static_region_data_M_AXI_2_RRESP),
        .s02_axi_rvalid(static_region_data_M_AXI_2_RVALID),
        .s02_axi_wdata(static_region_data_M_AXI_2_WDATA),
        .s02_axi_wlast(static_region_data_M_AXI_2_WLAST),
        .s02_axi_wready(static_region_data_M_AXI_2_WREADY),
        .s02_axi_wstrb(static_region_data_M_AXI_2_WSTRB),
        .s02_axi_wvalid(static_region_data_M_AXI_2_WVALID),
        .s03_axi_aclk(slowest_sync_clk_1_1),
        .s03_axi_araddr(static_region_data_M_AXI_3_ARADDR),
        .s03_axi_arburst(static_region_data_M_AXI_3_ARBURST),
        .s03_axi_arcache(static_region_data_M_AXI_3_ARCACHE),
        .s03_axi_aresetn(ext_reset_in_1_1),
        .s03_axi_arid(static_region_data_M_AXI_3_ARID),
        .s03_axi_arlen(static_region_data_M_AXI_3_ARLEN),
        .s03_axi_arlock(static_region_data_M_AXI_3_ARLOCK),
        .s03_axi_arprot(static_region_data_M_AXI_3_ARPROT),
        .s03_axi_arqos(static_region_data_M_AXI_3_ARQOS),
        .s03_axi_arready(static_region_data_M_AXI_3_ARREADY),
        .s03_axi_arregion(static_region_data_M_AXI_3_ARREGION),
        .s03_axi_arsize(static_region_data_M_AXI_3_ARSIZE),
        .s03_axi_arvalid(static_region_data_M_AXI_3_ARVALID),
        .s03_axi_awaddr(static_region_data_M_AXI_3_AWADDR),
        .s03_axi_awburst(static_region_data_M_AXI_3_AWBURST),
        .s03_axi_awcache(static_region_data_M_AXI_3_AWCACHE),
        .s03_axi_awid(static_region_data_M_AXI_3_AWID),
        .s03_axi_awlen(static_region_data_M_AXI_3_AWLEN),
        .s03_axi_awlock(static_region_data_M_AXI_3_AWLOCK),
        .s03_axi_awprot(static_region_data_M_AXI_3_AWPROT),
        .s03_axi_awqos(static_region_data_M_AXI_3_AWQOS),
        .s03_axi_awready(static_region_data_M_AXI_3_AWREADY),
        .s03_axi_awregion(static_region_data_M_AXI_3_AWREGION),
        .s03_axi_awsize(static_region_data_M_AXI_3_AWSIZE),
        .s03_axi_awvalid(static_region_data_M_AXI_3_AWVALID),
        .s03_axi_bid(static_region_data_M_AXI_3_BID),
        .s03_axi_bready(static_region_data_M_AXI_3_BREADY),
        .s03_axi_bresp(static_region_data_M_AXI_3_BRESP),
        .s03_axi_bvalid(static_region_data_M_AXI_3_BVALID),
        .s03_axi_rdata(static_region_data_M_AXI_3_RDATA),
        .s03_axi_rid(static_region_data_M_AXI_3_RID),
        .s03_axi_rlast(static_region_data_M_AXI_3_RLAST),
        .s03_axi_rready(static_region_data_M_AXI_3_RREADY),
        .s03_axi_rresp(static_region_data_M_AXI_3_RRESP),
        .s03_axi_rvalid(static_region_data_M_AXI_3_RVALID),
        .s03_axi_wdata(static_region_data_M_AXI_3_WDATA),
        .s03_axi_wlast(static_region_data_M_AXI_3_WLAST),
        .s03_axi_wready(static_region_data_M_AXI_3_WREADY),
        .s03_axi_wstrb(static_region_data_M_AXI_3_WSTRB),
        .s03_axi_wvalid(static_region_data_M_AXI_3_WVALID),
        .s04_axi_aclk(slowest_sync_clk_1_1),
        .s04_axi_araddr(static_region_data_M_AXI_4_ARADDR),
        .s04_axi_arburst(static_region_data_M_AXI_4_ARBURST),
        .s04_axi_arcache(static_region_data_M_AXI_4_ARCACHE),
        .s04_axi_aresetn(ext_reset_in_1_1),
        .s04_axi_arid(static_region_data_M_AXI_4_ARID),
        .s04_axi_arlen(static_region_data_M_AXI_4_ARLEN),
        .s04_axi_arlock(static_region_data_M_AXI_4_ARLOCK),
        .s04_axi_arprot(static_region_data_M_AXI_4_ARPROT),
        .s04_axi_arqos(static_region_data_M_AXI_4_ARQOS),
        .s04_axi_arready(static_region_data_M_AXI_4_ARREADY),
        .s04_axi_arregion(static_region_data_M_AXI_4_ARREGION),
        .s04_axi_arsize(static_region_data_M_AXI_4_ARSIZE),
        .s04_axi_arvalid(static_region_data_M_AXI_4_ARVALID),
        .s04_axi_awaddr(static_region_data_M_AXI_4_AWADDR),
        .s04_axi_awburst(static_region_data_M_AXI_4_AWBURST),
        .s04_axi_awcache(static_region_data_M_AXI_4_AWCACHE),
        .s04_axi_awid(static_region_data_M_AXI_4_AWID),
        .s04_axi_awlen(static_region_data_M_AXI_4_AWLEN),
        .s04_axi_awlock(static_region_data_M_AXI_4_AWLOCK),
        .s04_axi_awprot(static_region_data_M_AXI_4_AWPROT),
        .s04_axi_awqos(static_region_data_M_AXI_4_AWQOS),
        .s04_axi_awready(static_region_data_M_AXI_4_AWREADY),
        .s04_axi_awregion(static_region_data_M_AXI_4_AWREGION),
        .s04_axi_awsize(static_region_data_M_AXI_4_AWSIZE),
        .s04_axi_awvalid(static_region_data_M_AXI_4_AWVALID),
        .s04_axi_bid(static_region_data_M_AXI_4_BID),
        .s04_axi_bready(static_region_data_M_AXI_4_BREADY),
        .s04_axi_bresp(static_region_data_M_AXI_4_BRESP),
        .s04_axi_bvalid(static_region_data_M_AXI_4_BVALID),
        .s04_axi_rdata(static_region_data_M_AXI_4_RDATA),
        .s04_axi_rid(static_region_data_M_AXI_4_RID),
        .s04_axi_rlast(static_region_data_M_AXI_4_RLAST),
        .s04_axi_rready(static_region_data_M_AXI_4_RREADY),
        .s04_axi_rresp(static_region_data_M_AXI_4_RRESP),
        .s04_axi_rvalid(static_region_data_M_AXI_4_RVALID),
        .s04_axi_wdata(static_region_data_M_AXI_4_WDATA),
        .s04_axi_wlast(static_region_data_M_AXI_4_WLAST),
        .s04_axi_wready(static_region_data_M_AXI_4_WREADY),
        .s04_axi_wstrb(static_region_data_M_AXI_4_WSTRB),
        .s04_axi_wvalid(static_region_data_M_AXI_4_WVALID));
endmodule

module pfm_dynamic_dpa_ctrl_interconnect_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [7:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [7:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [7:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [7:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire dpa_ctrl_interconnect_ACLK_net;
  wire dpa_ctrl_interconnect_ARESETN_net;
  wire [63:0]dpa_ctrl_interconnect_to_s00_couplers_ARADDR;
  wire [2:0]dpa_ctrl_interconnect_to_s00_couplers_ARPROT;
  wire dpa_ctrl_interconnect_to_s00_couplers_ARREADY;
  wire dpa_ctrl_interconnect_to_s00_couplers_ARVALID;
  wire [63:0]dpa_ctrl_interconnect_to_s00_couplers_AWADDR;
  wire [2:0]dpa_ctrl_interconnect_to_s00_couplers_AWPROT;
  wire dpa_ctrl_interconnect_to_s00_couplers_AWREADY;
  wire dpa_ctrl_interconnect_to_s00_couplers_AWVALID;
  wire dpa_ctrl_interconnect_to_s00_couplers_BREADY;
  wire [1:0]dpa_ctrl_interconnect_to_s00_couplers_BRESP;
  wire dpa_ctrl_interconnect_to_s00_couplers_BVALID;
  wire [31:0]dpa_ctrl_interconnect_to_s00_couplers_RDATA;
  wire dpa_ctrl_interconnect_to_s00_couplers_RREADY;
  wire [1:0]dpa_ctrl_interconnect_to_s00_couplers_RRESP;
  wire dpa_ctrl_interconnect_to_s00_couplers_RVALID;
  wire [31:0]dpa_ctrl_interconnect_to_s00_couplers_WDATA;
  wire dpa_ctrl_interconnect_to_s00_couplers_WREADY;
  wire [3:0]dpa_ctrl_interconnect_to_s00_couplers_WSTRB;
  wire dpa_ctrl_interconnect_to_s00_couplers_WVALID;
  wire [7:0]m00_couplers_to_dpa_ctrl_interconnect_ARADDR;
  wire m00_couplers_to_dpa_ctrl_interconnect_ARREADY;
  wire m00_couplers_to_dpa_ctrl_interconnect_ARVALID;
  wire [7:0]m00_couplers_to_dpa_ctrl_interconnect_AWADDR;
  wire m00_couplers_to_dpa_ctrl_interconnect_AWREADY;
  wire m00_couplers_to_dpa_ctrl_interconnect_AWVALID;
  wire m00_couplers_to_dpa_ctrl_interconnect_BREADY;
  wire [1:0]m00_couplers_to_dpa_ctrl_interconnect_BRESP;
  wire m00_couplers_to_dpa_ctrl_interconnect_BVALID;
  wire [31:0]m00_couplers_to_dpa_ctrl_interconnect_RDATA;
  wire m00_couplers_to_dpa_ctrl_interconnect_RREADY;
  wire [1:0]m00_couplers_to_dpa_ctrl_interconnect_RRESP;
  wire m00_couplers_to_dpa_ctrl_interconnect_RVALID;
  wire [31:0]m00_couplers_to_dpa_ctrl_interconnect_WDATA;
  wire m00_couplers_to_dpa_ctrl_interconnect_WREADY;
  wire [3:0]m00_couplers_to_dpa_ctrl_interconnect_WSTRB;
  wire m00_couplers_to_dpa_ctrl_interconnect_WVALID;
  wire [7:0]m01_couplers_to_dpa_ctrl_interconnect_ARADDR;
  wire m01_couplers_to_dpa_ctrl_interconnect_ARREADY;
  wire m01_couplers_to_dpa_ctrl_interconnect_ARVALID;
  wire [7:0]m01_couplers_to_dpa_ctrl_interconnect_AWADDR;
  wire m01_couplers_to_dpa_ctrl_interconnect_AWREADY;
  wire m01_couplers_to_dpa_ctrl_interconnect_AWVALID;
  wire m01_couplers_to_dpa_ctrl_interconnect_BREADY;
  wire [1:0]m01_couplers_to_dpa_ctrl_interconnect_BRESP;
  wire m01_couplers_to_dpa_ctrl_interconnect_BVALID;
  wire [31:0]m01_couplers_to_dpa_ctrl_interconnect_RDATA;
  wire m01_couplers_to_dpa_ctrl_interconnect_RREADY;
  wire [1:0]m01_couplers_to_dpa_ctrl_interconnect_RRESP;
  wire m01_couplers_to_dpa_ctrl_interconnect_RVALID;
  wire [31:0]m01_couplers_to_dpa_ctrl_interconnect_WDATA;
  wire m01_couplers_to_dpa_ctrl_interconnect_WREADY;
  wire [3:0]m01_couplers_to_dpa_ctrl_interconnect_WSTRB;
  wire m01_couplers_to_dpa_ctrl_interconnect_WVALID;
  wire [63:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [63:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [127:64]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [127:64]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[7:0] = m00_couplers_to_dpa_ctrl_interconnect_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_dpa_ctrl_interconnect_ARVALID;
  assign M00_AXI_awaddr[7:0] = m00_couplers_to_dpa_ctrl_interconnect_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_dpa_ctrl_interconnect_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_dpa_ctrl_interconnect_BREADY;
  assign M00_AXI_rready = m00_couplers_to_dpa_ctrl_interconnect_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_dpa_ctrl_interconnect_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_dpa_ctrl_interconnect_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_dpa_ctrl_interconnect_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[7:0] = m01_couplers_to_dpa_ctrl_interconnect_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_dpa_ctrl_interconnect_ARVALID;
  assign M01_AXI_awaddr[7:0] = m01_couplers_to_dpa_ctrl_interconnect_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_dpa_ctrl_interconnect_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_dpa_ctrl_interconnect_BREADY;
  assign M01_AXI_rready = m01_couplers_to_dpa_ctrl_interconnect_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_dpa_ctrl_interconnect_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_dpa_ctrl_interconnect_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_dpa_ctrl_interconnect_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = dpa_ctrl_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = dpa_ctrl_interconnect_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = dpa_ctrl_interconnect_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = dpa_ctrl_interconnect_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = dpa_ctrl_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = dpa_ctrl_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = dpa_ctrl_interconnect_to_s00_couplers_RVALID;
  assign S00_AXI_wready = dpa_ctrl_interconnect_to_s00_couplers_WREADY;
  assign dpa_ctrl_interconnect_ACLK_net = ACLK;
  assign dpa_ctrl_interconnect_ARESETN_net = ARESETN;
  assign dpa_ctrl_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign dpa_ctrl_interconnect_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign dpa_ctrl_interconnect_to_s00_couplers_BREADY = S00_AXI_bready;
  assign dpa_ctrl_interconnect_to_s00_couplers_RREADY = S00_AXI_rready;
  assign dpa_ctrl_interconnect_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_dpa_ctrl_interconnect_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_dpa_ctrl_interconnect_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_dpa_ctrl_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_dpa_ctrl_interconnect_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_dpa_ctrl_interconnect_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_dpa_ctrl_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_dpa_ctrl_interconnect_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_dpa_ctrl_interconnect_WREADY = M00_AXI_wready;
  assign m01_couplers_to_dpa_ctrl_interconnect_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_dpa_ctrl_interconnect_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_dpa_ctrl_interconnect_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_dpa_ctrl_interconnect_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_dpa_ctrl_interconnect_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_dpa_ctrl_interconnect_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_dpa_ctrl_interconnect_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_dpa_ctrl_interconnect_WREADY = M01_AXI_wready;
  m00_couplers_imp_184K1VH m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_dpa_ctrl_interconnect_ARADDR),
        .M_AXI_arready(m00_couplers_to_dpa_ctrl_interconnect_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_dpa_ctrl_interconnect_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_dpa_ctrl_interconnect_AWADDR),
        .M_AXI_awready(m00_couplers_to_dpa_ctrl_interconnect_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_dpa_ctrl_interconnect_AWVALID),
        .M_AXI_bready(m00_couplers_to_dpa_ctrl_interconnect_BREADY),
        .M_AXI_bresp(m00_couplers_to_dpa_ctrl_interconnect_BRESP),
        .M_AXI_bvalid(m00_couplers_to_dpa_ctrl_interconnect_BVALID),
        .M_AXI_rdata(m00_couplers_to_dpa_ctrl_interconnect_RDATA),
        .M_AXI_rready(m00_couplers_to_dpa_ctrl_interconnect_RREADY),
        .M_AXI_rresp(m00_couplers_to_dpa_ctrl_interconnect_RRESP),
        .M_AXI_rvalid(m00_couplers_to_dpa_ctrl_interconnect_RVALID),
        .M_AXI_wdata(m00_couplers_to_dpa_ctrl_interconnect_WDATA),
        .M_AXI_wready(m00_couplers_to_dpa_ctrl_interconnect_WREADY),
        .M_AXI_wstrb(m00_couplers_to_dpa_ctrl_interconnect_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_dpa_ctrl_interconnect_WVALID),
        .S_ACLK(dpa_ctrl_interconnect_ACLK_net),
        .S_ARESETN(dpa_ctrl_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_87NC3 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_dpa_ctrl_interconnect_ARADDR),
        .M_AXI_arready(m01_couplers_to_dpa_ctrl_interconnect_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_dpa_ctrl_interconnect_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_dpa_ctrl_interconnect_AWADDR),
        .M_AXI_awready(m01_couplers_to_dpa_ctrl_interconnect_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_dpa_ctrl_interconnect_AWVALID),
        .M_AXI_bready(m01_couplers_to_dpa_ctrl_interconnect_BREADY),
        .M_AXI_bresp(m01_couplers_to_dpa_ctrl_interconnect_BRESP),
        .M_AXI_bvalid(m01_couplers_to_dpa_ctrl_interconnect_BVALID),
        .M_AXI_rdata(m01_couplers_to_dpa_ctrl_interconnect_RDATA),
        .M_AXI_rready(m01_couplers_to_dpa_ctrl_interconnect_RREADY),
        .M_AXI_rresp(m01_couplers_to_dpa_ctrl_interconnect_RRESP),
        .M_AXI_rvalid(m01_couplers_to_dpa_ctrl_interconnect_RVALID),
        .M_AXI_wdata(m01_couplers_to_dpa_ctrl_interconnect_WDATA),
        .M_AXI_wready(m01_couplers_to_dpa_ctrl_interconnect_WREADY),
        .M_AXI_wstrb(m01_couplers_to_dpa_ctrl_interconnect_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_dpa_ctrl_interconnect_WVALID),
        .S_ACLK(dpa_ctrl_interconnect_ACLK_net),
        .S_ARESETN(dpa_ctrl_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_VX2DF1 s00_couplers
       (.M_ACLK(dpa_ctrl_interconnect_ACLK_net),
        .M_ARESETN(dpa_ctrl_interconnect_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(dpa_ctrl_interconnect_to_s00_couplers_ARADDR),
        .S_AXI_arprot(dpa_ctrl_interconnect_to_s00_couplers_ARPROT),
        .S_AXI_arready(dpa_ctrl_interconnect_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(dpa_ctrl_interconnect_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(dpa_ctrl_interconnect_to_s00_couplers_AWADDR),
        .S_AXI_awprot(dpa_ctrl_interconnect_to_s00_couplers_AWPROT),
        .S_AXI_awready(dpa_ctrl_interconnect_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(dpa_ctrl_interconnect_to_s00_couplers_AWVALID),
        .S_AXI_bready(dpa_ctrl_interconnect_to_s00_couplers_BREADY),
        .S_AXI_bresp(dpa_ctrl_interconnect_to_s00_couplers_BRESP),
        .S_AXI_bvalid(dpa_ctrl_interconnect_to_s00_couplers_BVALID),
        .S_AXI_rdata(dpa_ctrl_interconnect_to_s00_couplers_RDATA),
        .S_AXI_rready(dpa_ctrl_interconnect_to_s00_couplers_RREADY),
        .S_AXI_rresp(dpa_ctrl_interconnect_to_s00_couplers_RRESP),
        .S_AXI_rvalid(dpa_ctrl_interconnect_to_s00_couplers_RVALID),
        .S_AXI_wdata(dpa_ctrl_interconnect_to_s00_couplers_WDATA),
        .S_AXI_wready(dpa_ctrl_interconnect_to_s00_couplers_WREADY),
        .S_AXI_wstrb(dpa_ctrl_interconnect_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(dpa_ctrl_interconnect_to_s00_couplers_WVALID));
  pfm_dynamic_xbar_6 xbar
       (.aclk(dpa_ctrl_interconnect_ACLK_net),
        .aresetn(dpa_ctrl_interconnect_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module pfm_dynamic_interconnect_axilite_user_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire interconnect_axilite_user_0_ACLK_net;
  wire interconnect_axilite_user_0_ARESETN_net;
  wire [63:0]interconnect_axilite_user_0_to_s00_couplers_ARADDR;
  wire [0:0]interconnect_axilite_user_0_to_s00_couplers_ARREADY;
  wire [0:0]interconnect_axilite_user_0_to_s00_couplers_ARVALID;
  wire [63:0]interconnect_axilite_user_0_to_s00_couplers_AWADDR;
  wire [0:0]interconnect_axilite_user_0_to_s00_couplers_AWREADY;
  wire [0:0]interconnect_axilite_user_0_to_s00_couplers_AWVALID;
  wire [0:0]interconnect_axilite_user_0_to_s00_couplers_BREADY;
  wire [1:0]interconnect_axilite_user_0_to_s00_couplers_BRESP;
  wire [0:0]interconnect_axilite_user_0_to_s00_couplers_BVALID;
  wire [31:0]interconnect_axilite_user_0_to_s00_couplers_RDATA;
  wire [0:0]interconnect_axilite_user_0_to_s00_couplers_RREADY;
  wire [1:0]interconnect_axilite_user_0_to_s00_couplers_RRESP;
  wire [0:0]interconnect_axilite_user_0_to_s00_couplers_RVALID;
  wire [31:0]interconnect_axilite_user_0_to_s00_couplers_WDATA;
  wire [0:0]interconnect_axilite_user_0_to_s00_couplers_WREADY;
  wire [3:0]interconnect_axilite_user_0_to_s00_couplers_WSTRB;
  wire [0:0]interconnect_axilite_user_0_to_s00_couplers_WVALID;
  wire [63:0]s00_couplers_to_interconnect_axilite_user_0_ARADDR;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_0_ARREADY;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_0_ARVALID;
  wire [63:0]s00_couplers_to_interconnect_axilite_user_0_AWADDR;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_0_AWREADY;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_0_AWVALID;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_0_BREADY;
  wire [1:0]s00_couplers_to_interconnect_axilite_user_0_BRESP;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_0_BVALID;
  wire [31:0]s00_couplers_to_interconnect_axilite_user_0_RDATA;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_0_RREADY;
  wire [1:0]s00_couplers_to_interconnect_axilite_user_0_RRESP;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_0_RVALID;
  wire [31:0]s00_couplers_to_interconnect_axilite_user_0_WDATA;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_0_WREADY;
  wire [3:0]s00_couplers_to_interconnect_axilite_user_0_WSTRB;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_0_WVALID;

  assign M00_AXI_araddr[63:0] = s00_couplers_to_interconnect_axilite_user_0_ARADDR;
  assign M00_AXI_arvalid[0] = s00_couplers_to_interconnect_axilite_user_0_ARVALID;
  assign M00_AXI_awaddr[63:0] = s00_couplers_to_interconnect_axilite_user_0_AWADDR;
  assign M00_AXI_awvalid[0] = s00_couplers_to_interconnect_axilite_user_0_AWVALID;
  assign M00_AXI_bready[0] = s00_couplers_to_interconnect_axilite_user_0_BREADY;
  assign M00_AXI_rready[0] = s00_couplers_to_interconnect_axilite_user_0_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_interconnect_axilite_user_0_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_interconnect_axilite_user_0_WSTRB;
  assign M00_AXI_wvalid[0] = s00_couplers_to_interconnect_axilite_user_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = interconnect_axilite_user_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = interconnect_axilite_user_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = interconnect_axilite_user_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = interconnect_axilite_user_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = interconnect_axilite_user_0_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = interconnect_axilite_user_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = interconnect_axilite_user_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = interconnect_axilite_user_0_to_s00_couplers_WREADY;
  assign interconnect_axilite_user_0_ACLK_net = M00_ACLK;
  assign interconnect_axilite_user_0_ARESETN_net = M00_ARESETN;
  assign interconnect_axilite_user_0_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign interconnect_axilite_user_0_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign interconnect_axilite_user_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign interconnect_axilite_user_0_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign interconnect_axilite_user_0_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign interconnect_axilite_user_0_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign interconnect_axilite_user_0_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign interconnect_axilite_user_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign interconnect_axilite_user_0_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign s00_couplers_to_interconnect_axilite_user_0_ARREADY = M00_AXI_arready[0];
  assign s00_couplers_to_interconnect_axilite_user_0_AWREADY = M00_AXI_awready[0];
  assign s00_couplers_to_interconnect_axilite_user_0_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_interconnect_axilite_user_0_BVALID = M00_AXI_bvalid[0];
  assign s00_couplers_to_interconnect_axilite_user_0_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_interconnect_axilite_user_0_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_interconnect_axilite_user_0_RVALID = M00_AXI_rvalid[0];
  assign s00_couplers_to_interconnect_axilite_user_0_WREADY = M00_AXI_wready[0];
  s00_couplers_imp_1VD9R9B s00_couplers
       (.M_ACLK(interconnect_axilite_user_0_ACLK_net),
        .M_ARESETN(interconnect_axilite_user_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_interconnect_axilite_user_0_ARADDR),
        .M_AXI_arready(s00_couplers_to_interconnect_axilite_user_0_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_interconnect_axilite_user_0_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_interconnect_axilite_user_0_AWADDR),
        .M_AXI_awready(s00_couplers_to_interconnect_axilite_user_0_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_interconnect_axilite_user_0_AWVALID),
        .M_AXI_bready(s00_couplers_to_interconnect_axilite_user_0_BREADY),
        .M_AXI_bresp(s00_couplers_to_interconnect_axilite_user_0_BRESP),
        .M_AXI_bvalid(s00_couplers_to_interconnect_axilite_user_0_BVALID),
        .M_AXI_rdata(s00_couplers_to_interconnect_axilite_user_0_RDATA),
        .M_AXI_rready(s00_couplers_to_interconnect_axilite_user_0_RREADY),
        .M_AXI_rresp(s00_couplers_to_interconnect_axilite_user_0_RRESP),
        .M_AXI_rvalid(s00_couplers_to_interconnect_axilite_user_0_RVALID),
        .M_AXI_wdata(s00_couplers_to_interconnect_axilite_user_0_WDATA),
        .M_AXI_wready(s00_couplers_to_interconnect_axilite_user_0_WREADY),
        .M_AXI_wstrb(s00_couplers_to_interconnect_axilite_user_0_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_interconnect_axilite_user_0_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(interconnect_axilite_user_0_to_s00_couplers_ARADDR),
        .S_AXI_arready(interconnect_axilite_user_0_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(interconnect_axilite_user_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axilite_user_0_to_s00_couplers_AWADDR),
        .S_AXI_awready(interconnect_axilite_user_0_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(interconnect_axilite_user_0_to_s00_couplers_AWVALID),
        .S_AXI_bready(interconnect_axilite_user_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(interconnect_axilite_user_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axilite_user_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(interconnect_axilite_user_0_to_s00_couplers_RDATA),
        .S_AXI_rready(interconnect_axilite_user_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(interconnect_axilite_user_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axilite_user_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(interconnect_axilite_user_0_to_s00_couplers_WDATA),
        .S_AXI_wready(interconnect_axilite_user_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axilite_user_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axilite_user_0_to_s00_couplers_WVALID));
endmodule

module pfm_dynamic_interconnect_axilite_user_1_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [5:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [5:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire interconnect_axilite_user_1_ACLK_net;
  wire interconnect_axilite_user_1_ARESETN_net;
  wire [63:0]interconnect_axilite_user_1_to_s00_couplers_ARADDR;
  wire [2:0]interconnect_axilite_user_1_to_s00_couplers_ARPROT;
  wire [0:0]interconnect_axilite_user_1_to_s00_couplers_ARREADY;
  wire [0:0]interconnect_axilite_user_1_to_s00_couplers_ARVALID;
  wire [63:0]interconnect_axilite_user_1_to_s00_couplers_AWADDR;
  wire [2:0]interconnect_axilite_user_1_to_s00_couplers_AWPROT;
  wire [0:0]interconnect_axilite_user_1_to_s00_couplers_AWREADY;
  wire [0:0]interconnect_axilite_user_1_to_s00_couplers_AWVALID;
  wire [0:0]interconnect_axilite_user_1_to_s00_couplers_BREADY;
  wire [1:0]interconnect_axilite_user_1_to_s00_couplers_BRESP;
  wire [0:0]interconnect_axilite_user_1_to_s00_couplers_BVALID;
  wire [31:0]interconnect_axilite_user_1_to_s00_couplers_RDATA;
  wire [0:0]interconnect_axilite_user_1_to_s00_couplers_RREADY;
  wire [1:0]interconnect_axilite_user_1_to_s00_couplers_RRESP;
  wire [0:0]interconnect_axilite_user_1_to_s00_couplers_RVALID;
  wire [31:0]interconnect_axilite_user_1_to_s00_couplers_WDATA;
  wire [0:0]interconnect_axilite_user_1_to_s00_couplers_WREADY;
  wire [3:0]interconnect_axilite_user_1_to_s00_couplers_WSTRB;
  wire [0:0]interconnect_axilite_user_1_to_s00_couplers_WVALID;
  wire [63:0]m00_couplers_to_interconnect_axilite_user_1_ARADDR;
  wire [2:0]m00_couplers_to_interconnect_axilite_user_1_ARPROT;
  wire m00_couplers_to_interconnect_axilite_user_1_ARREADY;
  wire m00_couplers_to_interconnect_axilite_user_1_ARVALID;
  wire [63:0]m00_couplers_to_interconnect_axilite_user_1_AWADDR;
  wire [2:0]m00_couplers_to_interconnect_axilite_user_1_AWPROT;
  wire m00_couplers_to_interconnect_axilite_user_1_AWREADY;
  wire m00_couplers_to_interconnect_axilite_user_1_AWVALID;
  wire m00_couplers_to_interconnect_axilite_user_1_BREADY;
  wire [1:0]m00_couplers_to_interconnect_axilite_user_1_BRESP;
  wire m00_couplers_to_interconnect_axilite_user_1_BVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_user_1_RDATA;
  wire m00_couplers_to_interconnect_axilite_user_1_RREADY;
  wire [1:0]m00_couplers_to_interconnect_axilite_user_1_RRESP;
  wire m00_couplers_to_interconnect_axilite_user_1_RVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_user_1_WDATA;
  wire m00_couplers_to_interconnect_axilite_user_1_WREADY;
  wire [3:0]m00_couplers_to_interconnect_axilite_user_1_WSTRB;
  wire m00_couplers_to_interconnect_axilite_user_1_WVALID;
  wire [5:0]m01_couplers_to_interconnect_axilite_user_1_ARADDR;
  wire [2:0]m01_couplers_to_interconnect_axilite_user_1_ARPROT;
  wire m01_couplers_to_interconnect_axilite_user_1_ARREADY;
  wire m01_couplers_to_interconnect_axilite_user_1_ARVALID;
  wire [5:0]m01_couplers_to_interconnect_axilite_user_1_AWADDR;
  wire [2:0]m01_couplers_to_interconnect_axilite_user_1_AWPROT;
  wire m01_couplers_to_interconnect_axilite_user_1_AWREADY;
  wire m01_couplers_to_interconnect_axilite_user_1_AWVALID;
  wire m01_couplers_to_interconnect_axilite_user_1_BREADY;
  wire [1:0]m01_couplers_to_interconnect_axilite_user_1_BRESP;
  wire m01_couplers_to_interconnect_axilite_user_1_BVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_user_1_RDATA;
  wire m01_couplers_to_interconnect_axilite_user_1_RREADY;
  wire [1:0]m01_couplers_to_interconnect_axilite_user_1_RRESP;
  wire m01_couplers_to_interconnect_axilite_user_1_RVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_user_1_WDATA;
  wire m01_couplers_to_interconnect_axilite_user_1_WREADY;
  wire [3:0]m01_couplers_to_interconnect_axilite_user_1_WSTRB;
  wire m01_couplers_to_interconnect_axilite_user_1_WVALID;
  wire [63:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [63:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [127:64]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [127:64]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[63:0] = m00_couplers_to_interconnect_axilite_user_1_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_interconnect_axilite_user_1_ARPROT;
  assign M00_AXI_arvalid = m00_couplers_to_interconnect_axilite_user_1_ARVALID;
  assign M00_AXI_awaddr[63:0] = m00_couplers_to_interconnect_axilite_user_1_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_interconnect_axilite_user_1_AWPROT;
  assign M00_AXI_awvalid = m00_couplers_to_interconnect_axilite_user_1_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_interconnect_axilite_user_1_BREADY;
  assign M00_AXI_rready = m00_couplers_to_interconnect_axilite_user_1_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_interconnect_axilite_user_1_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_interconnect_axilite_user_1_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_interconnect_axilite_user_1_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[5:0] = m01_couplers_to_interconnect_axilite_user_1_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_interconnect_axilite_user_1_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_interconnect_axilite_user_1_ARVALID;
  assign M01_AXI_awaddr[5:0] = m01_couplers_to_interconnect_axilite_user_1_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_interconnect_axilite_user_1_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_interconnect_axilite_user_1_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_interconnect_axilite_user_1_BREADY;
  assign M01_AXI_rready = m01_couplers_to_interconnect_axilite_user_1_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_interconnect_axilite_user_1_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_interconnect_axilite_user_1_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_interconnect_axilite_user_1_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = interconnect_axilite_user_1_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = interconnect_axilite_user_1_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = interconnect_axilite_user_1_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = interconnect_axilite_user_1_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = interconnect_axilite_user_1_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = interconnect_axilite_user_1_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = interconnect_axilite_user_1_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = interconnect_axilite_user_1_to_s00_couplers_WREADY;
  assign interconnect_axilite_user_1_ACLK_net = ACLK;
  assign interconnect_axilite_user_1_ARESETN_net = ARESETN;
  assign interconnect_axilite_user_1_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign interconnect_axilite_user_1_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign interconnect_axilite_user_1_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign interconnect_axilite_user_1_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign interconnect_axilite_user_1_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign interconnect_axilite_user_1_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign interconnect_axilite_user_1_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign interconnect_axilite_user_1_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign interconnect_axilite_user_1_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign interconnect_axilite_user_1_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign interconnect_axilite_user_1_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_interconnect_axilite_user_1_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_interconnect_axilite_user_1_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_interconnect_axilite_user_1_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_interconnect_axilite_user_1_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_interconnect_axilite_user_1_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_interconnect_axilite_user_1_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_interconnect_axilite_user_1_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_interconnect_axilite_user_1_WREADY = M00_AXI_wready;
  assign m01_couplers_to_interconnect_axilite_user_1_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_interconnect_axilite_user_1_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_interconnect_axilite_user_1_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_interconnect_axilite_user_1_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_interconnect_axilite_user_1_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_interconnect_axilite_user_1_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_interconnect_axilite_user_1_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_interconnect_axilite_user_1_WREADY = M01_AXI_wready;
  m00_couplers_imp_1IU07KW m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_interconnect_axilite_user_1_ARADDR),
        .M_AXI_arprot(m00_couplers_to_interconnect_axilite_user_1_ARPROT),
        .M_AXI_arready(m00_couplers_to_interconnect_axilite_user_1_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_interconnect_axilite_user_1_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_interconnect_axilite_user_1_AWADDR),
        .M_AXI_awprot(m00_couplers_to_interconnect_axilite_user_1_AWPROT),
        .M_AXI_awready(m00_couplers_to_interconnect_axilite_user_1_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_interconnect_axilite_user_1_AWVALID),
        .M_AXI_bready(m00_couplers_to_interconnect_axilite_user_1_BREADY),
        .M_AXI_bresp(m00_couplers_to_interconnect_axilite_user_1_BRESP),
        .M_AXI_bvalid(m00_couplers_to_interconnect_axilite_user_1_BVALID),
        .M_AXI_rdata(m00_couplers_to_interconnect_axilite_user_1_RDATA),
        .M_AXI_rready(m00_couplers_to_interconnect_axilite_user_1_RREADY),
        .M_AXI_rresp(m00_couplers_to_interconnect_axilite_user_1_RRESP),
        .M_AXI_rvalid(m00_couplers_to_interconnect_axilite_user_1_RVALID),
        .M_AXI_wdata(m00_couplers_to_interconnect_axilite_user_1_WDATA),
        .M_AXI_wready(m00_couplers_to_interconnect_axilite_user_1_WREADY),
        .M_AXI_wstrb(m00_couplers_to_interconnect_axilite_user_1_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_interconnect_axilite_user_1_WVALID),
        .S_ACLK(interconnect_axilite_user_1_ACLK_net),
        .S_ARESETN(interconnect_axilite_user_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_P1OJY6 m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_interconnect_axilite_user_1_ARADDR),
        .M_AXI_arprot(m01_couplers_to_interconnect_axilite_user_1_ARPROT),
        .M_AXI_arready(m01_couplers_to_interconnect_axilite_user_1_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_interconnect_axilite_user_1_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_interconnect_axilite_user_1_AWADDR),
        .M_AXI_awprot(m01_couplers_to_interconnect_axilite_user_1_AWPROT),
        .M_AXI_awready(m01_couplers_to_interconnect_axilite_user_1_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_interconnect_axilite_user_1_AWVALID),
        .M_AXI_bready(m01_couplers_to_interconnect_axilite_user_1_BREADY),
        .M_AXI_bresp(m01_couplers_to_interconnect_axilite_user_1_BRESP),
        .M_AXI_bvalid(m01_couplers_to_interconnect_axilite_user_1_BVALID),
        .M_AXI_rdata(m01_couplers_to_interconnect_axilite_user_1_RDATA),
        .M_AXI_rready(m01_couplers_to_interconnect_axilite_user_1_RREADY),
        .M_AXI_rresp(m01_couplers_to_interconnect_axilite_user_1_RRESP),
        .M_AXI_rvalid(m01_couplers_to_interconnect_axilite_user_1_RVALID),
        .M_AXI_wdata(m01_couplers_to_interconnect_axilite_user_1_WDATA),
        .M_AXI_wready(m01_couplers_to_interconnect_axilite_user_1_WREADY),
        .M_AXI_wstrb(m01_couplers_to_interconnect_axilite_user_1_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_interconnect_axilite_user_1_WVALID),
        .S_ACLK(interconnect_axilite_user_1_ACLK_net),
        .S_ARESETN(interconnect_axilite_user_1_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_BJPJ00 s00_couplers
       (.M_ACLK(interconnect_axilite_user_1_ACLK_net),
        .M_ARESETN(interconnect_axilite_user_1_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(interconnect_axilite_user_1_to_s00_couplers_ARADDR),
        .S_AXI_arprot(interconnect_axilite_user_1_to_s00_couplers_ARPROT),
        .S_AXI_arready(interconnect_axilite_user_1_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(interconnect_axilite_user_1_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axilite_user_1_to_s00_couplers_AWADDR),
        .S_AXI_awprot(interconnect_axilite_user_1_to_s00_couplers_AWPROT),
        .S_AXI_awready(interconnect_axilite_user_1_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(interconnect_axilite_user_1_to_s00_couplers_AWVALID),
        .S_AXI_bready(interconnect_axilite_user_1_to_s00_couplers_BREADY),
        .S_AXI_bresp(interconnect_axilite_user_1_to_s00_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axilite_user_1_to_s00_couplers_BVALID),
        .S_AXI_rdata(interconnect_axilite_user_1_to_s00_couplers_RDATA),
        .S_AXI_rready(interconnect_axilite_user_1_to_s00_couplers_RREADY),
        .S_AXI_rresp(interconnect_axilite_user_1_to_s00_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axilite_user_1_to_s00_couplers_RVALID),
        .S_AXI_wdata(interconnect_axilite_user_1_to_s00_couplers_WDATA),
        .S_AXI_wready(interconnect_axilite_user_1_to_s00_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axilite_user_1_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axilite_user_1_to_s00_couplers_WVALID));
  pfm_dynamic_xbar_4 xbar
       (.aclk(interconnect_axilite_user_1_ACLK_net),
        .aresetn(interconnect_axilite_user_1_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module pfm_dynamic_interconnect_axilite_user_2_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire interconnect_axilite_user_2_ACLK_net;
  wire interconnect_axilite_user_2_ARESETN_net;
  wire [63:0]interconnect_axilite_user_2_to_s00_couplers_ARADDR;
  wire [0:0]interconnect_axilite_user_2_to_s00_couplers_ARREADY;
  wire [0:0]interconnect_axilite_user_2_to_s00_couplers_ARVALID;
  wire [63:0]interconnect_axilite_user_2_to_s00_couplers_AWADDR;
  wire [0:0]interconnect_axilite_user_2_to_s00_couplers_AWREADY;
  wire [0:0]interconnect_axilite_user_2_to_s00_couplers_AWVALID;
  wire [0:0]interconnect_axilite_user_2_to_s00_couplers_BREADY;
  wire [1:0]interconnect_axilite_user_2_to_s00_couplers_BRESP;
  wire [0:0]interconnect_axilite_user_2_to_s00_couplers_BVALID;
  wire [31:0]interconnect_axilite_user_2_to_s00_couplers_RDATA;
  wire [0:0]interconnect_axilite_user_2_to_s00_couplers_RREADY;
  wire [1:0]interconnect_axilite_user_2_to_s00_couplers_RRESP;
  wire [0:0]interconnect_axilite_user_2_to_s00_couplers_RVALID;
  wire [31:0]interconnect_axilite_user_2_to_s00_couplers_WDATA;
  wire [0:0]interconnect_axilite_user_2_to_s00_couplers_WREADY;
  wire [3:0]interconnect_axilite_user_2_to_s00_couplers_WSTRB;
  wire [0:0]interconnect_axilite_user_2_to_s00_couplers_WVALID;
  wire [63:0]s00_couplers_to_interconnect_axilite_user_2_ARADDR;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_2_ARREADY;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_2_ARVALID;
  wire [63:0]s00_couplers_to_interconnect_axilite_user_2_AWADDR;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_2_AWREADY;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_2_AWVALID;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_2_BREADY;
  wire [1:0]s00_couplers_to_interconnect_axilite_user_2_BRESP;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_2_BVALID;
  wire [31:0]s00_couplers_to_interconnect_axilite_user_2_RDATA;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_2_RREADY;
  wire [1:0]s00_couplers_to_interconnect_axilite_user_2_RRESP;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_2_RVALID;
  wire [31:0]s00_couplers_to_interconnect_axilite_user_2_WDATA;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_2_WREADY;
  wire [3:0]s00_couplers_to_interconnect_axilite_user_2_WSTRB;
  wire [0:0]s00_couplers_to_interconnect_axilite_user_2_WVALID;

  assign M00_AXI_araddr[63:0] = s00_couplers_to_interconnect_axilite_user_2_ARADDR;
  assign M00_AXI_arvalid[0] = s00_couplers_to_interconnect_axilite_user_2_ARVALID;
  assign M00_AXI_awaddr[63:0] = s00_couplers_to_interconnect_axilite_user_2_AWADDR;
  assign M00_AXI_awvalid[0] = s00_couplers_to_interconnect_axilite_user_2_AWVALID;
  assign M00_AXI_bready[0] = s00_couplers_to_interconnect_axilite_user_2_BREADY;
  assign M00_AXI_rready[0] = s00_couplers_to_interconnect_axilite_user_2_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_interconnect_axilite_user_2_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_interconnect_axilite_user_2_WSTRB;
  assign M00_AXI_wvalid[0] = s00_couplers_to_interconnect_axilite_user_2_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = interconnect_axilite_user_2_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = interconnect_axilite_user_2_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = interconnect_axilite_user_2_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = interconnect_axilite_user_2_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = interconnect_axilite_user_2_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = interconnect_axilite_user_2_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = interconnect_axilite_user_2_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = interconnect_axilite_user_2_to_s00_couplers_WREADY;
  assign interconnect_axilite_user_2_ACLK_net = M00_ACLK;
  assign interconnect_axilite_user_2_ARESETN_net = M00_ARESETN;
  assign interconnect_axilite_user_2_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign interconnect_axilite_user_2_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign interconnect_axilite_user_2_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign interconnect_axilite_user_2_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign interconnect_axilite_user_2_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign interconnect_axilite_user_2_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign interconnect_axilite_user_2_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign interconnect_axilite_user_2_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign interconnect_axilite_user_2_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign s00_couplers_to_interconnect_axilite_user_2_ARREADY = M00_AXI_arready[0];
  assign s00_couplers_to_interconnect_axilite_user_2_AWREADY = M00_AXI_awready[0];
  assign s00_couplers_to_interconnect_axilite_user_2_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_interconnect_axilite_user_2_BVALID = M00_AXI_bvalid[0];
  assign s00_couplers_to_interconnect_axilite_user_2_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_interconnect_axilite_user_2_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_interconnect_axilite_user_2_RVALID = M00_AXI_rvalid[0];
  assign s00_couplers_to_interconnect_axilite_user_2_WREADY = M00_AXI_wready[0];
  s00_couplers_imp_1858E00 s00_couplers
       (.M_ACLK(interconnect_axilite_user_2_ACLK_net),
        .M_ARESETN(interconnect_axilite_user_2_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_interconnect_axilite_user_2_ARADDR),
        .M_AXI_arready(s00_couplers_to_interconnect_axilite_user_2_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_interconnect_axilite_user_2_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_interconnect_axilite_user_2_AWADDR),
        .M_AXI_awready(s00_couplers_to_interconnect_axilite_user_2_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_interconnect_axilite_user_2_AWVALID),
        .M_AXI_bready(s00_couplers_to_interconnect_axilite_user_2_BREADY),
        .M_AXI_bresp(s00_couplers_to_interconnect_axilite_user_2_BRESP),
        .M_AXI_bvalid(s00_couplers_to_interconnect_axilite_user_2_BVALID),
        .M_AXI_rdata(s00_couplers_to_interconnect_axilite_user_2_RDATA),
        .M_AXI_rready(s00_couplers_to_interconnect_axilite_user_2_RREADY),
        .M_AXI_rresp(s00_couplers_to_interconnect_axilite_user_2_RRESP),
        .M_AXI_rvalid(s00_couplers_to_interconnect_axilite_user_2_RVALID),
        .M_AXI_wdata(s00_couplers_to_interconnect_axilite_user_2_WDATA),
        .M_AXI_wready(s00_couplers_to_interconnect_axilite_user_2_WREADY),
        .M_AXI_wstrb(s00_couplers_to_interconnect_axilite_user_2_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_interconnect_axilite_user_2_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(interconnect_axilite_user_2_to_s00_couplers_ARADDR),
        .S_AXI_arready(interconnect_axilite_user_2_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(interconnect_axilite_user_2_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axilite_user_2_to_s00_couplers_AWADDR),
        .S_AXI_awready(interconnect_axilite_user_2_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(interconnect_axilite_user_2_to_s00_couplers_AWVALID),
        .S_AXI_bready(interconnect_axilite_user_2_to_s00_couplers_BREADY),
        .S_AXI_bresp(interconnect_axilite_user_2_to_s00_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axilite_user_2_to_s00_couplers_BVALID),
        .S_AXI_rdata(interconnect_axilite_user_2_to_s00_couplers_RDATA),
        .S_AXI_rready(interconnect_axilite_user_2_to_s00_couplers_RREADY),
        .S_AXI_rresp(interconnect_axilite_user_2_to_s00_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axilite_user_2_to_s00_couplers_RVALID),
        .S_AXI_wdata(interconnect_axilite_user_2_to_s00_couplers_WDATA),
        .S_AXI_wready(interconnect_axilite_user_2_to_s00_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axilite_user_2_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axilite_user_2_to_s00_couplers_WVALID));
endmodule

module pfm_dynamic_user_slr_icn_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [63:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [63:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [63:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [63:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [63:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire [63:0]m00_couplers_to_user_slr_icn_ARADDR;
  wire [0:0]m00_couplers_to_user_slr_icn_ARREADY;
  wire [0:0]m00_couplers_to_user_slr_icn_ARVALID;
  wire [63:0]m00_couplers_to_user_slr_icn_AWADDR;
  wire [0:0]m00_couplers_to_user_slr_icn_AWREADY;
  wire [0:0]m00_couplers_to_user_slr_icn_AWVALID;
  wire [0:0]m00_couplers_to_user_slr_icn_BREADY;
  wire [1:0]m00_couplers_to_user_slr_icn_BRESP;
  wire [0:0]m00_couplers_to_user_slr_icn_BVALID;
  wire [31:0]m00_couplers_to_user_slr_icn_RDATA;
  wire [0:0]m00_couplers_to_user_slr_icn_RREADY;
  wire [1:0]m00_couplers_to_user_slr_icn_RRESP;
  wire [0:0]m00_couplers_to_user_slr_icn_RVALID;
  wire [31:0]m00_couplers_to_user_slr_icn_WDATA;
  wire [0:0]m00_couplers_to_user_slr_icn_WREADY;
  wire [3:0]m00_couplers_to_user_slr_icn_WSTRB;
  wire [0:0]m00_couplers_to_user_slr_icn_WVALID;
  wire [63:0]m01_couplers_to_user_slr_icn_ARADDR;
  wire [2:0]m01_couplers_to_user_slr_icn_ARPROT;
  wire [0:0]m01_couplers_to_user_slr_icn_ARREADY;
  wire [0:0]m01_couplers_to_user_slr_icn_ARVALID;
  wire [63:0]m01_couplers_to_user_slr_icn_AWADDR;
  wire [2:0]m01_couplers_to_user_slr_icn_AWPROT;
  wire [0:0]m01_couplers_to_user_slr_icn_AWREADY;
  wire [0:0]m01_couplers_to_user_slr_icn_AWVALID;
  wire [0:0]m01_couplers_to_user_slr_icn_BREADY;
  wire [1:0]m01_couplers_to_user_slr_icn_BRESP;
  wire [0:0]m01_couplers_to_user_slr_icn_BVALID;
  wire [31:0]m01_couplers_to_user_slr_icn_RDATA;
  wire [0:0]m01_couplers_to_user_slr_icn_RREADY;
  wire [1:0]m01_couplers_to_user_slr_icn_RRESP;
  wire [0:0]m01_couplers_to_user_slr_icn_RVALID;
  wire [31:0]m01_couplers_to_user_slr_icn_WDATA;
  wire [0:0]m01_couplers_to_user_slr_icn_WREADY;
  wire [3:0]m01_couplers_to_user_slr_icn_WSTRB;
  wire [0:0]m01_couplers_to_user_slr_icn_WVALID;
  wire [63:0]m02_couplers_to_user_slr_icn_ARADDR;
  wire [0:0]m02_couplers_to_user_slr_icn_ARREADY;
  wire [0:0]m02_couplers_to_user_slr_icn_ARVALID;
  wire [63:0]m02_couplers_to_user_slr_icn_AWADDR;
  wire [0:0]m02_couplers_to_user_slr_icn_AWREADY;
  wire [0:0]m02_couplers_to_user_slr_icn_AWVALID;
  wire [0:0]m02_couplers_to_user_slr_icn_BREADY;
  wire [1:0]m02_couplers_to_user_slr_icn_BRESP;
  wire [0:0]m02_couplers_to_user_slr_icn_BVALID;
  wire [31:0]m02_couplers_to_user_slr_icn_RDATA;
  wire [0:0]m02_couplers_to_user_slr_icn_RREADY;
  wire [1:0]m02_couplers_to_user_slr_icn_RRESP;
  wire [0:0]m02_couplers_to_user_slr_icn_RVALID;
  wire [31:0]m02_couplers_to_user_slr_icn_WDATA;
  wire [0:0]m02_couplers_to_user_slr_icn_WREADY;
  wire [3:0]m02_couplers_to_user_slr_icn_WSTRB;
  wire [0:0]m02_couplers_to_user_slr_icn_WVALID;
  wire [63:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [63:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire user_slr_icn_ACLK_net;
  wire user_slr_icn_ARESETN_net;
  wire [63:0]user_slr_icn_to_s00_couplers_ARADDR;
  wire [2:0]user_slr_icn_to_s00_couplers_ARPROT;
  wire [0:0]user_slr_icn_to_s00_couplers_ARREADY;
  wire [0:0]user_slr_icn_to_s00_couplers_ARVALID;
  wire [63:0]user_slr_icn_to_s00_couplers_AWADDR;
  wire [2:0]user_slr_icn_to_s00_couplers_AWPROT;
  wire [0:0]user_slr_icn_to_s00_couplers_AWREADY;
  wire [0:0]user_slr_icn_to_s00_couplers_AWVALID;
  wire [0:0]user_slr_icn_to_s00_couplers_BREADY;
  wire [1:0]user_slr_icn_to_s00_couplers_BRESP;
  wire [0:0]user_slr_icn_to_s00_couplers_BVALID;
  wire [31:0]user_slr_icn_to_s00_couplers_RDATA;
  wire [0:0]user_slr_icn_to_s00_couplers_RREADY;
  wire [1:0]user_slr_icn_to_s00_couplers_RRESP;
  wire [0:0]user_slr_icn_to_s00_couplers_RVALID;
  wire [31:0]user_slr_icn_to_s00_couplers_WDATA;
  wire [0:0]user_slr_icn_to_s00_couplers_WREADY;
  wire [3:0]user_slr_icn_to_s00_couplers_WSTRB;
  wire [0:0]user_slr_icn_to_s00_couplers_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [127:64]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [127:64]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [191:128]xbar_to_m02_couplers_ARADDR;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [191:128]xbar_to_m02_couplers_AWADDR;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [8:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [8:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_AXI_araddr[63:0] = m00_couplers_to_user_slr_icn_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_user_slr_icn_ARVALID;
  assign M00_AXI_awaddr[63:0] = m00_couplers_to_user_slr_icn_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_user_slr_icn_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_user_slr_icn_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_user_slr_icn_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_user_slr_icn_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_user_slr_icn_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_user_slr_icn_WVALID;
  assign M01_AXI_araddr[63:0] = m01_couplers_to_user_slr_icn_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_user_slr_icn_ARPROT;
  assign M01_AXI_arvalid[0] = m01_couplers_to_user_slr_icn_ARVALID;
  assign M01_AXI_awaddr[63:0] = m01_couplers_to_user_slr_icn_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_user_slr_icn_AWPROT;
  assign M01_AXI_awvalid[0] = m01_couplers_to_user_slr_icn_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_user_slr_icn_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_user_slr_icn_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_user_slr_icn_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_user_slr_icn_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_user_slr_icn_WVALID;
  assign M02_AXI_araddr[63:0] = m02_couplers_to_user_slr_icn_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_user_slr_icn_ARVALID;
  assign M02_AXI_awaddr[63:0] = m02_couplers_to_user_slr_icn_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_user_slr_icn_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_user_slr_icn_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_user_slr_icn_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_user_slr_icn_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_user_slr_icn_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_user_slr_icn_WVALID;
  assign S00_AXI_arready[0] = user_slr_icn_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = user_slr_icn_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = user_slr_icn_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = user_slr_icn_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = user_slr_icn_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = user_slr_icn_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = user_slr_icn_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = user_slr_icn_to_s00_couplers_WREADY;
  assign m00_couplers_to_user_slr_icn_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_user_slr_icn_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_user_slr_icn_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_user_slr_icn_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_user_slr_icn_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_user_slr_icn_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_user_slr_icn_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_user_slr_icn_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_user_slr_icn_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_user_slr_icn_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_user_slr_icn_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_user_slr_icn_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_user_slr_icn_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_user_slr_icn_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_user_slr_icn_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_user_slr_icn_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_user_slr_icn_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_user_slr_icn_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_user_slr_icn_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_user_slr_icn_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_user_slr_icn_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_user_slr_icn_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_user_slr_icn_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_user_slr_icn_WREADY = M02_AXI_wready[0];
  assign user_slr_icn_ACLK_net = ACLK;
  assign user_slr_icn_ARESETN_net = ARESETN;
  assign user_slr_icn_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign user_slr_icn_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign user_slr_icn_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign user_slr_icn_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign user_slr_icn_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign user_slr_icn_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign user_slr_icn_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign user_slr_icn_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign user_slr_icn_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign user_slr_icn_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign user_slr_icn_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  m00_couplers_imp_120WOX2 m00_couplers
       (.M_ACLK(user_slr_icn_ACLK_net),
        .M_ARESETN(user_slr_icn_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_user_slr_icn_ARADDR),
        .M_AXI_arready(m00_couplers_to_user_slr_icn_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_user_slr_icn_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_user_slr_icn_AWADDR),
        .M_AXI_awready(m00_couplers_to_user_slr_icn_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_user_slr_icn_AWVALID),
        .M_AXI_bready(m00_couplers_to_user_slr_icn_BREADY),
        .M_AXI_bresp(m00_couplers_to_user_slr_icn_BRESP),
        .M_AXI_bvalid(m00_couplers_to_user_slr_icn_BVALID),
        .M_AXI_rdata(m00_couplers_to_user_slr_icn_RDATA),
        .M_AXI_rready(m00_couplers_to_user_slr_icn_RREADY),
        .M_AXI_rresp(m00_couplers_to_user_slr_icn_RRESP),
        .M_AXI_rvalid(m00_couplers_to_user_slr_icn_RVALID),
        .M_AXI_wdata(m00_couplers_to_user_slr_icn_WDATA),
        .M_AXI_wready(m00_couplers_to_user_slr_icn_WREADY),
        .M_AXI_wstrb(m00_couplers_to_user_slr_icn_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_user_slr_icn_WVALID),
        .S_ACLK(user_slr_icn_ACLK_net),
        .S_ARESETN(user_slr_icn_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_6BWSZC m01_couplers
       (.M_ACLK(user_slr_icn_ACLK_net),
        .M_ARESETN(user_slr_icn_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_user_slr_icn_ARADDR),
        .M_AXI_arprot(m01_couplers_to_user_slr_icn_ARPROT),
        .M_AXI_arready(m01_couplers_to_user_slr_icn_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_user_slr_icn_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_user_slr_icn_AWADDR),
        .M_AXI_awprot(m01_couplers_to_user_slr_icn_AWPROT),
        .M_AXI_awready(m01_couplers_to_user_slr_icn_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_user_slr_icn_AWVALID),
        .M_AXI_bready(m01_couplers_to_user_slr_icn_BREADY),
        .M_AXI_bresp(m01_couplers_to_user_slr_icn_BRESP),
        .M_AXI_bvalid(m01_couplers_to_user_slr_icn_BVALID),
        .M_AXI_rdata(m01_couplers_to_user_slr_icn_RDATA),
        .M_AXI_rready(m01_couplers_to_user_slr_icn_RREADY),
        .M_AXI_rresp(m01_couplers_to_user_slr_icn_RRESP),
        .M_AXI_rvalid(m01_couplers_to_user_slr_icn_RVALID),
        .M_AXI_wdata(m01_couplers_to_user_slr_icn_WDATA),
        .M_AXI_wready(m01_couplers_to_user_slr_icn_WREADY),
        .M_AXI_wstrb(m01_couplers_to_user_slr_icn_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_user_slr_icn_WVALID),
        .S_ACLK(user_slr_icn_ACLK_net),
        .S_ARESETN(user_slr_icn_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_UGVDQZ m02_couplers
       (.M_ACLK(user_slr_icn_ACLK_net),
        .M_ARESETN(user_slr_icn_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_user_slr_icn_ARADDR),
        .M_AXI_arready(m02_couplers_to_user_slr_icn_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_user_slr_icn_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_user_slr_icn_AWADDR),
        .M_AXI_awready(m02_couplers_to_user_slr_icn_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_user_slr_icn_AWVALID),
        .M_AXI_bready(m02_couplers_to_user_slr_icn_BREADY),
        .M_AXI_bresp(m02_couplers_to_user_slr_icn_BRESP),
        .M_AXI_bvalid(m02_couplers_to_user_slr_icn_BVALID),
        .M_AXI_rdata(m02_couplers_to_user_slr_icn_RDATA),
        .M_AXI_rready(m02_couplers_to_user_slr_icn_RREADY),
        .M_AXI_rresp(m02_couplers_to_user_slr_icn_RRESP),
        .M_AXI_rvalid(m02_couplers_to_user_slr_icn_RVALID),
        .M_AXI_wdata(m02_couplers_to_user_slr_icn_WDATA),
        .M_AXI_wready(m02_couplers_to_user_slr_icn_WREADY),
        .M_AXI_wstrb(m02_couplers_to_user_slr_icn_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_user_slr_icn_WVALID),
        .S_ACLK(user_slr_icn_ACLK_net),
        .S_ARESETN(user_slr_icn_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  s00_couplers_imp_S199H2 s00_couplers
       (.M_ACLK(user_slr_icn_ACLK_net),
        .M_ARESETN(user_slr_icn_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(user_slr_icn_ACLK_net),
        .S_ARESETN(user_slr_icn_ARESETN_net),
        .S_AXI_araddr(user_slr_icn_to_s00_couplers_ARADDR),
        .S_AXI_arprot(user_slr_icn_to_s00_couplers_ARPROT),
        .S_AXI_arready(user_slr_icn_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(user_slr_icn_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(user_slr_icn_to_s00_couplers_AWADDR),
        .S_AXI_awprot(user_slr_icn_to_s00_couplers_AWPROT),
        .S_AXI_awready(user_slr_icn_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(user_slr_icn_to_s00_couplers_AWVALID),
        .S_AXI_bready(user_slr_icn_to_s00_couplers_BREADY),
        .S_AXI_bresp(user_slr_icn_to_s00_couplers_BRESP),
        .S_AXI_bvalid(user_slr_icn_to_s00_couplers_BVALID),
        .S_AXI_rdata(user_slr_icn_to_s00_couplers_RDATA),
        .S_AXI_rready(user_slr_icn_to_s00_couplers_RREADY),
        .S_AXI_rresp(user_slr_icn_to_s00_couplers_RRESP),
        .S_AXI_rvalid(user_slr_icn_to_s00_couplers_RVALID),
        .S_AXI_wdata(user_slr_icn_to_s00_couplers_WDATA),
        .S_AXI_wready(user_slr_icn_to_s00_couplers_WREADY),
        .S_AXI_wstrb(user_slr_icn_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(user_slr_icn_to_s00_couplers_WVALID));
  pfm_dynamic_xbar_5 xbar
       (.aclk(user_slr_icn_ACLK_net),
        .aresetn(user_slr_icn_ARESETN_net),
        .m_axi_araddr({xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[2:0]}),
        .m_axi_arready({xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[2:0]}),
        .m_axi_awready({xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module s00_couplers_imp_1858E00
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [63:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [63:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_1VD9R9B
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [63:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [63:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_BJPJ00
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [63:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [63:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_S199H2
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [63:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [63:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_VX2DF1
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [63:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [63:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [63:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [63:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [63:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [63:0]s00_regslice_to_s00_couplers_ARADDR;
  wire [2:0]s00_regslice_to_s00_couplers_ARPROT;
  wire s00_regslice_to_s00_couplers_ARREADY;
  wire s00_regslice_to_s00_couplers_ARVALID;
  wire [63:0]s00_regslice_to_s00_couplers_AWADDR;
  wire [2:0]s00_regslice_to_s00_couplers_AWPROT;
  wire s00_regslice_to_s00_couplers_AWREADY;
  wire s00_regslice_to_s00_couplers_AWVALID;
  wire s00_regslice_to_s00_couplers_BREADY;
  wire [1:0]s00_regslice_to_s00_couplers_BRESP;
  wire s00_regslice_to_s00_couplers_BVALID;
  wire [31:0]s00_regslice_to_s00_couplers_RDATA;
  wire s00_regslice_to_s00_couplers_RREADY;
  wire [1:0]s00_regslice_to_s00_couplers_RRESP;
  wire s00_regslice_to_s00_couplers_RVALID;
  wire [31:0]s00_regslice_to_s00_couplers_WDATA;
  wire s00_regslice_to_s00_couplers_WREADY;
  wire [3:0]s00_regslice_to_s00_couplers_WSTRB;
  wire s00_regslice_to_s00_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s00_regslice_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_regslice_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_regslice_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s00_regslice_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_regslice_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_regslice_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_regslice_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_regslice_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_regslice_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_regslice_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_regslice_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  assign s00_regslice_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_regslice_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_regslice_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_regslice_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_regslice_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_regslice_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_regslice_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_regslice_to_s00_couplers_WREADY = M_AXI_wready;
  pfm_dynamic_s00_regslice_0 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_s00_couplers_ARADDR),
        .m_axi_arprot(s00_regslice_to_s00_couplers_ARPROT),
        .m_axi_arready(s00_regslice_to_s00_couplers_ARREADY),
        .m_axi_arvalid(s00_regslice_to_s00_couplers_ARVALID),
        .m_axi_awaddr(s00_regslice_to_s00_couplers_AWADDR),
        .m_axi_awprot(s00_regslice_to_s00_couplers_AWPROT),
        .m_axi_awready(s00_regslice_to_s00_couplers_AWREADY),
        .m_axi_awvalid(s00_regslice_to_s00_couplers_AWVALID),
        .m_axi_bready(s00_regslice_to_s00_couplers_BREADY),
        .m_axi_bresp(s00_regslice_to_s00_couplers_BRESP),
        .m_axi_bvalid(s00_regslice_to_s00_couplers_BVALID),
        .m_axi_rdata(s00_regslice_to_s00_couplers_RDATA),
        .m_axi_rready(s00_regslice_to_s00_couplers_RREADY),
        .m_axi_rresp(s00_regslice_to_s00_couplers_RRESP),
        .m_axi_rvalid(s00_regslice_to_s00_couplers_RVALID),
        .m_axi_wdata(s00_regslice_to_s00_couplers_WDATA),
        .m_axi_wready(s00_regslice_to_s00_couplers_WREADY),
        .m_axi_wstrb(s00_regslice_to_s00_couplers_WSTRB),
        .m_axi_wvalid(s00_regslice_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module slr0_imp_1Q3M93Z
   (M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_buser,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_ruser,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wuser,
    M00_AXI_wvalid,
    S00_AXI1_araddr,
    S00_AXI1_arready,
    S00_AXI1_arvalid,
    S00_AXI1_awaddr,
    S00_AXI1_awready,
    S00_AXI1_awvalid,
    S00_AXI1_bready,
    S00_AXI1_bresp,
    S00_AXI1_bvalid,
    S00_AXI1_rdata,
    S00_AXI1_rready,
    S00_AXI1_rresp,
    S00_AXI1_rvalid,
    S00_AXI1_wdata,
    S00_AXI1_wready,
    S00_AXI1_wstrb,
    S00_AXI1_wvalid,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_buser,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wuser,
    S00_AXI_wvalid,
    ddr_default_clk_0,
    ddr_default_rst_0,
    dma_pcie_aclk,
    dma_pcie_arst,
    ext_reset_in,
    ext_reset_in1,
    slowest_sync_clk,
    slowest_sync_clk1);
  output [63:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output [0:0]M00_AXI_aruser;
  output M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output [0:0]M00_AXI_awuser;
  output M00_AXI_awvalid;
  input [0:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_buser;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input [0:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_ruser;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wuser;
  output M00_AXI_wvalid;
  input [63:0]S00_AXI1_araddr;
  output [0:0]S00_AXI1_arready;
  input [0:0]S00_AXI1_arvalid;
  input [63:0]S00_AXI1_awaddr;
  output [0:0]S00_AXI1_awready;
  input [0:0]S00_AXI1_awvalid;
  input [0:0]S00_AXI1_bready;
  output [1:0]S00_AXI1_bresp;
  output [0:0]S00_AXI1_bvalid;
  output [31:0]S00_AXI1_rdata;
  input [0:0]S00_AXI1_rready;
  output [1:0]S00_AXI1_rresp;
  output [0:0]S00_AXI1_rvalid;
  input [31:0]S00_AXI1_wdata;
  output [0:0]S00_AXI1_wready;
  input [3:0]S00_AXI1_wstrb;
  input [0:0]S00_AXI1_wvalid;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_buser;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_ruser;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wuser;
  input S00_AXI_wvalid;
  input ddr_default_clk_0;
  input ddr_default_rst_0;
  input dma_pcie_aclk;
  input dma_pcie_arst;
  input ext_reset_in;
  input ext_reset_in1;
  input slowest_sync_clk;
  input slowest_sync_clk1;

  wire [63:0]connect_to_es_cu_M01_AXI_ARADDR;
  wire [0:0]connect_to_es_cu_M01_AXI_ARREADY;
  wire [0:0]connect_to_es_cu_M01_AXI_ARVALID;
  wire [63:0]connect_to_es_cu_M01_AXI_AWADDR;
  wire [0:0]connect_to_es_cu_M01_AXI_AWREADY;
  wire [0:0]connect_to_es_cu_M01_AXI_AWVALID;
  wire [0:0]connect_to_es_cu_M01_AXI_BREADY;
  wire [1:0]connect_to_es_cu_M01_AXI_BRESP;
  wire [0:0]connect_to_es_cu_M01_AXI_BVALID;
  wire [31:0]connect_to_es_cu_M01_AXI_RDATA;
  wire [0:0]connect_to_es_cu_M01_AXI_RREADY;
  wire [1:0]connect_to_es_cu_M01_AXI_RRESP;
  wire [0:0]connect_to_es_cu_M01_AXI_RVALID;
  wire [31:0]connect_to_es_cu_M01_AXI_WDATA;
  wire [0:0]connect_to_es_cu_M01_AXI_WREADY;
  wire [3:0]connect_to_es_cu_M01_AXI_WSTRB;
  wire [0:0]connect_to_es_cu_M01_AXI_WVALID;
  wire ext_reset_in_0_1;
  wire ext_reset_in_1_1;
  wire ext_reset_in_2_1;
  wire [63:0]interconnect_axilite_0_M00_AXI_ARADDR;
  wire interconnect_axilite_0_M00_AXI_ARREADY;
  wire [0:0]interconnect_axilite_0_M00_AXI_ARVALID;
  wire [63:0]interconnect_axilite_0_M00_AXI_AWADDR;
  wire interconnect_axilite_0_M00_AXI_AWREADY;
  wire [0:0]interconnect_axilite_0_M00_AXI_AWVALID;
  wire [0:0]interconnect_axilite_0_M00_AXI_BREADY;
  wire [1:0]interconnect_axilite_0_M00_AXI_BRESP;
  wire interconnect_axilite_0_M00_AXI_BVALID;
  wire [31:0]interconnect_axilite_0_M00_AXI_RDATA;
  wire [0:0]interconnect_axilite_0_M00_AXI_RREADY;
  wire [1:0]interconnect_axilite_0_M00_AXI_RRESP;
  wire interconnect_axilite_0_M00_AXI_RVALID;
  wire [31:0]interconnect_axilite_0_M00_AXI_WDATA;
  wire interconnect_axilite_0_M00_AXI_WREADY;
  wire [3:0]interconnect_axilite_0_M00_AXI_WSTRB;
  wire [0:0]interconnect_axilite_0_M00_AXI_WVALID;
  wire slowest_sync_clk_0_1;
  wire slowest_sync_clk_1_1;
  wire slowest_sync_clk_2_1;
  wire ui_clk_clk;
  wire ui_clk_sync_rst;
  wire [63:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARLEN;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARQOS;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWLEN;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWQOS;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BID;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RID;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RLAST;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WDATA;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WLAST;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WREADY;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WSTRB;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARLEN;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARQOS;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWLEN;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWQOS;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BID;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RID;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RLAST;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WDATA;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WLAST;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WREADY;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WSTRB;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WVALID;

  assign M00_AXI_araddr[63:0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARADDR;
  assign M00_AXI_arburst[1:0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARBURST;
  assign M00_AXI_arcache[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARCACHE;
  assign M00_AXI_arid[0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARID;
  assign M00_AXI_arlen[7:0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARLEN;
  assign M00_AXI_arlock = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARLOCK;
  assign M00_AXI_arprot[2:0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARPROT;
  assign M00_AXI_arqos[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARQOS;
  assign M00_AXI_arsize[2:0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARSIZE;
  assign M00_AXI_aruser[0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARUSER;
  assign M00_AXI_arvalid = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARVALID;
  assign M00_AXI_awaddr[63:0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWADDR;
  assign M00_AXI_awburst[1:0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWBURST;
  assign M00_AXI_awcache[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWCACHE;
  assign M00_AXI_awid[0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWID;
  assign M00_AXI_awlen[7:0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWLEN;
  assign M00_AXI_awlock = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWLOCK;
  assign M00_AXI_awprot[2:0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWPROT;
  assign M00_AXI_awqos[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWQOS;
  assign M00_AXI_awsize[2:0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWSIZE;
  assign M00_AXI_awuser[0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWUSER;
  assign M00_AXI_awvalid = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWVALID;
  assign M00_AXI_bready = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BREADY;
  assign M00_AXI_rready = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RREADY;
  assign M00_AXI_wdata[31:0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WDATA;
  assign M00_AXI_wlast = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WLAST;
  assign M00_AXI_wstrb[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WSTRB;
  assign M00_AXI_wuser[0] = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WUSER;
  assign M00_AXI_wvalid = xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WVALID;
  assign S00_AXI1_arready[0] = connect_to_es_cu_M01_AXI_ARREADY;
  assign S00_AXI1_awready[0] = connect_to_es_cu_M01_AXI_AWREADY;
  assign S00_AXI1_bresp[1:0] = connect_to_es_cu_M01_AXI_BRESP;
  assign S00_AXI1_bvalid[0] = connect_to_es_cu_M01_AXI_BVALID;
  assign S00_AXI1_rdata[31:0] = connect_to_es_cu_M01_AXI_RDATA;
  assign S00_AXI1_rresp[1:0] = connect_to_es_cu_M01_AXI_RRESP;
  assign S00_AXI1_rvalid[0] = connect_to_es_cu_M01_AXI_RVALID;
  assign S00_AXI1_wready[0] = connect_to_es_cu_M01_AXI_WREADY;
  assign S00_AXI_arready = xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARREADY;
  assign S00_AXI_awready = xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWREADY;
  assign S00_AXI_bid[0] = xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BID;
  assign S00_AXI_bresp[1:0] = xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BRESP;
  assign S00_AXI_buser[0] = xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BUSER;
  assign S00_AXI_bvalid = xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BVALID;
  assign S00_AXI_rdata[31:0] = xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RDATA;
  assign S00_AXI_rid[0] = xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RID;
  assign S00_AXI_rlast = xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RLAST;
  assign S00_AXI_rresp[1:0] = xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RRESP;
  assign S00_AXI_ruser[0] = xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RUSER;
  assign S00_AXI_rvalid = xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RVALID;
  assign S00_AXI_wready = xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WREADY;
  assign connect_to_es_cu_M01_AXI_ARADDR = S00_AXI1_araddr[63:0];
  assign connect_to_es_cu_M01_AXI_ARVALID = S00_AXI1_arvalid[0];
  assign connect_to_es_cu_M01_AXI_AWADDR = S00_AXI1_awaddr[63:0];
  assign connect_to_es_cu_M01_AXI_AWVALID = S00_AXI1_awvalid[0];
  assign connect_to_es_cu_M01_AXI_BREADY = S00_AXI1_bready[0];
  assign connect_to_es_cu_M01_AXI_RREADY = S00_AXI1_rready[0];
  assign connect_to_es_cu_M01_AXI_WDATA = S00_AXI1_wdata[31:0];
  assign connect_to_es_cu_M01_AXI_WSTRB = S00_AXI1_wstrb[3:0];
  assign connect_to_es_cu_M01_AXI_WVALID = S00_AXI1_wvalid[0];
  assign ext_reset_in_0_1 = ext_reset_in;
  assign ext_reset_in_1_1 = dma_pcie_arst;
  assign ext_reset_in_2_1 = ext_reset_in1;
  assign slowest_sync_clk_0_1 = slowest_sync_clk;
  assign slowest_sync_clk_1_1 = dma_pcie_aclk;
  assign slowest_sync_clk_2_1 = slowest_sync_clk1;
  assign ui_clk_clk = ddr_default_clk_0;
  assign ui_clk_sync_rst = ddr_default_rst_0;
  assign xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARREADY = M00_AXI_arready;
  assign xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWREADY = M00_AXI_awready;
  assign xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BID = M00_AXI_bid[0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BRESP = M00_AXI_bresp[1:0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BUSER = M00_AXI_buser[0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BVALID = M00_AXI_bvalid;
  assign xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RDATA = M00_AXI_rdata[31:0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RID = M00_AXI_rid[0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RLAST = M00_AXI_rlast;
  assign xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RRESP = M00_AXI_rresp[1:0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RUSER = M00_AXI_ruser[0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RVALID = M00_AXI_rvalid;
  assign xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WREADY = M00_AXI_wready;
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARADDR = S00_AXI_araddr[63:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARBURST = S00_AXI_arburst[1:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARCACHE = S00_AXI_arcache[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARID = S00_AXI_arid[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARLEN = S00_AXI_arlen[7:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARLOCK = S00_AXI_arlock;
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARPROT = S00_AXI_arprot[2:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARQOS = S00_AXI_arqos[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARSIZE = S00_AXI_arsize[2:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARUSER = S00_AXI_aruser[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARVALID = S00_AXI_arvalid;
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWADDR = S00_AXI_awaddr[63:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWBURST = S00_AXI_awburst[1:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWCACHE = S00_AXI_awcache[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWID = S00_AXI_awid[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWLEN = S00_AXI_awlen[7:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWLOCK = S00_AXI_awlock;
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWPROT = S00_AXI_awprot[2:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWQOS = S00_AXI_awqos[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWSIZE = S00_AXI_awsize[2:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWUSER = S00_AXI_awuser[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWVALID = S00_AXI_awvalid;
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BREADY = S00_AXI_bready;
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RREADY = S00_AXI_rready;
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WDATA = S00_AXI_wdata[31:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WLAST = S00_AXI_wlast;
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WSTRB = S00_AXI_wstrb[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WUSER = S00_AXI_wuser[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WVALID = S00_AXI_wvalid;
  pfm_dynamic_icn_pass_0_0 icn_pass_0
       (.m00_axi_aclk(ui_clk_clk),
        .m00_axi_araddr(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARADDR),
        .m00_axi_arburst(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARBURST),
        .m00_axi_arcache(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARCACHE),
        .m00_axi_aresetn(ui_clk_sync_rst),
        .m00_axi_arid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARID),
        .m00_axi_arlen(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARLEN),
        .m00_axi_arlock(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARLOCK),
        .m00_axi_arprot(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARPROT),
        .m00_axi_arqos(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARQOS),
        .m00_axi_arready(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARREADY),
        .m00_axi_arsize(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARSIZE),
        .m00_axi_aruser(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARUSER),
        .m00_axi_arvalid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_ARVALID),
        .m00_axi_awaddr(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWADDR),
        .m00_axi_awburst(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWBURST),
        .m00_axi_awcache(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWCACHE),
        .m00_axi_awid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWID),
        .m00_axi_awlen(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWLEN),
        .m00_axi_awlock(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWLOCK),
        .m00_axi_awprot(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWPROT),
        .m00_axi_awqos(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWQOS),
        .m00_axi_awready(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWREADY),
        .m00_axi_awsize(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWSIZE),
        .m00_axi_awuser(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWUSER),
        .m00_axi_awvalid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_AWVALID),
        .m00_axi_bid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BID),
        .m00_axi_bready(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BREADY),
        .m00_axi_bresp(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BRESP),
        .m00_axi_buser(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BUSER),
        .m00_axi_bvalid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_BVALID),
        .m00_axi_rdata(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RDATA),
        .m00_axi_rid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RID),
        .m00_axi_rlast(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RLAST),
        .m00_axi_rready(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RREADY),
        .m00_axi_rresp(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RRESP),
        .m00_axi_ruser(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RUSER),
        .m00_axi_rvalid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_RVALID),
        .m00_axi_wdata(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WDATA),
        .m00_axi_wlast(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WLAST),
        .m00_axi_wready(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WREADY),
        .m00_axi_wstrb(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WSTRB),
        .m00_axi_wuser(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WUSER),
        .m00_axi_wvalid(xtlm_simple_intercon_0_ICN_M_AXI_0_AXI_WVALID),
        .s00_axi_aclk(ui_clk_clk),
        .s00_axi_araddr(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARADDR[5:0]),
        .s00_axi_arburst(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARBURST),
        .s00_axi_arcache(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARCACHE),
        .s00_axi_aresetn(ui_clk_sync_rst),
        .s00_axi_arid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARID),
        .s00_axi_arlen(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARLEN),
        .s00_axi_arlock(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARLOCK),
        .s00_axi_arprot(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARPROT),
        .s00_axi_arqos(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARQOS),
        .s00_axi_arready(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARREADY),
        .s00_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_arsize(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARSIZE),
        .s00_axi_aruser(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARUSER),
        .s00_axi_arvalid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_ARVALID),
        .s00_axi_awaddr(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWADDR[5:0]),
        .s00_axi_awburst(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWBURST),
        .s00_axi_awcache(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWCACHE),
        .s00_axi_awid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWID),
        .s00_axi_awlen(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWLEN),
        .s00_axi_awlock(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWLOCK),
        .s00_axi_awprot(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWPROT),
        .s00_axi_awqos(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWQOS),
        .s00_axi_awready(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWREADY),
        .s00_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_awsize(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWSIZE),
        .s00_axi_awuser(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWUSER),
        .s00_axi_awvalid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_AWVALID),
        .s00_axi_bid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BID),
        .s00_axi_bready(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BREADY),
        .s00_axi_bresp(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BRESP),
        .s00_axi_buser(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BUSER),
        .s00_axi_bvalid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_BVALID),
        .s00_axi_rdata(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RDATA),
        .s00_axi_rid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RID),
        .s00_axi_rlast(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RLAST),
        .s00_axi_rready(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RREADY),
        .s00_axi_rresp(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RRESP),
        .s00_axi_ruser(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RUSER),
        .s00_axi_rvalid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_RVALID),
        .s00_axi_wdata(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WDATA),
        .s00_axi_wlast(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WLAST),
        .s00_axi_wready(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WREADY),
        .s00_axi_wstrb(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WSTRB),
        .s00_axi_wuser(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WUSER),
        .s00_axi_wvalid(xtlm_simple_intercon_0_ICN_S_AXI_0_AXI_WVALID));
  pfm_dynamic_interconnect_axilite_user_0_0 interconnect_axilite_user_0
       (.ACLK(slowest_sync_clk_1_1),
        .ARESETN(ext_reset_in_1_1),
        .M00_ACLK(slowest_sync_clk_1_1),
        .M00_ARESETN(ext_reset_in_1_1),
        .M00_AXI_araddr(interconnect_axilite_0_M00_AXI_ARADDR),
        .M00_AXI_arready(interconnect_axilite_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(interconnect_axilite_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_axilite_0_M00_AXI_AWADDR),
        .M00_AXI_awready(interconnect_axilite_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(interconnect_axilite_0_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_axilite_0_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_axilite_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_axilite_0_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_axilite_0_M00_AXI_RDATA),
        .M00_AXI_rready(interconnect_axilite_0_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_axilite_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_axilite_0_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_axilite_0_M00_AXI_WDATA),
        .M00_AXI_wready(interconnect_axilite_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_axilite_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_axilite_0_M00_AXI_WVALID),
        .S00_ACLK(slowest_sync_clk_1_1),
        .S00_ARESETN(ext_reset_in_1_1),
        .S00_AXI_araddr(connect_to_es_cu_M01_AXI_ARADDR),
        .S00_AXI_arready(connect_to_es_cu_M01_AXI_ARREADY),
        .S00_AXI_arvalid(connect_to_es_cu_M01_AXI_ARVALID),
        .S00_AXI_awaddr(connect_to_es_cu_M01_AXI_AWADDR),
        .S00_AXI_awready(connect_to_es_cu_M01_AXI_AWREADY),
        .S00_AXI_awvalid(connect_to_es_cu_M01_AXI_AWVALID),
        .S00_AXI_bready(connect_to_es_cu_M01_AXI_BREADY),
        .S00_AXI_bresp(connect_to_es_cu_M01_AXI_BRESP),
        .S00_AXI_bvalid(connect_to_es_cu_M01_AXI_BVALID),
        .S00_AXI_rdata(connect_to_es_cu_M01_AXI_RDATA),
        .S00_AXI_rready(connect_to_es_cu_M01_AXI_RREADY),
        .S00_AXI_rresp(connect_to_es_cu_M01_AXI_RRESP),
        .S00_AXI_rvalid(connect_to_es_cu_M01_AXI_RVALID),
        .S00_AXI_wdata(connect_to_es_cu_M01_AXI_WDATA),
        .S00_AXI_wready(connect_to_es_cu_M01_AXI_WREADY),
        .S00_AXI_wstrb(connect_to_es_cu_M01_AXI_WSTRB),
        .S00_AXI_wvalid(connect_to_es_cu_M01_AXI_WVALID));
  pfm_dynamic_psr_kernel2_clk_0_0 psr_kernel2_clk_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_2_1),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk_2_1));
  pfm_dynamic_psr_kernel_clk_0_0 psr_kernel_clk_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_0_1),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk_0_1));
  pfm_dynamic_to_delete_kernel_ctrl_0_0 to_delete_kernel_ctrl_0
       (.gpio_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aclk(slowest_sync_clk_1_1),
        .s_axi_araddr(interconnect_axilite_0_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(ext_reset_in_1_1),
        .s_axi_arready(interconnect_axilite_0_M00_AXI_ARREADY),
        .s_axi_arvalid(interconnect_axilite_0_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_axilite_0_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(interconnect_axilite_0_M00_AXI_AWREADY),
        .s_axi_awvalid(interconnect_axilite_0_M00_AXI_AWVALID),
        .s_axi_bready(interconnect_axilite_0_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_axilite_0_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_axilite_0_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_axilite_0_M00_AXI_RDATA),
        .s_axi_rready(interconnect_axilite_0_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_axilite_0_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_axilite_0_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_axilite_0_M00_AXI_WDATA),
        .s_axi_wready(interconnect_axilite_0_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_axilite_0_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_axilite_0_M00_AXI_WVALID));
endmodule

module slr1_imp_IZT2WG
   (M00_AXI1_araddr,
    M00_AXI1_arburst,
    M00_AXI1_arcache,
    M00_AXI1_arid,
    M00_AXI1_arlen,
    M00_AXI1_arlock,
    M00_AXI1_arprot,
    M00_AXI1_arqos,
    M00_AXI1_arready,
    M00_AXI1_arsize,
    M00_AXI1_aruser,
    M00_AXI1_arvalid,
    M00_AXI1_awaddr,
    M00_AXI1_awburst,
    M00_AXI1_awcache,
    M00_AXI1_awid,
    M00_AXI1_awlen,
    M00_AXI1_awlock,
    M00_AXI1_awprot,
    M00_AXI1_awqos,
    M00_AXI1_awready,
    M00_AXI1_awsize,
    M00_AXI1_awuser,
    M00_AXI1_awvalid,
    M00_AXI1_bid,
    M00_AXI1_bready,
    M00_AXI1_bresp,
    M00_AXI1_buser,
    M00_AXI1_bvalid,
    M00_AXI1_rdata,
    M00_AXI1_rid,
    M00_AXI1_rlast,
    M00_AXI1_rready,
    M00_AXI1_rresp,
    M00_AXI1_ruser,
    M00_AXI1_rvalid,
    M00_AXI1_wdata,
    M00_AXI1_wlast,
    M00_AXI1_wready,
    M00_AXI1_wstrb,
    M00_AXI1_wuser,
    M00_AXI1_wvalid,
    M00_AXI2_araddr,
    M00_AXI2_arprot,
    M00_AXI2_arready,
    M00_AXI2_arvalid,
    M00_AXI2_awaddr,
    M00_AXI2_awprot,
    M00_AXI2_awready,
    M00_AXI2_awvalid,
    M00_AXI2_bready,
    M00_AXI2_bresp,
    M00_AXI2_bvalid,
    M00_AXI2_rdata,
    M00_AXI2_rready,
    M00_AXI2_rresp,
    M00_AXI2_rvalid,
    M00_AXI2_wdata,
    M00_AXI2_wready,
    M00_AXI2_wstrb,
    M00_AXI2_wvalid,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_buser,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_ruser,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wuser,
    M00_AXI_wvalid,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_AXI1_araddr,
    S00_AXI1_arburst,
    S00_AXI1_arcache,
    S00_AXI1_arid,
    S00_AXI1_arlen,
    S00_AXI1_arlock,
    S00_AXI1_arprot,
    S00_AXI1_arqos,
    S00_AXI1_arready,
    S00_AXI1_arsize,
    S00_AXI1_aruser,
    S00_AXI1_arvalid,
    S00_AXI1_awaddr,
    S00_AXI1_awburst,
    S00_AXI1_awcache,
    S00_AXI1_awid,
    S00_AXI1_awlen,
    S00_AXI1_awlock,
    S00_AXI1_awprot,
    S00_AXI1_awqos,
    S00_AXI1_awready,
    S00_AXI1_awsize,
    S00_AXI1_awuser,
    S00_AXI1_awvalid,
    S00_AXI1_bid,
    S00_AXI1_bready,
    S00_AXI1_bresp,
    S00_AXI1_buser,
    S00_AXI1_bvalid,
    S00_AXI1_rdata,
    S00_AXI1_rid,
    S00_AXI1_rlast,
    S00_AXI1_rready,
    S00_AXI1_rresp,
    S00_AXI1_ruser,
    S00_AXI1_rvalid,
    S00_AXI1_wdata,
    S00_AXI1_wlast,
    S00_AXI1_wready,
    S00_AXI1_wstrb,
    S00_AXI1_wuser,
    S00_AXI1_wvalid,
    S00_AXI2_araddr,
    S00_AXI2_arprot,
    S00_AXI2_arready,
    S00_AXI2_arvalid,
    S00_AXI2_awaddr,
    S00_AXI2_awprot,
    S00_AXI2_awready,
    S00_AXI2_awvalid,
    S00_AXI2_bready,
    S00_AXI2_bresp,
    S00_AXI2_bvalid,
    S00_AXI2_rdata,
    S00_AXI2_rready,
    S00_AXI2_rresp,
    S00_AXI2_rvalid,
    S00_AXI2_wdata,
    S00_AXI2_wready,
    S00_AXI2_wstrb,
    S00_AXI2_wvalid,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_buser,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wuser,
    S00_AXI_wvalid,
    ddr_default_clk_0,
    ddr_default_rst_0,
    dma_pcie_aclk,
    dma_pcie_arst,
    ext_reset_in,
    ext_reset_in1,
    peripheral_aresetn,
    slowest_sync_clk,
    slowest_sync_clk1);
  output [63:0]M00_AXI1_araddr;
  output [1:0]M00_AXI1_arburst;
  output [3:0]M00_AXI1_arcache;
  output [0:0]M00_AXI1_arid;
  output [7:0]M00_AXI1_arlen;
  output M00_AXI1_arlock;
  output [2:0]M00_AXI1_arprot;
  output [3:0]M00_AXI1_arqos;
  input M00_AXI1_arready;
  output [2:0]M00_AXI1_arsize;
  output [0:0]M00_AXI1_aruser;
  output M00_AXI1_arvalid;
  output [63:0]M00_AXI1_awaddr;
  output [1:0]M00_AXI1_awburst;
  output [3:0]M00_AXI1_awcache;
  output [0:0]M00_AXI1_awid;
  output [7:0]M00_AXI1_awlen;
  output M00_AXI1_awlock;
  output [2:0]M00_AXI1_awprot;
  output [3:0]M00_AXI1_awqos;
  input M00_AXI1_awready;
  output [2:0]M00_AXI1_awsize;
  output [0:0]M00_AXI1_awuser;
  output M00_AXI1_awvalid;
  input [0:0]M00_AXI1_bid;
  output M00_AXI1_bready;
  input [1:0]M00_AXI1_bresp;
  input [0:0]M00_AXI1_buser;
  input M00_AXI1_bvalid;
  input [31:0]M00_AXI1_rdata;
  input [0:0]M00_AXI1_rid;
  input M00_AXI1_rlast;
  output M00_AXI1_rready;
  input [1:0]M00_AXI1_rresp;
  input [0:0]M00_AXI1_ruser;
  input M00_AXI1_rvalid;
  output [31:0]M00_AXI1_wdata;
  output M00_AXI1_wlast;
  input M00_AXI1_wready;
  output [3:0]M00_AXI1_wstrb;
  output [0:0]M00_AXI1_wuser;
  output M00_AXI1_wvalid;
  output [63:0]M00_AXI2_araddr;
  output [2:0]M00_AXI2_arprot;
  input M00_AXI2_arready;
  output M00_AXI2_arvalid;
  output [63:0]M00_AXI2_awaddr;
  output [2:0]M00_AXI2_awprot;
  input M00_AXI2_awready;
  output M00_AXI2_awvalid;
  output M00_AXI2_bready;
  input [1:0]M00_AXI2_bresp;
  input M00_AXI2_bvalid;
  input [31:0]M00_AXI2_rdata;
  output M00_AXI2_rready;
  input [1:0]M00_AXI2_rresp;
  input M00_AXI2_rvalid;
  output [31:0]M00_AXI2_wdata;
  input M00_AXI2_wready;
  output [3:0]M00_AXI2_wstrb;
  output M00_AXI2_wvalid;
  output [63:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output [0:0]M00_AXI_aruser;
  output M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output [0:0]M00_AXI_awuser;
  output M00_AXI_awvalid;
  input [0:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_buser;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input [0:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_ruser;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wuser;
  output M00_AXI_wvalid;
  output [5:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [5:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input [63:0]S00_AXI1_araddr;
  input [1:0]S00_AXI1_arburst;
  input [3:0]S00_AXI1_arcache;
  input [0:0]S00_AXI1_arid;
  input [7:0]S00_AXI1_arlen;
  input S00_AXI1_arlock;
  input [2:0]S00_AXI1_arprot;
  input [3:0]S00_AXI1_arqos;
  output S00_AXI1_arready;
  input [2:0]S00_AXI1_arsize;
  input [0:0]S00_AXI1_aruser;
  input S00_AXI1_arvalid;
  input [63:0]S00_AXI1_awaddr;
  input [1:0]S00_AXI1_awburst;
  input [3:0]S00_AXI1_awcache;
  input [0:0]S00_AXI1_awid;
  input [7:0]S00_AXI1_awlen;
  input S00_AXI1_awlock;
  input [2:0]S00_AXI1_awprot;
  input [3:0]S00_AXI1_awqos;
  output S00_AXI1_awready;
  input [2:0]S00_AXI1_awsize;
  input [0:0]S00_AXI1_awuser;
  input S00_AXI1_awvalid;
  output [0:0]S00_AXI1_bid;
  input S00_AXI1_bready;
  output [1:0]S00_AXI1_bresp;
  output [0:0]S00_AXI1_buser;
  output S00_AXI1_bvalid;
  output [31:0]S00_AXI1_rdata;
  output [0:0]S00_AXI1_rid;
  output S00_AXI1_rlast;
  input S00_AXI1_rready;
  output [1:0]S00_AXI1_rresp;
  output [0:0]S00_AXI1_ruser;
  output S00_AXI1_rvalid;
  input [31:0]S00_AXI1_wdata;
  input S00_AXI1_wlast;
  output S00_AXI1_wready;
  input [3:0]S00_AXI1_wstrb;
  input [0:0]S00_AXI1_wuser;
  input S00_AXI1_wvalid;
  input [63:0]S00_AXI2_araddr;
  input [2:0]S00_AXI2_arprot;
  output [0:0]S00_AXI2_arready;
  input [0:0]S00_AXI2_arvalid;
  input [63:0]S00_AXI2_awaddr;
  input [2:0]S00_AXI2_awprot;
  output [0:0]S00_AXI2_awready;
  input [0:0]S00_AXI2_awvalid;
  input [0:0]S00_AXI2_bready;
  output [1:0]S00_AXI2_bresp;
  output [0:0]S00_AXI2_bvalid;
  output [31:0]S00_AXI2_rdata;
  input [0:0]S00_AXI2_rready;
  output [1:0]S00_AXI2_rresp;
  output [0:0]S00_AXI2_rvalid;
  input [31:0]S00_AXI2_wdata;
  output [0:0]S00_AXI2_wready;
  input [3:0]S00_AXI2_wstrb;
  input [0:0]S00_AXI2_wvalid;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_buser;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_ruser;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wuser;
  input S00_AXI_wvalid;
  input ddr_default_clk_0;
  input ddr_default_rst_0;
  input dma_pcie_aclk;
  input dma_pcie_arst;
  input ext_reset_in;
  input ext_reset_in1;
  output [0:0]peripheral_aresetn;
  input slowest_sync_clk;
  input slowest_sync_clk1;

  wire [5:0]Conn1_ARADDR;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire Conn1_ARVALID;
  wire [5:0]Conn1_AWADDR;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [63:0]connect_to_es_cu_M02_AXI_ARADDR;
  wire [2:0]connect_to_es_cu_M02_AXI_ARPROT;
  wire [0:0]connect_to_es_cu_M02_AXI_ARREADY;
  wire [0:0]connect_to_es_cu_M02_AXI_ARVALID;
  wire [63:0]connect_to_es_cu_M02_AXI_AWADDR;
  wire [2:0]connect_to_es_cu_M02_AXI_AWPROT;
  wire [0:0]connect_to_es_cu_M02_AXI_AWREADY;
  wire [0:0]connect_to_es_cu_M02_AXI_AWVALID;
  wire [0:0]connect_to_es_cu_M02_AXI_BREADY;
  wire [1:0]connect_to_es_cu_M02_AXI_BRESP;
  wire [0:0]connect_to_es_cu_M02_AXI_BVALID;
  wire [31:0]connect_to_es_cu_M02_AXI_RDATA;
  wire [0:0]connect_to_es_cu_M02_AXI_RREADY;
  wire [1:0]connect_to_es_cu_M02_AXI_RRESP;
  wire [0:0]connect_to_es_cu_M02_AXI_RVALID;
  wire [31:0]connect_to_es_cu_M02_AXI_WDATA;
  wire [0:0]connect_to_es_cu_M02_AXI_WREADY;
  wire [3:0]connect_to_es_cu_M02_AXI_WSTRB;
  wire [0:0]connect_to_es_cu_M02_AXI_WVALID;
  wire ext_reset_in_0_1;
  wire ext_reset_in_1_1;
  wire ext_reset_in_2_1;
  wire [63:0]interconnect_axilite_1_M00_AXI_ARADDR;
  wire [2:0]interconnect_axilite_1_M00_AXI_ARPROT;
  wire interconnect_axilite_1_M00_AXI_ARREADY;
  wire interconnect_axilite_1_M00_AXI_ARVALID;
  wire [63:0]interconnect_axilite_1_M00_AXI_AWADDR;
  wire [2:0]interconnect_axilite_1_M00_AXI_AWPROT;
  wire interconnect_axilite_1_M00_AXI_AWREADY;
  wire interconnect_axilite_1_M00_AXI_AWVALID;
  wire interconnect_axilite_1_M00_AXI_BREADY;
  wire [1:0]interconnect_axilite_1_M00_AXI_BRESP;
  wire interconnect_axilite_1_M00_AXI_BVALID;
  wire [31:0]interconnect_axilite_1_M00_AXI_RDATA;
  wire interconnect_axilite_1_M00_AXI_RREADY;
  wire [1:0]interconnect_axilite_1_M00_AXI_RRESP;
  wire interconnect_axilite_1_M00_AXI_RVALID;
  wire [31:0]interconnect_axilite_1_M00_AXI_WDATA;
  wire interconnect_axilite_1_M00_AXI_WREADY;
  wire [3:0]interconnect_axilite_1_M00_AXI_WSTRB;
  wire interconnect_axilite_1_M00_AXI_WVALID;
  wire [0:0]psr_kernel_clk_1_interconnect_aresetn;
  wire [0:0]psr_kernel_clk_1_peripheral_aresetn;
  wire slowest_sync_clk_0_1;
  wire slowest_sync_clk_1_1;
  wire slowest_sync_clk_2_1;
  wire ui_clk_clk;
  wire ui_clk_sync_rst;
  wire [63:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARLEN;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARQOS;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWLEN;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWQOS;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BID;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RID;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RLAST;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WDATA;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WLAST;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WREADY;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WSTRB;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARLEN;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARQOS;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWLEN;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWQOS;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BID;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RID;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RLAST;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WDATA;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WLAST;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WREADY;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WSTRB;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARLEN;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARQOS;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWLEN;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWQOS;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BID;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RID;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RLAST;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WDATA;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WLAST;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WREADY;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WSTRB;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARLEN;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARQOS;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWLEN;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWQOS;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BID;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RID;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RLAST;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WDATA;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WLAST;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WREADY;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WSTRB;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WVALID;

  assign Conn1_ARREADY = M01_AXI_arready;
  assign Conn1_AWREADY = M01_AXI_awready;
  assign Conn1_BRESP = M01_AXI_bresp[1:0];
  assign Conn1_BVALID = M01_AXI_bvalid;
  assign Conn1_RDATA = M01_AXI_rdata[31:0];
  assign Conn1_RRESP = M01_AXI_rresp[1:0];
  assign Conn1_RVALID = M01_AXI_rvalid;
  assign Conn1_WREADY = M01_AXI_wready;
  assign M00_AXI1_araddr[63:0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARADDR;
  assign M00_AXI1_arburst[1:0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARBURST;
  assign M00_AXI1_arcache[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARCACHE;
  assign M00_AXI1_arid[0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARID;
  assign M00_AXI1_arlen[7:0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARLEN;
  assign M00_AXI1_arlock = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARLOCK;
  assign M00_AXI1_arprot[2:0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARPROT;
  assign M00_AXI1_arqos[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARQOS;
  assign M00_AXI1_arsize[2:0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARSIZE;
  assign M00_AXI1_aruser[0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARUSER;
  assign M00_AXI1_arvalid = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARVALID;
  assign M00_AXI1_awaddr[63:0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWADDR;
  assign M00_AXI1_awburst[1:0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWBURST;
  assign M00_AXI1_awcache[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWCACHE;
  assign M00_AXI1_awid[0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWID;
  assign M00_AXI1_awlen[7:0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWLEN;
  assign M00_AXI1_awlock = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWLOCK;
  assign M00_AXI1_awprot[2:0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWPROT;
  assign M00_AXI1_awqos[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWQOS;
  assign M00_AXI1_awsize[2:0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWSIZE;
  assign M00_AXI1_awuser[0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWUSER;
  assign M00_AXI1_awvalid = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWVALID;
  assign M00_AXI1_bready = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BREADY;
  assign M00_AXI1_rready = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RREADY;
  assign M00_AXI1_wdata[31:0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WDATA;
  assign M00_AXI1_wlast = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WLAST;
  assign M00_AXI1_wstrb[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WSTRB;
  assign M00_AXI1_wuser[0] = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WUSER;
  assign M00_AXI1_wvalid = xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WVALID;
  assign M00_AXI2_araddr[63:0] = interconnect_axilite_1_M00_AXI_ARADDR;
  assign M00_AXI2_arprot[2:0] = interconnect_axilite_1_M00_AXI_ARPROT;
  assign M00_AXI2_arvalid = interconnect_axilite_1_M00_AXI_ARVALID;
  assign M00_AXI2_awaddr[63:0] = interconnect_axilite_1_M00_AXI_AWADDR;
  assign M00_AXI2_awprot[2:0] = interconnect_axilite_1_M00_AXI_AWPROT;
  assign M00_AXI2_awvalid = interconnect_axilite_1_M00_AXI_AWVALID;
  assign M00_AXI2_bready = interconnect_axilite_1_M00_AXI_BREADY;
  assign M00_AXI2_rready = interconnect_axilite_1_M00_AXI_RREADY;
  assign M00_AXI2_wdata[31:0] = interconnect_axilite_1_M00_AXI_WDATA;
  assign M00_AXI2_wstrb[3:0] = interconnect_axilite_1_M00_AXI_WSTRB;
  assign M00_AXI2_wvalid = interconnect_axilite_1_M00_AXI_WVALID;
  assign M00_AXI_araddr[63:0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARADDR;
  assign M00_AXI_arburst[1:0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARBURST;
  assign M00_AXI_arcache[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARCACHE;
  assign M00_AXI_arid[0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARID;
  assign M00_AXI_arlen[7:0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARLEN;
  assign M00_AXI_arlock = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARLOCK;
  assign M00_AXI_arprot[2:0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARPROT;
  assign M00_AXI_arqos[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARQOS;
  assign M00_AXI_arsize[2:0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARSIZE;
  assign M00_AXI_aruser[0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARUSER;
  assign M00_AXI_arvalid = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARVALID;
  assign M00_AXI_awaddr[63:0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWADDR;
  assign M00_AXI_awburst[1:0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWBURST;
  assign M00_AXI_awcache[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWCACHE;
  assign M00_AXI_awid[0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWID;
  assign M00_AXI_awlen[7:0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWLEN;
  assign M00_AXI_awlock = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWLOCK;
  assign M00_AXI_awprot[2:0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWPROT;
  assign M00_AXI_awqos[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWQOS;
  assign M00_AXI_awsize[2:0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWSIZE;
  assign M00_AXI_awuser[0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWUSER;
  assign M00_AXI_awvalid = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWVALID;
  assign M00_AXI_bready = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BREADY;
  assign M00_AXI_rready = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RREADY;
  assign M00_AXI_wdata[31:0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WDATA;
  assign M00_AXI_wlast = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WLAST;
  assign M00_AXI_wstrb[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WSTRB;
  assign M00_AXI_wuser[0] = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WUSER;
  assign M00_AXI_wvalid = xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WVALID;
  assign M01_AXI_araddr[5:0] = Conn1_ARADDR;
  assign M01_AXI_arprot[2:0] = Conn1_ARPROT;
  assign M01_AXI_arvalid = Conn1_ARVALID;
  assign M01_AXI_awaddr[5:0] = Conn1_AWADDR;
  assign M01_AXI_awprot[2:0] = Conn1_AWPROT;
  assign M01_AXI_awvalid = Conn1_AWVALID;
  assign M01_AXI_bready = Conn1_BREADY;
  assign M01_AXI_rready = Conn1_RREADY;
  assign M01_AXI_wdata[31:0] = Conn1_WDATA;
  assign M01_AXI_wstrb[3:0] = Conn1_WSTRB;
  assign M01_AXI_wvalid = Conn1_WVALID;
  assign S00_AXI1_arready = xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARREADY;
  assign S00_AXI1_awready = xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWREADY;
  assign S00_AXI1_bid[0] = xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BID;
  assign S00_AXI1_bresp[1:0] = xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BRESP;
  assign S00_AXI1_buser[0] = xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BUSER;
  assign S00_AXI1_bvalid = xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BVALID;
  assign S00_AXI1_rdata[31:0] = xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RDATA;
  assign S00_AXI1_rid[0] = xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RID;
  assign S00_AXI1_rlast = xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RLAST;
  assign S00_AXI1_rresp[1:0] = xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RRESP;
  assign S00_AXI1_ruser[0] = xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RUSER;
  assign S00_AXI1_rvalid = xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RVALID;
  assign S00_AXI1_wready = xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WREADY;
  assign S00_AXI2_arready[0] = connect_to_es_cu_M02_AXI_ARREADY;
  assign S00_AXI2_awready[0] = connect_to_es_cu_M02_AXI_AWREADY;
  assign S00_AXI2_bresp[1:0] = connect_to_es_cu_M02_AXI_BRESP;
  assign S00_AXI2_bvalid[0] = connect_to_es_cu_M02_AXI_BVALID;
  assign S00_AXI2_rdata[31:0] = connect_to_es_cu_M02_AXI_RDATA;
  assign S00_AXI2_rresp[1:0] = connect_to_es_cu_M02_AXI_RRESP;
  assign S00_AXI2_rvalid[0] = connect_to_es_cu_M02_AXI_RVALID;
  assign S00_AXI2_wready[0] = connect_to_es_cu_M02_AXI_WREADY;
  assign S00_AXI_arready = xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARREADY;
  assign S00_AXI_awready = xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWREADY;
  assign S00_AXI_bid[0] = xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BID;
  assign S00_AXI_bresp[1:0] = xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BRESP;
  assign S00_AXI_buser[0] = xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BUSER;
  assign S00_AXI_bvalid = xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BVALID;
  assign S00_AXI_rdata[31:0] = xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RDATA;
  assign S00_AXI_rid[0] = xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RID;
  assign S00_AXI_rlast = xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RLAST;
  assign S00_AXI_rresp[1:0] = xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RRESP;
  assign S00_AXI_ruser[0] = xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RUSER;
  assign S00_AXI_rvalid = xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RVALID;
  assign S00_AXI_wready = xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WREADY;
  assign connect_to_es_cu_M02_AXI_ARADDR = S00_AXI2_araddr[63:0];
  assign connect_to_es_cu_M02_AXI_ARPROT = S00_AXI2_arprot[2:0];
  assign connect_to_es_cu_M02_AXI_ARVALID = S00_AXI2_arvalid[0];
  assign connect_to_es_cu_M02_AXI_AWADDR = S00_AXI2_awaddr[63:0];
  assign connect_to_es_cu_M02_AXI_AWPROT = S00_AXI2_awprot[2:0];
  assign connect_to_es_cu_M02_AXI_AWVALID = S00_AXI2_awvalid[0];
  assign connect_to_es_cu_M02_AXI_BREADY = S00_AXI2_bready[0];
  assign connect_to_es_cu_M02_AXI_RREADY = S00_AXI2_rready[0];
  assign connect_to_es_cu_M02_AXI_WDATA = S00_AXI2_wdata[31:0];
  assign connect_to_es_cu_M02_AXI_WSTRB = S00_AXI2_wstrb[3:0];
  assign connect_to_es_cu_M02_AXI_WVALID = S00_AXI2_wvalid[0];
  assign ext_reset_in_0_1 = ext_reset_in;
  assign ext_reset_in_1_1 = dma_pcie_arst;
  assign ext_reset_in_2_1 = ext_reset_in1;
  assign interconnect_axilite_1_M00_AXI_ARREADY = M00_AXI2_arready;
  assign interconnect_axilite_1_M00_AXI_AWREADY = M00_AXI2_awready;
  assign interconnect_axilite_1_M00_AXI_BRESP = M00_AXI2_bresp[1:0];
  assign interconnect_axilite_1_M00_AXI_BVALID = M00_AXI2_bvalid;
  assign interconnect_axilite_1_M00_AXI_RDATA = M00_AXI2_rdata[31:0];
  assign interconnect_axilite_1_M00_AXI_RRESP = M00_AXI2_rresp[1:0];
  assign interconnect_axilite_1_M00_AXI_RVALID = M00_AXI2_rvalid;
  assign interconnect_axilite_1_M00_AXI_WREADY = M00_AXI2_wready;
  assign peripheral_aresetn[0] = psr_kernel_clk_1_peripheral_aresetn;
  assign slowest_sync_clk_0_1 = slowest_sync_clk;
  assign slowest_sync_clk_1_1 = dma_pcie_aclk;
  assign slowest_sync_clk_2_1 = slowest_sync_clk1;
  assign ui_clk_clk = ddr_default_clk_0;
  assign ui_clk_sync_rst = ddr_default_rst_0;
  assign xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARREADY = M00_AXI_arready;
  assign xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWREADY = M00_AXI_awready;
  assign xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BID = M00_AXI_bid[0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BRESP = M00_AXI_bresp[1:0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BUSER = M00_AXI_buser[0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BVALID = M00_AXI_bvalid;
  assign xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RDATA = M00_AXI_rdata[31:0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RID = M00_AXI_rid[0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RLAST = M00_AXI_rlast;
  assign xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RRESP = M00_AXI_rresp[1:0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RUSER = M00_AXI_ruser[0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RVALID = M00_AXI_rvalid;
  assign xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WREADY = M00_AXI_wready;
  assign xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARREADY = M00_AXI1_arready;
  assign xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWREADY = M00_AXI1_awready;
  assign xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BID = M00_AXI1_bid[0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BRESP = M00_AXI1_bresp[1:0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BUSER = M00_AXI1_buser[0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BVALID = M00_AXI1_bvalid;
  assign xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RDATA = M00_AXI1_rdata[31:0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RID = M00_AXI1_rid[0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RLAST = M00_AXI1_rlast;
  assign xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RRESP = M00_AXI1_rresp[1:0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RUSER = M00_AXI1_ruser[0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RVALID = M00_AXI1_rvalid;
  assign xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WREADY = M00_AXI1_wready;
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARADDR = S00_AXI_araddr[63:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARBURST = S00_AXI_arburst[1:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARCACHE = S00_AXI_arcache[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARID = S00_AXI_arid[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARLEN = S00_AXI_arlen[7:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARLOCK = S00_AXI_arlock;
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARPROT = S00_AXI_arprot[2:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARQOS = S00_AXI_arqos[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARSIZE = S00_AXI_arsize[2:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARUSER = S00_AXI_aruser[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARVALID = S00_AXI_arvalid;
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWADDR = S00_AXI_awaddr[63:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWBURST = S00_AXI_awburst[1:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWCACHE = S00_AXI_awcache[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWID = S00_AXI_awid[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWLEN = S00_AXI_awlen[7:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWLOCK = S00_AXI_awlock;
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWPROT = S00_AXI_awprot[2:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWQOS = S00_AXI_awqos[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWSIZE = S00_AXI_awsize[2:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWUSER = S00_AXI_awuser[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWVALID = S00_AXI_awvalid;
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BREADY = S00_AXI_bready;
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RREADY = S00_AXI_rready;
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WDATA = S00_AXI_wdata[31:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WLAST = S00_AXI_wlast;
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WSTRB = S00_AXI_wstrb[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WUSER = S00_AXI_wuser[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WVALID = S00_AXI_wvalid;
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARADDR = S00_AXI1_araddr[63:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARBURST = S00_AXI1_arburst[1:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARCACHE = S00_AXI1_arcache[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARID = S00_AXI1_arid[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARLEN = S00_AXI1_arlen[7:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARLOCK = S00_AXI1_arlock;
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARPROT = S00_AXI1_arprot[2:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARQOS = S00_AXI1_arqos[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARSIZE = S00_AXI1_arsize[2:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARUSER = S00_AXI1_aruser[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARVALID = S00_AXI1_arvalid;
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWADDR = S00_AXI1_awaddr[63:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWBURST = S00_AXI1_awburst[1:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWCACHE = S00_AXI1_awcache[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWID = S00_AXI1_awid[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWLEN = S00_AXI1_awlen[7:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWLOCK = S00_AXI1_awlock;
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWPROT = S00_AXI1_awprot[2:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWQOS = S00_AXI1_awqos[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWSIZE = S00_AXI1_awsize[2:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWUSER = S00_AXI1_awuser[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWVALID = S00_AXI1_awvalid;
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BREADY = S00_AXI1_bready;
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RREADY = S00_AXI1_rready;
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WDATA = S00_AXI1_wdata[31:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WLAST = S00_AXI1_wlast;
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WSTRB = S00_AXI1_wstrb[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WUSER = S00_AXI1_wuser[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WVALID = S00_AXI1_wvalid;
  pfm_dynamic_icn_pass_1_0 icn_pass_1
       (.m00_axi_aclk(ui_clk_clk),
        .m00_axi_araddr(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARADDR),
        .m00_axi_arburst(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARBURST),
        .m00_axi_arcache(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARCACHE),
        .m00_axi_aresetn(ui_clk_sync_rst),
        .m00_axi_arid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARID),
        .m00_axi_arlen(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARLEN),
        .m00_axi_arlock(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARLOCK),
        .m00_axi_arprot(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARPROT),
        .m00_axi_arqos(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARQOS),
        .m00_axi_arready(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARREADY),
        .m00_axi_arsize(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARSIZE),
        .m00_axi_aruser(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARUSER),
        .m00_axi_arvalid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_ARVALID),
        .m00_axi_awaddr(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWADDR),
        .m00_axi_awburst(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWBURST),
        .m00_axi_awcache(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWCACHE),
        .m00_axi_awid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWID),
        .m00_axi_awlen(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWLEN),
        .m00_axi_awlock(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWLOCK),
        .m00_axi_awprot(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWPROT),
        .m00_axi_awqos(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWQOS),
        .m00_axi_awready(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWREADY),
        .m00_axi_awsize(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWSIZE),
        .m00_axi_awuser(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWUSER),
        .m00_axi_awvalid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_AWVALID),
        .m00_axi_bid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BID),
        .m00_axi_bready(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BREADY),
        .m00_axi_bresp(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BRESP),
        .m00_axi_buser(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BUSER),
        .m00_axi_bvalid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_BVALID),
        .m00_axi_rdata(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RDATA),
        .m00_axi_rid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RID),
        .m00_axi_rlast(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RLAST),
        .m00_axi_rready(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RREADY),
        .m00_axi_rresp(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RRESP),
        .m00_axi_ruser(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RUSER),
        .m00_axi_rvalid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_RVALID),
        .m00_axi_wdata(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WDATA),
        .m00_axi_wlast(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WLAST),
        .m00_axi_wready(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WREADY),
        .m00_axi_wstrb(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WSTRB),
        .m00_axi_wuser(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WUSER),
        .m00_axi_wvalid(xtlm_simple_intercon_0_ICN_M_AXI_1_AXI_WVALID),
        .s00_axi_aclk(ui_clk_clk),
        .s00_axi_araddr(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARADDR[5:0]),
        .s00_axi_arburst(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARBURST),
        .s00_axi_arcache(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARCACHE),
        .s00_axi_aresetn(ui_clk_sync_rst),
        .s00_axi_arid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARID),
        .s00_axi_arlen(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARLEN),
        .s00_axi_arlock(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARLOCK),
        .s00_axi_arprot(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARPROT),
        .s00_axi_arqos(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARQOS),
        .s00_axi_arready(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARREADY),
        .s00_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_arsize(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARSIZE),
        .s00_axi_aruser(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARUSER),
        .s00_axi_arvalid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_ARVALID),
        .s00_axi_awaddr(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWADDR[5:0]),
        .s00_axi_awburst(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWBURST),
        .s00_axi_awcache(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWCACHE),
        .s00_axi_awid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWID),
        .s00_axi_awlen(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWLEN),
        .s00_axi_awlock(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWLOCK),
        .s00_axi_awprot(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWPROT),
        .s00_axi_awqos(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWQOS),
        .s00_axi_awready(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWREADY),
        .s00_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_awsize(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWSIZE),
        .s00_axi_awuser(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWUSER),
        .s00_axi_awvalid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_AWVALID),
        .s00_axi_bid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BID),
        .s00_axi_bready(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BREADY),
        .s00_axi_bresp(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BRESP),
        .s00_axi_buser(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BUSER),
        .s00_axi_bvalid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_BVALID),
        .s00_axi_rdata(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RDATA),
        .s00_axi_rid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RID),
        .s00_axi_rlast(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RLAST),
        .s00_axi_rready(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RREADY),
        .s00_axi_rresp(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RRESP),
        .s00_axi_ruser(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RUSER),
        .s00_axi_rvalid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_RVALID),
        .s00_axi_wdata(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WDATA),
        .s00_axi_wlast(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WLAST),
        .s00_axi_wready(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WREADY),
        .s00_axi_wstrb(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WSTRB),
        .s00_axi_wuser(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WUSER),
        .s00_axi_wvalid(xtlm_simple_intercon_0_ICN_S_AXI_1_AXI_WVALID));
  pfm_dynamic_icn_pass_2_0 icn_pass_2
       (.m00_axi_aclk(ui_clk_clk),
        .m00_axi_araddr(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARADDR),
        .m00_axi_arburst(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARBURST),
        .m00_axi_arcache(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARCACHE),
        .m00_axi_aresetn(ui_clk_sync_rst),
        .m00_axi_arid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARID),
        .m00_axi_arlen(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARLEN),
        .m00_axi_arlock(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARLOCK),
        .m00_axi_arprot(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARPROT),
        .m00_axi_arqos(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARQOS),
        .m00_axi_arready(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARREADY),
        .m00_axi_arsize(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARSIZE),
        .m00_axi_aruser(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARUSER),
        .m00_axi_arvalid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_ARVALID),
        .m00_axi_awaddr(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWADDR),
        .m00_axi_awburst(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWBURST),
        .m00_axi_awcache(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWCACHE),
        .m00_axi_awid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWID),
        .m00_axi_awlen(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWLEN),
        .m00_axi_awlock(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWLOCK),
        .m00_axi_awprot(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWPROT),
        .m00_axi_awqos(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWQOS),
        .m00_axi_awready(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWREADY),
        .m00_axi_awsize(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWSIZE),
        .m00_axi_awuser(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWUSER),
        .m00_axi_awvalid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_AWVALID),
        .m00_axi_bid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BID),
        .m00_axi_bready(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BREADY),
        .m00_axi_bresp(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BRESP),
        .m00_axi_buser(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BUSER),
        .m00_axi_bvalid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_BVALID),
        .m00_axi_rdata(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RDATA),
        .m00_axi_rid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RID),
        .m00_axi_rlast(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RLAST),
        .m00_axi_rready(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RREADY),
        .m00_axi_rresp(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RRESP),
        .m00_axi_ruser(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RUSER),
        .m00_axi_rvalid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_RVALID),
        .m00_axi_wdata(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WDATA),
        .m00_axi_wlast(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WLAST),
        .m00_axi_wready(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WREADY),
        .m00_axi_wstrb(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WSTRB),
        .m00_axi_wuser(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WUSER),
        .m00_axi_wvalid(xtlm_simple_intercon_0_ICN_M_AXI_2_AXI_WVALID),
        .s00_axi_aclk(ui_clk_clk),
        .s00_axi_araddr(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARADDR[5:0]),
        .s00_axi_arburst(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARBURST),
        .s00_axi_arcache(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARCACHE),
        .s00_axi_aresetn(ui_clk_sync_rst),
        .s00_axi_arid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARID),
        .s00_axi_arlen(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARLEN),
        .s00_axi_arlock(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARLOCK),
        .s00_axi_arprot(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARPROT),
        .s00_axi_arqos(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARQOS),
        .s00_axi_arready(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARREADY),
        .s00_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_arsize(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARSIZE),
        .s00_axi_aruser(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARUSER),
        .s00_axi_arvalid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_ARVALID),
        .s00_axi_awaddr(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWADDR[5:0]),
        .s00_axi_awburst(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWBURST),
        .s00_axi_awcache(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWCACHE),
        .s00_axi_awid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWID),
        .s00_axi_awlen(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWLEN),
        .s00_axi_awlock(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWLOCK),
        .s00_axi_awprot(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWPROT),
        .s00_axi_awqos(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWQOS),
        .s00_axi_awready(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWREADY),
        .s00_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_awsize(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWSIZE),
        .s00_axi_awuser(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWUSER),
        .s00_axi_awvalid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_AWVALID),
        .s00_axi_bid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BID),
        .s00_axi_bready(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BREADY),
        .s00_axi_bresp(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BRESP),
        .s00_axi_buser(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BUSER),
        .s00_axi_bvalid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_BVALID),
        .s00_axi_rdata(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RDATA),
        .s00_axi_rid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RID),
        .s00_axi_rlast(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RLAST),
        .s00_axi_rready(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RREADY),
        .s00_axi_rresp(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RRESP),
        .s00_axi_ruser(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RUSER),
        .s00_axi_rvalid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_RVALID),
        .s00_axi_wdata(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WDATA),
        .s00_axi_wlast(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WLAST),
        .s00_axi_wready(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WREADY),
        .s00_axi_wstrb(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WSTRB),
        .s00_axi_wuser(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WUSER),
        .s00_axi_wvalid(xtlm_simple_intercon_0_ICN_S_AXI_2_AXI_WVALID));
  pfm_dynamic_interconnect_axilite_user_1_0 interconnect_axilite_user_1
       (.ACLK(slowest_sync_clk_1_1),
        .ARESETN(ext_reset_in_1_1),
        .M00_ACLK(slowest_sync_clk_1_1),
        .M00_ARESETN(ext_reset_in_1_1),
        .M00_AXI_araddr(interconnect_axilite_1_M00_AXI_ARADDR),
        .M00_AXI_arprot(interconnect_axilite_1_M00_AXI_ARPROT),
        .M00_AXI_arready(interconnect_axilite_1_M00_AXI_ARREADY),
        .M00_AXI_arvalid(interconnect_axilite_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_axilite_1_M00_AXI_AWADDR),
        .M00_AXI_awprot(interconnect_axilite_1_M00_AXI_AWPROT),
        .M00_AXI_awready(interconnect_axilite_1_M00_AXI_AWREADY),
        .M00_AXI_awvalid(interconnect_axilite_1_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_axilite_1_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_axilite_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_axilite_1_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_axilite_1_M00_AXI_RDATA),
        .M00_AXI_rready(interconnect_axilite_1_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_axilite_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_axilite_1_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_axilite_1_M00_AXI_WDATA),
        .M00_AXI_wready(interconnect_axilite_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_axilite_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_axilite_1_M00_AXI_WVALID),
        .M01_ACLK(slowest_sync_clk_0_1),
        .M01_ARESETN(psr_kernel_clk_1_interconnect_aresetn),
        .M01_AXI_araddr(Conn1_ARADDR),
        .M01_AXI_arprot(Conn1_ARPROT),
        .M01_AXI_arready(Conn1_ARREADY),
        .M01_AXI_arvalid(Conn1_ARVALID),
        .M01_AXI_awaddr(Conn1_AWADDR),
        .M01_AXI_awprot(Conn1_AWPROT),
        .M01_AXI_awready(Conn1_AWREADY),
        .M01_AXI_awvalid(Conn1_AWVALID),
        .M01_AXI_bready(Conn1_BREADY),
        .M01_AXI_bresp(Conn1_BRESP),
        .M01_AXI_bvalid(Conn1_BVALID),
        .M01_AXI_rdata(Conn1_RDATA),
        .M01_AXI_rready(Conn1_RREADY),
        .M01_AXI_rresp(Conn1_RRESP),
        .M01_AXI_rvalid(Conn1_RVALID),
        .M01_AXI_wdata(Conn1_WDATA),
        .M01_AXI_wready(Conn1_WREADY),
        .M01_AXI_wstrb(Conn1_WSTRB),
        .M01_AXI_wvalid(Conn1_WVALID),
        .S00_ACLK(slowest_sync_clk_1_1),
        .S00_ARESETN(ext_reset_in_1_1),
        .S00_AXI_araddr(connect_to_es_cu_M02_AXI_ARADDR),
        .S00_AXI_arprot(connect_to_es_cu_M02_AXI_ARPROT),
        .S00_AXI_arready(connect_to_es_cu_M02_AXI_ARREADY),
        .S00_AXI_arvalid(connect_to_es_cu_M02_AXI_ARVALID),
        .S00_AXI_awaddr(connect_to_es_cu_M02_AXI_AWADDR),
        .S00_AXI_awprot(connect_to_es_cu_M02_AXI_AWPROT),
        .S00_AXI_awready(connect_to_es_cu_M02_AXI_AWREADY),
        .S00_AXI_awvalid(connect_to_es_cu_M02_AXI_AWVALID),
        .S00_AXI_bready(connect_to_es_cu_M02_AXI_BREADY),
        .S00_AXI_bresp(connect_to_es_cu_M02_AXI_BRESP),
        .S00_AXI_bvalid(connect_to_es_cu_M02_AXI_BVALID),
        .S00_AXI_rdata(connect_to_es_cu_M02_AXI_RDATA),
        .S00_AXI_rready(connect_to_es_cu_M02_AXI_RREADY),
        .S00_AXI_rresp(connect_to_es_cu_M02_AXI_RRESP),
        .S00_AXI_rvalid(connect_to_es_cu_M02_AXI_RVALID),
        .S00_AXI_wdata(connect_to_es_cu_M02_AXI_WDATA),
        .S00_AXI_wready(connect_to_es_cu_M02_AXI_WREADY),
        .S00_AXI_wstrb(connect_to_es_cu_M02_AXI_WSTRB),
        .S00_AXI_wvalid(connect_to_es_cu_M02_AXI_WVALID));
  pfm_dynamic_psr_kernel2_clk_1_0 psr_kernel2_clk_1
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_2_1),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk_2_1));
  pfm_dynamic_psr_kernel_clk_1_0 psr_kernel_clk_1
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_0_1),
        .interconnect_aresetn(psr_kernel_clk_1_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(psr_kernel_clk_1_peripheral_aresetn),
        .slowest_sync_clk(slowest_sync_clk_0_1));
endmodule

module slr2_imp_EEMOLC
   (M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_buser,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_ruser,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wuser,
    M00_AXI_wvalid,
    S00_AXI1_araddr,
    S00_AXI1_arready,
    S00_AXI1_arvalid,
    S00_AXI1_awaddr,
    S00_AXI1_awready,
    S00_AXI1_awvalid,
    S00_AXI1_bready,
    S00_AXI1_bresp,
    S00_AXI1_bvalid,
    S00_AXI1_rdata,
    S00_AXI1_rready,
    S00_AXI1_rresp,
    S00_AXI1_rvalid,
    S00_AXI1_wdata,
    S00_AXI1_wready,
    S00_AXI1_wstrb,
    S00_AXI1_wvalid,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_buser,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wuser,
    S00_AXI_wvalid,
    ddr_default_clk_0,
    ddr_default_rst_0,
    dma_pcie_aclk,
    dma_pcie_arst,
    ext_reset_in,
    ext_reset_in1,
    slowest_sync_clk,
    slowest_sync_clk1);
  output [63:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [7:0]M00_AXI_arlen;
  output M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output [0:0]M00_AXI_aruser;
  output M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [7:0]M00_AXI_awlen;
  output M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output [0:0]M00_AXI_awuser;
  output M00_AXI_awvalid;
  input [0:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_buser;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input [0:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_ruser;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wuser;
  output M00_AXI_wvalid;
  input [63:0]S00_AXI1_araddr;
  output [0:0]S00_AXI1_arready;
  input [0:0]S00_AXI1_arvalid;
  input [63:0]S00_AXI1_awaddr;
  output [0:0]S00_AXI1_awready;
  input [0:0]S00_AXI1_awvalid;
  input [0:0]S00_AXI1_bready;
  output [1:0]S00_AXI1_bresp;
  output [0:0]S00_AXI1_bvalid;
  output [31:0]S00_AXI1_rdata;
  input [0:0]S00_AXI1_rready;
  output [1:0]S00_AXI1_rresp;
  output [0:0]S00_AXI1_rvalid;
  input [31:0]S00_AXI1_wdata;
  output [0:0]S00_AXI1_wready;
  input [3:0]S00_AXI1_wstrb;
  input [0:0]S00_AXI1_wvalid;
  input [63:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [0:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [63:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [0:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [0:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_buser;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [0:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_ruser;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wuser;
  input S00_AXI_wvalid;
  input ddr_default_clk_0;
  input ddr_default_rst_0;
  input dma_pcie_aclk;
  input dma_pcie_arst;
  input ext_reset_in;
  input ext_reset_in1;
  input slowest_sync_clk;
  input slowest_sync_clk1;

  wire [63:0]connect_to_es_cu_M03_AXI_ARADDR;
  wire [0:0]connect_to_es_cu_M03_AXI_ARREADY;
  wire [0:0]connect_to_es_cu_M03_AXI_ARVALID;
  wire [63:0]connect_to_es_cu_M03_AXI_AWADDR;
  wire [0:0]connect_to_es_cu_M03_AXI_AWREADY;
  wire [0:0]connect_to_es_cu_M03_AXI_AWVALID;
  wire [0:0]connect_to_es_cu_M03_AXI_BREADY;
  wire [1:0]connect_to_es_cu_M03_AXI_BRESP;
  wire [0:0]connect_to_es_cu_M03_AXI_BVALID;
  wire [31:0]connect_to_es_cu_M03_AXI_RDATA;
  wire [0:0]connect_to_es_cu_M03_AXI_RREADY;
  wire [1:0]connect_to_es_cu_M03_AXI_RRESP;
  wire [0:0]connect_to_es_cu_M03_AXI_RVALID;
  wire [31:0]connect_to_es_cu_M03_AXI_WDATA;
  wire [0:0]connect_to_es_cu_M03_AXI_WREADY;
  wire [3:0]connect_to_es_cu_M03_AXI_WSTRB;
  wire [0:0]connect_to_es_cu_M03_AXI_WVALID;
  wire ext_reset_in_0_1;
  wire ext_reset_in_1_1;
  wire ext_reset_in_2_1;
  wire [63:0]interconnect_axilite_2_M00_AXI_ARADDR;
  wire interconnect_axilite_2_M00_AXI_ARREADY;
  wire [0:0]interconnect_axilite_2_M00_AXI_ARVALID;
  wire [63:0]interconnect_axilite_2_M00_AXI_AWADDR;
  wire interconnect_axilite_2_M00_AXI_AWREADY;
  wire [0:0]interconnect_axilite_2_M00_AXI_AWVALID;
  wire [0:0]interconnect_axilite_2_M00_AXI_BREADY;
  wire [1:0]interconnect_axilite_2_M00_AXI_BRESP;
  wire interconnect_axilite_2_M00_AXI_BVALID;
  wire [31:0]interconnect_axilite_2_M00_AXI_RDATA;
  wire [0:0]interconnect_axilite_2_M00_AXI_RREADY;
  wire [1:0]interconnect_axilite_2_M00_AXI_RRESP;
  wire interconnect_axilite_2_M00_AXI_RVALID;
  wire [31:0]interconnect_axilite_2_M00_AXI_WDATA;
  wire interconnect_axilite_2_M00_AXI_WREADY;
  wire [3:0]interconnect_axilite_2_M00_AXI_WSTRB;
  wire [0:0]interconnect_axilite_2_M00_AXI_WVALID;
  wire slowest_sync_clk_0_1;
  wire slowest_sync_clk_1_1;
  wire slowest_sync_clk_2_1;
  wire ui_clk_clk;
  wire ui_clk_sync_rst;
  wire [63:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARLEN;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARQOS;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWLEN;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWQOS;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BID;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RID;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RLAST;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WDATA;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WLAST;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WREADY;
  wire [3:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WSTRB;
  wire [0:0]xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WUSER;
  wire xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARID;
  wire [7:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARLEN;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARQOS;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARVALID;
  wire [63:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWADDR;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWBURST;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWCACHE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWID;
  wire [7:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWLEN;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWLOCK;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWPROT;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWQOS;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWREADY;
  wire [2:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWSIZE;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWVALID;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BID;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RDATA;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RID;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RLAST;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RREADY;
  wire [1:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RRESP;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RVALID;
  wire [31:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WDATA;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WLAST;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WREADY;
  wire [3:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WSTRB;
  wire [0:0]xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WUSER;
  wire xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WVALID;

  assign M00_AXI_araddr[63:0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARADDR;
  assign M00_AXI_arburst[1:0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARBURST;
  assign M00_AXI_arcache[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARCACHE;
  assign M00_AXI_arid[0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARID;
  assign M00_AXI_arlen[7:0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARLEN;
  assign M00_AXI_arlock = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARLOCK;
  assign M00_AXI_arprot[2:0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARPROT;
  assign M00_AXI_arqos[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARQOS;
  assign M00_AXI_arsize[2:0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARSIZE;
  assign M00_AXI_aruser[0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARUSER;
  assign M00_AXI_arvalid = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARVALID;
  assign M00_AXI_awaddr[63:0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWADDR;
  assign M00_AXI_awburst[1:0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWBURST;
  assign M00_AXI_awcache[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWCACHE;
  assign M00_AXI_awid[0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWID;
  assign M00_AXI_awlen[7:0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWLEN;
  assign M00_AXI_awlock = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWLOCK;
  assign M00_AXI_awprot[2:0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWPROT;
  assign M00_AXI_awqos[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWQOS;
  assign M00_AXI_awsize[2:0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWSIZE;
  assign M00_AXI_awuser[0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWUSER;
  assign M00_AXI_awvalid = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWVALID;
  assign M00_AXI_bready = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BREADY;
  assign M00_AXI_rready = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RREADY;
  assign M00_AXI_wdata[31:0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WDATA;
  assign M00_AXI_wlast = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WLAST;
  assign M00_AXI_wstrb[3:0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WSTRB;
  assign M00_AXI_wuser[0] = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WUSER;
  assign M00_AXI_wvalid = xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WVALID;
  assign S00_AXI1_arready[0] = connect_to_es_cu_M03_AXI_ARREADY;
  assign S00_AXI1_awready[0] = connect_to_es_cu_M03_AXI_AWREADY;
  assign S00_AXI1_bresp[1:0] = connect_to_es_cu_M03_AXI_BRESP;
  assign S00_AXI1_bvalid[0] = connect_to_es_cu_M03_AXI_BVALID;
  assign S00_AXI1_rdata[31:0] = connect_to_es_cu_M03_AXI_RDATA;
  assign S00_AXI1_rresp[1:0] = connect_to_es_cu_M03_AXI_RRESP;
  assign S00_AXI1_rvalid[0] = connect_to_es_cu_M03_AXI_RVALID;
  assign S00_AXI1_wready[0] = connect_to_es_cu_M03_AXI_WREADY;
  assign S00_AXI_arready = xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARREADY;
  assign S00_AXI_awready = xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWREADY;
  assign S00_AXI_bid[0] = xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BID;
  assign S00_AXI_bresp[1:0] = xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BRESP;
  assign S00_AXI_buser[0] = xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BUSER;
  assign S00_AXI_bvalid = xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BVALID;
  assign S00_AXI_rdata[31:0] = xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RDATA;
  assign S00_AXI_rid[0] = xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RID;
  assign S00_AXI_rlast = xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RLAST;
  assign S00_AXI_rresp[1:0] = xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RRESP;
  assign S00_AXI_ruser[0] = xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RUSER;
  assign S00_AXI_rvalid = xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RVALID;
  assign S00_AXI_wready = xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WREADY;
  assign connect_to_es_cu_M03_AXI_ARADDR = S00_AXI1_araddr[63:0];
  assign connect_to_es_cu_M03_AXI_ARVALID = S00_AXI1_arvalid[0];
  assign connect_to_es_cu_M03_AXI_AWADDR = S00_AXI1_awaddr[63:0];
  assign connect_to_es_cu_M03_AXI_AWVALID = S00_AXI1_awvalid[0];
  assign connect_to_es_cu_M03_AXI_BREADY = S00_AXI1_bready[0];
  assign connect_to_es_cu_M03_AXI_RREADY = S00_AXI1_rready[0];
  assign connect_to_es_cu_M03_AXI_WDATA = S00_AXI1_wdata[31:0];
  assign connect_to_es_cu_M03_AXI_WSTRB = S00_AXI1_wstrb[3:0];
  assign connect_to_es_cu_M03_AXI_WVALID = S00_AXI1_wvalid[0];
  assign ext_reset_in_0_1 = ext_reset_in;
  assign ext_reset_in_1_1 = dma_pcie_arst;
  assign ext_reset_in_2_1 = ext_reset_in1;
  assign slowest_sync_clk_0_1 = slowest_sync_clk;
  assign slowest_sync_clk_1_1 = dma_pcie_aclk;
  assign slowest_sync_clk_2_1 = slowest_sync_clk1;
  assign ui_clk_clk = ddr_default_clk_0;
  assign ui_clk_sync_rst = ddr_default_rst_0;
  assign xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARREADY = M00_AXI_arready;
  assign xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWREADY = M00_AXI_awready;
  assign xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BID = M00_AXI_bid[0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BRESP = M00_AXI_bresp[1:0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BUSER = M00_AXI_buser[0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BVALID = M00_AXI_bvalid;
  assign xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RDATA = M00_AXI_rdata[31:0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RID = M00_AXI_rid[0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RLAST = M00_AXI_rlast;
  assign xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RRESP = M00_AXI_rresp[1:0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RUSER = M00_AXI_ruser[0];
  assign xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RVALID = M00_AXI_rvalid;
  assign xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WREADY = M00_AXI_wready;
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARADDR = S00_AXI_araddr[63:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARBURST = S00_AXI_arburst[1:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARCACHE = S00_AXI_arcache[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARID = S00_AXI_arid[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARLEN = S00_AXI_arlen[7:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARLOCK = S00_AXI_arlock;
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARPROT = S00_AXI_arprot[2:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARQOS = S00_AXI_arqos[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARSIZE = S00_AXI_arsize[2:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARUSER = S00_AXI_aruser[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARVALID = S00_AXI_arvalid;
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWADDR = S00_AXI_awaddr[63:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWBURST = S00_AXI_awburst[1:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWCACHE = S00_AXI_awcache[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWID = S00_AXI_awid[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWLEN = S00_AXI_awlen[7:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWLOCK = S00_AXI_awlock;
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWPROT = S00_AXI_awprot[2:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWQOS = S00_AXI_awqos[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWSIZE = S00_AXI_awsize[2:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWUSER = S00_AXI_awuser[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWVALID = S00_AXI_awvalid;
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BREADY = S00_AXI_bready;
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RREADY = S00_AXI_rready;
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WDATA = S00_AXI_wdata[31:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WLAST = S00_AXI_wlast;
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WSTRB = S00_AXI_wstrb[3:0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WUSER = S00_AXI_wuser[0];
  assign xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WVALID = S00_AXI_wvalid;
  pfm_dynamic_icn_pass_3_0 icn_pass_3
       (.m00_axi_aclk(ui_clk_clk),
        .m00_axi_araddr(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARADDR),
        .m00_axi_arburst(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARBURST),
        .m00_axi_arcache(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARCACHE),
        .m00_axi_aresetn(ui_clk_sync_rst),
        .m00_axi_arid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARID),
        .m00_axi_arlen(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARLEN),
        .m00_axi_arlock(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARLOCK),
        .m00_axi_arprot(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARPROT),
        .m00_axi_arqos(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARQOS),
        .m00_axi_arready(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARREADY),
        .m00_axi_arsize(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARSIZE),
        .m00_axi_aruser(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARUSER),
        .m00_axi_arvalid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_ARVALID),
        .m00_axi_awaddr(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWADDR),
        .m00_axi_awburst(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWBURST),
        .m00_axi_awcache(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWCACHE),
        .m00_axi_awid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWID),
        .m00_axi_awlen(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWLEN),
        .m00_axi_awlock(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWLOCK),
        .m00_axi_awprot(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWPROT),
        .m00_axi_awqos(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWQOS),
        .m00_axi_awready(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWREADY),
        .m00_axi_awsize(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWSIZE),
        .m00_axi_awuser(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWUSER),
        .m00_axi_awvalid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_AWVALID),
        .m00_axi_bid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BID),
        .m00_axi_bready(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BREADY),
        .m00_axi_bresp(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BRESP),
        .m00_axi_buser(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BUSER),
        .m00_axi_bvalid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_BVALID),
        .m00_axi_rdata(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RDATA),
        .m00_axi_rid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RID),
        .m00_axi_rlast(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RLAST),
        .m00_axi_rready(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RREADY),
        .m00_axi_rresp(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RRESP),
        .m00_axi_ruser(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RUSER),
        .m00_axi_rvalid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_RVALID),
        .m00_axi_wdata(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WDATA),
        .m00_axi_wlast(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WLAST),
        .m00_axi_wready(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WREADY),
        .m00_axi_wstrb(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WSTRB),
        .m00_axi_wuser(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WUSER),
        .m00_axi_wvalid(xtlm_simple_intercon_0_ICN_M_AXI_3_AXI_WVALID),
        .s00_axi_aclk(ui_clk_clk),
        .s00_axi_araddr(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARADDR[5:0]),
        .s00_axi_arburst(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARBURST),
        .s00_axi_arcache(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARCACHE),
        .s00_axi_aresetn(ui_clk_sync_rst),
        .s00_axi_arid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARID),
        .s00_axi_arlen(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARLEN),
        .s00_axi_arlock(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARLOCK),
        .s00_axi_arprot(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARPROT),
        .s00_axi_arqos(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARQOS),
        .s00_axi_arready(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARREADY),
        .s00_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_arsize(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARSIZE),
        .s00_axi_aruser(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARUSER),
        .s00_axi_arvalid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_ARVALID),
        .s00_axi_awaddr(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWADDR[5:0]),
        .s00_axi_awburst(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWBURST),
        .s00_axi_awcache(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWCACHE),
        .s00_axi_awid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWID),
        .s00_axi_awlen(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWLEN),
        .s00_axi_awlock(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWLOCK),
        .s00_axi_awprot(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWPROT),
        .s00_axi_awqos(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWQOS),
        .s00_axi_awready(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWREADY),
        .s00_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_awsize(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWSIZE),
        .s00_axi_awuser(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWUSER),
        .s00_axi_awvalid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_AWVALID),
        .s00_axi_bid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BID),
        .s00_axi_bready(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BREADY),
        .s00_axi_bresp(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BRESP),
        .s00_axi_buser(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BUSER),
        .s00_axi_bvalid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_BVALID),
        .s00_axi_rdata(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RDATA),
        .s00_axi_rid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RID),
        .s00_axi_rlast(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RLAST),
        .s00_axi_rready(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RREADY),
        .s00_axi_rresp(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RRESP),
        .s00_axi_ruser(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RUSER),
        .s00_axi_rvalid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_RVALID),
        .s00_axi_wdata(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WDATA),
        .s00_axi_wlast(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WLAST),
        .s00_axi_wready(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WREADY),
        .s00_axi_wstrb(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WSTRB),
        .s00_axi_wuser(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WUSER),
        .s00_axi_wvalid(xtlm_simple_intercon_0_ICN_S_AXI_3_AXI_WVALID));
  pfm_dynamic_interconnect_axilite_user_2_0 interconnect_axilite_user_2
       (.ACLK(slowest_sync_clk_1_1),
        .ARESETN(ext_reset_in_1_1),
        .M00_ACLK(slowest_sync_clk_1_1),
        .M00_ARESETN(ext_reset_in_1_1),
        .M00_AXI_araddr(interconnect_axilite_2_M00_AXI_ARADDR),
        .M00_AXI_arready(interconnect_axilite_2_M00_AXI_ARREADY),
        .M00_AXI_arvalid(interconnect_axilite_2_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_axilite_2_M00_AXI_AWADDR),
        .M00_AXI_awready(interconnect_axilite_2_M00_AXI_AWREADY),
        .M00_AXI_awvalid(interconnect_axilite_2_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_axilite_2_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_axilite_2_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_axilite_2_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_axilite_2_M00_AXI_RDATA),
        .M00_AXI_rready(interconnect_axilite_2_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_axilite_2_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_axilite_2_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_axilite_2_M00_AXI_WDATA),
        .M00_AXI_wready(interconnect_axilite_2_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_axilite_2_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_axilite_2_M00_AXI_WVALID),
        .S00_ACLK(slowest_sync_clk_1_1),
        .S00_ARESETN(ext_reset_in_1_1),
        .S00_AXI_araddr(connect_to_es_cu_M03_AXI_ARADDR),
        .S00_AXI_arready(connect_to_es_cu_M03_AXI_ARREADY),
        .S00_AXI_arvalid(connect_to_es_cu_M03_AXI_ARVALID),
        .S00_AXI_awaddr(connect_to_es_cu_M03_AXI_AWADDR),
        .S00_AXI_awready(connect_to_es_cu_M03_AXI_AWREADY),
        .S00_AXI_awvalid(connect_to_es_cu_M03_AXI_AWVALID),
        .S00_AXI_bready(connect_to_es_cu_M03_AXI_BREADY),
        .S00_AXI_bresp(connect_to_es_cu_M03_AXI_BRESP),
        .S00_AXI_bvalid(connect_to_es_cu_M03_AXI_BVALID),
        .S00_AXI_rdata(connect_to_es_cu_M03_AXI_RDATA),
        .S00_AXI_rready(connect_to_es_cu_M03_AXI_RREADY),
        .S00_AXI_rresp(connect_to_es_cu_M03_AXI_RRESP),
        .S00_AXI_rvalid(connect_to_es_cu_M03_AXI_RVALID),
        .S00_AXI_wdata(connect_to_es_cu_M03_AXI_WDATA),
        .S00_AXI_wready(connect_to_es_cu_M03_AXI_WREADY),
        .S00_AXI_wstrb(connect_to_es_cu_M03_AXI_WSTRB),
        .S00_AXI_wvalid(connect_to_es_cu_M03_AXI_WVALID));
  pfm_dynamic_psr_kernel2_clk_2_0 psr_kernel2_clk_2
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_2_1),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk_2_1));
  pfm_dynamic_psr_kernel_clk_2_0 psr_kernel_clk_2
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_0_1),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(slowest_sync_clk_0_1));
  pfm_dynamic_to_delete_kernel_ctrl_2_0 to_delete_kernel_ctrl_2
       (.gpio_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aclk(slowest_sync_clk_1_1),
        .s_axi_araddr(interconnect_axilite_2_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(ext_reset_in_1_1),
        .s_axi_arready(interconnect_axilite_2_M00_AXI_ARREADY),
        .s_axi_arvalid(interconnect_axilite_2_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_axilite_2_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(interconnect_axilite_2_M00_AXI_AWREADY),
        .s_axi_awvalid(interconnect_axilite_2_M00_AXI_AWVALID),
        .s_axi_bready(interconnect_axilite_2_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_axilite_2_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_axilite_2_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_axilite_2_M00_AXI_RDATA),
        .s_axi_rready(interconnect_axilite_2_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_axilite_2_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_axilite_2_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_axilite_2_M00_AXI_WDATA),
        .s_axi_wready(interconnect_axilite_2_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_axilite_2_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_axilite_2_M00_AXI_WVALID));
endmodule
