// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.2.0
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="shell_utils_cuisr,hls_ip_2020_2_0,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7vx485t-ffg1157-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.750000,HLS_SYN_LAT=14,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=0,HLS_SYN_FF=591,HLS_SYN_LUT=729,HLS_VERSION=2020_2_0}" *)

module shell_utils_cuisr (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_a_AWVALID,
        m_axi_a_AWREADY,
        m_axi_a_AWADDR,
        m_axi_a_AWID,
        m_axi_a_AWLEN,
        m_axi_a_AWSIZE,
        m_axi_a_AWBURST,
        m_axi_a_AWLOCK,
        m_axi_a_AWCACHE,
        m_axi_a_AWPROT,
        m_axi_a_AWQOS,
        m_axi_a_AWREGION,
        m_axi_a_AWUSER,
        m_axi_a_WVALID,
        m_axi_a_WREADY,
        m_axi_a_WDATA,
        m_axi_a_WSTRB,
        m_axi_a_WLAST,
        m_axi_a_WID,
        m_axi_a_WUSER,
        m_axi_a_ARVALID,
        m_axi_a_ARREADY,
        m_axi_a_ARADDR,
        m_axi_a_ARID,
        m_axi_a_ARLEN,
        m_axi_a_ARSIZE,
        m_axi_a_ARBURST,
        m_axi_a_ARLOCK,
        m_axi_a_ARCACHE,
        m_axi_a_ARPROT,
        m_axi_a_ARQOS,
        m_axi_a_ARREGION,
        m_axi_a_ARUSER,
        m_axi_a_RVALID,
        m_axi_a_RREADY,
        m_axi_a_RDATA,
        m_axi_a_RLAST,
        m_axi_a_RID,
        m_axi_a_RUSER,
        m_axi_a_RRESP,
        m_axi_a_BVALID,
        m_axi_a_BREADY,
        m_axi_a_BRESP,
        m_axi_a_BID,
        m_axi_a_BUSER,
        Offset
);

parameter    ap_ST_fsm_state1 = 15'd1;
parameter    ap_ST_fsm_state2 = 15'd2;
parameter    ap_ST_fsm_state3 = 15'd4;
parameter    ap_ST_fsm_state4 = 15'd8;
parameter    ap_ST_fsm_state5 = 15'd16;
parameter    ap_ST_fsm_state6 = 15'd32;
parameter    ap_ST_fsm_state7 = 15'd64;
parameter    ap_ST_fsm_state8 = 15'd128;
parameter    ap_ST_fsm_state9 = 15'd256;
parameter    ap_ST_fsm_state10 = 15'd512;
parameter    ap_ST_fsm_state11 = 15'd1024;
parameter    ap_ST_fsm_state12 = 15'd2048;
parameter    ap_ST_fsm_state13 = 15'd4096;
parameter    ap_ST_fsm_state14 = 15'd8192;
parameter    ap_ST_fsm_state15 = 15'd16384;
parameter    C_M_AXI_A_ID_WIDTH = 1;
parameter    C_M_AXI_A_ADDR_WIDTH = 32;
parameter    C_M_AXI_A_DATA_WIDTH = 32;
parameter    C_M_AXI_A_AWUSER_WIDTH = 1;
parameter    C_M_AXI_A_ARUSER_WIDTH = 1;
parameter    C_M_AXI_A_WUSER_WIDTH = 1;
parameter    C_M_AXI_A_RUSER_WIDTH = 1;
parameter    C_M_AXI_A_BUSER_WIDTH = 1;
parameter    C_M_AXI_A_TARGET_ADDR = 0;
parameter    C_M_AXI_A_USER_VALUE = 0;
parameter    C_M_AXI_A_PROT_VALUE = 0;
parameter    C_M_AXI_A_CACHE_VALUE = 3;
parameter    C_M_AXI_DATA_WIDTH = 32;

parameter C_M_AXI_A_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_a_AWVALID;
input   m_axi_a_AWREADY;
output  [C_M_AXI_A_ADDR_WIDTH - 1:0] m_axi_a_AWADDR;
output  [C_M_AXI_A_ID_WIDTH - 1:0] m_axi_a_AWID;
output  [7:0] m_axi_a_AWLEN;
output  [2:0] m_axi_a_AWSIZE;
output  [1:0] m_axi_a_AWBURST;
output  [1:0] m_axi_a_AWLOCK;
output  [3:0] m_axi_a_AWCACHE;
output  [2:0] m_axi_a_AWPROT;
output  [3:0] m_axi_a_AWQOS;
output  [3:0] m_axi_a_AWREGION;
output  [C_M_AXI_A_AWUSER_WIDTH - 1:0] m_axi_a_AWUSER;
output   m_axi_a_WVALID;
input   m_axi_a_WREADY;
output  [C_M_AXI_A_DATA_WIDTH - 1:0] m_axi_a_WDATA;
output  [C_M_AXI_A_WSTRB_WIDTH - 1:0] m_axi_a_WSTRB;
output   m_axi_a_WLAST;
output  [C_M_AXI_A_ID_WIDTH - 1:0] m_axi_a_WID;
output  [C_M_AXI_A_WUSER_WIDTH - 1:0] m_axi_a_WUSER;
output   m_axi_a_ARVALID;
input   m_axi_a_ARREADY;
output  [C_M_AXI_A_ADDR_WIDTH - 1:0] m_axi_a_ARADDR;
output  [C_M_AXI_A_ID_WIDTH - 1:0] m_axi_a_ARID;
output  [7:0] m_axi_a_ARLEN;
output  [2:0] m_axi_a_ARSIZE;
output  [1:0] m_axi_a_ARBURST;
output  [1:0] m_axi_a_ARLOCK;
output  [3:0] m_axi_a_ARCACHE;
output  [2:0] m_axi_a_ARPROT;
output  [3:0] m_axi_a_ARQOS;
output  [3:0] m_axi_a_ARREGION;
output  [C_M_AXI_A_ARUSER_WIDTH - 1:0] m_axi_a_ARUSER;
input   m_axi_a_RVALID;
output   m_axi_a_RREADY;
input  [C_M_AXI_A_DATA_WIDTH - 1:0] m_axi_a_RDATA;
input   m_axi_a_RLAST;
input  [C_M_AXI_A_ID_WIDTH - 1:0] m_axi_a_RID;
input  [C_M_AXI_A_RUSER_WIDTH - 1:0] m_axi_a_RUSER;
input  [1:0] m_axi_a_RRESP;
input   m_axi_a_BVALID;
output   m_axi_a_BREADY;
input  [1:0] m_axi_a_BRESP;
input  [C_M_AXI_A_ID_WIDTH - 1:0] m_axi_a_BID;
input  [C_M_AXI_A_BUSER_WIDTH - 1:0] m_axi_a_BUSER;
input  [31:0] Offset;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    a_blk_n_AR;
wire    ap_CS_fsm_state3;
reg    a_blk_n_R;
wire    ap_CS_fsm_state10;
reg    a_blk_n_AW;
wire    ap_CS_fsm_state9;
reg    a_blk_n_W;
reg    a_blk_n_B;
wire    ap_CS_fsm_state15;
reg    a_AWVALID;
wire    a_AWREADY;
wire   [31:0] a_AWADDR;
reg    a_WVALID;
wire    a_WREADY;
reg    a_ARVALID;
wire    a_ARREADY;
wire   [31:0] a_ARADDR;
wire    a_RVALID;
reg    a_RREADY;
wire   [31:0] a_RDATA;
wire    a_RLAST;
wire   [0:0] a_RID;
wire   [0:0] a_RUSER;
wire   [1:0] a_RRESP;
wire    a_BVALID;
reg    a_BREADY;
wire   [1:0] a_BRESP;
wire   [0:0] a_BID;
wire   [0:0] a_BUSER;
wire   [31:0] add_ln50_fu_100_p2;
reg   [31:0] add_ln50_reg_128;
wire    ap_CS_fsm_state8;
wire  signed [63:0] sext_ln48_fu_89_p1;
wire  signed [63:0] sext_ln50_fu_106_p1;
reg   [31:0] Offset_assign_fu_42;
wire  signed [31:0] sext_ln48_fu_89_p0;
reg   [14:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 15'd1;
end

shell_utils_cuisr_a_m_axi #(
    .CONSERVATIVE( 0 ),
    .USER_DW( 32 ),
    .USER_AW( 32 ),
    .USER_MAXREQS( 5 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_A_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_A_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_A_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_A_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_A_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_A_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_A_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_A_BUSER_WIDTH ),
    .C_TARGET_ADDR( C_M_AXI_A_TARGET_ADDR ),
    .C_USER_VALUE( C_M_AXI_A_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_A_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_A_CACHE_VALUE ))
shell_utils_cuisr_a_m_axi_U(
    .AWVALID(m_axi_a_AWVALID),
    .AWREADY(m_axi_a_AWREADY),
    .AWADDR(m_axi_a_AWADDR),
    .AWID(m_axi_a_AWID),
    .AWLEN(m_axi_a_AWLEN),
    .AWSIZE(m_axi_a_AWSIZE),
    .AWBURST(m_axi_a_AWBURST),
    .AWLOCK(m_axi_a_AWLOCK),
    .AWCACHE(m_axi_a_AWCACHE),
    .AWPROT(m_axi_a_AWPROT),
    .AWQOS(m_axi_a_AWQOS),
    .AWREGION(m_axi_a_AWREGION),
    .AWUSER(m_axi_a_AWUSER),
    .WVALID(m_axi_a_WVALID),
    .WREADY(m_axi_a_WREADY),
    .WDATA(m_axi_a_WDATA),
    .WSTRB(m_axi_a_WSTRB),
    .WLAST(m_axi_a_WLAST),
    .WID(m_axi_a_WID),
    .WUSER(m_axi_a_WUSER),
    .ARVALID(m_axi_a_ARVALID),
    .ARREADY(m_axi_a_ARREADY),
    .ARADDR(m_axi_a_ARADDR),
    .ARID(m_axi_a_ARID),
    .ARLEN(m_axi_a_ARLEN),
    .ARSIZE(m_axi_a_ARSIZE),
    .ARBURST(m_axi_a_ARBURST),
    .ARLOCK(m_axi_a_ARLOCK),
    .ARCACHE(m_axi_a_ARCACHE),
    .ARPROT(m_axi_a_ARPROT),
    .ARQOS(m_axi_a_ARQOS),
    .ARREGION(m_axi_a_ARREGION),
    .ARUSER(m_axi_a_ARUSER),
    .RVALID(m_axi_a_RVALID),
    .RREADY(m_axi_a_RREADY),
    .RDATA(m_axi_a_RDATA),
    .RLAST(m_axi_a_RLAST),
    .RID(m_axi_a_RID),
    .RUSER(m_axi_a_RUSER),
    .RRESP(m_axi_a_RRESP),
    .BVALID(m_axi_a_BVALID),
    .BREADY(m_axi_a_BREADY),
    .BRESP(m_axi_a_BRESP),
    .BID(m_axi_a_BID),
    .BUSER(m_axi_a_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(a_ARVALID),
    .I_ARREADY(a_ARREADY),
    .I_ARADDR(a_ARADDR),
    .I_ARID(1'd0),
    .I_ARLEN(32'd1),
    .I_ARSIZE(3'd0),
    .I_ARLOCK(2'd0),
    .I_ARCACHE(4'd0),
    .I_ARQOS(4'd0),
    .I_ARPROT(3'd0),
    .I_ARUSER(1'd0),
    .I_ARBURST(2'd0),
    .I_ARREGION(4'd0),
    .I_RVALID(a_RVALID),
    .I_RREADY(a_RREADY),
    .I_RDATA(a_RDATA),
    .I_RID(a_RID),
    .I_RUSER(a_RUSER),
    .I_RRESP(a_RRESP),
    .I_RLAST(a_RLAST),
    .I_AWVALID(a_AWVALID),
    .I_AWREADY(a_AWREADY),
    .I_AWADDR(a_AWADDR),
    .I_AWID(1'd0),
    .I_AWLEN(32'd1),
    .I_AWSIZE(3'd0),
    .I_AWLOCK(2'd0),
    .I_AWCACHE(4'd0),
    .I_AWQOS(4'd0),
    .I_AWPROT(3'd0),
    .I_AWUSER(1'd0),
    .I_AWBURST(2'd0),
    .I_AWREGION(4'd0),
    .I_WVALID(a_WVALID),
    .I_WREADY(a_WREADY),
    .I_WDATA(32'd1),
    .I_WID(1'd0),
    .I_WUSER(1'd0),
    .I_WLAST(1'b0),
    .I_WSTRB(4'd15),
    .I_BVALID(a_BVALID),
    .I_BREADY(a_BREADY),
    .I_BRESP(a_BRESP),
    .I_BID(a_BID),
    .I_BUSER(a_BUSER)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        Offset_assign_fu_42 <= Offset;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        add_ln50_reg_128 <= add_ln50_fu_100_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'b1 == a_ARREADY))) begin
        a_ARVALID = 1'b1;
    end else begin
        a_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (1'b1 == a_AWREADY))) begin
        a_AWVALID = 1'b1;
    end else begin
        a_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) & (1'b1 == a_BVALID))) begin
        a_BREADY = 1'b1;
    end else begin
        a_BREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b0 == a_RVALID) | (1'b0 == a_WREADY)) & (1'b1 == ap_CS_fsm_state10))) begin
        a_RREADY = 1'b1;
    end else begin
        a_RREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b0 == a_RVALID) | (1'b0 == a_WREADY)) & (1'b1 == ap_CS_fsm_state10))) begin
        a_WVALID = 1'b1;
    end else begin
        a_WVALID = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        a_blk_n_AR = m_axi_a_ARREADY;
    end else begin
        a_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        a_blk_n_AW = m_axi_a_AWREADY;
    end else begin
        a_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        a_blk_n_B = m_axi_a_BVALID;
    end else begin
        a_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        a_blk_n_R = m_axi_a_RVALID;
    end else begin
        a_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        a_blk_n_W = m_axi_a_WREADY;
    end else begin
        a_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) & (1'b1 == a_BVALID))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) & (1'b1 == a_BVALID))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (1'b1 == a_ARREADY))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (1'b1 == a_AWREADY))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if ((~((1'b0 == a_RVALID) | (1'b0 == a_WREADY)) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (1'b1 == a_BVALID))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_ARADDR = sext_ln48_fu_89_p1;

assign a_AWADDR = sext_ln50_fu_106_p1;

assign add_ln50_fu_100_p2 = (Offset_assign_fu_42 + 32'd3);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign sext_ln48_fu_89_p0 = Offset_assign_fu_42;

assign sext_ln48_fu_89_p1 = sext_ln48_fu_89_p0;

assign sext_ln50_fu_106_p1 = $signed(add_ln50_reg_128);

endmodule //shell_utils_cuisr
