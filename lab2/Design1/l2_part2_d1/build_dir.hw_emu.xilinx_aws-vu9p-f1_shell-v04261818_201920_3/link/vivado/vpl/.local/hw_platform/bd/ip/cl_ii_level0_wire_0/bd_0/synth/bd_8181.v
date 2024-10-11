//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_8181.bd
//Design : bd_8181
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_8181,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_8181,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ii_level0_wire_pxi_ii_core_0.hwdef" *) 
module bd_8181
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [24:0]BLP_S_AXI_CTRL_USER_00_araddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_DATA_H2C_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_DATA_H2C_00, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]BLP_S_AXI_DATA_H2C_00_araddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_CTRL_USER_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_CTRL_USER_00, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [24:0]ULP_M_AXI_CTRL_USER_00_araddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ULP_M_AXI_DATA_H2C_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ULP_M_AXI_DATA_H2C_00, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SLR_ASSIGNMENT slr0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]ULP_M_AXI_DATA_H2C_00_araddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_DATA_H2C_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_DATA_H2C_00, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_00:BLP_S_AXI_DATA_H2C_00:BLP_S_BSCAN_USER_00, ASSOCIATED_RESET BLP_S_ARESETN_DATA_H2C_00, CLK_DOMAIN cd_data_h2c_00, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_data_h2c_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_EXTRA_C_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_EXTRA_C_00, CLK_DOMAIN cd_extra_c_00, FREQ_HZ 500000000, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_extra_c_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_KERNEL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_KERNEL_00, CLK_DOMAIN cd_extra_b_00, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0" *) input blp_s_aclk_kernel_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_DATA_H2C_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BLP_S_ARESETN_DATA_H2C_00, INSERT_VIP 0, POLARITY ACTIVE_LOW, TYPE INTERCONNECT" *) input [0:0]blp_s_aresetn_data_h2c_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_CTRL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_CTRL_00, CLK_DOMAIN cd_ctrl_00, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0" *) output ulp_m_aclk_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ULP_M_ACLK_DATA_H2C_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ULP_M_ACLK_DATA_H2C_00, ASSOCIATED_BUSIF ULP_M_AXI_CTRL_USER_00:ULP_M_AXI_DATA_H2C_00:ULP_M_BSCAN_USER_00, ASSOCIATED_RESET ULP_M_ARESETN_DATA_H2C_00, CLK_DOMAIN cd_data_h2c_00, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0" *) output ulp_m_aclk_data_h2c_00;
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
  wire ip_aclk_ctrl_00_clk_out;
  wire ip_aclk_data_h2c_00_clk_out;
  wire ip_aclk_extra_c_00_clk_out;
  wire ip_aclk_kernel_00_clk_out;
  wire [0:0]ip_aresetn_data_h2c_00_q;
  wire [0:0]ip_bscan_user_00_M_BSCAN_BSCANID_EN;
  wire [0:0]ip_bscan_user_00_M_BSCAN_CAPTURE;
  wire [0:0]ip_bscan_user_00_M_BSCAN_DRCK;
  wire [0:0]ip_bscan_user_00_M_BSCAN_RESET;
  wire [0:0]ip_bscan_user_00_M_BSCAN_RUNTEST;
  wire [0:0]ip_bscan_user_00_M_BSCAN_SEL;
  wire [0:0]ip_bscan_user_00_M_BSCAN_SHIFT;
  wire [0:0]ip_bscan_user_00_M_BSCAN_TCK;
  wire [0:0]ip_bscan_user_00_M_BSCAN_TDI;
  wire [0:0]ip_bscan_user_00_M_BSCAN_TDO;
  wire [0:0]ip_bscan_user_00_M_BSCAN_TMS;
  wire [0:0]ip_bscan_user_00_M_BSCAN_UPDATE;
  wire [24:0]m_ip_axi_ctrl_user_00_M_AXI_ARADDR;
  wire [2:0]m_ip_axi_ctrl_user_00_M_AXI_ARPROT;
  wire m_ip_axi_ctrl_user_00_M_AXI_ARREADY;
  wire m_ip_axi_ctrl_user_00_M_AXI_ARVALID;
  wire [24:0]m_ip_axi_ctrl_user_00_M_AXI_AWADDR;
  wire [2:0]m_ip_axi_ctrl_user_00_M_AXI_AWPROT;
  wire m_ip_axi_ctrl_user_00_M_AXI_AWREADY;
  wire m_ip_axi_ctrl_user_00_M_AXI_AWVALID;
  wire m_ip_axi_ctrl_user_00_M_AXI_BREADY;
  wire [1:0]m_ip_axi_ctrl_user_00_M_AXI_BRESP;
  wire m_ip_axi_ctrl_user_00_M_AXI_BVALID;
  wire [31:0]m_ip_axi_ctrl_user_00_M_AXI_RDATA;
  wire m_ip_axi_ctrl_user_00_M_AXI_RREADY;
  wire [1:0]m_ip_axi_ctrl_user_00_M_AXI_RRESP;
  wire m_ip_axi_ctrl_user_00_M_AXI_RVALID;
  wire [31:0]m_ip_axi_ctrl_user_00_M_AXI_WDATA;
  wire m_ip_axi_ctrl_user_00_M_AXI_WREADY;
  wire [3:0]m_ip_axi_ctrl_user_00_M_AXI_WSTRB;
  wire m_ip_axi_ctrl_user_00_M_AXI_WVALID;
  wire [63:0]m_ip_axi_data_h2c_00_M_AXI_ARADDR;
  wire [1:0]m_ip_axi_data_h2c_00_M_AXI_ARBURST;
  wire [5:0]m_ip_axi_data_h2c_00_M_AXI_ARID;
  wire [7:0]m_ip_axi_data_h2c_00_M_AXI_ARLEN;
  wire m_ip_axi_data_h2c_00_M_AXI_ARREADY;
  wire m_ip_axi_data_h2c_00_M_AXI_ARVALID;
  wire [63:0]m_ip_axi_data_h2c_00_M_AXI_AWADDR;
  wire [1:0]m_ip_axi_data_h2c_00_M_AXI_AWBURST;
  wire [5:0]m_ip_axi_data_h2c_00_M_AXI_AWID;
  wire [7:0]m_ip_axi_data_h2c_00_M_AXI_AWLEN;
  wire m_ip_axi_data_h2c_00_M_AXI_AWREADY;
  wire m_ip_axi_data_h2c_00_M_AXI_AWVALID;
  wire [5:0]m_ip_axi_data_h2c_00_M_AXI_BID;
  wire m_ip_axi_data_h2c_00_M_AXI_BREADY;
  wire [1:0]m_ip_axi_data_h2c_00_M_AXI_BRESP;
  wire m_ip_axi_data_h2c_00_M_AXI_BVALID;
  wire [511:0]m_ip_axi_data_h2c_00_M_AXI_RDATA;
  wire [5:0]m_ip_axi_data_h2c_00_M_AXI_RID;
  wire m_ip_axi_data_h2c_00_M_AXI_RLAST;
  wire m_ip_axi_data_h2c_00_M_AXI_RREADY;
  wire [1:0]m_ip_axi_data_h2c_00_M_AXI_RRESP;
  wire m_ip_axi_data_h2c_00_M_AXI_RVALID;
  wire [511:0]m_ip_axi_data_h2c_00_M_AXI_WDATA;
  wire m_ip_axi_data_h2c_00_M_AXI_WLAST;
  wire m_ip_axi_data_h2c_00_M_AXI_WREADY;
  wire [63:0]m_ip_axi_data_h2c_00_M_AXI_WSTRB;
  wire m_ip_axi_data_h2c_00_M_AXI_WVALID;
  wire [24:0]s_ip_axi_ctrl_user_00_M_AXI_ARADDR;
  wire [2:0]s_ip_axi_ctrl_user_00_M_AXI_ARPROT;
  wire s_ip_axi_ctrl_user_00_M_AXI_ARREADY;
  wire s_ip_axi_ctrl_user_00_M_AXI_ARVALID;
  wire [24:0]s_ip_axi_ctrl_user_00_M_AXI_AWADDR;
  wire [2:0]s_ip_axi_ctrl_user_00_M_AXI_AWPROT;
  wire s_ip_axi_ctrl_user_00_M_AXI_AWREADY;
  wire s_ip_axi_ctrl_user_00_M_AXI_AWVALID;
  wire s_ip_axi_ctrl_user_00_M_AXI_BREADY;
  wire [1:0]s_ip_axi_ctrl_user_00_M_AXI_BRESP;
  wire s_ip_axi_ctrl_user_00_M_AXI_BVALID;
  wire [31:0]s_ip_axi_ctrl_user_00_M_AXI_RDATA;
  wire s_ip_axi_ctrl_user_00_M_AXI_RREADY;
  wire [1:0]s_ip_axi_ctrl_user_00_M_AXI_RRESP;
  wire s_ip_axi_ctrl_user_00_M_AXI_RVALID;
  wire [31:0]s_ip_axi_ctrl_user_00_M_AXI_WDATA;
  wire s_ip_axi_ctrl_user_00_M_AXI_WREADY;
  wire [3:0]s_ip_axi_ctrl_user_00_M_AXI_WSTRB;
  wire s_ip_axi_ctrl_user_00_M_AXI_WVALID;
  wire [63:0]s_ip_axi_data_h2c_00_M_AXI_ARADDR;
  wire [1:0]s_ip_axi_data_h2c_00_M_AXI_ARBURST;
  wire [5:0]s_ip_axi_data_h2c_00_M_AXI_ARID;
  wire [7:0]s_ip_axi_data_h2c_00_M_AXI_ARLEN;
  wire s_ip_axi_data_h2c_00_M_AXI_ARREADY;
  wire s_ip_axi_data_h2c_00_M_AXI_ARVALID;
  wire [63:0]s_ip_axi_data_h2c_00_M_AXI_AWADDR;
  wire [1:0]s_ip_axi_data_h2c_00_M_AXI_AWBURST;
  wire [5:0]s_ip_axi_data_h2c_00_M_AXI_AWID;
  wire [7:0]s_ip_axi_data_h2c_00_M_AXI_AWLEN;
  wire s_ip_axi_data_h2c_00_M_AXI_AWREADY;
  wire s_ip_axi_data_h2c_00_M_AXI_AWVALID;
  wire [5:0]s_ip_axi_data_h2c_00_M_AXI_BID;
  wire s_ip_axi_data_h2c_00_M_AXI_BREADY;
  wire [1:0]s_ip_axi_data_h2c_00_M_AXI_BRESP;
  wire s_ip_axi_data_h2c_00_M_AXI_BVALID;
  wire [511:0]s_ip_axi_data_h2c_00_M_AXI_RDATA;
  wire [5:0]s_ip_axi_data_h2c_00_M_AXI_RID;
  wire s_ip_axi_data_h2c_00_M_AXI_RLAST;
  wire s_ip_axi_data_h2c_00_M_AXI_RREADY;
  wire [1:0]s_ip_axi_data_h2c_00_M_AXI_RRESP;
  wire s_ip_axi_data_h2c_00_M_AXI_RVALID;
  wire [511:0]s_ip_axi_data_h2c_00_M_AXI_WDATA;
  wire s_ip_axi_data_h2c_00_M_AXI_WLAST;
  wire s_ip_axi_data_h2c_00_M_AXI_WREADY;
  wire [63:0]s_ip_axi_data_h2c_00_M_AXI_WSTRB;
  wire s_ip_axi_data_h2c_00_M_AXI_WVALID;

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
  assign ULP_M_AXI_CTRL_USER_00_araddr[24:0] = m_ip_axi_ctrl_user_00_M_AXI_ARADDR;
  assign ULP_M_AXI_CTRL_USER_00_arprot[2:0] = m_ip_axi_ctrl_user_00_M_AXI_ARPROT;
  assign ULP_M_AXI_CTRL_USER_00_arvalid = m_ip_axi_ctrl_user_00_M_AXI_ARVALID;
  assign ULP_M_AXI_CTRL_USER_00_awaddr[24:0] = m_ip_axi_ctrl_user_00_M_AXI_AWADDR;
  assign ULP_M_AXI_CTRL_USER_00_awprot[2:0] = m_ip_axi_ctrl_user_00_M_AXI_AWPROT;
  assign ULP_M_AXI_CTRL_USER_00_awvalid = m_ip_axi_ctrl_user_00_M_AXI_AWVALID;
  assign ULP_M_AXI_CTRL_USER_00_bready = m_ip_axi_ctrl_user_00_M_AXI_BREADY;
  assign ULP_M_AXI_CTRL_USER_00_rready = m_ip_axi_ctrl_user_00_M_AXI_RREADY;
  assign ULP_M_AXI_CTRL_USER_00_wdata[31:0] = m_ip_axi_ctrl_user_00_M_AXI_WDATA;
  assign ULP_M_AXI_CTRL_USER_00_wstrb[3:0] = m_ip_axi_ctrl_user_00_M_AXI_WSTRB;
  assign ULP_M_AXI_CTRL_USER_00_wvalid = m_ip_axi_ctrl_user_00_M_AXI_WVALID;
  assign ULP_M_AXI_DATA_H2C_00_araddr[63:0] = m_ip_axi_data_h2c_00_M_AXI_ARADDR;
  assign ULP_M_AXI_DATA_H2C_00_arburst[1:0] = m_ip_axi_data_h2c_00_M_AXI_ARBURST;
  assign ULP_M_AXI_DATA_H2C_00_arid[5:0] = m_ip_axi_data_h2c_00_M_AXI_ARID;
  assign ULP_M_AXI_DATA_H2C_00_arlen[7:0] = m_ip_axi_data_h2c_00_M_AXI_ARLEN;
  assign ULP_M_AXI_DATA_H2C_00_arvalid = m_ip_axi_data_h2c_00_M_AXI_ARVALID;
  assign ULP_M_AXI_DATA_H2C_00_awaddr[63:0] = m_ip_axi_data_h2c_00_M_AXI_AWADDR;
  assign ULP_M_AXI_DATA_H2C_00_awburst[1:0] = m_ip_axi_data_h2c_00_M_AXI_AWBURST;
  assign ULP_M_AXI_DATA_H2C_00_awid[5:0] = m_ip_axi_data_h2c_00_M_AXI_AWID;
  assign ULP_M_AXI_DATA_H2C_00_awlen[7:0] = m_ip_axi_data_h2c_00_M_AXI_AWLEN;
  assign ULP_M_AXI_DATA_H2C_00_awvalid = m_ip_axi_data_h2c_00_M_AXI_AWVALID;
  assign ULP_M_AXI_DATA_H2C_00_bready = m_ip_axi_data_h2c_00_M_AXI_BREADY;
  assign ULP_M_AXI_DATA_H2C_00_rready = m_ip_axi_data_h2c_00_M_AXI_RREADY;
  assign ULP_M_AXI_DATA_H2C_00_wdata[511:0] = m_ip_axi_data_h2c_00_M_AXI_WDATA;
  assign ULP_M_AXI_DATA_H2C_00_wlast = m_ip_axi_data_h2c_00_M_AXI_WLAST;
  assign ULP_M_AXI_DATA_H2C_00_wstrb[63:0] = m_ip_axi_data_h2c_00_M_AXI_WSTRB;
  assign ULP_M_AXI_DATA_H2C_00_wvalid = m_ip_axi_data_h2c_00_M_AXI_WVALID;
  assign ULP_M_BSCAN_USER_00_bscanid_en[0] = ip_bscan_user_00_M_BSCAN_BSCANID_EN;
  assign ULP_M_BSCAN_USER_00_capture[0] = ip_bscan_user_00_M_BSCAN_CAPTURE;
  assign ULP_M_BSCAN_USER_00_drck[0] = ip_bscan_user_00_M_BSCAN_DRCK;
  assign ULP_M_BSCAN_USER_00_reset[0] = ip_bscan_user_00_M_BSCAN_RESET;
  assign ULP_M_BSCAN_USER_00_runtest[0] = ip_bscan_user_00_M_BSCAN_RUNTEST;
  assign ULP_M_BSCAN_USER_00_sel[0] = ip_bscan_user_00_M_BSCAN_SEL;
  assign ULP_M_BSCAN_USER_00_shift[0] = ip_bscan_user_00_M_BSCAN_SHIFT;
  assign ULP_M_BSCAN_USER_00_tck[0] = ip_bscan_user_00_M_BSCAN_TCK;
  assign ULP_M_BSCAN_USER_00_tdi[0] = ip_bscan_user_00_M_BSCAN_TDI;
  assign ULP_M_BSCAN_USER_00_tms[0] = ip_bscan_user_00_M_BSCAN_TMS;
  assign ULP_M_BSCAN_USER_00_update[0] = ip_bscan_user_00_M_BSCAN_UPDATE;
  assign blp_s_aclk_ctrl_00_1 = blp_s_aclk_ctrl_00;
  assign blp_s_aclk_data_h2c_00_1 = blp_s_aclk_data_h2c_00;
  assign blp_s_aclk_extra_c_00_1 = blp_s_aclk_extra_c_00;
  assign blp_s_aclk_kernel_00_1 = blp_s_aclk_kernel_00;
  assign blp_s_aresetn_data_h2c_00_1 = blp_s_aresetn_data_h2c_00[0];
  assign ip_bscan_user_00_M_BSCAN_TDO = ULP_M_BSCAN_USER_00_tdo[0];
  assign m_ip_axi_ctrl_user_00_M_AXI_ARREADY = ULP_M_AXI_CTRL_USER_00_arready;
  assign m_ip_axi_ctrl_user_00_M_AXI_AWREADY = ULP_M_AXI_CTRL_USER_00_awready;
  assign m_ip_axi_ctrl_user_00_M_AXI_BRESP = ULP_M_AXI_CTRL_USER_00_bresp[1:0];
  assign m_ip_axi_ctrl_user_00_M_AXI_BVALID = ULP_M_AXI_CTRL_USER_00_bvalid;
  assign m_ip_axi_ctrl_user_00_M_AXI_RDATA = ULP_M_AXI_CTRL_USER_00_rdata[31:0];
  assign m_ip_axi_ctrl_user_00_M_AXI_RRESP = ULP_M_AXI_CTRL_USER_00_rresp[1:0];
  assign m_ip_axi_ctrl_user_00_M_AXI_RVALID = ULP_M_AXI_CTRL_USER_00_rvalid;
  assign m_ip_axi_ctrl_user_00_M_AXI_WREADY = ULP_M_AXI_CTRL_USER_00_wready;
  assign m_ip_axi_data_h2c_00_M_AXI_ARREADY = ULP_M_AXI_DATA_H2C_00_arready;
  assign m_ip_axi_data_h2c_00_M_AXI_AWREADY = ULP_M_AXI_DATA_H2C_00_awready;
  assign m_ip_axi_data_h2c_00_M_AXI_BID = ULP_M_AXI_DATA_H2C_00_bid[5:0];
  assign m_ip_axi_data_h2c_00_M_AXI_BRESP = ULP_M_AXI_DATA_H2C_00_bresp[1:0];
  assign m_ip_axi_data_h2c_00_M_AXI_BVALID = ULP_M_AXI_DATA_H2C_00_bvalid;
  assign m_ip_axi_data_h2c_00_M_AXI_RDATA = ULP_M_AXI_DATA_H2C_00_rdata[511:0];
  assign m_ip_axi_data_h2c_00_M_AXI_RID = ULP_M_AXI_DATA_H2C_00_rid[5:0];
  assign m_ip_axi_data_h2c_00_M_AXI_RLAST = ULP_M_AXI_DATA_H2C_00_rlast;
  assign m_ip_axi_data_h2c_00_M_AXI_RRESP = ULP_M_AXI_DATA_H2C_00_rresp[1:0];
  assign m_ip_axi_data_h2c_00_M_AXI_RVALID = ULP_M_AXI_DATA_H2C_00_rvalid;
  assign m_ip_axi_data_h2c_00_M_AXI_WREADY = ULP_M_AXI_DATA_H2C_00_wready;
  assign ulp_m_aclk_ctrl_00 = ip_aclk_ctrl_00_clk_out;
  assign ulp_m_aclk_data_h2c_00 = ip_aclk_data_h2c_00_clk_out;
  assign ulp_m_aclk_extra_c_00 = ip_aclk_extra_c_00_clk_out;
  assign ulp_m_aclk_kernel_00 = ip_aclk_kernel_00_clk_out;
  assign ulp_m_aresetn_data_h2c_00[0] = ip_aresetn_data_h2c_00_q;
  bd_8181_ip_aclk_ctrl_00_0 ip_aclk_ctrl_00
       (.clk_in(blp_s_aclk_ctrl_00_1),
        .clk_out(ip_aclk_ctrl_00_clk_out));
  bd_8181_ip_aclk_data_h2c_00_0 ip_aclk_data_h2c_00
       (.clk_in(blp_s_aclk_data_h2c_00_1),
        .clk_out(ip_aclk_data_h2c_00_clk_out));
  bd_8181_ip_aclk_extra_c_00_0 ip_aclk_extra_c_00
       (.clk_in(blp_s_aclk_extra_c_00_1),
        .clk_out(ip_aclk_extra_c_00_clk_out));
  bd_8181_ip_aclk_kernel_00_0 ip_aclk_kernel_00
       (.clk_in(blp_s_aclk_kernel_00_1),
        .clk_out(ip_aclk_kernel_00_clk_out));
  bd_8181_ip_aresetn_data_h2c_00_0 ip_aresetn_data_h2c_00
       (.clk(blp_s_aclk_data_h2c_00_1),
        .d(blp_s_aresetn_data_h2c_00_1),
        .q(ip_aresetn_data_h2c_00_q),
        .resetn(1'b1));
  bd_8181_ip_bscan_user_00_0 ip_bscan_user_00
       (.m_bscanid_en(ip_bscan_user_00_M_BSCAN_BSCANID_EN),
        .m_capture(ip_bscan_user_00_M_BSCAN_CAPTURE),
        .m_drck(ip_bscan_user_00_M_BSCAN_DRCK),
        .m_reset(ip_bscan_user_00_M_BSCAN_RESET),
        .m_runtest(ip_bscan_user_00_M_BSCAN_RUNTEST),
        .m_sel(ip_bscan_user_00_M_BSCAN_SEL),
        .m_shift(ip_bscan_user_00_M_BSCAN_SHIFT),
        .m_tck(ip_bscan_user_00_M_BSCAN_TCK),
        .m_tdi(ip_bscan_user_00_M_BSCAN_TDI),
        .m_tdo(ip_bscan_user_00_M_BSCAN_TDO),
        .m_tms(ip_bscan_user_00_M_BSCAN_TMS),
        .m_update(ip_bscan_user_00_M_BSCAN_UPDATE),
        .s_bscanid_en(BLP_S_BSCAN_USER_00_1_BSCANID_EN),
        .s_capture(BLP_S_BSCAN_USER_00_1_CAPTURE),
        .s_drck(BLP_S_BSCAN_USER_00_1_DRCK),
        .s_reset(BLP_S_BSCAN_USER_00_1_RESET),
        .s_runtest(BLP_S_BSCAN_USER_00_1_RUNTEST),
        .s_sel(BLP_S_BSCAN_USER_00_1_SEL),
        .s_shift(BLP_S_BSCAN_USER_00_1_SHIFT),
        .s_tck(BLP_S_BSCAN_USER_00_1_TCK),
        .s_tdi(BLP_S_BSCAN_USER_00_1_TDI),
        .s_tdo(BLP_S_BSCAN_USER_00_1_TDO),
        .s_tms(BLP_S_BSCAN_USER_00_1_TMS),
        .s_update(BLP_S_BSCAN_USER_00_1_UPDATE));
  bd_8181_m_ip_axi_ctrl_user_00_0 m_ip_axi_ctrl_user_00
       (.aclk(ip_aclk_data_h2c_00_clk_out),
        .aresetn(ip_aresetn_data_h2c_00_q),
        .m_axi_araddr(m_ip_axi_ctrl_user_00_M_AXI_ARADDR),
        .m_axi_arprot(m_ip_axi_ctrl_user_00_M_AXI_ARPROT),
        .m_axi_arready(m_ip_axi_ctrl_user_00_M_AXI_ARREADY),
        .m_axi_arvalid(m_ip_axi_ctrl_user_00_M_AXI_ARVALID),
        .m_axi_awaddr(m_ip_axi_ctrl_user_00_M_AXI_AWADDR),
        .m_axi_awprot(m_ip_axi_ctrl_user_00_M_AXI_AWPROT),
        .m_axi_awready(m_ip_axi_ctrl_user_00_M_AXI_AWREADY),
        .m_axi_awvalid(m_ip_axi_ctrl_user_00_M_AXI_AWVALID),
        .m_axi_bready(m_ip_axi_ctrl_user_00_M_AXI_BREADY),
        .m_axi_bresp(m_ip_axi_ctrl_user_00_M_AXI_BRESP),
        .m_axi_bvalid(m_ip_axi_ctrl_user_00_M_AXI_BVALID),
        .m_axi_rdata(m_ip_axi_ctrl_user_00_M_AXI_RDATA),
        .m_axi_rready(m_ip_axi_ctrl_user_00_M_AXI_RREADY),
        .m_axi_rresp(m_ip_axi_ctrl_user_00_M_AXI_RRESP),
        .m_axi_rvalid(m_ip_axi_ctrl_user_00_M_AXI_RVALID),
        .m_axi_wdata(m_ip_axi_ctrl_user_00_M_AXI_WDATA),
        .m_axi_wready(m_ip_axi_ctrl_user_00_M_AXI_WREADY),
        .m_axi_wstrb(m_ip_axi_ctrl_user_00_M_AXI_WSTRB),
        .m_axi_wvalid(m_ip_axi_ctrl_user_00_M_AXI_WVALID),
        .s_axi_araddr(s_ip_axi_ctrl_user_00_M_AXI_ARADDR),
        .s_axi_arprot(s_ip_axi_ctrl_user_00_M_AXI_ARPROT),
        .s_axi_arready(s_ip_axi_ctrl_user_00_M_AXI_ARREADY),
        .s_axi_arvalid(s_ip_axi_ctrl_user_00_M_AXI_ARVALID),
        .s_axi_awaddr(s_ip_axi_ctrl_user_00_M_AXI_AWADDR),
        .s_axi_awprot(s_ip_axi_ctrl_user_00_M_AXI_AWPROT),
        .s_axi_awready(s_ip_axi_ctrl_user_00_M_AXI_AWREADY),
        .s_axi_awvalid(s_ip_axi_ctrl_user_00_M_AXI_AWVALID),
        .s_axi_bready(s_ip_axi_ctrl_user_00_M_AXI_BREADY),
        .s_axi_bresp(s_ip_axi_ctrl_user_00_M_AXI_BRESP),
        .s_axi_bvalid(s_ip_axi_ctrl_user_00_M_AXI_BVALID),
        .s_axi_rdata(s_ip_axi_ctrl_user_00_M_AXI_RDATA),
        .s_axi_rready(s_ip_axi_ctrl_user_00_M_AXI_RREADY),
        .s_axi_rresp(s_ip_axi_ctrl_user_00_M_AXI_RRESP),
        .s_axi_rvalid(s_ip_axi_ctrl_user_00_M_AXI_RVALID),
        .s_axi_wdata(s_ip_axi_ctrl_user_00_M_AXI_WDATA),
        .s_axi_wready(s_ip_axi_ctrl_user_00_M_AXI_WREADY),
        .s_axi_wstrb(s_ip_axi_ctrl_user_00_M_AXI_WSTRB),
        .s_axi_wvalid(s_ip_axi_ctrl_user_00_M_AXI_WVALID));
  bd_8181_m_ip_axi_data_h2c_00_0 m_ip_axi_data_h2c_00
       (.aclk(ip_aclk_data_h2c_00_clk_out),
        .aresetn(ip_aresetn_data_h2c_00_q),
        .m_axi_araddr(m_ip_axi_data_h2c_00_M_AXI_ARADDR),
        .m_axi_arburst(m_ip_axi_data_h2c_00_M_AXI_ARBURST),
        .m_axi_arid(m_ip_axi_data_h2c_00_M_AXI_ARID),
        .m_axi_arlen(m_ip_axi_data_h2c_00_M_AXI_ARLEN),
        .m_axi_arready(m_ip_axi_data_h2c_00_M_AXI_ARREADY),
        .m_axi_arvalid(m_ip_axi_data_h2c_00_M_AXI_ARVALID),
        .m_axi_awaddr(m_ip_axi_data_h2c_00_M_AXI_AWADDR),
        .m_axi_awburst(m_ip_axi_data_h2c_00_M_AXI_AWBURST),
        .m_axi_awid(m_ip_axi_data_h2c_00_M_AXI_AWID),
        .m_axi_awlen(m_ip_axi_data_h2c_00_M_AXI_AWLEN),
        .m_axi_awready(m_ip_axi_data_h2c_00_M_AXI_AWREADY),
        .m_axi_awvalid(m_ip_axi_data_h2c_00_M_AXI_AWVALID),
        .m_axi_bid(m_ip_axi_data_h2c_00_M_AXI_BID),
        .m_axi_bready(m_ip_axi_data_h2c_00_M_AXI_BREADY),
        .m_axi_bresp(m_ip_axi_data_h2c_00_M_AXI_BRESP),
        .m_axi_bvalid(m_ip_axi_data_h2c_00_M_AXI_BVALID),
        .m_axi_rdata(m_ip_axi_data_h2c_00_M_AXI_RDATA),
        .m_axi_rid(m_ip_axi_data_h2c_00_M_AXI_RID),
        .m_axi_rlast(m_ip_axi_data_h2c_00_M_AXI_RLAST),
        .m_axi_rready(m_ip_axi_data_h2c_00_M_AXI_RREADY),
        .m_axi_rresp(m_ip_axi_data_h2c_00_M_AXI_RRESP),
        .m_axi_rvalid(m_ip_axi_data_h2c_00_M_AXI_RVALID),
        .m_axi_wdata(m_ip_axi_data_h2c_00_M_AXI_WDATA),
        .m_axi_wlast(m_ip_axi_data_h2c_00_M_AXI_WLAST),
        .m_axi_wready(m_ip_axi_data_h2c_00_M_AXI_WREADY),
        .m_axi_wstrb(m_ip_axi_data_h2c_00_M_AXI_WSTRB),
        .m_axi_wvalid(m_ip_axi_data_h2c_00_M_AXI_WVALID),
        .s_axi_araddr(s_ip_axi_data_h2c_00_M_AXI_ARADDR),
        .s_axi_arburst(s_ip_axi_data_h2c_00_M_AXI_ARBURST),
        .s_axi_arid(s_ip_axi_data_h2c_00_M_AXI_ARID),
        .s_axi_arlen(s_ip_axi_data_h2c_00_M_AXI_ARLEN),
        .s_axi_arready(s_ip_axi_data_h2c_00_M_AXI_ARREADY),
        .s_axi_arvalid(s_ip_axi_data_h2c_00_M_AXI_ARVALID),
        .s_axi_awaddr(s_ip_axi_data_h2c_00_M_AXI_AWADDR),
        .s_axi_awburst(s_ip_axi_data_h2c_00_M_AXI_AWBURST),
        .s_axi_awid(s_ip_axi_data_h2c_00_M_AXI_AWID),
        .s_axi_awlen(s_ip_axi_data_h2c_00_M_AXI_AWLEN),
        .s_axi_awready(s_ip_axi_data_h2c_00_M_AXI_AWREADY),
        .s_axi_awvalid(s_ip_axi_data_h2c_00_M_AXI_AWVALID),
        .s_axi_bid(s_ip_axi_data_h2c_00_M_AXI_BID),
        .s_axi_bready(s_ip_axi_data_h2c_00_M_AXI_BREADY),
        .s_axi_bresp(s_ip_axi_data_h2c_00_M_AXI_BRESP),
        .s_axi_bvalid(s_ip_axi_data_h2c_00_M_AXI_BVALID),
        .s_axi_rdata(s_ip_axi_data_h2c_00_M_AXI_RDATA),
        .s_axi_rid(s_ip_axi_data_h2c_00_M_AXI_RID),
        .s_axi_rlast(s_ip_axi_data_h2c_00_M_AXI_RLAST),
        .s_axi_rready(s_ip_axi_data_h2c_00_M_AXI_RREADY),
        .s_axi_rresp(s_ip_axi_data_h2c_00_M_AXI_RRESP),
        .s_axi_rvalid(s_ip_axi_data_h2c_00_M_AXI_RVALID),
        .s_axi_wdata(s_ip_axi_data_h2c_00_M_AXI_WDATA),
        .s_axi_wlast(s_ip_axi_data_h2c_00_M_AXI_WLAST),
        .s_axi_wready(s_ip_axi_data_h2c_00_M_AXI_WREADY),
        .s_axi_wstrb(s_ip_axi_data_h2c_00_M_AXI_WSTRB),
        .s_axi_wvalid(s_ip_axi_data_h2c_00_M_AXI_WVALID));
  bd_8181_s_ip_axi_ctrl_user_00_0 s_ip_axi_ctrl_user_00
       (.aclk(blp_s_aclk_data_h2c_00_1),
        .aresetn(blp_s_aresetn_data_h2c_00_1),
        .m_axi_araddr(s_ip_axi_ctrl_user_00_M_AXI_ARADDR),
        .m_axi_arprot(s_ip_axi_ctrl_user_00_M_AXI_ARPROT),
        .m_axi_arready(s_ip_axi_ctrl_user_00_M_AXI_ARREADY),
        .m_axi_arvalid(s_ip_axi_ctrl_user_00_M_AXI_ARVALID),
        .m_axi_awaddr(s_ip_axi_ctrl_user_00_M_AXI_AWADDR),
        .m_axi_awprot(s_ip_axi_ctrl_user_00_M_AXI_AWPROT),
        .m_axi_awready(s_ip_axi_ctrl_user_00_M_AXI_AWREADY),
        .m_axi_awvalid(s_ip_axi_ctrl_user_00_M_AXI_AWVALID),
        .m_axi_bready(s_ip_axi_ctrl_user_00_M_AXI_BREADY),
        .m_axi_bresp(s_ip_axi_ctrl_user_00_M_AXI_BRESP),
        .m_axi_bvalid(s_ip_axi_ctrl_user_00_M_AXI_BVALID),
        .m_axi_rdata(s_ip_axi_ctrl_user_00_M_AXI_RDATA),
        .m_axi_rready(s_ip_axi_ctrl_user_00_M_AXI_RREADY),
        .m_axi_rresp(s_ip_axi_ctrl_user_00_M_AXI_RRESP),
        .m_axi_rvalid(s_ip_axi_ctrl_user_00_M_AXI_RVALID),
        .m_axi_wdata(s_ip_axi_ctrl_user_00_M_AXI_WDATA),
        .m_axi_wready(s_ip_axi_ctrl_user_00_M_AXI_WREADY),
        .m_axi_wstrb(s_ip_axi_ctrl_user_00_M_AXI_WSTRB),
        .m_axi_wvalid(s_ip_axi_ctrl_user_00_M_AXI_WVALID),
        .s_axi_araddr(BLP_S_AXI_CTRL_USER_00_1_ARADDR),
        .s_axi_arprot(BLP_S_AXI_CTRL_USER_00_1_ARPROT),
        .s_axi_arready(BLP_S_AXI_CTRL_USER_00_1_ARREADY),
        .s_axi_arvalid(BLP_S_AXI_CTRL_USER_00_1_ARVALID),
        .s_axi_awaddr(BLP_S_AXI_CTRL_USER_00_1_AWADDR),
        .s_axi_awprot(BLP_S_AXI_CTRL_USER_00_1_AWPROT),
        .s_axi_awready(BLP_S_AXI_CTRL_USER_00_1_AWREADY),
        .s_axi_awvalid(BLP_S_AXI_CTRL_USER_00_1_AWVALID),
        .s_axi_bready(BLP_S_AXI_CTRL_USER_00_1_BREADY),
        .s_axi_bresp(BLP_S_AXI_CTRL_USER_00_1_BRESP),
        .s_axi_bvalid(BLP_S_AXI_CTRL_USER_00_1_BVALID),
        .s_axi_rdata(BLP_S_AXI_CTRL_USER_00_1_RDATA),
        .s_axi_rready(BLP_S_AXI_CTRL_USER_00_1_RREADY),
        .s_axi_rresp(BLP_S_AXI_CTRL_USER_00_1_RRESP),
        .s_axi_rvalid(BLP_S_AXI_CTRL_USER_00_1_RVALID),
        .s_axi_wdata(BLP_S_AXI_CTRL_USER_00_1_WDATA),
        .s_axi_wready(BLP_S_AXI_CTRL_USER_00_1_WREADY),
        .s_axi_wstrb(BLP_S_AXI_CTRL_USER_00_1_WSTRB),
        .s_axi_wvalid(BLP_S_AXI_CTRL_USER_00_1_WVALID));
  bd_8181_s_ip_axi_data_h2c_00_0 s_ip_axi_data_h2c_00
       (.aclk(blp_s_aclk_data_h2c_00_1),
        .aresetn(blp_s_aresetn_data_h2c_00_1),
        .m_axi_araddr(s_ip_axi_data_h2c_00_M_AXI_ARADDR),
        .m_axi_arburst(s_ip_axi_data_h2c_00_M_AXI_ARBURST),
        .m_axi_arid(s_ip_axi_data_h2c_00_M_AXI_ARID),
        .m_axi_arlen(s_ip_axi_data_h2c_00_M_AXI_ARLEN),
        .m_axi_arready(s_ip_axi_data_h2c_00_M_AXI_ARREADY),
        .m_axi_arvalid(s_ip_axi_data_h2c_00_M_AXI_ARVALID),
        .m_axi_awaddr(s_ip_axi_data_h2c_00_M_AXI_AWADDR),
        .m_axi_awburst(s_ip_axi_data_h2c_00_M_AXI_AWBURST),
        .m_axi_awid(s_ip_axi_data_h2c_00_M_AXI_AWID),
        .m_axi_awlen(s_ip_axi_data_h2c_00_M_AXI_AWLEN),
        .m_axi_awready(s_ip_axi_data_h2c_00_M_AXI_AWREADY),
        .m_axi_awvalid(s_ip_axi_data_h2c_00_M_AXI_AWVALID),
        .m_axi_bid(s_ip_axi_data_h2c_00_M_AXI_BID),
        .m_axi_bready(s_ip_axi_data_h2c_00_M_AXI_BREADY),
        .m_axi_bresp(s_ip_axi_data_h2c_00_M_AXI_BRESP),
        .m_axi_bvalid(s_ip_axi_data_h2c_00_M_AXI_BVALID),
        .m_axi_rdata(s_ip_axi_data_h2c_00_M_AXI_RDATA),
        .m_axi_rid(s_ip_axi_data_h2c_00_M_AXI_RID),
        .m_axi_rlast(s_ip_axi_data_h2c_00_M_AXI_RLAST),
        .m_axi_rready(s_ip_axi_data_h2c_00_M_AXI_RREADY),
        .m_axi_rresp(s_ip_axi_data_h2c_00_M_AXI_RRESP),
        .m_axi_rvalid(s_ip_axi_data_h2c_00_M_AXI_RVALID),
        .m_axi_wdata(s_ip_axi_data_h2c_00_M_AXI_WDATA),
        .m_axi_wlast(s_ip_axi_data_h2c_00_M_AXI_WLAST),
        .m_axi_wready(s_ip_axi_data_h2c_00_M_AXI_WREADY),
        .m_axi_wstrb(s_ip_axi_data_h2c_00_M_AXI_WSTRB),
        .m_axi_wvalid(s_ip_axi_data_h2c_00_M_AXI_WVALID),
        .s_axi_araddr(BLP_S_AXI_DATA_H2C_00_1_ARADDR),
        .s_axi_arburst(BLP_S_AXI_DATA_H2C_00_1_ARBURST),
        .s_axi_arid(BLP_S_AXI_DATA_H2C_00_1_ARID),
        .s_axi_arlen(BLP_S_AXI_DATA_H2C_00_1_ARLEN),
        .s_axi_arready(BLP_S_AXI_DATA_H2C_00_1_ARREADY),
        .s_axi_arvalid(BLP_S_AXI_DATA_H2C_00_1_ARVALID),
        .s_axi_awaddr(BLP_S_AXI_DATA_H2C_00_1_AWADDR),
        .s_axi_awburst(BLP_S_AXI_DATA_H2C_00_1_AWBURST),
        .s_axi_awid(BLP_S_AXI_DATA_H2C_00_1_AWID),
        .s_axi_awlen(BLP_S_AXI_DATA_H2C_00_1_AWLEN),
        .s_axi_awready(BLP_S_AXI_DATA_H2C_00_1_AWREADY),
        .s_axi_awvalid(BLP_S_AXI_DATA_H2C_00_1_AWVALID),
        .s_axi_bid(BLP_S_AXI_DATA_H2C_00_1_BID),
        .s_axi_bready(BLP_S_AXI_DATA_H2C_00_1_BREADY),
        .s_axi_bresp(BLP_S_AXI_DATA_H2C_00_1_BRESP),
        .s_axi_bvalid(BLP_S_AXI_DATA_H2C_00_1_BVALID),
        .s_axi_rdata(BLP_S_AXI_DATA_H2C_00_1_RDATA),
        .s_axi_rid(BLP_S_AXI_DATA_H2C_00_1_RID),
        .s_axi_rlast(BLP_S_AXI_DATA_H2C_00_1_RLAST),
        .s_axi_rready(BLP_S_AXI_DATA_H2C_00_1_RREADY),
        .s_axi_rresp(BLP_S_AXI_DATA_H2C_00_1_RRESP),
        .s_axi_rvalid(BLP_S_AXI_DATA_H2C_00_1_RVALID),
        .s_axi_wdata(BLP_S_AXI_DATA_H2C_00_1_WDATA),
        .s_axi_wlast(BLP_S_AXI_DATA_H2C_00_1_WLAST),
        .s_axi_wready(BLP_S_AXI_DATA_H2C_00_1_WREADY),
        .s_axi_wstrb(BLP_S_AXI_DATA_H2C_00_1_WSTRB),
        .s_axi_wvalid(BLP_S_AXI_DATA_H2C_00_1_WVALID));
endmodule
