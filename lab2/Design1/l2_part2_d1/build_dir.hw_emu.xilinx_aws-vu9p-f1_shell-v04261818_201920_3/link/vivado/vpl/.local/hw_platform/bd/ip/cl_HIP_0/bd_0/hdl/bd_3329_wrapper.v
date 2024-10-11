//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_3329_wrapper.bd
//Design : bd_3329_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_3329_wrapper
   (S00_AXI_araddr,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    aclk,
    aresetn,
    ddr4_mem_calib_complete,
    s_sh_cl_rst_dimm_a_n,
    s_sh_cl_rst_dimm_b_n,
    s_sh_cl_rst_dimm_d_n,
    s_sh_cl_sh_ddr_araddr,
    s_sh_cl_sh_ddr_arburst,
    s_sh_cl_sh_ddr_arid,
    s_sh_cl_sh_ddr_arlen,
    s_sh_cl_sh_ddr_arsize,
    s_sh_cl_sh_ddr_arvalid,
    s_sh_cl_sh_ddr_awaddr,
    s_sh_cl_sh_ddr_awburst,
    s_sh_cl_sh_ddr_awid,
    s_sh_cl_sh_ddr_awlen,
    s_sh_cl_sh_ddr_awsize,
    s_sh_cl_sh_ddr_awvalid,
    s_sh_cl_sh_ddr_bready,
    s_sh_cl_sh_ddr_rready,
    s_sh_cl_sh_ddr_wdata,
    s_sh_cl_sh_ddr_wid,
    s_sh_cl_sh_ddr_wlast,
    s_sh_cl_sh_ddr_wstrb,
    s_sh_cl_sh_ddr_wvalid,
    s_sh_clk_300m_dimm0_dn,
    s_sh_clk_300m_dimm0_dp,
    s_sh_clk_300m_dimm1_dn,
    s_sh_clk_300m_dimm1_dp,
    s_sh_clk_300m_dimm3_dn,
    s_sh_clk_300m_dimm3_dp,
    s_sh_clk_main_a0,
    s_sh_ddr_sh_stat_ack0,
    s_sh_ddr_sh_stat_ack1,
    s_sh_ddr_sh_stat_ack2,
    s_sh_ddr_sh_stat_int0,
    s_sh_ddr_sh_stat_int1,
    s_sh_ddr_sh_stat_int2,
    s_sh_ddr_sh_stat_rdata0,
    s_sh_ddr_sh_stat_rdata1,
    s_sh_ddr_sh_stat_rdata2,
    s_sh_m_a_act_n,
    s_sh_m_a_ba,
    s_sh_m_a_bg,
    s_sh_m_a_cke,
    s_sh_m_a_clk_dn,
    s_sh_m_a_clk_dp,
    s_sh_m_a_cs_n,
    s_sh_m_a_dq,
    s_sh_m_a_dqs_dn,
    s_sh_m_a_dqs_dp,
    s_sh_m_a_ecc,
    s_sh_m_a_ma,
    s_sh_m_a_odt,
    s_sh_m_a_par,
    s_sh_m_b_act_n,
    s_sh_m_b_ba,
    s_sh_m_b_bg,
    s_sh_m_b_cke,
    s_sh_m_b_clk_dn,
    s_sh_m_b_clk_dp,
    s_sh_m_b_cs_n,
    s_sh_m_b_dq,
    s_sh_m_b_dqs_dn,
    s_sh_m_b_dqs_dp,
    s_sh_m_b_ecc,
    s_sh_m_b_ma,
    s_sh_m_b_odt,
    s_sh_m_b_par,
    s_sh_m_d_act_n,
    s_sh_m_d_ba,
    s_sh_m_d_bg,
    s_sh_m_d_cke,
    s_sh_m_d_clk_dn,
    s_sh_m_d_clk_dp,
    s_sh_m_d_cs_n,
    s_sh_m_d_dq,
    s_sh_m_d_dqs_dn,
    s_sh_m_d_dqs_dp,
    s_sh_m_d_ecc,
    s_sh_m_d_ma,
    s_sh_m_d_odt,
    s_sh_m_d_par,
    s_sh_rst_main_n,
    s_sh_sh_cl_ddr_arready,
    s_sh_sh_cl_ddr_awready,
    s_sh_sh_cl_ddr_bid,
    s_sh_sh_cl_ddr_bresp,
    s_sh_sh_cl_ddr_bvalid,
    s_sh_sh_cl_ddr_is_ready,
    s_sh_sh_cl_ddr_rdata,
    s_sh_sh_cl_ddr_rid,
    s_sh_sh_cl_ddr_rlast,
    s_sh_sh_cl_ddr_rresp,
    s_sh_sh_cl_ddr_rvalid,
    s_sh_sh_cl_ddr_wready,
    s_sh_sh_ddr_stat_addr0,
    s_sh_sh_ddr_stat_addr1,
    s_sh_sh_ddr_stat_addr2,
    s_sh_sh_ddr_stat_rd0,
    s_sh_sh_ddr_stat_rd1,
    s_sh_sh_ddr_stat_rd2,
    s_sh_sh_ddr_stat_wdata0,
    s_sh_sh_ddr_stat_wdata1,
    s_sh_sh_ddr_stat_wdata2,
    s_sh_sh_ddr_stat_wr0,
    s_sh_sh_ddr_stat_wr1,
    s_sh_sh_ddr_stat_wr2);
  input [36:0]S00_AXI_araddr;
  input [5:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input S00_AXI_arvalid;
  input [36:0]S00_AXI_awaddr;
  input [5:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input S00_AXI_awvalid;
  output [5:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [511:0]S00_AXI_rdata;
  output [5:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [511:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input aclk;
  input aresetn;
  output ddr4_mem_calib_complete;
  output s_sh_cl_rst_dimm_a_n;
  output s_sh_cl_rst_dimm_b_n;
  output s_sh_cl_rst_dimm_d_n;
  output [63:0]s_sh_cl_sh_ddr_araddr;
  output [1:0]s_sh_cl_sh_ddr_arburst;
  output [15:0]s_sh_cl_sh_ddr_arid;
  output [7:0]s_sh_cl_sh_ddr_arlen;
  output [2:0]s_sh_cl_sh_ddr_arsize;
  output s_sh_cl_sh_ddr_arvalid;
  output [63:0]s_sh_cl_sh_ddr_awaddr;
  output [1:0]s_sh_cl_sh_ddr_awburst;
  output [15:0]s_sh_cl_sh_ddr_awid;
  output [7:0]s_sh_cl_sh_ddr_awlen;
  output [2:0]s_sh_cl_sh_ddr_awsize;
  output s_sh_cl_sh_ddr_awvalid;
  output s_sh_cl_sh_ddr_bready;
  output s_sh_cl_sh_ddr_rready;
  output [511:0]s_sh_cl_sh_ddr_wdata;
  output [15:0]s_sh_cl_sh_ddr_wid;
  output s_sh_cl_sh_ddr_wlast;
  output [63:0]s_sh_cl_sh_ddr_wstrb;
  output s_sh_cl_sh_ddr_wvalid;
  input s_sh_clk_300m_dimm0_dn;
  input s_sh_clk_300m_dimm0_dp;
  input s_sh_clk_300m_dimm1_dn;
  input s_sh_clk_300m_dimm1_dp;
  input s_sh_clk_300m_dimm3_dn;
  input s_sh_clk_300m_dimm3_dp;
  input s_sh_clk_main_a0;
  output s_sh_ddr_sh_stat_ack0;
  output s_sh_ddr_sh_stat_ack1;
  output s_sh_ddr_sh_stat_ack2;
  output [7:0]s_sh_ddr_sh_stat_int0;
  output [7:0]s_sh_ddr_sh_stat_int1;
  output [7:0]s_sh_ddr_sh_stat_int2;
  output [31:0]s_sh_ddr_sh_stat_rdata0;
  output [31:0]s_sh_ddr_sh_stat_rdata1;
  output [31:0]s_sh_ddr_sh_stat_rdata2;
  output s_sh_m_a_act_n;
  output [1:0]s_sh_m_a_ba;
  output [1:0]s_sh_m_a_bg;
  output [0:0]s_sh_m_a_cke;
  output [0:0]s_sh_m_a_clk_dn;
  output [0:0]s_sh_m_a_clk_dp;
  output [0:0]s_sh_m_a_cs_n;
  inout [63:0]s_sh_m_a_dq;
  inout [17:0]s_sh_m_a_dqs_dn;
  inout [17:0]s_sh_m_a_dqs_dp;
  inout [7:0]s_sh_m_a_ecc;
  output [16:0]s_sh_m_a_ma;
  output [0:0]s_sh_m_a_odt;
  output s_sh_m_a_par;
  output s_sh_m_b_act_n;
  output [1:0]s_sh_m_b_ba;
  output [1:0]s_sh_m_b_bg;
  output [0:0]s_sh_m_b_cke;
  output [0:0]s_sh_m_b_clk_dn;
  output [0:0]s_sh_m_b_clk_dp;
  output [0:0]s_sh_m_b_cs_n;
  inout [63:0]s_sh_m_b_dq;
  inout [17:0]s_sh_m_b_dqs_dn;
  inout [17:0]s_sh_m_b_dqs_dp;
  inout [7:0]s_sh_m_b_ecc;
  output [16:0]s_sh_m_b_ma;
  output [0:0]s_sh_m_b_odt;
  output s_sh_m_b_par;
  output s_sh_m_d_act_n;
  output [1:0]s_sh_m_d_ba;
  output [1:0]s_sh_m_d_bg;
  output [0:0]s_sh_m_d_cke;
  output [0:0]s_sh_m_d_clk_dn;
  output [0:0]s_sh_m_d_clk_dp;
  output [0:0]s_sh_m_d_cs_n;
  inout [63:0]s_sh_m_d_dq;
  inout [17:0]s_sh_m_d_dqs_dn;
  inout [17:0]s_sh_m_d_dqs_dp;
  inout [7:0]s_sh_m_d_ecc;
  output [16:0]s_sh_m_d_ma;
  output [0:0]s_sh_m_d_odt;
  output s_sh_m_d_par;
  input s_sh_rst_main_n;
  input s_sh_sh_cl_ddr_arready;
  input s_sh_sh_cl_ddr_awready;
  input [15:0]s_sh_sh_cl_ddr_bid;
  input [1:0]s_sh_sh_cl_ddr_bresp;
  input s_sh_sh_cl_ddr_bvalid;
  input s_sh_sh_cl_ddr_is_ready;
  input [511:0]s_sh_sh_cl_ddr_rdata;
  input [15:0]s_sh_sh_cl_ddr_rid;
  input s_sh_sh_cl_ddr_rlast;
  input [1:0]s_sh_sh_cl_ddr_rresp;
  input s_sh_sh_cl_ddr_rvalid;
  input s_sh_sh_cl_ddr_wready;
  input [7:0]s_sh_sh_ddr_stat_addr0;
  input [7:0]s_sh_sh_ddr_stat_addr1;
  input [7:0]s_sh_sh_ddr_stat_addr2;
  input s_sh_sh_ddr_stat_rd0;
  input s_sh_sh_ddr_stat_rd1;
  input s_sh_sh_ddr_stat_rd2;
  input [31:0]s_sh_sh_ddr_stat_wdata0;
  input [31:0]s_sh_sh_ddr_stat_wdata1;
  input [31:0]s_sh_sh_ddr_stat_wdata2;
  input s_sh_sh_ddr_stat_wr0;
  input s_sh_sh_ddr_stat_wr1;
  input s_sh_sh_ddr_stat_wr2;

  wire [36:0]S00_AXI_araddr;
  wire [5:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire [2:0]S00_AXI_arprot;
  wire S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire S00_AXI_arvalid;
  wire [36:0]S00_AXI_awaddr;
  wire [5:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [2:0]S00_AXI_awprot;
  wire S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire S00_AXI_awvalid;
  wire [5:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire [5:0]S00_AXI_rid;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire aclk;
  wire aresetn;
  wire ddr4_mem_calib_complete;
  wire s_sh_cl_rst_dimm_a_n;
  wire s_sh_cl_rst_dimm_b_n;
  wire s_sh_cl_rst_dimm_d_n;
  wire [63:0]s_sh_cl_sh_ddr_araddr;
  wire [1:0]s_sh_cl_sh_ddr_arburst;
  wire [15:0]s_sh_cl_sh_ddr_arid;
  wire [7:0]s_sh_cl_sh_ddr_arlen;
  wire [2:0]s_sh_cl_sh_ddr_arsize;
  wire s_sh_cl_sh_ddr_arvalid;
  wire [63:0]s_sh_cl_sh_ddr_awaddr;
  wire [1:0]s_sh_cl_sh_ddr_awburst;
  wire [15:0]s_sh_cl_sh_ddr_awid;
  wire [7:0]s_sh_cl_sh_ddr_awlen;
  wire [2:0]s_sh_cl_sh_ddr_awsize;
  wire s_sh_cl_sh_ddr_awvalid;
  wire s_sh_cl_sh_ddr_bready;
  wire s_sh_cl_sh_ddr_rready;
  wire [511:0]s_sh_cl_sh_ddr_wdata;
  wire [15:0]s_sh_cl_sh_ddr_wid;
  wire s_sh_cl_sh_ddr_wlast;
  wire [63:0]s_sh_cl_sh_ddr_wstrb;
  wire s_sh_cl_sh_ddr_wvalid;
  wire s_sh_clk_300m_dimm0_dn;
  wire s_sh_clk_300m_dimm0_dp;
  wire s_sh_clk_300m_dimm1_dn;
  wire s_sh_clk_300m_dimm1_dp;
  wire s_sh_clk_300m_dimm3_dn;
  wire s_sh_clk_300m_dimm3_dp;
  wire s_sh_clk_main_a0;
  wire s_sh_ddr_sh_stat_ack0;
  wire s_sh_ddr_sh_stat_ack1;
  wire s_sh_ddr_sh_stat_ack2;
  wire [7:0]s_sh_ddr_sh_stat_int0;
  wire [7:0]s_sh_ddr_sh_stat_int1;
  wire [7:0]s_sh_ddr_sh_stat_int2;
  wire [31:0]s_sh_ddr_sh_stat_rdata0;
  wire [31:0]s_sh_ddr_sh_stat_rdata1;
  wire [31:0]s_sh_ddr_sh_stat_rdata2;
  wire s_sh_m_a_act_n;
  wire [1:0]s_sh_m_a_ba;
  wire [1:0]s_sh_m_a_bg;
  wire [0:0]s_sh_m_a_cke;
  wire [0:0]s_sh_m_a_clk_dn;
  wire [0:0]s_sh_m_a_clk_dp;
  wire [0:0]s_sh_m_a_cs_n;
  wire [63:0]s_sh_m_a_dq;
  wire [17:0]s_sh_m_a_dqs_dn;
  wire [17:0]s_sh_m_a_dqs_dp;
  wire [7:0]s_sh_m_a_ecc;
  wire [16:0]s_sh_m_a_ma;
  wire [0:0]s_sh_m_a_odt;
  wire s_sh_m_a_par;
  wire s_sh_m_b_act_n;
  wire [1:0]s_sh_m_b_ba;
  wire [1:0]s_sh_m_b_bg;
  wire [0:0]s_sh_m_b_cke;
  wire [0:0]s_sh_m_b_clk_dn;
  wire [0:0]s_sh_m_b_clk_dp;
  wire [0:0]s_sh_m_b_cs_n;
  wire [63:0]s_sh_m_b_dq;
  wire [17:0]s_sh_m_b_dqs_dn;
  wire [17:0]s_sh_m_b_dqs_dp;
  wire [7:0]s_sh_m_b_ecc;
  wire [16:0]s_sh_m_b_ma;
  wire [0:0]s_sh_m_b_odt;
  wire s_sh_m_b_par;
  wire s_sh_m_d_act_n;
  wire [1:0]s_sh_m_d_ba;
  wire [1:0]s_sh_m_d_bg;
  wire [0:0]s_sh_m_d_cke;
  wire [0:0]s_sh_m_d_clk_dn;
  wire [0:0]s_sh_m_d_clk_dp;
  wire [0:0]s_sh_m_d_cs_n;
  wire [63:0]s_sh_m_d_dq;
  wire [17:0]s_sh_m_d_dqs_dn;
  wire [17:0]s_sh_m_d_dqs_dp;
  wire [7:0]s_sh_m_d_ecc;
  wire [16:0]s_sh_m_d_ma;
  wire [0:0]s_sh_m_d_odt;
  wire s_sh_m_d_par;
  wire s_sh_rst_main_n;
  wire s_sh_sh_cl_ddr_arready;
  wire s_sh_sh_cl_ddr_awready;
  wire [15:0]s_sh_sh_cl_ddr_bid;
  wire [1:0]s_sh_sh_cl_ddr_bresp;
  wire s_sh_sh_cl_ddr_bvalid;
  wire s_sh_sh_cl_ddr_is_ready;
  wire [511:0]s_sh_sh_cl_ddr_rdata;
  wire [15:0]s_sh_sh_cl_ddr_rid;
  wire s_sh_sh_cl_ddr_rlast;
  wire [1:0]s_sh_sh_cl_ddr_rresp;
  wire s_sh_sh_cl_ddr_rvalid;
  wire s_sh_sh_cl_ddr_wready;
  wire [7:0]s_sh_sh_ddr_stat_addr0;
  wire [7:0]s_sh_sh_ddr_stat_addr1;
  wire [7:0]s_sh_sh_ddr_stat_addr2;
  wire s_sh_sh_ddr_stat_rd0;
  wire s_sh_sh_ddr_stat_rd1;
  wire s_sh_sh_ddr_stat_rd2;
  wire [31:0]s_sh_sh_ddr_stat_wdata0;
  wire [31:0]s_sh_sh_ddr_stat_wdata1;
  wire [31:0]s_sh_sh_ddr_stat_wdata2;
  wire s_sh_sh_ddr_stat_wr0;
  wire s_sh_sh_ddr_stat_wr1;
  wire s_sh_sh_ddr_stat_wr2;

  bd_3329 bd_3329_i
       (.S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arid(S00_AXI_arid),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arregion(S00_AXI_arregion),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awid(S00_AXI_awid),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awregion(S00_AXI_awregion),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bid(S00_AXI_bid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rid(S00_AXI_rid),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .aclk(aclk),
        .aresetn(aresetn),
        .ddr4_mem_calib_complete(ddr4_mem_calib_complete),
        .s_sh_cl_rst_dimm_a_n(s_sh_cl_rst_dimm_a_n),
        .s_sh_cl_rst_dimm_b_n(s_sh_cl_rst_dimm_b_n),
        .s_sh_cl_rst_dimm_d_n(s_sh_cl_rst_dimm_d_n),
        .s_sh_cl_sh_ddr_araddr(s_sh_cl_sh_ddr_araddr),
        .s_sh_cl_sh_ddr_arburst(s_sh_cl_sh_ddr_arburst),
        .s_sh_cl_sh_ddr_arid(s_sh_cl_sh_ddr_arid),
        .s_sh_cl_sh_ddr_arlen(s_sh_cl_sh_ddr_arlen),
        .s_sh_cl_sh_ddr_arsize(s_sh_cl_sh_ddr_arsize),
        .s_sh_cl_sh_ddr_arvalid(s_sh_cl_sh_ddr_arvalid),
        .s_sh_cl_sh_ddr_awaddr(s_sh_cl_sh_ddr_awaddr),
        .s_sh_cl_sh_ddr_awburst(s_sh_cl_sh_ddr_awburst),
        .s_sh_cl_sh_ddr_awid(s_sh_cl_sh_ddr_awid),
        .s_sh_cl_sh_ddr_awlen(s_sh_cl_sh_ddr_awlen),
        .s_sh_cl_sh_ddr_awsize(s_sh_cl_sh_ddr_awsize),
        .s_sh_cl_sh_ddr_awvalid(s_sh_cl_sh_ddr_awvalid),
        .s_sh_cl_sh_ddr_bready(s_sh_cl_sh_ddr_bready),
        .s_sh_cl_sh_ddr_rready(s_sh_cl_sh_ddr_rready),
        .s_sh_cl_sh_ddr_wdata(s_sh_cl_sh_ddr_wdata),
        .s_sh_cl_sh_ddr_wid(s_sh_cl_sh_ddr_wid),
        .s_sh_cl_sh_ddr_wlast(s_sh_cl_sh_ddr_wlast),
        .s_sh_cl_sh_ddr_wstrb(s_sh_cl_sh_ddr_wstrb),
        .s_sh_cl_sh_ddr_wvalid(s_sh_cl_sh_ddr_wvalid),
        .s_sh_clk_300m_dimm0_dn(s_sh_clk_300m_dimm0_dn),
        .s_sh_clk_300m_dimm0_dp(s_sh_clk_300m_dimm0_dp),
        .s_sh_clk_300m_dimm1_dn(s_sh_clk_300m_dimm1_dn),
        .s_sh_clk_300m_dimm1_dp(s_sh_clk_300m_dimm1_dp),
        .s_sh_clk_300m_dimm3_dn(s_sh_clk_300m_dimm3_dn),
        .s_sh_clk_300m_dimm3_dp(s_sh_clk_300m_dimm3_dp),
        .s_sh_clk_main_a0(s_sh_clk_main_a0),
        .s_sh_ddr_sh_stat_ack0(s_sh_ddr_sh_stat_ack0),
        .s_sh_ddr_sh_stat_ack1(s_sh_ddr_sh_stat_ack1),
        .s_sh_ddr_sh_stat_ack2(s_sh_ddr_sh_stat_ack2),
        .s_sh_ddr_sh_stat_int0(s_sh_ddr_sh_stat_int0),
        .s_sh_ddr_sh_stat_int1(s_sh_ddr_sh_stat_int1),
        .s_sh_ddr_sh_stat_int2(s_sh_ddr_sh_stat_int2),
        .s_sh_ddr_sh_stat_rdata0(s_sh_ddr_sh_stat_rdata0),
        .s_sh_ddr_sh_stat_rdata1(s_sh_ddr_sh_stat_rdata1),
        .s_sh_ddr_sh_stat_rdata2(s_sh_ddr_sh_stat_rdata2),
        .s_sh_m_a_act_n(s_sh_m_a_act_n),
        .s_sh_m_a_ba(s_sh_m_a_ba),
        .s_sh_m_a_bg(s_sh_m_a_bg),
        .s_sh_m_a_cke(s_sh_m_a_cke),
        .s_sh_m_a_clk_dn(s_sh_m_a_clk_dn),
        .s_sh_m_a_clk_dp(s_sh_m_a_clk_dp),
        .s_sh_m_a_cs_n(s_sh_m_a_cs_n),
        .s_sh_m_a_dq(s_sh_m_a_dq),
        .s_sh_m_a_dqs_dn(s_sh_m_a_dqs_dn),
        .s_sh_m_a_dqs_dp(s_sh_m_a_dqs_dp),
        .s_sh_m_a_ecc(s_sh_m_a_ecc),
        .s_sh_m_a_ma(s_sh_m_a_ma),
        .s_sh_m_a_odt(s_sh_m_a_odt),
        .s_sh_m_a_par(s_sh_m_a_par),
        .s_sh_m_b_act_n(s_sh_m_b_act_n),
        .s_sh_m_b_ba(s_sh_m_b_ba),
        .s_sh_m_b_bg(s_sh_m_b_bg),
        .s_sh_m_b_cke(s_sh_m_b_cke),
        .s_sh_m_b_clk_dn(s_sh_m_b_clk_dn),
        .s_sh_m_b_clk_dp(s_sh_m_b_clk_dp),
        .s_sh_m_b_cs_n(s_sh_m_b_cs_n),
        .s_sh_m_b_dq(s_sh_m_b_dq),
        .s_sh_m_b_dqs_dn(s_sh_m_b_dqs_dn),
        .s_sh_m_b_dqs_dp(s_sh_m_b_dqs_dp),
        .s_sh_m_b_ecc(s_sh_m_b_ecc),
        .s_sh_m_b_ma(s_sh_m_b_ma),
        .s_sh_m_b_odt(s_sh_m_b_odt),
        .s_sh_m_b_par(s_sh_m_b_par),
        .s_sh_m_d_act_n(s_sh_m_d_act_n),
        .s_sh_m_d_ba(s_sh_m_d_ba),
        .s_sh_m_d_bg(s_sh_m_d_bg),
        .s_sh_m_d_cke(s_sh_m_d_cke),
        .s_sh_m_d_clk_dn(s_sh_m_d_clk_dn),
        .s_sh_m_d_clk_dp(s_sh_m_d_clk_dp),
        .s_sh_m_d_cs_n(s_sh_m_d_cs_n),
        .s_sh_m_d_dq(s_sh_m_d_dq),
        .s_sh_m_d_dqs_dn(s_sh_m_d_dqs_dn),
        .s_sh_m_d_dqs_dp(s_sh_m_d_dqs_dp),
        .s_sh_m_d_ecc(s_sh_m_d_ecc),
        .s_sh_m_d_ma(s_sh_m_d_ma),
        .s_sh_m_d_odt(s_sh_m_d_odt),
        .s_sh_m_d_par(s_sh_m_d_par),
        .s_sh_rst_main_n(s_sh_rst_main_n),
        .s_sh_sh_cl_ddr_arready(s_sh_sh_cl_ddr_arready),
        .s_sh_sh_cl_ddr_awready(s_sh_sh_cl_ddr_awready),
        .s_sh_sh_cl_ddr_bid(s_sh_sh_cl_ddr_bid),
        .s_sh_sh_cl_ddr_bresp(s_sh_sh_cl_ddr_bresp),
        .s_sh_sh_cl_ddr_bvalid(s_sh_sh_cl_ddr_bvalid),
        .s_sh_sh_cl_ddr_is_ready(s_sh_sh_cl_ddr_is_ready),
        .s_sh_sh_cl_ddr_rdata(s_sh_sh_cl_ddr_rdata),
        .s_sh_sh_cl_ddr_rid(s_sh_sh_cl_ddr_rid),
        .s_sh_sh_cl_ddr_rlast(s_sh_sh_cl_ddr_rlast),
        .s_sh_sh_cl_ddr_rresp(s_sh_sh_cl_ddr_rresp),
        .s_sh_sh_cl_ddr_rvalid(s_sh_sh_cl_ddr_rvalid),
        .s_sh_sh_cl_ddr_wready(s_sh_sh_cl_ddr_wready),
        .s_sh_sh_ddr_stat_addr0(s_sh_sh_ddr_stat_addr0),
        .s_sh_sh_ddr_stat_addr1(s_sh_sh_ddr_stat_addr1),
        .s_sh_sh_ddr_stat_addr2(s_sh_sh_ddr_stat_addr2),
        .s_sh_sh_ddr_stat_rd0(s_sh_sh_ddr_stat_rd0),
        .s_sh_sh_ddr_stat_rd1(s_sh_sh_ddr_stat_rd1),
        .s_sh_sh_ddr_stat_rd2(s_sh_sh_ddr_stat_rd2),
        .s_sh_sh_ddr_stat_wdata0(s_sh_sh_ddr_stat_wdata0),
        .s_sh_sh_ddr_stat_wdata1(s_sh_sh_ddr_stat_wdata1),
        .s_sh_sh_ddr_stat_wdata2(s_sh_sh_ddr_stat_wdata2),
        .s_sh_sh_ddr_stat_wr0(s_sh_sh_ddr_stat_wr0),
        .s_sh_sh_ddr_stat_wr1(s_sh_sh_ddr_stat_wr1),
        .s_sh_sh_ddr_stat_wr2(s_sh_sh_ddr_stat_wr2));
endmodule
