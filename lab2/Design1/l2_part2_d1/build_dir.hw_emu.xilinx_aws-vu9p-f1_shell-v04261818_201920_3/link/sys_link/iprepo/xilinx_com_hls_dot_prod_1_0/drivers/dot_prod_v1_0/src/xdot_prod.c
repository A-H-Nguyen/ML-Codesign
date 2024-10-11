// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xdot_prod.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDot_prod_CfgInitialize(XDot_prod *InstancePtr, XDot_prod_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDot_prod_Start(XDot_prod *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDot_prod_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDot_prod_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDot_prod_IsDone(XDot_prod *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDot_prod_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDot_prod_IsIdle(XDot_prod *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDot_prod_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDot_prod_IsReady(XDot_prod *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDot_prod_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDot_prod_Continue(XDot_prod *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDot_prod_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_AP_CTRL) & 0x80;
    XDot_prod_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XDot_prod_EnableAutoRestart(XDot_prod *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDot_prod_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XDot_prod_DisableAutoRestart(XDot_prod *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDot_prod_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_AP_CTRL, 0);
}

void XDot_prod_Set_vec_a(XDot_prod *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDot_prod_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_VEC_A_DATA, (u32)(Data));
    XDot_prod_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_VEC_A_DATA + 4, (u32)(Data >> 32));
}

u64 XDot_prod_Get_vec_a(XDot_prod *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDot_prod_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_VEC_A_DATA);
    Data += (u64)XDot_prod_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_VEC_A_DATA + 4) << 32;
    return Data;
}

void XDot_prod_Set_vec_b(XDot_prod *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDot_prod_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_VEC_B_DATA, (u32)(Data));
    XDot_prod_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_VEC_B_DATA + 4, (u32)(Data >> 32));
}

u64 XDot_prod_Get_vec_b(XDot_prod *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDot_prod_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_VEC_B_DATA);
    Data += (u64)XDot_prod_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_VEC_B_DATA + 4) << 32;
    return Data;
}

void XDot_prod_Set_results(XDot_prod *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDot_prod_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_RESULTS_DATA, (u32)(Data));
    XDot_prod_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_RESULTS_DATA + 4, (u32)(Data >> 32));
}

u64 XDot_prod_Get_results(XDot_prod *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDot_prod_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_RESULTS_DATA);
    Data += (u64)XDot_prod_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_RESULTS_DATA + 4) << 32;
    return Data;
}

void XDot_prod_Set_vector_len(XDot_prod *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDot_prod_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_VECTOR_LEN_DATA, Data);
}

u32 XDot_prod_Get_vector_len(XDot_prod *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDot_prod_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_VECTOR_LEN_DATA);
    return Data;
}

void XDot_prod_InterruptGlobalEnable(XDot_prod *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDot_prod_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_GIE, 1);
}

void XDot_prod_InterruptGlobalDisable(XDot_prod *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDot_prod_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_GIE, 0);
}

void XDot_prod_InterruptEnable(XDot_prod *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDot_prod_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_IER);
    XDot_prod_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_IER, Register | Mask);
}

void XDot_prod_InterruptDisable(XDot_prod *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDot_prod_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_IER);
    XDot_prod_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_IER, Register & (~Mask));
}

void XDot_prod_InterruptClear(XDot_prod *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDot_prod_WriteReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_ISR, Mask);
}

u32 XDot_prod_InterruptGetEnabled(XDot_prod *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDot_prod_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_IER);
}

u32 XDot_prod_InterruptGetStatus(XDot_prod *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDot_prod_ReadReg(InstancePtr->Control_BaseAddress, XDOT_PROD_CONTROL_ADDR_ISR);
}

