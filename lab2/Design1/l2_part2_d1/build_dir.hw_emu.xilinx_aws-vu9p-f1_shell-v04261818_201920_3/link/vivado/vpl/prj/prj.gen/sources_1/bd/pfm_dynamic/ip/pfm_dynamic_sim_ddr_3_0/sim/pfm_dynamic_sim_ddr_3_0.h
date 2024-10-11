#ifndef IP_PFM_DYNAMIC_SIM_DDR_3_0_H_
#define IP_PFM_DYNAMIC_SIM_DDR_3_0_H_

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


#ifndef XTLM
#include "xtlm.h"
#endif
#ifndef SYSTEMC_INCLUDED
#include <systemc>
#endif

#if defined(_MSC_VER)
#define DllExport __declspec(dllexport)
#elif defined(__GNUC__)
#define DllExport __attribute__ ((visibility("default")))
#else
#define DllExport
#endif

#include "pfm_dynamic_sim_ddr_3_0_sc.h"




#ifdef XILINX_SIMULATOR
class DllExport pfm_dynamic_sim_ddr_3_0 : public pfm_dynamic_sim_ddr_3_0_sc
{
public:

  pfm_dynamic_sim_ddr_3_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_dynamic_sim_ddr_3_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > c0_ui_clk;
  sc_core::sc_in< sc_dt::sc_bv<5> > c0_ddr_saxi_awid;
  sc_core::sc_in< sc_dt::sc_bv<34> > c0_ddr_saxi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > c0_ddr_saxi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > c0_ddr_saxi_awburst;
  sc_core::sc_in< bool > c0_ddr_saxi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_awprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_awregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_awqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > c0_ddr_saxi_awuser;
  sc_core::sc_in< bool > c0_ddr_saxi_awvalid;
  sc_core::sc_out< bool > c0_ddr_saxi_awready;
  sc_core::sc_in< sc_dt::sc_bv<512> > c0_ddr_saxi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<64> > c0_ddr_saxi_wstrb;
  sc_core::sc_in< bool > c0_ddr_saxi_wlast;
  sc_core::sc_in< sc_dt::sc_bv<1> > c0_ddr_saxi_wuser;
  sc_core::sc_in< bool > c0_ddr_saxi_wvalid;
  sc_core::sc_out< bool > c0_ddr_saxi_wready;
  sc_core::sc_out< sc_dt::sc_bv<5> > c0_ddr_saxi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > c0_ddr_saxi_bresp;
  sc_core::sc_out< sc_dt::sc_bv<1> > c0_ddr_saxi_buser;
  sc_core::sc_out< bool > c0_ddr_saxi_bvalid;
  sc_core::sc_in< bool > c0_ddr_saxi_bready;
  sc_core::sc_in< sc_dt::sc_bv<5> > c0_ddr_saxi_arid;
  sc_core::sc_in< sc_dt::sc_bv<34> > c0_ddr_saxi_araddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > c0_ddr_saxi_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > c0_ddr_saxi_arburst;
  sc_core::sc_in< bool > c0_ddr_saxi_arlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_arcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_arprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_arregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_arqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > c0_ddr_saxi_aruser;
  sc_core::sc_in< bool > c0_ddr_saxi_arvalid;
  sc_core::sc_out< bool > c0_ddr_saxi_arready;
  sc_core::sc_out< sc_dt::sc_bv<5> > c0_ddr_saxi_rid;
  sc_core::sc_out< sc_dt::sc_bv<512> > c0_ddr_saxi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > c0_ddr_saxi_rresp;
  sc_core::sc_out< bool > c0_ddr_saxi_rlast;
  sc_core::sc_out< sc_dt::sc_bv<1> > c0_ddr_saxi_ruser;
  sc_core::sc_out< bool > c0_ddr_saxi_rvalid;
  sc_core::sc_in< bool > c0_ddr_saxi_rready;
  sc_core::sc_in< bool > c0_ddr_saxi_aclk;
  sc_core::sc_in< bool > c0_ddr_saxi_aresetn;
  sc_core::sc_in< sc_dt::sc_bv<5> > s_xdma_axi_awid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_xdma_axi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_xdma_axi_awburst;
  sc_core::sc_in< bool > s_xdma_axi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_awprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_awregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_awqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_awuser;
  sc_core::sc_in< bool > s_xdma_axi_awvalid;
  sc_core::sc_out< bool > s_xdma_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_wstrb;
  sc_core::sc_in< bool > s_xdma_axi_wlast;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_xdma_axi_wuser;
  sc_core::sc_in< bool > s_xdma_axi_wvalid;
  sc_core::sc_out< bool > s_xdma_axi_wready;
  sc_core::sc_out< sc_dt::sc_bv<5> > s_xdma_axi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_xdma_axi_bresp;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_xdma_axi_buser;
  sc_core::sc_out< bool > s_xdma_axi_bvalid;
  sc_core::sc_in< bool > s_xdma_axi_bready;
  sc_core::sc_in< sc_dt::sc_bv<5> > s_xdma_axi_arid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_araddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_xdma_axi_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_xdma_axi_arburst;
  sc_core::sc_in< bool > s_xdma_axi_arlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_arcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_arprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_arregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_arqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_aruser;
  sc_core::sc_in< bool > s_xdma_axi_arvalid;
  sc_core::sc_out< bool > s_xdma_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<5> > s_xdma_axi_rid;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_xdma_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_xdma_axi_rresp;
  sc_core::sc_out< bool > s_xdma_axi_rlast;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_xdma_axi_ruser;
  sc_core::sc_out< bool > s_xdma_axi_rvalid;
  sc_core::sc_in< bool > s_xdma_axi_rready;
  sc_core::sc_in< bool > s_xdma_axi_aclk;
  sc_core::sc_in< bool > s_xdma_axi_aresetn;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<512,34,5,32,1,1,32,1>* mp_C0_DDR_SAXI_transactor;
  xtlm::xaximm_pin2xtlm_t<32,32,5,32,1,1,32,1>* mp_S_XDMA_AXI_transactor;

};
#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
class DllExport pfm_dynamic_sim_ddr_3_0 : public pfm_dynamic_sim_ddr_3_0_sc
{
public:

  pfm_dynamic_sim_ddr_3_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_dynamic_sim_ddr_3_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > c0_ui_clk;
  sc_core::sc_in< sc_dt::sc_bv<5> > c0_ddr_saxi_awid;
  sc_core::sc_in< sc_dt::sc_bv<34> > c0_ddr_saxi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > c0_ddr_saxi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > c0_ddr_saxi_awburst;
  sc_core::sc_in< bool > c0_ddr_saxi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_awprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_awregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_awqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > c0_ddr_saxi_awuser;
  sc_core::sc_in< bool > c0_ddr_saxi_awvalid;
  sc_core::sc_out< bool > c0_ddr_saxi_awready;
  sc_core::sc_in< sc_dt::sc_bv<512> > c0_ddr_saxi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<64> > c0_ddr_saxi_wstrb;
  sc_core::sc_in< bool > c0_ddr_saxi_wlast;
  sc_core::sc_in< sc_dt::sc_bv<1> > c0_ddr_saxi_wuser;
  sc_core::sc_in< bool > c0_ddr_saxi_wvalid;
  sc_core::sc_out< bool > c0_ddr_saxi_wready;
  sc_core::sc_out< sc_dt::sc_bv<5> > c0_ddr_saxi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > c0_ddr_saxi_bresp;
  sc_core::sc_out< sc_dt::sc_bv<1> > c0_ddr_saxi_buser;
  sc_core::sc_out< bool > c0_ddr_saxi_bvalid;
  sc_core::sc_in< bool > c0_ddr_saxi_bready;
  sc_core::sc_in< sc_dt::sc_bv<5> > c0_ddr_saxi_arid;
  sc_core::sc_in< sc_dt::sc_bv<34> > c0_ddr_saxi_araddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > c0_ddr_saxi_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > c0_ddr_saxi_arburst;
  sc_core::sc_in< bool > c0_ddr_saxi_arlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_arcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_arprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_arregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_arqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > c0_ddr_saxi_aruser;
  sc_core::sc_in< bool > c0_ddr_saxi_arvalid;
  sc_core::sc_out< bool > c0_ddr_saxi_arready;
  sc_core::sc_out< sc_dt::sc_bv<5> > c0_ddr_saxi_rid;
  sc_core::sc_out< sc_dt::sc_bv<512> > c0_ddr_saxi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > c0_ddr_saxi_rresp;
  sc_core::sc_out< bool > c0_ddr_saxi_rlast;
  sc_core::sc_out< sc_dt::sc_bv<1> > c0_ddr_saxi_ruser;
  sc_core::sc_out< bool > c0_ddr_saxi_rvalid;
  sc_core::sc_in< bool > c0_ddr_saxi_rready;
  sc_core::sc_in< bool > c0_ddr_saxi_aclk;
  sc_core::sc_in< bool > c0_ddr_saxi_aresetn;
  sc_core::sc_in< sc_dt::sc_bv<5> > s_xdma_axi_awid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_xdma_axi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_xdma_axi_awburst;
  sc_core::sc_in< bool > s_xdma_axi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_awprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_awregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_awqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_awuser;
  sc_core::sc_in< bool > s_xdma_axi_awvalid;
  sc_core::sc_out< bool > s_xdma_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_wstrb;
  sc_core::sc_in< bool > s_xdma_axi_wlast;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_xdma_axi_wuser;
  sc_core::sc_in< bool > s_xdma_axi_wvalid;
  sc_core::sc_out< bool > s_xdma_axi_wready;
  sc_core::sc_out< sc_dt::sc_bv<5> > s_xdma_axi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_xdma_axi_bresp;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_xdma_axi_buser;
  sc_core::sc_out< bool > s_xdma_axi_bvalid;
  sc_core::sc_in< bool > s_xdma_axi_bready;
  sc_core::sc_in< sc_dt::sc_bv<5> > s_xdma_axi_arid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_araddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_xdma_axi_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_xdma_axi_arburst;
  sc_core::sc_in< bool > s_xdma_axi_arlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_arcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_arprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_arregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_arqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_aruser;
  sc_core::sc_in< bool > s_xdma_axi_arvalid;
  sc_core::sc_out< bool > s_xdma_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<5> > s_xdma_axi_rid;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_xdma_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_xdma_axi_rresp;
  sc_core::sc_out< bool > s_xdma_axi_rlast;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_xdma_axi_ruser;
  sc_core::sc_out< bool > s_xdma_axi_rvalid;
  sc_core::sc_in< bool > s_xdma_axi_rready;
  sc_core::sc_in< bool > s_xdma_axi_aclk;
  sc_core::sc_in< bool > s_xdma_axi_aresetn;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<512,34,5,32,1,1,32,1>* mp_C0_DDR_SAXI_transactor;
  xtlm::xaximm_pin2xtlm_t<32,32,5,32,1,1,32,1>* mp_S_XDMA_AXI_transactor;

};
#endif // XM_SYSTEMC




#ifdef RIVIERA
class DllExport pfm_dynamic_sim_ddr_3_0 : public pfm_dynamic_sim_ddr_3_0_sc
{
public:

  pfm_dynamic_sim_ddr_3_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_dynamic_sim_ddr_3_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > c0_ui_clk;
  sc_core::sc_in< sc_dt::sc_bv<5> > c0_ddr_saxi_awid;
  sc_core::sc_in< sc_dt::sc_bv<34> > c0_ddr_saxi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > c0_ddr_saxi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > c0_ddr_saxi_awburst;
  sc_core::sc_in< bool > c0_ddr_saxi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_awprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_awregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_awqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > c0_ddr_saxi_awuser;
  sc_core::sc_in< bool > c0_ddr_saxi_awvalid;
  sc_core::sc_out< bool > c0_ddr_saxi_awready;
  sc_core::sc_in< sc_dt::sc_bv<512> > c0_ddr_saxi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<64> > c0_ddr_saxi_wstrb;
  sc_core::sc_in< bool > c0_ddr_saxi_wlast;
  sc_core::sc_in< sc_dt::sc_bv<1> > c0_ddr_saxi_wuser;
  sc_core::sc_in< bool > c0_ddr_saxi_wvalid;
  sc_core::sc_out< bool > c0_ddr_saxi_wready;
  sc_core::sc_out< sc_dt::sc_bv<5> > c0_ddr_saxi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > c0_ddr_saxi_bresp;
  sc_core::sc_out< sc_dt::sc_bv<1> > c0_ddr_saxi_buser;
  sc_core::sc_out< bool > c0_ddr_saxi_bvalid;
  sc_core::sc_in< bool > c0_ddr_saxi_bready;
  sc_core::sc_in< sc_dt::sc_bv<5> > c0_ddr_saxi_arid;
  sc_core::sc_in< sc_dt::sc_bv<34> > c0_ddr_saxi_araddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > c0_ddr_saxi_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > c0_ddr_saxi_arburst;
  sc_core::sc_in< bool > c0_ddr_saxi_arlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_arcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_arprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_arregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_arqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > c0_ddr_saxi_aruser;
  sc_core::sc_in< bool > c0_ddr_saxi_arvalid;
  sc_core::sc_out< bool > c0_ddr_saxi_arready;
  sc_core::sc_out< sc_dt::sc_bv<5> > c0_ddr_saxi_rid;
  sc_core::sc_out< sc_dt::sc_bv<512> > c0_ddr_saxi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > c0_ddr_saxi_rresp;
  sc_core::sc_out< bool > c0_ddr_saxi_rlast;
  sc_core::sc_out< sc_dt::sc_bv<1> > c0_ddr_saxi_ruser;
  sc_core::sc_out< bool > c0_ddr_saxi_rvalid;
  sc_core::sc_in< bool > c0_ddr_saxi_rready;
  sc_core::sc_in< bool > c0_ddr_saxi_aclk;
  sc_core::sc_in< bool > c0_ddr_saxi_aresetn;
  sc_core::sc_in< sc_dt::sc_bv<5> > s_xdma_axi_awid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_xdma_axi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_xdma_axi_awburst;
  sc_core::sc_in< bool > s_xdma_axi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_awprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_awregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_awqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_awuser;
  sc_core::sc_in< bool > s_xdma_axi_awvalid;
  sc_core::sc_out< bool > s_xdma_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_wstrb;
  sc_core::sc_in< bool > s_xdma_axi_wlast;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_xdma_axi_wuser;
  sc_core::sc_in< bool > s_xdma_axi_wvalid;
  sc_core::sc_out< bool > s_xdma_axi_wready;
  sc_core::sc_out< sc_dt::sc_bv<5> > s_xdma_axi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_xdma_axi_bresp;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_xdma_axi_buser;
  sc_core::sc_out< bool > s_xdma_axi_bvalid;
  sc_core::sc_in< bool > s_xdma_axi_bready;
  sc_core::sc_in< sc_dt::sc_bv<5> > s_xdma_axi_arid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_araddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_xdma_axi_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_xdma_axi_arburst;
  sc_core::sc_in< bool > s_xdma_axi_arlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_arcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_arprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_arregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_arqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_aruser;
  sc_core::sc_in< bool > s_xdma_axi_arvalid;
  sc_core::sc_out< bool > s_xdma_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<5> > s_xdma_axi_rid;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_xdma_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_xdma_axi_rresp;
  sc_core::sc_out< bool > s_xdma_axi_rlast;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_xdma_axi_ruser;
  sc_core::sc_out< bool > s_xdma_axi_rvalid;
  sc_core::sc_in< bool > s_xdma_axi_rready;
  sc_core::sc_in< bool > s_xdma_axi_aclk;
  sc_core::sc_in< bool > s_xdma_axi_aresetn;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<512,34,5,32,1,1,32,1>* mp_C0_DDR_SAXI_transactor;
  xtlm::xaximm_pin2xtlm_t<32,32,5,32,1,1,32,1>* mp_S_XDMA_AXI_transactor;

};
#endif // RIVIERA




#ifdef VCSSYSTEMC
#include "utils/xtlm_aximm_target_stub.h"

class DllExport pfm_dynamic_sim_ddr_3_0 : public pfm_dynamic_sim_ddr_3_0_sc
{
public:

  pfm_dynamic_sim_ddr_3_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_dynamic_sim_ddr_3_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > c0_ui_clk;
  sc_core::sc_in< sc_dt::sc_bv<5> > c0_ddr_saxi_awid;
  sc_core::sc_in< sc_dt::sc_bv<34> > c0_ddr_saxi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > c0_ddr_saxi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > c0_ddr_saxi_awburst;
  sc_core::sc_in< bool > c0_ddr_saxi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_awprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_awregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_awqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > c0_ddr_saxi_awuser;
  sc_core::sc_in< bool > c0_ddr_saxi_awvalid;
  sc_core::sc_out< bool > c0_ddr_saxi_awready;
  sc_core::sc_in< sc_dt::sc_bv<512> > c0_ddr_saxi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<64> > c0_ddr_saxi_wstrb;
  sc_core::sc_in< bool > c0_ddr_saxi_wlast;
  sc_core::sc_in< sc_dt::sc_bv<1> > c0_ddr_saxi_wuser;
  sc_core::sc_in< bool > c0_ddr_saxi_wvalid;
  sc_core::sc_out< bool > c0_ddr_saxi_wready;
  sc_core::sc_out< sc_dt::sc_bv<5> > c0_ddr_saxi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > c0_ddr_saxi_bresp;
  sc_core::sc_out< sc_dt::sc_bv<1> > c0_ddr_saxi_buser;
  sc_core::sc_out< bool > c0_ddr_saxi_bvalid;
  sc_core::sc_in< bool > c0_ddr_saxi_bready;
  sc_core::sc_in< sc_dt::sc_bv<5> > c0_ddr_saxi_arid;
  sc_core::sc_in< sc_dt::sc_bv<34> > c0_ddr_saxi_araddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > c0_ddr_saxi_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > c0_ddr_saxi_arburst;
  sc_core::sc_in< bool > c0_ddr_saxi_arlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_arcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_arprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_arregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_arqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > c0_ddr_saxi_aruser;
  sc_core::sc_in< bool > c0_ddr_saxi_arvalid;
  sc_core::sc_out< bool > c0_ddr_saxi_arready;
  sc_core::sc_out< sc_dt::sc_bv<5> > c0_ddr_saxi_rid;
  sc_core::sc_out< sc_dt::sc_bv<512> > c0_ddr_saxi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > c0_ddr_saxi_rresp;
  sc_core::sc_out< bool > c0_ddr_saxi_rlast;
  sc_core::sc_out< sc_dt::sc_bv<1> > c0_ddr_saxi_ruser;
  sc_core::sc_out< bool > c0_ddr_saxi_rvalid;
  sc_core::sc_in< bool > c0_ddr_saxi_rready;
  sc_core::sc_in< bool > c0_ddr_saxi_aclk;
  sc_core::sc_in< bool > c0_ddr_saxi_aresetn;
  sc_core::sc_in< sc_dt::sc_bv<5> > s_xdma_axi_awid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_xdma_axi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_xdma_axi_awburst;
  sc_core::sc_in< bool > s_xdma_axi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_awprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_awregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_awqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_awuser;
  sc_core::sc_in< bool > s_xdma_axi_awvalid;
  sc_core::sc_out< bool > s_xdma_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_wstrb;
  sc_core::sc_in< bool > s_xdma_axi_wlast;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_xdma_axi_wuser;
  sc_core::sc_in< bool > s_xdma_axi_wvalid;
  sc_core::sc_out< bool > s_xdma_axi_wready;
  sc_core::sc_out< sc_dt::sc_bv<5> > s_xdma_axi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_xdma_axi_bresp;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_xdma_axi_buser;
  sc_core::sc_out< bool > s_xdma_axi_bvalid;
  sc_core::sc_in< bool > s_xdma_axi_bready;
  sc_core::sc_in< sc_dt::sc_bv<5> > s_xdma_axi_arid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_araddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_xdma_axi_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_xdma_axi_arburst;
  sc_core::sc_in< bool > s_xdma_axi_arlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_arcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_arprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_arregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_arqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_aruser;
  sc_core::sc_in< bool > s_xdma_axi_arvalid;
  sc_core::sc_out< bool > s_xdma_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<5> > s_xdma_axi_rid;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_xdma_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_xdma_axi_rresp;
  sc_core::sc_out< bool > s_xdma_axi_rlast;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_xdma_axi_ruser;
  sc_core::sc_out< bool > s_xdma_axi_rvalid;
  sc_core::sc_in< bool > s_xdma_axi_rready;
  sc_core::sc_in< bool > s_xdma_axi_aclk;
  sc_core::sc_in< bool > s_xdma_axi_aresetn;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<512,34,5,32,1,1,32,1>* mp_C0_DDR_SAXI_transactor;
  xtlm::xaximm_pin2xtlm_t<32,32,5,32,1,1,32,1>* mp_S_XDMA_AXI_transactor;

  // Transactor stubs
  xtlm::xtlm_aximm_target_stub * C0_DDR_SAXI_transactor_target_rd_socket_stub;
  xtlm::xtlm_aximm_target_stub * C0_DDR_SAXI_transactor_target_wr_socket_stub;
  xtlm::xtlm_aximm_target_stub * S_XDMA_AXI_transactor_target_rd_socket_stub;
  xtlm::xtlm_aximm_target_stub * S_XDMA_AXI_transactor_target_wr_socket_stub;

  // Socket stubs

};
#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
class DllExport pfm_dynamic_sim_ddr_3_0 : public pfm_dynamic_sim_ddr_3_0_sc
{
public:

  pfm_dynamic_sim_ddr_3_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_dynamic_sim_ddr_3_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > c0_ui_clk;
  sc_core::sc_in< sc_dt::sc_bv<5> > c0_ddr_saxi_awid;
  sc_core::sc_in< sc_dt::sc_bv<34> > c0_ddr_saxi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > c0_ddr_saxi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > c0_ddr_saxi_awburst;
  sc_core::sc_in< bool > c0_ddr_saxi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_awprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_awregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_awqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > c0_ddr_saxi_awuser;
  sc_core::sc_in< bool > c0_ddr_saxi_awvalid;
  sc_core::sc_out< bool > c0_ddr_saxi_awready;
  sc_core::sc_in< sc_dt::sc_bv<512> > c0_ddr_saxi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<64> > c0_ddr_saxi_wstrb;
  sc_core::sc_in< bool > c0_ddr_saxi_wlast;
  sc_core::sc_in< sc_dt::sc_bv<1> > c0_ddr_saxi_wuser;
  sc_core::sc_in< bool > c0_ddr_saxi_wvalid;
  sc_core::sc_out< bool > c0_ddr_saxi_wready;
  sc_core::sc_out< sc_dt::sc_bv<5> > c0_ddr_saxi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > c0_ddr_saxi_bresp;
  sc_core::sc_out< sc_dt::sc_bv<1> > c0_ddr_saxi_buser;
  sc_core::sc_out< bool > c0_ddr_saxi_bvalid;
  sc_core::sc_in< bool > c0_ddr_saxi_bready;
  sc_core::sc_in< sc_dt::sc_bv<5> > c0_ddr_saxi_arid;
  sc_core::sc_in< sc_dt::sc_bv<34> > c0_ddr_saxi_araddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > c0_ddr_saxi_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > c0_ddr_saxi_arburst;
  sc_core::sc_in< bool > c0_ddr_saxi_arlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_arcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > c0_ddr_saxi_arprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_arregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > c0_ddr_saxi_arqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > c0_ddr_saxi_aruser;
  sc_core::sc_in< bool > c0_ddr_saxi_arvalid;
  sc_core::sc_out< bool > c0_ddr_saxi_arready;
  sc_core::sc_out< sc_dt::sc_bv<5> > c0_ddr_saxi_rid;
  sc_core::sc_out< sc_dt::sc_bv<512> > c0_ddr_saxi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > c0_ddr_saxi_rresp;
  sc_core::sc_out< bool > c0_ddr_saxi_rlast;
  sc_core::sc_out< sc_dt::sc_bv<1> > c0_ddr_saxi_ruser;
  sc_core::sc_out< bool > c0_ddr_saxi_rvalid;
  sc_core::sc_in< bool > c0_ddr_saxi_rready;
  sc_core::sc_in< bool > c0_ddr_saxi_aclk;
  sc_core::sc_in< bool > c0_ddr_saxi_aresetn;
  sc_core::sc_in< sc_dt::sc_bv<5> > s_xdma_axi_awid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_xdma_axi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_xdma_axi_awburst;
  sc_core::sc_in< bool > s_xdma_axi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_awprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_awregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_awqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_awuser;
  sc_core::sc_in< bool > s_xdma_axi_awvalid;
  sc_core::sc_out< bool > s_xdma_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_wstrb;
  sc_core::sc_in< bool > s_xdma_axi_wlast;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_xdma_axi_wuser;
  sc_core::sc_in< bool > s_xdma_axi_wvalid;
  sc_core::sc_out< bool > s_xdma_axi_wready;
  sc_core::sc_out< sc_dt::sc_bv<5> > s_xdma_axi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_xdma_axi_bresp;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_xdma_axi_buser;
  sc_core::sc_out< bool > s_xdma_axi_bvalid;
  sc_core::sc_in< bool > s_xdma_axi_bready;
  sc_core::sc_in< sc_dt::sc_bv<5> > s_xdma_axi_arid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_araddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_xdma_axi_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_xdma_axi_arburst;
  sc_core::sc_in< bool > s_xdma_axi_arlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_arcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_xdma_axi_arprot;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_arregion;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_xdma_axi_arqos;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_xdma_axi_aruser;
  sc_core::sc_in< bool > s_xdma_axi_arvalid;
  sc_core::sc_out< bool > s_xdma_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<5> > s_xdma_axi_rid;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_xdma_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_xdma_axi_rresp;
  sc_core::sc_out< bool > s_xdma_axi_rlast;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_xdma_axi_ruser;
  sc_core::sc_out< bool > s_xdma_axi_rvalid;
  sc_core::sc_in< bool > s_xdma_axi_rready;
  sc_core::sc_in< bool > s_xdma_axi_aclk;
  sc_core::sc_in< bool > s_xdma_axi_aresetn;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<512,34,5,32,1,1,32,1>* mp_C0_DDR_SAXI_transactor;
  xtlm::xaximm_pin2xtlm_t<32,32,5,32,1,1,32,1>* mp_S_XDMA_AXI_transactor;

};
#endif // MTI_SYSTEMC
#endif // IP_PFM_DYNAMIC_SIM_DDR_3_0_H_
