// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        bit 5 - enable ap_local_deadlock interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (COR/TOW)
//        bit 1 - ap_ready (COR/TOW)
//        bit 5 - ap_local_deadlock (COR/TOW)
//        others - reserved
// 0x10 : Data signal of vec_a
//        bit 31~0 - vec_a[31:0] (Read/Write)
// 0x14 : Data signal of vec_a
//        bit 31~0 - vec_a[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of vec_b
//        bit 31~0 - vec_b[31:0] (Read/Write)
// 0x20 : Data signal of vec_b
//        bit 31~0 - vec_b[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of results
//        bit 31~0 - results[31:0] (Read/Write)
// 0x2c : Data signal of results
//        bit 31~0 - results[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of vector_len
//        bit 31~0 - vector_len[31:0] (Read/Write)
// 0x38 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XDOT_PROD_CONTROL_ADDR_AP_CTRL         0x00
#define XDOT_PROD_CONTROL_ADDR_GIE             0x04
#define XDOT_PROD_CONTROL_ADDR_IER             0x08
#define XDOT_PROD_CONTROL_ADDR_ISR             0x0c
#define XDOT_PROD_CONTROL_ADDR_VEC_A_DATA      0x10
#define XDOT_PROD_CONTROL_BITS_VEC_A_DATA      64
#define XDOT_PROD_CONTROL_ADDR_VEC_B_DATA      0x1c
#define XDOT_PROD_CONTROL_BITS_VEC_B_DATA      64
#define XDOT_PROD_CONTROL_ADDR_RESULTS_DATA    0x28
#define XDOT_PROD_CONTROL_BITS_RESULTS_DATA    64
#define XDOT_PROD_CONTROL_ADDR_VECTOR_LEN_DATA 0x34
#define XDOT_PROD_CONTROL_BITS_VECTOR_LEN_DATA 32

