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


#include "pfm_dynamic_sim_ddr_3_0_sc.h"

#include "pfm_dynamic_sim_ddr_3_0.h"

#include "sim_ddr_v1_0.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
pfm_dynamic_sim_ddr_3_0::pfm_dynamic_sim_ddr_3_0(const sc_core::sc_module_name& nm) : pfm_dynamic_sim_ddr_3_0_sc(nm), c0_ui_clk("c0_ui_clk"), c0_ddr_saxi_awid("c0_ddr_saxi_awid"), c0_ddr_saxi_awaddr("c0_ddr_saxi_awaddr"), c0_ddr_saxi_awlen("c0_ddr_saxi_awlen"), c0_ddr_saxi_awsize("c0_ddr_saxi_awsize"), c0_ddr_saxi_awburst("c0_ddr_saxi_awburst"), c0_ddr_saxi_awlock("c0_ddr_saxi_awlock"), c0_ddr_saxi_awcache("c0_ddr_saxi_awcache"), c0_ddr_saxi_awprot("c0_ddr_saxi_awprot"), c0_ddr_saxi_awregion("c0_ddr_saxi_awregion"), c0_ddr_saxi_awqos("c0_ddr_saxi_awqos"), c0_ddr_saxi_awuser("c0_ddr_saxi_awuser"), c0_ddr_saxi_awvalid("c0_ddr_saxi_awvalid"), c0_ddr_saxi_awready("c0_ddr_saxi_awready"), c0_ddr_saxi_wdata("c0_ddr_saxi_wdata"), c0_ddr_saxi_wstrb("c0_ddr_saxi_wstrb"), c0_ddr_saxi_wlast("c0_ddr_saxi_wlast"), c0_ddr_saxi_wuser("c0_ddr_saxi_wuser"), c0_ddr_saxi_wvalid("c0_ddr_saxi_wvalid"), c0_ddr_saxi_wready("c0_ddr_saxi_wready"), c0_ddr_saxi_bid("c0_ddr_saxi_bid"), c0_ddr_saxi_bresp("c0_ddr_saxi_bresp"), c0_ddr_saxi_buser("c0_ddr_saxi_buser"), c0_ddr_saxi_bvalid("c0_ddr_saxi_bvalid"), c0_ddr_saxi_bready("c0_ddr_saxi_bready"), c0_ddr_saxi_arid("c0_ddr_saxi_arid"), c0_ddr_saxi_araddr("c0_ddr_saxi_araddr"), c0_ddr_saxi_arlen("c0_ddr_saxi_arlen"), c0_ddr_saxi_arsize("c0_ddr_saxi_arsize"), c0_ddr_saxi_arburst("c0_ddr_saxi_arburst"), c0_ddr_saxi_arlock("c0_ddr_saxi_arlock"), c0_ddr_saxi_arcache("c0_ddr_saxi_arcache"), c0_ddr_saxi_arprot("c0_ddr_saxi_arprot"), c0_ddr_saxi_arregion("c0_ddr_saxi_arregion"), c0_ddr_saxi_arqos("c0_ddr_saxi_arqos"), c0_ddr_saxi_aruser("c0_ddr_saxi_aruser"), c0_ddr_saxi_arvalid("c0_ddr_saxi_arvalid"), c0_ddr_saxi_arready("c0_ddr_saxi_arready"), c0_ddr_saxi_rid("c0_ddr_saxi_rid"), c0_ddr_saxi_rdata("c0_ddr_saxi_rdata"), c0_ddr_saxi_rresp("c0_ddr_saxi_rresp"), c0_ddr_saxi_rlast("c0_ddr_saxi_rlast"), c0_ddr_saxi_ruser("c0_ddr_saxi_ruser"), c0_ddr_saxi_rvalid("c0_ddr_saxi_rvalid"), c0_ddr_saxi_rready("c0_ddr_saxi_rready"), c0_ddr_saxi_aclk("c0_ddr_saxi_aclk"), c0_ddr_saxi_aresetn("c0_ddr_saxi_aresetn"), s_xdma_axi_awid("s_xdma_axi_awid"), s_xdma_axi_awaddr("s_xdma_axi_awaddr"), s_xdma_axi_awlen("s_xdma_axi_awlen"), s_xdma_axi_awsize("s_xdma_axi_awsize"), s_xdma_axi_awburst("s_xdma_axi_awburst"), s_xdma_axi_awlock("s_xdma_axi_awlock"), s_xdma_axi_awcache("s_xdma_axi_awcache"), s_xdma_axi_awprot("s_xdma_axi_awprot"), s_xdma_axi_awregion("s_xdma_axi_awregion"), s_xdma_axi_awqos("s_xdma_axi_awqos"), s_xdma_axi_awuser("s_xdma_axi_awuser"), s_xdma_axi_awvalid("s_xdma_axi_awvalid"), s_xdma_axi_awready("s_xdma_axi_awready"), s_xdma_axi_wdata("s_xdma_axi_wdata"), s_xdma_axi_wstrb("s_xdma_axi_wstrb"), s_xdma_axi_wlast("s_xdma_axi_wlast"), s_xdma_axi_wuser("s_xdma_axi_wuser"), s_xdma_axi_wvalid("s_xdma_axi_wvalid"), s_xdma_axi_wready("s_xdma_axi_wready"), s_xdma_axi_bid("s_xdma_axi_bid"), s_xdma_axi_bresp("s_xdma_axi_bresp"), s_xdma_axi_buser("s_xdma_axi_buser"), s_xdma_axi_bvalid("s_xdma_axi_bvalid"), s_xdma_axi_bready("s_xdma_axi_bready"), s_xdma_axi_arid("s_xdma_axi_arid"), s_xdma_axi_araddr("s_xdma_axi_araddr"), s_xdma_axi_arlen("s_xdma_axi_arlen"), s_xdma_axi_arsize("s_xdma_axi_arsize"), s_xdma_axi_arburst("s_xdma_axi_arburst"), s_xdma_axi_arlock("s_xdma_axi_arlock"), s_xdma_axi_arcache("s_xdma_axi_arcache"), s_xdma_axi_arprot("s_xdma_axi_arprot"), s_xdma_axi_arregion("s_xdma_axi_arregion"), s_xdma_axi_arqos("s_xdma_axi_arqos"), s_xdma_axi_aruser("s_xdma_axi_aruser"), s_xdma_axi_arvalid("s_xdma_axi_arvalid"), s_xdma_axi_arready("s_xdma_axi_arready"), s_xdma_axi_rid("s_xdma_axi_rid"), s_xdma_axi_rdata("s_xdma_axi_rdata"), s_xdma_axi_rresp("s_xdma_axi_rresp"), s_xdma_axi_rlast("s_xdma_axi_rlast"), s_xdma_axi_ruser("s_xdma_axi_ruser"), s_xdma_axi_rvalid("s_xdma_axi_rvalid"), s_xdma_axi_rready("s_xdma_axi_rready"), s_xdma_axi_aclk("s_xdma_axi_aclk"), s_xdma_axi_aresetn("s_xdma_axi_aresetn")
{

  // initialize pins
  mp_impl->c0_ui_clk(c0_ui_clk);
  mp_impl->c0_ddr_saxi_aclk(c0_ddr_saxi_aclk);
  mp_impl->c0_ddr_saxi_aresetn(c0_ddr_saxi_aresetn);
  mp_impl->s_xdma_axi_aclk(s_xdma_axi_aclk);
  mp_impl->s_xdma_axi_aresetn(s_xdma_axi_aresetn);

  // initialize transactors
  mp_C0_DDR_SAXI_transactor = NULL;
  mp_S_XDMA_AXI_transactor = NULL;

  // initialize socket stubs

}

void pfm_dynamic_sim_ddr_3_0::before_end_of_elaboration()
{
  // configure 'C0_DDR_SAXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_sim_ddr_3_0", "C0_DDR_SAXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'C0_DDR_SAXI' transactor parameters
    xsc::common_cpp::properties C0_DDR_SAXI_transactor_param_props;
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    C0_DDR_SAXI_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    C0_DDR_SAXI_transactor_param_props.addLong("WIZ_MEMORY_SIZE", "64");
    C0_DDR_SAXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    C0_DDR_SAXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    C0_DDR_SAXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    C0_DDR_SAXI_transactor_param_props.addLong("ID_WIDTH", "5");
    C0_DDR_SAXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    C0_DDR_SAXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    C0_DDR_SAXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    C0_DDR_SAXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_BURST", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_LOCK", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_PROT", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_CACHE", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_QOS", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_REGION", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_BRESP", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_RRESP", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    C0_DDR_SAXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_SIZE", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_RESET", "1");
    C0_DDR_SAXI_transactor_param_props.addFloat("PHASE", "0.000");
    C0_DDR_SAXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    C0_DDR_SAXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    C0_DDR_SAXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    C0_DDR_SAXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_C0_DDR_SAXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,5,32,1,1,32,1>("C0_DDR_SAXI_transactor", C0_DDR_SAXI_transactor_param_props);

    // C0_DDR_SAXI' transactor ports

    mp_C0_DDR_SAXI_transactor->AWID(c0_ddr_saxi_awid);
    mp_C0_DDR_SAXI_transactor->AWADDR(c0_ddr_saxi_awaddr);
    mp_C0_DDR_SAXI_transactor->AWLEN(c0_ddr_saxi_awlen);
    mp_C0_DDR_SAXI_transactor->AWSIZE(c0_ddr_saxi_awsize);
    mp_C0_DDR_SAXI_transactor->AWBURST(c0_ddr_saxi_awburst);
    mp_C0_DDR_SAXI_transactor->AWLOCK(c0_ddr_saxi_awlock);
    mp_C0_DDR_SAXI_transactor->AWCACHE(c0_ddr_saxi_awcache);
    mp_C0_DDR_SAXI_transactor->AWPROT(c0_ddr_saxi_awprot);
    mp_C0_DDR_SAXI_transactor->AWREGION(c0_ddr_saxi_awregion);
    mp_C0_DDR_SAXI_transactor->AWQOS(c0_ddr_saxi_awqos);
    mp_C0_DDR_SAXI_transactor->AWUSER(c0_ddr_saxi_awuser);
    mp_C0_DDR_SAXI_transactor->AWVALID(c0_ddr_saxi_awvalid);
    mp_C0_DDR_SAXI_transactor->AWREADY(c0_ddr_saxi_awready);
    mp_C0_DDR_SAXI_transactor->WDATA(c0_ddr_saxi_wdata);
    mp_C0_DDR_SAXI_transactor->WSTRB(c0_ddr_saxi_wstrb);
    mp_C0_DDR_SAXI_transactor->WLAST(c0_ddr_saxi_wlast);
    mp_C0_DDR_SAXI_transactor->WUSER(c0_ddr_saxi_wuser);
    mp_C0_DDR_SAXI_transactor->WVALID(c0_ddr_saxi_wvalid);
    mp_C0_DDR_SAXI_transactor->WREADY(c0_ddr_saxi_wready);
    mp_C0_DDR_SAXI_transactor->BID(c0_ddr_saxi_bid);
    mp_C0_DDR_SAXI_transactor->BRESP(c0_ddr_saxi_bresp);
    mp_C0_DDR_SAXI_transactor->BUSER(c0_ddr_saxi_buser);
    mp_C0_DDR_SAXI_transactor->BVALID(c0_ddr_saxi_bvalid);
    mp_C0_DDR_SAXI_transactor->BREADY(c0_ddr_saxi_bready);
    mp_C0_DDR_SAXI_transactor->ARID(c0_ddr_saxi_arid);
    mp_C0_DDR_SAXI_transactor->ARADDR(c0_ddr_saxi_araddr);
    mp_C0_DDR_SAXI_transactor->ARLEN(c0_ddr_saxi_arlen);
    mp_C0_DDR_SAXI_transactor->ARSIZE(c0_ddr_saxi_arsize);
    mp_C0_DDR_SAXI_transactor->ARBURST(c0_ddr_saxi_arburst);
    mp_C0_DDR_SAXI_transactor->ARLOCK(c0_ddr_saxi_arlock);
    mp_C0_DDR_SAXI_transactor->ARCACHE(c0_ddr_saxi_arcache);
    mp_C0_DDR_SAXI_transactor->ARPROT(c0_ddr_saxi_arprot);
    mp_C0_DDR_SAXI_transactor->ARREGION(c0_ddr_saxi_arregion);
    mp_C0_DDR_SAXI_transactor->ARQOS(c0_ddr_saxi_arqos);
    mp_C0_DDR_SAXI_transactor->ARUSER(c0_ddr_saxi_aruser);
    mp_C0_DDR_SAXI_transactor->ARVALID(c0_ddr_saxi_arvalid);
    mp_C0_DDR_SAXI_transactor->ARREADY(c0_ddr_saxi_arready);
    mp_C0_DDR_SAXI_transactor->RID(c0_ddr_saxi_rid);
    mp_C0_DDR_SAXI_transactor->RDATA(c0_ddr_saxi_rdata);
    mp_C0_DDR_SAXI_transactor->RRESP(c0_ddr_saxi_rresp);
    mp_C0_DDR_SAXI_transactor->RLAST(c0_ddr_saxi_rlast);
    mp_C0_DDR_SAXI_transactor->RUSER(c0_ddr_saxi_ruser);
    mp_C0_DDR_SAXI_transactor->RVALID(c0_ddr_saxi_rvalid);
    mp_C0_DDR_SAXI_transactor->RREADY(c0_ddr_saxi_rready);
    mp_C0_DDR_SAXI_transactor->CLK(c0_ddr_saxi_aclk);
    mp_C0_DDR_SAXI_transactor->RST(c0_ddr_saxi_aresetn);

    // C0_DDR_SAXI' transactor sockets

    mp_impl->C0_DDR_SAXI_rd_socket->bind(*(mp_C0_DDR_SAXI_transactor->rd_socket));
    mp_impl->C0_DDR_SAXI_wr_socket->bind(*(mp_C0_DDR_SAXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_XDMA_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_sim_ddr_3_0", "S_XDMA_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_XDMA_AXI' transactor parameters
    xsc::common_cpp::properties S_XDMA_AXI_transactor_param_props;
    S_XDMA_AXI_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("WIZ_MEMORY_SIZE", "64");
    S_XDMA_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_XDMA_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S_XDMA_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    S_XDMA_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S_XDMA_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S_XDMA_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_XDMA_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_XDMA_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_XDMA_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_XDMA_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S_XDMA_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_XDMA_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_XDMA_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S_XDMA_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_XDMA_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,5,32,1,1,32,1>("S_XDMA_AXI_transactor", S_XDMA_AXI_transactor_param_props);

    // S_XDMA_AXI' transactor ports

    mp_S_XDMA_AXI_transactor->AWID(s_xdma_axi_awid);
    mp_S_XDMA_AXI_transactor->AWADDR(s_xdma_axi_awaddr);
    mp_S_XDMA_AXI_transactor->AWLEN(s_xdma_axi_awlen);
    mp_S_XDMA_AXI_transactor->AWSIZE(s_xdma_axi_awsize);
    mp_S_XDMA_AXI_transactor->AWBURST(s_xdma_axi_awburst);
    mp_S_XDMA_AXI_transactor->AWLOCK(s_xdma_axi_awlock);
    mp_S_XDMA_AXI_transactor->AWCACHE(s_xdma_axi_awcache);
    mp_S_XDMA_AXI_transactor->AWPROT(s_xdma_axi_awprot);
    mp_S_XDMA_AXI_transactor->AWREGION(s_xdma_axi_awregion);
    mp_S_XDMA_AXI_transactor->AWQOS(s_xdma_axi_awqos);
    mp_S_XDMA_AXI_transactor->AWUSER(s_xdma_axi_awuser);
    mp_S_XDMA_AXI_transactor->AWVALID(s_xdma_axi_awvalid);
    mp_S_XDMA_AXI_transactor->AWREADY(s_xdma_axi_awready);
    mp_S_XDMA_AXI_transactor->WDATA(s_xdma_axi_wdata);
    mp_S_XDMA_AXI_transactor->WSTRB(s_xdma_axi_wstrb);
    mp_S_XDMA_AXI_transactor->WLAST(s_xdma_axi_wlast);
    mp_S_XDMA_AXI_transactor->WUSER(s_xdma_axi_wuser);
    mp_S_XDMA_AXI_transactor->WVALID(s_xdma_axi_wvalid);
    mp_S_XDMA_AXI_transactor->WREADY(s_xdma_axi_wready);
    mp_S_XDMA_AXI_transactor->BID(s_xdma_axi_bid);
    mp_S_XDMA_AXI_transactor->BRESP(s_xdma_axi_bresp);
    mp_S_XDMA_AXI_transactor->BUSER(s_xdma_axi_buser);
    mp_S_XDMA_AXI_transactor->BVALID(s_xdma_axi_bvalid);
    mp_S_XDMA_AXI_transactor->BREADY(s_xdma_axi_bready);
    mp_S_XDMA_AXI_transactor->ARID(s_xdma_axi_arid);
    mp_S_XDMA_AXI_transactor->ARADDR(s_xdma_axi_araddr);
    mp_S_XDMA_AXI_transactor->ARLEN(s_xdma_axi_arlen);
    mp_S_XDMA_AXI_transactor->ARSIZE(s_xdma_axi_arsize);
    mp_S_XDMA_AXI_transactor->ARBURST(s_xdma_axi_arburst);
    mp_S_XDMA_AXI_transactor->ARLOCK(s_xdma_axi_arlock);
    mp_S_XDMA_AXI_transactor->ARCACHE(s_xdma_axi_arcache);
    mp_S_XDMA_AXI_transactor->ARPROT(s_xdma_axi_arprot);
    mp_S_XDMA_AXI_transactor->ARREGION(s_xdma_axi_arregion);
    mp_S_XDMA_AXI_transactor->ARQOS(s_xdma_axi_arqos);
    mp_S_XDMA_AXI_transactor->ARUSER(s_xdma_axi_aruser);
    mp_S_XDMA_AXI_transactor->ARVALID(s_xdma_axi_arvalid);
    mp_S_XDMA_AXI_transactor->ARREADY(s_xdma_axi_arready);
    mp_S_XDMA_AXI_transactor->RID(s_xdma_axi_rid);
    mp_S_XDMA_AXI_transactor->RDATA(s_xdma_axi_rdata);
    mp_S_XDMA_AXI_transactor->RRESP(s_xdma_axi_rresp);
    mp_S_XDMA_AXI_transactor->RLAST(s_xdma_axi_rlast);
    mp_S_XDMA_AXI_transactor->RUSER(s_xdma_axi_ruser);
    mp_S_XDMA_AXI_transactor->RVALID(s_xdma_axi_rvalid);
    mp_S_XDMA_AXI_transactor->RREADY(s_xdma_axi_rready);
    mp_S_XDMA_AXI_transactor->CLK(s_xdma_axi_aclk);
    mp_S_XDMA_AXI_transactor->RST(s_xdma_axi_aresetn);

    // S_XDMA_AXI' transactor sockets

    mp_impl->S_XDMA_AXI_rd_socket->bind(*(mp_S_XDMA_AXI_transactor->rd_socket));
    mp_impl->S_XDMA_AXI_wr_socket->bind(*(mp_S_XDMA_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
pfm_dynamic_sim_ddr_3_0::pfm_dynamic_sim_ddr_3_0(const sc_core::sc_module_name& nm) : pfm_dynamic_sim_ddr_3_0_sc(nm), c0_ui_clk("c0_ui_clk"), c0_ddr_saxi_awid("c0_ddr_saxi_awid"), c0_ddr_saxi_awaddr("c0_ddr_saxi_awaddr"), c0_ddr_saxi_awlen("c0_ddr_saxi_awlen"), c0_ddr_saxi_awsize("c0_ddr_saxi_awsize"), c0_ddr_saxi_awburst("c0_ddr_saxi_awburst"), c0_ddr_saxi_awlock("c0_ddr_saxi_awlock"), c0_ddr_saxi_awcache("c0_ddr_saxi_awcache"), c0_ddr_saxi_awprot("c0_ddr_saxi_awprot"), c0_ddr_saxi_awregion("c0_ddr_saxi_awregion"), c0_ddr_saxi_awqos("c0_ddr_saxi_awqos"), c0_ddr_saxi_awuser("c0_ddr_saxi_awuser"), c0_ddr_saxi_awvalid("c0_ddr_saxi_awvalid"), c0_ddr_saxi_awready("c0_ddr_saxi_awready"), c0_ddr_saxi_wdata("c0_ddr_saxi_wdata"), c0_ddr_saxi_wstrb("c0_ddr_saxi_wstrb"), c0_ddr_saxi_wlast("c0_ddr_saxi_wlast"), c0_ddr_saxi_wuser("c0_ddr_saxi_wuser"), c0_ddr_saxi_wvalid("c0_ddr_saxi_wvalid"), c0_ddr_saxi_wready("c0_ddr_saxi_wready"), c0_ddr_saxi_bid("c0_ddr_saxi_bid"), c0_ddr_saxi_bresp("c0_ddr_saxi_bresp"), c0_ddr_saxi_buser("c0_ddr_saxi_buser"), c0_ddr_saxi_bvalid("c0_ddr_saxi_bvalid"), c0_ddr_saxi_bready("c0_ddr_saxi_bready"), c0_ddr_saxi_arid("c0_ddr_saxi_arid"), c0_ddr_saxi_araddr("c0_ddr_saxi_araddr"), c0_ddr_saxi_arlen("c0_ddr_saxi_arlen"), c0_ddr_saxi_arsize("c0_ddr_saxi_arsize"), c0_ddr_saxi_arburst("c0_ddr_saxi_arburst"), c0_ddr_saxi_arlock("c0_ddr_saxi_arlock"), c0_ddr_saxi_arcache("c0_ddr_saxi_arcache"), c0_ddr_saxi_arprot("c0_ddr_saxi_arprot"), c0_ddr_saxi_arregion("c0_ddr_saxi_arregion"), c0_ddr_saxi_arqos("c0_ddr_saxi_arqos"), c0_ddr_saxi_aruser("c0_ddr_saxi_aruser"), c0_ddr_saxi_arvalid("c0_ddr_saxi_arvalid"), c0_ddr_saxi_arready("c0_ddr_saxi_arready"), c0_ddr_saxi_rid("c0_ddr_saxi_rid"), c0_ddr_saxi_rdata("c0_ddr_saxi_rdata"), c0_ddr_saxi_rresp("c0_ddr_saxi_rresp"), c0_ddr_saxi_rlast("c0_ddr_saxi_rlast"), c0_ddr_saxi_ruser("c0_ddr_saxi_ruser"), c0_ddr_saxi_rvalid("c0_ddr_saxi_rvalid"), c0_ddr_saxi_rready("c0_ddr_saxi_rready"), c0_ddr_saxi_aclk("c0_ddr_saxi_aclk"), c0_ddr_saxi_aresetn("c0_ddr_saxi_aresetn"), s_xdma_axi_awid("s_xdma_axi_awid"), s_xdma_axi_awaddr("s_xdma_axi_awaddr"), s_xdma_axi_awlen("s_xdma_axi_awlen"), s_xdma_axi_awsize("s_xdma_axi_awsize"), s_xdma_axi_awburst("s_xdma_axi_awburst"), s_xdma_axi_awlock("s_xdma_axi_awlock"), s_xdma_axi_awcache("s_xdma_axi_awcache"), s_xdma_axi_awprot("s_xdma_axi_awprot"), s_xdma_axi_awregion("s_xdma_axi_awregion"), s_xdma_axi_awqos("s_xdma_axi_awqos"), s_xdma_axi_awuser("s_xdma_axi_awuser"), s_xdma_axi_awvalid("s_xdma_axi_awvalid"), s_xdma_axi_awready("s_xdma_axi_awready"), s_xdma_axi_wdata("s_xdma_axi_wdata"), s_xdma_axi_wstrb("s_xdma_axi_wstrb"), s_xdma_axi_wlast("s_xdma_axi_wlast"), s_xdma_axi_wuser("s_xdma_axi_wuser"), s_xdma_axi_wvalid("s_xdma_axi_wvalid"), s_xdma_axi_wready("s_xdma_axi_wready"), s_xdma_axi_bid("s_xdma_axi_bid"), s_xdma_axi_bresp("s_xdma_axi_bresp"), s_xdma_axi_buser("s_xdma_axi_buser"), s_xdma_axi_bvalid("s_xdma_axi_bvalid"), s_xdma_axi_bready("s_xdma_axi_bready"), s_xdma_axi_arid("s_xdma_axi_arid"), s_xdma_axi_araddr("s_xdma_axi_araddr"), s_xdma_axi_arlen("s_xdma_axi_arlen"), s_xdma_axi_arsize("s_xdma_axi_arsize"), s_xdma_axi_arburst("s_xdma_axi_arburst"), s_xdma_axi_arlock("s_xdma_axi_arlock"), s_xdma_axi_arcache("s_xdma_axi_arcache"), s_xdma_axi_arprot("s_xdma_axi_arprot"), s_xdma_axi_arregion("s_xdma_axi_arregion"), s_xdma_axi_arqos("s_xdma_axi_arqos"), s_xdma_axi_aruser("s_xdma_axi_aruser"), s_xdma_axi_arvalid("s_xdma_axi_arvalid"), s_xdma_axi_arready("s_xdma_axi_arready"), s_xdma_axi_rid("s_xdma_axi_rid"), s_xdma_axi_rdata("s_xdma_axi_rdata"), s_xdma_axi_rresp("s_xdma_axi_rresp"), s_xdma_axi_rlast("s_xdma_axi_rlast"), s_xdma_axi_ruser("s_xdma_axi_ruser"), s_xdma_axi_rvalid("s_xdma_axi_rvalid"), s_xdma_axi_rready("s_xdma_axi_rready"), s_xdma_axi_aclk("s_xdma_axi_aclk"), s_xdma_axi_aresetn("s_xdma_axi_aresetn")
{

  // initialize pins
  mp_impl->c0_ui_clk(c0_ui_clk);
  mp_impl->c0_ddr_saxi_aclk(c0_ddr_saxi_aclk);
  mp_impl->c0_ddr_saxi_aresetn(c0_ddr_saxi_aresetn);
  mp_impl->s_xdma_axi_aclk(s_xdma_axi_aclk);
  mp_impl->s_xdma_axi_aresetn(s_xdma_axi_aresetn);

  // initialize transactors
  mp_C0_DDR_SAXI_transactor = NULL;
  mp_S_XDMA_AXI_transactor = NULL;

  // initialize socket stubs

}

void pfm_dynamic_sim_ddr_3_0::before_end_of_elaboration()
{
  // configure 'C0_DDR_SAXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_sim_ddr_3_0", "C0_DDR_SAXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'C0_DDR_SAXI' transactor parameters
    xsc::common_cpp::properties C0_DDR_SAXI_transactor_param_props;
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    C0_DDR_SAXI_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    C0_DDR_SAXI_transactor_param_props.addLong("WIZ_MEMORY_SIZE", "64");
    C0_DDR_SAXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    C0_DDR_SAXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    C0_DDR_SAXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    C0_DDR_SAXI_transactor_param_props.addLong("ID_WIDTH", "5");
    C0_DDR_SAXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    C0_DDR_SAXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    C0_DDR_SAXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    C0_DDR_SAXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_BURST", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_LOCK", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_PROT", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_CACHE", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_QOS", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_REGION", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_BRESP", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_RRESP", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    C0_DDR_SAXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_SIZE", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_RESET", "1");
    C0_DDR_SAXI_transactor_param_props.addFloat("PHASE", "0.000");
    C0_DDR_SAXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    C0_DDR_SAXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    C0_DDR_SAXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    C0_DDR_SAXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_C0_DDR_SAXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,5,32,1,1,32,1>("C0_DDR_SAXI_transactor", C0_DDR_SAXI_transactor_param_props);

    // C0_DDR_SAXI' transactor ports

    mp_C0_DDR_SAXI_transactor->AWID(c0_ddr_saxi_awid);
    mp_C0_DDR_SAXI_transactor->AWADDR(c0_ddr_saxi_awaddr);
    mp_C0_DDR_SAXI_transactor->AWLEN(c0_ddr_saxi_awlen);
    mp_C0_DDR_SAXI_transactor->AWSIZE(c0_ddr_saxi_awsize);
    mp_C0_DDR_SAXI_transactor->AWBURST(c0_ddr_saxi_awburst);
    mp_C0_DDR_SAXI_transactor->AWLOCK(c0_ddr_saxi_awlock);
    mp_C0_DDR_SAXI_transactor->AWCACHE(c0_ddr_saxi_awcache);
    mp_C0_DDR_SAXI_transactor->AWPROT(c0_ddr_saxi_awprot);
    mp_C0_DDR_SAXI_transactor->AWREGION(c0_ddr_saxi_awregion);
    mp_C0_DDR_SAXI_transactor->AWQOS(c0_ddr_saxi_awqos);
    mp_C0_DDR_SAXI_transactor->AWUSER(c0_ddr_saxi_awuser);
    mp_C0_DDR_SAXI_transactor->AWVALID(c0_ddr_saxi_awvalid);
    mp_C0_DDR_SAXI_transactor->AWREADY(c0_ddr_saxi_awready);
    mp_C0_DDR_SAXI_transactor->WDATA(c0_ddr_saxi_wdata);
    mp_C0_DDR_SAXI_transactor->WSTRB(c0_ddr_saxi_wstrb);
    mp_C0_DDR_SAXI_transactor->WLAST(c0_ddr_saxi_wlast);
    mp_C0_DDR_SAXI_transactor->WUSER(c0_ddr_saxi_wuser);
    mp_C0_DDR_SAXI_transactor->WVALID(c0_ddr_saxi_wvalid);
    mp_C0_DDR_SAXI_transactor->WREADY(c0_ddr_saxi_wready);
    mp_C0_DDR_SAXI_transactor->BID(c0_ddr_saxi_bid);
    mp_C0_DDR_SAXI_transactor->BRESP(c0_ddr_saxi_bresp);
    mp_C0_DDR_SAXI_transactor->BUSER(c0_ddr_saxi_buser);
    mp_C0_DDR_SAXI_transactor->BVALID(c0_ddr_saxi_bvalid);
    mp_C0_DDR_SAXI_transactor->BREADY(c0_ddr_saxi_bready);
    mp_C0_DDR_SAXI_transactor->ARID(c0_ddr_saxi_arid);
    mp_C0_DDR_SAXI_transactor->ARADDR(c0_ddr_saxi_araddr);
    mp_C0_DDR_SAXI_transactor->ARLEN(c0_ddr_saxi_arlen);
    mp_C0_DDR_SAXI_transactor->ARSIZE(c0_ddr_saxi_arsize);
    mp_C0_DDR_SAXI_transactor->ARBURST(c0_ddr_saxi_arburst);
    mp_C0_DDR_SAXI_transactor->ARLOCK(c0_ddr_saxi_arlock);
    mp_C0_DDR_SAXI_transactor->ARCACHE(c0_ddr_saxi_arcache);
    mp_C0_DDR_SAXI_transactor->ARPROT(c0_ddr_saxi_arprot);
    mp_C0_DDR_SAXI_transactor->ARREGION(c0_ddr_saxi_arregion);
    mp_C0_DDR_SAXI_transactor->ARQOS(c0_ddr_saxi_arqos);
    mp_C0_DDR_SAXI_transactor->ARUSER(c0_ddr_saxi_aruser);
    mp_C0_DDR_SAXI_transactor->ARVALID(c0_ddr_saxi_arvalid);
    mp_C0_DDR_SAXI_transactor->ARREADY(c0_ddr_saxi_arready);
    mp_C0_DDR_SAXI_transactor->RID(c0_ddr_saxi_rid);
    mp_C0_DDR_SAXI_transactor->RDATA(c0_ddr_saxi_rdata);
    mp_C0_DDR_SAXI_transactor->RRESP(c0_ddr_saxi_rresp);
    mp_C0_DDR_SAXI_transactor->RLAST(c0_ddr_saxi_rlast);
    mp_C0_DDR_SAXI_transactor->RUSER(c0_ddr_saxi_ruser);
    mp_C0_DDR_SAXI_transactor->RVALID(c0_ddr_saxi_rvalid);
    mp_C0_DDR_SAXI_transactor->RREADY(c0_ddr_saxi_rready);
    mp_C0_DDR_SAXI_transactor->CLK(c0_ddr_saxi_aclk);
    mp_C0_DDR_SAXI_transactor->RST(c0_ddr_saxi_aresetn);

    // C0_DDR_SAXI' transactor sockets

    mp_impl->C0_DDR_SAXI_rd_socket->bind(*(mp_C0_DDR_SAXI_transactor->rd_socket));
    mp_impl->C0_DDR_SAXI_wr_socket->bind(*(mp_C0_DDR_SAXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_XDMA_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_sim_ddr_3_0", "S_XDMA_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_XDMA_AXI' transactor parameters
    xsc::common_cpp::properties S_XDMA_AXI_transactor_param_props;
    S_XDMA_AXI_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("WIZ_MEMORY_SIZE", "64");
    S_XDMA_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_XDMA_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S_XDMA_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    S_XDMA_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S_XDMA_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S_XDMA_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_XDMA_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_XDMA_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_XDMA_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_XDMA_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S_XDMA_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_XDMA_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_XDMA_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S_XDMA_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_XDMA_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,5,32,1,1,32,1>("S_XDMA_AXI_transactor", S_XDMA_AXI_transactor_param_props);

    // S_XDMA_AXI' transactor ports

    mp_S_XDMA_AXI_transactor->AWID(s_xdma_axi_awid);
    mp_S_XDMA_AXI_transactor->AWADDR(s_xdma_axi_awaddr);
    mp_S_XDMA_AXI_transactor->AWLEN(s_xdma_axi_awlen);
    mp_S_XDMA_AXI_transactor->AWSIZE(s_xdma_axi_awsize);
    mp_S_XDMA_AXI_transactor->AWBURST(s_xdma_axi_awburst);
    mp_S_XDMA_AXI_transactor->AWLOCK(s_xdma_axi_awlock);
    mp_S_XDMA_AXI_transactor->AWCACHE(s_xdma_axi_awcache);
    mp_S_XDMA_AXI_transactor->AWPROT(s_xdma_axi_awprot);
    mp_S_XDMA_AXI_transactor->AWREGION(s_xdma_axi_awregion);
    mp_S_XDMA_AXI_transactor->AWQOS(s_xdma_axi_awqos);
    mp_S_XDMA_AXI_transactor->AWUSER(s_xdma_axi_awuser);
    mp_S_XDMA_AXI_transactor->AWVALID(s_xdma_axi_awvalid);
    mp_S_XDMA_AXI_transactor->AWREADY(s_xdma_axi_awready);
    mp_S_XDMA_AXI_transactor->WDATA(s_xdma_axi_wdata);
    mp_S_XDMA_AXI_transactor->WSTRB(s_xdma_axi_wstrb);
    mp_S_XDMA_AXI_transactor->WLAST(s_xdma_axi_wlast);
    mp_S_XDMA_AXI_transactor->WUSER(s_xdma_axi_wuser);
    mp_S_XDMA_AXI_transactor->WVALID(s_xdma_axi_wvalid);
    mp_S_XDMA_AXI_transactor->WREADY(s_xdma_axi_wready);
    mp_S_XDMA_AXI_transactor->BID(s_xdma_axi_bid);
    mp_S_XDMA_AXI_transactor->BRESP(s_xdma_axi_bresp);
    mp_S_XDMA_AXI_transactor->BUSER(s_xdma_axi_buser);
    mp_S_XDMA_AXI_transactor->BVALID(s_xdma_axi_bvalid);
    mp_S_XDMA_AXI_transactor->BREADY(s_xdma_axi_bready);
    mp_S_XDMA_AXI_transactor->ARID(s_xdma_axi_arid);
    mp_S_XDMA_AXI_transactor->ARADDR(s_xdma_axi_araddr);
    mp_S_XDMA_AXI_transactor->ARLEN(s_xdma_axi_arlen);
    mp_S_XDMA_AXI_transactor->ARSIZE(s_xdma_axi_arsize);
    mp_S_XDMA_AXI_transactor->ARBURST(s_xdma_axi_arburst);
    mp_S_XDMA_AXI_transactor->ARLOCK(s_xdma_axi_arlock);
    mp_S_XDMA_AXI_transactor->ARCACHE(s_xdma_axi_arcache);
    mp_S_XDMA_AXI_transactor->ARPROT(s_xdma_axi_arprot);
    mp_S_XDMA_AXI_transactor->ARREGION(s_xdma_axi_arregion);
    mp_S_XDMA_AXI_transactor->ARQOS(s_xdma_axi_arqos);
    mp_S_XDMA_AXI_transactor->ARUSER(s_xdma_axi_aruser);
    mp_S_XDMA_AXI_transactor->ARVALID(s_xdma_axi_arvalid);
    mp_S_XDMA_AXI_transactor->ARREADY(s_xdma_axi_arready);
    mp_S_XDMA_AXI_transactor->RID(s_xdma_axi_rid);
    mp_S_XDMA_AXI_transactor->RDATA(s_xdma_axi_rdata);
    mp_S_XDMA_AXI_transactor->RRESP(s_xdma_axi_rresp);
    mp_S_XDMA_AXI_transactor->RLAST(s_xdma_axi_rlast);
    mp_S_XDMA_AXI_transactor->RUSER(s_xdma_axi_ruser);
    mp_S_XDMA_AXI_transactor->RVALID(s_xdma_axi_rvalid);
    mp_S_XDMA_AXI_transactor->RREADY(s_xdma_axi_rready);
    mp_S_XDMA_AXI_transactor->CLK(s_xdma_axi_aclk);
    mp_S_XDMA_AXI_transactor->RST(s_xdma_axi_aresetn);

    // S_XDMA_AXI' transactor sockets

    mp_impl->S_XDMA_AXI_rd_socket->bind(*(mp_S_XDMA_AXI_transactor->rd_socket));
    mp_impl->S_XDMA_AXI_wr_socket->bind(*(mp_S_XDMA_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
pfm_dynamic_sim_ddr_3_0::pfm_dynamic_sim_ddr_3_0(const sc_core::sc_module_name& nm) : pfm_dynamic_sim_ddr_3_0_sc(nm), c0_ui_clk("c0_ui_clk"), c0_ddr_saxi_awid("c0_ddr_saxi_awid"), c0_ddr_saxi_awaddr("c0_ddr_saxi_awaddr"), c0_ddr_saxi_awlen("c0_ddr_saxi_awlen"), c0_ddr_saxi_awsize("c0_ddr_saxi_awsize"), c0_ddr_saxi_awburst("c0_ddr_saxi_awburst"), c0_ddr_saxi_awlock("c0_ddr_saxi_awlock"), c0_ddr_saxi_awcache("c0_ddr_saxi_awcache"), c0_ddr_saxi_awprot("c0_ddr_saxi_awprot"), c0_ddr_saxi_awregion("c0_ddr_saxi_awregion"), c0_ddr_saxi_awqos("c0_ddr_saxi_awqos"), c0_ddr_saxi_awuser("c0_ddr_saxi_awuser"), c0_ddr_saxi_awvalid("c0_ddr_saxi_awvalid"), c0_ddr_saxi_awready("c0_ddr_saxi_awready"), c0_ddr_saxi_wdata("c0_ddr_saxi_wdata"), c0_ddr_saxi_wstrb("c0_ddr_saxi_wstrb"), c0_ddr_saxi_wlast("c0_ddr_saxi_wlast"), c0_ddr_saxi_wuser("c0_ddr_saxi_wuser"), c0_ddr_saxi_wvalid("c0_ddr_saxi_wvalid"), c0_ddr_saxi_wready("c0_ddr_saxi_wready"), c0_ddr_saxi_bid("c0_ddr_saxi_bid"), c0_ddr_saxi_bresp("c0_ddr_saxi_bresp"), c0_ddr_saxi_buser("c0_ddr_saxi_buser"), c0_ddr_saxi_bvalid("c0_ddr_saxi_bvalid"), c0_ddr_saxi_bready("c0_ddr_saxi_bready"), c0_ddr_saxi_arid("c0_ddr_saxi_arid"), c0_ddr_saxi_araddr("c0_ddr_saxi_araddr"), c0_ddr_saxi_arlen("c0_ddr_saxi_arlen"), c0_ddr_saxi_arsize("c0_ddr_saxi_arsize"), c0_ddr_saxi_arburst("c0_ddr_saxi_arburst"), c0_ddr_saxi_arlock("c0_ddr_saxi_arlock"), c0_ddr_saxi_arcache("c0_ddr_saxi_arcache"), c0_ddr_saxi_arprot("c0_ddr_saxi_arprot"), c0_ddr_saxi_arregion("c0_ddr_saxi_arregion"), c0_ddr_saxi_arqos("c0_ddr_saxi_arqos"), c0_ddr_saxi_aruser("c0_ddr_saxi_aruser"), c0_ddr_saxi_arvalid("c0_ddr_saxi_arvalid"), c0_ddr_saxi_arready("c0_ddr_saxi_arready"), c0_ddr_saxi_rid("c0_ddr_saxi_rid"), c0_ddr_saxi_rdata("c0_ddr_saxi_rdata"), c0_ddr_saxi_rresp("c0_ddr_saxi_rresp"), c0_ddr_saxi_rlast("c0_ddr_saxi_rlast"), c0_ddr_saxi_ruser("c0_ddr_saxi_ruser"), c0_ddr_saxi_rvalid("c0_ddr_saxi_rvalid"), c0_ddr_saxi_rready("c0_ddr_saxi_rready"), c0_ddr_saxi_aclk("c0_ddr_saxi_aclk"), c0_ddr_saxi_aresetn("c0_ddr_saxi_aresetn"), s_xdma_axi_awid("s_xdma_axi_awid"), s_xdma_axi_awaddr("s_xdma_axi_awaddr"), s_xdma_axi_awlen("s_xdma_axi_awlen"), s_xdma_axi_awsize("s_xdma_axi_awsize"), s_xdma_axi_awburst("s_xdma_axi_awburst"), s_xdma_axi_awlock("s_xdma_axi_awlock"), s_xdma_axi_awcache("s_xdma_axi_awcache"), s_xdma_axi_awprot("s_xdma_axi_awprot"), s_xdma_axi_awregion("s_xdma_axi_awregion"), s_xdma_axi_awqos("s_xdma_axi_awqos"), s_xdma_axi_awuser("s_xdma_axi_awuser"), s_xdma_axi_awvalid("s_xdma_axi_awvalid"), s_xdma_axi_awready("s_xdma_axi_awready"), s_xdma_axi_wdata("s_xdma_axi_wdata"), s_xdma_axi_wstrb("s_xdma_axi_wstrb"), s_xdma_axi_wlast("s_xdma_axi_wlast"), s_xdma_axi_wuser("s_xdma_axi_wuser"), s_xdma_axi_wvalid("s_xdma_axi_wvalid"), s_xdma_axi_wready("s_xdma_axi_wready"), s_xdma_axi_bid("s_xdma_axi_bid"), s_xdma_axi_bresp("s_xdma_axi_bresp"), s_xdma_axi_buser("s_xdma_axi_buser"), s_xdma_axi_bvalid("s_xdma_axi_bvalid"), s_xdma_axi_bready("s_xdma_axi_bready"), s_xdma_axi_arid("s_xdma_axi_arid"), s_xdma_axi_araddr("s_xdma_axi_araddr"), s_xdma_axi_arlen("s_xdma_axi_arlen"), s_xdma_axi_arsize("s_xdma_axi_arsize"), s_xdma_axi_arburst("s_xdma_axi_arburst"), s_xdma_axi_arlock("s_xdma_axi_arlock"), s_xdma_axi_arcache("s_xdma_axi_arcache"), s_xdma_axi_arprot("s_xdma_axi_arprot"), s_xdma_axi_arregion("s_xdma_axi_arregion"), s_xdma_axi_arqos("s_xdma_axi_arqos"), s_xdma_axi_aruser("s_xdma_axi_aruser"), s_xdma_axi_arvalid("s_xdma_axi_arvalid"), s_xdma_axi_arready("s_xdma_axi_arready"), s_xdma_axi_rid("s_xdma_axi_rid"), s_xdma_axi_rdata("s_xdma_axi_rdata"), s_xdma_axi_rresp("s_xdma_axi_rresp"), s_xdma_axi_rlast("s_xdma_axi_rlast"), s_xdma_axi_ruser("s_xdma_axi_ruser"), s_xdma_axi_rvalid("s_xdma_axi_rvalid"), s_xdma_axi_rready("s_xdma_axi_rready"), s_xdma_axi_aclk("s_xdma_axi_aclk"), s_xdma_axi_aresetn("s_xdma_axi_aresetn")
{

  // initialize pins
  mp_impl->c0_ui_clk(c0_ui_clk);
  mp_impl->c0_ddr_saxi_aclk(c0_ddr_saxi_aclk);
  mp_impl->c0_ddr_saxi_aresetn(c0_ddr_saxi_aresetn);
  mp_impl->s_xdma_axi_aclk(s_xdma_axi_aclk);
  mp_impl->s_xdma_axi_aresetn(s_xdma_axi_aresetn);

  // initialize transactors
  mp_C0_DDR_SAXI_transactor = NULL;
  mp_S_XDMA_AXI_transactor = NULL;

  // initialize socket stubs

}

void pfm_dynamic_sim_ddr_3_0::before_end_of_elaboration()
{
  // configure 'C0_DDR_SAXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_sim_ddr_3_0", "C0_DDR_SAXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'C0_DDR_SAXI' transactor parameters
    xsc::common_cpp::properties C0_DDR_SAXI_transactor_param_props;
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    C0_DDR_SAXI_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    C0_DDR_SAXI_transactor_param_props.addLong("WIZ_MEMORY_SIZE", "64");
    C0_DDR_SAXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    C0_DDR_SAXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    C0_DDR_SAXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    C0_DDR_SAXI_transactor_param_props.addLong("ID_WIDTH", "5");
    C0_DDR_SAXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    C0_DDR_SAXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    C0_DDR_SAXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    C0_DDR_SAXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_BURST", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_LOCK", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_PROT", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_CACHE", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_QOS", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_REGION", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_BRESP", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_RRESP", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    C0_DDR_SAXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_SIZE", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_RESET", "1");
    C0_DDR_SAXI_transactor_param_props.addFloat("PHASE", "0.000");
    C0_DDR_SAXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    C0_DDR_SAXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    C0_DDR_SAXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    C0_DDR_SAXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_C0_DDR_SAXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,5,32,1,1,32,1>("C0_DDR_SAXI_transactor", C0_DDR_SAXI_transactor_param_props);

    // C0_DDR_SAXI' transactor ports

    mp_C0_DDR_SAXI_transactor->AWID(c0_ddr_saxi_awid);
    mp_C0_DDR_SAXI_transactor->AWADDR(c0_ddr_saxi_awaddr);
    mp_C0_DDR_SAXI_transactor->AWLEN(c0_ddr_saxi_awlen);
    mp_C0_DDR_SAXI_transactor->AWSIZE(c0_ddr_saxi_awsize);
    mp_C0_DDR_SAXI_transactor->AWBURST(c0_ddr_saxi_awburst);
    mp_C0_DDR_SAXI_transactor->AWLOCK(c0_ddr_saxi_awlock);
    mp_C0_DDR_SAXI_transactor->AWCACHE(c0_ddr_saxi_awcache);
    mp_C0_DDR_SAXI_transactor->AWPROT(c0_ddr_saxi_awprot);
    mp_C0_DDR_SAXI_transactor->AWREGION(c0_ddr_saxi_awregion);
    mp_C0_DDR_SAXI_transactor->AWQOS(c0_ddr_saxi_awqos);
    mp_C0_DDR_SAXI_transactor->AWUSER(c0_ddr_saxi_awuser);
    mp_C0_DDR_SAXI_transactor->AWVALID(c0_ddr_saxi_awvalid);
    mp_C0_DDR_SAXI_transactor->AWREADY(c0_ddr_saxi_awready);
    mp_C0_DDR_SAXI_transactor->WDATA(c0_ddr_saxi_wdata);
    mp_C0_DDR_SAXI_transactor->WSTRB(c0_ddr_saxi_wstrb);
    mp_C0_DDR_SAXI_transactor->WLAST(c0_ddr_saxi_wlast);
    mp_C0_DDR_SAXI_transactor->WUSER(c0_ddr_saxi_wuser);
    mp_C0_DDR_SAXI_transactor->WVALID(c0_ddr_saxi_wvalid);
    mp_C0_DDR_SAXI_transactor->WREADY(c0_ddr_saxi_wready);
    mp_C0_DDR_SAXI_transactor->BID(c0_ddr_saxi_bid);
    mp_C0_DDR_SAXI_transactor->BRESP(c0_ddr_saxi_bresp);
    mp_C0_DDR_SAXI_transactor->BUSER(c0_ddr_saxi_buser);
    mp_C0_DDR_SAXI_transactor->BVALID(c0_ddr_saxi_bvalid);
    mp_C0_DDR_SAXI_transactor->BREADY(c0_ddr_saxi_bready);
    mp_C0_DDR_SAXI_transactor->ARID(c0_ddr_saxi_arid);
    mp_C0_DDR_SAXI_transactor->ARADDR(c0_ddr_saxi_araddr);
    mp_C0_DDR_SAXI_transactor->ARLEN(c0_ddr_saxi_arlen);
    mp_C0_DDR_SAXI_transactor->ARSIZE(c0_ddr_saxi_arsize);
    mp_C0_DDR_SAXI_transactor->ARBURST(c0_ddr_saxi_arburst);
    mp_C0_DDR_SAXI_transactor->ARLOCK(c0_ddr_saxi_arlock);
    mp_C0_DDR_SAXI_transactor->ARCACHE(c0_ddr_saxi_arcache);
    mp_C0_DDR_SAXI_transactor->ARPROT(c0_ddr_saxi_arprot);
    mp_C0_DDR_SAXI_transactor->ARREGION(c0_ddr_saxi_arregion);
    mp_C0_DDR_SAXI_transactor->ARQOS(c0_ddr_saxi_arqos);
    mp_C0_DDR_SAXI_transactor->ARUSER(c0_ddr_saxi_aruser);
    mp_C0_DDR_SAXI_transactor->ARVALID(c0_ddr_saxi_arvalid);
    mp_C0_DDR_SAXI_transactor->ARREADY(c0_ddr_saxi_arready);
    mp_C0_DDR_SAXI_transactor->RID(c0_ddr_saxi_rid);
    mp_C0_DDR_SAXI_transactor->RDATA(c0_ddr_saxi_rdata);
    mp_C0_DDR_SAXI_transactor->RRESP(c0_ddr_saxi_rresp);
    mp_C0_DDR_SAXI_transactor->RLAST(c0_ddr_saxi_rlast);
    mp_C0_DDR_SAXI_transactor->RUSER(c0_ddr_saxi_ruser);
    mp_C0_DDR_SAXI_transactor->RVALID(c0_ddr_saxi_rvalid);
    mp_C0_DDR_SAXI_transactor->RREADY(c0_ddr_saxi_rready);
    mp_C0_DDR_SAXI_transactor->CLK(c0_ddr_saxi_aclk);
    mp_C0_DDR_SAXI_transactor->RST(c0_ddr_saxi_aresetn);

    // C0_DDR_SAXI' transactor sockets

    mp_impl->C0_DDR_SAXI_rd_socket->bind(*(mp_C0_DDR_SAXI_transactor->rd_socket));
    mp_impl->C0_DDR_SAXI_wr_socket->bind(*(mp_C0_DDR_SAXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_XDMA_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_sim_ddr_3_0", "S_XDMA_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_XDMA_AXI' transactor parameters
    xsc::common_cpp::properties S_XDMA_AXI_transactor_param_props;
    S_XDMA_AXI_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("WIZ_MEMORY_SIZE", "64");
    S_XDMA_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_XDMA_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S_XDMA_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    S_XDMA_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S_XDMA_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S_XDMA_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_XDMA_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_XDMA_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_XDMA_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_XDMA_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S_XDMA_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_XDMA_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_XDMA_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S_XDMA_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_XDMA_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,5,32,1,1,32,1>("S_XDMA_AXI_transactor", S_XDMA_AXI_transactor_param_props);

    // S_XDMA_AXI' transactor ports

    mp_S_XDMA_AXI_transactor->AWID(s_xdma_axi_awid);
    mp_S_XDMA_AXI_transactor->AWADDR(s_xdma_axi_awaddr);
    mp_S_XDMA_AXI_transactor->AWLEN(s_xdma_axi_awlen);
    mp_S_XDMA_AXI_transactor->AWSIZE(s_xdma_axi_awsize);
    mp_S_XDMA_AXI_transactor->AWBURST(s_xdma_axi_awburst);
    mp_S_XDMA_AXI_transactor->AWLOCK(s_xdma_axi_awlock);
    mp_S_XDMA_AXI_transactor->AWCACHE(s_xdma_axi_awcache);
    mp_S_XDMA_AXI_transactor->AWPROT(s_xdma_axi_awprot);
    mp_S_XDMA_AXI_transactor->AWREGION(s_xdma_axi_awregion);
    mp_S_XDMA_AXI_transactor->AWQOS(s_xdma_axi_awqos);
    mp_S_XDMA_AXI_transactor->AWUSER(s_xdma_axi_awuser);
    mp_S_XDMA_AXI_transactor->AWVALID(s_xdma_axi_awvalid);
    mp_S_XDMA_AXI_transactor->AWREADY(s_xdma_axi_awready);
    mp_S_XDMA_AXI_transactor->WDATA(s_xdma_axi_wdata);
    mp_S_XDMA_AXI_transactor->WSTRB(s_xdma_axi_wstrb);
    mp_S_XDMA_AXI_transactor->WLAST(s_xdma_axi_wlast);
    mp_S_XDMA_AXI_transactor->WUSER(s_xdma_axi_wuser);
    mp_S_XDMA_AXI_transactor->WVALID(s_xdma_axi_wvalid);
    mp_S_XDMA_AXI_transactor->WREADY(s_xdma_axi_wready);
    mp_S_XDMA_AXI_transactor->BID(s_xdma_axi_bid);
    mp_S_XDMA_AXI_transactor->BRESP(s_xdma_axi_bresp);
    mp_S_XDMA_AXI_transactor->BUSER(s_xdma_axi_buser);
    mp_S_XDMA_AXI_transactor->BVALID(s_xdma_axi_bvalid);
    mp_S_XDMA_AXI_transactor->BREADY(s_xdma_axi_bready);
    mp_S_XDMA_AXI_transactor->ARID(s_xdma_axi_arid);
    mp_S_XDMA_AXI_transactor->ARADDR(s_xdma_axi_araddr);
    mp_S_XDMA_AXI_transactor->ARLEN(s_xdma_axi_arlen);
    mp_S_XDMA_AXI_transactor->ARSIZE(s_xdma_axi_arsize);
    mp_S_XDMA_AXI_transactor->ARBURST(s_xdma_axi_arburst);
    mp_S_XDMA_AXI_transactor->ARLOCK(s_xdma_axi_arlock);
    mp_S_XDMA_AXI_transactor->ARCACHE(s_xdma_axi_arcache);
    mp_S_XDMA_AXI_transactor->ARPROT(s_xdma_axi_arprot);
    mp_S_XDMA_AXI_transactor->ARREGION(s_xdma_axi_arregion);
    mp_S_XDMA_AXI_transactor->ARQOS(s_xdma_axi_arqos);
    mp_S_XDMA_AXI_transactor->ARUSER(s_xdma_axi_aruser);
    mp_S_XDMA_AXI_transactor->ARVALID(s_xdma_axi_arvalid);
    mp_S_XDMA_AXI_transactor->ARREADY(s_xdma_axi_arready);
    mp_S_XDMA_AXI_transactor->RID(s_xdma_axi_rid);
    mp_S_XDMA_AXI_transactor->RDATA(s_xdma_axi_rdata);
    mp_S_XDMA_AXI_transactor->RRESP(s_xdma_axi_rresp);
    mp_S_XDMA_AXI_transactor->RLAST(s_xdma_axi_rlast);
    mp_S_XDMA_AXI_transactor->RUSER(s_xdma_axi_ruser);
    mp_S_XDMA_AXI_transactor->RVALID(s_xdma_axi_rvalid);
    mp_S_XDMA_AXI_transactor->RREADY(s_xdma_axi_rready);
    mp_S_XDMA_AXI_transactor->CLK(s_xdma_axi_aclk);
    mp_S_XDMA_AXI_transactor->RST(s_xdma_axi_aresetn);

    // S_XDMA_AXI' transactor sockets

    mp_impl->S_XDMA_AXI_rd_socket->bind(*(mp_S_XDMA_AXI_transactor->rd_socket));
    mp_impl->S_XDMA_AXI_wr_socket->bind(*(mp_S_XDMA_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
pfm_dynamic_sim_ddr_3_0::pfm_dynamic_sim_ddr_3_0(const sc_core::sc_module_name& nm) : pfm_dynamic_sim_ddr_3_0_sc(nm),  c0_ui_clk("c0_ui_clk"), c0_ddr_saxi_awid("c0_ddr_saxi_awid"), c0_ddr_saxi_awaddr("c0_ddr_saxi_awaddr"), c0_ddr_saxi_awlen("c0_ddr_saxi_awlen"), c0_ddr_saxi_awsize("c0_ddr_saxi_awsize"), c0_ddr_saxi_awburst("c0_ddr_saxi_awburst"), c0_ddr_saxi_awlock("c0_ddr_saxi_awlock"), c0_ddr_saxi_awcache("c0_ddr_saxi_awcache"), c0_ddr_saxi_awprot("c0_ddr_saxi_awprot"), c0_ddr_saxi_awregion("c0_ddr_saxi_awregion"), c0_ddr_saxi_awqos("c0_ddr_saxi_awqos"), c0_ddr_saxi_awuser("c0_ddr_saxi_awuser"), c0_ddr_saxi_awvalid("c0_ddr_saxi_awvalid"), c0_ddr_saxi_awready("c0_ddr_saxi_awready"), c0_ddr_saxi_wdata("c0_ddr_saxi_wdata"), c0_ddr_saxi_wstrb("c0_ddr_saxi_wstrb"), c0_ddr_saxi_wlast("c0_ddr_saxi_wlast"), c0_ddr_saxi_wuser("c0_ddr_saxi_wuser"), c0_ddr_saxi_wvalid("c0_ddr_saxi_wvalid"), c0_ddr_saxi_wready("c0_ddr_saxi_wready"), c0_ddr_saxi_bid("c0_ddr_saxi_bid"), c0_ddr_saxi_bresp("c0_ddr_saxi_bresp"), c0_ddr_saxi_buser("c0_ddr_saxi_buser"), c0_ddr_saxi_bvalid("c0_ddr_saxi_bvalid"), c0_ddr_saxi_bready("c0_ddr_saxi_bready"), c0_ddr_saxi_arid("c0_ddr_saxi_arid"), c0_ddr_saxi_araddr("c0_ddr_saxi_araddr"), c0_ddr_saxi_arlen("c0_ddr_saxi_arlen"), c0_ddr_saxi_arsize("c0_ddr_saxi_arsize"), c0_ddr_saxi_arburst("c0_ddr_saxi_arburst"), c0_ddr_saxi_arlock("c0_ddr_saxi_arlock"), c0_ddr_saxi_arcache("c0_ddr_saxi_arcache"), c0_ddr_saxi_arprot("c0_ddr_saxi_arprot"), c0_ddr_saxi_arregion("c0_ddr_saxi_arregion"), c0_ddr_saxi_arqos("c0_ddr_saxi_arqos"), c0_ddr_saxi_aruser("c0_ddr_saxi_aruser"), c0_ddr_saxi_arvalid("c0_ddr_saxi_arvalid"), c0_ddr_saxi_arready("c0_ddr_saxi_arready"), c0_ddr_saxi_rid("c0_ddr_saxi_rid"), c0_ddr_saxi_rdata("c0_ddr_saxi_rdata"), c0_ddr_saxi_rresp("c0_ddr_saxi_rresp"), c0_ddr_saxi_rlast("c0_ddr_saxi_rlast"), c0_ddr_saxi_ruser("c0_ddr_saxi_ruser"), c0_ddr_saxi_rvalid("c0_ddr_saxi_rvalid"), c0_ddr_saxi_rready("c0_ddr_saxi_rready"), c0_ddr_saxi_aclk("c0_ddr_saxi_aclk"), c0_ddr_saxi_aresetn("c0_ddr_saxi_aresetn"), s_xdma_axi_awid("s_xdma_axi_awid"), s_xdma_axi_awaddr("s_xdma_axi_awaddr"), s_xdma_axi_awlen("s_xdma_axi_awlen"), s_xdma_axi_awsize("s_xdma_axi_awsize"), s_xdma_axi_awburst("s_xdma_axi_awburst"), s_xdma_axi_awlock("s_xdma_axi_awlock"), s_xdma_axi_awcache("s_xdma_axi_awcache"), s_xdma_axi_awprot("s_xdma_axi_awprot"), s_xdma_axi_awregion("s_xdma_axi_awregion"), s_xdma_axi_awqos("s_xdma_axi_awqos"), s_xdma_axi_awuser("s_xdma_axi_awuser"), s_xdma_axi_awvalid("s_xdma_axi_awvalid"), s_xdma_axi_awready("s_xdma_axi_awready"), s_xdma_axi_wdata("s_xdma_axi_wdata"), s_xdma_axi_wstrb("s_xdma_axi_wstrb"), s_xdma_axi_wlast("s_xdma_axi_wlast"), s_xdma_axi_wuser("s_xdma_axi_wuser"), s_xdma_axi_wvalid("s_xdma_axi_wvalid"), s_xdma_axi_wready("s_xdma_axi_wready"), s_xdma_axi_bid("s_xdma_axi_bid"), s_xdma_axi_bresp("s_xdma_axi_bresp"), s_xdma_axi_buser("s_xdma_axi_buser"), s_xdma_axi_bvalid("s_xdma_axi_bvalid"), s_xdma_axi_bready("s_xdma_axi_bready"), s_xdma_axi_arid("s_xdma_axi_arid"), s_xdma_axi_araddr("s_xdma_axi_araddr"), s_xdma_axi_arlen("s_xdma_axi_arlen"), s_xdma_axi_arsize("s_xdma_axi_arsize"), s_xdma_axi_arburst("s_xdma_axi_arburst"), s_xdma_axi_arlock("s_xdma_axi_arlock"), s_xdma_axi_arcache("s_xdma_axi_arcache"), s_xdma_axi_arprot("s_xdma_axi_arprot"), s_xdma_axi_arregion("s_xdma_axi_arregion"), s_xdma_axi_arqos("s_xdma_axi_arqos"), s_xdma_axi_aruser("s_xdma_axi_aruser"), s_xdma_axi_arvalid("s_xdma_axi_arvalid"), s_xdma_axi_arready("s_xdma_axi_arready"), s_xdma_axi_rid("s_xdma_axi_rid"), s_xdma_axi_rdata("s_xdma_axi_rdata"), s_xdma_axi_rresp("s_xdma_axi_rresp"), s_xdma_axi_rlast("s_xdma_axi_rlast"), s_xdma_axi_ruser("s_xdma_axi_ruser"), s_xdma_axi_rvalid("s_xdma_axi_rvalid"), s_xdma_axi_rready("s_xdma_axi_rready"), s_xdma_axi_aclk("s_xdma_axi_aclk"), s_xdma_axi_aresetn("s_xdma_axi_aresetn")
{
  // initialize pins
  mp_impl->c0_ui_clk(c0_ui_clk);
  mp_impl->c0_ddr_saxi_aclk(c0_ddr_saxi_aclk);
  mp_impl->c0_ddr_saxi_aresetn(c0_ddr_saxi_aresetn);
  mp_impl->s_xdma_axi_aclk(s_xdma_axi_aclk);
  mp_impl->s_xdma_axi_aresetn(s_xdma_axi_aresetn);

  // initialize transactors
  mp_C0_DDR_SAXI_transactor = NULL;
  mp_S_XDMA_AXI_transactor = NULL;

  // Instantiate Socket Stubs

  // configure C0_DDR_SAXI_transactor
    xsc::common_cpp::properties C0_DDR_SAXI_transactor_param_props;
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    C0_DDR_SAXI_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    C0_DDR_SAXI_transactor_param_props.addLong("WIZ_MEMORY_SIZE", "64");
    C0_DDR_SAXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    C0_DDR_SAXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    C0_DDR_SAXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    C0_DDR_SAXI_transactor_param_props.addLong("ID_WIDTH", "5");
    C0_DDR_SAXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    C0_DDR_SAXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    C0_DDR_SAXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    C0_DDR_SAXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_BURST", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_LOCK", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_PROT", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_CACHE", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_QOS", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_REGION", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_BRESP", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_RRESP", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    C0_DDR_SAXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_SIZE", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_RESET", "1");
    C0_DDR_SAXI_transactor_param_props.addFloat("PHASE", "0.000");
    C0_DDR_SAXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    C0_DDR_SAXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    C0_DDR_SAXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    C0_DDR_SAXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_C0_DDR_SAXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,5,32,1,1,32,1>("C0_DDR_SAXI_transactor", C0_DDR_SAXI_transactor_param_props);
  mp_C0_DDR_SAXI_transactor->AWID(c0_ddr_saxi_awid);
  mp_C0_DDR_SAXI_transactor->AWADDR(c0_ddr_saxi_awaddr);
  mp_C0_DDR_SAXI_transactor->AWLEN(c0_ddr_saxi_awlen);
  mp_C0_DDR_SAXI_transactor->AWSIZE(c0_ddr_saxi_awsize);
  mp_C0_DDR_SAXI_transactor->AWBURST(c0_ddr_saxi_awburst);
  mp_C0_DDR_SAXI_transactor->AWLOCK(c0_ddr_saxi_awlock);
  mp_C0_DDR_SAXI_transactor->AWCACHE(c0_ddr_saxi_awcache);
  mp_C0_DDR_SAXI_transactor->AWPROT(c0_ddr_saxi_awprot);
  mp_C0_DDR_SAXI_transactor->AWREGION(c0_ddr_saxi_awregion);
  mp_C0_DDR_SAXI_transactor->AWQOS(c0_ddr_saxi_awqos);
  mp_C0_DDR_SAXI_transactor->AWUSER(c0_ddr_saxi_awuser);
  mp_C0_DDR_SAXI_transactor->AWVALID(c0_ddr_saxi_awvalid);
  mp_C0_DDR_SAXI_transactor->AWREADY(c0_ddr_saxi_awready);
  mp_C0_DDR_SAXI_transactor->WDATA(c0_ddr_saxi_wdata);
  mp_C0_DDR_SAXI_transactor->WSTRB(c0_ddr_saxi_wstrb);
  mp_C0_DDR_SAXI_transactor->WLAST(c0_ddr_saxi_wlast);
  mp_C0_DDR_SAXI_transactor->WUSER(c0_ddr_saxi_wuser);
  mp_C0_DDR_SAXI_transactor->WVALID(c0_ddr_saxi_wvalid);
  mp_C0_DDR_SAXI_transactor->WREADY(c0_ddr_saxi_wready);
  mp_C0_DDR_SAXI_transactor->BID(c0_ddr_saxi_bid);
  mp_C0_DDR_SAXI_transactor->BRESP(c0_ddr_saxi_bresp);
  mp_C0_DDR_SAXI_transactor->BUSER(c0_ddr_saxi_buser);
  mp_C0_DDR_SAXI_transactor->BVALID(c0_ddr_saxi_bvalid);
  mp_C0_DDR_SAXI_transactor->BREADY(c0_ddr_saxi_bready);
  mp_C0_DDR_SAXI_transactor->ARID(c0_ddr_saxi_arid);
  mp_C0_DDR_SAXI_transactor->ARADDR(c0_ddr_saxi_araddr);
  mp_C0_DDR_SAXI_transactor->ARLEN(c0_ddr_saxi_arlen);
  mp_C0_DDR_SAXI_transactor->ARSIZE(c0_ddr_saxi_arsize);
  mp_C0_DDR_SAXI_transactor->ARBURST(c0_ddr_saxi_arburst);
  mp_C0_DDR_SAXI_transactor->ARLOCK(c0_ddr_saxi_arlock);
  mp_C0_DDR_SAXI_transactor->ARCACHE(c0_ddr_saxi_arcache);
  mp_C0_DDR_SAXI_transactor->ARPROT(c0_ddr_saxi_arprot);
  mp_C0_DDR_SAXI_transactor->ARREGION(c0_ddr_saxi_arregion);
  mp_C0_DDR_SAXI_transactor->ARQOS(c0_ddr_saxi_arqos);
  mp_C0_DDR_SAXI_transactor->ARUSER(c0_ddr_saxi_aruser);
  mp_C0_DDR_SAXI_transactor->ARVALID(c0_ddr_saxi_arvalid);
  mp_C0_DDR_SAXI_transactor->ARREADY(c0_ddr_saxi_arready);
  mp_C0_DDR_SAXI_transactor->RID(c0_ddr_saxi_rid);
  mp_C0_DDR_SAXI_transactor->RDATA(c0_ddr_saxi_rdata);
  mp_C0_DDR_SAXI_transactor->RRESP(c0_ddr_saxi_rresp);
  mp_C0_DDR_SAXI_transactor->RLAST(c0_ddr_saxi_rlast);
  mp_C0_DDR_SAXI_transactor->RUSER(c0_ddr_saxi_ruser);
  mp_C0_DDR_SAXI_transactor->RVALID(c0_ddr_saxi_rvalid);
  mp_C0_DDR_SAXI_transactor->RREADY(c0_ddr_saxi_rready);
  mp_C0_DDR_SAXI_transactor->CLK(c0_ddr_saxi_aclk);
  mp_C0_DDR_SAXI_transactor->RST(c0_ddr_saxi_aresetn);
  // configure S_XDMA_AXI_transactor
    xsc::common_cpp::properties S_XDMA_AXI_transactor_param_props;
    S_XDMA_AXI_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("WIZ_MEMORY_SIZE", "64");
    S_XDMA_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_XDMA_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S_XDMA_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    S_XDMA_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S_XDMA_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S_XDMA_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_XDMA_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_XDMA_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_XDMA_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_XDMA_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S_XDMA_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_XDMA_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_XDMA_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S_XDMA_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_XDMA_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,5,32,1,1,32,1>("S_XDMA_AXI_transactor", S_XDMA_AXI_transactor_param_props);
  mp_S_XDMA_AXI_transactor->AWID(s_xdma_axi_awid);
  mp_S_XDMA_AXI_transactor->AWADDR(s_xdma_axi_awaddr);
  mp_S_XDMA_AXI_transactor->AWLEN(s_xdma_axi_awlen);
  mp_S_XDMA_AXI_transactor->AWSIZE(s_xdma_axi_awsize);
  mp_S_XDMA_AXI_transactor->AWBURST(s_xdma_axi_awburst);
  mp_S_XDMA_AXI_transactor->AWLOCK(s_xdma_axi_awlock);
  mp_S_XDMA_AXI_transactor->AWCACHE(s_xdma_axi_awcache);
  mp_S_XDMA_AXI_transactor->AWPROT(s_xdma_axi_awprot);
  mp_S_XDMA_AXI_transactor->AWREGION(s_xdma_axi_awregion);
  mp_S_XDMA_AXI_transactor->AWQOS(s_xdma_axi_awqos);
  mp_S_XDMA_AXI_transactor->AWUSER(s_xdma_axi_awuser);
  mp_S_XDMA_AXI_transactor->AWVALID(s_xdma_axi_awvalid);
  mp_S_XDMA_AXI_transactor->AWREADY(s_xdma_axi_awready);
  mp_S_XDMA_AXI_transactor->WDATA(s_xdma_axi_wdata);
  mp_S_XDMA_AXI_transactor->WSTRB(s_xdma_axi_wstrb);
  mp_S_XDMA_AXI_transactor->WLAST(s_xdma_axi_wlast);
  mp_S_XDMA_AXI_transactor->WUSER(s_xdma_axi_wuser);
  mp_S_XDMA_AXI_transactor->WVALID(s_xdma_axi_wvalid);
  mp_S_XDMA_AXI_transactor->WREADY(s_xdma_axi_wready);
  mp_S_XDMA_AXI_transactor->BID(s_xdma_axi_bid);
  mp_S_XDMA_AXI_transactor->BRESP(s_xdma_axi_bresp);
  mp_S_XDMA_AXI_transactor->BUSER(s_xdma_axi_buser);
  mp_S_XDMA_AXI_transactor->BVALID(s_xdma_axi_bvalid);
  mp_S_XDMA_AXI_transactor->BREADY(s_xdma_axi_bready);
  mp_S_XDMA_AXI_transactor->ARID(s_xdma_axi_arid);
  mp_S_XDMA_AXI_transactor->ARADDR(s_xdma_axi_araddr);
  mp_S_XDMA_AXI_transactor->ARLEN(s_xdma_axi_arlen);
  mp_S_XDMA_AXI_transactor->ARSIZE(s_xdma_axi_arsize);
  mp_S_XDMA_AXI_transactor->ARBURST(s_xdma_axi_arburst);
  mp_S_XDMA_AXI_transactor->ARLOCK(s_xdma_axi_arlock);
  mp_S_XDMA_AXI_transactor->ARCACHE(s_xdma_axi_arcache);
  mp_S_XDMA_AXI_transactor->ARPROT(s_xdma_axi_arprot);
  mp_S_XDMA_AXI_transactor->ARREGION(s_xdma_axi_arregion);
  mp_S_XDMA_AXI_transactor->ARQOS(s_xdma_axi_arqos);
  mp_S_XDMA_AXI_transactor->ARUSER(s_xdma_axi_aruser);
  mp_S_XDMA_AXI_transactor->ARVALID(s_xdma_axi_arvalid);
  mp_S_XDMA_AXI_transactor->ARREADY(s_xdma_axi_arready);
  mp_S_XDMA_AXI_transactor->RID(s_xdma_axi_rid);
  mp_S_XDMA_AXI_transactor->RDATA(s_xdma_axi_rdata);
  mp_S_XDMA_AXI_transactor->RRESP(s_xdma_axi_rresp);
  mp_S_XDMA_AXI_transactor->RLAST(s_xdma_axi_rlast);
  mp_S_XDMA_AXI_transactor->RUSER(s_xdma_axi_ruser);
  mp_S_XDMA_AXI_transactor->RVALID(s_xdma_axi_rvalid);
  mp_S_XDMA_AXI_transactor->RREADY(s_xdma_axi_rready);
  mp_S_XDMA_AXI_transactor->CLK(s_xdma_axi_aclk);
  mp_S_XDMA_AXI_transactor->RST(s_xdma_axi_aresetn);

  // initialize transactors stubs
  C0_DDR_SAXI_transactor_target_wr_socket_stub = nullptr;
  C0_DDR_SAXI_transactor_target_rd_socket_stub = nullptr;
  S_XDMA_AXI_transactor_target_wr_socket_stub = nullptr;
  S_XDMA_AXI_transactor_target_rd_socket_stub = nullptr;

}

void pfm_dynamic_sim_ddr_3_0::before_end_of_elaboration()
{
  // configure 'C0_DDR_SAXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_sim_ddr_3_0", "C0_DDR_SAXI_TLM_MODE") != 1)
  {
    mp_impl->C0_DDR_SAXI_rd_socket->bind(*(mp_C0_DDR_SAXI_transactor->rd_socket));
    mp_impl->C0_DDR_SAXI_wr_socket->bind(*(mp_C0_DDR_SAXI_transactor->wr_socket));
  
  }
  else
  {
    C0_DDR_SAXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    C0_DDR_SAXI_transactor_target_wr_socket_stub->bind(*(mp_C0_DDR_SAXI_transactor->wr_socket));
    C0_DDR_SAXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    C0_DDR_SAXI_transactor_target_rd_socket_stub->bind(*(mp_C0_DDR_SAXI_transactor->rd_socket));
    mp_C0_DDR_SAXI_transactor->disable_transactor();
  }

  // configure 'S_XDMA_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_sim_ddr_3_0", "S_XDMA_AXI_TLM_MODE") != 1)
  {
    mp_impl->S_XDMA_AXI_rd_socket->bind(*(mp_S_XDMA_AXI_transactor->rd_socket));
    mp_impl->S_XDMA_AXI_wr_socket->bind(*(mp_S_XDMA_AXI_transactor->wr_socket));
  
  }
  else
  {
    S_XDMA_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S_XDMA_AXI_transactor_target_wr_socket_stub->bind(*(mp_S_XDMA_AXI_transactor->wr_socket));
    S_XDMA_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S_XDMA_AXI_transactor_target_rd_socket_stub->bind(*(mp_S_XDMA_AXI_transactor->rd_socket));
    mp_S_XDMA_AXI_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
pfm_dynamic_sim_ddr_3_0::pfm_dynamic_sim_ddr_3_0(const sc_core::sc_module_name& nm) : pfm_dynamic_sim_ddr_3_0_sc(nm), c0_ui_clk("c0_ui_clk"), c0_ddr_saxi_awid("c0_ddr_saxi_awid"), c0_ddr_saxi_awaddr("c0_ddr_saxi_awaddr"), c0_ddr_saxi_awlen("c0_ddr_saxi_awlen"), c0_ddr_saxi_awsize("c0_ddr_saxi_awsize"), c0_ddr_saxi_awburst("c0_ddr_saxi_awburst"), c0_ddr_saxi_awlock("c0_ddr_saxi_awlock"), c0_ddr_saxi_awcache("c0_ddr_saxi_awcache"), c0_ddr_saxi_awprot("c0_ddr_saxi_awprot"), c0_ddr_saxi_awregion("c0_ddr_saxi_awregion"), c0_ddr_saxi_awqos("c0_ddr_saxi_awqos"), c0_ddr_saxi_awuser("c0_ddr_saxi_awuser"), c0_ddr_saxi_awvalid("c0_ddr_saxi_awvalid"), c0_ddr_saxi_awready("c0_ddr_saxi_awready"), c0_ddr_saxi_wdata("c0_ddr_saxi_wdata"), c0_ddr_saxi_wstrb("c0_ddr_saxi_wstrb"), c0_ddr_saxi_wlast("c0_ddr_saxi_wlast"), c0_ddr_saxi_wuser("c0_ddr_saxi_wuser"), c0_ddr_saxi_wvalid("c0_ddr_saxi_wvalid"), c0_ddr_saxi_wready("c0_ddr_saxi_wready"), c0_ddr_saxi_bid("c0_ddr_saxi_bid"), c0_ddr_saxi_bresp("c0_ddr_saxi_bresp"), c0_ddr_saxi_buser("c0_ddr_saxi_buser"), c0_ddr_saxi_bvalid("c0_ddr_saxi_bvalid"), c0_ddr_saxi_bready("c0_ddr_saxi_bready"), c0_ddr_saxi_arid("c0_ddr_saxi_arid"), c0_ddr_saxi_araddr("c0_ddr_saxi_araddr"), c0_ddr_saxi_arlen("c0_ddr_saxi_arlen"), c0_ddr_saxi_arsize("c0_ddr_saxi_arsize"), c0_ddr_saxi_arburst("c0_ddr_saxi_arburst"), c0_ddr_saxi_arlock("c0_ddr_saxi_arlock"), c0_ddr_saxi_arcache("c0_ddr_saxi_arcache"), c0_ddr_saxi_arprot("c0_ddr_saxi_arprot"), c0_ddr_saxi_arregion("c0_ddr_saxi_arregion"), c0_ddr_saxi_arqos("c0_ddr_saxi_arqos"), c0_ddr_saxi_aruser("c0_ddr_saxi_aruser"), c0_ddr_saxi_arvalid("c0_ddr_saxi_arvalid"), c0_ddr_saxi_arready("c0_ddr_saxi_arready"), c0_ddr_saxi_rid("c0_ddr_saxi_rid"), c0_ddr_saxi_rdata("c0_ddr_saxi_rdata"), c0_ddr_saxi_rresp("c0_ddr_saxi_rresp"), c0_ddr_saxi_rlast("c0_ddr_saxi_rlast"), c0_ddr_saxi_ruser("c0_ddr_saxi_ruser"), c0_ddr_saxi_rvalid("c0_ddr_saxi_rvalid"), c0_ddr_saxi_rready("c0_ddr_saxi_rready"), c0_ddr_saxi_aclk("c0_ddr_saxi_aclk"), c0_ddr_saxi_aresetn("c0_ddr_saxi_aresetn"), s_xdma_axi_awid("s_xdma_axi_awid"), s_xdma_axi_awaddr("s_xdma_axi_awaddr"), s_xdma_axi_awlen("s_xdma_axi_awlen"), s_xdma_axi_awsize("s_xdma_axi_awsize"), s_xdma_axi_awburst("s_xdma_axi_awburst"), s_xdma_axi_awlock("s_xdma_axi_awlock"), s_xdma_axi_awcache("s_xdma_axi_awcache"), s_xdma_axi_awprot("s_xdma_axi_awprot"), s_xdma_axi_awregion("s_xdma_axi_awregion"), s_xdma_axi_awqos("s_xdma_axi_awqos"), s_xdma_axi_awuser("s_xdma_axi_awuser"), s_xdma_axi_awvalid("s_xdma_axi_awvalid"), s_xdma_axi_awready("s_xdma_axi_awready"), s_xdma_axi_wdata("s_xdma_axi_wdata"), s_xdma_axi_wstrb("s_xdma_axi_wstrb"), s_xdma_axi_wlast("s_xdma_axi_wlast"), s_xdma_axi_wuser("s_xdma_axi_wuser"), s_xdma_axi_wvalid("s_xdma_axi_wvalid"), s_xdma_axi_wready("s_xdma_axi_wready"), s_xdma_axi_bid("s_xdma_axi_bid"), s_xdma_axi_bresp("s_xdma_axi_bresp"), s_xdma_axi_buser("s_xdma_axi_buser"), s_xdma_axi_bvalid("s_xdma_axi_bvalid"), s_xdma_axi_bready("s_xdma_axi_bready"), s_xdma_axi_arid("s_xdma_axi_arid"), s_xdma_axi_araddr("s_xdma_axi_araddr"), s_xdma_axi_arlen("s_xdma_axi_arlen"), s_xdma_axi_arsize("s_xdma_axi_arsize"), s_xdma_axi_arburst("s_xdma_axi_arburst"), s_xdma_axi_arlock("s_xdma_axi_arlock"), s_xdma_axi_arcache("s_xdma_axi_arcache"), s_xdma_axi_arprot("s_xdma_axi_arprot"), s_xdma_axi_arregion("s_xdma_axi_arregion"), s_xdma_axi_arqos("s_xdma_axi_arqos"), s_xdma_axi_aruser("s_xdma_axi_aruser"), s_xdma_axi_arvalid("s_xdma_axi_arvalid"), s_xdma_axi_arready("s_xdma_axi_arready"), s_xdma_axi_rid("s_xdma_axi_rid"), s_xdma_axi_rdata("s_xdma_axi_rdata"), s_xdma_axi_rresp("s_xdma_axi_rresp"), s_xdma_axi_rlast("s_xdma_axi_rlast"), s_xdma_axi_ruser("s_xdma_axi_ruser"), s_xdma_axi_rvalid("s_xdma_axi_rvalid"), s_xdma_axi_rready("s_xdma_axi_rready"), s_xdma_axi_aclk("s_xdma_axi_aclk"), s_xdma_axi_aresetn("s_xdma_axi_aresetn")
{

  // initialize pins
  mp_impl->c0_ui_clk(c0_ui_clk);
  mp_impl->c0_ddr_saxi_aclk(c0_ddr_saxi_aclk);
  mp_impl->c0_ddr_saxi_aresetn(c0_ddr_saxi_aresetn);
  mp_impl->s_xdma_axi_aclk(s_xdma_axi_aclk);
  mp_impl->s_xdma_axi_aresetn(s_xdma_axi_aresetn);

  // initialize transactors
  mp_C0_DDR_SAXI_transactor = NULL;
  mp_S_XDMA_AXI_transactor = NULL;

  // initialize socket stubs

}

void pfm_dynamic_sim_ddr_3_0::before_end_of_elaboration()
{
  // configure 'C0_DDR_SAXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_sim_ddr_3_0", "C0_DDR_SAXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'C0_DDR_SAXI' transactor parameters
    xsc::common_cpp::properties C0_DDR_SAXI_transactor_param_props;
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    C0_DDR_SAXI_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    C0_DDR_SAXI_transactor_param_props.addLong("WIZ_MEMORY_SIZE", "64");
    C0_DDR_SAXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    C0_DDR_SAXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    C0_DDR_SAXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    C0_DDR_SAXI_transactor_param_props.addLong("ID_WIDTH", "5");
    C0_DDR_SAXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    C0_DDR_SAXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    C0_DDR_SAXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    C0_DDR_SAXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_BURST", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_LOCK", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_PROT", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_CACHE", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_QOS", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_REGION", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_BRESP", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_RRESP", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    C0_DDR_SAXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_SIZE", "1");
    C0_DDR_SAXI_transactor_param_props.addLong("HAS_RESET", "1");
    C0_DDR_SAXI_transactor_param_props.addFloat("PHASE", "0.000");
    C0_DDR_SAXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    C0_DDR_SAXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    C0_DDR_SAXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    C0_DDR_SAXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_C0_DDR_SAXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,34,5,32,1,1,32,1>("C0_DDR_SAXI_transactor", C0_DDR_SAXI_transactor_param_props);

    // C0_DDR_SAXI' transactor ports

    mp_C0_DDR_SAXI_transactor->AWID(c0_ddr_saxi_awid);
    mp_C0_DDR_SAXI_transactor->AWADDR(c0_ddr_saxi_awaddr);
    mp_C0_DDR_SAXI_transactor->AWLEN(c0_ddr_saxi_awlen);
    mp_C0_DDR_SAXI_transactor->AWSIZE(c0_ddr_saxi_awsize);
    mp_C0_DDR_SAXI_transactor->AWBURST(c0_ddr_saxi_awburst);
    mp_C0_DDR_SAXI_transactor->AWLOCK(c0_ddr_saxi_awlock);
    mp_C0_DDR_SAXI_transactor->AWCACHE(c0_ddr_saxi_awcache);
    mp_C0_DDR_SAXI_transactor->AWPROT(c0_ddr_saxi_awprot);
    mp_C0_DDR_SAXI_transactor->AWREGION(c0_ddr_saxi_awregion);
    mp_C0_DDR_SAXI_transactor->AWQOS(c0_ddr_saxi_awqos);
    mp_C0_DDR_SAXI_transactor->AWUSER(c0_ddr_saxi_awuser);
    mp_C0_DDR_SAXI_transactor->AWVALID(c0_ddr_saxi_awvalid);
    mp_C0_DDR_SAXI_transactor->AWREADY(c0_ddr_saxi_awready);
    mp_C0_DDR_SAXI_transactor->WDATA(c0_ddr_saxi_wdata);
    mp_C0_DDR_SAXI_transactor->WSTRB(c0_ddr_saxi_wstrb);
    mp_C0_DDR_SAXI_transactor->WLAST(c0_ddr_saxi_wlast);
    mp_C0_DDR_SAXI_transactor->WUSER(c0_ddr_saxi_wuser);
    mp_C0_DDR_SAXI_transactor->WVALID(c0_ddr_saxi_wvalid);
    mp_C0_DDR_SAXI_transactor->WREADY(c0_ddr_saxi_wready);
    mp_C0_DDR_SAXI_transactor->BID(c0_ddr_saxi_bid);
    mp_C0_DDR_SAXI_transactor->BRESP(c0_ddr_saxi_bresp);
    mp_C0_DDR_SAXI_transactor->BUSER(c0_ddr_saxi_buser);
    mp_C0_DDR_SAXI_transactor->BVALID(c0_ddr_saxi_bvalid);
    mp_C0_DDR_SAXI_transactor->BREADY(c0_ddr_saxi_bready);
    mp_C0_DDR_SAXI_transactor->ARID(c0_ddr_saxi_arid);
    mp_C0_DDR_SAXI_transactor->ARADDR(c0_ddr_saxi_araddr);
    mp_C0_DDR_SAXI_transactor->ARLEN(c0_ddr_saxi_arlen);
    mp_C0_DDR_SAXI_transactor->ARSIZE(c0_ddr_saxi_arsize);
    mp_C0_DDR_SAXI_transactor->ARBURST(c0_ddr_saxi_arburst);
    mp_C0_DDR_SAXI_transactor->ARLOCK(c0_ddr_saxi_arlock);
    mp_C0_DDR_SAXI_transactor->ARCACHE(c0_ddr_saxi_arcache);
    mp_C0_DDR_SAXI_transactor->ARPROT(c0_ddr_saxi_arprot);
    mp_C0_DDR_SAXI_transactor->ARREGION(c0_ddr_saxi_arregion);
    mp_C0_DDR_SAXI_transactor->ARQOS(c0_ddr_saxi_arqos);
    mp_C0_DDR_SAXI_transactor->ARUSER(c0_ddr_saxi_aruser);
    mp_C0_DDR_SAXI_transactor->ARVALID(c0_ddr_saxi_arvalid);
    mp_C0_DDR_SAXI_transactor->ARREADY(c0_ddr_saxi_arready);
    mp_C0_DDR_SAXI_transactor->RID(c0_ddr_saxi_rid);
    mp_C0_DDR_SAXI_transactor->RDATA(c0_ddr_saxi_rdata);
    mp_C0_DDR_SAXI_transactor->RRESP(c0_ddr_saxi_rresp);
    mp_C0_DDR_SAXI_transactor->RLAST(c0_ddr_saxi_rlast);
    mp_C0_DDR_SAXI_transactor->RUSER(c0_ddr_saxi_ruser);
    mp_C0_DDR_SAXI_transactor->RVALID(c0_ddr_saxi_rvalid);
    mp_C0_DDR_SAXI_transactor->RREADY(c0_ddr_saxi_rready);
    mp_C0_DDR_SAXI_transactor->CLK(c0_ddr_saxi_aclk);
    mp_C0_DDR_SAXI_transactor->RST(c0_ddr_saxi_aresetn);

    // C0_DDR_SAXI' transactor sockets

    mp_impl->C0_DDR_SAXI_rd_socket->bind(*(mp_C0_DDR_SAXI_transactor->rd_socket));
    mp_impl->C0_DDR_SAXI_wr_socket->bind(*(mp_C0_DDR_SAXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S_XDMA_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_sim_ddr_3_0", "S_XDMA_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S_XDMA_AXI' transactor parameters
    xsc::common_cpp::properties S_XDMA_AXI_transactor_param_props;
    S_XDMA_AXI_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("WIZ_MEMORY_SIZE", "64");
    S_XDMA_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S_XDMA_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S_XDMA_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    S_XDMA_AXI_transactor_param_props.addLong("ADDR_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    S_XDMA_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S_XDMA_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S_XDMA_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S_XDMA_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S_XDMA_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S_XDMA_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S_XDMA_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S_XDMA_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S_XDMA_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S_XDMA_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S_XDMA_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S_XDMA_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S_XDMA_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S_XDMA_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,32,5,32,1,1,32,1>("S_XDMA_AXI_transactor", S_XDMA_AXI_transactor_param_props);

    // S_XDMA_AXI' transactor ports

    mp_S_XDMA_AXI_transactor->AWID(s_xdma_axi_awid);
    mp_S_XDMA_AXI_transactor->AWADDR(s_xdma_axi_awaddr);
    mp_S_XDMA_AXI_transactor->AWLEN(s_xdma_axi_awlen);
    mp_S_XDMA_AXI_transactor->AWSIZE(s_xdma_axi_awsize);
    mp_S_XDMA_AXI_transactor->AWBURST(s_xdma_axi_awburst);
    mp_S_XDMA_AXI_transactor->AWLOCK(s_xdma_axi_awlock);
    mp_S_XDMA_AXI_transactor->AWCACHE(s_xdma_axi_awcache);
    mp_S_XDMA_AXI_transactor->AWPROT(s_xdma_axi_awprot);
    mp_S_XDMA_AXI_transactor->AWREGION(s_xdma_axi_awregion);
    mp_S_XDMA_AXI_transactor->AWQOS(s_xdma_axi_awqos);
    mp_S_XDMA_AXI_transactor->AWUSER(s_xdma_axi_awuser);
    mp_S_XDMA_AXI_transactor->AWVALID(s_xdma_axi_awvalid);
    mp_S_XDMA_AXI_transactor->AWREADY(s_xdma_axi_awready);
    mp_S_XDMA_AXI_transactor->WDATA(s_xdma_axi_wdata);
    mp_S_XDMA_AXI_transactor->WSTRB(s_xdma_axi_wstrb);
    mp_S_XDMA_AXI_transactor->WLAST(s_xdma_axi_wlast);
    mp_S_XDMA_AXI_transactor->WUSER(s_xdma_axi_wuser);
    mp_S_XDMA_AXI_transactor->WVALID(s_xdma_axi_wvalid);
    mp_S_XDMA_AXI_transactor->WREADY(s_xdma_axi_wready);
    mp_S_XDMA_AXI_transactor->BID(s_xdma_axi_bid);
    mp_S_XDMA_AXI_transactor->BRESP(s_xdma_axi_bresp);
    mp_S_XDMA_AXI_transactor->BUSER(s_xdma_axi_buser);
    mp_S_XDMA_AXI_transactor->BVALID(s_xdma_axi_bvalid);
    mp_S_XDMA_AXI_transactor->BREADY(s_xdma_axi_bready);
    mp_S_XDMA_AXI_transactor->ARID(s_xdma_axi_arid);
    mp_S_XDMA_AXI_transactor->ARADDR(s_xdma_axi_araddr);
    mp_S_XDMA_AXI_transactor->ARLEN(s_xdma_axi_arlen);
    mp_S_XDMA_AXI_transactor->ARSIZE(s_xdma_axi_arsize);
    mp_S_XDMA_AXI_transactor->ARBURST(s_xdma_axi_arburst);
    mp_S_XDMA_AXI_transactor->ARLOCK(s_xdma_axi_arlock);
    mp_S_XDMA_AXI_transactor->ARCACHE(s_xdma_axi_arcache);
    mp_S_XDMA_AXI_transactor->ARPROT(s_xdma_axi_arprot);
    mp_S_XDMA_AXI_transactor->ARREGION(s_xdma_axi_arregion);
    mp_S_XDMA_AXI_transactor->ARQOS(s_xdma_axi_arqos);
    mp_S_XDMA_AXI_transactor->ARUSER(s_xdma_axi_aruser);
    mp_S_XDMA_AXI_transactor->ARVALID(s_xdma_axi_arvalid);
    mp_S_XDMA_AXI_transactor->ARREADY(s_xdma_axi_arready);
    mp_S_XDMA_AXI_transactor->RID(s_xdma_axi_rid);
    mp_S_XDMA_AXI_transactor->RDATA(s_xdma_axi_rdata);
    mp_S_XDMA_AXI_transactor->RRESP(s_xdma_axi_rresp);
    mp_S_XDMA_AXI_transactor->RLAST(s_xdma_axi_rlast);
    mp_S_XDMA_AXI_transactor->RUSER(s_xdma_axi_ruser);
    mp_S_XDMA_AXI_transactor->RVALID(s_xdma_axi_rvalid);
    mp_S_XDMA_AXI_transactor->RREADY(s_xdma_axi_rready);
    mp_S_XDMA_AXI_transactor->CLK(s_xdma_axi_aclk);
    mp_S_XDMA_AXI_transactor->RST(s_xdma_axi_aresetn);

    // S_XDMA_AXI' transactor sockets

    mp_impl->S_XDMA_AXI_rd_socket->bind(*(mp_S_XDMA_AXI_transactor->rd_socket));
    mp_impl->S_XDMA_AXI_wr_socket->bind(*(mp_S_XDMA_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // MTI_SYSTEMC




pfm_dynamic_sim_ddr_3_0::~pfm_dynamic_sim_ddr_3_0()
{
  delete mp_C0_DDR_SAXI_transactor;

  delete mp_S_XDMA_AXI_transactor;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(pfm_dynamic_sim_ddr_3_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(pfm_dynamic_sim_ddr_3_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(pfm_dynamic_sim_ddr_3_0);
SC_REGISTER_BV(512);
#endif

