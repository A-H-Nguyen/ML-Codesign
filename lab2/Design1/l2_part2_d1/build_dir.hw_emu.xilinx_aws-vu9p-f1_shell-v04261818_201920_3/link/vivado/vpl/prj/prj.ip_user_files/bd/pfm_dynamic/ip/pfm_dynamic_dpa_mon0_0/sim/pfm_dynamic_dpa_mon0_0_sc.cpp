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


#include "pfm_dynamic_dpa_mon0_0_sc.h"

#include "sim_aximm_perf_mon.h"

#include <map>
#include <string>

pfm_dynamic_dpa_mon0_0_sc::pfm_dynamic_dpa_mon0_0_sc(const sc_core::sc_module_name& nm) : sc_core::sc_module(nm), mp_impl(NULL)
{
  // configure connectivity manager
  xsc::utils::xsc_sim_manager::addInstance("pfm_dynamic_dpa_mon0_0", this);

  // initialize module
    xsc::common_cpp::properties model_param_props;
    model_param_props.addBool("MODE_SDACCEL", "true");
    model_param_props.addBool("ENABLE_DEBUG", "true");
    model_param_props.addBool("ENABLE_COUNTERS", "true");
    model_param_props.addBool("EN_AXI_LITE", "true");
    model_param_props.addBool("ENABLE_TRACE", "true");
    model_param_props.addBool("ENABLE_ADDR_FILTER", "false");
    model_param_props.addLong("TRACE_READ_ID", "0");
    model_param_props.addLong("TRACE_WRITE_ID", "1");
    model_param_props.addLong("CAPTURE_BURSTS", "0");
    model_param_props.addLong("NUM_REG_STAGES", "1");
    model_param_props.addLong("COUNT_WIDTH", "64");
    model_param_props.addLong("DATA_WIDTH", "512");
    model_param_props.addLong("ADDR_WIDTH", "64");
    model_param_props.addLong("ID_WIDTH", "0");
    model_param_props.addLong("EXT_MON_RST", "1");
    model_param_props.addLong("EXT_TRACE_RST", "1");
    model_param_props.addLong("AXISTREAM_DATA_WIDTH", "64");
    model_param_props.addLong("AXISTREAM_ID_WIDTH", "8");
    model_param_props.addLong("AXISTREAM_DEST_WIDTH", "8");
    model_param_props.addString("WRITE_START_SELECT", "Address");
    model_param_props.addString("WRITE_STOP_SELECT", "Last Data");
    model_param_props.addString("READ_START_SELECT", "Address");
    model_param_props.addString("READ_STOP_SELECT", "Last Data");
    model_param_props.addString("MONITOR_ID", "dot_prod_1:m_axi_gmem-DDR[1]");
    model_param_props.addBitString("ADDR_MIN", "0000000000000000000000000000000000000000000000000000000000000000", 64);
    model_param_props.addBitString("ADDR_MAX", "1111111111111111111111111111111111111111111111111111111111111111", 64);
    model_param_props.addString("COMPONENT_NAME", "pfm_dynamic_dpa_mon0_0");

  mp_impl = new sim_aximm_perf_mon("inst", model_param_props);

  // initialize AXI sockets
  axilite_rd_socket = mp_impl->axilite_rd_socket;
  axilite_wr_socket = mp_impl->axilite_wr_socket;
  mon_rd_socket = mp_impl->mon_rd_socket;
  mon_wr_socket = mp_impl->mon_wr_socket;
  wr_trace_socket = mp_impl->wr_trace_socket;
  rd_trace_socket = mp_impl->rd_trace_socket;
  mon_saxi_rd_socket = mp_impl->mon_saxi_rd_socket;
  mon_saxi_wr_socket = mp_impl->mon_saxi_wr_socket;
}

pfm_dynamic_dpa_mon0_0_sc::~pfm_dynamic_dpa_mon0_0_sc()
{
  xsc::utils::xsc_sim_manager::clean();

  delete mp_impl;
}

