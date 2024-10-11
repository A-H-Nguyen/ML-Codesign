//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2725652 Thu Nov 28 09:07:30 MST 2019
//Date        : Mon Dec  2 15:18:46 2019
//Host        : xsjl24003 running 64-bit CentOS Linux release 7.4.1708 (Core)
//Command     : generate_target ii_level0_wire.bd
//Design      : ii_level0_wire
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ii_level0_wire,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ii_level0_wire,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ii_level0_wire.hwdef" *) 
module ii_level0_wire
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [24:0]BLP_S_AXI_CTRL_USER_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARREADY" *) output BLP_S_AXI_CTRL_USER_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARVALID" *) input BLP_S_AXI_CTRL_USER_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWADDR" *) input [24:0]BLP_S_AXI_CTRL_USER_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWREADY" *) output BLP_S_AXI_CTRL_USER_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWVALID" *) input BLP_S_AXI_CTRL_USER_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BREADY" *) input BLP_S_AXI_CTRL_USER_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BVALID" *) output BLP_S_AXI_CTRL_USER_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RDATA" *) output [31:0]BLP_S_AXI_CTRL_USER_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RREADY" *) input BLP_S_AXI_CTRL_USER_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RVALID" *) output BLP_S_AXI_CTRL_USER_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WDATA" *) input [31:0]BLP_S_AXI_CTRL_USER_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WREADY" *) output BLP_S_AXI_CTRL_USER_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_USER_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WVALID" *) input BLP_S_AXI_CTRL_USER_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_00, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]BLP_S_AXI_DATA_H2C_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_00_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARID" *) input [5:0]BLP_S_AXI_DATA_H2C_00_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_00_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARREADY" *) output BLP_S_AXI_DATA_H2C_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARVALID" *) input BLP_S_AXI_DATA_H2C_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWADDR" *) input [63:0]BLP_S_AXI_DATA_H2C_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWBURST" *) input [1:0]BLP_S_AXI_DATA_H2C_00_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWID" *) input [5:0]BLP_S_AXI_DATA_H2C_00_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWLEN" *) input [7:0]BLP_S_AXI_DATA_H2C_00_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWREADY" *) output BLP_S_AXI_DATA_H2C_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 AWVALID" *) input BLP_S_AXI_DATA_H2C_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BID" *) output [5:0]BLP_S_AXI_DATA_H2C_00_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BREADY" *) input BLP_S_AXI_DATA_H2C_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 BVALID" *) output BLP_S_AXI_DATA_H2C_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RDATA" *) output [511:0]BLP_S_AXI_DATA_H2C_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RID" *) output [5:0]BLP_S_AXI_DATA_H2C_00_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RLAST" *) output BLP_S_AXI_DATA_H2C_00_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RREADY" *) input BLP_S_AXI_DATA_H2C_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RRESP" *) output [1:0]BLP_S_AXI_DATA_H2C_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 RVALID" *) output BLP_S_AXI_DATA_H2C_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WDATA" *) input [511:0]BLP_S_AXI_DATA_H2C_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WLAST" *) input BLP_S_AXI_DATA_H2C_00_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WREADY" *) output BLP_S_AXI_DATA_H2C_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WSTRB" *) input [63:0]BLP_S_AXI_DATA_H2C_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 WVALID" *) input BLP_S_AXI_DATA_H2C_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 BSCANID_EN" *) input [0:0]BLP_S_BSCAN_USER_00_bscanid_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 CAPTURE" *) input [0:0]BLP_S_BSCAN_USER_00_capture;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 DRCK" *) input [0:0]BLP_S_BSCAN_USER_00_drck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 RESET" *) input [0:0]BLP_S_BSCAN_USER_00_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 RUNTEST" *) input [0:0]BLP_S_BSCAN_USER_00_runtest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 SEL" *) input [0:0]BLP_S_BSCAN_USER_00_sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 SHIFT" *) input [0:0]BLP_S_BSCAN_USER_00_shift;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TCK" *) input [0:0]BLP_S_BSCAN_USER_00_tck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TDI" *) input [0:0]BLP_S_BSCAN_USER_00_tdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TDO" *) output [0:0]BLP_S_BSCAN_USER_00_tdo;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 TMS" *) input [0:0]BLP_S_BSCAN_USER_00_tms;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 BLP_S_BSCAN_USER_00 UPDATE" *) input [0:0]BLP_S_BSCAN_USER_00_update;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [24:0]ULP_M_AXI_CTRL_USER_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARREADY" *) input ULP_M_AXI_CTRL_USER_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARVALID" *) output ULP_M_AXI_CTRL_USER_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWADDR" *) output [24:0]ULP_M_AXI_CTRL_USER_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWPROT" *) output [2:0]ULP_M_AXI_CTRL_USER_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWREADY" *) input ULP_M_AXI_CTRL_USER_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 AWVALID" *) output ULP_M_AXI_CTRL_USER_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BREADY" *) output ULP_M_AXI_CTRL_USER_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 BVALID" *) input ULP_M_AXI_CTRL_USER_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RDATA" *) input [31:0]ULP_M_AXI_CTRL_USER_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RREADY" *) output ULP_M_AXI_CTRL_USER_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RRESP" *) input [1:0]ULP_M_AXI_CTRL_USER_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 RVALID" *) input ULP_M_AXI_CTRL_USER_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WDATA" *) output [31:0]ULP_M_AXI_CTRL_USER_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WREADY" *) input ULP_M_AXI_CTRL_USER_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WSTRB" *) output [3:0]ULP_M_AXI_CTRL_USER_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 WVALID" *) output ULP_M_AXI_CTRL_USER_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_DATA_H2C_00, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]ULP_M_AXI_DATA_H2C_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARBURST" *) output [1:0]ULP_M_AXI_DATA_H2C_00_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARID" *) output [5:0]ULP_M_AXI_DATA_H2C_00_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARLEN" *) output [7:0]ULP_M_AXI_DATA_H2C_00_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARREADY" *) input ULP_M_AXI_DATA_H2C_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARVALID" *) output ULP_M_AXI_DATA_H2C_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWADDR" *) output [63:0]ULP_M_AXI_DATA_H2C_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWBURST" *) output [1:0]ULP_M_AXI_DATA_H2C_00_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWID" *) output [5:0]ULP_M_AXI_DATA_H2C_00_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWLEN" *) output [7:0]ULP_M_AXI_DATA_H2C_00_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWREADY" *) input ULP_M_AXI_DATA_H2C_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 AWVALID" *) output ULP_M_AXI_DATA_H2C_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BID" *) input [5:0]ULP_M_AXI_DATA_H2C_00_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BREADY" *) output ULP_M_AXI_DATA_H2C_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BRESP" *) input [1:0]ULP_M_AXI_DATA_H2C_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 BVALID" *) input ULP_M_AXI_DATA_H2C_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RDATA" *) input [511:0]ULP_M_AXI_DATA_H2C_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RID" *) input [5:0]ULP_M_AXI_DATA_H2C_00_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RLAST" *) input ULP_M_AXI_DATA_H2C_00_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RREADY" *) output ULP_M_AXI_DATA_H2C_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RRESP" *) input [1:0]ULP_M_AXI_DATA_H2C_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 RVALID" *) input ULP_M_AXI_DATA_H2C_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WDATA" *) output [511:0]ULP_M_AXI_DATA_H2C_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WLAST" *) output ULP_M_AXI_DATA_H2C_00_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WREADY" *) input ULP_M_AXI_DATA_H2C_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WSTRB" *) output [63:0]ULP_M_AXI_DATA_H2C_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 WVALID" *) output ULP_M_AXI_DATA_H2C_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 BSCANID_EN" *) output [0:0]ULP_M_BSCAN_USER_00_bscanid_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 CAPTURE" *) output [0:0]ULP_M_BSCAN_USER_00_capture;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 DRCK" *) output [0:0]ULP_M_BSCAN_USER_00_drck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 RESET" *) output [0:0]ULP_M_BSCAN_USER_00_reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 RUNTEST" *) output [0:0]ULP_M_BSCAN_USER_00_runtest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 SEL" *) output [0:0]ULP_M_BSCAN_USER_00_sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 SHIFT" *) output [0:0]ULP_M_BSCAN_USER_00_shift;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TCK" *) output [0:0]ULP_M_BSCAN_USER_00_tck;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TDI" *) output [0:0]ULP_M_BSCAN_USER_00_tdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TDO" *) input [0:0]ULP_M_BSCAN_USER_00_tdo;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 TMS" *) output [0:0]ULP_M_BSCAN_USER_00_tms;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 ULP_M_BSCAN_USER_00 UPDATE" *) output [0:0]ULP_M_BSCAN_USER_00_update;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_CTRL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_CTRL_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_DATA_H2C_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_DATA_H2C_00, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_00:BLP_S_AXI_DATA_H2C_00, ASSOCIATED_RESET blp_s_aresetn_data_h2c_00, CLK_DOMAIN cd_data_h2c_00, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_data_h2c_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_EXTRA_C_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_EXTRA_C_00, CLK_DOMAIN cd_extra_c_00, FREQ_HZ 500000000, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_extra_c_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_KERNEL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_KERNEL_00, CLK_DOMAIN cd_extra_b_00, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_kernel_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_DATA_H2C_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BLP_S_ARESETN_DATA_H2C_00, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input [0:0]blp_s_aresetn_data_h2c_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_CTRL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_CTRL_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0" *) output ulp_m_aclk_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_DATA_H2C_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_DATA_H2C_00, ASSOCIATED_BUSIF ULP_M_AXI_CTRL_USER_00:ULP_M_AXI_DATA_H2C_00, CLK_DOMAIN cd_data_h2c_00, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0" *) output ulp_m_aclk_data_h2c_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_EXTRA_C_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_EXTRA_C_00, CLK_DOMAIN cd_extra_c_00, FREQ_HZ 500000000, INSERT_VIP 0, PHASE 0" *) output ulp_m_aclk_extra_c_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_KERNEL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_KERNEL_00, CLK_DOMAIN cd_extra_b_00, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0" *) output ulp_m_aclk_kernel_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ULP_M_ARESETN_DATA_H2C_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ULP_M_ARESETN_DATA_H2C_00, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output [0:0]ulp_m_aresetn_data_h2c_00;

  wire [24:0]BLP_S_AXI_CTRL_USER_00_1_ARADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_1_ARPROT;
  wire BLP_S_AXI_CTRL_USER_00_1_ARREADY;
  wire BLP_S_AXI_CTRL_USER_00_1_ARVALID;
  wire [24:0]BLP_S_AXI_CTRL_USER_00_1_AWADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_1_AWPROT;
  wire BLP_S_AXI_CTRL_USER_00_1_AWREADY;
  wire BLP_S_AXI_CTRL_USER_00_1_AWVALID;
  wire BLP_S_AXI_CTRL_USER_00_1_BREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_1_BRESP;
  wire BLP_S_AXI_CTRL_USER_00_1_BVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_1_RDATA;
  wire BLP_S_AXI_CTRL_USER_00_1_RREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_1_RRESP;
  wire BLP_S_AXI_CTRL_USER_00_1_RVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_1_WDATA;
  wire BLP_S_AXI_CTRL_USER_00_1_WREADY;
  wire [3:0]BLP_S_AXI_CTRL_USER_00_1_WSTRB;
  wire BLP_S_AXI_CTRL_USER_00_1_WVALID;
  wire [63:0]BLP_S_AXI_DATA_H2C_00_1_ARADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_ARBURST;
  wire [5:0]BLP_S_AXI_DATA_H2C_00_1_ARID;
  wire [7:0]BLP_S_AXI_DATA_H2C_00_1_ARLEN;
  wire BLP_S_AXI_DATA_H2C_00_1_ARREADY;
  wire BLP_S_AXI_DATA_H2C_00_1_ARVALID;
  wire [63:0]BLP_S_AXI_DATA_H2C_00_1_AWADDR;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_AWBURST;
  wire [5:0]BLP_S_AXI_DATA_H2C_00_1_AWID;
  wire [7:0]BLP_S_AXI_DATA_H2C_00_1_AWLEN;
  wire BLP_S_AXI_DATA_H2C_00_1_AWREADY;
  wire BLP_S_AXI_DATA_H2C_00_1_AWVALID;
  wire [5:0]BLP_S_AXI_DATA_H2C_00_1_BID;
  wire BLP_S_AXI_DATA_H2C_00_1_BREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_BRESP;
  wire BLP_S_AXI_DATA_H2C_00_1_BVALID;
  wire [511:0]BLP_S_AXI_DATA_H2C_00_1_RDATA;
  wire [5:0]BLP_S_AXI_DATA_H2C_00_1_RID;
  wire BLP_S_AXI_DATA_H2C_00_1_RLAST;
  wire BLP_S_AXI_DATA_H2C_00_1_RREADY;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_1_RRESP;
  wire BLP_S_AXI_DATA_H2C_00_1_RVALID;
  wire [511:0]BLP_S_AXI_DATA_H2C_00_1_WDATA;
  wire BLP_S_AXI_DATA_H2C_00_1_WLAST;
  wire BLP_S_AXI_DATA_H2C_00_1_WREADY;
  wire [63:0]BLP_S_AXI_DATA_H2C_00_1_WSTRB;
  wire BLP_S_AXI_DATA_H2C_00_1_WVALID;
  wire [0:0]BLP_S_BSCAN_USER_00_1_BSCANID_EN;
  wire [0:0]BLP_S_BSCAN_USER_00_1_CAPTURE;
  wire [0:0]BLP_S_BSCAN_USER_00_1_DRCK;
  wire [0:0]BLP_S_BSCAN_USER_00_1_RESET;
  wire [0:0]BLP_S_BSCAN_USER_00_1_RUNTEST;
  wire [0:0]BLP_S_BSCAN_USER_00_1_SEL;
  wire [0:0]BLP_S_BSCAN_USER_00_1_SHIFT;
  wire [0:0]BLP_S_BSCAN_USER_00_1_TCK;
  wire [0:0]BLP_S_BSCAN_USER_00_1_TDI;
  wire [0:0]BLP_S_BSCAN_USER_00_1_TDO;
  wire [0:0]BLP_S_BSCAN_USER_00_1_TMS;
  wire [0:0]BLP_S_BSCAN_USER_00_1_UPDATE;
  wire blp_s_aclk_ctrl_00_1;
  wire blp_s_aclk_data_h2c_00_1;
  wire blp_s_aclk_extra_c_00_1;
  wire blp_s_aclk_kernel_00_1;
  wire [0:0]blp_s_aresetn_data_h2c_00_1;
  wire [24:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARADDR;
  wire [2:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARPROT;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARREADY;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARVALID;
  wire [24:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWADDR;
  wire [2:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWPROT;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWREADY;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWVALID;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BRESP;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BVALID;
  wire [31:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RDATA;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RRESP;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RVALID;
  wire [31:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WDATA;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WREADY;
  wire [3:0]pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WSTRB;
  wire pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WVALID;
  wire [63:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARADDR;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARBURST;
  wire [5:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARID;
  wire [7:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARLEN;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARREADY;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARVALID;
  wire [63:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWADDR;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWBURST;
  wire [5:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWID;
  wire [7:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWLEN;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWREADY;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWVALID;
  wire [5:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BID;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BRESP;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BVALID;
  wire [511:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RDATA;
  wire [5:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RID;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RLAST;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RREADY;
  wire [1:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RRESP;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RVALID;
  wire [511:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WDATA;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WLAST;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WREADY;
  wire [63:0]pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WSTRB;
  wire pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WVALID;
  wire [0:0]pxi_ii_core_ULP_M_BSCAN_USER_00_BSCANID_EN;
  wire [0:0]pxi_ii_core_ULP_M_BSCAN_USER_00_CAPTURE;
  wire [0:0]pxi_ii_core_ULP_M_BSCAN_USER_00_DRCK;
  wire [0:0]pxi_ii_core_ULP_M_BSCAN_USER_00_RESET;
  wire [0:0]pxi_ii_core_ULP_M_BSCAN_USER_00_RUNTEST;
  wire [0:0]pxi_ii_core_ULP_M_BSCAN_USER_00_SEL;
  wire [0:0]pxi_ii_core_ULP_M_BSCAN_USER_00_SHIFT;
  wire [0:0]pxi_ii_core_ULP_M_BSCAN_USER_00_TCK;
  wire [0:0]pxi_ii_core_ULP_M_BSCAN_USER_00_TDI;
  wire [0:0]pxi_ii_core_ULP_M_BSCAN_USER_00_TDO;
  wire [0:0]pxi_ii_core_ULP_M_BSCAN_USER_00_TMS;
  wire [0:0]pxi_ii_core_ULP_M_BSCAN_USER_00_UPDATE;
  wire pxi_ii_core_ulp_m_aclk_ctrl_00;
  wire pxi_ii_core_ulp_m_aclk_data_h2c_00;
  wire pxi_ii_core_ulp_m_aclk_extra_c_00;
  wire pxi_ii_core_ulp_m_aclk_kernel_00;
  wire [0:0]pxi_ii_core_ulp_m_aresetn_data_h2c_00;

  assign BLP_S_AXI_CTRL_USER_00_1_ARADDR = BLP_S_AXI_CTRL_USER_00_araddr[24:0];
  assign BLP_S_AXI_CTRL_USER_00_1_ARPROT = BLP_S_AXI_CTRL_USER_00_arprot[2:0];
  assign BLP_S_AXI_CTRL_USER_00_1_ARVALID = BLP_S_AXI_CTRL_USER_00_arvalid;
  assign BLP_S_AXI_CTRL_USER_00_1_AWADDR = BLP_S_AXI_CTRL_USER_00_awaddr[24:0];
  assign BLP_S_AXI_CTRL_USER_00_1_AWPROT = BLP_S_AXI_CTRL_USER_00_awprot[2:0];
  assign BLP_S_AXI_CTRL_USER_00_1_AWVALID = BLP_S_AXI_CTRL_USER_00_awvalid;
  assign BLP_S_AXI_CTRL_USER_00_1_BREADY = BLP_S_AXI_CTRL_USER_00_bready;
  assign BLP_S_AXI_CTRL_USER_00_1_RREADY = BLP_S_AXI_CTRL_USER_00_rready;
  assign BLP_S_AXI_CTRL_USER_00_1_WDATA = BLP_S_AXI_CTRL_USER_00_wdata[31:0];
  assign BLP_S_AXI_CTRL_USER_00_1_WSTRB = BLP_S_AXI_CTRL_USER_00_wstrb[3:0];
  assign BLP_S_AXI_CTRL_USER_00_1_WVALID = BLP_S_AXI_CTRL_USER_00_wvalid;
  assign BLP_S_AXI_CTRL_USER_00_arready = BLP_S_AXI_CTRL_USER_00_1_ARREADY;
  assign BLP_S_AXI_CTRL_USER_00_awready = BLP_S_AXI_CTRL_USER_00_1_AWREADY;
  assign BLP_S_AXI_CTRL_USER_00_bresp[1:0] = BLP_S_AXI_CTRL_USER_00_1_BRESP;
  assign BLP_S_AXI_CTRL_USER_00_bvalid = BLP_S_AXI_CTRL_USER_00_1_BVALID;
  assign BLP_S_AXI_CTRL_USER_00_rdata[31:0] = BLP_S_AXI_CTRL_USER_00_1_RDATA;
  assign BLP_S_AXI_CTRL_USER_00_rresp[1:0] = BLP_S_AXI_CTRL_USER_00_1_RRESP;
  assign BLP_S_AXI_CTRL_USER_00_rvalid = BLP_S_AXI_CTRL_USER_00_1_RVALID;
  assign BLP_S_AXI_CTRL_USER_00_wready = BLP_S_AXI_CTRL_USER_00_1_WREADY;
  assign BLP_S_AXI_DATA_H2C_00_1_ARADDR = BLP_S_AXI_DATA_H2C_00_araddr[63:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARBURST = BLP_S_AXI_DATA_H2C_00_arburst[1:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARID = BLP_S_AXI_DATA_H2C_00_arid[5:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARLEN = BLP_S_AXI_DATA_H2C_00_arlen[7:0];
  assign BLP_S_AXI_DATA_H2C_00_1_ARVALID = BLP_S_AXI_DATA_H2C_00_arvalid;
  assign BLP_S_AXI_DATA_H2C_00_1_AWADDR = BLP_S_AXI_DATA_H2C_00_awaddr[63:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWBURST = BLP_S_AXI_DATA_H2C_00_awburst[1:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWID = BLP_S_AXI_DATA_H2C_00_awid[5:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWLEN = BLP_S_AXI_DATA_H2C_00_awlen[7:0];
  assign BLP_S_AXI_DATA_H2C_00_1_AWVALID = BLP_S_AXI_DATA_H2C_00_awvalid;
  assign BLP_S_AXI_DATA_H2C_00_1_BREADY = BLP_S_AXI_DATA_H2C_00_bready;
  assign BLP_S_AXI_DATA_H2C_00_1_RREADY = BLP_S_AXI_DATA_H2C_00_rready;
  assign BLP_S_AXI_DATA_H2C_00_1_WDATA = BLP_S_AXI_DATA_H2C_00_wdata[511:0];
  assign BLP_S_AXI_DATA_H2C_00_1_WLAST = BLP_S_AXI_DATA_H2C_00_wlast;
  assign BLP_S_AXI_DATA_H2C_00_1_WSTRB = BLP_S_AXI_DATA_H2C_00_wstrb[63:0];
  assign BLP_S_AXI_DATA_H2C_00_1_WVALID = BLP_S_AXI_DATA_H2C_00_wvalid;
  assign BLP_S_AXI_DATA_H2C_00_arready = BLP_S_AXI_DATA_H2C_00_1_ARREADY;
  assign BLP_S_AXI_DATA_H2C_00_awready = BLP_S_AXI_DATA_H2C_00_1_AWREADY;
  assign BLP_S_AXI_DATA_H2C_00_bid[5:0] = BLP_S_AXI_DATA_H2C_00_1_BID;
  assign BLP_S_AXI_DATA_H2C_00_bresp[1:0] = BLP_S_AXI_DATA_H2C_00_1_BRESP;
  assign BLP_S_AXI_DATA_H2C_00_bvalid = BLP_S_AXI_DATA_H2C_00_1_BVALID;
  assign BLP_S_AXI_DATA_H2C_00_rdata[511:0] = BLP_S_AXI_DATA_H2C_00_1_RDATA;
  assign BLP_S_AXI_DATA_H2C_00_rid[5:0] = BLP_S_AXI_DATA_H2C_00_1_RID;
  assign BLP_S_AXI_DATA_H2C_00_rlast = BLP_S_AXI_DATA_H2C_00_1_RLAST;
  assign BLP_S_AXI_DATA_H2C_00_rresp[1:0] = BLP_S_AXI_DATA_H2C_00_1_RRESP;
  assign BLP_S_AXI_DATA_H2C_00_rvalid = BLP_S_AXI_DATA_H2C_00_1_RVALID;
  assign BLP_S_AXI_DATA_H2C_00_wready = BLP_S_AXI_DATA_H2C_00_1_WREADY;
  assign BLP_S_BSCAN_USER_00_1_BSCANID_EN = BLP_S_BSCAN_USER_00_bscanid_en[0];
  assign BLP_S_BSCAN_USER_00_1_CAPTURE = BLP_S_BSCAN_USER_00_capture[0];
  assign BLP_S_BSCAN_USER_00_1_DRCK = BLP_S_BSCAN_USER_00_drck[0];
  assign BLP_S_BSCAN_USER_00_1_RESET = BLP_S_BSCAN_USER_00_reset[0];
  assign BLP_S_BSCAN_USER_00_1_RUNTEST = BLP_S_BSCAN_USER_00_runtest[0];
  assign BLP_S_BSCAN_USER_00_1_SEL = BLP_S_BSCAN_USER_00_sel[0];
  assign BLP_S_BSCAN_USER_00_1_SHIFT = BLP_S_BSCAN_USER_00_shift[0];
  assign BLP_S_BSCAN_USER_00_1_TCK = BLP_S_BSCAN_USER_00_tck[0];
  assign BLP_S_BSCAN_USER_00_1_TDI = BLP_S_BSCAN_USER_00_tdi[0];
  assign BLP_S_BSCAN_USER_00_1_TMS = BLP_S_BSCAN_USER_00_tms[0];
  assign BLP_S_BSCAN_USER_00_1_UPDATE = BLP_S_BSCAN_USER_00_update[0];
  assign BLP_S_BSCAN_USER_00_tdo[0] = BLP_S_BSCAN_USER_00_1_TDO;
  assign ULP_M_AXI_CTRL_USER_00_araddr[24:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARADDR;
  assign ULP_M_AXI_CTRL_USER_00_arprot[2:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARPROT;
  assign ULP_M_AXI_CTRL_USER_00_arvalid = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARVALID;
  assign ULP_M_AXI_CTRL_USER_00_awaddr[24:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWADDR;
  assign ULP_M_AXI_CTRL_USER_00_awprot[2:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWPROT;
  assign ULP_M_AXI_CTRL_USER_00_awvalid = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWVALID;
  assign ULP_M_AXI_CTRL_USER_00_bready = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BREADY;
  assign ULP_M_AXI_CTRL_USER_00_rready = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RREADY;
  assign ULP_M_AXI_CTRL_USER_00_wdata[31:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WDATA;
  assign ULP_M_AXI_CTRL_USER_00_wstrb[3:0] = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WSTRB;
  assign ULP_M_AXI_CTRL_USER_00_wvalid = pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WVALID;
  assign ULP_M_AXI_DATA_H2C_00_araddr[63:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARADDR;
  assign ULP_M_AXI_DATA_H2C_00_arburst[1:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARBURST;
  assign ULP_M_AXI_DATA_H2C_00_arid[5:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARID;
  assign ULP_M_AXI_DATA_H2C_00_arlen[7:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARLEN;
  assign ULP_M_AXI_DATA_H2C_00_arvalid = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARVALID;
  assign ULP_M_AXI_DATA_H2C_00_awaddr[63:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWADDR;
  assign ULP_M_AXI_DATA_H2C_00_awburst[1:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWBURST;
  assign ULP_M_AXI_DATA_H2C_00_awid[5:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWID;
  assign ULP_M_AXI_DATA_H2C_00_awlen[7:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWLEN;
  assign ULP_M_AXI_DATA_H2C_00_awvalid = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWVALID;
  assign ULP_M_AXI_DATA_H2C_00_bready = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BREADY;
  assign ULP_M_AXI_DATA_H2C_00_rready = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RREADY;
  assign ULP_M_AXI_DATA_H2C_00_wdata[511:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WDATA;
  assign ULP_M_AXI_DATA_H2C_00_wlast = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WLAST;
  assign ULP_M_AXI_DATA_H2C_00_wstrb[63:0] = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WSTRB;
  assign ULP_M_AXI_DATA_H2C_00_wvalid = pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WVALID;
  assign ULP_M_BSCAN_USER_00_bscanid_en[0] = pxi_ii_core_ULP_M_BSCAN_USER_00_BSCANID_EN;
  assign ULP_M_BSCAN_USER_00_capture[0] = pxi_ii_core_ULP_M_BSCAN_USER_00_CAPTURE;
  assign ULP_M_BSCAN_USER_00_drck[0] = pxi_ii_core_ULP_M_BSCAN_USER_00_DRCK;
  assign ULP_M_BSCAN_USER_00_reset[0] = pxi_ii_core_ULP_M_BSCAN_USER_00_RESET;
  assign ULP_M_BSCAN_USER_00_runtest[0] = pxi_ii_core_ULP_M_BSCAN_USER_00_RUNTEST;
  assign ULP_M_BSCAN_USER_00_sel[0] = pxi_ii_core_ULP_M_BSCAN_USER_00_SEL;
  assign ULP_M_BSCAN_USER_00_shift[0] = pxi_ii_core_ULP_M_BSCAN_USER_00_SHIFT;
  assign ULP_M_BSCAN_USER_00_tck[0] = pxi_ii_core_ULP_M_BSCAN_USER_00_TCK;
  assign ULP_M_BSCAN_USER_00_tdi[0] = pxi_ii_core_ULP_M_BSCAN_USER_00_TDI;
  assign ULP_M_BSCAN_USER_00_tms[0] = pxi_ii_core_ULP_M_BSCAN_USER_00_TMS;
  assign ULP_M_BSCAN_USER_00_update[0] = pxi_ii_core_ULP_M_BSCAN_USER_00_UPDATE;
  assign blp_s_aclk_ctrl_00_1 = blp_s_aclk_ctrl_00;
  assign blp_s_aclk_data_h2c_00_1 = blp_s_aclk_data_h2c_00;
  assign blp_s_aclk_extra_c_00_1 = blp_s_aclk_extra_c_00;
  assign blp_s_aclk_kernel_00_1 = blp_s_aclk_kernel_00;
  assign blp_s_aresetn_data_h2c_00_1 = blp_s_aresetn_data_h2c_00[0];
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARREADY = ULP_M_AXI_CTRL_USER_00_arready;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWREADY = ULP_M_AXI_CTRL_USER_00_awready;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BRESP = ULP_M_AXI_CTRL_USER_00_bresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BVALID = ULP_M_AXI_CTRL_USER_00_bvalid;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RDATA = ULP_M_AXI_CTRL_USER_00_rdata[31:0];
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RRESP = ULP_M_AXI_CTRL_USER_00_rresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RVALID = ULP_M_AXI_CTRL_USER_00_rvalid;
  assign pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WREADY = ULP_M_AXI_CTRL_USER_00_wready;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARREADY = ULP_M_AXI_DATA_H2C_00_arready;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWREADY = ULP_M_AXI_DATA_H2C_00_awready;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BID = ULP_M_AXI_DATA_H2C_00_bid[5:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BRESP = ULP_M_AXI_DATA_H2C_00_bresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BVALID = ULP_M_AXI_DATA_H2C_00_bvalid;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RDATA = ULP_M_AXI_DATA_H2C_00_rdata[511:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RID = ULP_M_AXI_DATA_H2C_00_rid[5:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RLAST = ULP_M_AXI_DATA_H2C_00_rlast;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RRESP = ULP_M_AXI_DATA_H2C_00_rresp[1:0];
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RVALID = ULP_M_AXI_DATA_H2C_00_rvalid;
  assign pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WREADY = ULP_M_AXI_DATA_H2C_00_wready;
  assign pxi_ii_core_ULP_M_BSCAN_USER_00_TDO = ULP_M_BSCAN_USER_00_tdo[0];
  assign ulp_m_aclk_ctrl_00 = pxi_ii_core_ulp_m_aclk_ctrl_00;
  assign ulp_m_aclk_data_h2c_00 = pxi_ii_core_ulp_m_aclk_data_h2c_00;
  assign ulp_m_aclk_extra_c_00 = pxi_ii_core_ulp_m_aclk_extra_c_00;
  assign ulp_m_aclk_kernel_00 = pxi_ii_core_ulp_m_aclk_kernel_00;
  assign ulp_m_aresetn_data_h2c_00[0] = pxi_ii_core_ulp_m_aresetn_data_h2c_00;
  ii_level0_wire_pxi_ii_core_0 pxi_ii_core
       (.BLP_S_AXI_CTRL_USER_00_araddr(BLP_S_AXI_CTRL_USER_00_1_ARADDR),
        .BLP_S_AXI_CTRL_USER_00_arprot(BLP_S_AXI_CTRL_USER_00_1_ARPROT),
        .BLP_S_AXI_CTRL_USER_00_arready(BLP_S_AXI_CTRL_USER_00_1_ARREADY),
        .BLP_S_AXI_CTRL_USER_00_arvalid(BLP_S_AXI_CTRL_USER_00_1_ARVALID),
        .BLP_S_AXI_CTRL_USER_00_awaddr(BLP_S_AXI_CTRL_USER_00_1_AWADDR),
        .BLP_S_AXI_CTRL_USER_00_awprot(BLP_S_AXI_CTRL_USER_00_1_AWPROT),
        .BLP_S_AXI_CTRL_USER_00_awready(BLP_S_AXI_CTRL_USER_00_1_AWREADY),
        .BLP_S_AXI_CTRL_USER_00_awvalid(BLP_S_AXI_CTRL_USER_00_1_AWVALID),
        .BLP_S_AXI_CTRL_USER_00_bready(BLP_S_AXI_CTRL_USER_00_1_BREADY),
        .BLP_S_AXI_CTRL_USER_00_bresp(BLP_S_AXI_CTRL_USER_00_1_BRESP),
        .BLP_S_AXI_CTRL_USER_00_bvalid(BLP_S_AXI_CTRL_USER_00_1_BVALID),
        .BLP_S_AXI_CTRL_USER_00_rdata(BLP_S_AXI_CTRL_USER_00_1_RDATA),
        .BLP_S_AXI_CTRL_USER_00_rready(BLP_S_AXI_CTRL_USER_00_1_RREADY),
        .BLP_S_AXI_CTRL_USER_00_rresp(BLP_S_AXI_CTRL_USER_00_1_RRESP),
        .BLP_S_AXI_CTRL_USER_00_rvalid(BLP_S_AXI_CTRL_USER_00_1_RVALID),
        .BLP_S_AXI_CTRL_USER_00_wdata(BLP_S_AXI_CTRL_USER_00_1_WDATA),
        .BLP_S_AXI_CTRL_USER_00_wready(BLP_S_AXI_CTRL_USER_00_1_WREADY),
        .BLP_S_AXI_CTRL_USER_00_wstrb(BLP_S_AXI_CTRL_USER_00_1_WSTRB),
        .BLP_S_AXI_CTRL_USER_00_wvalid(BLP_S_AXI_CTRL_USER_00_1_WVALID),
        .BLP_S_AXI_DATA_H2C_00_araddr(BLP_S_AXI_DATA_H2C_00_1_ARADDR),
        .BLP_S_AXI_DATA_H2C_00_arburst(BLP_S_AXI_DATA_H2C_00_1_ARBURST),
        .BLP_S_AXI_DATA_H2C_00_arid(BLP_S_AXI_DATA_H2C_00_1_ARID),
        .BLP_S_AXI_DATA_H2C_00_arlen(BLP_S_AXI_DATA_H2C_00_1_ARLEN),
        .BLP_S_AXI_DATA_H2C_00_arready(BLP_S_AXI_DATA_H2C_00_1_ARREADY),
        .BLP_S_AXI_DATA_H2C_00_arvalid(BLP_S_AXI_DATA_H2C_00_1_ARVALID),
        .BLP_S_AXI_DATA_H2C_00_awaddr(BLP_S_AXI_DATA_H2C_00_1_AWADDR),
        .BLP_S_AXI_DATA_H2C_00_awburst(BLP_S_AXI_DATA_H2C_00_1_AWBURST),
        .BLP_S_AXI_DATA_H2C_00_awid(BLP_S_AXI_DATA_H2C_00_1_AWID),
        .BLP_S_AXI_DATA_H2C_00_awlen(BLP_S_AXI_DATA_H2C_00_1_AWLEN),
        .BLP_S_AXI_DATA_H2C_00_awready(BLP_S_AXI_DATA_H2C_00_1_AWREADY),
        .BLP_S_AXI_DATA_H2C_00_awvalid(BLP_S_AXI_DATA_H2C_00_1_AWVALID),
        .BLP_S_AXI_DATA_H2C_00_bid(BLP_S_AXI_DATA_H2C_00_1_BID),
        .BLP_S_AXI_DATA_H2C_00_bready(BLP_S_AXI_DATA_H2C_00_1_BREADY),
        .BLP_S_AXI_DATA_H2C_00_bresp(BLP_S_AXI_DATA_H2C_00_1_BRESP),
        .BLP_S_AXI_DATA_H2C_00_bvalid(BLP_S_AXI_DATA_H2C_00_1_BVALID),
        .BLP_S_AXI_DATA_H2C_00_rdata(BLP_S_AXI_DATA_H2C_00_1_RDATA),
        .BLP_S_AXI_DATA_H2C_00_rid(BLP_S_AXI_DATA_H2C_00_1_RID),
        .BLP_S_AXI_DATA_H2C_00_rlast(BLP_S_AXI_DATA_H2C_00_1_RLAST),
        .BLP_S_AXI_DATA_H2C_00_rready(BLP_S_AXI_DATA_H2C_00_1_RREADY),
        .BLP_S_AXI_DATA_H2C_00_rresp(BLP_S_AXI_DATA_H2C_00_1_RRESP),
        .BLP_S_AXI_DATA_H2C_00_rvalid(BLP_S_AXI_DATA_H2C_00_1_RVALID),
        .BLP_S_AXI_DATA_H2C_00_wdata(BLP_S_AXI_DATA_H2C_00_1_WDATA),
        .BLP_S_AXI_DATA_H2C_00_wlast(BLP_S_AXI_DATA_H2C_00_1_WLAST),
        .BLP_S_AXI_DATA_H2C_00_wready(BLP_S_AXI_DATA_H2C_00_1_WREADY),
        .BLP_S_AXI_DATA_H2C_00_wstrb(BLP_S_AXI_DATA_H2C_00_1_WSTRB),
        .BLP_S_AXI_DATA_H2C_00_wvalid(BLP_S_AXI_DATA_H2C_00_1_WVALID),
        .BLP_S_BSCAN_USER_00_bscanid_en(BLP_S_BSCAN_USER_00_1_BSCANID_EN),
        .BLP_S_BSCAN_USER_00_capture(BLP_S_BSCAN_USER_00_1_CAPTURE),
        .BLP_S_BSCAN_USER_00_drck(BLP_S_BSCAN_USER_00_1_DRCK),
        .BLP_S_BSCAN_USER_00_reset(BLP_S_BSCAN_USER_00_1_RESET),
        .BLP_S_BSCAN_USER_00_runtest(BLP_S_BSCAN_USER_00_1_RUNTEST),
        .BLP_S_BSCAN_USER_00_sel(BLP_S_BSCAN_USER_00_1_SEL),
        .BLP_S_BSCAN_USER_00_shift(BLP_S_BSCAN_USER_00_1_SHIFT),
        .BLP_S_BSCAN_USER_00_tck(BLP_S_BSCAN_USER_00_1_TCK),
        .BLP_S_BSCAN_USER_00_tdi(BLP_S_BSCAN_USER_00_1_TDI),
        .BLP_S_BSCAN_USER_00_tdo(BLP_S_BSCAN_USER_00_1_TDO),
        .BLP_S_BSCAN_USER_00_tms(BLP_S_BSCAN_USER_00_1_TMS),
        .BLP_S_BSCAN_USER_00_update(BLP_S_BSCAN_USER_00_1_UPDATE),
        .ULP_M_AXI_CTRL_USER_00_araddr(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARADDR),
        .ULP_M_AXI_CTRL_USER_00_arprot(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARPROT),
        .ULP_M_AXI_CTRL_USER_00_arready(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARREADY),
        .ULP_M_AXI_CTRL_USER_00_arvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_ARVALID),
        .ULP_M_AXI_CTRL_USER_00_awaddr(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWADDR),
        .ULP_M_AXI_CTRL_USER_00_awprot(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWPROT),
        .ULP_M_AXI_CTRL_USER_00_awready(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWREADY),
        .ULP_M_AXI_CTRL_USER_00_awvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_AWVALID),
        .ULP_M_AXI_CTRL_USER_00_bready(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BREADY),
        .ULP_M_AXI_CTRL_USER_00_bresp(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BRESP),
        .ULP_M_AXI_CTRL_USER_00_bvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_BVALID),
        .ULP_M_AXI_CTRL_USER_00_rdata(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RDATA),
        .ULP_M_AXI_CTRL_USER_00_rready(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RREADY),
        .ULP_M_AXI_CTRL_USER_00_rresp(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RRESP),
        .ULP_M_AXI_CTRL_USER_00_rvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_RVALID),
        .ULP_M_AXI_CTRL_USER_00_wdata(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WDATA),
        .ULP_M_AXI_CTRL_USER_00_wready(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WREADY),
        .ULP_M_AXI_CTRL_USER_00_wstrb(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WSTRB),
        .ULP_M_AXI_CTRL_USER_00_wvalid(pxi_ii_core_ULP_M_AXI_CTRL_USER_00_WVALID),
        .ULP_M_AXI_DATA_H2C_00_araddr(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARADDR),
        .ULP_M_AXI_DATA_H2C_00_arburst(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARBURST),
        .ULP_M_AXI_DATA_H2C_00_arid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARID),
        .ULP_M_AXI_DATA_H2C_00_arlen(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARLEN),
        .ULP_M_AXI_DATA_H2C_00_arready(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARREADY),
        .ULP_M_AXI_DATA_H2C_00_arvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_ARVALID),
        .ULP_M_AXI_DATA_H2C_00_awaddr(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWADDR),
        .ULP_M_AXI_DATA_H2C_00_awburst(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWBURST),
        .ULP_M_AXI_DATA_H2C_00_awid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWID),
        .ULP_M_AXI_DATA_H2C_00_awlen(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWLEN),
        .ULP_M_AXI_DATA_H2C_00_awready(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWREADY),
        .ULP_M_AXI_DATA_H2C_00_awvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_AWVALID),
        .ULP_M_AXI_DATA_H2C_00_bid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BID),
        .ULP_M_AXI_DATA_H2C_00_bready(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BREADY),
        .ULP_M_AXI_DATA_H2C_00_bresp(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BRESP),
        .ULP_M_AXI_DATA_H2C_00_bvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_BVALID),
        .ULP_M_AXI_DATA_H2C_00_rdata(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RDATA),
        .ULP_M_AXI_DATA_H2C_00_rid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RID),
        .ULP_M_AXI_DATA_H2C_00_rlast(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RLAST),
        .ULP_M_AXI_DATA_H2C_00_rready(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RREADY),
        .ULP_M_AXI_DATA_H2C_00_rresp(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RRESP),
        .ULP_M_AXI_DATA_H2C_00_rvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_RVALID),
        .ULP_M_AXI_DATA_H2C_00_wdata(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WDATA),
        .ULP_M_AXI_DATA_H2C_00_wlast(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WLAST),
        .ULP_M_AXI_DATA_H2C_00_wready(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WREADY),
        .ULP_M_AXI_DATA_H2C_00_wstrb(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WSTRB),
        .ULP_M_AXI_DATA_H2C_00_wvalid(pxi_ii_core_ULP_M_AXI_DATA_H2C_00_WVALID),
        .ULP_M_BSCAN_USER_00_bscanid_en(pxi_ii_core_ULP_M_BSCAN_USER_00_BSCANID_EN),
        .ULP_M_BSCAN_USER_00_capture(pxi_ii_core_ULP_M_BSCAN_USER_00_CAPTURE),
        .ULP_M_BSCAN_USER_00_drck(pxi_ii_core_ULP_M_BSCAN_USER_00_DRCK),
        .ULP_M_BSCAN_USER_00_reset(pxi_ii_core_ULP_M_BSCAN_USER_00_RESET),
        .ULP_M_BSCAN_USER_00_runtest(pxi_ii_core_ULP_M_BSCAN_USER_00_RUNTEST),
        .ULP_M_BSCAN_USER_00_sel(pxi_ii_core_ULP_M_BSCAN_USER_00_SEL),
        .ULP_M_BSCAN_USER_00_shift(pxi_ii_core_ULP_M_BSCAN_USER_00_SHIFT),
        .ULP_M_BSCAN_USER_00_tck(pxi_ii_core_ULP_M_BSCAN_USER_00_TCK),
        .ULP_M_BSCAN_USER_00_tdi(pxi_ii_core_ULP_M_BSCAN_USER_00_TDI),
        .ULP_M_BSCAN_USER_00_tdo(pxi_ii_core_ULP_M_BSCAN_USER_00_TDO),
        .ULP_M_BSCAN_USER_00_tms(pxi_ii_core_ULP_M_BSCAN_USER_00_TMS),
        .ULP_M_BSCAN_USER_00_update(pxi_ii_core_ULP_M_BSCAN_USER_00_UPDATE),
        .blp_s_aclk_ctrl_00(blp_s_aclk_ctrl_00_1),
        .blp_s_aclk_data_h2c_00(blp_s_aclk_data_h2c_00_1),
        .blp_s_aclk_extra_c_00(blp_s_aclk_extra_c_00_1),
        .blp_s_aclk_kernel_00(blp_s_aclk_kernel_00_1),
        .blp_s_aresetn_data_h2c_00(blp_s_aresetn_data_h2c_00_1),
        .ulp_m_aclk_ctrl_00(pxi_ii_core_ulp_m_aclk_ctrl_00),
        .ulp_m_aclk_data_h2c_00(pxi_ii_core_ulp_m_aclk_data_h2c_00),
        .ulp_m_aclk_extra_c_00(pxi_ii_core_ulp_m_aclk_extra_c_00),
        .ulp_m_aclk_kernel_00(pxi_ii_core_ulp_m_aclk_kernel_00),
        .ulp_m_aresetn_data_h2c_00(pxi_ii_core_ulp_m_aresetn_data_h2c_00));
endmodule
