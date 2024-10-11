#ifndef IP_PFM_DYNAMIC_DPA_HUB_0_H_
#define IP_PFM_DYNAMIC_DPA_HUB_0_H_

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

#include "pfm_dynamic_dpa_hub_0_sc.h"




#ifdef XILINX_SIMULATOR
class DllExport pfm_dynamic_dpa_hub_0 : public pfm_dynamic_dpa_hub_0_sc
{
public:

  pfm_dynamic_dpa_hub_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_dynamic_dpa_hub_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > s_aximm_clk;
  sc_core::sc_in< bool > s_aximm_aresetn;
  sc_core::sc_in< bool > trace_clk;
  sc_core::sc_in< bool > trace_aresetn;
  sc_core::sc_in< bool > axilite_clk;
  sc_core::sc_in< bool > axilite_aresetn;
  sc_core::sc_out< bool > trace_tready0;
  sc_core::sc_in< sc_dt::sc_bv<64> > trace_tdata0;
  sc_core::sc_in< bool > trace_tlast0;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tid0;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tdest0;
  sc_core::sc_in< bool > trace_tvalid0;
  sc_core::sc_out< bool > trace_tready1;
  sc_core::sc_out< sc_dt::sc_bv<64> > trace_tdata1;
  sc_core::sc_in< bool > trace_tlast1;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tid1;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tdest1;
  sc_core::sc_in< bool > trace_tvalid1;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awaddr;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_araddr;
  sc_core::sc_in< bool > s_axi_arvalid;
  sc_core::sc_out< bool > s_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_rresp;
  sc_core::sc_out< bool > s_axi_rvalid;
  sc_core::sc_in< bool > s_axi_rready;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axihub_awaddr;
  sc_core::sc_in< bool > s_axihub_awvalid;
  sc_core::sc_out< bool > s_axihub_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axihub_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axihub_wstrb;
  sc_core::sc_in< bool > s_axihub_wvalid;
  sc_core::sc_out< bool > s_axihub_wready;
  sc_core::sc_out< bool > s_axihub_bvalid;
  sc_core::sc_in< bool > s_axihub_bready;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axihub_bresp;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axihub_araddr;
  sc_core::sc_in< bool > s_axihub_arvalid;
  sc_core::sc_out< bool > s_axihub_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axihub_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axihub_rresp;
  sc_core::sc_out< bool > s_axihub_rvalid;
  sc_core::sc_in< bool > s_axihub_rready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_aximm_awaddr;
  sc_core::sc_in< bool > s_aximm_awvalid;
  sc_core::sc_out< bool > s_aximm_awready;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_aximm_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_aximm_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_aximm_awburst;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_aximm_awid;
  sc_core::sc_in< sc_dt::sc_bv<64> > s_aximm_wdata;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_aximm_wstrb;
  sc_core::sc_in< bool > s_aximm_wvalid;
  sc_core::sc_out< bool > s_aximm_wready;
  sc_core::sc_out< bool > s_aximm_bvalid;
  sc_core::sc_in< bool > s_aximm_bready;
  sc_core::sc_in< bool > s_aximm_wlast;
  sc_core::sc_out< bool > s_aximm_rlast;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_aximm_bresp;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_aximm_bid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_aximm_araddr;
  sc_core::sc_in< bool > s_aximm_arvalid;
  sc_core::sc_out< bool > s_aximm_arready;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_aximm_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_aximm_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_aximm_arburst;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_aximm_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > s_aximm_rdata;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_aximm_rid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_aximm_rresp;
  sc_core::sc_out< bool > s_aximm_rvalid;
  sc_core::sc_in< bool > s_aximm_rready;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<64,32,1,1,1,1,1,1>* mp_S_AXIMM_transactor;
  xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>* mp_S_AXIFIFO_transactor;
  xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>* mp_S_AXIHUB_transactor;
  xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>* mp_TRACE_IN_0_transactor;
  xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>* mp_TRACE_IN_1_transactor;

};
#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
class DllExport pfm_dynamic_dpa_hub_0 : public pfm_dynamic_dpa_hub_0_sc
{
public:

  pfm_dynamic_dpa_hub_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_dynamic_dpa_hub_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > s_aximm_clk;
  sc_core::sc_in< bool > s_aximm_aresetn;
  sc_core::sc_in< bool > trace_clk;
  sc_core::sc_in< bool > trace_aresetn;
  sc_core::sc_in< bool > axilite_clk;
  sc_core::sc_in< bool > axilite_aresetn;
  sc_core::sc_out< bool > trace_tready0;
  sc_core::sc_in< sc_dt::sc_bv<64> > trace_tdata0;
  sc_core::sc_in< bool > trace_tlast0;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tid0;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tdest0;
  sc_core::sc_in< bool > trace_tvalid0;
  sc_core::sc_out< bool > trace_tready1;
  sc_core::sc_out< sc_dt::sc_bv<64> > trace_tdata1;
  sc_core::sc_in< bool > trace_tlast1;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tid1;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tdest1;
  sc_core::sc_in< bool > trace_tvalid1;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awaddr;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_araddr;
  sc_core::sc_in< bool > s_axi_arvalid;
  sc_core::sc_out< bool > s_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_rresp;
  sc_core::sc_out< bool > s_axi_rvalid;
  sc_core::sc_in< bool > s_axi_rready;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axihub_awaddr;
  sc_core::sc_in< bool > s_axihub_awvalid;
  sc_core::sc_out< bool > s_axihub_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axihub_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axihub_wstrb;
  sc_core::sc_in< bool > s_axihub_wvalid;
  sc_core::sc_out< bool > s_axihub_wready;
  sc_core::sc_out< bool > s_axihub_bvalid;
  sc_core::sc_in< bool > s_axihub_bready;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axihub_bresp;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axihub_araddr;
  sc_core::sc_in< bool > s_axihub_arvalid;
  sc_core::sc_out< bool > s_axihub_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axihub_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axihub_rresp;
  sc_core::sc_out< bool > s_axihub_rvalid;
  sc_core::sc_in< bool > s_axihub_rready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_aximm_awaddr;
  sc_core::sc_in< bool > s_aximm_awvalid;
  sc_core::sc_out< bool > s_aximm_awready;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_aximm_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_aximm_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_aximm_awburst;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_aximm_awid;
  sc_core::sc_in< sc_dt::sc_bv<64> > s_aximm_wdata;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_aximm_wstrb;
  sc_core::sc_in< bool > s_aximm_wvalid;
  sc_core::sc_out< bool > s_aximm_wready;
  sc_core::sc_out< bool > s_aximm_bvalid;
  sc_core::sc_in< bool > s_aximm_bready;
  sc_core::sc_in< bool > s_aximm_wlast;
  sc_core::sc_out< bool > s_aximm_rlast;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_aximm_bresp;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_aximm_bid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_aximm_araddr;
  sc_core::sc_in< bool > s_aximm_arvalid;
  sc_core::sc_out< bool > s_aximm_arready;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_aximm_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_aximm_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_aximm_arburst;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_aximm_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > s_aximm_rdata;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_aximm_rid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_aximm_rresp;
  sc_core::sc_out< bool > s_aximm_rvalid;
  sc_core::sc_in< bool > s_aximm_rready;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<64,32,1,1,1,1,1,1>* mp_S_AXIMM_transactor;
  xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>* mp_S_AXIFIFO_transactor;
  xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>* mp_S_AXIHUB_transactor;
  xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>* mp_TRACE_IN_0_transactor;
  xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>* mp_TRACE_IN_1_transactor;

};
#endif // XM_SYSTEMC




#ifdef RIVIERA
class DllExport pfm_dynamic_dpa_hub_0 : public pfm_dynamic_dpa_hub_0_sc
{
public:

  pfm_dynamic_dpa_hub_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_dynamic_dpa_hub_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > s_aximm_clk;
  sc_core::sc_in< bool > s_aximm_aresetn;
  sc_core::sc_in< bool > trace_clk;
  sc_core::sc_in< bool > trace_aresetn;
  sc_core::sc_in< bool > axilite_clk;
  sc_core::sc_in< bool > axilite_aresetn;
  sc_core::sc_out< bool > trace_tready0;
  sc_core::sc_in< sc_dt::sc_bv<64> > trace_tdata0;
  sc_core::sc_in< bool > trace_tlast0;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tid0;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tdest0;
  sc_core::sc_in< bool > trace_tvalid0;
  sc_core::sc_out< bool > trace_tready1;
  sc_core::sc_out< sc_dt::sc_bv<64> > trace_tdata1;
  sc_core::sc_in< bool > trace_tlast1;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tid1;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tdest1;
  sc_core::sc_in< bool > trace_tvalid1;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awaddr;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_araddr;
  sc_core::sc_in< bool > s_axi_arvalid;
  sc_core::sc_out< bool > s_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_rresp;
  sc_core::sc_out< bool > s_axi_rvalid;
  sc_core::sc_in< bool > s_axi_rready;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axihub_awaddr;
  sc_core::sc_in< bool > s_axihub_awvalid;
  sc_core::sc_out< bool > s_axihub_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axihub_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axihub_wstrb;
  sc_core::sc_in< bool > s_axihub_wvalid;
  sc_core::sc_out< bool > s_axihub_wready;
  sc_core::sc_out< bool > s_axihub_bvalid;
  sc_core::sc_in< bool > s_axihub_bready;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axihub_bresp;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axihub_araddr;
  sc_core::sc_in< bool > s_axihub_arvalid;
  sc_core::sc_out< bool > s_axihub_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axihub_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axihub_rresp;
  sc_core::sc_out< bool > s_axihub_rvalid;
  sc_core::sc_in< bool > s_axihub_rready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_aximm_awaddr;
  sc_core::sc_in< bool > s_aximm_awvalid;
  sc_core::sc_out< bool > s_aximm_awready;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_aximm_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_aximm_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_aximm_awburst;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_aximm_awid;
  sc_core::sc_in< sc_dt::sc_bv<64> > s_aximm_wdata;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_aximm_wstrb;
  sc_core::sc_in< bool > s_aximm_wvalid;
  sc_core::sc_out< bool > s_aximm_wready;
  sc_core::sc_out< bool > s_aximm_bvalid;
  sc_core::sc_in< bool > s_aximm_bready;
  sc_core::sc_in< bool > s_aximm_wlast;
  sc_core::sc_out< bool > s_aximm_rlast;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_aximm_bresp;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_aximm_bid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_aximm_araddr;
  sc_core::sc_in< bool > s_aximm_arvalid;
  sc_core::sc_out< bool > s_aximm_arready;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_aximm_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_aximm_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_aximm_arburst;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_aximm_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > s_aximm_rdata;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_aximm_rid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_aximm_rresp;
  sc_core::sc_out< bool > s_aximm_rvalid;
  sc_core::sc_in< bool > s_aximm_rready;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<64,32,1,1,1,1,1,1>* mp_S_AXIMM_transactor;
  xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>* mp_S_AXIFIFO_transactor;
  xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>* mp_S_AXIHUB_transactor;
  xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>* mp_TRACE_IN_0_transactor;
  xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>* mp_TRACE_IN_1_transactor;

};
#endif // RIVIERA




#ifdef VCSSYSTEMC
#include "utils/xtlm_aximm_target_stub.h"

#include "utils/xtlm_axis_target_stub.h"

class DllExport pfm_dynamic_dpa_hub_0 : public pfm_dynamic_dpa_hub_0_sc
{
public:

  pfm_dynamic_dpa_hub_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_dynamic_dpa_hub_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > s_aximm_clk;
  sc_core::sc_in< bool > s_aximm_aresetn;
  sc_core::sc_in< bool > trace_clk;
  sc_core::sc_in< bool > trace_aresetn;
  sc_core::sc_in< bool > axilite_clk;
  sc_core::sc_in< bool > axilite_aresetn;
  sc_core::sc_out< bool > trace_tready0;
  sc_core::sc_in< sc_dt::sc_bv<64> > trace_tdata0;
  sc_core::sc_in< bool > trace_tlast0;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tid0;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tdest0;
  sc_core::sc_in< bool > trace_tvalid0;
  sc_core::sc_out< bool > trace_tready1;
  sc_core::sc_out< sc_dt::sc_bv<64> > trace_tdata1;
  sc_core::sc_in< bool > trace_tlast1;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tid1;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tdest1;
  sc_core::sc_in< bool > trace_tvalid1;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awaddr;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_araddr;
  sc_core::sc_in< bool > s_axi_arvalid;
  sc_core::sc_out< bool > s_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_rresp;
  sc_core::sc_out< bool > s_axi_rvalid;
  sc_core::sc_in< bool > s_axi_rready;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axihub_awaddr;
  sc_core::sc_in< bool > s_axihub_awvalid;
  sc_core::sc_out< bool > s_axihub_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axihub_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axihub_wstrb;
  sc_core::sc_in< bool > s_axihub_wvalid;
  sc_core::sc_out< bool > s_axihub_wready;
  sc_core::sc_out< bool > s_axihub_bvalid;
  sc_core::sc_in< bool > s_axihub_bready;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axihub_bresp;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axihub_araddr;
  sc_core::sc_in< bool > s_axihub_arvalid;
  sc_core::sc_out< bool > s_axihub_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axihub_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axihub_rresp;
  sc_core::sc_out< bool > s_axihub_rvalid;
  sc_core::sc_in< bool > s_axihub_rready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_aximm_awaddr;
  sc_core::sc_in< bool > s_aximm_awvalid;
  sc_core::sc_out< bool > s_aximm_awready;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_aximm_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_aximm_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_aximm_awburst;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_aximm_awid;
  sc_core::sc_in< sc_dt::sc_bv<64> > s_aximm_wdata;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_aximm_wstrb;
  sc_core::sc_in< bool > s_aximm_wvalid;
  sc_core::sc_out< bool > s_aximm_wready;
  sc_core::sc_out< bool > s_aximm_bvalid;
  sc_core::sc_in< bool > s_aximm_bready;
  sc_core::sc_in< bool > s_aximm_wlast;
  sc_core::sc_out< bool > s_aximm_rlast;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_aximm_bresp;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_aximm_bid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_aximm_araddr;
  sc_core::sc_in< bool > s_aximm_arvalid;
  sc_core::sc_out< bool > s_aximm_arready;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_aximm_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_aximm_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_aximm_arburst;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_aximm_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > s_aximm_rdata;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_aximm_rid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_aximm_rresp;
  sc_core::sc_out< bool > s_aximm_rvalid;
  sc_core::sc_in< bool > s_aximm_rready;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<64,32,1,1,1,1,1,1>* mp_S_AXIMM_transactor;
  xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>* mp_S_AXIFIFO_transactor;
  xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>* mp_S_AXIHUB_transactor;
  xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>* mp_TRACE_IN_0_transactor;
  xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>* mp_TRACE_IN_1_transactor;

  // Transactor stubs
  xtlm::xtlm_aximm_target_stub * S_AXIFIFO_transactor_target_rd_socket_stub;
  xtlm::xtlm_aximm_target_stub * S_AXIFIFO_transactor_target_wr_socket_stub;
  xtlm::xtlm_aximm_target_stub * S_AXIHUB_transactor_target_rd_socket_stub;
  xtlm::xtlm_aximm_target_stub * S_AXIHUB_transactor_target_wr_socket_stub;
  xtlm::xtlm_aximm_target_stub * S_AXIMM_transactor_target_rd_socket_stub;
  xtlm::xtlm_aximm_target_stub * S_AXIMM_transactor_target_wr_socket_stub;
  xtlm::xtlm_axis_target_stub * TRACE_IN_0_transactor_target_socket_stub;
  xtlm::xtlm_axis_target_stub * TRACE_IN_1_transactor_target_socket_stub;

  // Socket stubs

};
#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
class DllExport pfm_dynamic_dpa_hub_0 : public pfm_dynamic_dpa_hub_0_sc
{
public:

  pfm_dynamic_dpa_hub_0(const sc_core::sc_module_name& nm);
  virtual ~pfm_dynamic_dpa_hub_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > s_aximm_clk;
  sc_core::sc_in< bool > s_aximm_aresetn;
  sc_core::sc_in< bool > trace_clk;
  sc_core::sc_in< bool > trace_aresetn;
  sc_core::sc_in< bool > axilite_clk;
  sc_core::sc_in< bool > axilite_aresetn;
  sc_core::sc_out< bool > trace_tready0;
  sc_core::sc_in< sc_dt::sc_bv<64> > trace_tdata0;
  sc_core::sc_in< bool > trace_tlast0;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tid0;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tdest0;
  sc_core::sc_in< bool > trace_tvalid0;
  sc_core::sc_out< bool > trace_tready1;
  sc_core::sc_out< sc_dt::sc_bv<64> > trace_tdata1;
  sc_core::sc_in< bool > trace_tlast1;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tid1;
  sc_core::sc_in< sc_dt::sc_bv<8> > trace_tdest1;
  sc_core::sc_in< bool > trace_tvalid1;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awaddr;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_araddr;
  sc_core::sc_in< bool > s_axi_arvalid;
  sc_core::sc_out< bool > s_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_rresp;
  sc_core::sc_out< bool > s_axi_rvalid;
  sc_core::sc_in< bool > s_axi_rready;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axihub_awaddr;
  sc_core::sc_in< bool > s_axihub_awvalid;
  sc_core::sc_out< bool > s_axihub_awready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axihub_wdata;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axihub_wstrb;
  sc_core::sc_in< bool > s_axihub_wvalid;
  sc_core::sc_out< bool > s_axihub_wready;
  sc_core::sc_out< bool > s_axihub_bvalid;
  sc_core::sc_in< bool > s_axihub_bready;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axihub_bresp;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axihub_araddr;
  sc_core::sc_in< bool > s_axihub_arvalid;
  sc_core::sc_out< bool > s_axihub_arready;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axihub_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axihub_rresp;
  sc_core::sc_out< bool > s_axihub_rvalid;
  sc_core::sc_in< bool > s_axihub_rready;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_aximm_awaddr;
  sc_core::sc_in< bool > s_aximm_awvalid;
  sc_core::sc_out< bool > s_aximm_awready;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_aximm_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_aximm_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_aximm_awburst;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_aximm_awid;
  sc_core::sc_in< sc_dt::sc_bv<64> > s_aximm_wdata;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_aximm_wstrb;
  sc_core::sc_in< bool > s_aximm_wvalid;
  sc_core::sc_out< bool > s_aximm_wready;
  sc_core::sc_out< bool > s_aximm_bvalid;
  sc_core::sc_in< bool > s_aximm_bready;
  sc_core::sc_in< bool > s_aximm_wlast;
  sc_core::sc_out< bool > s_aximm_rlast;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_aximm_bresp;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_aximm_bid;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_aximm_araddr;
  sc_core::sc_in< bool > s_aximm_arvalid;
  sc_core::sc_out< bool > s_aximm_arready;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_aximm_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_aximm_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_aximm_arburst;
  sc_core::sc_in< sc_dt::sc_bv<1> > s_aximm_arid;
  sc_core::sc_out< sc_dt::sc_bv<64> > s_aximm_rdata;
  sc_core::sc_out< sc_dt::sc_bv<1> > s_aximm_rid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_aximm_rresp;
  sc_core::sc_out< bool > s_aximm_rvalid;
  sc_core::sc_in< bool > s_aximm_rready;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<64,32,1,1,1,1,1,1>* mp_S_AXIMM_transactor;
  xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>* mp_S_AXIFIFO_transactor;
  xtlm::xaximm_pin2xtlm_t<32,8,1,1,1,1,1,1>* mp_S_AXIHUB_transactor;
  xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>* mp_TRACE_IN_0_transactor;
  xtlm::xaxis_pin2xtlm_t<8,1,8,8,1,1>* mp_TRACE_IN_1_transactor;

};
#endif // MTI_SYSTEMC
#endif // IP_PFM_DYNAMIC_DPA_HUB_0_H_
