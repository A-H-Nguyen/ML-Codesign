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

#include "emu_sim_copy_kernel_2_0.h"

#include "sim_copy_kernel.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
emu_sim_copy_kernel_2_0::emu_sim_copy_kernel_2_0(const sc_core::sc_module_name& nm) : emu_sim_copy_kernel_2_0_sc(nm), s_axi_control_AWADDR("s_axi_control_AWADDR"), s_axi_control_AWVALID("s_axi_control_AWVALID"), s_axi_control_AWREADY("s_axi_control_AWREADY"), s_axi_control_WDATA("s_axi_control_WDATA"), s_axi_control_WSTRB("s_axi_control_WSTRB"), s_axi_control_WVALID("s_axi_control_WVALID"), s_axi_control_WREADY("s_axi_control_WREADY"), s_axi_control_BRESP("s_axi_control_BRESP"), s_axi_control_BVALID("s_axi_control_BVALID"), s_axi_control_BREADY("s_axi_control_BREADY"), s_axi_control_ARADDR("s_axi_control_ARADDR"), s_axi_control_ARVALID("s_axi_control_ARVALID"), s_axi_control_ARREADY("s_axi_control_ARREADY"), s_axi_control_RDATA("s_axi_control_RDATA"), s_axi_control_RRESP("s_axi_control_RRESP"), s_axi_control_RVALID("s_axi_control_RVALID"), s_axi_control_RREADY("s_axi_control_RREADY"), ap_clk("ap_clk"), ap_rst_n("ap_rst_n"), interrupt("interrupt"), m_axi_gmem_AWADDR("m_axi_gmem_AWADDR"), m_axi_gmem_AWLEN("m_axi_gmem_AWLEN"), m_axi_gmem_AWSIZE("m_axi_gmem_AWSIZE"), m_axi_gmem_AWBURST("m_axi_gmem_AWBURST"), m_axi_gmem_AWLOCK("m_axi_gmem_AWLOCK"), m_axi_gmem_AWREGION("m_axi_gmem_AWREGION"), m_axi_gmem_AWCACHE("m_axi_gmem_AWCACHE"), m_axi_gmem_AWPROT("m_axi_gmem_AWPROT"), m_axi_gmem_AWQOS("m_axi_gmem_AWQOS"), m_axi_gmem_AWVALID("m_axi_gmem_AWVALID"), m_axi_gmem_AWREADY("m_axi_gmem_AWREADY"), m_axi_gmem_WDATA("m_axi_gmem_WDATA"), m_axi_gmem_WSTRB("m_axi_gmem_WSTRB"), m_axi_gmem_WLAST("m_axi_gmem_WLAST"), m_axi_gmem_WVALID("m_axi_gmem_WVALID"), m_axi_gmem_WREADY("m_axi_gmem_WREADY"), m_axi_gmem_BRESP("m_axi_gmem_BRESP"), m_axi_gmem_BVALID("m_axi_gmem_BVALID"), m_axi_gmem_BREADY("m_axi_gmem_BREADY"), m_axi_gmem_ARADDR("m_axi_gmem_ARADDR"), m_axi_gmem_ARLEN("m_axi_gmem_ARLEN"), m_axi_gmem_ARSIZE("m_axi_gmem_ARSIZE"), m_axi_gmem_ARBURST("m_axi_gmem_ARBURST"), m_axi_gmem_ARLOCK("m_axi_gmem_ARLOCK"), m_axi_gmem_ARREGION("m_axi_gmem_ARREGION"), m_axi_gmem_ARCACHE("m_axi_gmem_ARCACHE"), m_axi_gmem_ARPROT("m_axi_gmem_ARPROT"), m_axi_gmem_ARQOS("m_axi_gmem_ARQOS"), m_axi_gmem_ARVALID("m_axi_gmem_ARVALID"), m_axi_gmem_ARREADY("m_axi_gmem_ARREADY"), m_axi_gmem_RDATA("m_axi_gmem_RDATA"), m_axi_gmem_RRESP("m_axi_gmem_RRESP"), m_axi_gmem_RLAST("m_axi_gmem_RLAST"), m_axi_gmem_RVALID("m_axi_gmem_RVALID"), m_axi_gmem_RREADY("m_axi_gmem_RREADY")
{

  // initialize pins
  mp_impl->ap_clk(ap_clk);
  mp_impl->ap_rst_n(ap_rst_n);
  mp_impl->interrupt(interrupt);

  // initialize transactors
  mp_s_axi_control_transactor = NULL;
  mp_m_axi_gmem_transactor = NULL;
  mp_m_axi_gmem_AWLOCK_converter = NULL;
  mp_m_axi_gmem_ARLOCK_converter = NULL;

  // initialize socket stubs

}

void emu_sim_copy_kernel_2_0::before_end_of_elaboration()
{
  // configure 's_axi_control' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_copy_kernel_2_0", "s_axi_control_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 's_axi_control' transactor parameters
    xsc::common_cpp::properties s_axi_control_transactor_param_props;
    s_axi_control_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    s_axi_control_transactor_param_props.addLong("ID_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("WUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("RUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("BUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("HAS_BURST", "0");
    s_axi_control_transactor_param_props.addLong("HAS_LOCK", "0");
    s_axi_control_transactor_param_props.addLong("HAS_PROT", "0");
    s_axi_control_transactor_param_props.addLong("HAS_CACHE", "0");
    s_axi_control_transactor_param_props.addLong("HAS_QOS", "0");
    s_axi_control_transactor_param_props.addLong("HAS_REGION", "0");
    s_axi_control_transactor_param_props.addLong("HAS_WSTRB", "1");
    s_axi_control_transactor_param_props.addLong("HAS_BRESP", "1");
    s_axi_control_transactor_param_props.addLong("HAS_RRESP", "1");
    s_axi_control_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    s_axi_control_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    s_axi_control_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    s_axi_control_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    s_axi_control_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    s_axi_control_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    s_axi_control_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    s_axi_control_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    s_axi_control_transactor_param_props.addLong("HAS_SIZE", "0");
    s_axi_control_transactor_param_props.addLong("HAS_RESET", "1");
    s_axi_control_transactor_param_props.addFloat("PHASE", "0.0");
    s_axi_control_transactor_param_props.addString("ADDR_WIDTH", "6");
    s_axi_control_transactor_param_props.addString("DATA_WIDTH", "32");
    s_axi_control_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    s_axi_control_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    s_axi_control_transactor_param_props.addString("LAYERED_METADATA", "xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}");
    s_axi_control_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    s_axi_control_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_s_axi_control_transactor = new xtlm::xaximm_pin2xtlm_t<32,6,1,1,1,1,1,1>("s_axi_control_transactor", s_axi_control_transactor_param_props);

    // s_axi_control' transactor ports

    mp_s_axi_control_transactor->AWADDR(s_axi_control_AWADDR);
    mp_s_axi_control_transactor->AWVALID(s_axi_control_AWVALID);
    mp_s_axi_control_transactor->AWREADY(s_axi_control_AWREADY);
    mp_s_axi_control_transactor->WDATA(s_axi_control_WDATA);
    mp_s_axi_control_transactor->WSTRB(s_axi_control_WSTRB);
    mp_s_axi_control_transactor->WVALID(s_axi_control_WVALID);
    mp_s_axi_control_transactor->WREADY(s_axi_control_WREADY);
    mp_s_axi_control_transactor->BRESP(s_axi_control_BRESP);
    mp_s_axi_control_transactor->BVALID(s_axi_control_BVALID);
    mp_s_axi_control_transactor->BREADY(s_axi_control_BREADY);
    mp_s_axi_control_transactor->ARADDR(s_axi_control_ARADDR);
    mp_s_axi_control_transactor->ARVALID(s_axi_control_ARVALID);
    mp_s_axi_control_transactor->ARREADY(s_axi_control_ARREADY);
    mp_s_axi_control_transactor->RDATA(s_axi_control_RDATA);
    mp_s_axi_control_transactor->RRESP(s_axi_control_RRESP);
    mp_s_axi_control_transactor->RVALID(s_axi_control_RVALID);
    mp_s_axi_control_transactor->RREADY(s_axi_control_RREADY);
    mp_s_axi_control_transactor->CLK(ap_clk);
    mp_s_axi_control_transactor->RST(ap_rst_n);

    // s_axi_control' transactor sockets

    mp_impl->s_axi_control_rd_socket->bind(*(mp_s_axi_control_transactor->rd_socket));
    mp_impl->s_axi_control_wr_socket->bind(*(mp_s_axi_control_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'm_axi_gmem' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_copy_kernel_2_0", "m_axi_gmem_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'm_axi_gmem' transactor parameters
    xsc::common_cpp::properties m_axi_gmem_transactor_param_props;
    m_axi_gmem_transactor_param_props.addLong("ADDR_WIDTH", "64");
    m_axi_gmem_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    m_axi_gmem_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    m_axi_gmem_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    m_axi_gmem_transactor_param_props.addLong("MAX_READ_BURST_LENGTH", "16");
    m_axi_gmem_transactor_param_props.addLong("MAX_WRITE_BURST_LENGTH", "16");
    m_axi_gmem_transactor_param_props.addLong("HAS_BURST", "1");
    m_axi_gmem_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    m_axi_gmem_transactor_param_props.addLong("DATA_WIDTH", "512");
    m_axi_gmem_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    m_axi_gmem_transactor_param_props.addLong("ID_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("WUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("RUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("BUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("HAS_LOCK", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_PROT", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_CACHE", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_QOS", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_REGION", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_WSTRB", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_BRESP", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_RRESP", "1");
    m_axi_gmem_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    m_axi_gmem_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    m_axi_gmem_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    m_axi_gmem_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    m_axi_gmem_transactor_param_props.addLong("HAS_SIZE", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_RESET", "1");
    m_axi_gmem_transactor_param_props.addFloat("PHASE", "0.0");
    m_axi_gmem_transactor_param_props.addString("PROTOCOL", "AXI4");
    m_axi_gmem_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    m_axi_gmem_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    m_axi_gmem_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_m_axi_gmem_transactor = new xtlm::xaximm_xtlm2pin_t<512,64,1,1,1,1,1,1>("m_axi_gmem_transactor", m_axi_gmem_transactor_param_props);

    // m_axi_gmem' transactor ports

    mp_m_axi_gmem_transactor->AWADDR(m_axi_gmem_AWADDR);
    mp_m_axi_gmem_transactor->AWLEN(m_axi_gmem_AWLEN);
    mp_m_axi_gmem_transactor->AWSIZE(m_axi_gmem_AWSIZE);
    mp_m_axi_gmem_transactor->AWBURST(m_axi_gmem_AWBURST);
    mp_m_axi_gmem_AWLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_gmem_AWLOCK_converter");
    mp_m_axi_gmem_AWLOCK_converter->scalar_in(m_m_axi_gmem_AWLOCK_converter_signal);
    mp_m_axi_gmem_AWLOCK_converter->vector_out(m_axi_gmem_AWLOCK);
    mp_m_axi_gmem_transactor->AWLOCK(m_m_axi_gmem_AWLOCK_converter_signal);
    mp_m_axi_gmem_transactor->AWREGION(m_axi_gmem_AWREGION);
    mp_m_axi_gmem_transactor->AWCACHE(m_axi_gmem_AWCACHE);
    mp_m_axi_gmem_transactor->AWPROT(m_axi_gmem_AWPROT);
    mp_m_axi_gmem_transactor->AWQOS(m_axi_gmem_AWQOS);
    mp_m_axi_gmem_transactor->AWVALID(m_axi_gmem_AWVALID);
    mp_m_axi_gmem_transactor->AWREADY(m_axi_gmem_AWREADY);
    mp_m_axi_gmem_transactor->WDATA(m_axi_gmem_WDATA);
    mp_m_axi_gmem_transactor->WSTRB(m_axi_gmem_WSTRB);
    mp_m_axi_gmem_transactor->WLAST(m_axi_gmem_WLAST);
    mp_m_axi_gmem_transactor->WVALID(m_axi_gmem_WVALID);
    mp_m_axi_gmem_transactor->WREADY(m_axi_gmem_WREADY);
    mp_m_axi_gmem_transactor->BRESP(m_axi_gmem_BRESP);
    mp_m_axi_gmem_transactor->BVALID(m_axi_gmem_BVALID);
    mp_m_axi_gmem_transactor->BREADY(m_axi_gmem_BREADY);
    mp_m_axi_gmem_transactor->ARADDR(m_axi_gmem_ARADDR);
    mp_m_axi_gmem_transactor->ARLEN(m_axi_gmem_ARLEN);
    mp_m_axi_gmem_transactor->ARSIZE(m_axi_gmem_ARSIZE);
    mp_m_axi_gmem_transactor->ARBURST(m_axi_gmem_ARBURST);
    mp_m_axi_gmem_ARLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_gmem_ARLOCK_converter");
    mp_m_axi_gmem_ARLOCK_converter->scalar_in(m_m_axi_gmem_ARLOCK_converter_signal);
    mp_m_axi_gmem_ARLOCK_converter->vector_out(m_axi_gmem_ARLOCK);
    mp_m_axi_gmem_transactor->ARLOCK(m_m_axi_gmem_ARLOCK_converter_signal);
    mp_m_axi_gmem_transactor->ARREGION(m_axi_gmem_ARREGION);
    mp_m_axi_gmem_transactor->ARCACHE(m_axi_gmem_ARCACHE);
    mp_m_axi_gmem_transactor->ARPROT(m_axi_gmem_ARPROT);
    mp_m_axi_gmem_transactor->ARQOS(m_axi_gmem_ARQOS);
    mp_m_axi_gmem_transactor->ARVALID(m_axi_gmem_ARVALID);
    mp_m_axi_gmem_transactor->ARREADY(m_axi_gmem_ARREADY);
    mp_m_axi_gmem_transactor->RDATA(m_axi_gmem_RDATA);
    mp_m_axi_gmem_transactor->RRESP(m_axi_gmem_RRESP);
    mp_m_axi_gmem_transactor->RLAST(m_axi_gmem_RLAST);
    mp_m_axi_gmem_transactor->RVALID(m_axi_gmem_RVALID);
    mp_m_axi_gmem_transactor->RREADY(m_axi_gmem_RREADY);
    mp_m_axi_gmem_transactor->CLK(ap_clk);
    mp_m_axi_gmem_transactor->RST(ap_rst_n);

    // m_axi_gmem' transactor sockets

    mp_impl->m_axi_gmem_rd_socket->bind(*(mp_m_axi_gmem_transactor->rd_socket));
    mp_impl->m_axi_gmem_wr_socket->bind(*(mp_m_axi_gmem_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
emu_sim_copy_kernel_2_0::emu_sim_copy_kernel_2_0(const sc_core::sc_module_name& nm) : emu_sim_copy_kernel_2_0_sc(nm), s_axi_control_AWADDR("s_axi_control_AWADDR"), s_axi_control_AWVALID("s_axi_control_AWVALID"), s_axi_control_AWREADY("s_axi_control_AWREADY"), s_axi_control_WDATA("s_axi_control_WDATA"), s_axi_control_WSTRB("s_axi_control_WSTRB"), s_axi_control_WVALID("s_axi_control_WVALID"), s_axi_control_WREADY("s_axi_control_WREADY"), s_axi_control_BRESP("s_axi_control_BRESP"), s_axi_control_BVALID("s_axi_control_BVALID"), s_axi_control_BREADY("s_axi_control_BREADY"), s_axi_control_ARADDR("s_axi_control_ARADDR"), s_axi_control_ARVALID("s_axi_control_ARVALID"), s_axi_control_ARREADY("s_axi_control_ARREADY"), s_axi_control_RDATA("s_axi_control_RDATA"), s_axi_control_RRESP("s_axi_control_RRESP"), s_axi_control_RVALID("s_axi_control_RVALID"), s_axi_control_RREADY("s_axi_control_RREADY"), ap_clk("ap_clk"), ap_rst_n("ap_rst_n"), interrupt("interrupt"), m_axi_gmem_AWADDR("m_axi_gmem_AWADDR"), m_axi_gmem_AWLEN("m_axi_gmem_AWLEN"), m_axi_gmem_AWSIZE("m_axi_gmem_AWSIZE"), m_axi_gmem_AWBURST("m_axi_gmem_AWBURST"), m_axi_gmem_AWLOCK("m_axi_gmem_AWLOCK"), m_axi_gmem_AWREGION("m_axi_gmem_AWREGION"), m_axi_gmem_AWCACHE("m_axi_gmem_AWCACHE"), m_axi_gmem_AWPROT("m_axi_gmem_AWPROT"), m_axi_gmem_AWQOS("m_axi_gmem_AWQOS"), m_axi_gmem_AWVALID("m_axi_gmem_AWVALID"), m_axi_gmem_AWREADY("m_axi_gmem_AWREADY"), m_axi_gmem_WDATA("m_axi_gmem_WDATA"), m_axi_gmem_WSTRB("m_axi_gmem_WSTRB"), m_axi_gmem_WLAST("m_axi_gmem_WLAST"), m_axi_gmem_WVALID("m_axi_gmem_WVALID"), m_axi_gmem_WREADY("m_axi_gmem_WREADY"), m_axi_gmem_BRESP("m_axi_gmem_BRESP"), m_axi_gmem_BVALID("m_axi_gmem_BVALID"), m_axi_gmem_BREADY("m_axi_gmem_BREADY"), m_axi_gmem_ARADDR("m_axi_gmem_ARADDR"), m_axi_gmem_ARLEN("m_axi_gmem_ARLEN"), m_axi_gmem_ARSIZE("m_axi_gmem_ARSIZE"), m_axi_gmem_ARBURST("m_axi_gmem_ARBURST"), m_axi_gmem_ARLOCK("m_axi_gmem_ARLOCK"), m_axi_gmem_ARREGION("m_axi_gmem_ARREGION"), m_axi_gmem_ARCACHE("m_axi_gmem_ARCACHE"), m_axi_gmem_ARPROT("m_axi_gmem_ARPROT"), m_axi_gmem_ARQOS("m_axi_gmem_ARQOS"), m_axi_gmem_ARVALID("m_axi_gmem_ARVALID"), m_axi_gmem_ARREADY("m_axi_gmem_ARREADY"), m_axi_gmem_RDATA("m_axi_gmem_RDATA"), m_axi_gmem_RRESP("m_axi_gmem_RRESP"), m_axi_gmem_RLAST("m_axi_gmem_RLAST"), m_axi_gmem_RVALID("m_axi_gmem_RVALID"), m_axi_gmem_RREADY("m_axi_gmem_RREADY")
{

  // initialize pins
  mp_impl->ap_clk(ap_clk);
  mp_impl->ap_rst_n(ap_rst_n);
  mp_impl->interrupt(interrupt);

  // initialize transactors
  mp_s_axi_control_transactor = NULL;
  mp_m_axi_gmem_transactor = NULL;
  mp_m_axi_gmem_AWLOCK_converter = NULL;
  mp_m_axi_gmem_ARLOCK_converter = NULL;

  // initialize socket stubs

}

void emu_sim_copy_kernel_2_0::before_end_of_elaboration()
{
  // configure 's_axi_control' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_copy_kernel_2_0", "s_axi_control_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 's_axi_control' transactor parameters
    xsc::common_cpp::properties s_axi_control_transactor_param_props;
    s_axi_control_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    s_axi_control_transactor_param_props.addLong("ID_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("WUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("RUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("BUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("HAS_BURST", "0");
    s_axi_control_transactor_param_props.addLong("HAS_LOCK", "0");
    s_axi_control_transactor_param_props.addLong("HAS_PROT", "0");
    s_axi_control_transactor_param_props.addLong("HAS_CACHE", "0");
    s_axi_control_transactor_param_props.addLong("HAS_QOS", "0");
    s_axi_control_transactor_param_props.addLong("HAS_REGION", "0");
    s_axi_control_transactor_param_props.addLong("HAS_WSTRB", "1");
    s_axi_control_transactor_param_props.addLong("HAS_BRESP", "1");
    s_axi_control_transactor_param_props.addLong("HAS_RRESP", "1");
    s_axi_control_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    s_axi_control_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    s_axi_control_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    s_axi_control_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    s_axi_control_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    s_axi_control_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    s_axi_control_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    s_axi_control_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    s_axi_control_transactor_param_props.addLong("HAS_SIZE", "0");
    s_axi_control_transactor_param_props.addLong("HAS_RESET", "1");
    s_axi_control_transactor_param_props.addFloat("PHASE", "0.0");
    s_axi_control_transactor_param_props.addString("ADDR_WIDTH", "6");
    s_axi_control_transactor_param_props.addString("DATA_WIDTH", "32");
    s_axi_control_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    s_axi_control_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    s_axi_control_transactor_param_props.addString("LAYERED_METADATA", "xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}");
    s_axi_control_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    s_axi_control_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_s_axi_control_transactor = new xtlm::xaximm_pin2xtlm_t<32,6,1,1,1,1,1,1>("s_axi_control_transactor", s_axi_control_transactor_param_props);

    // s_axi_control' transactor ports

    mp_s_axi_control_transactor->AWADDR(s_axi_control_AWADDR);
    mp_s_axi_control_transactor->AWVALID(s_axi_control_AWVALID);
    mp_s_axi_control_transactor->AWREADY(s_axi_control_AWREADY);
    mp_s_axi_control_transactor->WDATA(s_axi_control_WDATA);
    mp_s_axi_control_transactor->WSTRB(s_axi_control_WSTRB);
    mp_s_axi_control_transactor->WVALID(s_axi_control_WVALID);
    mp_s_axi_control_transactor->WREADY(s_axi_control_WREADY);
    mp_s_axi_control_transactor->BRESP(s_axi_control_BRESP);
    mp_s_axi_control_transactor->BVALID(s_axi_control_BVALID);
    mp_s_axi_control_transactor->BREADY(s_axi_control_BREADY);
    mp_s_axi_control_transactor->ARADDR(s_axi_control_ARADDR);
    mp_s_axi_control_transactor->ARVALID(s_axi_control_ARVALID);
    mp_s_axi_control_transactor->ARREADY(s_axi_control_ARREADY);
    mp_s_axi_control_transactor->RDATA(s_axi_control_RDATA);
    mp_s_axi_control_transactor->RRESP(s_axi_control_RRESP);
    mp_s_axi_control_transactor->RVALID(s_axi_control_RVALID);
    mp_s_axi_control_transactor->RREADY(s_axi_control_RREADY);
    mp_s_axi_control_transactor->CLK(ap_clk);
    mp_s_axi_control_transactor->RST(ap_rst_n);

    // s_axi_control' transactor sockets

    mp_impl->s_axi_control_rd_socket->bind(*(mp_s_axi_control_transactor->rd_socket));
    mp_impl->s_axi_control_wr_socket->bind(*(mp_s_axi_control_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'm_axi_gmem' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_copy_kernel_2_0", "m_axi_gmem_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'm_axi_gmem' transactor parameters
    xsc::common_cpp::properties m_axi_gmem_transactor_param_props;
    m_axi_gmem_transactor_param_props.addLong("ADDR_WIDTH", "64");
    m_axi_gmem_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    m_axi_gmem_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    m_axi_gmem_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    m_axi_gmem_transactor_param_props.addLong("MAX_READ_BURST_LENGTH", "16");
    m_axi_gmem_transactor_param_props.addLong("MAX_WRITE_BURST_LENGTH", "16");
    m_axi_gmem_transactor_param_props.addLong("HAS_BURST", "1");
    m_axi_gmem_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    m_axi_gmem_transactor_param_props.addLong("DATA_WIDTH", "512");
    m_axi_gmem_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    m_axi_gmem_transactor_param_props.addLong("ID_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("WUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("RUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("BUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("HAS_LOCK", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_PROT", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_CACHE", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_QOS", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_REGION", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_WSTRB", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_BRESP", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_RRESP", "1");
    m_axi_gmem_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    m_axi_gmem_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    m_axi_gmem_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    m_axi_gmem_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    m_axi_gmem_transactor_param_props.addLong("HAS_SIZE", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_RESET", "1");
    m_axi_gmem_transactor_param_props.addFloat("PHASE", "0.0");
    m_axi_gmem_transactor_param_props.addString("PROTOCOL", "AXI4");
    m_axi_gmem_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    m_axi_gmem_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    m_axi_gmem_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_m_axi_gmem_transactor = new xtlm::xaximm_xtlm2pin_t<512,64,1,1,1,1,1,1>("m_axi_gmem_transactor", m_axi_gmem_transactor_param_props);

    // m_axi_gmem' transactor ports

    mp_m_axi_gmem_transactor->AWADDR(m_axi_gmem_AWADDR);
    mp_m_axi_gmem_transactor->AWLEN(m_axi_gmem_AWLEN);
    mp_m_axi_gmem_transactor->AWSIZE(m_axi_gmem_AWSIZE);
    mp_m_axi_gmem_transactor->AWBURST(m_axi_gmem_AWBURST);
    mp_m_axi_gmem_AWLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_gmem_AWLOCK_converter");
    mp_m_axi_gmem_AWLOCK_converter->scalar_in(m_m_axi_gmem_AWLOCK_converter_signal);
    mp_m_axi_gmem_AWLOCK_converter->vector_out(m_axi_gmem_AWLOCK);
    mp_m_axi_gmem_transactor->AWLOCK(m_m_axi_gmem_AWLOCK_converter_signal);
    mp_m_axi_gmem_transactor->AWREGION(m_axi_gmem_AWREGION);
    mp_m_axi_gmem_transactor->AWCACHE(m_axi_gmem_AWCACHE);
    mp_m_axi_gmem_transactor->AWPROT(m_axi_gmem_AWPROT);
    mp_m_axi_gmem_transactor->AWQOS(m_axi_gmem_AWQOS);
    mp_m_axi_gmem_transactor->AWVALID(m_axi_gmem_AWVALID);
    mp_m_axi_gmem_transactor->AWREADY(m_axi_gmem_AWREADY);
    mp_m_axi_gmem_transactor->WDATA(m_axi_gmem_WDATA);
    mp_m_axi_gmem_transactor->WSTRB(m_axi_gmem_WSTRB);
    mp_m_axi_gmem_transactor->WLAST(m_axi_gmem_WLAST);
    mp_m_axi_gmem_transactor->WVALID(m_axi_gmem_WVALID);
    mp_m_axi_gmem_transactor->WREADY(m_axi_gmem_WREADY);
    mp_m_axi_gmem_transactor->BRESP(m_axi_gmem_BRESP);
    mp_m_axi_gmem_transactor->BVALID(m_axi_gmem_BVALID);
    mp_m_axi_gmem_transactor->BREADY(m_axi_gmem_BREADY);
    mp_m_axi_gmem_transactor->ARADDR(m_axi_gmem_ARADDR);
    mp_m_axi_gmem_transactor->ARLEN(m_axi_gmem_ARLEN);
    mp_m_axi_gmem_transactor->ARSIZE(m_axi_gmem_ARSIZE);
    mp_m_axi_gmem_transactor->ARBURST(m_axi_gmem_ARBURST);
    mp_m_axi_gmem_ARLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_gmem_ARLOCK_converter");
    mp_m_axi_gmem_ARLOCK_converter->scalar_in(m_m_axi_gmem_ARLOCK_converter_signal);
    mp_m_axi_gmem_ARLOCK_converter->vector_out(m_axi_gmem_ARLOCK);
    mp_m_axi_gmem_transactor->ARLOCK(m_m_axi_gmem_ARLOCK_converter_signal);
    mp_m_axi_gmem_transactor->ARREGION(m_axi_gmem_ARREGION);
    mp_m_axi_gmem_transactor->ARCACHE(m_axi_gmem_ARCACHE);
    mp_m_axi_gmem_transactor->ARPROT(m_axi_gmem_ARPROT);
    mp_m_axi_gmem_transactor->ARQOS(m_axi_gmem_ARQOS);
    mp_m_axi_gmem_transactor->ARVALID(m_axi_gmem_ARVALID);
    mp_m_axi_gmem_transactor->ARREADY(m_axi_gmem_ARREADY);
    mp_m_axi_gmem_transactor->RDATA(m_axi_gmem_RDATA);
    mp_m_axi_gmem_transactor->RRESP(m_axi_gmem_RRESP);
    mp_m_axi_gmem_transactor->RLAST(m_axi_gmem_RLAST);
    mp_m_axi_gmem_transactor->RVALID(m_axi_gmem_RVALID);
    mp_m_axi_gmem_transactor->RREADY(m_axi_gmem_RREADY);
    mp_m_axi_gmem_transactor->CLK(ap_clk);
    mp_m_axi_gmem_transactor->RST(ap_rst_n);

    // m_axi_gmem' transactor sockets

    mp_impl->m_axi_gmem_rd_socket->bind(*(mp_m_axi_gmem_transactor->rd_socket));
    mp_impl->m_axi_gmem_wr_socket->bind(*(mp_m_axi_gmem_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
emu_sim_copy_kernel_2_0::emu_sim_copy_kernel_2_0(const sc_core::sc_module_name& nm) : emu_sim_copy_kernel_2_0_sc(nm), s_axi_control_AWADDR("s_axi_control_AWADDR"), s_axi_control_AWVALID("s_axi_control_AWVALID"), s_axi_control_AWREADY("s_axi_control_AWREADY"), s_axi_control_WDATA("s_axi_control_WDATA"), s_axi_control_WSTRB("s_axi_control_WSTRB"), s_axi_control_WVALID("s_axi_control_WVALID"), s_axi_control_WREADY("s_axi_control_WREADY"), s_axi_control_BRESP("s_axi_control_BRESP"), s_axi_control_BVALID("s_axi_control_BVALID"), s_axi_control_BREADY("s_axi_control_BREADY"), s_axi_control_ARADDR("s_axi_control_ARADDR"), s_axi_control_ARVALID("s_axi_control_ARVALID"), s_axi_control_ARREADY("s_axi_control_ARREADY"), s_axi_control_RDATA("s_axi_control_RDATA"), s_axi_control_RRESP("s_axi_control_RRESP"), s_axi_control_RVALID("s_axi_control_RVALID"), s_axi_control_RREADY("s_axi_control_RREADY"), ap_clk("ap_clk"), ap_rst_n("ap_rst_n"), interrupt("interrupt"), m_axi_gmem_AWADDR("m_axi_gmem_AWADDR"), m_axi_gmem_AWLEN("m_axi_gmem_AWLEN"), m_axi_gmem_AWSIZE("m_axi_gmem_AWSIZE"), m_axi_gmem_AWBURST("m_axi_gmem_AWBURST"), m_axi_gmem_AWLOCK("m_axi_gmem_AWLOCK"), m_axi_gmem_AWREGION("m_axi_gmem_AWREGION"), m_axi_gmem_AWCACHE("m_axi_gmem_AWCACHE"), m_axi_gmem_AWPROT("m_axi_gmem_AWPROT"), m_axi_gmem_AWQOS("m_axi_gmem_AWQOS"), m_axi_gmem_AWVALID("m_axi_gmem_AWVALID"), m_axi_gmem_AWREADY("m_axi_gmem_AWREADY"), m_axi_gmem_WDATA("m_axi_gmem_WDATA"), m_axi_gmem_WSTRB("m_axi_gmem_WSTRB"), m_axi_gmem_WLAST("m_axi_gmem_WLAST"), m_axi_gmem_WVALID("m_axi_gmem_WVALID"), m_axi_gmem_WREADY("m_axi_gmem_WREADY"), m_axi_gmem_BRESP("m_axi_gmem_BRESP"), m_axi_gmem_BVALID("m_axi_gmem_BVALID"), m_axi_gmem_BREADY("m_axi_gmem_BREADY"), m_axi_gmem_ARADDR("m_axi_gmem_ARADDR"), m_axi_gmem_ARLEN("m_axi_gmem_ARLEN"), m_axi_gmem_ARSIZE("m_axi_gmem_ARSIZE"), m_axi_gmem_ARBURST("m_axi_gmem_ARBURST"), m_axi_gmem_ARLOCK("m_axi_gmem_ARLOCK"), m_axi_gmem_ARREGION("m_axi_gmem_ARREGION"), m_axi_gmem_ARCACHE("m_axi_gmem_ARCACHE"), m_axi_gmem_ARPROT("m_axi_gmem_ARPROT"), m_axi_gmem_ARQOS("m_axi_gmem_ARQOS"), m_axi_gmem_ARVALID("m_axi_gmem_ARVALID"), m_axi_gmem_ARREADY("m_axi_gmem_ARREADY"), m_axi_gmem_RDATA("m_axi_gmem_RDATA"), m_axi_gmem_RRESP("m_axi_gmem_RRESP"), m_axi_gmem_RLAST("m_axi_gmem_RLAST"), m_axi_gmem_RVALID("m_axi_gmem_RVALID"), m_axi_gmem_RREADY("m_axi_gmem_RREADY")
{

  // initialize pins
  mp_impl->ap_clk(ap_clk);
  mp_impl->ap_rst_n(ap_rst_n);
  mp_impl->interrupt(interrupt);

  // initialize transactors
  mp_s_axi_control_transactor = NULL;
  mp_m_axi_gmem_transactor = NULL;
  mp_m_axi_gmem_AWLOCK_converter = NULL;
  mp_m_axi_gmem_ARLOCK_converter = NULL;

  // initialize socket stubs

}

void emu_sim_copy_kernel_2_0::before_end_of_elaboration()
{
  // configure 's_axi_control' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_copy_kernel_2_0", "s_axi_control_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 's_axi_control' transactor parameters
    xsc::common_cpp::properties s_axi_control_transactor_param_props;
    s_axi_control_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    s_axi_control_transactor_param_props.addLong("ID_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("WUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("RUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("BUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("HAS_BURST", "0");
    s_axi_control_transactor_param_props.addLong("HAS_LOCK", "0");
    s_axi_control_transactor_param_props.addLong("HAS_PROT", "0");
    s_axi_control_transactor_param_props.addLong("HAS_CACHE", "0");
    s_axi_control_transactor_param_props.addLong("HAS_QOS", "0");
    s_axi_control_transactor_param_props.addLong("HAS_REGION", "0");
    s_axi_control_transactor_param_props.addLong("HAS_WSTRB", "1");
    s_axi_control_transactor_param_props.addLong("HAS_BRESP", "1");
    s_axi_control_transactor_param_props.addLong("HAS_RRESP", "1");
    s_axi_control_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    s_axi_control_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    s_axi_control_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    s_axi_control_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    s_axi_control_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    s_axi_control_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    s_axi_control_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    s_axi_control_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    s_axi_control_transactor_param_props.addLong("HAS_SIZE", "0");
    s_axi_control_transactor_param_props.addLong("HAS_RESET", "1");
    s_axi_control_transactor_param_props.addFloat("PHASE", "0.0");
    s_axi_control_transactor_param_props.addString("ADDR_WIDTH", "6");
    s_axi_control_transactor_param_props.addString("DATA_WIDTH", "32");
    s_axi_control_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    s_axi_control_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    s_axi_control_transactor_param_props.addString("LAYERED_METADATA", "xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}");
    s_axi_control_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    s_axi_control_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_s_axi_control_transactor = new xtlm::xaximm_pin2xtlm_t<32,6,1,1,1,1,1,1>("s_axi_control_transactor", s_axi_control_transactor_param_props);

    // s_axi_control' transactor ports

    mp_s_axi_control_transactor->AWADDR(s_axi_control_AWADDR);
    mp_s_axi_control_transactor->AWVALID(s_axi_control_AWVALID);
    mp_s_axi_control_transactor->AWREADY(s_axi_control_AWREADY);
    mp_s_axi_control_transactor->WDATA(s_axi_control_WDATA);
    mp_s_axi_control_transactor->WSTRB(s_axi_control_WSTRB);
    mp_s_axi_control_transactor->WVALID(s_axi_control_WVALID);
    mp_s_axi_control_transactor->WREADY(s_axi_control_WREADY);
    mp_s_axi_control_transactor->BRESP(s_axi_control_BRESP);
    mp_s_axi_control_transactor->BVALID(s_axi_control_BVALID);
    mp_s_axi_control_transactor->BREADY(s_axi_control_BREADY);
    mp_s_axi_control_transactor->ARADDR(s_axi_control_ARADDR);
    mp_s_axi_control_transactor->ARVALID(s_axi_control_ARVALID);
    mp_s_axi_control_transactor->ARREADY(s_axi_control_ARREADY);
    mp_s_axi_control_transactor->RDATA(s_axi_control_RDATA);
    mp_s_axi_control_transactor->RRESP(s_axi_control_RRESP);
    mp_s_axi_control_transactor->RVALID(s_axi_control_RVALID);
    mp_s_axi_control_transactor->RREADY(s_axi_control_RREADY);
    mp_s_axi_control_transactor->CLK(ap_clk);
    mp_s_axi_control_transactor->RST(ap_rst_n);

    // s_axi_control' transactor sockets

    mp_impl->s_axi_control_rd_socket->bind(*(mp_s_axi_control_transactor->rd_socket));
    mp_impl->s_axi_control_wr_socket->bind(*(mp_s_axi_control_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'm_axi_gmem' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_copy_kernel_2_0", "m_axi_gmem_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'm_axi_gmem' transactor parameters
    xsc::common_cpp::properties m_axi_gmem_transactor_param_props;
    m_axi_gmem_transactor_param_props.addLong("ADDR_WIDTH", "64");
    m_axi_gmem_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    m_axi_gmem_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    m_axi_gmem_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    m_axi_gmem_transactor_param_props.addLong("MAX_READ_BURST_LENGTH", "16");
    m_axi_gmem_transactor_param_props.addLong("MAX_WRITE_BURST_LENGTH", "16");
    m_axi_gmem_transactor_param_props.addLong("HAS_BURST", "1");
    m_axi_gmem_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    m_axi_gmem_transactor_param_props.addLong("DATA_WIDTH", "512");
    m_axi_gmem_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    m_axi_gmem_transactor_param_props.addLong("ID_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("WUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("RUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("BUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("HAS_LOCK", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_PROT", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_CACHE", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_QOS", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_REGION", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_WSTRB", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_BRESP", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_RRESP", "1");
    m_axi_gmem_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    m_axi_gmem_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    m_axi_gmem_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    m_axi_gmem_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    m_axi_gmem_transactor_param_props.addLong("HAS_SIZE", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_RESET", "1");
    m_axi_gmem_transactor_param_props.addFloat("PHASE", "0.0");
    m_axi_gmem_transactor_param_props.addString("PROTOCOL", "AXI4");
    m_axi_gmem_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    m_axi_gmem_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    m_axi_gmem_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_m_axi_gmem_transactor = new xtlm::xaximm_xtlm2pin_t<512,64,1,1,1,1,1,1>("m_axi_gmem_transactor", m_axi_gmem_transactor_param_props);

    // m_axi_gmem' transactor ports

    mp_m_axi_gmem_transactor->AWADDR(m_axi_gmem_AWADDR);
    mp_m_axi_gmem_transactor->AWLEN(m_axi_gmem_AWLEN);
    mp_m_axi_gmem_transactor->AWSIZE(m_axi_gmem_AWSIZE);
    mp_m_axi_gmem_transactor->AWBURST(m_axi_gmem_AWBURST);
    mp_m_axi_gmem_AWLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_gmem_AWLOCK_converter");
    mp_m_axi_gmem_AWLOCK_converter->scalar_in(m_m_axi_gmem_AWLOCK_converter_signal);
    mp_m_axi_gmem_AWLOCK_converter->vector_out(m_axi_gmem_AWLOCK);
    mp_m_axi_gmem_transactor->AWLOCK(m_m_axi_gmem_AWLOCK_converter_signal);
    mp_m_axi_gmem_transactor->AWREGION(m_axi_gmem_AWREGION);
    mp_m_axi_gmem_transactor->AWCACHE(m_axi_gmem_AWCACHE);
    mp_m_axi_gmem_transactor->AWPROT(m_axi_gmem_AWPROT);
    mp_m_axi_gmem_transactor->AWQOS(m_axi_gmem_AWQOS);
    mp_m_axi_gmem_transactor->AWVALID(m_axi_gmem_AWVALID);
    mp_m_axi_gmem_transactor->AWREADY(m_axi_gmem_AWREADY);
    mp_m_axi_gmem_transactor->WDATA(m_axi_gmem_WDATA);
    mp_m_axi_gmem_transactor->WSTRB(m_axi_gmem_WSTRB);
    mp_m_axi_gmem_transactor->WLAST(m_axi_gmem_WLAST);
    mp_m_axi_gmem_transactor->WVALID(m_axi_gmem_WVALID);
    mp_m_axi_gmem_transactor->WREADY(m_axi_gmem_WREADY);
    mp_m_axi_gmem_transactor->BRESP(m_axi_gmem_BRESP);
    mp_m_axi_gmem_transactor->BVALID(m_axi_gmem_BVALID);
    mp_m_axi_gmem_transactor->BREADY(m_axi_gmem_BREADY);
    mp_m_axi_gmem_transactor->ARADDR(m_axi_gmem_ARADDR);
    mp_m_axi_gmem_transactor->ARLEN(m_axi_gmem_ARLEN);
    mp_m_axi_gmem_transactor->ARSIZE(m_axi_gmem_ARSIZE);
    mp_m_axi_gmem_transactor->ARBURST(m_axi_gmem_ARBURST);
    mp_m_axi_gmem_ARLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_gmem_ARLOCK_converter");
    mp_m_axi_gmem_ARLOCK_converter->scalar_in(m_m_axi_gmem_ARLOCK_converter_signal);
    mp_m_axi_gmem_ARLOCK_converter->vector_out(m_axi_gmem_ARLOCK);
    mp_m_axi_gmem_transactor->ARLOCK(m_m_axi_gmem_ARLOCK_converter_signal);
    mp_m_axi_gmem_transactor->ARREGION(m_axi_gmem_ARREGION);
    mp_m_axi_gmem_transactor->ARCACHE(m_axi_gmem_ARCACHE);
    mp_m_axi_gmem_transactor->ARPROT(m_axi_gmem_ARPROT);
    mp_m_axi_gmem_transactor->ARQOS(m_axi_gmem_ARQOS);
    mp_m_axi_gmem_transactor->ARVALID(m_axi_gmem_ARVALID);
    mp_m_axi_gmem_transactor->ARREADY(m_axi_gmem_ARREADY);
    mp_m_axi_gmem_transactor->RDATA(m_axi_gmem_RDATA);
    mp_m_axi_gmem_transactor->RRESP(m_axi_gmem_RRESP);
    mp_m_axi_gmem_transactor->RLAST(m_axi_gmem_RLAST);
    mp_m_axi_gmem_transactor->RVALID(m_axi_gmem_RVALID);
    mp_m_axi_gmem_transactor->RREADY(m_axi_gmem_RREADY);
    mp_m_axi_gmem_transactor->CLK(ap_clk);
    mp_m_axi_gmem_transactor->RST(ap_rst_n);

    // m_axi_gmem' transactor sockets

    mp_impl->m_axi_gmem_rd_socket->bind(*(mp_m_axi_gmem_transactor->rd_socket));
    mp_impl->m_axi_gmem_wr_socket->bind(*(mp_m_axi_gmem_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
emu_sim_copy_kernel_2_0::emu_sim_copy_kernel_2_0(const sc_core::sc_module_name& nm) : emu_sim_copy_kernel_2_0_sc(nm),  s_axi_control_AWADDR("s_axi_control_AWADDR"), s_axi_control_AWVALID("s_axi_control_AWVALID"), s_axi_control_AWREADY("s_axi_control_AWREADY"), s_axi_control_WDATA("s_axi_control_WDATA"), s_axi_control_WSTRB("s_axi_control_WSTRB"), s_axi_control_WVALID("s_axi_control_WVALID"), s_axi_control_WREADY("s_axi_control_WREADY"), s_axi_control_BRESP("s_axi_control_BRESP"), s_axi_control_BVALID("s_axi_control_BVALID"), s_axi_control_BREADY("s_axi_control_BREADY"), s_axi_control_ARADDR("s_axi_control_ARADDR"), s_axi_control_ARVALID("s_axi_control_ARVALID"), s_axi_control_ARREADY("s_axi_control_ARREADY"), s_axi_control_RDATA("s_axi_control_RDATA"), s_axi_control_RRESP("s_axi_control_RRESP"), s_axi_control_RVALID("s_axi_control_RVALID"), s_axi_control_RREADY("s_axi_control_RREADY"), ap_clk("ap_clk"), ap_rst_n("ap_rst_n"), interrupt("interrupt"), m_axi_gmem_AWADDR("m_axi_gmem_AWADDR"), m_axi_gmem_AWLEN("m_axi_gmem_AWLEN"), m_axi_gmem_AWSIZE("m_axi_gmem_AWSIZE"), m_axi_gmem_AWBURST("m_axi_gmem_AWBURST"), m_axi_gmem_AWLOCK("m_axi_gmem_AWLOCK"), m_axi_gmem_AWREGION("m_axi_gmem_AWREGION"), m_axi_gmem_AWCACHE("m_axi_gmem_AWCACHE"), m_axi_gmem_AWPROT("m_axi_gmem_AWPROT"), m_axi_gmem_AWQOS("m_axi_gmem_AWQOS"), m_axi_gmem_AWVALID("m_axi_gmem_AWVALID"), m_axi_gmem_AWREADY("m_axi_gmem_AWREADY"), m_axi_gmem_WDATA("m_axi_gmem_WDATA"), m_axi_gmem_WSTRB("m_axi_gmem_WSTRB"), m_axi_gmem_WLAST("m_axi_gmem_WLAST"), m_axi_gmem_WVALID("m_axi_gmem_WVALID"), m_axi_gmem_WREADY("m_axi_gmem_WREADY"), m_axi_gmem_BRESP("m_axi_gmem_BRESP"), m_axi_gmem_BVALID("m_axi_gmem_BVALID"), m_axi_gmem_BREADY("m_axi_gmem_BREADY"), m_axi_gmem_ARADDR("m_axi_gmem_ARADDR"), m_axi_gmem_ARLEN("m_axi_gmem_ARLEN"), m_axi_gmem_ARSIZE("m_axi_gmem_ARSIZE"), m_axi_gmem_ARBURST("m_axi_gmem_ARBURST"), m_axi_gmem_ARLOCK("m_axi_gmem_ARLOCK"), m_axi_gmem_ARREGION("m_axi_gmem_ARREGION"), m_axi_gmem_ARCACHE("m_axi_gmem_ARCACHE"), m_axi_gmem_ARPROT("m_axi_gmem_ARPROT"), m_axi_gmem_ARQOS("m_axi_gmem_ARQOS"), m_axi_gmem_ARVALID("m_axi_gmem_ARVALID"), m_axi_gmem_ARREADY("m_axi_gmem_ARREADY"), m_axi_gmem_RDATA("m_axi_gmem_RDATA"), m_axi_gmem_RRESP("m_axi_gmem_RRESP"), m_axi_gmem_RLAST("m_axi_gmem_RLAST"), m_axi_gmem_RVALID("m_axi_gmem_RVALID"), m_axi_gmem_RREADY("m_axi_gmem_RREADY")
{
  // initialize pins
  mp_impl->ap_clk(ap_clk);
  mp_impl->ap_rst_n(ap_rst_n);
  mp_impl->interrupt(interrupt);

  // initialize transactors
  mp_s_axi_control_transactor = NULL;
  mp_m_axi_gmem_transactor = NULL;
  mp_m_axi_gmem_AWLOCK_converter = NULL;
  mp_m_axi_gmem_ARLOCK_converter = NULL;

  // Instantiate Socket Stubs

  // configure s_axi_control_transactor
    xsc::common_cpp::properties s_axi_control_transactor_param_props;
    s_axi_control_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    s_axi_control_transactor_param_props.addLong("ID_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("WUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("RUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("BUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("HAS_BURST", "0");
    s_axi_control_transactor_param_props.addLong("HAS_LOCK", "0");
    s_axi_control_transactor_param_props.addLong("HAS_PROT", "0");
    s_axi_control_transactor_param_props.addLong("HAS_CACHE", "0");
    s_axi_control_transactor_param_props.addLong("HAS_QOS", "0");
    s_axi_control_transactor_param_props.addLong("HAS_REGION", "0");
    s_axi_control_transactor_param_props.addLong("HAS_WSTRB", "1");
    s_axi_control_transactor_param_props.addLong("HAS_BRESP", "1");
    s_axi_control_transactor_param_props.addLong("HAS_RRESP", "1");
    s_axi_control_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    s_axi_control_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    s_axi_control_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    s_axi_control_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    s_axi_control_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    s_axi_control_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    s_axi_control_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    s_axi_control_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    s_axi_control_transactor_param_props.addLong("HAS_SIZE", "0");
    s_axi_control_transactor_param_props.addLong("HAS_RESET", "1");
    s_axi_control_transactor_param_props.addFloat("PHASE", "0.0");
    s_axi_control_transactor_param_props.addString("ADDR_WIDTH", "6");
    s_axi_control_transactor_param_props.addString("DATA_WIDTH", "32");
    s_axi_control_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    s_axi_control_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    s_axi_control_transactor_param_props.addString("LAYERED_METADATA", "xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}");
    s_axi_control_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    s_axi_control_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_s_axi_control_transactor = new xtlm::xaximm_pin2xtlm_t<32,6,1,1,1,1,1,1>("s_axi_control_transactor", s_axi_control_transactor_param_props);
  mp_s_axi_control_transactor->AWADDR(s_axi_control_AWADDR);
  mp_s_axi_control_transactor->AWVALID(s_axi_control_AWVALID);
  mp_s_axi_control_transactor->AWREADY(s_axi_control_AWREADY);
  mp_s_axi_control_transactor->WDATA(s_axi_control_WDATA);
  mp_s_axi_control_transactor->WSTRB(s_axi_control_WSTRB);
  mp_s_axi_control_transactor->WVALID(s_axi_control_WVALID);
  mp_s_axi_control_transactor->WREADY(s_axi_control_WREADY);
  mp_s_axi_control_transactor->BRESP(s_axi_control_BRESP);
  mp_s_axi_control_transactor->BVALID(s_axi_control_BVALID);
  mp_s_axi_control_transactor->BREADY(s_axi_control_BREADY);
  mp_s_axi_control_transactor->ARADDR(s_axi_control_ARADDR);
  mp_s_axi_control_transactor->ARVALID(s_axi_control_ARVALID);
  mp_s_axi_control_transactor->ARREADY(s_axi_control_ARREADY);
  mp_s_axi_control_transactor->RDATA(s_axi_control_RDATA);
  mp_s_axi_control_transactor->RRESP(s_axi_control_RRESP);
  mp_s_axi_control_transactor->RVALID(s_axi_control_RVALID);
  mp_s_axi_control_transactor->RREADY(s_axi_control_RREADY);
  mp_s_axi_control_transactor->CLK(ap_clk);
  mp_s_axi_control_transactor->RST(ap_rst_n);
  // configure m_axi_gmem_transactor
    xsc::common_cpp::properties m_axi_gmem_transactor_param_props;
    m_axi_gmem_transactor_param_props.addLong("ADDR_WIDTH", "64");
    m_axi_gmem_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    m_axi_gmem_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    m_axi_gmem_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    m_axi_gmem_transactor_param_props.addLong("MAX_READ_BURST_LENGTH", "16");
    m_axi_gmem_transactor_param_props.addLong("MAX_WRITE_BURST_LENGTH", "16");
    m_axi_gmem_transactor_param_props.addLong("HAS_BURST", "1");
    m_axi_gmem_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    m_axi_gmem_transactor_param_props.addLong("DATA_WIDTH", "512");
    m_axi_gmem_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    m_axi_gmem_transactor_param_props.addLong("ID_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("WUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("RUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("BUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("HAS_LOCK", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_PROT", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_CACHE", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_QOS", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_REGION", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_WSTRB", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_BRESP", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_RRESP", "1");
    m_axi_gmem_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    m_axi_gmem_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    m_axi_gmem_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    m_axi_gmem_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    m_axi_gmem_transactor_param_props.addLong("HAS_SIZE", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_RESET", "1");
    m_axi_gmem_transactor_param_props.addFloat("PHASE", "0.0");
    m_axi_gmem_transactor_param_props.addString("PROTOCOL", "AXI4");
    m_axi_gmem_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    m_axi_gmem_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    m_axi_gmem_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_m_axi_gmem_transactor = new xtlm::xaximm_xtlm2pin_t<512,64,1,1,1,1,1,1>("m_axi_gmem_transactor", m_axi_gmem_transactor_param_props);
  mp_m_axi_gmem_transactor->AWADDR(m_axi_gmem_AWADDR);
  mp_m_axi_gmem_transactor->AWLEN(m_axi_gmem_AWLEN);
  mp_m_axi_gmem_transactor->AWSIZE(m_axi_gmem_AWSIZE);
  mp_m_axi_gmem_transactor->AWBURST(m_axi_gmem_AWBURST);
  mp_m_axi_gmem_AWLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_gmem_AWLOCK_converter");
  mp_m_axi_gmem_AWLOCK_converter->scalar_in(m_m_axi_gmem_AWLOCK_converter_signal);
  mp_m_axi_gmem_AWLOCK_converter->vector_out(m_axi_gmem_AWLOCK);
  mp_m_axi_gmem_transactor->AWLOCK(m_m_axi_gmem_AWLOCK_converter_signal);
  mp_m_axi_gmem_transactor->AWREGION(m_axi_gmem_AWREGION);
  mp_m_axi_gmem_transactor->AWCACHE(m_axi_gmem_AWCACHE);
  mp_m_axi_gmem_transactor->AWPROT(m_axi_gmem_AWPROT);
  mp_m_axi_gmem_transactor->AWQOS(m_axi_gmem_AWQOS);
  mp_m_axi_gmem_transactor->AWVALID(m_axi_gmem_AWVALID);
  mp_m_axi_gmem_transactor->AWREADY(m_axi_gmem_AWREADY);
  mp_m_axi_gmem_transactor->WDATA(m_axi_gmem_WDATA);
  mp_m_axi_gmem_transactor->WSTRB(m_axi_gmem_WSTRB);
  mp_m_axi_gmem_transactor->WLAST(m_axi_gmem_WLAST);
  mp_m_axi_gmem_transactor->WVALID(m_axi_gmem_WVALID);
  mp_m_axi_gmem_transactor->WREADY(m_axi_gmem_WREADY);
  mp_m_axi_gmem_transactor->BRESP(m_axi_gmem_BRESP);
  mp_m_axi_gmem_transactor->BVALID(m_axi_gmem_BVALID);
  mp_m_axi_gmem_transactor->BREADY(m_axi_gmem_BREADY);
  mp_m_axi_gmem_transactor->ARADDR(m_axi_gmem_ARADDR);
  mp_m_axi_gmem_transactor->ARLEN(m_axi_gmem_ARLEN);
  mp_m_axi_gmem_transactor->ARSIZE(m_axi_gmem_ARSIZE);
  mp_m_axi_gmem_transactor->ARBURST(m_axi_gmem_ARBURST);
  mp_m_axi_gmem_ARLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_gmem_ARLOCK_converter");
  mp_m_axi_gmem_ARLOCK_converter->scalar_in(m_m_axi_gmem_ARLOCK_converter_signal);
  mp_m_axi_gmem_ARLOCK_converter->vector_out(m_axi_gmem_ARLOCK);
  mp_m_axi_gmem_transactor->ARLOCK(m_m_axi_gmem_ARLOCK_converter_signal);
  mp_m_axi_gmem_transactor->ARREGION(m_axi_gmem_ARREGION);
  mp_m_axi_gmem_transactor->ARCACHE(m_axi_gmem_ARCACHE);
  mp_m_axi_gmem_transactor->ARPROT(m_axi_gmem_ARPROT);
  mp_m_axi_gmem_transactor->ARQOS(m_axi_gmem_ARQOS);
  mp_m_axi_gmem_transactor->ARVALID(m_axi_gmem_ARVALID);
  mp_m_axi_gmem_transactor->ARREADY(m_axi_gmem_ARREADY);
  mp_m_axi_gmem_transactor->RDATA(m_axi_gmem_RDATA);
  mp_m_axi_gmem_transactor->RRESP(m_axi_gmem_RRESP);
  mp_m_axi_gmem_transactor->RLAST(m_axi_gmem_RLAST);
  mp_m_axi_gmem_transactor->RVALID(m_axi_gmem_RVALID);
  mp_m_axi_gmem_transactor->RREADY(m_axi_gmem_RREADY);
  mp_m_axi_gmem_transactor->CLK(ap_clk);
  mp_m_axi_gmem_transactor->RST(ap_rst_n);

  // initialize transactors stubs
  s_axi_control_transactor_target_wr_socket_stub = nullptr;
  s_axi_control_transactor_target_rd_socket_stub = nullptr;
  m_axi_gmem_transactor_initiator_wr_socket_stub = nullptr;
  m_axi_gmem_transactor_initiator_rd_socket_stub = nullptr;

}

void emu_sim_copy_kernel_2_0::before_end_of_elaboration()
{
  // configure 's_axi_control' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_copy_kernel_2_0", "s_axi_control_TLM_MODE") != 1)
  {
    mp_impl->s_axi_control_rd_socket->bind(*(mp_s_axi_control_transactor->rd_socket));
    mp_impl->s_axi_control_wr_socket->bind(*(mp_s_axi_control_transactor->wr_socket));
  
  }
  else
  {
    s_axi_control_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    s_axi_control_transactor_target_wr_socket_stub->bind(*(mp_s_axi_control_transactor->wr_socket));
    s_axi_control_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    s_axi_control_transactor_target_rd_socket_stub->bind(*(mp_s_axi_control_transactor->rd_socket));
    mp_s_axi_control_transactor->disable_transactor();
  }

  // configure 'm_axi_gmem' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_copy_kernel_2_0", "m_axi_gmem_TLM_MODE") != 1)
  {
    mp_impl->m_axi_gmem_rd_socket->bind(*(mp_m_axi_gmem_transactor->rd_socket));
    mp_impl->m_axi_gmem_wr_socket->bind(*(mp_m_axi_gmem_transactor->wr_socket));
  
  }
  else
  {
    m_axi_gmem_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    m_axi_gmem_transactor_initiator_wr_socket_stub->bind(*(mp_m_axi_gmem_transactor->wr_socket));
    m_axi_gmem_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    m_axi_gmem_transactor_initiator_rd_socket_stub->bind(*(mp_m_axi_gmem_transactor->rd_socket));
    mp_m_axi_gmem_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
emu_sim_copy_kernel_2_0::emu_sim_copy_kernel_2_0(const sc_core::sc_module_name& nm) : emu_sim_copy_kernel_2_0_sc(nm), s_axi_control_AWADDR("s_axi_control_AWADDR"), s_axi_control_AWVALID("s_axi_control_AWVALID"), s_axi_control_AWREADY("s_axi_control_AWREADY"), s_axi_control_WDATA("s_axi_control_WDATA"), s_axi_control_WSTRB("s_axi_control_WSTRB"), s_axi_control_WVALID("s_axi_control_WVALID"), s_axi_control_WREADY("s_axi_control_WREADY"), s_axi_control_BRESP("s_axi_control_BRESP"), s_axi_control_BVALID("s_axi_control_BVALID"), s_axi_control_BREADY("s_axi_control_BREADY"), s_axi_control_ARADDR("s_axi_control_ARADDR"), s_axi_control_ARVALID("s_axi_control_ARVALID"), s_axi_control_ARREADY("s_axi_control_ARREADY"), s_axi_control_RDATA("s_axi_control_RDATA"), s_axi_control_RRESP("s_axi_control_RRESP"), s_axi_control_RVALID("s_axi_control_RVALID"), s_axi_control_RREADY("s_axi_control_RREADY"), ap_clk("ap_clk"), ap_rst_n("ap_rst_n"), interrupt("interrupt"), m_axi_gmem_AWADDR("m_axi_gmem_AWADDR"), m_axi_gmem_AWLEN("m_axi_gmem_AWLEN"), m_axi_gmem_AWSIZE("m_axi_gmem_AWSIZE"), m_axi_gmem_AWBURST("m_axi_gmem_AWBURST"), m_axi_gmem_AWLOCK("m_axi_gmem_AWLOCK"), m_axi_gmem_AWREGION("m_axi_gmem_AWREGION"), m_axi_gmem_AWCACHE("m_axi_gmem_AWCACHE"), m_axi_gmem_AWPROT("m_axi_gmem_AWPROT"), m_axi_gmem_AWQOS("m_axi_gmem_AWQOS"), m_axi_gmem_AWVALID("m_axi_gmem_AWVALID"), m_axi_gmem_AWREADY("m_axi_gmem_AWREADY"), m_axi_gmem_WDATA("m_axi_gmem_WDATA"), m_axi_gmem_WSTRB("m_axi_gmem_WSTRB"), m_axi_gmem_WLAST("m_axi_gmem_WLAST"), m_axi_gmem_WVALID("m_axi_gmem_WVALID"), m_axi_gmem_WREADY("m_axi_gmem_WREADY"), m_axi_gmem_BRESP("m_axi_gmem_BRESP"), m_axi_gmem_BVALID("m_axi_gmem_BVALID"), m_axi_gmem_BREADY("m_axi_gmem_BREADY"), m_axi_gmem_ARADDR("m_axi_gmem_ARADDR"), m_axi_gmem_ARLEN("m_axi_gmem_ARLEN"), m_axi_gmem_ARSIZE("m_axi_gmem_ARSIZE"), m_axi_gmem_ARBURST("m_axi_gmem_ARBURST"), m_axi_gmem_ARLOCK("m_axi_gmem_ARLOCK"), m_axi_gmem_ARREGION("m_axi_gmem_ARREGION"), m_axi_gmem_ARCACHE("m_axi_gmem_ARCACHE"), m_axi_gmem_ARPROT("m_axi_gmem_ARPROT"), m_axi_gmem_ARQOS("m_axi_gmem_ARQOS"), m_axi_gmem_ARVALID("m_axi_gmem_ARVALID"), m_axi_gmem_ARREADY("m_axi_gmem_ARREADY"), m_axi_gmem_RDATA("m_axi_gmem_RDATA"), m_axi_gmem_RRESP("m_axi_gmem_RRESP"), m_axi_gmem_RLAST("m_axi_gmem_RLAST"), m_axi_gmem_RVALID("m_axi_gmem_RVALID"), m_axi_gmem_RREADY("m_axi_gmem_RREADY")
{

  // initialize pins
  mp_impl->ap_clk(ap_clk);
  mp_impl->ap_rst_n(ap_rst_n);
  mp_impl->interrupt(interrupt);

  // initialize transactors
  mp_s_axi_control_transactor = NULL;
  mp_m_axi_gmem_transactor = NULL;
  mp_m_axi_gmem_AWLOCK_converter = NULL;
  mp_m_axi_gmem_ARLOCK_converter = NULL;

  // initialize socket stubs

}

void emu_sim_copy_kernel_2_0::before_end_of_elaboration()
{
  // configure 's_axi_control' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_copy_kernel_2_0", "s_axi_control_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 's_axi_control' transactor parameters
    xsc::common_cpp::properties s_axi_control_transactor_param_props;
    s_axi_control_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    s_axi_control_transactor_param_props.addLong("ID_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("WUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("RUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("BUSER_WIDTH", "0");
    s_axi_control_transactor_param_props.addLong("HAS_BURST", "0");
    s_axi_control_transactor_param_props.addLong("HAS_LOCK", "0");
    s_axi_control_transactor_param_props.addLong("HAS_PROT", "0");
    s_axi_control_transactor_param_props.addLong("HAS_CACHE", "0");
    s_axi_control_transactor_param_props.addLong("HAS_QOS", "0");
    s_axi_control_transactor_param_props.addLong("HAS_REGION", "0");
    s_axi_control_transactor_param_props.addLong("HAS_WSTRB", "1");
    s_axi_control_transactor_param_props.addLong("HAS_BRESP", "1");
    s_axi_control_transactor_param_props.addLong("HAS_RRESP", "1");
    s_axi_control_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    s_axi_control_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "1");
    s_axi_control_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "1");
    s_axi_control_transactor_param_props.addLong("MAX_BURST_LENGTH", "1");
    s_axi_control_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    s_axi_control_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    s_axi_control_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    s_axi_control_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    s_axi_control_transactor_param_props.addLong("HAS_SIZE", "0");
    s_axi_control_transactor_param_props.addLong("HAS_RESET", "1");
    s_axi_control_transactor_param_props.addFloat("PHASE", "0.0");
    s_axi_control_transactor_param_props.addString("ADDR_WIDTH", "6");
    s_axi_control_transactor_param_props.addString("DATA_WIDTH", "32");
    s_axi_control_transactor_param_props.addString("PROTOCOL", "AXI4LITE");
    s_axi_control_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    s_axi_control_transactor_param_props.addString("LAYERED_METADATA", "xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}");
    s_axi_control_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    s_axi_control_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_s_axi_control_transactor = new xtlm::xaximm_pin2xtlm_t<32,6,1,1,1,1,1,1>("s_axi_control_transactor", s_axi_control_transactor_param_props);

    // s_axi_control' transactor ports

    mp_s_axi_control_transactor->AWADDR(s_axi_control_AWADDR);
    mp_s_axi_control_transactor->AWVALID(s_axi_control_AWVALID);
    mp_s_axi_control_transactor->AWREADY(s_axi_control_AWREADY);
    mp_s_axi_control_transactor->WDATA(s_axi_control_WDATA);
    mp_s_axi_control_transactor->WSTRB(s_axi_control_WSTRB);
    mp_s_axi_control_transactor->WVALID(s_axi_control_WVALID);
    mp_s_axi_control_transactor->WREADY(s_axi_control_WREADY);
    mp_s_axi_control_transactor->BRESP(s_axi_control_BRESP);
    mp_s_axi_control_transactor->BVALID(s_axi_control_BVALID);
    mp_s_axi_control_transactor->BREADY(s_axi_control_BREADY);
    mp_s_axi_control_transactor->ARADDR(s_axi_control_ARADDR);
    mp_s_axi_control_transactor->ARVALID(s_axi_control_ARVALID);
    mp_s_axi_control_transactor->ARREADY(s_axi_control_ARREADY);
    mp_s_axi_control_transactor->RDATA(s_axi_control_RDATA);
    mp_s_axi_control_transactor->RRESP(s_axi_control_RRESP);
    mp_s_axi_control_transactor->RVALID(s_axi_control_RVALID);
    mp_s_axi_control_transactor->RREADY(s_axi_control_RREADY);
    mp_s_axi_control_transactor->CLK(ap_clk);
    mp_s_axi_control_transactor->RST(ap_rst_n);

    // s_axi_control' transactor sockets

    mp_impl->s_axi_control_rd_socket->bind(*(mp_s_axi_control_transactor->rd_socket));
    mp_impl->s_axi_control_wr_socket->bind(*(mp_s_axi_control_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'm_axi_gmem' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("emu_sim_copy_kernel_2_0", "m_axi_gmem_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'm_axi_gmem' transactor parameters
    xsc::common_cpp::properties m_axi_gmem_transactor_param_props;
    m_axi_gmem_transactor_param_props.addLong("ADDR_WIDTH", "64");
    m_axi_gmem_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    m_axi_gmem_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    m_axi_gmem_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    m_axi_gmem_transactor_param_props.addLong("MAX_READ_BURST_LENGTH", "16");
    m_axi_gmem_transactor_param_props.addLong("MAX_WRITE_BURST_LENGTH", "16");
    m_axi_gmem_transactor_param_props.addLong("HAS_BURST", "1");
    m_axi_gmem_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    m_axi_gmem_transactor_param_props.addLong("DATA_WIDTH", "512");
    m_axi_gmem_transactor_param_props.addLong("FREQ_HZ", "300000000.0");
    m_axi_gmem_transactor_param_props.addLong("ID_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("WUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("RUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("BUSER_WIDTH", "0");
    m_axi_gmem_transactor_param_props.addLong("HAS_LOCK", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_PROT", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_CACHE", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_QOS", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_REGION", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_WSTRB", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_BRESP", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_RRESP", "1");
    m_axi_gmem_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    m_axi_gmem_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    m_axi_gmem_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    m_axi_gmem_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    m_axi_gmem_transactor_param_props.addLong("HAS_SIZE", "1");
    m_axi_gmem_transactor_param_props.addLong("HAS_RESET", "1");
    m_axi_gmem_transactor_param_props.addFloat("PHASE", "0.0");
    m_axi_gmem_transactor_param_props.addString("PROTOCOL", "AXI4");
    m_axi_gmem_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    m_axi_gmem_transactor_param_props.addString("CLK_DOMAIN", "emu_dma_pcie_clk_0_clk");
    m_axi_gmem_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_m_axi_gmem_transactor = new xtlm::xaximm_xtlm2pin_t<512,64,1,1,1,1,1,1>("m_axi_gmem_transactor", m_axi_gmem_transactor_param_props);

    // m_axi_gmem' transactor ports

    mp_m_axi_gmem_transactor->AWADDR(m_axi_gmem_AWADDR);
    mp_m_axi_gmem_transactor->AWLEN(m_axi_gmem_AWLEN);
    mp_m_axi_gmem_transactor->AWSIZE(m_axi_gmem_AWSIZE);
    mp_m_axi_gmem_transactor->AWBURST(m_axi_gmem_AWBURST);
    mp_m_axi_gmem_AWLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_gmem_AWLOCK_converter");
    mp_m_axi_gmem_AWLOCK_converter->scalar_in(m_m_axi_gmem_AWLOCK_converter_signal);
    mp_m_axi_gmem_AWLOCK_converter->vector_out(m_axi_gmem_AWLOCK);
    mp_m_axi_gmem_transactor->AWLOCK(m_m_axi_gmem_AWLOCK_converter_signal);
    mp_m_axi_gmem_transactor->AWREGION(m_axi_gmem_AWREGION);
    mp_m_axi_gmem_transactor->AWCACHE(m_axi_gmem_AWCACHE);
    mp_m_axi_gmem_transactor->AWPROT(m_axi_gmem_AWPROT);
    mp_m_axi_gmem_transactor->AWQOS(m_axi_gmem_AWQOS);
    mp_m_axi_gmem_transactor->AWVALID(m_axi_gmem_AWVALID);
    mp_m_axi_gmem_transactor->AWREADY(m_axi_gmem_AWREADY);
    mp_m_axi_gmem_transactor->WDATA(m_axi_gmem_WDATA);
    mp_m_axi_gmem_transactor->WSTRB(m_axi_gmem_WSTRB);
    mp_m_axi_gmem_transactor->WLAST(m_axi_gmem_WLAST);
    mp_m_axi_gmem_transactor->WVALID(m_axi_gmem_WVALID);
    mp_m_axi_gmem_transactor->WREADY(m_axi_gmem_WREADY);
    mp_m_axi_gmem_transactor->BRESP(m_axi_gmem_BRESP);
    mp_m_axi_gmem_transactor->BVALID(m_axi_gmem_BVALID);
    mp_m_axi_gmem_transactor->BREADY(m_axi_gmem_BREADY);
    mp_m_axi_gmem_transactor->ARADDR(m_axi_gmem_ARADDR);
    mp_m_axi_gmem_transactor->ARLEN(m_axi_gmem_ARLEN);
    mp_m_axi_gmem_transactor->ARSIZE(m_axi_gmem_ARSIZE);
    mp_m_axi_gmem_transactor->ARBURST(m_axi_gmem_ARBURST);
    mp_m_axi_gmem_ARLOCK_converter = new xsc::common::scalar2vectorN_converter<1>("m_axi_gmem_ARLOCK_converter");
    mp_m_axi_gmem_ARLOCK_converter->scalar_in(m_m_axi_gmem_ARLOCK_converter_signal);
    mp_m_axi_gmem_ARLOCK_converter->vector_out(m_axi_gmem_ARLOCK);
    mp_m_axi_gmem_transactor->ARLOCK(m_m_axi_gmem_ARLOCK_converter_signal);
    mp_m_axi_gmem_transactor->ARREGION(m_axi_gmem_ARREGION);
    mp_m_axi_gmem_transactor->ARCACHE(m_axi_gmem_ARCACHE);
    mp_m_axi_gmem_transactor->ARPROT(m_axi_gmem_ARPROT);
    mp_m_axi_gmem_transactor->ARQOS(m_axi_gmem_ARQOS);
    mp_m_axi_gmem_transactor->ARVALID(m_axi_gmem_ARVALID);
    mp_m_axi_gmem_transactor->ARREADY(m_axi_gmem_ARREADY);
    mp_m_axi_gmem_transactor->RDATA(m_axi_gmem_RDATA);
    mp_m_axi_gmem_transactor->RRESP(m_axi_gmem_RRESP);
    mp_m_axi_gmem_transactor->RLAST(m_axi_gmem_RLAST);
    mp_m_axi_gmem_transactor->RVALID(m_axi_gmem_RVALID);
    mp_m_axi_gmem_transactor->RREADY(m_axi_gmem_RREADY);
    mp_m_axi_gmem_transactor->CLK(ap_clk);
    mp_m_axi_gmem_transactor->RST(ap_rst_n);

    // m_axi_gmem' transactor sockets

    mp_impl->m_axi_gmem_rd_socket->bind(*(mp_m_axi_gmem_transactor->rd_socket));
    mp_impl->m_axi_gmem_wr_socket->bind(*(mp_m_axi_gmem_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // MTI_SYSTEMC




emu_sim_copy_kernel_2_0::~emu_sim_copy_kernel_2_0()
{
  delete mp_s_axi_control_transactor;

  delete mp_m_axi_gmem_transactor;
  delete mp_m_axi_gmem_AWLOCK_converter;
  delete mp_m_axi_gmem_ARLOCK_converter;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(emu_sim_copy_kernel_2_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(emu_sim_copy_kernel_2_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(emu_sim_copy_kernel_2_0);
SC_REGISTER_BV(512);
#endif

