//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_3329.bd
//Design : bd_3329
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_3329,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_3329,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=31,numReposBlks=28,numNonXlnxBlks=0,numHierBlks=3,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,da_bram_cntlr_cnt=12,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "cl_HIP_0.hwdef" *) 
module bd_3329
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 37, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cd_data_h2c_00, DATA_WIDTH 512, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 6, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 4, PHASE 0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [36:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *) input [5:0]S00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]S00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION" *) input [3:0]S00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [36:0]S00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *) input [5:0]S00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]S00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]S00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output S00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION" *) input [3:0]S00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input S00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *) output [5:0]S00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input S00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]S00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output S00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [511:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *) output [5:0]S00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output S00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [511:0]S00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input S00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output S00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [63:0]S00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input S00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_CLKEN m_sc_aclken, CLK_DOMAIN cd_data_h2c_00, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DDR4_MEM_CALIB_COMPLETE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DDR4_MEM_CALIB_COMPLETE, LAYERED_METADATA undef" *) output ddr4_mem_calib_complete;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_A_N" *) output s_sh_cl_rst_dimm_a_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_B_N" *) output s_sh_cl_rst_dimm_b_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_RST_DIMM_D_N" *) output s_sh_cl_rst_dimm_d_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_araddr" *) output [63:0]s_sh_cl_sh_ddr_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arburst" *) output [1:0]s_sh_cl_sh_ddr_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arid" *) output [15:0]s_sh_cl_sh_ddr_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arlen" *) output [7:0]s_sh_cl_sh_ddr_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arsize" *) output [2:0]s_sh_cl_sh_ddr_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_arvalid" *) output s_sh_cl_sh_ddr_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awaddr" *) output [63:0]s_sh_cl_sh_ddr_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awburst" *) output [1:0]s_sh_cl_sh_ddr_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awid" *) output [15:0]s_sh_cl_sh_ddr_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awlen" *) output [7:0]s_sh_cl_sh_ddr_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awsize" *) output [2:0]s_sh_cl_sh_ddr_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_awvalid" *) output s_sh_cl_sh_ddr_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_bready" *) output s_sh_cl_sh_ddr_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_rready" *) output s_sh_cl_sh_ddr_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wdata" *) output [511:0]s_sh_cl_sh_ddr_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wid" *) output [15:0]s_sh_cl_sh_ddr_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wlast" *) output s_sh_cl_sh_ddr_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wstrb" *) output [63:0]s_sh_cl_sh_ddr_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh cl_sh_ddr_wvalid" *) output s_sh_cl_sh_ddr_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM0_DN" *) input s_sh_clk_300m_dimm0_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM0_DP" *) input s_sh_clk_300m_dimm0_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM1_DN" *) input s_sh_clk_300m_dimm1_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM1_DP" *) input s_sh_clk_300m_dimm1_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM3_DN" *) input s_sh_clk_300m_dimm3_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh CLK_300M_DIMM3_DP" *) input s_sh_clk_300m_dimm3_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh clk_main_a0" *) input s_sh_clk_main_a0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack0" *) output s_sh_ddr_sh_stat_ack0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack1" *) output s_sh_ddr_sh_stat_ack1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_ack2" *) output s_sh_ddr_sh_stat_ack2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int0" *) output [7:0]s_sh_ddr_sh_stat_int0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int1" *) output [7:0]s_sh_ddr_sh_stat_int1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_int2" *) output [7:0]s_sh_ddr_sh_stat_int2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata0" *) output [31:0]s_sh_ddr_sh_stat_rdata0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata1" *) output [31:0]s_sh_ddr_sh_stat_rdata1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh ddr_sh_stat_rdata2" *) output [31:0]s_sh_ddr_sh_stat_rdata2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ACT_N" *) output s_sh_m_a_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_BA" *) output [1:0]s_sh_m_a_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_BG" *) output [1:0]s_sh_m_a_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CKE" *) output [0:0]s_sh_m_a_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CLK_DN" *) output [0:0]s_sh_m_a_clk_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CLK_DP" *) output [0:0]s_sh_m_a_clk_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_CS_N" *) output [0:0]s_sh_m_a_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQ" *) inout [63:0]s_sh_m_a_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQS_DN" *) inout [17:0]s_sh_m_a_dqs_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_DQS_DP" *) inout [17:0]s_sh_m_a_dqs_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ECC" *) inout [7:0]s_sh_m_a_ecc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_MA" *) output [16:0]s_sh_m_a_ma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_ODT" *) output [0:0]s_sh_m_a_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_A_PAR" *) output s_sh_m_a_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ACT_N" *) output s_sh_m_b_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_BA" *) output [1:0]s_sh_m_b_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_BG" *) output [1:0]s_sh_m_b_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CKE" *) output [0:0]s_sh_m_b_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CLK_DN" *) output [0:0]s_sh_m_b_clk_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CLK_DP" *) output [0:0]s_sh_m_b_clk_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_CS_N" *) output [0:0]s_sh_m_b_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQ" *) inout [63:0]s_sh_m_b_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQS_DN" *) inout [17:0]s_sh_m_b_dqs_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_DQS_DP" *) inout [17:0]s_sh_m_b_dqs_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ECC" *) inout [7:0]s_sh_m_b_ecc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_MA" *) output [16:0]s_sh_m_b_ma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_ODT" *) output [0:0]s_sh_m_b_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_B_PAR" *) output s_sh_m_b_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ACT_N" *) output s_sh_m_d_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_BA" *) output [1:0]s_sh_m_d_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_BG" *) output [1:0]s_sh_m_d_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CKE" *) output [0:0]s_sh_m_d_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CLK_DN" *) output [0:0]s_sh_m_d_clk_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CLK_DP" *) output [0:0]s_sh_m_d_clk_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_CS_N" *) output [0:0]s_sh_m_d_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQ" *) inout [63:0]s_sh_m_d_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQS_DN" *) inout [17:0]s_sh_m_d_dqs_dn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_DQS_DP" *) inout [17:0]s_sh_m_d_dqs_dp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ECC" *) inout [7:0]s_sh_m_d_ecc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_MA" *) output [16:0]s_sh_m_d_ma;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_ODT" *) output [0:0]s_sh_m_d_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh M_D_PAR" *) output s_sh_m_d_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh rst_main_n" *) input s_sh_rst_main_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_arready" *) input s_sh_sh_cl_ddr_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_awready" *) input s_sh_sh_cl_ddr_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bid" *) input [15:0]s_sh_sh_cl_ddr_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bresp" *) input [1:0]s_sh_sh_cl_ddr_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_bvalid" *) input s_sh_sh_cl_ddr_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_is_ready" *) input s_sh_sh_cl_ddr_is_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rdata" *) input [511:0]s_sh_sh_cl_ddr_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rid" *) input [15:0]s_sh_sh_cl_ddr_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rlast" *) input s_sh_sh_cl_ddr_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rresp" *) input [1:0]s_sh_sh_cl_ddr_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_rvalid" *) input s_sh_sh_cl_ddr_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_cl_ddr_wready" *) input s_sh_sh_cl_ddr_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr0" *) input [7:0]s_sh_sh_ddr_stat_addr0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr1" *) input [7:0]s_sh_sh_ddr_stat_addr1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_addr2" *) input [7:0]s_sh_sh_ddr_stat_addr2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd0" *) input s_sh_sh_ddr_stat_rd0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd1" *) input s_sh_sh_ddr_stat_rd1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_rd2" *) input s_sh_sh_ddr_stat_rd2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata0" *) input [31:0]s_sh_sh_ddr_stat_wdata0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata1" *) input [31:0]s_sh_sh_ddr_stat_wdata1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wdata2" *) input [31:0]s_sh_sh_ddr_stat_wdata2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr0" *) input s_sh_sh_ddr_stat_wr0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr1" *) input s_sh_sh_ddr_stat_wr1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aws_f1_sh1:1.0 s_sh sh_ddr_stat_wr2" *) input s_sh_sh_ddr_stat_wr2;

  wire [36:0]S00_AXI_1_ARADDR;
  wire [5:0]S00_AXI_1_ARID;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [2:0]S00_AXI_1_ARPROT;
  wire S00_AXI_1_ARREADY;
  wire [3:0]S00_AXI_1_ARREGION;
  wire S00_AXI_1_ARVALID;
  wire [36:0]S00_AXI_1_AWADDR;
  wire [5:0]S00_AXI_1_AWID;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [2:0]S00_AXI_1_AWPROT;
  wire S00_AXI_1_AWREADY;
  wire [3:0]S00_AXI_1_AWREGION;
  wire S00_AXI_1_AWVALID;
  wire [5:0]S00_AXI_1_BID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [511:0]S00_AXI_1_RDATA;
  wire [5:0]S00_AXI_1_RID;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [511:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [63:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire aclk_1;
  wire aresetn_1;
  wire aws_clk_main_a0_out;
  wire calib_reduce_Res;
  wire [63:0]interconnect_DDR4_MEM00_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM00_M00_AXI_ARLEN;
  wire [0:0]interconnect_DDR4_MEM00_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM00_M00_AXI_ARREADY;
  wire interconnect_DDR4_MEM00_M00_AXI_ARVALID;
  wire [63:0]interconnect_DDR4_MEM00_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM00_M00_AXI_AWLEN;
  wire [0:0]interconnect_DDR4_MEM00_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM00_M00_AXI_AWREADY;
  wire interconnect_DDR4_MEM00_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM00_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM00_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM00_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM00_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM00_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM00_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM00_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM00_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM00_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM00_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM00_M00_AXI_WVALID;
  wire [63:0]interconnect_DDR4_MEM01_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM01_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM01_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM01_M00_AXI_ARLEN;
  wire [0:0]interconnect_DDR4_MEM01_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM01_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM01_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM01_M00_AXI_ARREADY;
  wire interconnect_DDR4_MEM01_M00_AXI_ARVALID;
  wire [63:0]interconnect_DDR4_MEM01_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM01_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM01_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM01_M00_AXI_AWLEN;
  wire [0:0]interconnect_DDR4_MEM01_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM01_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM01_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM01_M00_AXI_AWREADY;
  wire interconnect_DDR4_MEM01_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM01_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM01_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM01_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM01_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM01_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM01_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM01_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM01_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM01_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM01_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM01_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM01_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM01_M00_AXI_WVALID;
  wire [63:0]interconnect_DDR4_MEM02_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM02_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM02_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM02_M00_AXI_ARLEN;
  wire [0:0]interconnect_DDR4_MEM02_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM02_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM02_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM02_M00_AXI_ARREADY;
  wire interconnect_DDR4_MEM02_M00_AXI_ARVALID;
  wire [63:0]interconnect_DDR4_MEM02_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM02_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM02_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM02_M00_AXI_AWLEN;
  wire [0:0]interconnect_DDR4_MEM02_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM02_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM02_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM02_M00_AXI_AWREADY;
  wire interconnect_DDR4_MEM02_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM02_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM02_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM02_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM02_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM02_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM02_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM02_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM02_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM02_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM02_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM02_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM02_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM02_M00_AXI_WVALID;
  wire [63:0]interconnect_DDR4_MEM03_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM03_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM03_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM03_M00_AXI_ARLEN;
  wire [0:0]interconnect_DDR4_MEM03_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM03_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM03_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM03_M00_AXI_ARREADY;
  wire interconnect_DDR4_MEM03_M00_AXI_ARVALID;
  wire [63:0]interconnect_DDR4_MEM03_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM03_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM03_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM03_M00_AXI_AWLEN;
  wire [0:0]interconnect_DDR4_MEM03_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM03_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM03_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM03_M00_AXI_AWREADY;
  wire interconnect_DDR4_MEM03_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM03_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM03_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM03_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM03_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM03_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM03_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM03_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM03_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM03_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM03_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM03_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM03_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM03_M00_AXI_WVALID;
  wire [16:0]interconnect_PLRAM_MEM00_M00_AXI_ARADDR;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_ARBURST;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_ARCACHE;
  wire [7:0]interconnect_PLRAM_MEM00_M00_AXI_ARLEN;
  wire [0:0]interconnect_PLRAM_MEM00_M00_AXI_ARLOCK;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_ARPROT;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_ARQOS;
  wire interconnect_PLRAM_MEM00_M00_AXI_ARREADY;
  wire interconnect_PLRAM_MEM00_M00_AXI_ARVALID;
  wire [16:0]interconnect_PLRAM_MEM00_M00_AXI_AWADDR;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_AWBURST;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_AWCACHE;
  wire [7:0]interconnect_PLRAM_MEM00_M00_AXI_AWLEN;
  wire [0:0]interconnect_PLRAM_MEM00_M00_AXI_AWLOCK;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_AWPROT;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_AWQOS;
  wire interconnect_PLRAM_MEM00_M00_AXI_AWREADY;
  wire interconnect_PLRAM_MEM00_M00_AXI_AWVALID;
  wire interconnect_PLRAM_MEM00_M00_AXI_BREADY;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_BRESP;
  wire interconnect_PLRAM_MEM00_M00_AXI_BVALID;
  wire [511:0]interconnect_PLRAM_MEM00_M00_AXI_RDATA;
  wire interconnect_PLRAM_MEM00_M00_AXI_RLAST;
  wire interconnect_PLRAM_MEM00_M00_AXI_RREADY;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_RRESP;
  wire interconnect_PLRAM_MEM00_M00_AXI_RVALID;
  wire [511:0]interconnect_PLRAM_MEM00_M00_AXI_WDATA;
  wire interconnect_PLRAM_MEM00_M00_AXI_WLAST;
  wire interconnect_PLRAM_MEM00_M00_AXI_WREADY;
  wire [63:0]interconnect_PLRAM_MEM00_M00_AXI_WSTRB;
  wire interconnect_PLRAM_MEM00_M00_AXI_WVALID;
  wire [16:0]interconnect_PLRAM_MEM01_M00_AXI_ARADDR;
  wire [1:0]interconnect_PLRAM_MEM01_M00_AXI_ARBURST;
  wire [3:0]interconnect_PLRAM_MEM01_M00_AXI_ARCACHE;
  wire [7:0]interconnect_PLRAM_MEM01_M00_AXI_ARLEN;
  wire [0:0]interconnect_PLRAM_MEM01_M00_AXI_ARLOCK;
  wire [2:0]interconnect_PLRAM_MEM01_M00_AXI_ARPROT;
  wire [3:0]interconnect_PLRAM_MEM01_M00_AXI_ARQOS;
  wire interconnect_PLRAM_MEM01_M00_AXI_ARREADY;
  wire interconnect_PLRAM_MEM01_M00_AXI_ARVALID;
  wire [16:0]interconnect_PLRAM_MEM01_M00_AXI_AWADDR;
  wire [1:0]interconnect_PLRAM_MEM01_M00_AXI_AWBURST;
  wire [3:0]interconnect_PLRAM_MEM01_M00_AXI_AWCACHE;
  wire [7:0]interconnect_PLRAM_MEM01_M00_AXI_AWLEN;
  wire [0:0]interconnect_PLRAM_MEM01_M00_AXI_AWLOCK;
  wire [2:0]interconnect_PLRAM_MEM01_M00_AXI_AWPROT;
  wire [3:0]interconnect_PLRAM_MEM01_M00_AXI_AWQOS;
  wire interconnect_PLRAM_MEM01_M00_AXI_AWREADY;
  wire interconnect_PLRAM_MEM01_M00_AXI_AWVALID;
  wire interconnect_PLRAM_MEM01_M00_AXI_BREADY;
  wire [1:0]interconnect_PLRAM_MEM01_M00_AXI_BRESP;
  wire interconnect_PLRAM_MEM01_M00_AXI_BVALID;
  wire [511:0]interconnect_PLRAM_MEM01_M00_AXI_RDATA;
  wire interconnect_PLRAM_MEM01_M00_AXI_RLAST;
  wire interconnect_PLRAM_MEM01_M00_AXI_RREADY;
  wire [1:0]interconnect_PLRAM_MEM01_M00_AXI_RRESP;
  wire interconnect_PLRAM_MEM01_M00_AXI_RVALID;
  wire [511:0]interconnect_PLRAM_MEM01_M00_AXI_WDATA;
  wire interconnect_PLRAM_MEM01_M00_AXI_WLAST;
  wire interconnect_PLRAM_MEM01_M00_AXI_WREADY;
  wire [63:0]interconnect_PLRAM_MEM01_M00_AXI_WSTRB;
  wire interconnect_PLRAM_MEM01_M00_AXI_WVALID;
  wire [16:0]interconnect_PLRAM_MEM02_M00_AXI_ARADDR;
  wire [1:0]interconnect_PLRAM_MEM02_M00_AXI_ARBURST;
  wire [3:0]interconnect_PLRAM_MEM02_M00_AXI_ARCACHE;
  wire [7:0]interconnect_PLRAM_MEM02_M00_AXI_ARLEN;
  wire [0:0]interconnect_PLRAM_MEM02_M00_AXI_ARLOCK;
  wire [2:0]interconnect_PLRAM_MEM02_M00_AXI_ARPROT;
  wire [3:0]interconnect_PLRAM_MEM02_M00_AXI_ARQOS;
  wire interconnect_PLRAM_MEM02_M00_AXI_ARREADY;
  wire interconnect_PLRAM_MEM02_M00_AXI_ARVALID;
  wire [16:0]interconnect_PLRAM_MEM02_M00_AXI_AWADDR;
  wire [1:0]interconnect_PLRAM_MEM02_M00_AXI_AWBURST;
  wire [3:0]interconnect_PLRAM_MEM02_M00_AXI_AWCACHE;
  wire [7:0]interconnect_PLRAM_MEM02_M00_AXI_AWLEN;
  wire [0:0]interconnect_PLRAM_MEM02_M00_AXI_AWLOCK;
  wire [2:0]interconnect_PLRAM_MEM02_M00_AXI_AWPROT;
  wire [3:0]interconnect_PLRAM_MEM02_M00_AXI_AWQOS;
  wire interconnect_PLRAM_MEM02_M00_AXI_AWREADY;
  wire interconnect_PLRAM_MEM02_M00_AXI_AWVALID;
  wire interconnect_PLRAM_MEM02_M00_AXI_BREADY;
  wire [1:0]interconnect_PLRAM_MEM02_M00_AXI_BRESP;
  wire interconnect_PLRAM_MEM02_M00_AXI_BVALID;
  wire [511:0]interconnect_PLRAM_MEM02_M00_AXI_RDATA;
  wire interconnect_PLRAM_MEM02_M00_AXI_RLAST;
  wire interconnect_PLRAM_MEM02_M00_AXI_RREADY;
  wire [1:0]interconnect_PLRAM_MEM02_M00_AXI_RRESP;
  wire interconnect_PLRAM_MEM02_M00_AXI_RVALID;
  wire [511:0]interconnect_PLRAM_MEM02_M00_AXI_WDATA;
  wire interconnect_PLRAM_MEM02_M00_AXI_WLAST;
  wire interconnect_PLRAM_MEM02_M00_AXI_WREADY;
  wire [63:0]interconnect_PLRAM_MEM02_M00_AXI_WSTRB;
  wire interconnect_PLRAM_MEM02_M00_AXI_WVALID;
  wire [0:0]psr_aclk_SLR0_interconnect_aresetn;
  wire [0:0]psr_aclk_SLR1_interconnect_aresetn;
  wire [0:0]psr_aclk_SLR2_interconnect_aresetn;
  wire s_sh_1_CLK_300M_DIMM0_DN;
  wire s_sh_1_CLK_300M_DIMM0_DP;
  wire s_sh_1_CLK_300M_DIMM1_DN;
  wire s_sh_1_CLK_300M_DIMM1_DP;
  wire s_sh_1_CLK_300M_DIMM3_DN;
  wire s_sh_1_CLK_300M_DIMM3_DP;
  wire s_sh_1_M_A_ACT_N;
  wire [1:0]s_sh_1_M_A_BA;
  wire [1:0]s_sh_1_M_A_BG;
  wire [0:0]s_sh_1_M_A_CKE;
  wire [0:0]s_sh_1_M_A_CLK_DN;
  wire [0:0]s_sh_1_M_A_CLK_DP;
  wire [0:0]s_sh_1_M_A_CS_N;
  wire [63:0]s_sh_1_M_A_DQ;
  wire [17:0]s_sh_1_M_A_DQS_DN;
  wire [17:0]s_sh_1_M_A_DQS_DP;
  wire [7:0]s_sh_1_M_A_ECC;
  wire [16:0]s_sh_1_M_A_MA;
  wire [0:0]s_sh_1_M_A_ODT;
  wire s_sh_1_M_A_PAR;
  wire s_sh_1_M_B_ACT_N;
  wire [1:0]s_sh_1_M_B_BA;
  wire [1:0]s_sh_1_M_B_BG;
  wire [0:0]s_sh_1_M_B_CKE;
  wire [0:0]s_sh_1_M_B_CLK_DN;
  wire [0:0]s_sh_1_M_B_CLK_DP;
  wire [0:0]s_sh_1_M_B_CS_N;
  wire [63:0]s_sh_1_M_B_DQ;
  wire [17:0]s_sh_1_M_B_DQS_DN;
  wire [17:0]s_sh_1_M_B_DQS_DP;
  wire [7:0]s_sh_1_M_B_ECC;
  wire [16:0]s_sh_1_M_B_MA;
  wire [0:0]s_sh_1_M_B_ODT;
  wire s_sh_1_M_B_PAR;
  wire s_sh_1_M_D_ACT_N;
  wire [1:0]s_sh_1_M_D_BA;
  wire [1:0]s_sh_1_M_D_BG;
  wire [0:0]s_sh_1_M_D_CKE;
  wire [0:0]s_sh_1_M_D_CLK_DN;
  wire [0:0]s_sh_1_M_D_CLK_DP;
  wire [0:0]s_sh_1_M_D_CS_N;
  wire [63:0]s_sh_1_M_D_DQ;
  wire [17:0]s_sh_1_M_D_DQS_DN;
  wire [17:0]s_sh_1_M_D_DQS_DP;
  wire [7:0]s_sh_1_M_D_ECC;
  wire [16:0]s_sh_1_M_D_MA;
  wire [0:0]s_sh_1_M_D_ODT;
  wire s_sh_1_M_D_PAR;
  wire s_sh_1_cl_RST_DIMM_A_N;
  wire s_sh_1_cl_RST_DIMM_B_N;
  wire s_sh_1_cl_RST_DIMM_D_N;
  wire [63:0]s_sh_1_cl_sh_ddr_araddr;
  wire [1:0]s_sh_1_cl_sh_ddr_arburst;
  wire [15:0]s_sh_1_cl_sh_ddr_arid;
  wire [7:0]s_sh_1_cl_sh_ddr_arlen;
  wire [2:0]s_sh_1_cl_sh_ddr_arsize;
  wire s_sh_1_cl_sh_ddr_arvalid;
  wire [63:0]s_sh_1_cl_sh_ddr_awaddr;
  wire [1:0]s_sh_1_cl_sh_ddr_awburst;
  wire [15:0]s_sh_1_cl_sh_ddr_awid;
  wire [7:0]s_sh_1_cl_sh_ddr_awlen;
  wire [2:0]s_sh_1_cl_sh_ddr_awsize;
  wire s_sh_1_cl_sh_ddr_awvalid;
  wire s_sh_1_cl_sh_ddr_bready;
  wire s_sh_1_cl_sh_ddr_rready;
  wire [511:0]s_sh_1_cl_sh_ddr_wdata;
  wire [15:0]s_sh_1_cl_sh_ddr_wid;
  wire s_sh_1_cl_sh_ddr_wlast;
  wire [63:0]s_sh_1_cl_sh_ddr_wstrb;
  wire s_sh_1_cl_sh_ddr_wvalid;
  wire s_sh_1_clk_main_a0;
  wire s_sh_1_ddr_sh_stat_ack0;
  wire s_sh_1_ddr_sh_stat_ack1;
  wire s_sh_1_ddr_sh_stat_ack2;
  wire [7:0]s_sh_1_ddr_sh_stat_int0;
  wire [7:0]s_sh_1_ddr_sh_stat_int1;
  wire [7:0]s_sh_1_ddr_sh_stat_int2;
  wire [31:0]s_sh_1_ddr_sh_stat_rdata0;
  wire [31:0]s_sh_1_ddr_sh_stat_rdata1;
  wire [31:0]s_sh_1_ddr_sh_stat_rdata2;
  wire s_sh_1_rst_main_n;
  wire s_sh_1_sh_cl_ddr_arready;
  wire s_sh_1_sh_cl_ddr_awready;
  wire [15:0]s_sh_1_sh_cl_ddr_bid;
  wire [1:0]s_sh_1_sh_cl_ddr_bresp;
  wire s_sh_1_sh_cl_ddr_bvalid;
  wire s_sh_1_sh_cl_ddr_is_ready;
  wire [511:0]s_sh_1_sh_cl_ddr_rdata;
  wire [15:0]s_sh_1_sh_cl_ddr_rid;
  wire s_sh_1_sh_cl_ddr_rlast;
  wire [1:0]s_sh_1_sh_cl_ddr_rresp;
  wire s_sh_1_sh_cl_ddr_rvalid;
  wire s_sh_1_sh_cl_ddr_wready;
  wire [7:0]s_sh_1_sh_ddr_stat_addr0;
  wire [7:0]s_sh_1_sh_ddr_stat_addr1;
  wire [7:0]s_sh_1_sh_ddr_stat_addr2;
  wire s_sh_1_sh_ddr_stat_rd0;
  wire s_sh_1_sh_ddr_stat_rd1;
  wire s_sh_1_sh_ddr_stat_rd2;
  wire [31:0]s_sh_1_sh_ddr_stat_wdata0;
  wire [31:0]s_sh_1_sh_ddr_stat_wdata1;
  wire [31:0]s_sh_1_sh_ddr_stat_wdata2;
  wire s_sh_1_sh_ddr_stat_wr0;
  wire s_sh_1_sh_ddr_stat_wr1;
  wire s_sh_1_sh_ddr_stat_wr2;

  assign S00_AXI_1_ARADDR = S00_AXI_araddr[36:0];
  assign S00_AXI_1_ARID = S00_AXI_arid[5:0];
  assign S00_AXI_1_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARREGION = S00_AXI_arregion[3:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[36:0];
  assign S00_AXI_1_AWID = S00_AXI_awid[5:0];
  assign S00_AXI_1_AWLEN = S00_AXI_awlen[7:0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWREGION = S00_AXI_awregion[3:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid;
  assign S00_AXI_1_BREADY = S00_AXI_bready;
  assign S00_AXI_1_RREADY = S00_AXI_rready;
  assign S00_AXI_1_WDATA = S00_AXI_wdata[511:0];
  assign S00_AXI_1_WLAST = S00_AXI_wlast;
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[63:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid;
  assign S00_AXI_arready = S00_AXI_1_ARREADY;
  assign S00_AXI_awready = S00_AXI_1_AWREADY;
  assign S00_AXI_bid[5:0] = S00_AXI_1_BID;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[511:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rid[5:0] = S00_AXI_1_RID;
  assign S00_AXI_rlast = S00_AXI_1_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid = S00_AXI_1_RVALID;
  assign S00_AXI_wready = S00_AXI_1_WREADY;
  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  assign ddr4_mem_calib_complete = calib_reduce_Res;
  assign s_sh_1_CLK_300M_DIMM0_DN = s_sh_clk_300m_dimm0_dn;
  assign s_sh_1_CLK_300M_DIMM0_DP = s_sh_clk_300m_dimm0_dp;
  assign s_sh_1_CLK_300M_DIMM1_DN = s_sh_clk_300m_dimm1_dn;
  assign s_sh_1_CLK_300M_DIMM1_DP = s_sh_clk_300m_dimm1_dp;
  assign s_sh_1_CLK_300M_DIMM3_DN = s_sh_clk_300m_dimm3_dn;
  assign s_sh_1_CLK_300M_DIMM3_DP = s_sh_clk_300m_dimm3_dp;
  assign s_sh_1_clk_main_a0 = s_sh_clk_main_a0;
  assign s_sh_1_rst_main_n = s_sh_rst_main_n;
  assign s_sh_1_sh_cl_ddr_arready = s_sh_sh_cl_ddr_arready;
  assign s_sh_1_sh_cl_ddr_awready = s_sh_sh_cl_ddr_awready;
  assign s_sh_1_sh_cl_ddr_bid = s_sh_sh_cl_ddr_bid[15:0];
  assign s_sh_1_sh_cl_ddr_bresp = s_sh_sh_cl_ddr_bresp[1:0];
  assign s_sh_1_sh_cl_ddr_bvalid = s_sh_sh_cl_ddr_bvalid;
  assign s_sh_1_sh_cl_ddr_is_ready = s_sh_sh_cl_ddr_is_ready;
  assign s_sh_1_sh_cl_ddr_rdata = s_sh_sh_cl_ddr_rdata[511:0];
  assign s_sh_1_sh_cl_ddr_rid = s_sh_sh_cl_ddr_rid[15:0];
  assign s_sh_1_sh_cl_ddr_rlast = s_sh_sh_cl_ddr_rlast;
  assign s_sh_1_sh_cl_ddr_rresp = s_sh_sh_cl_ddr_rresp[1:0];
  assign s_sh_1_sh_cl_ddr_rvalid = s_sh_sh_cl_ddr_rvalid;
  assign s_sh_1_sh_cl_ddr_wready = s_sh_sh_cl_ddr_wready;
  assign s_sh_1_sh_ddr_stat_addr0 = s_sh_sh_ddr_stat_addr0[7:0];
  assign s_sh_1_sh_ddr_stat_addr1 = s_sh_sh_ddr_stat_addr1[7:0];
  assign s_sh_1_sh_ddr_stat_addr2 = s_sh_sh_ddr_stat_addr2[7:0];
  assign s_sh_1_sh_ddr_stat_rd0 = s_sh_sh_ddr_stat_rd0;
  assign s_sh_1_sh_ddr_stat_rd1 = s_sh_sh_ddr_stat_rd1;
  assign s_sh_1_sh_ddr_stat_rd2 = s_sh_sh_ddr_stat_rd2;
  assign s_sh_1_sh_ddr_stat_wdata0 = s_sh_sh_ddr_stat_wdata0[31:0];
  assign s_sh_1_sh_ddr_stat_wdata1 = s_sh_sh_ddr_stat_wdata1[31:0];
  assign s_sh_1_sh_ddr_stat_wdata2 = s_sh_sh_ddr_stat_wdata2[31:0];
  assign s_sh_1_sh_ddr_stat_wr0 = s_sh_sh_ddr_stat_wr0;
  assign s_sh_1_sh_ddr_stat_wr1 = s_sh_sh_ddr_stat_wr1;
  assign s_sh_1_sh_ddr_stat_wr2 = s_sh_sh_ddr_stat_wr2;
  assign s_sh_cl_rst_dimm_a_n = s_sh_1_cl_RST_DIMM_A_N;
  assign s_sh_cl_rst_dimm_b_n = s_sh_1_cl_RST_DIMM_B_N;
  assign s_sh_cl_rst_dimm_d_n = s_sh_1_cl_RST_DIMM_D_N;
  assign s_sh_cl_sh_ddr_araddr[63:0] = s_sh_1_cl_sh_ddr_araddr;
  assign s_sh_cl_sh_ddr_arburst[1:0] = s_sh_1_cl_sh_ddr_arburst;
  assign s_sh_cl_sh_ddr_arid[15:0] = s_sh_1_cl_sh_ddr_arid;
  assign s_sh_cl_sh_ddr_arlen[7:0] = s_sh_1_cl_sh_ddr_arlen;
  assign s_sh_cl_sh_ddr_arsize[2:0] = s_sh_1_cl_sh_ddr_arsize;
  assign s_sh_cl_sh_ddr_arvalid = s_sh_1_cl_sh_ddr_arvalid;
  assign s_sh_cl_sh_ddr_awaddr[63:0] = s_sh_1_cl_sh_ddr_awaddr;
  assign s_sh_cl_sh_ddr_awburst[1:0] = s_sh_1_cl_sh_ddr_awburst;
  assign s_sh_cl_sh_ddr_awid[15:0] = s_sh_1_cl_sh_ddr_awid;
  assign s_sh_cl_sh_ddr_awlen[7:0] = s_sh_1_cl_sh_ddr_awlen;
  assign s_sh_cl_sh_ddr_awsize[2:0] = s_sh_1_cl_sh_ddr_awsize;
  assign s_sh_cl_sh_ddr_awvalid = s_sh_1_cl_sh_ddr_awvalid;
  assign s_sh_cl_sh_ddr_bready = s_sh_1_cl_sh_ddr_bready;
  assign s_sh_cl_sh_ddr_rready = s_sh_1_cl_sh_ddr_rready;
  assign s_sh_cl_sh_ddr_wdata[511:0] = s_sh_1_cl_sh_ddr_wdata;
  assign s_sh_cl_sh_ddr_wid[15:0] = s_sh_1_cl_sh_ddr_wid;
  assign s_sh_cl_sh_ddr_wlast = s_sh_1_cl_sh_ddr_wlast;
  assign s_sh_cl_sh_ddr_wstrb[63:0] = s_sh_1_cl_sh_ddr_wstrb;
  assign s_sh_cl_sh_ddr_wvalid = s_sh_1_cl_sh_ddr_wvalid;
  assign s_sh_ddr_sh_stat_ack0 = s_sh_1_ddr_sh_stat_ack0;
  assign s_sh_ddr_sh_stat_ack1 = s_sh_1_ddr_sh_stat_ack1;
  assign s_sh_ddr_sh_stat_ack2 = s_sh_1_ddr_sh_stat_ack2;
  assign s_sh_ddr_sh_stat_int0[7:0] = s_sh_1_ddr_sh_stat_int0;
  assign s_sh_ddr_sh_stat_int1[7:0] = s_sh_1_ddr_sh_stat_int1;
  assign s_sh_ddr_sh_stat_int2[7:0] = s_sh_1_ddr_sh_stat_int2;
  assign s_sh_ddr_sh_stat_rdata0[31:0] = s_sh_1_ddr_sh_stat_rdata0;
  assign s_sh_ddr_sh_stat_rdata1[31:0] = s_sh_1_ddr_sh_stat_rdata1;
  assign s_sh_ddr_sh_stat_rdata2[31:0] = s_sh_1_ddr_sh_stat_rdata2;
  assign s_sh_m_a_act_n = s_sh_1_M_A_ACT_N;
  assign s_sh_m_a_ba[1:0] = s_sh_1_M_A_BA;
  assign s_sh_m_a_bg[1:0] = s_sh_1_M_A_BG;
  assign s_sh_m_a_cke[0] = s_sh_1_M_A_CKE;
  assign s_sh_m_a_clk_dn[0] = s_sh_1_M_A_CLK_DN;
  assign s_sh_m_a_clk_dp[0] = s_sh_1_M_A_CLK_DP;
  assign s_sh_m_a_cs_n[0] = s_sh_1_M_A_CS_N;
  assign s_sh_m_a_ma[16:0] = s_sh_1_M_A_MA;
  assign s_sh_m_a_odt[0] = s_sh_1_M_A_ODT;
  assign s_sh_m_a_par = s_sh_1_M_A_PAR;
  assign s_sh_m_b_act_n = s_sh_1_M_B_ACT_N;
  assign s_sh_m_b_ba[1:0] = s_sh_1_M_B_BA;
  assign s_sh_m_b_bg[1:0] = s_sh_1_M_B_BG;
  assign s_sh_m_b_cke[0] = s_sh_1_M_B_CKE;
  assign s_sh_m_b_clk_dn[0] = s_sh_1_M_B_CLK_DN;
  assign s_sh_m_b_clk_dp[0] = s_sh_1_M_B_CLK_DP;
  assign s_sh_m_b_cs_n[0] = s_sh_1_M_B_CS_N;
  assign s_sh_m_b_ma[16:0] = s_sh_1_M_B_MA;
  assign s_sh_m_b_odt[0] = s_sh_1_M_B_ODT;
  assign s_sh_m_b_par = s_sh_1_M_B_PAR;
  assign s_sh_m_d_act_n = s_sh_1_M_D_ACT_N;
  assign s_sh_m_d_ba[1:0] = s_sh_1_M_D_BA;
  assign s_sh_m_d_bg[1:0] = s_sh_1_M_D_BG;
  assign s_sh_m_d_cke[0] = s_sh_1_M_D_CKE;
  assign s_sh_m_d_clk_dn[0] = s_sh_1_M_D_CLK_DN;
  assign s_sh_m_d_clk_dp[0] = s_sh_1_M_D_CLK_DP;
  assign s_sh_m_d_cs_n[0] = s_sh_1_M_D_CS_N;
  assign s_sh_m_d_ma[16:0] = s_sh_1_M_D_MA;
  assign s_sh_m_d_odt[0] = s_sh_1_M_D_ODT;
  assign s_sh_m_d_par = s_sh_1_M_D_PAR;
  interconnect_imp_1XWE5B8 interconnect
       (.M00_AXI1_araddr(interconnect_DDR4_MEM01_M00_AXI_ARADDR),
        .M00_AXI1_arburst(interconnect_DDR4_MEM01_M00_AXI_ARBURST),
        .M00_AXI1_arcache(interconnect_DDR4_MEM01_M00_AXI_ARCACHE),
        .M00_AXI1_arlen(interconnect_DDR4_MEM01_M00_AXI_ARLEN),
        .M00_AXI1_arlock(interconnect_DDR4_MEM01_M00_AXI_ARLOCK),
        .M00_AXI1_arprot(interconnect_DDR4_MEM01_M00_AXI_ARPROT),
        .M00_AXI1_arqos(interconnect_DDR4_MEM01_M00_AXI_ARQOS),
        .M00_AXI1_arready(interconnect_DDR4_MEM01_M00_AXI_ARREADY),
        .M00_AXI1_arvalid(interconnect_DDR4_MEM01_M00_AXI_ARVALID),
        .M00_AXI1_awaddr(interconnect_DDR4_MEM01_M00_AXI_AWADDR),
        .M00_AXI1_awburst(interconnect_DDR4_MEM01_M00_AXI_AWBURST),
        .M00_AXI1_awcache(interconnect_DDR4_MEM01_M00_AXI_AWCACHE),
        .M00_AXI1_awlen(interconnect_DDR4_MEM01_M00_AXI_AWLEN),
        .M00_AXI1_awlock(interconnect_DDR4_MEM01_M00_AXI_AWLOCK),
        .M00_AXI1_awprot(interconnect_DDR4_MEM01_M00_AXI_AWPROT),
        .M00_AXI1_awqos(interconnect_DDR4_MEM01_M00_AXI_AWQOS),
        .M00_AXI1_awready(interconnect_DDR4_MEM01_M00_AXI_AWREADY),
        .M00_AXI1_awvalid(interconnect_DDR4_MEM01_M00_AXI_AWVALID),
        .M00_AXI1_bready(interconnect_DDR4_MEM01_M00_AXI_BREADY),
        .M00_AXI1_bresp(interconnect_DDR4_MEM01_M00_AXI_BRESP),
        .M00_AXI1_bvalid(interconnect_DDR4_MEM01_M00_AXI_BVALID),
        .M00_AXI1_rdata(interconnect_DDR4_MEM01_M00_AXI_RDATA),
        .M00_AXI1_rlast(interconnect_DDR4_MEM01_M00_AXI_RLAST),
        .M00_AXI1_rready(interconnect_DDR4_MEM01_M00_AXI_RREADY),
        .M00_AXI1_rresp(interconnect_DDR4_MEM01_M00_AXI_RRESP),
        .M00_AXI1_rvalid(interconnect_DDR4_MEM01_M00_AXI_RVALID),
        .M00_AXI1_wdata(interconnect_DDR4_MEM01_M00_AXI_WDATA),
        .M00_AXI1_wlast(interconnect_DDR4_MEM01_M00_AXI_WLAST),
        .M00_AXI1_wready(interconnect_DDR4_MEM01_M00_AXI_WREADY),
        .M00_AXI1_wstrb(interconnect_DDR4_MEM01_M00_AXI_WSTRB),
        .M00_AXI1_wvalid(interconnect_DDR4_MEM01_M00_AXI_WVALID),
        .M00_AXI2_araddr(interconnect_DDR4_MEM02_M00_AXI_ARADDR),
        .M00_AXI2_arburst(interconnect_DDR4_MEM02_M00_AXI_ARBURST),
        .M00_AXI2_arcache(interconnect_DDR4_MEM02_M00_AXI_ARCACHE),
        .M00_AXI2_arlen(interconnect_DDR4_MEM02_M00_AXI_ARLEN),
        .M00_AXI2_arlock(interconnect_DDR4_MEM02_M00_AXI_ARLOCK),
        .M00_AXI2_arprot(interconnect_DDR4_MEM02_M00_AXI_ARPROT),
        .M00_AXI2_arqos(interconnect_DDR4_MEM02_M00_AXI_ARQOS),
        .M00_AXI2_arready(interconnect_DDR4_MEM02_M00_AXI_ARREADY),
        .M00_AXI2_arvalid(interconnect_DDR4_MEM02_M00_AXI_ARVALID),
        .M00_AXI2_awaddr(interconnect_DDR4_MEM02_M00_AXI_AWADDR),
        .M00_AXI2_awburst(interconnect_DDR4_MEM02_M00_AXI_AWBURST),
        .M00_AXI2_awcache(interconnect_DDR4_MEM02_M00_AXI_AWCACHE),
        .M00_AXI2_awlen(interconnect_DDR4_MEM02_M00_AXI_AWLEN),
        .M00_AXI2_awlock(interconnect_DDR4_MEM02_M00_AXI_AWLOCK),
        .M00_AXI2_awprot(interconnect_DDR4_MEM02_M00_AXI_AWPROT),
        .M00_AXI2_awqos(interconnect_DDR4_MEM02_M00_AXI_AWQOS),
        .M00_AXI2_awready(interconnect_DDR4_MEM02_M00_AXI_AWREADY),
        .M00_AXI2_awvalid(interconnect_DDR4_MEM02_M00_AXI_AWVALID),
        .M00_AXI2_bready(interconnect_DDR4_MEM02_M00_AXI_BREADY),
        .M00_AXI2_bresp(interconnect_DDR4_MEM02_M00_AXI_BRESP),
        .M00_AXI2_bvalid(interconnect_DDR4_MEM02_M00_AXI_BVALID),
        .M00_AXI2_rdata(interconnect_DDR4_MEM02_M00_AXI_RDATA),
        .M00_AXI2_rlast(interconnect_DDR4_MEM02_M00_AXI_RLAST),
        .M00_AXI2_rready(interconnect_DDR4_MEM02_M00_AXI_RREADY),
        .M00_AXI2_rresp(interconnect_DDR4_MEM02_M00_AXI_RRESP),
        .M00_AXI2_rvalid(interconnect_DDR4_MEM02_M00_AXI_RVALID),
        .M00_AXI2_wdata(interconnect_DDR4_MEM02_M00_AXI_WDATA),
        .M00_AXI2_wlast(interconnect_DDR4_MEM02_M00_AXI_WLAST),
        .M00_AXI2_wready(interconnect_DDR4_MEM02_M00_AXI_WREADY),
        .M00_AXI2_wstrb(interconnect_DDR4_MEM02_M00_AXI_WSTRB),
        .M00_AXI2_wvalid(interconnect_DDR4_MEM02_M00_AXI_WVALID),
        .M00_AXI3_araddr(interconnect_DDR4_MEM03_M00_AXI_ARADDR),
        .M00_AXI3_arburst(interconnect_DDR4_MEM03_M00_AXI_ARBURST),
        .M00_AXI3_arcache(interconnect_DDR4_MEM03_M00_AXI_ARCACHE),
        .M00_AXI3_arlen(interconnect_DDR4_MEM03_M00_AXI_ARLEN),
        .M00_AXI3_arlock(interconnect_DDR4_MEM03_M00_AXI_ARLOCK),
        .M00_AXI3_arprot(interconnect_DDR4_MEM03_M00_AXI_ARPROT),
        .M00_AXI3_arqos(interconnect_DDR4_MEM03_M00_AXI_ARQOS),
        .M00_AXI3_arready(interconnect_DDR4_MEM03_M00_AXI_ARREADY),
        .M00_AXI3_arvalid(interconnect_DDR4_MEM03_M00_AXI_ARVALID),
        .M00_AXI3_awaddr(interconnect_DDR4_MEM03_M00_AXI_AWADDR),
        .M00_AXI3_awburst(interconnect_DDR4_MEM03_M00_AXI_AWBURST),
        .M00_AXI3_awcache(interconnect_DDR4_MEM03_M00_AXI_AWCACHE),
        .M00_AXI3_awlen(interconnect_DDR4_MEM03_M00_AXI_AWLEN),
        .M00_AXI3_awlock(interconnect_DDR4_MEM03_M00_AXI_AWLOCK),
        .M00_AXI3_awprot(interconnect_DDR4_MEM03_M00_AXI_AWPROT),
        .M00_AXI3_awqos(interconnect_DDR4_MEM03_M00_AXI_AWQOS),
        .M00_AXI3_awready(interconnect_DDR4_MEM03_M00_AXI_AWREADY),
        .M00_AXI3_awvalid(interconnect_DDR4_MEM03_M00_AXI_AWVALID),
        .M00_AXI3_bready(interconnect_DDR4_MEM03_M00_AXI_BREADY),
        .M00_AXI3_bresp(interconnect_DDR4_MEM03_M00_AXI_BRESP),
        .M00_AXI3_bvalid(interconnect_DDR4_MEM03_M00_AXI_BVALID),
        .M00_AXI3_rdata(interconnect_DDR4_MEM03_M00_AXI_RDATA),
        .M00_AXI3_rlast(interconnect_DDR4_MEM03_M00_AXI_RLAST),
        .M00_AXI3_rready(interconnect_DDR4_MEM03_M00_AXI_RREADY),
        .M00_AXI3_rresp(interconnect_DDR4_MEM03_M00_AXI_RRESP),
        .M00_AXI3_rvalid(interconnect_DDR4_MEM03_M00_AXI_RVALID),
        .M00_AXI3_wdata(interconnect_DDR4_MEM03_M00_AXI_WDATA),
        .M00_AXI3_wlast(interconnect_DDR4_MEM03_M00_AXI_WLAST),
        .M00_AXI3_wready(interconnect_DDR4_MEM03_M00_AXI_WREADY),
        .M00_AXI3_wstrb(interconnect_DDR4_MEM03_M00_AXI_WSTRB),
        .M00_AXI3_wvalid(interconnect_DDR4_MEM03_M00_AXI_WVALID),
        .M00_AXI4_araddr(interconnect_PLRAM_MEM00_M00_AXI_ARADDR),
        .M00_AXI4_arburst(interconnect_PLRAM_MEM00_M00_AXI_ARBURST),
        .M00_AXI4_arcache(interconnect_PLRAM_MEM00_M00_AXI_ARCACHE),
        .M00_AXI4_arlen(interconnect_PLRAM_MEM00_M00_AXI_ARLEN),
        .M00_AXI4_arlock(interconnect_PLRAM_MEM00_M00_AXI_ARLOCK),
        .M00_AXI4_arprot(interconnect_PLRAM_MEM00_M00_AXI_ARPROT),
        .M00_AXI4_arqos(interconnect_PLRAM_MEM00_M00_AXI_ARQOS),
        .M00_AXI4_arready(interconnect_PLRAM_MEM00_M00_AXI_ARREADY),
        .M00_AXI4_arvalid(interconnect_PLRAM_MEM00_M00_AXI_ARVALID),
        .M00_AXI4_awaddr(interconnect_PLRAM_MEM00_M00_AXI_AWADDR),
        .M00_AXI4_awburst(interconnect_PLRAM_MEM00_M00_AXI_AWBURST),
        .M00_AXI4_awcache(interconnect_PLRAM_MEM00_M00_AXI_AWCACHE),
        .M00_AXI4_awlen(interconnect_PLRAM_MEM00_M00_AXI_AWLEN),
        .M00_AXI4_awlock(interconnect_PLRAM_MEM00_M00_AXI_AWLOCK),
        .M00_AXI4_awprot(interconnect_PLRAM_MEM00_M00_AXI_AWPROT),
        .M00_AXI4_awqos(interconnect_PLRAM_MEM00_M00_AXI_AWQOS),
        .M00_AXI4_awready(interconnect_PLRAM_MEM00_M00_AXI_AWREADY),
        .M00_AXI4_awvalid(interconnect_PLRAM_MEM00_M00_AXI_AWVALID),
        .M00_AXI4_bready(interconnect_PLRAM_MEM00_M00_AXI_BREADY),
        .M00_AXI4_bresp(interconnect_PLRAM_MEM00_M00_AXI_BRESP),
        .M00_AXI4_bvalid(interconnect_PLRAM_MEM00_M00_AXI_BVALID),
        .M00_AXI4_rdata(interconnect_PLRAM_MEM00_M00_AXI_RDATA),
        .M00_AXI4_rlast(interconnect_PLRAM_MEM00_M00_AXI_RLAST),
        .M00_AXI4_rready(interconnect_PLRAM_MEM00_M00_AXI_RREADY),
        .M00_AXI4_rresp(interconnect_PLRAM_MEM00_M00_AXI_RRESP),
        .M00_AXI4_rvalid(interconnect_PLRAM_MEM00_M00_AXI_RVALID),
        .M00_AXI4_wdata(interconnect_PLRAM_MEM00_M00_AXI_WDATA),
        .M00_AXI4_wlast(interconnect_PLRAM_MEM00_M00_AXI_WLAST),
        .M00_AXI4_wready(interconnect_PLRAM_MEM00_M00_AXI_WREADY),
        .M00_AXI4_wstrb(interconnect_PLRAM_MEM00_M00_AXI_WSTRB),
        .M00_AXI4_wvalid(interconnect_PLRAM_MEM00_M00_AXI_WVALID),
        .M00_AXI5_araddr(interconnect_PLRAM_MEM01_M00_AXI_ARADDR),
        .M00_AXI5_arburst(interconnect_PLRAM_MEM01_M00_AXI_ARBURST),
        .M00_AXI5_arcache(interconnect_PLRAM_MEM01_M00_AXI_ARCACHE),
        .M00_AXI5_arlen(interconnect_PLRAM_MEM01_M00_AXI_ARLEN),
        .M00_AXI5_arlock(interconnect_PLRAM_MEM01_M00_AXI_ARLOCK),
        .M00_AXI5_arprot(interconnect_PLRAM_MEM01_M00_AXI_ARPROT),
        .M00_AXI5_arqos(interconnect_PLRAM_MEM01_M00_AXI_ARQOS),
        .M00_AXI5_arready(interconnect_PLRAM_MEM01_M00_AXI_ARREADY),
        .M00_AXI5_arvalid(interconnect_PLRAM_MEM01_M00_AXI_ARVALID),
        .M00_AXI5_awaddr(interconnect_PLRAM_MEM01_M00_AXI_AWADDR),
        .M00_AXI5_awburst(interconnect_PLRAM_MEM01_M00_AXI_AWBURST),
        .M00_AXI5_awcache(interconnect_PLRAM_MEM01_M00_AXI_AWCACHE),
        .M00_AXI5_awlen(interconnect_PLRAM_MEM01_M00_AXI_AWLEN),
        .M00_AXI5_awlock(interconnect_PLRAM_MEM01_M00_AXI_AWLOCK),
        .M00_AXI5_awprot(interconnect_PLRAM_MEM01_M00_AXI_AWPROT),
        .M00_AXI5_awqos(interconnect_PLRAM_MEM01_M00_AXI_AWQOS),
        .M00_AXI5_awready(interconnect_PLRAM_MEM01_M00_AXI_AWREADY),
        .M00_AXI5_awvalid(interconnect_PLRAM_MEM01_M00_AXI_AWVALID),
        .M00_AXI5_bready(interconnect_PLRAM_MEM01_M00_AXI_BREADY),
        .M00_AXI5_bresp(interconnect_PLRAM_MEM01_M00_AXI_BRESP),
        .M00_AXI5_bvalid(interconnect_PLRAM_MEM01_M00_AXI_BVALID),
        .M00_AXI5_rdata(interconnect_PLRAM_MEM01_M00_AXI_RDATA),
        .M00_AXI5_rlast(interconnect_PLRAM_MEM01_M00_AXI_RLAST),
        .M00_AXI5_rready(interconnect_PLRAM_MEM01_M00_AXI_RREADY),
        .M00_AXI5_rresp(interconnect_PLRAM_MEM01_M00_AXI_RRESP),
        .M00_AXI5_rvalid(interconnect_PLRAM_MEM01_M00_AXI_RVALID),
        .M00_AXI5_wdata(interconnect_PLRAM_MEM01_M00_AXI_WDATA),
        .M00_AXI5_wlast(interconnect_PLRAM_MEM01_M00_AXI_WLAST),
        .M00_AXI5_wready(interconnect_PLRAM_MEM01_M00_AXI_WREADY),
        .M00_AXI5_wstrb(interconnect_PLRAM_MEM01_M00_AXI_WSTRB),
        .M00_AXI5_wvalid(interconnect_PLRAM_MEM01_M00_AXI_WVALID),
        .M00_AXI6_araddr(interconnect_PLRAM_MEM02_M00_AXI_ARADDR),
        .M00_AXI6_arburst(interconnect_PLRAM_MEM02_M00_AXI_ARBURST),
        .M00_AXI6_arcache(interconnect_PLRAM_MEM02_M00_AXI_ARCACHE),
        .M00_AXI6_arlen(interconnect_PLRAM_MEM02_M00_AXI_ARLEN),
        .M00_AXI6_arlock(interconnect_PLRAM_MEM02_M00_AXI_ARLOCK),
        .M00_AXI6_arprot(interconnect_PLRAM_MEM02_M00_AXI_ARPROT),
        .M00_AXI6_arqos(interconnect_PLRAM_MEM02_M00_AXI_ARQOS),
        .M00_AXI6_arready(interconnect_PLRAM_MEM02_M00_AXI_ARREADY),
        .M00_AXI6_arvalid(interconnect_PLRAM_MEM02_M00_AXI_ARVALID),
        .M00_AXI6_awaddr(interconnect_PLRAM_MEM02_M00_AXI_AWADDR),
        .M00_AXI6_awburst(interconnect_PLRAM_MEM02_M00_AXI_AWBURST),
        .M00_AXI6_awcache(interconnect_PLRAM_MEM02_M00_AXI_AWCACHE),
        .M00_AXI6_awlen(interconnect_PLRAM_MEM02_M00_AXI_AWLEN),
        .M00_AXI6_awlock(interconnect_PLRAM_MEM02_M00_AXI_AWLOCK),
        .M00_AXI6_awprot(interconnect_PLRAM_MEM02_M00_AXI_AWPROT),
        .M00_AXI6_awqos(interconnect_PLRAM_MEM02_M00_AXI_AWQOS),
        .M00_AXI6_awready(interconnect_PLRAM_MEM02_M00_AXI_AWREADY),
        .M00_AXI6_awvalid(interconnect_PLRAM_MEM02_M00_AXI_AWVALID),
        .M00_AXI6_bready(interconnect_PLRAM_MEM02_M00_AXI_BREADY),
        .M00_AXI6_bresp(interconnect_PLRAM_MEM02_M00_AXI_BRESP),
        .M00_AXI6_bvalid(interconnect_PLRAM_MEM02_M00_AXI_BVALID),
        .M00_AXI6_rdata(interconnect_PLRAM_MEM02_M00_AXI_RDATA),
        .M00_AXI6_rlast(interconnect_PLRAM_MEM02_M00_AXI_RLAST),
        .M00_AXI6_rready(interconnect_PLRAM_MEM02_M00_AXI_RREADY),
        .M00_AXI6_rresp(interconnect_PLRAM_MEM02_M00_AXI_RRESP),
        .M00_AXI6_rvalid(interconnect_PLRAM_MEM02_M00_AXI_RVALID),
        .M00_AXI6_wdata(interconnect_PLRAM_MEM02_M00_AXI_WDATA),
        .M00_AXI6_wlast(interconnect_PLRAM_MEM02_M00_AXI_WLAST),
        .M00_AXI6_wready(interconnect_PLRAM_MEM02_M00_AXI_WREADY),
        .M00_AXI6_wstrb(interconnect_PLRAM_MEM02_M00_AXI_WSTRB),
        .M00_AXI6_wvalid(interconnect_PLRAM_MEM02_M00_AXI_WVALID),
        .M00_AXI_araddr(interconnect_DDR4_MEM00_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_DDR4_MEM00_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_DDR4_MEM00_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect_DDR4_MEM00_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_DDR4_MEM00_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_DDR4_MEM00_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_DDR4_MEM00_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_DDR4_MEM00_M00_AXI_ARREADY),
        .M00_AXI_arvalid(interconnect_DDR4_MEM00_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_DDR4_MEM00_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_DDR4_MEM00_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_DDR4_MEM00_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect_DDR4_MEM00_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_DDR4_MEM00_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_DDR4_MEM00_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_DDR4_MEM00_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_DDR4_MEM00_M00_AXI_AWREADY),
        .M00_AXI_awvalid(interconnect_DDR4_MEM00_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_DDR4_MEM00_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_DDR4_MEM00_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_DDR4_MEM00_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_DDR4_MEM00_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect_DDR4_MEM00_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_DDR4_MEM00_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_DDR4_MEM00_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_DDR4_MEM00_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_DDR4_MEM00_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_DDR4_MEM00_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_DDR4_MEM00_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_DDR4_MEM00_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_DDR4_MEM00_M00_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_1_ARADDR),
        .S00_AXI_arid(S00_AXI_1_ARID),
        .S00_AXI_arlen(S00_AXI_1_ARLEN),
        .S00_AXI_arprot(S00_AXI_1_ARPROT),
        .S00_AXI_arready(S00_AXI_1_ARREADY),
        .S00_AXI_arregion(S00_AXI_1_ARREGION),
        .S00_AXI_arvalid(S00_AXI_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_1_AWADDR),
        .S00_AXI_awid(S00_AXI_1_AWID),
        .S00_AXI_awlen(S00_AXI_1_AWLEN),
        .S00_AXI_awprot(S00_AXI_1_AWPROT),
        .S00_AXI_awready(S00_AXI_1_AWREADY),
        .S00_AXI_awregion(S00_AXI_1_AWREGION),
        .S00_AXI_awvalid(S00_AXI_1_AWVALID),
        .S00_AXI_bid(S00_AXI_1_BID),
        .S00_AXI_bready(S00_AXI_1_BREADY),
        .S00_AXI_bresp(S00_AXI_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_1_BVALID),
        .S00_AXI_rdata(S00_AXI_1_RDATA),
        .S00_AXI_rid(S00_AXI_1_RID),
        .S00_AXI_rlast(S00_AXI_1_RLAST),
        .S00_AXI_rready(S00_AXI_1_RREADY),
        .S00_AXI_rresp(S00_AXI_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_1_RVALID),
        .S00_AXI_wdata(S00_AXI_1_WDATA),
        .S00_AXI_wlast(S00_AXI_1_WLAST),
        .S00_AXI_wready(S00_AXI_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_1_WVALID),
        .aclk(aclk_1),
        .aclk1(aws_clk_main_a0_out),
        .aresetn(psr_aclk_SLR0_interconnect_aresetn),
        .aresetn1(psr_aclk_SLR1_interconnect_aresetn),
        .aresetn2(psr_aclk_SLR2_interconnect_aresetn));
  memory_imp_AMH3FI memory
       (.S_AXI1_araddr(interconnect_DDR4_MEM01_M00_AXI_ARADDR),
        .S_AXI1_arburst(interconnect_DDR4_MEM01_M00_AXI_ARBURST),
        .S_AXI1_arcache(interconnect_DDR4_MEM01_M00_AXI_ARCACHE),
        .S_AXI1_arlen(interconnect_DDR4_MEM01_M00_AXI_ARLEN),
        .S_AXI1_arlock(interconnect_DDR4_MEM01_M00_AXI_ARLOCK),
        .S_AXI1_arprot(interconnect_DDR4_MEM01_M00_AXI_ARPROT),
        .S_AXI1_arqos(interconnect_DDR4_MEM01_M00_AXI_ARQOS),
        .S_AXI1_arready(interconnect_DDR4_MEM01_M00_AXI_ARREADY),
        .S_AXI1_arvalid(interconnect_DDR4_MEM01_M00_AXI_ARVALID),
        .S_AXI1_awaddr(interconnect_DDR4_MEM01_M00_AXI_AWADDR),
        .S_AXI1_awburst(interconnect_DDR4_MEM01_M00_AXI_AWBURST),
        .S_AXI1_awcache(interconnect_DDR4_MEM01_M00_AXI_AWCACHE),
        .S_AXI1_awlen(interconnect_DDR4_MEM01_M00_AXI_AWLEN),
        .S_AXI1_awlock(interconnect_DDR4_MEM01_M00_AXI_AWLOCK),
        .S_AXI1_awprot(interconnect_DDR4_MEM01_M00_AXI_AWPROT),
        .S_AXI1_awqos(interconnect_DDR4_MEM01_M00_AXI_AWQOS),
        .S_AXI1_awready(interconnect_DDR4_MEM01_M00_AXI_AWREADY),
        .S_AXI1_awvalid(interconnect_DDR4_MEM01_M00_AXI_AWVALID),
        .S_AXI1_bready(interconnect_DDR4_MEM01_M00_AXI_BREADY),
        .S_AXI1_bresp(interconnect_DDR4_MEM01_M00_AXI_BRESP),
        .S_AXI1_bvalid(interconnect_DDR4_MEM01_M00_AXI_BVALID),
        .S_AXI1_rdata(interconnect_DDR4_MEM01_M00_AXI_RDATA),
        .S_AXI1_rlast(interconnect_DDR4_MEM01_M00_AXI_RLAST),
        .S_AXI1_rready(interconnect_DDR4_MEM01_M00_AXI_RREADY),
        .S_AXI1_rresp(interconnect_DDR4_MEM01_M00_AXI_RRESP),
        .S_AXI1_rvalid(interconnect_DDR4_MEM01_M00_AXI_RVALID),
        .S_AXI1_wdata(interconnect_DDR4_MEM01_M00_AXI_WDATA),
        .S_AXI1_wlast(interconnect_DDR4_MEM01_M00_AXI_WLAST),
        .S_AXI1_wready(interconnect_DDR4_MEM01_M00_AXI_WREADY),
        .S_AXI1_wstrb(interconnect_DDR4_MEM01_M00_AXI_WSTRB),
        .S_AXI1_wvalid(interconnect_DDR4_MEM01_M00_AXI_WVALID),
        .S_AXI2_araddr(interconnect_DDR4_MEM02_M00_AXI_ARADDR),
        .S_AXI2_arburst(interconnect_DDR4_MEM02_M00_AXI_ARBURST),
        .S_AXI2_arcache(interconnect_DDR4_MEM02_M00_AXI_ARCACHE),
        .S_AXI2_arlen(interconnect_DDR4_MEM02_M00_AXI_ARLEN),
        .S_AXI2_arlock(interconnect_DDR4_MEM02_M00_AXI_ARLOCK),
        .S_AXI2_arprot(interconnect_DDR4_MEM02_M00_AXI_ARPROT),
        .S_AXI2_arqos(interconnect_DDR4_MEM02_M00_AXI_ARQOS),
        .S_AXI2_arready(interconnect_DDR4_MEM02_M00_AXI_ARREADY),
        .S_AXI2_arvalid(interconnect_DDR4_MEM02_M00_AXI_ARVALID),
        .S_AXI2_awaddr(interconnect_DDR4_MEM02_M00_AXI_AWADDR),
        .S_AXI2_awburst(interconnect_DDR4_MEM02_M00_AXI_AWBURST),
        .S_AXI2_awcache(interconnect_DDR4_MEM02_M00_AXI_AWCACHE),
        .S_AXI2_awlen(interconnect_DDR4_MEM02_M00_AXI_AWLEN),
        .S_AXI2_awlock(interconnect_DDR4_MEM02_M00_AXI_AWLOCK),
        .S_AXI2_awprot(interconnect_DDR4_MEM02_M00_AXI_AWPROT),
        .S_AXI2_awqos(interconnect_DDR4_MEM02_M00_AXI_AWQOS),
        .S_AXI2_awready(interconnect_DDR4_MEM02_M00_AXI_AWREADY),
        .S_AXI2_awvalid(interconnect_DDR4_MEM02_M00_AXI_AWVALID),
        .S_AXI2_bready(interconnect_DDR4_MEM02_M00_AXI_BREADY),
        .S_AXI2_bresp(interconnect_DDR4_MEM02_M00_AXI_BRESP),
        .S_AXI2_bvalid(interconnect_DDR4_MEM02_M00_AXI_BVALID),
        .S_AXI2_rdata(interconnect_DDR4_MEM02_M00_AXI_RDATA),
        .S_AXI2_rlast(interconnect_DDR4_MEM02_M00_AXI_RLAST),
        .S_AXI2_rready(interconnect_DDR4_MEM02_M00_AXI_RREADY),
        .S_AXI2_rresp(interconnect_DDR4_MEM02_M00_AXI_RRESP),
        .S_AXI2_rvalid(interconnect_DDR4_MEM02_M00_AXI_RVALID),
        .S_AXI2_wdata(interconnect_DDR4_MEM02_M00_AXI_WDATA),
        .S_AXI2_wlast(interconnect_DDR4_MEM02_M00_AXI_WLAST),
        .S_AXI2_wready(interconnect_DDR4_MEM02_M00_AXI_WREADY),
        .S_AXI2_wstrb(interconnect_DDR4_MEM02_M00_AXI_WSTRB),
        .S_AXI2_wvalid(interconnect_DDR4_MEM02_M00_AXI_WVALID),
        .S_AXI3_araddr(interconnect_DDR4_MEM03_M00_AXI_ARADDR),
        .S_AXI3_arburst(interconnect_DDR4_MEM03_M00_AXI_ARBURST),
        .S_AXI3_arcache(interconnect_DDR4_MEM03_M00_AXI_ARCACHE),
        .S_AXI3_arlen(interconnect_DDR4_MEM03_M00_AXI_ARLEN),
        .S_AXI3_arlock(interconnect_DDR4_MEM03_M00_AXI_ARLOCK),
        .S_AXI3_arprot(interconnect_DDR4_MEM03_M00_AXI_ARPROT),
        .S_AXI3_arqos(interconnect_DDR4_MEM03_M00_AXI_ARQOS),
        .S_AXI3_arready(interconnect_DDR4_MEM03_M00_AXI_ARREADY),
        .S_AXI3_arvalid(interconnect_DDR4_MEM03_M00_AXI_ARVALID),
        .S_AXI3_awaddr(interconnect_DDR4_MEM03_M00_AXI_AWADDR),
        .S_AXI3_awburst(interconnect_DDR4_MEM03_M00_AXI_AWBURST),
        .S_AXI3_awcache(interconnect_DDR4_MEM03_M00_AXI_AWCACHE),
        .S_AXI3_awlen(interconnect_DDR4_MEM03_M00_AXI_AWLEN),
        .S_AXI3_awlock(interconnect_DDR4_MEM03_M00_AXI_AWLOCK),
        .S_AXI3_awprot(interconnect_DDR4_MEM03_M00_AXI_AWPROT),
        .S_AXI3_awqos(interconnect_DDR4_MEM03_M00_AXI_AWQOS),
        .S_AXI3_awready(interconnect_DDR4_MEM03_M00_AXI_AWREADY),
        .S_AXI3_awvalid(interconnect_DDR4_MEM03_M00_AXI_AWVALID),
        .S_AXI3_bready(interconnect_DDR4_MEM03_M00_AXI_BREADY),
        .S_AXI3_bresp(interconnect_DDR4_MEM03_M00_AXI_BRESP),
        .S_AXI3_bvalid(interconnect_DDR4_MEM03_M00_AXI_BVALID),
        .S_AXI3_rdata(interconnect_DDR4_MEM03_M00_AXI_RDATA),
        .S_AXI3_rlast(interconnect_DDR4_MEM03_M00_AXI_RLAST),
        .S_AXI3_rready(interconnect_DDR4_MEM03_M00_AXI_RREADY),
        .S_AXI3_rresp(interconnect_DDR4_MEM03_M00_AXI_RRESP),
        .S_AXI3_rvalid(interconnect_DDR4_MEM03_M00_AXI_RVALID),
        .S_AXI3_wdata(interconnect_DDR4_MEM03_M00_AXI_WDATA),
        .S_AXI3_wlast(interconnect_DDR4_MEM03_M00_AXI_WLAST),
        .S_AXI3_wready(interconnect_DDR4_MEM03_M00_AXI_WREADY),
        .S_AXI3_wstrb(interconnect_DDR4_MEM03_M00_AXI_WSTRB),
        .S_AXI3_wvalid(interconnect_DDR4_MEM03_M00_AXI_WVALID),
        .S_AXI4_araddr(interconnect_PLRAM_MEM00_M00_AXI_ARADDR),
        .S_AXI4_arburst(interconnect_PLRAM_MEM00_M00_AXI_ARBURST),
        .S_AXI4_arcache(interconnect_PLRAM_MEM00_M00_AXI_ARCACHE),
        .S_AXI4_arlen(interconnect_PLRAM_MEM00_M00_AXI_ARLEN),
        .S_AXI4_arlock(interconnect_PLRAM_MEM00_M00_AXI_ARLOCK),
        .S_AXI4_arprot(interconnect_PLRAM_MEM00_M00_AXI_ARPROT),
        .S_AXI4_arqos(interconnect_PLRAM_MEM00_M00_AXI_ARQOS),
        .S_AXI4_arready(interconnect_PLRAM_MEM00_M00_AXI_ARREADY),
        .S_AXI4_arvalid(interconnect_PLRAM_MEM00_M00_AXI_ARVALID),
        .S_AXI4_awaddr(interconnect_PLRAM_MEM00_M00_AXI_AWADDR),
        .S_AXI4_awburst(interconnect_PLRAM_MEM00_M00_AXI_AWBURST),
        .S_AXI4_awcache(interconnect_PLRAM_MEM00_M00_AXI_AWCACHE),
        .S_AXI4_awlen(interconnect_PLRAM_MEM00_M00_AXI_AWLEN),
        .S_AXI4_awlock(interconnect_PLRAM_MEM00_M00_AXI_AWLOCK),
        .S_AXI4_awprot(interconnect_PLRAM_MEM00_M00_AXI_AWPROT),
        .S_AXI4_awqos(interconnect_PLRAM_MEM00_M00_AXI_AWQOS),
        .S_AXI4_awready(interconnect_PLRAM_MEM00_M00_AXI_AWREADY),
        .S_AXI4_awvalid(interconnect_PLRAM_MEM00_M00_AXI_AWVALID),
        .S_AXI4_bready(interconnect_PLRAM_MEM00_M00_AXI_BREADY),
        .S_AXI4_bresp(interconnect_PLRAM_MEM00_M00_AXI_BRESP),
        .S_AXI4_bvalid(interconnect_PLRAM_MEM00_M00_AXI_BVALID),
        .S_AXI4_rdata(interconnect_PLRAM_MEM00_M00_AXI_RDATA),
        .S_AXI4_rlast(interconnect_PLRAM_MEM00_M00_AXI_RLAST),
        .S_AXI4_rready(interconnect_PLRAM_MEM00_M00_AXI_RREADY),
        .S_AXI4_rresp(interconnect_PLRAM_MEM00_M00_AXI_RRESP),
        .S_AXI4_rvalid(interconnect_PLRAM_MEM00_M00_AXI_RVALID),
        .S_AXI4_wdata(interconnect_PLRAM_MEM00_M00_AXI_WDATA),
        .S_AXI4_wlast(interconnect_PLRAM_MEM00_M00_AXI_WLAST),
        .S_AXI4_wready(interconnect_PLRAM_MEM00_M00_AXI_WREADY),
        .S_AXI4_wstrb(interconnect_PLRAM_MEM00_M00_AXI_WSTRB),
        .S_AXI4_wvalid(interconnect_PLRAM_MEM00_M00_AXI_WVALID),
        .S_AXI5_araddr(interconnect_PLRAM_MEM01_M00_AXI_ARADDR),
        .S_AXI5_arburst(interconnect_PLRAM_MEM01_M00_AXI_ARBURST),
        .S_AXI5_arcache(interconnect_PLRAM_MEM01_M00_AXI_ARCACHE),
        .S_AXI5_arlen(interconnect_PLRAM_MEM01_M00_AXI_ARLEN),
        .S_AXI5_arlock(interconnect_PLRAM_MEM01_M00_AXI_ARLOCK),
        .S_AXI5_arprot(interconnect_PLRAM_MEM01_M00_AXI_ARPROT),
        .S_AXI5_arqos(interconnect_PLRAM_MEM01_M00_AXI_ARQOS),
        .S_AXI5_arready(interconnect_PLRAM_MEM01_M00_AXI_ARREADY),
        .S_AXI5_arvalid(interconnect_PLRAM_MEM01_M00_AXI_ARVALID),
        .S_AXI5_awaddr(interconnect_PLRAM_MEM01_M00_AXI_AWADDR),
        .S_AXI5_awburst(interconnect_PLRAM_MEM01_M00_AXI_AWBURST),
        .S_AXI5_awcache(interconnect_PLRAM_MEM01_M00_AXI_AWCACHE),
        .S_AXI5_awlen(interconnect_PLRAM_MEM01_M00_AXI_AWLEN),
        .S_AXI5_awlock(interconnect_PLRAM_MEM01_M00_AXI_AWLOCK),
        .S_AXI5_awprot(interconnect_PLRAM_MEM01_M00_AXI_AWPROT),
        .S_AXI5_awqos(interconnect_PLRAM_MEM01_M00_AXI_AWQOS),
        .S_AXI5_awready(interconnect_PLRAM_MEM01_M00_AXI_AWREADY),
        .S_AXI5_awvalid(interconnect_PLRAM_MEM01_M00_AXI_AWVALID),
        .S_AXI5_bready(interconnect_PLRAM_MEM01_M00_AXI_BREADY),
        .S_AXI5_bresp(interconnect_PLRAM_MEM01_M00_AXI_BRESP),
        .S_AXI5_bvalid(interconnect_PLRAM_MEM01_M00_AXI_BVALID),
        .S_AXI5_rdata(interconnect_PLRAM_MEM01_M00_AXI_RDATA),
        .S_AXI5_rlast(interconnect_PLRAM_MEM01_M00_AXI_RLAST),
        .S_AXI5_rready(interconnect_PLRAM_MEM01_M00_AXI_RREADY),
        .S_AXI5_rresp(interconnect_PLRAM_MEM01_M00_AXI_RRESP),
        .S_AXI5_rvalid(interconnect_PLRAM_MEM01_M00_AXI_RVALID),
        .S_AXI5_wdata(interconnect_PLRAM_MEM01_M00_AXI_WDATA),
        .S_AXI5_wlast(interconnect_PLRAM_MEM01_M00_AXI_WLAST),
        .S_AXI5_wready(interconnect_PLRAM_MEM01_M00_AXI_WREADY),
        .S_AXI5_wstrb(interconnect_PLRAM_MEM01_M00_AXI_WSTRB),
        .S_AXI5_wvalid(interconnect_PLRAM_MEM01_M00_AXI_WVALID),
        .S_AXI6_araddr(interconnect_PLRAM_MEM02_M00_AXI_ARADDR),
        .S_AXI6_arburst(interconnect_PLRAM_MEM02_M00_AXI_ARBURST),
        .S_AXI6_arcache(interconnect_PLRAM_MEM02_M00_AXI_ARCACHE),
        .S_AXI6_arlen(interconnect_PLRAM_MEM02_M00_AXI_ARLEN),
        .S_AXI6_arlock(interconnect_PLRAM_MEM02_M00_AXI_ARLOCK),
        .S_AXI6_arprot(interconnect_PLRAM_MEM02_M00_AXI_ARPROT),
        .S_AXI6_arqos(interconnect_PLRAM_MEM02_M00_AXI_ARQOS),
        .S_AXI6_arready(interconnect_PLRAM_MEM02_M00_AXI_ARREADY),
        .S_AXI6_arvalid(interconnect_PLRAM_MEM02_M00_AXI_ARVALID),
        .S_AXI6_awaddr(interconnect_PLRAM_MEM02_M00_AXI_AWADDR),
        .S_AXI6_awburst(interconnect_PLRAM_MEM02_M00_AXI_AWBURST),
        .S_AXI6_awcache(interconnect_PLRAM_MEM02_M00_AXI_AWCACHE),
        .S_AXI6_awlen(interconnect_PLRAM_MEM02_M00_AXI_AWLEN),
        .S_AXI6_awlock(interconnect_PLRAM_MEM02_M00_AXI_AWLOCK),
        .S_AXI6_awprot(interconnect_PLRAM_MEM02_M00_AXI_AWPROT),
        .S_AXI6_awqos(interconnect_PLRAM_MEM02_M00_AXI_AWQOS),
        .S_AXI6_awready(interconnect_PLRAM_MEM02_M00_AXI_AWREADY),
        .S_AXI6_awvalid(interconnect_PLRAM_MEM02_M00_AXI_AWVALID),
        .S_AXI6_bready(interconnect_PLRAM_MEM02_M00_AXI_BREADY),
        .S_AXI6_bresp(interconnect_PLRAM_MEM02_M00_AXI_BRESP),
        .S_AXI6_bvalid(interconnect_PLRAM_MEM02_M00_AXI_BVALID),
        .S_AXI6_rdata(interconnect_PLRAM_MEM02_M00_AXI_RDATA),
        .S_AXI6_rlast(interconnect_PLRAM_MEM02_M00_AXI_RLAST),
        .S_AXI6_rready(interconnect_PLRAM_MEM02_M00_AXI_RREADY),
        .S_AXI6_rresp(interconnect_PLRAM_MEM02_M00_AXI_RRESP),
        .S_AXI6_rvalid(interconnect_PLRAM_MEM02_M00_AXI_RVALID),
        .S_AXI6_wdata(interconnect_PLRAM_MEM02_M00_AXI_WDATA),
        .S_AXI6_wlast(interconnect_PLRAM_MEM02_M00_AXI_WLAST),
        .S_AXI6_wready(interconnect_PLRAM_MEM02_M00_AXI_WREADY),
        .S_AXI6_wstrb(interconnect_PLRAM_MEM02_M00_AXI_WSTRB),
        .S_AXI6_wvalid(interconnect_PLRAM_MEM02_M00_AXI_WVALID),
        .S_AXI_araddr(interconnect_DDR4_MEM00_M00_AXI_ARADDR),
        .S_AXI_arburst(interconnect_DDR4_MEM00_M00_AXI_ARBURST),
        .S_AXI_arcache(interconnect_DDR4_MEM00_M00_AXI_ARCACHE),
        .S_AXI_arlen(interconnect_DDR4_MEM00_M00_AXI_ARLEN),
        .S_AXI_arlock(interconnect_DDR4_MEM00_M00_AXI_ARLOCK),
        .S_AXI_arprot(interconnect_DDR4_MEM00_M00_AXI_ARPROT),
        .S_AXI_arqos(interconnect_DDR4_MEM00_M00_AXI_ARQOS),
        .S_AXI_arready(interconnect_DDR4_MEM00_M00_AXI_ARREADY),
        .S_AXI_arvalid(interconnect_DDR4_MEM00_M00_AXI_ARVALID),
        .S_AXI_awaddr(interconnect_DDR4_MEM00_M00_AXI_AWADDR),
        .S_AXI_awburst(interconnect_DDR4_MEM00_M00_AXI_AWBURST),
        .S_AXI_awcache(interconnect_DDR4_MEM00_M00_AXI_AWCACHE),
        .S_AXI_awlen(interconnect_DDR4_MEM00_M00_AXI_AWLEN),
        .S_AXI_awlock(interconnect_DDR4_MEM00_M00_AXI_AWLOCK),
        .S_AXI_awprot(interconnect_DDR4_MEM00_M00_AXI_AWPROT),
        .S_AXI_awqos(interconnect_DDR4_MEM00_M00_AXI_AWQOS),
        .S_AXI_awready(interconnect_DDR4_MEM00_M00_AXI_AWREADY),
        .S_AXI_awvalid(interconnect_DDR4_MEM00_M00_AXI_AWVALID),
        .S_AXI_bready(interconnect_DDR4_MEM00_M00_AXI_BREADY),
        .S_AXI_bresp(interconnect_DDR4_MEM00_M00_AXI_BRESP),
        .S_AXI_bvalid(interconnect_DDR4_MEM00_M00_AXI_BVALID),
        .S_AXI_rdata(interconnect_DDR4_MEM00_M00_AXI_RDATA),
        .S_AXI_rlast(interconnect_DDR4_MEM00_M00_AXI_RLAST),
        .S_AXI_rready(interconnect_DDR4_MEM00_M00_AXI_RREADY),
        .S_AXI_rresp(interconnect_DDR4_MEM00_M00_AXI_RRESP),
        .S_AXI_rvalid(interconnect_DDR4_MEM00_M00_AXI_RVALID),
        .S_AXI_wdata(interconnect_DDR4_MEM00_M00_AXI_WDATA),
        .S_AXI_wlast(interconnect_DDR4_MEM00_M00_AXI_WLAST),
        .S_AXI_wready(interconnect_DDR4_MEM00_M00_AXI_WREADY),
        .S_AXI_wstrb(interconnect_DDR4_MEM00_M00_AXI_WSTRB),
        .S_AXI_wvalid(interconnect_DDR4_MEM00_M00_AXI_WVALID),
        .aclk(aws_clk_main_a0_out),
        .aclk1(aclk_1),
        .aresetn(psr_aclk_SLR2_interconnect_aresetn),
        .aresetn1(psr_aclk_SLR1_interconnect_aresetn),
        .aresetn2(psr_aclk_SLR0_interconnect_aresetn),
        .ddr4_mem_calib_complete(calib_reduce_Res),
        .s_sh_cl_rst_dimm_a_n(s_sh_1_cl_RST_DIMM_A_N),
        .s_sh_cl_rst_dimm_b_n(s_sh_1_cl_RST_DIMM_B_N),
        .s_sh_cl_rst_dimm_d_n(s_sh_1_cl_RST_DIMM_D_N),
        .s_sh_cl_sh_ddr_araddr(s_sh_1_cl_sh_ddr_araddr),
        .s_sh_cl_sh_ddr_arburst(s_sh_1_cl_sh_ddr_arburst),
        .s_sh_cl_sh_ddr_arid(s_sh_1_cl_sh_ddr_arid),
        .s_sh_cl_sh_ddr_arlen(s_sh_1_cl_sh_ddr_arlen),
        .s_sh_cl_sh_ddr_arsize(s_sh_1_cl_sh_ddr_arsize),
        .s_sh_cl_sh_ddr_arvalid(s_sh_1_cl_sh_ddr_arvalid),
        .s_sh_cl_sh_ddr_awaddr(s_sh_1_cl_sh_ddr_awaddr),
        .s_sh_cl_sh_ddr_awburst(s_sh_1_cl_sh_ddr_awburst),
        .s_sh_cl_sh_ddr_awid(s_sh_1_cl_sh_ddr_awid),
        .s_sh_cl_sh_ddr_awlen(s_sh_1_cl_sh_ddr_awlen),
        .s_sh_cl_sh_ddr_awsize(s_sh_1_cl_sh_ddr_awsize),
        .s_sh_cl_sh_ddr_awvalid(s_sh_1_cl_sh_ddr_awvalid),
        .s_sh_cl_sh_ddr_bready(s_sh_1_cl_sh_ddr_bready),
        .s_sh_cl_sh_ddr_rready(s_sh_1_cl_sh_ddr_rready),
        .s_sh_cl_sh_ddr_wdata(s_sh_1_cl_sh_ddr_wdata),
        .s_sh_cl_sh_ddr_wid(s_sh_1_cl_sh_ddr_wid),
        .s_sh_cl_sh_ddr_wlast(s_sh_1_cl_sh_ddr_wlast),
        .s_sh_cl_sh_ddr_wstrb(s_sh_1_cl_sh_ddr_wstrb),
        .s_sh_cl_sh_ddr_wvalid(s_sh_1_cl_sh_ddr_wvalid),
        .s_sh_clk_300m_dimm0_dn(s_sh_1_CLK_300M_DIMM0_DN),
        .s_sh_clk_300m_dimm0_dp(s_sh_1_CLK_300M_DIMM0_DP),
        .s_sh_clk_300m_dimm1_dn(s_sh_1_CLK_300M_DIMM1_DN),
        .s_sh_clk_300m_dimm1_dp(s_sh_1_CLK_300M_DIMM1_DP),
        .s_sh_clk_300m_dimm3_dn(s_sh_1_CLK_300M_DIMM3_DN),
        .s_sh_clk_300m_dimm3_dp(s_sh_1_CLK_300M_DIMM3_DP),
        .s_sh_clk_main_a0(s_sh_1_clk_main_a0),
        .s_sh_ddr_sh_stat_ack0(s_sh_1_ddr_sh_stat_ack0),
        .s_sh_ddr_sh_stat_ack1(s_sh_1_ddr_sh_stat_ack1),
        .s_sh_ddr_sh_stat_ack2(s_sh_1_ddr_sh_stat_ack2),
        .s_sh_ddr_sh_stat_int0(s_sh_1_ddr_sh_stat_int0),
        .s_sh_ddr_sh_stat_int1(s_sh_1_ddr_sh_stat_int1),
        .s_sh_ddr_sh_stat_int2(s_sh_1_ddr_sh_stat_int2),
        .s_sh_ddr_sh_stat_rdata0(s_sh_1_ddr_sh_stat_rdata0),
        .s_sh_ddr_sh_stat_rdata1(s_sh_1_ddr_sh_stat_rdata1),
        .s_sh_ddr_sh_stat_rdata2(s_sh_1_ddr_sh_stat_rdata2),
        .s_sh_m_a_act_n(s_sh_1_M_A_ACT_N),
        .s_sh_m_a_ba(s_sh_1_M_A_BA),
        .s_sh_m_a_bg(s_sh_1_M_A_BG),
        .s_sh_m_a_cke(s_sh_1_M_A_CKE),
        .s_sh_m_a_clk_dn(s_sh_1_M_A_CLK_DN),
        .s_sh_m_a_clk_dp(s_sh_1_M_A_CLK_DP),
        .s_sh_m_a_cs_n(s_sh_1_M_A_CS_N),
        .s_sh_m_a_dq(s_sh_m_a_dq[63:0]),
        .s_sh_m_a_dqs_dn(s_sh_m_a_dqs_dn[17:0]),
        .s_sh_m_a_dqs_dp(s_sh_m_a_dqs_dp[17:0]),
        .s_sh_m_a_ecc(s_sh_m_a_ecc[7:0]),
        .s_sh_m_a_ma(s_sh_1_M_A_MA),
        .s_sh_m_a_odt(s_sh_1_M_A_ODT),
        .s_sh_m_a_par(s_sh_1_M_A_PAR),
        .s_sh_m_b_act_n(s_sh_1_M_B_ACT_N),
        .s_sh_m_b_ba(s_sh_1_M_B_BA),
        .s_sh_m_b_bg(s_sh_1_M_B_BG),
        .s_sh_m_b_cke(s_sh_1_M_B_CKE),
        .s_sh_m_b_clk_dn(s_sh_1_M_B_CLK_DN),
        .s_sh_m_b_clk_dp(s_sh_1_M_B_CLK_DP),
        .s_sh_m_b_cs_n(s_sh_1_M_B_CS_N),
        .s_sh_m_b_dq(s_sh_m_b_dq[63:0]),
        .s_sh_m_b_dqs_dn(s_sh_m_b_dqs_dn[17:0]),
        .s_sh_m_b_dqs_dp(s_sh_m_b_dqs_dp[17:0]),
        .s_sh_m_b_ecc(s_sh_m_b_ecc[7:0]),
        .s_sh_m_b_ma(s_sh_1_M_B_MA),
        .s_sh_m_b_odt(s_sh_1_M_B_ODT),
        .s_sh_m_b_par(s_sh_1_M_B_PAR),
        .s_sh_m_d_act_n(s_sh_1_M_D_ACT_N),
        .s_sh_m_d_ba(s_sh_1_M_D_BA),
        .s_sh_m_d_bg(s_sh_1_M_D_BG),
        .s_sh_m_d_cke(s_sh_1_M_D_CKE),
        .s_sh_m_d_clk_dn(s_sh_1_M_D_CLK_DN),
        .s_sh_m_d_clk_dp(s_sh_1_M_D_CLK_DP),
        .s_sh_m_d_cs_n(s_sh_1_M_D_CS_N),
        .s_sh_m_d_dq(s_sh_m_d_dq[63:0]),
        .s_sh_m_d_dqs_dn(s_sh_m_d_dqs_dn[17:0]),
        .s_sh_m_d_dqs_dp(s_sh_m_d_dqs_dp[17:0]),
        .s_sh_m_d_ecc(s_sh_m_d_ecc[7:0]),
        .s_sh_m_d_ma(s_sh_1_M_D_MA),
        .s_sh_m_d_odt(s_sh_1_M_D_ODT),
        .s_sh_m_d_par(s_sh_1_M_D_PAR),
        .s_sh_rst_main_n(s_sh_1_rst_main_n),
        .s_sh_sh_cl_ddr_arready(s_sh_1_sh_cl_ddr_arready),
        .s_sh_sh_cl_ddr_awready(s_sh_1_sh_cl_ddr_awready),
        .s_sh_sh_cl_ddr_bid(s_sh_1_sh_cl_ddr_bid),
        .s_sh_sh_cl_ddr_bresp(s_sh_1_sh_cl_ddr_bresp),
        .s_sh_sh_cl_ddr_bvalid(s_sh_1_sh_cl_ddr_bvalid),
        .s_sh_sh_cl_ddr_is_ready(s_sh_1_sh_cl_ddr_is_ready),
        .s_sh_sh_cl_ddr_rdata(s_sh_1_sh_cl_ddr_rdata),
        .s_sh_sh_cl_ddr_rid(s_sh_1_sh_cl_ddr_rid),
        .s_sh_sh_cl_ddr_rlast(s_sh_1_sh_cl_ddr_rlast),
        .s_sh_sh_cl_ddr_rresp(s_sh_1_sh_cl_ddr_rresp),
        .s_sh_sh_cl_ddr_rvalid(s_sh_1_sh_cl_ddr_rvalid),
        .s_sh_sh_cl_ddr_wready(s_sh_1_sh_cl_ddr_wready),
        .s_sh_sh_ddr_stat_addr0(s_sh_1_sh_ddr_stat_addr0),
        .s_sh_sh_ddr_stat_addr1(s_sh_1_sh_ddr_stat_addr1),
        .s_sh_sh_ddr_stat_addr2(s_sh_1_sh_ddr_stat_addr2),
        .s_sh_sh_ddr_stat_rd0(s_sh_1_sh_ddr_stat_rd0),
        .s_sh_sh_ddr_stat_rd1(s_sh_1_sh_ddr_stat_rd1),
        .s_sh_sh_ddr_stat_rd2(s_sh_1_sh_ddr_stat_rd2),
        .s_sh_sh_ddr_stat_wdata0(s_sh_1_sh_ddr_stat_wdata0),
        .s_sh_sh_ddr_stat_wdata1(s_sh_1_sh_ddr_stat_wdata1),
        .s_sh_sh_ddr_stat_wdata2(s_sh_1_sh_ddr_stat_wdata2),
        .s_sh_sh_ddr_stat_wr0(s_sh_1_sh_ddr_stat_wr0),
        .s_sh_sh_ddr_stat_wr1(s_sh_1_sh_ddr_stat_wr1),
        .s_sh_sh_ddr_stat_wr2(s_sh_1_sh_ddr_stat_wr2));
  reset_imp_57Y9M4 reset
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .interconnect_aresetn(psr_aclk_SLR0_interconnect_aresetn),
        .interconnect_aresetn1(psr_aclk_SLR1_interconnect_aresetn),
        .interconnect_aresetn2(psr_aclk_SLR2_interconnect_aresetn));
endmodule

module interconnect_imp_1XWE5B8
   (M00_AXI1_araddr,
    M00_AXI1_arburst,
    M00_AXI1_arcache,
    M00_AXI1_arlen,
    M00_AXI1_arlock,
    M00_AXI1_arprot,
    M00_AXI1_arqos,
    M00_AXI1_arready,
    M00_AXI1_arvalid,
    M00_AXI1_awaddr,
    M00_AXI1_awburst,
    M00_AXI1_awcache,
    M00_AXI1_awlen,
    M00_AXI1_awlock,
    M00_AXI1_awprot,
    M00_AXI1_awqos,
    M00_AXI1_awready,
    M00_AXI1_awvalid,
    M00_AXI1_bready,
    M00_AXI1_bresp,
    M00_AXI1_bvalid,
    M00_AXI1_rdata,
    M00_AXI1_rlast,
    M00_AXI1_rready,
    M00_AXI1_rresp,
    M00_AXI1_rvalid,
    M00_AXI1_wdata,
    M00_AXI1_wlast,
    M00_AXI1_wready,
    M00_AXI1_wstrb,
    M00_AXI1_wvalid,
    M00_AXI2_araddr,
    M00_AXI2_arburst,
    M00_AXI2_arcache,
    M00_AXI2_arlen,
    M00_AXI2_arlock,
    M00_AXI2_arprot,
    M00_AXI2_arqos,
    M00_AXI2_arready,
    M00_AXI2_arvalid,
    M00_AXI2_awaddr,
    M00_AXI2_awburst,
    M00_AXI2_awcache,
    M00_AXI2_awlen,
    M00_AXI2_awlock,
    M00_AXI2_awprot,
    M00_AXI2_awqos,
    M00_AXI2_awready,
    M00_AXI2_awvalid,
    M00_AXI2_bready,
    M00_AXI2_bresp,
    M00_AXI2_bvalid,
    M00_AXI2_rdata,
    M00_AXI2_rlast,
    M00_AXI2_rready,
    M00_AXI2_rresp,
    M00_AXI2_rvalid,
    M00_AXI2_wdata,
    M00_AXI2_wlast,
    M00_AXI2_wready,
    M00_AXI2_wstrb,
    M00_AXI2_wvalid,
    M00_AXI3_araddr,
    M00_AXI3_arburst,
    M00_AXI3_arcache,
    M00_AXI3_arlen,
    M00_AXI3_arlock,
    M00_AXI3_arprot,
    M00_AXI3_arqos,
    M00_AXI3_arready,
    M00_AXI3_arvalid,
    M00_AXI3_awaddr,
    M00_AXI3_awburst,
    M00_AXI3_awcache,
    M00_AXI3_awlen,
    M00_AXI3_awlock,
    M00_AXI3_awprot,
    M00_AXI3_awqos,
    M00_AXI3_awready,
    M00_AXI3_awvalid,
    M00_AXI3_bready,
    M00_AXI3_bresp,
    M00_AXI3_bvalid,
    M00_AXI3_rdata,
    M00_AXI3_rlast,
    M00_AXI3_rready,
    M00_AXI3_rresp,
    M00_AXI3_rvalid,
    M00_AXI3_wdata,
    M00_AXI3_wlast,
    M00_AXI3_wready,
    M00_AXI3_wstrb,
    M00_AXI3_wvalid,
    M00_AXI4_araddr,
    M00_AXI4_arburst,
    M00_AXI4_arcache,
    M00_AXI4_arlen,
    M00_AXI4_arlock,
    M00_AXI4_arprot,
    M00_AXI4_arqos,
    M00_AXI4_arready,
    M00_AXI4_arvalid,
    M00_AXI4_awaddr,
    M00_AXI4_awburst,
    M00_AXI4_awcache,
    M00_AXI4_awlen,
    M00_AXI4_awlock,
    M00_AXI4_awprot,
    M00_AXI4_awqos,
    M00_AXI4_awready,
    M00_AXI4_awvalid,
    M00_AXI4_bready,
    M00_AXI4_bresp,
    M00_AXI4_bvalid,
    M00_AXI4_rdata,
    M00_AXI4_rlast,
    M00_AXI4_rready,
    M00_AXI4_rresp,
    M00_AXI4_rvalid,
    M00_AXI4_wdata,
    M00_AXI4_wlast,
    M00_AXI4_wready,
    M00_AXI4_wstrb,
    M00_AXI4_wvalid,
    M00_AXI5_araddr,
    M00_AXI5_arburst,
    M00_AXI5_arcache,
    M00_AXI5_arlen,
    M00_AXI5_arlock,
    M00_AXI5_arprot,
    M00_AXI5_arqos,
    M00_AXI5_arready,
    M00_AXI5_arvalid,
    M00_AXI5_awaddr,
    M00_AXI5_awburst,
    M00_AXI5_awcache,
    M00_AXI5_awlen,
    M00_AXI5_awlock,
    M00_AXI5_awprot,
    M00_AXI5_awqos,
    M00_AXI5_awready,
    M00_AXI5_awvalid,
    M00_AXI5_bready,
    M00_AXI5_bresp,
    M00_AXI5_bvalid,
    M00_AXI5_rdata,
    M00_AXI5_rlast,
    M00_AXI5_rready,
    M00_AXI5_rresp,
    M00_AXI5_rvalid,
    M00_AXI5_wdata,
    M00_AXI5_wlast,
    M00_AXI5_wready,
    M00_AXI5_wstrb,
    M00_AXI5_wvalid,
    M00_AXI6_araddr,
    M00_AXI6_arburst,
    M00_AXI6_arcache,
    M00_AXI6_arlen,
    M00_AXI6_arlock,
    M00_AXI6_arprot,
    M00_AXI6_arqos,
    M00_AXI6_arready,
    M00_AXI6_arvalid,
    M00_AXI6_awaddr,
    M00_AXI6_awburst,
    M00_AXI6_awcache,
    M00_AXI6_awlen,
    M00_AXI6_awlock,
    M00_AXI6_awprot,
    M00_AXI6_awqos,
    M00_AXI6_awready,
    M00_AXI6_awvalid,
    M00_AXI6_bready,
    M00_AXI6_bresp,
    M00_AXI6_bvalid,
    M00_AXI6_rdata,
    M00_AXI6_rlast,
    M00_AXI6_rready,
    M00_AXI6_rresp,
    M00_AXI6_rvalid,
    M00_AXI6_wdata,
    M00_AXI6_wlast,
    M00_AXI6_wready,
    M00_AXI6_wstrb,
    M00_AXI6_wvalid,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_AXI_araddr,
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
    aclk1,
    aresetn,
    aresetn1,
    aresetn2);
  output [63:0]M00_AXI1_araddr;
  output [1:0]M00_AXI1_arburst;
  output [3:0]M00_AXI1_arcache;
  output [7:0]M00_AXI1_arlen;
  output [0:0]M00_AXI1_arlock;
  output [2:0]M00_AXI1_arprot;
  output [3:0]M00_AXI1_arqos;
  input M00_AXI1_arready;
  output M00_AXI1_arvalid;
  output [63:0]M00_AXI1_awaddr;
  output [1:0]M00_AXI1_awburst;
  output [3:0]M00_AXI1_awcache;
  output [7:0]M00_AXI1_awlen;
  output [0:0]M00_AXI1_awlock;
  output [2:0]M00_AXI1_awprot;
  output [3:0]M00_AXI1_awqos;
  input M00_AXI1_awready;
  output M00_AXI1_awvalid;
  output M00_AXI1_bready;
  input [1:0]M00_AXI1_bresp;
  input M00_AXI1_bvalid;
  input [511:0]M00_AXI1_rdata;
  input M00_AXI1_rlast;
  output M00_AXI1_rready;
  input [1:0]M00_AXI1_rresp;
  input M00_AXI1_rvalid;
  output [511:0]M00_AXI1_wdata;
  output M00_AXI1_wlast;
  input M00_AXI1_wready;
  output [63:0]M00_AXI1_wstrb;
  output M00_AXI1_wvalid;
  output [63:0]M00_AXI2_araddr;
  output [1:0]M00_AXI2_arburst;
  output [3:0]M00_AXI2_arcache;
  output [7:0]M00_AXI2_arlen;
  output [0:0]M00_AXI2_arlock;
  output [2:0]M00_AXI2_arprot;
  output [3:0]M00_AXI2_arqos;
  input M00_AXI2_arready;
  output M00_AXI2_arvalid;
  output [63:0]M00_AXI2_awaddr;
  output [1:0]M00_AXI2_awburst;
  output [3:0]M00_AXI2_awcache;
  output [7:0]M00_AXI2_awlen;
  output [0:0]M00_AXI2_awlock;
  output [2:0]M00_AXI2_awprot;
  output [3:0]M00_AXI2_awqos;
  input M00_AXI2_awready;
  output M00_AXI2_awvalid;
  output M00_AXI2_bready;
  input [1:0]M00_AXI2_bresp;
  input M00_AXI2_bvalid;
  input [511:0]M00_AXI2_rdata;
  input M00_AXI2_rlast;
  output M00_AXI2_rready;
  input [1:0]M00_AXI2_rresp;
  input M00_AXI2_rvalid;
  output [511:0]M00_AXI2_wdata;
  output M00_AXI2_wlast;
  input M00_AXI2_wready;
  output [63:0]M00_AXI2_wstrb;
  output M00_AXI2_wvalid;
  output [63:0]M00_AXI3_araddr;
  output [1:0]M00_AXI3_arburst;
  output [3:0]M00_AXI3_arcache;
  output [7:0]M00_AXI3_arlen;
  output [0:0]M00_AXI3_arlock;
  output [2:0]M00_AXI3_arprot;
  output [3:0]M00_AXI3_arqos;
  input M00_AXI3_arready;
  output M00_AXI3_arvalid;
  output [63:0]M00_AXI3_awaddr;
  output [1:0]M00_AXI3_awburst;
  output [3:0]M00_AXI3_awcache;
  output [7:0]M00_AXI3_awlen;
  output [0:0]M00_AXI3_awlock;
  output [2:0]M00_AXI3_awprot;
  output [3:0]M00_AXI3_awqos;
  input M00_AXI3_awready;
  output M00_AXI3_awvalid;
  output M00_AXI3_bready;
  input [1:0]M00_AXI3_bresp;
  input M00_AXI3_bvalid;
  input [511:0]M00_AXI3_rdata;
  input M00_AXI3_rlast;
  output M00_AXI3_rready;
  input [1:0]M00_AXI3_rresp;
  input M00_AXI3_rvalid;
  output [511:0]M00_AXI3_wdata;
  output M00_AXI3_wlast;
  input M00_AXI3_wready;
  output [63:0]M00_AXI3_wstrb;
  output M00_AXI3_wvalid;
  output [16:0]M00_AXI4_araddr;
  output [1:0]M00_AXI4_arburst;
  output [3:0]M00_AXI4_arcache;
  output [7:0]M00_AXI4_arlen;
  output [0:0]M00_AXI4_arlock;
  output [2:0]M00_AXI4_arprot;
  output [3:0]M00_AXI4_arqos;
  input M00_AXI4_arready;
  output M00_AXI4_arvalid;
  output [16:0]M00_AXI4_awaddr;
  output [1:0]M00_AXI4_awburst;
  output [3:0]M00_AXI4_awcache;
  output [7:0]M00_AXI4_awlen;
  output [0:0]M00_AXI4_awlock;
  output [2:0]M00_AXI4_awprot;
  output [3:0]M00_AXI4_awqos;
  input M00_AXI4_awready;
  output M00_AXI4_awvalid;
  output M00_AXI4_bready;
  input [1:0]M00_AXI4_bresp;
  input M00_AXI4_bvalid;
  input [511:0]M00_AXI4_rdata;
  input M00_AXI4_rlast;
  output M00_AXI4_rready;
  input [1:0]M00_AXI4_rresp;
  input M00_AXI4_rvalid;
  output [511:0]M00_AXI4_wdata;
  output M00_AXI4_wlast;
  input M00_AXI4_wready;
  output [63:0]M00_AXI4_wstrb;
  output M00_AXI4_wvalid;
  output [16:0]M00_AXI5_araddr;
  output [1:0]M00_AXI5_arburst;
  output [3:0]M00_AXI5_arcache;
  output [7:0]M00_AXI5_arlen;
  output [0:0]M00_AXI5_arlock;
  output [2:0]M00_AXI5_arprot;
  output [3:0]M00_AXI5_arqos;
  input M00_AXI5_arready;
  output M00_AXI5_arvalid;
  output [16:0]M00_AXI5_awaddr;
  output [1:0]M00_AXI5_awburst;
  output [3:0]M00_AXI5_awcache;
  output [7:0]M00_AXI5_awlen;
  output [0:0]M00_AXI5_awlock;
  output [2:0]M00_AXI5_awprot;
  output [3:0]M00_AXI5_awqos;
  input M00_AXI5_awready;
  output M00_AXI5_awvalid;
  output M00_AXI5_bready;
  input [1:0]M00_AXI5_bresp;
  input M00_AXI5_bvalid;
  input [511:0]M00_AXI5_rdata;
  input M00_AXI5_rlast;
  output M00_AXI5_rready;
  input [1:0]M00_AXI5_rresp;
  input M00_AXI5_rvalid;
  output [511:0]M00_AXI5_wdata;
  output M00_AXI5_wlast;
  input M00_AXI5_wready;
  output [63:0]M00_AXI5_wstrb;
  output M00_AXI5_wvalid;
  output [16:0]M00_AXI6_araddr;
  output [1:0]M00_AXI6_arburst;
  output [3:0]M00_AXI6_arcache;
  output [7:0]M00_AXI6_arlen;
  output [0:0]M00_AXI6_arlock;
  output [2:0]M00_AXI6_arprot;
  output [3:0]M00_AXI6_arqos;
  input M00_AXI6_arready;
  output M00_AXI6_arvalid;
  output [16:0]M00_AXI6_awaddr;
  output [1:0]M00_AXI6_awburst;
  output [3:0]M00_AXI6_awcache;
  output [7:0]M00_AXI6_awlen;
  output [0:0]M00_AXI6_awlock;
  output [2:0]M00_AXI6_awprot;
  output [3:0]M00_AXI6_awqos;
  input M00_AXI6_awready;
  output M00_AXI6_awvalid;
  output M00_AXI6_bready;
  input [1:0]M00_AXI6_bresp;
  input M00_AXI6_bvalid;
  input [511:0]M00_AXI6_rdata;
  input M00_AXI6_rlast;
  output M00_AXI6_rready;
  input [1:0]M00_AXI6_rresp;
  input M00_AXI6_rvalid;
  output [511:0]M00_AXI6_wdata;
  output M00_AXI6_wlast;
  input M00_AXI6_wready;
  output [63:0]M00_AXI6_wstrb;
  output M00_AXI6_wvalid;
  output [63:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [63:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [511:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [511:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
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
  input aclk1;
  input aresetn;
  input aresetn1;
  input aresetn2;

  wire [36:0]S00_AXI_1_ARADDR;
  wire [5:0]S00_AXI_1_ARID;
  wire [7:0]S00_AXI_1_ARLEN;
  wire [2:0]S00_AXI_1_ARPROT;
  wire S00_AXI_1_ARREADY;
  wire [3:0]S00_AXI_1_ARREGION;
  wire S00_AXI_1_ARVALID;
  wire [36:0]S00_AXI_1_AWADDR;
  wire [5:0]S00_AXI_1_AWID;
  wire [7:0]S00_AXI_1_AWLEN;
  wire [2:0]S00_AXI_1_AWPROT;
  wire S00_AXI_1_AWREADY;
  wire [3:0]S00_AXI_1_AWREGION;
  wire S00_AXI_1_AWVALID;
  wire [5:0]S00_AXI_1_BID;
  wire S00_AXI_1_BREADY;
  wire [1:0]S00_AXI_1_BRESP;
  wire S00_AXI_1_BVALID;
  wire [511:0]S00_AXI_1_RDATA;
  wire [5:0]S00_AXI_1_RID;
  wire S00_AXI_1_RLAST;
  wire S00_AXI_1_RREADY;
  wire [1:0]S00_AXI_1_RRESP;
  wire S00_AXI_1_RVALID;
  wire [511:0]S00_AXI_1_WDATA;
  wire S00_AXI_1_WLAST;
  wire S00_AXI_1_WREADY;
  wire [63:0]S00_AXI_1_WSTRB;
  wire S00_AXI_1_WVALID;
  wire aclk_1;
  wire aws_clk_main_a0_out;
  wire [63:0]interconnect_DDR4_MEM00_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM00_M00_AXI_ARLEN;
  wire [0:0]interconnect_DDR4_MEM00_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM00_M00_AXI_ARREADY;
  wire interconnect_DDR4_MEM00_M00_AXI_ARVALID;
  wire [63:0]interconnect_DDR4_MEM00_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM00_M00_AXI_AWLEN;
  wire [0:0]interconnect_DDR4_MEM00_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM00_M00_AXI_AWREADY;
  wire interconnect_DDR4_MEM00_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM00_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM00_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM00_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM00_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM00_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM00_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM00_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM00_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM00_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM00_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM00_M00_AXI_WVALID;
  wire [63:0]interconnect_DDR4_MEM01_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM01_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM01_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM01_M00_AXI_ARLEN;
  wire [0:0]interconnect_DDR4_MEM01_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM01_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM01_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM01_M00_AXI_ARREADY;
  wire interconnect_DDR4_MEM01_M00_AXI_ARVALID;
  wire [63:0]interconnect_DDR4_MEM01_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM01_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM01_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM01_M00_AXI_AWLEN;
  wire [0:0]interconnect_DDR4_MEM01_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM01_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM01_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM01_M00_AXI_AWREADY;
  wire interconnect_DDR4_MEM01_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM01_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM01_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM01_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM01_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM01_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM01_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM01_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM01_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM01_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM01_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM01_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM01_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM01_M00_AXI_WVALID;
  wire [63:0]interconnect_DDR4_MEM02_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM02_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM02_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM02_M00_AXI_ARLEN;
  wire [0:0]interconnect_DDR4_MEM02_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM02_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM02_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM02_M00_AXI_ARREADY;
  wire interconnect_DDR4_MEM02_M00_AXI_ARVALID;
  wire [63:0]interconnect_DDR4_MEM02_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM02_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM02_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM02_M00_AXI_AWLEN;
  wire [0:0]interconnect_DDR4_MEM02_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM02_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM02_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM02_M00_AXI_AWREADY;
  wire interconnect_DDR4_MEM02_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM02_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM02_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM02_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM02_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM02_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM02_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM02_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM02_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM02_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM02_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM02_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM02_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM02_M00_AXI_WVALID;
  wire [63:0]interconnect_DDR4_MEM03_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM03_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM03_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM03_M00_AXI_ARLEN;
  wire [0:0]interconnect_DDR4_MEM03_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM03_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM03_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM03_M00_AXI_ARREADY;
  wire interconnect_DDR4_MEM03_M00_AXI_ARVALID;
  wire [63:0]interconnect_DDR4_MEM03_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM03_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM03_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM03_M00_AXI_AWLEN;
  wire [0:0]interconnect_DDR4_MEM03_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM03_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM03_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM03_M00_AXI_AWREADY;
  wire interconnect_DDR4_MEM03_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM03_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM03_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM03_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM03_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM03_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM03_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM03_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM03_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM03_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM03_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM03_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM03_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM03_M00_AXI_WVALID;
  wire [16:0]interconnect_PLRAM_MEM00_M00_AXI_ARADDR;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_ARBURST;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_ARCACHE;
  wire [7:0]interconnect_PLRAM_MEM00_M00_AXI_ARLEN;
  wire [0:0]interconnect_PLRAM_MEM00_M00_AXI_ARLOCK;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_ARPROT;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_ARQOS;
  wire interconnect_PLRAM_MEM00_M00_AXI_ARREADY;
  wire interconnect_PLRAM_MEM00_M00_AXI_ARVALID;
  wire [16:0]interconnect_PLRAM_MEM00_M00_AXI_AWADDR;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_AWBURST;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_AWCACHE;
  wire [7:0]interconnect_PLRAM_MEM00_M00_AXI_AWLEN;
  wire [0:0]interconnect_PLRAM_MEM00_M00_AXI_AWLOCK;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_AWPROT;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_AWQOS;
  wire interconnect_PLRAM_MEM00_M00_AXI_AWREADY;
  wire interconnect_PLRAM_MEM00_M00_AXI_AWVALID;
  wire interconnect_PLRAM_MEM00_M00_AXI_BREADY;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_BRESP;
  wire interconnect_PLRAM_MEM00_M00_AXI_BVALID;
  wire [511:0]interconnect_PLRAM_MEM00_M00_AXI_RDATA;
  wire interconnect_PLRAM_MEM00_M00_AXI_RLAST;
  wire interconnect_PLRAM_MEM00_M00_AXI_RREADY;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_RRESP;
  wire interconnect_PLRAM_MEM00_M00_AXI_RVALID;
  wire [511:0]interconnect_PLRAM_MEM00_M00_AXI_WDATA;
  wire interconnect_PLRAM_MEM00_M00_AXI_WLAST;
  wire interconnect_PLRAM_MEM00_M00_AXI_WREADY;
  wire [63:0]interconnect_PLRAM_MEM00_M00_AXI_WSTRB;
  wire interconnect_PLRAM_MEM00_M00_AXI_WVALID;
  wire [16:0]interconnect_PLRAM_MEM01_M00_AXI_ARADDR;
  wire [1:0]interconnect_PLRAM_MEM01_M00_AXI_ARBURST;
  wire [3:0]interconnect_PLRAM_MEM01_M00_AXI_ARCACHE;
  wire [7:0]interconnect_PLRAM_MEM01_M00_AXI_ARLEN;
  wire [0:0]interconnect_PLRAM_MEM01_M00_AXI_ARLOCK;
  wire [2:0]interconnect_PLRAM_MEM01_M00_AXI_ARPROT;
  wire [3:0]interconnect_PLRAM_MEM01_M00_AXI_ARQOS;
  wire interconnect_PLRAM_MEM01_M00_AXI_ARREADY;
  wire interconnect_PLRAM_MEM01_M00_AXI_ARVALID;
  wire [16:0]interconnect_PLRAM_MEM01_M00_AXI_AWADDR;
  wire [1:0]interconnect_PLRAM_MEM01_M00_AXI_AWBURST;
  wire [3:0]interconnect_PLRAM_MEM01_M00_AXI_AWCACHE;
  wire [7:0]interconnect_PLRAM_MEM01_M00_AXI_AWLEN;
  wire [0:0]interconnect_PLRAM_MEM01_M00_AXI_AWLOCK;
  wire [2:0]interconnect_PLRAM_MEM01_M00_AXI_AWPROT;
  wire [3:0]interconnect_PLRAM_MEM01_M00_AXI_AWQOS;
  wire interconnect_PLRAM_MEM01_M00_AXI_AWREADY;
  wire interconnect_PLRAM_MEM01_M00_AXI_AWVALID;
  wire interconnect_PLRAM_MEM01_M00_AXI_BREADY;
  wire [1:0]interconnect_PLRAM_MEM01_M00_AXI_BRESP;
  wire interconnect_PLRAM_MEM01_M00_AXI_BVALID;
  wire [511:0]interconnect_PLRAM_MEM01_M00_AXI_RDATA;
  wire interconnect_PLRAM_MEM01_M00_AXI_RLAST;
  wire interconnect_PLRAM_MEM01_M00_AXI_RREADY;
  wire [1:0]interconnect_PLRAM_MEM01_M00_AXI_RRESP;
  wire interconnect_PLRAM_MEM01_M00_AXI_RVALID;
  wire [511:0]interconnect_PLRAM_MEM01_M00_AXI_WDATA;
  wire interconnect_PLRAM_MEM01_M00_AXI_WLAST;
  wire interconnect_PLRAM_MEM01_M00_AXI_WREADY;
  wire [63:0]interconnect_PLRAM_MEM01_M00_AXI_WSTRB;
  wire interconnect_PLRAM_MEM01_M00_AXI_WVALID;
  wire [16:0]interconnect_PLRAM_MEM02_M00_AXI_ARADDR;
  wire [1:0]interconnect_PLRAM_MEM02_M00_AXI_ARBURST;
  wire [3:0]interconnect_PLRAM_MEM02_M00_AXI_ARCACHE;
  wire [7:0]interconnect_PLRAM_MEM02_M00_AXI_ARLEN;
  wire [0:0]interconnect_PLRAM_MEM02_M00_AXI_ARLOCK;
  wire [2:0]interconnect_PLRAM_MEM02_M00_AXI_ARPROT;
  wire [3:0]interconnect_PLRAM_MEM02_M00_AXI_ARQOS;
  wire interconnect_PLRAM_MEM02_M00_AXI_ARREADY;
  wire interconnect_PLRAM_MEM02_M00_AXI_ARVALID;
  wire [16:0]interconnect_PLRAM_MEM02_M00_AXI_AWADDR;
  wire [1:0]interconnect_PLRAM_MEM02_M00_AXI_AWBURST;
  wire [3:0]interconnect_PLRAM_MEM02_M00_AXI_AWCACHE;
  wire [7:0]interconnect_PLRAM_MEM02_M00_AXI_AWLEN;
  wire [0:0]interconnect_PLRAM_MEM02_M00_AXI_AWLOCK;
  wire [2:0]interconnect_PLRAM_MEM02_M00_AXI_AWPROT;
  wire [3:0]interconnect_PLRAM_MEM02_M00_AXI_AWQOS;
  wire interconnect_PLRAM_MEM02_M00_AXI_AWREADY;
  wire interconnect_PLRAM_MEM02_M00_AXI_AWVALID;
  wire interconnect_PLRAM_MEM02_M00_AXI_BREADY;
  wire [1:0]interconnect_PLRAM_MEM02_M00_AXI_BRESP;
  wire interconnect_PLRAM_MEM02_M00_AXI_BVALID;
  wire [511:0]interconnect_PLRAM_MEM02_M00_AXI_RDATA;
  wire interconnect_PLRAM_MEM02_M00_AXI_RLAST;
  wire interconnect_PLRAM_MEM02_M00_AXI_RREADY;
  wire [1:0]interconnect_PLRAM_MEM02_M00_AXI_RRESP;
  wire interconnect_PLRAM_MEM02_M00_AXI_RVALID;
  wire [511:0]interconnect_PLRAM_MEM02_M00_AXI_WDATA;
  wire interconnect_PLRAM_MEM02_M00_AXI_WLAST;
  wire interconnect_PLRAM_MEM02_M00_AXI_WREADY;
  wire [63:0]interconnect_PLRAM_MEM02_M00_AXI_WSTRB;
  wire interconnect_PLRAM_MEM02_M00_AXI_WVALID;
  wire [36:0]interconnect_S00_AXI_M00_AXI_ARADDR;
  wire [1:0]interconnect_S00_AXI_M00_AXI_ARBURST;
  wire [3:0]interconnect_S00_AXI_M00_AXI_ARCACHE;
  wire [2:0]interconnect_S00_AXI_M00_AXI_ARID;
  wire [7:0]interconnect_S00_AXI_M00_AXI_ARLEN;
  wire [0:0]interconnect_S00_AXI_M00_AXI_ARLOCK;
  wire [2:0]interconnect_S00_AXI_M00_AXI_ARPROT;
  wire [3:0]interconnect_S00_AXI_M00_AXI_ARQOS;
  wire interconnect_S00_AXI_M00_AXI_ARREADY;
  wire [2:0]interconnect_S00_AXI_M00_AXI_ARSIZE;
  wire [113:0]interconnect_S00_AXI_M00_AXI_ARUSER;
  wire interconnect_S00_AXI_M00_AXI_ARVALID;
  wire [36:0]interconnect_S00_AXI_M00_AXI_AWADDR;
  wire [1:0]interconnect_S00_AXI_M00_AXI_AWBURST;
  wire [3:0]interconnect_S00_AXI_M00_AXI_AWCACHE;
  wire [2:0]interconnect_S00_AXI_M00_AXI_AWID;
  wire [7:0]interconnect_S00_AXI_M00_AXI_AWLEN;
  wire [0:0]interconnect_S00_AXI_M00_AXI_AWLOCK;
  wire [2:0]interconnect_S00_AXI_M00_AXI_AWPROT;
  wire [3:0]interconnect_S00_AXI_M00_AXI_AWQOS;
  wire interconnect_S00_AXI_M00_AXI_AWREADY;
  wire [2:0]interconnect_S00_AXI_M00_AXI_AWSIZE;
  wire [113:0]interconnect_S00_AXI_M00_AXI_AWUSER;
  wire interconnect_S00_AXI_M00_AXI_AWVALID;
  wire [2:0]interconnect_S00_AXI_M00_AXI_BID;
  wire interconnect_S00_AXI_M00_AXI_BREADY;
  wire [1:0]interconnect_S00_AXI_M00_AXI_BRESP;
  wire [113:0]interconnect_S00_AXI_M00_AXI_BUSER;
  wire interconnect_S00_AXI_M00_AXI_BVALID;
  wire [511:0]interconnect_S00_AXI_M00_AXI_RDATA;
  wire [2:0]interconnect_S00_AXI_M00_AXI_RID;
  wire interconnect_S00_AXI_M00_AXI_RLAST;
  wire interconnect_S00_AXI_M00_AXI_RREADY;
  wire [1:0]interconnect_S00_AXI_M00_AXI_RRESP;
  wire [13:0]interconnect_S00_AXI_M00_AXI_RUSER;
  wire interconnect_S00_AXI_M00_AXI_RVALID;
  wire [511:0]interconnect_S00_AXI_M00_AXI_WDATA;
  wire interconnect_S00_AXI_M00_AXI_WLAST;
  wire interconnect_S00_AXI_M00_AXI_WREADY;
  wire [63:0]interconnect_S00_AXI_M00_AXI_WSTRB;
  wire [13:0]interconnect_S00_AXI_M00_AXI_WUSER;
  wire interconnect_S00_AXI_M00_AXI_WVALID;
  wire [36:0]interconnect_S00_AXI_M01_AXI_ARADDR;
  wire [1:0]interconnect_S00_AXI_M01_AXI_ARBURST;
  wire [3:0]interconnect_S00_AXI_M01_AXI_ARCACHE;
  wire [2:0]interconnect_S00_AXI_M01_AXI_ARID;
  wire [7:0]interconnect_S00_AXI_M01_AXI_ARLEN;
  wire [0:0]interconnect_S00_AXI_M01_AXI_ARLOCK;
  wire [2:0]interconnect_S00_AXI_M01_AXI_ARPROT;
  wire [3:0]interconnect_S00_AXI_M01_AXI_ARQOS;
  wire interconnect_S00_AXI_M01_AXI_ARREADY;
  wire [2:0]interconnect_S00_AXI_M01_AXI_ARSIZE;
  wire [113:0]interconnect_S00_AXI_M01_AXI_ARUSER;
  wire interconnect_S00_AXI_M01_AXI_ARVALID;
  wire [36:0]interconnect_S00_AXI_M01_AXI_AWADDR;
  wire [1:0]interconnect_S00_AXI_M01_AXI_AWBURST;
  wire [3:0]interconnect_S00_AXI_M01_AXI_AWCACHE;
  wire [2:0]interconnect_S00_AXI_M01_AXI_AWID;
  wire [7:0]interconnect_S00_AXI_M01_AXI_AWLEN;
  wire [0:0]interconnect_S00_AXI_M01_AXI_AWLOCK;
  wire [2:0]interconnect_S00_AXI_M01_AXI_AWPROT;
  wire [3:0]interconnect_S00_AXI_M01_AXI_AWQOS;
  wire interconnect_S00_AXI_M01_AXI_AWREADY;
  wire [2:0]interconnect_S00_AXI_M01_AXI_AWSIZE;
  wire [113:0]interconnect_S00_AXI_M01_AXI_AWUSER;
  wire interconnect_S00_AXI_M01_AXI_AWVALID;
  wire [2:0]interconnect_S00_AXI_M01_AXI_BID;
  wire interconnect_S00_AXI_M01_AXI_BREADY;
  wire [1:0]interconnect_S00_AXI_M01_AXI_BRESP;
  wire [113:0]interconnect_S00_AXI_M01_AXI_BUSER;
  wire interconnect_S00_AXI_M01_AXI_BVALID;
  wire [511:0]interconnect_S00_AXI_M01_AXI_RDATA;
  wire [2:0]interconnect_S00_AXI_M01_AXI_RID;
  wire interconnect_S00_AXI_M01_AXI_RLAST;
  wire interconnect_S00_AXI_M01_AXI_RREADY;
  wire [1:0]interconnect_S00_AXI_M01_AXI_RRESP;
  wire [13:0]interconnect_S00_AXI_M01_AXI_RUSER;
  wire interconnect_S00_AXI_M01_AXI_RVALID;
  wire [511:0]interconnect_S00_AXI_M01_AXI_WDATA;
  wire interconnect_S00_AXI_M01_AXI_WLAST;
  wire interconnect_S00_AXI_M01_AXI_WREADY;
  wire [63:0]interconnect_S00_AXI_M01_AXI_WSTRB;
  wire [13:0]interconnect_S00_AXI_M01_AXI_WUSER;
  wire interconnect_S00_AXI_M01_AXI_WVALID;
  wire [36:0]interconnect_S00_AXI_M02_AXI_ARADDR;
  wire [1:0]interconnect_S00_AXI_M02_AXI_ARBURST;
  wire [3:0]interconnect_S00_AXI_M02_AXI_ARCACHE;
  wire [2:0]interconnect_S00_AXI_M02_AXI_ARID;
  wire [7:0]interconnect_S00_AXI_M02_AXI_ARLEN;
  wire [0:0]interconnect_S00_AXI_M02_AXI_ARLOCK;
  wire [2:0]interconnect_S00_AXI_M02_AXI_ARPROT;
  wire [3:0]interconnect_S00_AXI_M02_AXI_ARQOS;
  wire interconnect_S00_AXI_M02_AXI_ARREADY;
  wire [2:0]interconnect_S00_AXI_M02_AXI_ARSIZE;
  wire [113:0]interconnect_S00_AXI_M02_AXI_ARUSER;
  wire interconnect_S00_AXI_M02_AXI_ARVALID;
  wire [36:0]interconnect_S00_AXI_M02_AXI_AWADDR;
  wire [1:0]interconnect_S00_AXI_M02_AXI_AWBURST;
  wire [3:0]interconnect_S00_AXI_M02_AXI_AWCACHE;
  wire [2:0]interconnect_S00_AXI_M02_AXI_AWID;
  wire [7:0]interconnect_S00_AXI_M02_AXI_AWLEN;
  wire [0:0]interconnect_S00_AXI_M02_AXI_AWLOCK;
  wire [2:0]interconnect_S00_AXI_M02_AXI_AWPROT;
  wire [3:0]interconnect_S00_AXI_M02_AXI_AWQOS;
  wire interconnect_S00_AXI_M02_AXI_AWREADY;
  wire [2:0]interconnect_S00_AXI_M02_AXI_AWSIZE;
  wire [113:0]interconnect_S00_AXI_M02_AXI_AWUSER;
  wire interconnect_S00_AXI_M02_AXI_AWVALID;
  wire [2:0]interconnect_S00_AXI_M02_AXI_BID;
  wire interconnect_S00_AXI_M02_AXI_BREADY;
  wire [1:0]interconnect_S00_AXI_M02_AXI_BRESP;
  wire [113:0]interconnect_S00_AXI_M02_AXI_BUSER;
  wire interconnect_S00_AXI_M02_AXI_BVALID;
  wire [511:0]interconnect_S00_AXI_M02_AXI_RDATA;
  wire [2:0]interconnect_S00_AXI_M02_AXI_RID;
  wire interconnect_S00_AXI_M02_AXI_RLAST;
  wire interconnect_S00_AXI_M02_AXI_RREADY;
  wire [1:0]interconnect_S00_AXI_M02_AXI_RRESP;
  wire [13:0]interconnect_S00_AXI_M02_AXI_RUSER;
  wire interconnect_S00_AXI_M02_AXI_RVALID;
  wire [511:0]interconnect_S00_AXI_M02_AXI_WDATA;
  wire interconnect_S00_AXI_M02_AXI_WLAST;
  wire interconnect_S00_AXI_M02_AXI_WREADY;
  wire [63:0]interconnect_S00_AXI_M02_AXI_WSTRB;
  wire [13:0]interconnect_S00_AXI_M02_AXI_WUSER;
  wire interconnect_S00_AXI_M02_AXI_WVALID;
  wire [36:0]interconnect_S00_AXI_M03_AXI_ARADDR;
  wire [1:0]interconnect_S00_AXI_M03_AXI_ARBURST;
  wire [3:0]interconnect_S00_AXI_M03_AXI_ARCACHE;
  wire [2:0]interconnect_S00_AXI_M03_AXI_ARID;
  wire [7:0]interconnect_S00_AXI_M03_AXI_ARLEN;
  wire [0:0]interconnect_S00_AXI_M03_AXI_ARLOCK;
  wire [2:0]interconnect_S00_AXI_M03_AXI_ARPROT;
  wire [3:0]interconnect_S00_AXI_M03_AXI_ARQOS;
  wire interconnect_S00_AXI_M03_AXI_ARREADY;
  wire [2:0]interconnect_S00_AXI_M03_AXI_ARSIZE;
  wire [113:0]interconnect_S00_AXI_M03_AXI_ARUSER;
  wire interconnect_S00_AXI_M03_AXI_ARVALID;
  wire [36:0]interconnect_S00_AXI_M03_AXI_AWADDR;
  wire [1:0]interconnect_S00_AXI_M03_AXI_AWBURST;
  wire [3:0]interconnect_S00_AXI_M03_AXI_AWCACHE;
  wire [2:0]interconnect_S00_AXI_M03_AXI_AWID;
  wire [7:0]interconnect_S00_AXI_M03_AXI_AWLEN;
  wire [0:0]interconnect_S00_AXI_M03_AXI_AWLOCK;
  wire [2:0]interconnect_S00_AXI_M03_AXI_AWPROT;
  wire [3:0]interconnect_S00_AXI_M03_AXI_AWQOS;
  wire interconnect_S00_AXI_M03_AXI_AWREADY;
  wire [2:0]interconnect_S00_AXI_M03_AXI_AWSIZE;
  wire [113:0]interconnect_S00_AXI_M03_AXI_AWUSER;
  wire interconnect_S00_AXI_M03_AXI_AWVALID;
  wire [2:0]interconnect_S00_AXI_M03_AXI_BID;
  wire interconnect_S00_AXI_M03_AXI_BREADY;
  wire [1:0]interconnect_S00_AXI_M03_AXI_BRESP;
  wire [113:0]interconnect_S00_AXI_M03_AXI_BUSER;
  wire interconnect_S00_AXI_M03_AXI_BVALID;
  wire [511:0]interconnect_S00_AXI_M03_AXI_RDATA;
  wire [2:0]interconnect_S00_AXI_M03_AXI_RID;
  wire interconnect_S00_AXI_M03_AXI_RLAST;
  wire interconnect_S00_AXI_M03_AXI_RREADY;
  wire [1:0]interconnect_S00_AXI_M03_AXI_RRESP;
  wire [13:0]interconnect_S00_AXI_M03_AXI_RUSER;
  wire interconnect_S00_AXI_M03_AXI_RVALID;
  wire [511:0]interconnect_S00_AXI_M03_AXI_WDATA;
  wire interconnect_S00_AXI_M03_AXI_WLAST;
  wire interconnect_S00_AXI_M03_AXI_WREADY;
  wire [63:0]interconnect_S00_AXI_M03_AXI_WSTRB;
  wire [13:0]interconnect_S00_AXI_M03_AXI_WUSER;
  wire interconnect_S00_AXI_M03_AXI_WVALID;
  wire [36:0]interconnect_S00_AXI_M04_AXI_ARADDR;
  wire [1:0]interconnect_S00_AXI_M04_AXI_ARBURST;
  wire [3:0]interconnect_S00_AXI_M04_AXI_ARCACHE;
  wire [2:0]interconnect_S00_AXI_M04_AXI_ARID;
  wire [7:0]interconnect_S00_AXI_M04_AXI_ARLEN;
  wire [0:0]interconnect_S00_AXI_M04_AXI_ARLOCK;
  wire [2:0]interconnect_S00_AXI_M04_AXI_ARPROT;
  wire [3:0]interconnect_S00_AXI_M04_AXI_ARQOS;
  wire interconnect_S00_AXI_M04_AXI_ARREADY;
  wire [2:0]interconnect_S00_AXI_M04_AXI_ARSIZE;
  wire [113:0]interconnect_S00_AXI_M04_AXI_ARUSER;
  wire interconnect_S00_AXI_M04_AXI_ARVALID;
  wire [36:0]interconnect_S00_AXI_M04_AXI_AWADDR;
  wire [1:0]interconnect_S00_AXI_M04_AXI_AWBURST;
  wire [3:0]interconnect_S00_AXI_M04_AXI_AWCACHE;
  wire [2:0]interconnect_S00_AXI_M04_AXI_AWID;
  wire [7:0]interconnect_S00_AXI_M04_AXI_AWLEN;
  wire [0:0]interconnect_S00_AXI_M04_AXI_AWLOCK;
  wire [2:0]interconnect_S00_AXI_M04_AXI_AWPROT;
  wire [3:0]interconnect_S00_AXI_M04_AXI_AWQOS;
  wire interconnect_S00_AXI_M04_AXI_AWREADY;
  wire [2:0]interconnect_S00_AXI_M04_AXI_AWSIZE;
  wire [113:0]interconnect_S00_AXI_M04_AXI_AWUSER;
  wire interconnect_S00_AXI_M04_AXI_AWVALID;
  wire [2:0]interconnect_S00_AXI_M04_AXI_BID;
  wire interconnect_S00_AXI_M04_AXI_BREADY;
  wire [1:0]interconnect_S00_AXI_M04_AXI_BRESP;
  wire [113:0]interconnect_S00_AXI_M04_AXI_BUSER;
  wire interconnect_S00_AXI_M04_AXI_BVALID;
  wire [511:0]interconnect_S00_AXI_M04_AXI_RDATA;
  wire [2:0]interconnect_S00_AXI_M04_AXI_RID;
  wire interconnect_S00_AXI_M04_AXI_RLAST;
  wire interconnect_S00_AXI_M04_AXI_RREADY;
  wire [1:0]interconnect_S00_AXI_M04_AXI_RRESP;
  wire [13:0]interconnect_S00_AXI_M04_AXI_RUSER;
  wire interconnect_S00_AXI_M04_AXI_RVALID;
  wire [511:0]interconnect_S00_AXI_M04_AXI_WDATA;
  wire interconnect_S00_AXI_M04_AXI_WLAST;
  wire interconnect_S00_AXI_M04_AXI_WREADY;
  wire [63:0]interconnect_S00_AXI_M04_AXI_WSTRB;
  wire [13:0]interconnect_S00_AXI_M04_AXI_WUSER;
  wire interconnect_S00_AXI_M04_AXI_WVALID;
  wire [36:0]interconnect_S00_AXI_M05_AXI_ARADDR;
  wire [1:0]interconnect_S00_AXI_M05_AXI_ARBURST;
  wire [3:0]interconnect_S00_AXI_M05_AXI_ARCACHE;
  wire [2:0]interconnect_S00_AXI_M05_AXI_ARID;
  wire [7:0]interconnect_S00_AXI_M05_AXI_ARLEN;
  wire [0:0]interconnect_S00_AXI_M05_AXI_ARLOCK;
  wire [2:0]interconnect_S00_AXI_M05_AXI_ARPROT;
  wire [3:0]interconnect_S00_AXI_M05_AXI_ARQOS;
  wire interconnect_S00_AXI_M05_AXI_ARREADY;
  wire [2:0]interconnect_S00_AXI_M05_AXI_ARSIZE;
  wire [113:0]interconnect_S00_AXI_M05_AXI_ARUSER;
  wire interconnect_S00_AXI_M05_AXI_ARVALID;
  wire [36:0]interconnect_S00_AXI_M05_AXI_AWADDR;
  wire [1:0]interconnect_S00_AXI_M05_AXI_AWBURST;
  wire [3:0]interconnect_S00_AXI_M05_AXI_AWCACHE;
  wire [2:0]interconnect_S00_AXI_M05_AXI_AWID;
  wire [7:0]interconnect_S00_AXI_M05_AXI_AWLEN;
  wire [0:0]interconnect_S00_AXI_M05_AXI_AWLOCK;
  wire [2:0]interconnect_S00_AXI_M05_AXI_AWPROT;
  wire [3:0]interconnect_S00_AXI_M05_AXI_AWQOS;
  wire interconnect_S00_AXI_M05_AXI_AWREADY;
  wire [2:0]interconnect_S00_AXI_M05_AXI_AWSIZE;
  wire [113:0]interconnect_S00_AXI_M05_AXI_AWUSER;
  wire interconnect_S00_AXI_M05_AXI_AWVALID;
  wire [2:0]interconnect_S00_AXI_M05_AXI_BID;
  wire interconnect_S00_AXI_M05_AXI_BREADY;
  wire [1:0]interconnect_S00_AXI_M05_AXI_BRESP;
  wire [113:0]interconnect_S00_AXI_M05_AXI_BUSER;
  wire interconnect_S00_AXI_M05_AXI_BVALID;
  wire [511:0]interconnect_S00_AXI_M05_AXI_RDATA;
  wire [2:0]interconnect_S00_AXI_M05_AXI_RID;
  wire interconnect_S00_AXI_M05_AXI_RLAST;
  wire interconnect_S00_AXI_M05_AXI_RREADY;
  wire [1:0]interconnect_S00_AXI_M05_AXI_RRESP;
  wire [13:0]interconnect_S00_AXI_M05_AXI_RUSER;
  wire interconnect_S00_AXI_M05_AXI_RVALID;
  wire [511:0]interconnect_S00_AXI_M05_AXI_WDATA;
  wire interconnect_S00_AXI_M05_AXI_WLAST;
  wire interconnect_S00_AXI_M05_AXI_WREADY;
  wire [63:0]interconnect_S00_AXI_M05_AXI_WSTRB;
  wire [13:0]interconnect_S00_AXI_M05_AXI_WUSER;
  wire interconnect_S00_AXI_M05_AXI_WVALID;
  wire [36:0]interconnect_S00_AXI_M06_AXI_ARADDR;
  wire [1:0]interconnect_S00_AXI_M06_AXI_ARBURST;
  wire [3:0]interconnect_S00_AXI_M06_AXI_ARCACHE;
  wire [2:0]interconnect_S00_AXI_M06_AXI_ARID;
  wire [7:0]interconnect_S00_AXI_M06_AXI_ARLEN;
  wire [0:0]interconnect_S00_AXI_M06_AXI_ARLOCK;
  wire [2:0]interconnect_S00_AXI_M06_AXI_ARPROT;
  wire [3:0]interconnect_S00_AXI_M06_AXI_ARQOS;
  wire interconnect_S00_AXI_M06_AXI_ARREADY;
  wire [2:0]interconnect_S00_AXI_M06_AXI_ARSIZE;
  wire [113:0]interconnect_S00_AXI_M06_AXI_ARUSER;
  wire interconnect_S00_AXI_M06_AXI_ARVALID;
  wire [36:0]interconnect_S00_AXI_M06_AXI_AWADDR;
  wire [1:0]interconnect_S00_AXI_M06_AXI_AWBURST;
  wire [3:0]interconnect_S00_AXI_M06_AXI_AWCACHE;
  wire [2:0]interconnect_S00_AXI_M06_AXI_AWID;
  wire [7:0]interconnect_S00_AXI_M06_AXI_AWLEN;
  wire [0:0]interconnect_S00_AXI_M06_AXI_AWLOCK;
  wire [2:0]interconnect_S00_AXI_M06_AXI_AWPROT;
  wire [3:0]interconnect_S00_AXI_M06_AXI_AWQOS;
  wire interconnect_S00_AXI_M06_AXI_AWREADY;
  wire [2:0]interconnect_S00_AXI_M06_AXI_AWSIZE;
  wire [113:0]interconnect_S00_AXI_M06_AXI_AWUSER;
  wire interconnect_S00_AXI_M06_AXI_AWVALID;
  wire [2:0]interconnect_S00_AXI_M06_AXI_BID;
  wire interconnect_S00_AXI_M06_AXI_BREADY;
  wire [1:0]interconnect_S00_AXI_M06_AXI_BRESP;
  wire [113:0]interconnect_S00_AXI_M06_AXI_BUSER;
  wire interconnect_S00_AXI_M06_AXI_BVALID;
  wire [511:0]interconnect_S00_AXI_M06_AXI_RDATA;
  wire [2:0]interconnect_S00_AXI_M06_AXI_RID;
  wire interconnect_S00_AXI_M06_AXI_RLAST;
  wire interconnect_S00_AXI_M06_AXI_RREADY;
  wire [1:0]interconnect_S00_AXI_M06_AXI_RRESP;
  wire [13:0]interconnect_S00_AXI_M06_AXI_RUSER;
  wire interconnect_S00_AXI_M06_AXI_RVALID;
  wire [511:0]interconnect_S00_AXI_M06_AXI_WDATA;
  wire interconnect_S00_AXI_M06_AXI_WLAST;
  wire interconnect_S00_AXI_M06_AXI_WREADY;
  wire [63:0]interconnect_S00_AXI_M06_AXI_WSTRB;
  wire [13:0]interconnect_S00_AXI_M06_AXI_WUSER;
  wire interconnect_S00_AXI_M06_AXI_WVALID;
  wire psr_aclk_SLR0_interconnect_aresetn;
  wire psr_aclk_SLR1_interconnect_aresetn;
  wire psr_aclk_SLR2_interconnect_aresetn;
  wire [36:0]vip_S00_AXI_M_AXI_ARADDR;
  wire [5:0]vip_S00_AXI_M_AXI_ARID;
  wire [7:0]vip_S00_AXI_M_AXI_ARLEN;
  wire [2:0]vip_S00_AXI_M_AXI_ARPROT;
  wire vip_S00_AXI_M_AXI_ARREADY;
  wire vip_S00_AXI_M_AXI_ARVALID;
  wire [36:0]vip_S00_AXI_M_AXI_AWADDR;
  wire [5:0]vip_S00_AXI_M_AXI_AWID;
  wire [7:0]vip_S00_AXI_M_AXI_AWLEN;
  wire [2:0]vip_S00_AXI_M_AXI_AWPROT;
  wire vip_S00_AXI_M_AXI_AWREADY;
  wire vip_S00_AXI_M_AXI_AWVALID;
  wire [5:0]vip_S00_AXI_M_AXI_BID;
  wire vip_S00_AXI_M_AXI_BREADY;
  wire [1:0]vip_S00_AXI_M_AXI_BRESP;
  wire vip_S00_AXI_M_AXI_BVALID;
  wire [511:0]vip_S00_AXI_M_AXI_RDATA;
  wire [5:0]vip_S00_AXI_M_AXI_RID;
  wire vip_S00_AXI_M_AXI_RLAST;
  wire vip_S00_AXI_M_AXI_RREADY;
  wire [1:0]vip_S00_AXI_M_AXI_RRESP;
  wire vip_S00_AXI_M_AXI_RVALID;
  wire [511:0]vip_S00_AXI_M_AXI_WDATA;
  wire vip_S00_AXI_M_AXI_WLAST;
  wire vip_S00_AXI_M_AXI_WREADY;
  wire [63:0]vip_S00_AXI_M_AXI_WSTRB;
  wire vip_S00_AXI_M_AXI_WVALID;

  assign M00_AXI1_araddr[63:0] = interconnect_DDR4_MEM01_M00_AXI_ARADDR;
  assign M00_AXI1_arburst[1:0] = interconnect_DDR4_MEM01_M00_AXI_ARBURST;
  assign M00_AXI1_arcache[3:0] = interconnect_DDR4_MEM01_M00_AXI_ARCACHE;
  assign M00_AXI1_arlen[7:0] = interconnect_DDR4_MEM01_M00_AXI_ARLEN;
  assign M00_AXI1_arlock[0] = interconnect_DDR4_MEM01_M00_AXI_ARLOCK;
  assign M00_AXI1_arprot[2:0] = interconnect_DDR4_MEM01_M00_AXI_ARPROT;
  assign M00_AXI1_arqos[3:0] = interconnect_DDR4_MEM01_M00_AXI_ARQOS;
  assign M00_AXI1_arvalid = interconnect_DDR4_MEM01_M00_AXI_ARVALID;
  assign M00_AXI1_awaddr[63:0] = interconnect_DDR4_MEM01_M00_AXI_AWADDR;
  assign M00_AXI1_awburst[1:0] = interconnect_DDR4_MEM01_M00_AXI_AWBURST;
  assign M00_AXI1_awcache[3:0] = interconnect_DDR4_MEM01_M00_AXI_AWCACHE;
  assign M00_AXI1_awlen[7:0] = interconnect_DDR4_MEM01_M00_AXI_AWLEN;
  assign M00_AXI1_awlock[0] = interconnect_DDR4_MEM01_M00_AXI_AWLOCK;
  assign M00_AXI1_awprot[2:0] = interconnect_DDR4_MEM01_M00_AXI_AWPROT;
  assign M00_AXI1_awqos[3:0] = interconnect_DDR4_MEM01_M00_AXI_AWQOS;
  assign M00_AXI1_awvalid = interconnect_DDR4_MEM01_M00_AXI_AWVALID;
  assign M00_AXI1_bready = interconnect_DDR4_MEM01_M00_AXI_BREADY;
  assign M00_AXI1_rready = interconnect_DDR4_MEM01_M00_AXI_RREADY;
  assign M00_AXI1_wdata[511:0] = interconnect_DDR4_MEM01_M00_AXI_WDATA;
  assign M00_AXI1_wlast = interconnect_DDR4_MEM01_M00_AXI_WLAST;
  assign M00_AXI1_wstrb[63:0] = interconnect_DDR4_MEM01_M00_AXI_WSTRB;
  assign M00_AXI1_wvalid = interconnect_DDR4_MEM01_M00_AXI_WVALID;
  assign M00_AXI2_araddr[63:0] = interconnect_DDR4_MEM02_M00_AXI_ARADDR;
  assign M00_AXI2_arburst[1:0] = interconnect_DDR4_MEM02_M00_AXI_ARBURST;
  assign M00_AXI2_arcache[3:0] = interconnect_DDR4_MEM02_M00_AXI_ARCACHE;
  assign M00_AXI2_arlen[7:0] = interconnect_DDR4_MEM02_M00_AXI_ARLEN;
  assign M00_AXI2_arlock[0] = interconnect_DDR4_MEM02_M00_AXI_ARLOCK;
  assign M00_AXI2_arprot[2:0] = interconnect_DDR4_MEM02_M00_AXI_ARPROT;
  assign M00_AXI2_arqos[3:0] = interconnect_DDR4_MEM02_M00_AXI_ARQOS;
  assign M00_AXI2_arvalid = interconnect_DDR4_MEM02_M00_AXI_ARVALID;
  assign M00_AXI2_awaddr[63:0] = interconnect_DDR4_MEM02_M00_AXI_AWADDR;
  assign M00_AXI2_awburst[1:0] = interconnect_DDR4_MEM02_M00_AXI_AWBURST;
  assign M00_AXI2_awcache[3:0] = interconnect_DDR4_MEM02_M00_AXI_AWCACHE;
  assign M00_AXI2_awlen[7:0] = interconnect_DDR4_MEM02_M00_AXI_AWLEN;
  assign M00_AXI2_awlock[0] = interconnect_DDR4_MEM02_M00_AXI_AWLOCK;
  assign M00_AXI2_awprot[2:0] = interconnect_DDR4_MEM02_M00_AXI_AWPROT;
  assign M00_AXI2_awqos[3:0] = interconnect_DDR4_MEM02_M00_AXI_AWQOS;
  assign M00_AXI2_awvalid = interconnect_DDR4_MEM02_M00_AXI_AWVALID;
  assign M00_AXI2_bready = interconnect_DDR4_MEM02_M00_AXI_BREADY;
  assign M00_AXI2_rready = interconnect_DDR4_MEM02_M00_AXI_RREADY;
  assign M00_AXI2_wdata[511:0] = interconnect_DDR4_MEM02_M00_AXI_WDATA;
  assign M00_AXI2_wlast = interconnect_DDR4_MEM02_M00_AXI_WLAST;
  assign M00_AXI2_wstrb[63:0] = interconnect_DDR4_MEM02_M00_AXI_WSTRB;
  assign M00_AXI2_wvalid = interconnect_DDR4_MEM02_M00_AXI_WVALID;
  assign M00_AXI3_araddr[63:0] = interconnect_DDR4_MEM03_M00_AXI_ARADDR;
  assign M00_AXI3_arburst[1:0] = interconnect_DDR4_MEM03_M00_AXI_ARBURST;
  assign M00_AXI3_arcache[3:0] = interconnect_DDR4_MEM03_M00_AXI_ARCACHE;
  assign M00_AXI3_arlen[7:0] = interconnect_DDR4_MEM03_M00_AXI_ARLEN;
  assign M00_AXI3_arlock[0] = interconnect_DDR4_MEM03_M00_AXI_ARLOCK;
  assign M00_AXI3_arprot[2:0] = interconnect_DDR4_MEM03_M00_AXI_ARPROT;
  assign M00_AXI3_arqos[3:0] = interconnect_DDR4_MEM03_M00_AXI_ARQOS;
  assign M00_AXI3_arvalid = interconnect_DDR4_MEM03_M00_AXI_ARVALID;
  assign M00_AXI3_awaddr[63:0] = interconnect_DDR4_MEM03_M00_AXI_AWADDR;
  assign M00_AXI3_awburst[1:0] = interconnect_DDR4_MEM03_M00_AXI_AWBURST;
  assign M00_AXI3_awcache[3:0] = interconnect_DDR4_MEM03_M00_AXI_AWCACHE;
  assign M00_AXI3_awlen[7:0] = interconnect_DDR4_MEM03_M00_AXI_AWLEN;
  assign M00_AXI3_awlock[0] = interconnect_DDR4_MEM03_M00_AXI_AWLOCK;
  assign M00_AXI3_awprot[2:0] = interconnect_DDR4_MEM03_M00_AXI_AWPROT;
  assign M00_AXI3_awqos[3:0] = interconnect_DDR4_MEM03_M00_AXI_AWQOS;
  assign M00_AXI3_awvalid = interconnect_DDR4_MEM03_M00_AXI_AWVALID;
  assign M00_AXI3_bready = interconnect_DDR4_MEM03_M00_AXI_BREADY;
  assign M00_AXI3_rready = interconnect_DDR4_MEM03_M00_AXI_RREADY;
  assign M00_AXI3_wdata[511:0] = interconnect_DDR4_MEM03_M00_AXI_WDATA;
  assign M00_AXI3_wlast = interconnect_DDR4_MEM03_M00_AXI_WLAST;
  assign M00_AXI3_wstrb[63:0] = interconnect_DDR4_MEM03_M00_AXI_WSTRB;
  assign M00_AXI3_wvalid = interconnect_DDR4_MEM03_M00_AXI_WVALID;
  assign M00_AXI4_araddr[16:0] = interconnect_PLRAM_MEM00_M00_AXI_ARADDR;
  assign M00_AXI4_arburst[1:0] = interconnect_PLRAM_MEM00_M00_AXI_ARBURST;
  assign M00_AXI4_arcache[3:0] = interconnect_PLRAM_MEM00_M00_AXI_ARCACHE;
  assign M00_AXI4_arlen[7:0] = interconnect_PLRAM_MEM00_M00_AXI_ARLEN;
  assign M00_AXI4_arlock[0] = interconnect_PLRAM_MEM00_M00_AXI_ARLOCK;
  assign M00_AXI4_arprot[2:0] = interconnect_PLRAM_MEM00_M00_AXI_ARPROT;
  assign M00_AXI4_arqos[3:0] = interconnect_PLRAM_MEM00_M00_AXI_ARQOS;
  assign M00_AXI4_arvalid = interconnect_PLRAM_MEM00_M00_AXI_ARVALID;
  assign M00_AXI4_awaddr[16:0] = interconnect_PLRAM_MEM00_M00_AXI_AWADDR;
  assign M00_AXI4_awburst[1:0] = interconnect_PLRAM_MEM00_M00_AXI_AWBURST;
  assign M00_AXI4_awcache[3:0] = interconnect_PLRAM_MEM00_M00_AXI_AWCACHE;
  assign M00_AXI4_awlen[7:0] = interconnect_PLRAM_MEM00_M00_AXI_AWLEN;
  assign M00_AXI4_awlock[0] = interconnect_PLRAM_MEM00_M00_AXI_AWLOCK;
  assign M00_AXI4_awprot[2:0] = interconnect_PLRAM_MEM00_M00_AXI_AWPROT;
  assign M00_AXI4_awqos[3:0] = interconnect_PLRAM_MEM00_M00_AXI_AWQOS;
  assign M00_AXI4_awvalid = interconnect_PLRAM_MEM00_M00_AXI_AWVALID;
  assign M00_AXI4_bready = interconnect_PLRAM_MEM00_M00_AXI_BREADY;
  assign M00_AXI4_rready = interconnect_PLRAM_MEM00_M00_AXI_RREADY;
  assign M00_AXI4_wdata[511:0] = interconnect_PLRAM_MEM00_M00_AXI_WDATA;
  assign M00_AXI4_wlast = interconnect_PLRAM_MEM00_M00_AXI_WLAST;
  assign M00_AXI4_wstrb[63:0] = interconnect_PLRAM_MEM00_M00_AXI_WSTRB;
  assign M00_AXI4_wvalid = interconnect_PLRAM_MEM00_M00_AXI_WVALID;
  assign M00_AXI5_araddr[16:0] = interconnect_PLRAM_MEM01_M00_AXI_ARADDR;
  assign M00_AXI5_arburst[1:0] = interconnect_PLRAM_MEM01_M00_AXI_ARBURST;
  assign M00_AXI5_arcache[3:0] = interconnect_PLRAM_MEM01_M00_AXI_ARCACHE;
  assign M00_AXI5_arlen[7:0] = interconnect_PLRAM_MEM01_M00_AXI_ARLEN;
  assign M00_AXI5_arlock[0] = interconnect_PLRAM_MEM01_M00_AXI_ARLOCK;
  assign M00_AXI5_arprot[2:0] = interconnect_PLRAM_MEM01_M00_AXI_ARPROT;
  assign M00_AXI5_arqos[3:0] = interconnect_PLRAM_MEM01_M00_AXI_ARQOS;
  assign M00_AXI5_arvalid = interconnect_PLRAM_MEM01_M00_AXI_ARVALID;
  assign M00_AXI5_awaddr[16:0] = interconnect_PLRAM_MEM01_M00_AXI_AWADDR;
  assign M00_AXI5_awburst[1:0] = interconnect_PLRAM_MEM01_M00_AXI_AWBURST;
  assign M00_AXI5_awcache[3:0] = interconnect_PLRAM_MEM01_M00_AXI_AWCACHE;
  assign M00_AXI5_awlen[7:0] = interconnect_PLRAM_MEM01_M00_AXI_AWLEN;
  assign M00_AXI5_awlock[0] = interconnect_PLRAM_MEM01_M00_AXI_AWLOCK;
  assign M00_AXI5_awprot[2:0] = interconnect_PLRAM_MEM01_M00_AXI_AWPROT;
  assign M00_AXI5_awqos[3:0] = interconnect_PLRAM_MEM01_M00_AXI_AWQOS;
  assign M00_AXI5_awvalid = interconnect_PLRAM_MEM01_M00_AXI_AWVALID;
  assign M00_AXI5_bready = interconnect_PLRAM_MEM01_M00_AXI_BREADY;
  assign M00_AXI5_rready = interconnect_PLRAM_MEM01_M00_AXI_RREADY;
  assign M00_AXI5_wdata[511:0] = interconnect_PLRAM_MEM01_M00_AXI_WDATA;
  assign M00_AXI5_wlast = interconnect_PLRAM_MEM01_M00_AXI_WLAST;
  assign M00_AXI5_wstrb[63:0] = interconnect_PLRAM_MEM01_M00_AXI_WSTRB;
  assign M00_AXI5_wvalid = interconnect_PLRAM_MEM01_M00_AXI_WVALID;
  assign M00_AXI6_araddr[16:0] = interconnect_PLRAM_MEM02_M00_AXI_ARADDR;
  assign M00_AXI6_arburst[1:0] = interconnect_PLRAM_MEM02_M00_AXI_ARBURST;
  assign M00_AXI6_arcache[3:0] = interconnect_PLRAM_MEM02_M00_AXI_ARCACHE;
  assign M00_AXI6_arlen[7:0] = interconnect_PLRAM_MEM02_M00_AXI_ARLEN;
  assign M00_AXI6_arlock[0] = interconnect_PLRAM_MEM02_M00_AXI_ARLOCK;
  assign M00_AXI6_arprot[2:0] = interconnect_PLRAM_MEM02_M00_AXI_ARPROT;
  assign M00_AXI6_arqos[3:0] = interconnect_PLRAM_MEM02_M00_AXI_ARQOS;
  assign M00_AXI6_arvalid = interconnect_PLRAM_MEM02_M00_AXI_ARVALID;
  assign M00_AXI6_awaddr[16:0] = interconnect_PLRAM_MEM02_M00_AXI_AWADDR;
  assign M00_AXI6_awburst[1:0] = interconnect_PLRAM_MEM02_M00_AXI_AWBURST;
  assign M00_AXI6_awcache[3:0] = interconnect_PLRAM_MEM02_M00_AXI_AWCACHE;
  assign M00_AXI6_awlen[7:0] = interconnect_PLRAM_MEM02_M00_AXI_AWLEN;
  assign M00_AXI6_awlock[0] = interconnect_PLRAM_MEM02_M00_AXI_AWLOCK;
  assign M00_AXI6_awprot[2:0] = interconnect_PLRAM_MEM02_M00_AXI_AWPROT;
  assign M00_AXI6_awqos[3:0] = interconnect_PLRAM_MEM02_M00_AXI_AWQOS;
  assign M00_AXI6_awvalid = interconnect_PLRAM_MEM02_M00_AXI_AWVALID;
  assign M00_AXI6_bready = interconnect_PLRAM_MEM02_M00_AXI_BREADY;
  assign M00_AXI6_rready = interconnect_PLRAM_MEM02_M00_AXI_RREADY;
  assign M00_AXI6_wdata[511:0] = interconnect_PLRAM_MEM02_M00_AXI_WDATA;
  assign M00_AXI6_wlast = interconnect_PLRAM_MEM02_M00_AXI_WLAST;
  assign M00_AXI6_wstrb[63:0] = interconnect_PLRAM_MEM02_M00_AXI_WSTRB;
  assign M00_AXI6_wvalid = interconnect_PLRAM_MEM02_M00_AXI_WVALID;
  assign M00_AXI_araddr[63:0] = interconnect_DDR4_MEM00_M00_AXI_ARADDR;
  assign M00_AXI_arburst[1:0] = interconnect_DDR4_MEM00_M00_AXI_ARBURST;
  assign M00_AXI_arcache[3:0] = interconnect_DDR4_MEM00_M00_AXI_ARCACHE;
  assign M00_AXI_arlen[7:0] = interconnect_DDR4_MEM00_M00_AXI_ARLEN;
  assign M00_AXI_arlock[0] = interconnect_DDR4_MEM00_M00_AXI_ARLOCK;
  assign M00_AXI_arprot[2:0] = interconnect_DDR4_MEM00_M00_AXI_ARPROT;
  assign M00_AXI_arqos[3:0] = interconnect_DDR4_MEM00_M00_AXI_ARQOS;
  assign M00_AXI_arvalid = interconnect_DDR4_MEM00_M00_AXI_ARVALID;
  assign M00_AXI_awaddr[63:0] = interconnect_DDR4_MEM00_M00_AXI_AWADDR;
  assign M00_AXI_awburst[1:0] = interconnect_DDR4_MEM00_M00_AXI_AWBURST;
  assign M00_AXI_awcache[3:0] = interconnect_DDR4_MEM00_M00_AXI_AWCACHE;
  assign M00_AXI_awlen[7:0] = interconnect_DDR4_MEM00_M00_AXI_AWLEN;
  assign M00_AXI_awlock[0] = interconnect_DDR4_MEM00_M00_AXI_AWLOCK;
  assign M00_AXI_awprot[2:0] = interconnect_DDR4_MEM00_M00_AXI_AWPROT;
  assign M00_AXI_awqos[3:0] = interconnect_DDR4_MEM00_M00_AXI_AWQOS;
  assign M00_AXI_awvalid = interconnect_DDR4_MEM00_M00_AXI_AWVALID;
  assign M00_AXI_bready = interconnect_DDR4_MEM00_M00_AXI_BREADY;
  assign M00_AXI_rready = interconnect_DDR4_MEM00_M00_AXI_RREADY;
  assign M00_AXI_wdata[511:0] = interconnect_DDR4_MEM00_M00_AXI_WDATA;
  assign M00_AXI_wlast = interconnect_DDR4_MEM00_M00_AXI_WLAST;
  assign M00_AXI_wstrb[63:0] = interconnect_DDR4_MEM00_M00_AXI_WSTRB;
  assign M00_AXI_wvalid = interconnect_DDR4_MEM00_M00_AXI_WVALID;
  assign S00_AXI_1_ARADDR = S00_AXI_araddr[36:0];
  assign S00_AXI_1_ARID = S00_AXI_arid[5:0];
  assign S00_AXI_1_ARLEN = S00_AXI_arlen[7:0];
  assign S00_AXI_1_ARPROT = S00_AXI_arprot[2:0];
  assign S00_AXI_1_ARREGION = S00_AXI_arregion[3:0];
  assign S00_AXI_1_ARVALID = S00_AXI_arvalid;
  assign S00_AXI_1_AWADDR = S00_AXI_awaddr[36:0];
  assign S00_AXI_1_AWID = S00_AXI_awid[5:0];
  assign S00_AXI_1_AWLEN = S00_AXI_awlen[7:0];
  assign S00_AXI_1_AWPROT = S00_AXI_awprot[2:0];
  assign S00_AXI_1_AWREGION = S00_AXI_awregion[3:0];
  assign S00_AXI_1_AWVALID = S00_AXI_awvalid;
  assign S00_AXI_1_BREADY = S00_AXI_bready;
  assign S00_AXI_1_RREADY = S00_AXI_rready;
  assign S00_AXI_1_WDATA = S00_AXI_wdata[511:0];
  assign S00_AXI_1_WLAST = S00_AXI_wlast;
  assign S00_AXI_1_WSTRB = S00_AXI_wstrb[63:0];
  assign S00_AXI_1_WVALID = S00_AXI_wvalid;
  assign S00_AXI_arready = S00_AXI_1_ARREADY;
  assign S00_AXI_awready = S00_AXI_1_AWREADY;
  assign S00_AXI_bid[5:0] = S00_AXI_1_BID;
  assign S00_AXI_bresp[1:0] = S00_AXI_1_BRESP;
  assign S00_AXI_bvalid = S00_AXI_1_BVALID;
  assign S00_AXI_rdata[511:0] = S00_AXI_1_RDATA;
  assign S00_AXI_rid[5:0] = S00_AXI_1_RID;
  assign S00_AXI_rlast = S00_AXI_1_RLAST;
  assign S00_AXI_rresp[1:0] = S00_AXI_1_RRESP;
  assign S00_AXI_rvalid = S00_AXI_1_RVALID;
  assign S00_AXI_wready = S00_AXI_1_WREADY;
  assign aclk_1 = aclk;
  assign aws_clk_main_a0_out = aclk1;
  assign interconnect_DDR4_MEM00_M00_AXI_ARREADY = M00_AXI_arready;
  assign interconnect_DDR4_MEM00_M00_AXI_AWREADY = M00_AXI_awready;
  assign interconnect_DDR4_MEM00_M00_AXI_BRESP = M00_AXI_bresp[1:0];
  assign interconnect_DDR4_MEM00_M00_AXI_BVALID = M00_AXI_bvalid;
  assign interconnect_DDR4_MEM00_M00_AXI_RDATA = M00_AXI_rdata[511:0];
  assign interconnect_DDR4_MEM00_M00_AXI_RLAST = M00_AXI_rlast;
  assign interconnect_DDR4_MEM00_M00_AXI_RRESP = M00_AXI_rresp[1:0];
  assign interconnect_DDR4_MEM00_M00_AXI_RVALID = M00_AXI_rvalid;
  assign interconnect_DDR4_MEM00_M00_AXI_WREADY = M00_AXI_wready;
  assign interconnect_DDR4_MEM01_M00_AXI_ARREADY = M00_AXI1_arready;
  assign interconnect_DDR4_MEM01_M00_AXI_AWREADY = M00_AXI1_awready;
  assign interconnect_DDR4_MEM01_M00_AXI_BRESP = M00_AXI1_bresp[1:0];
  assign interconnect_DDR4_MEM01_M00_AXI_BVALID = M00_AXI1_bvalid;
  assign interconnect_DDR4_MEM01_M00_AXI_RDATA = M00_AXI1_rdata[511:0];
  assign interconnect_DDR4_MEM01_M00_AXI_RLAST = M00_AXI1_rlast;
  assign interconnect_DDR4_MEM01_M00_AXI_RRESP = M00_AXI1_rresp[1:0];
  assign interconnect_DDR4_MEM01_M00_AXI_RVALID = M00_AXI1_rvalid;
  assign interconnect_DDR4_MEM01_M00_AXI_WREADY = M00_AXI1_wready;
  assign interconnect_DDR4_MEM02_M00_AXI_ARREADY = M00_AXI2_arready;
  assign interconnect_DDR4_MEM02_M00_AXI_AWREADY = M00_AXI2_awready;
  assign interconnect_DDR4_MEM02_M00_AXI_BRESP = M00_AXI2_bresp[1:0];
  assign interconnect_DDR4_MEM02_M00_AXI_BVALID = M00_AXI2_bvalid;
  assign interconnect_DDR4_MEM02_M00_AXI_RDATA = M00_AXI2_rdata[511:0];
  assign interconnect_DDR4_MEM02_M00_AXI_RLAST = M00_AXI2_rlast;
  assign interconnect_DDR4_MEM02_M00_AXI_RRESP = M00_AXI2_rresp[1:0];
  assign interconnect_DDR4_MEM02_M00_AXI_RVALID = M00_AXI2_rvalid;
  assign interconnect_DDR4_MEM02_M00_AXI_WREADY = M00_AXI2_wready;
  assign interconnect_DDR4_MEM03_M00_AXI_ARREADY = M00_AXI3_arready;
  assign interconnect_DDR4_MEM03_M00_AXI_AWREADY = M00_AXI3_awready;
  assign interconnect_DDR4_MEM03_M00_AXI_BRESP = M00_AXI3_bresp[1:0];
  assign interconnect_DDR4_MEM03_M00_AXI_BVALID = M00_AXI3_bvalid;
  assign interconnect_DDR4_MEM03_M00_AXI_RDATA = M00_AXI3_rdata[511:0];
  assign interconnect_DDR4_MEM03_M00_AXI_RLAST = M00_AXI3_rlast;
  assign interconnect_DDR4_MEM03_M00_AXI_RRESP = M00_AXI3_rresp[1:0];
  assign interconnect_DDR4_MEM03_M00_AXI_RVALID = M00_AXI3_rvalid;
  assign interconnect_DDR4_MEM03_M00_AXI_WREADY = M00_AXI3_wready;
  assign interconnect_PLRAM_MEM00_M00_AXI_ARREADY = M00_AXI4_arready;
  assign interconnect_PLRAM_MEM00_M00_AXI_AWREADY = M00_AXI4_awready;
  assign interconnect_PLRAM_MEM00_M00_AXI_BRESP = M00_AXI4_bresp[1:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_BVALID = M00_AXI4_bvalid;
  assign interconnect_PLRAM_MEM00_M00_AXI_RDATA = M00_AXI4_rdata[511:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_RLAST = M00_AXI4_rlast;
  assign interconnect_PLRAM_MEM00_M00_AXI_RRESP = M00_AXI4_rresp[1:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_RVALID = M00_AXI4_rvalid;
  assign interconnect_PLRAM_MEM00_M00_AXI_WREADY = M00_AXI4_wready;
  assign interconnect_PLRAM_MEM01_M00_AXI_ARREADY = M00_AXI5_arready;
  assign interconnect_PLRAM_MEM01_M00_AXI_AWREADY = M00_AXI5_awready;
  assign interconnect_PLRAM_MEM01_M00_AXI_BRESP = M00_AXI5_bresp[1:0];
  assign interconnect_PLRAM_MEM01_M00_AXI_BVALID = M00_AXI5_bvalid;
  assign interconnect_PLRAM_MEM01_M00_AXI_RDATA = M00_AXI5_rdata[511:0];
  assign interconnect_PLRAM_MEM01_M00_AXI_RLAST = M00_AXI5_rlast;
  assign interconnect_PLRAM_MEM01_M00_AXI_RRESP = M00_AXI5_rresp[1:0];
  assign interconnect_PLRAM_MEM01_M00_AXI_RVALID = M00_AXI5_rvalid;
  assign interconnect_PLRAM_MEM01_M00_AXI_WREADY = M00_AXI5_wready;
  assign interconnect_PLRAM_MEM02_M00_AXI_ARREADY = M00_AXI6_arready;
  assign interconnect_PLRAM_MEM02_M00_AXI_AWREADY = M00_AXI6_awready;
  assign interconnect_PLRAM_MEM02_M00_AXI_BRESP = M00_AXI6_bresp[1:0];
  assign interconnect_PLRAM_MEM02_M00_AXI_BVALID = M00_AXI6_bvalid;
  assign interconnect_PLRAM_MEM02_M00_AXI_RDATA = M00_AXI6_rdata[511:0];
  assign interconnect_PLRAM_MEM02_M00_AXI_RLAST = M00_AXI6_rlast;
  assign interconnect_PLRAM_MEM02_M00_AXI_RRESP = M00_AXI6_rresp[1:0];
  assign interconnect_PLRAM_MEM02_M00_AXI_RVALID = M00_AXI6_rvalid;
  assign interconnect_PLRAM_MEM02_M00_AXI_WREADY = M00_AXI6_wready;
  assign psr_aclk_SLR0_interconnect_aresetn = aresetn;
  assign psr_aclk_SLR1_interconnect_aresetn = aresetn1;
  assign psr_aclk_SLR2_interconnect_aresetn = aresetn2;
  bd_3329_interconnect_DDR4_MEM00_0 interconnect_ddr4_mem00
       (.M00_AXI_araddr(interconnect_DDR4_MEM00_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_DDR4_MEM00_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_DDR4_MEM00_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect_DDR4_MEM00_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_DDR4_MEM00_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_DDR4_MEM00_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_DDR4_MEM00_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_DDR4_MEM00_M00_AXI_ARREADY),
        .M00_AXI_arvalid(interconnect_DDR4_MEM00_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_DDR4_MEM00_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_DDR4_MEM00_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_DDR4_MEM00_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect_DDR4_MEM00_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_DDR4_MEM00_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_DDR4_MEM00_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_DDR4_MEM00_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_DDR4_MEM00_M00_AXI_AWREADY),
        .M00_AXI_awvalid(interconnect_DDR4_MEM00_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_DDR4_MEM00_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_DDR4_MEM00_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_DDR4_MEM00_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_DDR4_MEM00_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect_DDR4_MEM00_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_DDR4_MEM00_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_DDR4_MEM00_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_DDR4_MEM00_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_DDR4_MEM00_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_DDR4_MEM00_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_DDR4_MEM00_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_DDR4_MEM00_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_DDR4_MEM00_M00_AXI_WVALID),
        .S00_AXI_araddr(interconnect_S00_AXI_M00_AXI_ARADDR),
        .S00_AXI_arburst(interconnect_S00_AXI_M00_AXI_ARBURST),
        .S00_AXI_arcache(interconnect_S00_AXI_M00_AXI_ARCACHE),
        .S00_AXI_arid(interconnect_S00_AXI_M00_AXI_ARID),
        .S00_AXI_arlen(interconnect_S00_AXI_M00_AXI_ARLEN),
        .S00_AXI_arlock(interconnect_S00_AXI_M00_AXI_ARLOCK),
        .S00_AXI_arprot(interconnect_S00_AXI_M00_AXI_ARPROT),
        .S00_AXI_arqos(interconnect_S00_AXI_M00_AXI_ARQOS),
        .S00_AXI_arready(interconnect_S00_AXI_M00_AXI_ARREADY),
        .S00_AXI_arsize(interconnect_S00_AXI_M00_AXI_ARSIZE),
        .S00_AXI_aruser(interconnect_S00_AXI_M00_AXI_ARUSER),
        .S00_AXI_arvalid(interconnect_S00_AXI_M00_AXI_ARVALID),
        .S00_AXI_awaddr(interconnect_S00_AXI_M00_AXI_AWADDR),
        .S00_AXI_awburst(interconnect_S00_AXI_M00_AXI_AWBURST),
        .S00_AXI_awcache(interconnect_S00_AXI_M00_AXI_AWCACHE),
        .S00_AXI_awid(interconnect_S00_AXI_M00_AXI_AWID),
        .S00_AXI_awlen(interconnect_S00_AXI_M00_AXI_AWLEN),
        .S00_AXI_awlock(interconnect_S00_AXI_M00_AXI_AWLOCK),
        .S00_AXI_awprot(interconnect_S00_AXI_M00_AXI_AWPROT),
        .S00_AXI_awqos(interconnect_S00_AXI_M00_AXI_AWQOS),
        .S00_AXI_awready(interconnect_S00_AXI_M00_AXI_AWREADY),
        .S00_AXI_awsize(interconnect_S00_AXI_M00_AXI_AWSIZE),
        .S00_AXI_awuser(interconnect_S00_AXI_M00_AXI_AWUSER),
        .S00_AXI_awvalid(interconnect_S00_AXI_M00_AXI_AWVALID),
        .S00_AXI_bid(interconnect_S00_AXI_M00_AXI_BID),
        .S00_AXI_bready(interconnect_S00_AXI_M00_AXI_BREADY),
        .S00_AXI_bresp(interconnect_S00_AXI_M00_AXI_BRESP),
        .S00_AXI_buser(interconnect_S00_AXI_M00_AXI_BUSER),
        .S00_AXI_bvalid(interconnect_S00_AXI_M00_AXI_BVALID),
        .S00_AXI_rdata(interconnect_S00_AXI_M00_AXI_RDATA),
        .S00_AXI_rid(interconnect_S00_AXI_M00_AXI_RID),
        .S00_AXI_rlast(interconnect_S00_AXI_M00_AXI_RLAST),
        .S00_AXI_rready(interconnect_S00_AXI_M00_AXI_RREADY),
        .S00_AXI_rresp(interconnect_S00_AXI_M00_AXI_RRESP),
        .S00_AXI_ruser(interconnect_S00_AXI_M00_AXI_RUSER),
        .S00_AXI_rvalid(interconnect_S00_AXI_M00_AXI_RVALID),
        .S00_AXI_wdata(interconnect_S00_AXI_M00_AXI_WDATA),
        .S00_AXI_wlast(interconnect_S00_AXI_M00_AXI_WLAST),
        .S00_AXI_wready(interconnect_S00_AXI_M00_AXI_WREADY),
        .S00_AXI_wstrb(interconnect_S00_AXI_M00_AXI_WSTRB),
        .S00_AXI_wuser(interconnect_S00_AXI_M00_AXI_WUSER),
        .S00_AXI_wvalid(interconnect_S00_AXI_M00_AXI_WVALID),
        .aclk(aws_clk_main_a0_out),
        .aclk1(aclk_1),
        .aresetn(psr_aclk_SLR1_interconnect_aresetn));
  bd_3329_interconnect_DDR4_MEM01_0 interconnect_ddr4_mem01
       (.M00_AXI_araddr(interconnect_DDR4_MEM01_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_DDR4_MEM01_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_DDR4_MEM01_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect_DDR4_MEM01_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_DDR4_MEM01_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_DDR4_MEM01_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_DDR4_MEM01_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_DDR4_MEM01_M00_AXI_ARREADY),
        .M00_AXI_arvalid(interconnect_DDR4_MEM01_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_DDR4_MEM01_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_DDR4_MEM01_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_DDR4_MEM01_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect_DDR4_MEM01_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_DDR4_MEM01_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_DDR4_MEM01_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_DDR4_MEM01_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_DDR4_MEM01_M00_AXI_AWREADY),
        .M00_AXI_awvalid(interconnect_DDR4_MEM01_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_DDR4_MEM01_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_DDR4_MEM01_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_DDR4_MEM01_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_DDR4_MEM01_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect_DDR4_MEM01_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_DDR4_MEM01_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_DDR4_MEM01_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_DDR4_MEM01_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_DDR4_MEM01_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_DDR4_MEM01_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_DDR4_MEM01_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_DDR4_MEM01_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_DDR4_MEM01_M00_AXI_WVALID),
        .S00_AXI_araddr(interconnect_S00_AXI_M01_AXI_ARADDR),
        .S00_AXI_arburst(interconnect_S00_AXI_M01_AXI_ARBURST),
        .S00_AXI_arcache(interconnect_S00_AXI_M01_AXI_ARCACHE),
        .S00_AXI_arid(interconnect_S00_AXI_M01_AXI_ARID),
        .S00_AXI_arlen(interconnect_S00_AXI_M01_AXI_ARLEN),
        .S00_AXI_arlock(interconnect_S00_AXI_M01_AXI_ARLOCK),
        .S00_AXI_arprot(interconnect_S00_AXI_M01_AXI_ARPROT),
        .S00_AXI_arqos(interconnect_S00_AXI_M01_AXI_ARQOS),
        .S00_AXI_arready(interconnect_S00_AXI_M01_AXI_ARREADY),
        .S00_AXI_arsize(interconnect_S00_AXI_M01_AXI_ARSIZE),
        .S00_AXI_aruser(interconnect_S00_AXI_M01_AXI_ARUSER),
        .S00_AXI_arvalid(interconnect_S00_AXI_M01_AXI_ARVALID),
        .S00_AXI_awaddr(interconnect_S00_AXI_M01_AXI_AWADDR),
        .S00_AXI_awburst(interconnect_S00_AXI_M01_AXI_AWBURST),
        .S00_AXI_awcache(interconnect_S00_AXI_M01_AXI_AWCACHE),
        .S00_AXI_awid(interconnect_S00_AXI_M01_AXI_AWID),
        .S00_AXI_awlen(interconnect_S00_AXI_M01_AXI_AWLEN),
        .S00_AXI_awlock(interconnect_S00_AXI_M01_AXI_AWLOCK),
        .S00_AXI_awprot(interconnect_S00_AXI_M01_AXI_AWPROT),
        .S00_AXI_awqos(interconnect_S00_AXI_M01_AXI_AWQOS),
        .S00_AXI_awready(interconnect_S00_AXI_M01_AXI_AWREADY),
        .S00_AXI_awsize(interconnect_S00_AXI_M01_AXI_AWSIZE),
        .S00_AXI_awuser(interconnect_S00_AXI_M01_AXI_AWUSER),
        .S00_AXI_awvalid(interconnect_S00_AXI_M01_AXI_AWVALID),
        .S00_AXI_bid(interconnect_S00_AXI_M01_AXI_BID),
        .S00_AXI_bready(interconnect_S00_AXI_M01_AXI_BREADY),
        .S00_AXI_bresp(interconnect_S00_AXI_M01_AXI_BRESP),
        .S00_AXI_buser(interconnect_S00_AXI_M01_AXI_BUSER),
        .S00_AXI_bvalid(interconnect_S00_AXI_M01_AXI_BVALID),
        .S00_AXI_rdata(interconnect_S00_AXI_M01_AXI_RDATA),
        .S00_AXI_rid(interconnect_S00_AXI_M01_AXI_RID),
        .S00_AXI_rlast(interconnect_S00_AXI_M01_AXI_RLAST),
        .S00_AXI_rready(interconnect_S00_AXI_M01_AXI_RREADY),
        .S00_AXI_rresp(interconnect_S00_AXI_M01_AXI_RRESP),
        .S00_AXI_ruser(interconnect_S00_AXI_M01_AXI_RUSER),
        .S00_AXI_rvalid(interconnect_S00_AXI_M01_AXI_RVALID),
        .S00_AXI_wdata(interconnect_S00_AXI_M01_AXI_WDATA),
        .S00_AXI_wlast(interconnect_S00_AXI_M01_AXI_WLAST),
        .S00_AXI_wready(interconnect_S00_AXI_M01_AXI_WREADY),
        .S00_AXI_wstrb(interconnect_S00_AXI_M01_AXI_WSTRB),
        .S00_AXI_wuser(interconnect_S00_AXI_M01_AXI_WUSER),
        .S00_AXI_wvalid(interconnect_S00_AXI_M01_AXI_WVALID),
        .aclk(aws_clk_main_a0_out),
        .aclk1(aclk_1),
        .aresetn(psr_aclk_SLR2_interconnect_aresetn));
  bd_3329_interconnect_DDR4_MEM02_0 interconnect_ddr4_mem02
       (.M00_AXI_araddr(interconnect_DDR4_MEM02_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_DDR4_MEM02_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_DDR4_MEM02_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect_DDR4_MEM02_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_DDR4_MEM02_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_DDR4_MEM02_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_DDR4_MEM02_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_DDR4_MEM02_M00_AXI_ARREADY),
        .M00_AXI_arvalid(interconnect_DDR4_MEM02_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_DDR4_MEM02_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_DDR4_MEM02_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_DDR4_MEM02_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect_DDR4_MEM02_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_DDR4_MEM02_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_DDR4_MEM02_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_DDR4_MEM02_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_DDR4_MEM02_M00_AXI_AWREADY),
        .M00_AXI_awvalid(interconnect_DDR4_MEM02_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_DDR4_MEM02_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_DDR4_MEM02_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_DDR4_MEM02_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_DDR4_MEM02_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect_DDR4_MEM02_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_DDR4_MEM02_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_DDR4_MEM02_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_DDR4_MEM02_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_DDR4_MEM02_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_DDR4_MEM02_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_DDR4_MEM02_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_DDR4_MEM02_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_DDR4_MEM02_M00_AXI_WVALID),
        .S00_AXI_araddr(interconnect_S00_AXI_M02_AXI_ARADDR),
        .S00_AXI_arburst(interconnect_S00_AXI_M02_AXI_ARBURST),
        .S00_AXI_arcache(interconnect_S00_AXI_M02_AXI_ARCACHE),
        .S00_AXI_arid(interconnect_S00_AXI_M02_AXI_ARID),
        .S00_AXI_arlen(interconnect_S00_AXI_M02_AXI_ARLEN),
        .S00_AXI_arlock(interconnect_S00_AXI_M02_AXI_ARLOCK),
        .S00_AXI_arprot(interconnect_S00_AXI_M02_AXI_ARPROT),
        .S00_AXI_arqos(interconnect_S00_AXI_M02_AXI_ARQOS),
        .S00_AXI_arready(interconnect_S00_AXI_M02_AXI_ARREADY),
        .S00_AXI_arsize(interconnect_S00_AXI_M02_AXI_ARSIZE),
        .S00_AXI_aruser(interconnect_S00_AXI_M02_AXI_ARUSER),
        .S00_AXI_arvalid(interconnect_S00_AXI_M02_AXI_ARVALID),
        .S00_AXI_awaddr(interconnect_S00_AXI_M02_AXI_AWADDR),
        .S00_AXI_awburst(interconnect_S00_AXI_M02_AXI_AWBURST),
        .S00_AXI_awcache(interconnect_S00_AXI_M02_AXI_AWCACHE),
        .S00_AXI_awid(interconnect_S00_AXI_M02_AXI_AWID),
        .S00_AXI_awlen(interconnect_S00_AXI_M02_AXI_AWLEN),
        .S00_AXI_awlock(interconnect_S00_AXI_M02_AXI_AWLOCK),
        .S00_AXI_awprot(interconnect_S00_AXI_M02_AXI_AWPROT),
        .S00_AXI_awqos(interconnect_S00_AXI_M02_AXI_AWQOS),
        .S00_AXI_awready(interconnect_S00_AXI_M02_AXI_AWREADY),
        .S00_AXI_awsize(interconnect_S00_AXI_M02_AXI_AWSIZE),
        .S00_AXI_awuser(interconnect_S00_AXI_M02_AXI_AWUSER),
        .S00_AXI_awvalid(interconnect_S00_AXI_M02_AXI_AWVALID),
        .S00_AXI_bid(interconnect_S00_AXI_M02_AXI_BID),
        .S00_AXI_bready(interconnect_S00_AXI_M02_AXI_BREADY),
        .S00_AXI_bresp(interconnect_S00_AXI_M02_AXI_BRESP),
        .S00_AXI_buser(interconnect_S00_AXI_M02_AXI_BUSER),
        .S00_AXI_bvalid(interconnect_S00_AXI_M02_AXI_BVALID),
        .S00_AXI_rdata(interconnect_S00_AXI_M02_AXI_RDATA),
        .S00_AXI_rid(interconnect_S00_AXI_M02_AXI_RID),
        .S00_AXI_rlast(interconnect_S00_AXI_M02_AXI_RLAST),
        .S00_AXI_rready(interconnect_S00_AXI_M02_AXI_RREADY),
        .S00_AXI_rresp(interconnect_S00_AXI_M02_AXI_RRESP),
        .S00_AXI_ruser(interconnect_S00_AXI_M02_AXI_RUSER),
        .S00_AXI_rvalid(interconnect_S00_AXI_M02_AXI_RVALID),
        .S00_AXI_wdata(interconnect_S00_AXI_M02_AXI_WDATA),
        .S00_AXI_wlast(interconnect_S00_AXI_M02_AXI_WLAST),
        .S00_AXI_wready(interconnect_S00_AXI_M02_AXI_WREADY),
        .S00_AXI_wstrb(interconnect_S00_AXI_M02_AXI_WSTRB),
        .S00_AXI_wuser(interconnect_S00_AXI_M02_AXI_WUSER),
        .S00_AXI_wvalid(interconnect_S00_AXI_M02_AXI_WVALID),
        .aclk(aws_clk_main_a0_out),
        .aclk1(aclk_1),
        .aresetn(psr_aclk_SLR1_interconnect_aresetn));
  bd_3329_interconnect_DDR4_MEM03_0 interconnect_ddr4_mem03
       (.M00_AXI_araddr(interconnect_DDR4_MEM03_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_DDR4_MEM03_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_DDR4_MEM03_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect_DDR4_MEM03_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_DDR4_MEM03_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_DDR4_MEM03_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_DDR4_MEM03_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_DDR4_MEM03_M00_AXI_ARREADY),
        .M00_AXI_arvalid(interconnect_DDR4_MEM03_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_DDR4_MEM03_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_DDR4_MEM03_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_DDR4_MEM03_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect_DDR4_MEM03_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_DDR4_MEM03_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_DDR4_MEM03_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_DDR4_MEM03_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_DDR4_MEM03_M00_AXI_AWREADY),
        .M00_AXI_awvalid(interconnect_DDR4_MEM03_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_DDR4_MEM03_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_DDR4_MEM03_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_DDR4_MEM03_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_DDR4_MEM03_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect_DDR4_MEM03_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_DDR4_MEM03_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_DDR4_MEM03_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_DDR4_MEM03_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_DDR4_MEM03_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_DDR4_MEM03_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_DDR4_MEM03_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_DDR4_MEM03_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_DDR4_MEM03_M00_AXI_WVALID),
        .S00_AXI_araddr(interconnect_S00_AXI_M03_AXI_ARADDR),
        .S00_AXI_arburst(interconnect_S00_AXI_M03_AXI_ARBURST),
        .S00_AXI_arcache(interconnect_S00_AXI_M03_AXI_ARCACHE),
        .S00_AXI_arid(interconnect_S00_AXI_M03_AXI_ARID),
        .S00_AXI_arlen(interconnect_S00_AXI_M03_AXI_ARLEN),
        .S00_AXI_arlock(interconnect_S00_AXI_M03_AXI_ARLOCK),
        .S00_AXI_arprot(interconnect_S00_AXI_M03_AXI_ARPROT),
        .S00_AXI_arqos(interconnect_S00_AXI_M03_AXI_ARQOS),
        .S00_AXI_arready(interconnect_S00_AXI_M03_AXI_ARREADY),
        .S00_AXI_arsize(interconnect_S00_AXI_M03_AXI_ARSIZE),
        .S00_AXI_aruser(interconnect_S00_AXI_M03_AXI_ARUSER),
        .S00_AXI_arvalid(interconnect_S00_AXI_M03_AXI_ARVALID),
        .S00_AXI_awaddr(interconnect_S00_AXI_M03_AXI_AWADDR),
        .S00_AXI_awburst(interconnect_S00_AXI_M03_AXI_AWBURST),
        .S00_AXI_awcache(interconnect_S00_AXI_M03_AXI_AWCACHE),
        .S00_AXI_awid(interconnect_S00_AXI_M03_AXI_AWID),
        .S00_AXI_awlen(interconnect_S00_AXI_M03_AXI_AWLEN),
        .S00_AXI_awlock(interconnect_S00_AXI_M03_AXI_AWLOCK),
        .S00_AXI_awprot(interconnect_S00_AXI_M03_AXI_AWPROT),
        .S00_AXI_awqos(interconnect_S00_AXI_M03_AXI_AWQOS),
        .S00_AXI_awready(interconnect_S00_AXI_M03_AXI_AWREADY),
        .S00_AXI_awsize(interconnect_S00_AXI_M03_AXI_AWSIZE),
        .S00_AXI_awuser(interconnect_S00_AXI_M03_AXI_AWUSER),
        .S00_AXI_awvalid(interconnect_S00_AXI_M03_AXI_AWVALID),
        .S00_AXI_bid(interconnect_S00_AXI_M03_AXI_BID),
        .S00_AXI_bready(interconnect_S00_AXI_M03_AXI_BREADY),
        .S00_AXI_bresp(interconnect_S00_AXI_M03_AXI_BRESP),
        .S00_AXI_buser(interconnect_S00_AXI_M03_AXI_BUSER),
        .S00_AXI_bvalid(interconnect_S00_AXI_M03_AXI_BVALID),
        .S00_AXI_rdata(interconnect_S00_AXI_M03_AXI_RDATA),
        .S00_AXI_rid(interconnect_S00_AXI_M03_AXI_RID),
        .S00_AXI_rlast(interconnect_S00_AXI_M03_AXI_RLAST),
        .S00_AXI_rready(interconnect_S00_AXI_M03_AXI_RREADY),
        .S00_AXI_rresp(interconnect_S00_AXI_M03_AXI_RRESP),
        .S00_AXI_ruser(interconnect_S00_AXI_M03_AXI_RUSER),
        .S00_AXI_rvalid(interconnect_S00_AXI_M03_AXI_RVALID),
        .S00_AXI_wdata(interconnect_S00_AXI_M03_AXI_WDATA),
        .S00_AXI_wlast(interconnect_S00_AXI_M03_AXI_WLAST),
        .S00_AXI_wready(interconnect_S00_AXI_M03_AXI_WREADY),
        .S00_AXI_wstrb(interconnect_S00_AXI_M03_AXI_WSTRB),
        .S00_AXI_wuser(interconnect_S00_AXI_M03_AXI_WUSER),
        .S00_AXI_wvalid(interconnect_S00_AXI_M03_AXI_WVALID),
        .aclk(aws_clk_main_a0_out),
        .aclk1(aclk_1),
        .aresetn(psr_aclk_SLR0_interconnect_aresetn));
  bd_3329_interconnect_PLRAM_MEM00_0 interconnect_plram_mem00
       (.M00_AXI_araddr(interconnect_PLRAM_MEM00_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_PLRAM_MEM00_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_PLRAM_MEM00_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect_PLRAM_MEM00_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_PLRAM_MEM00_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_PLRAM_MEM00_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_PLRAM_MEM00_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_PLRAM_MEM00_M00_AXI_ARREADY),
        .M00_AXI_arvalid(interconnect_PLRAM_MEM00_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_PLRAM_MEM00_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_PLRAM_MEM00_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_PLRAM_MEM00_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect_PLRAM_MEM00_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_PLRAM_MEM00_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_PLRAM_MEM00_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_PLRAM_MEM00_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_PLRAM_MEM00_M00_AXI_AWREADY),
        .M00_AXI_awvalid(interconnect_PLRAM_MEM00_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_PLRAM_MEM00_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_PLRAM_MEM00_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_PLRAM_MEM00_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_PLRAM_MEM00_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect_PLRAM_MEM00_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_PLRAM_MEM00_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_PLRAM_MEM00_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_PLRAM_MEM00_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_PLRAM_MEM00_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_PLRAM_MEM00_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_PLRAM_MEM00_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_PLRAM_MEM00_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_PLRAM_MEM00_M00_AXI_WVALID),
        .S00_AXI_araddr(interconnect_S00_AXI_M04_AXI_ARADDR),
        .S00_AXI_arburst(interconnect_S00_AXI_M04_AXI_ARBURST),
        .S00_AXI_arcache(interconnect_S00_AXI_M04_AXI_ARCACHE),
        .S00_AXI_arid(interconnect_S00_AXI_M04_AXI_ARID),
        .S00_AXI_arlen(interconnect_S00_AXI_M04_AXI_ARLEN),
        .S00_AXI_arlock(interconnect_S00_AXI_M04_AXI_ARLOCK),
        .S00_AXI_arprot(interconnect_S00_AXI_M04_AXI_ARPROT),
        .S00_AXI_arqos(interconnect_S00_AXI_M04_AXI_ARQOS),
        .S00_AXI_arready(interconnect_S00_AXI_M04_AXI_ARREADY),
        .S00_AXI_arsize(interconnect_S00_AXI_M04_AXI_ARSIZE),
        .S00_AXI_aruser(interconnect_S00_AXI_M04_AXI_ARUSER),
        .S00_AXI_arvalid(interconnect_S00_AXI_M04_AXI_ARVALID),
        .S00_AXI_awaddr(interconnect_S00_AXI_M04_AXI_AWADDR),
        .S00_AXI_awburst(interconnect_S00_AXI_M04_AXI_AWBURST),
        .S00_AXI_awcache(interconnect_S00_AXI_M04_AXI_AWCACHE),
        .S00_AXI_awid(interconnect_S00_AXI_M04_AXI_AWID),
        .S00_AXI_awlen(interconnect_S00_AXI_M04_AXI_AWLEN),
        .S00_AXI_awlock(interconnect_S00_AXI_M04_AXI_AWLOCK),
        .S00_AXI_awprot(interconnect_S00_AXI_M04_AXI_AWPROT),
        .S00_AXI_awqos(interconnect_S00_AXI_M04_AXI_AWQOS),
        .S00_AXI_awready(interconnect_S00_AXI_M04_AXI_AWREADY),
        .S00_AXI_awsize(interconnect_S00_AXI_M04_AXI_AWSIZE),
        .S00_AXI_awuser(interconnect_S00_AXI_M04_AXI_AWUSER),
        .S00_AXI_awvalid(interconnect_S00_AXI_M04_AXI_AWVALID),
        .S00_AXI_bid(interconnect_S00_AXI_M04_AXI_BID),
        .S00_AXI_bready(interconnect_S00_AXI_M04_AXI_BREADY),
        .S00_AXI_bresp(interconnect_S00_AXI_M04_AXI_BRESP),
        .S00_AXI_buser(interconnect_S00_AXI_M04_AXI_BUSER),
        .S00_AXI_bvalid(interconnect_S00_AXI_M04_AXI_BVALID),
        .S00_AXI_rdata(interconnect_S00_AXI_M04_AXI_RDATA),
        .S00_AXI_rid(interconnect_S00_AXI_M04_AXI_RID),
        .S00_AXI_rlast(interconnect_S00_AXI_M04_AXI_RLAST),
        .S00_AXI_rready(interconnect_S00_AXI_M04_AXI_RREADY),
        .S00_AXI_rresp(interconnect_S00_AXI_M04_AXI_RRESP),
        .S00_AXI_ruser(interconnect_S00_AXI_M04_AXI_RUSER),
        .S00_AXI_rvalid(interconnect_S00_AXI_M04_AXI_RVALID),
        .S00_AXI_wdata(interconnect_S00_AXI_M04_AXI_WDATA),
        .S00_AXI_wlast(interconnect_S00_AXI_M04_AXI_WLAST),
        .S00_AXI_wready(interconnect_S00_AXI_M04_AXI_WREADY),
        .S00_AXI_wstrb(interconnect_S00_AXI_M04_AXI_WSTRB),
        .S00_AXI_wuser(interconnect_S00_AXI_M04_AXI_WUSER),
        .S00_AXI_wvalid(interconnect_S00_AXI_M04_AXI_WVALID),
        .aclk(aclk_1),
        .aresetn(psr_aclk_SLR2_interconnect_aresetn));
  bd_3329_interconnect_PLRAM_MEM01_0 interconnect_plram_mem01
       (.M00_AXI_araddr(interconnect_PLRAM_MEM01_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_PLRAM_MEM01_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_PLRAM_MEM01_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect_PLRAM_MEM01_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_PLRAM_MEM01_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_PLRAM_MEM01_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_PLRAM_MEM01_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_PLRAM_MEM01_M00_AXI_ARREADY),
        .M00_AXI_arvalid(interconnect_PLRAM_MEM01_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_PLRAM_MEM01_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_PLRAM_MEM01_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_PLRAM_MEM01_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect_PLRAM_MEM01_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_PLRAM_MEM01_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_PLRAM_MEM01_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_PLRAM_MEM01_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_PLRAM_MEM01_M00_AXI_AWREADY),
        .M00_AXI_awvalid(interconnect_PLRAM_MEM01_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_PLRAM_MEM01_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_PLRAM_MEM01_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_PLRAM_MEM01_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_PLRAM_MEM01_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect_PLRAM_MEM01_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_PLRAM_MEM01_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_PLRAM_MEM01_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_PLRAM_MEM01_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_PLRAM_MEM01_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_PLRAM_MEM01_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_PLRAM_MEM01_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_PLRAM_MEM01_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_PLRAM_MEM01_M00_AXI_WVALID),
        .S00_AXI_araddr(interconnect_S00_AXI_M05_AXI_ARADDR),
        .S00_AXI_arburst(interconnect_S00_AXI_M05_AXI_ARBURST),
        .S00_AXI_arcache(interconnect_S00_AXI_M05_AXI_ARCACHE),
        .S00_AXI_arid(interconnect_S00_AXI_M05_AXI_ARID),
        .S00_AXI_arlen(interconnect_S00_AXI_M05_AXI_ARLEN),
        .S00_AXI_arlock(interconnect_S00_AXI_M05_AXI_ARLOCK),
        .S00_AXI_arprot(interconnect_S00_AXI_M05_AXI_ARPROT),
        .S00_AXI_arqos(interconnect_S00_AXI_M05_AXI_ARQOS),
        .S00_AXI_arready(interconnect_S00_AXI_M05_AXI_ARREADY),
        .S00_AXI_arsize(interconnect_S00_AXI_M05_AXI_ARSIZE),
        .S00_AXI_aruser(interconnect_S00_AXI_M05_AXI_ARUSER),
        .S00_AXI_arvalid(interconnect_S00_AXI_M05_AXI_ARVALID),
        .S00_AXI_awaddr(interconnect_S00_AXI_M05_AXI_AWADDR),
        .S00_AXI_awburst(interconnect_S00_AXI_M05_AXI_AWBURST),
        .S00_AXI_awcache(interconnect_S00_AXI_M05_AXI_AWCACHE),
        .S00_AXI_awid(interconnect_S00_AXI_M05_AXI_AWID),
        .S00_AXI_awlen(interconnect_S00_AXI_M05_AXI_AWLEN),
        .S00_AXI_awlock(interconnect_S00_AXI_M05_AXI_AWLOCK),
        .S00_AXI_awprot(interconnect_S00_AXI_M05_AXI_AWPROT),
        .S00_AXI_awqos(interconnect_S00_AXI_M05_AXI_AWQOS),
        .S00_AXI_awready(interconnect_S00_AXI_M05_AXI_AWREADY),
        .S00_AXI_awsize(interconnect_S00_AXI_M05_AXI_AWSIZE),
        .S00_AXI_awuser(interconnect_S00_AXI_M05_AXI_AWUSER),
        .S00_AXI_awvalid(interconnect_S00_AXI_M05_AXI_AWVALID),
        .S00_AXI_bid(interconnect_S00_AXI_M05_AXI_BID),
        .S00_AXI_bready(interconnect_S00_AXI_M05_AXI_BREADY),
        .S00_AXI_bresp(interconnect_S00_AXI_M05_AXI_BRESP),
        .S00_AXI_buser(interconnect_S00_AXI_M05_AXI_BUSER),
        .S00_AXI_bvalid(interconnect_S00_AXI_M05_AXI_BVALID),
        .S00_AXI_rdata(interconnect_S00_AXI_M05_AXI_RDATA),
        .S00_AXI_rid(interconnect_S00_AXI_M05_AXI_RID),
        .S00_AXI_rlast(interconnect_S00_AXI_M05_AXI_RLAST),
        .S00_AXI_rready(interconnect_S00_AXI_M05_AXI_RREADY),
        .S00_AXI_rresp(interconnect_S00_AXI_M05_AXI_RRESP),
        .S00_AXI_ruser(interconnect_S00_AXI_M05_AXI_RUSER),
        .S00_AXI_rvalid(interconnect_S00_AXI_M05_AXI_RVALID),
        .S00_AXI_wdata(interconnect_S00_AXI_M05_AXI_WDATA),
        .S00_AXI_wlast(interconnect_S00_AXI_M05_AXI_WLAST),
        .S00_AXI_wready(interconnect_S00_AXI_M05_AXI_WREADY),
        .S00_AXI_wstrb(interconnect_S00_AXI_M05_AXI_WSTRB),
        .S00_AXI_wuser(interconnect_S00_AXI_M05_AXI_WUSER),
        .S00_AXI_wvalid(interconnect_S00_AXI_M05_AXI_WVALID),
        .aclk(aclk_1),
        .aresetn(psr_aclk_SLR1_interconnect_aresetn));
  bd_3329_interconnect_PLRAM_MEM02_0 interconnect_plram_mem02
       (.M00_AXI_araddr(interconnect_PLRAM_MEM02_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_PLRAM_MEM02_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_PLRAM_MEM02_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect_PLRAM_MEM02_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_PLRAM_MEM02_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_PLRAM_MEM02_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_PLRAM_MEM02_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_PLRAM_MEM02_M00_AXI_ARREADY),
        .M00_AXI_arvalid(interconnect_PLRAM_MEM02_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_PLRAM_MEM02_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_PLRAM_MEM02_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_PLRAM_MEM02_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect_PLRAM_MEM02_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_PLRAM_MEM02_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_PLRAM_MEM02_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_PLRAM_MEM02_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_PLRAM_MEM02_M00_AXI_AWREADY),
        .M00_AXI_awvalid(interconnect_PLRAM_MEM02_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_PLRAM_MEM02_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_PLRAM_MEM02_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_PLRAM_MEM02_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_PLRAM_MEM02_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect_PLRAM_MEM02_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_PLRAM_MEM02_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_PLRAM_MEM02_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_PLRAM_MEM02_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_PLRAM_MEM02_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_PLRAM_MEM02_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_PLRAM_MEM02_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_PLRAM_MEM02_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_PLRAM_MEM02_M00_AXI_WVALID),
        .S00_AXI_araddr(interconnect_S00_AXI_M06_AXI_ARADDR),
        .S00_AXI_arburst(interconnect_S00_AXI_M06_AXI_ARBURST),
        .S00_AXI_arcache(interconnect_S00_AXI_M06_AXI_ARCACHE),
        .S00_AXI_arid(interconnect_S00_AXI_M06_AXI_ARID),
        .S00_AXI_arlen(interconnect_S00_AXI_M06_AXI_ARLEN),
        .S00_AXI_arlock(interconnect_S00_AXI_M06_AXI_ARLOCK),
        .S00_AXI_arprot(interconnect_S00_AXI_M06_AXI_ARPROT),
        .S00_AXI_arqos(interconnect_S00_AXI_M06_AXI_ARQOS),
        .S00_AXI_arready(interconnect_S00_AXI_M06_AXI_ARREADY),
        .S00_AXI_arsize(interconnect_S00_AXI_M06_AXI_ARSIZE),
        .S00_AXI_aruser(interconnect_S00_AXI_M06_AXI_ARUSER),
        .S00_AXI_arvalid(interconnect_S00_AXI_M06_AXI_ARVALID),
        .S00_AXI_awaddr(interconnect_S00_AXI_M06_AXI_AWADDR),
        .S00_AXI_awburst(interconnect_S00_AXI_M06_AXI_AWBURST),
        .S00_AXI_awcache(interconnect_S00_AXI_M06_AXI_AWCACHE),
        .S00_AXI_awid(interconnect_S00_AXI_M06_AXI_AWID),
        .S00_AXI_awlen(interconnect_S00_AXI_M06_AXI_AWLEN),
        .S00_AXI_awlock(interconnect_S00_AXI_M06_AXI_AWLOCK),
        .S00_AXI_awprot(interconnect_S00_AXI_M06_AXI_AWPROT),
        .S00_AXI_awqos(interconnect_S00_AXI_M06_AXI_AWQOS),
        .S00_AXI_awready(interconnect_S00_AXI_M06_AXI_AWREADY),
        .S00_AXI_awsize(interconnect_S00_AXI_M06_AXI_AWSIZE),
        .S00_AXI_awuser(interconnect_S00_AXI_M06_AXI_AWUSER),
        .S00_AXI_awvalid(interconnect_S00_AXI_M06_AXI_AWVALID),
        .S00_AXI_bid(interconnect_S00_AXI_M06_AXI_BID),
        .S00_AXI_bready(interconnect_S00_AXI_M06_AXI_BREADY),
        .S00_AXI_bresp(interconnect_S00_AXI_M06_AXI_BRESP),
        .S00_AXI_buser(interconnect_S00_AXI_M06_AXI_BUSER),
        .S00_AXI_bvalid(interconnect_S00_AXI_M06_AXI_BVALID),
        .S00_AXI_rdata(interconnect_S00_AXI_M06_AXI_RDATA),
        .S00_AXI_rid(interconnect_S00_AXI_M06_AXI_RID),
        .S00_AXI_rlast(interconnect_S00_AXI_M06_AXI_RLAST),
        .S00_AXI_rready(interconnect_S00_AXI_M06_AXI_RREADY),
        .S00_AXI_rresp(interconnect_S00_AXI_M06_AXI_RRESP),
        .S00_AXI_ruser(interconnect_S00_AXI_M06_AXI_RUSER),
        .S00_AXI_rvalid(interconnect_S00_AXI_M06_AXI_RVALID),
        .S00_AXI_wdata(interconnect_S00_AXI_M06_AXI_WDATA),
        .S00_AXI_wlast(interconnect_S00_AXI_M06_AXI_WLAST),
        .S00_AXI_wready(interconnect_S00_AXI_M06_AXI_WREADY),
        .S00_AXI_wstrb(interconnect_S00_AXI_M06_AXI_WSTRB),
        .S00_AXI_wuser(interconnect_S00_AXI_M06_AXI_WUSER),
        .S00_AXI_wvalid(interconnect_S00_AXI_M06_AXI_WVALID),
        .aclk(aclk_1),
        .aresetn(psr_aclk_SLR0_interconnect_aresetn));
  bd_3329_interconnect_S00_AXI_0 interconnect_s00_axi
       (.M00_AXI_araddr(interconnect_S00_AXI_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_S00_AXI_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_S00_AXI_M00_AXI_ARCACHE),
        .M00_AXI_arid(interconnect_S00_AXI_M00_AXI_ARID),
        .M00_AXI_arlen(interconnect_S00_AXI_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_S00_AXI_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_S00_AXI_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_S00_AXI_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_S00_AXI_M00_AXI_ARREADY),
        .M00_AXI_arsize(interconnect_S00_AXI_M00_AXI_ARSIZE),
        .M00_AXI_aruser(interconnect_S00_AXI_M00_AXI_ARUSER),
        .M00_AXI_arvalid(interconnect_S00_AXI_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_S00_AXI_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_S00_AXI_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_S00_AXI_M00_AXI_AWCACHE),
        .M00_AXI_awid(interconnect_S00_AXI_M00_AXI_AWID),
        .M00_AXI_awlen(interconnect_S00_AXI_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_S00_AXI_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_S00_AXI_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_S00_AXI_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_S00_AXI_M00_AXI_AWREADY),
        .M00_AXI_awsize(interconnect_S00_AXI_M00_AXI_AWSIZE),
        .M00_AXI_awuser(interconnect_S00_AXI_M00_AXI_AWUSER),
        .M00_AXI_awvalid(interconnect_S00_AXI_M00_AXI_AWVALID),
        .M00_AXI_bid(interconnect_S00_AXI_M00_AXI_BID),
        .M00_AXI_bready(interconnect_S00_AXI_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_S00_AXI_M00_AXI_BRESP),
        .M00_AXI_buser(interconnect_S00_AXI_M00_AXI_BUSER),
        .M00_AXI_bvalid(interconnect_S00_AXI_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_S00_AXI_M00_AXI_RDATA),
        .M00_AXI_rid(interconnect_S00_AXI_M00_AXI_RID),
        .M00_AXI_rlast(interconnect_S00_AXI_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_S00_AXI_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_S00_AXI_M00_AXI_RRESP),
        .M00_AXI_ruser(interconnect_S00_AXI_M00_AXI_RUSER),
        .M00_AXI_rvalid(interconnect_S00_AXI_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_S00_AXI_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_S00_AXI_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_S00_AXI_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_S00_AXI_M00_AXI_WSTRB),
        .M00_AXI_wuser(interconnect_S00_AXI_M00_AXI_WUSER),
        .M00_AXI_wvalid(interconnect_S00_AXI_M00_AXI_WVALID),
        .M01_AXI_araddr(interconnect_S00_AXI_M01_AXI_ARADDR),
        .M01_AXI_arburst(interconnect_S00_AXI_M01_AXI_ARBURST),
        .M01_AXI_arcache(interconnect_S00_AXI_M01_AXI_ARCACHE),
        .M01_AXI_arid(interconnect_S00_AXI_M01_AXI_ARID),
        .M01_AXI_arlen(interconnect_S00_AXI_M01_AXI_ARLEN),
        .M01_AXI_arlock(interconnect_S00_AXI_M01_AXI_ARLOCK),
        .M01_AXI_arprot(interconnect_S00_AXI_M01_AXI_ARPROT),
        .M01_AXI_arqos(interconnect_S00_AXI_M01_AXI_ARQOS),
        .M01_AXI_arready(interconnect_S00_AXI_M01_AXI_ARREADY),
        .M01_AXI_arsize(interconnect_S00_AXI_M01_AXI_ARSIZE),
        .M01_AXI_aruser(interconnect_S00_AXI_M01_AXI_ARUSER),
        .M01_AXI_arvalid(interconnect_S00_AXI_M01_AXI_ARVALID),
        .M01_AXI_awaddr(interconnect_S00_AXI_M01_AXI_AWADDR),
        .M01_AXI_awburst(interconnect_S00_AXI_M01_AXI_AWBURST),
        .M01_AXI_awcache(interconnect_S00_AXI_M01_AXI_AWCACHE),
        .M01_AXI_awid(interconnect_S00_AXI_M01_AXI_AWID),
        .M01_AXI_awlen(interconnect_S00_AXI_M01_AXI_AWLEN),
        .M01_AXI_awlock(interconnect_S00_AXI_M01_AXI_AWLOCK),
        .M01_AXI_awprot(interconnect_S00_AXI_M01_AXI_AWPROT),
        .M01_AXI_awqos(interconnect_S00_AXI_M01_AXI_AWQOS),
        .M01_AXI_awready(interconnect_S00_AXI_M01_AXI_AWREADY),
        .M01_AXI_awsize(interconnect_S00_AXI_M01_AXI_AWSIZE),
        .M01_AXI_awuser(interconnect_S00_AXI_M01_AXI_AWUSER),
        .M01_AXI_awvalid(interconnect_S00_AXI_M01_AXI_AWVALID),
        .M01_AXI_bid(interconnect_S00_AXI_M01_AXI_BID),
        .M01_AXI_bready(interconnect_S00_AXI_M01_AXI_BREADY),
        .M01_AXI_bresp(interconnect_S00_AXI_M01_AXI_BRESP),
        .M01_AXI_buser(interconnect_S00_AXI_M01_AXI_BUSER),
        .M01_AXI_bvalid(interconnect_S00_AXI_M01_AXI_BVALID),
        .M01_AXI_rdata(interconnect_S00_AXI_M01_AXI_RDATA),
        .M01_AXI_rid(interconnect_S00_AXI_M01_AXI_RID),
        .M01_AXI_rlast(interconnect_S00_AXI_M01_AXI_RLAST),
        .M01_AXI_rready(interconnect_S00_AXI_M01_AXI_RREADY),
        .M01_AXI_rresp(interconnect_S00_AXI_M01_AXI_RRESP),
        .M01_AXI_ruser(interconnect_S00_AXI_M01_AXI_RUSER),
        .M01_AXI_rvalid(interconnect_S00_AXI_M01_AXI_RVALID),
        .M01_AXI_wdata(interconnect_S00_AXI_M01_AXI_WDATA),
        .M01_AXI_wlast(interconnect_S00_AXI_M01_AXI_WLAST),
        .M01_AXI_wready(interconnect_S00_AXI_M01_AXI_WREADY),
        .M01_AXI_wstrb(interconnect_S00_AXI_M01_AXI_WSTRB),
        .M01_AXI_wuser(interconnect_S00_AXI_M01_AXI_WUSER),
        .M01_AXI_wvalid(interconnect_S00_AXI_M01_AXI_WVALID),
        .M02_AXI_araddr(interconnect_S00_AXI_M02_AXI_ARADDR),
        .M02_AXI_arburst(interconnect_S00_AXI_M02_AXI_ARBURST),
        .M02_AXI_arcache(interconnect_S00_AXI_M02_AXI_ARCACHE),
        .M02_AXI_arid(interconnect_S00_AXI_M02_AXI_ARID),
        .M02_AXI_arlen(interconnect_S00_AXI_M02_AXI_ARLEN),
        .M02_AXI_arlock(interconnect_S00_AXI_M02_AXI_ARLOCK),
        .M02_AXI_arprot(interconnect_S00_AXI_M02_AXI_ARPROT),
        .M02_AXI_arqos(interconnect_S00_AXI_M02_AXI_ARQOS),
        .M02_AXI_arready(interconnect_S00_AXI_M02_AXI_ARREADY),
        .M02_AXI_arsize(interconnect_S00_AXI_M02_AXI_ARSIZE),
        .M02_AXI_aruser(interconnect_S00_AXI_M02_AXI_ARUSER),
        .M02_AXI_arvalid(interconnect_S00_AXI_M02_AXI_ARVALID),
        .M02_AXI_awaddr(interconnect_S00_AXI_M02_AXI_AWADDR),
        .M02_AXI_awburst(interconnect_S00_AXI_M02_AXI_AWBURST),
        .M02_AXI_awcache(interconnect_S00_AXI_M02_AXI_AWCACHE),
        .M02_AXI_awid(interconnect_S00_AXI_M02_AXI_AWID),
        .M02_AXI_awlen(interconnect_S00_AXI_M02_AXI_AWLEN),
        .M02_AXI_awlock(interconnect_S00_AXI_M02_AXI_AWLOCK),
        .M02_AXI_awprot(interconnect_S00_AXI_M02_AXI_AWPROT),
        .M02_AXI_awqos(interconnect_S00_AXI_M02_AXI_AWQOS),
        .M02_AXI_awready(interconnect_S00_AXI_M02_AXI_AWREADY),
        .M02_AXI_awsize(interconnect_S00_AXI_M02_AXI_AWSIZE),
        .M02_AXI_awuser(interconnect_S00_AXI_M02_AXI_AWUSER),
        .M02_AXI_awvalid(interconnect_S00_AXI_M02_AXI_AWVALID),
        .M02_AXI_bid(interconnect_S00_AXI_M02_AXI_BID),
        .M02_AXI_bready(interconnect_S00_AXI_M02_AXI_BREADY),
        .M02_AXI_bresp(interconnect_S00_AXI_M02_AXI_BRESP),
        .M02_AXI_buser(interconnect_S00_AXI_M02_AXI_BUSER),
        .M02_AXI_bvalid(interconnect_S00_AXI_M02_AXI_BVALID),
        .M02_AXI_rdata(interconnect_S00_AXI_M02_AXI_RDATA),
        .M02_AXI_rid(interconnect_S00_AXI_M02_AXI_RID),
        .M02_AXI_rlast(interconnect_S00_AXI_M02_AXI_RLAST),
        .M02_AXI_rready(interconnect_S00_AXI_M02_AXI_RREADY),
        .M02_AXI_rresp(interconnect_S00_AXI_M02_AXI_RRESP),
        .M02_AXI_ruser(interconnect_S00_AXI_M02_AXI_RUSER),
        .M02_AXI_rvalid(interconnect_S00_AXI_M02_AXI_RVALID),
        .M02_AXI_wdata(interconnect_S00_AXI_M02_AXI_WDATA),
        .M02_AXI_wlast(interconnect_S00_AXI_M02_AXI_WLAST),
        .M02_AXI_wready(interconnect_S00_AXI_M02_AXI_WREADY),
        .M02_AXI_wstrb(interconnect_S00_AXI_M02_AXI_WSTRB),
        .M02_AXI_wuser(interconnect_S00_AXI_M02_AXI_WUSER),
        .M02_AXI_wvalid(interconnect_S00_AXI_M02_AXI_WVALID),
        .M03_AXI_araddr(interconnect_S00_AXI_M03_AXI_ARADDR),
        .M03_AXI_arburst(interconnect_S00_AXI_M03_AXI_ARBURST),
        .M03_AXI_arcache(interconnect_S00_AXI_M03_AXI_ARCACHE),
        .M03_AXI_arid(interconnect_S00_AXI_M03_AXI_ARID),
        .M03_AXI_arlen(interconnect_S00_AXI_M03_AXI_ARLEN),
        .M03_AXI_arlock(interconnect_S00_AXI_M03_AXI_ARLOCK),
        .M03_AXI_arprot(interconnect_S00_AXI_M03_AXI_ARPROT),
        .M03_AXI_arqos(interconnect_S00_AXI_M03_AXI_ARQOS),
        .M03_AXI_arready(interconnect_S00_AXI_M03_AXI_ARREADY),
        .M03_AXI_arsize(interconnect_S00_AXI_M03_AXI_ARSIZE),
        .M03_AXI_aruser(interconnect_S00_AXI_M03_AXI_ARUSER),
        .M03_AXI_arvalid(interconnect_S00_AXI_M03_AXI_ARVALID),
        .M03_AXI_awaddr(interconnect_S00_AXI_M03_AXI_AWADDR),
        .M03_AXI_awburst(interconnect_S00_AXI_M03_AXI_AWBURST),
        .M03_AXI_awcache(interconnect_S00_AXI_M03_AXI_AWCACHE),
        .M03_AXI_awid(interconnect_S00_AXI_M03_AXI_AWID),
        .M03_AXI_awlen(interconnect_S00_AXI_M03_AXI_AWLEN),
        .M03_AXI_awlock(interconnect_S00_AXI_M03_AXI_AWLOCK),
        .M03_AXI_awprot(interconnect_S00_AXI_M03_AXI_AWPROT),
        .M03_AXI_awqos(interconnect_S00_AXI_M03_AXI_AWQOS),
        .M03_AXI_awready(interconnect_S00_AXI_M03_AXI_AWREADY),
        .M03_AXI_awsize(interconnect_S00_AXI_M03_AXI_AWSIZE),
        .M03_AXI_awuser(interconnect_S00_AXI_M03_AXI_AWUSER),
        .M03_AXI_awvalid(interconnect_S00_AXI_M03_AXI_AWVALID),
        .M03_AXI_bid(interconnect_S00_AXI_M03_AXI_BID),
        .M03_AXI_bready(interconnect_S00_AXI_M03_AXI_BREADY),
        .M03_AXI_bresp(interconnect_S00_AXI_M03_AXI_BRESP),
        .M03_AXI_buser(interconnect_S00_AXI_M03_AXI_BUSER),
        .M03_AXI_bvalid(interconnect_S00_AXI_M03_AXI_BVALID),
        .M03_AXI_rdata(interconnect_S00_AXI_M03_AXI_RDATA),
        .M03_AXI_rid(interconnect_S00_AXI_M03_AXI_RID),
        .M03_AXI_rlast(interconnect_S00_AXI_M03_AXI_RLAST),
        .M03_AXI_rready(interconnect_S00_AXI_M03_AXI_RREADY),
        .M03_AXI_rresp(interconnect_S00_AXI_M03_AXI_RRESP),
        .M03_AXI_ruser(interconnect_S00_AXI_M03_AXI_RUSER),
        .M03_AXI_rvalid(interconnect_S00_AXI_M03_AXI_RVALID),
        .M03_AXI_wdata(interconnect_S00_AXI_M03_AXI_WDATA),
        .M03_AXI_wlast(interconnect_S00_AXI_M03_AXI_WLAST),
        .M03_AXI_wready(interconnect_S00_AXI_M03_AXI_WREADY),
        .M03_AXI_wstrb(interconnect_S00_AXI_M03_AXI_WSTRB),
        .M03_AXI_wuser(interconnect_S00_AXI_M03_AXI_WUSER),
        .M03_AXI_wvalid(interconnect_S00_AXI_M03_AXI_WVALID),
        .M04_AXI_araddr(interconnect_S00_AXI_M04_AXI_ARADDR),
        .M04_AXI_arburst(interconnect_S00_AXI_M04_AXI_ARBURST),
        .M04_AXI_arcache(interconnect_S00_AXI_M04_AXI_ARCACHE),
        .M04_AXI_arid(interconnect_S00_AXI_M04_AXI_ARID),
        .M04_AXI_arlen(interconnect_S00_AXI_M04_AXI_ARLEN),
        .M04_AXI_arlock(interconnect_S00_AXI_M04_AXI_ARLOCK),
        .M04_AXI_arprot(interconnect_S00_AXI_M04_AXI_ARPROT),
        .M04_AXI_arqos(interconnect_S00_AXI_M04_AXI_ARQOS),
        .M04_AXI_arready(interconnect_S00_AXI_M04_AXI_ARREADY),
        .M04_AXI_arsize(interconnect_S00_AXI_M04_AXI_ARSIZE),
        .M04_AXI_aruser(interconnect_S00_AXI_M04_AXI_ARUSER),
        .M04_AXI_arvalid(interconnect_S00_AXI_M04_AXI_ARVALID),
        .M04_AXI_awaddr(interconnect_S00_AXI_M04_AXI_AWADDR),
        .M04_AXI_awburst(interconnect_S00_AXI_M04_AXI_AWBURST),
        .M04_AXI_awcache(interconnect_S00_AXI_M04_AXI_AWCACHE),
        .M04_AXI_awid(interconnect_S00_AXI_M04_AXI_AWID),
        .M04_AXI_awlen(interconnect_S00_AXI_M04_AXI_AWLEN),
        .M04_AXI_awlock(interconnect_S00_AXI_M04_AXI_AWLOCK),
        .M04_AXI_awprot(interconnect_S00_AXI_M04_AXI_AWPROT),
        .M04_AXI_awqos(interconnect_S00_AXI_M04_AXI_AWQOS),
        .M04_AXI_awready(interconnect_S00_AXI_M04_AXI_AWREADY),
        .M04_AXI_awsize(interconnect_S00_AXI_M04_AXI_AWSIZE),
        .M04_AXI_awuser(interconnect_S00_AXI_M04_AXI_AWUSER),
        .M04_AXI_awvalid(interconnect_S00_AXI_M04_AXI_AWVALID),
        .M04_AXI_bid(interconnect_S00_AXI_M04_AXI_BID),
        .M04_AXI_bready(interconnect_S00_AXI_M04_AXI_BREADY),
        .M04_AXI_bresp(interconnect_S00_AXI_M04_AXI_BRESP),
        .M04_AXI_buser(interconnect_S00_AXI_M04_AXI_BUSER),
        .M04_AXI_bvalid(interconnect_S00_AXI_M04_AXI_BVALID),
        .M04_AXI_rdata(interconnect_S00_AXI_M04_AXI_RDATA),
        .M04_AXI_rid(interconnect_S00_AXI_M04_AXI_RID),
        .M04_AXI_rlast(interconnect_S00_AXI_M04_AXI_RLAST),
        .M04_AXI_rready(interconnect_S00_AXI_M04_AXI_RREADY),
        .M04_AXI_rresp(interconnect_S00_AXI_M04_AXI_RRESP),
        .M04_AXI_ruser(interconnect_S00_AXI_M04_AXI_RUSER),
        .M04_AXI_rvalid(interconnect_S00_AXI_M04_AXI_RVALID),
        .M04_AXI_wdata(interconnect_S00_AXI_M04_AXI_WDATA),
        .M04_AXI_wlast(interconnect_S00_AXI_M04_AXI_WLAST),
        .M04_AXI_wready(interconnect_S00_AXI_M04_AXI_WREADY),
        .M04_AXI_wstrb(interconnect_S00_AXI_M04_AXI_WSTRB),
        .M04_AXI_wuser(interconnect_S00_AXI_M04_AXI_WUSER),
        .M04_AXI_wvalid(interconnect_S00_AXI_M04_AXI_WVALID),
        .M05_AXI_araddr(interconnect_S00_AXI_M05_AXI_ARADDR),
        .M05_AXI_arburst(interconnect_S00_AXI_M05_AXI_ARBURST),
        .M05_AXI_arcache(interconnect_S00_AXI_M05_AXI_ARCACHE),
        .M05_AXI_arid(interconnect_S00_AXI_M05_AXI_ARID),
        .M05_AXI_arlen(interconnect_S00_AXI_M05_AXI_ARLEN),
        .M05_AXI_arlock(interconnect_S00_AXI_M05_AXI_ARLOCK),
        .M05_AXI_arprot(interconnect_S00_AXI_M05_AXI_ARPROT),
        .M05_AXI_arqos(interconnect_S00_AXI_M05_AXI_ARQOS),
        .M05_AXI_arready(interconnect_S00_AXI_M05_AXI_ARREADY),
        .M05_AXI_arsize(interconnect_S00_AXI_M05_AXI_ARSIZE),
        .M05_AXI_aruser(interconnect_S00_AXI_M05_AXI_ARUSER),
        .M05_AXI_arvalid(interconnect_S00_AXI_M05_AXI_ARVALID),
        .M05_AXI_awaddr(interconnect_S00_AXI_M05_AXI_AWADDR),
        .M05_AXI_awburst(interconnect_S00_AXI_M05_AXI_AWBURST),
        .M05_AXI_awcache(interconnect_S00_AXI_M05_AXI_AWCACHE),
        .M05_AXI_awid(interconnect_S00_AXI_M05_AXI_AWID),
        .M05_AXI_awlen(interconnect_S00_AXI_M05_AXI_AWLEN),
        .M05_AXI_awlock(interconnect_S00_AXI_M05_AXI_AWLOCK),
        .M05_AXI_awprot(interconnect_S00_AXI_M05_AXI_AWPROT),
        .M05_AXI_awqos(interconnect_S00_AXI_M05_AXI_AWQOS),
        .M05_AXI_awready(interconnect_S00_AXI_M05_AXI_AWREADY),
        .M05_AXI_awsize(interconnect_S00_AXI_M05_AXI_AWSIZE),
        .M05_AXI_awuser(interconnect_S00_AXI_M05_AXI_AWUSER),
        .M05_AXI_awvalid(interconnect_S00_AXI_M05_AXI_AWVALID),
        .M05_AXI_bid(interconnect_S00_AXI_M05_AXI_BID),
        .M05_AXI_bready(interconnect_S00_AXI_M05_AXI_BREADY),
        .M05_AXI_bresp(interconnect_S00_AXI_M05_AXI_BRESP),
        .M05_AXI_buser(interconnect_S00_AXI_M05_AXI_BUSER),
        .M05_AXI_bvalid(interconnect_S00_AXI_M05_AXI_BVALID),
        .M05_AXI_rdata(interconnect_S00_AXI_M05_AXI_RDATA),
        .M05_AXI_rid(interconnect_S00_AXI_M05_AXI_RID),
        .M05_AXI_rlast(interconnect_S00_AXI_M05_AXI_RLAST),
        .M05_AXI_rready(interconnect_S00_AXI_M05_AXI_RREADY),
        .M05_AXI_rresp(interconnect_S00_AXI_M05_AXI_RRESP),
        .M05_AXI_ruser(interconnect_S00_AXI_M05_AXI_RUSER),
        .M05_AXI_rvalid(interconnect_S00_AXI_M05_AXI_RVALID),
        .M05_AXI_wdata(interconnect_S00_AXI_M05_AXI_WDATA),
        .M05_AXI_wlast(interconnect_S00_AXI_M05_AXI_WLAST),
        .M05_AXI_wready(interconnect_S00_AXI_M05_AXI_WREADY),
        .M05_AXI_wstrb(interconnect_S00_AXI_M05_AXI_WSTRB),
        .M05_AXI_wuser(interconnect_S00_AXI_M05_AXI_WUSER),
        .M05_AXI_wvalid(interconnect_S00_AXI_M05_AXI_WVALID),
        .M06_AXI_araddr(interconnect_S00_AXI_M06_AXI_ARADDR),
        .M06_AXI_arburst(interconnect_S00_AXI_M06_AXI_ARBURST),
        .M06_AXI_arcache(interconnect_S00_AXI_M06_AXI_ARCACHE),
        .M06_AXI_arid(interconnect_S00_AXI_M06_AXI_ARID),
        .M06_AXI_arlen(interconnect_S00_AXI_M06_AXI_ARLEN),
        .M06_AXI_arlock(interconnect_S00_AXI_M06_AXI_ARLOCK),
        .M06_AXI_arprot(interconnect_S00_AXI_M06_AXI_ARPROT),
        .M06_AXI_arqos(interconnect_S00_AXI_M06_AXI_ARQOS),
        .M06_AXI_arready(interconnect_S00_AXI_M06_AXI_ARREADY),
        .M06_AXI_arsize(interconnect_S00_AXI_M06_AXI_ARSIZE),
        .M06_AXI_aruser(interconnect_S00_AXI_M06_AXI_ARUSER),
        .M06_AXI_arvalid(interconnect_S00_AXI_M06_AXI_ARVALID),
        .M06_AXI_awaddr(interconnect_S00_AXI_M06_AXI_AWADDR),
        .M06_AXI_awburst(interconnect_S00_AXI_M06_AXI_AWBURST),
        .M06_AXI_awcache(interconnect_S00_AXI_M06_AXI_AWCACHE),
        .M06_AXI_awid(interconnect_S00_AXI_M06_AXI_AWID),
        .M06_AXI_awlen(interconnect_S00_AXI_M06_AXI_AWLEN),
        .M06_AXI_awlock(interconnect_S00_AXI_M06_AXI_AWLOCK),
        .M06_AXI_awprot(interconnect_S00_AXI_M06_AXI_AWPROT),
        .M06_AXI_awqos(interconnect_S00_AXI_M06_AXI_AWQOS),
        .M06_AXI_awready(interconnect_S00_AXI_M06_AXI_AWREADY),
        .M06_AXI_awsize(interconnect_S00_AXI_M06_AXI_AWSIZE),
        .M06_AXI_awuser(interconnect_S00_AXI_M06_AXI_AWUSER),
        .M06_AXI_awvalid(interconnect_S00_AXI_M06_AXI_AWVALID),
        .M06_AXI_bid(interconnect_S00_AXI_M06_AXI_BID),
        .M06_AXI_bready(interconnect_S00_AXI_M06_AXI_BREADY),
        .M06_AXI_bresp(interconnect_S00_AXI_M06_AXI_BRESP),
        .M06_AXI_buser(interconnect_S00_AXI_M06_AXI_BUSER),
        .M06_AXI_bvalid(interconnect_S00_AXI_M06_AXI_BVALID),
        .M06_AXI_rdata(interconnect_S00_AXI_M06_AXI_RDATA),
        .M06_AXI_rid(interconnect_S00_AXI_M06_AXI_RID),
        .M06_AXI_rlast(interconnect_S00_AXI_M06_AXI_RLAST),
        .M06_AXI_rready(interconnect_S00_AXI_M06_AXI_RREADY),
        .M06_AXI_rresp(interconnect_S00_AXI_M06_AXI_RRESP),
        .M06_AXI_ruser(interconnect_S00_AXI_M06_AXI_RUSER),
        .M06_AXI_rvalid(interconnect_S00_AXI_M06_AXI_RVALID),
        .M06_AXI_wdata(interconnect_S00_AXI_M06_AXI_WDATA),
        .M06_AXI_wlast(interconnect_S00_AXI_M06_AXI_WLAST),
        .M06_AXI_wready(interconnect_S00_AXI_M06_AXI_WREADY),
        .M06_AXI_wstrb(interconnect_S00_AXI_M06_AXI_WSTRB),
        .M06_AXI_wuser(interconnect_S00_AXI_M06_AXI_WUSER),
        .M06_AXI_wvalid(interconnect_S00_AXI_M06_AXI_WVALID),
        .S00_AXI_araddr(vip_S00_AXI_M_AXI_ARADDR),
        .S00_AXI_arburst({1'b0,1'b1}),
        .S00_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S00_AXI_arid(vip_S00_AXI_M_AXI_ARID),
        .S00_AXI_arlen(vip_S00_AXI_M_AXI_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(vip_S00_AXI_M_AXI_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(vip_S00_AXI_M_AXI_ARREADY),
        .S00_AXI_arsize({1'b1,1'b1,1'b0}),
        .S00_AXI_arvalid(vip_S00_AXI_M_AXI_ARVALID),
        .S00_AXI_awaddr(vip_S00_AXI_M_AXI_AWADDR),
        .S00_AXI_awburst({1'b0,1'b1}),
        .S00_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S00_AXI_awid(vip_S00_AXI_M_AXI_AWID),
        .S00_AXI_awlen(vip_S00_AXI_M_AXI_AWLEN),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot(vip_S00_AXI_M_AXI_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(vip_S00_AXI_M_AXI_AWREADY),
        .S00_AXI_awsize({1'b1,1'b1,1'b0}),
        .S00_AXI_awvalid(vip_S00_AXI_M_AXI_AWVALID),
        .S00_AXI_bid(vip_S00_AXI_M_AXI_BID),
        .S00_AXI_bready(vip_S00_AXI_M_AXI_BREADY),
        .S00_AXI_bresp(vip_S00_AXI_M_AXI_BRESP),
        .S00_AXI_bvalid(vip_S00_AXI_M_AXI_BVALID),
        .S00_AXI_rdata(vip_S00_AXI_M_AXI_RDATA),
        .S00_AXI_rid(vip_S00_AXI_M_AXI_RID),
        .S00_AXI_rlast(vip_S00_AXI_M_AXI_RLAST),
        .S00_AXI_rready(vip_S00_AXI_M_AXI_RREADY),
        .S00_AXI_rresp(vip_S00_AXI_M_AXI_RRESP),
        .S00_AXI_rvalid(vip_S00_AXI_M_AXI_RVALID),
        .S00_AXI_wdata(vip_S00_AXI_M_AXI_WDATA),
        .S00_AXI_wlast(vip_S00_AXI_M_AXI_WLAST),
        .S00_AXI_wready(vip_S00_AXI_M_AXI_WREADY),
        .S00_AXI_wstrb(vip_S00_AXI_M_AXI_WSTRB),
        .S00_AXI_wvalid(vip_S00_AXI_M_AXI_WVALID),
        .aclk(aclk_1),
        .aresetn(psr_aclk_SLR0_interconnect_aresetn));
  bd_3329_vip_S00_AXI_0 vip_s00_axi
       (.aclk(aclk_1),
        .aresetn(psr_aclk_SLR0_interconnect_aresetn),
        .m_axi_araddr(vip_S00_AXI_M_AXI_ARADDR),
        .m_axi_arid(vip_S00_AXI_M_AXI_ARID),
        .m_axi_arlen(vip_S00_AXI_M_AXI_ARLEN),
        .m_axi_arprot(vip_S00_AXI_M_AXI_ARPROT),
        .m_axi_arready(vip_S00_AXI_M_AXI_ARREADY),
        .m_axi_arvalid(vip_S00_AXI_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S00_AXI_M_AXI_AWADDR),
        .m_axi_awid(vip_S00_AXI_M_AXI_AWID),
        .m_axi_awlen(vip_S00_AXI_M_AXI_AWLEN),
        .m_axi_awprot(vip_S00_AXI_M_AXI_AWPROT),
        .m_axi_awready(vip_S00_AXI_M_AXI_AWREADY),
        .m_axi_awvalid(vip_S00_AXI_M_AXI_AWVALID),
        .m_axi_bid(vip_S00_AXI_M_AXI_BID),
        .m_axi_bready(vip_S00_AXI_M_AXI_BREADY),
        .m_axi_bresp(vip_S00_AXI_M_AXI_BRESP),
        .m_axi_bvalid(vip_S00_AXI_M_AXI_BVALID),
        .m_axi_rdata(vip_S00_AXI_M_AXI_RDATA),
        .m_axi_rid(vip_S00_AXI_M_AXI_RID),
        .m_axi_rlast(vip_S00_AXI_M_AXI_RLAST),
        .m_axi_rready(vip_S00_AXI_M_AXI_RREADY),
        .m_axi_rresp(vip_S00_AXI_M_AXI_RRESP),
        .m_axi_rvalid(vip_S00_AXI_M_AXI_RVALID),
        .m_axi_wdata(vip_S00_AXI_M_AXI_WDATA),
        .m_axi_wlast(vip_S00_AXI_M_AXI_WLAST),
        .m_axi_wready(vip_S00_AXI_M_AXI_WREADY),
        .m_axi_wstrb(vip_S00_AXI_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S00_AXI_M_AXI_WVALID),
        .s_axi_araddr(S00_AXI_1_ARADDR),
        .s_axi_arid(S00_AXI_1_ARID),
        .s_axi_arlen(S00_AXI_1_ARLEN),
        .s_axi_arprot(S00_AXI_1_ARPROT),
        .s_axi_arready(S00_AXI_1_ARREADY),
        .s_axi_arregion(S00_AXI_1_ARREGION),
        .s_axi_arvalid(S00_AXI_1_ARVALID),
        .s_axi_awaddr(S00_AXI_1_AWADDR),
        .s_axi_awid(S00_AXI_1_AWID),
        .s_axi_awlen(S00_AXI_1_AWLEN),
        .s_axi_awprot(S00_AXI_1_AWPROT),
        .s_axi_awready(S00_AXI_1_AWREADY),
        .s_axi_awregion(S00_AXI_1_AWREGION),
        .s_axi_awvalid(S00_AXI_1_AWVALID),
        .s_axi_bid(S00_AXI_1_BID),
        .s_axi_bready(S00_AXI_1_BREADY),
        .s_axi_bresp(S00_AXI_1_BRESP),
        .s_axi_bvalid(S00_AXI_1_BVALID),
        .s_axi_rdata(S00_AXI_1_RDATA),
        .s_axi_rid(S00_AXI_1_RID),
        .s_axi_rlast(S00_AXI_1_RLAST),
        .s_axi_rready(S00_AXI_1_RREADY),
        .s_axi_rresp(S00_AXI_1_RRESP),
        .s_axi_rvalid(S00_AXI_1_RVALID),
        .s_axi_wdata(S00_AXI_1_WDATA),
        .s_axi_wlast(S00_AXI_1_WLAST),
        .s_axi_wready(S00_AXI_1_WREADY),
        .s_axi_wstrb(S00_AXI_1_WSTRB),
        .s_axi_wvalid(S00_AXI_1_WVALID));
endmodule

module memory_imp_AMH3FI
   (S_AXI1_araddr,
    S_AXI1_arburst,
    S_AXI1_arcache,
    S_AXI1_arlen,
    S_AXI1_arlock,
    S_AXI1_arprot,
    S_AXI1_arqos,
    S_AXI1_arready,
    S_AXI1_arvalid,
    S_AXI1_awaddr,
    S_AXI1_awburst,
    S_AXI1_awcache,
    S_AXI1_awlen,
    S_AXI1_awlock,
    S_AXI1_awprot,
    S_AXI1_awqos,
    S_AXI1_awready,
    S_AXI1_awvalid,
    S_AXI1_bready,
    S_AXI1_bresp,
    S_AXI1_bvalid,
    S_AXI1_rdata,
    S_AXI1_rlast,
    S_AXI1_rready,
    S_AXI1_rresp,
    S_AXI1_rvalid,
    S_AXI1_wdata,
    S_AXI1_wlast,
    S_AXI1_wready,
    S_AXI1_wstrb,
    S_AXI1_wvalid,
    S_AXI2_araddr,
    S_AXI2_arburst,
    S_AXI2_arcache,
    S_AXI2_arlen,
    S_AXI2_arlock,
    S_AXI2_arprot,
    S_AXI2_arqos,
    S_AXI2_arready,
    S_AXI2_arvalid,
    S_AXI2_awaddr,
    S_AXI2_awburst,
    S_AXI2_awcache,
    S_AXI2_awlen,
    S_AXI2_awlock,
    S_AXI2_awprot,
    S_AXI2_awqos,
    S_AXI2_awready,
    S_AXI2_awvalid,
    S_AXI2_bready,
    S_AXI2_bresp,
    S_AXI2_bvalid,
    S_AXI2_rdata,
    S_AXI2_rlast,
    S_AXI2_rready,
    S_AXI2_rresp,
    S_AXI2_rvalid,
    S_AXI2_wdata,
    S_AXI2_wlast,
    S_AXI2_wready,
    S_AXI2_wstrb,
    S_AXI2_wvalid,
    S_AXI3_araddr,
    S_AXI3_arburst,
    S_AXI3_arcache,
    S_AXI3_arlen,
    S_AXI3_arlock,
    S_AXI3_arprot,
    S_AXI3_arqos,
    S_AXI3_arready,
    S_AXI3_arvalid,
    S_AXI3_awaddr,
    S_AXI3_awburst,
    S_AXI3_awcache,
    S_AXI3_awlen,
    S_AXI3_awlock,
    S_AXI3_awprot,
    S_AXI3_awqos,
    S_AXI3_awready,
    S_AXI3_awvalid,
    S_AXI3_bready,
    S_AXI3_bresp,
    S_AXI3_bvalid,
    S_AXI3_rdata,
    S_AXI3_rlast,
    S_AXI3_rready,
    S_AXI3_rresp,
    S_AXI3_rvalid,
    S_AXI3_wdata,
    S_AXI3_wlast,
    S_AXI3_wready,
    S_AXI3_wstrb,
    S_AXI3_wvalid,
    S_AXI4_araddr,
    S_AXI4_arburst,
    S_AXI4_arcache,
    S_AXI4_arlen,
    S_AXI4_arlock,
    S_AXI4_arprot,
    S_AXI4_arqos,
    S_AXI4_arready,
    S_AXI4_arvalid,
    S_AXI4_awaddr,
    S_AXI4_awburst,
    S_AXI4_awcache,
    S_AXI4_awlen,
    S_AXI4_awlock,
    S_AXI4_awprot,
    S_AXI4_awqos,
    S_AXI4_awready,
    S_AXI4_awvalid,
    S_AXI4_bready,
    S_AXI4_bresp,
    S_AXI4_bvalid,
    S_AXI4_rdata,
    S_AXI4_rlast,
    S_AXI4_rready,
    S_AXI4_rresp,
    S_AXI4_rvalid,
    S_AXI4_wdata,
    S_AXI4_wlast,
    S_AXI4_wready,
    S_AXI4_wstrb,
    S_AXI4_wvalid,
    S_AXI5_araddr,
    S_AXI5_arburst,
    S_AXI5_arcache,
    S_AXI5_arlen,
    S_AXI5_arlock,
    S_AXI5_arprot,
    S_AXI5_arqos,
    S_AXI5_arready,
    S_AXI5_arvalid,
    S_AXI5_awaddr,
    S_AXI5_awburst,
    S_AXI5_awcache,
    S_AXI5_awlen,
    S_AXI5_awlock,
    S_AXI5_awprot,
    S_AXI5_awqos,
    S_AXI5_awready,
    S_AXI5_awvalid,
    S_AXI5_bready,
    S_AXI5_bresp,
    S_AXI5_bvalid,
    S_AXI5_rdata,
    S_AXI5_rlast,
    S_AXI5_rready,
    S_AXI5_rresp,
    S_AXI5_rvalid,
    S_AXI5_wdata,
    S_AXI5_wlast,
    S_AXI5_wready,
    S_AXI5_wstrb,
    S_AXI5_wvalid,
    S_AXI6_araddr,
    S_AXI6_arburst,
    S_AXI6_arcache,
    S_AXI6_arlen,
    S_AXI6_arlock,
    S_AXI6_arprot,
    S_AXI6_arqos,
    S_AXI6_arready,
    S_AXI6_arvalid,
    S_AXI6_awaddr,
    S_AXI6_awburst,
    S_AXI6_awcache,
    S_AXI6_awlen,
    S_AXI6_awlock,
    S_AXI6_awprot,
    S_AXI6_awqos,
    S_AXI6_awready,
    S_AXI6_awvalid,
    S_AXI6_bready,
    S_AXI6_bresp,
    S_AXI6_bvalid,
    S_AXI6_rdata,
    S_AXI6_rlast,
    S_AXI6_rready,
    S_AXI6_rresp,
    S_AXI6_rvalid,
    S_AXI6_wdata,
    S_AXI6_wlast,
    S_AXI6_wready,
    S_AXI6_wstrb,
    S_AXI6_wvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
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
    S_AXI_wvalid,
    aclk,
    aclk1,
    aresetn,
    aresetn1,
    aresetn2,
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
  input [63:0]S_AXI1_araddr;
  input [1:0]S_AXI1_arburst;
  input [3:0]S_AXI1_arcache;
  input [7:0]S_AXI1_arlen;
  input [0:0]S_AXI1_arlock;
  input [2:0]S_AXI1_arprot;
  input [3:0]S_AXI1_arqos;
  output S_AXI1_arready;
  input S_AXI1_arvalid;
  input [63:0]S_AXI1_awaddr;
  input [1:0]S_AXI1_awburst;
  input [3:0]S_AXI1_awcache;
  input [7:0]S_AXI1_awlen;
  input [0:0]S_AXI1_awlock;
  input [2:0]S_AXI1_awprot;
  input [3:0]S_AXI1_awqos;
  output S_AXI1_awready;
  input S_AXI1_awvalid;
  input S_AXI1_bready;
  output [1:0]S_AXI1_bresp;
  output S_AXI1_bvalid;
  output [511:0]S_AXI1_rdata;
  output S_AXI1_rlast;
  input S_AXI1_rready;
  output [1:0]S_AXI1_rresp;
  output S_AXI1_rvalid;
  input [511:0]S_AXI1_wdata;
  input S_AXI1_wlast;
  output S_AXI1_wready;
  input [63:0]S_AXI1_wstrb;
  input S_AXI1_wvalid;
  input [63:0]S_AXI2_araddr;
  input [1:0]S_AXI2_arburst;
  input [3:0]S_AXI2_arcache;
  input [7:0]S_AXI2_arlen;
  input [0:0]S_AXI2_arlock;
  input [2:0]S_AXI2_arprot;
  input [3:0]S_AXI2_arqos;
  output S_AXI2_arready;
  input S_AXI2_arvalid;
  input [63:0]S_AXI2_awaddr;
  input [1:0]S_AXI2_awburst;
  input [3:0]S_AXI2_awcache;
  input [7:0]S_AXI2_awlen;
  input [0:0]S_AXI2_awlock;
  input [2:0]S_AXI2_awprot;
  input [3:0]S_AXI2_awqos;
  output S_AXI2_awready;
  input S_AXI2_awvalid;
  input S_AXI2_bready;
  output [1:0]S_AXI2_bresp;
  output S_AXI2_bvalid;
  output [511:0]S_AXI2_rdata;
  output S_AXI2_rlast;
  input S_AXI2_rready;
  output [1:0]S_AXI2_rresp;
  output S_AXI2_rvalid;
  input [511:0]S_AXI2_wdata;
  input S_AXI2_wlast;
  output S_AXI2_wready;
  input [63:0]S_AXI2_wstrb;
  input S_AXI2_wvalid;
  input [63:0]S_AXI3_araddr;
  input [1:0]S_AXI3_arburst;
  input [3:0]S_AXI3_arcache;
  input [7:0]S_AXI3_arlen;
  input [0:0]S_AXI3_arlock;
  input [2:0]S_AXI3_arprot;
  input [3:0]S_AXI3_arqos;
  output S_AXI3_arready;
  input S_AXI3_arvalid;
  input [63:0]S_AXI3_awaddr;
  input [1:0]S_AXI3_awburst;
  input [3:0]S_AXI3_awcache;
  input [7:0]S_AXI3_awlen;
  input [0:0]S_AXI3_awlock;
  input [2:0]S_AXI3_awprot;
  input [3:0]S_AXI3_awqos;
  output S_AXI3_awready;
  input S_AXI3_awvalid;
  input S_AXI3_bready;
  output [1:0]S_AXI3_bresp;
  output S_AXI3_bvalid;
  output [511:0]S_AXI3_rdata;
  output S_AXI3_rlast;
  input S_AXI3_rready;
  output [1:0]S_AXI3_rresp;
  output S_AXI3_rvalid;
  input [511:0]S_AXI3_wdata;
  input S_AXI3_wlast;
  output S_AXI3_wready;
  input [63:0]S_AXI3_wstrb;
  input S_AXI3_wvalid;
  input [16:0]S_AXI4_araddr;
  input [1:0]S_AXI4_arburst;
  input [3:0]S_AXI4_arcache;
  input [7:0]S_AXI4_arlen;
  input [0:0]S_AXI4_arlock;
  input [2:0]S_AXI4_arprot;
  input [3:0]S_AXI4_arqos;
  output S_AXI4_arready;
  input S_AXI4_arvalid;
  input [16:0]S_AXI4_awaddr;
  input [1:0]S_AXI4_awburst;
  input [3:0]S_AXI4_awcache;
  input [7:0]S_AXI4_awlen;
  input [0:0]S_AXI4_awlock;
  input [2:0]S_AXI4_awprot;
  input [3:0]S_AXI4_awqos;
  output S_AXI4_awready;
  input S_AXI4_awvalid;
  input S_AXI4_bready;
  output [1:0]S_AXI4_bresp;
  output S_AXI4_bvalid;
  output [511:0]S_AXI4_rdata;
  output S_AXI4_rlast;
  input S_AXI4_rready;
  output [1:0]S_AXI4_rresp;
  output S_AXI4_rvalid;
  input [511:0]S_AXI4_wdata;
  input S_AXI4_wlast;
  output S_AXI4_wready;
  input [63:0]S_AXI4_wstrb;
  input S_AXI4_wvalid;
  input [16:0]S_AXI5_araddr;
  input [1:0]S_AXI5_arburst;
  input [3:0]S_AXI5_arcache;
  input [7:0]S_AXI5_arlen;
  input [0:0]S_AXI5_arlock;
  input [2:0]S_AXI5_arprot;
  input [3:0]S_AXI5_arqos;
  output S_AXI5_arready;
  input S_AXI5_arvalid;
  input [16:0]S_AXI5_awaddr;
  input [1:0]S_AXI5_awburst;
  input [3:0]S_AXI5_awcache;
  input [7:0]S_AXI5_awlen;
  input [0:0]S_AXI5_awlock;
  input [2:0]S_AXI5_awprot;
  input [3:0]S_AXI5_awqos;
  output S_AXI5_awready;
  input S_AXI5_awvalid;
  input S_AXI5_bready;
  output [1:0]S_AXI5_bresp;
  output S_AXI5_bvalid;
  output [511:0]S_AXI5_rdata;
  output S_AXI5_rlast;
  input S_AXI5_rready;
  output [1:0]S_AXI5_rresp;
  output S_AXI5_rvalid;
  input [511:0]S_AXI5_wdata;
  input S_AXI5_wlast;
  output S_AXI5_wready;
  input [63:0]S_AXI5_wstrb;
  input S_AXI5_wvalid;
  input [16:0]S_AXI6_araddr;
  input [1:0]S_AXI6_arburst;
  input [3:0]S_AXI6_arcache;
  input [7:0]S_AXI6_arlen;
  input [0:0]S_AXI6_arlock;
  input [2:0]S_AXI6_arprot;
  input [3:0]S_AXI6_arqos;
  output S_AXI6_arready;
  input S_AXI6_arvalid;
  input [16:0]S_AXI6_awaddr;
  input [1:0]S_AXI6_awburst;
  input [3:0]S_AXI6_awcache;
  input [7:0]S_AXI6_awlen;
  input [0:0]S_AXI6_awlock;
  input [2:0]S_AXI6_awprot;
  input [3:0]S_AXI6_awqos;
  output S_AXI6_awready;
  input S_AXI6_awvalid;
  input S_AXI6_bready;
  output [1:0]S_AXI6_bresp;
  output S_AXI6_bvalid;
  output [511:0]S_AXI6_rdata;
  output S_AXI6_rlast;
  input S_AXI6_rready;
  output [1:0]S_AXI6_rresp;
  output S_AXI6_rvalid;
  input [511:0]S_AXI6_wdata;
  input S_AXI6_wlast;
  output S_AXI6_wready;
  input [63:0]S_AXI6_wstrb;
  input S_AXI6_wvalid;
  input [63:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [63:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [511:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [511:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  output aclk;
  input aclk1;
  input aresetn;
  input aresetn1;
  input aresetn2;
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

  wire aclk_1;
  wire aws_clk_main_a0_out;
  wire aws_ddra_is_ready;
  wire aws_ddrb_is_ready;
  wire aws_ddrc_is_ready;
  wire aws_ddrd_is_ready;
  wire aws_rst_main_n_out;
  wire [3:0]calib_concat_dout;
  wire calib_reduce_Res;
  wire [63:0]interconnect_DDR4_MEM00_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM00_M00_AXI_ARLEN;
  wire [0:0]interconnect_DDR4_MEM00_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM00_M00_AXI_ARREADY;
  wire interconnect_DDR4_MEM00_M00_AXI_ARVALID;
  wire [63:0]interconnect_DDR4_MEM00_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM00_M00_AXI_AWLEN;
  wire [0:0]interconnect_DDR4_MEM00_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM00_M00_AXI_AWREADY;
  wire interconnect_DDR4_MEM00_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM00_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM00_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM00_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM00_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM00_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM00_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM00_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM00_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM00_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM00_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM00_M00_AXI_WVALID;
  wire [63:0]interconnect_DDR4_MEM01_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM01_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM01_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM01_M00_AXI_ARLEN;
  wire [0:0]interconnect_DDR4_MEM01_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM01_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM01_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM01_M00_AXI_ARREADY;
  wire interconnect_DDR4_MEM01_M00_AXI_ARVALID;
  wire [63:0]interconnect_DDR4_MEM01_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM01_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM01_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM01_M00_AXI_AWLEN;
  wire [0:0]interconnect_DDR4_MEM01_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM01_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM01_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM01_M00_AXI_AWREADY;
  wire interconnect_DDR4_MEM01_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM01_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM01_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM01_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM01_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM01_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM01_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM01_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM01_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM01_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM01_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM01_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM01_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM01_M00_AXI_WVALID;
  wire [63:0]interconnect_DDR4_MEM02_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM02_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM02_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM02_M00_AXI_ARLEN;
  wire [0:0]interconnect_DDR4_MEM02_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM02_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM02_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM02_M00_AXI_ARREADY;
  wire interconnect_DDR4_MEM02_M00_AXI_ARVALID;
  wire [63:0]interconnect_DDR4_MEM02_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM02_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM02_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM02_M00_AXI_AWLEN;
  wire [0:0]interconnect_DDR4_MEM02_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM02_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM02_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM02_M00_AXI_AWREADY;
  wire interconnect_DDR4_MEM02_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM02_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM02_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM02_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM02_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM02_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM02_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM02_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM02_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM02_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM02_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM02_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM02_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM02_M00_AXI_WVALID;
  wire [63:0]interconnect_DDR4_MEM03_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM03_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM03_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM03_M00_AXI_ARLEN;
  wire [0:0]interconnect_DDR4_MEM03_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM03_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM03_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM03_M00_AXI_ARREADY;
  wire interconnect_DDR4_MEM03_M00_AXI_ARVALID;
  wire [63:0]interconnect_DDR4_MEM03_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM03_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM03_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM03_M00_AXI_AWLEN;
  wire [0:0]interconnect_DDR4_MEM03_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM03_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM03_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM03_M00_AXI_AWREADY;
  wire interconnect_DDR4_MEM03_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM03_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM03_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM03_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM03_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM03_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM03_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM03_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM03_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM03_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM03_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM03_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM03_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM03_M00_AXI_WVALID;
  wire [16:0]interconnect_PLRAM_MEM00_M00_AXI_ARADDR;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_ARBURST;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_ARCACHE;
  wire [7:0]interconnect_PLRAM_MEM00_M00_AXI_ARLEN;
  wire [0:0]interconnect_PLRAM_MEM00_M00_AXI_ARLOCK;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_ARPROT;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_ARQOS;
  wire interconnect_PLRAM_MEM00_M00_AXI_ARREADY;
  wire interconnect_PLRAM_MEM00_M00_AXI_ARVALID;
  wire [16:0]interconnect_PLRAM_MEM00_M00_AXI_AWADDR;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_AWBURST;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_AWCACHE;
  wire [7:0]interconnect_PLRAM_MEM00_M00_AXI_AWLEN;
  wire [0:0]interconnect_PLRAM_MEM00_M00_AXI_AWLOCK;
  wire [2:0]interconnect_PLRAM_MEM00_M00_AXI_AWPROT;
  wire [3:0]interconnect_PLRAM_MEM00_M00_AXI_AWQOS;
  wire interconnect_PLRAM_MEM00_M00_AXI_AWREADY;
  wire interconnect_PLRAM_MEM00_M00_AXI_AWVALID;
  wire interconnect_PLRAM_MEM00_M00_AXI_BREADY;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_BRESP;
  wire interconnect_PLRAM_MEM00_M00_AXI_BVALID;
  wire [511:0]interconnect_PLRAM_MEM00_M00_AXI_RDATA;
  wire interconnect_PLRAM_MEM00_M00_AXI_RLAST;
  wire interconnect_PLRAM_MEM00_M00_AXI_RREADY;
  wire [1:0]interconnect_PLRAM_MEM00_M00_AXI_RRESP;
  wire interconnect_PLRAM_MEM00_M00_AXI_RVALID;
  wire [511:0]interconnect_PLRAM_MEM00_M00_AXI_WDATA;
  wire interconnect_PLRAM_MEM00_M00_AXI_WLAST;
  wire interconnect_PLRAM_MEM00_M00_AXI_WREADY;
  wire [63:0]interconnect_PLRAM_MEM00_M00_AXI_WSTRB;
  wire interconnect_PLRAM_MEM00_M00_AXI_WVALID;
  wire [16:0]interconnect_PLRAM_MEM01_M00_AXI_ARADDR;
  wire [1:0]interconnect_PLRAM_MEM01_M00_AXI_ARBURST;
  wire [3:0]interconnect_PLRAM_MEM01_M00_AXI_ARCACHE;
  wire [7:0]interconnect_PLRAM_MEM01_M00_AXI_ARLEN;
  wire [0:0]interconnect_PLRAM_MEM01_M00_AXI_ARLOCK;
  wire [2:0]interconnect_PLRAM_MEM01_M00_AXI_ARPROT;
  wire [3:0]interconnect_PLRAM_MEM01_M00_AXI_ARQOS;
  wire interconnect_PLRAM_MEM01_M00_AXI_ARREADY;
  wire interconnect_PLRAM_MEM01_M00_AXI_ARVALID;
  wire [16:0]interconnect_PLRAM_MEM01_M00_AXI_AWADDR;
  wire [1:0]interconnect_PLRAM_MEM01_M00_AXI_AWBURST;
  wire [3:0]interconnect_PLRAM_MEM01_M00_AXI_AWCACHE;
  wire [7:0]interconnect_PLRAM_MEM01_M00_AXI_AWLEN;
  wire [0:0]interconnect_PLRAM_MEM01_M00_AXI_AWLOCK;
  wire [2:0]interconnect_PLRAM_MEM01_M00_AXI_AWPROT;
  wire [3:0]interconnect_PLRAM_MEM01_M00_AXI_AWQOS;
  wire interconnect_PLRAM_MEM01_M00_AXI_AWREADY;
  wire interconnect_PLRAM_MEM01_M00_AXI_AWVALID;
  wire interconnect_PLRAM_MEM01_M00_AXI_BREADY;
  wire [1:0]interconnect_PLRAM_MEM01_M00_AXI_BRESP;
  wire interconnect_PLRAM_MEM01_M00_AXI_BVALID;
  wire [511:0]interconnect_PLRAM_MEM01_M00_AXI_RDATA;
  wire interconnect_PLRAM_MEM01_M00_AXI_RLAST;
  wire interconnect_PLRAM_MEM01_M00_AXI_RREADY;
  wire [1:0]interconnect_PLRAM_MEM01_M00_AXI_RRESP;
  wire interconnect_PLRAM_MEM01_M00_AXI_RVALID;
  wire [511:0]interconnect_PLRAM_MEM01_M00_AXI_WDATA;
  wire interconnect_PLRAM_MEM01_M00_AXI_WLAST;
  wire interconnect_PLRAM_MEM01_M00_AXI_WREADY;
  wire [63:0]interconnect_PLRAM_MEM01_M00_AXI_WSTRB;
  wire interconnect_PLRAM_MEM01_M00_AXI_WVALID;
  wire [16:0]interconnect_PLRAM_MEM02_M00_AXI_ARADDR;
  wire [1:0]interconnect_PLRAM_MEM02_M00_AXI_ARBURST;
  wire [3:0]interconnect_PLRAM_MEM02_M00_AXI_ARCACHE;
  wire [7:0]interconnect_PLRAM_MEM02_M00_AXI_ARLEN;
  wire [0:0]interconnect_PLRAM_MEM02_M00_AXI_ARLOCK;
  wire [2:0]interconnect_PLRAM_MEM02_M00_AXI_ARPROT;
  wire [3:0]interconnect_PLRAM_MEM02_M00_AXI_ARQOS;
  wire interconnect_PLRAM_MEM02_M00_AXI_ARREADY;
  wire interconnect_PLRAM_MEM02_M00_AXI_ARVALID;
  wire [16:0]interconnect_PLRAM_MEM02_M00_AXI_AWADDR;
  wire [1:0]interconnect_PLRAM_MEM02_M00_AXI_AWBURST;
  wire [3:0]interconnect_PLRAM_MEM02_M00_AXI_AWCACHE;
  wire [7:0]interconnect_PLRAM_MEM02_M00_AXI_AWLEN;
  wire [0:0]interconnect_PLRAM_MEM02_M00_AXI_AWLOCK;
  wire [2:0]interconnect_PLRAM_MEM02_M00_AXI_AWPROT;
  wire [3:0]interconnect_PLRAM_MEM02_M00_AXI_AWQOS;
  wire interconnect_PLRAM_MEM02_M00_AXI_AWREADY;
  wire interconnect_PLRAM_MEM02_M00_AXI_AWVALID;
  wire interconnect_PLRAM_MEM02_M00_AXI_BREADY;
  wire [1:0]interconnect_PLRAM_MEM02_M00_AXI_BRESP;
  wire interconnect_PLRAM_MEM02_M00_AXI_BVALID;
  wire [511:0]interconnect_PLRAM_MEM02_M00_AXI_RDATA;
  wire interconnect_PLRAM_MEM02_M00_AXI_RLAST;
  wire interconnect_PLRAM_MEM02_M00_AXI_RREADY;
  wire [1:0]interconnect_PLRAM_MEM02_M00_AXI_RRESP;
  wire interconnect_PLRAM_MEM02_M00_AXI_RVALID;
  wire [511:0]interconnect_PLRAM_MEM02_M00_AXI_WDATA;
  wire interconnect_PLRAM_MEM02_M00_AXI_WLAST;
  wire interconnect_PLRAM_MEM02_M00_AXI_WREADY;
  wire [63:0]interconnect_PLRAM_MEM02_M00_AXI_WSTRB;
  wire interconnect_PLRAM_MEM02_M00_AXI_WVALID;
  wire [16:0]plram_mem00_BRAM_PORTA_ADDR;
  wire plram_mem00_BRAM_PORTA_CLK;
  wire [511:0]plram_mem00_BRAM_PORTA_DIN;
  wire [511:0]plram_mem00_BRAM_PORTA_DOUT;
  wire plram_mem00_BRAM_PORTA_EN;
  wire plram_mem00_BRAM_PORTA_RST;
  wire [63:0]plram_mem00_BRAM_PORTA_WE;
  wire [16:0]plram_mem00_BRAM_PORTB_ADDR;
  wire plram_mem00_BRAM_PORTB_CLK;
  wire [511:0]plram_mem00_BRAM_PORTB_DIN;
  wire [511:0]plram_mem00_BRAM_PORTB_DOUT;
  wire plram_mem00_BRAM_PORTB_EN;
  wire plram_mem00_BRAM_PORTB_RST;
  wire [63:0]plram_mem00_BRAM_PORTB_WE;
  wire [16:0]plram_mem01_BRAM_PORTA_ADDR;
  wire plram_mem01_BRAM_PORTA_CLK;
  wire [511:0]plram_mem01_BRAM_PORTA_DIN;
  wire [511:0]plram_mem01_BRAM_PORTA_DOUT;
  wire plram_mem01_BRAM_PORTA_EN;
  wire plram_mem01_BRAM_PORTA_RST;
  wire [63:0]plram_mem01_BRAM_PORTA_WE;
  wire [16:0]plram_mem01_BRAM_PORTB_ADDR;
  wire plram_mem01_BRAM_PORTB_CLK;
  wire [511:0]plram_mem01_BRAM_PORTB_DIN;
  wire [511:0]plram_mem01_BRAM_PORTB_DOUT;
  wire plram_mem01_BRAM_PORTB_EN;
  wire plram_mem01_BRAM_PORTB_RST;
  wire [63:0]plram_mem01_BRAM_PORTB_WE;
  wire [16:0]plram_mem02_BRAM_PORTA_ADDR;
  wire plram_mem02_BRAM_PORTA_CLK;
  wire [511:0]plram_mem02_BRAM_PORTA_DIN;
  wire [511:0]plram_mem02_BRAM_PORTA_DOUT;
  wire plram_mem02_BRAM_PORTA_EN;
  wire plram_mem02_BRAM_PORTA_RST;
  wire [63:0]plram_mem02_BRAM_PORTA_WE;
  wire [16:0]plram_mem02_BRAM_PORTB_ADDR;
  wire plram_mem02_BRAM_PORTB_CLK;
  wire [511:0]plram_mem02_BRAM_PORTB_DIN;
  wire [511:0]plram_mem02_BRAM_PORTB_DOUT;
  wire plram_mem02_BRAM_PORTB_EN;
  wire plram_mem02_BRAM_PORTB_RST;
  wire [63:0]plram_mem02_BRAM_PORTB_WE;
  wire psr_aclk_SLR0_interconnect_aresetn;
  wire psr_aclk_SLR1_interconnect_aresetn;
  wire psr_aclk_SLR2_interconnect_aresetn;
  wire s_sh_1_CLK_300M_DIMM0_DN;
  wire s_sh_1_CLK_300M_DIMM0_DP;
  wire s_sh_1_CLK_300M_DIMM1_DN;
  wire s_sh_1_CLK_300M_DIMM1_DP;
  wire s_sh_1_CLK_300M_DIMM3_DN;
  wire s_sh_1_CLK_300M_DIMM3_DP;
  wire s_sh_1_M_A_ACT_N;
  wire [1:0]s_sh_1_M_A_BA;
  wire [1:0]s_sh_1_M_A_BG;
  wire [0:0]s_sh_1_M_A_CKE;
  wire [0:0]s_sh_1_M_A_CLK_DN;
  wire [0:0]s_sh_1_M_A_CLK_DP;
  wire [0:0]s_sh_1_M_A_CS_N;
  wire [63:0]s_sh_1_M_A_DQ;
  wire [17:0]s_sh_1_M_A_DQS_DN;
  wire [17:0]s_sh_1_M_A_DQS_DP;
  wire [7:0]s_sh_1_M_A_ECC;
  wire [16:0]s_sh_1_M_A_MA;
  wire [0:0]s_sh_1_M_A_ODT;
  wire s_sh_1_M_A_PAR;
  wire s_sh_1_M_B_ACT_N;
  wire [1:0]s_sh_1_M_B_BA;
  wire [1:0]s_sh_1_M_B_BG;
  wire [0:0]s_sh_1_M_B_CKE;
  wire [0:0]s_sh_1_M_B_CLK_DN;
  wire [0:0]s_sh_1_M_B_CLK_DP;
  wire [0:0]s_sh_1_M_B_CS_N;
  wire [63:0]s_sh_1_M_B_DQ;
  wire [17:0]s_sh_1_M_B_DQS_DN;
  wire [17:0]s_sh_1_M_B_DQS_DP;
  wire [7:0]s_sh_1_M_B_ECC;
  wire [16:0]s_sh_1_M_B_MA;
  wire [0:0]s_sh_1_M_B_ODT;
  wire s_sh_1_M_B_PAR;
  wire s_sh_1_M_D_ACT_N;
  wire [1:0]s_sh_1_M_D_BA;
  wire [1:0]s_sh_1_M_D_BG;
  wire [0:0]s_sh_1_M_D_CKE;
  wire [0:0]s_sh_1_M_D_CLK_DN;
  wire [0:0]s_sh_1_M_D_CLK_DP;
  wire [0:0]s_sh_1_M_D_CS_N;
  wire [63:0]s_sh_1_M_D_DQ;
  wire [17:0]s_sh_1_M_D_DQS_DN;
  wire [17:0]s_sh_1_M_D_DQS_DP;
  wire [7:0]s_sh_1_M_D_ECC;
  wire [16:0]s_sh_1_M_D_MA;
  wire [0:0]s_sh_1_M_D_ODT;
  wire s_sh_1_M_D_PAR;
  wire s_sh_1_cl_RST_DIMM_A_N;
  wire s_sh_1_cl_RST_DIMM_B_N;
  wire s_sh_1_cl_RST_DIMM_D_N;
  wire [63:0]s_sh_1_cl_sh_ddr_araddr;
  wire [1:0]s_sh_1_cl_sh_ddr_arburst;
  wire [15:0]s_sh_1_cl_sh_ddr_arid;
  wire [7:0]s_sh_1_cl_sh_ddr_arlen;
  wire [2:0]s_sh_1_cl_sh_ddr_arsize;
  wire s_sh_1_cl_sh_ddr_arvalid;
  wire [63:0]s_sh_1_cl_sh_ddr_awaddr;
  wire [1:0]s_sh_1_cl_sh_ddr_awburst;
  wire [15:0]s_sh_1_cl_sh_ddr_awid;
  wire [7:0]s_sh_1_cl_sh_ddr_awlen;
  wire [2:0]s_sh_1_cl_sh_ddr_awsize;
  wire s_sh_1_cl_sh_ddr_awvalid;
  wire s_sh_1_cl_sh_ddr_bready;
  wire s_sh_1_cl_sh_ddr_rready;
  wire [511:0]s_sh_1_cl_sh_ddr_wdata;
  wire [15:0]s_sh_1_cl_sh_ddr_wid;
  wire s_sh_1_cl_sh_ddr_wlast;
  wire [63:0]s_sh_1_cl_sh_ddr_wstrb;
  wire s_sh_1_cl_sh_ddr_wvalid;
  wire s_sh_1_clk_main_a0;
  wire s_sh_1_ddr_sh_stat_ack0;
  wire s_sh_1_ddr_sh_stat_ack1;
  wire s_sh_1_ddr_sh_stat_ack2;
  wire [7:0]s_sh_1_ddr_sh_stat_int0;
  wire [7:0]s_sh_1_ddr_sh_stat_int1;
  wire [7:0]s_sh_1_ddr_sh_stat_int2;
  wire [31:0]s_sh_1_ddr_sh_stat_rdata0;
  wire [31:0]s_sh_1_ddr_sh_stat_rdata1;
  wire [31:0]s_sh_1_ddr_sh_stat_rdata2;
  wire s_sh_1_rst_main_n;
  wire s_sh_1_sh_cl_ddr_arready;
  wire s_sh_1_sh_cl_ddr_awready;
  wire [15:0]s_sh_1_sh_cl_ddr_bid;
  wire [1:0]s_sh_1_sh_cl_ddr_bresp;
  wire s_sh_1_sh_cl_ddr_bvalid;
  wire s_sh_1_sh_cl_ddr_is_ready;
  wire [511:0]s_sh_1_sh_cl_ddr_rdata;
  wire [15:0]s_sh_1_sh_cl_ddr_rid;
  wire s_sh_1_sh_cl_ddr_rlast;
  wire [1:0]s_sh_1_sh_cl_ddr_rresp;
  wire s_sh_1_sh_cl_ddr_rvalid;
  wire s_sh_1_sh_cl_ddr_wready;
  wire [7:0]s_sh_1_sh_ddr_stat_addr0;
  wire [7:0]s_sh_1_sh_ddr_stat_addr1;
  wire [7:0]s_sh_1_sh_ddr_stat_addr2;
  wire s_sh_1_sh_ddr_stat_rd0;
  wire s_sh_1_sh_ddr_stat_rd1;
  wire s_sh_1_sh_ddr_stat_rd2;
  wire [31:0]s_sh_1_sh_ddr_stat_wdata0;
  wire [31:0]s_sh_1_sh_ddr_stat_wdata1;
  wire [31:0]s_sh_1_sh_ddr_stat_wdata2;
  wire s_sh_1_sh_ddr_stat_wr0;
  wire s_sh_1_sh_ddr_stat_wr1;
  wire s_sh_1_sh_ddr_stat_wr2;
  wire [63:0]vip_DDR4_MEM00_M_AXI_ARADDR;
  wire [7:0]vip_DDR4_MEM00_M_AXI_ARLEN;
  wire vip_DDR4_MEM00_M_AXI_ARREADY;
  wire vip_DDR4_MEM00_M_AXI_ARVALID;
  wire [63:0]vip_DDR4_MEM00_M_AXI_AWADDR;
  wire [7:0]vip_DDR4_MEM00_M_AXI_AWLEN;
  wire vip_DDR4_MEM00_M_AXI_AWREADY;
  wire vip_DDR4_MEM00_M_AXI_AWVALID;
  wire vip_DDR4_MEM00_M_AXI_BREADY;
  wire [1:0]vip_DDR4_MEM00_M_AXI_BRESP;
  wire vip_DDR4_MEM00_M_AXI_BVALID;
  wire [511:0]vip_DDR4_MEM00_M_AXI_RDATA;
  wire vip_DDR4_MEM00_M_AXI_RLAST;
  wire vip_DDR4_MEM00_M_AXI_RREADY;
  wire [1:0]vip_DDR4_MEM00_M_AXI_RRESP;
  wire vip_DDR4_MEM00_M_AXI_RVALID;
  wire [511:0]vip_DDR4_MEM00_M_AXI_WDATA;
  wire vip_DDR4_MEM00_M_AXI_WLAST;
  wire vip_DDR4_MEM00_M_AXI_WREADY;
  wire [63:0]vip_DDR4_MEM00_M_AXI_WSTRB;
  wire vip_DDR4_MEM00_M_AXI_WVALID;
  wire [63:0]vip_DDR4_MEM01_M_AXI_ARADDR;
  wire [7:0]vip_DDR4_MEM01_M_AXI_ARLEN;
  wire vip_DDR4_MEM01_M_AXI_ARREADY;
  wire vip_DDR4_MEM01_M_AXI_ARVALID;
  wire [63:0]vip_DDR4_MEM01_M_AXI_AWADDR;
  wire [7:0]vip_DDR4_MEM01_M_AXI_AWLEN;
  wire vip_DDR4_MEM01_M_AXI_AWREADY;
  wire vip_DDR4_MEM01_M_AXI_AWVALID;
  wire vip_DDR4_MEM01_M_AXI_BREADY;
  wire [1:0]vip_DDR4_MEM01_M_AXI_BRESP;
  wire vip_DDR4_MEM01_M_AXI_BVALID;
  wire [511:0]vip_DDR4_MEM01_M_AXI_RDATA;
  wire vip_DDR4_MEM01_M_AXI_RLAST;
  wire vip_DDR4_MEM01_M_AXI_RREADY;
  wire [1:0]vip_DDR4_MEM01_M_AXI_RRESP;
  wire vip_DDR4_MEM01_M_AXI_RVALID;
  wire [511:0]vip_DDR4_MEM01_M_AXI_WDATA;
  wire vip_DDR4_MEM01_M_AXI_WLAST;
  wire vip_DDR4_MEM01_M_AXI_WREADY;
  wire [63:0]vip_DDR4_MEM01_M_AXI_WSTRB;
  wire vip_DDR4_MEM01_M_AXI_WVALID;
  wire [63:0]vip_DDR4_MEM02_M_AXI_ARADDR;
  wire [7:0]vip_DDR4_MEM02_M_AXI_ARLEN;
  wire vip_DDR4_MEM02_M_AXI_ARREADY;
  wire vip_DDR4_MEM02_M_AXI_ARVALID;
  wire [63:0]vip_DDR4_MEM02_M_AXI_AWADDR;
  wire [7:0]vip_DDR4_MEM02_M_AXI_AWLEN;
  wire vip_DDR4_MEM02_M_AXI_AWREADY;
  wire vip_DDR4_MEM02_M_AXI_AWVALID;
  wire vip_DDR4_MEM02_M_AXI_BREADY;
  wire [1:0]vip_DDR4_MEM02_M_AXI_BRESP;
  wire vip_DDR4_MEM02_M_AXI_BVALID;
  wire [511:0]vip_DDR4_MEM02_M_AXI_RDATA;
  wire vip_DDR4_MEM02_M_AXI_RLAST;
  wire vip_DDR4_MEM02_M_AXI_RREADY;
  wire [1:0]vip_DDR4_MEM02_M_AXI_RRESP;
  wire vip_DDR4_MEM02_M_AXI_RVALID;
  wire [511:0]vip_DDR4_MEM02_M_AXI_WDATA;
  wire vip_DDR4_MEM02_M_AXI_WLAST;
  wire vip_DDR4_MEM02_M_AXI_WREADY;
  wire [63:0]vip_DDR4_MEM02_M_AXI_WSTRB;
  wire vip_DDR4_MEM02_M_AXI_WVALID;
  wire [63:0]vip_DDR4_MEM03_M_AXI_ARADDR;
  wire [7:0]vip_DDR4_MEM03_M_AXI_ARLEN;
  wire vip_DDR4_MEM03_M_AXI_ARREADY;
  wire vip_DDR4_MEM03_M_AXI_ARVALID;
  wire [63:0]vip_DDR4_MEM03_M_AXI_AWADDR;
  wire [7:0]vip_DDR4_MEM03_M_AXI_AWLEN;
  wire vip_DDR4_MEM03_M_AXI_AWREADY;
  wire vip_DDR4_MEM03_M_AXI_AWVALID;
  wire vip_DDR4_MEM03_M_AXI_BREADY;
  wire [1:0]vip_DDR4_MEM03_M_AXI_BRESP;
  wire vip_DDR4_MEM03_M_AXI_BVALID;
  wire [511:0]vip_DDR4_MEM03_M_AXI_RDATA;
  wire vip_DDR4_MEM03_M_AXI_RLAST;
  wire vip_DDR4_MEM03_M_AXI_RREADY;
  wire [1:0]vip_DDR4_MEM03_M_AXI_RRESP;
  wire vip_DDR4_MEM03_M_AXI_RVALID;
  wire [511:0]vip_DDR4_MEM03_M_AXI_WDATA;
  wire vip_DDR4_MEM03_M_AXI_WLAST;
  wire vip_DDR4_MEM03_M_AXI_WREADY;
  wire [63:0]vip_DDR4_MEM03_M_AXI_WSTRB;
  wire vip_DDR4_MEM03_M_AXI_WVALID;
  wire [16:0]vip_PLRAM_MEM00_M_AXI_ARADDR;
  wire [1:0]vip_PLRAM_MEM00_M_AXI_ARBURST;
  wire [3:0]vip_PLRAM_MEM00_M_AXI_ARCACHE;
  wire [7:0]vip_PLRAM_MEM00_M_AXI_ARLEN;
  wire [0:0]vip_PLRAM_MEM00_M_AXI_ARLOCK;
  wire [2:0]vip_PLRAM_MEM00_M_AXI_ARPROT;
  wire vip_PLRAM_MEM00_M_AXI_ARREADY;
  wire vip_PLRAM_MEM00_M_AXI_ARVALID;
  wire [16:0]vip_PLRAM_MEM00_M_AXI_AWADDR;
  wire [1:0]vip_PLRAM_MEM00_M_AXI_AWBURST;
  wire [3:0]vip_PLRAM_MEM00_M_AXI_AWCACHE;
  wire [7:0]vip_PLRAM_MEM00_M_AXI_AWLEN;
  wire [0:0]vip_PLRAM_MEM00_M_AXI_AWLOCK;
  wire [2:0]vip_PLRAM_MEM00_M_AXI_AWPROT;
  wire vip_PLRAM_MEM00_M_AXI_AWREADY;
  wire vip_PLRAM_MEM00_M_AXI_AWVALID;
  wire vip_PLRAM_MEM00_M_AXI_BREADY;
  wire [1:0]vip_PLRAM_MEM00_M_AXI_BRESP;
  wire vip_PLRAM_MEM00_M_AXI_BVALID;
  wire [511:0]vip_PLRAM_MEM00_M_AXI_RDATA;
  wire vip_PLRAM_MEM00_M_AXI_RLAST;
  wire vip_PLRAM_MEM00_M_AXI_RREADY;
  wire [1:0]vip_PLRAM_MEM00_M_AXI_RRESP;
  wire vip_PLRAM_MEM00_M_AXI_RVALID;
  wire [511:0]vip_PLRAM_MEM00_M_AXI_WDATA;
  wire vip_PLRAM_MEM00_M_AXI_WLAST;
  wire vip_PLRAM_MEM00_M_AXI_WREADY;
  wire [63:0]vip_PLRAM_MEM00_M_AXI_WSTRB;
  wire vip_PLRAM_MEM00_M_AXI_WVALID;
  wire [16:0]vip_PLRAM_MEM01_M_AXI_ARADDR;
  wire [1:0]vip_PLRAM_MEM01_M_AXI_ARBURST;
  wire [3:0]vip_PLRAM_MEM01_M_AXI_ARCACHE;
  wire [7:0]vip_PLRAM_MEM01_M_AXI_ARLEN;
  wire [0:0]vip_PLRAM_MEM01_M_AXI_ARLOCK;
  wire [2:0]vip_PLRAM_MEM01_M_AXI_ARPROT;
  wire vip_PLRAM_MEM01_M_AXI_ARREADY;
  wire vip_PLRAM_MEM01_M_AXI_ARVALID;
  wire [16:0]vip_PLRAM_MEM01_M_AXI_AWADDR;
  wire [1:0]vip_PLRAM_MEM01_M_AXI_AWBURST;
  wire [3:0]vip_PLRAM_MEM01_M_AXI_AWCACHE;
  wire [7:0]vip_PLRAM_MEM01_M_AXI_AWLEN;
  wire [0:0]vip_PLRAM_MEM01_M_AXI_AWLOCK;
  wire [2:0]vip_PLRAM_MEM01_M_AXI_AWPROT;
  wire vip_PLRAM_MEM01_M_AXI_AWREADY;
  wire vip_PLRAM_MEM01_M_AXI_AWVALID;
  wire vip_PLRAM_MEM01_M_AXI_BREADY;
  wire [1:0]vip_PLRAM_MEM01_M_AXI_BRESP;
  wire vip_PLRAM_MEM01_M_AXI_BVALID;
  wire [511:0]vip_PLRAM_MEM01_M_AXI_RDATA;
  wire vip_PLRAM_MEM01_M_AXI_RLAST;
  wire vip_PLRAM_MEM01_M_AXI_RREADY;
  wire [1:0]vip_PLRAM_MEM01_M_AXI_RRESP;
  wire vip_PLRAM_MEM01_M_AXI_RVALID;
  wire [511:0]vip_PLRAM_MEM01_M_AXI_WDATA;
  wire vip_PLRAM_MEM01_M_AXI_WLAST;
  wire vip_PLRAM_MEM01_M_AXI_WREADY;
  wire [63:0]vip_PLRAM_MEM01_M_AXI_WSTRB;
  wire vip_PLRAM_MEM01_M_AXI_WVALID;
  wire [16:0]vip_PLRAM_MEM02_M_AXI_ARADDR;
  wire [1:0]vip_PLRAM_MEM02_M_AXI_ARBURST;
  wire [3:0]vip_PLRAM_MEM02_M_AXI_ARCACHE;
  wire [7:0]vip_PLRAM_MEM02_M_AXI_ARLEN;
  wire [0:0]vip_PLRAM_MEM02_M_AXI_ARLOCK;
  wire [2:0]vip_PLRAM_MEM02_M_AXI_ARPROT;
  wire vip_PLRAM_MEM02_M_AXI_ARREADY;
  wire vip_PLRAM_MEM02_M_AXI_ARVALID;
  wire [16:0]vip_PLRAM_MEM02_M_AXI_AWADDR;
  wire [1:0]vip_PLRAM_MEM02_M_AXI_AWBURST;
  wire [3:0]vip_PLRAM_MEM02_M_AXI_AWCACHE;
  wire [7:0]vip_PLRAM_MEM02_M_AXI_AWLEN;
  wire [0:0]vip_PLRAM_MEM02_M_AXI_AWLOCK;
  wire [2:0]vip_PLRAM_MEM02_M_AXI_AWPROT;
  wire vip_PLRAM_MEM02_M_AXI_AWREADY;
  wire vip_PLRAM_MEM02_M_AXI_AWVALID;
  wire vip_PLRAM_MEM02_M_AXI_BREADY;
  wire [1:0]vip_PLRAM_MEM02_M_AXI_BRESP;
  wire vip_PLRAM_MEM02_M_AXI_BVALID;
  wire [511:0]vip_PLRAM_MEM02_M_AXI_RDATA;
  wire vip_PLRAM_MEM02_M_AXI_RLAST;
  wire vip_PLRAM_MEM02_M_AXI_RREADY;
  wire [1:0]vip_PLRAM_MEM02_M_AXI_RRESP;
  wire vip_PLRAM_MEM02_M_AXI_RVALID;
  wire [511:0]vip_PLRAM_MEM02_M_AXI_WDATA;
  wire vip_PLRAM_MEM02_M_AXI_WLAST;
  wire vip_PLRAM_MEM02_M_AXI_WREADY;
  wire [63:0]vip_PLRAM_MEM02_M_AXI_WSTRB;
  wire vip_PLRAM_MEM02_M_AXI_WVALID;

  assign S_AXI1_arready = interconnect_DDR4_MEM01_M00_AXI_ARREADY;
  assign S_AXI1_awready = interconnect_DDR4_MEM01_M00_AXI_AWREADY;
  assign S_AXI1_bresp[1:0] = interconnect_DDR4_MEM01_M00_AXI_BRESP;
  assign S_AXI1_bvalid = interconnect_DDR4_MEM01_M00_AXI_BVALID;
  assign S_AXI1_rdata[511:0] = interconnect_DDR4_MEM01_M00_AXI_RDATA;
  assign S_AXI1_rlast = interconnect_DDR4_MEM01_M00_AXI_RLAST;
  assign S_AXI1_rresp[1:0] = interconnect_DDR4_MEM01_M00_AXI_RRESP;
  assign S_AXI1_rvalid = interconnect_DDR4_MEM01_M00_AXI_RVALID;
  assign S_AXI1_wready = interconnect_DDR4_MEM01_M00_AXI_WREADY;
  assign S_AXI2_arready = interconnect_DDR4_MEM02_M00_AXI_ARREADY;
  assign S_AXI2_awready = interconnect_DDR4_MEM02_M00_AXI_AWREADY;
  assign S_AXI2_bresp[1:0] = interconnect_DDR4_MEM02_M00_AXI_BRESP;
  assign S_AXI2_bvalid = interconnect_DDR4_MEM02_M00_AXI_BVALID;
  assign S_AXI2_rdata[511:0] = interconnect_DDR4_MEM02_M00_AXI_RDATA;
  assign S_AXI2_rlast = interconnect_DDR4_MEM02_M00_AXI_RLAST;
  assign S_AXI2_rresp[1:0] = interconnect_DDR4_MEM02_M00_AXI_RRESP;
  assign S_AXI2_rvalid = interconnect_DDR4_MEM02_M00_AXI_RVALID;
  assign S_AXI2_wready = interconnect_DDR4_MEM02_M00_AXI_WREADY;
  assign S_AXI3_arready = interconnect_DDR4_MEM03_M00_AXI_ARREADY;
  assign S_AXI3_awready = interconnect_DDR4_MEM03_M00_AXI_AWREADY;
  assign S_AXI3_bresp[1:0] = interconnect_DDR4_MEM03_M00_AXI_BRESP;
  assign S_AXI3_bvalid = interconnect_DDR4_MEM03_M00_AXI_BVALID;
  assign S_AXI3_rdata[511:0] = interconnect_DDR4_MEM03_M00_AXI_RDATA;
  assign S_AXI3_rlast = interconnect_DDR4_MEM03_M00_AXI_RLAST;
  assign S_AXI3_rresp[1:0] = interconnect_DDR4_MEM03_M00_AXI_RRESP;
  assign S_AXI3_rvalid = interconnect_DDR4_MEM03_M00_AXI_RVALID;
  assign S_AXI3_wready = interconnect_DDR4_MEM03_M00_AXI_WREADY;
  assign S_AXI4_arready = interconnect_PLRAM_MEM00_M00_AXI_ARREADY;
  assign S_AXI4_awready = interconnect_PLRAM_MEM00_M00_AXI_AWREADY;
  assign S_AXI4_bresp[1:0] = interconnect_PLRAM_MEM00_M00_AXI_BRESP;
  assign S_AXI4_bvalid = interconnect_PLRAM_MEM00_M00_AXI_BVALID;
  assign S_AXI4_rdata[511:0] = interconnect_PLRAM_MEM00_M00_AXI_RDATA;
  assign S_AXI4_rlast = interconnect_PLRAM_MEM00_M00_AXI_RLAST;
  assign S_AXI4_rresp[1:0] = interconnect_PLRAM_MEM00_M00_AXI_RRESP;
  assign S_AXI4_rvalid = interconnect_PLRAM_MEM00_M00_AXI_RVALID;
  assign S_AXI4_wready = interconnect_PLRAM_MEM00_M00_AXI_WREADY;
  assign S_AXI5_arready = interconnect_PLRAM_MEM01_M00_AXI_ARREADY;
  assign S_AXI5_awready = interconnect_PLRAM_MEM01_M00_AXI_AWREADY;
  assign S_AXI5_bresp[1:0] = interconnect_PLRAM_MEM01_M00_AXI_BRESP;
  assign S_AXI5_bvalid = interconnect_PLRAM_MEM01_M00_AXI_BVALID;
  assign S_AXI5_rdata[511:0] = interconnect_PLRAM_MEM01_M00_AXI_RDATA;
  assign S_AXI5_rlast = interconnect_PLRAM_MEM01_M00_AXI_RLAST;
  assign S_AXI5_rresp[1:0] = interconnect_PLRAM_MEM01_M00_AXI_RRESP;
  assign S_AXI5_rvalid = interconnect_PLRAM_MEM01_M00_AXI_RVALID;
  assign S_AXI5_wready = interconnect_PLRAM_MEM01_M00_AXI_WREADY;
  assign S_AXI6_arready = interconnect_PLRAM_MEM02_M00_AXI_ARREADY;
  assign S_AXI6_awready = interconnect_PLRAM_MEM02_M00_AXI_AWREADY;
  assign S_AXI6_bresp[1:0] = interconnect_PLRAM_MEM02_M00_AXI_BRESP;
  assign S_AXI6_bvalid = interconnect_PLRAM_MEM02_M00_AXI_BVALID;
  assign S_AXI6_rdata[511:0] = interconnect_PLRAM_MEM02_M00_AXI_RDATA;
  assign S_AXI6_rlast = interconnect_PLRAM_MEM02_M00_AXI_RLAST;
  assign S_AXI6_rresp[1:0] = interconnect_PLRAM_MEM02_M00_AXI_RRESP;
  assign S_AXI6_rvalid = interconnect_PLRAM_MEM02_M00_AXI_RVALID;
  assign S_AXI6_wready = interconnect_PLRAM_MEM02_M00_AXI_WREADY;
  assign S_AXI_arready = interconnect_DDR4_MEM00_M00_AXI_ARREADY;
  assign S_AXI_awready = interconnect_DDR4_MEM00_M00_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = interconnect_DDR4_MEM00_M00_AXI_BRESP;
  assign S_AXI_bvalid = interconnect_DDR4_MEM00_M00_AXI_BVALID;
  assign S_AXI_rdata[511:0] = interconnect_DDR4_MEM00_M00_AXI_RDATA;
  assign S_AXI_rlast = interconnect_DDR4_MEM00_M00_AXI_RLAST;
  assign S_AXI_rresp[1:0] = interconnect_DDR4_MEM00_M00_AXI_RRESP;
  assign S_AXI_rvalid = interconnect_DDR4_MEM00_M00_AXI_RVALID;
  assign S_AXI_wready = interconnect_DDR4_MEM00_M00_AXI_WREADY;
  assign aclk = aws_clk_main_a0_out;
  assign aclk_1 = aclk1;
  assign ddr4_mem_calib_complete = calib_reduce_Res;
  assign interconnect_DDR4_MEM00_M00_AXI_ARADDR = S_AXI_araddr[63:0];
  assign interconnect_DDR4_MEM00_M00_AXI_ARBURST = S_AXI_arburst[1:0];
  assign interconnect_DDR4_MEM00_M00_AXI_ARCACHE = S_AXI_arcache[3:0];
  assign interconnect_DDR4_MEM00_M00_AXI_ARLEN = S_AXI_arlen[7:0];
  assign interconnect_DDR4_MEM00_M00_AXI_ARLOCK = S_AXI_arlock[0];
  assign interconnect_DDR4_MEM00_M00_AXI_ARPROT = S_AXI_arprot[2:0];
  assign interconnect_DDR4_MEM00_M00_AXI_ARQOS = S_AXI_arqos[3:0];
  assign interconnect_DDR4_MEM00_M00_AXI_ARVALID = S_AXI_arvalid;
  assign interconnect_DDR4_MEM00_M00_AXI_AWADDR = S_AXI_awaddr[63:0];
  assign interconnect_DDR4_MEM00_M00_AXI_AWBURST = S_AXI_awburst[1:0];
  assign interconnect_DDR4_MEM00_M00_AXI_AWCACHE = S_AXI_awcache[3:0];
  assign interconnect_DDR4_MEM00_M00_AXI_AWLEN = S_AXI_awlen[7:0];
  assign interconnect_DDR4_MEM00_M00_AXI_AWLOCK = S_AXI_awlock[0];
  assign interconnect_DDR4_MEM00_M00_AXI_AWPROT = S_AXI_awprot[2:0];
  assign interconnect_DDR4_MEM00_M00_AXI_AWQOS = S_AXI_awqos[3:0];
  assign interconnect_DDR4_MEM00_M00_AXI_AWVALID = S_AXI_awvalid;
  assign interconnect_DDR4_MEM00_M00_AXI_BREADY = S_AXI_bready;
  assign interconnect_DDR4_MEM00_M00_AXI_RREADY = S_AXI_rready;
  assign interconnect_DDR4_MEM00_M00_AXI_WDATA = S_AXI_wdata[511:0];
  assign interconnect_DDR4_MEM00_M00_AXI_WLAST = S_AXI_wlast;
  assign interconnect_DDR4_MEM00_M00_AXI_WSTRB = S_AXI_wstrb[63:0];
  assign interconnect_DDR4_MEM00_M00_AXI_WVALID = S_AXI_wvalid;
  assign interconnect_DDR4_MEM01_M00_AXI_ARADDR = S_AXI1_araddr[63:0];
  assign interconnect_DDR4_MEM01_M00_AXI_ARBURST = S_AXI1_arburst[1:0];
  assign interconnect_DDR4_MEM01_M00_AXI_ARCACHE = S_AXI1_arcache[3:0];
  assign interconnect_DDR4_MEM01_M00_AXI_ARLEN = S_AXI1_arlen[7:0];
  assign interconnect_DDR4_MEM01_M00_AXI_ARLOCK = S_AXI1_arlock[0];
  assign interconnect_DDR4_MEM01_M00_AXI_ARPROT = S_AXI1_arprot[2:0];
  assign interconnect_DDR4_MEM01_M00_AXI_ARQOS = S_AXI1_arqos[3:0];
  assign interconnect_DDR4_MEM01_M00_AXI_ARVALID = S_AXI1_arvalid;
  assign interconnect_DDR4_MEM01_M00_AXI_AWADDR = S_AXI1_awaddr[63:0];
  assign interconnect_DDR4_MEM01_M00_AXI_AWBURST = S_AXI1_awburst[1:0];
  assign interconnect_DDR4_MEM01_M00_AXI_AWCACHE = S_AXI1_awcache[3:0];
  assign interconnect_DDR4_MEM01_M00_AXI_AWLEN = S_AXI1_awlen[7:0];
  assign interconnect_DDR4_MEM01_M00_AXI_AWLOCK = S_AXI1_awlock[0];
  assign interconnect_DDR4_MEM01_M00_AXI_AWPROT = S_AXI1_awprot[2:0];
  assign interconnect_DDR4_MEM01_M00_AXI_AWQOS = S_AXI1_awqos[3:0];
  assign interconnect_DDR4_MEM01_M00_AXI_AWVALID = S_AXI1_awvalid;
  assign interconnect_DDR4_MEM01_M00_AXI_BREADY = S_AXI1_bready;
  assign interconnect_DDR4_MEM01_M00_AXI_RREADY = S_AXI1_rready;
  assign interconnect_DDR4_MEM01_M00_AXI_WDATA = S_AXI1_wdata[511:0];
  assign interconnect_DDR4_MEM01_M00_AXI_WLAST = S_AXI1_wlast;
  assign interconnect_DDR4_MEM01_M00_AXI_WSTRB = S_AXI1_wstrb[63:0];
  assign interconnect_DDR4_MEM01_M00_AXI_WVALID = S_AXI1_wvalid;
  assign interconnect_DDR4_MEM02_M00_AXI_ARADDR = S_AXI2_araddr[63:0];
  assign interconnect_DDR4_MEM02_M00_AXI_ARBURST = S_AXI2_arburst[1:0];
  assign interconnect_DDR4_MEM02_M00_AXI_ARCACHE = S_AXI2_arcache[3:0];
  assign interconnect_DDR4_MEM02_M00_AXI_ARLEN = S_AXI2_arlen[7:0];
  assign interconnect_DDR4_MEM02_M00_AXI_ARLOCK = S_AXI2_arlock[0];
  assign interconnect_DDR4_MEM02_M00_AXI_ARPROT = S_AXI2_arprot[2:0];
  assign interconnect_DDR4_MEM02_M00_AXI_ARQOS = S_AXI2_arqos[3:0];
  assign interconnect_DDR4_MEM02_M00_AXI_ARVALID = S_AXI2_arvalid;
  assign interconnect_DDR4_MEM02_M00_AXI_AWADDR = S_AXI2_awaddr[63:0];
  assign interconnect_DDR4_MEM02_M00_AXI_AWBURST = S_AXI2_awburst[1:0];
  assign interconnect_DDR4_MEM02_M00_AXI_AWCACHE = S_AXI2_awcache[3:0];
  assign interconnect_DDR4_MEM02_M00_AXI_AWLEN = S_AXI2_awlen[7:0];
  assign interconnect_DDR4_MEM02_M00_AXI_AWLOCK = S_AXI2_awlock[0];
  assign interconnect_DDR4_MEM02_M00_AXI_AWPROT = S_AXI2_awprot[2:0];
  assign interconnect_DDR4_MEM02_M00_AXI_AWQOS = S_AXI2_awqos[3:0];
  assign interconnect_DDR4_MEM02_M00_AXI_AWVALID = S_AXI2_awvalid;
  assign interconnect_DDR4_MEM02_M00_AXI_BREADY = S_AXI2_bready;
  assign interconnect_DDR4_MEM02_M00_AXI_RREADY = S_AXI2_rready;
  assign interconnect_DDR4_MEM02_M00_AXI_WDATA = S_AXI2_wdata[511:0];
  assign interconnect_DDR4_MEM02_M00_AXI_WLAST = S_AXI2_wlast;
  assign interconnect_DDR4_MEM02_M00_AXI_WSTRB = S_AXI2_wstrb[63:0];
  assign interconnect_DDR4_MEM02_M00_AXI_WVALID = S_AXI2_wvalid;
  assign interconnect_DDR4_MEM03_M00_AXI_ARADDR = S_AXI3_araddr[63:0];
  assign interconnect_DDR4_MEM03_M00_AXI_ARBURST = S_AXI3_arburst[1:0];
  assign interconnect_DDR4_MEM03_M00_AXI_ARCACHE = S_AXI3_arcache[3:0];
  assign interconnect_DDR4_MEM03_M00_AXI_ARLEN = S_AXI3_arlen[7:0];
  assign interconnect_DDR4_MEM03_M00_AXI_ARLOCK = S_AXI3_arlock[0];
  assign interconnect_DDR4_MEM03_M00_AXI_ARPROT = S_AXI3_arprot[2:0];
  assign interconnect_DDR4_MEM03_M00_AXI_ARQOS = S_AXI3_arqos[3:0];
  assign interconnect_DDR4_MEM03_M00_AXI_ARVALID = S_AXI3_arvalid;
  assign interconnect_DDR4_MEM03_M00_AXI_AWADDR = S_AXI3_awaddr[63:0];
  assign interconnect_DDR4_MEM03_M00_AXI_AWBURST = S_AXI3_awburst[1:0];
  assign interconnect_DDR4_MEM03_M00_AXI_AWCACHE = S_AXI3_awcache[3:0];
  assign interconnect_DDR4_MEM03_M00_AXI_AWLEN = S_AXI3_awlen[7:0];
  assign interconnect_DDR4_MEM03_M00_AXI_AWLOCK = S_AXI3_awlock[0];
  assign interconnect_DDR4_MEM03_M00_AXI_AWPROT = S_AXI3_awprot[2:0];
  assign interconnect_DDR4_MEM03_M00_AXI_AWQOS = S_AXI3_awqos[3:0];
  assign interconnect_DDR4_MEM03_M00_AXI_AWVALID = S_AXI3_awvalid;
  assign interconnect_DDR4_MEM03_M00_AXI_BREADY = S_AXI3_bready;
  assign interconnect_DDR4_MEM03_M00_AXI_RREADY = S_AXI3_rready;
  assign interconnect_DDR4_MEM03_M00_AXI_WDATA = S_AXI3_wdata[511:0];
  assign interconnect_DDR4_MEM03_M00_AXI_WLAST = S_AXI3_wlast;
  assign interconnect_DDR4_MEM03_M00_AXI_WSTRB = S_AXI3_wstrb[63:0];
  assign interconnect_DDR4_MEM03_M00_AXI_WVALID = S_AXI3_wvalid;
  assign interconnect_PLRAM_MEM00_M00_AXI_ARADDR = S_AXI4_araddr[16:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_ARBURST = S_AXI4_arburst[1:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_ARCACHE = S_AXI4_arcache[3:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_ARLEN = S_AXI4_arlen[7:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_ARLOCK = S_AXI4_arlock[0];
  assign interconnect_PLRAM_MEM00_M00_AXI_ARPROT = S_AXI4_arprot[2:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_ARQOS = S_AXI4_arqos[3:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_ARVALID = S_AXI4_arvalid;
  assign interconnect_PLRAM_MEM00_M00_AXI_AWADDR = S_AXI4_awaddr[16:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_AWBURST = S_AXI4_awburst[1:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_AWCACHE = S_AXI4_awcache[3:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_AWLEN = S_AXI4_awlen[7:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_AWLOCK = S_AXI4_awlock[0];
  assign interconnect_PLRAM_MEM00_M00_AXI_AWPROT = S_AXI4_awprot[2:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_AWQOS = S_AXI4_awqos[3:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_AWVALID = S_AXI4_awvalid;
  assign interconnect_PLRAM_MEM00_M00_AXI_BREADY = S_AXI4_bready;
  assign interconnect_PLRAM_MEM00_M00_AXI_RREADY = S_AXI4_rready;
  assign interconnect_PLRAM_MEM00_M00_AXI_WDATA = S_AXI4_wdata[511:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_WLAST = S_AXI4_wlast;
  assign interconnect_PLRAM_MEM00_M00_AXI_WSTRB = S_AXI4_wstrb[63:0];
  assign interconnect_PLRAM_MEM00_M00_AXI_WVALID = S_AXI4_wvalid;
  assign interconnect_PLRAM_MEM01_M00_AXI_ARADDR = S_AXI5_araddr[16:0];
  assign interconnect_PLRAM_MEM01_M00_AXI_ARBURST = S_AXI5_arburst[1:0];
  assign interconnect_PLRAM_MEM01_M00_AXI_ARCACHE = S_AXI5_arcache[3:0];
  assign interconnect_PLRAM_MEM01_M00_AXI_ARLEN = S_AXI5_arlen[7:0];
  assign interconnect_PLRAM_MEM01_M00_AXI_ARLOCK = S_AXI5_arlock[0];
  assign interconnect_PLRAM_MEM01_M00_AXI_ARPROT = S_AXI5_arprot[2:0];
  assign interconnect_PLRAM_MEM01_M00_AXI_ARQOS = S_AXI5_arqos[3:0];
  assign interconnect_PLRAM_MEM01_M00_AXI_ARVALID = S_AXI5_arvalid;
  assign interconnect_PLRAM_MEM01_M00_AXI_AWADDR = S_AXI5_awaddr[16:0];
  assign interconnect_PLRAM_MEM01_M00_AXI_AWBURST = S_AXI5_awburst[1:0];
  assign interconnect_PLRAM_MEM01_M00_AXI_AWCACHE = S_AXI5_awcache[3:0];
  assign interconnect_PLRAM_MEM01_M00_AXI_AWLEN = S_AXI5_awlen[7:0];
  assign interconnect_PLRAM_MEM01_M00_AXI_AWLOCK = S_AXI5_awlock[0];
  assign interconnect_PLRAM_MEM01_M00_AXI_AWPROT = S_AXI5_awprot[2:0];
  assign interconnect_PLRAM_MEM01_M00_AXI_AWQOS = S_AXI5_awqos[3:0];
  assign interconnect_PLRAM_MEM01_M00_AXI_AWVALID = S_AXI5_awvalid;
  assign interconnect_PLRAM_MEM01_M00_AXI_BREADY = S_AXI5_bready;
  assign interconnect_PLRAM_MEM01_M00_AXI_RREADY = S_AXI5_rready;
  assign interconnect_PLRAM_MEM01_M00_AXI_WDATA = S_AXI5_wdata[511:0];
  assign interconnect_PLRAM_MEM01_M00_AXI_WLAST = S_AXI5_wlast;
  assign interconnect_PLRAM_MEM01_M00_AXI_WSTRB = S_AXI5_wstrb[63:0];
  assign interconnect_PLRAM_MEM01_M00_AXI_WVALID = S_AXI5_wvalid;
  assign interconnect_PLRAM_MEM02_M00_AXI_ARADDR = S_AXI6_araddr[16:0];
  assign interconnect_PLRAM_MEM02_M00_AXI_ARBURST = S_AXI6_arburst[1:0];
  assign interconnect_PLRAM_MEM02_M00_AXI_ARCACHE = S_AXI6_arcache[3:0];
  assign interconnect_PLRAM_MEM02_M00_AXI_ARLEN = S_AXI6_arlen[7:0];
  assign interconnect_PLRAM_MEM02_M00_AXI_ARLOCK = S_AXI6_arlock[0];
  assign interconnect_PLRAM_MEM02_M00_AXI_ARPROT = S_AXI6_arprot[2:0];
  assign interconnect_PLRAM_MEM02_M00_AXI_ARQOS = S_AXI6_arqos[3:0];
  assign interconnect_PLRAM_MEM02_M00_AXI_ARVALID = S_AXI6_arvalid;
  assign interconnect_PLRAM_MEM02_M00_AXI_AWADDR = S_AXI6_awaddr[16:0];
  assign interconnect_PLRAM_MEM02_M00_AXI_AWBURST = S_AXI6_awburst[1:0];
  assign interconnect_PLRAM_MEM02_M00_AXI_AWCACHE = S_AXI6_awcache[3:0];
  assign interconnect_PLRAM_MEM02_M00_AXI_AWLEN = S_AXI6_awlen[7:0];
  assign interconnect_PLRAM_MEM02_M00_AXI_AWLOCK = S_AXI6_awlock[0];
  assign interconnect_PLRAM_MEM02_M00_AXI_AWPROT = S_AXI6_awprot[2:0];
  assign interconnect_PLRAM_MEM02_M00_AXI_AWQOS = S_AXI6_awqos[3:0];
  assign interconnect_PLRAM_MEM02_M00_AXI_AWVALID = S_AXI6_awvalid;
  assign interconnect_PLRAM_MEM02_M00_AXI_BREADY = S_AXI6_bready;
  assign interconnect_PLRAM_MEM02_M00_AXI_RREADY = S_AXI6_rready;
  assign interconnect_PLRAM_MEM02_M00_AXI_WDATA = S_AXI6_wdata[511:0];
  assign interconnect_PLRAM_MEM02_M00_AXI_WLAST = S_AXI6_wlast;
  assign interconnect_PLRAM_MEM02_M00_AXI_WSTRB = S_AXI6_wstrb[63:0];
  assign interconnect_PLRAM_MEM02_M00_AXI_WVALID = S_AXI6_wvalid;
  assign psr_aclk_SLR0_interconnect_aresetn = aresetn2;
  assign psr_aclk_SLR1_interconnect_aresetn = aresetn1;
  assign psr_aclk_SLR2_interconnect_aresetn = aresetn;
  assign s_sh_1_CLK_300M_DIMM0_DN = s_sh_clk_300m_dimm0_dn;
  assign s_sh_1_CLK_300M_DIMM0_DP = s_sh_clk_300m_dimm0_dp;
  assign s_sh_1_CLK_300M_DIMM1_DN = s_sh_clk_300m_dimm1_dn;
  assign s_sh_1_CLK_300M_DIMM1_DP = s_sh_clk_300m_dimm1_dp;
  assign s_sh_1_CLK_300M_DIMM3_DN = s_sh_clk_300m_dimm3_dn;
  assign s_sh_1_CLK_300M_DIMM3_DP = s_sh_clk_300m_dimm3_dp;
  assign s_sh_1_clk_main_a0 = s_sh_clk_main_a0;
  assign s_sh_1_rst_main_n = s_sh_rst_main_n;
  assign s_sh_1_sh_cl_ddr_arready = s_sh_sh_cl_ddr_arready;
  assign s_sh_1_sh_cl_ddr_awready = s_sh_sh_cl_ddr_awready;
  assign s_sh_1_sh_cl_ddr_bid = s_sh_sh_cl_ddr_bid[15:0];
  assign s_sh_1_sh_cl_ddr_bresp = s_sh_sh_cl_ddr_bresp[1:0];
  assign s_sh_1_sh_cl_ddr_bvalid = s_sh_sh_cl_ddr_bvalid;
  assign s_sh_1_sh_cl_ddr_is_ready = s_sh_sh_cl_ddr_is_ready;
  assign s_sh_1_sh_cl_ddr_rdata = s_sh_sh_cl_ddr_rdata[511:0];
  assign s_sh_1_sh_cl_ddr_rid = s_sh_sh_cl_ddr_rid[15:0];
  assign s_sh_1_sh_cl_ddr_rlast = s_sh_sh_cl_ddr_rlast;
  assign s_sh_1_sh_cl_ddr_rresp = s_sh_sh_cl_ddr_rresp[1:0];
  assign s_sh_1_sh_cl_ddr_rvalid = s_sh_sh_cl_ddr_rvalid;
  assign s_sh_1_sh_cl_ddr_wready = s_sh_sh_cl_ddr_wready;
  assign s_sh_1_sh_ddr_stat_addr0 = s_sh_sh_ddr_stat_addr0[7:0];
  assign s_sh_1_sh_ddr_stat_addr1 = s_sh_sh_ddr_stat_addr1[7:0];
  assign s_sh_1_sh_ddr_stat_addr2 = s_sh_sh_ddr_stat_addr2[7:0];
  assign s_sh_1_sh_ddr_stat_rd0 = s_sh_sh_ddr_stat_rd0;
  assign s_sh_1_sh_ddr_stat_rd1 = s_sh_sh_ddr_stat_rd1;
  assign s_sh_1_sh_ddr_stat_rd2 = s_sh_sh_ddr_stat_rd2;
  assign s_sh_1_sh_ddr_stat_wdata0 = s_sh_sh_ddr_stat_wdata0[31:0];
  assign s_sh_1_sh_ddr_stat_wdata1 = s_sh_sh_ddr_stat_wdata1[31:0];
  assign s_sh_1_sh_ddr_stat_wdata2 = s_sh_sh_ddr_stat_wdata2[31:0];
  assign s_sh_1_sh_ddr_stat_wr0 = s_sh_sh_ddr_stat_wr0;
  assign s_sh_1_sh_ddr_stat_wr1 = s_sh_sh_ddr_stat_wr1;
  assign s_sh_1_sh_ddr_stat_wr2 = s_sh_sh_ddr_stat_wr2;
  assign s_sh_cl_rst_dimm_a_n = s_sh_1_cl_RST_DIMM_A_N;
  assign s_sh_cl_rst_dimm_b_n = s_sh_1_cl_RST_DIMM_B_N;
  assign s_sh_cl_rst_dimm_d_n = s_sh_1_cl_RST_DIMM_D_N;
  assign s_sh_cl_sh_ddr_araddr[63:0] = s_sh_1_cl_sh_ddr_araddr;
  assign s_sh_cl_sh_ddr_arburst[1:0] = s_sh_1_cl_sh_ddr_arburst;
  assign s_sh_cl_sh_ddr_arid[15:0] = s_sh_1_cl_sh_ddr_arid;
  assign s_sh_cl_sh_ddr_arlen[7:0] = s_sh_1_cl_sh_ddr_arlen;
  assign s_sh_cl_sh_ddr_arsize[2:0] = s_sh_1_cl_sh_ddr_arsize;
  assign s_sh_cl_sh_ddr_arvalid = s_sh_1_cl_sh_ddr_arvalid;
  assign s_sh_cl_sh_ddr_awaddr[63:0] = s_sh_1_cl_sh_ddr_awaddr;
  assign s_sh_cl_sh_ddr_awburst[1:0] = s_sh_1_cl_sh_ddr_awburst;
  assign s_sh_cl_sh_ddr_awid[15:0] = s_sh_1_cl_sh_ddr_awid;
  assign s_sh_cl_sh_ddr_awlen[7:0] = s_sh_1_cl_sh_ddr_awlen;
  assign s_sh_cl_sh_ddr_awsize[2:0] = s_sh_1_cl_sh_ddr_awsize;
  assign s_sh_cl_sh_ddr_awvalid = s_sh_1_cl_sh_ddr_awvalid;
  assign s_sh_cl_sh_ddr_bready = s_sh_1_cl_sh_ddr_bready;
  assign s_sh_cl_sh_ddr_rready = s_sh_1_cl_sh_ddr_rready;
  assign s_sh_cl_sh_ddr_wdata[511:0] = s_sh_1_cl_sh_ddr_wdata;
  assign s_sh_cl_sh_ddr_wid[15:0] = s_sh_1_cl_sh_ddr_wid;
  assign s_sh_cl_sh_ddr_wlast = s_sh_1_cl_sh_ddr_wlast;
  assign s_sh_cl_sh_ddr_wstrb[63:0] = s_sh_1_cl_sh_ddr_wstrb;
  assign s_sh_cl_sh_ddr_wvalid = s_sh_1_cl_sh_ddr_wvalid;
  assign s_sh_ddr_sh_stat_ack0 = s_sh_1_ddr_sh_stat_ack0;
  assign s_sh_ddr_sh_stat_ack1 = s_sh_1_ddr_sh_stat_ack1;
  assign s_sh_ddr_sh_stat_ack2 = s_sh_1_ddr_sh_stat_ack2;
  assign s_sh_ddr_sh_stat_int0[7:0] = s_sh_1_ddr_sh_stat_int0;
  assign s_sh_ddr_sh_stat_int1[7:0] = s_sh_1_ddr_sh_stat_int1;
  assign s_sh_ddr_sh_stat_int2[7:0] = s_sh_1_ddr_sh_stat_int2;
  assign s_sh_ddr_sh_stat_rdata0[31:0] = s_sh_1_ddr_sh_stat_rdata0;
  assign s_sh_ddr_sh_stat_rdata1[31:0] = s_sh_1_ddr_sh_stat_rdata1;
  assign s_sh_ddr_sh_stat_rdata2[31:0] = s_sh_1_ddr_sh_stat_rdata2;
  assign s_sh_m_a_act_n = s_sh_1_M_A_ACT_N;
  assign s_sh_m_a_ba[1:0] = s_sh_1_M_A_BA;
  assign s_sh_m_a_bg[1:0] = s_sh_1_M_A_BG;
  assign s_sh_m_a_cke[0] = s_sh_1_M_A_CKE;
  assign s_sh_m_a_clk_dn[0] = s_sh_1_M_A_CLK_DN;
  assign s_sh_m_a_clk_dp[0] = s_sh_1_M_A_CLK_DP;
  assign s_sh_m_a_cs_n[0] = s_sh_1_M_A_CS_N;
  assign s_sh_m_a_ma[16:0] = s_sh_1_M_A_MA;
  assign s_sh_m_a_odt[0] = s_sh_1_M_A_ODT;
  assign s_sh_m_a_par = s_sh_1_M_A_PAR;
  assign s_sh_m_b_act_n = s_sh_1_M_B_ACT_N;
  assign s_sh_m_b_ba[1:0] = s_sh_1_M_B_BA;
  assign s_sh_m_b_bg[1:0] = s_sh_1_M_B_BG;
  assign s_sh_m_b_cke[0] = s_sh_1_M_B_CKE;
  assign s_sh_m_b_clk_dn[0] = s_sh_1_M_B_CLK_DN;
  assign s_sh_m_b_clk_dp[0] = s_sh_1_M_B_CLK_DP;
  assign s_sh_m_b_cs_n[0] = s_sh_1_M_B_CS_N;
  assign s_sh_m_b_ma[16:0] = s_sh_1_M_B_MA;
  assign s_sh_m_b_odt[0] = s_sh_1_M_B_ODT;
  assign s_sh_m_b_par = s_sh_1_M_B_PAR;
  assign s_sh_m_d_act_n = s_sh_1_M_D_ACT_N;
  assign s_sh_m_d_ba[1:0] = s_sh_1_M_D_BA;
  assign s_sh_m_d_bg[1:0] = s_sh_1_M_D_BG;
  assign s_sh_m_d_cke[0] = s_sh_1_M_D_CKE;
  assign s_sh_m_d_clk_dn[0] = s_sh_1_M_D_CLK_DN;
  assign s_sh_m_d_clk_dp[0] = s_sh_1_M_D_CLK_DP;
  assign s_sh_m_d_cs_n[0] = s_sh_1_M_D_CS_N;
  assign s_sh_m_d_ma[16:0] = s_sh_1_M_D_MA;
  assign s_sh_m_d_odt[0] = s_sh_1_M_D_ODT;
  assign s_sh_m_d_par = s_sh_1_M_D_PAR;
  bd_3329_aws_0 aws
       (.CLK_300M_DIMM0_DN(s_sh_1_CLK_300M_DIMM0_DN),
        .CLK_300M_DIMM0_DP(s_sh_1_CLK_300M_DIMM0_DP),
        .CLK_300M_DIMM1_DN(s_sh_1_CLK_300M_DIMM1_DN),
        .CLK_300M_DIMM1_DP(s_sh_1_CLK_300M_DIMM1_DP),
        .CLK_300M_DIMM3_DN(s_sh_1_CLK_300M_DIMM3_DN),
        .CLK_300M_DIMM3_DP(s_sh_1_CLK_300M_DIMM3_DP),
        .M_A_ACT_N(s_sh_1_M_A_ACT_N),
        .M_A_BA(s_sh_1_M_A_BA),
        .M_A_BG(s_sh_1_M_A_BG),
        .M_A_CKE(s_sh_1_M_A_CKE),
        .M_A_CLK_DN(s_sh_1_M_A_CLK_DN),
        .M_A_CLK_DP(s_sh_1_M_A_CLK_DP),
        .M_A_CS_N(s_sh_1_M_A_CS_N),
        .M_A_DQ(s_sh_m_a_dq[63:0]),
        .M_A_DQS_DN(s_sh_m_a_dqs_dn[17:0]),
        .M_A_DQS_DP(s_sh_m_a_dqs_dp[17:0]),
        .M_A_ECC(s_sh_m_a_ecc[7:0]),
        .M_A_MA(s_sh_1_M_A_MA),
        .M_A_ODT(s_sh_1_M_A_ODT),
        .M_A_PAR(s_sh_1_M_A_PAR),
        .M_B_ACT_N(s_sh_1_M_B_ACT_N),
        .M_B_BA(s_sh_1_M_B_BA),
        .M_B_BG(s_sh_1_M_B_BG),
        .M_B_CKE(s_sh_1_M_B_CKE),
        .M_B_CLK_DN(s_sh_1_M_B_CLK_DN),
        .M_B_CLK_DP(s_sh_1_M_B_CLK_DP),
        .M_B_CS_N(s_sh_1_M_B_CS_N),
        .M_B_DQ(s_sh_m_b_dq[63:0]),
        .M_B_DQS_DN(s_sh_m_b_dqs_dn[17:0]),
        .M_B_DQS_DP(s_sh_m_b_dqs_dp[17:0]),
        .M_B_ECC(s_sh_m_b_ecc[7:0]),
        .M_B_MA(s_sh_1_M_B_MA),
        .M_B_ODT(s_sh_1_M_B_ODT),
        .M_B_PAR(s_sh_1_M_B_PAR),
        .M_D_ACT_N(s_sh_1_M_D_ACT_N),
        .M_D_BA(s_sh_1_M_D_BA),
        .M_D_BG(s_sh_1_M_D_BG),
        .M_D_CKE(s_sh_1_M_D_CKE),
        .M_D_CLK_DN(s_sh_1_M_D_CLK_DN),
        .M_D_CLK_DP(s_sh_1_M_D_CLK_DP),
        .M_D_CS_N(s_sh_1_M_D_CS_N),
        .M_D_DQ(s_sh_m_d_dq[63:0]),
        .M_D_DQS_DN(s_sh_m_d_dqs_dn[17:0]),
        .M_D_DQS_DP(s_sh_m_d_dqs_dp[17:0]),
        .M_D_ECC(s_sh_m_d_ecc[7:0]),
        .M_D_MA(s_sh_1_M_D_MA),
        .M_D_ODT(s_sh_1_M_D_ODT),
        .M_D_PAR(s_sh_1_M_D_PAR),
        .cl_RST_DIMM_A_N(s_sh_1_cl_RST_DIMM_A_N),
        .cl_RST_DIMM_B_N(s_sh_1_cl_RST_DIMM_B_N),
        .cl_RST_DIMM_D_N(s_sh_1_cl_RST_DIMM_D_N),
        .cl_sh_ddr_araddr(s_sh_1_cl_sh_ddr_araddr),
        .cl_sh_ddr_arburst(s_sh_1_cl_sh_ddr_arburst),
        .cl_sh_ddr_arid(s_sh_1_cl_sh_ddr_arid),
        .cl_sh_ddr_arlen(s_sh_1_cl_sh_ddr_arlen),
        .cl_sh_ddr_arsize(s_sh_1_cl_sh_ddr_arsize),
        .cl_sh_ddr_arvalid(s_sh_1_cl_sh_ddr_arvalid),
        .cl_sh_ddr_awaddr(s_sh_1_cl_sh_ddr_awaddr),
        .cl_sh_ddr_awburst(s_sh_1_cl_sh_ddr_awburst),
        .cl_sh_ddr_awid(s_sh_1_cl_sh_ddr_awid),
        .cl_sh_ddr_awlen(s_sh_1_cl_sh_ddr_awlen),
        .cl_sh_ddr_awsize(s_sh_1_cl_sh_ddr_awsize),
        .cl_sh_ddr_awvalid(s_sh_1_cl_sh_ddr_awvalid),
        .cl_sh_ddr_bready(s_sh_1_cl_sh_ddr_bready),
        .cl_sh_ddr_rready(s_sh_1_cl_sh_ddr_rready),
        .cl_sh_ddr_wdata(s_sh_1_cl_sh_ddr_wdata),
        .cl_sh_ddr_wid(s_sh_1_cl_sh_ddr_wid),
        .cl_sh_ddr_wlast(s_sh_1_cl_sh_ddr_wlast),
        .cl_sh_ddr_wstrb(s_sh_1_cl_sh_ddr_wstrb),
        .cl_sh_ddr_wvalid(s_sh_1_cl_sh_ddr_wvalid),
        .clk_main_a0(s_sh_1_clk_main_a0),
        .clk_main_a0_out(aws_clk_main_a0_out),
        .ddr_sh_stat_ack0(s_sh_1_ddr_sh_stat_ack0),
        .ddr_sh_stat_ack1(s_sh_1_ddr_sh_stat_ack1),
        .ddr_sh_stat_ack2(s_sh_1_ddr_sh_stat_ack2),
        .ddr_sh_stat_int0(s_sh_1_ddr_sh_stat_int0),
        .ddr_sh_stat_int1(s_sh_1_ddr_sh_stat_int1),
        .ddr_sh_stat_int2(s_sh_1_ddr_sh_stat_int2),
        .ddr_sh_stat_rdata0(s_sh_1_ddr_sh_stat_rdata0),
        .ddr_sh_stat_rdata1(s_sh_1_ddr_sh_stat_rdata1),
        .ddr_sh_stat_rdata2(s_sh_1_ddr_sh_stat_rdata2),
        .ddra_is_ready(aws_ddra_is_ready),
        .ddrb_is_ready(aws_ddrb_is_ready),
        .ddrc_is_ready(aws_ddrc_is_ready),
        .ddrd_is_ready(aws_ddrd_is_ready),
        .rst_main_n(s_sh_1_rst_main_n),
        .rst_main_n_out(aws_rst_main_n_out),
        .s_axi_ddra_araddr(vip_DDR4_MEM01_M_AXI_ARADDR),
        .s_axi_ddra_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ddra_arlen(vip_DDR4_MEM01_M_AXI_ARLEN),
        .s_axi_ddra_arready(vip_DDR4_MEM01_M_AXI_ARREADY),
        .s_axi_ddra_arsize({1'b1,1'b1,1'b0}),
        .s_axi_ddra_arvalid(vip_DDR4_MEM01_M_AXI_ARVALID),
        .s_axi_ddra_awaddr(vip_DDR4_MEM01_M_AXI_AWADDR),
        .s_axi_ddra_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ddra_awlen(vip_DDR4_MEM01_M_AXI_AWLEN),
        .s_axi_ddra_awready(vip_DDR4_MEM01_M_AXI_AWREADY),
        .s_axi_ddra_awsize({1'b1,1'b1,1'b0}),
        .s_axi_ddra_awvalid(vip_DDR4_MEM01_M_AXI_AWVALID),
        .s_axi_ddra_bready(vip_DDR4_MEM01_M_AXI_BREADY),
        .s_axi_ddra_bresp(vip_DDR4_MEM01_M_AXI_BRESP),
        .s_axi_ddra_bvalid(vip_DDR4_MEM01_M_AXI_BVALID),
        .s_axi_ddra_rdata(vip_DDR4_MEM01_M_AXI_RDATA),
        .s_axi_ddra_rlast(vip_DDR4_MEM01_M_AXI_RLAST),
        .s_axi_ddra_rready(vip_DDR4_MEM01_M_AXI_RREADY),
        .s_axi_ddra_rresp(vip_DDR4_MEM01_M_AXI_RRESP),
        .s_axi_ddra_rvalid(vip_DDR4_MEM01_M_AXI_RVALID),
        .s_axi_ddra_wdata(vip_DDR4_MEM01_M_AXI_WDATA),
        .s_axi_ddra_wlast(vip_DDR4_MEM01_M_AXI_WLAST),
        .s_axi_ddra_wready(vip_DDR4_MEM01_M_AXI_WREADY),
        .s_axi_ddra_wstrb(vip_DDR4_MEM01_M_AXI_WSTRB),
        .s_axi_ddra_wvalid(vip_DDR4_MEM01_M_AXI_WVALID),
        .s_axi_ddrb_araddr(vip_DDR4_MEM02_M_AXI_ARADDR),
        .s_axi_ddrb_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ddrb_arlen(vip_DDR4_MEM02_M_AXI_ARLEN),
        .s_axi_ddrb_arready(vip_DDR4_MEM02_M_AXI_ARREADY),
        .s_axi_ddrb_arsize({1'b1,1'b1,1'b0}),
        .s_axi_ddrb_arvalid(vip_DDR4_MEM02_M_AXI_ARVALID),
        .s_axi_ddrb_awaddr(vip_DDR4_MEM02_M_AXI_AWADDR),
        .s_axi_ddrb_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ddrb_awlen(vip_DDR4_MEM02_M_AXI_AWLEN),
        .s_axi_ddrb_awready(vip_DDR4_MEM02_M_AXI_AWREADY),
        .s_axi_ddrb_awsize({1'b1,1'b1,1'b0}),
        .s_axi_ddrb_awvalid(vip_DDR4_MEM02_M_AXI_AWVALID),
        .s_axi_ddrb_bready(vip_DDR4_MEM02_M_AXI_BREADY),
        .s_axi_ddrb_bresp(vip_DDR4_MEM02_M_AXI_BRESP),
        .s_axi_ddrb_bvalid(vip_DDR4_MEM02_M_AXI_BVALID),
        .s_axi_ddrb_rdata(vip_DDR4_MEM02_M_AXI_RDATA),
        .s_axi_ddrb_rlast(vip_DDR4_MEM02_M_AXI_RLAST),
        .s_axi_ddrb_rready(vip_DDR4_MEM02_M_AXI_RREADY),
        .s_axi_ddrb_rresp(vip_DDR4_MEM02_M_AXI_RRESP),
        .s_axi_ddrb_rvalid(vip_DDR4_MEM02_M_AXI_RVALID),
        .s_axi_ddrb_wdata(vip_DDR4_MEM02_M_AXI_WDATA),
        .s_axi_ddrb_wlast(vip_DDR4_MEM02_M_AXI_WLAST),
        .s_axi_ddrb_wready(vip_DDR4_MEM02_M_AXI_WREADY),
        .s_axi_ddrb_wstrb(vip_DDR4_MEM02_M_AXI_WSTRB),
        .s_axi_ddrb_wvalid(vip_DDR4_MEM02_M_AXI_WVALID),
        .s_axi_ddrc_araddr(vip_DDR4_MEM00_M_AXI_ARADDR),
        .s_axi_ddrc_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ddrc_arlen(vip_DDR4_MEM00_M_AXI_ARLEN),
        .s_axi_ddrc_arready(vip_DDR4_MEM00_M_AXI_ARREADY),
        .s_axi_ddrc_arsize({1'b1,1'b1,1'b0}),
        .s_axi_ddrc_arvalid(vip_DDR4_MEM00_M_AXI_ARVALID),
        .s_axi_ddrc_awaddr(vip_DDR4_MEM00_M_AXI_AWADDR),
        .s_axi_ddrc_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ddrc_awlen(vip_DDR4_MEM00_M_AXI_AWLEN),
        .s_axi_ddrc_awready(vip_DDR4_MEM00_M_AXI_AWREADY),
        .s_axi_ddrc_awsize({1'b1,1'b1,1'b0}),
        .s_axi_ddrc_awvalid(vip_DDR4_MEM00_M_AXI_AWVALID),
        .s_axi_ddrc_bready(vip_DDR4_MEM00_M_AXI_BREADY),
        .s_axi_ddrc_bresp(vip_DDR4_MEM00_M_AXI_BRESP),
        .s_axi_ddrc_bvalid(vip_DDR4_MEM00_M_AXI_BVALID),
        .s_axi_ddrc_rdata(vip_DDR4_MEM00_M_AXI_RDATA),
        .s_axi_ddrc_rlast(vip_DDR4_MEM00_M_AXI_RLAST),
        .s_axi_ddrc_rready(vip_DDR4_MEM00_M_AXI_RREADY),
        .s_axi_ddrc_rresp(vip_DDR4_MEM00_M_AXI_RRESP),
        .s_axi_ddrc_rvalid(vip_DDR4_MEM00_M_AXI_RVALID),
        .s_axi_ddrc_wdata(vip_DDR4_MEM00_M_AXI_WDATA),
        .s_axi_ddrc_wlast(vip_DDR4_MEM00_M_AXI_WLAST),
        .s_axi_ddrc_wready(vip_DDR4_MEM00_M_AXI_WREADY),
        .s_axi_ddrc_wstrb(vip_DDR4_MEM00_M_AXI_WSTRB),
        .s_axi_ddrc_wvalid(vip_DDR4_MEM00_M_AXI_WVALID),
        .s_axi_ddrd_araddr(vip_DDR4_MEM03_M_AXI_ARADDR),
        .s_axi_ddrd_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ddrd_arlen(vip_DDR4_MEM03_M_AXI_ARLEN),
        .s_axi_ddrd_arready(vip_DDR4_MEM03_M_AXI_ARREADY),
        .s_axi_ddrd_arsize({1'b1,1'b1,1'b0}),
        .s_axi_ddrd_arvalid(vip_DDR4_MEM03_M_AXI_ARVALID),
        .s_axi_ddrd_awaddr(vip_DDR4_MEM03_M_AXI_AWADDR),
        .s_axi_ddrd_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ddrd_awlen(vip_DDR4_MEM03_M_AXI_AWLEN),
        .s_axi_ddrd_awready(vip_DDR4_MEM03_M_AXI_AWREADY),
        .s_axi_ddrd_awsize({1'b1,1'b1,1'b0}),
        .s_axi_ddrd_awvalid(vip_DDR4_MEM03_M_AXI_AWVALID),
        .s_axi_ddrd_bready(vip_DDR4_MEM03_M_AXI_BREADY),
        .s_axi_ddrd_bresp(vip_DDR4_MEM03_M_AXI_BRESP),
        .s_axi_ddrd_bvalid(vip_DDR4_MEM03_M_AXI_BVALID),
        .s_axi_ddrd_rdata(vip_DDR4_MEM03_M_AXI_RDATA),
        .s_axi_ddrd_rlast(vip_DDR4_MEM03_M_AXI_RLAST),
        .s_axi_ddrd_rready(vip_DDR4_MEM03_M_AXI_RREADY),
        .s_axi_ddrd_rresp(vip_DDR4_MEM03_M_AXI_RRESP),
        .s_axi_ddrd_rvalid(vip_DDR4_MEM03_M_AXI_RVALID),
        .s_axi_ddrd_wdata(vip_DDR4_MEM03_M_AXI_WDATA),
        .s_axi_ddrd_wlast(vip_DDR4_MEM03_M_AXI_WLAST),
        .s_axi_ddrd_wready(vip_DDR4_MEM03_M_AXI_WREADY),
        .s_axi_ddrd_wstrb(vip_DDR4_MEM03_M_AXI_WSTRB),
        .s_axi_ddrd_wvalid(vip_DDR4_MEM03_M_AXI_WVALID),
        .sh_cl_ddr_arready(s_sh_1_sh_cl_ddr_arready),
        .sh_cl_ddr_awready(s_sh_1_sh_cl_ddr_awready),
        .sh_cl_ddr_bid(s_sh_1_sh_cl_ddr_bid),
        .sh_cl_ddr_bresp(s_sh_1_sh_cl_ddr_bresp),
        .sh_cl_ddr_bvalid(s_sh_1_sh_cl_ddr_bvalid),
        .sh_cl_ddr_is_ready(s_sh_1_sh_cl_ddr_is_ready),
        .sh_cl_ddr_rdata(s_sh_1_sh_cl_ddr_rdata),
        .sh_cl_ddr_rid(s_sh_1_sh_cl_ddr_rid),
        .sh_cl_ddr_rlast(s_sh_1_sh_cl_ddr_rlast),
        .sh_cl_ddr_rresp(s_sh_1_sh_cl_ddr_rresp),
        .sh_cl_ddr_rvalid(s_sh_1_sh_cl_ddr_rvalid),
        .sh_cl_ddr_wready(s_sh_1_sh_cl_ddr_wready),
        .sh_ddr_stat_addr0(s_sh_1_sh_ddr_stat_addr0),
        .sh_ddr_stat_addr1(s_sh_1_sh_ddr_stat_addr1),
        .sh_ddr_stat_addr2(s_sh_1_sh_ddr_stat_addr2),
        .sh_ddr_stat_rd0(s_sh_1_sh_ddr_stat_rd0),
        .sh_ddr_stat_rd1(s_sh_1_sh_ddr_stat_rd1),
        .sh_ddr_stat_rd2(s_sh_1_sh_ddr_stat_rd2),
        .sh_ddr_stat_wdata0(s_sh_1_sh_ddr_stat_wdata0),
        .sh_ddr_stat_wdata1(s_sh_1_sh_ddr_stat_wdata1),
        .sh_ddr_stat_wdata2(s_sh_1_sh_ddr_stat_wdata2),
        .sh_ddr_stat_wr0(s_sh_1_sh_ddr_stat_wr0),
        .sh_ddr_stat_wr1(s_sh_1_sh_ddr_stat_wr1),
        .sh_ddr_stat_wr2(s_sh_1_sh_ddr_stat_wr2));
  bd_3329_calib_concat_0 calib_concat
       (.In0(aws_ddra_is_ready),
        .In1(aws_ddrb_is_ready),
        .In2(aws_ddrc_is_ready),
        .In3(aws_ddrd_is_ready),
        .dout(calib_concat_dout));
  bd_3329_calib_reduce_0 calib_reduce
       (.Op1(calib_concat_dout),
        .Res(calib_reduce_Res));
  bd_3329_plram_mem00_0 plram_mem00
       (.bram_addr_a(plram_mem00_BRAM_PORTA_ADDR),
        .bram_addr_b(plram_mem00_BRAM_PORTB_ADDR),
        .bram_clk_a(plram_mem00_BRAM_PORTA_CLK),
        .bram_clk_b(plram_mem00_BRAM_PORTB_CLK),
        .bram_en_a(plram_mem00_BRAM_PORTA_EN),
        .bram_en_b(plram_mem00_BRAM_PORTB_EN),
        .bram_rddata_a(plram_mem00_BRAM_PORTA_DOUT),
        .bram_rddata_b(plram_mem00_BRAM_PORTB_DOUT),
        .bram_rst_a(plram_mem00_BRAM_PORTA_RST),
        .bram_rst_b(plram_mem00_BRAM_PORTB_RST),
        .bram_we_a(plram_mem00_BRAM_PORTA_WE),
        .bram_we_b(plram_mem00_BRAM_PORTB_WE),
        .bram_wrdata_a(plram_mem00_BRAM_PORTA_DIN),
        .bram_wrdata_b(plram_mem00_BRAM_PORTB_DIN),
        .s_axi_aclk(aclk_1),
        .s_axi_araddr(vip_PLRAM_MEM00_M_AXI_ARADDR),
        .s_axi_arburst(vip_PLRAM_MEM00_M_AXI_ARBURST),
        .s_axi_arcache(vip_PLRAM_MEM00_M_AXI_ARCACHE),
        .s_axi_aresetn(psr_aclk_SLR2_interconnect_aresetn),
        .s_axi_arlen(vip_PLRAM_MEM00_M_AXI_ARLEN),
        .s_axi_arlock(vip_PLRAM_MEM00_M_AXI_ARLOCK),
        .s_axi_arprot(vip_PLRAM_MEM00_M_AXI_ARPROT),
        .s_axi_arready(vip_PLRAM_MEM00_M_AXI_ARREADY),
        .s_axi_arsize({1'b1,1'b1,1'b0}),
        .s_axi_arvalid(vip_PLRAM_MEM00_M_AXI_ARVALID),
        .s_axi_awaddr(vip_PLRAM_MEM00_M_AXI_AWADDR),
        .s_axi_awburst(vip_PLRAM_MEM00_M_AXI_AWBURST),
        .s_axi_awcache(vip_PLRAM_MEM00_M_AXI_AWCACHE),
        .s_axi_awlen(vip_PLRAM_MEM00_M_AXI_AWLEN),
        .s_axi_awlock(vip_PLRAM_MEM00_M_AXI_AWLOCK),
        .s_axi_awprot(vip_PLRAM_MEM00_M_AXI_AWPROT),
        .s_axi_awready(vip_PLRAM_MEM00_M_AXI_AWREADY),
        .s_axi_awsize({1'b1,1'b1,1'b0}),
        .s_axi_awvalid(vip_PLRAM_MEM00_M_AXI_AWVALID),
        .s_axi_bready(vip_PLRAM_MEM00_M_AXI_BREADY),
        .s_axi_bresp(vip_PLRAM_MEM00_M_AXI_BRESP),
        .s_axi_bvalid(vip_PLRAM_MEM00_M_AXI_BVALID),
        .s_axi_rdata(vip_PLRAM_MEM00_M_AXI_RDATA),
        .s_axi_rlast(vip_PLRAM_MEM00_M_AXI_RLAST),
        .s_axi_rready(vip_PLRAM_MEM00_M_AXI_RREADY),
        .s_axi_rresp(vip_PLRAM_MEM00_M_AXI_RRESP),
        .s_axi_rvalid(vip_PLRAM_MEM00_M_AXI_RVALID),
        .s_axi_wdata(vip_PLRAM_MEM00_M_AXI_WDATA),
        .s_axi_wlast(vip_PLRAM_MEM00_M_AXI_WLAST),
        .s_axi_wready(vip_PLRAM_MEM00_M_AXI_WREADY),
        .s_axi_wstrb(vip_PLRAM_MEM00_M_AXI_WSTRB),
        .s_axi_wvalid(vip_PLRAM_MEM00_M_AXI_WVALID));
  bd_3329_plram_mem00_bram_0 plram_mem00_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,plram_mem00_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,plram_mem00_BRAM_PORTB_ADDR}),
        .clka(plram_mem00_BRAM_PORTA_CLK),
        .clkb(plram_mem00_BRAM_PORTB_CLK),
        .dina(plram_mem00_BRAM_PORTA_DIN),
        .dinb(plram_mem00_BRAM_PORTB_DIN),
        .douta(plram_mem00_BRAM_PORTA_DOUT),
        .doutb(plram_mem00_BRAM_PORTB_DOUT),
        .ena(plram_mem00_BRAM_PORTA_EN),
        .enb(plram_mem00_BRAM_PORTB_EN),
        .rsta(plram_mem00_BRAM_PORTA_RST),
        .rstb(plram_mem00_BRAM_PORTB_RST),
        .wea(plram_mem00_BRAM_PORTA_WE),
        .web(plram_mem00_BRAM_PORTB_WE));
  bd_3329_plram_mem01_0 plram_mem01
       (.bram_addr_a(plram_mem01_BRAM_PORTA_ADDR),
        .bram_addr_b(plram_mem01_BRAM_PORTB_ADDR),
        .bram_clk_a(plram_mem01_BRAM_PORTA_CLK),
        .bram_clk_b(plram_mem01_BRAM_PORTB_CLK),
        .bram_en_a(plram_mem01_BRAM_PORTA_EN),
        .bram_en_b(plram_mem01_BRAM_PORTB_EN),
        .bram_rddata_a(plram_mem01_BRAM_PORTA_DOUT),
        .bram_rddata_b(plram_mem01_BRAM_PORTB_DOUT),
        .bram_rst_a(plram_mem01_BRAM_PORTA_RST),
        .bram_rst_b(plram_mem01_BRAM_PORTB_RST),
        .bram_we_a(plram_mem01_BRAM_PORTA_WE),
        .bram_we_b(plram_mem01_BRAM_PORTB_WE),
        .bram_wrdata_a(plram_mem01_BRAM_PORTA_DIN),
        .bram_wrdata_b(plram_mem01_BRAM_PORTB_DIN),
        .s_axi_aclk(aclk_1),
        .s_axi_araddr(vip_PLRAM_MEM01_M_AXI_ARADDR),
        .s_axi_arburst(vip_PLRAM_MEM01_M_AXI_ARBURST),
        .s_axi_arcache(vip_PLRAM_MEM01_M_AXI_ARCACHE),
        .s_axi_aresetn(psr_aclk_SLR1_interconnect_aresetn),
        .s_axi_arlen(vip_PLRAM_MEM01_M_AXI_ARLEN),
        .s_axi_arlock(vip_PLRAM_MEM01_M_AXI_ARLOCK),
        .s_axi_arprot(vip_PLRAM_MEM01_M_AXI_ARPROT),
        .s_axi_arready(vip_PLRAM_MEM01_M_AXI_ARREADY),
        .s_axi_arsize({1'b1,1'b1,1'b0}),
        .s_axi_arvalid(vip_PLRAM_MEM01_M_AXI_ARVALID),
        .s_axi_awaddr(vip_PLRAM_MEM01_M_AXI_AWADDR),
        .s_axi_awburst(vip_PLRAM_MEM01_M_AXI_AWBURST),
        .s_axi_awcache(vip_PLRAM_MEM01_M_AXI_AWCACHE),
        .s_axi_awlen(vip_PLRAM_MEM01_M_AXI_AWLEN),
        .s_axi_awlock(vip_PLRAM_MEM01_M_AXI_AWLOCK),
        .s_axi_awprot(vip_PLRAM_MEM01_M_AXI_AWPROT),
        .s_axi_awready(vip_PLRAM_MEM01_M_AXI_AWREADY),
        .s_axi_awsize({1'b1,1'b1,1'b0}),
        .s_axi_awvalid(vip_PLRAM_MEM01_M_AXI_AWVALID),
        .s_axi_bready(vip_PLRAM_MEM01_M_AXI_BREADY),
        .s_axi_bresp(vip_PLRAM_MEM01_M_AXI_BRESP),
        .s_axi_bvalid(vip_PLRAM_MEM01_M_AXI_BVALID),
        .s_axi_rdata(vip_PLRAM_MEM01_M_AXI_RDATA),
        .s_axi_rlast(vip_PLRAM_MEM01_M_AXI_RLAST),
        .s_axi_rready(vip_PLRAM_MEM01_M_AXI_RREADY),
        .s_axi_rresp(vip_PLRAM_MEM01_M_AXI_RRESP),
        .s_axi_rvalid(vip_PLRAM_MEM01_M_AXI_RVALID),
        .s_axi_wdata(vip_PLRAM_MEM01_M_AXI_WDATA),
        .s_axi_wlast(vip_PLRAM_MEM01_M_AXI_WLAST),
        .s_axi_wready(vip_PLRAM_MEM01_M_AXI_WREADY),
        .s_axi_wstrb(vip_PLRAM_MEM01_M_AXI_WSTRB),
        .s_axi_wvalid(vip_PLRAM_MEM01_M_AXI_WVALID));
  bd_3329_plram_mem01_bram_0 plram_mem01_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,plram_mem01_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,plram_mem01_BRAM_PORTB_ADDR}),
        .clka(plram_mem01_BRAM_PORTA_CLK),
        .clkb(plram_mem01_BRAM_PORTB_CLK),
        .dina(plram_mem01_BRAM_PORTA_DIN),
        .dinb(plram_mem01_BRAM_PORTB_DIN),
        .douta(plram_mem01_BRAM_PORTA_DOUT),
        .doutb(plram_mem01_BRAM_PORTB_DOUT),
        .ena(plram_mem01_BRAM_PORTA_EN),
        .enb(plram_mem01_BRAM_PORTB_EN),
        .rsta(plram_mem01_BRAM_PORTA_RST),
        .rstb(plram_mem01_BRAM_PORTB_RST),
        .wea(plram_mem01_BRAM_PORTA_WE),
        .web(plram_mem01_BRAM_PORTB_WE));
  bd_3329_plram_mem02_0 plram_mem02
       (.bram_addr_a(plram_mem02_BRAM_PORTA_ADDR),
        .bram_addr_b(plram_mem02_BRAM_PORTB_ADDR),
        .bram_clk_a(plram_mem02_BRAM_PORTA_CLK),
        .bram_clk_b(plram_mem02_BRAM_PORTB_CLK),
        .bram_en_a(plram_mem02_BRAM_PORTA_EN),
        .bram_en_b(plram_mem02_BRAM_PORTB_EN),
        .bram_rddata_a(plram_mem02_BRAM_PORTA_DOUT),
        .bram_rddata_b(plram_mem02_BRAM_PORTB_DOUT),
        .bram_rst_a(plram_mem02_BRAM_PORTA_RST),
        .bram_rst_b(plram_mem02_BRAM_PORTB_RST),
        .bram_we_a(plram_mem02_BRAM_PORTA_WE),
        .bram_we_b(plram_mem02_BRAM_PORTB_WE),
        .bram_wrdata_a(plram_mem02_BRAM_PORTA_DIN),
        .bram_wrdata_b(plram_mem02_BRAM_PORTB_DIN),
        .s_axi_aclk(aclk_1),
        .s_axi_araddr(vip_PLRAM_MEM02_M_AXI_ARADDR),
        .s_axi_arburst(vip_PLRAM_MEM02_M_AXI_ARBURST),
        .s_axi_arcache(vip_PLRAM_MEM02_M_AXI_ARCACHE),
        .s_axi_aresetn(psr_aclk_SLR0_interconnect_aresetn),
        .s_axi_arlen(vip_PLRAM_MEM02_M_AXI_ARLEN),
        .s_axi_arlock(vip_PLRAM_MEM02_M_AXI_ARLOCK),
        .s_axi_arprot(vip_PLRAM_MEM02_M_AXI_ARPROT),
        .s_axi_arready(vip_PLRAM_MEM02_M_AXI_ARREADY),
        .s_axi_arsize({1'b1,1'b1,1'b0}),
        .s_axi_arvalid(vip_PLRAM_MEM02_M_AXI_ARVALID),
        .s_axi_awaddr(vip_PLRAM_MEM02_M_AXI_AWADDR),
        .s_axi_awburst(vip_PLRAM_MEM02_M_AXI_AWBURST),
        .s_axi_awcache(vip_PLRAM_MEM02_M_AXI_AWCACHE),
        .s_axi_awlen(vip_PLRAM_MEM02_M_AXI_AWLEN),
        .s_axi_awlock(vip_PLRAM_MEM02_M_AXI_AWLOCK),
        .s_axi_awprot(vip_PLRAM_MEM02_M_AXI_AWPROT),
        .s_axi_awready(vip_PLRAM_MEM02_M_AXI_AWREADY),
        .s_axi_awsize({1'b1,1'b1,1'b0}),
        .s_axi_awvalid(vip_PLRAM_MEM02_M_AXI_AWVALID),
        .s_axi_bready(vip_PLRAM_MEM02_M_AXI_BREADY),
        .s_axi_bresp(vip_PLRAM_MEM02_M_AXI_BRESP),
        .s_axi_bvalid(vip_PLRAM_MEM02_M_AXI_BVALID),
        .s_axi_rdata(vip_PLRAM_MEM02_M_AXI_RDATA),
        .s_axi_rlast(vip_PLRAM_MEM02_M_AXI_RLAST),
        .s_axi_rready(vip_PLRAM_MEM02_M_AXI_RREADY),
        .s_axi_rresp(vip_PLRAM_MEM02_M_AXI_RRESP),
        .s_axi_rvalid(vip_PLRAM_MEM02_M_AXI_RVALID),
        .s_axi_wdata(vip_PLRAM_MEM02_M_AXI_WDATA),
        .s_axi_wlast(vip_PLRAM_MEM02_M_AXI_WLAST),
        .s_axi_wready(vip_PLRAM_MEM02_M_AXI_WREADY),
        .s_axi_wstrb(vip_PLRAM_MEM02_M_AXI_WSTRB),
        .s_axi_wvalid(vip_PLRAM_MEM02_M_AXI_WVALID));
  bd_3329_plram_mem02_bram_0 plram_mem02_bram
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,plram_mem02_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,plram_mem02_BRAM_PORTB_ADDR}),
        .clka(plram_mem02_BRAM_PORTA_CLK),
        .clkb(plram_mem02_BRAM_PORTB_CLK),
        .dina(plram_mem02_BRAM_PORTA_DIN),
        .dinb(plram_mem02_BRAM_PORTB_DIN),
        .douta(plram_mem02_BRAM_PORTA_DOUT),
        .doutb(plram_mem02_BRAM_PORTB_DOUT),
        .ena(plram_mem02_BRAM_PORTA_EN),
        .enb(plram_mem02_BRAM_PORTB_EN),
        .rsta(plram_mem02_BRAM_PORTA_RST),
        .rstb(plram_mem02_BRAM_PORTB_RST),
        .wea(plram_mem02_BRAM_PORTA_WE),
        .web(plram_mem02_BRAM_PORTB_WE));
  bd_3329_vip_DDR4_MEM00_0 vip_DDR4_MEM00
       (.aclk(aws_clk_main_a0_out),
        .aresetn(aws_rst_main_n_out),
        .m_axi_araddr(vip_DDR4_MEM00_M_AXI_ARADDR),
        .m_axi_arlen(vip_DDR4_MEM00_M_AXI_ARLEN),
        .m_axi_arready(vip_DDR4_MEM00_M_AXI_ARREADY),
        .m_axi_arvalid(vip_DDR4_MEM00_M_AXI_ARVALID),
        .m_axi_awaddr(vip_DDR4_MEM00_M_AXI_AWADDR),
        .m_axi_awlen(vip_DDR4_MEM00_M_AXI_AWLEN),
        .m_axi_awready(vip_DDR4_MEM00_M_AXI_AWREADY),
        .m_axi_awvalid(vip_DDR4_MEM00_M_AXI_AWVALID),
        .m_axi_bready(vip_DDR4_MEM00_M_AXI_BREADY),
        .m_axi_bresp(vip_DDR4_MEM00_M_AXI_BRESP),
        .m_axi_bvalid(vip_DDR4_MEM00_M_AXI_BVALID),
        .m_axi_rdata(vip_DDR4_MEM00_M_AXI_RDATA),
        .m_axi_rlast(vip_DDR4_MEM00_M_AXI_RLAST),
        .m_axi_rready(vip_DDR4_MEM00_M_AXI_RREADY),
        .m_axi_rresp(vip_DDR4_MEM00_M_AXI_RRESP),
        .m_axi_rvalid(vip_DDR4_MEM00_M_AXI_RVALID),
        .m_axi_wdata(vip_DDR4_MEM00_M_AXI_WDATA),
        .m_axi_wlast(vip_DDR4_MEM00_M_AXI_WLAST),
        .m_axi_wready(vip_DDR4_MEM00_M_AXI_WREADY),
        .m_axi_wstrb(vip_DDR4_MEM00_M_AXI_WSTRB),
        .m_axi_wvalid(vip_DDR4_MEM00_M_AXI_WVALID),
        .s_axi_araddr(interconnect_DDR4_MEM00_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect_DDR4_MEM00_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect_DDR4_MEM00_M00_AXI_ARCACHE),
        .s_axi_arlen(interconnect_DDR4_MEM00_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect_DDR4_MEM00_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect_DDR4_MEM00_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect_DDR4_MEM00_M00_AXI_ARQOS),
        .s_axi_arready(interconnect_DDR4_MEM00_M00_AXI_ARREADY),
        .s_axi_arvalid(interconnect_DDR4_MEM00_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_DDR4_MEM00_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect_DDR4_MEM00_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect_DDR4_MEM00_M00_AXI_AWCACHE),
        .s_axi_awlen(interconnect_DDR4_MEM00_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect_DDR4_MEM00_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect_DDR4_MEM00_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect_DDR4_MEM00_M00_AXI_AWQOS),
        .s_axi_awready(interconnect_DDR4_MEM00_M00_AXI_AWREADY),
        .s_axi_awvalid(interconnect_DDR4_MEM00_M00_AXI_AWVALID),
        .s_axi_bready(interconnect_DDR4_MEM00_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_DDR4_MEM00_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_DDR4_MEM00_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_DDR4_MEM00_M00_AXI_RDATA),
        .s_axi_rlast(interconnect_DDR4_MEM00_M00_AXI_RLAST),
        .s_axi_rready(interconnect_DDR4_MEM00_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_DDR4_MEM00_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_DDR4_MEM00_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_DDR4_MEM00_M00_AXI_WDATA),
        .s_axi_wlast(interconnect_DDR4_MEM00_M00_AXI_WLAST),
        .s_axi_wready(interconnect_DDR4_MEM00_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_DDR4_MEM00_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_DDR4_MEM00_M00_AXI_WVALID));
  bd_3329_vip_DDR4_MEM01_0 vip_DDR4_MEM01
       (.aclk(aws_clk_main_a0_out),
        .aresetn(aws_rst_main_n_out),
        .m_axi_araddr(vip_DDR4_MEM01_M_AXI_ARADDR),
        .m_axi_arlen(vip_DDR4_MEM01_M_AXI_ARLEN),
        .m_axi_arready(vip_DDR4_MEM01_M_AXI_ARREADY),
        .m_axi_arvalid(vip_DDR4_MEM01_M_AXI_ARVALID),
        .m_axi_awaddr(vip_DDR4_MEM01_M_AXI_AWADDR),
        .m_axi_awlen(vip_DDR4_MEM01_M_AXI_AWLEN),
        .m_axi_awready(vip_DDR4_MEM01_M_AXI_AWREADY),
        .m_axi_awvalid(vip_DDR4_MEM01_M_AXI_AWVALID),
        .m_axi_bready(vip_DDR4_MEM01_M_AXI_BREADY),
        .m_axi_bresp(vip_DDR4_MEM01_M_AXI_BRESP),
        .m_axi_bvalid(vip_DDR4_MEM01_M_AXI_BVALID),
        .m_axi_rdata(vip_DDR4_MEM01_M_AXI_RDATA),
        .m_axi_rlast(vip_DDR4_MEM01_M_AXI_RLAST),
        .m_axi_rready(vip_DDR4_MEM01_M_AXI_RREADY),
        .m_axi_rresp(vip_DDR4_MEM01_M_AXI_RRESP),
        .m_axi_rvalid(vip_DDR4_MEM01_M_AXI_RVALID),
        .m_axi_wdata(vip_DDR4_MEM01_M_AXI_WDATA),
        .m_axi_wlast(vip_DDR4_MEM01_M_AXI_WLAST),
        .m_axi_wready(vip_DDR4_MEM01_M_AXI_WREADY),
        .m_axi_wstrb(vip_DDR4_MEM01_M_AXI_WSTRB),
        .m_axi_wvalid(vip_DDR4_MEM01_M_AXI_WVALID),
        .s_axi_araddr(interconnect_DDR4_MEM01_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect_DDR4_MEM01_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect_DDR4_MEM01_M00_AXI_ARCACHE),
        .s_axi_arlen(interconnect_DDR4_MEM01_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect_DDR4_MEM01_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect_DDR4_MEM01_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect_DDR4_MEM01_M00_AXI_ARQOS),
        .s_axi_arready(interconnect_DDR4_MEM01_M00_AXI_ARREADY),
        .s_axi_arvalid(interconnect_DDR4_MEM01_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_DDR4_MEM01_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect_DDR4_MEM01_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect_DDR4_MEM01_M00_AXI_AWCACHE),
        .s_axi_awlen(interconnect_DDR4_MEM01_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect_DDR4_MEM01_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect_DDR4_MEM01_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect_DDR4_MEM01_M00_AXI_AWQOS),
        .s_axi_awready(interconnect_DDR4_MEM01_M00_AXI_AWREADY),
        .s_axi_awvalid(interconnect_DDR4_MEM01_M00_AXI_AWVALID),
        .s_axi_bready(interconnect_DDR4_MEM01_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_DDR4_MEM01_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_DDR4_MEM01_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_DDR4_MEM01_M00_AXI_RDATA),
        .s_axi_rlast(interconnect_DDR4_MEM01_M00_AXI_RLAST),
        .s_axi_rready(interconnect_DDR4_MEM01_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_DDR4_MEM01_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_DDR4_MEM01_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_DDR4_MEM01_M00_AXI_WDATA),
        .s_axi_wlast(interconnect_DDR4_MEM01_M00_AXI_WLAST),
        .s_axi_wready(interconnect_DDR4_MEM01_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_DDR4_MEM01_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_DDR4_MEM01_M00_AXI_WVALID));
  bd_3329_vip_DDR4_MEM02_0 vip_DDR4_MEM02
       (.aclk(aws_clk_main_a0_out),
        .aresetn(aws_rst_main_n_out),
        .m_axi_araddr(vip_DDR4_MEM02_M_AXI_ARADDR),
        .m_axi_arlen(vip_DDR4_MEM02_M_AXI_ARLEN),
        .m_axi_arready(vip_DDR4_MEM02_M_AXI_ARREADY),
        .m_axi_arvalid(vip_DDR4_MEM02_M_AXI_ARVALID),
        .m_axi_awaddr(vip_DDR4_MEM02_M_AXI_AWADDR),
        .m_axi_awlen(vip_DDR4_MEM02_M_AXI_AWLEN),
        .m_axi_awready(vip_DDR4_MEM02_M_AXI_AWREADY),
        .m_axi_awvalid(vip_DDR4_MEM02_M_AXI_AWVALID),
        .m_axi_bready(vip_DDR4_MEM02_M_AXI_BREADY),
        .m_axi_bresp(vip_DDR4_MEM02_M_AXI_BRESP),
        .m_axi_bvalid(vip_DDR4_MEM02_M_AXI_BVALID),
        .m_axi_rdata(vip_DDR4_MEM02_M_AXI_RDATA),
        .m_axi_rlast(vip_DDR4_MEM02_M_AXI_RLAST),
        .m_axi_rready(vip_DDR4_MEM02_M_AXI_RREADY),
        .m_axi_rresp(vip_DDR4_MEM02_M_AXI_RRESP),
        .m_axi_rvalid(vip_DDR4_MEM02_M_AXI_RVALID),
        .m_axi_wdata(vip_DDR4_MEM02_M_AXI_WDATA),
        .m_axi_wlast(vip_DDR4_MEM02_M_AXI_WLAST),
        .m_axi_wready(vip_DDR4_MEM02_M_AXI_WREADY),
        .m_axi_wstrb(vip_DDR4_MEM02_M_AXI_WSTRB),
        .m_axi_wvalid(vip_DDR4_MEM02_M_AXI_WVALID),
        .s_axi_araddr(interconnect_DDR4_MEM02_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect_DDR4_MEM02_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect_DDR4_MEM02_M00_AXI_ARCACHE),
        .s_axi_arlen(interconnect_DDR4_MEM02_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect_DDR4_MEM02_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect_DDR4_MEM02_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect_DDR4_MEM02_M00_AXI_ARQOS),
        .s_axi_arready(interconnect_DDR4_MEM02_M00_AXI_ARREADY),
        .s_axi_arvalid(interconnect_DDR4_MEM02_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_DDR4_MEM02_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect_DDR4_MEM02_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect_DDR4_MEM02_M00_AXI_AWCACHE),
        .s_axi_awlen(interconnect_DDR4_MEM02_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect_DDR4_MEM02_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect_DDR4_MEM02_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect_DDR4_MEM02_M00_AXI_AWQOS),
        .s_axi_awready(interconnect_DDR4_MEM02_M00_AXI_AWREADY),
        .s_axi_awvalid(interconnect_DDR4_MEM02_M00_AXI_AWVALID),
        .s_axi_bready(interconnect_DDR4_MEM02_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_DDR4_MEM02_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_DDR4_MEM02_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_DDR4_MEM02_M00_AXI_RDATA),
        .s_axi_rlast(interconnect_DDR4_MEM02_M00_AXI_RLAST),
        .s_axi_rready(interconnect_DDR4_MEM02_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_DDR4_MEM02_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_DDR4_MEM02_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_DDR4_MEM02_M00_AXI_WDATA),
        .s_axi_wlast(interconnect_DDR4_MEM02_M00_AXI_WLAST),
        .s_axi_wready(interconnect_DDR4_MEM02_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_DDR4_MEM02_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_DDR4_MEM02_M00_AXI_WVALID));
  bd_3329_vip_DDR4_MEM03_0 vip_DDR4_MEM03
       (.aclk(aws_clk_main_a0_out),
        .aresetn(aws_rst_main_n_out),
        .m_axi_araddr(vip_DDR4_MEM03_M_AXI_ARADDR),
        .m_axi_arlen(vip_DDR4_MEM03_M_AXI_ARLEN),
        .m_axi_arready(vip_DDR4_MEM03_M_AXI_ARREADY),
        .m_axi_arvalid(vip_DDR4_MEM03_M_AXI_ARVALID),
        .m_axi_awaddr(vip_DDR4_MEM03_M_AXI_AWADDR),
        .m_axi_awlen(vip_DDR4_MEM03_M_AXI_AWLEN),
        .m_axi_awready(vip_DDR4_MEM03_M_AXI_AWREADY),
        .m_axi_awvalid(vip_DDR4_MEM03_M_AXI_AWVALID),
        .m_axi_bready(vip_DDR4_MEM03_M_AXI_BREADY),
        .m_axi_bresp(vip_DDR4_MEM03_M_AXI_BRESP),
        .m_axi_bvalid(vip_DDR4_MEM03_M_AXI_BVALID),
        .m_axi_rdata(vip_DDR4_MEM03_M_AXI_RDATA),
        .m_axi_rlast(vip_DDR4_MEM03_M_AXI_RLAST),
        .m_axi_rready(vip_DDR4_MEM03_M_AXI_RREADY),
        .m_axi_rresp(vip_DDR4_MEM03_M_AXI_RRESP),
        .m_axi_rvalid(vip_DDR4_MEM03_M_AXI_RVALID),
        .m_axi_wdata(vip_DDR4_MEM03_M_AXI_WDATA),
        .m_axi_wlast(vip_DDR4_MEM03_M_AXI_WLAST),
        .m_axi_wready(vip_DDR4_MEM03_M_AXI_WREADY),
        .m_axi_wstrb(vip_DDR4_MEM03_M_AXI_WSTRB),
        .m_axi_wvalid(vip_DDR4_MEM03_M_AXI_WVALID),
        .s_axi_araddr(interconnect_DDR4_MEM03_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect_DDR4_MEM03_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect_DDR4_MEM03_M00_AXI_ARCACHE),
        .s_axi_arlen(interconnect_DDR4_MEM03_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect_DDR4_MEM03_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect_DDR4_MEM03_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect_DDR4_MEM03_M00_AXI_ARQOS),
        .s_axi_arready(interconnect_DDR4_MEM03_M00_AXI_ARREADY),
        .s_axi_arvalid(interconnect_DDR4_MEM03_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_DDR4_MEM03_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect_DDR4_MEM03_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect_DDR4_MEM03_M00_AXI_AWCACHE),
        .s_axi_awlen(interconnect_DDR4_MEM03_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect_DDR4_MEM03_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect_DDR4_MEM03_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect_DDR4_MEM03_M00_AXI_AWQOS),
        .s_axi_awready(interconnect_DDR4_MEM03_M00_AXI_AWREADY),
        .s_axi_awvalid(interconnect_DDR4_MEM03_M00_AXI_AWVALID),
        .s_axi_bready(interconnect_DDR4_MEM03_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_DDR4_MEM03_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_DDR4_MEM03_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_DDR4_MEM03_M00_AXI_RDATA),
        .s_axi_rlast(interconnect_DDR4_MEM03_M00_AXI_RLAST),
        .s_axi_rready(interconnect_DDR4_MEM03_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_DDR4_MEM03_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_DDR4_MEM03_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_DDR4_MEM03_M00_AXI_WDATA),
        .s_axi_wlast(interconnect_DDR4_MEM03_M00_AXI_WLAST),
        .s_axi_wready(interconnect_DDR4_MEM03_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_DDR4_MEM03_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_DDR4_MEM03_M00_AXI_WVALID));
  bd_3329_vip_PLRAM_MEM00_0 vip_PLRAM_MEM00
       (.aclk(aclk_1),
        .aresetn(psr_aclk_SLR2_interconnect_aresetn),
        .m_axi_araddr(vip_PLRAM_MEM00_M_AXI_ARADDR),
        .m_axi_arburst(vip_PLRAM_MEM00_M_AXI_ARBURST),
        .m_axi_arcache(vip_PLRAM_MEM00_M_AXI_ARCACHE),
        .m_axi_arlen(vip_PLRAM_MEM00_M_AXI_ARLEN),
        .m_axi_arlock(vip_PLRAM_MEM00_M_AXI_ARLOCK),
        .m_axi_arprot(vip_PLRAM_MEM00_M_AXI_ARPROT),
        .m_axi_arready(vip_PLRAM_MEM00_M_AXI_ARREADY),
        .m_axi_arvalid(vip_PLRAM_MEM00_M_AXI_ARVALID),
        .m_axi_awaddr(vip_PLRAM_MEM00_M_AXI_AWADDR),
        .m_axi_awburst(vip_PLRAM_MEM00_M_AXI_AWBURST),
        .m_axi_awcache(vip_PLRAM_MEM00_M_AXI_AWCACHE),
        .m_axi_awlen(vip_PLRAM_MEM00_M_AXI_AWLEN),
        .m_axi_awlock(vip_PLRAM_MEM00_M_AXI_AWLOCK),
        .m_axi_awprot(vip_PLRAM_MEM00_M_AXI_AWPROT),
        .m_axi_awready(vip_PLRAM_MEM00_M_AXI_AWREADY),
        .m_axi_awvalid(vip_PLRAM_MEM00_M_AXI_AWVALID),
        .m_axi_bready(vip_PLRAM_MEM00_M_AXI_BREADY),
        .m_axi_bresp(vip_PLRAM_MEM00_M_AXI_BRESP),
        .m_axi_bvalid(vip_PLRAM_MEM00_M_AXI_BVALID),
        .m_axi_rdata(vip_PLRAM_MEM00_M_AXI_RDATA),
        .m_axi_rlast(vip_PLRAM_MEM00_M_AXI_RLAST),
        .m_axi_rready(vip_PLRAM_MEM00_M_AXI_RREADY),
        .m_axi_rresp(vip_PLRAM_MEM00_M_AXI_RRESP),
        .m_axi_rvalid(vip_PLRAM_MEM00_M_AXI_RVALID),
        .m_axi_wdata(vip_PLRAM_MEM00_M_AXI_WDATA),
        .m_axi_wlast(vip_PLRAM_MEM00_M_AXI_WLAST),
        .m_axi_wready(vip_PLRAM_MEM00_M_AXI_WREADY),
        .m_axi_wstrb(vip_PLRAM_MEM00_M_AXI_WSTRB),
        .m_axi_wvalid(vip_PLRAM_MEM00_M_AXI_WVALID),
        .s_axi_araddr(interconnect_PLRAM_MEM00_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect_PLRAM_MEM00_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect_PLRAM_MEM00_M00_AXI_ARCACHE),
        .s_axi_arlen(interconnect_PLRAM_MEM00_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect_PLRAM_MEM00_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect_PLRAM_MEM00_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect_PLRAM_MEM00_M00_AXI_ARQOS),
        .s_axi_arready(interconnect_PLRAM_MEM00_M00_AXI_ARREADY),
        .s_axi_arvalid(interconnect_PLRAM_MEM00_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_PLRAM_MEM00_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect_PLRAM_MEM00_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect_PLRAM_MEM00_M00_AXI_AWCACHE),
        .s_axi_awlen(interconnect_PLRAM_MEM00_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect_PLRAM_MEM00_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect_PLRAM_MEM00_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect_PLRAM_MEM00_M00_AXI_AWQOS),
        .s_axi_awready(interconnect_PLRAM_MEM00_M00_AXI_AWREADY),
        .s_axi_awvalid(interconnect_PLRAM_MEM00_M00_AXI_AWVALID),
        .s_axi_bready(interconnect_PLRAM_MEM00_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_PLRAM_MEM00_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_PLRAM_MEM00_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_PLRAM_MEM00_M00_AXI_RDATA),
        .s_axi_rlast(interconnect_PLRAM_MEM00_M00_AXI_RLAST),
        .s_axi_rready(interconnect_PLRAM_MEM00_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_PLRAM_MEM00_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_PLRAM_MEM00_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_PLRAM_MEM00_M00_AXI_WDATA),
        .s_axi_wlast(interconnect_PLRAM_MEM00_M00_AXI_WLAST),
        .s_axi_wready(interconnect_PLRAM_MEM00_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_PLRAM_MEM00_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_PLRAM_MEM00_M00_AXI_WVALID));
  bd_3329_vip_PLRAM_MEM01_0 vip_PLRAM_MEM01
       (.aclk(aclk_1),
        .aresetn(psr_aclk_SLR1_interconnect_aresetn),
        .m_axi_araddr(vip_PLRAM_MEM01_M_AXI_ARADDR),
        .m_axi_arburst(vip_PLRAM_MEM01_M_AXI_ARBURST),
        .m_axi_arcache(vip_PLRAM_MEM01_M_AXI_ARCACHE),
        .m_axi_arlen(vip_PLRAM_MEM01_M_AXI_ARLEN),
        .m_axi_arlock(vip_PLRAM_MEM01_M_AXI_ARLOCK),
        .m_axi_arprot(vip_PLRAM_MEM01_M_AXI_ARPROT),
        .m_axi_arready(vip_PLRAM_MEM01_M_AXI_ARREADY),
        .m_axi_arvalid(vip_PLRAM_MEM01_M_AXI_ARVALID),
        .m_axi_awaddr(vip_PLRAM_MEM01_M_AXI_AWADDR),
        .m_axi_awburst(vip_PLRAM_MEM01_M_AXI_AWBURST),
        .m_axi_awcache(vip_PLRAM_MEM01_M_AXI_AWCACHE),
        .m_axi_awlen(vip_PLRAM_MEM01_M_AXI_AWLEN),
        .m_axi_awlock(vip_PLRAM_MEM01_M_AXI_AWLOCK),
        .m_axi_awprot(vip_PLRAM_MEM01_M_AXI_AWPROT),
        .m_axi_awready(vip_PLRAM_MEM01_M_AXI_AWREADY),
        .m_axi_awvalid(vip_PLRAM_MEM01_M_AXI_AWVALID),
        .m_axi_bready(vip_PLRAM_MEM01_M_AXI_BREADY),
        .m_axi_bresp(vip_PLRAM_MEM01_M_AXI_BRESP),
        .m_axi_bvalid(vip_PLRAM_MEM01_M_AXI_BVALID),
        .m_axi_rdata(vip_PLRAM_MEM01_M_AXI_RDATA),
        .m_axi_rlast(vip_PLRAM_MEM01_M_AXI_RLAST),
        .m_axi_rready(vip_PLRAM_MEM01_M_AXI_RREADY),
        .m_axi_rresp(vip_PLRAM_MEM01_M_AXI_RRESP),
        .m_axi_rvalid(vip_PLRAM_MEM01_M_AXI_RVALID),
        .m_axi_wdata(vip_PLRAM_MEM01_M_AXI_WDATA),
        .m_axi_wlast(vip_PLRAM_MEM01_M_AXI_WLAST),
        .m_axi_wready(vip_PLRAM_MEM01_M_AXI_WREADY),
        .m_axi_wstrb(vip_PLRAM_MEM01_M_AXI_WSTRB),
        .m_axi_wvalid(vip_PLRAM_MEM01_M_AXI_WVALID),
        .s_axi_araddr(interconnect_PLRAM_MEM01_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect_PLRAM_MEM01_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect_PLRAM_MEM01_M00_AXI_ARCACHE),
        .s_axi_arlen(interconnect_PLRAM_MEM01_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect_PLRAM_MEM01_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect_PLRAM_MEM01_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect_PLRAM_MEM01_M00_AXI_ARQOS),
        .s_axi_arready(interconnect_PLRAM_MEM01_M00_AXI_ARREADY),
        .s_axi_arvalid(interconnect_PLRAM_MEM01_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_PLRAM_MEM01_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect_PLRAM_MEM01_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect_PLRAM_MEM01_M00_AXI_AWCACHE),
        .s_axi_awlen(interconnect_PLRAM_MEM01_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect_PLRAM_MEM01_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect_PLRAM_MEM01_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect_PLRAM_MEM01_M00_AXI_AWQOS),
        .s_axi_awready(interconnect_PLRAM_MEM01_M00_AXI_AWREADY),
        .s_axi_awvalid(interconnect_PLRAM_MEM01_M00_AXI_AWVALID),
        .s_axi_bready(interconnect_PLRAM_MEM01_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_PLRAM_MEM01_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_PLRAM_MEM01_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_PLRAM_MEM01_M00_AXI_RDATA),
        .s_axi_rlast(interconnect_PLRAM_MEM01_M00_AXI_RLAST),
        .s_axi_rready(interconnect_PLRAM_MEM01_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_PLRAM_MEM01_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_PLRAM_MEM01_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_PLRAM_MEM01_M00_AXI_WDATA),
        .s_axi_wlast(interconnect_PLRAM_MEM01_M00_AXI_WLAST),
        .s_axi_wready(interconnect_PLRAM_MEM01_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_PLRAM_MEM01_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_PLRAM_MEM01_M00_AXI_WVALID));
  bd_3329_vip_PLRAM_MEM02_0 vip_PLRAM_MEM02
       (.aclk(aclk_1),
        .aresetn(psr_aclk_SLR0_interconnect_aresetn),
        .m_axi_araddr(vip_PLRAM_MEM02_M_AXI_ARADDR),
        .m_axi_arburst(vip_PLRAM_MEM02_M_AXI_ARBURST),
        .m_axi_arcache(vip_PLRAM_MEM02_M_AXI_ARCACHE),
        .m_axi_arlen(vip_PLRAM_MEM02_M_AXI_ARLEN),
        .m_axi_arlock(vip_PLRAM_MEM02_M_AXI_ARLOCK),
        .m_axi_arprot(vip_PLRAM_MEM02_M_AXI_ARPROT),
        .m_axi_arready(vip_PLRAM_MEM02_M_AXI_ARREADY),
        .m_axi_arvalid(vip_PLRAM_MEM02_M_AXI_ARVALID),
        .m_axi_awaddr(vip_PLRAM_MEM02_M_AXI_AWADDR),
        .m_axi_awburst(vip_PLRAM_MEM02_M_AXI_AWBURST),
        .m_axi_awcache(vip_PLRAM_MEM02_M_AXI_AWCACHE),
        .m_axi_awlen(vip_PLRAM_MEM02_M_AXI_AWLEN),
        .m_axi_awlock(vip_PLRAM_MEM02_M_AXI_AWLOCK),
        .m_axi_awprot(vip_PLRAM_MEM02_M_AXI_AWPROT),
        .m_axi_awready(vip_PLRAM_MEM02_M_AXI_AWREADY),
        .m_axi_awvalid(vip_PLRAM_MEM02_M_AXI_AWVALID),
        .m_axi_bready(vip_PLRAM_MEM02_M_AXI_BREADY),
        .m_axi_bresp(vip_PLRAM_MEM02_M_AXI_BRESP),
        .m_axi_bvalid(vip_PLRAM_MEM02_M_AXI_BVALID),
        .m_axi_rdata(vip_PLRAM_MEM02_M_AXI_RDATA),
        .m_axi_rlast(vip_PLRAM_MEM02_M_AXI_RLAST),
        .m_axi_rready(vip_PLRAM_MEM02_M_AXI_RREADY),
        .m_axi_rresp(vip_PLRAM_MEM02_M_AXI_RRESP),
        .m_axi_rvalid(vip_PLRAM_MEM02_M_AXI_RVALID),
        .m_axi_wdata(vip_PLRAM_MEM02_M_AXI_WDATA),
        .m_axi_wlast(vip_PLRAM_MEM02_M_AXI_WLAST),
        .m_axi_wready(vip_PLRAM_MEM02_M_AXI_WREADY),
        .m_axi_wstrb(vip_PLRAM_MEM02_M_AXI_WSTRB),
        .m_axi_wvalid(vip_PLRAM_MEM02_M_AXI_WVALID),
        .s_axi_araddr(interconnect_PLRAM_MEM02_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect_PLRAM_MEM02_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect_PLRAM_MEM02_M00_AXI_ARCACHE),
        .s_axi_arlen(interconnect_PLRAM_MEM02_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect_PLRAM_MEM02_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect_PLRAM_MEM02_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect_PLRAM_MEM02_M00_AXI_ARQOS),
        .s_axi_arready(interconnect_PLRAM_MEM02_M00_AXI_ARREADY),
        .s_axi_arvalid(interconnect_PLRAM_MEM02_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_PLRAM_MEM02_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect_PLRAM_MEM02_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect_PLRAM_MEM02_M00_AXI_AWCACHE),
        .s_axi_awlen(interconnect_PLRAM_MEM02_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect_PLRAM_MEM02_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect_PLRAM_MEM02_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect_PLRAM_MEM02_M00_AXI_AWQOS),
        .s_axi_awready(interconnect_PLRAM_MEM02_M00_AXI_AWREADY),
        .s_axi_awvalid(interconnect_PLRAM_MEM02_M00_AXI_AWVALID),
        .s_axi_bready(interconnect_PLRAM_MEM02_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_PLRAM_MEM02_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_PLRAM_MEM02_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_PLRAM_MEM02_M00_AXI_RDATA),
        .s_axi_rlast(interconnect_PLRAM_MEM02_M00_AXI_RLAST),
        .s_axi_rready(interconnect_PLRAM_MEM02_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_PLRAM_MEM02_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_PLRAM_MEM02_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_PLRAM_MEM02_M00_AXI_WDATA),
        .s_axi_wlast(interconnect_PLRAM_MEM02_M00_AXI_WLAST),
        .s_axi_wready(interconnect_PLRAM_MEM02_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_PLRAM_MEM02_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_PLRAM_MEM02_M00_AXI_WVALID));
endmodule

module reset_imp_57Y9M4
   (aclk,
    aresetn,
    interconnect_aresetn,
    interconnect_aresetn1,
    interconnect_aresetn2);
  input aclk;
  input aresetn;
  output [0:0]interconnect_aresetn;
  output [0:0]interconnect_aresetn1;
  output [0:0]interconnect_aresetn2;

  wire aclk_1;
  wire aresetn_1;
  wire [0:0]psr_aclk_SLR0_interconnect_aresetn;
  wire [0:0]psr_aclk_SLR1_interconnect_aresetn;
  wire [0:0]psr_aclk_SLR2_interconnect_aresetn;

  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  assign interconnect_aresetn[0] = psr_aclk_SLR0_interconnect_aresetn;
  assign interconnect_aresetn1[0] = psr_aclk_SLR1_interconnect_aresetn;
  assign interconnect_aresetn2[0] = psr_aclk_SLR2_interconnect_aresetn;
  bd_3329_psr_aclk_SLR0_0 psr_aclk_SLR0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_1),
        .interconnect_aresetn(psr_aclk_SLR0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(aclk_1));
  bd_3329_psr_aclk_SLR1_0 psr_aclk_SLR1
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_1),
        .interconnect_aresetn(psr_aclk_SLR1_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(aclk_1));
  bd_3329_psr_aclk_SLR2_0 psr_aclk_SLR2
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn_1),
        .interconnect_aresetn(psr_aclk_SLR2_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(aclk_1));
endmodule
