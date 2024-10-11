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

#include "pfm_dynamic_dpa_mon0_0.h"

#include "sim_aximm_perf_mon.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
pfm_dynamic_dpa_mon0_0::pfm_dynamic_dpa_mon0_0(const sc_core::sc_module_name& nm) : pfm_dynamic_dpa_mon0_0_sc(nm), mon_clk("mon_clk"), mon_resetn("mon_resetn"), trace_clk("trace_clk"), trace_rst("trace_rst"), s_axi_awaddr("s_axi_awaddr"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_bresp("s_axi_bresp"), s_axi_araddr("s_axi_araddr"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), mon_AWVALID("mon_AWVALID"), mon_AWREADY("mon_AWREADY"), mon_AWADDR("mon_AWADDR"), mon_AWID("mon_AWID"), mon_AWLEN("mon_AWLEN"), mon_AWSIZE("mon_AWSIZE"), mon_AWBURST("mon_AWBURST"), mon_WVALID("mon_WVALID"), mon_WREADY("mon_WREADY"), mon_WDATA("mon_WDATA"), mon_WSTRB("mon_WSTRB"), mon_WLAST("mon_WLAST"), mon_ARVALID("mon_ARVALID"), mon_ARREADY("mon_ARREADY"), mon_ARADDR("mon_ARADDR"), mon_ARID("mon_ARID"), mon_ARLEN("mon_ARLEN"), mon_ARSIZE("mon_ARSIZE"), mon_ARBURST("mon_ARBURST"), mon_RVALID("mon_RVALID"), mon_RREADY("mon_RREADY"), mon_RDATA("mon_RDATA"), mon_RLAST("mon_RLAST"), mon_RID("mon_RID"), mon_RRESP("mon_RRESP"), mon_BVALID("mon_BVALID"), mon_BREADY("mon_BREADY"), mon_BRESP("mon_BRESP"), mon_BID("mon_BID"), m_axis_rd_tready("m_axis_rd_tready"), m_axis_rd_tdata("m_axis_rd_tdata"), m_axis_rd_tlast("m_axis_rd_tlast"), m_axis_rd_tid("m_axis_rd_tid"), m_axis_rd_tdest("m_axis_rd_tdest"), m_axis_wr_tready("m_axis_wr_tready"), m_axis_wr_tdata("m_axis_wr_tdata"), m_axis_wr_tlast("m_axis_wr_tlast"), m_axis_wr_tid("m_axis_wr_tid"), m_axis_wr_tdest("m_axis_wr_tdest"), m_axis_wr_tvalid("m_axis_wr_tvalid"), m_axis_rd_tvalid("m_axis_rd_tvalid"), s_axi_awaddr_mon("s_axi_awaddr_mon"), s_axi_awprot_mon("s_axi_awprot_mon"), s_axi_awvalid_mon("s_axi_awvalid_mon"), s_axi_awready_mon("s_axi_awready_mon"), s_axi_wdata_mon("s_axi_wdata_mon"), s_axi_wstrb_mon("s_axi_wstrb_mon"), s_axi_wvalid_mon("s_axi_wvalid_mon"), s_axi_wready_mon("s_axi_wready_mon"), s_axi_bresp_mon("s_axi_bresp_mon"), s_axi_bvalid_mon("s_axi_bvalid_mon"), s_axi_bready_mon("s_axi_bready_mon"), s_axi_araddr_mon("s_axi_araddr_mon"), s_axi_arprot_mon("s_axi_arprot_mon"), s_axi_arvalid_mon("s_axi_arvalid_mon"), s_axi_arready_mon("s_axi_arready_mon"), s_axi_rdata_mon("s_axi_rdata_mon"), s_axi_rresp_mon("s_axi_rresp_mon"), s_axi_rvalid_mon("s_axi_rvalid_mon"), s_axi_rready_mon("s_axi_rready_mon")
{

  // initialize pins
  mp_impl->mon_clk(mon_clk);
  mp_impl->mon_resetn(mon_resetn);
  mp_impl->trace_clk(trace_clk);
  mp_impl->trace_rst(trace_rst);

  // initialize transactors
  mp_S_AXI_transactor = NULL;
  mp_MON_M_AXI_transactor = NULL;
  mp_TRACE_OUT_0_transactor = NULL;
  mp_TRACE_OUT_1_transactor = NULL;
  mp_MON_S_AXI_transactor = NULL;

  // initialize socket stubs

}

void pfm_dynamic_dpa_mon0_0::before_end_of_elaboration()
{
  // configure 'S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI' transactor parameters
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);

    // S_AXI' transactor ports

    mp_S_AXI_transactor->ARADDR(s_axi_araddr);
    mp_S_AXI_transactor->ARREADY(s_axi_arready);
    mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXI_transactor->AWADDR(s_axi_awaddr);
    mp_S_AXI_transactor->AWREADY(s_axi_awready);
    mp_S_AXI_transactor->AWVALID(s_axi_awvalid);
    mp_S_AXI_transactor->BREADY(s_axi_bready);
    mp_S_AXI_transactor->BRESP(s_axi_bresp);
    mp_S_AXI_transactor->BVALID(s_axi_bvalid);
    mp_S_AXI_transactor->RDATA(s_axi_rdata);
    mp_S_AXI_transactor->RREADY(s_axi_rready);
    mp_S_AXI_transactor->RRESP(s_axi_rresp);
    mp_S_AXI_transactor->RVALID(s_axi_rvalid);
    mp_S_AXI_transactor->WDATA(s_axi_wdata);
    mp_S_AXI_transactor->WREADY(s_axi_wready);
    mp_S_AXI_transactor->WSTRB(s_axi_wstrb);
    mp_S_AXI_transactor->WVALID(s_axi_wvalid);
    mp_S_AXI_transactor->CLK(mon_clk);
    mp_S_AXI_transactor->RST(mon_resetn);

    // S_AXI' transactor sockets

    mp_impl->axilite_rd_socket->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_impl->axilite_wr_socket->bind(*(mp_S_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'MON_M_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "MON_M_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'MON_M_AXI' transactor parameters
    xsc::common_cpp::properties MON_M_AXI_transactor_param_props;
    MON_M_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    MON_M_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    MON_M_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    MON_M_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
    MON_M_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_PROT", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    MON_M_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    MON_M_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    MON_M_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    MON_M_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    MON_M_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    MON_M_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    MON_M_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    MON_M_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    MON_M_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    MON_M_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    MON_M_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    MON_M_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    MON_M_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_MON_M_AXI_transactor = new xtlm::xaximm_monitor_t<512,64,1,1,1,1,1,1>("MON_M_AXI_transactor", MON_M_AXI_transactor_param_props);

    // MON_M_AXI' transactor ports

    mp_MON_M_AXI_transactor->ARADDR(mon_ARADDR);
    mp_MON_M_AXI_transactor->ARBURST(mon_ARBURST);
    mp_MON_M_AXI_transactor->ARID(mon_ARID);
    mp_MON_M_AXI_transactor->ARLEN(mon_ARLEN);
    mp_MON_M_AXI_transactor->ARREADY(mon_ARREADY);
    mp_MON_M_AXI_transactor->ARSIZE(mon_ARSIZE);
    mp_MON_M_AXI_transactor->ARVALID(mon_ARVALID);
    mp_MON_M_AXI_transactor->AWADDR(mon_AWADDR);
    mp_MON_M_AXI_transactor->AWBURST(mon_AWBURST);
    mp_MON_M_AXI_transactor->AWID(mon_AWID);
    mp_MON_M_AXI_transactor->AWLEN(mon_AWLEN);
    mp_MON_M_AXI_transactor->AWREADY(mon_AWREADY);
    mp_MON_M_AXI_transactor->AWSIZE(mon_AWSIZE);
    mp_MON_M_AXI_transactor->AWVALID(mon_AWVALID);
    mp_MON_M_AXI_transactor->BID(mon_BID);
    mp_MON_M_AXI_transactor->BREADY(mon_BREADY);
    mp_MON_M_AXI_transactor->BRESP(mon_BRESP);
    mp_MON_M_AXI_transactor->BVALID(mon_BVALID);
    mp_MON_M_AXI_transactor->RDATA(mon_RDATA);
    mp_MON_M_AXI_transactor->RID(mon_RID);
    mp_MON_M_AXI_transactor->RLAST(mon_RLAST);
    mp_MON_M_AXI_transactor->RREADY(mon_RREADY);
    mp_MON_M_AXI_transactor->RRESP(mon_RRESP);
    mp_MON_M_AXI_transactor->RVALID(mon_RVALID);
    mp_MON_M_AXI_transactor->WDATA(mon_WDATA);
    mp_MON_M_AXI_transactor->WLAST(mon_WLAST);
    mp_MON_M_AXI_transactor->WREADY(mon_WREADY);
    mp_MON_M_AXI_transactor->WSTRB(mon_WSTRB);
    mp_MON_M_AXI_transactor->WVALID(mon_WVALID);
    mp_MON_M_AXI_transactor->CLK(mon_clk);
    mp_MON_M_AXI_transactor->RST(mon_resetn);

    // MON_M_AXI' transactor sockets

    mp_impl->mon_rd_socket->bind(*(mp_MON_M_AXI_transactor->rd_socket));
    mp_impl->mon_wr_socket->bind(*(mp_MON_M_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'TRACE_OUT_0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "TRACE_OUT_0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_OUT_0' transactor parameters
    xsc::common_cpp::properties TRACE_OUT_0_transactor_param_props;
    TRACE_OUT_0_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_OUT_0_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_OUT_0_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_OUT_0_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_OUT_0_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_OUT_0_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_OUT_0_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_OUT_0_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_OUT_0_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_OUT_0_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_OUT_0_transactor = new xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>("TRACE_OUT_0_transactor", TRACE_OUT_0_transactor_param_props);

    // TRACE_OUT_0' transactor ports

    mp_TRACE_OUT_0_transactor->TDATA(m_axis_wr_tdata);
    mp_TRACE_OUT_0_transactor->TDEST(m_axis_wr_tdest);
    mp_TRACE_OUT_0_transactor->TID(m_axis_wr_tid);
    mp_TRACE_OUT_0_transactor->TLAST(m_axis_wr_tlast);
    mp_TRACE_OUT_0_transactor->TREADY(m_axis_wr_tready);
    mp_TRACE_OUT_0_transactor->TVALID(m_axis_wr_tvalid);
    mp_TRACE_OUT_0_transactor->CLK(trace_clk);
    mp_TRACE_OUT_0_transactor->RST(trace_rst);

    // TRACE_OUT_0' transactor sockets

    mp_impl->wr_trace_socket->bind(*(mp_TRACE_OUT_0_transactor->socket));
  }
  else
  {
  }

  // configure 'TRACE_OUT_1' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "TRACE_OUT_1_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_OUT_1' transactor parameters
    xsc::common_cpp::properties TRACE_OUT_1_transactor_param_props;
    TRACE_OUT_1_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_OUT_1_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_OUT_1_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_OUT_1_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_OUT_1_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_OUT_1_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_OUT_1_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_OUT_1_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_OUT_1_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_OUT_1_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_OUT_1_transactor = new xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>("TRACE_OUT_1_transactor", TRACE_OUT_1_transactor_param_props);

    // TRACE_OUT_1' transactor ports

    mp_TRACE_OUT_1_transactor->TDATA(m_axis_rd_tdata);
    mp_TRACE_OUT_1_transactor->TDEST(m_axis_rd_tdest);
    mp_TRACE_OUT_1_transactor->TID(m_axis_rd_tid);
    mp_TRACE_OUT_1_transactor->TLAST(m_axis_rd_tlast);
    mp_TRACE_OUT_1_transactor->TREADY(m_axis_rd_tready);
    mp_TRACE_OUT_1_transactor->TVALID(m_axis_rd_tvalid);
    mp_TRACE_OUT_1_transactor->CLK(trace_clk);
    mp_TRACE_OUT_1_transactor->RST(trace_rst);

    // TRACE_OUT_1' transactor sockets

    mp_impl->rd_trace_socket->bind(*(mp_TRACE_OUT_1_transactor->socket));
  }
  else
  {
  }

  // configure 'MON_S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "MON_S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'MON_S_AXI' transactor parameters
    xsc::common_cpp::properties MON_S_AXI_transactor_param_props;
    MON_S_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    MON_S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    MON_S_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "8");
    MON_S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    MON_S_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    MON_S_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    MON_S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    MON_S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    MON_S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    MON_S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    MON_S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    MON_S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    MON_S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    MON_S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    MON_S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    MON_S_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    MON_S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    MON_S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    MON_S_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    MON_S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_MON_S_AXI_transactor = new xtlm::xaximm_monitor_t<32,8,1,1,1,1,1,1>("MON_S_AXI_transactor", MON_S_AXI_transactor_param_props);

    // MON_S_AXI' transactor ports

    mp_MON_S_AXI_transactor->ARADDR(s_axi_araddr_mon);
    mp_MON_S_AXI_transactor->ARPROT(s_axi_arprot_mon);
    mp_MON_S_AXI_transactor->ARREADY(s_axi_arready_mon);
    mp_MON_S_AXI_transactor->ARVALID(s_axi_arvalid_mon);
    mp_MON_S_AXI_transactor->AWADDR(s_axi_awaddr_mon);
    mp_MON_S_AXI_transactor->AWPROT(s_axi_awprot_mon);
    mp_MON_S_AXI_transactor->AWREADY(s_axi_awready_mon);
    mp_MON_S_AXI_transactor->AWVALID(s_axi_awvalid_mon);
    mp_MON_S_AXI_transactor->BREADY(s_axi_bready_mon);
    mp_MON_S_AXI_transactor->BRESP(s_axi_bresp_mon);
    mp_MON_S_AXI_transactor->BVALID(s_axi_bvalid_mon);
    mp_MON_S_AXI_transactor->RDATA(s_axi_rdata_mon);
    mp_MON_S_AXI_transactor->RREADY(s_axi_rready_mon);
    mp_MON_S_AXI_transactor->RRESP(s_axi_rresp_mon);
    mp_MON_S_AXI_transactor->RVALID(s_axi_rvalid_mon);
    mp_MON_S_AXI_transactor->WDATA(s_axi_wdata_mon);
    mp_MON_S_AXI_transactor->WREADY(s_axi_wready_mon);
    mp_MON_S_AXI_transactor->WSTRB(s_axi_wstrb_mon);
    mp_MON_S_AXI_transactor->WVALID(s_axi_wvalid_mon);
    mp_MON_S_AXI_transactor->CLK(mon_clk);
    mp_MON_S_AXI_transactor->RST(mon_resetn);

    // MON_S_AXI' transactor sockets

    mp_impl->mon_saxi_rd_socket->bind(*(mp_MON_S_AXI_transactor->rd_socket));
    mp_impl->mon_saxi_wr_socket->bind(*(mp_MON_S_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
pfm_dynamic_dpa_mon0_0::pfm_dynamic_dpa_mon0_0(const sc_core::sc_module_name& nm) : pfm_dynamic_dpa_mon0_0_sc(nm), mon_clk("mon_clk"), mon_resetn("mon_resetn"), trace_clk("trace_clk"), trace_rst("trace_rst"), s_axi_awaddr("s_axi_awaddr"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_bresp("s_axi_bresp"), s_axi_araddr("s_axi_araddr"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), mon_AWVALID("mon_AWVALID"), mon_AWREADY("mon_AWREADY"), mon_AWADDR("mon_AWADDR"), mon_AWID("mon_AWID"), mon_AWLEN("mon_AWLEN"), mon_AWSIZE("mon_AWSIZE"), mon_AWBURST("mon_AWBURST"), mon_WVALID("mon_WVALID"), mon_WREADY("mon_WREADY"), mon_WDATA("mon_WDATA"), mon_WSTRB("mon_WSTRB"), mon_WLAST("mon_WLAST"), mon_ARVALID("mon_ARVALID"), mon_ARREADY("mon_ARREADY"), mon_ARADDR("mon_ARADDR"), mon_ARID("mon_ARID"), mon_ARLEN("mon_ARLEN"), mon_ARSIZE("mon_ARSIZE"), mon_ARBURST("mon_ARBURST"), mon_RVALID("mon_RVALID"), mon_RREADY("mon_RREADY"), mon_RDATA("mon_RDATA"), mon_RLAST("mon_RLAST"), mon_RID("mon_RID"), mon_RRESP("mon_RRESP"), mon_BVALID("mon_BVALID"), mon_BREADY("mon_BREADY"), mon_BRESP("mon_BRESP"), mon_BID("mon_BID"), m_axis_rd_tready("m_axis_rd_tready"), m_axis_rd_tdata("m_axis_rd_tdata"), m_axis_rd_tlast("m_axis_rd_tlast"), m_axis_rd_tid("m_axis_rd_tid"), m_axis_rd_tdest("m_axis_rd_tdest"), m_axis_wr_tready("m_axis_wr_tready"), m_axis_wr_tdata("m_axis_wr_tdata"), m_axis_wr_tlast("m_axis_wr_tlast"), m_axis_wr_tid("m_axis_wr_tid"), m_axis_wr_tdest("m_axis_wr_tdest"), m_axis_wr_tvalid("m_axis_wr_tvalid"), m_axis_rd_tvalid("m_axis_rd_tvalid"), s_axi_awaddr_mon("s_axi_awaddr_mon"), s_axi_awprot_mon("s_axi_awprot_mon"), s_axi_awvalid_mon("s_axi_awvalid_mon"), s_axi_awready_mon("s_axi_awready_mon"), s_axi_wdata_mon("s_axi_wdata_mon"), s_axi_wstrb_mon("s_axi_wstrb_mon"), s_axi_wvalid_mon("s_axi_wvalid_mon"), s_axi_wready_mon("s_axi_wready_mon"), s_axi_bresp_mon("s_axi_bresp_mon"), s_axi_bvalid_mon("s_axi_bvalid_mon"), s_axi_bready_mon("s_axi_bready_mon"), s_axi_araddr_mon("s_axi_araddr_mon"), s_axi_arprot_mon("s_axi_arprot_mon"), s_axi_arvalid_mon("s_axi_arvalid_mon"), s_axi_arready_mon("s_axi_arready_mon"), s_axi_rdata_mon("s_axi_rdata_mon"), s_axi_rresp_mon("s_axi_rresp_mon"), s_axi_rvalid_mon("s_axi_rvalid_mon"), s_axi_rready_mon("s_axi_rready_mon")
{

  // initialize pins
  mp_impl->mon_clk(mon_clk);
  mp_impl->mon_resetn(mon_resetn);
  mp_impl->trace_clk(trace_clk);
  mp_impl->trace_rst(trace_rst);

  // initialize transactors
  mp_S_AXI_transactor = NULL;
  mp_MON_M_AXI_transactor = NULL;
  mp_TRACE_OUT_0_transactor = NULL;
  mp_TRACE_OUT_1_transactor = NULL;
  mp_MON_S_AXI_transactor = NULL;

  // initialize socket stubs

}

void pfm_dynamic_dpa_mon0_0::before_end_of_elaboration()
{
  // configure 'S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI' transactor parameters
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);

    // S_AXI' transactor ports

    mp_S_AXI_transactor->ARADDR(s_axi_araddr);
    mp_S_AXI_transactor->ARREADY(s_axi_arready);
    mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXI_transactor->AWADDR(s_axi_awaddr);
    mp_S_AXI_transactor->AWREADY(s_axi_awready);
    mp_S_AXI_transactor->AWVALID(s_axi_awvalid);
    mp_S_AXI_transactor->BREADY(s_axi_bready);
    mp_S_AXI_transactor->BRESP(s_axi_bresp);
    mp_S_AXI_transactor->BVALID(s_axi_bvalid);
    mp_S_AXI_transactor->RDATA(s_axi_rdata);
    mp_S_AXI_transactor->RREADY(s_axi_rready);
    mp_S_AXI_transactor->RRESP(s_axi_rresp);
    mp_S_AXI_transactor->RVALID(s_axi_rvalid);
    mp_S_AXI_transactor->WDATA(s_axi_wdata);
    mp_S_AXI_transactor->WREADY(s_axi_wready);
    mp_S_AXI_transactor->WSTRB(s_axi_wstrb);
    mp_S_AXI_transactor->WVALID(s_axi_wvalid);
    mp_S_AXI_transactor->CLK(mon_clk);
    mp_S_AXI_transactor->RST(mon_resetn);

    // S_AXI' transactor sockets

    mp_impl->axilite_rd_socket->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_impl->axilite_wr_socket->bind(*(mp_S_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'MON_M_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "MON_M_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'MON_M_AXI' transactor parameters
    xsc::common_cpp::properties MON_M_AXI_transactor_param_props;
    MON_M_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    MON_M_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    MON_M_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    MON_M_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
    MON_M_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_PROT", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    MON_M_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    MON_M_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    MON_M_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    MON_M_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    MON_M_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    MON_M_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    MON_M_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    MON_M_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    MON_M_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    MON_M_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    MON_M_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    MON_M_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    MON_M_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_MON_M_AXI_transactor = new xtlm::xaximm_monitor_t<512,64,1,1,1,1,1,1>("MON_M_AXI_transactor", MON_M_AXI_transactor_param_props);

    // MON_M_AXI' transactor ports

    mp_MON_M_AXI_transactor->ARADDR(mon_ARADDR);
    mp_MON_M_AXI_transactor->ARBURST(mon_ARBURST);
    mp_MON_M_AXI_transactor->ARID(mon_ARID);
    mp_MON_M_AXI_transactor->ARLEN(mon_ARLEN);
    mp_MON_M_AXI_transactor->ARREADY(mon_ARREADY);
    mp_MON_M_AXI_transactor->ARSIZE(mon_ARSIZE);
    mp_MON_M_AXI_transactor->ARVALID(mon_ARVALID);
    mp_MON_M_AXI_transactor->AWADDR(mon_AWADDR);
    mp_MON_M_AXI_transactor->AWBURST(mon_AWBURST);
    mp_MON_M_AXI_transactor->AWID(mon_AWID);
    mp_MON_M_AXI_transactor->AWLEN(mon_AWLEN);
    mp_MON_M_AXI_transactor->AWREADY(mon_AWREADY);
    mp_MON_M_AXI_transactor->AWSIZE(mon_AWSIZE);
    mp_MON_M_AXI_transactor->AWVALID(mon_AWVALID);
    mp_MON_M_AXI_transactor->BID(mon_BID);
    mp_MON_M_AXI_transactor->BREADY(mon_BREADY);
    mp_MON_M_AXI_transactor->BRESP(mon_BRESP);
    mp_MON_M_AXI_transactor->BVALID(mon_BVALID);
    mp_MON_M_AXI_transactor->RDATA(mon_RDATA);
    mp_MON_M_AXI_transactor->RID(mon_RID);
    mp_MON_M_AXI_transactor->RLAST(mon_RLAST);
    mp_MON_M_AXI_transactor->RREADY(mon_RREADY);
    mp_MON_M_AXI_transactor->RRESP(mon_RRESP);
    mp_MON_M_AXI_transactor->RVALID(mon_RVALID);
    mp_MON_M_AXI_transactor->WDATA(mon_WDATA);
    mp_MON_M_AXI_transactor->WLAST(mon_WLAST);
    mp_MON_M_AXI_transactor->WREADY(mon_WREADY);
    mp_MON_M_AXI_transactor->WSTRB(mon_WSTRB);
    mp_MON_M_AXI_transactor->WVALID(mon_WVALID);
    mp_MON_M_AXI_transactor->CLK(mon_clk);
    mp_MON_M_AXI_transactor->RST(mon_resetn);

    // MON_M_AXI' transactor sockets

    mp_impl->mon_rd_socket->bind(*(mp_MON_M_AXI_transactor->rd_socket));
    mp_impl->mon_wr_socket->bind(*(mp_MON_M_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'TRACE_OUT_0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "TRACE_OUT_0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_OUT_0' transactor parameters
    xsc::common_cpp::properties TRACE_OUT_0_transactor_param_props;
    TRACE_OUT_0_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_OUT_0_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_OUT_0_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_OUT_0_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_OUT_0_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_OUT_0_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_OUT_0_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_OUT_0_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_OUT_0_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_OUT_0_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_OUT_0_transactor = new xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>("TRACE_OUT_0_transactor", TRACE_OUT_0_transactor_param_props);

    // TRACE_OUT_0' transactor ports

    mp_TRACE_OUT_0_transactor->TDATA(m_axis_wr_tdata);
    mp_TRACE_OUT_0_transactor->TDEST(m_axis_wr_tdest);
    mp_TRACE_OUT_0_transactor->TID(m_axis_wr_tid);
    mp_TRACE_OUT_0_transactor->TLAST(m_axis_wr_tlast);
    mp_TRACE_OUT_0_transactor->TREADY(m_axis_wr_tready);
    mp_TRACE_OUT_0_transactor->TVALID(m_axis_wr_tvalid);
    mp_TRACE_OUT_0_transactor->CLK(trace_clk);
    mp_TRACE_OUT_0_transactor->RST(trace_rst);

    // TRACE_OUT_0' transactor sockets

    mp_impl->wr_trace_socket->bind(*(mp_TRACE_OUT_0_transactor->socket));
  }
  else
  {
  }

  // configure 'TRACE_OUT_1' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "TRACE_OUT_1_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_OUT_1' transactor parameters
    xsc::common_cpp::properties TRACE_OUT_1_transactor_param_props;
    TRACE_OUT_1_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_OUT_1_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_OUT_1_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_OUT_1_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_OUT_1_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_OUT_1_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_OUT_1_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_OUT_1_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_OUT_1_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_OUT_1_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_OUT_1_transactor = new xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>("TRACE_OUT_1_transactor", TRACE_OUT_1_transactor_param_props);

    // TRACE_OUT_1' transactor ports

    mp_TRACE_OUT_1_transactor->TDATA(m_axis_rd_tdata);
    mp_TRACE_OUT_1_transactor->TDEST(m_axis_rd_tdest);
    mp_TRACE_OUT_1_transactor->TID(m_axis_rd_tid);
    mp_TRACE_OUT_1_transactor->TLAST(m_axis_rd_tlast);
    mp_TRACE_OUT_1_transactor->TREADY(m_axis_rd_tready);
    mp_TRACE_OUT_1_transactor->TVALID(m_axis_rd_tvalid);
    mp_TRACE_OUT_1_transactor->CLK(trace_clk);
    mp_TRACE_OUT_1_transactor->RST(trace_rst);

    // TRACE_OUT_1' transactor sockets

    mp_impl->rd_trace_socket->bind(*(mp_TRACE_OUT_1_transactor->socket));
  }
  else
  {
  }

  // configure 'MON_S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "MON_S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'MON_S_AXI' transactor parameters
    xsc::common_cpp::properties MON_S_AXI_transactor_param_props;
    MON_S_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    MON_S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    MON_S_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "8");
    MON_S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    MON_S_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    MON_S_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    MON_S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    MON_S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    MON_S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    MON_S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    MON_S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    MON_S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    MON_S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    MON_S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    MON_S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    MON_S_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    MON_S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    MON_S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    MON_S_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    MON_S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_MON_S_AXI_transactor = new xtlm::xaximm_monitor_t<32,8,1,1,1,1,1,1>("MON_S_AXI_transactor", MON_S_AXI_transactor_param_props);

    // MON_S_AXI' transactor ports

    mp_MON_S_AXI_transactor->ARADDR(s_axi_araddr_mon);
    mp_MON_S_AXI_transactor->ARPROT(s_axi_arprot_mon);
    mp_MON_S_AXI_transactor->ARREADY(s_axi_arready_mon);
    mp_MON_S_AXI_transactor->ARVALID(s_axi_arvalid_mon);
    mp_MON_S_AXI_transactor->AWADDR(s_axi_awaddr_mon);
    mp_MON_S_AXI_transactor->AWPROT(s_axi_awprot_mon);
    mp_MON_S_AXI_transactor->AWREADY(s_axi_awready_mon);
    mp_MON_S_AXI_transactor->AWVALID(s_axi_awvalid_mon);
    mp_MON_S_AXI_transactor->BREADY(s_axi_bready_mon);
    mp_MON_S_AXI_transactor->BRESP(s_axi_bresp_mon);
    mp_MON_S_AXI_transactor->BVALID(s_axi_bvalid_mon);
    mp_MON_S_AXI_transactor->RDATA(s_axi_rdata_mon);
    mp_MON_S_AXI_transactor->RREADY(s_axi_rready_mon);
    mp_MON_S_AXI_transactor->RRESP(s_axi_rresp_mon);
    mp_MON_S_AXI_transactor->RVALID(s_axi_rvalid_mon);
    mp_MON_S_AXI_transactor->WDATA(s_axi_wdata_mon);
    mp_MON_S_AXI_transactor->WREADY(s_axi_wready_mon);
    mp_MON_S_AXI_transactor->WSTRB(s_axi_wstrb_mon);
    mp_MON_S_AXI_transactor->WVALID(s_axi_wvalid_mon);
    mp_MON_S_AXI_transactor->CLK(mon_clk);
    mp_MON_S_AXI_transactor->RST(mon_resetn);

    // MON_S_AXI' transactor sockets

    mp_impl->mon_saxi_rd_socket->bind(*(mp_MON_S_AXI_transactor->rd_socket));
    mp_impl->mon_saxi_wr_socket->bind(*(mp_MON_S_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
pfm_dynamic_dpa_mon0_0::pfm_dynamic_dpa_mon0_0(const sc_core::sc_module_name& nm) : pfm_dynamic_dpa_mon0_0_sc(nm), mon_clk("mon_clk"), mon_resetn("mon_resetn"), trace_clk("trace_clk"), trace_rst("trace_rst"), s_axi_awaddr("s_axi_awaddr"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_bresp("s_axi_bresp"), s_axi_araddr("s_axi_araddr"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), mon_AWVALID("mon_AWVALID"), mon_AWREADY("mon_AWREADY"), mon_AWADDR("mon_AWADDR"), mon_AWID("mon_AWID"), mon_AWLEN("mon_AWLEN"), mon_AWSIZE("mon_AWSIZE"), mon_AWBURST("mon_AWBURST"), mon_WVALID("mon_WVALID"), mon_WREADY("mon_WREADY"), mon_WDATA("mon_WDATA"), mon_WSTRB("mon_WSTRB"), mon_WLAST("mon_WLAST"), mon_ARVALID("mon_ARVALID"), mon_ARREADY("mon_ARREADY"), mon_ARADDR("mon_ARADDR"), mon_ARID("mon_ARID"), mon_ARLEN("mon_ARLEN"), mon_ARSIZE("mon_ARSIZE"), mon_ARBURST("mon_ARBURST"), mon_RVALID("mon_RVALID"), mon_RREADY("mon_RREADY"), mon_RDATA("mon_RDATA"), mon_RLAST("mon_RLAST"), mon_RID("mon_RID"), mon_RRESP("mon_RRESP"), mon_BVALID("mon_BVALID"), mon_BREADY("mon_BREADY"), mon_BRESP("mon_BRESP"), mon_BID("mon_BID"), m_axis_rd_tready("m_axis_rd_tready"), m_axis_rd_tdata("m_axis_rd_tdata"), m_axis_rd_tlast("m_axis_rd_tlast"), m_axis_rd_tid("m_axis_rd_tid"), m_axis_rd_tdest("m_axis_rd_tdest"), m_axis_wr_tready("m_axis_wr_tready"), m_axis_wr_tdata("m_axis_wr_tdata"), m_axis_wr_tlast("m_axis_wr_tlast"), m_axis_wr_tid("m_axis_wr_tid"), m_axis_wr_tdest("m_axis_wr_tdest"), m_axis_wr_tvalid("m_axis_wr_tvalid"), m_axis_rd_tvalid("m_axis_rd_tvalid"), s_axi_awaddr_mon("s_axi_awaddr_mon"), s_axi_awprot_mon("s_axi_awprot_mon"), s_axi_awvalid_mon("s_axi_awvalid_mon"), s_axi_awready_mon("s_axi_awready_mon"), s_axi_wdata_mon("s_axi_wdata_mon"), s_axi_wstrb_mon("s_axi_wstrb_mon"), s_axi_wvalid_mon("s_axi_wvalid_mon"), s_axi_wready_mon("s_axi_wready_mon"), s_axi_bresp_mon("s_axi_bresp_mon"), s_axi_bvalid_mon("s_axi_bvalid_mon"), s_axi_bready_mon("s_axi_bready_mon"), s_axi_araddr_mon("s_axi_araddr_mon"), s_axi_arprot_mon("s_axi_arprot_mon"), s_axi_arvalid_mon("s_axi_arvalid_mon"), s_axi_arready_mon("s_axi_arready_mon"), s_axi_rdata_mon("s_axi_rdata_mon"), s_axi_rresp_mon("s_axi_rresp_mon"), s_axi_rvalid_mon("s_axi_rvalid_mon"), s_axi_rready_mon("s_axi_rready_mon")
{

  // initialize pins
  mp_impl->mon_clk(mon_clk);
  mp_impl->mon_resetn(mon_resetn);
  mp_impl->trace_clk(trace_clk);
  mp_impl->trace_rst(trace_rst);

  // initialize transactors
  mp_S_AXI_transactor = NULL;
  mp_MON_M_AXI_transactor = NULL;
  mp_TRACE_OUT_0_transactor = NULL;
  mp_TRACE_OUT_1_transactor = NULL;
  mp_MON_S_AXI_transactor = NULL;

  // initialize socket stubs

}

void pfm_dynamic_dpa_mon0_0::before_end_of_elaboration()
{
  // configure 'S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI' transactor parameters
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);

    // S_AXI' transactor ports

    mp_S_AXI_transactor->ARADDR(s_axi_araddr);
    mp_S_AXI_transactor->ARREADY(s_axi_arready);
    mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXI_transactor->AWADDR(s_axi_awaddr);
    mp_S_AXI_transactor->AWREADY(s_axi_awready);
    mp_S_AXI_transactor->AWVALID(s_axi_awvalid);
    mp_S_AXI_transactor->BREADY(s_axi_bready);
    mp_S_AXI_transactor->BRESP(s_axi_bresp);
    mp_S_AXI_transactor->BVALID(s_axi_bvalid);
    mp_S_AXI_transactor->RDATA(s_axi_rdata);
    mp_S_AXI_transactor->RREADY(s_axi_rready);
    mp_S_AXI_transactor->RRESP(s_axi_rresp);
    mp_S_AXI_transactor->RVALID(s_axi_rvalid);
    mp_S_AXI_transactor->WDATA(s_axi_wdata);
    mp_S_AXI_transactor->WREADY(s_axi_wready);
    mp_S_AXI_transactor->WSTRB(s_axi_wstrb);
    mp_S_AXI_transactor->WVALID(s_axi_wvalid);
    mp_S_AXI_transactor->CLK(mon_clk);
    mp_S_AXI_transactor->RST(mon_resetn);

    // S_AXI' transactor sockets

    mp_impl->axilite_rd_socket->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_impl->axilite_wr_socket->bind(*(mp_S_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'MON_M_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "MON_M_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'MON_M_AXI' transactor parameters
    xsc::common_cpp::properties MON_M_AXI_transactor_param_props;
    MON_M_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    MON_M_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    MON_M_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    MON_M_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
    MON_M_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_PROT", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    MON_M_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    MON_M_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    MON_M_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    MON_M_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    MON_M_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    MON_M_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    MON_M_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    MON_M_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    MON_M_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    MON_M_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    MON_M_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    MON_M_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    MON_M_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_MON_M_AXI_transactor = new xtlm::xaximm_monitor_t<512,64,1,1,1,1,1,1>("MON_M_AXI_transactor", MON_M_AXI_transactor_param_props);

    // MON_M_AXI' transactor ports

    mp_MON_M_AXI_transactor->ARADDR(mon_ARADDR);
    mp_MON_M_AXI_transactor->ARBURST(mon_ARBURST);
    mp_MON_M_AXI_transactor->ARID(mon_ARID);
    mp_MON_M_AXI_transactor->ARLEN(mon_ARLEN);
    mp_MON_M_AXI_transactor->ARREADY(mon_ARREADY);
    mp_MON_M_AXI_transactor->ARSIZE(mon_ARSIZE);
    mp_MON_M_AXI_transactor->ARVALID(mon_ARVALID);
    mp_MON_M_AXI_transactor->AWADDR(mon_AWADDR);
    mp_MON_M_AXI_transactor->AWBURST(mon_AWBURST);
    mp_MON_M_AXI_transactor->AWID(mon_AWID);
    mp_MON_M_AXI_transactor->AWLEN(mon_AWLEN);
    mp_MON_M_AXI_transactor->AWREADY(mon_AWREADY);
    mp_MON_M_AXI_transactor->AWSIZE(mon_AWSIZE);
    mp_MON_M_AXI_transactor->AWVALID(mon_AWVALID);
    mp_MON_M_AXI_transactor->BID(mon_BID);
    mp_MON_M_AXI_transactor->BREADY(mon_BREADY);
    mp_MON_M_AXI_transactor->BRESP(mon_BRESP);
    mp_MON_M_AXI_transactor->BVALID(mon_BVALID);
    mp_MON_M_AXI_transactor->RDATA(mon_RDATA);
    mp_MON_M_AXI_transactor->RID(mon_RID);
    mp_MON_M_AXI_transactor->RLAST(mon_RLAST);
    mp_MON_M_AXI_transactor->RREADY(mon_RREADY);
    mp_MON_M_AXI_transactor->RRESP(mon_RRESP);
    mp_MON_M_AXI_transactor->RVALID(mon_RVALID);
    mp_MON_M_AXI_transactor->WDATA(mon_WDATA);
    mp_MON_M_AXI_transactor->WLAST(mon_WLAST);
    mp_MON_M_AXI_transactor->WREADY(mon_WREADY);
    mp_MON_M_AXI_transactor->WSTRB(mon_WSTRB);
    mp_MON_M_AXI_transactor->WVALID(mon_WVALID);
    mp_MON_M_AXI_transactor->CLK(mon_clk);
    mp_MON_M_AXI_transactor->RST(mon_resetn);

    // MON_M_AXI' transactor sockets

    mp_impl->mon_rd_socket->bind(*(mp_MON_M_AXI_transactor->rd_socket));
    mp_impl->mon_wr_socket->bind(*(mp_MON_M_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'TRACE_OUT_0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "TRACE_OUT_0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_OUT_0' transactor parameters
    xsc::common_cpp::properties TRACE_OUT_0_transactor_param_props;
    TRACE_OUT_0_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_OUT_0_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_OUT_0_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_OUT_0_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_OUT_0_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_OUT_0_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_OUT_0_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_OUT_0_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_OUT_0_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_OUT_0_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_OUT_0_transactor = new xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>("TRACE_OUT_0_transactor", TRACE_OUT_0_transactor_param_props);

    // TRACE_OUT_0' transactor ports

    mp_TRACE_OUT_0_transactor->TDATA(m_axis_wr_tdata);
    mp_TRACE_OUT_0_transactor->TDEST(m_axis_wr_tdest);
    mp_TRACE_OUT_0_transactor->TID(m_axis_wr_tid);
    mp_TRACE_OUT_0_transactor->TLAST(m_axis_wr_tlast);
    mp_TRACE_OUT_0_transactor->TREADY(m_axis_wr_tready);
    mp_TRACE_OUT_0_transactor->TVALID(m_axis_wr_tvalid);
    mp_TRACE_OUT_0_transactor->CLK(trace_clk);
    mp_TRACE_OUT_0_transactor->RST(trace_rst);

    // TRACE_OUT_0' transactor sockets

    mp_impl->wr_trace_socket->bind(*(mp_TRACE_OUT_0_transactor->socket));
  }
  else
  {
  }

  // configure 'TRACE_OUT_1' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "TRACE_OUT_1_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_OUT_1' transactor parameters
    xsc::common_cpp::properties TRACE_OUT_1_transactor_param_props;
    TRACE_OUT_1_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_OUT_1_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_OUT_1_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_OUT_1_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_OUT_1_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_OUT_1_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_OUT_1_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_OUT_1_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_OUT_1_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_OUT_1_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_OUT_1_transactor = new xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>("TRACE_OUT_1_transactor", TRACE_OUT_1_transactor_param_props);

    // TRACE_OUT_1' transactor ports

    mp_TRACE_OUT_1_transactor->TDATA(m_axis_rd_tdata);
    mp_TRACE_OUT_1_transactor->TDEST(m_axis_rd_tdest);
    mp_TRACE_OUT_1_transactor->TID(m_axis_rd_tid);
    mp_TRACE_OUT_1_transactor->TLAST(m_axis_rd_tlast);
    mp_TRACE_OUT_1_transactor->TREADY(m_axis_rd_tready);
    mp_TRACE_OUT_1_transactor->TVALID(m_axis_rd_tvalid);
    mp_TRACE_OUT_1_transactor->CLK(trace_clk);
    mp_TRACE_OUT_1_transactor->RST(trace_rst);

    // TRACE_OUT_1' transactor sockets

    mp_impl->rd_trace_socket->bind(*(mp_TRACE_OUT_1_transactor->socket));
  }
  else
  {
  }

  // configure 'MON_S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "MON_S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'MON_S_AXI' transactor parameters
    xsc::common_cpp::properties MON_S_AXI_transactor_param_props;
    MON_S_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    MON_S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    MON_S_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "8");
    MON_S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    MON_S_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    MON_S_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    MON_S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    MON_S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    MON_S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    MON_S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    MON_S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    MON_S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    MON_S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    MON_S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    MON_S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    MON_S_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    MON_S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    MON_S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    MON_S_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    MON_S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_MON_S_AXI_transactor = new xtlm::xaximm_monitor_t<32,8,1,1,1,1,1,1>("MON_S_AXI_transactor", MON_S_AXI_transactor_param_props);

    // MON_S_AXI' transactor ports

    mp_MON_S_AXI_transactor->ARADDR(s_axi_araddr_mon);
    mp_MON_S_AXI_transactor->ARPROT(s_axi_arprot_mon);
    mp_MON_S_AXI_transactor->ARREADY(s_axi_arready_mon);
    mp_MON_S_AXI_transactor->ARVALID(s_axi_arvalid_mon);
    mp_MON_S_AXI_transactor->AWADDR(s_axi_awaddr_mon);
    mp_MON_S_AXI_transactor->AWPROT(s_axi_awprot_mon);
    mp_MON_S_AXI_transactor->AWREADY(s_axi_awready_mon);
    mp_MON_S_AXI_transactor->AWVALID(s_axi_awvalid_mon);
    mp_MON_S_AXI_transactor->BREADY(s_axi_bready_mon);
    mp_MON_S_AXI_transactor->BRESP(s_axi_bresp_mon);
    mp_MON_S_AXI_transactor->BVALID(s_axi_bvalid_mon);
    mp_MON_S_AXI_transactor->RDATA(s_axi_rdata_mon);
    mp_MON_S_AXI_transactor->RREADY(s_axi_rready_mon);
    mp_MON_S_AXI_transactor->RRESP(s_axi_rresp_mon);
    mp_MON_S_AXI_transactor->RVALID(s_axi_rvalid_mon);
    mp_MON_S_AXI_transactor->WDATA(s_axi_wdata_mon);
    mp_MON_S_AXI_transactor->WREADY(s_axi_wready_mon);
    mp_MON_S_AXI_transactor->WSTRB(s_axi_wstrb_mon);
    mp_MON_S_AXI_transactor->WVALID(s_axi_wvalid_mon);
    mp_MON_S_AXI_transactor->CLK(mon_clk);
    mp_MON_S_AXI_transactor->RST(mon_resetn);

    // MON_S_AXI' transactor sockets

    mp_impl->mon_saxi_rd_socket->bind(*(mp_MON_S_AXI_transactor->rd_socket));
    mp_impl->mon_saxi_wr_socket->bind(*(mp_MON_S_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
pfm_dynamic_dpa_mon0_0::pfm_dynamic_dpa_mon0_0(const sc_core::sc_module_name& nm) : pfm_dynamic_dpa_mon0_0_sc(nm),  mon_clk("mon_clk"), mon_resetn("mon_resetn"), trace_clk("trace_clk"), trace_rst("trace_rst"), s_axi_awaddr("s_axi_awaddr"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_bresp("s_axi_bresp"), s_axi_araddr("s_axi_araddr"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), mon_AWVALID("mon_AWVALID"), mon_AWREADY("mon_AWREADY"), mon_AWADDR("mon_AWADDR"), mon_AWID("mon_AWID"), mon_AWLEN("mon_AWLEN"), mon_AWSIZE("mon_AWSIZE"), mon_AWBURST("mon_AWBURST"), mon_WVALID("mon_WVALID"), mon_WREADY("mon_WREADY"), mon_WDATA("mon_WDATA"), mon_WSTRB("mon_WSTRB"), mon_WLAST("mon_WLAST"), mon_ARVALID("mon_ARVALID"), mon_ARREADY("mon_ARREADY"), mon_ARADDR("mon_ARADDR"), mon_ARID("mon_ARID"), mon_ARLEN("mon_ARLEN"), mon_ARSIZE("mon_ARSIZE"), mon_ARBURST("mon_ARBURST"), mon_RVALID("mon_RVALID"), mon_RREADY("mon_RREADY"), mon_RDATA("mon_RDATA"), mon_RLAST("mon_RLAST"), mon_RID("mon_RID"), mon_RRESP("mon_RRESP"), mon_BVALID("mon_BVALID"), mon_BREADY("mon_BREADY"), mon_BRESP("mon_BRESP"), mon_BID("mon_BID"), m_axis_rd_tready("m_axis_rd_tready"), m_axis_rd_tdata("m_axis_rd_tdata"), m_axis_rd_tlast("m_axis_rd_tlast"), m_axis_rd_tid("m_axis_rd_tid"), m_axis_rd_tdest("m_axis_rd_tdest"), m_axis_wr_tready("m_axis_wr_tready"), m_axis_wr_tdata("m_axis_wr_tdata"), m_axis_wr_tlast("m_axis_wr_tlast"), m_axis_wr_tid("m_axis_wr_tid"), m_axis_wr_tdest("m_axis_wr_tdest"), m_axis_wr_tvalid("m_axis_wr_tvalid"), m_axis_rd_tvalid("m_axis_rd_tvalid"), s_axi_awaddr_mon("s_axi_awaddr_mon"), s_axi_awprot_mon("s_axi_awprot_mon"), s_axi_awvalid_mon("s_axi_awvalid_mon"), s_axi_awready_mon("s_axi_awready_mon"), s_axi_wdata_mon("s_axi_wdata_mon"), s_axi_wstrb_mon("s_axi_wstrb_mon"), s_axi_wvalid_mon("s_axi_wvalid_mon"), s_axi_wready_mon("s_axi_wready_mon"), s_axi_bresp_mon("s_axi_bresp_mon"), s_axi_bvalid_mon("s_axi_bvalid_mon"), s_axi_bready_mon("s_axi_bready_mon"), s_axi_araddr_mon("s_axi_araddr_mon"), s_axi_arprot_mon("s_axi_arprot_mon"), s_axi_arvalid_mon("s_axi_arvalid_mon"), s_axi_arready_mon("s_axi_arready_mon"), s_axi_rdata_mon("s_axi_rdata_mon"), s_axi_rresp_mon("s_axi_rresp_mon"), s_axi_rvalid_mon("s_axi_rvalid_mon"), s_axi_rready_mon("s_axi_rready_mon")
{
  // initialize pins
  mp_impl->mon_clk(mon_clk);
  mp_impl->mon_resetn(mon_resetn);
  mp_impl->trace_clk(trace_clk);
  mp_impl->trace_rst(trace_rst);

  // initialize transactors
  mp_S_AXI_transactor = NULL;
  mp_MON_M_AXI_transactor = NULL;
  mp_TRACE_OUT_0_transactor = NULL;
  mp_TRACE_OUT_1_transactor = NULL;
  mp_MON_S_AXI_transactor = NULL;

  // Instantiate Socket Stubs

  // configure S_AXI_transactor
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);
  mp_S_AXI_transactor->ARADDR(s_axi_araddr);
  mp_S_AXI_transactor->ARREADY(s_axi_arready);
  mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
  mp_S_AXI_transactor->AWADDR(s_axi_awaddr);
  mp_S_AXI_transactor->AWREADY(s_axi_awready);
  mp_S_AXI_transactor->AWVALID(s_axi_awvalid);
  mp_S_AXI_transactor->BREADY(s_axi_bready);
  mp_S_AXI_transactor->BRESP(s_axi_bresp);
  mp_S_AXI_transactor->BVALID(s_axi_bvalid);
  mp_S_AXI_transactor->RDATA(s_axi_rdata);
  mp_S_AXI_transactor->RREADY(s_axi_rready);
  mp_S_AXI_transactor->RRESP(s_axi_rresp);
  mp_S_AXI_transactor->RVALID(s_axi_rvalid);
  mp_S_AXI_transactor->WDATA(s_axi_wdata);
  mp_S_AXI_transactor->WREADY(s_axi_wready);
  mp_S_AXI_transactor->WSTRB(s_axi_wstrb);
  mp_S_AXI_transactor->WVALID(s_axi_wvalid);
  mp_S_AXI_transactor->CLK(mon_clk);
  mp_S_AXI_transactor->RST(mon_resetn);
  // configure MON_M_AXI_transactor
    xsc::common_cpp::properties MON_M_AXI_transactor_param_props;
    MON_M_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    MON_M_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    MON_M_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    MON_M_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
    MON_M_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_PROT", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    MON_M_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    MON_M_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    MON_M_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    MON_M_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    MON_M_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    MON_M_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    MON_M_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    MON_M_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    MON_M_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    MON_M_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    MON_M_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    MON_M_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    MON_M_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_MON_M_AXI_transactor = new xtlm::xaximm_monitor_t<512,64,1,1,1,1,1,1>("MON_M_AXI_transactor", MON_M_AXI_transactor_param_props);
  mp_MON_M_AXI_transactor->ARADDR(mon_ARADDR);
  mp_MON_M_AXI_transactor->ARBURST(mon_ARBURST);
  mp_MON_M_AXI_transactor->ARID(mon_ARID);
  mp_MON_M_AXI_transactor->ARLEN(mon_ARLEN);
  mp_MON_M_AXI_transactor->ARREADY(mon_ARREADY);
  mp_MON_M_AXI_transactor->ARSIZE(mon_ARSIZE);
  mp_MON_M_AXI_transactor->ARVALID(mon_ARVALID);
  mp_MON_M_AXI_transactor->AWADDR(mon_AWADDR);
  mp_MON_M_AXI_transactor->AWBURST(mon_AWBURST);
  mp_MON_M_AXI_transactor->AWID(mon_AWID);
  mp_MON_M_AXI_transactor->AWLEN(mon_AWLEN);
  mp_MON_M_AXI_transactor->AWREADY(mon_AWREADY);
  mp_MON_M_AXI_transactor->AWSIZE(mon_AWSIZE);
  mp_MON_M_AXI_transactor->AWVALID(mon_AWVALID);
  mp_MON_M_AXI_transactor->BID(mon_BID);
  mp_MON_M_AXI_transactor->BREADY(mon_BREADY);
  mp_MON_M_AXI_transactor->BRESP(mon_BRESP);
  mp_MON_M_AXI_transactor->BVALID(mon_BVALID);
  mp_MON_M_AXI_transactor->RDATA(mon_RDATA);
  mp_MON_M_AXI_transactor->RID(mon_RID);
  mp_MON_M_AXI_transactor->RLAST(mon_RLAST);
  mp_MON_M_AXI_transactor->RREADY(mon_RREADY);
  mp_MON_M_AXI_transactor->RRESP(mon_RRESP);
  mp_MON_M_AXI_transactor->RVALID(mon_RVALID);
  mp_MON_M_AXI_transactor->WDATA(mon_WDATA);
  mp_MON_M_AXI_transactor->WLAST(mon_WLAST);
  mp_MON_M_AXI_transactor->WREADY(mon_WREADY);
  mp_MON_M_AXI_transactor->WSTRB(mon_WSTRB);
  mp_MON_M_AXI_transactor->WVALID(mon_WVALID);
  mp_MON_M_AXI_transactor->CLK(mon_clk);
  mp_MON_M_AXI_transactor->RST(mon_resetn);
  // configure TRACE_OUT_0_transactor
    xsc::common_cpp::properties TRACE_OUT_0_transactor_param_props;
    TRACE_OUT_0_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_OUT_0_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_OUT_0_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_OUT_0_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_OUT_0_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_OUT_0_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_OUT_0_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_OUT_0_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_OUT_0_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_OUT_0_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_OUT_0_transactor = new xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>("TRACE_OUT_0_transactor", TRACE_OUT_0_transactor_param_props);
  mp_TRACE_OUT_0_transactor->TDATA(m_axis_wr_tdata);
  mp_TRACE_OUT_0_transactor->TDEST(m_axis_wr_tdest);
  mp_TRACE_OUT_0_transactor->TID(m_axis_wr_tid);
  mp_TRACE_OUT_0_transactor->TLAST(m_axis_wr_tlast);
  mp_TRACE_OUT_0_transactor->TREADY(m_axis_wr_tready);
  mp_TRACE_OUT_0_transactor->TVALID(m_axis_wr_tvalid);
  mp_TRACE_OUT_0_transactor->CLK(trace_clk);
  mp_TRACE_OUT_0_transactor->RST(trace_rst);
  // configure TRACE_OUT_1_transactor
    xsc::common_cpp::properties TRACE_OUT_1_transactor_param_props;
    TRACE_OUT_1_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_OUT_1_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_OUT_1_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_OUT_1_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_OUT_1_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_OUT_1_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_OUT_1_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_OUT_1_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_OUT_1_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_OUT_1_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_OUT_1_transactor = new xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>("TRACE_OUT_1_transactor", TRACE_OUT_1_transactor_param_props);
  mp_TRACE_OUT_1_transactor->TDATA(m_axis_rd_tdata);
  mp_TRACE_OUT_1_transactor->TDEST(m_axis_rd_tdest);
  mp_TRACE_OUT_1_transactor->TID(m_axis_rd_tid);
  mp_TRACE_OUT_1_transactor->TLAST(m_axis_rd_tlast);
  mp_TRACE_OUT_1_transactor->TREADY(m_axis_rd_tready);
  mp_TRACE_OUT_1_transactor->TVALID(m_axis_rd_tvalid);
  mp_TRACE_OUT_1_transactor->CLK(trace_clk);
  mp_TRACE_OUT_1_transactor->RST(trace_rst);
  // configure MON_S_AXI_transactor
    xsc::common_cpp::properties MON_S_AXI_transactor_param_props;
    MON_S_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    MON_S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    MON_S_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "8");
    MON_S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    MON_S_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    MON_S_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    MON_S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    MON_S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    MON_S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    MON_S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    MON_S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    MON_S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    MON_S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    MON_S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    MON_S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    MON_S_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    MON_S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    MON_S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    MON_S_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    MON_S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_MON_S_AXI_transactor = new xtlm::xaximm_monitor_t<32,8,1,1,1,1,1,1>("MON_S_AXI_transactor", MON_S_AXI_transactor_param_props);
  mp_MON_S_AXI_transactor->ARADDR(s_axi_araddr_mon);
  mp_MON_S_AXI_transactor->ARPROT(s_axi_arprot_mon);
  mp_MON_S_AXI_transactor->ARREADY(s_axi_arready_mon);
  mp_MON_S_AXI_transactor->ARVALID(s_axi_arvalid_mon);
  mp_MON_S_AXI_transactor->AWADDR(s_axi_awaddr_mon);
  mp_MON_S_AXI_transactor->AWPROT(s_axi_awprot_mon);
  mp_MON_S_AXI_transactor->AWREADY(s_axi_awready_mon);
  mp_MON_S_AXI_transactor->AWVALID(s_axi_awvalid_mon);
  mp_MON_S_AXI_transactor->BREADY(s_axi_bready_mon);
  mp_MON_S_AXI_transactor->BRESP(s_axi_bresp_mon);
  mp_MON_S_AXI_transactor->BVALID(s_axi_bvalid_mon);
  mp_MON_S_AXI_transactor->RDATA(s_axi_rdata_mon);
  mp_MON_S_AXI_transactor->RREADY(s_axi_rready_mon);
  mp_MON_S_AXI_transactor->RRESP(s_axi_rresp_mon);
  mp_MON_S_AXI_transactor->RVALID(s_axi_rvalid_mon);
  mp_MON_S_AXI_transactor->WDATA(s_axi_wdata_mon);
  mp_MON_S_AXI_transactor->WREADY(s_axi_wready_mon);
  mp_MON_S_AXI_transactor->WSTRB(s_axi_wstrb_mon);
  mp_MON_S_AXI_transactor->WVALID(s_axi_wvalid_mon);
  mp_MON_S_AXI_transactor->CLK(mon_clk);
  mp_MON_S_AXI_transactor->RST(mon_resetn);

  // initialize transactors stubs
  S_AXI_transactor_target_wr_socket_stub = nullptr;
  S_AXI_transactor_target_rd_socket_stub = nullptr;
  TRACE_OUT_0_transactor_initiator_socket_stub = nullptr;
  TRACE_OUT_1_transactor_initiator_socket_stub = nullptr;

}

void pfm_dynamic_dpa_mon0_0::before_end_of_elaboration()
{
  // configure 'S_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "S_AXI_TLM_MODE") != 1)
  {
    mp_impl->axilite_rd_socket->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_impl->axilite_wr_socket->bind(*(mp_S_AXI_transactor->wr_socket));
  
  }
  else
  {
    S_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXI_transactor_target_wr_socket_stub->bind(*(mp_S_AXI_transactor->wr_socket));
    S_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXI_transactor_target_rd_socket_stub->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_S_AXI_transactor->disable_transactor();
  }

  // configure 'MON_M_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "MON_M_AXI_TLM_MODE") != 1)
  {
    mp_impl->mon_rd_socket->bind(*(mp_MON_M_AXI_transactor->rd_socket));
    mp_impl->mon_wr_socket->bind(*(mp_MON_M_AXI_transactor->wr_socket));
  
  }

  // configure 'TRACE_OUT_0' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "TRACE_OUT_0_TLM_MODE") != 1)
  {
    mp_impl->wr_trace_socket->bind(*(mp_TRACE_OUT_0_transactor->socket));
  
  }
  else
  {
    TRACE_OUT_0_transactor_initiator_socket_stub = new xtlm::xtlm_axis_initiator_stub("socket",0);
    TRACE_OUT_0_transactor_initiator_socket_stub->bind(*(mp_TRACE_OUT_0_transactor->socket));
    mp_TRACE_OUT_0_transactor->disable_transactor();
  }

  // configure 'TRACE_OUT_1' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "TRACE_OUT_1_TLM_MODE") != 1)
  {
    mp_impl->rd_trace_socket->bind(*(mp_TRACE_OUT_1_transactor->socket));
  
  }
  else
  {
    TRACE_OUT_1_transactor_initiator_socket_stub = new xtlm::xtlm_axis_initiator_stub("socket",0);
    TRACE_OUT_1_transactor_initiator_socket_stub->bind(*(mp_TRACE_OUT_1_transactor->socket));
    mp_TRACE_OUT_1_transactor->disable_transactor();
  }

  // configure 'MON_S_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "MON_S_AXI_TLM_MODE") != 1)
  {
    mp_impl->mon_saxi_rd_socket->bind(*(mp_MON_S_AXI_transactor->rd_socket));
    mp_impl->mon_saxi_wr_socket->bind(*(mp_MON_S_AXI_transactor->wr_socket));
  
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
pfm_dynamic_dpa_mon0_0::pfm_dynamic_dpa_mon0_0(const sc_core::sc_module_name& nm) : pfm_dynamic_dpa_mon0_0_sc(nm), mon_clk("mon_clk"), mon_resetn("mon_resetn"), trace_clk("trace_clk"), trace_rst("trace_rst"), s_axi_awaddr("s_axi_awaddr"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_bresp("s_axi_bresp"), s_axi_araddr("s_axi_araddr"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), mon_AWVALID("mon_AWVALID"), mon_AWREADY("mon_AWREADY"), mon_AWADDR("mon_AWADDR"), mon_AWID("mon_AWID"), mon_AWLEN("mon_AWLEN"), mon_AWSIZE("mon_AWSIZE"), mon_AWBURST("mon_AWBURST"), mon_WVALID("mon_WVALID"), mon_WREADY("mon_WREADY"), mon_WDATA("mon_WDATA"), mon_WSTRB("mon_WSTRB"), mon_WLAST("mon_WLAST"), mon_ARVALID("mon_ARVALID"), mon_ARREADY("mon_ARREADY"), mon_ARADDR("mon_ARADDR"), mon_ARID("mon_ARID"), mon_ARLEN("mon_ARLEN"), mon_ARSIZE("mon_ARSIZE"), mon_ARBURST("mon_ARBURST"), mon_RVALID("mon_RVALID"), mon_RREADY("mon_RREADY"), mon_RDATA("mon_RDATA"), mon_RLAST("mon_RLAST"), mon_RID("mon_RID"), mon_RRESP("mon_RRESP"), mon_BVALID("mon_BVALID"), mon_BREADY("mon_BREADY"), mon_BRESP("mon_BRESP"), mon_BID("mon_BID"), m_axis_rd_tready("m_axis_rd_tready"), m_axis_rd_tdata("m_axis_rd_tdata"), m_axis_rd_tlast("m_axis_rd_tlast"), m_axis_rd_tid("m_axis_rd_tid"), m_axis_rd_tdest("m_axis_rd_tdest"), m_axis_wr_tready("m_axis_wr_tready"), m_axis_wr_tdata("m_axis_wr_tdata"), m_axis_wr_tlast("m_axis_wr_tlast"), m_axis_wr_tid("m_axis_wr_tid"), m_axis_wr_tdest("m_axis_wr_tdest"), m_axis_wr_tvalid("m_axis_wr_tvalid"), m_axis_rd_tvalid("m_axis_rd_tvalid"), s_axi_awaddr_mon("s_axi_awaddr_mon"), s_axi_awprot_mon("s_axi_awprot_mon"), s_axi_awvalid_mon("s_axi_awvalid_mon"), s_axi_awready_mon("s_axi_awready_mon"), s_axi_wdata_mon("s_axi_wdata_mon"), s_axi_wstrb_mon("s_axi_wstrb_mon"), s_axi_wvalid_mon("s_axi_wvalid_mon"), s_axi_wready_mon("s_axi_wready_mon"), s_axi_bresp_mon("s_axi_bresp_mon"), s_axi_bvalid_mon("s_axi_bvalid_mon"), s_axi_bready_mon("s_axi_bready_mon"), s_axi_araddr_mon("s_axi_araddr_mon"), s_axi_arprot_mon("s_axi_arprot_mon"), s_axi_arvalid_mon("s_axi_arvalid_mon"), s_axi_arready_mon("s_axi_arready_mon"), s_axi_rdata_mon("s_axi_rdata_mon"), s_axi_rresp_mon("s_axi_rresp_mon"), s_axi_rvalid_mon("s_axi_rvalid_mon"), s_axi_rready_mon("s_axi_rready_mon")
{

  // initialize pins
  mp_impl->mon_clk(mon_clk);
  mp_impl->mon_resetn(mon_resetn);
  mp_impl->trace_clk(trace_clk);
  mp_impl->trace_rst(trace_rst);

  // initialize transactors
  mp_S_AXI_transactor = NULL;
  mp_MON_M_AXI_transactor = NULL;
  mp_TRACE_OUT_0_transactor = NULL;
  mp_TRACE_OUT_1_transactor = NULL;
  mp_MON_S_AXI_transactor = NULL;

  // initialize socket stubs

}

void pfm_dynamic_dpa_mon0_0::before_end_of_elaboration()
{
  // configure 'S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXI' transactor parameters
    xsc::common_cpp::properties S_AXI_transactor_param_props;
    S_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXI_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXI_transactor", S_AXI_transactor_param_props);

    // S_AXI' transactor ports

    mp_S_AXI_transactor->ARADDR(s_axi_araddr);
    mp_S_AXI_transactor->ARREADY(s_axi_arready);
    mp_S_AXI_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXI_transactor->AWADDR(s_axi_awaddr);
    mp_S_AXI_transactor->AWREADY(s_axi_awready);
    mp_S_AXI_transactor->AWVALID(s_axi_awvalid);
    mp_S_AXI_transactor->BREADY(s_axi_bready);
    mp_S_AXI_transactor->BRESP(s_axi_bresp);
    mp_S_AXI_transactor->BVALID(s_axi_bvalid);
    mp_S_AXI_transactor->RDATA(s_axi_rdata);
    mp_S_AXI_transactor->RREADY(s_axi_rready);
    mp_S_AXI_transactor->RRESP(s_axi_rresp);
    mp_S_AXI_transactor->RVALID(s_axi_rvalid);
    mp_S_AXI_transactor->WDATA(s_axi_wdata);
    mp_S_AXI_transactor->WREADY(s_axi_wready);
    mp_S_AXI_transactor->WSTRB(s_axi_wstrb);
    mp_S_AXI_transactor->WVALID(s_axi_wvalid);
    mp_S_AXI_transactor->CLK(mon_clk);
    mp_S_AXI_transactor->RST(mon_resetn);

    // S_AXI' transactor sockets

    mp_impl->axilite_rd_socket->bind(*(mp_S_AXI_transactor->rd_socket));
    mp_impl->axilite_wr_socket->bind(*(mp_S_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'MON_M_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "MON_M_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'MON_M_AXI' transactor parameters
    xsc::common_cpp::properties MON_M_AXI_transactor_param_props;
    MON_M_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    MON_M_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    MON_M_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    MON_M_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
    MON_M_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_PROT", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    MON_M_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    MON_M_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    MON_M_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    MON_M_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    MON_M_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    MON_M_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    MON_M_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    MON_M_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    MON_M_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    MON_M_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    MON_M_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    MON_M_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    MON_M_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    MON_M_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    MON_M_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_MON_M_AXI_transactor = new xtlm::xaximm_monitor_t<512,64,1,1,1,1,1,1>("MON_M_AXI_transactor", MON_M_AXI_transactor_param_props);

    // MON_M_AXI' transactor ports

    mp_MON_M_AXI_transactor->ARADDR(mon_ARADDR);
    mp_MON_M_AXI_transactor->ARBURST(mon_ARBURST);
    mp_MON_M_AXI_transactor->ARID(mon_ARID);
    mp_MON_M_AXI_transactor->ARLEN(mon_ARLEN);
    mp_MON_M_AXI_transactor->ARREADY(mon_ARREADY);
    mp_MON_M_AXI_transactor->ARSIZE(mon_ARSIZE);
    mp_MON_M_AXI_transactor->ARVALID(mon_ARVALID);
    mp_MON_M_AXI_transactor->AWADDR(mon_AWADDR);
    mp_MON_M_AXI_transactor->AWBURST(mon_AWBURST);
    mp_MON_M_AXI_transactor->AWID(mon_AWID);
    mp_MON_M_AXI_transactor->AWLEN(mon_AWLEN);
    mp_MON_M_AXI_transactor->AWREADY(mon_AWREADY);
    mp_MON_M_AXI_transactor->AWSIZE(mon_AWSIZE);
    mp_MON_M_AXI_transactor->AWVALID(mon_AWVALID);
    mp_MON_M_AXI_transactor->BID(mon_BID);
    mp_MON_M_AXI_transactor->BREADY(mon_BREADY);
    mp_MON_M_AXI_transactor->BRESP(mon_BRESP);
    mp_MON_M_AXI_transactor->BVALID(mon_BVALID);
    mp_MON_M_AXI_transactor->RDATA(mon_RDATA);
    mp_MON_M_AXI_transactor->RID(mon_RID);
    mp_MON_M_AXI_transactor->RLAST(mon_RLAST);
    mp_MON_M_AXI_transactor->RREADY(mon_RREADY);
    mp_MON_M_AXI_transactor->RRESP(mon_RRESP);
    mp_MON_M_AXI_transactor->RVALID(mon_RVALID);
    mp_MON_M_AXI_transactor->WDATA(mon_WDATA);
    mp_MON_M_AXI_transactor->WLAST(mon_WLAST);
    mp_MON_M_AXI_transactor->WREADY(mon_WREADY);
    mp_MON_M_AXI_transactor->WSTRB(mon_WSTRB);
    mp_MON_M_AXI_transactor->WVALID(mon_WVALID);
    mp_MON_M_AXI_transactor->CLK(mon_clk);
    mp_MON_M_AXI_transactor->RST(mon_resetn);

    // MON_M_AXI' transactor sockets

    mp_impl->mon_rd_socket->bind(*(mp_MON_M_AXI_transactor->rd_socket));
    mp_impl->mon_wr_socket->bind(*(mp_MON_M_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'TRACE_OUT_0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "TRACE_OUT_0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_OUT_0' transactor parameters
    xsc::common_cpp::properties TRACE_OUT_0_transactor_param_props;
    TRACE_OUT_0_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_OUT_0_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_OUT_0_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_OUT_0_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_OUT_0_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_OUT_0_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_OUT_0_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_OUT_0_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_OUT_0_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_OUT_0_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_OUT_0_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_OUT_0_transactor = new xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>("TRACE_OUT_0_transactor", TRACE_OUT_0_transactor_param_props);

    // TRACE_OUT_0' transactor ports

    mp_TRACE_OUT_0_transactor->TDATA(m_axis_wr_tdata);
    mp_TRACE_OUT_0_transactor->TDEST(m_axis_wr_tdest);
    mp_TRACE_OUT_0_transactor->TID(m_axis_wr_tid);
    mp_TRACE_OUT_0_transactor->TLAST(m_axis_wr_tlast);
    mp_TRACE_OUT_0_transactor->TREADY(m_axis_wr_tready);
    mp_TRACE_OUT_0_transactor->TVALID(m_axis_wr_tvalid);
    mp_TRACE_OUT_0_transactor->CLK(trace_clk);
    mp_TRACE_OUT_0_transactor->RST(trace_rst);

    // TRACE_OUT_0' transactor sockets

    mp_impl->wr_trace_socket->bind(*(mp_TRACE_OUT_0_transactor->socket));
  }
  else
  {
  }

  // configure 'TRACE_OUT_1' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "TRACE_OUT_1_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_OUT_1' transactor parameters
    xsc::common_cpp::properties TRACE_OUT_1_transactor_param_props;
    TRACE_OUT_1_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_OUT_1_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_OUT_1_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_OUT_1_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_OUT_1_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_OUT_1_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_OUT_1_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_OUT_1_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_OUT_1_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_OUT_1_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_OUT_1_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_OUT_1_transactor = new xtlm::xaxis_xtlm2pin_t<8,1,8,8,1,1>("TRACE_OUT_1_transactor", TRACE_OUT_1_transactor_param_props);

    // TRACE_OUT_1' transactor ports

    mp_TRACE_OUT_1_transactor->TDATA(m_axis_rd_tdata);
    mp_TRACE_OUT_1_transactor->TDEST(m_axis_rd_tdest);
    mp_TRACE_OUT_1_transactor->TID(m_axis_rd_tid);
    mp_TRACE_OUT_1_transactor->TLAST(m_axis_rd_tlast);
    mp_TRACE_OUT_1_transactor->TREADY(m_axis_rd_tready);
    mp_TRACE_OUT_1_transactor->TVALID(m_axis_rd_tvalid);
    mp_TRACE_OUT_1_transactor->CLK(trace_clk);
    mp_TRACE_OUT_1_transactor->RST(trace_rst);

    // TRACE_OUT_1' transactor sockets

    mp_impl->rd_trace_socket->bind(*(mp_TRACE_OUT_1_transactor->socket));
  }
  else
  {
  }

  // configure 'MON_S_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_mon0_0", "MON_S_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'MON_S_AXI' transactor parameters
    xsc::common_cpp::properties MON_S_AXI_transactor_param_props;
    MON_S_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    MON_S_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    MON_S_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("ADDR_WIDTH", "8");
    MON_S_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    MON_S_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    MON_S_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    MON_S_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    MON_S_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    MON_S_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    MON_S_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    MON_S_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    MON_S_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    MON_S_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    MON_S_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    MON_S_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_SIZE", "0");
    MON_S_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    MON_S_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    MON_S_AXI_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    MON_S_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    MON_S_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    MON_S_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_MON_S_AXI_transactor = new xtlm::xaximm_monitor_t<32,8,1,1,1,1,1,1>("MON_S_AXI_transactor", MON_S_AXI_transactor_param_props);

    // MON_S_AXI' transactor ports

    mp_MON_S_AXI_transactor->ARADDR(s_axi_araddr_mon);
    mp_MON_S_AXI_transactor->ARPROT(s_axi_arprot_mon);
    mp_MON_S_AXI_transactor->ARREADY(s_axi_arready_mon);
    mp_MON_S_AXI_transactor->ARVALID(s_axi_arvalid_mon);
    mp_MON_S_AXI_transactor->AWADDR(s_axi_awaddr_mon);
    mp_MON_S_AXI_transactor->AWPROT(s_axi_awprot_mon);
    mp_MON_S_AXI_transactor->AWREADY(s_axi_awready_mon);
    mp_MON_S_AXI_transactor->AWVALID(s_axi_awvalid_mon);
    mp_MON_S_AXI_transactor->BREADY(s_axi_bready_mon);
    mp_MON_S_AXI_transactor->BRESP(s_axi_bresp_mon);
    mp_MON_S_AXI_transactor->BVALID(s_axi_bvalid_mon);
    mp_MON_S_AXI_transactor->RDATA(s_axi_rdata_mon);
    mp_MON_S_AXI_transactor->RREADY(s_axi_rready_mon);
    mp_MON_S_AXI_transactor->RRESP(s_axi_rresp_mon);
    mp_MON_S_AXI_transactor->RVALID(s_axi_rvalid_mon);
    mp_MON_S_AXI_transactor->WDATA(s_axi_wdata_mon);
    mp_MON_S_AXI_transactor->WREADY(s_axi_wready_mon);
    mp_MON_S_AXI_transactor->WSTRB(s_axi_wstrb_mon);
    mp_MON_S_AXI_transactor->WVALID(s_axi_wvalid_mon);
    mp_MON_S_AXI_transactor->CLK(mon_clk);
    mp_MON_S_AXI_transactor->RST(mon_resetn);

    // MON_S_AXI' transactor sockets

    mp_impl->mon_saxi_rd_socket->bind(*(mp_MON_S_AXI_transactor->rd_socket));
    mp_impl->mon_saxi_wr_socket->bind(*(mp_MON_S_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // MTI_SYSTEMC




pfm_dynamic_dpa_mon0_0::~pfm_dynamic_dpa_mon0_0()
{
  delete mp_S_AXI_transactor;

  delete mp_MON_M_AXI_transactor;

  delete mp_TRACE_OUT_0_transactor;

  delete mp_TRACE_OUT_1_transactor;

  delete mp_MON_S_AXI_transactor;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(pfm_dynamic_dpa_mon0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(pfm_dynamic_dpa_mon0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(pfm_dynamic_dpa_mon0_0);
SC_REGISTER_BV(512);
#endif

