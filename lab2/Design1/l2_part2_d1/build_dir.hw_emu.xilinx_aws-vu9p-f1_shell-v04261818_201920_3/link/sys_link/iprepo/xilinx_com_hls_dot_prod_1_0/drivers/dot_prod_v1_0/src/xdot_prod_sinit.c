// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdot_prod.h"

extern XDot_prod_Config XDot_prod_ConfigTable[];

XDot_prod_Config *XDot_prod_LookupConfig(u16 DeviceId) {
	XDot_prod_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDOT_PROD_NUM_INSTANCES; Index++) {
		if (XDot_prod_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDot_prod_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDot_prod_Initialize(XDot_prod *InstancePtr, u16 DeviceId) {
	XDot_prod_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDot_prod_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDot_prod_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

