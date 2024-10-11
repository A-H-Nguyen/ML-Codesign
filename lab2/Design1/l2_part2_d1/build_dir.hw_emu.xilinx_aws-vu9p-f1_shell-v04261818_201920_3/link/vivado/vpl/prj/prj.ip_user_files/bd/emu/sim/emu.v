//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
//Date        : Fri Oct 11 17:31:51 2024
//Host        : ip-172-31-83-237.ec2.internal running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target emu.bd
//Design      : emu
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clk_reset_wizard_imp_1N4AMRV
   (clkwiz_kernel2_clk,
    clkwiz_kernel2_rst,
    clkwiz_kernel_clk,
    clkwiz_kernel_rst,
    ddr_default_clk,
    ddr_default_rst);
  output clkwiz_kernel2_clk;
  output clkwiz_kernel2_rst;
  output clkwiz_kernel_clk;
  output clkwiz_kernel_rst;
  output ddr_default_clk;
  output ddr_default_rst;

  wire ddr0_ui_clk_clk;
  wire ddr0_ui_clk_sync_rst;
  wire kernel2_clk_clk;
  wire kernel2_clk_sync_rst;
  wire kernel_clk_clk;
  wire kernel_clk_sync_rst;

  assign clkwiz_kernel2_clk = kernel2_clk_clk;
  assign clkwiz_kernel2_rst = kernel2_clk_sync_rst;
  assign clkwiz_kernel_clk = kernel_clk_clk;
  assign clkwiz_kernel_rst = kernel_clk_sync_rst;
  assign ddr_default_clk = ddr0_ui_clk_clk;
  assign ddr_default_rst = ddr0_ui_clk_sync_rst;
  emu_ddr0_ui_clk_0 ddr0_ui_clk
       (.clk(ddr0_ui_clk_clk),
        .sync_rst(ddr0_ui_clk_sync_rst));
  emu_kernel2_clk_0 kernel2_clk
       (.clk(kernel2_clk_clk),
        .sync_rst(kernel2_clk_sync_rst));
  emu_kernel_clk_0 kernel_clk
       (.clk(kernel_clk_clk),
        .sync_rst(kernel_clk_sync_rst));
endmodule

module embedded_schedular_imp_1KU1L3J
   (MAXI_araddr,
    MAXI_arprot,
    MAXI_arready,
    MAXI_arvalid,
    MAXI_awaddr,
    MAXI_awprot,
    MAXI_awready,
    MAXI_awvalid,
    MAXI_bready,
    MAXI_bresp,
    MAXI_bvalid,
    MAXI_rdata,
    MAXI_rready,
    MAXI_rresp,
    MAXI_rvalid,
    MAXI_wdata,
    MAXI_wready,
    MAXI_wstrb,
    MAXI_wvalid,
    SAXI_araddr,
    SAXI_arprot,
    SAXI_arready,
    SAXI_arvalid,
    SAXI_awaddr,
    SAXI_awprot,
    SAXI_awready,
    SAXI_awvalid,
    SAXI_bready,
    SAXI_bresp,
    SAXI_bvalid,
    SAXI_rdata,
    SAXI_rready,
    SAXI_rresp,
    SAXI_rvalid,
    SAXI_wdata,
    SAXI_wready,
    SAXI_wstrb,
    SAXI_wvalid,
    clk,
    host_araddr,
    host_arprot,
    host_arready,
    host_arvalid,
    host_awaddr,
    host_awprot,
    host_awready,
    host_awvalid,
    host_bready,
    host_bresp,
    host_bvalid,
    host_rdata,
    host_rready,
    host_rresp,
    host_rvalid,
    host_wdata,
    host_wready,
    host_wstrb,
    host_wvalid,
    in2,
    irq_cu,
    m_axi_CQDma_araddr,
    m_axi_CQDma_arburst,
    m_axi_CQDma_arcache,
    m_axi_CQDma_arlen,
    m_axi_CQDma_arlock,
    m_axi_CQDma_arprot,
    m_axi_CQDma_arqos,
    m_axi_CQDma_arready,
    m_axi_CQDma_arsize,
    m_axi_CQDma_arvalid,
    m_axi_CQDma_awaddr,
    m_axi_CQDma_awburst,
    m_axi_CQDma_awcache,
    m_axi_CQDma_awlen,
    m_axi_CQDma_awlock,
    m_axi_CQDma_awprot,
    m_axi_CQDma_awqos,
    m_axi_CQDma_awready,
    m_axi_CQDma_awsize,
    m_axi_CQDma_awvalid,
    m_axi_CQDma_bready,
    m_axi_CQDma_bresp,
    m_axi_CQDma_bvalid,
    m_axi_CQDma_rdata,
    m_axi_CQDma_rlast,
    m_axi_CQDma_rready,
    m_axi_CQDma_rresp,
    m_axi_CQDma_rvalid,
    m_axi_CQDma_wdata,
    m_axi_CQDma_wlast,
    m_axi_CQDma_wready,
    m_axi_CQDma_wstrb,
    m_axi_CQDma_wvalid,
    m_axi_CUDma_0_araddr,
    m_axi_CUDma_0_arburst,
    m_axi_CUDma_0_arcache,
    m_axi_CUDma_0_arlen,
    m_axi_CUDma_0_arlock,
    m_axi_CUDma_0_arprot,
    m_axi_CUDma_0_arqos,
    m_axi_CUDma_0_arready,
    m_axi_CUDma_0_arsize,
    m_axi_CUDma_0_arvalid,
    m_axi_CUDma_0_awaddr,
    m_axi_CUDma_0_awburst,
    m_axi_CUDma_0_awcache,
    m_axi_CUDma_0_awlen,
    m_axi_CUDma_0_awlock,
    m_axi_CUDma_0_awprot,
    m_axi_CUDma_0_awqos,
    m_axi_CUDma_0_awready,
    m_axi_CUDma_0_awsize,
    m_axi_CUDma_0_awvalid,
    m_axi_CUDma_0_bready,
    m_axi_CUDma_0_bresp,
    m_axi_CUDma_0_bvalid,
    m_axi_CUDma_0_rdata,
    m_axi_CUDma_0_rlast,
    m_axi_CUDma_0_rready,
    m_axi_CUDma_0_rresp,
    m_axi_CUDma_0_rvalid,
    m_axi_CUDma_0_wdata,
    m_axi_CUDma_0_wlast,
    m_axi_CUDma_0_wready,
    m_axi_CUDma_0_wstrb,
    m_axi_CUDma_0_wvalid,
    m_axi_a_araddr,
    m_axi_a_arburst,
    m_axi_a_arcache,
    m_axi_a_arlen,
    m_axi_a_arlock,
    m_axi_a_arprot,
    m_axi_a_arqos,
    m_axi_a_arready,
    m_axi_a_arsize,
    m_axi_a_arvalid,
    m_axi_a_awaddr,
    m_axi_a_awburst,
    m_axi_a_awcache,
    m_axi_a_awlen,
    m_axi_a_awlock,
    m_axi_a_awprot,
    m_axi_a_awqos,
    m_axi_a_awready,
    m_axi_a_awsize,
    m_axi_a_awvalid,
    m_axi_a_bready,
    m_axi_a_bresp,
    m_axi_a_bvalid,
    m_axi_a_rdata,
    m_axi_a_rlast,
    m_axi_a_rready,
    m_axi_a_rresp,
    m_axi_a_rvalid,
    m_axi_a_wdata,
    m_axi_a_wlast,
    m_axi_a_wready,
    m_axi_a_wstrb,
    m_axi_a_wvalid,
    reset_n,
    s_axi_0_araddr,
    s_axi_0_arready,
    s_axi_0_arvalid,
    s_axi_0_awaddr,
    s_axi_0_awready,
    s_axi_0_awvalid,
    s_axi_0_bready,
    s_axi_0_bresp,
    s_axi_0_bvalid,
    s_axi_0_rdata,
    s_axi_0_rready,
    s_axi_0_rresp,
    s_axi_0_rvalid,
    s_axi_0_wdata,
    s_axi_0_wready,
    s_axi_0_wstrb,
    s_axi_0_wvalid);
  output [63:0]MAXI_araddr;
  output [2:0]MAXI_arprot;
  input MAXI_arready;
  output MAXI_arvalid;
  output [63:0]MAXI_awaddr;
  output [2:0]MAXI_awprot;
  input MAXI_awready;
  output MAXI_awvalid;
  output MAXI_bready;
  input [1:0]MAXI_bresp;
  input MAXI_bvalid;
  input [31:0]MAXI_rdata;
  output MAXI_rready;
  input [1:0]MAXI_rresp;
  input MAXI_rvalid;
  output [31:0]MAXI_wdata;
  input MAXI_wready;
  output [3:0]MAXI_wstrb;
  output MAXI_wvalid;
  input [63:0]SAXI_araddr;
  input [2:0]SAXI_arprot;
  output [0:0]SAXI_arready;
  input [0:0]SAXI_arvalid;
  input [63:0]SAXI_awaddr;
  input [2:0]SAXI_awprot;
  output [0:0]SAXI_awready;
  input [0:0]SAXI_awvalid;
  input [0:0]SAXI_bready;
  output [1:0]SAXI_bresp;
  output [0:0]SAXI_bvalid;
  output [31:0]SAXI_rdata;
  input [0:0]SAXI_rready;
  output [1:0]SAXI_rresp;
  output [0:0]SAXI_rvalid;
  input [31:0]SAXI_wdata;
  output [0:0]SAXI_wready;
  input [3:0]SAXI_wstrb;
  input [0:0]SAXI_wvalid;
  input clk;
  input [63:0]host_araddr;
  input [2:0]host_arprot;
  output [0:0]host_arready;
  input [0:0]host_arvalid;
  input [63:0]host_awaddr;
  input [2:0]host_awprot;
  output [0:0]host_awready;
  input [0:0]host_awvalid;
  input [0:0]host_bready;
  output [1:0]host_bresp;
  output [0:0]host_bvalid;
  output [31:0]host_rdata;
  input [0:0]host_rready;
  output [1:0]host_rresp;
  output [0:0]host_rvalid;
  input [31:0]host_wdata;
  output [0:0]host_wready;
  input [3:0]host_wstrb;
  input [0:0]host_wvalid;
  input [0:0]in2;
  input [127:0]irq_cu;
  output [31:0]m_axi_CQDma_araddr;
  output [1:0]m_axi_CQDma_arburst;
  output [3:0]m_axi_CQDma_arcache;
  output [7:0]m_axi_CQDma_arlen;
  output [1:0]m_axi_CQDma_arlock;
  output [2:0]m_axi_CQDma_arprot;
  output [3:0]m_axi_CQDma_arqos;
  input m_axi_CQDma_arready;
  output [2:0]m_axi_CQDma_arsize;
  output m_axi_CQDma_arvalid;
  output [31:0]m_axi_CQDma_awaddr;
  output [1:0]m_axi_CQDma_awburst;
  output [3:0]m_axi_CQDma_awcache;
  output [7:0]m_axi_CQDma_awlen;
  output [1:0]m_axi_CQDma_awlock;
  output [2:0]m_axi_CQDma_awprot;
  output [3:0]m_axi_CQDma_awqos;
  input m_axi_CQDma_awready;
  output [2:0]m_axi_CQDma_awsize;
  output m_axi_CQDma_awvalid;
  output m_axi_CQDma_bready;
  input [1:0]m_axi_CQDma_bresp;
  input m_axi_CQDma_bvalid;
  input [31:0]m_axi_CQDma_rdata;
  input m_axi_CQDma_rlast;
  output m_axi_CQDma_rready;
  input [1:0]m_axi_CQDma_rresp;
  input m_axi_CQDma_rvalid;
  output [31:0]m_axi_CQDma_wdata;
  output m_axi_CQDma_wlast;
  input m_axi_CQDma_wready;
  output [3:0]m_axi_CQDma_wstrb;
  output m_axi_CQDma_wvalid;
  output [31:0]m_axi_CUDma_0_araddr;
  output [1:0]m_axi_CUDma_0_arburst;
  output [3:0]m_axi_CUDma_0_arcache;
  output [7:0]m_axi_CUDma_0_arlen;
  output [1:0]m_axi_CUDma_0_arlock;
  output [2:0]m_axi_CUDma_0_arprot;
  output [3:0]m_axi_CUDma_0_arqos;
  input m_axi_CUDma_0_arready;
  output [2:0]m_axi_CUDma_0_arsize;
  output m_axi_CUDma_0_arvalid;
  output [31:0]m_axi_CUDma_0_awaddr;
  output [1:0]m_axi_CUDma_0_awburst;
  output [3:0]m_axi_CUDma_0_awcache;
  output [7:0]m_axi_CUDma_0_awlen;
  output [1:0]m_axi_CUDma_0_awlock;
  output [2:0]m_axi_CUDma_0_awprot;
  output [3:0]m_axi_CUDma_0_awqos;
  input m_axi_CUDma_0_awready;
  output [2:0]m_axi_CUDma_0_awsize;
  output m_axi_CUDma_0_awvalid;
  output m_axi_CUDma_0_bready;
  input [1:0]m_axi_CUDma_0_bresp;
  input m_axi_CUDma_0_bvalid;
  input [31:0]m_axi_CUDma_0_rdata;
  input m_axi_CUDma_0_rlast;
  output m_axi_CUDma_0_rready;
  input [1:0]m_axi_CUDma_0_rresp;
  input m_axi_CUDma_0_rvalid;
  output [31:0]m_axi_CUDma_0_wdata;
  output m_axi_CUDma_0_wlast;
  input m_axi_CUDma_0_wready;
  output [3:0]m_axi_CUDma_0_wstrb;
  output m_axi_CUDma_0_wvalid;
  output [31:0]m_axi_a_araddr;
  output [1:0]m_axi_a_arburst;
  output [3:0]m_axi_a_arcache;
  output [7:0]m_axi_a_arlen;
  output [1:0]m_axi_a_arlock;
  output [2:0]m_axi_a_arprot;
  output [3:0]m_axi_a_arqos;
  input m_axi_a_arready;
  output [2:0]m_axi_a_arsize;
  output m_axi_a_arvalid;
  output [31:0]m_axi_a_awaddr;
  output [1:0]m_axi_a_awburst;
  output [3:0]m_axi_a_awcache;
  output [7:0]m_axi_a_awlen;
  output [1:0]m_axi_a_awlock;
  output [2:0]m_axi_a_awprot;
  output [3:0]m_axi_a_awqos;
  input m_axi_a_awready;
  output [2:0]m_axi_a_awsize;
  output m_axi_a_awvalid;
  output m_axi_a_bready;
  input [1:0]m_axi_a_bresp;
  input m_axi_a_bvalid;
  input [31:0]m_axi_a_rdata;
  input m_axi_a_rlast;
  output m_axi_a_rready;
  input [1:0]m_axi_a_rresp;
  input m_axi_a_rvalid;
  output [31:0]m_axi_a_wdata;
  output m_axi_a_wlast;
  input m_axi_a_wready;
  output [3:0]m_axi_a_wstrb;
  output m_axi_a_wvalid;
  input reset_n;
  input [63:0]s_axi_0_araddr;
  output [0:0]s_axi_0_arready;
  input [0:0]s_axi_0_arvalid;
  input [63:0]s_axi_0_awaddr;
  output [0:0]s_axi_0_awready;
  input [0:0]s_axi_0_awvalid;
  input [0:0]s_axi_0_bready;
  output [1:0]s_axi_0_bresp;
  output [0:0]s_axi_0_bvalid;
  output [31:0]s_axi_0_rdata;
  input [0:0]s_axi_0_rready;
  output [1:0]s_axi_0_rresp;
  output [0:0]s_axi_0_rvalid;
  input [31:0]s_axi_0_wdata;
  output [0:0]s_axi_0_wready;
  input [3:0]s_axi_0_wstrb;
  input [0:0]s_axi_0_wvalid;

  wire [31:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [3:0]Conn1_ARCACHE;
  wire [7:0]Conn1_ARLEN;
  wire [1:0]Conn1_ARLOCK;
  wire [2:0]Conn1_ARPROT;
  wire [3:0]Conn1_ARQOS;
  wire Conn1_ARREADY;
  wire [2:0]Conn1_ARSIZE;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [3:0]Conn1_AWCACHE;
  wire [7:0]Conn1_AWLEN;
  wire [1:0]Conn1_AWLOCK;
  wire [2:0]Conn1_AWPROT;
  wire [3:0]Conn1_AWQOS;
  wire Conn1_AWREADY;
  wire [2:0]Conn1_AWSIZE;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire Conn1_RLAST;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WLAST;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  wire [63:0]Conn2_ARADDR;
  wire Conn2_ARREADY;
  wire [0:0]Conn2_ARVALID;
  wire [63:0]Conn2_AWADDR;
  wire Conn2_AWREADY;
  wire [0:0]Conn2_AWVALID;
  wire [0:0]Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire [0:0]Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire [0:0]Conn2_WVALID;
  wire CuDmaController_0_ap_done;
  wire [0:0]IN2_0;
  wire [31:0]S01_AXI_1_ARADDR;
  wire [1:0]S01_AXI_1_ARBURST;
  wire [3:0]S01_AXI_1_ARCACHE;
  wire [7:0]S01_AXI_1_ARLEN;
  wire [1:0]S01_AXI_1_ARLOCK;
  wire [2:0]S01_AXI_1_ARPROT;
  wire [3:0]S01_AXI_1_ARQOS;
  wire S01_AXI_1_ARREADY;
  wire [2:0]S01_AXI_1_ARSIZE;
  wire S01_AXI_1_ARVALID;
  wire [31:0]S01_AXI_1_AWADDR;
  wire [1:0]S01_AXI_1_AWBURST;
  wire [3:0]S01_AXI_1_AWCACHE;
  wire [7:0]S01_AXI_1_AWLEN;
  wire [1:0]S01_AXI_1_AWLOCK;
  wire [2:0]S01_AXI_1_AWPROT;
  wire [3:0]S01_AXI_1_AWQOS;
  wire S01_AXI_1_AWREADY;
  wire [2:0]S01_AXI_1_AWSIZE;
  wire S01_AXI_1_AWVALID;
  wire S01_AXI_1_BREADY;
  wire [1:0]S01_AXI_1_BRESP;
  wire S01_AXI_1_BVALID;
  wire [31:0]S01_AXI_1_RDATA;
  wire S01_AXI_1_RLAST;
  wire S01_AXI_1_RREADY;
  wire [1:0]S01_AXI_1_RRESP;
  wire S01_AXI_1_RVALID;
  wire [31:0]S01_AXI_1_WDATA;
  wire S01_AXI_1_WLAST;
  wire S01_AXI_1_WREADY;
  wire [3:0]S01_AXI_1_WSTRB;
  wire S01_AXI_1_WVALID;
  wire [63:0]SAXI_1_ARADDR;
  wire [2:0]SAXI_1_ARPROT;
  wire SAXI_1_ARREADY;
  wire [0:0]SAXI_1_ARVALID;
  wire [63:0]SAXI_1_AWADDR;
  wire [2:0]SAXI_1_AWPROT;
  wire SAXI_1_AWREADY;
  wire [0:0]SAXI_1_AWVALID;
  wire [0:0]SAXI_1_BREADY;
  wire [1:0]SAXI_1_BRESP;
  wire SAXI_1_BVALID;
  wire [31:0]SAXI_1_RDATA;
  wire [0:0]SAXI_1_RREADY;
  wire [1:0]SAXI_1_RRESP;
  wire SAXI_1_RVALID;
  wire [31:0]SAXI_1_WDATA;
  wire SAXI_1_WREADY;
  wire [3:0]SAXI_1_WSTRB;
  wire [0:0]SAXI_1_WVALID;
  wire axi_intc_0_irq;
  wire [63:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_ARVALID;
  wire [63:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M00_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M00_AXI_WVALID;
  wire cuisr_0_ap_done;
  wire [31:0]cuisr_0_m_axi_a_ARADDR;
  wire [1:0]cuisr_0_m_axi_a_ARBURST;
  wire [3:0]cuisr_0_m_axi_a_ARCACHE;
  wire [7:0]cuisr_0_m_axi_a_ARLEN;
  wire [1:0]cuisr_0_m_axi_a_ARLOCK;
  wire [2:0]cuisr_0_m_axi_a_ARPROT;
  wire [3:0]cuisr_0_m_axi_a_ARQOS;
  wire cuisr_0_m_axi_a_ARREADY;
  wire [2:0]cuisr_0_m_axi_a_ARSIZE;
  wire cuisr_0_m_axi_a_ARVALID;
  wire [31:0]cuisr_0_m_axi_a_AWADDR;
  wire [1:0]cuisr_0_m_axi_a_AWBURST;
  wire [3:0]cuisr_0_m_axi_a_AWCACHE;
  wire [7:0]cuisr_0_m_axi_a_AWLEN;
  wire [1:0]cuisr_0_m_axi_a_AWLOCK;
  wire [2:0]cuisr_0_m_axi_a_AWPROT;
  wire [3:0]cuisr_0_m_axi_a_AWQOS;
  wire cuisr_0_m_axi_a_AWREADY;
  wire [2:0]cuisr_0_m_axi_a_AWSIZE;
  wire cuisr_0_m_axi_a_AWVALID;
  wire cuisr_0_m_axi_a_BREADY;
  wire [1:0]cuisr_0_m_axi_a_BRESP;
  wire cuisr_0_m_axi_a_BVALID;
  wire [31:0]cuisr_0_m_axi_a_RDATA;
  wire cuisr_0_m_axi_a_RLAST;
  wire cuisr_0_m_axi_a_RREADY;
  wire [1:0]cuisr_0_m_axi_a_RRESP;
  wire cuisr_0_m_axi_a_RVALID;
  wire [31:0]cuisr_0_m_axi_a_WDATA;
  wire cuisr_0_m_axi_a_WLAST;
  wire cuisr_0_m_axi_a_WREADY;
  wire [3:0]cuisr_0_m_axi_a_WSTRB;
  wire cuisr_0_m_axi_a_WVALID;
  wire dma_pcie_aclk_clk;
  wire dma_pcie_aclk_sync_rst;
  wire [31:0]embedded_scheduler_hw_0_CqBaseAddress;
  wire [127:0]embedded_scheduler_hw_0_CuDmaQueue_reg;
  wire [7:0]embedded_scheduler_hw_0_NoofSlots;
  wire [12:0]embedded_scheduler_hw_0_SlotSize;
  wire [31:0]embedded_scheduler_hw_0_ap_offset_cuisr;
  wire embedded_scheduler_hw_0_ap_start_cudma;
  wire embedded_scheduler_hw_0_ap_start_cuisr;
  wire embedded_scheduler_hw_0_irq_cu_completion;
  wire embedded_scheduler_hw_0_irq_slotavailable;
  wire [127:0]irq_cu_1;
  wire [63:0]sim_embedded_scheduler_sw_0_maxi_lite_mb_ARADDR;
  wire [2:0]sim_embedded_scheduler_sw_0_maxi_lite_mb_ARPROT;
  wire sim_embedded_scheduler_sw_0_maxi_lite_mb_ARREADY;
  wire sim_embedded_scheduler_sw_0_maxi_lite_mb_ARVALID;
  wire [63:0]sim_embedded_scheduler_sw_0_maxi_lite_mb_AWADDR;
  wire [2:0]sim_embedded_scheduler_sw_0_maxi_lite_mb_AWPROT;
  wire sim_embedded_scheduler_sw_0_maxi_lite_mb_AWREADY;
  wire sim_embedded_scheduler_sw_0_maxi_lite_mb_AWVALID;
  wire sim_embedded_scheduler_sw_0_maxi_lite_mb_BREADY;
  wire [1:0]sim_embedded_scheduler_sw_0_maxi_lite_mb_BRESP;
  wire sim_embedded_scheduler_sw_0_maxi_lite_mb_BVALID;
  wire [31:0]sim_embedded_scheduler_sw_0_maxi_lite_mb_RDATA;
  wire sim_embedded_scheduler_sw_0_maxi_lite_mb_RREADY;
  wire [1:0]sim_embedded_scheduler_sw_0_maxi_lite_mb_RRESP;
  wire sim_embedded_scheduler_sw_0_maxi_lite_mb_RVALID;
  wire [31:0]sim_embedded_scheduler_sw_0_maxi_lite_mb_WDATA;
  wire sim_embedded_scheduler_sw_0_maxi_lite_mb_WREADY;
  wire [3:0]sim_embedded_scheduler_sw_0_maxi_lite_mb_WSTRB;
  wire sim_embedded_scheduler_sw_0_maxi_lite_mb_WVALID;
  wire [2:0]xlconcat_0_dout;
  wire [15:0]xlconstant_0_dout;

  assign Conn1_ARREADY = m_axi_CUDma_0_arready;
  assign Conn1_AWREADY = m_axi_CUDma_0_awready;
  assign Conn1_BRESP = m_axi_CUDma_0_bresp[1:0];
  assign Conn1_BVALID = m_axi_CUDma_0_bvalid;
  assign Conn1_RDATA = m_axi_CUDma_0_rdata[31:0];
  assign Conn1_RLAST = m_axi_CUDma_0_rlast;
  assign Conn1_RRESP = m_axi_CUDma_0_rresp[1:0];
  assign Conn1_RVALID = m_axi_CUDma_0_rvalid;
  assign Conn1_WREADY = m_axi_CUDma_0_wready;
  assign Conn2_ARADDR = s_axi_0_araddr[63:0];
  assign Conn2_ARVALID = s_axi_0_arvalid[0];
  assign Conn2_AWADDR = s_axi_0_awaddr[63:0];
  assign Conn2_AWVALID = s_axi_0_awvalid[0];
  assign Conn2_BREADY = s_axi_0_bready[0];
  assign Conn2_RREADY = s_axi_0_rready[0];
  assign Conn2_WDATA = s_axi_0_wdata[31:0];
  assign Conn2_WSTRB = s_axi_0_wstrb[3:0];
  assign Conn2_WVALID = s_axi_0_wvalid[0];
  assign IN2_0 = in2[0];
  assign MAXI_araddr[63:0] = sim_embedded_scheduler_sw_0_maxi_lite_mb_ARADDR;
  assign MAXI_arprot[2:0] = sim_embedded_scheduler_sw_0_maxi_lite_mb_ARPROT;
  assign MAXI_arvalid = sim_embedded_scheduler_sw_0_maxi_lite_mb_ARVALID;
  assign MAXI_awaddr[63:0] = sim_embedded_scheduler_sw_0_maxi_lite_mb_AWADDR;
  assign MAXI_awprot[2:0] = sim_embedded_scheduler_sw_0_maxi_lite_mb_AWPROT;
  assign MAXI_awvalid = sim_embedded_scheduler_sw_0_maxi_lite_mb_AWVALID;
  assign MAXI_bready = sim_embedded_scheduler_sw_0_maxi_lite_mb_BREADY;
  assign MAXI_rready = sim_embedded_scheduler_sw_0_maxi_lite_mb_RREADY;
  assign MAXI_wdata[31:0] = sim_embedded_scheduler_sw_0_maxi_lite_mb_WDATA;
  assign MAXI_wstrb[3:0] = sim_embedded_scheduler_sw_0_maxi_lite_mb_WSTRB;
  assign MAXI_wvalid = sim_embedded_scheduler_sw_0_maxi_lite_mb_WVALID;
  assign S01_AXI_1_ARREADY = m_axi_CQDma_arready;
  assign S01_AXI_1_AWREADY = m_axi_CQDma_awready;
  assign S01_AXI_1_BRESP = m_axi_CQDma_bresp[1:0];
  assign S01_AXI_1_BVALID = m_axi_CQDma_bvalid;
  assign S01_AXI_1_RDATA = m_axi_CQDma_rdata[31:0];
  assign S01_AXI_1_RLAST = m_axi_CQDma_rlast;
  assign S01_AXI_1_RRESP = m_axi_CQDma_rresp[1:0];
  assign S01_AXI_1_RVALID = m_axi_CQDma_rvalid;
  assign S01_AXI_1_WREADY = m_axi_CQDma_wready;
  assign SAXI_1_ARADDR = SAXI_araddr[63:0];
  assign SAXI_1_ARPROT = SAXI_arprot[2:0];
  assign SAXI_1_ARVALID = SAXI_arvalid[0];
  assign SAXI_1_AWADDR = SAXI_awaddr[63:0];
  assign SAXI_1_AWPROT = SAXI_awprot[2:0];
  assign SAXI_1_AWVALID = SAXI_awvalid[0];
  assign SAXI_1_BREADY = SAXI_bready[0];
  assign SAXI_1_RREADY = SAXI_rready[0];
  assign SAXI_1_WDATA = SAXI_wdata[31:0];
  assign SAXI_1_WSTRB = SAXI_wstrb[3:0];
  assign SAXI_1_WVALID = SAXI_wvalid[0];
  assign SAXI_arready[0] = SAXI_1_ARREADY;
  assign SAXI_awready[0] = SAXI_1_AWREADY;
  assign SAXI_bresp[1:0] = SAXI_1_BRESP;
  assign SAXI_bvalid[0] = SAXI_1_BVALID;
  assign SAXI_rdata[31:0] = SAXI_1_RDATA;
  assign SAXI_rresp[1:0] = SAXI_1_RRESP;
  assign SAXI_rvalid[0] = SAXI_1_RVALID;
  assign SAXI_wready[0] = SAXI_1_WREADY;
  assign axi_interconnect_0_M00_AXI_ARADDR = host_araddr[63:0];
  assign axi_interconnect_0_M00_AXI_ARPROT = host_arprot[2:0];
  assign axi_interconnect_0_M00_AXI_ARVALID = host_arvalid[0];
  assign axi_interconnect_0_M00_AXI_AWADDR = host_awaddr[63:0];
  assign axi_interconnect_0_M00_AXI_AWPROT = host_awprot[2:0];
  assign axi_interconnect_0_M00_AXI_AWVALID = host_awvalid[0];
  assign axi_interconnect_0_M00_AXI_BREADY = host_bready[0];
  assign axi_interconnect_0_M00_AXI_RREADY = host_rready[0];
  assign axi_interconnect_0_M00_AXI_WDATA = host_wdata[31:0];
  assign axi_interconnect_0_M00_AXI_WSTRB = host_wstrb[3:0];
  assign axi_interconnect_0_M00_AXI_WVALID = host_wvalid[0];
  assign cuisr_0_m_axi_a_ARREADY = m_axi_a_arready;
  assign cuisr_0_m_axi_a_AWREADY = m_axi_a_awready;
  assign cuisr_0_m_axi_a_BRESP = m_axi_a_bresp[1:0];
  assign cuisr_0_m_axi_a_BVALID = m_axi_a_bvalid;
  assign cuisr_0_m_axi_a_RDATA = m_axi_a_rdata[31:0];
  assign cuisr_0_m_axi_a_RLAST = m_axi_a_rlast;
  assign cuisr_0_m_axi_a_RRESP = m_axi_a_rresp[1:0];
  assign cuisr_0_m_axi_a_RVALID = m_axi_a_rvalid;
  assign cuisr_0_m_axi_a_WREADY = m_axi_a_wready;
  assign dma_pcie_aclk_clk = clk;
  assign dma_pcie_aclk_sync_rst = reset_n;
  assign host_arready[0] = axi_interconnect_0_M00_AXI_ARREADY;
  assign host_awready[0] = axi_interconnect_0_M00_AXI_AWREADY;
  assign host_bresp[1:0] = axi_interconnect_0_M00_AXI_BRESP;
  assign host_bvalid[0] = axi_interconnect_0_M00_AXI_BVALID;
  assign host_rdata[31:0] = axi_interconnect_0_M00_AXI_RDATA;
  assign host_rresp[1:0] = axi_interconnect_0_M00_AXI_RRESP;
  assign host_rvalid[0] = axi_interconnect_0_M00_AXI_RVALID;
  assign host_wready[0] = axi_interconnect_0_M00_AXI_WREADY;
  assign irq_cu_1 = irq_cu[127:0];
  assign m_axi_CQDma_araddr[31:0] = S01_AXI_1_ARADDR;
  assign m_axi_CQDma_arburst[1:0] = S01_AXI_1_ARBURST;
  assign m_axi_CQDma_arcache[3:0] = S01_AXI_1_ARCACHE;
  assign m_axi_CQDma_arlen[7:0] = S01_AXI_1_ARLEN;
  assign m_axi_CQDma_arlock[1:0] = S01_AXI_1_ARLOCK;
  assign m_axi_CQDma_arprot[2:0] = S01_AXI_1_ARPROT;
  assign m_axi_CQDma_arqos[3:0] = S01_AXI_1_ARQOS;
  assign m_axi_CQDma_arsize[2:0] = S01_AXI_1_ARSIZE;
  assign m_axi_CQDma_arvalid = S01_AXI_1_ARVALID;
  assign m_axi_CQDma_awaddr[31:0] = S01_AXI_1_AWADDR;
  assign m_axi_CQDma_awburst[1:0] = S01_AXI_1_AWBURST;
  assign m_axi_CQDma_awcache[3:0] = S01_AXI_1_AWCACHE;
  assign m_axi_CQDma_awlen[7:0] = S01_AXI_1_AWLEN;
  assign m_axi_CQDma_awlock[1:0] = S01_AXI_1_AWLOCK;
  assign m_axi_CQDma_awprot[2:0] = S01_AXI_1_AWPROT;
  assign m_axi_CQDma_awqos[3:0] = S01_AXI_1_AWQOS;
  assign m_axi_CQDma_awsize[2:0] = S01_AXI_1_AWSIZE;
  assign m_axi_CQDma_awvalid = S01_AXI_1_AWVALID;
  assign m_axi_CQDma_bready = S01_AXI_1_BREADY;
  assign m_axi_CQDma_rready = S01_AXI_1_RREADY;
  assign m_axi_CQDma_wdata[31:0] = S01_AXI_1_WDATA;
  assign m_axi_CQDma_wlast = S01_AXI_1_WLAST;
  assign m_axi_CQDma_wstrb[3:0] = S01_AXI_1_WSTRB;
  assign m_axi_CQDma_wvalid = S01_AXI_1_WVALID;
  assign m_axi_CUDma_0_araddr[31:0] = Conn1_ARADDR;
  assign m_axi_CUDma_0_arburst[1:0] = Conn1_ARBURST;
  assign m_axi_CUDma_0_arcache[3:0] = Conn1_ARCACHE;
  assign m_axi_CUDma_0_arlen[7:0] = Conn1_ARLEN;
  assign m_axi_CUDma_0_arlock[1:0] = Conn1_ARLOCK;
  assign m_axi_CUDma_0_arprot[2:0] = Conn1_ARPROT;
  assign m_axi_CUDma_0_arqos[3:0] = Conn1_ARQOS;
  assign m_axi_CUDma_0_arsize[2:0] = Conn1_ARSIZE;
  assign m_axi_CUDma_0_arvalid = Conn1_ARVALID;
  assign m_axi_CUDma_0_awaddr[31:0] = Conn1_AWADDR;
  assign m_axi_CUDma_0_awburst[1:0] = Conn1_AWBURST;
  assign m_axi_CUDma_0_awcache[3:0] = Conn1_AWCACHE;
  assign m_axi_CUDma_0_awlen[7:0] = Conn1_AWLEN;
  assign m_axi_CUDma_0_awlock[1:0] = Conn1_AWLOCK;
  assign m_axi_CUDma_0_awprot[2:0] = Conn1_AWPROT;
  assign m_axi_CUDma_0_awqos[3:0] = Conn1_AWQOS;
  assign m_axi_CUDma_0_awsize[2:0] = Conn1_AWSIZE;
  assign m_axi_CUDma_0_awvalid = Conn1_AWVALID;
  assign m_axi_CUDma_0_bready = Conn1_BREADY;
  assign m_axi_CUDma_0_rready = Conn1_RREADY;
  assign m_axi_CUDma_0_wdata[31:0] = Conn1_WDATA;
  assign m_axi_CUDma_0_wlast = Conn1_WLAST;
  assign m_axi_CUDma_0_wstrb[3:0] = Conn1_WSTRB;
  assign m_axi_CUDma_0_wvalid = Conn1_WVALID;
  assign m_axi_a_araddr[31:0] = cuisr_0_m_axi_a_ARADDR;
  assign m_axi_a_arburst[1:0] = cuisr_0_m_axi_a_ARBURST;
  assign m_axi_a_arcache[3:0] = cuisr_0_m_axi_a_ARCACHE;
  assign m_axi_a_arlen[7:0] = cuisr_0_m_axi_a_ARLEN;
  assign m_axi_a_arlock[1:0] = cuisr_0_m_axi_a_ARLOCK;
  assign m_axi_a_arprot[2:0] = cuisr_0_m_axi_a_ARPROT;
  assign m_axi_a_arqos[3:0] = cuisr_0_m_axi_a_ARQOS;
  assign m_axi_a_arsize[2:0] = cuisr_0_m_axi_a_ARSIZE;
  assign m_axi_a_arvalid = cuisr_0_m_axi_a_ARVALID;
  assign m_axi_a_awaddr[31:0] = cuisr_0_m_axi_a_AWADDR;
  assign m_axi_a_awburst[1:0] = cuisr_0_m_axi_a_AWBURST;
  assign m_axi_a_awcache[3:0] = cuisr_0_m_axi_a_AWCACHE;
  assign m_axi_a_awlen[7:0] = cuisr_0_m_axi_a_AWLEN;
  assign m_axi_a_awlock[1:0] = cuisr_0_m_axi_a_AWLOCK;
  assign m_axi_a_awprot[2:0] = cuisr_0_m_axi_a_AWPROT;
  assign m_axi_a_awqos[3:0] = cuisr_0_m_axi_a_AWQOS;
  assign m_axi_a_awsize[2:0] = cuisr_0_m_axi_a_AWSIZE;
  assign m_axi_a_awvalid = cuisr_0_m_axi_a_AWVALID;
  assign m_axi_a_bready = cuisr_0_m_axi_a_BREADY;
  assign m_axi_a_rready = cuisr_0_m_axi_a_RREADY;
  assign m_axi_a_wdata[31:0] = cuisr_0_m_axi_a_WDATA;
  assign m_axi_a_wlast = cuisr_0_m_axi_a_WLAST;
  assign m_axi_a_wstrb[3:0] = cuisr_0_m_axi_a_WSTRB;
  assign m_axi_a_wvalid = cuisr_0_m_axi_a_WVALID;
  assign s_axi_0_arready[0] = Conn2_ARREADY;
  assign s_axi_0_awready[0] = Conn2_AWREADY;
  assign s_axi_0_bresp[1:0] = Conn2_BRESP;
  assign s_axi_0_bvalid[0] = Conn2_BVALID;
  assign s_axi_0_rdata[31:0] = Conn2_RDATA;
  assign s_axi_0_rresp[1:0] = Conn2_RRESP;
  assign s_axi_0_rvalid[0] = Conn2_RVALID;
  assign s_axi_0_wready[0] = Conn2_WREADY;
  assign sim_embedded_scheduler_sw_0_maxi_lite_mb_ARREADY = MAXI_arready;
  assign sim_embedded_scheduler_sw_0_maxi_lite_mb_AWREADY = MAXI_awready;
  assign sim_embedded_scheduler_sw_0_maxi_lite_mb_BRESP = MAXI_bresp[1:0];
  assign sim_embedded_scheduler_sw_0_maxi_lite_mb_BVALID = MAXI_bvalid;
  assign sim_embedded_scheduler_sw_0_maxi_lite_mb_RDATA = MAXI_rdata[31:0];
  assign sim_embedded_scheduler_sw_0_maxi_lite_mb_RRESP = MAXI_rresp[1:0];
  assign sim_embedded_scheduler_sw_0_maxi_lite_mb_RVALID = MAXI_rvalid;
  assign sim_embedded_scheduler_sw_0_maxi_lite_mb_WREADY = MAXI_wready;
  emu_CuDmaController_0_0 CuDmaController_0
       (.CqBaseAddress(embedded_scheduler_hw_0_CqBaseAddress),
        .CuDmaQueue(embedded_scheduler_hw_0_CuDmaQueue_reg),
        .NoOfSlots(embedded_scheduler_hw_0_NoofSlots),
        .SlotSize(embedded_scheduler_hw_0_SlotSize),
        .ap_clk(dma_pcie_aclk_clk),
        .ap_done(CuDmaController_0_ap_done),
        .ap_rst_n(dma_pcie_aclk_sync_rst),
        .ap_start(embedded_scheduler_hw_0_ap_start_cudma),
        .m_axi_CQDma_ARADDR(S01_AXI_1_ARADDR),
        .m_axi_CQDma_ARBURST(S01_AXI_1_ARBURST),
        .m_axi_CQDma_ARCACHE(S01_AXI_1_ARCACHE),
        .m_axi_CQDma_ARLEN(S01_AXI_1_ARLEN),
        .m_axi_CQDma_ARLOCK(S01_AXI_1_ARLOCK),
        .m_axi_CQDma_ARPROT(S01_AXI_1_ARPROT),
        .m_axi_CQDma_ARQOS(S01_AXI_1_ARQOS),
        .m_axi_CQDma_ARREADY(S01_AXI_1_ARREADY),
        .m_axi_CQDma_ARSIZE(S01_AXI_1_ARSIZE),
        .m_axi_CQDma_ARVALID(S01_AXI_1_ARVALID),
        .m_axi_CQDma_AWADDR(S01_AXI_1_AWADDR),
        .m_axi_CQDma_AWBURST(S01_AXI_1_AWBURST),
        .m_axi_CQDma_AWCACHE(S01_AXI_1_AWCACHE),
        .m_axi_CQDma_AWLEN(S01_AXI_1_AWLEN),
        .m_axi_CQDma_AWLOCK(S01_AXI_1_AWLOCK),
        .m_axi_CQDma_AWPROT(S01_AXI_1_AWPROT),
        .m_axi_CQDma_AWQOS(S01_AXI_1_AWQOS),
        .m_axi_CQDma_AWREADY(S01_AXI_1_AWREADY),
        .m_axi_CQDma_AWSIZE(S01_AXI_1_AWSIZE),
        .m_axi_CQDma_AWVALID(S01_AXI_1_AWVALID),
        .m_axi_CQDma_BREADY(S01_AXI_1_BREADY),
        .m_axi_CQDma_BRESP(S01_AXI_1_BRESP),
        .m_axi_CQDma_BVALID(S01_AXI_1_BVALID),
        .m_axi_CQDma_RDATA(S01_AXI_1_RDATA),
        .m_axi_CQDma_RLAST(S01_AXI_1_RLAST),
        .m_axi_CQDma_RREADY(S01_AXI_1_RREADY),
        .m_axi_CQDma_RRESP(S01_AXI_1_RRESP),
        .m_axi_CQDma_RVALID(S01_AXI_1_RVALID),
        .m_axi_CQDma_WDATA(S01_AXI_1_WDATA),
        .m_axi_CQDma_WLAST(S01_AXI_1_WLAST),
        .m_axi_CQDma_WREADY(S01_AXI_1_WREADY),
        .m_axi_CQDma_WSTRB(S01_AXI_1_WSTRB),
        .m_axi_CQDma_WVALID(S01_AXI_1_WVALID),
        .m_axi_CUDma_ARADDR(Conn1_ARADDR),
        .m_axi_CUDma_ARBURST(Conn1_ARBURST),
        .m_axi_CUDma_ARCACHE(Conn1_ARCACHE),
        .m_axi_CUDma_ARLEN(Conn1_ARLEN),
        .m_axi_CUDma_ARLOCK(Conn1_ARLOCK),
        .m_axi_CUDma_ARPROT(Conn1_ARPROT),
        .m_axi_CUDma_ARQOS(Conn1_ARQOS),
        .m_axi_CUDma_ARREADY(Conn1_ARREADY),
        .m_axi_CUDma_ARSIZE(Conn1_ARSIZE),
        .m_axi_CUDma_ARVALID(Conn1_ARVALID),
        .m_axi_CUDma_AWADDR(Conn1_AWADDR),
        .m_axi_CUDma_AWBURST(Conn1_AWBURST),
        .m_axi_CUDma_AWCACHE(Conn1_AWCACHE),
        .m_axi_CUDma_AWLEN(Conn1_AWLEN),
        .m_axi_CUDma_AWLOCK(Conn1_AWLOCK),
        .m_axi_CUDma_AWPROT(Conn1_AWPROT),
        .m_axi_CUDma_AWQOS(Conn1_AWQOS),
        .m_axi_CUDma_AWREADY(Conn1_AWREADY),
        .m_axi_CUDma_AWSIZE(Conn1_AWSIZE),
        .m_axi_CUDma_AWVALID(Conn1_AWVALID),
        .m_axi_CUDma_BREADY(Conn1_BREADY),
        .m_axi_CUDma_BRESP(Conn1_BRESP),
        .m_axi_CUDma_BVALID(Conn1_BVALID),
        .m_axi_CUDma_RDATA(Conn1_RDATA),
        .m_axi_CUDma_RLAST(Conn1_RLAST),
        .m_axi_CUDma_RREADY(Conn1_RREADY),
        .m_axi_CUDma_RRESP(Conn1_RRESP),
        .m_axi_CUDma_RVALID(Conn1_RVALID),
        .m_axi_CUDma_WDATA(Conn1_WDATA),
        .m_axi_CUDma_WLAST(Conn1_WLAST),
        .m_axi_CUDma_WREADY(Conn1_WREADY),
        .m_axi_CUDma_WSTRB(Conn1_WSTRB),
        .m_axi_CUDma_WVALID(Conn1_WVALID));
  emu_axi_intc_0_0 axi_intc_0
       (.intr(xlconcat_0_dout),
        .irq(axi_intc_0_irq),
        .s_axi_aclk(dma_pcie_aclk_clk),
        .s_axi_araddr(Conn2_ARADDR[8:0]),
        .s_axi_aresetn(dma_pcie_aclk_sync_rst),
        .s_axi_arready(Conn2_ARREADY),
        .s_axi_arvalid(Conn2_ARVALID),
        .s_axi_awaddr(Conn2_AWADDR[8:0]),
        .s_axi_awready(Conn2_AWREADY),
        .s_axi_awvalid(Conn2_AWVALID),
        .s_axi_bready(Conn2_BREADY),
        .s_axi_bresp(Conn2_BRESP),
        .s_axi_bvalid(Conn2_BVALID),
        .s_axi_rdata(Conn2_RDATA),
        .s_axi_rready(Conn2_RREADY),
        .s_axi_rresp(Conn2_RRESP),
        .s_axi_rvalid(Conn2_RVALID),
        .s_axi_wdata(Conn2_WDATA),
        .s_axi_wready(Conn2_WREADY),
        .s_axi_wstrb(Conn2_WSTRB),
        .s_axi_wvalid(Conn2_WVALID));
  emu_cuisr_0_0 cuisr_0
       (.Offset(embedded_scheduler_hw_0_ap_offset_cuisr),
        .ap_clk(dma_pcie_aclk_clk),
        .ap_done(cuisr_0_ap_done),
        .ap_rst_n(dma_pcie_aclk_sync_rst),
        .ap_start(embedded_scheduler_hw_0_ap_start_cuisr),
        .m_axi_a_ARADDR(cuisr_0_m_axi_a_ARADDR),
        .m_axi_a_ARBURST(cuisr_0_m_axi_a_ARBURST),
        .m_axi_a_ARCACHE(cuisr_0_m_axi_a_ARCACHE),
        .m_axi_a_ARLEN(cuisr_0_m_axi_a_ARLEN),
        .m_axi_a_ARLOCK(cuisr_0_m_axi_a_ARLOCK),
        .m_axi_a_ARPROT(cuisr_0_m_axi_a_ARPROT),
        .m_axi_a_ARQOS(cuisr_0_m_axi_a_ARQOS),
        .m_axi_a_ARREADY(cuisr_0_m_axi_a_ARREADY),
        .m_axi_a_ARSIZE(cuisr_0_m_axi_a_ARSIZE),
        .m_axi_a_ARVALID(cuisr_0_m_axi_a_ARVALID),
        .m_axi_a_AWADDR(cuisr_0_m_axi_a_AWADDR),
        .m_axi_a_AWBURST(cuisr_0_m_axi_a_AWBURST),
        .m_axi_a_AWCACHE(cuisr_0_m_axi_a_AWCACHE),
        .m_axi_a_AWLEN(cuisr_0_m_axi_a_AWLEN),
        .m_axi_a_AWLOCK(cuisr_0_m_axi_a_AWLOCK),
        .m_axi_a_AWPROT(cuisr_0_m_axi_a_AWPROT),
        .m_axi_a_AWQOS(cuisr_0_m_axi_a_AWQOS),
        .m_axi_a_AWREADY(cuisr_0_m_axi_a_AWREADY),
        .m_axi_a_AWSIZE(cuisr_0_m_axi_a_AWSIZE),
        .m_axi_a_AWVALID(cuisr_0_m_axi_a_AWVALID),
        .m_axi_a_BREADY(cuisr_0_m_axi_a_BREADY),
        .m_axi_a_BRESP(cuisr_0_m_axi_a_BRESP),
        .m_axi_a_BVALID(cuisr_0_m_axi_a_BVALID),
        .m_axi_a_RDATA(cuisr_0_m_axi_a_RDATA),
        .m_axi_a_RLAST(cuisr_0_m_axi_a_RLAST),
        .m_axi_a_RREADY(cuisr_0_m_axi_a_RREADY),
        .m_axi_a_RRESP(cuisr_0_m_axi_a_RRESP),
        .m_axi_a_RVALID(cuisr_0_m_axi_a_RVALID),
        .m_axi_a_WDATA(cuisr_0_m_axi_a_WDATA),
        .m_axi_a_WLAST(cuisr_0_m_axi_a_WLAST),
        .m_axi_a_WREADY(cuisr_0_m_axi_a_WREADY),
        .m_axi_a_WSTRB(cuisr_0_m_axi_a_WSTRB),
        .m_axi_a_WVALID(cuisr_0_m_axi_a_WVALID));
  emu_embedded_scheduler_hw_0_0 embedded_scheduler_hw_0
       (.CqBaseAddress(embedded_scheduler_hw_0_CqBaseAddress),
        .CuDmaQueue_reg(embedded_scheduler_hw_0_CuDmaQueue_reg),
        .NoofSlots(embedded_scheduler_hw_0_NoofSlots),
        .Offset(embedded_scheduler_hw_0_ap_offset_cuisr),
        .SlotSize(embedded_scheduler_hw_0_SlotSize),
        .ap_done_cudma(CuDmaController_0_ap_done),
        .ap_done_cuisr(cuisr_0_ap_done),
        .ap_start_cudma(embedded_scheduler_hw_0_ap_start_cudma),
        .ap_start_cuisr(embedded_scheduler_hw_0_ap_start_cuisr),
        .clk(dma_pcie_aclk_clk),
        .host_araddr(axi_interconnect_0_M00_AXI_ARADDR[31:0]),
        .host_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .host_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .host_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .host_awaddr(axi_interconnect_0_M00_AXI_AWADDR[31:0]),
        .host_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .host_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .host_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .host_bready(axi_interconnect_0_M00_AXI_BREADY),
        .host_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .host_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .host_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .host_rready(axi_interconnect_0_M00_AXI_RREADY),
        .host_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .host_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .host_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .host_wready(axi_interconnect_0_M00_AXI_WREADY),
        .host_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .host_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .irq_ack(xlconstant_0_dout),
        .irq_cu(irq_cu_1),
        .irq_cu_completion(embedded_scheduler_hw_0_irq_cu_completion),
        .irq_slotavailable(embedded_scheduler_hw_0_irq_slotavailable),
        .reset_n(dma_pcie_aclk_sync_rst));
  emu_sim_embedded_scheduler_sw_0_0 sim_embedded_scheduler_sw_0
       (.irq(axi_intc_0_irq),
        .maxi_lite_mb_aclk(dma_pcie_aclk_clk),
        .maxi_lite_mb_araddr(sim_embedded_scheduler_sw_0_maxi_lite_mb_ARADDR),
        .maxi_lite_mb_aresetn(dma_pcie_aclk_sync_rst),
        .maxi_lite_mb_arprot(sim_embedded_scheduler_sw_0_maxi_lite_mb_ARPROT),
        .maxi_lite_mb_arready(sim_embedded_scheduler_sw_0_maxi_lite_mb_ARREADY),
        .maxi_lite_mb_arvalid(sim_embedded_scheduler_sw_0_maxi_lite_mb_ARVALID),
        .maxi_lite_mb_awaddr(sim_embedded_scheduler_sw_0_maxi_lite_mb_AWADDR),
        .maxi_lite_mb_awprot(sim_embedded_scheduler_sw_0_maxi_lite_mb_AWPROT),
        .maxi_lite_mb_awready(sim_embedded_scheduler_sw_0_maxi_lite_mb_AWREADY),
        .maxi_lite_mb_awvalid(sim_embedded_scheduler_sw_0_maxi_lite_mb_AWVALID),
        .maxi_lite_mb_bready(sim_embedded_scheduler_sw_0_maxi_lite_mb_BREADY),
        .maxi_lite_mb_bresp(sim_embedded_scheduler_sw_0_maxi_lite_mb_BRESP),
        .maxi_lite_mb_bvalid(sim_embedded_scheduler_sw_0_maxi_lite_mb_BVALID),
        .maxi_lite_mb_rdata(sim_embedded_scheduler_sw_0_maxi_lite_mb_RDATA),
        .maxi_lite_mb_rready(sim_embedded_scheduler_sw_0_maxi_lite_mb_RREADY),
        .maxi_lite_mb_rresp(sim_embedded_scheduler_sw_0_maxi_lite_mb_RRESP),
        .maxi_lite_mb_rvalid(sim_embedded_scheduler_sw_0_maxi_lite_mb_RVALID),
        .maxi_lite_mb_wdata(sim_embedded_scheduler_sw_0_maxi_lite_mb_WDATA),
        .maxi_lite_mb_wready(sim_embedded_scheduler_sw_0_maxi_lite_mb_WREADY),
        .maxi_lite_mb_wstrb(sim_embedded_scheduler_sw_0_maxi_lite_mb_WSTRB),
        .maxi_lite_mb_wvalid(sim_embedded_scheduler_sw_0_maxi_lite_mb_WVALID),
        .saxi_lite_cq_aclk(dma_pcie_aclk_clk),
        .saxi_lite_cq_araddr(SAXI_1_ARADDR),
        .saxi_lite_cq_aresetn(dma_pcie_aclk_sync_rst),
        .saxi_lite_cq_arprot(SAXI_1_ARPROT),
        .saxi_lite_cq_arready(SAXI_1_ARREADY),
        .saxi_lite_cq_arvalid(SAXI_1_ARVALID),
        .saxi_lite_cq_awaddr(SAXI_1_AWADDR),
        .saxi_lite_cq_awprot(SAXI_1_AWPROT),
        .saxi_lite_cq_awready(SAXI_1_AWREADY),
        .saxi_lite_cq_awvalid(SAXI_1_AWVALID),
        .saxi_lite_cq_bready(SAXI_1_BREADY),
        .saxi_lite_cq_bresp(SAXI_1_BRESP),
        .saxi_lite_cq_bvalid(SAXI_1_BVALID),
        .saxi_lite_cq_rdata(SAXI_1_RDATA),
        .saxi_lite_cq_rready(SAXI_1_RREADY),
        .saxi_lite_cq_rresp(SAXI_1_RRESP),
        .saxi_lite_cq_rvalid(SAXI_1_RVALID),
        .saxi_lite_cq_wdata(SAXI_1_WDATA),
        .saxi_lite_cq_wready(SAXI_1_WREADY),
        .saxi_lite_cq_wstrb(SAXI_1_WSTRB),
        .saxi_lite_cq_wvalid(SAXI_1_WVALID));
  emu_xlconcat_0_0 xlconcat_0
       (.In0(embedded_scheduler_hw_0_irq_slotavailable),
        .In1(embedded_scheduler_hw_0_irq_cu_completion),
        .In2(IN2_0),
        .dout(xlconcat_0_dout));
  emu_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

(* CORE_GENERATION_INFO = "emu,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=emu,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=50,numReposBlks=30,numNonXlnxBlks=0,numHierBlks=20,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=4,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "emu.hwdef" *) 
module emu
   ();

  wire [127:0]irq_cu_conn;
  wire [63:0]sta_dy_ctrl0_ARADDR;
  wire [2:0]sta_dy_ctrl0_ARPROT;
  wire [0:0]sta_dy_ctrl0_ARREADY;
  wire [0:0]sta_dy_ctrl0_ARVALID;
  wire [63:0]sta_dy_ctrl0_AWADDR;
  wire [2:0]sta_dy_ctrl0_AWPROT;
  wire [0:0]sta_dy_ctrl0_AWREADY;
  wire [0:0]sta_dy_ctrl0_AWVALID;
  wire [0:0]sta_dy_ctrl0_BREADY;
  wire [1:0]sta_dy_ctrl0_BRESP;
  wire [0:0]sta_dy_ctrl0_BVALID;
  wire [31:0]sta_dy_ctrl0_RDATA;
  wire [0:0]sta_dy_ctrl0_RREADY;
  wire [1:0]sta_dy_ctrl0_RRESP;
  wire [0:0]sta_dy_ctrl0_RVALID;
  wire [31:0]sta_dy_ctrl0_WDATA;
  wire [0:0]sta_dy_ctrl0_WREADY;
  wire [3:0]sta_dy_ctrl0_WSTRB;
  wire [0:0]sta_dy_ctrl0_WVALID;
  wire [63:0]sta_dy_data0_ARADDR;
  wire [1:0]sta_dy_data0_ARBURST;
  wire [3:0]sta_dy_data0_ARCACHE;
  wire [0:0]sta_dy_data0_ARID;
  wire [7:0]sta_dy_data0_ARLEN;
  wire sta_dy_data0_ARLOCK;
  wire [2:0]sta_dy_data0_ARPROT;
  wire [3:0]sta_dy_data0_ARQOS;
  wire sta_dy_data0_ARREADY;
  wire [2:0]sta_dy_data0_ARSIZE;
  wire sta_dy_data0_ARVALID;
  wire [63:0]sta_dy_data0_AWADDR;
  wire [1:0]sta_dy_data0_AWBURST;
  wire [3:0]sta_dy_data0_AWCACHE;
  wire [0:0]sta_dy_data0_AWID;
  wire [7:0]sta_dy_data0_AWLEN;
  wire sta_dy_data0_AWLOCK;
  wire [2:0]sta_dy_data0_AWPROT;
  wire [3:0]sta_dy_data0_AWQOS;
  wire sta_dy_data0_AWREADY;
  wire [2:0]sta_dy_data0_AWSIZE;
  wire sta_dy_data0_AWVALID;
  wire [0:0]sta_dy_data0_BID;
  wire sta_dy_data0_BREADY;
  wire [1:0]sta_dy_data0_BRESP;
  wire sta_dy_data0_BVALID;
  wire [31:0]sta_dy_data0_RDATA;
  wire [0:0]sta_dy_data0_RID;
  wire sta_dy_data0_RLAST;
  wire sta_dy_data0_RREADY;
  wire [1:0]sta_dy_data0_RRESP;
  wire sta_dy_data0_RVALID;
  wire [31:0]sta_dy_data0_WDATA;
  wire sta_dy_data0_WLAST;
  wire sta_dy_data0_WREADY;
  wire [3:0]sta_dy_data0_WSTRB;
  wire sta_dy_data0_WVALID;
  wire [63:0]sta_dy_data1_ARADDR;
  wire [1:0]sta_dy_data1_ARBURST;
  wire [3:0]sta_dy_data1_ARCACHE;
  wire [7:0]sta_dy_data1_ARLEN;
  wire sta_dy_data1_ARLOCK;
  wire [2:0]sta_dy_data1_ARPROT;
  wire [3:0]sta_dy_data1_ARQOS;
  wire sta_dy_data1_ARREADY;
  wire [3:0]sta_dy_data1_ARREGION;
  wire [2:0]sta_dy_data1_ARSIZE;
  wire sta_dy_data1_ARVALID;
  wire [63:0]sta_dy_data1_AWADDR;
  wire [1:0]sta_dy_data1_AWBURST;
  wire [3:0]sta_dy_data1_AWCACHE;
  wire [7:0]sta_dy_data1_AWLEN;
  wire sta_dy_data1_AWLOCK;
  wire [2:0]sta_dy_data1_AWPROT;
  wire [3:0]sta_dy_data1_AWQOS;
  wire sta_dy_data1_AWREADY;
  wire [3:0]sta_dy_data1_AWREGION;
  wire [2:0]sta_dy_data1_AWSIZE;
  wire sta_dy_data1_AWVALID;
  wire sta_dy_data1_BREADY;
  wire [1:0]sta_dy_data1_BRESP;
  wire sta_dy_data1_BVALID;
  wire [511:0]sta_dy_data1_RDATA;
  wire sta_dy_data1_RLAST;
  wire sta_dy_data1_RREADY;
  wire [1:0]sta_dy_data1_RRESP;
  wire sta_dy_data1_RVALID;
  wire [511:0]sta_dy_data1_WDATA;
  wire sta_dy_data1_WLAST;
  wire sta_dy_data1_WREADY;
  wire [63:0]sta_dy_data1_WSTRB;
  wire sta_dy_data1_WVALID;
  wire [63:0]sta_dy_data2_ARADDR;
  wire [1:0]sta_dy_data2_ARBURST;
  wire [3:0]sta_dy_data2_ARCACHE;
  wire [7:0]sta_dy_data2_ARLEN;
  wire sta_dy_data2_ARLOCK;
  wire [2:0]sta_dy_data2_ARPROT;
  wire [3:0]sta_dy_data2_ARQOS;
  wire sta_dy_data2_ARREADY;
  wire [3:0]sta_dy_data2_ARREGION;
  wire [2:0]sta_dy_data2_ARSIZE;
  wire sta_dy_data2_ARVALID;
  wire [63:0]sta_dy_data2_AWADDR;
  wire [1:0]sta_dy_data2_AWBURST;
  wire [3:0]sta_dy_data2_AWCACHE;
  wire [7:0]sta_dy_data2_AWLEN;
  wire sta_dy_data2_AWLOCK;
  wire [2:0]sta_dy_data2_AWPROT;
  wire [3:0]sta_dy_data2_AWQOS;
  wire sta_dy_data2_AWREADY;
  wire [3:0]sta_dy_data2_AWREGION;
  wire [2:0]sta_dy_data2_AWSIZE;
  wire sta_dy_data2_AWVALID;
  wire sta_dy_data2_BREADY;
  wire [1:0]sta_dy_data2_BRESP;
  wire sta_dy_data2_BVALID;
  wire [511:0]sta_dy_data2_RDATA;
  wire sta_dy_data2_RLAST;
  wire sta_dy_data2_RREADY;
  wire [1:0]sta_dy_data2_RRESP;
  wire sta_dy_data2_RVALID;
  wire [511:0]sta_dy_data2_WDATA;
  wire sta_dy_data2_WLAST;
  wire sta_dy_data2_WREADY;
  wire [63:0]sta_dy_data2_WSTRB;
  wire sta_dy_data2_WVALID;
  wire [63:0]sta_dy_data3_ARADDR;
  wire [1:0]sta_dy_data3_ARBURST;
  wire [3:0]sta_dy_data3_ARCACHE;
  wire [7:0]sta_dy_data3_ARLEN;
  wire sta_dy_data3_ARLOCK;
  wire [2:0]sta_dy_data3_ARPROT;
  wire [3:0]sta_dy_data3_ARQOS;
  wire sta_dy_data3_ARREADY;
  wire [3:0]sta_dy_data3_ARREGION;
  wire [2:0]sta_dy_data3_ARSIZE;
  wire sta_dy_data3_ARVALID;
  wire [63:0]sta_dy_data3_AWADDR;
  wire [1:0]sta_dy_data3_AWBURST;
  wire [3:0]sta_dy_data3_AWCACHE;
  wire [7:0]sta_dy_data3_AWLEN;
  wire sta_dy_data3_AWLOCK;
  wire [2:0]sta_dy_data3_AWPROT;
  wire [3:0]sta_dy_data3_AWQOS;
  wire sta_dy_data3_AWREADY;
  wire [3:0]sta_dy_data3_AWREGION;
  wire [2:0]sta_dy_data3_AWSIZE;
  wire sta_dy_data3_AWVALID;
  wire sta_dy_data3_BREADY;
  wire [1:0]sta_dy_data3_BRESP;
  wire sta_dy_data3_BVALID;
  wire [511:0]sta_dy_data3_RDATA;
  wire sta_dy_data3_RLAST;
  wire sta_dy_data3_RREADY;
  wire [1:0]sta_dy_data3_RRESP;
  wire sta_dy_data3_RVALID;
  wire [511:0]sta_dy_data3_WDATA;
  wire sta_dy_data3_WLAST;
  wire sta_dy_data3_WREADY;
  wire [63:0]sta_dy_data3_WSTRB;
  wire sta_dy_data3_WVALID;
  wire [63:0]sta_dy_data4_ARADDR;
  wire [1:0]sta_dy_data4_ARBURST;
  wire [3:0]sta_dy_data4_ARCACHE;
  wire [7:0]sta_dy_data4_ARLEN;
  wire sta_dy_data4_ARLOCK;
  wire [2:0]sta_dy_data4_ARPROT;
  wire [3:0]sta_dy_data4_ARQOS;
  wire sta_dy_data4_ARREADY;
  wire [3:0]sta_dy_data4_ARREGION;
  wire [2:0]sta_dy_data4_ARSIZE;
  wire sta_dy_data4_ARVALID;
  wire [63:0]sta_dy_data4_AWADDR;
  wire [1:0]sta_dy_data4_AWBURST;
  wire [3:0]sta_dy_data4_AWCACHE;
  wire [7:0]sta_dy_data4_AWLEN;
  wire sta_dy_data4_AWLOCK;
  wire [2:0]sta_dy_data4_AWPROT;
  wire [3:0]sta_dy_data4_AWQOS;
  wire sta_dy_data4_AWREADY;
  wire [3:0]sta_dy_data4_AWREGION;
  wire [2:0]sta_dy_data4_AWSIZE;
  wire sta_dy_data4_AWVALID;
  wire sta_dy_data4_BREADY;
  wire [1:0]sta_dy_data4_BRESP;
  wire sta_dy_data4_BVALID;
  wire [511:0]sta_dy_data4_RDATA;
  wire sta_dy_data4_RLAST;
  wire sta_dy_data4_RREADY;
  wire [1:0]sta_dy_data4_RRESP;
  wire sta_dy_data4_RVALID;
  wire [511:0]sta_dy_data4_WDATA;
  wire sta_dy_data4_WLAST;
  wire sta_dy_data4_WREADY;
  wire [63:0]sta_dy_data4_WSTRB;
  wire sta_dy_data4_WVALID;
  wire [34:0]sta_dy_ddr1_ARADDR;
  wire [1:0]sta_dy_ddr1_ARBURST;
  wire [7:0]sta_dy_ddr1_ARLEN;
  wire [2:0]sta_dy_ddr1_ARPROT;
  wire [0:0]sta_dy_ddr1_ARREADY;
  wire [2:0]sta_dy_ddr1_ARSIZE;
  wire [0:0]sta_dy_ddr1_ARVALID;
  wire [34:0]sta_dy_ddr1_AWADDR;
  wire [1:0]sta_dy_ddr1_AWBURST;
  wire [7:0]sta_dy_ddr1_AWLEN;
  wire [2:0]sta_dy_ddr1_AWPROT;
  wire [0:0]sta_dy_ddr1_AWREADY;
  wire [2:0]sta_dy_ddr1_AWSIZE;
  wire [0:0]sta_dy_ddr1_AWVALID;
  wire [0:0]sta_dy_ddr1_BREADY;
  wire [1:0]sta_dy_ddr1_BRESP;
  wire [0:0]sta_dy_ddr1_BVALID;
  wire [511:0]sta_dy_ddr1_RDATA;
  wire [0:0]sta_dy_ddr1_RLAST;
  wire [0:0]sta_dy_ddr1_RREADY;
  wire [1:0]sta_dy_ddr1_RRESP;
  wire [0:0]sta_dy_ddr1_RVALID;
  wire [511:0]sta_dy_ddr1_WDATA;
  wire [0:0]sta_dy_ddr1_WLAST;
  wire [0:0]sta_dy_ddr1_WREADY;
  wire [63:0]sta_dy_ddr1_WSTRB;
  wire [0:0]sta_dy_ddr1_WVALID;
  wire static_region_clkwiz_kernel2_clk_0;
  wire static_region_clkwiz_kernel2_rst_0;
  wire static_region_clkwiz_kernel_clk_0;
  wire static_region_clkwiz_kernel_rst_0;
  wire static_region_ddr_default_clk_0;
  wire static_region_ddr_default_rst_0;
  wire static_region_dma_pcie_aclk;
  wire [0:0]static_region_dma_pcie_arst;

  pfm_dynamic dynamic_region
       (.C0_DDR_MAXI_0_araddr(sta_dy_ddr1_ARADDR),
        .C0_DDR_MAXI_0_arburst(sta_dy_ddr1_ARBURST),
        .C0_DDR_MAXI_0_arlen(sta_dy_ddr1_ARLEN),
        .C0_DDR_MAXI_0_arprot(sta_dy_ddr1_ARPROT),
        .C0_DDR_MAXI_0_arready(sta_dy_ddr1_ARREADY),
        .C0_DDR_MAXI_0_arsize(sta_dy_ddr1_ARSIZE),
        .C0_DDR_MAXI_0_arvalid(sta_dy_ddr1_ARVALID),
        .C0_DDR_MAXI_0_awaddr(sta_dy_ddr1_AWADDR),
        .C0_DDR_MAXI_0_awburst(sta_dy_ddr1_AWBURST),
        .C0_DDR_MAXI_0_awlen(sta_dy_ddr1_AWLEN),
        .C0_DDR_MAXI_0_awprot(sta_dy_ddr1_AWPROT),
        .C0_DDR_MAXI_0_awready(sta_dy_ddr1_AWREADY),
        .C0_DDR_MAXI_0_awsize(sta_dy_ddr1_AWSIZE),
        .C0_DDR_MAXI_0_awvalid(sta_dy_ddr1_AWVALID),
        .C0_DDR_MAXI_0_bready(sta_dy_ddr1_BREADY),
        .C0_DDR_MAXI_0_bresp(sta_dy_ddr1_BRESP),
        .C0_DDR_MAXI_0_bvalid(sta_dy_ddr1_BVALID),
        .C0_DDR_MAXI_0_rdata(sta_dy_ddr1_RDATA),
        .C0_DDR_MAXI_0_rlast(sta_dy_ddr1_RLAST),
        .C0_DDR_MAXI_0_rready(sta_dy_ddr1_RREADY),
        .C0_DDR_MAXI_0_rresp(sta_dy_ddr1_RRESP),
        .C0_DDR_MAXI_0_rvalid(sta_dy_ddr1_RVALID),
        .C0_DDR_MAXI_0_wdata(sta_dy_ddr1_WDATA),
        .C0_DDR_MAXI_0_wlast(sta_dy_ddr1_WLAST),
        .C0_DDR_MAXI_0_wready(sta_dy_ddr1_WREADY),
        .C0_DDR_MAXI_0_wstrb(sta_dy_ddr1_WSTRB),
        .C0_DDR_MAXI_0_wvalid(sta_dy_ddr1_WVALID),
        .clkwiz_kernel2_clk_0(static_region_clkwiz_kernel2_clk_0),
        .clkwiz_kernel2_rst_0(static_region_clkwiz_kernel2_rst_0),
        .clkwiz_kernel_clk_0(static_region_clkwiz_kernel_clk_0),
        .clkwiz_kernel_rst_0(static_region_clkwiz_kernel_rst_0),
        .data_M_AXI_0_araddr(sta_dy_data0_ARADDR),
        .data_M_AXI_0_arburst(sta_dy_data0_ARBURST),
        .data_M_AXI_0_arcache(sta_dy_data0_ARCACHE),
        .data_M_AXI_0_arid(sta_dy_data0_ARID),
        .data_M_AXI_0_arlen(sta_dy_data0_ARLEN),
        .data_M_AXI_0_arlock(sta_dy_data0_ARLOCK),
        .data_M_AXI_0_arprot(sta_dy_data0_ARPROT),
        .data_M_AXI_0_arqos(sta_dy_data0_ARQOS),
        .data_M_AXI_0_arready(sta_dy_data0_ARREADY),
        .data_M_AXI_0_arregion({1'b0,1'b0,1'b0,1'b0}),
        .data_M_AXI_0_arsize(sta_dy_data0_ARSIZE),
        .data_M_AXI_0_arvalid(sta_dy_data0_ARVALID),
        .data_M_AXI_0_awaddr(sta_dy_data0_AWADDR),
        .data_M_AXI_0_awburst(sta_dy_data0_AWBURST),
        .data_M_AXI_0_awcache(sta_dy_data0_AWCACHE),
        .data_M_AXI_0_awid(sta_dy_data0_AWID),
        .data_M_AXI_0_awlen(sta_dy_data0_AWLEN),
        .data_M_AXI_0_awlock(sta_dy_data0_AWLOCK),
        .data_M_AXI_0_awprot(sta_dy_data0_AWPROT),
        .data_M_AXI_0_awqos(sta_dy_data0_AWQOS),
        .data_M_AXI_0_awready(sta_dy_data0_AWREADY),
        .data_M_AXI_0_awregion({1'b0,1'b0,1'b0,1'b0}),
        .data_M_AXI_0_awsize(sta_dy_data0_AWSIZE),
        .data_M_AXI_0_awvalid(sta_dy_data0_AWVALID),
        .data_M_AXI_0_bid(sta_dy_data0_BID),
        .data_M_AXI_0_bready(sta_dy_data0_BREADY),
        .data_M_AXI_0_bresp(sta_dy_data0_BRESP),
        .data_M_AXI_0_bvalid(sta_dy_data0_BVALID),
        .data_M_AXI_0_rdata(sta_dy_data0_RDATA),
        .data_M_AXI_0_rid(sta_dy_data0_RID),
        .data_M_AXI_0_rlast(sta_dy_data0_RLAST),
        .data_M_AXI_0_rready(sta_dy_data0_RREADY),
        .data_M_AXI_0_rresp(sta_dy_data0_RRESP),
        .data_M_AXI_0_rvalid(sta_dy_data0_RVALID),
        .data_M_AXI_0_wdata(sta_dy_data0_WDATA),
        .data_M_AXI_0_wlast(sta_dy_data0_WLAST),
        .data_M_AXI_0_wready(sta_dy_data0_WREADY),
        .data_M_AXI_0_wstrb(sta_dy_data0_WSTRB),
        .data_M_AXI_0_wvalid(sta_dy_data0_WVALID),
        .data_M_AXI_1_araddr(sta_dy_data1_ARADDR),
        .data_M_AXI_1_arburst(sta_dy_data1_ARBURST),
        .data_M_AXI_1_arcache(sta_dy_data1_ARCACHE),
        .data_M_AXI_1_arid(1'b0),
        .data_M_AXI_1_arlen(sta_dy_data1_ARLEN),
        .data_M_AXI_1_arlock(sta_dy_data1_ARLOCK),
        .data_M_AXI_1_arprot(sta_dy_data1_ARPROT),
        .data_M_AXI_1_arqos(sta_dy_data1_ARQOS),
        .data_M_AXI_1_arready(sta_dy_data1_ARREADY),
        .data_M_AXI_1_arregion(sta_dy_data1_ARREGION),
        .data_M_AXI_1_arsize(sta_dy_data1_ARSIZE),
        .data_M_AXI_1_arvalid(sta_dy_data1_ARVALID),
        .data_M_AXI_1_awaddr(sta_dy_data1_AWADDR),
        .data_M_AXI_1_awburst(sta_dy_data1_AWBURST),
        .data_M_AXI_1_awcache(sta_dy_data1_AWCACHE),
        .data_M_AXI_1_awid(1'b0),
        .data_M_AXI_1_awlen(sta_dy_data1_AWLEN),
        .data_M_AXI_1_awlock(sta_dy_data1_AWLOCK),
        .data_M_AXI_1_awprot(sta_dy_data1_AWPROT),
        .data_M_AXI_1_awqos(sta_dy_data1_AWQOS),
        .data_M_AXI_1_awready(sta_dy_data1_AWREADY),
        .data_M_AXI_1_awregion(sta_dy_data1_AWREGION),
        .data_M_AXI_1_awsize(sta_dy_data1_AWSIZE),
        .data_M_AXI_1_awvalid(sta_dy_data1_AWVALID),
        .data_M_AXI_1_bready(sta_dy_data1_BREADY),
        .data_M_AXI_1_bresp(sta_dy_data1_BRESP),
        .data_M_AXI_1_bvalid(sta_dy_data1_BVALID),
        .data_M_AXI_1_rdata(sta_dy_data1_RDATA),
        .data_M_AXI_1_rlast(sta_dy_data1_RLAST),
        .data_M_AXI_1_rready(sta_dy_data1_RREADY),
        .data_M_AXI_1_rresp(sta_dy_data1_RRESP),
        .data_M_AXI_1_rvalid(sta_dy_data1_RVALID),
        .data_M_AXI_1_wdata(sta_dy_data1_WDATA),
        .data_M_AXI_1_wlast(sta_dy_data1_WLAST),
        .data_M_AXI_1_wready(sta_dy_data1_WREADY),
        .data_M_AXI_1_wstrb(sta_dy_data1_WSTRB),
        .data_M_AXI_1_wvalid(sta_dy_data1_WVALID),
        .data_M_AXI_2_araddr(sta_dy_data2_ARADDR),
        .data_M_AXI_2_arburst(sta_dy_data2_ARBURST),
        .data_M_AXI_2_arcache(sta_dy_data2_ARCACHE),
        .data_M_AXI_2_arid(1'b0),
        .data_M_AXI_2_arlen(sta_dy_data2_ARLEN),
        .data_M_AXI_2_arlock(sta_dy_data2_ARLOCK),
        .data_M_AXI_2_arprot(sta_dy_data2_ARPROT),
        .data_M_AXI_2_arqos(sta_dy_data2_ARQOS),
        .data_M_AXI_2_arready(sta_dy_data2_ARREADY),
        .data_M_AXI_2_arregion(sta_dy_data2_ARREGION),
        .data_M_AXI_2_arsize(sta_dy_data2_ARSIZE),
        .data_M_AXI_2_arvalid(sta_dy_data2_ARVALID),
        .data_M_AXI_2_awaddr(sta_dy_data2_AWADDR),
        .data_M_AXI_2_awburst(sta_dy_data2_AWBURST),
        .data_M_AXI_2_awcache(sta_dy_data2_AWCACHE),
        .data_M_AXI_2_awid(1'b0),
        .data_M_AXI_2_awlen(sta_dy_data2_AWLEN),
        .data_M_AXI_2_awlock(sta_dy_data2_AWLOCK),
        .data_M_AXI_2_awprot(sta_dy_data2_AWPROT),
        .data_M_AXI_2_awqos(sta_dy_data2_AWQOS),
        .data_M_AXI_2_awready(sta_dy_data2_AWREADY),
        .data_M_AXI_2_awregion(sta_dy_data2_AWREGION),
        .data_M_AXI_2_awsize(sta_dy_data2_AWSIZE),
        .data_M_AXI_2_awvalid(sta_dy_data2_AWVALID),
        .data_M_AXI_2_bready(sta_dy_data2_BREADY),
        .data_M_AXI_2_bresp(sta_dy_data2_BRESP),
        .data_M_AXI_2_bvalid(sta_dy_data2_BVALID),
        .data_M_AXI_2_rdata(sta_dy_data2_RDATA),
        .data_M_AXI_2_rlast(sta_dy_data2_RLAST),
        .data_M_AXI_2_rready(sta_dy_data2_RREADY),
        .data_M_AXI_2_rresp(sta_dy_data2_RRESP),
        .data_M_AXI_2_rvalid(sta_dy_data2_RVALID),
        .data_M_AXI_2_wdata(sta_dy_data2_WDATA),
        .data_M_AXI_2_wlast(sta_dy_data2_WLAST),
        .data_M_AXI_2_wready(sta_dy_data2_WREADY),
        .data_M_AXI_2_wstrb(sta_dy_data2_WSTRB),
        .data_M_AXI_2_wvalid(sta_dy_data2_WVALID),
        .data_M_AXI_3_araddr(sta_dy_data3_ARADDR),
        .data_M_AXI_3_arburst(sta_dy_data3_ARBURST),
        .data_M_AXI_3_arcache(sta_dy_data3_ARCACHE),
        .data_M_AXI_3_arid(1'b0),
        .data_M_AXI_3_arlen(sta_dy_data3_ARLEN),
        .data_M_AXI_3_arlock(sta_dy_data3_ARLOCK),
        .data_M_AXI_3_arprot(sta_dy_data3_ARPROT),
        .data_M_AXI_3_arqos(sta_dy_data3_ARQOS),
        .data_M_AXI_3_arready(sta_dy_data3_ARREADY),
        .data_M_AXI_3_arregion(sta_dy_data3_ARREGION),
        .data_M_AXI_3_arsize(sta_dy_data3_ARSIZE),
        .data_M_AXI_3_arvalid(sta_dy_data3_ARVALID),
        .data_M_AXI_3_awaddr(sta_dy_data3_AWADDR),
        .data_M_AXI_3_awburst(sta_dy_data3_AWBURST),
        .data_M_AXI_3_awcache(sta_dy_data3_AWCACHE),
        .data_M_AXI_3_awid(1'b0),
        .data_M_AXI_3_awlen(sta_dy_data3_AWLEN),
        .data_M_AXI_3_awlock(sta_dy_data3_AWLOCK),
        .data_M_AXI_3_awprot(sta_dy_data3_AWPROT),
        .data_M_AXI_3_awqos(sta_dy_data3_AWQOS),
        .data_M_AXI_3_awready(sta_dy_data3_AWREADY),
        .data_M_AXI_3_awregion(sta_dy_data3_AWREGION),
        .data_M_AXI_3_awsize(sta_dy_data3_AWSIZE),
        .data_M_AXI_3_awvalid(sta_dy_data3_AWVALID),
        .data_M_AXI_3_bready(sta_dy_data3_BREADY),
        .data_M_AXI_3_bresp(sta_dy_data3_BRESP),
        .data_M_AXI_3_bvalid(sta_dy_data3_BVALID),
        .data_M_AXI_3_rdata(sta_dy_data3_RDATA),
        .data_M_AXI_3_rlast(sta_dy_data3_RLAST),
        .data_M_AXI_3_rready(sta_dy_data3_RREADY),
        .data_M_AXI_3_rresp(sta_dy_data3_RRESP),
        .data_M_AXI_3_rvalid(sta_dy_data3_RVALID),
        .data_M_AXI_3_wdata(sta_dy_data3_WDATA),
        .data_M_AXI_3_wlast(sta_dy_data3_WLAST),
        .data_M_AXI_3_wready(sta_dy_data3_WREADY),
        .data_M_AXI_3_wstrb(sta_dy_data3_WSTRB),
        .data_M_AXI_3_wvalid(sta_dy_data3_WVALID),
        .data_M_AXI_4_araddr(sta_dy_data4_ARADDR),
        .data_M_AXI_4_arburst(sta_dy_data4_ARBURST),
        .data_M_AXI_4_arcache(sta_dy_data4_ARCACHE),
        .data_M_AXI_4_arid(1'b0),
        .data_M_AXI_4_arlen(sta_dy_data4_ARLEN),
        .data_M_AXI_4_arlock(sta_dy_data4_ARLOCK),
        .data_M_AXI_4_arprot(sta_dy_data4_ARPROT),
        .data_M_AXI_4_arqos(sta_dy_data4_ARQOS),
        .data_M_AXI_4_arready(sta_dy_data4_ARREADY),
        .data_M_AXI_4_arregion(sta_dy_data4_ARREGION),
        .data_M_AXI_4_arsize(sta_dy_data4_ARSIZE),
        .data_M_AXI_4_arvalid(sta_dy_data4_ARVALID),
        .data_M_AXI_4_awaddr(sta_dy_data4_AWADDR),
        .data_M_AXI_4_awburst(sta_dy_data4_AWBURST),
        .data_M_AXI_4_awcache(sta_dy_data4_AWCACHE),
        .data_M_AXI_4_awid(1'b0),
        .data_M_AXI_4_awlen(sta_dy_data4_AWLEN),
        .data_M_AXI_4_awlock(sta_dy_data4_AWLOCK),
        .data_M_AXI_4_awprot(sta_dy_data4_AWPROT),
        .data_M_AXI_4_awqos(sta_dy_data4_AWQOS),
        .data_M_AXI_4_awready(sta_dy_data4_AWREADY),
        .data_M_AXI_4_awregion(sta_dy_data4_AWREGION),
        .data_M_AXI_4_awsize(sta_dy_data4_AWSIZE),
        .data_M_AXI_4_awvalid(sta_dy_data4_AWVALID),
        .data_M_AXI_4_bready(sta_dy_data4_BREADY),
        .data_M_AXI_4_bresp(sta_dy_data4_BRESP),
        .data_M_AXI_4_bvalid(sta_dy_data4_BVALID),
        .data_M_AXI_4_rdata(sta_dy_data4_RDATA),
        .data_M_AXI_4_rlast(sta_dy_data4_RLAST),
        .data_M_AXI_4_rready(sta_dy_data4_RREADY),
        .data_M_AXI_4_rresp(sta_dy_data4_RRESP),
        .data_M_AXI_4_rvalid(sta_dy_data4_RVALID),
        .data_M_AXI_4_wdata(sta_dy_data4_WDATA),
        .data_M_AXI_4_wlast(sta_dy_data4_WLAST),
        .data_M_AXI_4_wready(sta_dy_data4_WREADY),
        .data_M_AXI_4_wstrb(sta_dy_data4_WSTRB),
        .data_M_AXI_4_wvalid(sta_dy_data4_WVALID),
        .ddr_default_clk_0(static_region_ddr_default_clk_0),
        .ddr_default_rst_0(static_region_ddr_default_rst_0),
        .dma_pcie_aclk(static_region_dma_pcie_aclk),
        .dma_pcie_arst(static_region_dma_pcie_arst),
        .irq_cu(irq_cu_conn),
        .userpf_control_M_AXI_araddr(sta_dy_ctrl0_ARADDR),
        .userpf_control_M_AXI_arprot(sta_dy_ctrl0_ARPROT),
        .userpf_control_M_AXI_arready(sta_dy_ctrl0_ARREADY),
        .userpf_control_M_AXI_arvalid(sta_dy_ctrl0_ARVALID),
        .userpf_control_M_AXI_awaddr(sta_dy_ctrl0_AWADDR),
        .userpf_control_M_AXI_awprot(sta_dy_ctrl0_AWPROT),
        .userpf_control_M_AXI_awready(sta_dy_ctrl0_AWREADY),
        .userpf_control_M_AXI_awvalid(sta_dy_ctrl0_AWVALID),
        .userpf_control_M_AXI_bready(sta_dy_ctrl0_BREADY),
        .userpf_control_M_AXI_bresp(sta_dy_ctrl0_BRESP),
        .userpf_control_M_AXI_bvalid(sta_dy_ctrl0_BVALID),
        .userpf_control_M_AXI_rdata(sta_dy_ctrl0_RDATA),
        .userpf_control_M_AXI_rready(sta_dy_ctrl0_RREADY),
        .userpf_control_M_AXI_rresp(sta_dy_ctrl0_RRESP),
        .userpf_control_M_AXI_rvalid(sta_dy_ctrl0_RVALID),
        .userpf_control_M_AXI_wdata(sta_dy_ctrl0_WDATA),
        .userpf_control_M_AXI_wready(sta_dy_ctrl0_WREADY),
        .userpf_control_M_AXI_wstrb(sta_dy_ctrl0_WSTRB),
        .userpf_control_M_AXI_wvalid(sta_dy_ctrl0_WVALID));
  emu_sci emu_sci_inst
       ();
  static_region_imp_PT295H static_region
       (.C0_DDR_SAXI_0_araddr(sta_dy_ddr1_ARADDR),
        .C0_DDR_SAXI_0_arburst(sta_dy_ddr1_ARBURST),
        .C0_DDR_SAXI_0_arlen(sta_dy_ddr1_ARLEN),
        .C0_DDR_SAXI_0_arprot(sta_dy_ddr1_ARPROT),
        .C0_DDR_SAXI_0_arready(sta_dy_ddr1_ARREADY),
        .C0_DDR_SAXI_0_arsize(sta_dy_ddr1_ARSIZE),
        .C0_DDR_SAXI_0_arvalid(sta_dy_ddr1_ARVALID),
        .C0_DDR_SAXI_0_awaddr(sta_dy_ddr1_AWADDR),
        .C0_DDR_SAXI_0_awburst(sta_dy_ddr1_AWBURST),
        .C0_DDR_SAXI_0_awlen(sta_dy_ddr1_AWLEN),
        .C0_DDR_SAXI_0_awprot(sta_dy_ddr1_AWPROT),
        .C0_DDR_SAXI_0_awready(sta_dy_ddr1_AWREADY),
        .C0_DDR_SAXI_0_awsize(sta_dy_ddr1_AWSIZE),
        .C0_DDR_SAXI_0_awvalid(sta_dy_ddr1_AWVALID),
        .C0_DDR_SAXI_0_bready(sta_dy_ddr1_BREADY),
        .C0_DDR_SAXI_0_bresp(sta_dy_ddr1_BRESP),
        .C0_DDR_SAXI_0_bvalid(sta_dy_ddr1_BVALID),
        .C0_DDR_SAXI_0_rdata(sta_dy_ddr1_RDATA),
        .C0_DDR_SAXI_0_rlast(sta_dy_ddr1_RLAST),
        .C0_DDR_SAXI_0_rready(sta_dy_ddr1_RREADY),
        .C0_DDR_SAXI_0_rresp(sta_dy_ddr1_RRESP),
        .C0_DDR_SAXI_0_rvalid(sta_dy_ddr1_RVALID),
        .C0_DDR_SAXI_0_wdata(sta_dy_ddr1_WDATA),
        .C0_DDR_SAXI_0_wlast(sta_dy_ddr1_WLAST),
        .C0_DDR_SAXI_0_wready(sta_dy_ddr1_WREADY),
        .C0_DDR_SAXI_0_wstrb(sta_dy_ddr1_WSTRB),
        .C0_DDR_SAXI_0_wvalid(sta_dy_ddr1_WVALID),
        .clkwiz_kernel2_clk_0(static_region_clkwiz_kernel2_clk_0),
        .clkwiz_kernel2_rst_0(static_region_clkwiz_kernel2_rst_0),
        .clkwiz_kernel_clk_0(static_region_clkwiz_kernel_clk_0),
        .clkwiz_kernel_rst_0(static_region_clkwiz_kernel_rst_0),
        .data_M_AXI_0_araddr(sta_dy_data0_ARADDR),
        .data_M_AXI_0_arburst(sta_dy_data0_ARBURST),
        .data_M_AXI_0_arcache(sta_dy_data0_ARCACHE),
        .data_M_AXI_0_arid(sta_dy_data0_ARID),
        .data_M_AXI_0_arlen(sta_dy_data0_ARLEN),
        .data_M_AXI_0_arlock(sta_dy_data0_ARLOCK),
        .data_M_AXI_0_arprot(sta_dy_data0_ARPROT),
        .data_M_AXI_0_arqos(sta_dy_data0_ARQOS),
        .data_M_AXI_0_arready(sta_dy_data0_ARREADY),
        .data_M_AXI_0_arsize(sta_dy_data0_ARSIZE),
        .data_M_AXI_0_arvalid(sta_dy_data0_ARVALID),
        .data_M_AXI_0_awaddr(sta_dy_data0_AWADDR),
        .data_M_AXI_0_awburst(sta_dy_data0_AWBURST),
        .data_M_AXI_0_awcache(sta_dy_data0_AWCACHE),
        .data_M_AXI_0_awid(sta_dy_data0_AWID),
        .data_M_AXI_0_awlen(sta_dy_data0_AWLEN),
        .data_M_AXI_0_awlock(sta_dy_data0_AWLOCK),
        .data_M_AXI_0_awprot(sta_dy_data0_AWPROT),
        .data_M_AXI_0_awqos(sta_dy_data0_AWQOS),
        .data_M_AXI_0_awready(sta_dy_data0_AWREADY),
        .data_M_AXI_0_awsize(sta_dy_data0_AWSIZE),
        .data_M_AXI_0_awvalid(sta_dy_data0_AWVALID),
        .data_M_AXI_0_bid(sta_dy_data0_BID),
        .data_M_AXI_0_bready(sta_dy_data0_BREADY),
        .data_M_AXI_0_bresp(sta_dy_data0_BRESP),
        .data_M_AXI_0_bvalid(sta_dy_data0_BVALID),
        .data_M_AXI_0_rdata(sta_dy_data0_RDATA),
        .data_M_AXI_0_rid(sta_dy_data0_RID),
        .data_M_AXI_0_rlast(sta_dy_data0_RLAST),
        .data_M_AXI_0_rready(sta_dy_data0_RREADY),
        .data_M_AXI_0_rresp(sta_dy_data0_RRESP),
        .data_M_AXI_0_rvalid(sta_dy_data0_RVALID),
        .data_M_AXI_0_wdata(sta_dy_data0_WDATA),
        .data_M_AXI_0_wlast(sta_dy_data0_WLAST),
        .data_M_AXI_0_wready(sta_dy_data0_WREADY),
        .data_M_AXI_0_wstrb(sta_dy_data0_WSTRB),
        .data_M_AXI_0_wvalid(sta_dy_data0_WVALID),
        .data_M_AXI_1_araddr(sta_dy_data1_ARADDR),
        .data_M_AXI_1_arburst(sta_dy_data1_ARBURST),
        .data_M_AXI_1_arcache(sta_dy_data1_ARCACHE),
        .data_M_AXI_1_arlen(sta_dy_data1_ARLEN),
        .data_M_AXI_1_arlock(sta_dy_data1_ARLOCK),
        .data_M_AXI_1_arprot(sta_dy_data1_ARPROT),
        .data_M_AXI_1_arqos(sta_dy_data1_ARQOS),
        .data_M_AXI_1_arready(sta_dy_data1_ARREADY),
        .data_M_AXI_1_arregion(sta_dy_data1_ARREGION),
        .data_M_AXI_1_arsize(sta_dy_data1_ARSIZE),
        .data_M_AXI_1_arvalid(sta_dy_data1_ARVALID),
        .data_M_AXI_1_awaddr(sta_dy_data1_AWADDR),
        .data_M_AXI_1_awburst(sta_dy_data1_AWBURST),
        .data_M_AXI_1_awcache(sta_dy_data1_AWCACHE),
        .data_M_AXI_1_awlen(sta_dy_data1_AWLEN),
        .data_M_AXI_1_awlock(sta_dy_data1_AWLOCK),
        .data_M_AXI_1_awprot(sta_dy_data1_AWPROT),
        .data_M_AXI_1_awqos(sta_dy_data1_AWQOS),
        .data_M_AXI_1_awready(sta_dy_data1_AWREADY),
        .data_M_AXI_1_awregion(sta_dy_data1_AWREGION),
        .data_M_AXI_1_awsize(sta_dy_data1_AWSIZE),
        .data_M_AXI_1_awvalid(sta_dy_data1_AWVALID),
        .data_M_AXI_1_bready(sta_dy_data1_BREADY),
        .data_M_AXI_1_bresp(sta_dy_data1_BRESP),
        .data_M_AXI_1_bvalid(sta_dy_data1_BVALID),
        .data_M_AXI_1_rdata(sta_dy_data1_RDATA),
        .data_M_AXI_1_rlast(sta_dy_data1_RLAST),
        .data_M_AXI_1_rready(sta_dy_data1_RREADY),
        .data_M_AXI_1_rresp(sta_dy_data1_RRESP),
        .data_M_AXI_1_rvalid(sta_dy_data1_RVALID),
        .data_M_AXI_1_wdata(sta_dy_data1_WDATA),
        .data_M_AXI_1_wlast(sta_dy_data1_WLAST),
        .data_M_AXI_1_wready(sta_dy_data1_WREADY),
        .data_M_AXI_1_wstrb(sta_dy_data1_WSTRB),
        .data_M_AXI_1_wvalid(sta_dy_data1_WVALID),
        .data_M_AXI_2_araddr(sta_dy_data2_ARADDR),
        .data_M_AXI_2_arburst(sta_dy_data2_ARBURST),
        .data_M_AXI_2_arcache(sta_dy_data2_ARCACHE),
        .data_M_AXI_2_arlen(sta_dy_data2_ARLEN),
        .data_M_AXI_2_arlock(sta_dy_data2_ARLOCK),
        .data_M_AXI_2_arprot(sta_dy_data2_ARPROT),
        .data_M_AXI_2_arqos(sta_dy_data2_ARQOS),
        .data_M_AXI_2_arready(sta_dy_data2_ARREADY),
        .data_M_AXI_2_arregion(sta_dy_data2_ARREGION),
        .data_M_AXI_2_arsize(sta_dy_data2_ARSIZE),
        .data_M_AXI_2_arvalid(sta_dy_data2_ARVALID),
        .data_M_AXI_2_awaddr(sta_dy_data2_AWADDR),
        .data_M_AXI_2_awburst(sta_dy_data2_AWBURST),
        .data_M_AXI_2_awcache(sta_dy_data2_AWCACHE),
        .data_M_AXI_2_awlen(sta_dy_data2_AWLEN),
        .data_M_AXI_2_awlock(sta_dy_data2_AWLOCK),
        .data_M_AXI_2_awprot(sta_dy_data2_AWPROT),
        .data_M_AXI_2_awqos(sta_dy_data2_AWQOS),
        .data_M_AXI_2_awready(sta_dy_data2_AWREADY),
        .data_M_AXI_2_awregion(sta_dy_data2_AWREGION),
        .data_M_AXI_2_awsize(sta_dy_data2_AWSIZE),
        .data_M_AXI_2_awvalid(sta_dy_data2_AWVALID),
        .data_M_AXI_2_bready(sta_dy_data2_BREADY),
        .data_M_AXI_2_bresp(sta_dy_data2_BRESP),
        .data_M_AXI_2_bvalid(sta_dy_data2_BVALID),
        .data_M_AXI_2_rdata(sta_dy_data2_RDATA),
        .data_M_AXI_2_rlast(sta_dy_data2_RLAST),
        .data_M_AXI_2_rready(sta_dy_data2_RREADY),
        .data_M_AXI_2_rresp(sta_dy_data2_RRESP),
        .data_M_AXI_2_rvalid(sta_dy_data2_RVALID),
        .data_M_AXI_2_wdata(sta_dy_data2_WDATA),
        .data_M_AXI_2_wlast(sta_dy_data2_WLAST),
        .data_M_AXI_2_wready(sta_dy_data2_WREADY),
        .data_M_AXI_2_wstrb(sta_dy_data2_WSTRB),
        .data_M_AXI_2_wvalid(sta_dy_data2_WVALID),
        .data_M_AXI_3_araddr(sta_dy_data3_ARADDR),
        .data_M_AXI_3_arburst(sta_dy_data3_ARBURST),
        .data_M_AXI_3_arcache(sta_dy_data3_ARCACHE),
        .data_M_AXI_3_arlen(sta_dy_data3_ARLEN),
        .data_M_AXI_3_arlock(sta_dy_data3_ARLOCK),
        .data_M_AXI_3_arprot(sta_dy_data3_ARPROT),
        .data_M_AXI_3_arqos(sta_dy_data3_ARQOS),
        .data_M_AXI_3_arready(sta_dy_data3_ARREADY),
        .data_M_AXI_3_arregion(sta_dy_data3_ARREGION),
        .data_M_AXI_3_arsize(sta_dy_data3_ARSIZE),
        .data_M_AXI_3_arvalid(sta_dy_data3_ARVALID),
        .data_M_AXI_3_awaddr(sta_dy_data3_AWADDR),
        .data_M_AXI_3_awburst(sta_dy_data3_AWBURST),
        .data_M_AXI_3_awcache(sta_dy_data3_AWCACHE),
        .data_M_AXI_3_awlen(sta_dy_data3_AWLEN),
        .data_M_AXI_3_awlock(sta_dy_data3_AWLOCK),
        .data_M_AXI_3_awprot(sta_dy_data3_AWPROT),
        .data_M_AXI_3_awqos(sta_dy_data3_AWQOS),
        .data_M_AXI_3_awready(sta_dy_data3_AWREADY),
        .data_M_AXI_3_awregion(sta_dy_data3_AWREGION),
        .data_M_AXI_3_awsize(sta_dy_data3_AWSIZE),
        .data_M_AXI_3_awvalid(sta_dy_data3_AWVALID),
        .data_M_AXI_3_bready(sta_dy_data3_BREADY),
        .data_M_AXI_3_bresp(sta_dy_data3_BRESP),
        .data_M_AXI_3_bvalid(sta_dy_data3_BVALID),
        .data_M_AXI_3_rdata(sta_dy_data3_RDATA),
        .data_M_AXI_3_rlast(sta_dy_data3_RLAST),
        .data_M_AXI_3_rready(sta_dy_data3_RREADY),
        .data_M_AXI_3_rresp(sta_dy_data3_RRESP),
        .data_M_AXI_3_rvalid(sta_dy_data3_RVALID),
        .data_M_AXI_3_wdata(sta_dy_data3_WDATA),
        .data_M_AXI_3_wlast(sta_dy_data3_WLAST),
        .data_M_AXI_3_wready(sta_dy_data3_WREADY),
        .data_M_AXI_3_wstrb(sta_dy_data3_WSTRB),
        .data_M_AXI_3_wvalid(sta_dy_data3_WVALID),
        .data_M_AXI_4_araddr(sta_dy_data4_ARADDR),
        .data_M_AXI_4_arburst(sta_dy_data4_ARBURST),
        .data_M_AXI_4_arcache(sta_dy_data4_ARCACHE),
        .data_M_AXI_4_arlen(sta_dy_data4_ARLEN),
        .data_M_AXI_4_arlock(sta_dy_data4_ARLOCK),
        .data_M_AXI_4_arprot(sta_dy_data4_ARPROT),
        .data_M_AXI_4_arqos(sta_dy_data4_ARQOS),
        .data_M_AXI_4_arready(sta_dy_data4_ARREADY),
        .data_M_AXI_4_arregion(sta_dy_data4_ARREGION),
        .data_M_AXI_4_arsize(sta_dy_data4_ARSIZE),
        .data_M_AXI_4_arvalid(sta_dy_data4_ARVALID),
        .data_M_AXI_4_awaddr(sta_dy_data4_AWADDR),
        .data_M_AXI_4_awburst(sta_dy_data4_AWBURST),
        .data_M_AXI_4_awcache(sta_dy_data4_AWCACHE),
        .data_M_AXI_4_awlen(sta_dy_data4_AWLEN),
        .data_M_AXI_4_awlock(sta_dy_data4_AWLOCK),
        .data_M_AXI_4_awprot(sta_dy_data4_AWPROT),
        .data_M_AXI_4_awqos(sta_dy_data4_AWQOS),
        .data_M_AXI_4_awready(sta_dy_data4_AWREADY),
        .data_M_AXI_4_awregion(sta_dy_data4_AWREGION),
        .data_M_AXI_4_awsize(sta_dy_data4_AWSIZE),
        .data_M_AXI_4_awvalid(sta_dy_data4_AWVALID),
        .data_M_AXI_4_bready(sta_dy_data4_BREADY),
        .data_M_AXI_4_bresp(sta_dy_data4_BRESP),
        .data_M_AXI_4_bvalid(sta_dy_data4_BVALID),
        .data_M_AXI_4_rdata(sta_dy_data4_RDATA),
        .data_M_AXI_4_rlast(sta_dy_data4_RLAST),
        .data_M_AXI_4_rready(sta_dy_data4_RREADY),
        .data_M_AXI_4_rresp(sta_dy_data4_RRESP),
        .data_M_AXI_4_rvalid(sta_dy_data4_RVALID),
        .data_M_AXI_4_wdata(sta_dy_data4_WDATA),
        .data_M_AXI_4_wlast(sta_dy_data4_WLAST),
        .data_M_AXI_4_wready(sta_dy_data4_WREADY),
        .data_M_AXI_4_wstrb(sta_dy_data4_WSTRB),
        .data_M_AXI_4_wvalid(sta_dy_data4_WVALID),
        .ddr_default_clk_0(static_region_ddr_default_clk_0),
        .ddr_default_rst_0(static_region_ddr_default_rst_0),
        .dma_pcie_aclk(static_region_dma_pcie_aclk),
        .dma_pcie_arst(static_region_dma_pcie_arst),
        .irq_cu(irq_cu_conn),
        .userpf_control_M_AXI_araddr(sta_dy_ctrl0_ARADDR),
        .userpf_control_M_AXI_arprot(sta_dy_ctrl0_ARPROT),
        .userpf_control_M_AXI_arready(sta_dy_ctrl0_ARREADY),
        .userpf_control_M_AXI_arvalid(sta_dy_ctrl0_ARVALID),
        .userpf_control_M_AXI_awaddr(sta_dy_ctrl0_AWADDR),
        .userpf_control_M_AXI_awprot(sta_dy_ctrl0_AWPROT),
        .userpf_control_M_AXI_awready(sta_dy_ctrl0_AWREADY),
        .userpf_control_M_AXI_awvalid(sta_dy_ctrl0_AWVALID),
        .userpf_control_M_AXI_bready(sta_dy_ctrl0_BREADY),
        .userpf_control_M_AXI_bresp(sta_dy_ctrl0_BRESP),
        .userpf_control_M_AXI_bvalid(sta_dy_ctrl0_BVALID),
        .userpf_control_M_AXI_rdata(sta_dy_ctrl0_RDATA),
        .userpf_control_M_AXI_rready(sta_dy_ctrl0_RREADY),
        .userpf_control_M_AXI_rresp(sta_dy_ctrl0_RRESP),
        .userpf_control_M_AXI_rvalid(sta_dy_ctrl0_RVALID),
        .userpf_control_M_AXI_wdata(sta_dy_ctrl0_WDATA),
        .userpf_control_M_AXI_wready(sta_dy_ctrl0_WREADY),
        .userpf_control_M_AXI_wstrb(sta_dy_ctrl0_WSTRB),
        .userpf_control_M_AXI_wvalid(sta_dy_ctrl0_WVALID));
endmodule

module emu_connect_to_es_0
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
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
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
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [1:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [1:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [31:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [31:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire [31:0]S01_AXI_1_ARADDR;
  wire [1:0]S01_AXI_1_ARBURST;
  wire [3:0]S01_AXI_1_ARCACHE;
  wire [7:0]S01_AXI_1_ARLEN;
  wire [1:0]S01_AXI_1_ARLOCK;
  wire [2:0]S01_AXI_1_ARPROT;
  wire [3:0]S01_AXI_1_ARQOS;
  wire S01_AXI_1_ARREADY;
  wire [2:0]S01_AXI_1_ARSIZE;
  wire S01_AXI_1_ARVALID;
  wire [31:0]S01_AXI_1_AWADDR;
  wire [1:0]S01_AXI_1_AWBURST;
  wire [3:0]S01_AXI_1_AWCACHE;
  wire [7:0]S01_AXI_1_AWLEN;
  wire [1:0]S01_AXI_1_AWLOCK;
  wire [2:0]S01_AXI_1_AWPROT;
  wire [3:0]S01_AXI_1_AWQOS;
  wire S01_AXI_1_AWREADY;
  wire [2:0]S01_AXI_1_AWSIZE;
  wire S01_AXI_1_AWVALID;
  wire S01_AXI_1_BREADY;
  wire [1:0]S01_AXI_1_BRESP;
  wire S01_AXI_1_BVALID;
  wire [31:0]S01_AXI_1_RDATA;
  wire S01_AXI_1_RLAST;
  wire S01_AXI_1_RREADY;
  wire [1:0]S01_AXI_1_RRESP;
  wire S01_AXI_1_RVALID;
  wire [31:0]S01_AXI_1_WDATA;
  wire S01_AXI_1_WLAST;
  wire S01_AXI_1_WREADY;
  wire [3:0]S01_AXI_1_WSTRB;
  wire S01_AXI_1_WVALID;
  wire connect_to_es_ACLK_net;
  wire connect_to_es_ARESETN_net;
  wire [63:0]connect_to_es_to_s00_couplers_ARADDR;
  wire [2:0]connect_to_es_to_s00_couplers_ARPROT;
  wire [0:0]connect_to_es_to_s00_couplers_ARREADY;
  wire [0:0]connect_to_es_to_s00_couplers_ARVALID;
  wire [63:0]connect_to_es_to_s00_couplers_AWADDR;
  wire [2:0]connect_to_es_to_s00_couplers_AWPROT;
  wire [0:0]connect_to_es_to_s00_couplers_AWREADY;
  wire [0:0]connect_to_es_to_s00_couplers_AWVALID;
  wire [0:0]connect_to_es_to_s00_couplers_BREADY;
  wire [1:0]connect_to_es_to_s00_couplers_BRESP;
  wire [0:0]connect_to_es_to_s00_couplers_BVALID;
  wire [31:0]connect_to_es_to_s00_couplers_RDATA;
  wire [0:0]connect_to_es_to_s00_couplers_RREADY;
  wire [1:0]connect_to_es_to_s00_couplers_RRESP;
  wire [0:0]connect_to_es_to_s00_couplers_RVALID;
  wire [31:0]connect_to_es_to_s00_couplers_WDATA;
  wire [0:0]connect_to_es_to_s00_couplers_WREADY;
  wire [3:0]connect_to_es_to_s00_couplers_WSTRB;
  wire [0:0]connect_to_es_to_s00_couplers_WVALID;
  wire [63:0]m00_couplers_to_connect_to_es_ARADDR;
  wire [2:0]m00_couplers_to_connect_to_es_ARPROT;
  wire [0:0]m00_couplers_to_connect_to_es_ARREADY;
  wire [0:0]m00_couplers_to_connect_to_es_ARVALID;
  wire [63:0]m00_couplers_to_connect_to_es_AWADDR;
  wire [2:0]m00_couplers_to_connect_to_es_AWPROT;
  wire [0:0]m00_couplers_to_connect_to_es_AWREADY;
  wire [0:0]m00_couplers_to_connect_to_es_AWVALID;
  wire [0:0]m00_couplers_to_connect_to_es_BREADY;
  wire [1:0]m00_couplers_to_connect_to_es_BRESP;
  wire [0:0]m00_couplers_to_connect_to_es_BVALID;
  wire [31:0]m00_couplers_to_connect_to_es_RDATA;
  wire [0:0]m00_couplers_to_connect_to_es_RREADY;
  wire [1:0]m00_couplers_to_connect_to_es_RRESP;
  wire [0:0]m00_couplers_to_connect_to_es_RVALID;
  wire [31:0]m00_couplers_to_connect_to_es_WDATA;
  wire [0:0]m00_couplers_to_connect_to_es_WREADY;
  wire [3:0]m00_couplers_to_connect_to_es_WSTRB;
  wire [0:0]m00_couplers_to_connect_to_es_WVALID;
  wire [63:0]m01_couplers_to_connect_to_es_ARADDR;
  wire [2:0]m01_couplers_to_connect_to_es_ARPROT;
  wire [0:0]m01_couplers_to_connect_to_es_ARREADY;
  wire [0:0]m01_couplers_to_connect_to_es_ARVALID;
  wire [63:0]m01_couplers_to_connect_to_es_AWADDR;
  wire [2:0]m01_couplers_to_connect_to_es_AWPROT;
  wire [0:0]m01_couplers_to_connect_to_es_AWREADY;
  wire [0:0]m01_couplers_to_connect_to_es_AWVALID;
  wire [0:0]m01_couplers_to_connect_to_es_BREADY;
  wire [1:0]m01_couplers_to_connect_to_es_BRESP;
  wire [0:0]m01_couplers_to_connect_to_es_BVALID;
  wire [31:0]m01_couplers_to_connect_to_es_RDATA;
  wire [0:0]m01_couplers_to_connect_to_es_RREADY;
  wire [1:0]m01_couplers_to_connect_to_es_RRESP;
  wire [0:0]m01_couplers_to_connect_to_es_RVALID;
  wire [31:0]m01_couplers_to_connect_to_es_WDATA;
  wire [0:0]m01_couplers_to_connect_to_es_WREADY;
  wire [3:0]m01_couplers_to_connect_to_es_WSTRB;
  wire [0:0]m01_couplers_to_connect_to_es_WVALID;
  wire [63:0]m02_couplers_to_connect_to_es_ARADDR;
  wire [0:0]m02_couplers_to_connect_to_es_ARREADY;
  wire [0:0]m02_couplers_to_connect_to_es_ARVALID;
  wire [63:0]m02_couplers_to_connect_to_es_AWADDR;
  wire [0:0]m02_couplers_to_connect_to_es_AWREADY;
  wire [0:0]m02_couplers_to_connect_to_es_AWVALID;
  wire [0:0]m02_couplers_to_connect_to_es_BREADY;
  wire [1:0]m02_couplers_to_connect_to_es_BRESP;
  wire [0:0]m02_couplers_to_connect_to_es_BVALID;
  wire [31:0]m02_couplers_to_connect_to_es_RDATA;
  wire [0:0]m02_couplers_to_connect_to_es_RREADY;
  wire [1:0]m02_couplers_to_connect_to_es_RRESP;
  wire [0:0]m02_couplers_to_connect_to_es_RVALID;
  wire [31:0]m02_couplers_to_connect_to_es_WDATA;
  wire [0:0]m02_couplers_to_connect_to_es_WREADY;
  wire [3:0]m02_couplers_to_connect_to_es_WSTRB;
  wire [0:0]m02_couplers_to_connect_to_es_WVALID;
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
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:32]s01_couplers_to_xbar_RDATA;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_WDATA;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [3:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]s01_mmu_M_AXI_ARADDR;
  wire [1:0]s01_mmu_M_AXI_ARBURST;
  wire [3:0]s01_mmu_M_AXI_ARCACHE;
  wire [7:0]s01_mmu_M_AXI_ARLEN;
  wire [0:0]s01_mmu_M_AXI_ARLOCK;
  wire [2:0]s01_mmu_M_AXI_ARPROT;
  wire [3:0]s01_mmu_M_AXI_ARQOS;
  wire s01_mmu_M_AXI_ARREADY;
  wire [2:0]s01_mmu_M_AXI_ARSIZE;
  wire s01_mmu_M_AXI_ARVALID;
  wire [31:0]s01_mmu_M_AXI_AWADDR;
  wire [1:0]s01_mmu_M_AXI_AWBURST;
  wire [3:0]s01_mmu_M_AXI_AWCACHE;
  wire [7:0]s01_mmu_M_AXI_AWLEN;
  wire [0:0]s01_mmu_M_AXI_AWLOCK;
  wire [2:0]s01_mmu_M_AXI_AWPROT;
  wire [3:0]s01_mmu_M_AXI_AWQOS;
  wire s01_mmu_M_AXI_AWREADY;
  wire [2:0]s01_mmu_M_AXI_AWSIZE;
  wire s01_mmu_M_AXI_AWVALID;
  wire s01_mmu_M_AXI_BREADY;
  wire [1:0]s01_mmu_M_AXI_BRESP;
  wire s01_mmu_M_AXI_BVALID;
  wire [31:0]s01_mmu_M_AXI_RDATA;
  wire s01_mmu_M_AXI_RLAST;
  wire s01_mmu_M_AXI_RREADY;
  wire [1:0]s01_mmu_M_AXI_RRESP;
  wire s01_mmu_M_AXI_RVALID;
  wire [31:0]s01_mmu_M_AXI_WDATA;
  wire s01_mmu_M_AXI_WLAST;
  wire s01_mmu_M_AXI_WREADY;
  wire [3:0]s01_mmu_M_AXI_WSTRB;
  wire s01_mmu_M_AXI_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
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

  assign M00_AXI_araddr[63:0] = m00_couplers_to_connect_to_es_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_connect_to_es_ARPROT;
  assign M00_AXI_arvalid[0] = m00_couplers_to_connect_to_es_ARVALID;
  assign M00_AXI_awaddr[63:0] = m00_couplers_to_connect_to_es_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_connect_to_es_AWPROT;
  assign M00_AXI_awvalid[0] = m00_couplers_to_connect_to_es_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_connect_to_es_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_connect_to_es_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_connect_to_es_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_connect_to_es_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_connect_to_es_WVALID;
  assign M01_AXI_araddr[63:0] = m01_couplers_to_connect_to_es_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_connect_to_es_ARPROT;
  assign M01_AXI_arvalid[0] = m01_couplers_to_connect_to_es_ARVALID;
  assign M01_AXI_awaddr[63:0] = m01_couplers_to_connect_to_es_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_connect_to_es_AWPROT;
  assign M01_AXI_awvalid[0] = m01_couplers_to_connect_to_es_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_connect_to_es_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_connect_to_es_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_connect_to_es_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_connect_to_es_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_connect_to_es_WVALID;
  assign M02_AXI_araddr[63:0] = m02_couplers_to_connect_to_es_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_connect_to_es_ARVALID;
  assign M02_AXI_awaddr[63:0] = m02_couplers_to_connect_to_es_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_connect_to_es_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_connect_to_es_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_connect_to_es_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_connect_to_es_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_connect_to_es_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_connect_to_es_WVALID;
  assign S00_AXI_arready[0] = connect_to_es_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = connect_to_es_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = connect_to_es_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = connect_to_es_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = connect_to_es_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = connect_to_es_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = connect_to_es_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = connect_to_es_to_s00_couplers_WREADY;
  assign S01_AXI_1_ARADDR = S01_AXI_araddr[31:0];
  assign S01_AXI_1_ARBURST = S01_AXI_arburst[1:0];
  assign S01_AXI_1_ARCACHE = S01_AXI_arcache[3:0];
  assign S01_AXI_1_ARLEN = S01_AXI_arlen[7:0];
  assign S01_AXI_1_ARLOCK = S01_AXI_arlock[1:0];
  assign S01_AXI_1_ARPROT = S01_AXI_arprot[2:0];
  assign S01_AXI_1_ARQOS = S01_AXI_arqos[3:0];
  assign S01_AXI_1_ARSIZE = S01_AXI_arsize[2:0];
  assign S01_AXI_1_ARVALID = S01_AXI_arvalid;
  assign S01_AXI_1_AWADDR = S01_AXI_awaddr[31:0];
  assign S01_AXI_1_AWBURST = S01_AXI_awburst[1:0];
  assign S01_AXI_1_AWCACHE = S01_AXI_awcache[3:0];
  assign S01_AXI_1_AWLEN = S01_AXI_awlen[7:0];
  assign S01_AXI_1_AWLOCK = S01_AXI_awlock[1:0];
  assign S01_AXI_1_AWPROT = S01_AXI_awprot[2:0];
  assign S01_AXI_1_AWQOS = S01_AXI_awqos[3:0];
  assign S01_AXI_1_AWSIZE = S01_AXI_awsize[2:0];
  assign S01_AXI_1_AWVALID = S01_AXI_awvalid;
  assign S01_AXI_1_BREADY = S01_AXI_bready;
  assign S01_AXI_1_RREADY = S01_AXI_rready;
  assign S01_AXI_1_WDATA = S01_AXI_wdata[31:0];
  assign S01_AXI_1_WLAST = S01_AXI_wlast;
  assign S01_AXI_1_WSTRB = S01_AXI_wstrb[3:0];
  assign S01_AXI_1_WVALID = S01_AXI_wvalid;
  assign S01_AXI_arready = S01_AXI_1_ARREADY;
  assign S01_AXI_awready = S01_AXI_1_AWREADY;
  assign S01_AXI_bresp[1:0] = S01_AXI_1_BRESP;
  assign S01_AXI_bvalid = S01_AXI_1_BVALID;
  assign S01_AXI_rdata[31:0] = S01_AXI_1_RDATA;
  assign S01_AXI_rlast = S01_AXI_1_RLAST;
  assign S01_AXI_rresp[1:0] = S01_AXI_1_RRESP;
  assign S01_AXI_rvalid = S01_AXI_1_RVALID;
  assign S01_AXI_wready = S01_AXI_1_WREADY;
  assign connect_to_es_ACLK_net = ACLK;
  assign connect_to_es_ARESETN_net = ARESETN;
  assign connect_to_es_to_s00_couplers_ARADDR = S00_AXI_araddr[63:0];
  assign connect_to_es_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign connect_to_es_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign connect_to_es_to_s00_couplers_AWADDR = S00_AXI_awaddr[63:0];
  assign connect_to_es_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign connect_to_es_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign connect_to_es_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign connect_to_es_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign connect_to_es_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign connect_to_es_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign connect_to_es_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_connect_to_es_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_connect_to_es_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_connect_to_es_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_connect_to_es_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_connect_to_es_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_connect_to_es_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_connect_to_es_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_connect_to_es_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_connect_to_es_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_connect_to_es_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_connect_to_es_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_connect_to_es_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_connect_to_es_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_connect_to_es_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_connect_to_es_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_connect_to_es_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_connect_to_es_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_connect_to_es_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_connect_to_es_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_connect_to_es_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_connect_to_es_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_connect_to_es_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_connect_to_es_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_connect_to_es_WREADY = M02_AXI_wready[0];
  m00_couplers_imp_THO9J8 m00_couplers
       (.M_ACLK(connect_to_es_ACLK_net),
        .M_ARESETN(connect_to_es_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_connect_to_es_ARADDR),
        .M_AXI_arprot(m00_couplers_to_connect_to_es_ARPROT),
        .M_AXI_arready(m00_couplers_to_connect_to_es_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_connect_to_es_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_connect_to_es_AWADDR),
        .M_AXI_awprot(m00_couplers_to_connect_to_es_AWPROT),
        .M_AXI_awready(m00_couplers_to_connect_to_es_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_connect_to_es_AWVALID),
        .M_AXI_bready(m00_couplers_to_connect_to_es_BREADY),
        .M_AXI_bresp(m00_couplers_to_connect_to_es_BRESP),
        .M_AXI_bvalid(m00_couplers_to_connect_to_es_BVALID),
        .M_AXI_rdata(m00_couplers_to_connect_to_es_RDATA),
        .M_AXI_rready(m00_couplers_to_connect_to_es_RREADY),
        .M_AXI_rresp(m00_couplers_to_connect_to_es_RRESP),
        .M_AXI_rvalid(m00_couplers_to_connect_to_es_RVALID),
        .M_AXI_wdata(m00_couplers_to_connect_to_es_WDATA),
        .M_AXI_wready(m00_couplers_to_connect_to_es_WREADY),
        .M_AXI_wstrb(m00_couplers_to_connect_to_es_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_connect_to_es_WVALID),
        .S_ACLK(connect_to_es_ACLK_net),
        .S_ARESETN(connect_to_es_ARESETN_net),
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
  m01_couplers_imp_1F0NE0X m01_couplers
       (.M_ACLK(connect_to_es_ACLK_net),
        .M_ARESETN(connect_to_es_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_connect_to_es_ARADDR),
        .M_AXI_arprot(m01_couplers_to_connect_to_es_ARPROT),
        .M_AXI_arready(m01_couplers_to_connect_to_es_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_connect_to_es_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_connect_to_es_AWADDR),
        .M_AXI_awprot(m01_couplers_to_connect_to_es_AWPROT),
        .M_AXI_awready(m01_couplers_to_connect_to_es_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_connect_to_es_AWVALID),
        .M_AXI_bready(m01_couplers_to_connect_to_es_BREADY),
        .M_AXI_bresp(m01_couplers_to_connect_to_es_BRESP),
        .M_AXI_bvalid(m01_couplers_to_connect_to_es_BVALID),
        .M_AXI_rdata(m01_couplers_to_connect_to_es_RDATA),
        .M_AXI_rready(m01_couplers_to_connect_to_es_RREADY),
        .M_AXI_rresp(m01_couplers_to_connect_to_es_RRESP),
        .M_AXI_rvalid(m01_couplers_to_connect_to_es_RVALID),
        .M_AXI_wdata(m01_couplers_to_connect_to_es_WDATA),
        .M_AXI_wready(m01_couplers_to_connect_to_es_WREADY),
        .M_AXI_wstrb(m01_couplers_to_connect_to_es_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_connect_to_es_WVALID),
        .S_ACLK(connect_to_es_ACLK_net),
        .S_ARESETN(connect_to_es_ARESETN_net),
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
  m02_couplers_imp_2SPS0F m02_couplers
       (.M_ACLK(connect_to_es_ACLK_net),
        .M_ARESETN(connect_to_es_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_connect_to_es_ARADDR),
        .M_AXI_arready(m02_couplers_to_connect_to_es_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_connect_to_es_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_connect_to_es_AWADDR),
        .M_AXI_awready(m02_couplers_to_connect_to_es_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_connect_to_es_AWVALID),
        .M_AXI_bready(m02_couplers_to_connect_to_es_BREADY),
        .M_AXI_bresp(m02_couplers_to_connect_to_es_BRESP),
        .M_AXI_bvalid(m02_couplers_to_connect_to_es_BVALID),
        .M_AXI_rdata(m02_couplers_to_connect_to_es_RDATA),
        .M_AXI_rready(m02_couplers_to_connect_to_es_RREADY),
        .M_AXI_rresp(m02_couplers_to_connect_to_es_RRESP),
        .M_AXI_rvalid(m02_couplers_to_connect_to_es_RVALID),
        .M_AXI_wdata(m02_couplers_to_connect_to_es_WDATA),
        .M_AXI_wready(m02_couplers_to_connect_to_es_WREADY),
        .M_AXI_wstrb(m02_couplers_to_connect_to_es_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_connect_to_es_WVALID),
        .S_ACLK(connect_to_es_ACLK_net),
        .S_ARESETN(connect_to_es_ARESETN_net),
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
  s00_couplers_imp_1I78I2M s00_couplers
       (.M_ACLK(connect_to_es_ACLK_net),
        .M_ARESETN(connect_to_es_ARESETN_net),
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
        .S_ACLK(connect_to_es_ACLK_net),
        .S_ARESETN(connect_to_es_ARESETN_net),
        .S_AXI_araddr(connect_to_es_to_s00_couplers_ARADDR),
        .S_AXI_arprot(connect_to_es_to_s00_couplers_ARPROT),
        .S_AXI_arready(connect_to_es_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(connect_to_es_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(connect_to_es_to_s00_couplers_AWADDR),
        .S_AXI_awprot(connect_to_es_to_s00_couplers_AWPROT),
        .S_AXI_awready(connect_to_es_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(connect_to_es_to_s00_couplers_AWVALID),
        .S_AXI_bready(connect_to_es_to_s00_couplers_BREADY),
        .S_AXI_bresp(connect_to_es_to_s00_couplers_BRESP),
        .S_AXI_bvalid(connect_to_es_to_s00_couplers_BVALID),
        .S_AXI_rdata(connect_to_es_to_s00_couplers_RDATA),
        .S_AXI_rready(connect_to_es_to_s00_couplers_RREADY),
        .S_AXI_rresp(connect_to_es_to_s00_couplers_RRESP),
        .S_AXI_rvalid(connect_to_es_to_s00_couplers_RVALID),
        .S_AXI_wdata(connect_to_es_to_s00_couplers_WDATA),
        .S_AXI_wready(connect_to_es_to_s00_couplers_WREADY),
        .S_AXI_wstrb(connect_to_es_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(connect_to_es_to_s00_couplers_WVALID));
  s01_couplers_imp_8JQCQJ s01_couplers
       (.M_ACLK(connect_to_es_ACLK_net),
        .M_ARESETN(connect_to_es_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(connect_to_es_ACLK_net),
        .S_ARESETN(connect_to_es_ARESETN_net),
        .S_AXI_araddr(s01_mmu_M_AXI_ARADDR),
        .S_AXI_arburst(s01_mmu_M_AXI_ARBURST),
        .S_AXI_arcache(s01_mmu_M_AXI_ARCACHE),
        .S_AXI_arlen(s01_mmu_M_AXI_ARLEN),
        .S_AXI_arlock(s01_mmu_M_AXI_ARLOCK),
        .S_AXI_arprot(s01_mmu_M_AXI_ARPROT),
        .S_AXI_arqos(s01_mmu_M_AXI_ARQOS),
        .S_AXI_arready(s01_mmu_M_AXI_ARREADY),
        .S_AXI_arsize(s01_mmu_M_AXI_ARSIZE),
        .S_AXI_arvalid(s01_mmu_M_AXI_ARVALID),
        .S_AXI_awaddr(s01_mmu_M_AXI_AWADDR),
        .S_AXI_awburst(s01_mmu_M_AXI_AWBURST),
        .S_AXI_awcache(s01_mmu_M_AXI_AWCACHE),
        .S_AXI_awlen(s01_mmu_M_AXI_AWLEN),
        .S_AXI_awlock(s01_mmu_M_AXI_AWLOCK),
        .S_AXI_awprot(s01_mmu_M_AXI_AWPROT),
        .S_AXI_awqos(s01_mmu_M_AXI_AWQOS),
        .S_AXI_awready(s01_mmu_M_AXI_AWREADY),
        .S_AXI_awsize(s01_mmu_M_AXI_AWSIZE),
        .S_AXI_awvalid(s01_mmu_M_AXI_AWVALID),
        .S_AXI_bready(s01_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s01_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s01_mmu_M_AXI_BVALID),
        .S_AXI_rdata(s01_mmu_M_AXI_RDATA),
        .S_AXI_rlast(s01_mmu_M_AXI_RLAST),
        .S_AXI_rready(s01_mmu_M_AXI_RREADY),
        .S_AXI_rresp(s01_mmu_M_AXI_RRESP),
        .S_AXI_rvalid(s01_mmu_M_AXI_RVALID),
        .S_AXI_wdata(s01_mmu_M_AXI_WDATA),
        .S_AXI_wlast(s01_mmu_M_AXI_WLAST),
        .S_AXI_wready(s01_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s01_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s01_mmu_M_AXI_WVALID));
  emu_s01_mmu_0 s01_mmu
       (.aclk(connect_to_es_ACLK_net),
        .aresetn(connect_to_es_ARESETN_net),
        .m_axi_araddr(s01_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s01_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s01_mmu_M_AXI_ARCACHE),
        .m_axi_arlen(s01_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s01_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s01_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s01_mmu_M_AXI_ARQOS),
        .m_axi_arready(s01_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s01_mmu_M_AXI_ARSIZE),
        .m_axi_arvalid(s01_mmu_M_AXI_ARVALID),
        .m_axi_awaddr(s01_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s01_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s01_mmu_M_AXI_AWCACHE),
        .m_axi_awlen(s01_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s01_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s01_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s01_mmu_M_AXI_AWQOS),
        .m_axi_awready(s01_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s01_mmu_M_AXI_AWSIZE),
        .m_axi_awvalid(s01_mmu_M_AXI_AWVALID),
        .m_axi_bready(s01_mmu_M_AXI_BREADY),
        .m_axi_bresp(s01_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s01_mmu_M_AXI_BVALID),
        .m_axi_rdata(s01_mmu_M_AXI_RDATA),
        .m_axi_rlast(s01_mmu_M_AXI_RLAST),
        .m_axi_rready(s01_mmu_M_AXI_RREADY),
        .m_axi_rresp(s01_mmu_M_AXI_RRESP),
        .m_axi_rvalid(s01_mmu_M_AXI_RVALID),
        .m_axi_wdata(s01_mmu_M_AXI_WDATA),
        .m_axi_wlast(s01_mmu_M_AXI_WLAST),
        .m_axi_wready(s01_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s01_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s01_mmu_M_AXI_WVALID),
        .s_axi_araddr(S01_AXI_1_ARADDR),
        .s_axi_arburst(S01_AXI_1_ARBURST),
        .s_axi_arcache(S01_AXI_1_ARCACHE),
        .s_axi_arlen(S01_AXI_1_ARLEN),
        .s_axi_arlock(S01_AXI_1_ARLOCK[0]),
        .s_axi_arprot(S01_AXI_1_ARPROT),
        .s_axi_arqos(S01_AXI_1_ARQOS),
        .s_axi_arready(S01_AXI_1_ARREADY),
        .s_axi_arsize(S01_AXI_1_ARSIZE),
        .s_axi_arvalid(S01_AXI_1_ARVALID),
        .s_axi_awaddr(S01_AXI_1_AWADDR),
        .s_axi_awburst(S01_AXI_1_AWBURST),
        .s_axi_awcache(S01_AXI_1_AWCACHE),
        .s_axi_awlen(S01_AXI_1_AWLEN),
        .s_axi_awlock(S01_AXI_1_AWLOCK[0]),
        .s_axi_awprot(S01_AXI_1_AWPROT),
        .s_axi_awqos(S01_AXI_1_AWQOS),
        .s_axi_awready(S01_AXI_1_AWREADY),
        .s_axi_awsize(S01_AXI_1_AWSIZE),
        .s_axi_awvalid(S01_AXI_1_AWVALID),
        .s_axi_bready(S01_AXI_1_BREADY),
        .s_axi_bresp(S01_AXI_1_BRESP),
        .s_axi_bvalid(S01_AXI_1_BVALID),
        .s_axi_rdata(S01_AXI_1_RDATA),
        .s_axi_rlast(S01_AXI_1_RLAST),
        .s_axi_rready(S01_AXI_1_RREADY),
        .s_axi_rresp(S01_AXI_1_RRESP),
        .s_axi_rvalid(S01_AXI_1_RVALID),
        .s_axi_wdata(S01_AXI_1_WDATA),
        .s_axi_wlast(S01_AXI_1_WLAST),
        .s_axi_wready(S01_AXI_1_WREADY),
        .s_axi_wstrb(S01_AXI_1_WSTRB),
        .s_axi_wvalid(S01_AXI_1_WVALID));
  emu_xbar_2 xbar
       (.aclk(connect_to_es_ACLK_net),
        .aresetn(connect_to_es_ARESETN_net),
        .m_axi_araddr({xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
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
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module emu_connect_to_es_cu_0
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
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
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
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_ACLK,
    S02_ARESETN,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    S03_ACLK,
    S03_ARESETN,
    S03_AXI_araddr,
    S03_AXI_arprot,
    S03_AXI_arready,
    S03_AXI_arvalid,
    S03_AXI_awaddr,
    S03_AXI_awprot,
    S03_AXI_awready,
    S03_AXI_awvalid,
    S03_AXI_bready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_rdata,
    S03_AXI_rready,
    S03_AXI_rresp,
    S03_AXI_rvalid,
    S03_AXI_wdata,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [63:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
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
  input M03_ACLK;
  input M03_ARESETN;
  output [63:0]M03_AXI_araddr;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [63:0]M03_AXI_awaddr;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [63:0]M04_AXI_araddr;
  input [0:0]M04_AXI_arready;
  output [0:0]M04_AXI_arvalid;
  output [63:0]M04_AXI_awaddr;
  input [0:0]M04_AXI_awready;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input [0:0]M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [63:0]M05_AXI_araddr;
  input [0:0]M05_AXI_arready;
  output [0:0]M05_AXI_arvalid;
  output [63:0]M05_AXI_awaddr;
  input [0:0]M05_AXI_awready;
  output [0:0]M05_AXI_awvalid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input [0:0]M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
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
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [1:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [1:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [31:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [31:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;
  input S02_ACLK;
  input S02_ARESETN;
  input [31:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [7:0]S02_AXI_arlen;
  input [1:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output S02_AXI_arready;
  input [2:0]S02_AXI_arsize;
  input S02_AXI_arvalid;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [7:0]S02_AXI_awlen;
  input [1:0]S02_AXI_awlock;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  output S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input S02_AXI_awvalid;
  input S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output [31:0]S02_AXI_rdata;
  output S02_AXI_rlast;
  input S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rvalid;
  input [31:0]S02_AXI_wdata;
  input S02_AXI_wlast;
  output S02_AXI_wready;
  input [3:0]S02_AXI_wstrb;
  input S02_AXI_wvalid;
  input S03_ACLK;
  input S03_ARESETN;
  input [63:0]S03_AXI_araddr;
  input [2:0]S03_AXI_arprot;
  output S03_AXI_arready;
  input S03_AXI_arvalid;
  input [63:0]S03_AXI_awaddr;
  input [2:0]S03_AXI_awprot;
  output S03_AXI_awready;
  input S03_AXI_awvalid;
  input S03_AXI_bready;
  output [1:0]S03_AXI_bresp;
  output S03_AXI_bvalid;
  output [31:0]S03_AXI_rdata;
  input S03_AXI_rready;
  output [1:0]S03_AXI_rresp;
  output S03_AXI_rvalid;
  input [31:0]S03_AXI_wdata;
  output S03_AXI_wready;
  input [3:0]S03_AXI_wstrb;
  input S03_AXI_wvalid;

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
  wire [31:0]S01_AXI_1_ARADDR;
  wire [1:0]S01_AXI_1_ARBURST;
  wire [3:0]S01_AXI_1_ARCACHE;
  wire [7:0]S01_AXI_1_ARLEN;
  wire [1:0]S01_AXI_1_ARLOCK;
  wire [2:0]S01_AXI_1_ARPROT;
  wire [3:0]S01_AXI_1_ARQOS;
  wire S01_AXI_1_ARREADY;
  wire [2:0]S01_AXI_1_ARSIZE;
  wire S01_AXI_1_ARVALID;
  wire [31:0]S01_AXI_1_AWADDR;
  wire [1:0]S01_AXI_1_AWBURST;
  wire [3:0]S01_AXI_1_AWCACHE;
  wire [7:0]S01_AXI_1_AWLEN;
  wire [1:0]S01_AXI_1_AWLOCK;
  wire [2:0]S01_AXI_1_AWPROT;
  wire [3:0]S01_AXI_1_AWQOS;
  wire S01_AXI_1_AWREADY;
  wire [2:0]S01_AXI_1_AWSIZE;
  wire S01_AXI_1_AWVALID;
  wire S01_AXI_1_BREADY;
  wire [1:0]S01_AXI_1_BRESP;
  wire S01_AXI_1_BVALID;
  wire [31:0]S01_AXI_1_RDATA;
  wire S01_AXI_1_RLAST;
  wire S01_AXI_1_RREADY;
  wire [1:0]S01_AXI_1_RRESP;
  wire S01_AXI_1_RVALID;
  wire [31:0]S01_AXI_1_WDATA;
  wire S01_AXI_1_WLAST;
  wire S01_AXI_1_WREADY;
  wire [3:0]S01_AXI_1_WSTRB;
  wire S01_AXI_1_WVALID;
  wire [31:0]S02_AXI_1_ARADDR;
  wire [1:0]S02_AXI_1_ARBURST;
  wire [3:0]S02_AXI_1_ARCACHE;
  wire [7:0]S02_AXI_1_ARLEN;
  wire [1:0]S02_AXI_1_ARLOCK;
  wire [2:0]S02_AXI_1_ARPROT;
  wire [3:0]S02_AXI_1_ARQOS;
  wire S02_AXI_1_ARREADY;
  wire [2:0]S02_AXI_1_ARSIZE;
  wire S02_AXI_1_ARVALID;
  wire [31:0]S02_AXI_1_AWADDR;
  wire [1:0]S02_AXI_1_AWBURST;
  wire [3:0]S02_AXI_1_AWCACHE;
  wire [7:0]S02_AXI_1_AWLEN;
  wire [1:0]S02_AXI_1_AWLOCK;
  wire [2:0]S02_AXI_1_AWPROT;
  wire [3:0]S02_AXI_1_AWQOS;
  wire S02_AXI_1_AWREADY;
  wire [2:0]S02_AXI_1_AWSIZE;
  wire S02_AXI_1_AWVALID;
  wire S02_AXI_1_BREADY;
  wire [1:0]S02_AXI_1_BRESP;
  wire S02_AXI_1_BVALID;
  wire [31:0]S02_AXI_1_RDATA;
  wire S02_AXI_1_RLAST;
  wire S02_AXI_1_RREADY;
  wire [1:0]S02_AXI_1_RRESP;
  wire S02_AXI_1_RVALID;
  wire [31:0]S02_AXI_1_WDATA;
  wire S02_AXI_1_WLAST;
  wire S02_AXI_1_WREADY;
  wire [3:0]S02_AXI_1_WSTRB;
  wire S02_AXI_1_WVALID;
  wire [63:0]S03_AXI_1_ARADDR;
  wire [2:0]S03_AXI_1_ARPROT;
  wire S03_AXI_1_ARREADY;
  wire S03_AXI_1_ARVALID;
  wire [63:0]S03_AXI_1_AWADDR;
  wire [2:0]S03_AXI_1_AWPROT;
  wire S03_AXI_1_AWREADY;
  wire S03_AXI_1_AWVALID;
  wire S03_AXI_1_BREADY;
  wire [1:0]S03_AXI_1_BRESP;
  wire S03_AXI_1_BVALID;
  wire [31:0]S03_AXI_1_RDATA;
  wire S03_AXI_1_RREADY;
  wire [1:0]S03_AXI_1_RRESP;
  wire S03_AXI_1_RVALID;
  wire [31:0]S03_AXI_1_WDATA;
  wire S03_AXI_1_WREADY;
  wire [3:0]S03_AXI_1_WSTRB;
  wire S03_AXI_1_WVALID;
  wire connect_to_es_cu_ACLK_net;
  wire connect_to_es_cu_ARESETN_net;
  wire [63:0]m00_couplers_to_connect_to_es_cu_ARADDR;
  wire [2:0]m00_couplers_to_connect_to_es_cu_ARPROT;
  wire [0:0]m00_couplers_to_connect_to_es_cu_ARREADY;
  wire [0:0]m00_couplers_to_connect_to_es_cu_ARVALID;
  wire [63:0]m00_couplers_to_connect_to_es_cu_AWADDR;
  wire [2:0]m00_couplers_to_connect_to_es_cu_AWPROT;
  wire [0:0]m00_couplers_to_connect_to_es_cu_AWREADY;
  wire [0:0]m00_couplers_to_connect_to_es_cu_AWVALID;
  wire [0:0]m00_couplers_to_connect_to_es_cu_BREADY;
  wire [1:0]m00_couplers_to_connect_to_es_cu_BRESP;
  wire [0:0]m00_couplers_to_connect_to_es_cu_BVALID;
  wire [31:0]m00_couplers_to_connect_to_es_cu_RDATA;
  wire [0:0]m00_couplers_to_connect_to_es_cu_RREADY;
  wire [1:0]m00_couplers_to_connect_to_es_cu_RRESP;
  wire [0:0]m00_couplers_to_connect_to_es_cu_RVALID;
  wire [31:0]m00_couplers_to_connect_to_es_cu_WDATA;
  wire [0:0]m00_couplers_to_connect_to_es_cu_WREADY;
  wire [3:0]m00_couplers_to_connect_to_es_cu_WSTRB;
  wire [0:0]m00_couplers_to_connect_to_es_cu_WVALID;
  wire [63:0]m01_couplers_to_connect_to_es_cu_ARADDR;
  wire [2:0]m01_couplers_to_connect_to_es_cu_ARPROT;
  wire [0:0]m01_couplers_to_connect_to_es_cu_ARREADY;
  wire [0:0]m01_couplers_to_connect_to_es_cu_ARVALID;
  wire [63:0]m01_couplers_to_connect_to_es_cu_AWADDR;
  wire [2:0]m01_couplers_to_connect_to_es_cu_AWPROT;
  wire [0:0]m01_couplers_to_connect_to_es_cu_AWREADY;
  wire [0:0]m01_couplers_to_connect_to_es_cu_AWVALID;
  wire [0:0]m01_couplers_to_connect_to_es_cu_BREADY;
  wire [1:0]m01_couplers_to_connect_to_es_cu_BRESP;
  wire [0:0]m01_couplers_to_connect_to_es_cu_BVALID;
  wire [31:0]m01_couplers_to_connect_to_es_cu_RDATA;
  wire [0:0]m01_couplers_to_connect_to_es_cu_RREADY;
  wire [1:0]m01_couplers_to_connect_to_es_cu_RRESP;
  wire [0:0]m01_couplers_to_connect_to_es_cu_RVALID;
  wire [31:0]m01_couplers_to_connect_to_es_cu_WDATA;
  wire [0:0]m01_couplers_to_connect_to_es_cu_WREADY;
  wire [3:0]m01_couplers_to_connect_to_es_cu_WSTRB;
  wire [0:0]m01_couplers_to_connect_to_es_cu_WVALID;
  wire [63:0]m02_couplers_to_connect_to_es_cu_ARADDR;
  wire [0:0]m02_couplers_to_connect_to_es_cu_ARREADY;
  wire [0:0]m02_couplers_to_connect_to_es_cu_ARVALID;
  wire [63:0]m02_couplers_to_connect_to_es_cu_AWADDR;
  wire [0:0]m02_couplers_to_connect_to_es_cu_AWREADY;
  wire [0:0]m02_couplers_to_connect_to_es_cu_AWVALID;
  wire [0:0]m02_couplers_to_connect_to_es_cu_BREADY;
  wire [1:0]m02_couplers_to_connect_to_es_cu_BRESP;
  wire [0:0]m02_couplers_to_connect_to_es_cu_BVALID;
  wire [31:0]m02_couplers_to_connect_to_es_cu_RDATA;
  wire [0:0]m02_couplers_to_connect_to_es_cu_RREADY;
  wire [1:0]m02_couplers_to_connect_to_es_cu_RRESP;
  wire [0:0]m02_couplers_to_connect_to_es_cu_RVALID;
  wire [31:0]m02_couplers_to_connect_to_es_cu_WDATA;
  wire [0:0]m02_couplers_to_connect_to_es_cu_WREADY;
  wire [3:0]m02_couplers_to_connect_to_es_cu_WSTRB;
  wire [0:0]m02_couplers_to_connect_to_es_cu_WVALID;
  wire [63:0]m03_couplers_to_connect_to_es_cu_ARADDR;
  wire [0:0]m03_couplers_to_connect_to_es_cu_ARREADY;
  wire [0:0]m03_couplers_to_connect_to_es_cu_ARVALID;
  wire [63:0]m03_couplers_to_connect_to_es_cu_AWADDR;
  wire [0:0]m03_couplers_to_connect_to_es_cu_AWREADY;
  wire [0:0]m03_couplers_to_connect_to_es_cu_AWVALID;
  wire [0:0]m03_couplers_to_connect_to_es_cu_BREADY;
  wire [1:0]m03_couplers_to_connect_to_es_cu_BRESP;
  wire [0:0]m03_couplers_to_connect_to_es_cu_BVALID;
  wire [31:0]m03_couplers_to_connect_to_es_cu_RDATA;
  wire [0:0]m03_couplers_to_connect_to_es_cu_RREADY;
  wire [1:0]m03_couplers_to_connect_to_es_cu_RRESP;
  wire [0:0]m03_couplers_to_connect_to_es_cu_RVALID;
  wire [31:0]m03_couplers_to_connect_to_es_cu_WDATA;
  wire [0:0]m03_couplers_to_connect_to_es_cu_WREADY;
  wire [3:0]m03_couplers_to_connect_to_es_cu_WSTRB;
  wire [0:0]m03_couplers_to_connect_to_es_cu_WVALID;
  wire [63:0]m04_couplers_to_connect_to_es_cu_ARADDR;
  wire [0:0]m04_couplers_to_connect_to_es_cu_ARREADY;
  wire [0:0]m04_couplers_to_connect_to_es_cu_ARVALID;
  wire [63:0]m04_couplers_to_connect_to_es_cu_AWADDR;
  wire [0:0]m04_couplers_to_connect_to_es_cu_AWREADY;
  wire [0:0]m04_couplers_to_connect_to_es_cu_AWVALID;
  wire [0:0]m04_couplers_to_connect_to_es_cu_BREADY;
  wire [1:0]m04_couplers_to_connect_to_es_cu_BRESP;
  wire [0:0]m04_couplers_to_connect_to_es_cu_BVALID;
  wire [31:0]m04_couplers_to_connect_to_es_cu_RDATA;
  wire [0:0]m04_couplers_to_connect_to_es_cu_RREADY;
  wire [1:0]m04_couplers_to_connect_to_es_cu_RRESP;
  wire [0:0]m04_couplers_to_connect_to_es_cu_RVALID;
  wire [31:0]m04_couplers_to_connect_to_es_cu_WDATA;
  wire [0:0]m04_couplers_to_connect_to_es_cu_WREADY;
  wire [3:0]m04_couplers_to_connect_to_es_cu_WSTRB;
  wire [0:0]m04_couplers_to_connect_to_es_cu_WVALID;
  wire [63:0]m05_couplers_to_connect_to_es_cu_ARADDR;
  wire [0:0]m05_couplers_to_connect_to_es_cu_ARREADY;
  wire [0:0]m05_couplers_to_connect_to_es_cu_ARVALID;
  wire [63:0]m05_couplers_to_connect_to_es_cu_AWADDR;
  wire [0:0]m05_couplers_to_connect_to_es_cu_AWREADY;
  wire [0:0]m05_couplers_to_connect_to_es_cu_AWVALID;
  wire [0:0]m05_couplers_to_connect_to_es_cu_BREADY;
  wire [1:0]m05_couplers_to_connect_to_es_cu_BRESP;
  wire [0:0]m05_couplers_to_connect_to_es_cu_BVALID;
  wire [31:0]m05_couplers_to_connect_to_es_cu_RDATA;
  wire [0:0]m05_couplers_to_connect_to_es_cu_RREADY;
  wire [1:0]m05_couplers_to_connect_to_es_cu_RRESP;
  wire [0:0]m05_couplers_to_connect_to_es_cu_RVALID;
  wire [31:0]m05_couplers_to_connect_to_es_cu_WDATA;
  wire [0:0]m05_couplers_to_connect_to_es_cu_WREADY;
  wire [3:0]m05_couplers_to_connect_to_es_cu_WSTRB;
  wire [0:0]m05_couplers_to_connect_to_es_cu_WVALID;
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
  wire [63:0]s00_mmu_M_AXI_ARADDR;
  wire [2:0]s00_mmu_M_AXI_ARPROT;
  wire s00_mmu_M_AXI_ARREADY;
  wire s00_mmu_M_AXI_ARVALID;
  wire [63:0]s00_mmu_M_AXI_AWADDR;
  wire [2:0]s00_mmu_M_AXI_AWPROT;
  wire s00_mmu_M_AXI_AWREADY;
  wire s00_mmu_M_AXI_AWVALID;
  wire s00_mmu_M_AXI_BREADY;
  wire [1:0]s00_mmu_M_AXI_BRESP;
  wire s00_mmu_M_AXI_BVALID;
  wire [31:0]s00_mmu_M_AXI_RDATA;
  wire s00_mmu_M_AXI_RREADY;
  wire [1:0]s00_mmu_M_AXI_RRESP;
  wire s00_mmu_M_AXI_RVALID;
  wire [31:0]s00_mmu_M_AXI_WDATA;
  wire s00_mmu_M_AXI_WREADY;
  wire [3:0]s00_mmu_M_AXI_WSTRB;
  wire s00_mmu_M_AXI_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:32]s01_couplers_to_xbar_RDATA;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_WDATA;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [3:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]s01_mmu_M_AXI_ARADDR;
  wire [1:0]s01_mmu_M_AXI_ARBURST;
  wire [3:0]s01_mmu_M_AXI_ARCACHE;
  wire [7:0]s01_mmu_M_AXI_ARLEN;
  wire [0:0]s01_mmu_M_AXI_ARLOCK;
  wire [2:0]s01_mmu_M_AXI_ARPROT;
  wire [3:0]s01_mmu_M_AXI_ARQOS;
  wire s01_mmu_M_AXI_ARREADY;
  wire [2:0]s01_mmu_M_AXI_ARSIZE;
  wire s01_mmu_M_AXI_ARVALID;
  wire [31:0]s01_mmu_M_AXI_AWADDR;
  wire [1:0]s01_mmu_M_AXI_AWBURST;
  wire [3:0]s01_mmu_M_AXI_AWCACHE;
  wire [7:0]s01_mmu_M_AXI_AWLEN;
  wire [0:0]s01_mmu_M_AXI_AWLOCK;
  wire [2:0]s01_mmu_M_AXI_AWPROT;
  wire [3:0]s01_mmu_M_AXI_AWQOS;
  wire s01_mmu_M_AXI_AWREADY;
  wire [2:0]s01_mmu_M_AXI_AWSIZE;
  wire s01_mmu_M_AXI_AWVALID;
  wire s01_mmu_M_AXI_BREADY;
  wire [1:0]s01_mmu_M_AXI_BRESP;
  wire s01_mmu_M_AXI_BVALID;
  wire [31:0]s01_mmu_M_AXI_RDATA;
  wire s01_mmu_M_AXI_RLAST;
  wire s01_mmu_M_AXI_RREADY;
  wire [1:0]s01_mmu_M_AXI_RRESP;
  wire s01_mmu_M_AXI_RVALID;
  wire [31:0]s01_mmu_M_AXI_WDATA;
  wire s01_mmu_M_AXI_WLAST;
  wire s01_mmu_M_AXI_WREADY;
  wire [3:0]s01_mmu_M_AXI_WSTRB;
  wire s01_mmu_M_AXI_WVALID;
  wire [31:0]s02_couplers_to_xbar_ARADDR;
  wire [2:0]s02_couplers_to_xbar_ARPROT;
  wire [2:2]s02_couplers_to_xbar_ARREADY;
  wire s02_couplers_to_xbar_ARVALID;
  wire [31:0]s02_couplers_to_xbar_AWADDR;
  wire [2:0]s02_couplers_to_xbar_AWPROT;
  wire [2:2]s02_couplers_to_xbar_AWREADY;
  wire s02_couplers_to_xbar_AWVALID;
  wire s02_couplers_to_xbar_BREADY;
  wire [5:4]s02_couplers_to_xbar_BRESP;
  wire [2:2]s02_couplers_to_xbar_BVALID;
  wire [95:64]s02_couplers_to_xbar_RDATA;
  wire s02_couplers_to_xbar_RREADY;
  wire [5:4]s02_couplers_to_xbar_RRESP;
  wire [2:2]s02_couplers_to_xbar_RVALID;
  wire [31:0]s02_couplers_to_xbar_WDATA;
  wire [2:2]s02_couplers_to_xbar_WREADY;
  wire [3:0]s02_couplers_to_xbar_WSTRB;
  wire s02_couplers_to_xbar_WVALID;
  wire [31:0]s02_mmu_M_AXI_ARADDR;
  wire [1:0]s02_mmu_M_AXI_ARBURST;
  wire [3:0]s02_mmu_M_AXI_ARCACHE;
  wire [7:0]s02_mmu_M_AXI_ARLEN;
  wire [0:0]s02_mmu_M_AXI_ARLOCK;
  wire [2:0]s02_mmu_M_AXI_ARPROT;
  wire [3:0]s02_mmu_M_AXI_ARQOS;
  wire s02_mmu_M_AXI_ARREADY;
  wire [2:0]s02_mmu_M_AXI_ARSIZE;
  wire s02_mmu_M_AXI_ARVALID;
  wire [31:0]s02_mmu_M_AXI_AWADDR;
  wire [1:0]s02_mmu_M_AXI_AWBURST;
  wire [3:0]s02_mmu_M_AXI_AWCACHE;
  wire [7:0]s02_mmu_M_AXI_AWLEN;
  wire [0:0]s02_mmu_M_AXI_AWLOCK;
  wire [2:0]s02_mmu_M_AXI_AWPROT;
  wire [3:0]s02_mmu_M_AXI_AWQOS;
  wire s02_mmu_M_AXI_AWREADY;
  wire [2:0]s02_mmu_M_AXI_AWSIZE;
  wire s02_mmu_M_AXI_AWVALID;
  wire s02_mmu_M_AXI_BREADY;
  wire [1:0]s02_mmu_M_AXI_BRESP;
  wire s02_mmu_M_AXI_BVALID;
  wire [31:0]s02_mmu_M_AXI_RDATA;
  wire s02_mmu_M_AXI_RLAST;
  wire s02_mmu_M_AXI_RREADY;
  wire [1:0]s02_mmu_M_AXI_RRESP;
  wire s02_mmu_M_AXI_RVALID;
  wire [31:0]s02_mmu_M_AXI_WDATA;
  wire s02_mmu_M_AXI_WLAST;
  wire s02_mmu_M_AXI_WREADY;
  wire [3:0]s02_mmu_M_AXI_WSTRB;
  wire s02_mmu_M_AXI_WVALID;
  wire [63:0]s03_couplers_to_xbar_ARADDR;
  wire [2:0]s03_couplers_to_xbar_ARPROT;
  wire [3:3]s03_couplers_to_xbar_ARREADY;
  wire s03_couplers_to_xbar_ARVALID;
  wire [63:0]s03_couplers_to_xbar_AWADDR;
  wire [2:0]s03_couplers_to_xbar_AWPROT;
  wire [3:3]s03_couplers_to_xbar_AWREADY;
  wire s03_couplers_to_xbar_AWVALID;
  wire s03_couplers_to_xbar_BREADY;
  wire [7:6]s03_couplers_to_xbar_BRESP;
  wire [3:3]s03_couplers_to_xbar_BVALID;
  wire [127:96]s03_couplers_to_xbar_RDATA;
  wire s03_couplers_to_xbar_RREADY;
  wire [7:6]s03_couplers_to_xbar_RRESP;
  wire [3:3]s03_couplers_to_xbar_RVALID;
  wire [31:0]s03_couplers_to_xbar_WDATA;
  wire [3:3]s03_couplers_to_xbar_WREADY;
  wire [3:0]s03_couplers_to_xbar_WSTRB;
  wire s03_couplers_to_xbar_WVALID;
  wire [63:0]s03_mmu_M_AXI_ARADDR;
  wire [2:0]s03_mmu_M_AXI_ARPROT;
  wire s03_mmu_M_AXI_ARREADY;
  wire s03_mmu_M_AXI_ARVALID;
  wire [63:0]s03_mmu_M_AXI_AWADDR;
  wire [2:0]s03_mmu_M_AXI_AWPROT;
  wire s03_mmu_M_AXI_AWREADY;
  wire s03_mmu_M_AXI_AWVALID;
  wire s03_mmu_M_AXI_BREADY;
  wire [1:0]s03_mmu_M_AXI_BRESP;
  wire s03_mmu_M_AXI_BVALID;
  wire [31:0]s03_mmu_M_AXI_RDATA;
  wire s03_mmu_M_AXI_RREADY;
  wire [1:0]s03_mmu_M_AXI_RRESP;
  wire s03_mmu_M_AXI_RVALID;
  wire [31:0]s03_mmu_M_AXI_WDATA;
  wire s03_mmu_M_AXI_WREADY;
  wire [3:0]s03_mmu_M_AXI_WSTRB;
  wire s03_mmu_M_AXI_WVALID;
  wire [63:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [63:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
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
  wire [255:192]xbar_to_m03_couplers_ARADDR;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [255:192]xbar_to_m03_couplers_AWADDR;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [319:256]xbar_to_m04_couplers_ARADDR;
  wire [0:0]xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [319:256]xbar_to_m04_couplers_AWADDR;
  wire [0:0]xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire [0:0]xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire [0:0]xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [0:0]xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [383:320]xbar_to_m05_couplers_ARADDR;
  wire [0:0]xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [383:320]xbar_to_m05_couplers_AWADDR;
  wire [0:0]xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire [0:0]xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire [0:0]xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [0:0]xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;

  assign M00_AXI_araddr[63:0] = m00_couplers_to_connect_to_es_cu_ARADDR;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_connect_to_es_cu_ARPROT;
  assign M00_AXI_arvalid[0] = m00_couplers_to_connect_to_es_cu_ARVALID;
  assign M00_AXI_awaddr[63:0] = m00_couplers_to_connect_to_es_cu_AWADDR;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_connect_to_es_cu_AWPROT;
  assign M00_AXI_awvalid[0] = m00_couplers_to_connect_to_es_cu_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_connect_to_es_cu_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_connect_to_es_cu_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_connect_to_es_cu_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_connect_to_es_cu_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_connect_to_es_cu_WVALID;
  assign M01_AXI_araddr[63:0] = m01_couplers_to_connect_to_es_cu_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_connect_to_es_cu_ARPROT;
  assign M01_AXI_arvalid[0] = m01_couplers_to_connect_to_es_cu_ARVALID;
  assign M01_AXI_awaddr[63:0] = m01_couplers_to_connect_to_es_cu_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_connect_to_es_cu_AWPROT;
  assign M01_AXI_awvalid[0] = m01_couplers_to_connect_to_es_cu_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_connect_to_es_cu_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_connect_to_es_cu_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_connect_to_es_cu_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_connect_to_es_cu_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_connect_to_es_cu_WVALID;
  assign M02_AXI_araddr[63:0] = m02_couplers_to_connect_to_es_cu_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_connect_to_es_cu_ARVALID;
  assign M02_AXI_awaddr[63:0] = m02_couplers_to_connect_to_es_cu_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_connect_to_es_cu_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_connect_to_es_cu_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_connect_to_es_cu_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_connect_to_es_cu_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_connect_to_es_cu_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_connect_to_es_cu_WVALID;
  assign M03_AXI_araddr[63:0] = m03_couplers_to_connect_to_es_cu_ARADDR;
  assign M03_AXI_arvalid[0] = m03_couplers_to_connect_to_es_cu_ARVALID;
  assign M03_AXI_awaddr[63:0] = m03_couplers_to_connect_to_es_cu_AWADDR;
  assign M03_AXI_awvalid[0] = m03_couplers_to_connect_to_es_cu_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_connect_to_es_cu_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_connect_to_es_cu_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_connect_to_es_cu_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_connect_to_es_cu_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_connect_to_es_cu_WVALID;
  assign M04_AXI_araddr[63:0] = m04_couplers_to_connect_to_es_cu_ARADDR;
  assign M04_AXI_arvalid[0] = m04_couplers_to_connect_to_es_cu_ARVALID;
  assign M04_AXI_awaddr[63:0] = m04_couplers_to_connect_to_es_cu_AWADDR;
  assign M04_AXI_awvalid[0] = m04_couplers_to_connect_to_es_cu_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_connect_to_es_cu_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_connect_to_es_cu_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_connect_to_es_cu_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_connect_to_es_cu_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_connect_to_es_cu_WVALID;
  assign M05_AXI_araddr[63:0] = m05_couplers_to_connect_to_es_cu_ARADDR;
  assign M05_AXI_arvalid[0] = m05_couplers_to_connect_to_es_cu_ARVALID;
  assign M05_AXI_awaddr[63:0] = m05_couplers_to_connect_to_es_cu_AWADDR;
  assign M05_AXI_awvalid[0] = m05_couplers_to_connect_to_es_cu_AWVALID;
  assign M05_AXI_bready[0] = m05_couplers_to_connect_to_es_cu_BREADY;
  assign M05_AXI_rready[0] = m05_couplers_to_connect_to_es_cu_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_connect_to_es_cu_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_connect_to_es_cu_WSTRB;
  assign M05_AXI_wvalid[0] = m05_couplers_to_connect_to_es_cu_WVALID;
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
  assign S01_AXI_1_ARADDR = S01_AXI_araddr[31:0];
  assign S01_AXI_1_ARBURST = S01_AXI_arburst[1:0];
  assign S01_AXI_1_ARCACHE = S01_AXI_arcache[3:0];
  assign S01_AXI_1_ARLEN = S01_AXI_arlen[7:0];
  assign S01_AXI_1_ARLOCK = S01_AXI_arlock[1:0];
  assign S01_AXI_1_ARPROT = S01_AXI_arprot[2:0];
  assign S01_AXI_1_ARQOS = S01_AXI_arqos[3:0];
  assign S01_AXI_1_ARSIZE = S01_AXI_arsize[2:0];
  assign S01_AXI_1_ARVALID = S01_AXI_arvalid;
  assign S01_AXI_1_AWADDR = S01_AXI_awaddr[31:0];
  assign S01_AXI_1_AWBURST = S01_AXI_awburst[1:0];
  assign S01_AXI_1_AWCACHE = S01_AXI_awcache[3:0];
  assign S01_AXI_1_AWLEN = S01_AXI_awlen[7:0];
  assign S01_AXI_1_AWLOCK = S01_AXI_awlock[1:0];
  assign S01_AXI_1_AWPROT = S01_AXI_awprot[2:0];
  assign S01_AXI_1_AWQOS = S01_AXI_awqos[3:0];
  assign S01_AXI_1_AWSIZE = S01_AXI_awsize[2:0];
  assign S01_AXI_1_AWVALID = S01_AXI_awvalid;
  assign S01_AXI_1_BREADY = S01_AXI_bready;
  assign S01_AXI_1_RREADY = S01_AXI_rready;
  assign S01_AXI_1_WDATA = S01_AXI_wdata[31:0];
  assign S01_AXI_1_WLAST = S01_AXI_wlast;
  assign S01_AXI_1_WSTRB = S01_AXI_wstrb[3:0];
  assign S01_AXI_1_WVALID = S01_AXI_wvalid;
  assign S01_AXI_arready = S01_AXI_1_ARREADY;
  assign S01_AXI_awready = S01_AXI_1_AWREADY;
  assign S01_AXI_bresp[1:0] = S01_AXI_1_BRESP;
  assign S01_AXI_bvalid = S01_AXI_1_BVALID;
  assign S01_AXI_rdata[31:0] = S01_AXI_1_RDATA;
  assign S01_AXI_rlast = S01_AXI_1_RLAST;
  assign S01_AXI_rresp[1:0] = S01_AXI_1_RRESP;
  assign S01_AXI_rvalid = S01_AXI_1_RVALID;
  assign S01_AXI_wready = S01_AXI_1_WREADY;
  assign S02_AXI_1_ARADDR = S02_AXI_araddr[31:0];
  assign S02_AXI_1_ARBURST = S02_AXI_arburst[1:0];
  assign S02_AXI_1_ARCACHE = S02_AXI_arcache[3:0];
  assign S02_AXI_1_ARLEN = S02_AXI_arlen[7:0];
  assign S02_AXI_1_ARLOCK = S02_AXI_arlock[1:0];
  assign S02_AXI_1_ARPROT = S02_AXI_arprot[2:0];
  assign S02_AXI_1_ARQOS = S02_AXI_arqos[3:0];
  assign S02_AXI_1_ARSIZE = S02_AXI_arsize[2:0];
  assign S02_AXI_1_ARVALID = S02_AXI_arvalid;
  assign S02_AXI_1_AWADDR = S02_AXI_awaddr[31:0];
  assign S02_AXI_1_AWBURST = S02_AXI_awburst[1:0];
  assign S02_AXI_1_AWCACHE = S02_AXI_awcache[3:0];
  assign S02_AXI_1_AWLEN = S02_AXI_awlen[7:0];
  assign S02_AXI_1_AWLOCK = S02_AXI_awlock[1:0];
  assign S02_AXI_1_AWPROT = S02_AXI_awprot[2:0];
  assign S02_AXI_1_AWQOS = S02_AXI_awqos[3:0];
  assign S02_AXI_1_AWSIZE = S02_AXI_awsize[2:0];
  assign S02_AXI_1_AWVALID = S02_AXI_awvalid;
  assign S02_AXI_1_BREADY = S02_AXI_bready;
  assign S02_AXI_1_RREADY = S02_AXI_rready;
  assign S02_AXI_1_WDATA = S02_AXI_wdata[31:0];
  assign S02_AXI_1_WLAST = S02_AXI_wlast;
  assign S02_AXI_1_WSTRB = S02_AXI_wstrb[3:0];
  assign S02_AXI_1_WVALID = S02_AXI_wvalid;
  assign S02_AXI_arready = S02_AXI_1_ARREADY;
  assign S02_AXI_awready = S02_AXI_1_AWREADY;
  assign S02_AXI_bresp[1:0] = S02_AXI_1_BRESP;
  assign S02_AXI_bvalid = S02_AXI_1_BVALID;
  assign S02_AXI_rdata[31:0] = S02_AXI_1_RDATA;
  assign S02_AXI_rlast = S02_AXI_1_RLAST;
  assign S02_AXI_rresp[1:0] = S02_AXI_1_RRESP;
  assign S02_AXI_rvalid = S02_AXI_1_RVALID;
  assign S02_AXI_wready = S02_AXI_1_WREADY;
  assign S03_AXI_1_ARADDR = S03_AXI_araddr[63:0];
  assign S03_AXI_1_ARPROT = S03_AXI_arprot[2:0];
  assign S03_AXI_1_ARVALID = S03_AXI_arvalid;
  assign S03_AXI_1_AWADDR = S03_AXI_awaddr[63:0];
  assign S03_AXI_1_AWPROT = S03_AXI_awprot[2:0];
  assign S03_AXI_1_AWVALID = S03_AXI_awvalid;
  assign S03_AXI_1_BREADY = S03_AXI_bready;
  assign S03_AXI_1_RREADY = S03_AXI_rready;
  assign S03_AXI_1_WDATA = S03_AXI_wdata[31:0];
  assign S03_AXI_1_WSTRB = S03_AXI_wstrb[3:0];
  assign S03_AXI_1_WVALID = S03_AXI_wvalid;
  assign S03_AXI_arready = S03_AXI_1_ARREADY;
  assign S03_AXI_awready = S03_AXI_1_AWREADY;
  assign S03_AXI_bresp[1:0] = S03_AXI_1_BRESP;
  assign S03_AXI_bvalid = S03_AXI_1_BVALID;
  assign S03_AXI_rdata[31:0] = S03_AXI_1_RDATA;
  assign S03_AXI_rresp[1:0] = S03_AXI_1_RRESP;
  assign S03_AXI_rvalid = S03_AXI_1_RVALID;
  assign S03_AXI_wready = S03_AXI_1_WREADY;
  assign connect_to_es_cu_ACLK_net = ACLK;
  assign connect_to_es_cu_ARESETN_net = ARESETN;
  assign m00_couplers_to_connect_to_es_cu_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_connect_to_es_cu_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_connect_to_es_cu_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_connect_to_es_cu_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_connect_to_es_cu_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_connect_to_es_cu_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_connect_to_es_cu_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_connect_to_es_cu_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_connect_to_es_cu_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_connect_to_es_cu_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_connect_to_es_cu_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_connect_to_es_cu_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_connect_to_es_cu_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_connect_to_es_cu_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_connect_to_es_cu_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_connect_to_es_cu_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_connect_to_es_cu_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_connect_to_es_cu_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_connect_to_es_cu_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_connect_to_es_cu_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_connect_to_es_cu_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_connect_to_es_cu_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_connect_to_es_cu_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_connect_to_es_cu_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_connect_to_es_cu_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_connect_to_es_cu_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_connect_to_es_cu_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_connect_to_es_cu_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_connect_to_es_cu_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_connect_to_es_cu_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_connect_to_es_cu_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_connect_to_es_cu_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_connect_to_es_cu_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_connect_to_es_cu_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_connect_to_es_cu_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_connect_to_es_cu_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_connect_to_es_cu_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_connect_to_es_cu_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_connect_to_es_cu_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_connect_to_es_cu_WREADY = M04_AXI_wready[0];
  assign m05_couplers_to_connect_to_es_cu_ARREADY = M05_AXI_arready[0];
  assign m05_couplers_to_connect_to_es_cu_AWREADY = M05_AXI_awready[0];
  assign m05_couplers_to_connect_to_es_cu_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_connect_to_es_cu_BVALID = M05_AXI_bvalid[0];
  assign m05_couplers_to_connect_to_es_cu_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_connect_to_es_cu_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_connect_to_es_cu_RVALID = M05_AXI_rvalid[0];
  assign m05_couplers_to_connect_to_es_cu_WREADY = M05_AXI_wready[0];
  m00_couplers_imp_1J2QOWN m00_couplers
       (.M_ACLK(connect_to_es_cu_ACLK_net),
        .M_ARESETN(connect_to_es_cu_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_connect_to_es_cu_ARADDR),
        .M_AXI_arprot(m00_couplers_to_connect_to_es_cu_ARPROT),
        .M_AXI_arready(m00_couplers_to_connect_to_es_cu_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_connect_to_es_cu_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_connect_to_es_cu_AWADDR),
        .M_AXI_awprot(m00_couplers_to_connect_to_es_cu_AWPROT),
        .M_AXI_awready(m00_couplers_to_connect_to_es_cu_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_connect_to_es_cu_AWVALID),
        .M_AXI_bready(m00_couplers_to_connect_to_es_cu_BREADY),
        .M_AXI_bresp(m00_couplers_to_connect_to_es_cu_BRESP),
        .M_AXI_bvalid(m00_couplers_to_connect_to_es_cu_BVALID),
        .M_AXI_rdata(m00_couplers_to_connect_to_es_cu_RDATA),
        .M_AXI_rready(m00_couplers_to_connect_to_es_cu_RREADY),
        .M_AXI_rresp(m00_couplers_to_connect_to_es_cu_RRESP),
        .M_AXI_rvalid(m00_couplers_to_connect_to_es_cu_RVALID),
        .M_AXI_wdata(m00_couplers_to_connect_to_es_cu_WDATA),
        .M_AXI_wready(m00_couplers_to_connect_to_es_cu_WREADY),
        .M_AXI_wstrb(m00_couplers_to_connect_to_es_cu_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_connect_to_es_cu_WVALID),
        .S_ACLK(connect_to_es_cu_ACLK_net),
        .S_ARESETN(connect_to_es_cu_ARESETN_net),
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
  m01_couplers_imp_7QT8NM m01_couplers
       (.M_ACLK(connect_to_es_cu_ACLK_net),
        .M_ARESETN(connect_to_es_cu_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_connect_to_es_cu_ARADDR),
        .M_AXI_arprot(m01_couplers_to_connect_to_es_cu_ARPROT),
        .M_AXI_arready(m01_couplers_to_connect_to_es_cu_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_connect_to_es_cu_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_connect_to_es_cu_AWADDR),
        .M_AXI_awprot(m01_couplers_to_connect_to_es_cu_AWPROT),
        .M_AXI_awready(m01_couplers_to_connect_to_es_cu_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_connect_to_es_cu_AWVALID),
        .M_AXI_bready(m01_couplers_to_connect_to_es_cu_BREADY),
        .M_AXI_bresp(m01_couplers_to_connect_to_es_cu_BRESP),
        .M_AXI_bvalid(m01_couplers_to_connect_to_es_cu_BVALID),
        .M_AXI_rdata(m01_couplers_to_connect_to_es_cu_RDATA),
        .M_AXI_rready(m01_couplers_to_connect_to_es_cu_RREADY),
        .M_AXI_rresp(m01_couplers_to_connect_to_es_cu_RRESP),
        .M_AXI_rvalid(m01_couplers_to_connect_to_es_cu_RVALID),
        .M_AXI_wdata(m01_couplers_to_connect_to_es_cu_WDATA),
        .M_AXI_wready(m01_couplers_to_connect_to_es_cu_WREADY),
        .M_AXI_wstrb(m01_couplers_to_connect_to_es_cu_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_connect_to_es_cu_WVALID),
        .S_ACLK(connect_to_es_cu_ACLK_net),
        .S_ARESETN(connect_to_es_cu_ARESETN_net),
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
  m02_couplers_imp_1A3IVOC m02_couplers
       (.M_ACLK(connect_to_es_cu_ACLK_net),
        .M_ARESETN(connect_to_es_cu_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_connect_to_es_cu_ARADDR),
        .M_AXI_arready(m02_couplers_to_connect_to_es_cu_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_connect_to_es_cu_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_connect_to_es_cu_AWADDR),
        .M_AXI_awready(m02_couplers_to_connect_to_es_cu_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_connect_to_es_cu_AWVALID),
        .M_AXI_bready(m02_couplers_to_connect_to_es_cu_BREADY),
        .M_AXI_bresp(m02_couplers_to_connect_to_es_cu_BRESP),
        .M_AXI_bvalid(m02_couplers_to_connect_to_es_cu_BVALID),
        .M_AXI_rdata(m02_couplers_to_connect_to_es_cu_RDATA),
        .M_AXI_rready(m02_couplers_to_connect_to_es_cu_RREADY),
        .M_AXI_rresp(m02_couplers_to_connect_to_es_cu_RRESP),
        .M_AXI_rvalid(m02_couplers_to_connect_to_es_cu_RVALID),
        .M_AXI_wdata(m02_couplers_to_connect_to_es_cu_WDATA),
        .M_AXI_wready(m02_couplers_to_connect_to_es_cu_WREADY),
        .M_AXI_wstrb(m02_couplers_to_connect_to_es_cu_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_connect_to_es_cu_WVALID),
        .S_ACLK(connect_to_es_cu_ACLK_net),
        .S_ARESETN(connect_to_es_cu_ARESETN_net),
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
  m03_couplers_imp_YBOEHL m03_couplers
       (.M_ACLK(connect_to_es_cu_ACLK_net),
        .M_ARESETN(connect_to_es_cu_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_connect_to_es_cu_ARADDR),
        .M_AXI_arready(m03_couplers_to_connect_to_es_cu_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_connect_to_es_cu_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_connect_to_es_cu_AWADDR),
        .M_AXI_awready(m03_couplers_to_connect_to_es_cu_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_connect_to_es_cu_AWVALID),
        .M_AXI_bready(m03_couplers_to_connect_to_es_cu_BREADY),
        .M_AXI_bresp(m03_couplers_to_connect_to_es_cu_BRESP),
        .M_AXI_bvalid(m03_couplers_to_connect_to_es_cu_BVALID),
        .M_AXI_rdata(m03_couplers_to_connect_to_es_cu_RDATA),
        .M_AXI_rready(m03_couplers_to_connect_to_es_cu_RREADY),
        .M_AXI_rresp(m03_couplers_to_connect_to_es_cu_RRESP),
        .M_AXI_rvalid(m03_couplers_to_connect_to_es_cu_RVALID),
        .M_AXI_wdata(m03_couplers_to_connect_to_es_cu_WDATA),
        .M_AXI_wready(m03_couplers_to_connect_to_es_cu_WREADY),
        .M_AXI_wstrb(m03_couplers_to_connect_to_es_cu_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_connect_to_es_cu_WVALID),
        .S_ACLK(connect_to_es_cu_ACLK_net),
        .S_ARESETN(connect_to_es_cu_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_1VNSOX m04_couplers
       (.M_ACLK(connect_to_es_cu_ACLK_net),
        .M_ARESETN(connect_to_es_cu_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_connect_to_es_cu_ARADDR),
        .M_AXI_arready(m04_couplers_to_connect_to_es_cu_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_connect_to_es_cu_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_connect_to_es_cu_AWADDR),
        .M_AXI_awready(m04_couplers_to_connect_to_es_cu_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_connect_to_es_cu_AWVALID),
        .M_AXI_bready(m04_couplers_to_connect_to_es_cu_BREADY),
        .M_AXI_bresp(m04_couplers_to_connect_to_es_cu_BRESP),
        .M_AXI_bvalid(m04_couplers_to_connect_to_es_cu_BVALID),
        .M_AXI_rdata(m04_couplers_to_connect_to_es_cu_RDATA),
        .M_AXI_rready(m04_couplers_to_connect_to_es_cu_RREADY),
        .M_AXI_rresp(m04_couplers_to_connect_to_es_cu_RRESP),
        .M_AXI_rvalid(m04_couplers_to_connect_to_es_cu_RVALID),
        .M_AXI_wdata(m04_couplers_to_connect_to_es_cu_WDATA),
        .M_AXI_wready(m04_couplers_to_connect_to_es_cu_WREADY),
        .M_AXI_wstrb(m04_couplers_to_connect_to_es_cu_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_connect_to_es_cu_WVALID),
        .S_ACLK(connect_to_es_cu_ACLK_net),
        .S_ARESETN(connect_to_es_cu_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_1OUOKUC m05_couplers
       (.M_ACLK(connect_to_es_cu_ACLK_net),
        .M_ARESETN(connect_to_es_cu_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_connect_to_es_cu_ARADDR),
        .M_AXI_arready(m05_couplers_to_connect_to_es_cu_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_connect_to_es_cu_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_connect_to_es_cu_AWADDR),
        .M_AXI_awready(m05_couplers_to_connect_to_es_cu_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_connect_to_es_cu_AWVALID),
        .M_AXI_bready(m05_couplers_to_connect_to_es_cu_BREADY),
        .M_AXI_bresp(m05_couplers_to_connect_to_es_cu_BRESP),
        .M_AXI_bvalid(m05_couplers_to_connect_to_es_cu_BVALID),
        .M_AXI_rdata(m05_couplers_to_connect_to_es_cu_RDATA),
        .M_AXI_rready(m05_couplers_to_connect_to_es_cu_RREADY),
        .M_AXI_rresp(m05_couplers_to_connect_to_es_cu_RRESP),
        .M_AXI_rvalid(m05_couplers_to_connect_to_es_cu_RVALID),
        .M_AXI_wdata(m05_couplers_to_connect_to_es_cu_WDATA),
        .M_AXI_wready(m05_couplers_to_connect_to_es_cu_WREADY),
        .M_AXI_wstrb(m05_couplers_to_connect_to_es_cu_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_connect_to_es_cu_WVALID),
        .S_ACLK(connect_to_es_cu_ACLK_net),
        .S_ARESETN(connect_to_es_cu_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  s00_couplers_imp_UX2T9P s00_couplers
       (.M_ACLK(connect_to_es_cu_ACLK_net),
        .M_ARESETN(connect_to_es_cu_ARESETN_net),
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
        .S_ACLK(connect_to_es_cu_ACLK_net),
        .S_ARESETN(connect_to_es_cu_ARESETN_net),
        .S_AXI_araddr(s00_mmu_M_AXI_ARADDR),
        .S_AXI_arprot(s00_mmu_M_AXI_ARPROT),
        .S_AXI_arready(s00_mmu_M_AXI_ARREADY),
        .S_AXI_arvalid(s00_mmu_M_AXI_ARVALID),
        .S_AXI_awaddr(s00_mmu_M_AXI_AWADDR),
        .S_AXI_awprot(s00_mmu_M_AXI_AWPROT),
        .S_AXI_awready(s00_mmu_M_AXI_AWREADY),
        .S_AXI_awvalid(s00_mmu_M_AXI_AWVALID),
        .S_AXI_bready(s00_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s00_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s00_mmu_M_AXI_BVALID),
        .S_AXI_rdata(s00_mmu_M_AXI_RDATA),
        .S_AXI_rready(s00_mmu_M_AXI_RREADY),
        .S_AXI_rresp(s00_mmu_M_AXI_RRESP),
        .S_AXI_rvalid(s00_mmu_M_AXI_RVALID),
        .S_AXI_wdata(s00_mmu_M_AXI_WDATA),
        .S_AXI_wready(s00_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s00_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s00_mmu_M_AXI_WVALID));
  emu_s00_mmu_0 s00_mmu
       (.aclk(connect_to_es_cu_ACLK_net),
        .aresetn(connect_to_es_cu_ARESETN_net),
        .m_axi_araddr(s00_mmu_M_AXI_ARADDR),
        .m_axi_arprot(s00_mmu_M_AXI_ARPROT),
        .m_axi_arready(s00_mmu_M_AXI_ARREADY),
        .m_axi_arvalid(s00_mmu_M_AXI_ARVALID),
        .m_axi_awaddr(s00_mmu_M_AXI_AWADDR),
        .m_axi_awprot(s00_mmu_M_AXI_AWPROT),
        .m_axi_awready(s00_mmu_M_AXI_AWREADY),
        .m_axi_awvalid(s00_mmu_M_AXI_AWVALID),
        .m_axi_bready(s00_mmu_M_AXI_BREADY),
        .m_axi_bresp(s00_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s00_mmu_M_AXI_BVALID),
        .m_axi_rdata(s00_mmu_M_AXI_RDATA),
        .m_axi_rready(s00_mmu_M_AXI_RREADY),
        .m_axi_rresp(s00_mmu_M_AXI_RRESP),
        .m_axi_rvalid(s00_mmu_M_AXI_RVALID),
        .m_axi_wdata(s00_mmu_M_AXI_WDATA),
        .m_axi_wready(s00_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s00_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s00_mmu_M_AXI_WVALID),
        .s_axi_araddr(S00_AXI_1_ARADDR),
        .s_axi_arprot(S00_AXI_1_ARPROT),
        .s_axi_arready(S00_AXI_1_ARREADY),
        .s_axi_arvalid(S00_AXI_1_ARVALID),
        .s_axi_awaddr(S00_AXI_1_AWADDR),
        .s_axi_awprot(S00_AXI_1_AWPROT),
        .s_axi_awready(S00_AXI_1_AWREADY),
        .s_axi_awvalid(S00_AXI_1_AWVALID),
        .s_axi_bready(S00_AXI_1_BREADY),
        .s_axi_bresp(S00_AXI_1_BRESP),
        .s_axi_bvalid(S00_AXI_1_BVALID),
        .s_axi_rdata(S00_AXI_1_RDATA),
        .s_axi_rready(S00_AXI_1_RREADY),
        .s_axi_rresp(S00_AXI_1_RRESP),
        .s_axi_rvalid(S00_AXI_1_RVALID),
        .s_axi_wdata(S00_AXI_1_WDATA),
        .s_axi_wready(S00_AXI_1_WREADY),
        .s_axi_wstrb(S00_AXI_1_WSTRB),
        .s_axi_wvalid(S00_AXI_1_WVALID));
  s01_couplers_imp_1DNO9BC s01_couplers
       (.M_ACLK(connect_to_es_cu_ACLK_net),
        .M_ARESETN(connect_to_es_cu_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(connect_to_es_cu_ACLK_net),
        .S_ARESETN(connect_to_es_cu_ARESETN_net),
        .S_AXI_araddr(s01_mmu_M_AXI_ARADDR),
        .S_AXI_arburst(s01_mmu_M_AXI_ARBURST),
        .S_AXI_arcache(s01_mmu_M_AXI_ARCACHE),
        .S_AXI_arlen(s01_mmu_M_AXI_ARLEN),
        .S_AXI_arlock(s01_mmu_M_AXI_ARLOCK),
        .S_AXI_arprot(s01_mmu_M_AXI_ARPROT),
        .S_AXI_arqos(s01_mmu_M_AXI_ARQOS),
        .S_AXI_arready(s01_mmu_M_AXI_ARREADY),
        .S_AXI_arsize(s01_mmu_M_AXI_ARSIZE),
        .S_AXI_arvalid(s01_mmu_M_AXI_ARVALID),
        .S_AXI_awaddr(s01_mmu_M_AXI_AWADDR),
        .S_AXI_awburst(s01_mmu_M_AXI_AWBURST),
        .S_AXI_awcache(s01_mmu_M_AXI_AWCACHE),
        .S_AXI_awlen(s01_mmu_M_AXI_AWLEN),
        .S_AXI_awlock(s01_mmu_M_AXI_AWLOCK),
        .S_AXI_awprot(s01_mmu_M_AXI_AWPROT),
        .S_AXI_awqos(s01_mmu_M_AXI_AWQOS),
        .S_AXI_awready(s01_mmu_M_AXI_AWREADY),
        .S_AXI_awsize(s01_mmu_M_AXI_AWSIZE),
        .S_AXI_awvalid(s01_mmu_M_AXI_AWVALID),
        .S_AXI_bready(s01_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s01_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s01_mmu_M_AXI_BVALID),
        .S_AXI_rdata(s01_mmu_M_AXI_RDATA),
        .S_AXI_rlast(s01_mmu_M_AXI_RLAST),
        .S_AXI_rready(s01_mmu_M_AXI_RREADY),
        .S_AXI_rresp(s01_mmu_M_AXI_RRESP),
        .S_AXI_rvalid(s01_mmu_M_AXI_RVALID),
        .S_AXI_wdata(s01_mmu_M_AXI_WDATA),
        .S_AXI_wlast(s01_mmu_M_AXI_WLAST),
        .S_AXI_wready(s01_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s01_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s01_mmu_M_AXI_WVALID));
  emu_s01_mmu_1 s01_mmu
       (.aclk(connect_to_es_cu_ACLK_net),
        .aresetn(connect_to_es_cu_ARESETN_net),
        .m_axi_araddr(s01_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s01_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s01_mmu_M_AXI_ARCACHE),
        .m_axi_arlen(s01_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s01_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s01_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s01_mmu_M_AXI_ARQOS),
        .m_axi_arready(s01_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s01_mmu_M_AXI_ARSIZE),
        .m_axi_arvalid(s01_mmu_M_AXI_ARVALID),
        .m_axi_awaddr(s01_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s01_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s01_mmu_M_AXI_AWCACHE),
        .m_axi_awlen(s01_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s01_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s01_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s01_mmu_M_AXI_AWQOS),
        .m_axi_awready(s01_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s01_mmu_M_AXI_AWSIZE),
        .m_axi_awvalid(s01_mmu_M_AXI_AWVALID),
        .m_axi_bready(s01_mmu_M_AXI_BREADY),
        .m_axi_bresp(s01_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s01_mmu_M_AXI_BVALID),
        .m_axi_rdata(s01_mmu_M_AXI_RDATA),
        .m_axi_rlast(s01_mmu_M_AXI_RLAST),
        .m_axi_rready(s01_mmu_M_AXI_RREADY),
        .m_axi_rresp(s01_mmu_M_AXI_RRESP),
        .m_axi_rvalid(s01_mmu_M_AXI_RVALID),
        .m_axi_wdata(s01_mmu_M_AXI_WDATA),
        .m_axi_wlast(s01_mmu_M_AXI_WLAST),
        .m_axi_wready(s01_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s01_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s01_mmu_M_AXI_WVALID),
        .s_axi_araddr(S01_AXI_1_ARADDR),
        .s_axi_arburst(S01_AXI_1_ARBURST),
        .s_axi_arcache(S01_AXI_1_ARCACHE),
        .s_axi_arlen(S01_AXI_1_ARLEN),
        .s_axi_arlock(S01_AXI_1_ARLOCK[0]),
        .s_axi_arprot(S01_AXI_1_ARPROT),
        .s_axi_arqos(S01_AXI_1_ARQOS),
        .s_axi_arready(S01_AXI_1_ARREADY),
        .s_axi_arsize(S01_AXI_1_ARSIZE),
        .s_axi_arvalid(S01_AXI_1_ARVALID),
        .s_axi_awaddr(S01_AXI_1_AWADDR),
        .s_axi_awburst(S01_AXI_1_AWBURST),
        .s_axi_awcache(S01_AXI_1_AWCACHE),
        .s_axi_awlen(S01_AXI_1_AWLEN),
        .s_axi_awlock(S01_AXI_1_AWLOCK[0]),
        .s_axi_awprot(S01_AXI_1_AWPROT),
        .s_axi_awqos(S01_AXI_1_AWQOS),
        .s_axi_awready(S01_AXI_1_AWREADY),
        .s_axi_awsize(S01_AXI_1_AWSIZE),
        .s_axi_awvalid(S01_AXI_1_AWVALID),
        .s_axi_bready(S01_AXI_1_BREADY),
        .s_axi_bresp(S01_AXI_1_BRESP),
        .s_axi_bvalid(S01_AXI_1_BVALID),
        .s_axi_rdata(S01_AXI_1_RDATA),
        .s_axi_rlast(S01_AXI_1_RLAST),
        .s_axi_rready(S01_AXI_1_RREADY),
        .s_axi_rresp(S01_AXI_1_RRESP),
        .s_axi_rvalid(S01_AXI_1_RVALID),
        .s_axi_wdata(S01_AXI_1_WDATA),
        .s_axi_wlast(S01_AXI_1_WLAST),
        .s_axi_wready(S01_AXI_1_WREADY),
        .s_axi_wstrb(S01_AXI_1_WSTRB),
        .s_axi_wvalid(S01_AXI_1_WVALID));
  s02_couplers_imp_47SKBQ s02_couplers
       (.M_ACLK(connect_to_es_cu_ACLK_net),
        .M_ARESETN(connect_to_es_cu_ARESETN_net),
        .M_AXI_araddr(s02_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s02_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s02_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s02_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s02_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s02_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s02_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s02_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s02_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s02_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s02_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s02_couplers_to_xbar_RDATA),
        .M_AXI_rready(s02_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s02_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s02_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s02_couplers_to_xbar_WDATA),
        .M_AXI_wready(s02_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s02_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s02_couplers_to_xbar_WVALID),
        .S_ACLK(connect_to_es_cu_ACLK_net),
        .S_ARESETN(connect_to_es_cu_ARESETN_net),
        .S_AXI_araddr(s02_mmu_M_AXI_ARADDR),
        .S_AXI_arburst(s02_mmu_M_AXI_ARBURST),
        .S_AXI_arcache(s02_mmu_M_AXI_ARCACHE),
        .S_AXI_arlen(s02_mmu_M_AXI_ARLEN),
        .S_AXI_arlock(s02_mmu_M_AXI_ARLOCK),
        .S_AXI_arprot(s02_mmu_M_AXI_ARPROT),
        .S_AXI_arqos(s02_mmu_M_AXI_ARQOS),
        .S_AXI_arready(s02_mmu_M_AXI_ARREADY),
        .S_AXI_arsize(s02_mmu_M_AXI_ARSIZE),
        .S_AXI_arvalid(s02_mmu_M_AXI_ARVALID),
        .S_AXI_awaddr(s02_mmu_M_AXI_AWADDR),
        .S_AXI_awburst(s02_mmu_M_AXI_AWBURST),
        .S_AXI_awcache(s02_mmu_M_AXI_AWCACHE),
        .S_AXI_awlen(s02_mmu_M_AXI_AWLEN),
        .S_AXI_awlock(s02_mmu_M_AXI_AWLOCK),
        .S_AXI_awprot(s02_mmu_M_AXI_AWPROT),
        .S_AXI_awqos(s02_mmu_M_AXI_AWQOS),
        .S_AXI_awready(s02_mmu_M_AXI_AWREADY),
        .S_AXI_awsize(s02_mmu_M_AXI_AWSIZE),
        .S_AXI_awvalid(s02_mmu_M_AXI_AWVALID),
        .S_AXI_bready(s02_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s02_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s02_mmu_M_AXI_BVALID),
        .S_AXI_rdata(s02_mmu_M_AXI_RDATA),
        .S_AXI_rlast(s02_mmu_M_AXI_RLAST),
        .S_AXI_rready(s02_mmu_M_AXI_RREADY),
        .S_AXI_rresp(s02_mmu_M_AXI_RRESP),
        .S_AXI_rvalid(s02_mmu_M_AXI_RVALID),
        .S_AXI_wdata(s02_mmu_M_AXI_WDATA),
        .S_AXI_wlast(s02_mmu_M_AXI_WLAST),
        .S_AXI_wready(s02_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s02_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s02_mmu_M_AXI_WVALID));
  emu_s02_mmu_0 s02_mmu
       (.aclk(connect_to_es_cu_ACLK_net),
        .aresetn(connect_to_es_cu_ARESETN_net),
        .m_axi_araddr(s02_mmu_M_AXI_ARADDR),
        .m_axi_arburst(s02_mmu_M_AXI_ARBURST),
        .m_axi_arcache(s02_mmu_M_AXI_ARCACHE),
        .m_axi_arlen(s02_mmu_M_AXI_ARLEN),
        .m_axi_arlock(s02_mmu_M_AXI_ARLOCK),
        .m_axi_arprot(s02_mmu_M_AXI_ARPROT),
        .m_axi_arqos(s02_mmu_M_AXI_ARQOS),
        .m_axi_arready(s02_mmu_M_AXI_ARREADY),
        .m_axi_arsize(s02_mmu_M_AXI_ARSIZE),
        .m_axi_arvalid(s02_mmu_M_AXI_ARVALID),
        .m_axi_awaddr(s02_mmu_M_AXI_AWADDR),
        .m_axi_awburst(s02_mmu_M_AXI_AWBURST),
        .m_axi_awcache(s02_mmu_M_AXI_AWCACHE),
        .m_axi_awlen(s02_mmu_M_AXI_AWLEN),
        .m_axi_awlock(s02_mmu_M_AXI_AWLOCK),
        .m_axi_awprot(s02_mmu_M_AXI_AWPROT),
        .m_axi_awqos(s02_mmu_M_AXI_AWQOS),
        .m_axi_awready(s02_mmu_M_AXI_AWREADY),
        .m_axi_awsize(s02_mmu_M_AXI_AWSIZE),
        .m_axi_awvalid(s02_mmu_M_AXI_AWVALID),
        .m_axi_bready(s02_mmu_M_AXI_BREADY),
        .m_axi_bresp(s02_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s02_mmu_M_AXI_BVALID),
        .m_axi_rdata(s02_mmu_M_AXI_RDATA),
        .m_axi_rlast(s02_mmu_M_AXI_RLAST),
        .m_axi_rready(s02_mmu_M_AXI_RREADY),
        .m_axi_rresp(s02_mmu_M_AXI_RRESP),
        .m_axi_rvalid(s02_mmu_M_AXI_RVALID),
        .m_axi_wdata(s02_mmu_M_AXI_WDATA),
        .m_axi_wlast(s02_mmu_M_AXI_WLAST),
        .m_axi_wready(s02_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s02_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s02_mmu_M_AXI_WVALID),
        .s_axi_araddr(S02_AXI_1_ARADDR),
        .s_axi_arburst(S02_AXI_1_ARBURST),
        .s_axi_arcache(S02_AXI_1_ARCACHE),
        .s_axi_arlen(S02_AXI_1_ARLEN),
        .s_axi_arlock(S02_AXI_1_ARLOCK[0]),
        .s_axi_arprot(S02_AXI_1_ARPROT),
        .s_axi_arqos(S02_AXI_1_ARQOS),
        .s_axi_arready(S02_AXI_1_ARREADY),
        .s_axi_arsize(S02_AXI_1_ARSIZE),
        .s_axi_arvalid(S02_AXI_1_ARVALID),
        .s_axi_awaddr(S02_AXI_1_AWADDR),
        .s_axi_awburst(S02_AXI_1_AWBURST),
        .s_axi_awcache(S02_AXI_1_AWCACHE),
        .s_axi_awlen(S02_AXI_1_AWLEN),
        .s_axi_awlock(S02_AXI_1_AWLOCK[0]),
        .s_axi_awprot(S02_AXI_1_AWPROT),
        .s_axi_awqos(S02_AXI_1_AWQOS),
        .s_axi_awready(S02_AXI_1_AWREADY),
        .s_axi_awsize(S02_AXI_1_AWSIZE),
        .s_axi_awvalid(S02_AXI_1_AWVALID),
        .s_axi_bready(S02_AXI_1_BREADY),
        .s_axi_bresp(S02_AXI_1_BRESP),
        .s_axi_bvalid(S02_AXI_1_BVALID),
        .s_axi_rdata(S02_AXI_1_RDATA),
        .s_axi_rlast(S02_AXI_1_RLAST),
        .s_axi_rready(S02_AXI_1_RREADY),
        .s_axi_rresp(S02_AXI_1_RRESP),
        .s_axi_rvalid(S02_AXI_1_RVALID),
        .s_axi_wdata(S02_AXI_1_WDATA),
        .s_axi_wlast(S02_AXI_1_WLAST),
        .s_axi_wready(S02_AXI_1_WREADY),
        .s_axi_wstrb(S02_AXI_1_WSTRB),
        .s_axi_wvalid(S02_AXI_1_WVALID));
  s03_couplers_imp_1MG1X0J s03_couplers
       (.M_ACLK(connect_to_es_cu_ACLK_net),
        .M_ARESETN(connect_to_es_cu_ARESETN_net),
        .M_AXI_araddr(s03_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s03_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s03_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s03_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s03_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s03_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s03_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s03_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s03_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s03_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s03_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s03_couplers_to_xbar_RDATA),
        .M_AXI_rready(s03_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s03_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s03_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s03_couplers_to_xbar_WDATA),
        .M_AXI_wready(s03_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s03_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s03_couplers_to_xbar_WVALID),
        .S_ACLK(connect_to_es_cu_ACLK_net),
        .S_ARESETN(connect_to_es_cu_ARESETN_net),
        .S_AXI_araddr(s03_mmu_M_AXI_ARADDR),
        .S_AXI_arprot(s03_mmu_M_AXI_ARPROT),
        .S_AXI_arready(s03_mmu_M_AXI_ARREADY),
        .S_AXI_arvalid(s03_mmu_M_AXI_ARVALID),
        .S_AXI_awaddr(s03_mmu_M_AXI_AWADDR),
        .S_AXI_awprot(s03_mmu_M_AXI_AWPROT),
        .S_AXI_awready(s03_mmu_M_AXI_AWREADY),
        .S_AXI_awvalid(s03_mmu_M_AXI_AWVALID),
        .S_AXI_bready(s03_mmu_M_AXI_BREADY),
        .S_AXI_bresp(s03_mmu_M_AXI_BRESP),
        .S_AXI_bvalid(s03_mmu_M_AXI_BVALID),
        .S_AXI_rdata(s03_mmu_M_AXI_RDATA),
        .S_AXI_rready(s03_mmu_M_AXI_RREADY),
        .S_AXI_rresp(s03_mmu_M_AXI_RRESP),
        .S_AXI_rvalid(s03_mmu_M_AXI_RVALID),
        .S_AXI_wdata(s03_mmu_M_AXI_WDATA),
        .S_AXI_wready(s03_mmu_M_AXI_WREADY),
        .S_AXI_wstrb(s03_mmu_M_AXI_WSTRB),
        .S_AXI_wvalid(s03_mmu_M_AXI_WVALID));
  emu_s03_mmu_0 s03_mmu
       (.aclk(connect_to_es_cu_ACLK_net),
        .aresetn(connect_to_es_cu_ARESETN_net),
        .m_axi_araddr(s03_mmu_M_AXI_ARADDR),
        .m_axi_arprot(s03_mmu_M_AXI_ARPROT),
        .m_axi_arready(s03_mmu_M_AXI_ARREADY),
        .m_axi_arvalid(s03_mmu_M_AXI_ARVALID),
        .m_axi_awaddr(s03_mmu_M_AXI_AWADDR),
        .m_axi_awprot(s03_mmu_M_AXI_AWPROT),
        .m_axi_awready(s03_mmu_M_AXI_AWREADY),
        .m_axi_awvalid(s03_mmu_M_AXI_AWVALID),
        .m_axi_bready(s03_mmu_M_AXI_BREADY),
        .m_axi_bresp(s03_mmu_M_AXI_BRESP),
        .m_axi_bvalid(s03_mmu_M_AXI_BVALID),
        .m_axi_rdata(s03_mmu_M_AXI_RDATA),
        .m_axi_rready(s03_mmu_M_AXI_RREADY),
        .m_axi_rresp(s03_mmu_M_AXI_RRESP),
        .m_axi_rvalid(s03_mmu_M_AXI_RVALID),
        .m_axi_wdata(s03_mmu_M_AXI_WDATA),
        .m_axi_wready(s03_mmu_M_AXI_WREADY),
        .m_axi_wstrb(s03_mmu_M_AXI_WSTRB),
        .m_axi_wvalid(s03_mmu_M_AXI_WVALID),
        .s_axi_araddr(S03_AXI_1_ARADDR),
        .s_axi_arprot(S03_AXI_1_ARPROT),
        .s_axi_arready(S03_AXI_1_ARREADY),
        .s_axi_arvalid(S03_AXI_1_ARVALID),
        .s_axi_awaddr(S03_AXI_1_AWADDR),
        .s_axi_awprot(S03_AXI_1_AWPROT),
        .s_axi_awready(S03_AXI_1_AWREADY),
        .s_axi_awvalid(S03_AXI_1_AWVALID),
        .s_axi_bready(S03_AXI_1_BREADY),
        .s_axi_bresp(S03_AXI_1_BRESP),
        .s_axi_bvalid(S03_AXI_1_BVALID),
        .s_axi_rdata(S03_AXI_1_RDATA),
        .s_axi_rready(S03_AXI_1_RREADY),
        .s_axi_rresp(S03_AXI_1_RRESP),
        .s_axi_rvalid(S03_AXI_1_RVALID),
        .s_axi_wdata(S03_AXI_1_WDATA),
        .s_axi_wready(S03_AXI_1_WREADY),
        .s_axi_wstrb(S03_AXI_1_WSTRB),
        .s_axi_wvalid(S03_AXI_1_WVALID));
  emu_xbar_3 xbar
       (.aclk(connect_to_es_cu_ACLK_net),
        .aresetn(connect_to_es_cu_ARESETN_net),
        .m_axi_araddr({xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr({s03_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arprot({s03_couplers_to_xbar_ARPROT,s02_couplers_to_xbar_ARPROT,s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arready({s03_couplers_to_xbar_ARREADY,s02_couplers_to_xbar_ARREADY,s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arvalid({s03_couplers_to_xbar_ARVALID,s02_couplers_to_xbar_ARVALID,s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s03_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s02_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awprot({s03_couplers_to_xbar_AWPROT,s02_couplers_to_xbar_AWPROT,s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awready({s03_couplers_to_xbar_AWREADY,s02_couplers_to_xbar_AWREADY,s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awvalid({s03_couplers_to_xbar_AWVALID,s02_couplers_to_xbar_AWVALID,s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s03_couplers_to_xbar_BREADY,s02_couplers_to_xbar_BREADY,s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s03_couplers_to_xbar_BRESP,s02_couplers_to_xbar_BRESP,s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s03_couplers_to_xbar_BVALID,s02_couplers_to_xbar_BVALID,s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s03_couplers_to_xbar_RDATA,s02_couplers_to_xbar_RDATA,s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rready({s03_couplers_to_xbar_RREADY,s02_couplers_to_xbar_RREADY,s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s03_couplers_to_xbar_RRESP,s02_couplers_to_xbar_RRESP,s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s03_couplers_to_xbar_RVALID,s02_couplers_to_xbar_RVALID,s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s03_couplers_to_xbar_WDATA,s02_couplers_to_xbar_WDATA,s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wready({s03_couplers_to_xbar_WREADY,s02_couplers_to_xbar_WREADY,s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s03_couplers_to_xbar_WSTRB,s02_couplers_to_xbar_WSTRB,s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s03_couplers_to_xbar_WVALID,s02_couplers_to_xbar_WVALID,s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module m00_couplers_imp_1J2QOWN
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

  wire [63:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [63:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
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
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
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
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
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

module m00_couplers_imp_THO9J8
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

  wire [63:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [2:0]m00_couplers_to_m00_couplers_ARPROT;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [63:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [2:0]m00_couplers_to_m00_couplers_AWPROT;
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
  assign M_AXI_arprot[2:0] = m00_couplers_to_m00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m00_couplers_to_m00_couplers_AWPROT;
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
  assign m00_couplers_to_m00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign m00_couplers_to_m00_couplers_AWPROT = S_AXI_awprot[2:0];
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

module m01_couplers_imp_1F0NE0X
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

module m01_couplers_imp_7QT8NM
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

module m02_couplers_imp_1A3IVOC
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

module m02_couplers_imp_2SPS0F
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

module m03_couplers_imp_YBOEHL
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

  wire [63:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [63:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[63:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[63:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_1VNSOX
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

  wire [63:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [63:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[63:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[63:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m05_couplers_imp_1OUOKUC
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

  wire [63:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [0:0]m05_couplers_to_m05_couplers_ARREADY;
  wire [0:0]m05_couplers_to_m05_couplers_ARVALID;
  wire [63:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [0:0]m05_couplers_to_m05_couplers_AWREADY;
  wire [0:0]m05_couplers_to_m05_couplers_AWVALID;
  wire [0:0]m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire [0:0]m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire [0:0]m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire [0:0]m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire [0:0]m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire [0:0]m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[63:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready[0] = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready[0] = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready[0] = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready[0] = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid[0] = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid[0] = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready[0] = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[63:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready[0];
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid[0];
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready[0];
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid[0];
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready[0];
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid[0];
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready[0];
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid[0];
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready[0];
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_1I78I2M
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

module s00_couplers_imp_UX2T9P
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

  wire [63:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [63:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[63:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

module s01_couplers_imp_1DNO9BC
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
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
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
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s01_couplers_ARADDR;
  wire [2:0]auto_pc_to_s01_couplers_ARPROT;
  wire auto_pc_to_s01_couplers_ARREADY;
  wire auto_pc_to_s01_couplers_ARVALID;
  wire [31:0]auto_pc_to_s01_couplers_AWADDR;
  wire [2:0]auto_pc_to_s01_couplers_AWPROT;
  wire auto_pc_to_s01_couplers_AWREADY;
  wire auto_pc_to_s01_couplers_AWVALID;
  wire auto_pc_to_s01_couplers_BREADY;
  wire [1:0]auto_pc_to_s01_couplers_BRESP;
  wire auto_pc_to_s01_couplers_BVALID;
  wire [31:0]auto_pc_to_s01_couplers_RDATA;
  wire auto_pc_to_s01_couplers_RREADY;
  wire [1:0]auto_pc_to_s01_couplers_RRESP;
  wire auto_pc_to_s01_couplers_RVALID;
  wire [31:0]auto_pc_to_s01_couplers_WDATA;
  wire auto_pc_to_s01_couplers_WREADY;
  wire [3:0]auto_pc_to_s01_couplers_WSTRB;
  wire auto_pc_to_s01_couplers_WVALID;
  wire [31:0]s01_couplers_to_auto_pc_ARADDR;
  wire [1:0]s01_couplers_to_auto_pc_ARBURST;
  wire [3:0]s01_couplers_to_auto_pc_ARCACHE;
  wire [7:0]s01_couplers_to_auto_pc_ARLEN;
  wire [0:0]s01_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s01_couplers_to_auto_pc_ARPROT;
  wire [3:0]s01_couplers_to_auto_pc_ARQOS;
  wire s01_couplers_to_auto_pc_ARREADY;
  wire [2:0]s01_couplers_to_auto_pc_ARSIZE;
  wire s01_couplers_to_auto_pc_ARVALID;
  wire [31:0]s01_couplers_to_auto_pc_AWADDR;
  wire [1:0]s01_couplers_to_auto_pc_AWBURST;
  wire [3:0]s01_couplers_to_auto_pc_AWCACHE;
  wire [7:0]s01_couplers_to_auto_pc_AWLEN;
  wire [0:0]s01_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s01_couplers_to_auto_pc_AWPROT;
  wire [3:0]s01_couplers_to_auto_pc_AWQOS;
  wire s01_couplers_to_auto_pc_AWREADY;
  wire [2:0]s01_couplers_to_auto_pc_AWSIZE;
  wire s01_couplers_to_auto_pc_AWVALID;
  wire s01_couplers_to_auto_pc_BREADY;
  wire [1:0]s01_couplers_to_auto_pc_BRESP;
  wire s01_couplers_to_auto_pc_BVALID;
  wire [31:0]s01_couplers_to_auto_pc_RDATA;
  wire s01_couplers_to_auto_pc_RLAST;
  wire s01_couplers_to_auto_pc_RREADY;
  wire [1:0]s01_couplers_to_auto_pc_RRESP;
  wire s01_couplers_to_auto_pc_RVALID;
  wire [31:0]s01_couplers_to_auto_pc_WDATA;
  wire s01_couplers_to_auto_pc_WLAST;
  wire s01_couplers_to_auto_pc_WREADY;
  wire [3:0]s01_couplers_to_auto_pc_WSTRB;
  wire s01_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s01_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s01_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s01_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = s01_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s01_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign s01_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign s01_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s01_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s01_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s01_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  emu_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s01_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s01_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s01_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s01_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s01_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s01_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s01_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s01_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s01_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s01_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s01_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s01_couplers_WVALID),
        .s_axi_araddr(s01_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(s01_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s01_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s01_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s01_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s01_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s01_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s01_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s01_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(s01_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s01_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s01_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s01_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s01_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s01_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s01_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s01_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s01_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s01_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(s01_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s01_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s01_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s01_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s01_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s01_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s01_couplers_to_auto_pc_WVALID));
endmodule

module s01_couplers_imp_8JQCQJ
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
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
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
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s01_couplers_ARADDR;
  wire [2:0]auto_pc_to_s01_couplers_ARPROT;
  wire auto_pc_to_s01_couplers_ARREADY;
  wire auto_pc_to_s01_couplers_ARVALID;
  wire [31:0]auto_pc_to_s01_couplers_AWADDR;
  wire [2:0]auto_pc_to_s01_couplers_AWPROT;
  wire auto_pc_to_s01_couplers_AWREADY;
  wire auto_pc_to_s01_couplers_AWVALID;
  wire auto_pc_to_s01_couplers_BREADY;
  wire [1:0]auto_pc_to_s01_couplers_BRESP;
  wire auto_pc_to_s01_couplers_BVALID;
  wire [31:0]auto_pc_to_s01_couplers_RDATA;
  wire auto_pc_to_s01_couplers_RREADY;
  wire [1:0]auto_pc_to_s01_couplers_RRESP;
  wire auto_pc_to_s01_couplers_RVALID;
  wire [31:0]auto_pc_to_s01_couplers_WDATA;
  wire auto_pc_to_s01_couplers_WREADY;
  wire [3:0]auto_pc_to_s01_couplers_WSTRB;
  wire auto_pc_to_s01_couplers_WVALID;
  wire [31:0]s01_couplers_to_auto_pc_ARADDR;
  wire [1:0]s01_couplers_to_auto_pc_ARBURST;
  wire [3:0]s01_couplers_to_auto_pc_ARCACHE;
  wire [7:0]s01_couplers_to_auto_pc_ARLEN;
  wire [0:0]s01_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s01_couplers_to_auto_pc_ARPROT;
  wire [3:0]s01_couplers_to_auto_pc_ARQOS;
  wire s01_couplers_to_auto_pc_ARREADY;
  wire [2:0]s01_couplers_to_auto_pc_ARSIZE;
  wire s01_couplers_to_auto_pc_ARVALID;
  wire [31:0]s01_couplers_to_auto_pc_AWADDR;
  wire [1:0]s01_couplers_to_auto_pc_AWBURST;
  wire [3:0]s01_couplers_to_auto_pc_AWCACHE;
  wire [7:0]s01_couplers_to_auto_pc_AWLEN;
  wire [0:0]s01_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s01_couplers_to_auto_pc_AWPROT;
  wire [3:0]s01_couplers_to_auto_pc_AWQOS;
  wire s01_couplers_to_auto_pc_AWREADY;
  wire [2:0]s01_couplers_to_auto_pc_AWSIZE;
  wire s01_couplers_to_auto_pc_AWVALID;
  wire s01_couplers_to_auto_pc_BREADY;
  wire [1:0]s01_couplers_to_auto_pc_BRESP;
  wire s01_couplers_to_auto_pc_BVALID;
  wire [31:0]s01_couplers_to_auto_pc_RDATA;
  wire s01_couplers_to_auto_pc_RLAST;
  wire s01_couplers_to_auto_pc_RREADY;
  wire [1:0]s01_couplers_to_auto_pc_RRESP;
  wire s01_couplers_to_auto_pc_RVALID;
  wire [31:0]s01_couplers_to_auto_pc_WDATA;
  wire s01_couplers_to_auto_pc_WLAST;
  wire s01_couplers_to_auto_pc_WREADY;
  wire [3:0]s01_couplers_to_auto_pc_WSTRB;
  wire s01_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s01_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s01_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s01_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = s01_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s01_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign s01_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign s01_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s01_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s01_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s01_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  emu_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s01_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s01_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s01_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s01_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s01_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s01_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s01_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s01_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s01_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s01_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s01_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s01_couplers_WVALID),
        .s_axi_araddr(s01_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(s01_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s01_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s01_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s01_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s01_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s01_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s01_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s01_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(s01_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s01_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s01_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s01_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s01_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s01_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s01_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s01_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s01_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s01_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(s01_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s01_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s01_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s01_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s01_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s01_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s01_couplers_to_auto_pc_WVALID));
endmodule

module s02_couplers_imp_47SKBQ
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
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
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
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s02_couplers_ARADDR;
  wire [2:0]auto_pc_to_s02_couplers_ARPROT;
  wire auto_pc_to_s02_couplers_ARREADY;
  wire auto_pc_to_s02_couplers_ARVALID;
  wire [31:0]auto_pc_to_s02_couplers_AWADDR;
  wire [2:0]auto_pc_to_s02_couplers_AWPROT;
  wire auto_pc_to_s02_couplers_AWREADY;
  wire auto_pc_to_s02_couplers_AWVALID;
  wire auto_pc_to_s02_couplers_BREADY;
  wire [1:0]auto_pc_to_s02_couplers_BRESP;
  wire auto_pc_to_s02_couplers_BVALID;
  wire [31:0]auto_pc_to_s02_couplers_RDATA;
  wire auto_pc_to_s02_couplers_RREADY;
  wire [1:0]auto_pc_to_s02_couplers_RRESP;
  wire auto_pc_to_s02_couplers_RVALID;
  wire [31:0]auto_pc_to_s02_couplers_WDATA;
  wire auto_pc_to_s02_couplers_WREADY;
  wire [3:0]auto_pc_to_s02_couplers_WSTRB;
  wire auto_pc_to_s02_couplers_WVALID;
  wire [31:0]s02_couplers_to_auto_pc_ARADDR;
  wire [1:0]s02_couplers_to_auto_pc_ARBURST;
  wire [3:0]s02_couplers_to_auto_pc_ARCACHE;
  wire [7:0]s02_couplers_to_auto_pc_ARLEN;
  wire [0:0]s02_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s02_couplers_to_auto_pc_ARPROT;
  wire [3:0]s02_couplers_to_auto_pc_ARQOS;
  wire s02_couplers_to_auto_pc_ARREADY;
  wire [2:0]s02_couplers_to_auto_pc_ARSIZE;
  wire s02_couplers_to_auto_pc_ARVALID;
  wire [31:0]s02_couplers_to_auto_pc_AWADDR;
  wire [1:0]s02_couplers_to_auto_pc_AWBURST;
  wire [3:0]s02_couplers_to_auto_pc_AWCACHE;
  wire [7:0]s02_couplers_to_auto_pc_AWLEN;
  wire [0:0]s02_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s02_couplers_to_auto_pc_AWPROT;
  wire [3:0]s02_couplers_to_auto_pc_AWQOS;
  wire s02_couplers_to_auto_pc_AWREADY;
  wire [2:0]s02_couplers_to_auto_pc_AWSIZE;
  wire s02_couplers_to_auto_pc_AWVALID;
  wire s02_couplers_to_auto_pc_BREADY;
  wire [1:0]s02_couplers_to_auto_pc_BRESP;
  wire s02_couplers_to_auto_pc_BVALID;
  wire [31:0]s02_couplers_to_auto_pc_RDATA;
  wire s02_couplers_to_auto_pc_RLAST;
  wire s02_couplers_to_auto_pc_RREADY;
  wire [1:0]s02_couplers_to_auto_pc_RRESP;
  wire s02_couplers_to_auto_pc_RVALID;
  wire [31:0]s02_couplers_to_auto_pc_WDATA;
  wire s02_couplers_to_auto_pc_WLAST;
  wire s02_couplers_to_auto_pc_WREADY;
  wire [3:0]s02_couplers_to_auto_pc_WSTRB;
  wire s02_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s02_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s02_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s02_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s02_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s02_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s02_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = s02_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s02_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s02_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = s02_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s02_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s02_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s02_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s02_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s02_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s02_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s02_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s02_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s02_couplers_WREADY = M_AXI_wready;
  assign s02_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s02_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s02_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s02_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s02_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign s02_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s02_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s02_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s02_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s02_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s02_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s02_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s02_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s02_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign s02_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s02_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s02_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s02_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s02_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s02_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s02_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s02_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s02_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s02_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  emu_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s02_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s02_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s02_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s02_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s02_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s02_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s02_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s02_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s02_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s02_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s02_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s02_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s02_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s02_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s02_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s02_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s02_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s02_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s02_couplers_WVALID),
        .s_axi_araddr(s02_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s02_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s02_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(s02_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s02_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s02_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s02_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s02_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s02_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s02_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s02_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s02_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s02_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(s02_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s02_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s02_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s02_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s02_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s02_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s02_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s02_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s02_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s02_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s02_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(s02_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s02_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s02_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s02_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s02_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s02_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s02_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s02_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s02_couplers_to_auto_pc_WVALID));
endmodule

module s03_couplers_imp_1MG1X0J
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

  wire [63:0]s03_couplers_to_s03_couplers_ARADDR;
  wire [2:0]s03_couplers_to_s03_couplers_ARPROT;
  wire s03_couplers_to_s03_couplers_ARREADY;
  wire s03_couplers_to_s03_couplers_ARVALID;
  wire [63:0]s03_couplers_to_s03_couplers_AWADDR;
  wire [2:0]s03_couplers_to_s03_couplers_AWPROT;
  wire s03_couplers_to_s03_couplers_AWREADY;
  wire s03_couplers_to_s03_couplers_AWVALID;
  wire s03_couplers_to_s03_couplers_BREADY;
  wire [1:0]s03_couplers_to_s03_couplers_BRESP;
  wire s03_couplers_to_s03_couplers_BVALID;
  wire [31:0]s03_couplers_to_s03_couplers_RDATA;
  wire s03_couplers_to_s03_couplers_RREADY;
  wire [1:0]s03_couplers_to_s03_couplers_RRESP;
  wire s03_couplers_to_s03_couplers_RVALID;
  wire [31:0]s03_couplers_to_s03_couplers_WDATA;
  wire s03_couplers_to_s03_couplers_WREADY;
  wire [3:0]s03_couplers_to_s03_couplers_WSTRB;
  wire s03_couplers_to_s03_couplers_WVALID;

  assign M_AXI_araddr[63:0] = s03_couplers_to_s03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s03_couplers_to_s03_couplers_ARPROT;
  assign M_AXI_arvalid = s03_couplers_to_s03_couplers_ARVALID;
  assign M_AXI_awaddr[63:0] = s03_couplers_to_s03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s03_couplers_to_s03_couplers_AWPROT;
  assign M_AXI_awvalid = s03_couplers_to_s03_couplers_AWVALID;
  assign M_AXI_bready = s03_couplers_to_s03_couplers_BREADY;
  assign M_AXI_rready = s03_couplers_to_s03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s03_couplers_to_s03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s03_couplers_to_s03_couplers_WSTRB;
  assign M_AXI_wvalid = s03_couplers_to_s03_couplers_WVALID;
  assign S_AXI_arready = s03_couplers_to_s03_couplers_ARREADY;
  assign S_AXI_awready = s03_couplers_to_s03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s03_couplers_to_s03_couplers_BRESP;
  assign S_AXI_bvalid = s03_couplers_to_s03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s03_couplers_to_s03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s03_couplers_to_s03_couplers_RRESP;
  assign S_AXI_rvalid = s03_couplers_to_s03_couplers_RVALID;
  assign S_AXI_wready = s03_couplers_to_s03_couplers_WREADY;
  assign s03_couplers_to_s03_couplers_ARADDR = S_AXI_araddr[63:0];
  assign s03_couplers_to_s03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s03_couplers_to_s03_couplers_ARREADY = M_AXI_arready;
  assign s03_couplers_to_s03_couplers_ARVALID = S_AXI_arvalid;
  assign s03_couplers_to_s03_couplers_AWADDR = S_AXI_awaddr[63:0];
  assign s03_couplers_to_s03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s03_couplers_to_s03_couplers_AWREADY = M_AXI_awready;
  assign s03_couplers_to_s03_couplers_AWVALID = S_AXI_awvalid;
  assign s03_couplers_to_s03_couplers_BREADY = S_AXI_bready;
  assign s03_couplers_to_s03_couplers_BRESP = M_AXI_bresp[1:0];
  assign s03_couplers_to_s03_couplers_BVALID = M_AXI_bvalid;
  assign s03_couplers_to_s03_couplers_RDATA = M_AXI_rdata[31:0];
  assign s03_couplers_to_s03_couplers_RREADY = S_AXI_rready;
  assign s03_couplers_to_s03_couplers_RRESP = M_AXI_rresp[1:0];
  assign s03_couplers_to_s03_couplers_RVALID = M_AXI_rvalid;
  assign s03_couplers_to_s03_couplers_WDATA = S_AXI_wdata[31:0];
  assign s03_couplers_to_s03_couplers_WREADY = M_AXI_wready;
  assign s03_couplers_to_s03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s03_couplers_to_s03_couplers_WVALID = S_AXI_wvalid;
endmodule

module static_region_imp_PT295H
   (C0_DDR_SAXI_0_araddr,
    C0_DDR_SAXI_0_arburst,
    C0_DDR_SAXI_0_arlen,
    C0_DDR_SAXI_0_arprot,
    C0_DDR_SAXI_0_arready,
    C0_DDR_SAXI_0_arsize,
    C0_DDR_SAXI_0_arvalid,
    C0_DDR_SAXI_0_awaddr,
    C0_DDR_SAXI_0_awburst,
    C0_DDR_SAXI_0_awlen,
    C0_DDR_SAXI_0_awprot,
    C0_DDR_SAXI_0_awready,
    C0_DDR_SAXI_0_awsize,
    C0_DDR_SAXI_0_awvalid,
    C0_DDR_SAXI_0_bready,
    C0_DDR_SAXI_0_bresp,
    C0_DDR_SAXI_0_bvalid,
    C0_DDR_SAXI_0_rdata,
    C0_DDR_SAXI_0_rlast,
    C0_DDR_SAXI_0_rready,
    C0_DDR_SAXI_0_rresp,
    C0_DDR_SAXI_0_rvalid,
    C0_DDR_SAXI_0_wdata,
    C0_DDR_SAXI_0_wlast,
    C0_DDR_SAXI_0_wready,
    C0_DDR_SAXI_0_wstrb,
    C0_DDR_SAXI_0_wvalid,
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
    data_M_AXI_1_awlen,
    data_M_AXI_1_awlock,
    data_M_AXI_1_awprot,
    data_M_AXI_1_awqos,
    data_M_AXI_1_awready,
    data_M_AXI_1_awregion,
    data_M_AXI_1_awsize,
    data_M_AXI_1_awvalid,
    data_M_AXI_1_bready,
    data_M_AXI_1_bresp,
    data_M_AXI_1_bvalid,
    data_M_AXI_1_rdata,
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
    data_M_AXI_2_awlen,
    data_M_AXI_2_awlock,
    data_M_AXI_2_awprot,
    data_M_AXI_2_awqos,
    data_M_AXI_2_awready,
    data_M_AXI_2_awregion,
    data_M_AXI_2_awsize,
    data_M_AXI_2_awvalid,
    data_M_AXI_2_bready,
    data_M_AXI_2_bresp,
    data_M_AXI_2_bvalid,
    data_M_AXI_2_rdata,
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
    data_M_AXI_3_awlen,
    data_M_AXI_3_awlock,
    data_M_AXI_3_awprot,
    data_M_AXI_3_awqos,
    data_M_AXI_3_awready,
    data_M_AXI_3_awregion,
    data_M_AXI_3_awsize,
    data_M_AXI_3_awvalid,
    data_M_AXI_3_bready,
    data_M_AXI_3_bresp,
    data_M_AXI_3_bvalid,
    data_M_AXI_3_rdata,
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
    data_M_AXI_4_awlen,
    data_M_AXI_4_awlock,
    data_M_AXI_4_awprot,
    data_M_AXI_4_awqos,
    data_M_AXI_4_awready,
    data_M_AXI_4_awregion,
    data_M_AXI_4_awsize,
    data_M_AXI_4_awvalid,
    data_M_AXI_4_bready,
    data_M_AXI_4_bresp,
    data_M_AXI_4_bvalid,
    data_M_AXI_4_rdata,
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
  input [34:0]C0_DDR_SAXI_0_araddr;
  input [1:0]C0_DDR_SAXI_0_arburst;
  input [7:0]C0_DDR_SAXI_0_arlen;
  input [2:0]C0_DDR_SAXI_0_arprot;
  output [0:0]C0_DDR_SAXI_0_arready;
  input [2:0]C0_DDR_SAXI_0_arsize;
  input [0:0]C0_DDR_SAXI_0_arvalid;
  input [34:0]C0_DDR_SAXI_0_awaddr;
  input [1:0]C0_DDR_SAXI_0_awburst;
  input [7:0]C0_DDR_SAXI_0_awlen;
  input [2:0]C0_DDR_SAXI_0_awprot;
  output [0:0]C0_DDR_SAXI_0_awready;
  input [2:0]C0_DDR_SAXI_0_awsize;
  input [0:0]C0_DDR_SAXI_0_awvalid;
  input [0:0]C0_DDR_SAXI_0_bready;
  output [1:0]C0_DDR_SAXI_0_bresp;
  output [0:0]C0_DDR_SAXI_0_bvalid;
  output [511:0]C0_DDR_SAXI_0_rdata;
  output [0:0]C0_DDR_SAXI_0_rlast;
  input [0:0]C0_DDR_SAXI_0_rready;
  output [1:0]C0_DDR_SAXI_0_rresp;
  output [0:0]C0_DDR_SAXI_0_rvalid;
  input [511:0]C0_DDR_SAXI_0_wdata;
  input [0:0]C0_DDR_SAXI_0_wlast;
  output [0:0]C0_DDR_SAXI_0_wready;
  input [63:0]C0_DDR_SAXI_0_wstrb;
  input [0:0]C0_DDR_SAXI_0_wvalid;
  output clkwiz_kernel2_clk_0;
  output clkwiz_kernel2_rst_0;
  output clkwiz_kernel_clk_0;
  output clkwiz_kernel_rst_0;
  output [63:0]data_M_AXI_0_araddr;
  output [1:0]data_M_AXI_0_arburst;
  output [3:0]data_M_AXI_0_arcache;
  output [0:0]data_M_AXI_0_arid;
  output [7:0]data_M_AXI_0_arlen;
  output data_M_AXI_0_arlock;
  output [2:0]data_M_AXI_0_arprot;
  output [3:0]data_M_AXI_0_arqos;
  input data_M_AXI_0_arready;
  output [2:0]data_M_AXI_0_arsize;
  output data_M_AXI_0_arvalid;
  output [63:0]data_M_AXI_0_awaddr;
  output [1:0]data_M_AXI_0_awburst;
  output [3:0]data_M_AXI_0_awcache;
  output [0:0]data_M_AXI_0_awid;
  output [7:0]data_M_AXI_0_awlen;
  output data_M_AXI_0_awlock;
  output [2:0]data_M_AXI_0_awprot;
  output [3:0]data_M_AXI_0_awqos;
  input data_M_AXI_0_awready;
  output [2:0]data_M_AXI_0_awsize;
  output data_M_AXI_0_awvalid;
  input [0:0]data_M_AXI_0_bid;
  output data_M_AXI_0_bready;
  input [1:0]data_M_AXI_0_bresp;
  input data_M_AXI_0_bvalid;
  input [31:0]data_M_AXI_0_rdata;
  input [0:0]data_M_AXI_0_rid;
  input data_M_AXI_0_rlast;
  output data_M_AXI_0_rready;
  input [1:0]data_M_AXI_0_rresp;
  input data_M_AXI_0_rvalid;
  output [31:0]data_M_AXI_0_wdata;
  output data_M_AXI_0_wlast;
  input data_M_AXI_0_wready;
  output [3:0]data_M_AXI_0_wstrb;
  output data_M_AXI_0_wvalid;
  output [63:0]data_M_AXI_1_araddr;
  output [1:0]data_M_AXI_1_arburst;
  output [3:0]data_M_AXI_1_arcache;
  output [7:0]data_M_AXI_1_arlen;
  output data_M_AXI_1_arlock;
  output [2:0]data_M_AXI_1_arprot;
  output [3:0]data_M_AXI_1_arqos;
  input data_M_AXI_1_arready;
  output [3:0]data_M_AXI_1_arregion;
  output [2:0]data_M_AXI_1_arsize;
  output data_M_AXI_1_arvalid;
  output [63:0]data_M_AXI_1_awaddr;
  output [1:0]data_M_AXI_1_awburst;
  output [3:0]data_M_AXI_1_awcache;
  output [7:0]data_M_AXI_1_awlen;
  output data_M_AXI_1_awlock;
  output [2:0]data_M_AXI_1_awprot;
  output [3:0]data_M_AXI_1_awqos;
  input data_M_AXI_1_awready;
  output [3:0]data_M_AXI_1_awregion;
  output [2:0]data_M_AXI_1_awsize;
  output data_M_AXI_1_awvalid;
  output data_M_AXI_1_bready;
  input [1:0]data_M_AXI_1_bresp;
  input data_M_AXI_1_bvalid;
  input [511:0]data_M_AXI_1_rdata;
  input data_M_AXI_1_rlast;
  output data_M_AXI_1_rready;
  input [1:0]data_M_AXI_1_rresp;
  input data_M_AXI_1_rvalid;
  output [511:0]data_M_AXI_1_wdata;
  output data_M_AXI_1_wlast;
  input data_M_AXI_1_wready;
  output [63:0]data_M_AXI_1_wstrb;
  output data_M_AXI_1_wvalid;
  output [63:0]data_M_AXI_2_araddr;
  output [1:0]data_M_AXI_2_arburst;
  output [3:0]data_M_AXI_2_arcache;
  output [7:0]data_M_AXI_2_arlen;
  output data_M_AXI_2_arlock;
  output [2:0]data_M_AXI_2_arprot;
  output [3:0]data_M_AXI_2_arqos;
  input data_M_AXI_2_arready;
  output [3:0]data_M_AXI_2_arregion;
  output [2:0]data_M_AXI_2_arsize;
  output data_M_AXI_2_arvalid;
  output [63:0]data_M_AXI_2_awaddr;
  output [1:0]data_M_AXI_2_awburst;
  output [3:0]data_M_AXI_2_awcache;
  output [7:0]data_M_AXI_2_awlen;
  output data_M_AXI_2_awlock;
  output [2:0]data_M_AXI_2_awprot;
  output [3:0]data_M_AXI_2_awqos;
  input data_M_AXI_2_awready;
  output [3:0]data_M_AXI_2_awregion;
  output [2:0]data_M_AXI_2_awsize;
  output data_M_AXI_2_awvalid;
  output data_M_AXI_2_bready;
  input [1:0]data_M_AXI_2_bresp;
  input data_M_AXI_2_bvalid;
  input [511:0]data_M_AXI_2_rdata;
  input data_M_AXI_2_rlast;
  output data_M_AXI_2_rready;
  input [1:0]data_M_AXI_2_rresp;
  input data_M_AXI_2_rvalid;
  output [511:0]data_M_AXI_2_wdata;
  output data_M_AXI_2_wlast;
  input data_M_AXI_2_wready;
  output [63:0]data_M_AXI_2_wstrb;
  output data_M_AXI_2_wvalid;
  output [63:0]data_M_AXI_3_araddr;
  output [1:0]data_M_AXI_3_arburst;
  output [3:0]data_M_AXI_3_arcache;
  output [7:0]data_M_AXI_3_arlen;
  output data_M_AXI_3_arlock;
  output [2:0]data_M_AXI_3_arprot;
  output [3:0]data_M_AXI_3_arqos;
  input data_M_AXI_3_arready;
  output [3:0]data_M_AXI_3_arregion;
  output [2:0]data_M_AXI_3_arsize;
  output data_M_AXI_3_arvalid;
  output [63:0]data_M_AXI_3_awaddr;
  output [1:0]data_M_AXI_3_awburst;
  output [3:0]data_M_AXI_3_awcache;
  output [7:0]data_M_AXI_3_awlen;
  output data_M_AXI_3_awlock;
  output [2:0]data_M_AXI_3_awprot;
  output [3:0]data_M_AXI_3_awqos;
  input data_M_AXI_3_awready;
  output [3:0]data_M_AXI_3_awregion;
  output [2:0]data_M_AXI_3_awsize;
  output data_M_AXI_3_awvalid;
  output data_M_AXI_3_bready;
  input [1:0]data_M_AXI_3_bresp;
  input data_M_AXI_3_bvalid;
  input [511:0]data_M_AXI_3_rdata;
  input data_M_AXI_3_rlast;
  output data_M_AXI_3_rready;
  input [1:0]data_M_AXI_3_rresp;
  input data_M_AXI_3_rvalid;
  output [511:0]data_M_AXI_3_wdata;
  output data_M_AXI_3_wlast;
  input data_M_AXI_3_wready;
  output [63:0]data_M_AXI_3_wstrb;
  output data_M_AXI_3_wvalid;
  output [63:0]data_M_AXI_4_araddr;
  output [1:0]data_M_AXI_4_arburst;
  output [3:0]data_M_AXI_4_arcache;
  output [7:0]data_M_AXI_4_arlen;
  output data_M_AXI_4_arlock;
  output [2:0]data_M_AXI_4_arprot;
  output [3:0]data_M_AXI_4_arqos;
  input data_M_AXI_4_arready;
  output [3:0]data_M_AXI_4_arregion;
  output [2:0]data_M_AXI_4_arsize;
  output data_M_AXI_4_arvalid;
  output [63:0]data_M_AXI_4_awaddr;
  output [1:0]data_M_AXI_4_awburst;
  output [3:0]data_M_AXI_4_awcache;
  output [7:0]data_M_AXI_4_awlen;
  output data_M_AXI_4_awlock;
  output [2:0]data_M_AXI_4_awprot;
  output [3:0]data_M_AXI_4_awqos;
  input data_M_AXI_4_awready;
  output [3:0]data_M_AXI_4_awregion;
  output [2:0]data_M_AXI_4_awsize;
  output data_M_AXI_4_awvalid;
  output data_M_AXI_4_bready;
  input [1:0]data_M_AXI_4_bresp;
  input data_M_AXI_4_bvalid;
  input [511:0]data_M_AXI_4_rdata;
  input data_M_AXI_4_rlast;
  output data_M_AXI_4_rready;
  input [1:0]data_M_AXI_4_rresp;
  input data_M_AXI_4_rvalid;
  output [511:0]data_M_AXI_4_wdata;
  output data_M_AXI_4_wlast;
  input data_M_AXI_4_wready;
  output [63:0]data_M_AXI_4_wstrb;
  output data_M_AXI_4_wvalid;
  output ddr_default_clk_0;
  output ddr_default_rst_0;
  output dma_pcie_aclk;
  output [0:0]dma_pcie_arst;
  input [127:0]irq_cu;
  output [63:0]userpf_control_M_AXI_araddr;
  output [2:0]userpf_control_M_AXI_arprot;
  input [0:0]userpf_control_M_AXI_arready;
  output [0:0]userpf_control_M_AXI_arvalid;
  output [63:0]userpf_control_M_AXI_awaddr;
  output [2:0]userpf_control_M_AXI_awprot;
  input [0:0]userpf_control_M_AXI_awready;
  output [0:0]userpf_control_M_AXI_awvalid;
  output [0:0]userpf_control_M_AXI_bready;
  input [1:0]userpf_control_M_AXI_bresp;
  input [0:0]userpf_control_M_AXI_bvalid;
  input [31:0]userpf_control_M_AXI_rdata;
  output [0:0]userpf_control_M_AXI_rready;
  input [1:0]userpf_control_M_AXI_rresp;
  input [0:0]userpf_control_M_AXI_rvalid;
  output [31:0]userpf_control_M_AXI_wdata;
  input [0:0]userpf_control_M_AXI_wready;
  output [3:0]userpf_control_M_AXI_wstrb;
  output [0:0]userpf_control_M_AXI_wvalid;

  wire [34:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [7:0]Conn1_ARLEN;
  wire [2:0]Conn1_ARPROT;
  wire Conn1_ARREADY;
  wire [2:0]Conn1_ARSIZE;
  wire [0:0]Conn1_ARVALID;
  wire [34:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [7:0]Conn1_AWLEN;
  wire [2:0]Conn1_AWPROT;
  wire Conn1_AWREADY;
  wire [2:0]Conn1_AWSIZE;
  wire [0:0]Conn1_AWVALID;
  wire [0:0]Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [511:0]Conn1_RDATA;
  wire Conn1_RLAST;
  wire [0:0]Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [511:0]Conn1_WDATA;
  wire [0:0]Conn1_WLAST;
  wire Conn1_WREADY;
  wire [63:0]Conn1_WSTRB;
  wire [0:0]Conn1_WVALID;
  wire [33:0]Conn2_ARADDR;
  wire [1:0]Conn2_ARBURST;
  wire [3:0]Conn2_ARCACHE;
  wire [0:0]Conn2_ARID;
  wire [7:0]Conn2_ARLEN;
  wire Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire [3:0]Conn2_ARQOS;
  wire Conn2_ARREADY;
  wire [2:0]Conn2_ARSIZE;
  wire [0:0]Conn2_ARUSER;
  wire Conn2_ARVALID;
  wire [33:0]Conn2_AWADDR;
  wire [1:0]Conn2_AWBURST;
  wire [3:0]Conn2_AWCACHE;
  wire [0:0]Conn2_AWID;
  wire [7:0]Conn2_AWLEN;
  wire Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire [3:0]Conn2_AWQOS;
  wire Conn2_AWREADY;
  wire [2:0]Conn2_AWSIZE;
  wire [0:0]Conn2_AWUSER;
  wire Conn2_AWVALID;
  wire [0:0]Conn2_BID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire [0:0]Conn2_BUSER;
  wire Conn2_BVALID;
  wire [511:0]Conn2_RDATA;
  wire [0:0]Conn2_RID;
  wire Conn2_RLAST;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire [0:0]Conn2_RUSER;
  wire Conn2_RVALID;
  wire [511:0]Conn2_WDATA;
  wire Conn2_WLAST;
  wire Conn2_WREADY;
  wire [63:0]Conn2_WSTRB;
  wire [0:0]Conn2_WUSER;
  wire Conn2_WVALID;
  wire clk_reset_wizard_clkwiz_kernel2_clk;
  wire clk_reset_wizard_clkwiz_kernel2_rst;
  wire clk_reset_wizard_clkwiz_kernel_clk;
  wire clk_reset_wizard_clkwiz_kernel_rst;
  wire clk_reset_wizard_ddr_default_clk;
  wire clk_reset_wizard_ddr_default_rst;
  wire [63:0]connect_to_es_M00_AXI_ARADDR;
  wire [2:0]connect_to_es_M00_AXI_ARPROT;
  wire [0:0]connect_to_es_M00_AXI_ARREADY;
  wire [0:0]connect_to_es_M00_AXI_ARVALID;
  wire [63:0]connect_to_es_M00_AXI_AWADDR;
  wire [2:0]connect_to_es_M00_AXI_AWPROT;
  wire [0:0]connect_to_es_M00_AXI_AWREADY;
  wire [0:0]connect_to_es_M00_AXI_AWVALID;
  wire [0:0]connect_to_es_M00_AXI_BREADY;
  wire [1:0]connect_to_es_M00_AXI_BRESP;
  wire [0:0]connect_to_es_M00_AXI_BVALID;
  wire [31:0]connect_to_es_M00_AXI_RDATA;
  wire [0:0]connect_to_es_M00_AXI_RREADY;
  wire [1:0]connect_to_es_M00_AXI_RRESP;
  wire [0:0]connect_to_es_M00_AXI_RVALID;
  wire [31:0]connect_to_es_M00_AXI_WDATA;
  wire [0:0]connect_to_es_M00_AXI_WREADY;
  wire [3:0]connect_to_es_M00_AXI_WSTRB;
  wire [0:0]connect_to_es_M00_AXI_WVALID;
  wire [63:0]connect_to_es_M01_AXI_ARADDR;
  wire [2:0]connect_to_es_M01_AXI_ARPROT;
  wire [0:0]connect_to_es_M01_AXI_ARREADY;
  wire [0:0]connect_to_es_M01_AXI_ARVALID;
  wire [63:0]connect_to_es_M01_AXI_AWADDR;
  wire [2:0]connect_to_es_M01_AXI_AWPROT;
  wire [0:0]connect_to_es_M01_AXI_AWREADY;
  wire [0:0]connect_to_es_M01_AXI_AWVALID;
  wire [0:0]connect_to_es_M01_AXI_BREADY;
  wire [1:0]connect_to_es_M01_AXI_BRESP;
  wire [0:0]connect_to_es_M01_AXI_BVALID;
  wire [31:0]connect_to_es_M01_AXI_RDATA;
  wire [0:0]connect_to_es_M01_AXI_RREADY;
  wire [1:0]connect_to_es_M01_AXI_RRESP;
  wire [0:0]connect_to_es_M01_AXI_RVALID;
  wire [31:0]connect_to_es_M01_AXI_WDATA;
  wire [0:0]connect_to_es_M01_AXI_WREADY;
  wire [3:0]connect_to_es_M01_AXI_WSTRB;
  wire [0:0]connect_to_es_M01_AXI_WVALID;
  wire [63:0]connect_to_es_M02_AXI_ARADDR;
  wire [0:0]connect_to_es_M02_AXI_ARREADY;
  wire [0:0]connect_to_es_M02_AXI_ARVALID;
  wire [63:0]connect_to_es_M02_AXI_AWADDR;
  wire [0:0]connect_to_es_M02_AXI_AWREADY;
  wire [0:0]connect_to_es_M02_AXI_AWVALID;
  wire [0:0]connect_to_es_M02_AXI_BREADY;
  wire [1:0]connect_to_es_M02_AXI_BRESP;
  wire [0:0]connect_to_es_M02_AXI_BVALID;
  wire [31:0]connect_to_es_M02_AXI_RDATA;
  wire [0:0]connect_to_es_M02_AXI_RREADY;
  wire [1:0]connect_to_es_M02_AXI_RRESP;
  wire [0:0]connect_to_es_M02_AXI_RVALID;
  wire [31:0]connect_to_es_M02_AXI_WDATA;
  wire [0:0]connect_to_es_M02_AXI_WREADY;
  wire [3:0]connect_to_es_M02_AXI_WSTRB;
  wire [0:0]connect_to_es_M02_AXI_WVALID;
  wire [63:0]connect_to_es_cu_M00_AXI_ARADDR;
  wire [2:0]connect_to_es_cu_M00_AXI_ARPROT;
  wire [0:0]connect_to_es_cu_M00_AXI_ARREADY;
  wire [0:0]connect_to_es_cu_M00_AXI_ARVALID;
  wire [63:0]connect_to_es_cu_M00_AXI_AWADDR;
  wire [2:0]connect_to_es_cu_M00_AXI_AWPROT;
  wire [0:0]connect_to_es_cu_M00_AXI_AWREADY;
  wire [0:0]connect_to_es_cu_M00_AXI_AWVALID;
  wire [0:0]connect_to_es_cu_M00_AXI_BREADY;
  wire [1:0]connect_to_es_cu_M00_AXI_BRESP;
  wire [0:0]connect_to_es_cu_M00_AXI_BVALID;
  wire [31:0]connect_to_es_cu_M00_AXI_RDATA;
  wire [0:0]connect_to_es_cu_M00_AXI_RREADY;
  wire [1:0]connect_to_es_cu_M00_AXI_RRESP;
  wire [0:0]connect_to_es_cu_M00_AXI_RVALID;
  wire [31:0]connect_to_es_cu_M00_AXI_WDATA;
  wire [0:0]connect_to_es_cu_M00_AXI_WREADY;
  wire [3:0]connect_to_es_cu_M00_AXI_WSTRB;
  wire [0:0]connect_to_es_cu_M00_AXI_WVALID;
  wire [63:0]connect_to_es_cu_M01_AXI_ARADDR;
  wire [2:0]connect_to_es_cu_M01_AXI_ARPROT;
  wire [0:0]connect_to_es_cu_M01_AXI_ARREADY;
  wire [0:0]connect_to_es_cu_M01_AXI_ARVALID;
  wire [63:0]connect_to_es_cu_M01_AXI_AWADDR;
  wire [2:0]connect_to_es_cu_M01_AXI_AWPROT;
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
  wire connect_to_es_cu_M02_AXI_ARREADY;
  wire [0:0]connect_to_es_cu_M02_AXI_ARVALID;
  wire [63:0]connect_to_es_cu_M02_AXI_AWADDR;
  wire connect_to_es_cu_M02_AXI_AWREADY;
  wire [0:0]connect_to_es_cu_M02_AXI_AWVALID;
  wire [0:0]connect_to_es_cu_M02_AXI_BREADY;
  wire [1:0]connect_to_es_cu_M02_AXI_BRESP;
  wire connect_to_es_cu_M02_AXI_BVALID;
  wire [31:0]connect_to_es_cu_M02_AXI_RDATA;
  wire [0:0]connect_to_es_cu_M02_AXI_RREADY;
  wire [1:0]connect_to_es_cu_M02_AXI_RRESP;
  wire connect_to_es_cu_M02_AXI_RVALID;
  wire [31:0]connect_to_es_cu_M02_AXI_WDATA;
  wire connect_to_es_cu_M02_AXI_WREADY;
  wire [3:0]connect_to_es_cu_M02_AXI_WSTRB;
  wire [0:0]connect_to_es_cu_M02_AXI_WVALID;
  wire [63:0]connect_to_es_cu_M03_AXI_ARADDR;
  wire connect_to_es_cu_M03_AXI_ARREADY;
  wire [0:0]connect_to_es_cu_M03_AXI_ARVALID;
  wire [63:0]connect_to_es_cu_M03_AXI_AWADDR;
  wire connect_to_es_cu_M03_AXI_AWREADY;
  wire [0:0]connect_to_es_cu_M03_AXI_AWVALID;
  wire [0:0]connect_to_es_cu_M03_AXI_BREADY;
  wire [1:0]connect_to_es_cu_M03_AXI_BRESP;
  wire connect_to_es_cu_M03_AXI_BVALID;
  wire [31:0]connect_to_es_cu_M03_AXI_RDATA;
  wire [0:0]connect_to_es_cu_M03_AXI_RREADY;
  wire [1:0]connect_to_es_cu_M03_AXI_RRESP;
  wire connect_to_es_cu_M03_AXI_RVALID;
  wire [31:0]connect_to_es_cu_M03_AXI_WDATA;
  wire connect_to_es_cu_M03_AXI_WREADY;
  wire [3:0]connect_to_es_cu_M03_AXI_WSTRB;
  wire [0:0]connect_to_es_cu_M03_AXI_WVALID;
  wire [63:0]connect_to_es_cu_M04_AXI_ARADDR;
  wire connect_to_es_cu_M04_AXI_ARREADY;
  wire [0:0]connect_to_es_cu_M04_AXI_ARVALID;
  wire [63:0]connect_to_es_cu_M04_AXI_AWADDR;
  wire connect_to_es_cu_M04_AXI_AWREADY;
  wire [0:0]connect_to_es_cu_M04_AXI_AWVALID;
  wire [0:0]connect_to_es_cu_M04_AXI_BREADY;
  wire [1:0]connect_to_es_cu_M04_AXI_BRESP;
  wire connect_to_es_cu_M04_AXI_BVALID;
  wire [31:0]connect_to_es_cu_M04_AXI_RDATA;
  wire [0:0]connect_to_es_cu_M04_AXI_RREADY;
  wire [1:0]connect_to_es_cu_M04_AXI_RRESP;
  wire connect_to_es_cu_M04_AXI_RVALID;
  wire [31:0]connect_to_es_cu_M04_AXI_WDATA;
  wire connect_to_es_cu_M04_AXI_WREADY;
  wire [3:0]connect_to_es_cu_M04_AXI_WSTRB;
  wire [0:0]connect_to_es_cu_M04_AXI_WVALID;
  wire [63:0]connect_to_es_cu_M05_AXI_ARADDR;
  wire connect_to_es_cu_M05_AXI_ARREADY;
  wire [0:0]connect_to_es_cu_M05_AXI_ARVALID;
  wire [63:0]connect_to_es_cu_M05_AXI_AWADDR;
  wire connect_to_es_cu_M05_AXI_AWREADY;
  wire [0:0]connect_to_es_cu_M05_AXI_AWVALID;
  wire [0:0]connect_to_es_cu_M05_AXI_BREADY;
  wire [1:0]connect_to_es_cu_M05_AXI_BRESP;
  wire connect_to_es_cu_M05_AXI_BVALID;
  wire [31:0]connect_to_es_cu_M05_AXI_RDATA;
  wire [0:0]connect_to_es_cu_M05_AXI_RREADY;
  wire [1:0]connect_to_es_cu_M05_AXI_RRESP;
  wire connect_to_es_cu_M05_AXI_RVALID;
  wire [31:0]connect_to_es_cu_M05_AXI_WDATA;
  wire connect_to_es_cu_M05_AXI_WREADY;
  wire [3:0]connect_to_es_cu_M05_AXI_WSTRB;
  wire [0:0]connect_to_es_cu_M05_AXI_WVALID;
  wire [63:0]data_M_AXI_0_1_conn_ARADDR;
  wire [1:0]data_M_AXI_0_1_conn_ARBURST;
  wire [3:0]data_M_AXI_0_1_conn_ARCACHE;
  wire [0:0]data_M_AXI_0_1_conn_ARID;
  wire [7:0]data_M_AXI_0_1_conn_ARLEN;
  wire data_M_AXI_0_1_conn_ARLOCK;
  wire [2:0]data_M_AXI_0_1_conn_ARPROT;
  wire [3:0]data_M_AXI_0_1_conn_ARQOS;
  wire data_M_AXI_0_1_conn_ARREADY;
  wire [2:0]data_M_AXI_0_1_conn_ARSIZE;
  wire data_M_AXI_0_1_conn_ARVALID;
  wire [63:0]data_M_AXI_0_1_conn_AWADDR;
  wire [1:0]data_M_AXI_0_1_conn_AWBURST;
  wire [3:0]data_M_AXI_0_1_conn_AWCACHE;
  wire [0:0]data_M_AXI_0_1_conn_AWID;
  wire [7:0]data_M_AXI_0_1_conn_AWLEN;
  wire data_M_AXI_0_1_conn_AWLOCK;
  wire [2:0]data_M_AXI_0_1_conn_AWPROT;
  wire [3:0]data_M_AXI_0_1_conn_AWQOS;
  wire data_M_AXI_0_1_conn_AWREADY;
  wire [2:0]data_M_AXI_0_1_conn_AWSIZE;
  wire data_M_AXI_0_1_conn_AWVALID;
  wire [0:0]data_M_AXI_0_1_conn_BID;
  wire data_M_AXI_0_1_conn_BREADY;
  wire [1:0]data_M_AXI_0_1_conn_BRESP;
  wire data_M_AXI_0_1_conn_BVALID;
  wire [31:0]data_M_AXI_0_1_conn_RDATA;
  wire [0:0]data_M_AXI_0_1_conn_RID;
  wire data_M_AXI_0_1_conn_RLAST;
  wire data_M_AXI_0_1_conn_RREADY;
  wire [1:0]data_M_AXI_0_1_conn_RRESP;
  wire data_M_AXI_0_1_conn_RVALID;
  wire [31:0]data_M_AXI_0_1_conn_WDATA;
  wire data_M_AXI_0_1_conn_WLAST;
  wire data_M_AXI_0_1_conn_WREADY;
  wire [3:0]data_M_AXI_0_1_conn_WSTRB;
  wire data_M_AXI_0_1_conn_WVALID;
  wire [63:0]data_M_AXI_1_1_conn_ARADDR;
  wire [1:0]data_M_AXI_1_1_conn_ARBURST;
  wire [3:0]data_M_AXI_1_1_conn_ARCACHE;
  wire [7:0]data_M_AXI_1_1_conn_ARLEN;
  wire [0:0]data_M_AXI_1_1_conn_ARLOCK;
  wire [2:0]data_M_AXI_1_1_conn_ARPROT;
  wire [3:0]data_M_AXI_1_1_conn_ARQOS;
  wire data_M_AXI_1_1_conn_ARREADY;
  wire [3:0]data_M_AXI_1_1_conn_ARREGION;
  wire [2:0]data_M_AXI_1_1_conn_ARSIZE;
  wire data_M_AXI_1_1_conn_ARVALID;
  wire [63:0]data_M_AXI_1_1_conn_AWADDR;
  wire [1:0]data_M_AXI_1_1_conn_AWBURST;
  wire [3:0]data_M_AXI_1_1_conn_AWCACHE;
  wire [7:0]data_M_AXI_1_1_conn_AWLEN;
  wire [0:0]data_M_AXI_1_1_conn_AWLOCK;
  wire [2:0]data_M_AXI_1_1_conn_AWPROT;
  wire [3:0]data_M_AXI_1_1_conn_AWQOS;
  wire data_M_AXI_1_1_conn_AWREADY;
  wire [3:0]data_M_AXI_1_1_conn_AWREGION;
  wire [2:0]data_M_AXI_1_1_conn_AWSIZE;
  wire data_M_AXI_1_1_conn_AWVALID;
  wire data_M_AXI_1_1_conn_BREADY;
  wire [1:0]data_M_AXI_1_1_conn_BRESP;
  wire data_M_AXI_1_1_conn_BVALID;
  wire [511:0]data_M_AXI_1_1_conn_RDATA;
  wire data_M_AXI_1_1_conn_RLAST;
  wire data_M_AXI_1_1_conn_RREADY;
  wire [1:0]data_M_AXI_1_1_conn_RRESP;
  wire data_M_AXI_1_1_conn_RVALID;
  wire [511:0]data_M_AXI_1_1_conn_WDATA;
  wire data_M_AXI_1_1_conn_WLAST;
  wire data_M_AXI_1_1_conn_WREADY;
  wire [63:0]data_M_AXI_1_1_conn_WSTRB;
  wire data_M_AXI_1_1_conn_WVALID;
  wire [63:0]data_M_AXI_2_1_conn_ARADDR;
  wire [1:0]data_M_AXI_2_1_conn_ARBURST;
  wire [3:0]data_M_AXI_2_1_conn_ARCACHE;
  wire [7:0]data_M_AXI_2_1_conn_ARLEN;
  wire [0:0]data_M_AXI_2_1_conn_ARLOCK;
  wire [2:0]data_M_AXI_2_1_conn_ARPROT;
  wire [3:0]data_M_AXI_2_1_conn_ARQOS;
  wire data_M_AXI_2_1_conn_ARREADY;
  wire [3:0]data_M_AXI_2_1_conn_ARREGION;
  wire [2:0]data_M_AXI_2_1_conn_ARSIZE;
  wire data_M_AXI_2_1_conn_ARVALID;
  wire [63:0]data_M_AXI_2_1_conn_AWADDR;
  wire [1:0]data_M_AXI_2_1_conn_AWBURST;
  wire [3:0]data_M_AXI_2_1_conn_AWCACHE;
  wire [7:0]data_M_AXI_2_1_conn_AWLEN;
  wire [0:0]data_M_AXI_2_1_conn_AWLOCK;
  wire [2:0]data_M_AXI_2_1_conn_AWPROT;
  wire [3:0]data_M_AXI_2_1_conn_AWQOS;
  wire data_M_AXI_2_1_conn_AWREADY;
  wire [3:0]data_M_AXI_2_1_conn_AWREGION;
  wire [2:0]data_M_AXI_2_1_conn_AWSIZE;
  wire data_M_AXI_2_1_conn_AWVALID;
  wire data_M_AXI_2_1_conn_BREADY;
  wire [1:0]data_M_AXI_2_1_conn_BRESP;
  wire data_M_AXI_2_1_conn_BVALID;
  wire [511:0]data_M_AXI_2_1_conn_RDATA;
  wire data_M_AXI_2_1_conn_RLAST;
  wire data_M_AXI_2_1_conn_RREADY;
  wire [1:0]data_M_AXI_2_1_conn_RRESP;
  wire data_M_AXI_2_1_conn_RVALID;
  wire [511:0]data_M_AXI_2_1_conn_WDATA;
  wire data_M_AXI_2_1_conn_WLAST;
  wire data_M_AXI_2_1_conn_WREADY;
  wire [63:0]data_M_AXI_2_1_conn_WSTRB;
  wire data_M_AXI_2_1_conn_WVALID;
  wire [63:0]data_M_AXI_3_1_conn_ARADDR;
  wire [1:0]data_M_AXI_3_1_conn_ARBURST;
  wire [3:0]data_M_AXI_3_1_conn_ARCACHE;
  wire [7:0]data_M_AXI_3_1_conn_ARLEN;
  wire [0:0]data_M_AXI_3_1_conn_ARLOCK;
  wire [2:0]data_M_AXI_3_1_conn_ARPROT;
  wire [3:0]data_M_AXI_3_1_conn_ARQOS;
  wire data_M_AXI_3_1_conn_ARREADY;
  wire [3:0]data_M_AXI_3_1_conn_ARREGION;
  wire [2:0]data_M_AXI_3_1_conn_ARSIZE;
  wire data_M_AXI_3_1_conn_ARVALID;
  wire [63:0]data_M_AXI_3_1_conn_AWADDR;
  wire [1:0]data_M_AXI_3_1_conn_AWBURST;
  wire [3:0]data_M_AXI_3_1_conn_AWCACHE;
  wire [7:0]data_M_AXI_3_1_conn_AWLEN;
  wire [0:0]data_M_AXI_3_1_conn_AWLOCK;
  wire [2:0]data_M_AXI_3_1_conn_AWPROT;
  wire [3:0]data_M_AXI_3_1_conn_AWQOS;
  wire data_M_AXI_3_1_conn_AWREADY;
  wire [3:0]data_M_AXI_3_1_conn_AWREGION;
  wire [2:0]data_M_AXI_3_1_conn_AWSIZE;
  wire data_M_AXI_3_1_conn_AWVALID;
  wire data_M_AXI_3_1_conn_BREADY;
  wire [1:0]data_M_AXI_3_1_conn_BRESP;
  wire data_M_AXI_3_1_conn_BVALID;
  wire [511:0]data_M_AXI_3_1_conn_RDATA;
  wire data_M_AXI_3_1_conn_RLAST;
  wire data_M_AXI_3_1_conn_RREADY;
  wire [1:0]data_M_AXI_3_1_conn_RRESP;
  wire data_M_AXI_3_1_conn_RVALID;
  wire [511:0]data_M_AXI_3_1_conn_WDATA;
  wire data_M_AXI_3_1_conn_WLAST;
  wire data_M_AXI_3_1_conn_WREADY;
  wire [63:0]data_M_AXI_3_1_conn_WSTRB;
  wire data_M_AXI_3_1_conn_WVALID;
  wire [63:0]data_M_AXI_4_1_conn_ARADDR;
  wire [1:0]data_M_AXI_4_1_conn_ARBURST;
  wire [3:0]data_M_AXI_4_1_conn_ARCACHE;
  wire [7:0]data_M_AXI_4_1_conn_ARLEN;
  wire [0:0]data_M_AXI_4_1_conn_ARLOCK;
  wire [2:0]data_M_AXI_4_1_conn_ARPROT;
  wire [3:0]data_M_AXI_4_1_conn_ARQOS;
  wire data_M_AXI_4_1_conn_ARREADY;
  wire [3:0]data_M_AXI_4_1_conn_ARREGION;
  wire [2:0]data_M_AXI_4_1_conn_ARSIZE;
  wire data_M_AXI_4_1_conn_ARVALID;
  wire [63:0]data_M_AXI_4_1_conn_AWADDR;
  wire [1:0]data_M_AXI_4_1_conn_AWBURST;
  wire [3:0]data_M_AXI_4_1_conn_AWCACHE;
  wire [7:0]data_M_AXI_4_1_conn_AWLEN;
  wire [0:0]data_M_AXI_4_1_conn_AWLOCK;
  wire [2:0]data_M_AXI_4_1_conn_AWPROT;
  wire [3:0]data_M_AXI_4_1_conn_AWQOS;
  wire data_M_AXI_4_1_conn_AWREADY;
  wire [3:0]data_M_AXI_4_1_conn_AWREGION;
  wire [2:0]data_M_AXI_4_1_conn_AWSIZE;
  wire data_M_AXI_4_1_conn_AWVALID;
  wire data_M_AXI_4_1_conn_BREADY;
  wire [1:0]data_M_AXI_4_1_conn_BRESP;
  wire data_M_AXI_4_1_conn_BVALID;
  wire [511:0]data_M_AXI_4_1_conn_RDATA;
  wire data_M_AXI_4_1_conn_RLAST;
  wire data_M_AXI_4_1_conn_RREADY;
  wire [1:0]data_M_AXI_4_1_conn_RRESP;
  wire data_M_AXI_4_1_conn_RVALID;
  wire [511:0]data_M_AXI_4_1_conn_WDATA;
  wire data_M_AXI_4_1_conn_WLAST;
  wire data_M_AXI_4_1_conn_WREADY;
  wire [63:0]data_M_AXI_4_1_conn_WSTRB;
  wire data_M_AXI_4_1_conn_WVALID;
  wire [63:0]embedded_schedular_MAXI_ARADDR;
  wire [2:0]embedded_schedular_MAXI_ARPROT;
  wire embedded_schedular_MAXI_ARREADY;
  wire embedded_schedular_MAXI_ARVALID;
  wire [63:0]embedded_schedular_MAXI_AWADDR;
  wire [2:0]embedded_schedular_MAXI_AWPROT;
  wire embedded_schedular_MAXI_AWREADY;
  wire embedded_schedular_MAXI_AWVALID;
  wire embedded_schedular_MAXI_BREADY;
  wire [1:0]embedded_schedular_MAXI_BRESP;
  wire embedded_schedular_MAXI_BVALID;
  wire [31:0]embedded_schedular_MAXI_RDATA;
  wire embedded_schedular_MAXI_RREADY;
  wire [1:0]embedded_schedular_MAXI_RRESP;
  wire embedded_schedular_MAXI_RVALID;
  wire [31:0]embedded_schedular_MAXI_WDATA;
  wire embedded_schedular_MAXI_WREADY;
  wire [3:0]embedded_schedular_MAXI_WSTRB;
  wire embedded_schedular_MAXI_WVALID;
  wire [31:0]embedded_schedular_m_axi_CQDma_ARADDR;
  wire [1:0]embedded_schedular_m_axi_CQDma_ARBURST;
  wire [3:0]embedded_schedular_m_axi_CQDma_ARCACHE;
  wire [7:0]embedded_schedular_m_axi_CQDma_ARLEN;
  wire [1:0]embedded_schedular_m_axi_CQDma_ARLOCK;
  wire [2:0]embedded_schedular_m_axi_CQDma_ARPROT;
  wire [3:0]embedded_schedular_m_axi_CQDma_ARQOS;
  wire embedded_schedular_m_axi_CQDma_ARREADY;
  wire [2:0]embedded_schedular_m_axi_CQDma_ARSIZE;
  wire embedded_schedular_m_axi_CQDma_ARVALID;
  wire [31:0]embedded_schedular_m_axi_CQDma_AWADDR;
  wire [1:0]embedded_schedular_m_axi_CQDma_AWBURST;
  wire [3:0]embedded_schedular_m_axi_CQDma_AWCACHE;
  wire [7:0]embedded_schedular_m_axi_CQDma_AWLEN;
  wire [1:0]embedded_schedular_m_axi_CQDma_AWLOCK;
  wire [2:0]embedded_schedular_m_axi_CQDma_AWPROT;
  wire [3:0]embedded_schedular_m_axi_CQDma_AWQOS;
  wire embedded_schedular_m_axi_CQDma_AWREADY;
  wire [2:0]embedded_schedular_m_axi_CQDma_AWSIZE;
  wire embedded_schedular_m_axi_CQDma_AWVALID;
  wire embedded_schedular_m_axi_CQDma_BREADY;
  wire [1:0]embedded_schedular_m_axi_CQDma_BRESP;
  wire embedded_schedular_m_axi_CQDma_BVALID;
  wire [31:0]embedded_schedular_m_axi_CQDma_RDATA;
  wire embedded_schedular_m_axi_CQDma_RLAST;
  wire embedded_schedular_m_axi_CQDma_RREADY;
  wire [1:0]embedded_schedular_m_axi_CQDma_RRESP;
  wire embedded_schedular_m_axi_CQDma_RVALID;
  wire [31:0]embedded_schedular_m_axi_CQDma_WDATA;
  wire embedded_schedular_m_axi_CQDma_WLAST;
  wire embedded_schedular_m_axi_CQDma_WREADY;
  wire [3:0]embedded_schedular_m_axi_CQDma_WSTRB;
  wire embedded_schedular_m_axi_CQDma_WVALID;
  wire [31:0]embedded_schedular_m_axi_CUDma_0_ARADDR;
  wire [1:0]embedded_schedular_m_axi_CUDma_0_ARBURST;
  wire [3:0]embedded_schedular_m_axi_CUDma_0_ARCACHE;
  wire [7:0]embedded_schedular_m_axi_CUDma_0_ARLEN;
  wire [1:0]embedded_schedular_m_axi_CUDma_0_ARLOCK;
  wire [2:0]embedded_schedular_m_axi_CUDma_0_ARPROT;
  wire [3:0]embedded_schedular_m_axi_CUDma_0_ARQOS;
  wire embedded_schedular_m_axi_CUDma_0_ARREADY;
  wire [2:0]embedded_schedular_m_axi_CUDma_0_ARSIZE;
  wire embedded_schedular_m_axi_CUDma_0_ARVALID;
  wire [31:0]embedded_schedular_m_axi_CUDma_0_AWADDR;
  wire [1:0]embedded_schedular_m_axi_CUDma_0_AWBURST;
  wire [3:0]embedded_schedular_m_axi_CUDma_0_AWCACHE;
  wire [7:0]embedded_schedular_m_axi_CUDma_0_AWLEN;
  wire [1:0]embedded_schedular_m_axi_CUDma_0_AWLOCK;
  wire [2:0]embedded_schedular_m_axi_CUDma_0_AWPROT;
  wire [3:0]embedded_schedular_m_axi_CUDma_0_AWQOS;
  wire embedded_schedular_m_axi_CUDma_0_AWREADY;
  wire [2:0]embedded_schedular_m_axi_CUDma_0_AWSIZE;
  wire embedded_schedular_m_axi_CUDma_0_AWVALID;
  wire embedded_schedular_m_axi_CUDma_0_BREADY;
  wire [1:0]embedded_schedular_m_axi_CUDma_0_BRESP;
  wire embedded_schedular_m_axi_CUDma_0_BVALID;
  wire [31:0]embedded_schedular_m_axi_CUDma_0_RDATA;
  wire embedded_schedular_m_axi_CUDma_0_RLAST;
  wire embedded_schedular_m_axi_CUDma_0_RREADY;
  wire [1:0]embedded_schedular_m_axi_CUDma_0_RRESP;
  wire embedded_schedular_m_axi_CUDma_0_RVALID;
  wire [31:0]embedded_schedular_m_axi_CUDma_0_WDATA;
  wire embedded_schedular_m_axi_CUDma_0_WLAST;
  wire embedded_schedular_m_axi_CUDma_0_WREADY;
  wire [3:0]embedded_schedular_m_axi_CUDma_0_WSTRB;
  wire embedded_schedular_m_axi_CUDma_0_WVALID;
  wire [31:0]embedded_schedular_m_axi_a_ARADDR;
  wire [1:0]embedded_schedular_m_axi_a_ARBURST;
  wire [3:0]embedded_schedular_m_axi_a_ARCACHE;
  wire [7:0]embedded_schedular_m_axi_a_ARLEN;
  wire [1:0]embedded_schedular_m_axi_a_ARLOCK;
  wire [2:0]embedded_schedular_m_axi_a_ARPROT;
  wire [3:0]embedded_schedular_m_axi_a_ARQOS;
  wire embedded_schedular_m_axi_a_ARREADY;
  wire [2:0]embedded_schedular_m_axi_a_ARSIZE;
  wire embedded_schedular_m_axi_a_ARVALID;
  wire [31:0]embedded_schedular_m_axi_a_AWADDR;
  wire [1:0]embedded_schedular_m_axi_a_AWBURST;
  wire [3:0]embedded_schedular_m_axi_a_AWCACHE;
  wire [7:0]embedded_schedular_m_axi_a_AWLEN;
  wire [1:0]embedded_schedular_m_axi_a_AWLOCK;
  wire [2:0]embedded_schedular_m_axi_a_AWPROT;
  wire [3:0]embedded_schedular_m_axi_a_AWQOS;
  wire embedded_schedular_m_axi_a_AWREADY;
  wire [2:0]embedded_schedular_m_axi_a_AWSIZE;
  wire embedded_schedular_m_axi_a_AWVALID;
  wire embedded_schedular_m_axi_a_BREADY;
  wire [1:0]embedded_schedular_m_axi_a_BRESP;
  wire embedded_schedular_m_axi_a_BVALID;
  wire [31:0]embedded_schedular_m_axi_a_RDATA;
  wire embedded_schedular_m_axi_a_RLAST;
  wire embedded_schedular_m_axi_a_RREADY;
  wire [1:0]embedded_schedular_m_axi_a_RRESP;
  wire embedded_schedular_m_axi_a_RVALID;
  wire [31:0]embedded_schedular_m_axi_a_WDATA;
  wire embedded_schedular_m_axi_a_WLAST;
  wire embedded_schedular_m_axi_a_WREADY;
  wire [3:0]embedded_schedular_m_axi_a_WSTRB;
  wire embedded_schedular_m_axi_a_WVALID;
  wire [127:0]irq_cu_1;
  wire pcie_dma;
  wire pcie_dma_aclk;
  wire [0:0]psr_dma_pcie_aclk_mb_reset;
  wire sim_copy_kernel_0_interrupt;
  wire [63:0]sim_xdma_0_M_AXICTRL_ARADDR;
  wire [2:0]sim_xdma_0_M_AXICTRL_ARPROT;
  wire sim_xdma_0_M_AXICTRL_ARREADY;
  wire sim_xdma_0_M_AXICTRL_ARVALID;
  wire [63:0]sim_xdma_0_M_AXICTRL_AWADDR;
  wire [2:0]sim_xdma_0_M_AXICTRL_AWPROT;
  wire sim_xdma_0_M_AXICTRL_AWREADY;
  wire sim_xdma_0_M_AXICTRL_AWVALID;
  wire sim_xdma_0_M_AXICTRL_BREADY;
  wire [1:0]sim_xdma_0_M_AXICTRL_BRESP;
  wire sim_xdma_0_M_AXICTRL_BVALID;
  wire [31:0]sim_xdma_0_M_AXICTRL_RDATA;
  wire sim_xdma_0_M_AXICTRL_RREADY;
  wire [1:0]sim_xdma_0_M_AXICTRL_RRESP;
  wire sim_xdma_0_M_AXICTRL_RVALID;
  wire [31:0]sim_xdma_0_M_AXICTRL_WDATA;
  wire sim_xdma_0_M_AXICTRL_WREADY;
  wire [3:0]sim_xdma_0_M_AXICTRL_WSTRB;
  wire sim_xdma_0_M_AXICTRL_WVALID;

  assign C0_DDR_SAXI_0_arready[0] = Conn1_ARREADY;
  assign C0_DDR_SAXI_0_awready[0] = Conn1_AWREADY;
  assign C0_DDR_SAXI_0_bresp[1:0] = Conn1_BRESP;
  assign C0_DDR_SAXI_0_bvalid[0] = Conn1_BVALID;
  assign C0_DDR_SAXI_0_rdata[511:0] = Conn1_RDATA;
  assign C0_DDR_SAXI_0_rlast[0] = Conn1_RLAST;
  assign C0_DDR_SAXI_0_rresp[1:0] = Conn1_RRESP;
  assign C0_DDR_SAXI_0_rvalid[0] = Conn1_RVALID;
  assign C0_DDR_SAXI_0_wready[0] = Conn1_WREADY;
  assign Conn1_ARADDR = C0_DDR_SAXI_0_araddr[34:0];
  assign Conn1_ARBURST = C0_DDR_SAXI_0_arburst[1:0];
  assign Conn1_ARLEN = C0_DDR_SAXI_0_arlen[7:0];
  assign Conn1_ARPROT = C0_DDR_SAXI_0_arprot[2:0];
  assign Conn1_ARSIZE = C0_DDR_SAXI_0_arsize[2:0];
  assign Conn1_ARVALID = C0_DDR_SAXI_0_arvalid[0];
  assign Conn1_AWADDR = C0_DDR_SAXI_0_awaddr[34:0];
  assign Conn1_AWBURST = C0_DDR_SAXI_0_awburst[1:0];
  assign Conn1_AWLEN = C0_DDR_SAXI_0_awlen[7:0];
  assign Conn1_AWPROT = C0_DDR_SAXI_0_awprot[2:0];
  assign Conn1_AWSIZE = C0_DDR_SAXI_0_awsize[2:0];
  assign Conn1_AWVALID = C0_DDR_SAXI_0_awvalid[0];
  assign Conn1_BREADY = C0_DDR_SAXI_0_bready[0];
  assign Conn1_RREADY = C0_DDR_SAXI_0_rready[0];
  assign Conn1_WDATA = C0_DDR_SAXI_0_wdata[511:0];
  assign Conn1_WLAST = C0_DDR_SAXI_0_wlast[0];
  assign Conn1_WSTRB = C0_DDR_SAXI_0_wstrb[63:0];
  assign Conn1_WVALID = C0_DDR_SAXI_0_wvalid[0];
  assign clkwiz_kernel2_clk_0 = clk_reset_wizard_clkwiz_kernel2_clk;
  assign clkwiz_kernel2_rst_0 = clk_reset_wizard_clkwiz_kernel2_rst;
  assign clkwiz_kernel_clk_0 = clk_reset_wizard_clkwiz_kernel_clk;
  assign clkwiz_kernel_rst_0 = clk_reset_wizard_clkwiz_kernel_rst;
  assign connect_to_es_cu_M01_AXI_ARREADY = userpf_control_M_AXI_arready[0];
  assign connect_to_es_cu_M01_AXI_AWREADY = userpf_control_M_AXI_awready[0];
  assign connect_to_es_cu_M01_AXI_BRESP = userpf_control_M_AXI_bresp[1:0];
  assign connect_to_es_cu_M01_AXI_BVALID = userpf_control_M_AXI_bvalid[0];
  assign connect_to_es_cu_M01_AXI_RDATA = userpf_control_M_AXI_rdata[31:0];
  assign connect_to_es_cu_M01_AXI_RRESP = userpf_control_M_AXI_rresp[1:0];
  assign connect_to_es_cu_M01_AXI_RVALID = userpf_control_M_AXI_rvalid[0];
  assign connect_to_es_cu_M01_AXI_WREADY = userpf_control_M_AXI_wready[0];
  assign data_M_AXI_0_1_conn_ARREADY = data_M_AXI_0_arready;
  assign data_M_AXI_0_1_conn_AWREADY = data_M_AXI_0_awready;
  assign data_M_AXI_0_1_conn_BID = data_M_AXI_0_bid[0];
  assign data_M_AXI_0_1_conn_BRESP = data_M_AXI_0_bresp[1:0];
  assign data_M_AXI_0_1_conn_BVALID = data_M_AXI_0_bvalid;
  assign data_M_AXI_0_1_conn_RDATA = data_M_AXI_0_rdata[31:0];
  assign data_M_AXI_0_1_conn_RID = data_M_AXI_0_rid[0];
  assign data_M_AXI_0_1_conn_RLAST = data_M_AXI_0_rlast;
  assign data_M_AXI_0_1_conn_RRESP = data_M_AXI_0_rresp[1:0];
  assign data_M_AXI_0_1_conn_RVALID = data_M_AXI_0_rvalid;
  assign data_M_AXI_0_1_conn_WREADY = data_M_AXI_0_wready;
  assign data_M_AXI_0_araddr[63:0] = data_M_AXI_0_1_conn_ARADDR;
  assign data_M_AXI_0_arburst[1:0] = data_M_AXI_0_1_conn_ARBURST;
  assign data_M_AXI_0_arcache[3:0] = data_M_AXI_0_1_conn_ARCACHE;
  assign data_M_AXI_0_arid[0] = data_M_AXI_0_1_conn_ARID;
  assign data_M_AXI_0_arlen[7:0] = data_M_AXI_0_1_conn_ARLEN;
  assign data_M_AXI_0_arlock = data_M_AXI_0_1_conn_ARLOCK;
  assign data_M_AXI_0_arprot[2:0] = data_M_AXI_0_1_conn_ARPROT;
  assign data_M_AXI_0_arqos[3:0] = data_M_AXI_0_1_conn_ARQOS;
  assign data_M_AXI_0_arsize[2:0] = data_M_AXI_0_1_conn_ARSIZE;
  assign data_M_AXI_0_arvalid = data_M_AXI_0_1_conn_ARVALID;
  assign data_M_AXI_0_awaddr[63:0] = data_M_AXI_0_1_conn_AWADDR;
  assign data_M_AXI_0_awburst[1:0] = data_M_AXI_0_1_conn_AWBURST;
  assign data_M_AXI_0_awcache[3:0] = data_M_AXI_0_1_conn_AWCACHE;
  assign data_M_AXI_0_awid[0] = data_M_AXI_0_1_conn_AWID;
  assign data_M_AXI_0_awlen[7:0] = data_M_AXI_0_1_conn_AWLEN;
  assign data_M_AXI_0_awlock = data_M_AXI_0_1_conn_AWLOCK;
  assign data_M_AXI_0_awprot[2:0] = data_M_AXI_0_1_conn_AWPROT;
  assign data_M_AXI_0_awqos[3:0] = data_M_AXI_0_1_conn_AWQOS;
  assign data_M_AXI_0_awsize[2:0] = data_M_AXI_0_1_conn_AWSIZE;
  assign data_M_AXI_0_awvalid = data_M_AXI_0_1_conn_AWVALID;
  assign data_M_AXI_0_bready = data_M_AXI_0_1_conn_BREADY;
  assign data_M_AXI_0_rready = data_M_AXI_0_1_conn_RREADY;
  assign data_M_AXI_0_wdata[31:0] = data_M_AXI_0_1_conn_WDATA;
  assign data_M_AXI_0_wlast = data_M_AXI_0_1_conn_WLAST;
  assign data_M_AXI_0_wstrb[3:0] = data_M_AXI_0_1_conn_WSTRB;
  assign data_M_AXI_0_wvalid = data_M_AXI_0_1_conn_WVALID;
  assign data_M_AXI_1_1_conn_ARREADY = data_M_AXI_1_arready;
  assign data_M_AXI_1_1_conn_AWREADY = data_M_AXI_1_awready;
  assign data_M_AXI_1_1_conn_BRESP = data_M_AXI_1_bresp[1:0];
  assign data_M_AXI_1_1_conn_BVALID = data_M_AXI_1_bvalid;
  assign data_M_AXI_1_1_conn_RDATA = data_M_AXI_1_rdata[511:0];
  assign data_M_AXI_1_1_conn_RLAST = data_M_AXI_1_rlast;
  assign data_M_AXI_1_1_conn_RRESP = data_M_AXI_1_rresp[1:0];
  assign data_M_AXI_1_1_conn_RVALID = data_M_AXI_1_rvalid;
  assign data_M_AXI_1_1_conn_WREADY = data_M_AXI_1_wready;
  assign data_M_AXI_1_araddr[63:0] = data_M_AXI_1_1_conn_ARADDR;
  assign data_M_AXI_1_arburst[1:0] = data_M_AXI_1_1_conn_ARBURST;
  assign data_M_AXI_1_arcache[3:0] = data_M_AXI_1_1_conn_ARCACHE;
  assign data_M_AXI_1_arlen[7:0] = data_M_AXI_1_1_conn_ARLEN;
  assign data_M_AXI_1_arlock = data_M_AXI_1_1_conn_ARLOCK;
  assign data_M_AXI_1_arprot[2:0] = data_M_AXI_1_1_conn_ARPROT;
  assign data_M_AXI_1_arqos[3:0] = data_M_AXI_1_1_conn_ARQOS;
  assign data_M_AXI_1_arregion[3:0] = data_M_AXI_1_1_conn_ARREGION;
  assign data_M_AXI_1_arsize[2:0] = data_M_AXI_1_1_conn_ARSIZE;
  assign data_M_AXI_1_arvalid = data_M_AXI_1_1_conn_ARVALID;
  assign data_M_AXI_1_awaddr[63:0] = data_M_AXI_1_1_conn_AWADDR;
  assign data_M_AXI_1_awburst[1:0] = data_M_AXI_1_1_conn_AWBURST;
  assign data_M_AXI_1_awcache[3:0] = data_M_AXI_1_1_conn_AWCACHE;
  assign data_M_AXI_1_awlen[7:0] = data_M_AXI_1_1_conn_AWLEN;
  assign data_M_AXI_1_awlock = data_M_AXI_1_1_conn_AWLOCK;
  assign data_M_AXI_1_awprot[2:0] = data_M_AXI_1_1_conn_AWPROT;
  assign data_M_AXI_1_awqos[3:0] = data_M_AXI_1_1_conn_AWQOS;
  assign data_M_AXI_1_awregion[3:0] = data_M_AXI_1_1_conn_AWREGION;
  assign data_M_AXI_1_awsize[2:0] = data_M_AXI_1_1_conn_AWSIZE;
  assign data_M_AXI_1_awvalid = data_M_AXI_1_1_conn_AWVALID;
  assign data_M_AXI_1_bready = data_M_AXI_1_1_conn_BREADY;
  assign data_M_AXI_1_rready = data_M_AXI_1_1_conn_RREADY;
  assign data_M_AXI_1_wdata[511:0] = data_M_AXI_1_1_conn_WDATA;
  assign data_M_AXI_1_wlast = data_M_AXI_1_1_conn_WLAST;
  assign data_M_AXI_1_wstrb[63:0] = data_M_AXI_1_1_conn_WSTRB;
  assign data_M_AXI_1_wvalid = data_M_AXI_1_1_conn_WVALID;
  assign data_M_AXI_2_1_conn_ARREADY = data_M_AXI_2_arready;
  assign data_M_AXI_2_1_conn_AWREADY = data_M_AXI_2_awready;
  assign data_M_AXI_2_1_conn_BRESP = data_M_AXI_2_bresp[1:0];
  assign data_M_AXI_2_1_conn_BVALID = data_M_AXI_2_bvalid;
  assign data_M_AXI_2_1_conn_RDATA = data_M_AXI_2_rdata[511:0];
  assign data_M_AXI_2_1_conn_RLAST = data_M_AXI_2_rlast;
  assign data_M_AXI_2_1_conn_RRESP = data_M_AXI_2_rresp[1:0];
  assign data_M_AXI_2_1_conn_RVALID = data_M_AXI_2_rvalid;
  assign data_M_AXI_2_1_conn_WREADY = data_M_AXI_2_wready;
  assign data_M_AXI_2_araddr[63:0] = data_M_AXI_2_1_conn_ARADDR;
  assign data_M_AXI_2_arburst[1:0] = data_M_AXI_2_1_conn_ARBURST;
  assign data_M_AXI_2_arcache[3:0] = data_M_AXI_2_1_conn_ARCACHE;
  assign data_M_AXI_2_arlen[7:0] = data_M_AXI_2_1_conn_ARLEN;
  assign data_M_AXI_2_arlock = data_M_AXI_2_1_conn_ARLOCK;
  assign data_M_AXI_2_arprot[2:0] = data_M_AXI_2_1_conn_ARPROT;
  assign data_M_AXI_2_arqos[3:0] = data_M_AXI_2_1_conn_ARQOS;
  assign data_M_AXI_2_arregion[3:0] = data_M_AXI_2_1_conn_ARREGION;
  assign data_M_AXI_2_arsize[2:0] = data_M_AXI_2_1_conn_ARSIZE;
  assign data_M_AXI_2_arvalid = data_M_AXI_2_1_conn_ARVALID;
  assign data_M_AXI_2_awaddr[63:0] = data_M_AXI_2_1_conn_AWADDR;
  assign data_M_AXI_2_awburst[1:0] = data_M_AXI_2_1_conn_AWBURST;
  assign data_M_AXI_2_awcache[3:0] = data_M_AXI_2_1_conn_AWCACHE;
  assign data_M_AXI_2_awlen[7:0] = data_M_AXI_2_1_conn_AWLEN;
  assign data_M_AXI_2_awlock = data_M_AXI_2_1_conn_AWLOCK;
  assign data_M_AXI_2_awprot[2:0] = data_M_AXI_2_1_conn_AWPROT;
  assign data_M_AXI_2_awqos[3:0] = data_M_AXI_2_1_conn_AWQOS;
  assign data_M_AXI_2_awregion[3:0] = data_M_AXI_2_1_conn_AWREGION;
  assign data_M_AXI_2_awsize[2:0] = data_M_AXI_2_1_conn_AWSIZE;
  assign data_M_AXI_2_awvalid = data_M_AXI_2_1_conn_AWVALID;
  assign data_M_AXI_2_bready = data_M_AXI_2_1_conn_BREADY;
  assign data_M_AXI_2_rready = data_M_AXI_2_1_conn_RREADY;
  assign data_M_AXI_2_wdata[511:0] = data_M_AXI_2_1_conn_WDATA;
  assign data_M_AXI_2_wlast = data_M_AXI_2_1_conn_WLAST;
  assign data_M_AXI_2_wstrb[63:0] = data_M_AXI_2_1_conn_WSTRB;
  assign data_M_AXI_2_wvalid = data_M_AXI_2_1_conn_WVALID;
  assign data_M_AXI_3_1_conn_ARREADY = data_M_AXI_3_arready;
  assign data_M_AXI_3_1_conn_AWREADY = data_M_AXI_3_awready;
  assign data_M_AXI_3_1_conn_BRESP = data_M_AXI_3_bresp[1:0];
  assign data_M_AXI_3_1_conn_BVALID = data_M_AXI_3_bvalid;
  assign data_M_AXI_3_1_conn_RDATA = data_M_AXI_3_rdata[511:0];
  assign data_M_AXI_3_1_conn_RLAST = data_M_AXI_3_rlast;
  assign data_M_AXI_3_1_conn_RRESP = data_M_AXI_3_rresp[1:0];
  assign data_M_AXI_3_1_conn_RVALID = data_M_AXI_3_rvalid;
  assign data_M_AXI_3_1_conn_WREADY = data_M_AXI_3_wready;
  assign data_M_AXI_3_araddr[63:0] = data_M_AXI_3_1_conn_ARADDR;
  assign data_M_AXI_3_arburst[1:0] = data_M_AXI_3_1_conn_ARBURST;
  assign data_M_AXI_3_arcache[3:0] = data_M_AXI_3_1_conn_ARCACHE;
  assign data_M_AXI_3_arlen[7:0] = data_M_AXI_3_1_conn_ARLEN;
  assign data_M_AXI_3_arlock = data_M_AXI_3_1_conn_ARLOCK;
  assign data_M_AXI_3_arprot[2:0] = data_M_AXI_3_1_conn_ARPROT;
  assign data_M_AXI_3_arqos[3:0] = data_M_AXI_3_1_conn_ARQOS;
  assign data_M_AXI_3_arregion[3:0] = data_M_AXI_3_1_conn_ARREGION;
  assign data_M_AXI_3_arsize[2:0] = data_M_AXI_3_1_conn_ARSIZE;
  assign data_M_AXI_3_arvalid = data_M_AXI_3_1_conn_ARVALID;
  assign data_M_AXI_3_awaddr[63:0] = data_M_AXI_3_1_conn_AWADDR;
  assign data_M_AXI_3_awburst[1:0] = data_M_AXI_3_1_conn_AWBURST;
  assign data_M_AXI_3_awcache[3:0] = data_M_AXI_3_1_conn_AWCACHE;
  assign data_M_AXI_3_awlen[7:0] = data_M_AXI_3_1_conn_AWLEN;
  assign data_M_AXI_3_awlock = data_M_AXI_3_1_conn_AWLOCK;
  assign data_M_AXI_3_awprot[2:0] = data_M_AXI_3_1_conn_AWPROT;
  assign data_M_AXI_3_awqos[3:0] = data_M_AXI_3_1_conn_AWQOS;
  assign data_M_AXI_3_awregion[3:0] = data_M_AXI_3_1_conn_AWREGION;
  assign data_M_AXI_3_awsize[2:0] = data_M_AXI_3_1_conn_AWSIZE;
  assign data_M_AXI_3_awvalid = data_M_AXI_3_1_conn_AWVALID;
  assign data_M_AXI_3_bready = data_M_AXI_3_1_conn_BREADY;
  assign data_M_AXI_3_rready = data_M_AXI_3_1_conn_RREADY;
  assign data_M_AXI_3_wdata[511:0] = data_M_AXI_3_1_conn_WDATA;
  assign data_M_AXI_3_wlast = data_M_AXI_3_1_conn_WLAST;
  assign data_M_AXI_3_wstrb[63:0] = data_M_AXI_3_1_conn_WSTRB;
  assign data_M_AXI_3_wvalid = data_M_AXI_3_1_conn_WVALID;
  assign data_M_AXI_4_1_conn_ARREADY = data_M_AXI_4_arready;
  assign data_M_AXI_4_1_conn_AWREADY = data_M_AXI_4_awready;
  assign data_M_AXI_4_1_conn_BRESP = data_M_AXI_4_bresp[1:0];
  assign data_M_AXI_4_1_conn_BVALID = data_M_AXI_4_bvalid;
  assign data_M_AXI_4_1_conn_RDATA = data_M_AXI_4_rdata[511:0];
  assign data_M_AXI_4_1_conn_RLAST = data_M_AXI_4_rlast;
  assign data_M_AXI_4_1_conn_RRESP = data_M_AXI_4_rresp[1:0];
  assign data_M_AXI_4_1_conn_RVALID = data_M_AXI_4_rvalid;
  assign data_M_AXI_4_1_conn_WREADY = data_M_AXI_4_wready;
  assign data_M_AXI_4_araddr[63:0] = data_M_AXI_4_1_conn_ARADDR;
  assign data_M_AXI_4_arburst[1:0] = data_M_AXI_4_1_conn_ARBURST;
  assign data_M_AXI_4_arcache[3:0] = data_M_AXI_4_1_conn_ARCACHE;
  assign data_M_AXI_4_arlen[7:0] = data_M_AXI_4_1_conn_ARLEN;
  assign data_M_AXI_4_arlock = data_M_AXI_4_1_conn_ARLOCK;
  assign data_M_AXI_4_arprot[2:0] = data_M_AXI_4_1_conn_ARPROT;
  assign data_M_AXI_4_arqos[3:0] = data_M_AXI_4_1_conn_ARQOS;
  assign data_M_AXI_4_arregion[3:0] = data_M_AXI_4_1_conn_ARREGION;
  assign data_M_AXI_4_arsize[2:0] = data_M_AXI_4_1_conn_ARSIZE;
  assign data_M_AXI_4_arvalid = data_M_AXI_4_1_conn_ARVALID;
  assign data_M_AXI_4_awaddr[63:0] = data_M_AXI_4_1_conn_AWADDR;
  assign data_M_AXI_4_awburst[1:0] = data_M_AXI_4_1_conn_AWBURST;
  assign data_M_AXI_4_awcache[3:0] = data_M_AXI_4_1_conn_AWCACHE;
  assign data_M_AXI_4_awlen[7:0] = data_M_AXI_4_1_conn_AWLEN;
  assign data_M_AXI_4_awlock = data_M_AXI_4_1_conn_AWLOCK;
  assign data_M_AXI_4_awprot[2:0] = data_M_AXI_4_1_conn_AWPROT;
  assign data_M_AXI_4_awqos[3:0] = data_M_AXI_4_1_conn_AWQOS;
  assign data_M_AXI_4_awregion[3:0] = data_M_AXI_4_1_conn_AWREGION;
  assign data_M_AXI_4_awsize[2:0] = data_M_AXI_4_1_conn_AWSIZE;
  assign data_M_AXI_4_awvalid = data_M_AXI_4_1_conn_AWVALID;
  assign data_M_AXI_4_bready = data_M_AXI_4_1_conn_BREADY;
  assign data_M_AXI_4_rready = data_M_AXI_4_1_conn_RREADY;
  assign data_M_AXI_4_wdata[511:0] = data_M_AXI_4_1_conn_WDATA;
  assign data_M_AXI_4_wlast = data_M_AXI_4_1_conn_WLAST;
  assign data_M_AXI_4_wstrb[63:0] = data_M_AXI_4_1_conn_WSTRB;
  assign data_M_AXI_4_wvalid = data_M_AXI_4_1_conn_WVALID;
  assign ddr_default_clk_0 = clk_reset_wizard_ddr_default_clk;
  assign ddr_default_rst_0 = clk_reset_wizard_ddr_default_rst;
  assign dma_pcie_aclk = pcie_dma_aclk;
  assign dma_pcie_arst[0] = psr_dma_pcie_aclk_mb_reset;
  assign irq_cu_1 = irq_cu[127:0];
  assign userpf_control_M_AXI_araddr[63:0] = connect_to_es_cu_M01_AXI_ARADDR;
  assign userpf_control_M_AXI_arprot[2:0] = connect_to_es_cu_M01_AXI_ARPROT;
  assign userpf_control_M_AXI_arvalid[0] = connect_to_es_cu_M01_AXI_ARVALID;
  assign userpf_control_M_AXI_awaddr[63:0] = connect_to_es_cu_M01_AXI_AWADDR;
  assign userpf_control_M_AXI_awprot[2:0] = connect_to_es_cu_M01_AXI_AWPROT;
  assign userpf_control_M_AXI_awvalid[0] = connect_to_es_cu_M01_AXI_AWVALID;
  assign userpf_control_M_AXI_bready[0] = connect_to_es_cu_M01_AXI_BREADY;
  assign userpf_control_M_AXI_rready[0] = connect_to_es_cu_M01_AXI_RREADY;
  assign userpf_control_M_AXI_wdata[31:0] = connect_to_es_cu_M01_AXI_WDATA;
  assign userpf_control_M_AXI_wstrb[3:0] = connect_to_es_cu_M01_AXI_WSTRB;
  assign userpf_control_M_AXI_wvalid[0] = connect_to_es_cu_M01_AXI_WVALID;
  clk_reset_wizard_imp_1N4AMRV clk_reset_wizard
       (.clkwiz_kernel2_clk(clk_reset_wizard_clkwiz_kernel2_clk),
        .clkwiz_kernel2_rst(clk_reset_wizard_clkwiz_kernel2_rst),
        .clkwiz_kernel_clk(clk_reset_wizard_clkwiz_kernel_clk),
        .clkwiz_kernel_rst(clk_reset_wizard_clkwiz_kernel_rst),
        .ddr_default_clk(clk_reset_wizard_ddr_default_clk),
        .ddr_default_rst(clk_reset_wizard_ddr_default_rst));
  emu_connect_to_es_0 connect_to_es
       (.ACLK(pcie_dma_aclk),
        .ARESETN(psr_dma_pcie_aclk_mb_reset),
        .M00_ACLK(pcie_dma_aclk),
        .M00_ARESETN(psr_dma_pcie_aclk_mb_reset),
        .M00_AXI_araddr(connect_to_es_M00_AXI_ARADDR),
        .M00_AXI_arprot(connect_to_es_M00_AXI_ARPROT),
        .M00_AXI_arready(connect_to_es_M00_AXI_ARREADY),
        .M00_AXI_arvalid(connect_to_es_M00_AXI_ARVALID),
        .M00_AXI_awaddr(connect_to_es_M00_AXI_AWADDR),
        .M00_AXI_awprot(connect_to_es_M00_AXI_AWPROT),
        .M00_AXI_awready(connect_to_es_M00_AXI_AWREADY),
        .M00_AXI_awvalid(connect_to_es_M00_AXI_AWVALID),
        .M00_AXI_bready(connect_to_es_M00_AXI_BREADY),
        .M00_AXI_bresp(connect_to_es_M00_AXI_BRESP),
        .M00_AXI_bvalid(connect_to_es_M00_AXI_BVALID),
        .M00_AXI_rdata(connect_to_es_M00_AXI_RDATA),
        .M00_AXI_rready(connect_to_es_M00_AXI_RREADY),
        .M00_AXI_rresp(connect_to_es_M00_AXI_RRESP),
        .M00_AXI_rvalid(connect_to_es_M00_AXI_RVALID),
        .M00_AXI_wdata(connect_to_es_M00_AXI_WDATA),
        .M00_AXI_wready(connect_to_es_M00_AXI_WREADY),
        .M00_AXI_wstrb(connect_to_es_M00_AXI_WSTRB),
        .M00_AXI_wvalid(connect_to_es_M00_AXI_WVALID),
        .M01_ACLK(pcie_dma_aclk),
        .M01_ARESETN(psr_dma_pcie_aclk_mb_reset),
        .M01_AXI_araddr(connect_to_es_M01_AXI_ARADDR),
        .M01_AXI_arprot(connect_to_es_M01_AXI_ARPROT),
        .M01_AXI_arready(connect_to_es_M01_AXI_ARREADY),
        .M01_AXI_arvalid(connect_to_es_M01_AXI_ARVALID),
        .M01_AXI_awaddr(connect_to_es_M01_AXI_AWADDR),
        .M01_AXI_awprot(connect_to_es_M01_AXI_AWPROT),
        .M01_AXI_awready(connect_to_es_M01_AXI_AWREADY),
        .M01_AXI_awvalid(connect_to_es_M01_AXI_AWVALID),
        .M01_AXI_bready(connect_to_es_M01_AXI_BREADY),
        .M01_AXI_bresp(connect_to_es_M01_AXI_BRESP),
        .M01_AXI_bvalid(connect_to_es_M01_AXI_BVALID),
        .M01_AXI_rdata(connect_to_es_M01_AXI_RDATA),
        .M01_AXI_rready(connect_to_es_M01_AXI_RREADY),
        .M01_AXI_rresp(connect_to_es_M01_AXI_RRESP),
        .M01_AXI_rvalid(connect_to_es_M01_AXI_RVALID),
        .M01_AXI_wdata(connect_to_es_M01_AXI_WDATA),
        .M01_AXI_wready(connect_to_es_M01_AXI_WREADY),
        .M01_AXI_wstrb(connect_to_es_M01_AXI_WSTRB),
        .M01_AXI_wvalid(connect_to_es_M01_AXI_WVALID),
        .M02_ACLK(pcie_dma_aclk),
        .M02_ARESETN(psr_dma_pcie_aclk_mb_reset),
        .M02_AXI_araddr(connect_to_es_M02_AXI_ARADDR),
        .M02_AXI_arready(connect_to_es_M02_AXI_ARREADY),
        .M02_AXI_arvalid(connect_to_es_M02_AXI_ARVALID),
        .M02_AXI_awaddr(connect_to_es_M02_AXI_AWADDR),
        .M02_AXI_awready(connect_to_es_M02_AXI_AWREADY),
        .M02_AXI_awvalid(connect_to_es_M02_AXI_AWVALID),
        .M02_AXI_bready(connect_to_es_M02_AXI_BREADY),
        .M02_AXI_bresp(connect_to_es_M02_AXI_BRESP),
        .M02_AXI_bvalid(connect_to_es_M02_AXI_BVALID),
        .M02_AXI_rdata(connect_to_es_M02_AXI_RDATA),
        .M02_AXI_rready(connect_to_es_M02_AXI_RREADY),
        .M02_AXI_rresp(connect_to_es_M02_AXI_RRESP),
        .M02_AXI_rvalid(connect_to_es_M02_AXI_RVALID),
        .M02_AXI_wdata(connect_to_es_M02_AXI_WDATA),
        .M02_AXI_wready(connect_to_es_M02_AXI_WREADY),
        .M02_AXI_wstrb(connect_to_es_M02_AXI_WSTRB),
        .M02_AXI_wvalid(connect_to_es_M02_AXI_WVALID),
        .S00_ACLK(pcie_dma_aclk),
        .S00_ARESETN(psr_dma_pcie_aclk_mb_reset),
        .S00_AXI_araddr(connect_to_es_cu_M00_AXI_ARADDR),
        .S00_AXI_arprot(connect_to_es_cu_M00_AXI_ARPROT),
        .S00_AXI_arready(connect_to_es_cu_M00_AXI_ARREADY),
        .S00_AXI_arvalid(connect_to_es_cu_M00_AXI_ARVALID),
        .S00_AXI_awaddr(connect_to_es_cu_M00_AXI_AWADDR),
        .S00_AXI_awprot(connect_to_es_cu_M00_AXI_AWPROT),
        .S00_AXI_awready(connect_to_es_cu_M00_AXI_AWREADY),
        .S00_AXI_awvalid(connect_to_es_cu_M00_AXI_AWVALID),
        .S00_AXI_bready(connect_to_es_cu_M00_AXI_BREADY),
        .S00_AXI_bresp(connect_to_es_cu_M00_AXI_BRESP),
        .S00_AXI_bvalid(connect_to_es_cu_M00_AXI_BVALID),
        .S00_AXI_rdata(connect_to_es_cu_M00_AXI_RDATA),
        .S00_AXI_rready(connect_to_es_cu_M00_AXI_RREADY),
        .S00_AXI_rresp(connect_to_es_cu_M00_AXI_RRESP),
        .S00_AXI_rvalid(connect_to_es_cu_M00_AXI_RVALID),
        .S00_AXI_wdata(connect_to_es_cu_M00_AXI_WDATA),
        .S00_AXI_wready(connect_to_es_cu_M00_AXI_WREADY),
        .S00_AXI_wstrb(connect_to_es_cu_M00_AXI_WSTRB),
        .S00_AXI_wvalid(connect_to_es_cu_M00_AXI_WVALID),
        .S01_ACLK(pcie_dma_aclk),
        .S01_ARESETN(psr_dma_pcie_aclk_mb_reset),
        .S01_AXI_araddr(embedded_schedular_m_axi_CQDma_ARADDR),
        .S01_AXI_arburst(embedded_schedular_m_axi_CQDma_ARBURST),
        .S01_AXI_arcache(embedded_schedular_m_axi_CQDma_ARCACHE),
        .S01_AXI_arlen(embedded_schedular_m_axi_CQDma_ARLEN),
        .S01_AXI_arlock(embedded_schedular_m_axi_CQDma_ARLOCK),
        .S01_AXI_arprot(embedded_schedular_m_axi_CQDma_ARPROT),
        .S01_AXI_arqos(embedded_schedular_m_axi_CQDma_ARQOS),
        .S01_AXI_arready(embedded_schedular_m_axi_CQDma_ARREADY),
        .S01_AXI_arsize(embedded_schedular_m_axi_CQDma_ARSIZE),
        .S01_AXI_arvalid(embedded_schedular_m_axi_CQDma_ARVALID),
        .S01_AXI_awaddr(embedded_schedular_m_axi_CQDma_AWADDR),
        .S01_AXI_awburst(embedded_schedular_m_axi_CQDma_AWBURST),
        .S01_AXI_awcache(embedded_schedular_m_axi_CQDma_AWCACHE),
        .S01_AXI_awlen(embedded_schedular_m_axi_CQDma_AWLEN),
        .S01_AXI_awlock(embedded_schedular_m_axi_CQDma_AWLOCK),
        .S01_AXI_awprot(embedded_schedular_m_axi_CQDma_AWPROT),
        .S01_AXI_awqos(embedded_schedular_m_axi_CQDma_AWQOS),
        .S01_AXI_awready(embedded_schedular_m_axi_CQDma_AWREADY),
        .S01_AXI_awsize(embedded_schedular_m_axi_CQDma_AWSIZE),
        .S01_AXI_awvalid(embedded_schedular_m_axi_CQDma_AWVALID),
        .S01_AXI_bready(embedded_schedular_m_axi_CQDma_BREADY),
        .S01_AXI_bresp(embedded_schedular_m_axi_CQDma_BRESP),
        .S01_AXI_bvalid(embedded_schedular_m_axi_CQDma_BVALID),
        .S01_AXI_rdata(embedded_schedular_m_axi_CQDma_RDATA),
        .S01_AXI_rlast(embedded_schedular_m_axi_CQDma_RLAST),
        .S01_AXI_rready(embedded_schedular_m_axi_CQDma_RREADY),
        .S01_AXI_rresp(embedded_schedular_m_axi_CQDma_RRESP),
        .S01_AXI_rvalid(embedded_schedular_m_axi_CQDma_RVALID),
        .S01_AXI_wdata(embedded_schedular_m_axi_CQDma_WDATA),
        .S01_AXI_wlast(embedded_schedular_m_axi_CQDma_WLAST),
        .S01_AXI_wready(embedded_schedular_m_axi_CQDma_WREADY),
        .S01_AXI_wstrb(embedded_schedular_m_axi_CQDma_WSTRB),
        .S01_AXI_wvalid(embedded_schedular_m_axi_CQDma_WVALID));
  emu_connect_to_es_cu_0 connect_to_es_cu
       (.ACLK(pcie_dma_aclk),
        .ARESETN(psr_dma_pcie_aclk_mb_reset),
        .M00_ACLK(pcie_dma_aclk),
        .M00_ARESETN(psr_dma_pcie_aclk_mb_reset),
        .M00_AXI_araddr(connect_to_es_cu_M00_AXI_ARADDR),
        .M00_AXI_arprot(connect_to_es_cu_M00_AXI_ARPROT),
        .M00_AXI_arready(connect_to_es_cu_M00_AXI_ARREADY),
        .M00_AXI_arvalid(connect_to_es_cu_M00_AXI_ARVALID),
        .M00_AXI_awaddr(connect_to_es_cu_M00_AXI_AWADDR),
        .M00_AXI_awprot(connect_to_es_cu_M00_AXI_AWPROT),
        .M00_AXI_awready(connect_to_es_cu_M00_AXI_AWREADY),
        .M00_AXI_awvalid(connect_to_es_cu_M00_AXI_AWVALID),
        .M00_AXI_bready(connect_to_es_cu_M00_AXI_BREADY),
        .M00_AXI_bresp(connect_to_es_cu_M00_AXI_BRESP),
        .M00_AXI_bvalid(connect_to_es_cu_M00_AXI_BVALID),
        .M00_AXI_rdata(connect_to_es_cu_M00_AXI_RDATA),
        .M00_AXI_rready(connect_to_es_cu_M00_AXI_RREADY),
        .M00_AXI_rresp(connect_to_es_cu_M00_AXI_RRESP),
        .M00_AXI_rvalid(connect_to_es_cu_M00_AXI_RVALID),
        .M00_AXI_wdata(connect_to_es_cu_M00_AXI_WDATA),
        .M00_AXI_wready(connect_to_es_cu_M00_AXI_WREADY),
        .M00_AXI_wstrb(connect_to_es_cu_M00_AXI_WSTRB),
        .M00_AXI_wvalid(connect_to_es_cu_M00_AXI_WVALID),
        .M01_ACLK(pcie_dma_aclk),
        .M01_ARESETN(psr_dma_pcie_aclk_mb_reset),
        .M01_AXI_araddr(connect_to_es_cu_M01_AXI_ARADDR),
        .M01_AXI_arprot(connect_to_es_cu_M01_AXI_ARPROT),
        .M01_AXI_arready(connect_to_es_cu_M01_AXI_ARREADY),
        .M01_AXI_arvalid(connect_to_es_cu_M01_AXI_ARVALID),
        .M01_AXI_awaddr(connect_to_es_cu_M01_AXI_AWADDR),
        .M01_AXI_awprot(connect_to_es_cu_M01_AXI_AWPROT),
        .M01_AXI_awready(connect_to_es_cu_M01_AXI_AWREADY),
        .M01_AXI_awvalid(connect_to_es_cu_M01_AXI_AWVALID),
        .M01_AXI_bready(connect_to_es_cu_M01_AXI_BREADY),
        .M01_AXI_bresp(connect_to_es_cu_M01_AXI_BRESP),
        .M01_AXI_bvalid(connect_to_es_cu_M01_AXI_BVALID),
        .M01_AXI_rdata(connect_to_es_cu_M01_AXI_RDATA),
        .M01_AXI_rready(connect_to_es_cu_M01_AXI_RREADY),
        .M01_AXI_rresp(connect_to_es_cu_M01_AXI_RRESP),
        .M01_AXI_rvalid(connect_to_es_cu_M01_AXI_RVALID),
        .M01_AXI_wdata(connect_to_es_cu_M01_AXI_WDATA),
        .M01_AXI_wready(connect_to_es_cu_M01_AXI_WREADY),
        .M01_AXI_wstrb(connect_to_es_cu_M01_AXI_WSTRB),
        .M01_AXI_wvalid(connect_to_es_cu_M01_AXI_WVALID),
        .M02_ACLK(pcie_dma_aclk),
        .M02_ARESETN(psr_dma_pcie_aclk_mb_reset),
        .M02_AXI_araddr(connect_to_es_cu_M02_AXI_ARADDR),
        .M02_AXI_arready(connect_to_es_cu_M02_AXI_ARREADY),
        .M02_AXI_arvalid(connect_to_es_cu_M02_AXI_ARVALID),
        .M02_AXI_awaddr(connect_to_es_cu_M02_AXI_AWADDR),
        .M02_AXI_awready(connect_to_es_cu_M02_AXI_AWREADY),
        .M02_AXI_awvalid(connect_to_es_cu_M02_AXI_AWVALID),
        .M02_AXI_bready(connect_to_es_cu_M02_AXI_BREADY),
        .M02_AXI_bresp(connect_to_es_cu_M02_AXI_BRESP),
        .M02_AXI_bvalid(connect_to_es_cu_M02_AXI_BVALID),
        .M02_AXI_rdata(connect_to_es_cu_M02_AXI_RDATA),
        .M02_AXI_rready(connect_to_es_cu_M02_AXI_RREADY),
        .M02_AXI_rresp(connect_to_es_cu_M02_AXI_RRESP),
        .M02_AXI_rvalid(connect_to_es_cu_M02_AXI_RVALID),
        .M02_AXI_wdata(connect_to_es_cu_M02_AXI_WDATA),
        .M02_AXI_wready(connect_to_es_cu_M02_AXI_WREADY),
        .M02_AXI_wstrb(connect_to_es_cu_M02_AXI_WSTRB),
        .M02_AXI_wvalid(connect_to_es_cu_M02_AXI_WVALID),
        .M03_ACLK(pcie_dma_aclk),
        .M03_ARESETN(psr_dma_pcie_aclk_mb_reset),
        .M03_AXI_araddr(connect_to_es_cu_M03_AXI_ARADDR),
        .M03_AXI_arready(connect_to_es_cu_M03_AXI_ARREADY),
        .M03_AXI_arvalid(connect_to_es_cu_M03_AXI_ARVALID),
        .M03_AXI_awaddr(connect_to_es_cu_M03_AXI_AWADDR),
        .M03_AXI_awready(connect_to_es_cu_M03_AXI_AWREADY),
        .M03_AXI_awvalid(connect_to_es_cu_M03_AXI_AWVALID),
        .M03_AXI_bready(connect_to_es_cu_M03_AXI_BREADY),
        .M03_AXI_bresp(connect_to_es_cu_M03_AXI_BRESP),
        .M03_AXI_bvalid(connect_to_es_cu_M03_AXI_BVALID),
        .M03_AXI_rdata(connect_to_es_cu_M03_AXI_RDATA),
        .M03_AXI_rready(connect_to_es_cu_M03_AXI_RREADY),
        .M03_AXI_rresp(connect_to_es_cu_M03_AXI_RRESP),
        .M03_AXI_rvalid(connect_to_es_cu_M03_AXI_RVALID),
        .M03_AXI_wdata(connect_to_es_cu_M03_AXI_WDATA),
        .M03_AXI_wready(connect_to_es_cu_M03_AXI_WREADY),
        .M03_AXI_wstrb(connect_to_es_cu_M03_AXI_WSTRB),
        .M03_AXI_wvalid(connect_to_es_cu_M03_AXI_WVALID),
        .M04_ACLK(pcie_dma_aclk),
        .M04_ARESETN(psr_dma_pcie_aclk_mb_reset),
        .M04_AXI_araddr(connect_to_es_cu_M04_AXI_ARADDR),
        .M04_AXI_arready(connect_to_es_cu_M04_AXI_ARREADY),
        .M04_AXI_arvalid(connect_to_es_cu_M04_AXI_ARVALID),
        .M04_AXI_awaddr(connect_to_es_cu_M04_AXI_AWADDR),
        .M04_AXI_awready(connect_to_es_cu_M04_AXI_AWREADY),
        .M04_AXI_awvalid(connect_to_es_cu_M04_AXI_AWVALID),
        .M04_AXI_bready(connect_to_es_cu_M04_AXI_BREADY),
        .M04_AXI_bresp(connect_to_es_cu_M04_AXI_BRESP),
        .M04_AXI_bvalid(connect_to_es_cu_M04_AXI_BVALID),
        .M04_AXI_rdata(connect_to_es_cu_M04_AXI_RDATA),
        .M04_AXI_rready(connect_to_es_cu_M04_AXI_RREADY),
        .M04_AXI_rresp(connect_to_es_cu_M04_AXI_RRESP),
        .M04_AXI_rvalid(connect_to_es_cu_M04_AXI_RVALID),
        .M04_AXI_wdata(connect_to_es_cu_M04_AXI_WDATA),
        .M04_AXI_wready(connect_to_es_cu_M04_AXI_WREADY),
        .M04_AXI_wstrb(connect_to_es_cu_M04_AXI_WSTRB),
        .M04_AXI_wvalid(connect_to_es_cu_M04_AXI_WVALID),
        .M05_ACLK(pcie_dma_aclk),
        .M05_ARESETN(psr_dma_pcie_aclk_mb_reset),
        .M05_AXI_araddr(connect_to_es_cu_M05_AXI_ARADDR),
        .M05_AXI_arready(connect_to_es_cu_M05_AXI_ARREADY),
        .M05_AXI_arvalid(connect_to_es_cu_M05_AXI_ARVALID),
        .M05_AXI_awaddr(connect_to_es_cu_M05_AXI_AWADDR),
        .M05_AXI_awready(connect_to_es_cu_M05_AXI_AWREADY),
        .M05_AXI_awvalid(connect_to_es_cu_M05_AXI_AWVALID),
        .M05_AXI_bready(connect_to_es_cu_M05_AXI_BREADY),
        .M05_AXI_bresp(connect_to_es_cu_M05_AXI_BRESP),
        .M05_AXI_bvalid(connect_to_es_cu_M05_AXI_BVALID),
        .M05_AXI_rdata(connect_to_es_cu_M05_AXI_RDATA),
        .M05_AXI_rready(connect_to_es_cu_M05_AXI_RREADY),
        .M05_AXI_rresp(connect_to_es_cu_M05_AXI_RRESP),
        .M05_AXI_rvalid(connect_to_es_cu_M05_AXI_RVALID),
        .M05_AXI_wdata(connect_to_es_cu_M05_AXI_WDATA),
        .M05_AXI_wready(connect_to_es_cu_M05_AXI_WREADY),
        .M05_AXI_wstrb(connect_to_es_cu_M05_AXI_WSTRB),
        .M05_AXI_wvalid(connect_to_es_cu_M05_AXI_WVALID),
        .S00_ACLK(pcie_dma_aclk),
        .S00_ARESETN(psr_dma_pcie_aclk_mb_reset),
        .S00_AXI_araddr(sim_xdma_0_M_AXICTRL_ARADDR),
        .S00_AXI_arprot(sim_xdma_0_M_AXICTRL_ARPROT),
        .S00_AXI_arready(sim_xdma_0_M_AXICTRL_ARREADY),
        .S00_AXI_arvalid(sim_xdma_0_M_AXICTRL_ARVALID),
        .S00_AXI_awaddr(sim_xdma_0_M_AXICTRL_AWADDR),
        .S00_AXI_awprot(sim_xdma_0_M_AXICTRL_AWPROT),
        .S00_AXI_awready(sim_xdma_0_M_AXICTRL_AWREADY),
        .S00_AXI_awvalid(sim_xdma_0_M_AXICTRL_AWVALID),
        .S00_AXI_bready(sim_xdma_0_M_AXICTRL_BREADY),
        .S00_AXI_bresp(sim_xdma_0_M_AXICTRL_BRESP),
        .S00_AXI_bvalid(sim_xdma_0_M_AXICTRL_BVALID),
        .S00_AXI_rdata(sim_xdma_0_M_AXICTRL_RDATA),
        .S00_AXI_rready(sim_xdma_0_M_AXICTRL_RREADY),
        .S00_AXI_rresp(sim_xdma_0_M_AXICTRL_RRESP),
        .S00_AXI_rvalid(sim_xdma_0_M_AXICTRL_RVALID),
        .S00_AXI_wdata(sim_xdma_0_M_AXICTRL_WDATA),
        .S00_AXI_wready(sim_xdma_0_M_AXICTRL_WREADY),
        .S00_AXI_wstrb(sim_xdma_0_M_AXICTRL_WSTRB),
        .S00_AXI_wvalid(sim_xdma_0_M_AXICTRL_WVALID),
        .S01_ACLK(pcie_dma_aclk),
        .S01_ARESETN(psr_dma_pcie_aclk_mb_reset),
        .S01_AXI_araddr(embedded_schedular_m_axi_a_ARADDR),
        .S01_AXI_arburst(embedded_schedular_m_axi_a_ARBURST),
        .S01_AXI_arcache(embedded_schedular_m_axi_a_ARCACHE),
        .S01_AXI_arlen(embedded_schedular_m_axi_a_ARLEN),
        .S01_AXI_arlock(embedded_schedular_m_axi_a_ARLOCK),
        .S01_AXI_arprot(embedded_schedular_m_axi_a_ARPROT),
        .S01_AXI_arqos(embedded_schedular_m_axi_a_ARQOS),
        .S01_AXI_arready(embedded_schedular_m_axi_a_ARREADY),
        .S01_AXI_arsize(embedded_schedular_m_axi_a_ARSIZE),
        .S01_AXI_arvalid(embedded_schedular_m_axi_a_ARVALID),
        .S01_AXI_awaddr(embedded_schedular_m_axi_a_AWADDR),
        .S01_AXI_awburst(embedded_schedular_m_axi_a_AWBURST),
        .S01_AXI_awcache(embedded_schedular_m_axi_a_AWCACHE),
        .S01_AXI_awlen(embedded_schedular_m_axi_a_AWLEN),
        .S01_AXI_awlock(embedded_schedular_m_axi_a_AWLOCK),
        .S01_AXI_awprot(embedded_schedular_m_axi_a_AWPROT),
        .S01_AXI_awqos(embedded_schedular_m_axi_a_AWQOS),
        .S01_AXI_awready(embedded_schedular_m_axi_a_AWREADY),
        .S01_AXI_awsize(embedded_schedular_m_axi_a_AWSIZE),
        .S01_AXI_awvalid(embedded_schedular_m_axi_a_AWVALID),
        .S01_AXI_bready(embedded_schedular_m_axi_a_BREADY),
        .S01_AXI_bresp(embedded_schedular_m_axi_a_BRESP),
        .S01_AXI_bvalid(embedded_schedular_m_axi_a_BVALID),
        .S01_AXI_rdata(embedded_schedular_m_axi_a_RDATA),
        .S01_AXI_rlast(embedded_schedular_m_axi_a_RLAST),
        .S01_AXI_rready(embedded_schedular_m_axi_a_RREADY),
        .S01_AXI_rresp(embedded_schedular_m_axi_a_RRESP),
        .S01_AXI_rvalid(embedded_schedular_m_axi_a_RVALID),
        .S01_AXI_wdata(embedded_schedular_m_axi_a_WDATA),
        .S01_AXI_wlast(embedded_schedular_m_axi_a_WLAST),
        .S01_AXI_wready(embedded_schedular_m_axi_a_WREADY),
        .S01_AXI_wstrb(embedded_schedular_m_axi_a_WSTRB),
        .S01_AXI_wvalid(embedded_schedular_m_axi_a_WVALID),
        .S02_ACLK(pcie_dma_aclk),
        .S02_ARESETN(psr_dma_pcie_aclk_mb_reset),
        .S02_AXI_araddr(embedded_schedular_m_axi_CUDma_0_ARADDR),
        .S02_AXI_arburst(embedded_schedular_m_axi_CUDma_0_ARBURST),
        .S02_AXI_arcache(embedded_schedular_m_axi_CUDma_0_ARCACHE),
        .S02_AXI_arlen(embedded_schedular_m_axi_CUDma_0_ARLEN),
        .S02_AXI_arlock(embedded_schedular_m_axi_CUDma_0_ARLOCK),
        .S02_AXI_arprot(embedded_schedular_m_axi_CUDma_0_ARPROT),
        .S02_AXI_arqos(embedded_schedular_m_axi_CUDma_0_ARQOS),
        .S02_AXI_arready(embedded_schedular_m_axi_CUDma_0_ARREADY),
        .S02_AXI_arsize(embedded_schedular_m_axi_CUDma_0_ARSIZE),
        .S02_AXI_arvalid(embedded_schedular_m_axi_CUDma_0_ARVALID),
        .S02_AXI_awaddr(embedded_schedular_m_axi_CUDma_0_AWADDR),
        .S02_AXI_awburst(embedded_schedular_m_axi_CUDma_0_AWBURST),
        .S02_AXI_awcache(embedded_schedular_m_axi_CUDma_0_AWCACHE),
        .S02_AXI_awlen(embedded_schedular_m_axi_CUDma_0_AWLEN),
        .S02_AXI_awlock(embedded_schedular_m_axi_CUDma_0_AWLOCK),
        .S02_AXI_awprot(embedded_schedular_m_axi_CUDma_0_AWPROT),
        .S02_AXI_awqos(embedded_schedular_m_axi_CUDma_0_AWQOS),
        .S02_AXI_awready(embedded_schedular_m_axi_CUDma_0_AWREADY),
        .S02_AXI_awsize(embedded_schedular_m_axi_CUDma_0_AWSIZE),
        .S02_AXI_awvalid(embedded_schedular_m_axi_CUDma_0_AWVALID),
        .S02_AXI_bready(embedded_schedular_m_axi_CUDma_0_BREADY),
        .S02_AXI_bresp(embedded_schedular_m_axi_CUDma_0_BRESP),
        .S02_AXI_bvalid(embedded_schedular_m_axi_CUDma_0_BVALID),
        .S02_AXI_rdata(embedded_schedular_m_axi_CUDma_0_RDATA),
        .S02_AXI_rlast(embedded_schedular_m_axi_CUDma_0_RLAST),
        .S02_AXI_rready(embedded_schedular_m_axi_CUDma_0_RREADY),
        .S02_AXI_rresp(embedded_schedular_m_axi_CUDma_0_RRESP),
        .S02_AXI_rvalid(embedded_schedular_m_axi_CUDma_0_RVALID),
        .S02_AXI_wdata(embedded_schedular_m_axi_CUDma_0_WDATA),
        .S02_AXI_wlast(embedded_schedular_m_axi_CUDma_0_WLAST),
        .S02_AXI_wready(embedded_schedular_m_axi_CUDma_0_WREADY),
        .S02_AXI_wstrb(embedded_schedular_m_axi_CUDma_0_WSTRB),
        .S02_AXI_wvalid(embedded_schedular_m_axi_CUDma_0_WVALID),
        .S03_ACLK(pcie_dma_aclk),
        .S03_ARESETN(psr_dma_pcie_aclk_mb_reset),
        .S03_AXI_araddr(embedded_schedular_MAXI_ARADDR),
        .S03_AXI_arprot(embedded_schedular_MAXI_ARPROT),
        .S03_AXI_arready(embedded_schedular_MAXI_ARREADY),
        .S03_AXI_arvalid(embedded_schedular_MAXI_ARVALID),
        .S03_AXI_awaddr(embedded_schedular_MAXI_AWADDR),
        .S03_AXI_awprot(embedded_schedular_MAXI_AWPROT),
        .S03_AXI_awready(embedded_schedular_MAXI_AWREADY),
        .S03_AXI_awvalid(embedded_schedular_MAXI_AWVALID),
        .S03_AXI_bready(embedded_schedular_MAXI_BREADY),
        .S03_AXI_bresp(embedded_schedular_MAXI_BRESP),
        .S03_AXI_bvalid(embedded_schedular_MAXI_BVALID),
        .S03_AXI_rdata(embedded_schedular_MAXI_RDATA),
        .S03_AXI_rready(embedded_schedular_MAXI_RREADY),
        .S03_AXI_rresp(embedded_schedular_MAXI_RRESP),
        .S03_AXI_rvalid(embedded_schedular_MAXI_RVALID),
        .S03_AXI_wdata(embedded_schedular_MAXI_WDATA),
        .S03_AXI_wready(embedded_schedular_MAXI_WREADY),
        .S03_AXI_wstrb(embedded_schedular_MAXI_WSTRB),
        .S03_AXI_wvalid(embedded_schedular_MAXI_WVALID));
  emu_dma_pcie_clk_0 dma_pcie_clk
       (.clk(pcie_dma_aclk),
        .sync_rst(pcie_dma));
  embedded_schedular_imp_1KU1L3J embedded_schedular
       (.MAXI_araddr(embedded_schedular_MAXI_ARADDR),
        .MAXI_arprot(embedded_schedular_MAXI_ARPROT),
        .MAXI_arready(embedded_schedular_MAXI_ARREADY),
        .MAXI_arvalid(embedded_schedular_MAXI_ARVALID),
        .MAXI_awaddr(embedded_schedular_MAXI_AWADDR),
        .MAXI_awprot(embedded_schedular_MAXI_AWPROT),
        .MAXI_awready(embedded_schedular_MAXI_AWREADY),
        .MAXI_awvalid(embedded_schedular_MAXI_AWVALID),
        .MAXI_bready(embedded_schedular_MAXI_BREADY),
        .MAXI_bresp(embedded_schedular_MAXI_BRESP),
        .MAXI_bvalid(embedded_schedular_MAXI_BVALID),
        .MAXI_rdata(embedded_schedular_MAXI_RDATA),
        .MAXI_rready(embedded_schedular_MAXI_RREADY),
        .MAXI_rresp(embedded_schedular_MAXI_RRESP),
        .MAXI_rvalid(embedded_schedular_MAXI_RVALID),
        .MAXI_wdata(embedded_schedular_MAXI_WDATA),
        .MAXI_wready(embedded_schedular_MAXI_WREADY),
        .MAXI_wstrb(embedded_schedular_MAXI_WSTRB),
        .MAXI_wvalid(embedded_schedular_MAXI_WVALID),
        .SAXI_araddr(connect_to_es_M01_AXI_ARADDR),
        .SAXI_arprot(connect_to_es_M01_AXI_ARPROT),
        .SAXI_arready(connect_to_es_M01_AXI_ARREADY),
        .SAXI_arvalid(connect_to_es_M01_AXI_ARVALID),
        .SAXI_awaddr(connect_to_es_M01_AXI_AWADDR),
        .SAXI_awprot(connect_to_es_M01_AXI_AWPROT),
        .SAXI_awready(connect_to_es_M01_AXI_AWREADY),
        .SAXI_awvalid(connect_to_es_M01_AXI_AWVALID),
        .SAXI_bready(connect_to_es_M01_AXI_BREADY),
        .SAXI_bresp(connect_to_es_M01_AXI_BRESP),
        .SAXI_bvalid(connect_to_es_M01_AXI_BVALID),
        .SAXI_rdata(connect_to_es_M01_AXI_RDATA),
        .SAXI_rready(connect_to_es_M01_AXI_RREADY),
        .SAXI_rresp(connect_to_es_M01_AXI_RRESP),
        .SAXI_rvalid(connect_to_es_M01_AXI_RVALID),
        .SAXI_wdata(connect_to_es_M01_AXI_WDATA),
        .SAXI_wready(connect_to_es_M01_AXI_WREADY),
        .SAXI_wstrb(connect_to_es_M01_AXI_WSTRB),
        .SAXI_wvalid(connect_to_es_M01_AXI_WVALID),
        .clk(pcie_dma_aclk),
        .host_araddr(connect_to_es_M00_AXI_ARADDR),
        .host_arprot(connect_to_es_M00_AXI_ARPROT),
        .host_arready(connect_to_es_M00_AXI_ARREADY),
        .host_arvalid(connect_to_es_M00_AXI_ARVALID),
        .host_awaddr(connect_to_es_M00_AXI_AWADDR),
        .host_awprot(connect_to_es_M00_AXI_AWPROT),
        .host_awready(connect_to_es_M00_AXI_AWREADY),
        .host_awvalid(connect_to_es_M00_AXI_AWVALID),
        .host_bready(connect_to_es_M00_AXI_BREADY),
        .host_bresp(connect_to_es_M00_AXI_BRESP),
        .host_bvalid(connect_to_es_M00_AXI_BVALID),
        .host_rdata(connect_to_es_M00_AXI_RDATA),
        .host_rready(connect_to_es_M00_AXI_RREADY),
        .host_rresp(connect_to_es_M00_AXI_RRESP),
        .host_rvalid(connect_to_es_M00_AXI_RVALID),
        .host_wdata(connect_to_es_M00_AXI_WDATA),
        .host_wready(connect_to_es_M00_AXI_WREADY),
        .host_wstrb(connect_to_es_M00_AXI_WSTRB),
        .host_wvalid(connect_to_es_M00_AXI_WVALID),
        .in2(sim_copy_kernel_0_interrupt),
        .irq_cu(irq_cu_1),
        .m_axi_CQDma_araddr(embedded_schedular_m_axi_CQDma_ARADDR),
        .m_axi_CQDma_arburst(embedded_schedular_m_axi_CQDma_ARBURST),
        .m_axi_CQDma_arcache(embedded_schedular_m_axi_CQDma_ARCACHE),
        .m_axi_CQDma_arlen(embedded_schedular_m_axi_CQDma_ARLEN),
        .m_axi_CQDma_arlock(embedded_schedular_m_axi_CQDma_ARLOCK),
        .m_axi_CQDma_arprot(embedded_schedular_m_axi_CQDma_ARPROT),
        .m_axi_CQDma_arqos(embedded_schedular_m_axi_CQDma_ARQOS),
        .m_axi_CQDma_arready(embedded_schedular_m_axi_CQDma_ARREADY),
        .m_axi_CQDma_arsize(embedded_schedular_m_axi_CQDma_ARSIZE),
        .m_axi_CQDma_arvalid(embedded_schedular_m_axi_CQDma_ARVALID),
        .m_axi_CQDma_awaddr(embedded_schedular_m_axi_CQDma_AWADDR),
        .m_axi_CQDma_awburst(embedded_schedular_m_axi_CQDma_AWBURST),
        .m_axi_CQDma_awcache(embedded_schedular_m_axi_CQDma_AWCACHE),
        .m_axi_CQDma_awlen(embedded_schedular_m_axi_CQDma_AWLEN),
        .m_axi_CQDma_awlock(embedded_schedular_m_axi_CQDma_AWLOCK),
        .m_axi_CQDma_awprot(embedded_schedular_m_axi_CQDma_AWPROT),
        .m_axi_CQDma_awqos(embedded_schedular_m_axi_CQDma_AWQOS),
        .m_axi_CQDma_awready(embedded_schedular_m_axi_CQDma_AWREADY),
        .m_axi_CQDma_awsize(embedded_schedular_m_axi_CQDma_AWSIZE),
        .m_axi_CQDma_awvalid(embedded_schedular_m_axi_CQDma_AWVALID),
        .m_axi_CQDma_bready(embedded_schedular_m_axi_CQDma_BREADY),
        .m_axi_CQDma_bresp(embedded_schedular_m_axi_CQDma_BRESP),
        .m_axi_CQDma_bvalid(embedded_schedular_m_axi_CQDma_BVALID),
        .m_axi_CQDma_rdata(embedded_schedular_m_axi_CQDma_RDATA),
        .m_axi_CQDma_rlast(embedded_schedular_m_axi_CQDma_RLAST),
        .m_axi_CQDma_rready(embedded_schedular_m_axi_CQDma_RREADY),
        .m_axi_CQDma_rresp(embedded_schedular_m_axi_CQDma_RRESP),
        .m_axi_CQDma_rvalid(embedded_schedular_m_axi_CQDma_RVALID),
        .m_axi_CQDma_wdata(embedded_schedular_m_axi_CQDma_WDATA),
        .m_axi_CQDma_wlast(embedded_schedular_m_axi_CQDma_WLAST),
        .m_axi_CQDma_wready(embedded_schedular_m_axi_CQDma_WREADY),
        .m_axi_CQDma_wstrb(embedded_schedular_m_axi_CQDma_WSTRB),
        .m_axi_CQDma_wvalid(embedded_schedular_m_axi_CQDma_WVALID),
        .m_axi_CUDma_0_araddr(embedded_schedular_m_axi_CUDma_0_ARADDR),
        .m_axi_CUDma_0_arburst(embedded_schedular_m_axi_CUDma_0_ARBURST),
        .m_axi_CUDma_0_arcache(embedded_schedular_m_axi_CUDma_0_ARCACHE),
        .m_axi_CUDma_0_arlen(embedded_schedular_m_axi_CUDma_0_ARLEN),
        .m_axi_CUDma_0_arlock(embedded_schedular_m_axi_CUDma_0_ARLOCK),
        .m_axi_CUDma_0_arprot(embedded_schedular_m_axi_CUDma_0_ARPROT),
        .m_axi_CUDma_0_arqos(embedded_schedular_m_axi_CUDma_0_ARQOS),
        .m_axi_CUDma_0_arready(embedded_schedular_m_axi_CUDma_0_ARREADY),
        .m_axi_CUDma_0_arsize(embedded_schedular_m_axi_CUDma_0_ARSIZE),
        .m_axi_CUDma_0_arvalid(embedded_schedular_m_axi_CUDma_0_ARVALID),
        .m_axi_CUDma_0_awaddr(embedded_schedular_m_axi_CUDma_0_AWADDR),
        .m_axi_CUDma_0_awburst(embedded_schedular_m_axi_CUDma_0_AWBURST),
        .m_axi_CUDma_0_awcache(embedded_schedular_m_axi_CUDma_0_AWCACHE),
        .m_axi_CUDma_0_awlen(embedded_schedular_m_axi_CUDma_0_AWLEN),
        .m_axi_CUDma_0_awlock(embedded_schedular_m_axi_CUDma_0_AWLOCK),
        .m_axi_CUDma_0_awprot(embedded_schedular_m_axi_CUDma_0_AWPROT),
        .m_axi_CUDma_0_awqos(embedded_schedular_m_axi_CUDma_0_AWQOS),
        .m_axi_CUDma_0_awready(embedded_schedular_m_axi_CUDma_0_AWREADY),
        .m_axi_CUDma_0_awsize(embedded_schedular_m_axi_CUDma_0_AWSIZE),
        .m_axi_CUDma_0_awvalid(embedded_schedular_m_axi_CUDma_0_AWVALID),
        .m_axi_CUDma_0_bready(embedded_schedular_m_axi_CUDma_0_BREADY),
        .m_axi_CUDma_0_bresp(embedded_schedular_m_axi_CUDma_0_BRESP),
        .m_axi_CUDma_0_bvalid(embedded_schedular_m_axi_CUDma_0_BVALID),
        .m_axi_CUDma_0_rdata(embedded_schedular_m_axi_CUDma_0_RDATA),
        .m_axi_CUDma_0_rlast(embedded_schedular_m_axi_CUDma_0_RLAST),
        .m_axi_CUDma_0_rready(embedded_schedular_m_axi_CUDma_0_RREADY),
        .m_axi_CUDma_0_rresp(embedded_schedular_m_axi_CUDma_0_RRESP),
        .m_axi_CUDma_0_rvalid(embedded_schedular_m_axi_CUDma_0_RVALID),
        .m_axi_CUDma_0_wdata(embedded_schedular_m_axi_CUDma_0_WDATA),
        .m_axi_CUDma_0_wlast(embedded_schedular_m_axi_CUDma_0_WLAST),
        .m_axi_CUDma_0_wready(embedded_schedular_m_axi_CUDma_0_WREADY),
        .m_axi_CUDma_0_wstrb(embedded_schedular_m_axi_CUDma_0_WSTRB),
        .m_axi_CUDma_0_wvalid(embedded_schedular_m_axi_CUDma_0_WVALID),
        .m_axi_a_araddr(embedded_schedular_m_axi_a_ARADDR),
        .m_axi_a_arburst(embedded_schedular_m_axi_a_ARBURST),
        .m_axi_a_arcache(embedded_schedular_m_axi_a_ARCACHE),
        .m_axi_a_arlen(embedded_schedular_m_axi_a_ARLEN),
        .m_axi_a_arlock(embedded_schedular_m_axi_a_ARLOCK),
        .m_axi_a_arprot(embedded_schedular_m_axi_a_ARPROT),
        .m_axi_a_arqos(embedded_schedular_m_axi_a_ARQOS),
        .m_axi_a_arready(embedded_schedular_m_axi_a_ARREADY),
        .m_axi_a_arsize(embedded_schedular_m_axi_a_ARSIZE),
        .m_axi_a_arvalid(embedded_schedular_m_axi_a_ARVALID),
        .m_axi_a_awaddr(embedded_schedular_m_axi_a_AWADDR),
        .m_axi_a_awburst(embedded_schedular_m_axi_a_AWBURST),
        .m_axi_a_awcache(embedded_schedular_m_axi_a_AWCACHE),
        .m_axi_a_awlen(embedded_schedular_m_axi_a_AWLEN),
        .m_axi_a_awlock(embedded_schedular_m_axi_a_AWLOCK),
        .m_axi_a_awprot(embedded_schedular_m_axi_a_AWPROT),
        .m_axi_a_awqos(embedded_schedular_m_axi_a_AWQOS),
        .m_axi_a_awready(embedded_schedular_m_axi_a_AWREADY),
        .m_axi_a_awsize(embedded_schedular_m_axi_a_AWSIZE),
        .m_axi_a_awvalid(embedded_schedular_m_axi_a_AWVALID),
        .m_axi_a_bready(embedded_schedular_m_axi_a_BREADY),
        .m_axi_a_bresp(embedded_schedular_m_axi_a_BRESP),
        .m_axi_a_bvalid(embedded_schedular_m_axi_a_BVALID),
        .m_axi_a_rdata(embedded_schedular_m_axi_a_RDATA),
        .m_axi_a_rlast(embedded_schedular_m_axi_a_RLAST),
        .m_axi_a_rready(embedded_schedular_m_axi_a_RREADY),
        .m_axi_a_rresp(embedded_schedular_m_axi_a_RRESP),
        .m_axi_a_rvalid(embedded_schedular_m_axi_a_RVALID),
        .m_axi_a_wdata(embedded_schedular_m_axi_a_WDATA),
        .m_axi_a_wlast(embedded_schedular_m_axi_a_WLAST),
        .m_axi_a_wready(embedded_schedular_m_axi_a_WREADY),
        .m_axi_a_wstrb(embedded_schedular_m_axi_a_WSTRB),
        .m_axi_a_wvalid(embedded_schedular_m_axi_a_WVALID),
        .reset_n(psr_dma_pcie_aclk_mb_reset),
        .s_axi_0_araddr(connect_to_es_M02_AXI_ARADDR),
        .s_axi_0_arready(connect_to_es_M02_AXI_ARREADY),
        .s_axi_0_arvalid(connect_to_es_M02_AXI_ARVALID),
        .s_axi_0_awaddr(connect_to_es_M02_AXI_AWADDR),
        .s_axi_0_awready(connect_to_es_M02_AXI_AWREADY),
        .s_axi_0_awvalid(connect_to_es_M02_AXI_AWVALID),
        .s_axi_0_bready(connect_to_es_M02_AXI_BREADY),
        .s_axi_0_bresp(connect_to_es_M02_AXI_BRESP),
        .s_axi_0_bvalid(connect_to_es_M02_AXI_BVALID),
        .s_axi_0_rdata(connect_to_es_M02_AXI_RDATA),
        .s_axi_0_rready(connect_to_es_M02_AXI_RREADY),
        .s_axi_0_rresp(connect_to_es_M02_AXI_RRESP),
        .s_axi_0_rvalid(connect_to_es_M02_AXI_RVALID),
        .s_axi_0_wdata(connect_to_es_M02_AXI_WDATA),
        .s_axi_0_wready(connect_to_es_M02_AXI_WREADY),
        .s_axi_0_wstrb(connect_to_es_M02_AXI_WSTRB),
        .s_axi_0_wvalid(connect_to_es_M02_AXI_WVALID));
  emu_icn_pass_0_0 icn_pass_0
       (.m00_axi_aclk(clk_reset_wizard_ddr_default_clk),
        .m00_axi_araddr(Conn2_ARADDR),
        .m00_axi_arburst(Conn2_ARBURST),
        .m00_axi_arcache(Conn2_ARCACHE),
        .m00_axi_aresetn(clk_reset_wizard_ddr_default_rst),
        .m00_axi_arid(Conn2_ARID),
        .m00_axi_arlen(Conn2_ARLEN),
        .m00_axi_arlock(Conn2_ARLOCK),
        .m00_axi_arprot(Conn2_ARPROT),
        .m00_axi_arqos(Conn2_ARQOS),
        .m00_axi_arready(Conn2_ARREADY),
        .m00_axi_arsize(Conn2_ARSIZE),
        .m00_axi_aruser(Conn2_ARUSER),
        .m00_axi_arvalid(Conn2_ARVALID),
        .m00_axi_awaddr(Conn2_AWADDR),
        .m00_axi_awburst(Conn2_AWBURST),
        .m00_axi_awcache(Conn2_AWCACHE),
        .m00_axi_awid(Conn2_AWID),
        .m00_axi_awlen(Conn2_AWLEN),
        .m00_axi_awlock(Conn2_AWLOCK),
        .m00_axi_awprot(Conn2_AWPROT),
        .m00_axi_awqos(Conn2_AWQOS),
        .m00_axi_awready(Conn2_AWREADY),
        .m00_axi_awsize(Conn2_AWSIZE),
        .m00_axi_awuser(Conn2_AWUSER),
        .m00_axi_awvalid(Conn2_AWVALID),
        .m00_axi_bid(Conn2_BID),
        .m00_axi_bready(Conn2_BREADY),
        .m00_axi_bresp(Conn2_BRESP),
        .m00_axi_buser(Conn2_BUSER),
        .m00_axi_bvalid(Conn2_BVALID),
        .m00_axi_rdata(Conn2_RDATA),
        .m00_axi_rid(Conn2_RID),
        .m00_axi_rlast(Conn2_RLAST),
        .m00_axi_rready(Conn2_RREADY),
        .m00_axi_rresp(Conn2_RRESP),
        .m00_axi_ruser(Conn2_RUSER),
        .m00_axi_rvalid(Conn2_RVALID),
        .m00_axi_wdata(Conn2_WDATA),
        .m00_axi_wlast(Conn2_WLAST),
        .m00_axi_wready(Conn2_WREADY),
        .m00_axi_wstrb(Conn2_WSTRB),
        .m00_axi_wuser(Conn2_WUSER),
        .m00_axi_wvalid(Conn2_WVALID),
        .s00_axi_aclk(clk_reset_wizard_ddr_default_clk),
        .s00_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Conn1_ARADDR}),
        .s00_axi_arburst(Conn1_ARBURST),
        .s00_axi_arcache({1'b0,1'b0,1'b1,1'b1}),
        .s00_axi_aresetn(clk_reset_wizard_ddr_default_rst),
        .s00_axi_arlen(Conn1_ARLEN),
        .s00_axi_arlock(1'b0),
        .s00_axi_arprot(Conn1_ARPROT),
        .s00_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_arready(Conn1_ARREADY),
        .s00_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_arsize(Conn1_ARSIZE),
        .s00_axi_arvalid(Conn1_ARVALID),
        .s00_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Conn1_AWADDR}),
        .s00_axi_awburst(Conn1_AWBURST),
        .s00_axi_awcache({1'b0,1'b0,1'b1,1'b1}),
        .s00_axi_awlen(Conn1_AWLEN),
        .s00_axi_awlock(1'b0),
        .s00_axi_awprot(Conn1_AWPROT),
        .s00_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_awready(Conn1_AWREADY),
        .s00_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s00_axi_awsize(Conn1_AWSIZE),
        .s00_axi_awvalid(Conn1_AWVALID),
        .s00_axi_bready(Conn1_BREADY),
        .s00_axi_bresp(Conn1_BRESP),
        .s00_axi_bvalid(Conn1_BVALID),
        .s00_axi_rdata(Conn1_RDATA),
        .s00_axi_rlast(Conn1_RLAST),
        .s00_axi_rready(Conn1_RREADY),
        .s00_axi_rresp(Conn1_RRESP),
        .s00_axi_rvalid(Conn1_RVALID),
        .s00_axi_wdata(Conn1_WDATA),
        .s00_axi_wlast(Conn1_WLAST),
        .s00_axi_wready(Conn1_WREADY),
        .s00_axi_wstrb(Conn1_WSTRB),
        .s00_axi_wvalid(Conn1_WVALID));
  emu_psr_dma_pcie_aclk_0 psr_dma_pcie_aclk
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(pcie_dma),
        .interconnect_aresetn(psr_dma_pcie_aclk_mb_reset),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(pcie_dma_aclk));
  emu_sim_copy_kernel_0_0 sim_copy_kernel_0
       (.ap_clk(pcie_dma_aclk),
        .ap_rst_n(psr_dma_pcie_aclk_mb_reset),
        .interrupt(sim_copy_kernel_0_interrupt),
        .m_axi_gmem_ARADDR(data_M_AXI_1_1_conn_ARADDR),
        .m_axi_gmem_ARBURST(data_M_AXI_1_1_conn_ARBURST),
        .m_axi_gmem_ARCACHE(data_M_AXI_1_1_conn_ARCACHE),
        .m_axi_gmem_ARLEN(data_M_AXI_1_1_conn_ARLEN),
        .m_axi_gmem_ARLOCK(data_M_AXI_1_1_conn_ARLOCK),
        .m_axi_gmem_ARPROT(data_M_AXI_1_1_conn_ARPROT),
        .m_axi_gmem_ARQOS(data_M_AXI_1_1_conn_ARQOS),
        .m_axi_gmem_ARREADY(data_M_AXI_1_1_conn_ARREADY),
        .m_axi_gmem_ARREGION(data_M_AXI_1_1_conn_ARREGION),
        .m_axi_gmem_ARSIZE(data_M_AXI_1_1_conn_ARSIZE),
        .m_axi_gmem_ARVALID(data_M_AXI_1_1_conn_ARVALID),
        .m_axi_gmem_AWADDR(data_M_AXI_1_1_conn_AWADDR),
        .m_axi_gmem_AWBURST(data_M_AXI_1_1_conn_AWBURST),
        .m_axi_gmem_AWCACHE(data_M_AXI_1_1_conn_AWCACHE),
        .m_axi_gmem_AWLEN(data_M_AXI_1_1_conn_AWLEN),
        .m_axi_gmem_AWLOCK(data_M_AXI_1_1_conn_AWLOCK),
        .m_axi_gmem_AWPROT(data_M_AXI_1_1_conn_AWPROT),
        .m_axi_gmem_AWQOS(data_M_AXI_1_1_conn_AWQOS),
        .m_axi_gmem_AWREADY(data_M_AXI_1_1_conn_AWREADY),
        .m_axi_gmem_AWREGION(data_M_AXI_1_1_conn_AWREGION),
        .m_axi_gmem_AWSIZE(data_M_AXI_1_1_conn_AWSIZE),
        .m_axi_gmem_AWVALID(data_M_AXI_1_1_conn_AWVALID),
        .m_axi_gmem_BREADY(data_M_AXI_1_1_conn_BREADY),
        .m_axi_gmem_BRESP(data_M_AXI_1_1_conn_BRESP),
        .m_axi_gmem_BVALID(data_M_AXI_1_1_conn_BVALID),
        .m_axi_gmem_RDATA(data_M_AXI_1_1_conn_RDATA),
        .m_axi_gmem_RLAST(data_M_AXI_1_1_conn_RLAST),
        .m_axi_gmem_RREADY(data_M_AXI_1_1_conn_RREADY),
        .m_axi_gmem_RRESP(data_M_AXI_1_1_conn_RRESP),
        .m_axi_gmem_RVALID(data_M_AXI_1_1_conn_RVALID),
        .m_axi_gmem_WDATA(data_M_AXI_1_1_conn_WDATA),
        .m_axi_gmem_WLAST(data_M_AXI_1_1_conn_WLAST),
        .m_axi_gmem_WREADY(data_M_AXI_1_1_conn_WREADY),
        .m_axi_gmem_WSTRB(data_M_AXI_1_1_conn_WSTRB),
        .m_axi_gmem_WVALID(data_M_AXI_1_1_conn_WVALID),
        .s_axi_control_ARADDR(connect_to_es_cu_M02_AXI_ARADDR[5:0]),
        .s_axi_control_ARREADY(connect_to_es_cu_M02_AXI_ARREADY),
        .s_axi_control_ARVALID(connect_to_es_cu_M02_AXI_ARVALID),
        .s_axi_control_AWADDR(connect_to_es_cu_M02_AXI_AWADDR[5:0]),
        .s_axi_control_AWREADY(connect_to_es_cu_M02_AXI_AWREADY),
        .s_axi_control_AWVALID(connect_to_es_cu_M02_AXI_AWVALID),
        .s_axi_control_BREADY(connect_to_es_cu_M02_AXI_BREADY),
        .s_axi_control_BRESP(connect_to_es_cu_M02_AXI_BRESP),
        .s_axi_control_BVALID(connect_to_es_cu_M02_AXI_BVALID),
        .s_axi_control_RDATA(connect_to_es_cu_M02_AXI_RDATA),
        .s_axi_control_RREADY(connect_to_es_cu_M02_AXI_RREADY),
        .s_axi_control_RRESP(connect_to_es_cu_M02_AXI_RRESP),
        .s_axi_control_RVALID(connect_to_es_cu_M02_AXI_RVALID),
        .s_axi_control_WDATA(connect_to_es_cu_M02_AXI_WDATA),
        .s_axi_control_WREADY(connect_to_es_cu_M02_AXI_WREADY),
        .s_axi_control_WSTRB(connect_to_es_cu_M02_AXI_WSTRB),
        .s_axi_control_WVALID(connect_to_es_cu_M02_AXI_WVALID));
  emu_sim_copy_kernel_1_0 sim_copy_kernel_1
       (.ap_clk(pcie_dma_aclk),
        .ap_rst_n(psr_dma_pcie_aclk_mb_reset),
        .m_axi_gmem_ARADDR(data_M_AXI_2_1_conn_ARADDR),
        .m_axi_gmem_ARBURST(data_M_AXI_2_1_conn_ARBURST),
        .m_axi_gmem_ARCACHE(data_M_AXI_2_1_conn_ARCACHE),
        .m_axi_gmem_ARLEN(data_M_AXI_2_1_conn_ARLEN),
        .m_axi_gmem_ARLOCK(data_M_AXI_2_1_conn_ARLOCK),
        .m_axi_gmem_ARPROT(data_M_AXI_2_1_conn_ARPROT),
        .m_axi_gmem_ARQOS(data_M_AXI_2_1_conn_ARQOS),
        .m_axi_gmem_ARREADY(data_M_AXI_2_1_conn_ARREADY),
        .m_axi_gmem_ARREGION(data_M_AXI_2_1_conn_ARREGION),
        .m_axi_gmem_ARSIZE(data_M_AXI_2_1_conn_ARSIZE),
        .m_axi_gmem_ARVALID(data_M_AXI_2_1_conn_ARVALID),
        .m_axi_gmem_AWADDR(data_M_AXI_2_1_conn_AWADDR),
        .m_axi_gmem_AWBURST(data_M_AXI_2_1_conn_AWBURST),
        .m_axi_gmem_AWCACHE(data_M_AXI_2_1_conn_AWCACHE),
        .m_axi_gmem_AWLEN(data_M_AXI_2_1_conn_AWLEN),
        .m_axi_gmem_AWLOCK(data_M_AXI_2_1_conn_AWLOCK),
        .m_axi_gmem_AWPROT(data_M_AXI_2_1_conn_AWPROT),
        .m_axi_gmem_AWQOS(data_M_AXI_2_1_conn_AWQOS),
        .m_axi_gmem_AWREADY(data_M_AXI_2_1_conn_AWREADY),
        .m_axi_gmem_AWREGION(data_M_AXI_2_1_conn_AWREGION),
        .m_axi_gmem_AWSIZE(data_M_AXI_2_1_conn_AWSIZE),
        .m_axi_gmem_AWVALID(data_M_AXI_2_1_conn_AWVALID),
        .m_axi_gmem_BREADY(data_M_AXI_2_1_conn_BREADY),
        .m_axi_gmem_BRESP(data_M_AXI_2_1_conn_BRESP),
        .m_axi_gmem_BVALID(data_M_AXI_2_1_conn_BVALID),
        .m_axi_gmem_RDATA(data_M_AXI_2_1_conn_RDATA),
        .m_axi_gmem_RLAST(data_M_AXI_2_1_conn_RLAST),
        .m_axi_gmem_RREADY(data_M_AXI_2_1_conn_RREADY),
        .m_axi_gmem_RRESP(data_M_AXI_2_1_conn_RRESP),
        .m_axi_gmem_RVALID(data_M_AXI_2_1_conn_RVALID),
        .m_axi_gmem_WDATA(data_M_AXI_2_1_conn_WDATA),
        .m_axi_gmem_WLAST(data_M_AXI_2_1_conn_WLAST),
        .m_axi_gmem_WREADY(data_M_AXI_2_1_conn_WREADY),
        .m_axi_gmem_WSTRB(data_M_AXI_2_1_conn_WSTRB),
        .m_axi_gmem_WVALID(data_M_AXI_2_1_conn_WVALID),
        .s_axi_control_ARADDR(connect_to_es_cu_M03_AXI_ARADDR[5:0]),
        .s_axi_control_ARREADY(connect_to_es_cu_M03_AXI_ARREADY),
        .s_axi_control_ARVALID(connect_to_es_cu_M03_AXI_ARVALID),
        .s_axi_control_AWADDR(connect_to_es_cu_M03_AXI_AWADDR[5:0]),
        .s_axi_control_AWREADY(connect_to_es_cu_M03_AXI_AWREADY),
        .s_axi_control_AWVALID(connect_to_es_cu_M03_AXI_AWVALID),
        .s_axi_control_BREADY(connect_to_es_cu_M03_AXI_BREADY),
        .s_axi_control_BRESP(connect_to_es_cu_M03_AXI_BRESP),
        .s_axi_control_BVALID(connect_to_es_cu_M03_AXI_BVALID),
        .s_axi_control_RDATA(connect_to_es_cu_M03_AXI_RDATA),
        .s_axi_control_RREADY(connect_to_es_cu_M03_AXI_RREADY),
        .s_axi_control_RRESP(connect_to_es_cu_M03_AXI_RRESP),
        .s_axi_control_RVALID(connect_to_es_cu_M03_AXI_RVALID),
        .s_axi_control_WDATA(connect_to_es_cu_M03_AXI_WDATA),
        .s_axi_control_WREADY(connect_to_es_cu_M03_AXI_WREADY),
        .s_axi_control_WSTRB(connect_to_es_cu_M03_AXI_WSTRB),
        .s_axi_control_WVALID(connect_to_es_cu_M03_AXI_WVALID));
  emu_sim_copy_kernel_2_0 sim_copy_kernel_2
       (.ap_clk(pcie_dma_aclk),
        .ap_rst_n(psr_dma_pcie_aclk_mb_reset),
        .m_axi_gmem_ARADDR(data_M_AXI_3_1_conn_ARADDR),
        .m_axi_gmem_ARBURST(data_M_AXI_3_1_conn_ARBURST),
        .m_axi_gmem_ARCACHE(data_M_AXI_3_1_conn_ARCACHE),
        .m_axi_gmem_ARLEN(data_M_AXI_3_1_conn_ARLEN),
        .m_axi_gmem_ARLOCK(data_M_AXI_3_1_conn_ARLOCK),
        .m_axi_gmem_ARPROT(data_M_AXI_3_1_conn_ARPROT),
        .m_axi_gmem_ARQOS(data_M_AXI_3_1_conn_ARQOS),
        .m_axi_gmem_ARREADY(data_M_AXI_3_1_conn_ARREADY),
        .m_axi_gmem_ARREGION(data_M_AXI_3_1_conn_ARREGION),
        .m_axi_gmem_ARSIZE(data_M_AXI_3_1_conn_ARSIZE),
        .m_axi_gmem_ARVALID(data_M_AXI_3_1_conn_ARVALID),
        .m_axi_gmem_AWADDR(data_M_AXI_3_1_conn_AWADDR),
        .m_axi_gmem_AWBURST(data_M_AXI_3_1_conn_AWBURST),
        .m_axi_gmem_AWCACHE(data_M_AXI_3_1_conn_AWCACHE),
        .m_axi_gmem_AWLEN(data_M_AXI_3_1_conn_AWLEN),
        .m_axi_gmem_AWLOCK(data_M_AXI_3_1_conn_AWLOCK),
        .m_axi_gmem_AWPROT(data_M_AXI_3_1_conn_AWPROT),
        .m_axi_gmem_AWQOS(data_M_AXI_3_1_conn_AWQOS),
        .m_axi_gmem_AWREADY(data_M_AXI_3_1_conn_AWREADY),
        .m_axi_gmem_AWREGION(data_M_AXI_3_1_conn_AWREGION),
        .m_axi_gmem_AWSIZE(data_M_AXI_3_1_conn_AWSIZE),
        .m_axi_gmem_AWVALID(data_M_AXI_3_1_conn_AWVALID),
        .m_axi_gmem_BREADY(data_M_AXI_3_1_conn_BREADY),
        .m_axi_gmem_BRESP(data_M_AXI_3_1_conn_BRESP),
        .m_axi_gmem_BVALID(data_M_AXI_3_1_conn_BVALID),
        .m_axi_gmem_RDATA(data_M_AXI_3_1_conn_RDATA),
        .m_axi_gmem_RLAST(data_M_AXI_3_1_conn_RLAST),
        .m_axi_gmem_RREADY(data_M_AXI_3_1_conn_RREADY),
        .m_axi_gmem_RRESP(data_M_AXI_3_1_conn_RRESP),
        .m_axi_gmem_RVALID(data_M_AXI_3_1_conn_RVALID),
        .m_axi_gmem_WDATA(data_M_AXI_3_1_conn_WDATA),
        .m_axi_gmem_WLAST(data_M_AXI_3_1_conn_WLAST),
        .m_axi_gmem_WREADY(data_M_AXI_3_1_conn_WREADY),
        .m_axi_gmem_WSTRB(data_M_AXI_3_1_conn_WSTRB),
        .m_axi_gmem_WVALID(data_M_AXI_3_1_conn_WVALID),
        .s_axi_control_ARADDR(connect_to_es_cu_M04_AXI_ARADDR[5:0]),
        .s_axi_control_ARREADY(connect_to_es_cu_M04_AXI_ARREADY),
        .s_axi_control_ARVALID(connect_to_es_cu_M04_AXI_ARVALID),
        .s_axi_control_AWADDR(connect_to_es_cu_M04_AXI_AWADDR[5:0]),
        .s_axi_control_AWREADY(connect_to_es_cu_M04_AXI_AWREADY),
        .s_axi_control_AWVALID(connect_to_es_cu_M04_AXI_AWVALID),
        .s_axi_control_BREADY(connect_to_es_cu_M04_AXI_BREADY),
        .s_axi_control_BRESP(connect_to_es_cu_M04_AXI_BRESP),
        .s_axi_control_BVALID(connect_to_es_cu_M04_AXI_BVALID),
        .s_axi_control_RDATA(connect_to_es_cu_M04_AXI_RDATA),
        .s_axi_control_RREADY(connect_to_es_cu_M04_AXI_RREADY),
        .s_axi_control_RRESP(connect_to_es_cu_M04_AXI_RRESP),
        .s_axi_control_RVALID(connect_to_es_cu_M04_AXI_RVALID),
        .s_axi_control_WDATA(connect_to_es_cu_M04_AXI_WDATA),
        .s_axi_control_WREADY(connect_to_es_cu_M04_AXI_WREADY),
        .s_axi_control_WSTRB(connect_to_es_cu_M04_AXI_WSTRB),
        .s_axi_control_WVALID(connect_to_es_cu_M04_AXI_WVALID));
  emu_sim_copy_kernel_3_0 sim_copy_kernel_3
       (.ap_clk(pcie_dma_aclk),
        .ap_rst_n(psr_dma_pcie_aclk_mb_reset),
        .m_axi_gmem_ARADDR(data_M_AXI_4_1_conn_ARADDR),
        .m_axi_gmem_ARBURST(data_M_AXI_4_1_conn_ARBURST),
        .m_axi_gmem_ARCACHE(data_M_AXI_4_1_conn_ARCACHE),
        .m_axi_gmem_ARLEN(data_M_AXI_4_1_conn_ARLEN),
        .m_axi_gmem_ARLOCK(data_M_AXI_4_1_conn_ARLOCK),
        .m_axi_gmem_ARPROT(data_M_AXI_4_1_conn_ARPROT),
        .m_axi_gmem_ARQOS(data_M_AXI_4_1_conn_ARQOS),
        .m_axi_gmem_ARREADY(data_M_AXI_4_1_conn_ARREADY),
        .m_axi_gmem_ARREGION(data_M_AXI_4_1_conn_ARREGION),
        .m_axi_gmem_ARSIZE(data_M_AXI_4_1_conn_ARSIZE),
        .m_axi_gmem_ARVALID(data_M_AXI_4_1_conn_ARVALID),
        .m_axi_gmem_AWADDR(data_M_AXI_4_1_conn_AWADDR),
        .m_axi_gmem_AWBURST(data_M_AXI_4_1_conn_AWBURST),
        .m_axi_gmem_AWCACHE(data_M_AXI_4_1_conn_AWCACHE),
        .m_axi_gmem_AWLEN(data_M_AXI_4_1_conn_AWLEN),
        .m_axi_gmem_AWLOCK(data_M_AXI_4_1_conn_AWLOCK),
        .m_axi_gmem_AWPROT(data_M_AXI_4_1_conn_AWPROT),
        .m_axi_gmem_AWQOS(data_M_AXI_4_1_conn_AWQOS),
        .m_axi_gmem_AWREADY(data_M_AXI_4_1_conn_AWREADY),
        .m_axi_gmem_AWREGION(data_M_AXI_4_1_conn_AWREGION),
        .m_axi_gmem_AWSIZE(data_M_AXI_4_1_conn_AWSIZE),
        .m_axi_gmem_AWVALID(data_M_AXI_4_1_conn_AWVALID),
        .m_axi_gmem_BREADY(data_M_AXI_4_1_conn_BREADY),
        .m_axi_gmem_BRESP(data_M_AXI_4_1_conn_BRESP),
        .m_axi_gmem_BVALID(data_M_AXI_4_1_conn_BVALID),
        .m_axi_gmem_RDATA(data_M_AXI_4_1_conn_RDATA),
        .m_axi_gmem_RLAST(data_M_AXI_4_1_conn_RLAST),
        .m_axi_gmem_RREADY(data_M_AXI_4_1_conn_RREADY),
        .m_axi_gmem_RRESP(data_M_AXI_4_1_conn_RRESP),
        .m_axi_gmem_RVALID(data_M_AXI_4_1_conn_RVALID),
        .m_axi_gmem_WDATA(data_M_AXI_4_1_conn_WDATA),
        .m_axi_gmem_WLAST(data_M_AXI_4_1_conn_WLAST),
        .m_axi_gmem_WREADY(data_M_AXI_4_1_conn_WREADY),
        .m_axi_gmem_WSTRB(data_M_AXI_4_1_conn_WSTRB),
        .m_axi_gmem_WVALID(data_M_AXI_4_1_conn_WVALID),
        .s_axi_control_ARADDR(connect_to_es_cu_M05_AXI_ARADDR[5:0]),
        .s_axi_control_ARREADY(connect_to_es_cu_M05_AXI_ARREADY),
        .s_axi_control_ARVALID(connect_to_es_cu_M05_AXI_ARVALID),
        .s_axi_control_AWADDR(connect_to_es_cu_M05_AXI_AWADDR[5:0]),
        .s_axi_control_AWREADY(connect_to_es_cu_M05_AXI_AWREADY),
        .s_axi_control_AWVALID(connect_to_es_cu_M05_AXI_AWVALID),
        .s_axi_control_BREADY(connect_to_es_cu_M05_AXI_BREADY),
        .s_axi_control_BRESP(connect_to_es_cu_M05_AXI_BRESP),
        .s_axi_control_BVALID(connect_to_es_cu_M05_AXI_BVALID),
        .s_axi_control_RDATA(connect_to_es_cu_M05_AXI_RDATA),
        .s_axi_control_RREADY(connect_to_es_cu_M05_AXI_RREADY),
        .s_axi_control_RRESP(connect_to_es_cu_M05_AXI_RRESP),
        .s_axi_control_RVALID(connect_to_es_cu_M05_AXI_RVALID),
        .s_axi_control_WDATA(connect_to_es_cu_M05_AXI_WDATA),
        .s_axi_control_WREADY(connect_to_es_cu_M05_AXI_WREADY),
        .s_axi_control_WSTRB(connect_to_es_cu_M05_AXI_WSTRB),
        .s_axi_control_WVALID(connect_to_es_cu_M05_AXI_WVALID));
  emu_sim_ddr_1_0 sim_ddr_1
       (.c0_ddr_saxi_aclk(clk_reset_wizard_ddr_default_clk),
        .c0_ddr_saxi_araddr(Conn2_ARADDR),
        .c0_ddr_saxi_arburst(Conn2_ARBURST),
        .c0_ddr_saxi_arcache(Conn2_ARCACHE),
        .c0_ddr_saxi_aresetn(clk_reset_wizard_ddr_default_rst),
        .c0_ddr_saxi_arid(Conn2_ARID),
        .c0_ddr_saxi_arlen(Conn2_ARLEN),
        .c0_ddr_saxi_arlock(Conn2_ARLOCK),
        .c0_ddr_saxi_arprot(Conn2_ARPROT),
        .c0_ddr_saxi_arqos(Conn2_ARQOS),
        .c0_ddr_saxi_arready(Conn2_ARREADY),
        .c0_ddr_saxi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .c0_ddr_saxi_arsize(Conn2_ARSIZE),
        .c0_ddr_saxi_aruser(Conn2_ARUSER),
        .c0_ddr_saxi_arvalid(Conn2_ARVALID),
        .c0_ddr_saxi_awaddr(Conn2_AWADDR),
        .c0_ddr_saxi_awburst(Conn2_AWBURST),
        .c0_ddr_saxi_awcache(Conn2_AWCACHE),
        .c0_ddr_saxi_awid(Conn2_AWID),
        .c0_ddr_saxi_awlen(Conn2_AWLEN),
        .c0_ddr_saxi_awlock(Conn2_AWLOCK),
        .c0_ddr_saxi_awprot(Conn2_AWPROT),
        .c0_ddr_saxi_awqos(Conn2_AWQOS),
        .c0_ddr_saxi_awready(Conn2_AWREADY),
        .c0_ddr_saxi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .c0_ddr_saxi_awsize(Conn2_AWSIZE),
        .c0_ddr_saxi_awuser(Conn2_AWUSER),
        .c0_ddr_saxi_awvalid(Conn2_AWVALID),
        .c0_ddr_saxi_bid(Conn2_BID),
        .c0_ddr_saxi_bready(Conn2_BREADY),
        .c0_ddr_saxi_bresp(Conn2_BRESP),
        .c0_ddr_saxi_buser(Conn2_BUSER),
        .c0_ddr_saxi_bvalid(Conn2_BVALID),
        .c0_ddr_saxi_rdata(Conn2_RDATA),
        .c0_ddr_saxi_rid(Conn2_RID),
        .c0_ddr_saxi_rlast(Conn2_RLAST),
        .c0_ddr_saxi_rready(Conn2_RREADY),
        .c0_ddr_saxi_rresp(Conn2_RRESP),
        .c0_ddr_saxi_ruser(Conn2_RUSER),
        .c0_ddr_saxi_rvalid(Conn2_RVALID),
        .c0_ddr_saxi_wdata(Conn2_WDATA),
        .c0_ddr_saxi_wlast(Conn2_WLAST),
        .c0_ddr_saxi_wready(Conn2_WREADY),
        .c0_ddr_saxi_wstrb(Conn2_WSTRB),
        .c0_ddr_saxi_wuser(Conn2_WUSER),
        .c0_ddr_saxi_wvalid(Conn2_WVALID),
        .c0_ui_clk(clk_reset_wizard_ddr_default_clk),
        .s_xdma_axi_aclk(clk_reset_wizard_ddr_default_clk),
        .s_xdma_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_xdma_axi_arburst({1'b0,1'b1}),
        .s_xdma_axi_arcache({1'b0,1'b0,1'b1,1'b1}),
        .s_xdma_axi_aresetn(clk_reset_wizard_ddr_default_rst),
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
  emu_sim_xdma_0_0 sim_xdma_0
       (.m_axictrl_aclk(pcie_dma_aclk),
        .m_axictrl_araddr(sim_xdma_0_M_AXICTRL_ARADDR),
        .m_axictrl_aresetn(psr_dma_pcie_aclk_mb_reset),
        .m_axictrl_arprot(sim_xdma_0_M_AXICTRL_ARPROT),
        .m_axictrl_arready(sim_xdma_0_M_AXICTRL_ARREADY),
        .m_axictrl_arvalid(sim_xdma_0_M_AXICTRL_ARVALID),
        .m_axictrl_awaddr(sim_xdma_0_M_AXICTRL_AWADDR),
        .m_axictrl_awprot(sim_xdma_0_M_AXICTRL_AWPROT),
        .m_axictrl_awready(sim_xdma_0_M_AXICTRL_AWREADY),
        .m_axictrl_awvalid(sim_xdma_0_M_AXICTRL_AWVALID),
        .m_axictrl_bready(sim_xdma_0_M_AXICTRL_BREADY),
        .m_axictrl_bresp(sim_xdma_0_M_AXICTRL_BRESP),
        .m_axictrl_bvalid(sim_xdma_0_M_AXICTRL_BVALID),
        .m_axictrl_rdata(sim_xdma_0_M_AXICTRL_RDATA),
        .m_axictrl_rready(sim_xdma_0_M_AXICTRL_RREADY),
        .m_axictrl_rresp(sim_xdma_0_M_AXICTRL_RRESP),
        .m_axictrl_rvalid(sim_xdma_0_M_AXICTRL_RVALID),
        .m_axictrl_wdata(sim_xdma_0_M_AXICTRL_WDATA),
        .m_axictrl_wready(sim_xdma_0_M_AXICTRL_WREADY),
        .m_axictrl_wstrb(sim_xdma_0_M_AXICTRL_WSTRB),
        .m_axictrl_wvalid(sim_xdma_0_M_AXICTRL_WVALID),
        .m_aximm_aclk(pcie_dma_aclk),
        .m_aximm_araddr(data_M_AXI_0_1_conn_ARADDR),
        .m_aximm_arburst(data_M_AXI_0_1_conn_ARBURST),
        .m_aximm_arcache(data_M_AXI_0_1_conn_ARCACHE),
        .m_aximm_aresetn(psr_dma_pcie_aclk_mb_reset),
        .m_aximm_arid(data_M_AXI_0_1_conn_ARID),
        .m_aximm_arlen(data_M_AXI_0_1_conn_ARLEN),
        .m_aximm_arlock(data_M_AXI_0_1_conn_ARLOCK),
        .m_aximm_arprot(data_M_AXI_0_1_conn_ARPROT),
        .m_aximm_arqos(data_M_AXI_0_1_conn_ARQOS),
        .m_aximm_arready(data_M_AXI_0_1_conn_ARREADY),
        .m_aximm_arsize(data_M_AXI_0_1_conn_ARSIZE),
        .m_aximm_arvalid(data_M_AXI_0_1_conn_ARVALID),
        .m_aximm_awaddr(data_M_AXI_0_1_conn_AWADDR),
        .m_aximm_awburst(data_M_AXI_0_1_conn_AWBURST),
        .m_aximm_awcache(data_M_AXI_0_1_conn_AWCACHE),
        .m_aximm_awid(data_M_AXI_0_1_conn_AWID),
        .m_aximm_awlen(data_M_AXI_0_1_conn_AWLEN),
        .m_aximm_awlock(data_M_AXI_0_1_conn_AWLOCK),
        .m_aximm_awprot(data_M_AXI_0_1_conn_AWPROT),
        .m_aximm_awqos(data_M_AXI_0_1_conn_AWQOS),
        .m_aximm_awready(data_M_AXI_0_1_conn_AWREADY),
        .m_aximm_awsize(data_M_AXI_0_1_conn_AWSIZE),
        .m_aximm_awvalid(data_M_AXI_0_1_conn_AWVALID),
        .m_aximm_bid(data_M_AXI_0_1_conn_BID),
        .m_aximm_bready(data_M_AXI_0_1_conn_BREADY),
        .m_aximm_bresp(data_M_AXI_0_1_conn_BRESP),
        .m_aximm_buser(1'b0),
        .m_aximm_bvalid(data_M_AXI_0_1_conn_BVALID),
        .m_aximm_rdata(data_M_AXI_0_1_conn_RDATA),
        .m_aximm_rid(data_M_AXI_0_1_conn_RID),
        .m_aximm_rlast(data_M_AXI_0_1_conn_RLAST),
        .m_aximm_rready(data_M_AXI_0_1_conn_RREADY),
        .m_aximm_rresp(data_M_AXI_0_1_conn_RRESP),
        .m_aximm_ruser(1'b0),
        .m_aximm_rvalid(data_M_AXI_0_1_conn_RVALID),
        .m_aximm_wdata(data_M_AXI_0_1_conn_WDATA),
        .m_aximm_wlast(data_M_AXI_0_1_conn_WLAST),
        .m_aximm_wready(data_M_AXI_0_1_conn_WREADY),
        .m_aximm_wstrb(data_M_AXI_0_1_conn_WSTRB),
        .m_aximm_wvalid(data_M_AXI_0_1_conn_WVALID));
endmodule
