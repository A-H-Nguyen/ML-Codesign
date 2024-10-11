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


#include "emu_icn_pass_0_0_sc.h"

#include "emu_icn_pass_0_0.h"

#include "xtlm_simple_interconnect.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
emu_icn_pass_0_0::emu_icn_pass_0_0(const sc_core::sc_module_name& nm) : emu_icn_pass_0_0_sc(nm), s00_axi_awaddr("s00_axi_awaddr"), s00_axi_awlen("s00_axi_awlen"), s00_axi_awsize("s00_axi_awsize"), s00_axi_awburst("s00_axi_awburst"), s00_axi_awlock("s00_axi_awlock"), s00_axi_awcache("s00_axi_awcache"), s00_axi_awprot("s00_axi_awprot"), s00_axi_awregion("s00_axi_awregion"), s00_axi_awqos("s00_axi_awqos"), s00_axi_awvalid("s00_axi_awvalid"), s00_axi_awready("s00_axi_awready"), s00_axi_wdata("s00_axi_wdata"), s00_axi_wstrb("s00_axi_wstrb"), s00_axi_wlast("s00_axi_wlast"), s00_axi_wvalid("s00_axi_wvalid"), s00_axi_wready("s00_axi_wready"), s00_axi_bresp("s00_axi_bresp"), s00_axi_bvalid("s00_axi_bvalid"), s00_axi_bready("s00_axi_bready"), s00_axi_araddr("s00_axi_araddr"), s00_axi_arlen("s00_axi_arlen"), s00_axi_arsize("s00_axi_arsize"), s00_axi_arburst("s00_axi_arburst"), s00_axi_arlock("s00_axi_arlock"), s00_axi_arcache("s00_axi_arcache"), s00_axi_arprot("s00_axi_arprot"), s00_axi_arregion("s00_axi_arregion"), s00_axi_arqos("s00_axi_arqos"), s00_axi_arvalid("s00_axi_arvalid"), s00_axi_arready("s00_axi_arready"), s00_axi_rdata("s00_axi_rdata"), s00_axi_rresp("s00_axi_rresp"), s00_axi_rlast("s00_axi_rlast"), s00_axi_rvalid("s00_axi_rvalid"), s00_axi_rready("s00_axi_rready"), s00_axi_aclk("s00_axi_aclk"), s00_axi_aresetn("s00_axi_aresetn"), m00_axi_awid("m00_axi_awid"), m00_axi_awaddr("m00_axi_awaddr"), m00_axi_awlen("m00_axi_awlen"), m00_axi_awsize("m00_axi_awsize"), m00_axi_awburst("m00_axi_awburst"), m00_axi_awlock("m00_axi_awlock"), m00_axi_awcache("m00_axi_awcache"), m00_axi_awprot("m00_axi_awprot"), m00_axi_awqos("m00_axi_awqos"), m00_axi_awuser("m00_axi_awuser"), m00_axi_awvalid("m00_axi_awvalid"), m00_axi_awready("m00_axi_awready"), m00_axi_wdata("m00_axi_wdata"), m00_axi_wstrb("m00_axi_wstrb"), m00_axi_wlast("m00_axi_wlast"), m00_axi_wuser("m00_axi_wuser"), m00_axi_wvalid("m00_axi_wvalid"), m00_axi_wready("m00_axi_wready"), m00_axi_bid("m00_axi_bid"), m00_axi_bresp("m00_axi_bresp"), m00_axi_buser("m00_axi_buser"), m00_axi_bvalid("m00_axi_bvalid"), m00_axi_bready("m00_axi_bready"), m00_axi_arid("m00_axi_arid"), m00_axi_araddr("m00_axi_araddr"), m00_axi_arlen("m00_axi_arlen"), m00_axi_arsize("m00_axi_arsize"), m00_axi_arburst("m00_axi_arburst"), m00_axi_arlock("m00_axi_arlock"), m00_axi_arcache("m00_axi_arcache"), m00_axi_arprot("m00_axi_arprot"), m00_axi_arqos("m00_axi_arqos"), m00_axi_aruser("m00_axi_aruser"), m00_axi_arvalid("m00_axi_arvalid"), m00_axi_arready("m00_axi_arready"), m00_axi_rid("m00_axi_rid"), m00_axi_rdata("m00_axi_rdata"), m00_axi_rresp("m00_axi_rresp"), m00_axi_rlast("m00_axi_rlast"), m00_axi_ruser("m00_axi_ruser"), m00_axi_rvalid("m00_axi_rvalid"), m00_axi_rready("m00_axi_rready"), m00_axi_aclk("m00_axi_aclk"), m00_axi_aresetn("m00_axi_aresetn")
{

  // initialize pins
  mp_impl->s00_axi_aclk(s00_axi_aclk);
  mp_impl->s00_axi_aresetn(s00_axi_aresetn);
  mp_impl->m00_axi_aclk(m00_axi_aclk);
  mp_impl->m00_axi_aresetn(m00_axi_aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_M00_AXI_transactor = NULL;

  // initialize socket stubs

}

void emu_icn_pass_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_icn_pass_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "emu_ddr0_ui_clk_0_clk");
    S00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,64,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWADDR(s00_axi_awaddr);
    mp_S00_AXI_transactor->AWLEN(s00_axi_awlen);
    mp_S00_AXI_transactor->AWSIZE(s00_axi_awsize);
    mp_S00_AXI_transactor->AWBURST(s00_axi_awburst);
    mp_S00_AXI_transactor->AWLOCK(s00_axi_awlock);
    mp_S00_AXI_transactor->AWCACHE(s00_axi_awcache);
    mp_S00_AXI_transactor->AWPROT(s00_axi_awprot);
    mp_S00_AXI_transactor->AWREGION(s00_axi_awregion);
    mp_S00_AXI_transactor->AWQOS(s00_axi_awqos);
    mp_S00_AXI_transactor->AWVALID(s00_axi_awvalid);
    mp_S00_AXI_transactor->AWREADY(s00_axi_awready);
    mp_S00_AXI_transactor->WDATA(s00_axi_wdata);
    mp_S00_AXI_transactor->WSTRB(s00_axi_wstrb);
    mp_S00_AXI_transactor->WLAST(s00_axi_wlast);
    mp_S00_AXI_transactor->WVALID(s00_axi_wvalid);
    mp_S00_AXI_transactor->WREADY(s00_axi_wready);
    mp_S00_AXI_transactor->BRESP(s00_axi_bresp);
    mp_S00_AXI_transactor->BVALID(s00_axi_bvalid);
    mp_S00_AXI_transactor->BREADY(s00_axi_bready);
    mp_S00_AXI_transactor->ARADDR(s00_axi_araddr);
    mp_S00_AXI_transactor->ARLEN(s00_axi_arlen);
    mp_S00_AXI_transactor->ARSIZE(s00_axi_arsize);
    mp_S00_AXI_transactor->ARBURST(s00_axi_arburst);
    mp_S00_AXI_transactor->ARLOCK(s00_axi_arlock);
    mp_S00_AXI_transactor->ARCACHE(s00_axi_arcache);
    mp_S00_AXI_transactor->ARPROT(s00_axi_arprot);
    mp_S00_AXI_transactor->ARREGION(s00_axi_arregion);
    mp_S00_AXI_transactor->ARQOS(s00_axi_arqos);
    mp_S00_AXI_transactor->ARVALID(s00_axi_arvalid);
    mp_S00_AXI_transactor->ARREADY(s00_axi_arready);
    mp_S00_AXI_transactor->RDATA(s00_axi_rdata);
    mp_S00_AXI_transactor->RRESP(s00_axi_rresp);
    mp_S00_AXI_transactor->RLAST(s00_axi_rlast);
    mp_S00_AXI_transactor->RVALID(s00_axi_rvalid);
    mp_S00_AXI_transactor->RREADY(s00_axi_rready);
    mp_S00_AXI_transactor->CLK(s00_axi_aclk);
    mp_S00_AXI_transactor->RST(s00_axi_aresetn);

    // S00_AXI' transactor sockets

    mp_impl->target_0_rd_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->target_0_wr_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_icn_pass_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "emu_ddr0_ui_clk_0_clk");
    M00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWID(m00_axi_awid);
    mp_M00_AXI_transactor->AWADDR(m00_axi_awaddr);
    mp_M00_AXI_transactor->AWLEN(m00_axi_awlen);
    mp_M00_AXI_transactor->AWSIZE(m00_axi_awsize);
    mp_M00_AXI_transactor->AWBURST(m00_axi_awburst);
    mp_M00_AXI_transactor->AWLOCK(m00_axi_awlock);
    mp_M00_AXI_transactor->AWCACHE(m00_axi_awcache);
    mp_M00_AXI_transactor->AWPROT(m00_axi_awprot);
    mp_M00_AXI_transactor->AWQOS(m00_axi_awqos);
    mp_M00_AXI_transactor->AWUSER(m00_axi_awuser);
    mp_M00_AXI_transactor->AWVALID(m00_axi_awvalid);
    mp_M00_AXI_transactor->AWREADY(m00_axi_awready);
    mp_M00_AXI_transactor->WDATA(m00_axi_wdata);
    mp_M00_AXI_transactor->WSTRB(m00_axi_wstrb);
    mp_M00_AXI_transactor->WLAST(m00_axi_wlast);
    mp_M00_AXI_transactor->WUSER(m00_axi_wuser);
    mp_M00_AXI_transactor->WVALID(m00_axi_wvalid);
    mp_M00_AXI_transactor->WREADY(m00_axi_wready);
    mp_M00_AXI_transactor->BID(m00_axi_bid);
    mp_M00_AXI_transactor->BRESP(m00_axi_bresp);
    mp_M00_AXI_transactor->BUSER(m00_axi_buser);
    mp_M00_AXI_transactor->BVALID(m00_axi_bvalid);
    mp_M00_AXI_transactor->BREADY(m00_axi_bready);
    mp_M00_AXI_transactor->ARID(m00_axi_arid);
    mp_M00_AXI_transactor->ARADDR(m00_axi_araddr);
    mp_M00_AXI_transactor->ARLEN(m00_axi_arlen);
    mp_M00_AXI_transactor->ARSIZE(m00_axi_arsize);
    mp_M00_AXI_transactor->ARBURST(m00_axi_arburst);
    mp_M00_AXI_transactor->ARLOCK(m00_axi_arlock);
    mp_M00_AXI_transactor->ARCACHE(m00_axi_arcache);
    mp_M00_AXI_transactor->ARPROT(m00_axi_arprot);
    mp_M00_AXI_transactor->ARQOS(m00_axi_arqos);
    mp_M00_AXI_transactor->ARUSER(m00_axi_aruser);
    mp_M00_AXI_transactor->ARVALID(m00_axi_arvalid);
    mp_M00_AXI_transactor->ARREADY(m00_axi_arready);
    mp_M00_AXI_transactor->RID(m00_axi_rid);
    mp_M00_AXI_transactor->RDATA(m00_axi_rdata);
    mp_M00_AXI_transactor->RRESP(m00_axi_rresp);
    mp_M00_AXI_transactor->RLAST(m00_axi_rlast);
    mp_M00_AXI_transactor->RUSER(m00_axi_ruser);
    mp_M00_AXI_transactor->RVALID(m00_axi_rvalid);
    mp_M00_AXI_transactor->RREADY(m00_axi_rready);
    mp_M00_AXI_transactor->CLK(m00_axi_aclk);
    mp_M00_AXI_transactor->RST(m00_axi_aresetn);

    // M00_AXI' transactor sockets

    mp_impl->initiator_0_rd_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->initiator_0_wr_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
emu_icn_pass_0_0::emu_icn_pass_0_0(const sc_core::sc_module_name& nm) : emu_icn_pass_0_0_sc(nm), s00_axi_awaddr("s00_axi_awaddr"), s00_axi_awlen("s00_axi_awlen"), s00_axi_awsize("s00_axi_awsize"), s00_axi_awburst("s00_axi_awburst"), s00_axi_awlock("s00_axi_awlock"), s00_axi_awcache("s00_axi_awcache"), s00_axi_awprot("s00_axi_awprot"), s00_axi_awregion("s00_axi_awregion"), s00_axi_awqos("s00_axi_awqos"), s00_axi_awvalid("s00_axi_awvalid"), s00_axi_awready("s00_axi_awready"), s00_axi_wdata("s00_axi_wdata"), s00_axi_wstrb("s00_axi_wstrb"), s00_axi_wlast("s00_axi_wlast"), s00_axi_wvalid("s00_axi_wvalid"), s00_axi_wready("s00_axi_wready"), s00_axi_bresp("s00_axi_bresp"), s00_axi_bvalid("s00_axi_bvalid"), s00_axi_bready("s00_axi_bready"), s00_axi_araddr("s00_axi_araddr"), s00_axi_arlen("s00_axi_arlen"), s00_axi_arsize("s00_axi_arsize"), s00_axi_arburst("s00_axi_arburst"), s00_axi_arlock("s00_axi_arlock"), s00_axi_arcache("s00_axi_arcache"), s00_axi_arprot("s00_axi_arprot"), s00_axi_arregion("s00_axi_arregion"), s00_axi_arqos("s00_axi_arqos"), s00_axi_arvalid("s00_axi_arvalid"), s00_axi_arready("s00_axi_arready"), s00_axi_rdata("s00_axi_rdata"), s00_axi_rresp("s00_axi_rresp"), s00_axi_rlast("s00_axi_rlast"), s00_axi_rvalid("s00_axi_rvalid"), s00_axi_rready("s00_axi_rready"), s00_axi_aclk("s00_axi_aclk"), s00_axi_aresetn("s00_axi_aresetn"), m00_axi_awid("m00_axi_awid"), m00_axi_awaddr("m00_axi_awaddr"), m00_axi_awlen("m00_axi_awlen"), m00_axi_awsize("m00_axi_awsize"), m00_axi_awburst("m00_axi_awburst"), m00_axi_awlock("m00_axi_awlock"), m00_axi_awcache("m00_axi_awcache"), m00_axi_awprot("m00_axi_awprot"), m00_axi_awqos("m00_axi_awqos"), m00_axi_awuser("m00_axi_awuser"), m00_axi_awvalid("m00_axi_awvalid"), m00_axi_awready("m00_axi_awready"), m00_axi_wdata("m00_axi_wdata"), m00_axi_wstrb("m00_axi_wstrb"), m00_axi_wlast("m00_axi_wlast"), m00_axi_wuser("m00_axi_wuser"), m00_axi_wvalid("m00_axi_wvalid"), m00_axi_wready("m00_axi_wready"), m00_axi_bid("m00_axi_bid"), m00_axi_bresp("m00_axi_bresp"), m00_axi_buser("m00_axi_buser"), m00_axi_bvalid("m00_axi_bvalid"), m00_axi_bready("m00_axi_bready"), m00_axi_arid("m00_axi_arid"), m00_axi_araddr("m00_axi_araddr"), m00_axi_arlen("m00_axi_arlen"), m00_axi_arsize("m00_axi_arsize"), m00_axi_arburst("m00_axi_arburst"), m00_axi_arlock("m00_axi_arlock"), m00_axi_arcache("m00_axi_arcache"), m00_axi_arprot("m00_axi_arprot"), m00_axi_arqos("m00_axi_arqos"), m00_axi_aruser("m00_axi_aruser"), m00_axi_arvalid("m00_axi_arvalid"), m00_axi_arready("m00_axi_arready"), m00_axi_rid("m00_axi_rid"), m00_axi_rdata("m00_axi_rdata"), m00_axi_rresp("m00_axi_rresp"), m00_axi_rlast("m00_axi_rlast"), m00_axi_ruser("m00_axi_ruser"), m00_axi_rvalid("m00_axi_rvalid"), m00_axi_rready("m00_axi_rready"), m00_axi_aclk("m00_axi_aclk"), m00_axi_aresetn("m00_axi_aresetn")
{

  // initialize pins
  mp_impl->s00_axi_aclk(s00_axi_aclk);
  mp_impl->s00_axi_aresetn(s00_axi_aresetn);
  mp_impl->m00_axi_aclk(m00_axi_aclk);
  mp_impl->m00_axi_aresetn(m00_axi_aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_M00_AXI_transactor = NULL;

  // initialize socket stubs

}

void emu_icn_pass_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_icn_pass_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "emu_ddr0_ui_clk_0_clk");
    S00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,64,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWADDR(s00_axi_awaddr);
    mp_S00_AXI_transactor->AWLEN(s00_axi_awlen);
    mp_S00_AXI_transactor->AWSIZE(s00_axi_awsize);
    mp_S00_AXI_transactor->AWBURST(s00_axi_awburst);
    mp_S00_AXI_transactor->AWLOCK(s00_axi_awlock);
    mp_S00_AXI_transactor->AWCACHE(s00_axi_awcache);
    mp_S00_AXI_transactor->AWPROT(s00_axi_awprot);
    mp_S00_AXI_transactor->AWREGION(s00_axi_awregion);
    mp_S00_AXI_transactor->AWQOS(s00_axi_awqos);
    mp_S00_AXI_transactor->AWVALID(s00_axi_awvalid);
    mp_S00_AXI_transactor->AWREADY(s00_axi_awready);
    mp_S00_AXI_transactor->WDATA(s00_axi_wdata);
    mp_S00_AXI_transactor->WSTRB(s00_axi_wstrb);
    mp_S00_AXI_transactor->WLAST(s00_axi_wlast);
    mp_S00_AXI_transactor->WVALID(s00_axi_wvalid);
    mp_S00_AXI_transactor->WREADY(s00_axi_wready);
    mp_S00_AXI_transactor->BRESP(s00_axi_bresp);
    mp_S00_AXI_transactor->BVALID(s00_axi_bvalid);
    mp_S00_AXI_transactor->BREADY(s00_axi_bready);
    mp_S00_AXI_transactor->ARADDR(s00_axi_araddr);
    mp_S00_AXI_transactor->ARLEN(s00_axi_arlen);
    mp_S00_AXI_transactor->ARSIZE(s00_axi_arsize);
    mp_S00_AXI_transactor->ARBURST(s00_axi_arburst);
    mp_S00_AXI_transactor->ARLOCK(s00_axi_arlock);
    mp_S00_AXI_transactor->ARCACHE(s00_axi_arcache);
    mp_S00_AXI_transactor->ARPROT(s00_axi_arprot);
    mp_S00_AXI_transactor->ARREGION(s00_axi_arregion);
    mp_S00_AXI_transactor->ARQOS(s00_axi_arqos);
    mp_S00_AXI_transactor->ARVALID(s00_axi_arvalid);
    mp_S00_AXI_transactor->ARREADY(s00_axi_arready);
    mp_S00_AXI_transactor->RDATA(s00_axi_rdata);
    mp_S00_AXI_transactor->RRESP(s00_axi_rresp);
    mp_S00_AXI_transactor->RLAST(s00_axi_rlast);
    mp_S00_AXI_transactor->RVALID(s00_axi_rvalid);
    mp_S00_AXI_transactor->RREADY(s00_axi_rready);
    mp_S00_AXI_transactor->CLK(s00_axi_aclk);
    mp_S00_AXI_transactor->RST(s00_axi_aresetn);

    // S00_AXI' transactor sockets

    mp_impl->target_0_rd_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->target_0_wr_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_icn_pass_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "emu_ddr0_ui_clk_0_clk");
    M00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWID(m00_axi_awid);
    mp_M00_AXI_transactor->AWADDR(m00_axi_awaddr);
    mp_M00_AXI_transactor->AWLEN(m00_axi_awlen);
    mp_M00_AXI_transactor->AWSIZE(m00_axi_awsize);
    mp_M00_AXI_transactor->AWBURST(m00_axi_awburst);
    mp_M00_AXI_transactor->AWLOCK(m00_axi_awlock);
    mp_M00_AXI_transactor->AWCACHE(m00_axi_awcache);
    mp_M00_AXI_transactor->AWPROT(m00_axi_awprot);
    mp_M00_AXI_transactor->AWQOS(m00_axi_awqos);
    mp_M00_AXI_transactor->AWUSER(m00_axi_awuser);
    mp_M00_AXI_transactor->AWVALID(m00_axi_awvalid);
    mp_M00_AXI_transactor->AWREADY(m00_axi_awready);
    mp_M00_AXI_transactor->WDATA(m00_axi_wdata);
    mp_M00_AXI_transactor->WSTRB(m00_axi_wstrb);
    mp_M00_AXI_transactor->WLAST(m00_axi_wlast);
    mp_M00_AXI_transactor->WUSER(m00_axi_wuser);
    mp_M00_AXI_transactor->WVALID(m00_axi_wvalid);
    mp_M00_AXI_transactor->WREADY(m00_axi_wready);
    mp_M00_AXI_transactor->BID(m00_axi_bid);
    mp_M00_AXI_transactor->BRESP(m00_axi_bresp);
    mp_M00_AXI_transactor->BUSER(m00_axi_buser);
    mp_M00_AXI_transactor->BVALID(m00_axi_bvalid);
    mp_M00_AXI_transactor->BREADY(m00_axi_bready);
    mp_M00_AXI_transactor->ARID(m00_axi_arid);
    mp_M00_AXI_transactor->ARADDR(m00_axi_araddr);
    mp_M00_AXI_transactor->ARLEN(m00_axi_arlen);
    mp_M00_AXI_transactor->ARSIZE(m00_axi_arsize);
    mp_M00_AXI_transactor->ARBURST(m00_axi_arburst);
    mp_M00_AXI_transactor->ARLOCK(m00_axi_arlock);
    mp_M00_AXI_transactor->ARCACHE(m00_axi_arcache);
    mp_M00_AXI_transactor->ARPROT(m00_axi_arprot);
    mp_M00_AXI_transactor->ARQOS(m00_axi_arqos);
    mp_M00_AXI_transactor->ARUSER(m00_axi_aruser);
    mp_M00_AXI_transactor->ARVALID(m00_axi_arvalid);
    mp_M00_AXI_transactor->ARREADY(m00_axi_arready);
    mp_M00_AXI_transactor->RID(m00_axi_rid);
    mp_M00_AXI_transactor->RDATA(m00_axi_rdata);
    mp_M00_AXI_transactor->RRESP(m00_axi_rresp);
    mp_M00_AXI_transactor->RLAST(m00_axi_rlast);
    mp_M00_AXI_transactor->RUSER(m00_axi_ruser);
    mp_M00_AXI_transactor->RVALID(m00_axi_rvalid);
    mp_M00_AXI_transactor->RREADY(m00_axi_rready);
    mp_M00_AXI_transactor->CLK(m00_axi_aclk);
    mp_M00_AXI_transactor->RST(m00_axi_aresetn);

    // M00_AXI' transactor sockets

    mp_impl->initiator_0_rd_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->initiator_0_wr_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
emu_icn_pass_0_0::emu_icn_pass_0_0(const sc_core::sc_module_name& nm) : emu_icn_pass_0_0_sc(nm), s00_axi_awaddr("s00_axi_awaddr"), s00_axi_awlen("s00_axi_awlen"), s00_axi_awsize("s00_axi_awsize"), s00_axi_awburst("s00_axi_awburst"), s00_axi_awlock("s00_axi_awlock"), s00_axi_awcache("s00_axi_awcache"), s00_axi_awprot("s00_axi_awprot"), s00_axi_awregion("s00_axi_awregion"), s00_axi_awqos("s00_axi_awqos"), s00_axi_awvalid("s00_axi_awvalid"), s00_axi_awready("s00_axi_awready"), s00_axi_wdata("s00_axi_wdata"), s00_axi_wstrb("s00_axi_wstrb"), s00_axi_wlast("s00_axi_wlast"), s00_axi_wvalid("s00_axi_wvalid"), s00_axi_wready("s00_axi_wready"), s00_axi_bresp("s00_axi_bresp"), s00_axi_bvalid("s00_axi_bvalid"), s00_axi_bready("s00_axi_bready"), s00_axi_araddr("s00_axi_araddr"), s00_axi_arlen("s00_axi_arlen"), s00_axi_arsize("s00_axi_arsize"), s00_axi_arburst("s00_axi_arburst"), s00_axi_arlock("s00_axi_arlock"), s00_axi_arcache("s00_axi_arcache"), s00_axi_arprot("s00_axi_arprot"), s00_axi_arregion("s00_axi_arregion"), s00_axi_arqos("s00_axi_arqos"), s00_axi_arvalid("s00_axi_arvalid"), s00_axi_arready("s00_axi_arready"), s00_axi_rdata("s00_axi_rdata"), s00_axi_rresp("s00_axi_rresp"), s00_axi_rlast("s00_axi_rlast"), s00_axi_rvalid("s00_axi_rvalid"), s00_axi_rready("s00_axi_rready"), s00_axi_aclk("s00_axi_aclk"), s00_axi_aresetn("s00_axi_aresetn"), m00_axi_awid("m00_axi_awid"), m00_axi_awaddr("m00_axi_awaddr"), m00_axi_awlen("m00_axi_awlen"), m00_axi_awsize("m00_axi_awsize"), m00_axi_awburst("m00_axi_awburst"), m00_axi_awlock("m00_axi_awlock"), m00_axi_awcache("m00_axi_awcache"), m00_axi_awprot("m00_axi_awprot"), m00_axi_awqos("m00_axi_awqos"), m00_axi_awuser("m00_axi_awuser"), m00_axi_awvalid("m00_axi_awvalid"), m00_axi_awready("m00_axi_awready"), m00_axi_wdata("m00_axi_wdata"), m00_axi_wstrb("m00_axi_wstrb"), m00_axi_wlast("m00_axi_wlast"), m00_axi_wuser("m00_axi_wuser"), m00_axi_wvalid("m00_axi_wvalid"), m00_axi_wready("m00_axi_wready"), m00_axi_bid("m00_axi_bid"), m00_axi_bresp("m00_axi_bresp"), m00_axi_buser("m00_axi_buser"), m00_axi_bvalid("m00_axi_bvalid"), m00_axi_bready("m00_axi_bready"), m00_axi_arid("m00_axi_arid"), m00_axi_araddr("m00_axi_araddr"), m00_axi_arlen("m00_axi_arlen"), m00_axi_arsize("m00_axi_arsize"), m00_axi_arburst("m00_axi_arburst"), m00_axi_arlock("m00_axi_arlock"), m00_axi_arcache("m00_axi_arcache"), m00_axi_arprot("m00_axi_arprot"), m00_axi_arqos("m00_axi_arqos"), m00_axi_aruser("m00_axi_aruser"), m00_axi_arvalid("m00_axi_arvalid"), m00_axi_arready("m00_axi_arready"), m00_axi_rid("m00_axi_rid"), m00_axi_rdata("m00_axi_rdata"), m00_axi_rresp("m00_axi_rresp"), m00_axi_rlast("m00_axi_rlast"), m00_axi_ruser("m00_axi_ruser"), m00_axi_rvalid("m00_axi_rvalid"), m00_axi_rready("m00_axi_rready"), m00_axi_aclk("m00_axi_aclk"), m00_axi_aresetn("m00_axi_aresetn")
{

  // initialize pins
  mp_impl->s00_axi_aclk(s00_axi_aclk);
  mp_impl->s00_axi_aresetn(s00_axi_aresetn);
  mp_impl->m00_axi_aclk(m00_axi_aclk);
  mp_impl->m00_axi_aresetn(m00_axi_aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_M00_AXI_transactor = NULL;

  // initialize socket stubs

}

void emu_icn_pass_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_icn_pass_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "emu_ddr0_ui_clk_0_clk");
    S00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,64,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWADDR(s00_axi_awaddr);
    mp_S00_AXI_transactor->AWLEN(s00_axi_awlen);
    mp_S00_AXI_transactor->AWSIZE(s00_axi_awsize);
    mp_S00_AXI_transactor->AWBURST(s00_axi_awburst);
    mp_S00_AXI_transactor->AWLOCK(s00_axi_awlock);
    mp_S00_AXI_transactor->AWCACHE(s00_axi_awcache);
    mp_S00_AXI_transactor->AWPROT(s00_axi_awprot);
    mp_S00_AXI_transactor->AWREGION(s00_axi_awregion);
    mp_S00_AXI_transactor->AWQOS(s00_axi_awqos);
    mp_S00_AXI_transactor->AWVALID(s00_axi_awvalid);
    mp_S00_AXI_transactor->AWREADY(s00_axi_awready);
    mp_S00_AXI_transactor->WDATA(s00_axi_wdata);
    mp_S00_AXI_transactor->WSTRB(s00_axi_wstrb);
    mp_S00_AXI_transactor->WLAST(s00_axi_wlast);
    mp_S00_AXI_transactor->WVALID(s00_axi_wvalid);
    mp_S00_AXI_transactor->WREADY(s00_axi_wready);
    mp_S00_AXI_transactor->BRESP(s00_axi_bresp);
    mp_S00_AXI_transactor->BVALID(s00_axi_bvalid);
    mp_S00_AXI_transactor->BREADY(s00_axi_bready);
    mp_S00_AXI_transactor->ARADDR(s00_axi_araddr);
    mp_S00_AXI_transactor->ARLEN(s00_axi_arlen);
    mp_S00_AXI_transactor->ARSIZE(s00_axi_arsize);
    mp_S00_AXI_transactor->ARBURST(s00_axi_arburst);
    mp_S00_AXI_transactor->ARLOCK(s00_axi_arlock);
    mp_S00_AXI_transactor->ARCACHE(s00_axi_arcache);
    mp_S00_AXI_transactor->ARPROT(s00_axi_arprot);
    mp_S00_AXI_transactor->ARREGION(s00_axi_arregion);
    mp_S00_AXI_transactor->ARQOS(s00_axi_arqos);
    mp_S00_AXI_transactor->ARVALID(s00_axi_arvalid);
    mp_S00_AXI_transactor->ARREADY(s00_axi_arready);
    mp_S00_AXI_transactor->RDATA(s00_axi_rdata);
    mp_S00_AXI_transactor->RRESP(s00_axi_rresp);
    mp_S00_AXI_transactor->RLAST(s00_axi_rlast);
    mp_S00_AXI_transactor->RVALID(s00_axi_rvalid);
    mp_S00_AXI_transactor->RREADY(s00_axi_rready);
    mp_S00_AXI_transactor->CLK(s00_axi_aclk);
    mp_S00_AXI_transactor->RST(s00_axi_aresetn);

    // S00_AXI' transactor sockets

    mp_impl->target_0_rd_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->target_0_wr_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_icn_pass_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "emu_ddr0_ui_clk_0_clk");
    M00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWID(m00_axi_awid);
    mp_M00_AXI_transactor->AWADDR(m00_axi_awaddr);
    mp_M00_AXI_transactor->AWLEN(m00_axi_awlen);
    mp_M00_AXI_transactor->AWSIZE(m00_axi_awsize);
    mp_M00_AXI_transactor->AWBURST(m00_axi_awburst);
    mp_M00_AXI_transactor->AWLOCK(m00_axi_awlock);
    mp_M00_AXI_transactor->AWCACHE(m00_axi_awcache);
    mp_M00_AXI_transactor->AWPROT(m00_axi_awprot);
    mp_M00_AXI_transactor->AWQOS(m00_axi_awqos);
    mp_M00_AXI_transactor->AWUSER(m00_axi_awuser);
    mp_M00_AXI_transactor->AWVALID(m00_axi_awvalid);
    mp_M00_AXI_transactor->AWREADY(m00_axi_awready);
    mp_M00_AXI_transactor->WDATA(m00_axi_wdata);
    mp_M00_AXI_transactor->WSTRB(m00_axi_wstrb);
    mp_M00_AXI_transactor->WLAST(m00_axi_wlast);
    mp_M00_AXI_transactor->WUSER(m00_axi_wuser);
    mp_M00_AXI_transactor->WVALID(m00_axi_wvalid);
    mp_M00_AXI_transactor->WREADY(m00_axi_wready);
    mp_M00_AXI_transactor->BID(m00_axi_bid);
    mp_M00_AXI_transactor->BRESP(m00_axi_bresp);
    mp_M00_AXI_transactor->BUSER(m00_axi_buser);
    mp_M00_AXI_transactor->BVALID(m00_axi_bvalid);
    mp_M00_AXI_transactor->BREADY(m00_axi_bready);
    mp_M00_AXI_transactor->ARID(m00_axi_arid);
    mp_M00_AXI_transactor->ARADDR(m00_axi_araddr);
    mp_M00_AXI_transactor->ARLEN(m00_axi_arlen);
    mp_M00_AXI_transactor->ARSIZE(m00_axi_arsize);
    mp_M00_AXI_transactor->ARBURST(m00_axi_arburst);
    mp_M00_AXI_transactor->ARLOCK(m00_axi_arlock);
    mp_M00_AXI_transactor->ARCACHE(m00_axi_arcache);
    mp_M00_AXI_transactor->ARPROT(m00_axi_arprot);
    mp_M00_AXI_transactor->ARQOS(m00_axi_arqos);
    mp_M00_AXI_transactor->ARUSER(m00_axi_aruser);
    mp_M00_AXI_transactor->ARVALID(m00_axi_arvalid);
    mp_M00_AXI_transactor->ARREADY(m00_axi_arready);
    mp_M00_AXI_transactor->RID(m00_axi_rid);
    mp_M00_AXI_transactor->RDATA(m00_axi_rdata);
    mp_M00_AXI_transactor->RRESP(m00_axi_rresp);
    mp_M00_AXI_transactor->RLAST(m00_axi_rlast);
    mp_M00_AXI_transactor->RUSER(m00_axi_ruser);
    mp_M00_AXI_transactor->RVALID(m00_axi_rvalid);
    mp_M00_AXI_transactor->RREADY(m00_axi_rready);
    mp_M00_AXI_transactor->CLK(m00_axi_aclk);
    mp_M00_AXI_transactor->RST(m00_axi_aresetn);

    // M00_AXI' transactor sockets

    mp_impl->initiator_0_rd_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->initiator_0_wr_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
emu_icn_pass_0_0::emu_icn_pass_0_0(const sc_core::sc_module_name& nm) : emu_icn_pass_0_0_sc(nm),  s00_axi_awaddr("s00_axi_awaddr"), s00_axi_awlen("s00_axi_awlen"), s00_axi_awsize("s00_axi_awsize"), s00_axi_awburst("s00_axi_awburst"), s00_axi_awlock("s00_axi_awlock"), s00_axi_awcache("s00_axi_awcache"), s00_axi_awprot("s00_axi_awprot"), s00_axi_awregion("s00_axi_awregion"), s00_axi_awqos("s00_axi_awqos"), s00_axi_awvalid("s00_axi_awvalid"), s00_axi_awready("s00_axi_awready"), s00_axi_wdata("s00_axi_wdata"), s00_axi_wstrb("s00_axi_wstrb"), s00_axi_wlast("s00_axi_wlast"), s00_axi_wvalid("s00_axi_wvalid"), s00_axi_wready("s00_axi_wready"), s00_axi_bresp("s00_axi_bresp"), s00_axi_bvalid("s00_axi_bvalid"), s00_axi_bready("s00_axi_bready"), s00_axi_araddr("s00_axi_araddr"), s00_axi_arlen("s00_axi_arlen"), s00_axi_arsize("s00_axi_arsize"), s00_axi_arburst("s00_axi_arburst"), s00_axi_arlock("s00_axi_arlock"), s00_axi_arcache("s00_axi_arcache"), s00_axi_arprot("s00_axi_arprot"), s00_axi_arregion("s00_axi_arregion"), s00_axi_arqos("s00_axi_arqos"), s00_axi_arvalid("s00_axi_arvalid"), s00_axi_arready("s00_axi_arready"), s00_axi_rdata("s00_axi_rdata"), s00_axi_rresp("s00_axi_rresp"), s00_axi_rlast("s00_axi_rlast"), s00_axi_rvalid("s00_axi_rvalid"), s00_axi_rready("s00_axi_rready"), s00_axi_aclk("s00_axi_aclk"), s00_axi_aresetn("s00_axi_aresetn"), m00_axi_awid("m00_axi_awid"), m00_axi_awaddr("m00_axi_awaddr"), m00_axi_awlen("m00_axi_awlen"), m00_axi_awsize("m00_axi_awsize"), m00_axi_awburst("m00_axi_awburst"), m00_axi_awlock("m00_axi_awlock"), m00_axi_awcache("m00_axi_awcache"), m00_axi_awprot("m00_axi_awprot"), m00_axi_awqos("m00_axi_awqos"), m00_axi_awuser("m00_axi_awuser"), m00_axi_awvalid("m00_axi_awvalid"), m00_axi_awready("m00_axi_awready"), m00_axi_wdata("m00_axi_wdata"), m00_axi_wstrb("m00_axi_wstrb"), m00_axi_wlast("m00_axi_wlast"), m00_axi_wuser("m00_axi_wuser"), m00_axi_wvalid("m00_axi_wvalid"), m00_axi_wready("m00_axi_wready"), m00_axi_bid("m00_axi_bid"), m00_axi_bresp("m00_axi_bresp"), m00_axi_buser("m00_axi_buser"), m00_axi_bvalid("m00_axi_bvalid"), m00_axi_bready("m00_axi_bready"), m00_axi_arid("m00_axi_arid"), m00_axi_araddr("m00_axi_araddr"), m00_axi_arlen("m00_axi_arlen"), m00_axi_arsize("m00_axi_arsize"), m00_axi_arburst("m00_axi_arburst"), m00_axi_arlock("m00_axi_arlock"), m00_axi_arcache("m00_axi_arcache"), m00_axi_arprot("m00_axi_arprot"), m00_axi_arqos("m00_axi_arqos"), m00_axi_aruser("m00_axi_aruser"), m00_axi_arvalid("m00_axi_arvalid"), m00_axi_arready("m00_axi_arready"), m00_axi_rid("m00_axi_rid"), m00_axi_rdata("m00_axi_rdata"), m00_axi_rresp("m00_axi_rresp"), m00_axi_rlast("m00_axi_rlast"), m00_axi_ruser("m00_axi_ruser"), m00_axi_rvalid("m00_axi_rvalid"), m00_axi_rready("m00_axi_rready"), m00_axi_aclk("m00_axi_aclk"), m00_axi_aresetn("m00_axi_aresetn")
{
  // initialize pins
  mp_impl->s00_axi_aclk(s00_axi_aclk);
  mp_impl->s00_axi_aresetn(s00_axi_aresetn);
  mp_impl->m00_axi_aclk(m00_axi_aclk);
  mp_impl->m00_axi_aresetn(m00_axi_aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_M00_AXI_transactor = NULL;

  // Instantiate Socket Stubs

  // configure S00_AXI_transactor
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "emu_ddr0_ui_clk_0_clk");
    S00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,64,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);
  mp_S00_AXI_transactor->AWADDR(s00_axi_awaddr);
  mp_S00_AXI_transactor->AWLEN(s00_axi_awlen);
  mp_S00_AXI_transactor->AWSIZE(s00_axi_awsize);
  mp_S00_AXI_transactor->AWBURST(s00_axi_awburst);
  mp_S00_AXI_transactor->AWLOCK(s00_axi_awlock);
  mp_S00_AXI_transactor->AWCACHE(s00_axi_awcache);
  mp_S00_AXI_transactor->AWPROT(s00_axi_awprot);
  mp_S00_AXI_transactor->AWREGION(s00_axi_awregion);
  mp_S00_AXI_transactor->AWQOS(s00_axi_awqos);
  mp_S00_AXI_transactor->AWVALID(s00_axi_awvalid);
  mp_S00_AXI_transactor->AWREADY(s00_axi_awready);
  mp_S00_AXI_transactor->WDATA(s00_axi_wdata);
  mp_S00_AXI_transactor->WSTRB(s00_axi_wstrb);
  mp_S00_AXI_transactor->WLAST(s00_axi_wlast);
  mp_S00_AXI_transactor->WVALID(s00_axi_wvalid);
  mp_S00_AXI_transactor->WREADY(s00_axi_wready);
  mp_S00_AXI_transactor->BRESP(s00_axi_bresp);
  mp_S00_AXI_transactor->BVALID(s00_axi_bvalid);
  mp_S00_AXI_transactor->BREADY(s00_axi_bready);
  mp_S00_AXI_transactor->ARADDR(s00_axi_araddr);
  mp_S00_AXI_transactor->ARLEN(s00_axi_arlen);
  mp_S00_AXI_transactor->ARSIZE(s00_axi_arsize);
  mp_S00_AXI_transactor->ARBURST(s00_axi_arburst);
  mp_S00_AXI_transactor->ARLOCK(s00_axi_arlock);
  mp_S00_AXI_transactor->ARCACHE(s00_axi_arcache);
  mp_S00_AXI_transactor->ARPROT(s00_axi_arprot);
  mp_S00_AXI_transactor->ARREGION(s00_axi_arregion);
  mp_S00_AXI_transactor->ARQOS(s00_axi_arqos);
  mp_S00_AXI_transactor->ARVALID(s00_axi_arvalid);
  mp_S00_AXI_transactor->ARREADY(s00_axi_arready);
  mp_S00_AXI_transactor->RDATA(s00_axi_rdata);
  mp_S00_AXI_transactor->RRESP(s00_axi_rresp);
  mp_S00_AXI_transactor->RLAST(s00_axi_rlast);
  mp_S00_AXI_transactor->RVALID(s00_axi_rvalid);
  mp_S00_AXI_transactor->RREADY(s00_axi_rready);
  mp_S00_AXI_transactor->CLK(s00_axi_aclk);
  mp_S00_AXI_transactor->RST(s00_axi_aresetn);
  // configure M00_AXI_transactor
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "emu_ddr0_ui_clk_0_clk");
    M00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);
  mp_M00_AXI_transactor->AWID(m00_axi_awid);
  mp_M00_AXI_transactor->AWADDR(m00_axi_awaddr);
  mp_M00_AXI_transactor->AWLEN(m00_axi_awlen);
  mp_M00_AXI_transactor->AWSIZE(m00_axi_awsize);
  mp_M00_AXI_transactor->AWBURST(m00_axi_awburst);
  mp_M00_AXI_transactor->AWLOCK(m00_axi_awlock);
  mp_M00_AXI_transactor->AWCACHE(m00_axi_awcache);
  mp_M00_AXI_transactor->AWPROT(m00_axi_awprot);
  mp_M00_AXI_transactor->AWQOS(m00_axi_awqos);
  mp_M00_AXI_transactor->AWUSER(m00_axi_awuser);
  mp_M00_AXI_transactor->AWVALID(m00_axi_awvalid);
  mp_M00_AXI_transactor->AWREADY(m00_axi_awready);
  mp_M00_AXI_transactor->WDATA(m00_axi_wdata);
  mp_M00_AXI_transactor->WSTRB(m00_axi_wstrb);
  mp_M00_AXI_transactor->WLAST(m00_axi_wlast);
  mp_M00_AXI_transactor->WUSER(m00_axi_wuser);
  mp_M00_AXI_transactor->WVALID(m00_axi_wvalid);
  mp_M00_AXI_transactor->WREADY(m00_axi_wready);
  mp_M00_AXI_transactor->BID(m00_axi_bid);
  mp_M00_AXI_transactor->BRESP(m00_axi_bresp);
  mp_M00_AXI_transactor->BUSER(m00_axi_buser);
  mp_M00_AXI_transactor->BVALID(m00_axi_bvalid);
  mp_M00_AXI_transactor->BREADY(m00_axi_bready);
  mp_M00_AXI_transactor->ARID(m00_axi_arid);
  mp_M00_AXI_transactor->ARADDR(m00_axi_araddr);
  mp_M00_AXI_transactor->ARLEN(m00_axi_arlen);
  mp_M00_AXI_transactor->ARSIZE(m00_axi_arsize);
  mp_M00_AXI_transactor->ARBURST(m00_axi_arburst);
  mp_M00_AXI_transactor->ARLOCK(m00_axi_arlock);
  mp_M00_AXI_transactor->ARCACHE(m00_axi_arcache);
  mp_M00_AXI_transactor->ARPROT(m00_axi_arprot);
  mp_M00_AXI_transactor->ARQOS(m00_axi_arqos);
  mp_M00_AXI_transactor->ARUSER(m00_axi_aruser);
  mp_M00_AXI_transactor->ARVALID(m00_axi_arvalid);
  mp_M00_AXI_transactor->ARREADY(m00_axi_arready);
  mp_M00_AXI_transactor->RID(m00_axi_rid);
  mp_M00_AXI_transactor->RDATA(m00_axi_rdata);
  mp_M00_AXI_transactor->RRESP(m00_axi_rresp);
  mp_M00_AXI_transactor->RLAST(m00_axi_rlast);
  mp_M00_AXI_transactor->RUSER(m00_axi_ruser);
  mp_M00_AXI_transactor->RVALID(m00_axi_rvalid);
  mp_M00_AXI_transactor->RREADY(m00_axi_rready);
  mp_M00_AXI_transactor->CLK(m00_axi_aclk);
  mp_M00_AXI_transactor->RST(m00_axi_aresetn);

  // initialize transactors stubs
  S00_AXI_transactor_target_wr_socket_stub = nullptr;
  S00_AXI_transactor_target_rd_socket_stub = nullptr;
  M00_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M00_AXI_transactor_initiator_rd_socket_stub = nullptr;

}

void emu_icn_pass_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_icn_pass_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    mp_impl->target_0_rd_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->target_0_wr_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  
  }
  else
  {
    S00_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S00_AXI_transactor_target_wr_socket_stub->bind(*(mp_S00_AXI_transactor->wr_socket));
    S00_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S00_AXI_transactor_target_rd_socket_stub->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_S00_AXI_transactor->disable_transactor();
  }

  // configure 'M00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_icn_pass_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_0_rd_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->initiator_0_wr_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  
  }
  else
  {
    M00_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M00_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M00_AXI_transactor->wr_socket));
    M00_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M00_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_M00_AXI_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
emu_icn_pass_0_0::emu_icn_pass_0_0(const sc_core::sc_module_name& nm) : emu_icn_pass_0_0_sc(nm), s00_axi_awaddr("s00_axi_awaddr"), s00_axi_awlen("s00_axi_awlen"), s00_axi_awsize("s00_axi_awsize"), s00_axi_awburst("s00_axi_awburst"), s00_axi_awlock("s00_axi_awlock"), s00_axi_awcache("s00_axi_awcache"), s00_axi_awprot("s00_axi_awprot"), s00_axi_awregion("s00_axi_awregion"), s00_axi_awqos("s00_axi_awqos"), s00_axi_awvalid("s00_axi_awvalid"), s00_axi_awready("s00_axi_awready"), s00_axi_wdata("s00_axi_wdata"), s00_axi_wstrb("s00_axi_wstrb"), s00_axi_wlast("s00_axi_wlast"), s00_axi_wvalid("s00_axi_wvalid"), s00_axi_wready("s00_axi_wready"), s00_axi_bresp("s00_axi_bresp"), s00_axi_bvalid("s00_axi_bvalid"), s00_axi_bready("s00_axi_bready"), s00_axi_araddr("s00_axi_araddr"), s00_axi_arlen("s00_axi_arlen"), s00_axi_arsize("s00_axi_arsize"), s00_axi_arburst("s00_axi_arburst"), s00_axi_arlock("s00_axi_arlock"), s00_axi_arcache("s00_axi_arcache"), s00_axi_arprot("s00_axi_arprot"), s00_axi_arregion("s00_axi_arregion"), s00_axi_arqos("s00_axi_arqos"), s00_axi_arvalid("s00_axi_arvalid"), s00_axi_arready("s00_axi_arready"), s00_axi_rdata("s00_axi_rdata"), s00_axi_rresp("s00_axi_rresp"), s00_axi_rlast("s00_axi_rlast"), s00_axi_rvalid("s00_axi_rvalid"), s00_axi_rready("s00_axi_rready"), s00_axi_aclk("s00_axi_aclk"), s00_axi_aresetn("s00_axi_aresetn"), m00_axi_awid("m00_axi_awid"), m00_axi_awaddr("m00_axi_awaddr"), m00_axi_awlen("m00_axi_awlen"), m00_axi_awsize("m00_axi_awsize"), m00_axi_awburst("m00_axi_awburst"), m00_axi_awlock("m00_axi_awlock"), m00_axi_awcache("m00_axi_awcache"), m00_axi_awprot("m00_axi_awprot"), m00_axi_awqos("m00_axi_awqos"), m00_axi_awuser("m00_axi_awuser"), m00_axi_awvalid("m00_axi_awvalid"), m00_axi_awready("m00_axi_awready"), m00_axi_wdata("m00_axi_wdata"), m00_axi_wstrb("m00_axi_wstrb"), m00_axi_wlast("m00_axi_wlast"), m00_axi_wuser("m00_axi_wuser"), m00_axi_wvalid("m00_axi_wvalid"), m00_axi_wready("m00_axi_wready"), m00_axi_bid("m00_axi_bid"), m00_axi_bresp("m00_axi_bresp"), m00_axi_buser("m00_axi_buser"), m00_axi_bvalid("m00_axi_bvalid"), m00_axi_bready("m00_axi_bready"), m00_axi_arid("m00_axi_arid"), m00_axi_araddr("m00_axi_araddr"), m00_axi_arlen("m00_axi_arlen"), m00_axi_arsize("m00_axi_arsize"), m00_axi_arburst("m00_axi_arburst"), m00_axi_arlock("m00_axi_arlock"), m00_axi_arcache("m00_axi_arcache"), m00_axi_arprot("m00_axi_arprot"), m00_axi_arqos("m00_axi_arqos"), m00_axi_aruser("m00_axi_aruser"), m00_axi_arvalid("m00_axi_arvalid"), m00_axi_arready("m00_axi_arready"), m00_axi_rid("m00_axi_rid"), m00_axi_rdata("m00_axi_rdata"), m00_axi_rresp("m00_axi_rresp"), m00_axi_rlast("m00_axi_rlast"), m00_axi_ruser("m00_axi_ruser"), m00_axi_rvalid("m00_axi_rvalid"), m00_axi_rready("m00_axi_rready"), m00_axi_aclk("m00_axi_aclk"), m00_axi_aresetn("m00_axi_aresetn")
{

  // initialize pins
  mp_impl->s00_axi_aclk(s00_axi_aclk);
  mp_impl->s00_axi_aresetn(s00_axi_aresetn);
  mp_impl->m00_axi_aclk(m00_axi_aclk);
  mp_impl->m00_axi_aresetn(m00_axi_aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_M00_AXI_transactor = NULL;

  // initialize socket stubs

}

void emu_icn_pass_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_icn_pass_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "emu_ddr0_ui_clk_0_clk");
    S00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,64,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWADDR(s00_axi_awaddr);
    mp_S00_AXI_transactor->AWLEN(s00_axi_awlen);
    mp_S00_AXI_transactor->AWSIZE(s00_axi_awsize);
    mp_S00_AXI_transactor->AWBURST(s00_axi_awburst);
    mp_S00_AXI_transactor->AWLOCK(s00_axi_awlock);
    mp_S00_AXI_transactor->AWCACHE(s00_axi_awcache);
    mp_S00_AXI_transactor->AWPROT(s00_axi_awprot);
    mp_S00_AXI_transactor->AWREGION(s00_axi_awregion);
    mp_S00_AXI_transactor->AWQOS(s00_axi_awqos);
    mp_S00_AXI_transactor->AWVALID(s00_axi_awvalid);
    mp_S00_AXI_transactor->AWREADY(s00_axi_awready);
    mp_S00_AXI_transactor->WDATA(s00_axi_wdata);
    mp_S00_AXI_transactor->WSTRB(s00_axi_wstrb);
    mp_S00_AXI_transactor->WLAST(s00_axi_wlast);
    mp_S00_AXI_transactor->WVALID(s00_axi_wvalid);
    mp_S00_AXI_transactor->WREADY(s00_axi_wready);
    mp_S00_AXI_transactor->BRESP(s00_axi_bresp);
    mp_S00_AXI_transactor->BVALID(s00_axi_bvalid);
    mp_S00_AXI_transactor->BREADY(s00_axi_bready);
    mp_S00_AXI_transactor->ARADDR(s00_axi_araddr);
    mp_S00_AXI_transactor->ARLEN(s00_axi_arlen);
    mp_S00_AXI_transactor->ARSIZE(s00_axi_arsize);
    mp_S00_AXI_transactor->ARBURST(s00_axi_arburst);
    mp_S00_AXI_transactor->ARLOCK(s00_axi_arlock);
    mp_S00_AXI_transactor->ARCACHE(s00_axi_arcache);
    mp_S00_AXI_transactor->ARPROT(s00_axi_arprot);
    mp_S00_AXI_transactor->ARREGION(s00_axi_arregion);
    mp_S00_AXI_transactor->ARQOS(s00_axi_arqos);
    mp_S00_AXI_transactor->ARVALID(s00_axi_arvalid);
    mp_S00_AXI_transactor->ARREADY(s00_axi_arready);
    mp_S00_AXI_transactor->RDATA(s00_axi_rdata);
    mp_S00_AXI_transactor->RRESP(s00_axi_rresp);
    mp_S00_AXI_transactor->RLAST(s00_axi_rlast);
    mp_S00_AXI_transactor->RVALID(s00_axi_rvalid);
    mp_S00_AXI_transactor->RREADY(s00_axi_rready);
    mp_S00_AXI_transactor->CLK(s00_axi_aclk);
    mp_S00_AXI_transactor->RST(s00_axi_aresetn);

    // S00_AXI' transactor sockets

    mp_impl->target_0_rd_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->target_0_wr_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_icn_pass_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "emu_ddr0_ui_clk_0_clk");
    M00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,1,1,1,1,1,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWID(m00_axi_awid);
    mp_M00_AXI_transactor->AWADDR(m00_axi_awaddr);
    mp_M00_AXI_transactor->AWLEN(m00_axi_awlen);
    mp_M00_AXI_transactor->AWSIZE(m00_axi_awsize);
    mp_M00_AXI_transactor->AWBURST(m00_axi_awburst);
    mp_M00_AXI_transactor->AWLOCK(m00_axi_awlock);
    mp_M00_AXI_transactor->AWCACHE(m00_axi_awcache);
    mp_M00_AXI_transactor->AWPROT(m00_axi_awprot);
    mp_M00_AXI_transactor->AWQOS(m00_axi_awqos);
    mp_M00_AXI_transactor->AWUSER(m00_axi_awuser);
    mp_M00_AXI_transactor->AWVALID(m00_axi_awvalid);
    mp_M00_AXI_transactor->AWREADY(m00_axi_awready);
    mp_M00_AXI_transactor->WDATA(m00_axi_wdata);
    mp_M00_AXI_transactor->WSTRB(m00_axi_wstrb);
    mp_M00_AXI_transactor->WLAST(m00_axi_wlast);
    mp_M00_AXI_transactor->WUSER(m00_axi_wuser);
    mp_M00_AXI_transactor->WVALID(m00_axi_wvalid);
    mp_M00_AXI_transactor->WREADY(m00_axi_wready);
    mp_M00_AXI_transactor->BID(m00_axi_bid);
    mp_M00_AXI_transactor->BRESP(m00_axi_bresp);
    mp_M00_AXI_transactor->BUSER(m00_axi_buser);
    mp_M00_AXI_transactor->BVALID(m00_axi_bvalid);
    mp_M00_AXI_transactor->BREADY(m00_axi_bready);
    mp_M00_AXI_transactor->ARID(m00_axi_arid);
    mp_M00_AXI_transactor->ARADDR(m00_axi_araddr);
    mp_M00_AXI_transactor->ARLEN(m00_axi_arlen);
    mp_M00_AXI_transactor->ARSIZE(m00_axi_arsize);
    mp_M00_AXI_transactor->ARBURST(m00_axi_arburst);
    mp_M00_AXI_transactor->ARLOCK(m00_axi_arlock);
    mp_M00_AXI_transactor->ARCACHE(m00_axi_arcache);
    mp_M00_AXI_transactor->ARPROT(m00_axi_arprot);
    mp_M00_AXI_transactor->ARQOS(m00_axi_arqos);
    mp_M00_AXI_transactor->ARUSER(m00_axi_aruser);
    mp_M00_AXI_transactor->ARVALID(m00_axi_arvalid);
    mp_M00_AXI_transactor->ARREADY(m00_axi_arready);
    mp_M00_AXI_transactor->RID(m00_axi_rid);
    mp_M00_AXI_transactor->RDATA(m00_axi_rdata);
    mp_M00_AXI_transactor->RRESP(m00_axi_rresp);
    mp_M00_AXI_transactor->RLAST(m00_axi_rlast);
    mp_M00_AXI_transactor->RUSER(m00_axi_ruser);
    mp_M00_AXI_transactor->RVALID(m00_axi_rvalid);
    mp_M00_AXI_transactor->RREADY(m00_axi_rready);
    mp_M00_AXI_transactor->CLK(m00_axi_aclk);
    mp_M00_AXI_transactor->RST(m00_axi_aresetn);

    // M00_AXI' transactor sockets

    mp_impl->initiator_0_rd_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->initiator_0_wr_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // MTI_SYSTEMC




emu_icn_pass_0_0::~emu_icn_pass_0_0()
{
  delete mp_S00_AXI_transactor;

  delete mp_M00_AXI_transactor;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(emu_icn_pass_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(emu_icn_pass_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(emu_icn_pass_0_0);
SC_REGISTER_BV(512);
#endif

