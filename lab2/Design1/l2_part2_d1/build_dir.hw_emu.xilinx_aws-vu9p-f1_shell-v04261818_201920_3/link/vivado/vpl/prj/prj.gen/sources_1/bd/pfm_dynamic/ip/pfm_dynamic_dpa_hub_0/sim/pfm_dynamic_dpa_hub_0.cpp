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


#include "pfm_dynamic_dpa_hub_0_sc.h"

#include "pfm_dynamic_dpa_hub_0.h"

#include "emulation_profiler_core.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
pfm_dynamic_dpa_hub_0::pfm_dynamic_dpa_hub_0(const sc_core::sc_module_name& nm) : pfm_dynamic_dpa_hub_0_sc(nm), s_aximm_clk("s_aximm_clk"), s_aximm_aresetn("s_aximm_aresetn"), trace_clk("trace_clk"), trace_aresetn("trace_aresetn"), axilite_clk("axilite_clk"), axilite_aresetn("axilite_aresetn"), trace_tready0("trace_tready0"), trace_tdata0("trace_tdata0"), trace_tlast0("trace_tlast0"), trace_tid0("trace_tid0"), trace_tdest0("trace_tdest0"), trace_tvalid0("trace_tvalid0"), trace_tready1("trace_tready1"), trace_tdata1("trace_tdata1"), trace_tlast1("trace_tlast1"), trace_tid1("trace_tid1"), trace_tdest1("trace_tdest1"), trace_tvalid1("trace_tvalid1"), s_axi_awaddr("s_axi_awaddr"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_bresp("s_axi_bresp"), s_axi_araddr("s_axi_araddr"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), s_axihub_awaddr("s_axihub_awaddr"), s_axihub_awvalid("s_axihub_awvalid"), s_axihub_awready("s_axihub_awready"), s_axihub_wdata("s_axihub_wdata"), s_axihub_wstrb("s_axihub_wstrb"), s_axihub_wvalid("s_axihub_wvalid"), s_axihub_wready("s_axihub_wready"), s_axihub_bvalid("s_axihub_bvalid"), s_axihub_bready("s_axihub_bready"), s_axihub_bresp("s_axihub_bresp"), s_axihub_araddr("s_axihub_araddr"), s_axihub_arvalid("s_axihub_arvalid"), s_axihub_arready("s_axihub_arready"), s_axihub_rdata("s_axihub_rdata"), s_axihub_rresp("s_axihub_rresp"), s_axihub_rvalid("s_axihub_rvalid"), s_axihub_rready("s_axihub_rready"), s_aximm_awaddr("s_aximm_awaddr"), s_aximm_awvalid("s_aximm_awvalid"), s_aximm_awready("s_aximm_awready"), s_aximm_awlen("s_aximm_awlen"), s_aximm_awsize("s_aximm_awsize"), s_aximm_awburst("s_aximm_awburst"), s_aximm_awid("s_aximm_awid"), s_aximm_wdata("s_aximm_wdata"), s_aximm_wstrb("s_aximm_wstrb"), s_aximm_wvalid("s_aximm_wvalid"), s_aximm_wready("s_aximm_wready"), s_aximm_bvalid("s_aximm_bvalid"), s_aximm_bready("s_aximm_bready"), s_aximm_wlast("s_aximm_wlast"), s_aximm_rlast("s_aximm_rlast"), s_aximm_bresp("s_aximm_bresp"), s_aximm_bid("s_aximm_bid"), s_aximm_araddr("s_aximm_araddr"), s_aximm_arvalid("s_aximm_arvalid"), s_aximm_arready("s_aximm_arready"), s_aximm_arlen("s_aximm_arlen"), s_aximm_arsize("s_aximm_arsize"), s_aximm_arburst("s_aximm_arburst"), s_aximm_arid("s_aximm_arid"), s_aximm_rdata("s_aximm_rdata"), s_aximm_rid("s_aximm_rid"), s_aximm_rresp("s_aximm_rresp"), s_aximm_rvalid("s_aximm_rvalid"), s_aximm_rready("s_aximm_rready")
{

  // initialize pins
  mp_impl->s_aximm_clk(s_aximm_clk);
  mp_impl->s_aximm_aresetn(s_aximm_aresetn);
  mp_impl->trace_clk(trace_clk);
  mp_impl->trace_aresetn(trace_aresetn);
  mp_impl->axilite_clk(axilite_clk);
  mp_impl->axilite_aresetn(axilite_aresetn);

  // initialize transactors
  mp_S_AXIMM_transactor = NULL;
  mp_S_AXIFIFO_transactor = NULL;
  mp_S_AXIHUB_transactor = NULL;
  mp_TRACE_IN_0_transactor = NULL;
  mp_TRACE_IN_1_transactor = NULL;

  // initialize socket stubs

}

void pfm_dynamic_dpa_hub_0::before_end_of_elaboration()
{
  // configure 'S_AXIMM' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "S_AXIMM_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIMM' transactor parameters
    xsc::common_cpp::properties S_AXIMM_transactor_param_props;
    S_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    S_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIMM_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_dma_pcie_aclk");
    S_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIMM_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,1,1,1,1,1,1>("S_AXIMM_transactor", S_AXIMM_transactor_param_props);

    // S_AXIMM' transactor ports

    mp_S_AXIMM_transactor->ARADDR(s_aximm_araddr);
    mp_S_AXIMM_transactor->ARBURST(s_aximm_arburst);
    mp_S_AXIMM_transactor->ARID(s_aximm_arid);
    mp_S_AXIMM_transactor->ARLEN(s_aximm_arlen);
    mp_S_AXIMM_transactor->ARREADY(s_aximm_arready);
    mp_S_AXIMM_transactor->ARSIZE(s_aximm_arsize);
    mp_S_AXIMM_transactor->ARVALID(s_aximm_arvalid);
    mp_S_AXIMM_transactor->AWADDR(s_aximm_awaddr);
    mp_S_AXIMM_transactor->AWBURST(s_aximm_awburst);
    mp_S_AXIMM_transactor->AWID(s_aximm_awid);
    mp_S_AXIMM_transactor->AWLEN(s_aximm_awlen);
    mp_S_AXIMM_transactor->AWREADY(s_aximm_awready);
    mp_S_AXIMM_transactor->AWSIZE(s_aximm_awsize);
    mp_S_AXIMM_transactor->AWVALID(s_aximm_awvalid);
    mp_S_AXIMM_transactor->BID(s_aximm_bid);
    mp_S_AXIMM_transactor->BREADY(s_aximm_bready);
    mp_S_AXIMM_transactor->BRESP(s_aximm_bresp);
    mp_S_AXIMM_transactor->BVALID(s_aximm_bvalid);
    mp_S_AXIMM_transactor->RDATA(s_aximm_rdata);
    mp_S_AXIMM_transactor->RID(s_aximm_rid);
    mp_S_AXIMM_transactor->RLAST(s_aximm_rlast);
    mp_S_AXIMM_transactor->RREADY(s_aximm_rready);
    mp_S_AXIMM_transactor->RRESP(s_aximm_rresp);
    mp_S_AXIMM_transactor->RVALID(s_aximm_rvalid);
    mp_S_AXIMM_transactor->WDATA(s_aximm_wdata);
    mp_S_AXIMM_transactor->WLAST(s_aximm_wlast);
    mp_S_AXIMM_transactor->WREADY(s_aximm_wready);
    mp_S_AXIMM_transactor->WSTRB(s_aximm_wstrb);
    mp_S_AXIMM_transactor->WVALID(s_aximm_wvalid);
    mp_S_AXIMM_transactor->CLK(s_aximm_clk);
    mp_S_AXIMM_transactor->RST(s_aximm_aresetn);

    // S_AXIMM' transactor sockets

    mp_impl->s_aximm_rd_socket->bind(*(mp_S_AXIMM_transactor->rd_socket));
    mp_impl->s_aximm_wr_socket->bind(*(mp_S_AXIMM_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXIFIFO' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "S_AXIFIFO_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIFIFO' transactor parameters
    xsc::common_cpp::properties S_AXIFIFO_transactor_param_props;
    S_AXIFIFO_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXIFIFO_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXIFIFO_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXIFIFO_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIFIFO_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIFIFO_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIFIFO_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXIFIFO_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIFIFO_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIFIFO_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXIFIFO_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIFIFO_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIFIFO_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIFIFO_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIFIFO_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIFIFO_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXIFIFO_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIFIFO_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXIFIFO_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIFIFO_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXIFIFO_transactor", S_AXIFIFO_transactor_param_props);

    // S_AXIFIFO' transactor ports

    mp_S_AXIFIFO_transactor->ARADDR(s_axi_araddr);
    mp_S_AXIFIFO_transactor->ARREADY(s_axi_arready);
    mp_S_AXIFIFO_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXIFIFO_transactor->AWADDR(s_axi_awaddr);
    mp_S_AXIFIFO_transactor->AWREADY(s_axi_awready);
    mp_S_AXIFIFO_transactor->AWVALID(s_axi_awvalid);
    mp_S_AXIFIFO_transactor->BREADY(s_axi_bready);
    mp_S_AXIFIFO_transactor->BRESP(s_axi_bresp);
    mp_S_AXIFIFO_transactor->BVALID(s_axi_bvalid);
    mp_S_AXIFIFO_transactor->RDATA(s_axi_rdata);
    mp_S_AXIFIFO_transactor->RREADY(s_axi_rready);
    mp_S_AXIFIFO_transactor->RRESP(s_axi_rresp);
    mp_S_AXIFIFO_transactor->RVALID(s_axi_rvalid);
    mp_S_AXIFIFO_transactor->WDATA(s_axi_wdata);
    mp_S_AXIFIFO_transactor->WREADY(s_axi_wready);
    mp_S_AXIFIFO_transactor->WSTRB(s_axi_wstrb);
    mp_S_AXIFIFO_transactor->WVALID(s_axi_wvalid);
    mp_S_AXIFIFO_transactor->CLK(axilite_clk);
    mp_S_AXIFIFO_transactor->RST(axilite_aresetn);

    // S_AXIFIFO' transactor sockets

    mp_impl->axilite_rd_socket->bind(*(mp_S_AXIFIFO_transactor->rd_socket));
    mp_impl->axilite_wr_socket->bind(*(mp_S_AXIFIFO_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXIHUB' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "S_AXIHUB_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIHUB' transactor parameters
    xsc::common_cpp::properties S_AXIHUB_transactor_param_props;
    S_AXIHUB_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXIHUB_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXIHUB_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXIHUB_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIHUB_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIHUB_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIHUB_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXIHUB_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIHUB_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIHUB_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXIHUB_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIHUB_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIHUB_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIHUB_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIHUB_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIHUB_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXIHUB_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIHUB_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXIHUB_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIHUB_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXIHUB_transactor", S_AXIHUB_transactor_param_props);

    // S_AXIHUB' transactor ports

    mp_S_AXIHUB_transactor->ARADDR(s_axihub_araddr);
    mp_S_AXIHUB_transactor->ARREADY(s_axihub_arready);
    mp_S_AXIHUB_transactor->ARVALID(s_axihub_arvalid);
    mp_S_AXIHUB_transactor->AWADDR(s_axihub_awaddr);
    mp_S_AXIHUB_transactor->AWREADY(s_axihub_awready);
    mp_S_AXIHUB_transactor->AWVALID(s_axihub_awvalid);
    mp_S_AXIHUB_transactor->BREADY(s_axihub_bready);
    mp_S_AXIHUB_transactor->BRESP(s_axihub_bresp);
    mp_S_AXIHUB_transactor->BVALID(s_axihub_bvalid);
    mp_S_AXIHUB_transactor->RDATA(s_axihub_rdata);
    mp_S_AXIHUB_transactor->RREADY(s_axihub_rready);
    mp_S_AXIHUB_transactor->RRESP(s_axihub_rresp);
    mp_S_AXIHUB_transactor->RVALID(s_axihub_rvalid);
    mp_S_AXIHUB_transactor->WDATA(s_axihub_wdata);
    mp_S_AXIHUB_transactor->WREADY(s_axihub_wready);
    mp_S_AXIHUB_transactor->WSTRB(s_axihub_wstrb);
    mp_S_AXIHUB_transactor->WVALID(s_axihub_wvalid);
    mp_S_AXIHUB_transactor->CLK(axilite_clk);
    mp_S_AXIHUB_transactor->RST(axilite_aresetn);

    // S_AXIHUB' transactor sockets

    mp_impl->s_axihub_rd_socket->bind(*(mp_S_AXIHUB_transactor->rd_socket));
    mp_impl->s_axihub_wr_socket->bind(*(mp_S_AXIHUB_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'TRACE_IN_0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "TRACE_IN_0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_IN_0' transactor parameters
    xsc::common_cpp::properties TRACE_IN_0_transactor_param_props;
    TRACE_IN_0_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_IN_0_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_IN_0_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_IN_0_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_IN_0_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_IN_0_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_IN_0_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_IN_0_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_IN_0_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_IN_0_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_IN_0_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_IN_0_transactor = new xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>("TRACE_IN_0_transactor", TRACE_IN_0_transactor_param_props);

    // TRACE_IN_0' transactor ports

    mp_TRACE_IN_0_transactor->TDATA(trace_tdata0);
    mp_TRACE_IN_0_transactor->TDEST(trace_tdest0);
    mp_TRACE_IN_0_transactor->TID(trace_tid0);
    mp_TRACE_IN_0_transactor->TLAST(trace_tlast0);
    mp_TRACE_IN_0_transactor->TREADY(trace_tready0);
    mp_TRACE_IN_0_transactor->TVALID(trace_tvalid0);
    mp_TRACE_IN_0_transactor->CLK(trace_clk);
    mp_TRACE_IN_0_transactor->RST(trace_aresetn);

    // TRACE_IN_0' transactor sockets

    mp_impl->trace_socket0->bind(*(mp_TRACE_IN_0_transactor->socket));
  }
  else
  {
  }

  // configure 'TRACE_IN_1' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "TRACE_IN_1_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_IN_1' transactor parameters
    xsc::common_cpp::properties TRACE_IN_1_transactor_param_props;
    TRACE_IN_1_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_IN_1_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_IN_1_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_IN_1_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_IN_1_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_IN_1_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_IN_1_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_IN_1_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_IN_1_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_IN_1_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_IN_1_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_IN_1_transactor = new xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>("TRACE_IN_1_transactor", TRACE_IN_1_transactor_param_props);

    // TRACE_IN_1' transactor ports

    mp_TRACE_IN_1_transactor->TDATA(trace_tdata1);
    mp_TRACE_IN_1_transactor->TDEST(trace_tdest1);
    mp_TRACE_IN_1_transactor->TID(trace_tid1);
    mp_TRACE_IN_1_transactor->TLAST(trace_tlast1);
    mp_TRACE_IN_1_transactor->TREADY(trace_tready1);
    mp_TRACE_IN_1_transactor->TVALID(trace_tvalid1);
    mp_TRACE_IN_1_transactor->CLK(trace_clk);
    mp_TRACE_IN_1_transactor->RST(trace_aresetn);

    // TRACE_IN_1' transactor sockets

    mp_impl->trace_socket1->bind(*(mp_TRACE_IN_1_transactor->socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
pfm_dynamic_dpa_hub_0::pfm_dynamic_dpa_hub_0(const sc_core::sc_module_name& nm) : pfm_dynamic_dpa_hub_0_sc(nm), s_aximm_clk("s_aximm_clk"), s_aximm_aresetn("s_aximm_aresetn"), trace_clk("trace_clk"), trace_aresetn("trace_aresetn"), axilite_clk("axilite_clk"), axilite_aresetn("axilite_aresetn"), trace_tready0("trace_tready0"), trace_tdata0("trace_tdata0"), trace_tlast0("trace_tlast0"), trace_tid0("trace_tid0"), trace_tdest0("trace_tdest0"), trace_tvalid0("trace_tvalid0"), trace_tready1("trace_tready1"), trace_tdata1("trace_tdata1"), trace_tlast1("trace_tlast1"), trace_tid1("trace_tid1"), trace_tdest1("trace_tdest1"), trace_tvalid1("trace_tvalid1"), s_axi_awaddr("s_axi_awaddr"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_bresp("s_axi_bresp"), s_axi_araddr("s_axi_araddr"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), s_axihub_awaddr("s_axihub_awaddr"), s_axihub_awvalid("s_axihub_awvalid"), s_axihub_awready("s_axihub_awready"), s_axihub_wdata("s_axihub_wdata"), s_axihub_wstrb("s_axihub_wstrb"), s_axihub_wvalid("s_axihub_wvalid"), s_axihub_wready("s_axihub_wready"), s_axihub_bvalid("s_axihub_bvalid"), s_axihub_bready("s_axihub_bready"), s_axihub_bresp("s_axihub_bresp"), s_axihub_araddr("s_axihub_araddr"), s_axihub_arvalid("s_axihub_arvalid"), s_axihub_arready("s_axihub_arready"), s_axihub_rdata("s_axihub_rdata"), s_axihub_rresp("s_axihub_rresp"), s_axihub_rvalid("s_axihub_rvalid"), s_axihub_rready("s_axihub_rready"), s_aximm_awaddr("s_aximm_awaddr"), s_aximm_awvalid("s_aximm_awvalid"), s_aximm_awready("s_aximm_awready"), s_aximm_awlen("s_aximm_awlen"), s_aximm_awsize("s_aximm_awsize"), s_aximm_awburst("s_aximm_awburst"), s_aximm_awid("s_aximm_awid"), s_aximm_wdata("s_aximm_wdata"), s_aximm_wstrb("s_aximm_wstrb"), s_aximm_wvalid("s_aximm_wvalid"), s_aximm_wready("s_aximm_wready"), s_aximm_bvalid("s_aximm_bvalid"), s_aximm_bready("s_aximm_bready"), s_aximm_wlast("s_aximm_wlast"), s_aximm_rlast("s_aximm_rlast"), s_aximm_bresp("s_aximm_bresp"), s_aximm_bid("s_aximm_bid"), s_aximm_araddr("s_aximm_araddr"), s_aximm_arvalid("s_aximm_arvalid"), s_aximm_arready("s_aximm_arready"), s_aximm_arlen("s_aximm_arlen"), s_aximm_arsize("s_aximm_arsize"), s_aximm_arburst("s_aximm_arburst"), s_aximm_arid("s_aximm_arid"), s_aximm_rdata("s_aximm_rdata"), s_aximm_rid("s_aximm_rid"), s_aximm_rresp("s_aximm_rresp"), s_aximm_rvalid("s_aximm_rvalid"), s_aximm_rready("s_aximm_rready")
{

  // initialize pins
  mp_impl->s_aximm_clk(s_aximm_clk);
  mp_impl->s_aximm_aresetn(s_aximm_aresetn);
  mp_impl->trace_clk(trace_clk);
  mp_impl->trace_aresetn(trace_aresetn);
  mp_impl->axilite_clk(axilite_clk);
  mp_impl->axilite_aresetn(axilite_aresetn);

  // initialize transactors
  mp_S_AXIMM_transactor = NULL;
  mp_S_AXIFIFO_transactor = NULL;
  mp_S_AXIHUB_transactor = NULL;
  mp_TRACE_IN_0_transactor = NULL;
  mp_TRACE_IN_1_transactor = NULL;

  // initialize socket stubs

}

void pfm_dynamic_dpa_hub_0::before_end_of_elaboration()
{
  // configure 'S_AXIMM' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "S_AXIMM_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIMM' transactor parameters
    xsc::common_cpp::properties S_AXIMM_transactor_param_props;
    S_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    S_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIMM_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_dma_pcie_aclk");
    S_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIMM_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,1,1,1,1,1,1>("S_AXIMM_transactor", S_AXIMM_transactor_param_props);

    // S_AXIMM' transactor ports

    mp_S_AXIMM_transactor->ARADDR(s_aximm_araddr);
    mp_S_AXIMM_transactor->ARBURST(s_aximm_arburst);
    mp_S_AXIMM_transactor->ARID(s_aximm_arid);
    mp_S_AXIMM_transactor->ARLEN(s_aximm_arlen);
    mp_S_AXIMM_transactor->ARREADY(s_aximm_arready);
    mp_S_AXIMM_transactor->ARSIZE(s_aximm_arsize);
    mp_S_AXIMM_transactor->ARVALID(s_aximm_arvalid);
    mp_S_AXIMM_transactor->AWADDR(s_aximm_awaddr);
    mp_S_AXIMM_transactor->AWBURST(s_aximm_awburst);
    mp_S_AXIMM_transactor->AWID(s_aximm_awid);
    mp_S_AXIMM_transactor->AWLEN(s_aximm_awlen);
    mp_S_AXIMM_transactor->AWREADY(s_aximm_awready);
    mp_S_AXIMM_transactor->AWSIZE(s_aximm_awsize);
    mp_S_AXIMM_transactor->AWVALID(s_aximm_awvalid);
    mp_S_AXIMM_transactor->BID(s_aximm_bid);
    mp_S_AXIMM_transactor->BREADY(s_aximm_bready);
    mp_S_AXIMM_transactor->BRESP(s_aximm_bresp);
    mp_S_AXIMM_transactor->BVALID(s_aximm_bvalid);
    mp_S_AXIMM_transactor->RDATA(s_aximm_rdata);
    mp_S_AXIMM_transactor->RID(s_aximm_rid);
    mp_S_AXIMM_transactor->RLAST(s_aximm_rlast);
    mp_S_AXIMM_transactor->RREADY(s_aximm_rready);
    mp_S_AXIMM_transactor->RRESP(s_aximm_rresp);
    mp_S_AXIMM_transactor->RVALID(s_aximm_rvalid);
    mp_S_AXIMM_transactor->WDATA(s_aximm_wdata);
    mp_S_AXIMM_transactor->WLAST(s_aximm_wlast);
    mp_S_AXIMM_transactor->WREADY(s_aximm_wready);
    mp_S_AXIMM_transactor->WSTRB(s_aximm_wstrb);
    mp_S_AXIMM_transactor->WVALID(s_aximm_wvalid);
    mp_S_AXIMM_transactor->CLK(s_aximm_clk);
    mp_S_AXIMM_transactor->RST(s_aximm_aresetn);

    // S_AXIMM' transactor sockets

    mp_impl->s_aximm_rd_socket->bind(*(mp_S_AXIMM_transactor->rd_socket));
    mp_impl->s_aximm_wr_socket->bind(*(mp_S_AXIMM_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXIFIFO' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "S_AXIFIFO_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIFIFO' transactor parameters
    xsc::common_cpp::properties S_AXIFIFO_transactor_param_props;
    S_AXIFIFO_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXIFIFO_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXIFIFO_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXIFIFO_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIFIFO_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIFIFO_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIFIFO_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXIFIFO_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIFIFO_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIFIFO_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXIFIFO_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIFIFO_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIFIFO_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIFIFO_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIFIFO_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIFIFO_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXIFIFO_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIFIFO_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXIFIFO_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIFIFO_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXIFIFO_transactor", S_AXIFIFO_transactor_param_props);

    // S_AXIFIFO' transactor ports

    mp_S_AXIFIFO_transactor->ARADDR(s_axi_araddr);
    mp_S_AXIFIFO_transactor->ARREADY(s_axi_arready);
    mp_S_AXIFIFO_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXIFIFO_transactor->AWADDR(s_axi_awaddr);
    mp_S_AXIFIFO_transactor->AWREADY(s_axi_awready);
    mp_S_AXIFIFO_transactor->AWVALID(s_axi_awvalid);
    mp_S_AXIFIFO_transactor->BREADY(s_axi_bready);
    mp_S_AXIFIFO_transactor->BRESP(s_axi_bresp);
    mp_S_AXIFIFO_transactor->BVALID(s_axi_bvalid);
    mp_S_AXIFIFO_transactor->RDATA(s_axi_rdata);
    mp_S_AXIFIFO_transactor->RREADY(s_axi_rready);
    mp_S_AXIFIFO_transactor->RRESP(s_axi_rresp);
    mp_S_AXIFIFO_transactor->RVALID(s_axi_rvalid);
    mp_S_AXIFIFO_transactor->WDATA(s_axi_wdata);
    mp_S_AXIFIFO_transactor->WREADY(s_axi_wready);
    mp_S_AXIFIFO_transactor->WSTRB(s_axi_wstrb);
    mp_S_AXIFIFO_transactor->WVALID(s_axi_wvalid);
    mp_S_AXIFIFO_transactor->CLK(axilite_clk);
    mp_S_AXIFIFO_transactor->RST(axilite_aresetn);

    // S_AXIFIFO' transactor sockets

    mp_impl->axilite_rd_socket->bind(*(mp_S_AXIFIFO_transactor->rd_socket));
    mp_impl->axilite_wr_socket->bind(*(mp_S_AXIFIFO_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXIHUB' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "S_AXIHUB_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIHUB' transactor parameters
    xsc::common_cpp::properties S_AXIHUB_transactor_param_props;
    S_AXIHUB_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXIHUB_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXIHUB_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXIHUB_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIHUB_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIHUB_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIHUB_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXIHUB_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIHUB_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIHUB_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXIHUB_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIHUB_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIHUB_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIHUB_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIHUB_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIHUB_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXIHUB_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIHUB_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXIHUB_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIHUB_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXIHUB_transactor", S_AXIHUB_transactor_param_props);

    // S_AXIHUB' transactor ports

    mp_S_AXIHUB_transactor->ARADDR(s_axihub_araddr);
    mp_S_AXIHUB_transactor->ARREADY(s_axihub_arready);
    mp_S_AXIHUB_transactor->ARVALID(s_axihub_arvalid);
    mp_S_AXIHUB_transactor->AWADDR(s_axihub_awaddr);
    mp_S_AXIHUB_transactor->AWREADY(s_axihub_awready);
    mp_S_AXIHUB_transactor->AWVALID(s_axihub_awvalid);
    mp_S_AXIHUB_transactor->BREADY(s_axihub_bready);
    mp_S_AXIHUB_transactor->BRESP(s_axihub_bresp);
    mp_S_AXIHUB_transactor->BVALID(s_axihub_bvalid);
    mp_S_AXIHUB_transactor->RDATA(s_axihub_rdata);
    mp_S_AXIHUB_transactor->RREADY(s_axihub_rready);
    mp_S_AXIHUB_transactor->RRESP(s_axihub_rresp);
    mp_S_AXIHUB_transactor->RVALID(s_axihub_rvalid);
    mp_S_AXIHUB_transactor->WDATA(s_axihub_wdata);
    mp_S_AXIHUB_transactor->WREADY(s_axihub_wready);
    mp_S_AXIHUB_transactor->WSTRB(s_axihub_wstrb);
    mp_S_AXIHUB_transactor->WVALID(s_axihub_wvalid);
    mp_S_AXIHUB_transactor->CLK(axilite_clk);
    mp_S_AXIHUB_transactor->RST(axilite_aresetn);

    // S_AXIHUB' transactor sockets

    mp_impl->s_axihub_rd_socket->bind(*(mp_S_AXIHUB_transactor->rd_socket));
    mp_impl->s_axihub_wr_socket->bind(*(mp_S_AXIHUB_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'TRACE_IN_0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "TRACE_IN_0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_IN_0' transactor parameters
    xsc::common_cpp::properties TRACE_IN_0_transactor_param_props;
    TRACE_IN_0_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_IN_0_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_IN_0_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_IN_0_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_IN_0_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_IN_0_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_IN_0_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_IN_0_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_IN_0_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_IN_0_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_IN_0_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_IN_0_transactor = new xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>("TRACE_IN_0_transactor", TRACE_IN_0_transactor_param_props);

    // TRACE_IN_0' transactor ports

    mp_TRACE_IN_0_transactor->TDATA(trace_tdata0);
    mp_TRACE_IN_0_transactor->TDEST(trace_tdest0);
    mp_TRACE_IN_0_transactor->TID(trace_tid0);
    mp_TRACE_IN_0_transactor->TLAST(trace_tlast0);
    mp_TRACE_IN_0_transactor->TREADY(trace_tready0);
    mp_TRACE_IN_0_transactor->TVALID(trace_tvalid0);
    mp_TRACE_IN_0_transactor->CLK(trace_clk);
    mp_TRACE_IN_0_transactor->RST(trace_aresetn);

    // TRACE_IN_0' transactor sockets

    mp_impl->trace_socket0->bind(*(mp_TRACE_IN_0_transactor->socket));
  }
  else
  {
  }

  // configure 'TRACE_IN_1' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "TRACE_IN_1_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_IN_1' transactor parameters
    xsc::common_cpp::properties TRACE_IN_1_transactor_param_props;
    TRACE_IN_1_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_IN_1_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_IN_1_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_IN_1_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_IN_1_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_IN_1_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_IN_1_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_IN_1_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_IN_1_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_IN_1_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_IN_1_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_IN_1_transactor = new xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>("TRACE_IN_1_transactor", TRACE_IN_1_transactor_param_props);

    // TRACE_IN_1' transactor ports

    mp_TRACE_IN_1_transactor->TDATA(trace_tdata1);
    mp_TRACE_IN_1_transactor->TDEST(trace_tdest1);
    mp_TRACE_IN_1_transactor->TID(trace_tid1);
    mp_TRACE_IN_1_transactor->TLAST(trace_tlast1);
    mp_TRACE_IN_1_transactor->TREADY(trace_tready1);
    mp_TRACE_IN_1_transactor->TVALID(trace_tvalid1);
    mp_TRACE_IN_1_transactor->CLK(trace_clk);
    mp_TRACE_IN_1_transactor->RST(trace_aresetn);

    // TRACE_IN_1' transactor sockets

    mp_impl->trace_socket1->bind(*(mp_TRACE_IN_1_transactor->socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
pfm_dynamic_dpa_hub_0::pfm_dynamic_dpa_hub_0(const sc_core::sc_module_name& nm) : pfm_dynamic_dpa_hub_0_sc(nm), s_aximm_clk("s_aximm_clk"), s_aximm_aresetn("s_aximm_aresetn"), trace_clk("trace_clk"), trace_aresetn("trace_aresetn"), axilite_clk("axilite_clk"), axilite_aresetn("axilite_aresetn"), trace_tready0("trace_tready0"), trace_tdata0("trace_tdata0"), trace_tlast0("trace_tlast0"), trace_tid0("trace_tid0"), trace_tdest0("trace_tdest0"), trace_tvalid0("trace_tvalid0"), trace_tready1("trace_tready1"), trace_tdata1("trace_tdata1"), trace_tlast1("trace_tlast1"), trace_tid1("trace_tid1"), trace_tdest1("trace_tdest1"), trace_tvalid1("trace_tvalid1"), s_axi_awaddr("s_axi_awaddr"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_bresp("s_axi_bresp"), s_axi_araddr("s_axi_araddr"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), s_axihub_awaddr("s_axihub_awaddr"), s_axihub_awvalid("s_axihub_awvalid"), s_axihub_awready("s_axihub_awready"), s_axihub_wdata("s_axihub_wdata"), s_axihub_wstrb("s_axihub_wstrb"), s_axihub_wvalid("s_axihub_wvalid"), s_axihub_wready("s_axihub_wready"), s_axihub_bvalid("s_axihub_bvalid"), s_axihub_bready("s_axihub_bready"), s_axihub_bresp("s_axihub_bresp"), s_axihub_araddr("s_axihub_araddr"), s_axihub_arvalid("s_axihub_arvalid"), s_axihub_arready("s_axihub_arready"), s_axihub_rdata("s_axihub_rdata"), s_axihub_rresp("s_axihub_rresp"), s_axihub_rvalid("s_axihub_rvalid"), s_axihub_rready("s_axihub_rready"), s_aximm_awaddr("s_aximm_awaddr"), s_aximm_awvalid("s_aximm_awvalid"), s_aximm_awready("s_aximm_awready"), s_aximm_awlen("s_aximm_awlen"), s_aximm_awsize("s_aximm_awsize"), s_aximm_awburst("s_aximm_awburst"), s_aximm_awid("s_aximm_awid"), s_aximm_wdata("s_aximm_wdata"), s_aximm_wstrb("s_aximm_wstrb"), s_aximm_wvalid("s_aximm_wvalid"), s_aximm_wready("s_aximm_wready"), s_aximm_bvalid("s_aximm_bvalid"), s_aximm_bready("s_aximm_bready"), s_aximm_wlast("s_aximm_wlast"), s_aximm_rlast("s_aximm_rlast"), s_aximm_bresp("s_aximm_bresp"), s_aximm_bid("s_aximm_bid"), s_aximm_araddr("s_aximm_araddr"), s_aximm_arvalid("s_aximm_arvalid"), s_aximm_arready("s_aximm_arready"), s_aximm_arlen("s_aximm_arlen"), s_aximm_arsize("s_aximm_arsize"), s_aximm_arburst("s_aximm_arburst"), s_aximm_arid("s_aximm_arid"), s_aximm_rdata("s_aximm_rdata"), s_aximm_rid("s_aximm_rid"), s_aximm_rresp("s_aximm_rresp"), s_aximm_rvalid("s_aximm_rvalid"), s_aximm_rready("s_aximm_rready")
{

  // initialize pins
  mp_impl->s_aximm_clk(s_aximm_clk);
  mp_impl->s_aximm_aresetn(s_aximm_aresetn);
  mp_impl->trace_clk(trace_clk);
  mp_impl->trace_aresetn(trace_aresetn);
  mp_impl->axilite_clk(axilite_clk);
  mp_impl->axilite_aresetn(axilite_aresetn);

  // initialize transactors
  mp_S_AXIMM_transactor = NULL;
  mp_S_AXIFIFO_transactor = NULL;
  mp_S_AXIHUB_transactor = NULL;
  mp_TRACE_IN_0_transactor = NULL;
  mp_TRACE_IN_1_transactor = NULL;

  // initialize socket stubs

}

void pfm_dynamic_dpa_hub_0::before_end_of_elaboration()
{
  // configure 'S_AXIMM' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "S_AXIMM_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIMM' transactor parameters
    xsc::common_cpp::properties S_AXIMM_transactor_param_props;
    S_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    S_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIMM_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_dma_pcie_aclk");
    S_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIMM_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,1,1,1,1,1,1>("S_AXIMM_transactor", S_AXIMM_transactor_param_props);

    // S_AXIMM' transactor ports

    mp_S_AXIMM_transactor->ARADDR(s_aximm_araddr);
    mp_S_AXIMM_transactor->ARBURST(s_aximm_arburst);
    mp_S_AXIMM_transactor->ARID(s_aximm_arid);
    mp_S_AXIMM_transactor->ARLEN(s_aximm_arlen);
    mp_S_AXIMM_transactor->ARREADY(s_aximm_arready);
    mp_S_AXIMM_transactor->ARSIZE(s_aximm_arsize);
    mp_S_AXIMM_transactor->ARVALID(s_aximm_arvalid);
    mp_S_AXIMM_transactor->AWADDR(s_aximm_awaddr);
    mp_S_AXIMM_transactor->AWBURST(s_aximm_awburst);
    mp_S_AXIMM_transactor->AWID(s_aximm_awid);
    mp_S_AXIMM_transactor->AWLEN(s_aximm_awlen);
    mp_S_AXIMM_transactor->AWREADY(s_aximm_awready);
    mp_S_AXIMM_transactor->AWSIZE(s_aximm_awsize);
    mp_S_AXIMM_transactor->AWVALID(s_aximm_awvalid);
    mp_S_AXIMM_transactor->BID(s_aximm_bid);
    mp_S_AXIMM_transactor->BREADY(s_aximm_bready);
    mp_S_AXIMM_transactor->BRESP(s_aximm_bresp);
    mp_S_AXIMM_transactor->BVALID(s_aximm_bvalid);
    mp_S_AXIMM_transactor->RDATA(s_aximm_rdata);
    mp_S_AXIMM_transactor->RID(s_aximm_rid);
    mp_S_AXIMM_transactor->RLAST(s_aximm_rlast);
    mp_S_AXIMM_transactor->RREADY(s_aximm_rready);
    mp_S_AXIMM_transactor->RRESP(s_aximm_rresp);
    mp_S_AXIMM_transactor->RVALID(s_aximm_rvalid);
    mp_S_AXIMM_transactor->WDATA(s_aximm_wdata);
    mp_S_AXIMM_transactor->WLAST(s_aximm_wlast);
    mp_S_AXIMM_transactor->WREADY(s_aximm_wready);
    mp_S_AXIMM_transactor->WSTRB(s_aximm_wstrb);
    mp_S_AXIMM_transactor->WVALID(s_aximm_wvalid);
    mp_S_AXIMM_transactor->CLK(s_aximm_clk);
    mp_S_AXIMM_transactor->RST(s_aximm_aresetn);

    // S_AXIMM' transactor sockets

    mp_impl->s_aximm_rd_socket->bind(*(mp_S_AXIMM_transactor->rd_socket));
    mp_impl->s_aximm_wr_socket->bind(*(mp_S_AXIMM_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXIFIFO' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "S_AXIFIFO_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIFIFO' transactor parameters
    xsc::common_cpp::properties S_AXIFIFO_transactor_param_props;
    S_AXIFIFO_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXIFIFO_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXIFIFO_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXIFIFO_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIFIFO_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIFIFO_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIFIFO_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXIFIFO_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIFIFO_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIFIFO_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXIFIFO_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIFIFO_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIFIFO_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIFIFO_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIFIFO_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIFIFO_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXIFIFO_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIFIFO_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXIFIFO_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIFIFO_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXIFIFO_transactor", S_AXIFIFO_transactor_param_props);

    // S_AXIFIFO' transactor ports

    mp_S_AXIFIFO_transactor->ARADDR(s_axi_araddr);
    mp_S_AXIFIFO_transactor->ARREADY(s_axi_arready);
    mp_S_AXIFIFO_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXIFIFO_transactor->AWADDR(s_axi_awaddr);
    mp_S_AXIFIFO_transactor->AWREADY(s_axi_awready);
    mp_S_AXIFIFO_transactor->AWVALID(s_axi_awvalid);
    mp_S_AXIFIFO_transactor->BREADY(s_axi_bready);
    mp_S_AXIFIFO_transactor->BRESP(s_axi_bresp);
    mp_S_AXIFIFO_transactor->BVALID(s_axi_bvalid);
    mp_S_AXIFIFO_transactor->RDATA(s_axi_rdata);
    mp_S_AXIFIFO_transactor->RREADY(s_axi_rready);
    mp_S_AXIFIFO_transactor->RRESP(s_axi_rresp);
    mp_S_AXIFIFO_transactor->RVALID(s_axi_rvalid);
    mp_S_AXIFIFO_transactor->WDATA(s_axi_wdata);
    mp_S_AXIFIFO_transactor->WREADY(s_axi_wready);
    mp_S_AXIFIFO_transactor->WSTRB(s_axi_wstrb);
    mp_S_AXIFIFO_transactor->WVALID(s_axi_wvalid);
    mp_S_AXIFIFO_transactor->CLK(axilite_clk);
    mp_S_AXIFIFO_transactor->RST(axilite_aresetn);

    // S_AXIFIFO' transactor sockets

    mp_impl->axilite_rd_socket->bind(*(mp_S_AXIFIFO_transactor->rd_socket));
    mp_impl->axilite_wr_socket->bind(*(mp_S_AXIFIFO_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXIHUB' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "S_AXIHUB_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIHUB' transactor parameters
    xsc::common_cpp::properties S_AXIHUB_transactor_param_props;
    S_AXIHUB_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXIHUB_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXIHUB_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXIHUB_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIHUB_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIHUB_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIHUB_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXIHUB_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIHUB_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIHUB_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXIHUB_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIHUB_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIHUB_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIHUB_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIHUB_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIHUB_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXIHUB_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIHUB_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXIHUB_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIHUB_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXIHUB_transactor", S_AXIHUB_transactor_param_props);

    // S_AXIHUB' transactor ports

    mp_S_AXIHUB_transactor->ARADDR(s_axihub_araddr);
    mp_S_AXIHUB_transactor->ARREADY(s_axihub_arready);
    mp_S_AXIHUB_transactor->ARVALID(s_axihub_arvalid);
    mp_S_AXIHUB_transactor->AWADDR(s_axihub_awaddr);
    mp_S_AXIHUB_transactor->AWREADY(s_axihub_awready);
    mp_S_AXIHUB_transactor->AWVALID(s_axihub_awvalid);
    mp_S_AXIHUB_transactor->BREADY(s_axihub_bready);
    mp_S_AXIHUB_transactor->BRESP(s_axihub_bresp);
    mp_S_AXIHUB_transactor->BVALID(s_axihub_bvalid);
    mp_S_AXIHUB_transactor->RDATA(s_axihub_rdata);
    mp_S_AXIHUB_transactor->RREADY(s_axihub_rready);
    mp_S_AXIHUB_transactor->RRESP(s_axihub_rresp);
    mp_S_AXIHUB_transactor->RVALID(s_axihub_rvalid);
    mp_S_AXIHUB_transactor->WDATA(s_axihub_wdata);
    mp_S_AXIHUB_transactor->WREADY(s_axihub_wready);
    mp_S_AXIHUB_transactor->WSTRB(s_axihub_wstrb);
    mp_S_AXIHUB_transactor->WVALID(s_axihub_wvalid);
    mp_S_AXIHUB_transactor->CLK(axilite_clk);
    mp_S_AXIHUB_transactor->RST(axilite_aresetn);

    // S_AXIHUB' transactor sockets

    mp_impl->s_axihub_rd_socket->bind(*(mp_S_AXIHUB_transactor->rd_socket));
    mp_impl->s_axihub_wr_socket->bind(*(mp_S_AXIHUB_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'TRACE_IN_0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "TRACE_IN_0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_IN_0' transactor parameters
    xsc::common_cpp::properties TRACE_IN_0_transactor_param_props;
    TRACE_IN_0_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_IN_0_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_IN_0_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_IN_0_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_IN_0_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_IN_0_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_IN_0_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_IN_0_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_IN_0_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_IN_0_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_IN_0_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_IN_0_transactor = new xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>("TRACE_IN_0_transactor", TRACE_IN_0_transactor_param_props);

    // TRACE_IN_0' transactor ports

    mp_TRACE_IN_0_transactor->TDATA(trace_tdata0);
    mp_TRACE_IN_0_transactor->TDEST(trace_tdest0);
    mp_TRACE_IN_0_transactor->TID(trace_tid0);
    mp_TRACE_IN_0_transactor->TLAST(trace_tlast0);
    mp_TRACE_IN_0_transactor->TREADY(trace_tready0);
    mp_TRACE_IN_0_transactor->TVALID(trace_tvalid0);
    mp_TRACE_IN_0_transactor->CLK(trace_clk);
    mp_TRACE_IN_0_transactor->RST(trace_aresetn);

    // TRACE_IN_0' transactor sockets

    mp_impl->trace_socket0->bind(*(mp_TRACE_IN_0_transactor->socket));
  }
  else
  {
  }

  // configure 'TRACE_IN_1' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "TRACE_IN_1_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_IN_1' transactor parameters
    xsc::common_cpp::properties TRACE_IN_1_transactor_param_props;
    TRACE_IN_1_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_IN_1_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_IN_1_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_IN_1_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_IN_1_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_IN_1_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_IN_1_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_IN_1_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_IN_1_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_IN_1_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_IN_1_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_IN_1_transactor = new xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>("TRACE_IN_1_transactor", TRACE_IN_1_transactor_param_props);

    // TRACE_IN_1' transactor ports

    mp_TRACE_IN_1_transactor->TDATA(trace_tdata1);
    mp_TRACE_IN_1_transactor->TDEST(trace_tdest1);
    mp_TRACE_IN_1_transactor->TID(trace_tid1);
    mp_TRACE_IN_1_transactor->TLAST(trace_tlast1);
    mp_TRACE_IN_1_transactor->TREADY(trace_tready1);
    mp_TRACE_IN_1_transactor->TVALID(trace_tvalid1);
    mp_TRACE_IN_1_transactor->CLK(trace_clk);
    mp_TRACE_IN_1_transactor->RST(trace_aresetn);

    // TRACE_IN_1' transactor sockets

    mp_impl->trace_socket1->bind(*(mp_TRACE_IN_1_transactor->socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
pfm_dynamic_dpa_hub_0::pfm_dynamic_dpa_hub_0(const sc_core::sc_module_name& nm) : pfm_dynamic_dpa_hub_0_sc(nm),  s_aximm_clk("s_aximm_clk"), s_aximm_aresetn("s_aximm_aresetn"), trace_clk("trace_clk"), trace_aresetn("trace_aresetn"), axilite_clk("axilite_clk"), axilite_aresetn("axilite_aresetn"), trace_tready0("trace_tready0"), trace_tdata0("trace_tdata0"), trace_tlast0("trace_tlast0"), trace_tid0("trace_tid0"), trace_tdest0("trace_tdest0"), trace_tvalid0("trace_tvalid0"), trace_tready1("trace_tready1"), trace_tdata1("trace_tdata1"), trace_tlast1("trace_tlast1"), trace_tid1("trace_tid1"), trace_tdest1("trace_tdest1"), trace_tvalid1("trace_tvalid1"), s_axi_awaddr("s_axi_awaddr"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_bresp("s_axi_bresp"), s_axi_araddr("s_axi_araddr"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), s_axihub_awaddr("s_axihub_awaddr"), s_axihub_awvalid("s_axihub_awvalid"), s_axihub_awready("s_axihub_awready"), s_axihub_wdata("s_axihub_wdata"), s_axihub_wstrb("s_axihub_wstrb"), s_axihub_wvalid("s_axihub_wvalid"), s_axihub_wready("s_axihub_wready"), s_axihub_bvalid("s_axihub_bvalid"), s_axihub_bready("s_axihub_bready"), s_axihub_bresp("s_axihub_bresp"), s_axihub_araddr("s_axihub_araddr"), s_axihub_arvalid("s_axihub_arvalid"), s_axihub_arready("s_axihub_arready"), s_axihub_rdata("s_axihub_rdata"), s_axihub_rresp("s_axihub_rresp"), s_axihub_rvalid("s_axihub_rvalid"), s_axihub_rready("s_axihub_rready"), s_aximm_awaddr("s_aximm_awaddr"), s_aximm_awvalid("s_aximm_awvalid"), s_aximm_awready("s_aximm_awready"), s_aximm_awlen("s_aximm_awlen"), s_aximm_awsize("s_aximm_awsize"), s_aximm_awburst("s_aximm_awburst"), s_aximm_awid("s_aximm_awid"), s_aximm_wdata("s_aximm_wdata"), s_aximm_wstrb("s_aximm_wstrb"), s_aximm_wvalid("s_aximm_wvalid"), s_aximm_wready("s_aximm_wready"), s_aximm_bvalid("s_aximm_bvalid"), s_aximm_bready("s_aximm_bready"), s_aximm_wlast("s_aximm_wlast"), s_aximm_rlast("s_aximm_rlast"), s_aximm_bresp("s_aximm_bresp"), s_aximm_bid("s_aximm_bid"), s_aximm_araddr("s_aximm_araddr"), s_aximm_arvalid("s_aximm_arvalid"), s_aximm_arready("s_aximm_arready"), s_aximm_arlen("s_aximm_arlen"), s_aximm_arsize("s_aximm_arsize"), s_aximm_arburst("s_aximm_arburst"), s_aximm_arid("s_aximm_arid"), s_aximm_rdata("s_aximm_rdata"), s_aximm_rid("s_aximm_rid"), s_aximm_rresp("s_aximm_rresp"), s_aximm_rvalid("s_aximm_rvalid"), s_aximm_rready("s_aximm_rready")
{
  // initialize pins
  mp_impl->s_aximm_clk(s_aximm_clk);
  mp_impl->s_aximm_aresetn(s_aximm_aresetn);
  mp_impl->trace_clk(trace_clk);
  mp_impl->trace_aresetn(trace_aresetn);
  mp_impl->axilite_clk(axilite_clk);
  mp_impl->axilite_aresetn(axilite_aresetn);

  // initialize transactors
  mp_S_AXIMM_transactor = NULL;
  mp_S_AXIFIFO_transactor = NULL;
  mp_S_AXIHUB_transactor = NULL;
  mp_TRACE_IN_0_transactor = NULL;
  mp_TRACE_IN_1_transactor = NULL;

  // Instantiate Socket Stubs

  // configure S_AXIMM_transactor
    xsc::common_cpp::properties S_AXIMM_transactor_param_props;
    S_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    S_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIMM_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_dma_pcie_aclk");
    S_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIMM_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,1,1,1,1,1,1>("S_AXIMM_transactor", S_AXIMM_transactor_param_props);
  mp_S_AXIMM_transactor->ARADDR(s_aximm_araddr);
  mp_S_AXIMM_transactor->ARBURST(s_aximm_arburst);
  mp_S_AXIMM_transactor->ARID(s_aximm_arid);
  mp_S_AXIMM_transactor->ARLEN(s_aximm_arlen);
  mp_S_AXIMM_transactor->ARREADY(s_aximm_arready);
  mp_S_AXIMM_transactor->ARSIZE(s_aximm_arsize);
  mp_S_AXIMM_transactor->ARVALID(s_aximm_arvalid);
  mp_S_AXIMM_transactor->AWADDR(s_aximm_awaddr);
  mp_S_AXIMM_transactor->AWBURST(s_aximm_awburst);
  mp_S_AXIMM_transactor->AWID(s_aximm_awid);
  mp_S_AXIMM_transactor->AWLEN(s_aximm_awlen);
  mp_S_AXIMM_transactor->AWREADY(s_aximm_awready);
  mp_S_AXIMM_transactor->AWSIZE(s_aximm_awsize);
  mp_S_AXIMM_transactor->AWVALID(s_aximm_awvalid);
  mp_S_AXIMM_transactor->BID(s_aximm_bid);
  mp_S_AXIMM_transactor->BREADY(s_aximm_bready);
  mp_S_AXIMM_transactor->BRESP(s_aximm_bresp);
  mp_S_AXIMM_transactor->BVALID(s_aximm_bvalid);
  mp_S_AXIMM_transactor->RDATA(s_aximm_rdata);
  mp_S_AXIMM_transactor->RID(s_aximm_rid);
  mp_S_AXIMM_transactor->RLAST(s_aximm_rlast);
  mp_S_AXIMM_transactor->RREADY(s_aximm_rready);
  mp_S_AXIMM_transactor->RRESP(s_aximm_rresp);
  mp_S_AXIMM_transactor->RVALID(s_aximm_rvalid);
  mp_S_AXIMM_transactor->WDATA(s_aximm_wdata);
  mp_S_AXIMM_transactor->WLAST(s_aximm_wlast);
  mp_S_AXIMM_transactor->WREADY(s_aximm_wready);
  mp_S_AXIMM_transactor->WSTRB(s_aximm_wstrb);
  mp_S_AXIMM_transactor->WVALID(s_aximm_wvalid);
  mp_S_AXIMM_transactor->CLK(s_aximm_clk);
  mp_S_AXIMM_transactor->RST(s_aximm_aresetn);
  // configure S_AXIFIFO_transactor
    xsc::common_cpp::properties S_AXIFIFO_transactor_param_props;
    S_AXIFIFO_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXIFIFO_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXIFIFO_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXIFIFO_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIFIFO_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIFIFO_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIFIFO_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXIFIFO_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIFIFO_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIFIFO_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXIFIFO_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIFIFO_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIFIFO_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIFIFO_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIFIFO_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIFIFO_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXIFIFO_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIFIFO_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXIFIFO_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIFIFO_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXIFIFO_transactor", S_AXIFIFO_transactor_param_props);
  mp_S_AXIFIFO_transactor->ARADDR(s_axi_araddr);
  mp_S_AXIFIFO_transactor->ARREADY(s_axi_arready);
  mp_S_AXIFIFO_transactor->ARVALID(s_axi_arvalid);
  mp_S_AXIFIFO_transactor->AWADDR(s_axi_awaddr);
  mp_S_AXIFIFO_transactor->AWREADY(s_axi_awready);
  mp_S_AXIFIFO_transactor->AWVALID(s_axi_awvalid);
  mp_S_AXIFIFO_transactor->BREADY(s_axi_bready);
  mp_S_AXIFIFO_transactor->BRESP(s_axi_bresp);
  mp_S_AXIFIFO_transactor->BVALID(s_axi_bvalid);
  mp_S_AXIFIFO_transactor->RDATA(s_axi_rdata);
  mp_S_AXIFIFO_transactor->RREADY(s_axi_rready);
  mp_S_AXIFIFO_transactor->RRESP(s_axi_rresp);
  mp_S_AXIFIFO_transactor->RVALID(s_axi_rvalid);
  mp_S_AXIFIFO_transactor->WDATA(s_axi_wdata);
  mp_S_AXIFIFO_transactor->WREADY(s_axi_wready);
  mp_S_AXIFIFO_transactor->WSTRB(s_axi_wstrb);
  mp_S_AXIFIFO_transactor->WVALID(s_axi_wvalid);
  mp_S_AXIFIFO_transactor->CLK(axilite_clk);
  mp_S_AXIFIFO_transactor->RST(axilite_aresetn);
  // configure S_AXIHUB_transactor
    xsc::common_cpp::properties S_AXIHUB_transactor_param_props;
    S_AXIHUB_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXIHUB_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXIHUB_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXIHUB_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIHUB_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIHUB_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIHUB_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXIHUB_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIHUB_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIHUB_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXIHUB_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIHUB_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIHUB_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIHUB_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIHUB_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIHUB_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXIHUB_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIHUB_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXIHUB_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIHUB_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXIHUB_transactor", S_AXIHUB_transactor_param_props);
  mp_S_AXIHUB_transactor->ARADDR(s_axihub_araddr);
  mp_S_AXIHUB_transactor->ARREADY(s_axihub_arready);
  mp_S_AXIHUB_transactor->ARVALID(s_axihub_arvalid);
  mp_S_AXIHUB_transactor->AWADDR(s_axihub_awaddr);
  mp_S_AXIHUB_transactor->AWREADY(s_axihub_awready);
  mp_S_AXIHUB_transactor->AWVALID(s_axihub_awvalid);
  mp_S_AXIHUB_transactor->BREADY(s_axihub_bready);
  mp_S_AXIHUB_transactor->BRESP(s_axihub_bresp);
  mp_S_AXIHUB_transactor->BVALID(s_axihub_bvalid);
  mp_S_AXIHUB_transactor->RDATA(s_axihub_rdata);
  mp_S_AXIHUB_transactor->RREADY(s_axihub_rready);
  mp_S_AXIHUB_transactor->RRESP(s_axihub_rresp);
  mp_S_AXIHUB_transactor->RVALID(s_axihub_rvalid);
  mp_S_AXIHUB_transactor->WDATA(s_axihub_wdata);
  mp_S_AXIHUB_transactor->WREADY(s_axihub_wready);
  mp_S_AXIHUB_transactor->WSTRB(s_axihub_wstrb);
  mp_S_AXIHUB_transactor->WVALID(s_axihub_wvalid);
  mp_S_AXIHUB_transactor->CLK(axilite_clk);
  mp_S_AXIHUB_transactor->RST(axilite_aresetn);
  // configure TRACE_IN_0_transactor
    xsc::common_cpp::properties TRACE_IN_0_transactor_param_props;
    TRACE_IN_0_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_IN_0_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_IN_0_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_IN_0_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_IN_0_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_IN_0_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_IN_0_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_IN_0_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_IN_0_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_IN_0_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_IN_0_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_IN_0_transactor = new xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>("TRACE_IN_0_transactor", TRACE_IN_0_transactor_param_props);
  mp_TRACE_IN_0_transactor->TDATA(trace_tdata0);
  mp_TRACE_IN_0_transactor->TDEST(trace_tdest0);
  mp_TRACE_IN_0_transactor->TID(trace_tid0);
  mp_TRACE_IN_0_transactor->TLAST(trace_tlast0);
  mp_TRACE_IN_0_transactor->TREADY(trace_tready0);
  mp_TRACE_IN_0_transactor->TVALID(trace_tvalid0);
  mp_TRACE_IN_0_transactor->CLK(trace_clk);
  mp_TRACE_IN_0_transactor->RST(trace_aresetn);
  // configure TRACE_IN_1_transactor
    xsc::common_cpp::properties TRACE_IN_1_transactor_param_props;
    TRACE_IN_1_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_IN_1_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_IN_1_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_IN_1_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_IN_1_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_IN_1_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_IN_1_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_IN_1_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_IN_1_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_IN_1_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_IN_1_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_IN_1_transactor = new xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>("TRACE_IN_1_transactor", TRACE_IN_1_transactor_param_props);
  mp_TRACE_IN_1_transactor->TDATA(trace_tdata1);
  mp_TRACE_IN_1_transactor->TDEST(trace_tdest1);
  mp_TRACE_IN_1_transactor->TID(trace_tid1);
  mp_TRACE_IN_1_transactor->TLAST(trace_tlast1);
  mp_TRACE_IN_1_transactor->TREADY(trace_tready1);
  mp_TRACE_IN_1_transactor->TVALID(trace_tvalid1);
  mp_TRACE_IN_1_transactor->CLK(trace_clk);
  mp_TRACE_IN_1_transactor->RST(trace_aresetn);

  // initialize transactors stubs
  S_AXIMM_transactor_target_wr_socket_stub = nullptr;
  S_AXIMM_transactor_target_rd_socket_stub = nullptr;
  S_AXIFIFO_transactor_target_wr_socket_stub = nullptr;
  S_AXIFIFO_transactor_target_rd_socket_stub = nullptr;
  S_AXIHUB_transactor_target_wr_socket_stub = nullptr;
  S_AXIHUB_transactor_target_rd_socket_stub = nullptr;
  TRACE_IN_0_transactor_target_socket_stub = nullptr;
  TRACE_IN_1_transactor_target_socket_stub = nullptr;

}

void pfm_dynamic_dpa_hub_0::before_end_of_elaboration()
{
  // configure 'S_AXIMM' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "S_AXIMM_TLM_MODE") != 1)
  {
    mp_impl->s_aximm_rd_socket->bind(*(mp_S_AXIMM_transactor->rd_socket));
    mp_impl->s_aximm_wr_socket->bind(*(mp_S_AXIMM_transactor->wr_socket));
  
  }
  else
  {
    S_AXIMM_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXIMM_transactor_target_wr_socket_stub->bind(*(mp_S_AXIMM_transactor->wr_socket));
    S_AXIMM_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXIMM_transactor_target_rd_socket_stub->bind(*(mp_S_AXIMM_transactor->rd_socket));
    mp_S_AXIMM_transactor->disable_transactor();
  }

  // configure 'S_AXIFIFO' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "S_AXIFIFO_TLM_MODE") != 1)
  {
    mp_impl->axilite_rd_socket->bind(*(mp_S_AXIFIFO_transactor->rd_socket));
    mp_impl->axilite_wr_socket->bind(*(mp_S_AXIFIFO_transactor->wr_socket));
  
  }
  else
  {
    S_AXIFIFO_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXIFIFO_transactor_target_wr_socket_stub->bind(*(mp_S_AXIFIFO_transactor->wr_socket));
    S_AXIFIFO_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXIFIFO_transactor_target_rd_socket_stub->bind(*(mp_S_AXIFIFO_transactor->rd_socket));
    mp_S_AXIFIFO_transactor->disable_transactor();
  }

  // configure 'S_AXIHUB' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "S_AXIHUB_TLM_MODE") != 1)
  {
    mp_impl->s_axihub_rd_socket->bind(*(mp_S_AXIHUB_transactor->rd_socket));
    mp_impl->s_axihub_wr_socket->bind(*(mp_S_AXIHUB_transactor->wr_socket));
  
  }
  else
  {
    S_AXIHUB_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_AXIHUB_transactor_target_wr_socket_stub->bind(*(mp_S_AXIHUB_transactor->wr_socket));
    S_AXIHUB_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_AXIHUB_transactor_target_rd_socket_stub->bind(*(mp_S_AXIHUB_transactor->rd_socket));
    mp_S_AXIHUB_transactor->disable_transactor();
  }

  // configure 'TRACE_IN_0' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "TRACE_IN_0_TLM_MODE") != 1)
  {
    mp_impl->trace_socket0->bind(*(mp_TRACE_IN_0_transactor->socket));
  
  }
  else
  {
    TRACE_IN_0_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    TRACE_IN_0_transactor_target_socket_stub->bind(*(mp_TRACE_IN_0_transactor->socket));
    mp_TRACE_IN_0_transactor->disable_transactor();
  }

  // configure 'TRACE_IN_1' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "TRACE_IN_1_TLM_MODE") != 1)
  {
    mp_impl->trace_socket1->bind(*(mp_TRACE_IN_1_transactor->socket));
  
  }
  else
  {
    TRACE_IN_1_transactor_target_socket_stub = new xtlm::xtlm_axis_target_stub("socket",0);
    TRACE_IN_1_transactor_target_socket_stub->bind(*(mp_TRACE_IN_1_transactor->socket));
    mp_TRACE_IN_1_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
pfm_dynamic_dpa_hub_0::pfm_dynamic_dpa_hub_0(const sc_core::sc_module_name& nm) : pfm_dynamic_dpa_hub_0_sc(nm), s_aximm_clk("s_aximm_clk"), s_aximm_aresetn("s_aximm_aresetn"), trace_clk("trace_clk"), trace_aresetn("trace_aresetn"), axilite_clk("axilite_clk"), axilite_aresetn("axilite_aresetn"), trace_tready0("trace_tready0"), trace_tdata0("trace_tdata0"), trace_tlast0("trace_tlast0"), trace_tid0("trace_tid0"), trace_tdest0("trace_tdest0"), trace_tvalid0("trace_tvalid0"), trace_tready1("trace_tready1"), trace_tdata1("trace_tdata1"), trace_tlast1("trace_tlast1"), trace_tid1("trace_tid1"), trace_tdest1("trace_tdest1"), trace_tvalid1("trace_tvalid1"), s_axi_awaddr("s_axi_awaddr"), s_axi_awvalid("s_axi_awvalid"), s_axi_awready("s_axi_awready"), s_axi_wdata("s_axi_wdata"), s_axi_wstrb("s_axi_wstrb"), s_axi_wvalid("s_axi_wvalid"), s_axi_wready("s_axi_wready"), s_axi_bvalid("s_axi_bvalid"), s_axi_bready("s_axi_bready"), s_axi_bresp("s_axi_bresp"), s_axi_araddr("s_axi_araddr"), s_axi_arvalid("s_axi_arvalid"), s_axi_arready("s_axi_arready"), s_axi_rdata("s_axi_rdata"), s_axi_rresp("s_axi_rresp"), s_axi_rvalid("s_axi_rvalid"), s_axi_rready("s_axi_rready"), s_axihub_awaddr("s_axihub_awaddr"), s_axihub_awvalid("s_axihub_awvalid"), s_axihub_awready("s_axihub_awready"), s_axihub_wdata("s_axihub_wdata"), s_axihub_wstrb("s_axihub_wstrb"), s_axihub_wvalid("s_axihub_wvalid"), s_axihub_wready("s_axihub_wready"), s_axihub_bvalid("s_axihub_bvalid"), s_axihub_bready("s_axihub_bready"), s_axihub_bresp("s_axihub_bresp"), s_axihub_araddr("s_axihub_araddr"), s_axihub_arvalid("s_axihub_arvalid"), s_axihub_arready("s_axihub_arready"), s_axihub_rdata("s_axihub_rdata"), s_axihub_rresp("s_axihub_rresp"), s_axihub_rvalid("s_axihub_rvalid"), s_axihub_rready("s_axihub_rready"), s_aximm_awaddr("s_aximm_awaddr"), s_aximm_awvalid("s_aximm_awvalid"), s_aximm_awready("s_aximm_awready"), s_aximm_awlen("s_aximm_awlen"), s_aximm_awsize("s_aximm_awsize"), s_aximm_awburst("s_aximm_awburst"), s_aximm_awid("s_aximm_awid"), s_aximm_wdata("s_aximm_wdata"), s_aximm_wstrb("s_aximm_wstrb"), s_aximm_wvalid("s_aximm_wvalid"), s_aximm_wready("s_aximm_wready"), s_aximm_bvalid("s_aximm_bvalid"), s_aximm_bready("s_aximm_bready"), s_aximm_wlast("s_aximm_wlast"), s_aximm_rlast("s_aximm_rlast"), s_aximm_bresp("s_aximm_bresp"), s_aximm_bid("s_aximm_bid"), s_aximm_araddr("s_aximm_araddr"), s_aximm_arvalid("s_aximm_arvalid"), s_aximm_arready("s_aximm_arready"), s_aximm_arlen("s_aximm_arlen"), s_aximm_arsize("s_aximm_arsize"), s_aximm_arburst("s_aximm_arburst"), s_aximm_arid("s_aximm_arid"), s_aximm_rdata("s_aximm_rdata"), s_aximm_rid("s_aximm_rid"), s_aximm_rresp("s_aximm_rresp"), s_aximm_rvalid("s_aximm_rvalid"), s_aximm_rready("s_aximm_rready")
{

  // initialize pins
  mp_impl->s_aximm_clk(s_aximm_clk);
  mp_impl->s_aximm_aresetn(s_aximm_aresetn);
  mp_impl->trace_clk(trace_clk);
  mp_impl->trace_aresetn(trace_aresetn);
  mp_impl->axilite_clk(axilite_clk);
  mp_impl->axilite_aresetn(axilite_aresetn);

  // initialize transactors
  mp_S_AXIMM_transactor = NULL;
  mp_S_AXIFIFO_transactor = NULL;
  mp_S_AXIHUB_transactor = NULL;
  mp_TRACE_IN_0_transactor = NULL;
  mp_TRACE_IN_1_transactor = NULL;

  // initialize socket stubs

}

void pfm_dynamic_dpa_hub_0::before_end_of_elaboration()
{
  // configure 'S_AXIMM' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "S_AXIMM_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIMM' transactor parameters
    xsc::common_cpp::properties S_AXIMM_transactor_param_props;
    S_AXIMM_transactor_param_props.addLong("DATA_WIDTH", "64");
    S_AXIMM_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXIMM_transactor_param_props.addLong("ID_WIDTH", "1");
    S_AXIMM_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_AXIMM_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_BURST", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIMM_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIMM_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_AXIMM_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIMM_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIMM_transactor_param_props.addLong("HAS_SIZE", "1");
    S_AXIMM_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIMM_transactor_param_props.addFloat("PHASE", "0.000");
    S_AXIMM_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_AXIMM_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIMM_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_dma_pcie_aclk");
    S_AXIMM_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIMM_transactor = new xtlm::xaximm_pin2xtlm_t<64,32,1,1,1,1,1,1>("S_AXIMM_transactor", S_AXIMM_transactor_param_props);

    // S_AXIMM' transactor ports

    mp_S_AXIMM_transactor->ARADDR(s_aximm_araddr);
    mp_S_AXIMM_transactor->ARBURST(s_aximm_arburst);
    mp_S_AXIMM_transactor->ARID(s_aximm_arid);
    mp_S_AXIMM_transactor->ARLEN(s_aximm_arlen);
    mp_S_AXIMM_transactor->ARREADY(s_aximm_arready);
    mp_S_AXIMM_transactor->ARSIZE(s_aximm_arsize);
    mp_S_AXIMM_transactor->ARVALID(s_aximm_arvalid);
    mp_S_AXIMM_transactor->AWADDR(s_aximm_awaddr);
    mp_S_AXIMM_transactor->AWBURST(s_aximm_awburst);
    mp_S_AXIMM_transactor->AWID(s_aximm_awid);
    mp_S_AXIMM_transactor->AWLEN(s_aximm_awlen);
    mp_S_AXIMM_transactor->AWREADY(s_aximm_awready);
    mp_S_AXIMM_transactor->AWSIZE(s_aximm_awsize);
    mp_S_AXIMM_transactor->AWVALID(s_aximm_awvalid);
    mp_S_AXIMM_transactor->BID(s_aximm_bid);
    mp_S_AXIMM_transactor->BREADY(s_aximm_bready);
    mp_S_AXIMM_transactor->BRESP(s_aximm_bresp);
    mp_S_AXIMM_transactor->BVALID(s_aximm_bvalid);
    mp_S_AXIMM_transactor->RDATA(s_aximm_rdata);
    mp_S_AXIMM_transactor->RID(s_aximm_rid);
    mp_S_AXIMM_transactor->RLAST(s_aximm_rlast);
    mp_S_AXIMM_transactor->RREADY(s_aximm_rready);
    mp_S_AXIMM_transactor->RRESP(s_aximm_rresp);
    mp_S_AXIMM_transactor->RVALID(s_aximm_rvalid);
    mp_S_AXIMM_transactor->WDATA(s_aximm_wdata);
    mp_S_AXIMM_transactor->WLAST(s_aximm_wlast);
    mp_S_AXIMM_transactor->WREADY(s_aximm_wready);
    mp_S_AXIMM_transactor->WSTRB(s_aximm_wstrb);
    mp_S_AXIMM_transactor->WVALID(s_aximm_wvalid);
    mp_S_AXIMM_transactor->CLK(s_aximm_clk);
    mp_S_AXIMM_transactor->RST(s_aximm_aresetn);

    // S_AXIMM' transactor sockets

    mp_impl->s_aximm_rd_socket->bind(*(mp_S_AXIMM_transactor->rd_socket));
    mp_impl->s_aximm_wr_socket->bind(*(mp_S_AXIMM_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXIFIFO' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "S_AXIFIFO_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIFIFO' transactor parameters
    xsc::common_cpp::properties S_AXIFIFO_transactor_param_props;
    S_AXIFIFO_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXIFIFO_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXIFIFO_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXIFIFO_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIFIFO_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIFIFO_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIFIFO_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXIFIFO_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIFIFO_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIFIFO_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXIFIFO_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIFIFO_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIFIFO_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIFIFO_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXIFIFO_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIFIFO_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIFIFO_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXIFIFO_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIFIFO_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXIFIFO_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIFIFO_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXIFIFO_transactor", S_AXIFIFO_transactor_param_props);

    // S_AXIFIFO' transactor ports

    mp_S_AXIFIFO_transactor->ARADDR(s_axi_araddr);
    mp_S_AXIFIFO_transactor->ARREADY(s_axi_arready);
    mp_S_AXIFIFO_transactor->ARVALID(s_axi_arvalid);
    mp_S_AXIFIFO_transactor->AWADDR(s_axi_awaddr);
    mp_S_AXIFIFO_transactor->AWREADY(s_axi_awready);
    mp_S_AXIFIFO_transactor->AWVALID(s_axi_awvalid);
    mp_S_AXIFIFO_transactor->BREADY(s_axi_bready);
    mp_S_AXIFIFO_transactor->BRESP(s_axi_bresp);
    mp_S_AXIFIFO_transactor->BVALID(s_axi_bvalid);
    mp_S_AXIFIFO_transactor->RDATA(s_axi_rdata);
    mp_S_AXIFIFO_transactor->RREADY(s_axi_rready);
    mp_S_AXIFIFO_transactor->RRESP(s_axi_rresp);
    mp_S_AXIFIFO_transactor->RVALID(s_axi_rvalid);
    mp_S_AXIFIFO_transactor->WDATA(s_axi_wdata);
    mp_S_AXIFIFO_transactor->WREADY(s_axi_wready);
    mp_S_AXIFIFO_transactor->WSTRB(s_axi_wstrb);
    mp_S_AXIFIFO_transactor->WVALID(s_axi_wvalid);
    mp_S_AXIFIFO_transactor->CLK(axilite_clk);
    mp_S_AXIFIFO_transactor->RST(axilite_aresetn);

    // S_AXIFIFO' transactor sockets

    mp_impl->axilite_rd_socket->bind(*(mp_S_AXIFIFO_transactor->rd_socket));
    mp_impl->axilite_wr_socket->bind(*(mp_S_AXIFIFO_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_AXIHUB' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "S_AXIHUB_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_AXIHUB' transactor parameters
    xsc::common_cpp::properties S_AXIHUB_transactor_param_props;
    S_AXIHUB_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_AXIHUB_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S_AXIHUB_transactor_param_props.addLong("ID_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("ADDR_WIDTH", "8");
    S_AXIHUB_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_BURST", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_LOCK", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_PROT", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_CACHE", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_QOS", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_REGION", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_AXIHUB_transactor_param_props.addLong("HAS_BRESP", "1");
    S_AXIHUB_transactor_param_props.addLong("HAS_RRESP", "1");
    S_AXIHUB_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_AXIHUB_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_AXIHUB_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_AXIHUB_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    S_AXIHUB_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_AXIHUB_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_AXIHUB_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_AXIHUB_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_SIZE", "0");
    S_AXIHUB_transactor_param_props.addLong("HAS_RESET", "1");
    S_AXIHUB_transactor_param_props.addFloat("PHASE", "0.0");
    S_AXIHUB_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    S_AXIHUB_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_AXIHUB_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S_AXIHUB_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_AXIHUB_transactor = new xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>("S_AXIHUB_transactor", S_AXIHUB_transactor_param_props);

    // S_AXIHUB' transactor ports

    mp_S_AXIHUB_transactor->ARADDR(s_axihub_araddr);
    mp_S_AXIHUB_transactor->ARREADY(s_axihub_arready);
    mp_S_AXIHUB_transactor->ARVALID(s_axihub_arvalid);
    mp_S_AXIHUB_transactor->AWADDR(s_axihub_awaddr);
    mp_S_AXIHUB_transactor->AWREADY(s_axihub_awready);
    mp_S_AXIHUB_transactor->AWVALID(s_axihub_awvalid);
    mp_S_AXIHUB_transactor->BREADY(s_axihub_bready);
    mp_S_AXIHUB_transactor->BRESP(s_axihub_bresp);
    mp_S_AXIHUB_transactor->BVALID(s_axihub_bvalid);
    mp_S_AXIHUB_transactor->RDATA(s_axihub_rdata);
    mp_S_AXIHUB_transactor->RREADY(s_axihub_rready);
    mp_S_AXIHUB_transactor->RRESP(s_axihub_rresp);
    mp_S_AXIHUB_transactor->RVALID(s_axihub_rvalid);
    mp_S_AXIHUB_transactor->WDATA(s_axihub_wdata);
    mp_S_AXIHUB_transactor->WREADY(s_axihub_wready);
    mp_S_AXIHUB_transactor->WSTRB(s_axihub_wstrb);
    mp_S_AXIHUB_transactor->WVALID(s_axihub_wvalid);
    mp_S_AXIHUB_transactor->CLK(axilite_clk);
    mp_S_AXIHUB_transactor->RST(axilite_aresetn);

    // S_AXIHUB' transactor sockets

    mp_impl->s_axihub_rd_socket->bind(*(mp_S_AXIHUB_transactor->rd_socket));
    mp_impl->s_axihub_wr_socket->bind(*(mp_S_AXIHUB_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'TRACE_IN_0' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "TRACE_IN_0_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_IN_0' transactor parameters
    xsc::common_cpp::properties TRACE_IN_0_transactor_param_props;
    TRACE_IN_0_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_IN_0_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_IN_0_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_IN_0_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_IN_0_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_IN_0_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_IN_0_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_IN_0_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_IN_0_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_IN_0_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_IN_0_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_IN_0_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_IN_0_transactor = new xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>("TRACE_IN_0_transactor", TRACE_IN_0_transactor_param_props);

    // TRACE_IN_0' transactor ports

    mp_TRACE_IN_0_transactor->TDATA(trace_tdata0);
    mp_TRACE_IN_0_transactor->TDEST(trace_tdest0);
    mp_TRACE_IN_0_transactor->TID(trace_tid0);
    mp_TRACE_IN_0_transactor->TLAST(trace_tlast0);
    mp_TRACE_IN_0_transactor->TREADY(trace_tready0);
    mp_TRACE_IN_0_transactor->TVALID(trace_tvalid0);
    mp_TRACE_IN_0_transactor->CLK(trace_clk);
    mp_TRACE_IN_0_transactor->RST(trace_aresetn);

    // TRACE_IN_0' transactor sockets

    mp_impl->trace_socket0->bind(*(mp_TRACE_IN_0_transactor->socket));
  }
  else
  {
  }

  // configure 'TRACE_IN_1' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_dpa_hub_0", "TRACE_IN_1_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'TRACE_IN_1' transactor parameters
    xsc::common_cpp::properties TRACE_IN_1_transactor_param_props;
    TRACE_IN_1_transactor_param_props.addLong("TDATA_NUM_BYTES", "8");
    TRACE_IN_1_transactor_param_props.addLong("TDEST_WIDTH", "8");
    TRACE_IN_1_transactor_param_props.addLong("TID_WIDTH", "8");
    TRACE_IN_1_transactor_param_props.addLong("TUSER_WIDTH", "0");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TREADY", "1");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TSTRB", "0");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TKEEP", "0");
    TRACE_IN_1_transactor_param_props.addLong("HAS_TLAST", "1");
    TRACE_IN_1_transactor_param_props.addLong("FREQ_HZ", "300000000");
    TRACE_IN_1_transactor_param_props.addLong("HAS_RESET", "1");
    TRACE_IN_1_transactor_param_props.addFloat("PHASE", "0.0");
    TRACE_IN_1_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    TRACE_IN_1_transactor_param_props.addString("LAYERED_METADATA", "undef");
    TRACE_IN_1_transactor_param_props.addLong("TSIDE_BAND_1_WIDTH", "0");
    TRACE_IN_1_transactor_param_props.addLong("TSIDE_BAND_2_WIDTH", "0");

    mp_TRACE_IN_1_transactor = new xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>("TRACE_IN_1_transactor", TRACE_IN_1_transactor_param_props);

    // TRACE_IN_1' transactor ports

    mp_TRACE_IN_1_transactor->TDATA(trace_tdata1);
    mp_TRACE_IN_1_transactor->TDEST(trace_tdest1);
    mp_TRACE_IN_1_transactor->TID(trace_tid1);
    mp_TRACE_IN_1_transactor->TLAST(trace_tlast1);
    mp_TRACE_IN_1_transactor->TREADY(trace_tready1);
    mp_TRACE_IN_1_transactor->TVALID(trace_tvalid1);
    mp_TRACE_IN_1_transactor->CLK(trace_clk);
    mp_TRACE_IN_1_transactor->RST(trace_aresetn);

    // TRACE_IN_1' transactor sockets

    mp_impl->trace_socket1->bind(*(mp_TRACE_IN_1_transactor->socket));
  }
  else
  {
  }

}

#endif // MTI_SYSTEMC




pfm_dynamic_dpa_hub_0::~pfm_dynamic_dpa_hub_0()
{
  delete mp_S_AXIMM_transactor;

  delete mp_S_AXIFIFO_transactor;

  delete mp_S_AXIHUB_transactor;

  delete mp_TRACE_IN_0_transactor;

  delete mp_TRACE_IN_1_transactor;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(pfm_dynamic_dpa_hub_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(pfm_dynamic_dpa_hub_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(pfm_dynamic_dpa_hub_0);
SC_REGISTER_BV(64);
#endif

