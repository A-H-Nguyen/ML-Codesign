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


#include "emu_sim_copy_kernel_2_0_sc.h"

#include "sim_copy_kernel.h"

#include <map>
#include <string>

emu_sim_copy_kernel_2_0_sc::emu_sim_copy_kernel_2_0_sc(const sc_core::sc_module_name& nm) : sc_core::sc_module(nm), mp_impl(NULL)
{
  // configure connectivity manager
  xsc::utils::xsc_sim_manager::addInstance("emu_sim_copy_kernel_2_0", this);

  // initialize module
    xsc::common_cpp::properties model_param_props;
    model_param_props.addLong("C_S_AXI_CONTROL_ADDR_WIDTH", "6");
    model_param_props.addLong("C_S_AXI_CONTROL_DATA_WIDTH", "32");
    model_param_props.addLong("C_M_AXI_GMEM_ID_WIDTH", "1");
    model_param_props.addLong("C_M_AXI_GMEM_ADDR_WIDTH", "64");
    model_param_props.addLong("C_M_AXI_GMEM_DATA_WIDTH", "512");
    model_param_props.addLong("C_M_AXI_GMEM_AWUSER_WIDTH", "1");
    model_param_props.addLong("C_M_AXI_GMEM_ARUSER_WIDTH", "1");
    model_param_props.addLong("C_M_AXI_GMEM_WUSER_WIDTH", "1");
    model_param_props.addLong("C_M_AXI_GMEM_RUSER_WIDTH", "1");
    model_param_props.addLong("C_M_AXI_GMEM_BUSER_WIDTH", "1");
    model_param_props.addBitString("C_M_AXI_GMEM_USER_VALUE", "00000000000000000000000000000000", 32);
    model_param_props.addBitString("C_M_AXI_GMEM_PROT_VALUE", "000", 3);
    model_param_props.addBitString("C_M_AXI_GMEM_CACHE_VALUE", "0011", 4);
    model_param_props.addBitString("C_M_AXI_GMEM_TARGET_ADDR", "00000000000000000000000000000000", 32);
    model_param_props.addString("COMPONENT_NAME", "emu_sim_copy_kernel_2_0");

  mp_impl = new sim_copy_kernel("inst", model_param_props);

  // initialize AXI sockets
  s_axi_control_rd_socket = mp_impl->s_axi_control_rd_socket;
  s_axi_control_wr_socket = mp_impl->s_axi_control_wr_socket;
  m_axi_gmem_rd_socket = mp_impl->m_axi_gmem_rd_socket;
  m_axi_gmem_wr_socket = mp_impl->m_axi_gmem_wr_socket;
}

emu_sim_copy_kernel_2_0_sc::~emu_sim_copy_kernel_2_0_sc()
{
  xsc::utils::xsc_sim_manager::clean();

  delete mp_impl;
}

