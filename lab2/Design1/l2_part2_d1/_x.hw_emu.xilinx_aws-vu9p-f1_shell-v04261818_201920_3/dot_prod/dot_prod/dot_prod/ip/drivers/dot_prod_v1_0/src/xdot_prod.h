// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XDOT_PROD_H
#define XDOT_PROD_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xdot_prod_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XDot_prod_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XDot_prod;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XDot_prod_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XDot_prod_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XDot_prod_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XDot_prod_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XDot_prod_Initialize(XDot_prod *InstancePtr, u16 DeviceId);
XDot_prod_Config* XDot_prod_LookupConfig(u16 DeviceId);
int XDot_prod_CfgInitialize(XDot_prod *InstancePtr, XDot_prod_Config *ConfigPtr);
#else
int XDot_prod_Initialize(XDot_prod *InstancePtr, const char* InstanceName);
int XDot_prod_Release(XDot_prod *InstancePtr);
#endif

void XDot_prod_Start(XDot_prod *InstancePtr);
u32 XDot_prod_IsDone(XDot_prod *InstancePtr);
u32 XDot_prod_IsIdle(XDot_prod *InstancePtr);
u32 XDot_prod_IsReady(XDot_prod *InstancePtr);
void XDot_prod_Continue(XDot_prod *InstancePtr);
void XDot_prod_EnableAutoRestart(XDot_prod *InstancePtr);
void XDot_prod_DisableAutoRestart(XDot_prod *InstancePtr);

void XDot_prod_Set_vec_a(XDot_prod *InstancePtr, u64 Data);
u64 XDot_prod_Get_vec_a(XDot_prod *InstancePtr);
void XDot_prod_Set_vec_b(XDot_prod *InstancePtr, u64 Data);
u64 XDot_prod_Get_vec_b(XDot_prod *InstancePtr);
void XDot_prod_Set_results(XDot_prod *InstancePtr, u64 Data);
u64 XDot_prod_Get_results(XDot_prod *InstancePtr);
void XDot_prod_Set_vector_len(XDot_prod *InstancePtr, u32 Data);
u32 XDot_prod_Get_vector_len(XDot_prod *InstancePtr);

void XDot_prod_InterruptGlobalEnable(XDot_prod *InstancePtr);
void XDot_prod_InterruptGlobalDisable(XDot_prod *InstancePtr);
void XDot_prod_InterruptEnable(XDot_prod *InstancePtr, u32 Mask);
void XDot_prod_InterruptDisable(XDot_prod *InstancePtr, u32 Mask);
void XDot_prod_InterruptClear(XDot_prod *InstancePtr, u32 Mask);
u32 XDot_prod_InterruptGetEnabled(XDot_prod *InstancePtr);
u32 XDot_prod_InterruptGetStatus(XDot_prod *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
