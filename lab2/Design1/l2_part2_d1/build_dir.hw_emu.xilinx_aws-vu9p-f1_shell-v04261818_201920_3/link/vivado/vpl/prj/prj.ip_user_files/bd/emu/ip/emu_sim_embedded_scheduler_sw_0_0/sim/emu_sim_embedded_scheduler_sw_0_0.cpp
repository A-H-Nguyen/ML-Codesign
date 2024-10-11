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


#include "emu_sim_embedded_scheduler_sw_0_0_sc.h"

#include "emu_sim_embedded_scheduler_sw_0_0.h"

#include "sim_embedded_scheduler_sw.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
emu_sim_embedded_scheduler_sw_0_0::emu_sim_embedded_scheduler_sw_0_0(const sc_core::sc_module_name& nm) : emu_sim_embedded_scheduler_sw_0_0_sc(nm), saxi_lite_cq_awaddr("saxi_lite_cq_awaddr"), saxi_lite_cq_awprot("saxi_lite_cq_awprot"), saxi_lite_cq_awvalid("saxi_lite_cq_awvalid"), saxi_lite_cq_awready("saxi_lite_cq_awready"), saxi_lite_cq_wdata("saxi_lite_cq_wdata"), saxi_lite_cq_wstrb("saxi_lite_cq_wstrb"), saxi_lite_cq_wvalid("saxi_lite_cq_wvalid"), saxi_lite_cq_wready("saxi_lite_cq_wready"), saxi_lite_cq_bresp("saxi_lite_cq_bresp"), saxi_lite_cq_bvalid("saxi_lite_cq_bvalid"), saxi_lite_cq_bready("saxi_lite_cq_bready"), saxi_lite_cq_araddr("saxi_lite_cq_araddr"), saxi_lite_cq_arprot("saxi_lite_cq_arprot"), saxi_lite_cq_arvalid("saxi_lite_cq_arvalid"), saxi_lite_cq_arready("saxi_lite_cq_arready"), saxi_lite_cq_rdata("saxi_lite_cq_rdata"), saxi_lite_cq_rresp("saxi_lite_cq_rresp"), saxi_lite_cq_rvalid("saxi_lite_cq_rvalid"), saxi_lite_cq_rready("saxi_lite_cq_rready"), saxi_lite_cq_aclk("saxi_lite_cq_aclk"), saxi_lite_cq_aresetn("saxi_lite_cq_aresetn"), maxi_lite_mb_awaddr("maxi_lite_mb_awaddr"), maxi_lite_mb_awprot("maxi_lite_mb_awprot"), maxi_lite_mb_awvalid("maxi_lite_mb_awvalid"), maxi_lite_mb_awready("maxi_lite_mb_awready"), maxi_lite_mb_wdata("maxi_lite_mb_wdata"), maxi_lite_mb_wstrb("maxi_lite_mb_wstrb"), maxi_lite_mb_wvalid("maxi_lite_mb_wvalid"), maxi_lite_mb_wready("maxi_lite_mb_wready"), maxi_lite_mb_bresp("maxi_lite_mb_bresp"), maxi_lite_mb_bvalid("maxi_lite_mb_bvalid"), maxi_lite_mb_bready("maxi_lite_mb_bready"), maxi_lite_mb_araddr("maxi_lite_mb_araddr"), maxi_lite_mb_arprot("maxi_lite_mb_arprot"), maxi_lite_mb_arvalid("maxi_lite_mb_arvalid"), maxi_lite_mb_arready("maxi_lite_mb_arready"), maxi_lite_mb_rdata("maxi_lite_mb_rdata"), maxi_lite_mb_rresp("maxi_lite_mb_rresp"), maxi_lite_mb_rvalid("maxi_lite_mb_rvalid"), maxi_lite_mb_rready("maxi_lite_mb_rready"), maxi_lite_mb_aclk("maxi_lite_mb_aclk"), maxi_lite_mb_aresetn("maxi_lite_mb_aresetn"), irq("irq")
{

  // initialize pins
  mp_impl->saxi_lite_cq_aclk(saxi_lite_cq_aclk);
  mp_impl->saxi_lite_cq_aresetn(saxi_lite_cq_aresetn);
  mp_impl->maxi_lite_mb_aclk(maxi_lite_mb_aclk);
  mp_impl->maxi_lite_mb_aresetn(maxi_lite_mb_aresetn);
  mp_impl->irq(irq);

  // initialize transactors
  mp_saxi_lite_cq_transactor = NULL;
  mp_maxi_lite_mb_transactor = NULL;

  // initialize socket stubs

}

void emu_sim_embedded_scheduler_sw_0_0::before_end_of_elaboration()
{
  // configure 'saxi_lite_cq' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_embedded_scheduler_sw_0_0", "saxi_lite_cq_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'saxi_lite_cq' transactor parameters
    xsc::common_cpp::properties saxi_lite_cq_transactor_param_props;
    saxi_lite_cq_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    saxi_lite_cq_transactor_param_props.addLong("WIZ_NUM_REG", "4");
    saxi_lite_cq_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    saxi_lite_cq_transactor_param_props.addLong("DATA_WIDTH", "32");
    saxi_lite_cq_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    saxi_lite_cq_transactor_param_props.addLong("ID_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("ADDR_WIDTH", "64");
    saxi_lite_cq_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("WUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("RUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("BUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_BURST", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_LOCK", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_PROT", "1");
    saxi_lite_cq_transactor_param_props.addLong("HAS_CACHE", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_QOS", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_REGION", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_WSTRB", "1");
    saxi_lite_cq_transactor_param_props.addLong("HAS_BRESP", "1");
    saxi_lite_cq_transactor_param_props.addLong("HAS_RRESP", "1");
    saxi_lite_cq_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    saxi_lite_cq_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    saxi_lite_cq_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    saxi_lite_cq_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    saxi_lite_cq_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    saxi_lite_cq_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    saxi_lite_cq_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_SIZE", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_RESET", "1");
    saxi_lite_cq_transactor_param_props.addFloat("PHASE", "0.0");
    saxi_lite_cq_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    saxi_lite_cq_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    saxi_lite_cq_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    saxi_lite_cq_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_saxi_lite_cq_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("saxi_lite_cq_transactor", saxi_lite_cq_transactor_param_props);

    // saxi_lite_cq' transactor ports

    mp_saxi_lite_cq_transactor->AWADDR(saxi_lite_cq_awaddr);
    mp_saxi_lite_cq_transactor->AWPROT(saxi_lite_cq_awprot);
    mp_saxi_lite_cq_transactor->AWVALID(saxi_lite_cq_awvalid);
    mp_saxi_lite_cq_transactor->AWREADY(saxi_lite_cq_awready);
    mp_saxi_lite_cq_transactor->WDATA(saxi_lite_cq_wdata);
    mp_saxi_lite_cq_transactor->WSTRB(saxi_lite_cq_wstrb);
    mp_saxi_lite_cq_transactor->WVALID(saxi_lite_cq_wvalid);
    mp_saxi_lite_cq_transactor->WREADY(saxi_lite_cq_wready);
    mp_saxi_lite_cq_transactor->BRESP(saxi_lite_cq_bresp);
    mp_saxi_lite_cq_transactor->BVALID(saxi_lite_cq_bvalid);
    mp_saxi_lite_cq_transactor->BREADY(saxi_lite_cq_bready);
    mp_saxi_lite_cq_transactor->ARADDR(saxi_lite_cq_araddr);
    mp_saxi_lite_cq_transactor->ARPROT(saxi_lite_cq_arprot);
    mp_saxi_lite_cq_transactor->ARVALID(saxi_lite_cq_arvalid);
    mp_saxi_lite_cq_transactor->ARREADY(saxi_lite_cq_arready);
    mp_saxi_lite_cq_transactor->RDATA(saxi_lite_cq_rdata);
    mp_saxi_lite_cq_transactor->RRESP(saxi_lite_cq_rresp);
    mp_saxi_lite_cq_transactor->RVALID(saxi_lite_cq_rvalid);
    mp_saxi_lite_cq_transactor->RREADY(saxi_lite_cq_rready);
    mp_saxi_lite_cq_transactor->CLK(saxi_lite_cq_aclk);
    mp_saxi_lite_cq_transactor->RST(saxi_lite_cq_aresetn);

    // saxi_lite_cq' transactor sockets

    mp_impl->saxi_lite_cq_rd_socket->bind(*(mp_saxi_lite_cq_transactor->rd_socket));
    mp_impl->saxi_lite_cq_wr_socket->bind(*(mp_saxi_lite_cq_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'maxi_lite_mb' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_embedded_scheduler_sw_0_0", "maxi_lite_mb_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'maxi_lite_mb' transactor parameters
    xsc::common_cpp::properties maxi_lite_mb_transactor_param_props;
    maxi_lite_mb_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    maxi_lite_mb_transactor_param_props.addLong("ID_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ADDR_WIDTH", "64");
    maxi_lite_mb_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("BUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_LOCK", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_PROT", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_CACHE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_QOS", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_REGION", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_WSTRB", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_SIZE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RESET", "1");
    maxi_lite_mb_transactor_param_props.addFloat("PHASE", "0.0");
    maxi_lite_mb_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    maxi_lite_mb_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    maxi_lite_mb_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    maxi_lite_mb_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_maxi_lite_mb_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("maxi_lite_mb_transactor", maxi_lite_mb_transactor_param_props);

    // maxi_lite_mb' transactor ports

    mp_maxi_lite_mb_transactor->AWADDR(maxi_lite_mb_awaddr);
    mp_maxi_lite_mb_transactor->AWPROT(maxi_lite_mb_awprot);
    mp_maxi_lite_mb_transactor->AWVALID(maxi_lite_mb_awvalid);
    mp_maxi_lite_mb_transactor->AWREADY(maxi_lite_mb_awready);
    mp_maxi_lite_mb_transactor->WDATA(maxi_lite_mb_wdata);
    mp_maxi_lite_mb_transactor->WSTRB(maxi_lite_mb_wstrb);
    mp_maxi_lite_mb_transactor->WVALID(maxi_lite_mb_wvalid);
    mp_maxi_lite_mb_transactor->WREADY(maxi_lite_mb_wready);
    mp_maxi_lite_mb_transactor->BRESP(maxi_lite_mb_bresp);
    mp_maxi_lite_mb_transactor->BVALID(maxi_lite_mb_bvalid);
    mp_maxi_lite_mb_transactor->BREADY(maxi_lite_mb_bready);
    mp_maxi_lite_mb_transactor->ARADDR(maxi_lite_mb_araddr);
    mp_maxi_lite_mb_transactor->ARPROT(maxi_lite_mb_arprot);
    mp_maxi_lite_mb_transactor->ARVALID(maxi_lite_mb_arvalid);
    mp_maxi_lite_mb_transactor->ARREADY(maxi_lite_mb_arready);
    mp_maxi_lite_mb_transactor->RDATA(maxi_lite_mb_rdata);
    mp_maxi_lite_mb_transactor->RRESP(maxi_lite_mb_rresp);
    mp_maxi_lite_mb_transactor->RVALID(maxi_lite_mb_rvalid);
    mp_maxi_lite_mb_transactor->RREADY(maxi_lite_mb_rready);
    mp_maxi_lite_mb_transactor->CLK(maxi_lite_mb_aclk);
    mp_maxi_lite_mb_transactor->RST(maxi_lite_mb_aresetn);

    // maxi_lite_mb' transactor sockets

    mp_impl->maxi_lite_mb_rd_socket->bind(*(mp_maxi_lite_mb_transactor->rd_socket));
    mp_impl->maxi_lite_mb_wr_socket->bind(*(mp_maxi_lite_mb_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
emu_sim_embedded_scheduler_sw_0_0::emu_sim_embedded_scheduler_sw_0_0(const sc_core::sc_module_name& nm) : emu_sim_embedded_scheduler_sw_0_0_sc(nm), saxi_lite_cq_awaddr("saxi_lite_cq_awaddr"), saxi_lite_cq_awprot("saxi_lite_cq_awprot"), saxi_lite_cq_awvalid("saxi_lite_cq_awvalid"), saxi_lite_cq_awready("saxi_lite_cq_awready"), saxi_lite_cq_wdata("saxi_lite_cq_wdata"), saxi_lite_cq_wstrb("saxi_lite_cq_wstrb"), saxi_lite_cq_wvalid("saxi_lite_cq_wvalid"), saxi_lite_cq_wready("saxi_lite_cq_wready"), saxi_lite_cq_bresp("saxi_lite_cq_bresp"), saxi_lite_cq_bvalid("saxi_lite_cq_bvalid"), saxi_lite_cq_bready("saxi_lite_cq_bready"), saxi_lite_cq_araddr("saxi_lite_cq_araddr"), saxi_lite_cq_arprot("saxi_lite_cq_arprot"), saxi_lite_cq_arvalid("saxi_lite_cq_arvalid"), saxi_lite_cq_arready("saxi_lite_cq_arready"), saxi_lite_cq_rdata("saxi_lite_cq_rdata"), saxi_lite_cq_rresp("saxi_lite_cq_rresp"), saxi_lite_cq_rvalid("saxi_lite_cq_rvalid"), saxi_lite_cq_rready("saxi_lite_cq_rready"), saxi_lite_cq_aclk("saxi_lite_cq_aclk"), saxi_lite_cq_aresetn("saxi_lite_cq_aresetn"), maxi_lite_mb_awaddr("maxi_lite_mb_awaddr"), maxi_lite_mb_awprot("maxi_lite_mb_awprot"), maxi_lite_mb_awvalid("maxi_lite_mb_awvalid"), maxi_lite_mb_awready("maxi_lite_mb_awready"), maxi_lite_mb_wdata("maxi_lite_mb_wdata"), maxi_lite_mb_wstrb("maxi_lite_mb_wstrb"), maxi_lite_mb_wvalid("maxi_lite_mb_wvalid"), maxi_lite_mb_wready("maxi_lite_mb_wready"), maxi_lite_mb_bresp("maxi_lite_mb_bresp"), maxi_lite_mb_bvalid("maxi_lite_mb_bvalid"), maxi_lite_mb_bready("maxi_lite_mb_bready"), maxi_lite_mb_araddr("maxi_lite_mb_araddr"), maxi_lite_mb_arprot("maxi_lite_mb_arprot"), maxi_lite_mb_arvalid("maxi_lite_mb_arvalid"), maxi_lite_mb_arready("maxi_lite_mb_arready"), maxi_lite_mb_rdata("maxi_lite_mb_rdata"), maxi_lite_mb_rresp("maxi_lite_mb_rresp"), maxi_lite_mb_rvalid("maxi_lite_mb_rvalid"), maxi_lite_mb_rready("maxi_lite_mb_rready"), maxi_lite_mb_aclk("maxi_lite_mb_aclk"), maxi_lite_mb_aresetn("maxi_lite_mb_aresetn"), irq("irq")
{

  // initialize pins
  mp_impl->saxi_lite_cq_aclk(saxi_lite_cq_aclk);
  mp_impl->saxi_lite_cq_aresetn(saxi_lite_cq_aresetn);
  mp_impl->maxi_lite_mb_aclk(maxi_lite_mb_aclk);
  mp_impl->maxi_lite_mb_aresetn(maxi_lite_mb_aresetn);
  mp_impl->irq(irq);

  // initialize transactors
  mp_saxi_lite_cq_transactor = NULL;
  mp_maxi_lite_mb_transactor = NULL;

  // initialize socket stubs

}

void emu_sim_embedded_scheduler_sw_0_0::before_end_of_elaboration()
{
  // configure 'saxi_lite_cq' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_embedded_scheduler_sw_0_0", "saxi_lite_cq_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'saxi_lite_cq' transactor parameters
    xsc::common_cpp::properties saxi_lite_cq_transactor_param_props;
    saxi_lite_cq_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    saxi_lite_cq_transactor_param_props.addLong("WIZ_NUM_REG", "4");
    saxi_lite_cq_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    saxi_lite_cq_transactor_param_props.addLong("DATA_WIDTH", "32");
    saxi_lite_cq_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    saxi_lite_cq_transactor_param_props.addLong("ID_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("ADDR_WIDTH", "64");
    saxi_lite_cq_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("WUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("RUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("BUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_BURST", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_LOCK", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_PROT", "1");
    saxi_lite_cq_transactor_param_props.addLong("HAS_CACHE", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_QOS", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_REGION", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_WSTRB", "1");
    saxi_lite_cq_transactor_param_props.addLong("HAS_BRESP", "1");
    saxi_lite_cq_transactor_param_props.addLong("HAS_RRESP", "1");
    saxi_lite_cq_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    saxi_lite_cq_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    saxi_lite_cq_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    saxi_lite_cq_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    saxi_lite_cq_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    saxi_lite_cq_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    saxi_lite_cq_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_SIZE", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_RESET", "1");
    saxi_lite_cq_transactor_param_props.addFloat("PHASE", "0.0");
    saxi_lite_cq_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    saxi_lite_cq_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    saxi_lite_cq_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    saxi_lite_cq_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_saxi_lite_cq_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("saxi_lite_cq_transactor", saxi_lite_cq_transactor_param_props);

    // saxi_lite_cq' transactor ports

    mp_saxi_lite_cq_transactor->AWADDR(saxi_lite_cq_awaddr);
    mp_saxi_lite_cq_transactor->AWPROT(saxi_lite_cq_awprot);
    mp_saxi_lite_cq_transactor->AWVALID(saxi_lite_cq_awvalid);
    mp_saxi_lite_cq_transactor->AWREADY(saxi_lite_cq_awready);
    mp_saxi_lite_cq_transactor->WDATA(saxi_lite_cq_wdata);
    mp_saxi_lite_cq_transactor->WSTRB(saxi_lite_cq_wstrb);
    mp_saxi_lite_cq_transactor->WVALID(saxi_lite_cq_wvalid);
    mp_saxi_lite_cq_transactor->WREADY(saxi_lite_cq_wready);
    mp_saxi_lite_cq_transactor->BRESP(saxi_lite_cq_bresp);
    mp_saxi_lite_cq_transactor->BVALID(saxi_lite_cq_bvalid);
    mp_saxi_lite_cq_transactor->BREADY(saxi_lite_cq_bready);
    mp_saxi_lite_cq_transactor->ARADDR(saxi_lite_cq_araddr);
    mp_saxi_lite_cq_transactor->ARPROT(saxi_lite_cq_arprot);
    mp_saxi_lite_cq_transactor->ARVALID(saxi_lite_cq_arvalid);
    mp_saxi_lite_cq_transactor->ARREADY(saxi_lite_cq_arready);
    mp_saxi_lite_cq_transactor->RDATA(saxi_lite_cq_rdata);
    mp_saxi_lite_cq_transactor->RRESP(saxi_lite_cq_rresp);
    mp_saxi_lite_cq_transactor->RVALID(saxi_lite_cq_rvalid);
    mp_saxi_lite_cq_transactor->RREADY(saxi_lite_cq_rready);
    mp_saxi_lite_cq_transactor->CLK(saxi_lite_cq_aclk);
    mp_saxi_lite_cq_transactor->RST(saxi_lite_cq_aresetn);

    // saxi_lite_cq' transactor sockets

    mp_impl->saxi_lite_cq_rd_socket->bind(*(mp_saxi_lite_cq_transactor->rd_socket));
    mp_impl->saxi_lite_cq_wr_socket->bind(*(mp_saxi_lite_cq_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'maxi_lite_mb' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_embedded_scheduler_sw_0_0", "maxi_lite_mb_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'maxi_lite_mb' transactor parameters
    xsc::common_cpp::properties maxi_lite_mb_transactor_param_props;
    maxi_lite_mb_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    maxi_lite_mb_transactor_param_props.addLong("ID_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ADDR_WIDTH", "64");
    maxi_lite_mb_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("BUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_LOCK", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_PROT", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_CACHE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_QOS", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_REGION", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_WSTRB", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_SIZE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RESET", "1");
    maxi_lite_mb_transactor_param_props.addFloat("PHASE", "0.0");
    maxi_lite_mb_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    maxi_lite_mb_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    maxi_lite_mb_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    maxi_lite_mb_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_maxi_lite_mb_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("maxi_lite_mb_transactor", maxi_lite_mb_transactor_param_props);

    // maxi_lite_mb' transactor ports

    mp_maxi_lite_mb_transactor->AWADDR(maxi_lite_mb_awaddr);
    mp_maxi_lite_mb_transactor->AWPROT(maxi_lite_mb_awprot);
    mp_maxi_lite_mb_transactor->AWVALID(maxi_lite_mb_awvalid);
    mp_maxi_lite_mb_transactor->AWREADY(maxi_lite_mb_awready);
    mp_maxi_lite_mb_transactor->WDATA(maxi_lite_mb_wdata);
    mp_maxi_lite_mb_transactor->WSTRB(maxi_lite_mb_wstrb);
    mp_maxi_lite_mb_transactor->WVALID(maxi_lite_mb_wvalid);
    mp_maxi_lite_mb_transactor->WREADY(maxi_lite_mb_wready);
    mp_maxi_lite_mb_transactor->BRESP(maxi_lite_mb_bresp);
    mp_maxi_lite_mb_transactor->BVALID(maxi_lite_mb_bvalid);
    mp_maxi_lite_mb_transactor->BREADY(maxi_lite_mb_bready);
    mp_maxi_lite_mb_transactor->ARADDR(maxi_lite_mb_araddr);
    mp_maxi_lite_mb_transactor->ARPROT(maxi_lite_mb_arprot);
    mp_maxi_lite_mb_transactor->ARVALID(maxi_lite_mb_arvalid);
    mp_maxi_lite_mb_transactor->ARREADY(maxi_lite_mb_arready);
    mp_maxi_lite_mb_transactor->RDATA(maxi_lite_mb_rdata);
    mp_maxi_lite_mb_transactor->RRESP(maxi_lite_mb_rresp);
    mp_maxi_lite_mb_transactor->RVALID(maxi_lite_mb_rvalid);
    mp_maxi_lite_mb_transactor->RREADY(maxi_lite_mb_rready);
    mp_maxi_lite_mb_transactor->CLK(maxi_lite_mb_aclk);
    mp_maxi_lite_mb_transactor->RST(maxi_lite_mb_aresetn);

    // maxi_lite_mb' transactor sockets

    mp_impl->maxi_lite_mb_rd_socket->bind(*(mp_maxi_lite_mb_transactor->rd_socket));
    mp_impl->maxi_lite_mb_wr_socket->bind(*(mp_maxi_lite_mb_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
emu_sim_embedded_scheduler_sw_0_0::emu_sim_embedded_scheduler_sw_0_0(const sc_core::sc_module_name& nm) : emu_sim_embedded_scheduler_sw_0_0_sc(nm), saxi_lite_cq_awaddr("saxi_lite_cq_awaddr"), saxi_lite_cq_awprot("saxi_lite_cq_awprot"), saxi_lite_cq_awvalid("saxi_lite_cq_awvalid"), saxi_lite_cq_awready("saxi_lite_cq_awready"), saxi_lite_cq_wdata("saxi_lite_cq_wdata"), saxi_lite_cq_wstrb("saxi_lite_cq_wstrb"), saxi_lite_cq_wvalid("saxi_lite_cq_wvalid"), saxi_lite_cq_wready("saxi_lite_cq_wready"), saxi_lite_cq_bresp("saxi_lite_cq_bresp"), saxi_lite_cq_bvalid("saxi_lite_cq_bvalid"), saxi_lite_cq_bready("saxi_lite_cq_bready"), saxi_lite_cq_araddr("saxi_lite_cq_araddr"), saxi_lite_cq_arprot("saxi_lite_cq_arprot"), saxi_lite_cq_arvalid("saxi_lite_cq_arvalid"), saxi_lite_cq_arready("saxi_lite_cq_arready"), saxi_lite_cq_rdata("saxi_lite_cq_rdata"), saxi_lite_cq_rresp("saxi_lite_cq_rresp"), saxi_lite_cq_rvalid("saxi_lite_cq_rvalid"), saxi_lite_cq_rready("saxi_lite_cq_rready"), saxi_lite_cq_aclk("saxi_lite_cq_aclk"), saxi_lite_cq_aresetn("saxi_lite_cq_aresetn"), maxi_lite_mb_awaddr("maxi_lite_mb_awaddr"), maxi_lite_mb_awprot("maxi_lite_mb_awprot"), maxi_lite_mb_awvalid("maxi_lite_mb_awvalid"), maxi_lite_mb_awready("maxi_lite_mb_awready"), maxi_lite_mb_wdata("maxi_lite_mb_wdata"), maxi_lite_mb_wstrb("maxi_lite_mb_wstrb"), maxi_lite_mb_wvalid("maxi_lite_mb_wvalid"), maxi_lite_mb_wready("maxi_lite_mb_wready"), maxi_lite_mb_bresp("maxi_lite_mb_bresp"), maxi_lite_mb_bvalid("maxi_lite_mb_bvalid"), maxi_lite_mb_bready("maxi_lite_mb_bready"), maxi_lite_mb_araddr("maxi_lite_mb_araddr"), maxi_lite_mb_arprot("maxi_lite_mb_arprot"), maxi_lite_mb_arvalid("maxi_lite_mb_arvalid"), maxi_lite_mb_arready("maxi_lite_mb_arready"), maxi_lite_mb_rdata("maxi_lite_mb_rdata"), maxi_lite_mb_rresp("maxi_lite_mb_rresp"), maxi_lite_mb_rvalid("maxi_lite_mb_rvalid"), maxi_lite_mb_rready("maxi_lite_mb_rready"), maxi_lite_mb_aclk("maxi_lite_mb_aclk"), maxi_lite_mb_aresetn("maxi_lite_mb_aresetn"), irq("irq")
{

  // initialize pins
  mp_impl->saxi_lite_cq_aclk(saxi_lite_cq_aclk);
  mp_impl->saxi_lite_cq_aresetn(saxi_lite_cq_aresetn);
  mp_impl->maxi_lite_mb_aclk(maxi_lite_mb_aclk);
  mp_impl->maxi_lite_mb_aresetn(maxi_lite_mb_aresetn);
  mp_impl->irq(irq);

  // initialize transactors
  mp_saxi_lite_cq_transactor = NULL;
  mp_maxi_lite_mb_transactor = NULL;

  // initialize socket stubs

}

void emu_sim_embedded_scheduler_sw_0_0::before_end_of_elaboration()
{
  // configure 'saxi_lite_cq' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_embedded_scheduler_sw_0_0", "saxi_lite_cq_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'saxi_lite_cq' transactor parameters
    xsc::common_cpp::properties saxi_lite_cq_transactor_param_props;
    saxi_lite_cq_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    saxi_lite_cq_transactor_param_props.addLong("WIZ_NUM_REG", "4");
    saxi_lite_cq_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    saxi_lite_cq_transactor_param_props.addLong("DATA_WIDTH", "32");
    saxi_lite_cq_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    saxi_lite_cq_transactor_param_props.addLong("ID_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("ADDR_WIDTH", "64");
    saxi_lite_cq_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("WUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("RUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("BUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_BURST", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_LOCK", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_PROT", "1");
    saxi_lite_cq_transactor_param_props.addLong("HAS_CACHE", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_QOS", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_REGION", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_WSTRB", "1");
    saxi_lite_cq_transactor_param_props.addLong("HAS_BRESP", "1");
    saxi_lite_cq_transactor_param_props.addLong("HAS_RRESP", "1");
    saxi_lite_cq_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    saxi_lite_cq_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    saxi_lite_cq_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    saxi_lite_cq_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    saxi_lite_cq_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    saxi_lite_cq_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    saxi_lite_cq_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_SIZE", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_RESET", "1");
    saxi_lite_cq_transactor_param_props.addFloat("PHASE", "0.0");
    saxi_lite_cq_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    saxi_lite_cq_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    saxi_lite_cq_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    saxi_lite_cq_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_saxi_lite_cq_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("saxi_lite_cq_transactor", saxi_lite_cq_transactor_param_props);

    // saxi_lite_cq' transactor ports

    mp_saxi_lite_cq_transactor->AWADDR(saxi_lite_cq_awaddr);
    mp_saxi_lite_cq_transactor->AWPROT(saxi_lite_cq_awprot);
    mp_saxi_lite_cq_transactor->AWVALID(saxi_lite_cq_awvalid);
    mp_saxi_lite_cq_transactor->AWREADY(saxi_lite_cq_awready);
    mp_saxi_lite_cq_transactor->WDATA(saxi_lite_cq_wdata);
    mp_saxi_lite_cq_transactor->WSTRB(saxi_lite_cq_wstrb);
    mp_saxi_lite_cq_transactor->WVALID(saxi_lite_cq_wvalid);
    mp_saxi_lite_cq_transactor->WREADY(saxi_lite_cq_wready);
    mp_saxi_lite_cq_transactor->BRESP(saxi_lite_cq_bresp);
    mp_saxi_lite_cq_transactor->BVALID(saxi_lite_cq_bvalid);
    mp_saxi_lite_cq_transactor->BREADY(saxi_lite_cq_bready);
    mp_saxi_lite_cq_transactor->ARADDR(saxi_lite_cq_araddr);
    mp_saxi_lite_cq_transactor->ARPROT(saxi_lite_cq_arprot);
    mp_saxi_lite_cq_transactor->ARVALID(saxi_lite_cq_arvalid);
    mp_saxi_lite_cq_transactor->ARREADY(saxi_lite_cq_arready);
    mp_saxi_lite_cq_transactor->RDATA(saxi_lite_cq_rdata);
    mp_saxi_lite_cq_transactor->RRESP(saxi_lite_cq_rresp);
    mp_saxi_lite_cq_transactor->RVALID(saxi_lite_cq_rvalid);
    mp_saxi_lite_cq_transactor->RREADY(saxi_lite_cq_rready);
    mp_saxi_lite_cq_transactor->CLK(saxi_lite_cq_aclk);
    mp_saxi_lite_cq_transactor->RST(saxi_lite_cq_aresetn);

    // saxi_lite_cq' transactor sockets

    mp_impl->saxi_lite_cq_rd_socket->bind(*(mp_saxi_lite_cq_transactor->rd_socket));
    mp_impl->saxi_lite_cq_wr_socket->bind(*(mp_saxi_lite_cq_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'maxi_lite_mb' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_embedded_scheduler_sw_0_0", "maxi_lite_mb_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'maxi_lite_mb' transactor parameters
    xsc::common_cpp::properties maxi_lite_mb_transactor_param_props;
    maxi_lite_mb_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    maxi_lite_mb_transactor_param_props.addLong("ID_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ADDR_WIDTH", "64");
    maxi_lite_mb_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("BUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_LOCK", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_PROT", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_CACHE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_QOS", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_REGION", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_WSTRB", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_SIZE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RESET", "1");
    maxi_lite_mb_transactor_param_props.addFloat("PHASE", "0.0");
    maxi_lite_mb_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    maxi_lite_mb_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    maxi_lite_mb_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    maxi_lite_mb_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_maxi_lite_mb_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("maxi_lite_mb_transactor", maxi_lite_mb_transactor_param_props);

    // maxi_lite_mb' transactor ports

    mp_maxi_lite_mb_transactor->AWADDR(maxi_lite_mb_awaddr);
    mp_maxi_lite_mb_transactor->AWPROT(maxi_lite_mb_awprot);
    mp_maxi_lite_mb_transactor->AWVALID(maxi_lite_mb_awvalid);
    mp_maxi_lite_mb_transactor->AWREADY(maxi_lite_mb_awready);
    mp_maxi_lite_mb_transactor->WDATA(maxi_lite_mb_wdata);
    mp_maxi_lite_mb_transactor->WSTRB(maxi_lite_mb_wstrb);
    mp_maxi_lite_mb_transactor->WVALID(maxi_lite_mb_wvalid);
    mp_maxi_lite_mb_transactor->WREADY(maxi_lite_mb_wready);
    mp_maxi_lite_mb_transactor->BRESP(maxi_lite_mb_bresp);
    mp_maxi_lite_mb_transactor->BVALID(maxi_lite_mb_bvalid);
    mp_maxi_lite_mb_transactor->BREADY(maxi_lite_mb_bready);
    mp_maxi_lite_mb_transactor->ARADDR(maxi_lite_mb_araddr);
    mp_maxi_lite_mb_transactor->ARPROT(maxi_lite_mb_arprot);
    mp_maxi_lite_mb_transactor->ARVALID(maxi_lite_mb_arvalid);
    mp_maxi_lite_mb_transactor->ARREADY(maxi_lite_mb_arready);
    mp_maxi_lite_mb_transactor->RDATA(maxi_lite_mb_rdata);
    mp_maxi_lite_mb_transactor->RRESP(maxi_lite_mb_rresp);
    mp_maxi_lite_mb_transactor->RVALID(maxi_lite_mb_rvalid);
    mp_maxi_lite_mb_transactor->RREADY(maxi_lite_mb_rready);
    mp_maxi_lite_mb_transactor->CLK(maxi_lite_mb_aclk);
    mp_maxi_lite_mb_transactor->RST(maxi_lite_mb_aresetn);

    // maxi_lite_mb' transactor sockets

    mp_impl->maxi_lite_mb_rd_socket->bind(*(mp_maxi_lite_mb_transactor->rd_socket));
    mp_impl->maxi_lite_mb_wr_socket->bind(*(mp_maxi_lite_mb_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
emu_sim_embedded_scheduler_sw_0_0::emu_sim_embedded_scheduler_sw_0_0(const sc_core::sc_module_name& nm) : emu_sim_embedded_scheduler_sw_0_0_sc(nm),  saxi_lite_cq_awaddr("saxi_lite_cq_awaddr"), saxi_lite_cq_awprot("saxi_lite_cq_awprot"), saxi_lite_cq_awvalid("saxi_lite_cq_awvalid"), saxi_lite_cq_awready("saxi_lite_cq_awready"), saxi_lite_cq_wdata("saxi_lite_cq_wdata"), saxi_lite_cq_wstrb("saxi_lite_cq_wstrb"), saxi_lite_cq_wvalid("saxi_lite_cq_wvalid"), saxi_lite_cq_wready("saxi_lite_cq_wready"), saxi_lite_cq_bresp("saxi_lite_cq_bresp"), saxi_lite_cq_bvalid("saxi_lite_cq_bvalid"), saxi_lite_cq_bready("saxi_lite_cq_bready"), saxi_lite_cq_araddr("saxi_lite_cq_araddr"), saxi_lite_cq_arprot("saxi_lite_cq_arprot"), saxi_lite_cq_arvalid("saxi_lite_cq_arvalid"), saxi_lite_cq_arready("saxi_lite_cq_arready"), saxi_lite_cq_rdata("saxi_lite_cq_rdata"), saxi_lite_cq_rresp("saxi_lite_cq_rresp"), saxi_lite_cq_rvalid("saxi_lite_cq_rvalid"), saxi_lite_cq_rready("saxi_lite_cq_rready"), saxi_lite_cq_aclk("saxi_lite_cq_aclk"), saxi_lite_cq_aresetn("saxi_lite_cq_aresetn"), maxi_lite_mb_awaddr("maxi_lite_mb_awaddr"), maxi_lite_mb_awprot("maxi_lite_mb_awprot"), maxi_lite_mb_awvalid("maxi_lite_mb_awvalid"), maxi_lite_mb_awready("maxi_lite_mb_awready"), maxi_lite_mb_wdata("maxi_lite_mb_wdata"), maxi_lite_mb_wstrb("maxi_lite_mb_wstrb"), maxi_lite_mb_wvalid("maxi_lite_mb_wvalid"), maxi_lite_mb_wready("maxi_lite_mb_wready"), maxi_lite_mb_bresp("maxi_lite_mb_bresp"), maxi_lite_mb_bvalid("maxi_lite_mb_bvalid"), maxi_lite_mb_bready("maxi_lite_mb_bready"), maxi_lite_mb_araddr("maxi_lite_mb_araddr"), maxi_lite_mb_arprot("maxi_lite_mb_arprot"), maxi_lite_mb_arvalid("maxi_lite_mb_arvalid"), maxi_lite_mb_arready("maxi_lite_mb_arready"), maxi_lite_mb_rdata("maxi_lite_mb_rdata"), maxi_lite_mb_rresp("maxi_lite_mb_rresp"), maxi_lite_mb_rvalid("maxi_lite_mb_rvalid"), maxi_lite_mb_rready("maxi_lite_mb_rready"), maxi_lite_mb_aclk("maxi_lite_mb_aclk"), maxi_lite_mb_aresetn("maxi_lite_mb_aresetn"), irq("irq")
{
  // initialize pins
  mp_impl->saxi_lite_cq_aclk(saxi_lite_cq_aclk);
  mp_impl->saxi_lite_cq_aresetn(saxi_lite_cq_aresetn);
  mp_impl->maxi_lite_mb_aclk(maxi_lite_mb_aclk);
  mp_impl->maxi_lite_mb_aresetn(maxi_lite_mb_aresetn);
  mp_impl->irq(irq);

  // initialize transactors
  mp_saxi_lite_cq_transactor = NULL;
  mp_maxi_lite_mb_transactor = NULL;

  // Instantiate Socket Stubs

  // configure saxi_lite_cq_transactor
    xsc::common_cpp::properties saxi_lite_cq_transactor_param_props;
    saxi_lite_cq_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    saxi_lite_cq_transactor_param_props.addLong("WIZ_NUM_REG", "4");
    saxi_lite_cq_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    saxi_lite_cq_transactor_param_props.addLong("DATA_WIDTH", "32");
    saxi_lite_cq_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    saxi_lite_cq_transactor_param_props.addLong("ID_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("ADDR_WIDTH", "64");
    saxi_lite_cq_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("WUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("RUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("BUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_BURST", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_LOCK", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_PROT", "1");
    saxi_lite_cq_transactor_param_props.addLong("HAS_CACHE", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_QOS", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_REGION", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_WSTRB", "1");
    saxi_lite_cq_transactor_param_props.addLong("HAS_BRESP", "1");
    saxi_lite_cq_transactor_param_props.addLong("HAS_RRESP", "1");
    saxi_lite_cq_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    saxi_lite_cq_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    saxi_lite_cq_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    saxi_lite_cq_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    saxi_lite_cq_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    saxi_lite_cq_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    saxi_lite_cq_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_SIZE", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_RESET", "1");
    saxi_lite_cq_transactor_param_props.addFloat("PHASE", "0.0");
    saxi_lite_cq_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    saxi_lite_cq_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    saxi_lite_cq_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    saxi_lite_cq_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_saxi_lite_cq_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("saxi_lite_cq_transactor", saxi_lite_cq_transactor_param_props);
  mp_saxi_lite_cq_transactor->AWADDR(saxi_lite_cq_awaddr);
  mp_saxi_lite_cq_transactor->AWPROT(saxi_lite_cq_awprot);
  mp_saxi_lite_cq_transactor->AWVALID(saxi_lite_cq_awvalid);
  mp_saxi_lite_cq_transactor->AWREADY(saxi_lite_cq_awready);
  mp_saxi_lite_cq_transactor->WDATA(saxi_lite_cq_wdata);
  mp_saxi_lite_cq_transactor->WSTRB(saxi_lite_cq_wstrb);
  mp_saxi_lite_cq_transactor->WVALID(saxi_lite_cq_wvalid);
  mp_saxi_lite_cq_transactor->WREADY(saxi_lite_cq_wready);
  mp_saxi_lite_cq_transactor->BRESP(saxi_lite_cq_bresp);
  mp_saxi_lite_cq_transactor->BVALID(saxi_lite_cq_bvalid);
  mp_saxi_lite_cq_transactor->BREADY(saxi_lite_cq_bready);
  mp_saxi_lite_cq_transactor->ARADDR(saxi_lite_cq_araddr);
  mp_saxi_lite_cq_transactor->ARPROT(saxi_lite_cq_arprot);
  mp_saxi_lite_cq_transactor->ARVALID(saxi_lite_cq_arvalid);
  mp_saxi_lite_cq_transactor->ARREADY(saxi_lite_cq_arready);
  mp_saxi_lite_cq_transactor->RDATA(saxi_lite_cq_rdata);
  mp_saxi_lite_cq_transactor->RRESP(saxi_lite_cq_rresp);
  mp_saxi_lite_cq_transactor->RVALID(saxi_lite_cq_rvalid);
  mp_saxi_lite_cq_transactor->RREADY(saxi_lite_cq_rready);
  mp_saxi_lite_cq_transactor->CLK(saxi_lite_cq_aclk);
  mp_saxi_lite_cq_transactor->RST(saxi_lite_cq_aresetn);
  // configure maxi_lite_mb_transactor
    xsc::common_cpp::properties maxi_lite_mb_transactor_param_props;
    maxi_lite_mb_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    maxi_lite_mb_transactor_param_props.addLong("ID_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ADDR_WIDTH", "64");
    maxi_lite_mb_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("BUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_LOCK", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_PROT", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_CACHE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_QOS", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_REGION", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_WSTRB", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_SIZE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RESET", "1");
    maxi_lite_mb_transactor_param_props.addFloat("PHASE", "0.0");
    maxi_lite_mb_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    maxi_lite_mb_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    maxi_lite_mb_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    maxi_lite_mb_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_maxi_lite_mb_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("maxi_lite_mb_transactor", maxi_lite_mb_transactor_param_props);
  mp_maxi_lite_mb_transactor->AWADDR(maxi_lite_mb_awaddr);
  mp_maxi_lite_mb_transactor->AWPROT(maxi_lite_mb_awprot);
  mp_maxi_lite_mb_transactor->AWVALID(maxi_lite_mb_awvalid);
  mp_maxi_lite_mb_transactor->AWREADY(maxi_lite_mb_awready);
  mp_maxi_lite_mb_transactor->WDATA(maxi_lite_mb_wdata);
  mp_maxi_lite_mb_transactor->WSTRB(maxi_lite_mb_wstrb);
  mp_maxi_lite_mb_transactor->WVALID(maxi_lite_mb_wvalid);
  mp_maxi_lite_mb_transactor->WREADY(maxi_lite_mb_wready);
  mp_maxi_lite_mb_transactor->BRESP(maxi_lite_mb_bresp);
  mp_maxi_lite_mb_transactor->BVALID(maxi_lite_mb_bvalid);
  mp_maxi_lite_mb_transactor->BREADY(maxi_lite_mb_bready);
  mp_maxi_lite_mb_transactor->ARADDR(maxi_lite_mb_araddr);
  mp_maxi_lite_mb_transactor->ARPROT(maxi_lite_mb_arprot);
  mp_maxi_lite_mb_transactor->ARVALID(maxi_lite_mb_arvalid);
  mp_maxi_lite_mb_transactor->ARREADY(maxi_lite_mb_arready);
  mp_maxi_lite_mb_transactor->RDATA(maxi_lite_mb_rdata);
  mp_maxi_lite_mb_transactor->RRESP(maxi_lite_mb_rresp);
  mp_maxi_lite_mb_transactor->RVALID(maxi_lite_mb_rvalid);
  mp_maxi_lite_mb_transactor->RREADY(maxi_lite_mb_rready);
  mp_maxi_lite_mb_transactor->CLK(maxi_lite_mb_aclk);
  mp_maxi_lite_mb_transactor->RST(maxi_lite_mb_aresetn);

  // initialize transactors stubs
  saxi_lite_cq_transactor_target_wr_socket_stub = nullptr;
  saxi_lite_cq_transactor_target_rd_socket_stub = nullptr;
  maxi_lite_mb_transactor_initiator_wr_socket_stub = nullptr;
  maxi_lite_mb_transactor_initiator_rd_socket_stub = nullptr;

}

void emu_sim_embedded_scheduler_sw_0_0::before_end_of_elaboration()
{
  // configure 'saxi_lite_cq' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_embedded_scheduler_sw_0_0", "saxi_lite_cq_TLM_MODE") != 1)
  {
    mp_impl->saxi_lite_cq_rd_socket->bind(*(mp_saxi_lite_cq_transactor->rd_socket));
    mp_impl->saxi_lite_cq_wr_socket->bind(*(mp_saxi_lite_cq_transactor->wr_socket));
  
  }
  else
  {
    saxi_lite_cq_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    saxi_lite_cq_transactor_target_wr_socket_stub->bind(*(mp_saxi_lite_cq_transactor->wr_socket));
    saxi_lite_cq_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    saxi_lite_cq_transactor_target_rd_socket_stub->bind(*(mp_saxi_lite_cq_transactor->rd_socket));
    mp_saxi_lite_cq_transactor->disable_transactor();
  }

  // configure 'maxi_lite_mb' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_embedded_scheduler_sw_0_0", "maxi_lite_mb_TLM_MODE") != 1)
  {
    mp_impl->maxi_lite_mb_rd_socket->bind(*(mp_maxi_lite_mb_transactor->rd_socket));
    mp_impl->maxi_lite_mb_wr_socket->bind(*(mp_maxi_lite_mb_transactor->wr_socket));
  
  }
  else
  {
    maxi_lite_mb_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    maxi_lite_mb_transactor_initiator_wr_socket_stub->bind(*(mp_maxi_lite_mb_transactor->wr_socket));
    maxi_lite_mb_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    maxi_lite_mb_transactor_initiator_rd_socket_stub->bind(*(mp_maxi_lite_mb_transactor->rd_socket));
    mp_maxi_lite_mb_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
emu_sim_embedded_scheduler_sw_0_0::emu_sim_embedded_scheduler_sw_0_0(const sc_core::sc_module_name& nm) : emu_sim_embedded_scheduler_sw_0_0_sc(nm), saxi_lite_cq_awaddr("saxi_lite_cq_awaddr"), saxi_lite_cq_awprot("saxi_lite_cq_awprot"), saxi_lite_cq_awvalid("saxi_lite_cq_awvalid"), saxi_lite_cq_awready("saxi_lite_cq_awready"), saxi_lite_cq_wdata("saxi_lite_cq_wdata"), saxi_lite_cq_wstrb("saxi_lite_cq_wstrb"), saxi_lite_cq_wvalid("saxi_lite_cq_wvalid"), saxi_lite_cq_wready("saxi_lite_cq_wready"), saxi_lite_cq_bresp("saxi_lite_cq_bresp"), saxi_lite_cq_bvalid("saxi_lite_cq_bvalid"), saxi_lite_cq_bready("saxi_lite_cq_bready"), saxi_lite_cq_araddr("saxi_lite_cq_araddr"), saxi_lite_cq_arprot("saxi_lite_cq_arprot"), saxi_lite_cq_arvalid("saxi_lite_cq_arvalid"), saxi_lite_cq_arready("saxi_lite_cq_arready"), saxi_lite_cq_rdata("saxi_lite_cq_rdata"), saxi_lite_cq_rresp("saxi_lite_cq_rresp"), saxi_lite_cq_rvalid("saxi_lite_cq_rvalid"), saxi_lite_cq_rready("saxi_lite_cq_rready"), saxi_lite_cq_aclk("saxi_lite_cq_aclk"), saxi_lite_cq_aresetn("saxi_lite_cq_aresetn"), maxi_lite_mb_awaddr("maxi_lite_mb_awaddr"), maxi_lite_mb_awprot("maxi_lite_mb_awprot"), maxi_lite_mb_awvalid("maxi_lite_mb_awvalid"), maxi_lite_mb_awready("maxi_lite_mb_awready"), maxi_lite_mb_wdata("maxi_lite_mb_wdata"), maxi_lite_mb_wstrb("maxi_lite_mb_wstrb"), maxi_lite_mb_wvalid("maxi_lite_mb_wvalid"), maxi_lite_mb_wready("maxi_lite_mb_wready"), maxi_lite_mb_bresp("maxi_lite_mb_bresp"), maxi_lite_mb_bvalid("maxi_lite_mb_bvalid"), maxi_lite_mb_bready("maxi_lite_mb_bready"), maxi_lite_mb_araddr("maxi_lite_mb_araddr"), maxi_lite_mb_arprot("maxi_lite_mb_arprot"), maxi_lite_mb_arvalid("maxi_lite_mb_arvalid"), maxi_lite_mb_arready("maxi_lite_mb_arready"), maxi_lite_mb_rdata("maxi_lite_mb_rdata"), maxi_lite_mb_rresp("maxi_lite_mb_rresp"), maxi_lite_mb_rvalid("maxi_lite_mb_rvalid"), maxi_lite_mb_rready("maxi_lite_mb_rready"), maxi_lite_mb_aclk("maxi_lite_mb_aclk"), maxi_lite_mb_aresetn("maxi_lite_mb_aresetn"), irq("irq")
{

  // initialize pins
  mp_impl->saxi_lite_cq_aclk(saxi_lite_cq_aclk);
  mp_impl->saxi_lite_cq_aresetn(saxi_lite_cq_aresetn);
  mp_impl->maxi_lite_mb_aclk(maxi_lite_mb_aclk);
  mp_impl->maxi_lite_mb_aresetn(maxi_lite_mb_aresetn);
  mp_impl->irq(irq);

  // initialize transactors
  mp_saxi_lite_cq_transactor = NULL;
  mp_maxi_lite_mb_transactor = NULL;

  // initialize socket stubs

}

void emu_sim_embedded_scheduler_sw_0_0::before_end_of_elaboration()
{
  // configure 'saxi_lite_cq' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_embedded_scheduler_sw_0_0", "saxi_lite_cq_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'saxi_lite_cq' transactor parameters
    xsc::common_cpp::properties saxi_lite_cq_transactor_param_props;
    saxi_lite_cq_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    saxi_lite_cq_transactor_param_props.addLong("WIZ_NUM_REG", "4");
    saxi_lite_cq_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    saxi_lite_cq_transactor_param_props.addLong("DATA_WIDTH", "32");
    saxi_lite_cq_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    saxi_lite_cq_transactor_param_props.addLong("ID_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("ADDR_WIDTH", "64");
    saxi_lite_cq_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("WUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("RUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("BUSER_WIDTH", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_BURST", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_LOCK", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_PROT", "1");
    saxi_lite_cq_transactor_param_props.addLong("HAS_CACHE", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_QOS", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_REGION", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_WSTRB", "1");
    saxi_lite_cq_transactor_param_props.addLong("HAS_BRESP", "1");
    saxi_lite_cq_transactor_param_props.addLong("HAS_RRESP", "1");
    saxi_lite_cq_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    saxi_lite_cq_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    saxi_lite_cq_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    saxi_lite_cq_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    saxi_lite_cq_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    saxi_lite_cq_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    saxi_lite_cq_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_SIZE", "0");
    saxi_lite_cq_transactor_param_props.addLong("HAS_RESET", "1");
    saxi_lite_cq_transactor_param_props.addFloat("PHASE", "0.0");
    saxi_lite_cq_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    saxi_lite_cq_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    saxi_lite_cq_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    saxi_lite_cq_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_saxi_lite_cq_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("saxi_lite_cq_transactor", saxi_lite_cq_transactor_param_props);

    // saxi_lite_cq' transactor ports

    mp_saxi_lite_cq_transactor->AWADDR(saxi_lite_cq_awaddr);
    mp_saxi_lite_cq_transactor->AWPROT(saxi_lite_cq_awprot);
    mp_saxi_lite_cq_transactor->AWVALID(saxi_lite_cq_awvalid);
    mp_saxi_lite_cq_transactor->AWREADY(saxi_lite_cq_awready);
    mp_saxi_lite_cq_transactor->WDATA(saxi_lite_cq_wdata);
    mp_saxi_lite_cq_transactor->WSTRB(saxi_lite_cq_wstrb);
    mp_saxi_lite_cq_transactor->WVALID(saxi_lite_cq_wvalid);
    mp_saxi_lite_cq_transactor->WREADY(saxi_lite_cq_wready);
    mp_saxi_lite_cq_transactor->BRESP(saxi_lite_cq_bresp);
    mp_saxi_lite_cq_transactor->BVALID(saxi_lite_cq_bvalid);
    mp_saxi_lite_cq_transactor->BREADY(saxi_lite_cq_bready);
    mp_saxi_lite_cq_transactor->ARADDR(saxi_lite_cq_araddr);
    mp_saxi_lite_cq_transactor->ARPROT(saxi_lite_cq_arprot);
    mp_saxi_lite_cq_transactor->ARVALID(saxi_lite_cq_arvalid);
    mp_saxi_lite_cq_transactor->ARREADY(saxi_lite_cq_arready);
    mp_saxi_lite_cq_transactor->RDATA(saxi_lite_cq_rdata);
    mp_saxi_lite_cq_transactor->RRESP(saxi_lite_cq_rresp);
    mp_saxi_lite_cq_transactor->RVALID(saxi_lite_cq_rvalid);
    mp_saxi_lite_cq_transactor->RREADY(saxi_lite_cq_rready);
    mp_saxi_lite_cq_transactor->CLK(saxi_lite_cq_aclk);
    mp_saxi_lite_cq_transactor->RST(saxi_lite_cq_aresetn);

    // saxi_lite_cq' transactor sockets

    mp_impl->saxi_lite_cq_rd_socket->bind(*(mp_saxi_lite_cq_transactor->rd_socket));
    mp_impl->saxi_lite_cq_wr_socket->bind(*(mp_saxi_lite_cq_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'maxi_lite_mb' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_embedded_scheduler_sw_0_0", "maxi_lite_mb_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'maxi_lite_mb' transactor parameters
    xsc::common_cpp::properties maxi_lite_mb_transactor_param_props;
    maxi_lite_mb_transactor_param_props.addLong("WIZ_DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("DATA_WIDTH", "32");
    maxi_lite_mb_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    maxi_lite_mb_transactor_param_props.addLong("ID_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ADDR_WIDTH", "64");
    maxi_lite_mb_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("BUSER_WIDTH", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BURST", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_LOCK", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_PROT", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_CACHE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_QOS", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_REGION", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_WSTRB", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_BRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RRESP", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    maxi_lite_mb_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    maxi_lite_mb_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_SIZE", "0");
    maxi_lite_mb_transactor_param_props.addLong("HAS_RESET", "1");
    maxi_lite_mb_transactor_param_props.addFloat("PHASE", "0.0");
    maxi_lite_mb_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    maxi_lite_mb_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    maxi_lite_mb_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    maxi_lite_mb_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_maxi_lite_mb_transactor = new xtlm::xaximm_xtlm2pin_t<32,64,1,1,1,1,1,1>("maxi_lite_mb_transactor", maxi_lite_mb_transactor_param_props);

    // maxi_lite_mb' transactor ports

    mp_maxi_lite_mb_transactor->AWADDR(maxi_lite_mb_awaddr);
    mp_maxi_lite_mb_transactor->AWPROT(maxi_lite_mb_awprot);
    mp_maxi_lite_mb_transactor->AWVALID(maxi_lite_mb_awvalid);
    mp_maxi_lite_mb_transactor->AWREADY(maxi_lite_mb_awready);
    mp_maxi_lite_mb_transactor->WDATA(maxi_lite_mb_wdata);
    mp_maxi_lite_mb_transactor->WSTRB(maxi_lite_mb_wstrb);
    mp_maxi_lite_mb_transactor->WVALID(maxi_lite_mb_wvalid);
    mp_maxi_lite_mb_transactor->WREADY(maxi_lite_mb_wready);
    mp_maxi_lite_mb_transactor->BRESP(maxi_lite_mb_bresp);
    mp_maxi_lite_mb_transactor->BVALID(maxi_lite_mb_bvalid);
    mp_maxi_lite_mb_transactor->BREADY(maxi_lite_mb_bready);
    mp_maxi_lite_mb_transactor->ARADDR(maxi_lite_mb_araddr);
    mp_maxi_lite_mb_transactor->ARPROT(maxi_lite_mb_arprot);
    mp_maxi_lite_mb_transactor->ARVALID(maxi_lite_mb_arvalid);
    mp_maxi_lite_mb_transactor->ARREADY(maxi_lite_mb_arready);
    mp_maxi_lite_mb_transactor->RDATA(maxi_lite_mb_rdata);
    mp_maxi_lite_mb_transactor->RRESP(maxi_lite_mb_rresp);
    mp_maxi_lite_mb_transactor->RVALID(maxi_lite_mb_rvalid);
    mp_maxi_lite_mb_transactor->RREADY(maxi_lite_mb_rready);
    mp_maxi_lite_mb_transactor->CLK(maxi_lite_mb_aclk);
    mp_maxi_lite_mb_transactor->RST(maxi_lite_mb_aresetn);

    // maxi_lite_mb' transactor sockets

    mp_impl->maxi_lite_mb_rd_socket->bind(*(mp_maxi_lite_mb_transactor->rd_socket));
    mp_impl->maxi_lite_mb_wr_socket->bind(*(mp_maxi_lite_mb_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // MTI_SYSTEMC




emu_sim_embedded_scheduler_sw_0_0::~emu_sim_embedded_scheduler_sw_0_0()
{
  delete mp_saxi_lite_cq_transactor;

  delete mp_maxi_lite_mb_transactor;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(emu_sim_embedded_scheduler_sw_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(emu_sim_embedded_scheduler_sw_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(emu_sim_embedded_scheduler_sw_0_0);
SC_REGISTER_BV(64);
#endif

