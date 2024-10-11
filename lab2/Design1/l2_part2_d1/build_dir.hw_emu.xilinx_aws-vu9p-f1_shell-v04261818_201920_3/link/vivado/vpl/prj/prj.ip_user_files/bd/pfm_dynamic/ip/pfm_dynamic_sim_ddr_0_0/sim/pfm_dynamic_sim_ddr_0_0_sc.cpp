// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


#include "pfm_dynamic_sim_ddr_0_0_sc.h"

#include "sim_ddr_v1_0.h"

#include <map>
#include <string>

pfm_dynamic_sim_ddr_0_0_sc::pfm_dynamic_sim_ddr_0_0_sc(const sc_core::sc_module_name& nm) : sc_core::sc_module(nm), mp_impl(NULL)
{
  // configure connectivity manager
  xsc::utils::xsc_sim_manager::addInstance("pfm_dynamic_sim_ddr_0_0", this);

  // initialize module
    xsc::common_cpp::properties model_param_props;
    model_param_props.addLong("C2_DDR_SAXI_ID_WIDTH", "1");
    model_param_props.addLong("C2_DDR_SAXI_DATA_WIDTH", "512");
    model_param_props.addLong("C2_DDR_SAXI_ADDR_WIDTH", "64");
    model_param_props.addLong("C2_DDR_SAXI_AWUSER_WIDTH", "32");
    model_param_props.addLong("C2_DDR_SAXI_ARUSER_WIDTH", "32");
    model_param_props.addLong("C2_DDR_SAXI_WUSER_WIDTH", "1");
    model_param_props.addLong("C2_DDR_SAXI_RUSER_WIDTH", "1");
    model_param_props.addLong("C2_DDR_SAXI_BUSER_WIDTH", "1");
    model_param_props.addLong("C0_DDR_SAXI_ID_WIDTH", "5");
    model_param_props.addLong("C0_DDR_SAXI_DATA_WIDTH", "512");
    model_param_props.addLong("C0_DDR_SAXI_ADDR_WIDTH", "34");
    model_param_props.addLong("C0_DDR_SAXI_AWUSER_WIDTH", "32");
    model_param_props.addLong("C0_DDR_SAXI_ARUSER_WIDTH", "32");
    model_param_props.addLong("C0_DDR_SAXI_WUSER_WIDTH", "1");
    model_param_props.addLong("C0_DDR_SAXI_RUSER_WIDTH", "1");
    model_param_props.addLong("C0_DDR_SAXI_BUSER_WIDTH", "1");
    model_param_props.addLong("C_S_XDMA_AXI_ID_WIDTH", "5");
    model_param_props.addLong("C_S_XDMA_AXI_DATA_WIDTH", "32");
    model_param_props.addLong("C_S_XDMA_AXI_ADDR_WIDTH", "32");
    model_param_props.addLong("C_S_XDMA_AXI_AWUSER_WIDTH", "32");
    model_param_props.addLong("C_S_XDMA_AXI_ARUSER_WIDTH", "32");
    model_param_props.addLong("C_S_XDMA_AXI_WUSER_WIDTH", "1");
    model_param_props.addLong("C_S_XDMA_AXI_RUSER_WIDTH", "1");
    model_param_props.addLong("C_S_XDMA_AXI_BUSER_WIDTH", "1");
    model_param_props.addLong("C1_DDR_SAXI_ID_WIDTH", "1");
    model_param_props.addLong("C1_DDR_SAXI_DATA_WIDTH", "512");
    model_param_props.addLong("C1_DDR_SAXI_ADDR_WIDTH", "64");
    model_param_props.addLong("C1_DDR_SAXI_AWUSER_WIDTH", "32");
    model_param_props.addLong("C1_DDR_SAXI_ARUSER_WIDTH", "32");
    model_param_props.addLong("C1_DDR_SAXI_WUSER_WIDTH", "1");
    model_param_props.addLong("C1_DDR_SAXI_RUSER_WIDTH", "1");
    model_param_props.addLong("C1_DDR_SAXI_BUSER_WIDTH", "1");
    model_param_props.addLong("C3_DDR_SAXI_ID_WIDTH", "1");
    model_param_props.addLong("C3_DDR_SAXI_DATA_WIDTH", "512");
    model_param_props.addLong("C3_DDR_SAXI_ADDR_WIDTH", "64");
    model_param_props.addLong("C3_DDR_SAXI_AWUSER_WIDTH", "32");
    model_param_props.addLong("C3_DDR_SAXI_ARUSER_WIDTH", "32");
    model_param_props.addLong("C3_DDR_SAXI_WUSER_WIDTH", "1");
    model_param_props.addLong("C3_DDR_SAXI_RUSER_WIDTH", "1");
    model_param_props.addLong("C3_DDR_SAXI_BUSER_WIDTH", "1");
    model_param_props.addLong("C_NUM_SLAVE_SLOTS", "1");
    model_param_props.addLong("C_ADDR_RANGES", "1");
    model_param_props.addLong("C_NUMBER_OF_GLOBAL_MEMORIES", "1");
    model_param_props.addLong("C0_APP_ADDR_WIDTH", "31");
    model_param_props.addLong("C0_APP_DATA_WIDTH", "512");
    model_param_props.addLong("C0_ADDR_WIDTH", "16");
    model_param_props.addLong("C0_AXI_ADDR_WIDTH", "33");
    model_param_props.addLong("C0_AXI_DATA_WIDTH", "512");
    model_param_props.addLong("C0_AXI_ID_WIDTH", "1");
    model_param_props.addLong("C0_BANK_GROUP_WIDTH", "2");
    model_param_props.addLong("C0_BANK_WIDTH", "2");
    model_param_props.addLong("C0_CL", "16");
    model_param_props.addLong("C0_COLUMN_WIDTH", "10");
    model_param_props.addLong("C0_CWL", "12");
    model_param_props.addLong("C0_RANK_WIDTH", "1");
    model_param_props.addLong("C0_ROW_WIDTH", "17");
    model_param_props.addLong("C0_tCK", "833");
    model_param_props.addLong("C0_tCKE", "0");
    model_param_props.addLong("C0_tFAW", "16");
    model_param_props.addLong("C0_tMRD", "2");
    model_param_props.addLong("C0_tRAS", "39");
    model_param_props.addLong("C0_tRCD", "17");
    model_param_props.addLong("C0_tREFI", "9363");
    model_param_props.addLong("C0_tRFC", "421");
    model_param_props.addLong("C0_tRP", "17");
    model_param_props.addLong("C0_tRTW", "10");
    model_param_props.addLong("C0_tCCD", "4");
    model_param_props.addLong("C0_tRRD", "5");
    model_param_props.addLong("C0_tRRD_L", "6");
    model_param_props.addLong("C0_tRRD_S", "4");
    model_param_props.addLong("C0_tRTP", "10");
    model_param_props.addLong("C0_tWR", "19");
    model_param_props.addLong("C0_tWTR", "6");
    model_param_props.addLong("C0_tWTR_L", "10");
    model_param_props.addLong("C0_tWTR_S", "4");
    model_param_props.addLong("C0_tXPR", "54");
    model_param_props.addLong("C0_tZQCS", "64");
    model_param_props.addLong("C0_tZQI", "0");
    model_param_props.addLong("C0_tZQINIT", "128");
    model_param_props.addLong("C0_BURST_LENGTH", "8");
    model_param_props.addLong("C0_CAS_LATENCY", "16");
    model_param_props.addLong("C0_CAS_WRITE_LATENCY", "12");
    model_param_props.addLong("C0_DATA_WIDTH", "72");
    model_param_props.addLong("C0_TIMEPERIOD_PS", "833");
    model_param_props.addLong("C1_APP_ADDR_WIDTH", "30");
    model_param_props.addLong("C1_APP_DATA_WIDTH", "512");
    model_param_props.addLong("C1_ADDR_WIDTH", "16");
    model_param_props.addLong("C1_AXI_ADDR_WIDTH", "33");
    model_param_props.addLong("C1_AXI_DATA_WIDTH", "512");
    model_param_props.addLong("C1_AXI_ID_WIDTH", "1");
    model_param_props.addLong("C1_BANK_GROUP_WIDTH", "2");
    model_param_props.addLong("C1_BANK_WIDTH", "1");
    model_param_props.addLong("C1_CL", "16");
    model_param_props.addLong("C1_COLUMN_WIDTH", "8");
    model_param_props.addLong("C1_CWL", "12");
    model_param_props.addLong("C1_RANK_WIDTH", "2");
    model_param_props.addLong("C1_ROW_WIDTH", "16");
    model_param_props.addLong("C1_tCK", "1250");
    model_param_props.addLong("C1_tCKE", "0");
    model_param_props.addLong("C1_tFAW", "24");
    model_param_props.addLong("C1_tMRD", "1");
    model_param_props.addLong("C1_tRAS", "28");
    model_param_props.addLong("C1_tRCD", "11");
    model_param_props.addLong("C1_tREFI", "6240");
    model_param_props.addLong("C1_tRFC", "208");
    model_param_props.addLong("C1_tRP", "11");
    model_param_props.addLong("C1_tRTW", "10");
    model_param_props.addLong("C1_tCCD", "4");
    model_param_props.addLong("C1_tRRD", "5");
    model_param_props.addLong("C1_tRRD_L", "5");
    model_param_props.addLong("C1_tRRD_S", "5");
    model_param_props.addLong("C1_tRTP", "6");
    model_param_props.addLong("C1_tWR", "12");
    model_param_props.addLong("C1_tWTR", "6");
    model_param_props.addLong("C1_tWTR_L", "6");
    model_param_props.addLong("C1_tWTR_S", "6");
    model_param_props.addLong("C1_tXPR", "54");
    model_param_props.addLong("C1_tZQCS", "64");
    model_param_props.addLong("C1_tZQI", "0");
    model_param_props.addLong("C1_tZQINIT", "128");
    model_param_props.addLong("C1_BURST_LENGTH", "8");
    model_param_props.addLong("C1_CAS_LATENCY", "16");
    model_param_props.addLong("C1_CAS_WRITE_LATENCY", "12");
    model_param_props.addLong("C1_DATA_WIDTH", "8");
    model_param_props.addLong("C1_TIMEPERIOD_PS", "10");
    model_param_props.addLong("C2_APP_ADDR_WIDTH", "30");
    model_param_props.addLong("C2_APP_DATA_WIDTH", "512");
    model_param_props.addLong("C2_ADDR_WIDTH", "16");
    model_param_props.addLong("C2_AXI_ADDR_WIDTH", "33");
    model_param_props.addLong("C2_AXI_DATA_WIDTH", "512");
    model_param_props.addLong("C2_AXI_ID_WIDTH", "1");
    model_param_props.addLong("C2_BANK_GROUP_WIDTH", "2");
    model_param_props.addLong("C2_BANK_WIDTH", "1");
    model_param_props.addLong("C2_CL", "16");
    model_param_props.addLong("C2_COLUMN_WIDTH", "10");
    model_param_props.addLong("C2_CWL", "12");
    model_param_props.addLong("C2_RANK_WIDTH", "2");
    model_param_props.addLong("C2_ROW_WIDTH", "16");
    model_param_props.addLong("C2_tCK", "1250");
    model_param_props.addLong("C2_tCKE", "0");
    model_param_props.addLong("C2_tFAW", "24");
    model_param_props.addLong("C2_tMRD", "1");
    model_param_props.addLong("C2_tRAS", "28");
    model_param_props.addLong("C2_tRCD", "11");
    model_param_props.addLong("C2_tREFI", "6240");
    model_param_props.addLong("C2_tRFC", "208");
    model_param_props.addLong("C2_tRP", "11");
    model_param_props.addLong("C2_tRTW", "10");
    model_param_props.addLong("C2_tCCD", "4");
    model_param_props.addLong("C2_tRRD", "5");
    model_param_props.addLong("C2_tRRD_L", "5");
    model_param_props.addLong("C2_tRRD_S", "5");
    model_param_props.addLong("C2_tRTP", "6");
    model_param_props.addLong("C2_tWR", "12");
    model_param_props.addLong("C2_tWTR", "6");
    model_param_props.addLong("C2_tWTR_L", "6");
    model_param_props.addLong("C2_tWTR_S", "6");
    model_param_props.addLong("C2_tXPR", "54");
    model_param_props.addLong("C2_tZQCS", "64");
    model_param_props.addLong("C2_tZQI", "0");
    model_param_props.addLong("C2_tZQINIT", "128");
    model_param_props.addLong("C2_BURST_LENGTH", "8");
    model_param_props.addLong("C2_CAS_LATENCY", "16");
    model_param_props.addLong("C2_CAS_WRITE_LATENCY", "12");
    model_param_props.addLong("C2_DATA_WIDTH", "8");
    model_param_props.addLong("C2_TIMEPERIOD_PS", "10");
    model_param_props.addLong("C3_APP_ADDR_WIDTH", "30");
    model_param_props.addLong("C3_APP_DATA_WIDTH", "512");
    model_param_props.addLong("C3_ADDR_WIDTH", "16");
    model_param_props.addLong("C3_AXI_ADDR_WIDTH", "33");
    model_param_props.addLong("C3_AXI_DATA_WIDTH", "512");
    model_param_props.addLong("C3_AXI_ID_WIDTH", "1");
    model_param_props.addLong("C3_BANK_GROUP_WIDTH", "2");
    model_param_props.addLong("C3_BANK_WIDTH", "1");
    model_param_props.addLong("C3_CL", "16");
    model_param_props.addLong("C3_COLUMN_WIDTH", "10");
    model_param_props.addLong("C3_CWL", "12");
    model_param_props.addLong("C3_RANK_WIDTH", "2");
    model_param_props.addLong("C3_ROW_WIDTH", "16");
    model_param_props.addLong("C3_tCK", "1250");
    model_param_props.addLong("C3_tCKE", "0");
    model_param_props.addLong("C3_tFAW", "24");
    model_param_props.addLong("C3_tMRD", "1");
    model_param_props.addLong("C3_tRAS", "28");
    model_param_props.addLong("C3_tRCD", "11");
    model_param_props.addLong("C3_tREFI", "6240");
    model_param_props.addLong("C3_tRFC", "208");
    model_param_props.addLong("C3_tRP", "11");
    model_param_props.addLong("C3_tRTW", "10");
    model_param_props.addLong("C3_tCCD", "4");
    model_param_props.addLong("C3_tRRD", "5");
    model_param_props.addLong("C3_tRRD_L", "5");
    model_param_props.addLong("C3_tRRD_S", "5");
    model_param_props.addLong("C3_tRTP", "6");
    model_param_props.addLong("C3_tWR", "12");
    model_param_props.addLong("C3_tWTR", "6");
    model_param_props.addLong("C3_tWTR_L", "6");
    model_param_props.addLong("C3_tWTR_S", "6");
    model_param_props.addLong("C3_tXPR", "54");
    model_param_props.addLong("C3_tZQCS", "64");
    model_param_props.addLong("C3_tZQI", "0");
    model_param_props.addLong("C3_tZQINIT", "128");
    model_param_props.addLong("C3_BURST_LENGTH", "8");
    model_param_props.addLong("C3_CAS_LATENCY", "16");
    model_param_props.addLong("C3_CAS_WRITE_LATENCY", "12");
    model_param_props.addLong("C3_DATA_WIDTH", "8");
    model_param_props.addLong("C3_TIMEPERIOD_PS", "10");
    model_param_props.addString("Component_Name", "ddrx_1.0");
    model_param_props.addString("C0_NAME", "BlankString");
    model_param_props.addString("C0_TYPE", "ddr4");
    model_param_props.addString("C0_SIZE", "16GB");
    model_param_props.addString("C0_AXI_ARBITRATION_SCHEME", "RD_PRI_REG");
    model_param_props.addString("C0_ControllerType", "DDR3_SDRAM");
    model_param_props.addString("C0_Mem_Add_Map", "ROW_COLUMN_BANK");
    model_param_props.addString("C0_Ordering", "Normal");
    model_param_props.addString("C0_AutoPrecharge", "false");
    model_param_props.addString("C0_AxiNarrowBurst", "false");
    model_param_props.addString("C0_MEMORY_PART", "MTA18ASF2G72PZ-2G3");
    model_param_props.addString("C0_MEM_ADDR_MAP", "ROW_COLUMN_BANK");
    model_param_props.addString("C1_NAME", "BlankString");
    model_param_props.addString("C1_TYPE", "BlankString");
    model_param_props.addString("C1_SIZE", "BlankString");
    model_param_props.addString("C1_AXI_ARBITRATION_SCHEME", "RD_PRI_REG");
    model_param_props.addString("C1_ControllerType", "DDR3_SDRAM");
    model_param_props.addString("C1_Mem_Add_Map", "ROW_COLUMN_BANK");
    model_param_props.addString("C1_Ordering", "Normal");
    model_param_props.addString("C1_AutoPrecharge", "false");
    model_param_props.addString("C1_AxiNarrowBurst", "false");
    model_param_props.addString("C1_MEMORY_PART", "MT41J512M8XX-107");
    model_param_props.addString("C1_MEM_ADDR_MAP", "ROW_COLUMN_BANK");
    model_param_props.addString("C2_NAME", "BlankString");
    model_param_props.addString("C2_TYPE", "BlankString");
    model_param_props.addString("C2_SIZE", "BlankString");
    model_param_props.addString("C2_AXI_ARBITRATION_SCHEME", "RD_PRI_REG");
    model_param_props.addString("C2_ControllerType", "DDR3_SDRAM");
    model_param_props.addString("C2_Mem_Add_Map", "ROW_COLUMN_BANK");
    model_param_props.addString("C2_Ordering", "Normal");
    model_param_props.addString("C2_AutoPrecharge", "false");
    model_param_props.addString("C2_AxiNarrowBurst", "false");
    model_param_props.addString("C2_MEMORY_PART", "MT41J512M8XX-107");
    model_param_props.addString("C2_MEM_ADDR_MAP", "ROW_COLUMN_BANK");
    model_param_props.addString("C3_NAME", "BlankString");
    model_param_props.addString("C3_TYPE", "BlankString");
    model_param_props.addString("C3_SIZE", "BlankString");
    model_param_props.addString("C3_AXI_ARBITRATION_SCHEME", "RD_PRI_REG");
    model_param_props.addString("C3_ControllerType", "DDR3_SDRAM");
    model_param_props.addString("C3_Mem_Add_Map", "ROW_COLUMN_BANK");
    model_param_props.addString("C3_Ordering", "Normal");
    model_param_props.addString("C3_AutoPrecharge", "false");
    model_param_props.addString("C3_AxiNarrowBurst", "false");
    model_param_props.addString("C3_MEMORY_PART", "MT41J512M8XX-107");
    model_param_props.addString("C3_MEM_ADDR_MAP", "ROW_COLUMN_BANK");
    model_param_props.addBitString("C0_A00_BASE_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C0_A01_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C0_A02_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C0_A03_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C0_A04_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C0_A05_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C0_A06_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C0_A07_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C0_A08_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C0_A09_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C0_A10_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C0_A11_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C0_A12_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C0_A13_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C0_A14_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C0_A15_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C0_A00_HIGH_ADDR", "0000000000000000000000000000010000000000000000000000000000000000", 64);
    model_param_props.addBitString("C0_A01_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C0_A02_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C0_A03_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C0_A04_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C0_A05_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C0_A06_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C0_A07_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C0_A08_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C0_A09_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C0_A10_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C0_A11_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C0_A12_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C0_A13_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C0_A14_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C0_A15_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C1_A00_BASE_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C1_A01_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C1_A02_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C1_A03_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C1_A04_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C1_A05_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C1_A06_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C1_A07_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C1_A08_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C1_A09_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C1_A10_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C1_A11_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C1_A12_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C1_A13_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C1_A14_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C1_A15_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C1_A00_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C1_A01_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C1_A02_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C1_A03_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C1_A04_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C1_A05_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C1_A06_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C1_A07_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C1_A08_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C1_A09_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C1_A10_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C1_A11_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C1_A12_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C1_A13_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C1_A14_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C1_A15_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C2_A00_BASE_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C2_A01_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C2_A02_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C2_A03_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C2_A04_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C2_A05_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C2_A06_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C2_A07_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C2_A08_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C2_A09_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C2_A10_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C2_A11_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C2_A12_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C2_A13_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C2_A14_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C2_A15_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C2_A00_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C2_A01_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C2_A02_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C2_A03_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C2_A04_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C2_A05_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C2_A06_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C2_A07_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C2_A08_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C2_A09_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C2_A10_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C2_A11_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C2_A12_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C2_A13_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C2_A14_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C2_A15_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C3_A00_BASE_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C3_A01_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C3_A02_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C3_A03_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C3_A04_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C3_A05_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C3_A06_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C3_A07_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C3_A08_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C3_A09_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C3_A10_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C3_A11_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C3_A12_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C3_A13_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C3_A14_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C3_A15_BASE_ADDR", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addBitString("C3_A00_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C3_A01_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C3_A02_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C3_A03_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C3_A04_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C3_A05_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C3_A06_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C3_A07_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C3_A08_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C3_A09_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C3_A10_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C3_A11_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C3_A12_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C3_A13_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C3_A14_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("C3_A15_HIGH_ADDR", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addString("COMPONENT_NAME", "pfm_dynamic_sim_ddr_0_0");

  mp_impl = new sim_ddr_v1_0("inst", model_param_props);

  // initialize AXI sockets
  C0_DDR_SAXI_rd_socket = mp_impl->C0_DDR_SAXI_rd_socket;
  C0_DDR_SAXI_wr_socket = mp_impl->C0_DDR_SAXI_wr_socket;
  S_XDMA_AXI_rd_socket = mp_impl->S_XDMA_AXI_rd_socket;
  S_XDMA_AXI_wr_socket = mp_impl->S_XDMA_AXI_wr_socket;
}

pfm_dynamic_sim_ddr_0_0_sc::~pfm_dynamic_sim_ddr_0_0_sc()
{
  xsc::utils::xsc_sim_manager::clean();

  delete mp_impl;
}

