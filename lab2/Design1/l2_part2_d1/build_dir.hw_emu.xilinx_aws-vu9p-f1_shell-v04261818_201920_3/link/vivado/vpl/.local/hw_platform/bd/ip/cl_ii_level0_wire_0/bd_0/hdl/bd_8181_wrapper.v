//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_8181_wrapper.bd
//Design : bd_8181_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_8181_wrapper
   (BLP_S_AXI_CTRL_USER_00_araddr,
    BLP_S_AXI_CTRL_USER_00_arprot,
    BLP_S_AXI_CTRL_USER_00_arready,
    BLP_S_AXI_CTRL_USER_00_arvalid,
    BLP_S_AXI_CTRL_USER_00_awaddr,
    BLP_S_AXI_CTRL_USER_00_awprot,
    BLP_S_AXI_CTRL_USER_00_awready,
    BLP_S_AXI_CTRL_USER_00_awvalid,
    BLP_S_AXI_CTRL_USER_00_bready,
    BLP_S_AXI_CTRL_USER_00_bresp,
    BLP_S_AXI_CTRL_USER_00_bvalid,
    BLP_S_AXI_CTRL_USER_00_rdata,
    BLP_S_AXI_CTRL_USER_00_rready,
    BLP_S_AXI_CTRL_USER_00_rresp,
    BLP_S_AXI_CTRL_USER_00_rvalid,
    BLP_S_AXI_CTRL_USER_00_wdata,
    BLP_S_AXI_CTRL_USER_00_wready,
    BLP_S_AXI_CTRL_USER_00_wstrb,
    BLP_S_AXI_CTRL_USER_00_wvalid,
    BLP_S_AXI_DATA_H2C_00_araddr,
    BLP_S_AXI_DATA_H2C_00_arburst,
    BLP_S_AXI_DATA_H2C_00_arid,
    BLP_S_AXI_DATA_H2C_00_arlen,
    BLP_S_AXI_DATA_H2C_00_arready,
    BLP_S_AXI_DATA_H2C_00_arvalid,
    BLP_S_AXI_DATA_H2C_00_awaddr,
    BLP_S_AXI_DATA_H2C_00_awburst,
    BLP_S_AXI_DATA_H2C_00_awid,
    BLP_S_AXI_DATA_H2C_00_awlen,
    BLP_S_AXI_DATA_H2C_00_awready,
    BLP_S_AXI_DATA_H2C_00_awvalid,
    BLP_S_AXI_DATA_H2C_00_bid,
    BLP_S_AXI_DATA_H2C_00_bready,
    BLP_S_AXI_DATA_H2C_00_bresp,
    BLP_S_AXI_DATA_H2C_00_bvalid,
    BLP_S_AXI_DATA_H2C_00_rdata,
    BLP_S_AXI_DATA_H2C_00_rid,
    BLP_S_AXI_DATA_H2C_00_rlast,
    BLP_S_AXI_DATA_H2C_00_rready,
    BLP_S_AXI_DATA_H2C_00_rresp,
    BLP_S_AXI_DATA_H2C_00_rvalid,
    BLP_S_AXI_DATA_H2C_00_wdata,
    BLP_S_AXI_DATA_H2C_00_wlast,
    BLP_S_AXI_DATA_H2C_00_wready,
    BLP_S_AXI_DATA_H2C_00_wstrb,
    BLP_S_AXI_DATA_H2C_00_wvalid,
    BLP_S_BSCAN_USER_00_bscanid_en,
    BLP_S_BSCAN_USER_00_capture,
    BLP_S_BSCAN_USER_00_drck,
    BLP_S_BSCAN_USER_00_reset,
    BLP_S_BSCAN_USER_00_runtest,
    BLP_S_BSCAN_USER_00_sel,
    BLP_S_BSCAN_USER_00_shift,
    BLP_S_BSCAN_USER_00_tck,
    BLP_S_BSCAN_USER_00_tdi,
    BLP_S_BSCAN_USER_00_tdo,
    BLP_S_BSCAN_USER_00_tms,
    BLP_S_BSCAN_USER_00_update,
    ULP_M_AXI_CTRL_USER_00_araddr,
    ULP_M_AXI_CTRL_USER_00_arprot,
    ULP_M_AXI_CTRL_USER_00_arready,
    ULP_M_AXI_CTRL_USER_00_arvalid,
    ULP_M_AXI_CTRL_USER_00_awaddr,
    ULP_M_AXI_CTRL_USER_00_awprot,
    ULP_M_AXI_CTRL_USER_00_awready,
    ULP_M_AXI_CTRL_USER_00_awvalid,
    ULP_M_AXI_CTRL_USER_00_bready,
    ULP_M_AXI_CTRL_USER_00_bresp,
    ULP_M_AXI_CTRL_USER_00_bvalid,
    ULP_M_AXI_CTRL_USER_00_rdata,
    ULP_M_AXI_CTRL_USER_00_rready,
    ULP_M_AXI_CTRL_USER_00_rresp,
    ULP_M_AXI_CTRL_USER_00_rvalid,
    ULP_M_AXI_CTRL_USER_00_wdata,
    ULP_M_AXI_CTRL_USER_00_wready,
    ULP_M_AXI_CTRL_USER_00_wstrb,
    ULP_M_AXI_CTRL_USER_00_wvalid,
    ULP_M_AXI_DATA_H2C_00_araddr,
    ULP_M_AXI_DATA_H2C_00_arburst,
    ULP_M_AXI_DATA_H2C_00_arid,
    ULP_M_AXI_DATA_H2C_00_arlen,
    ULP_M_AXI_DATA_H2C_00_arready,
    ULP_M_AXI_DATA_H2C_00_arvalid,
    ULP_M_AXI_DATA_H2C_00_awaddr,
    ULP_M_AXI_DATA_H2C_00_awburst,
    ULP_M_AXI_DATA_H2C_00_awid,
    ULP_M_AXI_DATA_H2C_00_awlen,
    ULP_M_AXI_DATA_H2C_00_awready,
    ULP_M_AXI_DATA_H2C_00_awvalid,
    ULP_M_AXI_DATA_H2C_00_bid,
    ULP_M_AXI_DATA_H2C_00_bready,
    ULP_M_AXI_DATA_H2C_00_bresp,
    ULP_M_AXI_DATA_H2C_00_bvalid,
    ULP_M_AXI_DATA_H2C_00_rdata,
    ULP_M_AXI_DATA_H2C_00_rid,
    ULP_M_AXI_DATA_H2C_00_rlast,
    ULP_M_AXI_DATA_H2C_00_rready,
    ULP_M_AXI_DATA_H2C_00_rresp,
    ULP_M_AXI_DATA_H2C_00_rvalid,
    ULP_M_AXI_DATA_H2C_00_wdata,
    ULP_M_AXI_DATA_H2C_00_wlast,
    ULP_M_AXI_DATA_H2C_00_wready,
    ULP_M_AXI_DATA_H2C_00_wstrb,
    ULP_M_AXI_DATA_H2C_00_wvalid,
    ULP_M_BSCAN_USER_00_bscanid_en,
    ULP_M_BSCAN_USER_00_capture,
    ULP_M_BSCAN_USER_00_drck,
    ULP_M_BSCAN_USER_00_reset,
    ULP_M_BSCAN_USER_00_runtest,
    ULP_M_BSCAN_USER_00_sel,
    ULP_M_BSCAN_USER_00_shift,
    ULP_M_BSCAN_USER_00_tck,
    ULP_M_BSCAN_USER_00_tdi,
    ULP_M_BSCAN_USER_00_tdo,
    ULP_M_BSCAN_USER_00_tms,
    ULP_M_BSCAN_USER_00_update,
    blp_s_aclk_ctrl_00,
    blp_s_aclk_data_h2c_00,
    blp_s_aclk_extra_c_00,
    blp_s_aclk_kernel_00,
    blp_s_aresetn_data_h2c_00,
    ulp_m_aclk_ctrl_00,
    ulp_m_aclk_data_h2c_00,
    ulp_m_aclk_extra_c_00,
    ulp_m_aclk_kernel_00,
    ulp_m_aresetn_data_h2c_00);
  input [24:0]BLP_S_AXI_CTRL_USER_00_araddr;
  input [2:0]BLP_S_AXI_CTRL_USER_00_arprot;
  output BLP_S_AXI_CTRL_USER_00_arready;
  input BLP_S_AXI_CTRL_USER_00_arvalid;
  input [24:0]BLP_S_AXI_CTRL_USER_00_awaddr;
  input [2:0]BLP_S_AXI_CTRL_USER_00_awprot;
  output BLP_S_AXI_CTRL_USER_00_awready;
  input BLP_S_AXI_CTRL_USER_00_awvalid;
  input BLP_S_AXI_CTRL_USER_00_bready;
  output [1:0]BLP_S_AXI_CTRL_USER_00_bresp;
  output BLP_S_AXI_CTRL_USER_00_bvalid;
  output [31:0]BLP_S_AXI_CTRL_USER_00_rdata;
  input BLP_S_AXI_CTRL_USER_00_rready;
  output [1:0]BLP_S_AXI_CTRL_USER_00_rresp;
  output BLP_S_AXI_CTRL_USER_00_rvalid;
  input [31:0]BLP_S_AXI_CTRL_USER_00_wdata;
  output BLP_S_AXI_CTRL_USER_00_wready;
  input [3:0]BLP_S_AXI_CTRL_USER_00_wstrb;
  input BLP_S_AXI_CTRL_USER_00_wvalid;
  input [63:0]BLP_S_AXI_DATA_H2C_00_araddr;
  input [1:0]BLP_S_AXI_DATA_H2C_00_arburst;
  input [5:0]BLP_S_AXI_DATA_H2C_00_arid;
  input [7:0]BLP_S_AXI_DATA_H2C_00_arlen;
  output BLP_S_AXI_DATA_H2C_00_arready;
  input BLP_S_AXI_DATA_H2C_00_arvalid;
  input [63:0]BLP_S_AXI_DATA_H2C_00_awaddr;
  input [1:0]BLP_S_AXI_DATA_H2C_00_awburst;
  input [5:0]BLP_S_AXI_DATA_H2C_00_awid;
  input [7:0]BLP_S_AXI_DATA_H2C_00_awlen;
  output BLP_S_AXI_DATA_H2C_00_awready;
  input BLP_S_AXI_DATA_H2C_00_awvalid;
  output [5:0]BLP_S_AXI_DATA_H2C_00_bid;
  input BLP_S_AXI_DATA_H2C_00_bready;
  output [1:0]BLP_S_AXI_DATA_H2C_00_bresp;
  output BLP_S_AXI_DATA_H2C_00_bvalid;
  output [511:0]BLP_S_AXI_DATA_H2C_00_rdata;
  output [5:0]BLP_S_AXI_DATA_H2C_00_rid;
  output BLP_S_AXI_DATA_H2C_00_rlast;
  input BLP_S_AXI_DATA_H2C_00_rready;
  output [1:0]BLP_S_AXI_DATA_H2C_00_rresp;
  output BLP_S_AXI_DATA_H2C_00_rvalid;
  input [511:0]BLP_S_AXI_DATA_H2C_00_wdata;
  input BLP_S_AXI_DATA_H2C_00_wlast;
  output BLP_S_AXI_DATA_H2C_00_wready;
  input [63:0]BLP_S_AXI_DATA_H2C_00_wstrb;
  input BLP_S_AXI_DATA_H2C_00_wvalid;
  input [0:0]BLP_S_BSCAN_USER_00_bscanid_en;
  input [0:0]BLP_S_BSCAN_USER_00_capture;
  input [0:0]BLP_S_BSCAN_USER_00_drck;
  input [0:0]BLP_S_BSCAN_USER_00_reset;
  input [0:0]BLP_S_BSCAN_USER_00_runtest;
  input [0:0]BLP_S_BSCAN_USER_00_sel;
  input [0:0]BLP_S_BSCAN_USER_00_shift;
  input [0:0]BLP_S_BSCAN_USER_00_tck;
  input [0:0]BLP_S_BSCAN_USER_00_tdi;
  output [0:0]BLP_S_BSCAN_USER_00_tdo;
  input [0:0]BLP_S_BSCAN_USER_00_tms;
  input [0:0]BLP_S_BSCAN_USER_00_update;
  output [24:0]ULP_M_AXI_CTRL_USER_00_araddr;
  output [2:0]ULP_M_AXI_CTRL_USER_00_arprot;
  input ULP_M_AXI_CTRL_USER_00_arready;
  output ULP_M_AXI_CTRL_USER_00_arvalid;
  output [24:0]ULP_M_AXI_CTRL_USER_00_awaddr;
  output [2:0]ULP_M_AXI_CTRL_USER_00_awprot;
  input ULP_M_AXI_CTRL_USER_00_awready;
  output ULP_M_AXI_CTRL_USER_00_awvalid;
  output ULP_M_AXI_CTRL_USER_00_bready;
  input [1:0]ULP_M_AXI_CTRL_USER_00_bresp;
  input ULP_M_AXI_CTRL_USER_00_bvalid;
  input [31:0]ULP_M_AXI_CTRL_USER_00_rdata;
  output ULP_M_AXI_CTRL_USER_00_rready;
  input [1:0]ULP_M_AXI_CTRL_USER_00_rresp;
  input ULP_M_AXI_CTRL_USER_00_rvalid;
  output [31:0]ULP_M_AXI_CTRL_USER_00_wdata;
  input ULP_M_AXI_CTRL_USER_00_wready;
  output [3:0]ULP_M_AXI_CTRL_USER_00_wstrb;
  output ULP_M_AXI_CTRL_USER_00_wvalid;
  output [63:0]ULP_M_AXI_DATA_H2C_00_araddr;
  output [1:0]ULP_M_AXI_DATA_H2C_00_arburst;
  output [5:0]ULP_M_AXI_DATA_H2C_00_arid;
  output [7:0]ULP_M_AXI_DATA_H2C_00_arlen;
  input ULP_M_AXI_DATA_H2C_00_arready;
  output ULP_M_AXI_DATA_H2C_00_arvalid;
  output [63:0]ULP_M_AXI_DATA_H2C_00_awaddr;
  output [1:0]ULP_M_AXI_DATA_H2C_00_awburst;
  output [5:0]ULP_M_AXI_DATA_H2C_00_awid;
  output [7:0]ULP_M_AXI_DATA_H2C_00_awlen;
  input ULP_M_AXI_DATA_H2C_00_awready;
  output ULP_M_AXI_DATA_H2C_00_awvalid;
  input [5:0]ULP_M_AXI_DATA_H2C_00_bid;
  output ULP_M_AXI_DATA_H2C_00_bready;
  input [1:0]ULP_M_AXI_DATA_H2C_00_bresp;
  input ULP_M_AXI_DATA_H2C_00_bvalid;
  input [511:0]ULP_M_AXI_DATA_H2C_00_rdata;
  input [5:0]ULP_M_AXI_DATA_H2C_00_rid;
  input ULP_M_AXI_DATA_H2C_00_rlast;
  output ULP_M_AXI_DATA_H2C_00_rready;
  input [1:0]ULP_M_AXI_DATA_H2C_00_rresp;
  input ULP_M_AXI_DATA_H2C_00_rvalid;
  output [511:0]ULP_M_AXI_DATA_H2C_00_wdata;
  output ULP_M_AXI_DATA_H2C_00_wlast;
  input ULP_M_AXI_DATA_H2C_00_wready;
  output [63:0]ULP_M_AXI_DATA_H2C_00_wstrb;
  output ULP_M_AXI_DATA_H2C_00_wvalid;
  output [0:0]ULP_M_BSCAN_USER_00_bscanid_en;
  output [0:0]ULP_M_BSCAN_USER_00_capture;
  output [0:0]ULP_M_BSCAN_USER_00_drck;
  output [0:0]ULP_M_BSCAN_USER_00_reset;
  output [0:0]ULP_M_BSCAN_USER_00_runtest;
  output [0:0]ULP_M_BSCAN_USER_00_sel;
  output [0:0]ULP_M_BSCAN_USER_00_shift;
  output [0:0]ULP_M_BSCAN_USER_00_tck;
  output [0:0]ULP_M_BSCAN_USER_00_tdi;
  input [0:0]ULP_M_BSCAN_USER_00_tdo;
  output [0:0]ULP_M_BSCAN_USER_00_tms;
  output [0:0]ULP_M_BSCAN_USER_00_update;
  input blp_s_aclk_ctrl_00;
  input blp_s_aclk_data_h2c_00;
  input blp_s_aclk_extra_c_00;
  input blp_s_aclk_kernel_00;
  input [0:0]blp_s_aresetn_data_h2c_00;
  output ulp_m_aclk_ctrl_00;
  output ulp_m_aclk_data_h2c_00;
  output ulp_m_aclk_extra_c_00;
  output ulp_m_aclk_kernel_00;
  output [0:0]ulp_m_aresetn_data_h2c_00;

  wire [24:0]BLP_S_AXI_CTRL_USER_00_araddr;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_arprot;
  wire BLP_S_AXI_CTRL_USER_00_arready;
  wire BLP_S_AXI_CTRL_USER_00_arvalid;
  wire [24:0]BLP_S_AXI_CTRL_USER_00_awaddr;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_awprot;
  wire BLP_S_AXI_CTRL_USER_00_awready;
  wire BLP_S_AXI_CTRL_USER_00_awvalid;
  wire BLP_S_AXI_CTRL_USER_00_bready;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_bresp;
  wire BLP_S_AXI_CTRL_USER_00_bvalid;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_rdata;
  wire BLP_S_AXI_CTRL_USER_00_rready;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_rresp;
  wire BLP_S_AXI_CTRL_USER_00_rvalid;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_wdata;
  wire BLP_S_AXI_CTRL_USER_00_wready;
  wire [3:0]BLP_S_AXI_CTRL_USER_00_wstrb;
  wire BLP_S_AXI_CTRL_USER_00_wvalid;
  wire [63:0]BLP_S_AXI_DATA_H2C_00_araddr;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_arburst;
  wire [5:0]BLP_S_AXI_DATA_H2C_00_arid;
  wire [7:0]BLP_S_AXI_DATA_H2C_00_arlen;
  wire BLP_S_AXI_DATA_H2C_00_arready;
  wire BLP_S_AXI_DATA_H2C_00_arvalid;
  wire [63:0]BLP_S_AXI_DATA_H2C_00_awaddr;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_awburst;
  wire [5:0]BLP_S_AXI_DATA_H2C_00_awid;
  wire [7:0]BLP_S_AXI_DATA_H2C_00_awlen;
  wire BLP_S_AXI_DATA_H2C_00_awready;
  wire BLP_S_AXI_DATA_H2C_00_awvalid;
  wire [5:0]BLP_S_AXI_DATA_H2C_00_bid;
  wire BLP_S_AXI_DATA_H2C_00_bready;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_bresp;
  wire BLP_S_AXI_DATA_H2C_00_bvalid;
  wire [511:0]BLP_S_AXI_DATA_H2C_00_rdata;
  wire [5:0]BLP_S_AXI_DATA_H2C_00_rid;
  wire BLP_S_AXI_DATA_H2C_00_rlast;
  wire BLP_S_AXI_DATA_H2C_00_rready;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_rresp;
  wire BLP_S_AXI_DATA_H2C_00_rvalid;
  wire [511:0]BLP_S_AXI_DATA_H2C_00_wdata;
  wire BLP_S_AXI_DATA_H2C_00_wlast;
  wire BLP_S_AXI_DATA_H2C_00_wready;
  wire [63:0]BLP_S_AXI_DATA_H2C_00_wstrb;
  wire BLP_S_AXI_DATA_H2C_00_wvalid;
  wire [0:0]BLP_S_BSCAN_USER_00_bscanid_en;
  wire [0:0]BLP_S_BSCAN_USER_00_capture;
  wire [0:0]BLP_S_BSCAN_USER_00_drck;
  wire [0:0]BLP_S_BSCAN_USER_00_reset;
  wire [0:0]BLP_S_BSCAN_USER_00_runtest;
  wire [0:0]BLP_S_BSCAN_USER_00_sel;
  wire [0:0]BLP_S_BSCAN_USER_00_shift;
  wire [0:0]BLP_S_BSCAN_USER_00_tck;
  wire [0:0]BLP_S_BSCAN_USER_00_tdi;
  wire [0:0]BLP_S_BSCAN_USER_00_tdo;
  wire [0:0]BLP_S_BSCAN_USER_00_tms;
  wire [0:0]BLP_S_BSCAN_USER_00_update;
  wire [24:0]ULP_M_AXI_CTRL_USER_00_araddr;
  wire [2:0]ULP_M_AXI_CTRL_USER_00_arprot;
  wire ULP_M_AXI_CTRL_USER_00_arready;
  wire ULP_M_AXI_CTRL_USER_00_arvalid;
  wire [24:0]ULP_M_AXI_CTRL_USER_00_awaddr;
  wire [2:0]ULP_M_AXI_CTRL_USER_00_awprot;
  wire ULP_M_AXI_CTRL_USER_00_awready;
  wire ULP_M_AXI_CTRL_USER_00_awvalid;
  wire ULP_M_AXI_CTRL_USER_00_bready;
  wire [1:0]ULP_M_AXI_CTRL_USER_00_bresp;
  wire ULP_M_AXI_CTRL_USER_00_bvalid;
  wire [31:0]ULP_M_AXI_CTRL_USER_00_rdata;
  wire ULP_M_AXI_CTRL_USER_00_rready;
  wire [1:0]ULP_M_AXI_CTRL_USER_00_rresp;
  wire ULP_M_AXI_CTRL_USER_00_rvalid;
  wire [31:0]ULP_M_AXI_CTRL_USER_00_wdata;
  wire ULP_M_AXI_CTRL_USER_00_wready;
  wire [3:0]ULP_M_AXI_CTRL_USER_00_wstrb;
  wire ULP_M_AXI_CTRL_USER_00_wvalid;
  wire [63:0]ULP_M_AXI_DATA_H2C_00_araddr;
  wire [1:0]ULP_M_AXI_DATA_H2C_00_arburst;
  wire [5:0]ULP_M_AXI_DATA_H2C_00_arid;
  wire [7:0]ULP_M_AXI_DATA_H2C_00_arlen;
  wire ULP_M_AXI_DATA_H2C_00_arready;
  wire ULP_M_AXI_DATA_H2C_00_arvalid;
  wire [63:0]ULP_M_AXI_DATA_H2C_00_awaddr;
  wire [1:0]ULP_M_AXI_DATA_H2C_00_awburst;
  wire [5:0]ULP_M_AXI_DATA_H2C_00_awid;
  wire [7:0]ULP_M_AXI_DATA_H2C_00_awlen;
  wire ULP_M_AXI_DATA_H2C_00_awready;
  wire ULP_M_AXI_DATA_H2C_00_awvalid;
  wire [5:0]ULP_M_AXI_DATA_H2C_00_bid;
  wire ULP_M_AXI_DATA_H2C_00_bready;
  wire [1:0]ULP_M_AXI_DATA_H2C_00_bresp;
  wire ULP_M_AXI_DATA_H2C_00_bvalid;
  wire [511:0]ULP_M_AXI_DATA_H2C_00_rdata;
  wire [5:0]ULP_M_AXI_DATA_H2C_00_rid;
  wire ULP_M_AXI_DATA_H2C_00_rlast;
  wire ULP_M_AXI_DATA_H2C_00_rready;
  wire [1:0]ULP_M_AXI_DATA_H2C_00_rresp;
  wire ULP_M_AXI_DATA_H2C_00_rvalid;
  wire [511:0]ULP_M_AXI_DATA_H2C_00_wdata;
  wire ULP_M_AXI_DATA_H2C_00_wlast;
  wire ULP_M_AXI_DATA_H2C_00_wready;
  wire [63:0]ULP_M_AXI_DATA_H2C_00_wstrb;
  wire ULP_M_AXI_DATA_H2C_00_wvalid;
  wire [0:0]ULP_M_BSCAN_USER_00_bscanid_en;
  wire [0:0]ULP_M_BSCAN_USER_00_capture;
  wire [0:0]ULP_M_BSCAN_USER_00_drck;
  wire [0:0]ULP_M_BSCAN_USER_00_reset;
  wire [0:0]ULP_M_BSCAN_USER_00_runtest;
  wire [0:0]ULP_M_BSCAN_USER_00_sel;
  wire [0:0]ULP_M_BSCAN_USER_00_shift;
  wire [0:0]ULP_M_BSCAN_USER_00_tck;
  wire [0:0]ULP_M_BSCAN_USER_00_tdi;
  wire [0:0]ULP_M_BSCAN_USER_00_tdo;
  wire [0:0]ULP_M_BSCAN_USER_00_tms;
  wire [0:0]ULP_M_BSCAN_USER_00_update;
  wire blp_s_aclk_ctrl_00;
  wire blp_s_aclk_data_h2c_00;
  wire blp_s_aclk_extra_c_00;
  wire blp_s_aclk_kernel_00;
  wire [0:0]blp_s_aresetn_data_h2c_00;
  wire ulp_m_aclk_ctrl_00;
  wire ulp_m_aclk_data_h2c_00;
  wire ulp_m_aclk_extra_c_00;
  wire ulp_m_aclk_kernel_00;
  wire [0:0]ulp_m_aresetn_data_h2c_00;

  bd_8181 bd_8181_i
       (.BLP_S_AXI_CTRL_USER_00_araddr(BLP_S_AXI_CTRL_USER_00_araddr),
        .BLP_S_AXI_CTRL_USER_00_arprot(BLP_S_AXI_CTRL_USER_00_arprot),
        .BLP_S_AXI_CTRL_USER_00_arready(BLP_S_AXI_CTRL_USER_00_arready),
        .BLP_S_AXI_CTRL_USER_00_arvalid(BLP_S_AXI_CTRL_USER_00_arvalid),
        .BLP_S_AXI_CTRL_USER_00_awaddr(BLP_S_AXI_CTRL_USER_00_awaddr),
        .BLP_S_AXI_CTRL_USER_00_awprot(BLP_S_AXI_CTRL_USER_00_awprot),
        .BLP_S_AXI_CTRL_USER_00_awready(BLP_S_AXI_CTRL_USER_00_awready),
        .BLP_S_AXI_CTRL_USER_00_awvalid(BLP_S_AXI_CTRL_USER_00_awvalid),
        .BLP_S_AXI_CTRL_USER_00_bready(BLP_S_AXI_CTRL_USER_00_bready),
        .BLP_S_AXI_CTRL_USER_00_bresp(BLP_S_AXI_CTRL_USER_00_bresp),
        .BLP_S_AXI_CTRL_USER_00_bvalid(BLP_S_AXI_CTRL_USER_00_bvalid),
        .BLP_S_AXI_CTRL_USER_00_rdata(BLP_S_AXI_CTRL_USER_00_rdata),
        .BLP_S_AXI_CTRL_USER_00_rready(BLP_S_AXI_CTRL_USER_00_rready),
        .BLP_S_AXI_CTRL_USER_00_rresp(BLP_S_AXI_CTRL_USER_00_rresp),
        .BLP_S_AXI_CTRL_USER_00_rvalid(BLP_S_AXI_CTRL_USER_00_rvalid),
        .BLP_S_AXI_CTRL_USER_00_wdata(BLP_S_AXI_CTRL_USER_00_wdata),
        .BLP_S_AXI_CTRL_USER_00_wready(BLP_S_AXI_CTRL_USER_00_wready),
        .BLP_S_AXI_CTRL_USER_00_wstrb(BLP_S_AXI_CTRL_USER_00_wstrb),
        .BLP_S_AXI_CTRL_USER_00_wvalid(BLP_S_AXI_CTRL_USER_00_wvalid),
        .BLP_S_AXI_DATA_H2C_00_araddr(BLP_S_AXI_DATA_H2C_00_araddr),
        .BLP_S_AXI_DATA_H2C_00_arburst(BLP_S_AXI_DATA_H2C_00_arburst),
        .BLP_S_AXI_DATA_H2C_00_arid(BLP_S_AXI_DATA_H2C_00_arid),
        .BLP_S_AXI_DATA_H2C_00_arlen(BLP_S_AXI_DATA_H2C_00_arlen),
        .BLP_S_AXI_DATA_H2C_00_arready(BLP_S_AXI_DATA_H2C_00_arready),
        .BLP_S_AXI_DATA_H2C_00_arvalid(BLP_S_AXI_DATA_H2C_00_arvalid),
        .BLP_S_AXI_DATA_H2C_00_awaddr(BLP_S_AXI_DATA_H2C_00_awaddr),
        .BLP_S_AXI_DATA_H2C_00_awburst(BLP_S_AXI_DATA_H2C_00_awburst),
        .BLP_S_AXI_DATA_H2C_00_awid(BLP_S_AXI_DATA_H2C_00_awid),
        .BLP_S_AXI_DATA_H2C_00_awlen(BLP_S_AXI_DATA_H2C_00_awlen),
        .BLP_S_AXI_DATA_H2C_00_awready(BLP_S_AXI_DATA_H2C_00_awready),
        .BLP_S_AXI_DATA_H2C_00_awvalid(BLP_S_AXI_DATA_H2C_00_awvalid),
        .BLP_S_AXI_DATA_H2C_00_bid(BLP_S_AXI_DATA_H2C_00_bid),
        .BLP_S_AXI_DATA_H2C_00_bready(BLP_S_AXI_DATA_H2C_00_bready),
        .BLP_S_AXI_DATA_H2C_00_bresp(BLP_S_AXI_DATA_H2C_00_bresp),
        .BLP_S_AXI_DATA_H2C_00_bvalid(BLP_S_AXI_DATA_H2C_00_bvalid),
        .BLP_S_AXI_DATA_H2C_00_rdata(BLP_S_AXI_DATA_H2C_00_rdata),
        .BLP_S_AXI_DATA_H2C_00_rid(BLP_S_AXI_DATA_H2C_00_rid),
        .BLP_S_AXI_DATA_H2C_00_rlast(BLP_S_AXI_DATA_H2C_00_rlast),
        .BLP_S_AXI_DATA_H2C_00_rready(BLP_S_AXI_DATA_H2C_00_rready),
        .BLP_S_AXI_DATA_H2C_00_rresp(BLP_S_AXI_DATA_H2C_00_rresp),
        .BLP_S_AXI_DATA_H2C_00_rvalid(BLP_S_AXI_DATA_H2C_00_rvalid),
        .BLP_S_AXI_DATA_H2C_00_wdata(BLP_S_AXI_DATA_H2C_00_wdata),
        .BLP_S_AXI_DATA_H2C_00_wlast(BLP_S_AXI_DATA_H2C_00_wlast),
        .BLP_S_AXI_DATA_H2C_00_wready(BLP_S_AXI_DATA_H2C_00_wready),
        .BLP_S_AXI_DATA_H2C_00_wstrb(BLP_S_AXI_DATA_H2C_00_wstrb),
        .BLP_S_AXI_DATA_H2C_00_wvalid(BLP_S_AXI_DATA_H2C_00_wvalid),
        .BLP_S_BSCAN_USER_00_bscanid_en(BLP_S_BSCAN_USER_00_bscanid_en),
        .BLP_S_BSCAN_USER_00_capture(BLP_S_BSCAN_USER_00_capture),
        .BLP_S_BSCAN_USER_00_drck(BLP_S_BSCAN_USER_00_drck),
        .BLP_S_BSCAN_USER_00_reset(BLP_S_BSCAN_USER_00_reset),
        .BLP_S_BSCAN_USER_00_runtest(BLP_S_BSCAN_USER_00_runtest),
        .BLP_S_BSCAN_USER_00_sel(BLP_S_BSCAN_USER_00_sel),
        .BLP_S_BSCAN_USER_00_shift(BLP_S_BSCAN_USER_00_shift),
        .BLP_S_BSCAN_USER_00_tck(BLP_S_BSCAN_USER_00_tck),
        .BLP_S_BSCAN_USER_00_tdi(BLP_S_BSCAN_USER_00_tdi),
        .BLP_S_BSCAN_USER_00_tdo(BLP_S_BSCAN_USER_00_tdo),
        .BLP_S_BSCAN_USER_00_tms(BLP_S_BSCAN_USER_00_tms),
        .BLP_S_BSCAN_USER_00_update(BLP_S_BSCAN_USER_00_update),
        .ULP_M_AXI_CTRL_USER_00_araddr(ULP_M_AXI_CTRL_USER_00_araddr),
        .ULP_M_AXI_CTRL_USER_00_arprot(ULP_M_AXI_CTRL_USER_00_arprot),
        .ULP_M_AXI_CTRL_USER_00_arready(ULP_M_AXI_CTRL_USER_00_arready),
        .ULP_M_AXI_CTRL_USER_00_arvalid(ULP_M_AXI_CTRL_USER_00_arvalid),
        .ULP_M_AXI_CTRL_USER_00_awaddr(ULP_M_AXI_CTRL_USER_00_awaddr),
        .ULP_M_AXI_CTRL_USER_00_awprot(ULP_M_AXI_CTRL_USER_00_awprot),
        .ULP_M_AXI_CTRL_USER_00_awready(ULP_M_AXI_CTRL_USER_00_awready),
        .ULP_M_AXI_CTRL_USER_00_awvalid(ULP_M_AXI_CTRL_USER_00_awvalid),
        .ULP_M_AXI_CTRL_USER_00_bready(ULP_M_AXI_CTRL_USER_00_bready),
        .ULP_M_AXI_CTRL_USER_00_bresp(ULP_M_AXI_CTRL_USER_00_bresp),
        .ULP_M_AXI_CTRL_USER_00_bvalid(ULP_M_AXI_CTRL_USER_00_bvalid),
        .ULP_M_AXI_CTRL_USER_00_rdata(ULP_M_AXI_CTRL_USER_00_rdata),
        .ULP_M_AXI_CTRL_USER_00_rready(ULP_M_AXI_CTRL_USER_00_rready),
        .ULP_M_AXI_CTRL_USER_00_rresp(ULP_M_AXI_CTRL_USER_00_rresp),
        .ULP_M_AXI_CTRL_USER_00_rvalid(ULP_M_AXI_CTRL_USER_00_rvalid),
        .ULP_M_AXI_CTRL_USER_00_wdata(ULP_M_AXI_CTRL_USER_00_wdata),
        .ULP_M_AXI_CTRL_USER_00_wready(ULP_M_AXI_CTRL_USER_00_wready),
        .ULP_M_AXI_CTRL_USER_00_wstrb(ULP_M_AXI_CTRL_USER_00_wstrb),
        .ULP_M_AXI_CTRL_USER_00_wvalid(ULP_M_AXI_CTRL_USER_00_wvalid),
        .ULP_M_AXI_DATA_H2C_00_araddr(ULP_M_AXI_DATA_H2C_00_araddr),
        .ULP_M_AXI_DATA_H2C_00_arburst(ULP_M_AXI_DATA_H2C_00_arburst),
        .ULP_M_AXI_DATA_H2C_00_arid(ULP_M_AXI_DATA_H2C_00_arid),
        .ULP_M_AXI_DATA_H2C_00_arlen(ULP_M_AXI_DATA_H2C_00_arlen),
        .ULP_M_AXI_DATA_H2C_00_arready(ULP_M_AXI_DATA_H2C_00_arready),
        .ULP_M_AXI_DATA_H2C_00_arvalid(ULP_M_AXI_DATA_H2C_00_arvalid),
        .ULP_M_AXI_DATA_H2C_00_awaddr(ULP_M_AXI_DATA_H2C_00_awaddr),
        .ULP_M_AXI_DATA_H2C_00_awburst(ULP_M_AXI_DATA_H2C_00_awburst),
        .ULP_M_AXI_DATA_H2C_00_awid(ULP_M_AXI_DATA_H2C_00_awid),
        .ULP_M_AXI_DATA_H2C_00_awlen(ULP_M_AXI_DATA_H2C_00_awlen),
        .ULP_M_AXI_DATA_H2C_00_awready(ULP_M_AXI_DATA_H2C_00_awready),
        .ULP_M_AXI_DATA_H2C_00_awvalid(ULP_M_AXI_DATA_H2C_00_awvalid),
        .ULP_M_AXI_DATA_H2C_00_bid(ULP_M_AXI_DATA_H2C_00_bid),
        .ULP_M_AXI_DATA_H2C_00_bready(ULP_M_AXI_DATA_H2C_00_bready),
        .ULP_M_AXI_DATA_H2C_00_bresp(ULP_M_AXI_DATA_H2C_00_bresp),
        .ULP_M_AXI_DATA_H2C_00_bvalid(ULP_M_AXI_DATA_H2C_00_bvalid),
        .ULP_M_AXI_DATA_H2C_00_rdata(ULP_M_AXI_DATA_H2C_00_rdata),
        .ULP_M_AXI_DATA_H2C_00_rid(ULP_M_AXI_DATA_H2C_00_rid),
        .ULP_M_AXI_DATA_H2C_00_rlast(ULP_M_AXI_DATA_H2C_00_rlast),
        .ULP_M_AXI_DATA_H2C_00_rready(ULP_M_AXI_DATA_H2C_00_rready),
        .ULP_M_AXI_DATA_H2C_00_rresp(ULP_M_AXI_DATA_H2C_00_rresp),
        .ULP_M_AXI_DATA_H2C_00_rvalid(ULP_M_AXI_DATA_H2C_00_rvalid),
        .ULP_M_AXI_DATA_H2C_00_wdata(ULP_M_AXI_DATA_H2C_00_wdata),
        .ULP_M_AXI_DATA_H2C_00_wlast(ULP_M_AXI_DATA_H2C_00_wlast),
        .ULP_M_AXI_DATA_H2C_00_wready(ULP_M_AXI_DATA_H2C_00_wready),
        .ULP_M_AXI_DATA_H2C_00_wstrb(ULP_M_AXI_DATA_H2C_00_wstrb),
        .ULP_M_AXI_DATA_H2C_00_wvalid(ULP_M_AXI_DATA_H2C_00_wvalid),
        .ULP_M_BSCAN_USER_00_bscanid_en(ULP_M_BSCAN_USER_00_bscanid_en),
        .ULP_M_BSCAN_USER_00_capture(ULP_M_BSCAN_USER_00_capture),
        .ULP_M_BSCAN_USER_00_drck(ULP_M_BSCAN_USER_00_drck),
        .ULP_M_BSCAN_USER_00_reset(ULP_M_BSCAN_USER_00_reset),
        .ULP_M_BSCAN_USER_00_runtest(ULP_M_BSCAN_USER_00_runtest),
        .ULP_M_BSCAN_USER_00_sel(ULP_M_BSCAN_USER_00_sel),
        .ULP_M_BSCAN_USER_00_shift(ULP_M_BSCAN_USER_00_shift),
        .ULP_M_BSCAN_USER_00_tck(ULP_M_BSCAN_USER_00_tck),
        .ULP_M_BSCAN_USER_00_tdi(ULP_M_BSCAN_USER_00_tdi),
        .ULP_M_BSCAN_USER_00_tdo(ULP_M_BSCAN_USER_00_tdo),
        .ULP_M_BSCAN_USER_00_tms(ULP_M_BSCAN_USER_00_tms),
        .ULP_M_BSCAN_USER_00_update(ULP_M_BSCAN_USER_00_update),
        .blp_s_aclk_ctrl_00(blp_s_aclk_ctrl_00),
        .blp_s_aclk_data_h2c_00(blp_s_aclk_data_h2c_00),
        .blp_s_aclk_extra_c_00(blp_s_aclk_extra_c_00),
        .blp_s_aclk_kernel_00(blp_s_aclk_kernel_00),
        .blp_s_aresetn_data_h2c_00(blp_s_aresetn_data_h2c_00),
        .ulp_m_aclk_ctrl_00(ulp_m_aclk_ctrl_00),
        .ulp_m_aclk_data_h2c_00(ulp_m_aclk_data_h2c_00),
        .ulp_m_aclk_extra_c_00(ulp_m_aclk_extra_c_00),
        .ulp_m_aclk_kernel_00(ulp_m_aclk_kernel_00),
        .ulp_m_aresetn_data_h2c_00(ulp_m_aresetn_data_h2c_00));
endmodule
