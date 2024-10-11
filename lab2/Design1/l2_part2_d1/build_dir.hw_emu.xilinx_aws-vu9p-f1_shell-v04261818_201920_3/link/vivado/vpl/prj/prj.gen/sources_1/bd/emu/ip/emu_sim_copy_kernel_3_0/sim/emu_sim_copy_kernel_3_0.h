#ifndef IP_EMU_SIM_COPY_KERNEL_3_0_H_
#define IP_EMU_SIM_COPY_KERNEL_3_0_H_

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

#include "emu_sim_copy_kernel_3_0_sc.h"




#ifdef XILINX_SIMULATOR
class DllExport emu_sim_copy_kernel_3_0 : public emu_sim_copy_kernel_3_0_sc
{
public:

  emu_sim_copy_kernel_3_0(const sc_core::sc_module_name& nm);
  virtual ~emu_sim_copy_kernel_3_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< sc_dt::sc_bv<6> > s_axi_control_AWADDR;
  sc_core::sc_in< bool > s_axi_control_AWVALID;
  sc_core::sc_out< bool > s_axi_control_AWREADY;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_control_WDATA;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_control_WSTRB;
  sc_core::sc_in< bool > s_axi_control_WVALID;
  sc_core::sc_out< bool > s_axi_control_WREADY;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_control_BRESP;
  sc_core::sc_out< bool > s_axi_control_BVALID;
  sc_core::sc_in< bool > s_axi_control_BREADY;
  sc_core::sc_in< sc_dt::sc_bv<6> > s_axi_control_ARADDR;
  sc_core::sc_in< bool > s_axi_control_ARVALID;
  sc_core::sc_out< bool > s_axi_control_ARREADY;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axi_control_RDATA;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_control_RRESP;
  sc_core::sc_out< bool > s_axi_control_RVALID;
  sc_core::sc_in< bool > s_axi_control_RREADY;
  sc_core::sc_in< bool > ap_clk;
  sc_core::sc_in< bool > ap_rst_n;
  sc_core::sc_out< bool > interrupt;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axi_gmem_AWADDR;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axi_gmem_AWLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_AWSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_axi_gmem_AWBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_axi_gmem_AWLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_AWREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_AWCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_AWPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_AWQOS;
  sc_core::sc_out< bool > m_axi_gmem_AWVALID;
  sc_core::sc_in< bool > m_axi_gmem_AWREADY;
  sc_core::sc_out< sc_dt::sc_bv<512> > m_axi_gmem_WDATA;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axi_gmem_WSTRB;
  sc_core::sc_out< bool > m_axi_gmem_WLAST;
  sc_core::sc_out< bool > m_axi_gmem_WVALID;
  sc_core::sc_in< bool > m_axi_gmem_WREADY;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axi_gmem_BRESP;
  sc_core::sc_in< bool > m_axi_gmem_BVALID;
  sc_core::sc_out< bool > m_axi_gmem_BREADY;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axi_gmem_ARADDR;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axi_gmem_ARLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_ARSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_axi_gmem_ARBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_axi_gmem_ARLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_ARREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_ARCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_ARPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_ARQOS;
  sc_core::sc_out< bool > m_axi_gmem_ARVALID;
  sc_core::sc_in< bool > m_axi_gmem_ARREADY;
  sc_core::sc_in< sc_dt::sc_bv<512> > m_axi_gmem_RDATA;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axi_gmem_RRESP;
  sc_core::sc_in< bool > m_axi_gmem_RLAST;
  sc_core::sc_in< bool > m_axi_gmem_RVALID;
  sc_core::sc_out< bool > m_axi_gmem_RREADY;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<32,6,1,1,1,1,1,1>* mp_s_axi_control_transactor;
  xtlm::xaximm_xtlm2pin_t<512,64,1,1,1,1,1,1>* mp_m_axi_gmem_transactor;
  xsc::common::scalar2vectorN_converter<1>* mp_m_axi_gmem_AWLOCK_converter;
  sc_signal< bool > m_m_axi_gmem_AWLOCK_converter_signal;
  xsc::common::scalar2vectorN_converter<1>* mp_m_axi_gmem_ARLOCK_converter;
  sc_signal< bool > m_m_axi_gmem_ARLOCK_converter_signal;

};
#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
class DllExport emu_sim_copy_kernel_3_0 : public emu_sim_copy_kernel_3_0_sc
{
public:

  emu_sim_copy_kernel_3_0(const sc_core::sc_module_name& nm);
  virtual ~emu_sim_copy_kernel_3_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< sc_dt::sc_bv<6> > s_axi_control_AWADDR;
  sc_core::sc_in< bool > s_axi_control_AWVALID;
  sc_core::sc_out< bool > s_axi_control_AWREADY;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_control_WDATA;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_control_WSTRB;
  sc_core::sc_in< bool > s_axi_control_WVALID;
  sc_core::sc_out< bool > s_axi_control_WREADY;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_control_BRESP;
  sc_core::sc_out< bool > s_axi_control_BVALID;
  sc_core::sc_in< bool > s_axi_control_BREADY;
  sc_core::sc_in< sc_dt::sc_bv<6> > s_axi_control_ARADDR;
  sc_core::sc_in< bool > s_axi_control_ARVALID;
  sc_core::sc_out< bool > s_axi_control_ARREADY;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axi_control_RDATA;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_control_RRESP;
  sc_core::sc_out< bool > s_axi_control_RVALID;
  sc_core::sc_in< bool > s_axi_control_RREADY;
  sc_core::sc_in< bool > ap_clk;
  sc_core::sc_in< bool > ap_rst_n;
  sc_core::sc_out< bool > interrupt;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axi_gmem_AWADDR;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axi_gmem_AWLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_AWSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_axi_gmem_AWBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_axi_gmem_AWLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_AWREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_AWCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_AWPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_AWQOS;
  sc_core::sc_out< bool > m_axi_gmem_AWVALID;
  sc_core::sc_in< bool > m_axi_gmem_AWREADY;
  sc_core::sc_out< sc_dt::sc_bv<512> > m_axi_gmem_WDATA;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axi_gmem_WSTRB;
  sc_core::sc_out< bool > m_axi_gmem_WLAST;
  sc_core::sc_out< bool > m_axi_gmem_WVALID;
  sc_core::sc_in< bool > m_axi_gmem_WREADY;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axi_gmem_BRESP;
  sc_core::sc_in< bool > m_axi_gmem_BVALID;
  sc_core::sc_out< bool > m_axi_gmem_BREADY;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axi_gmem_ARADDR;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axi_gmem_ARLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_ARSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_axi_gmem_ARBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_axi_gmem_ARLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_ARREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_ARCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_ARPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_ARQOS;
  sc_core::sc_out< bool > m_axi_gmem_ARVALID;
  sc_core::sc_in< bool > m_axi_gmem_ARREADY;
  sc_core::sc_in< sc_dt::sc_bv<512> > m_axi_gmem_RDATA;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axi_gmem_RRESP;
  sc_core::sc_in< bool > m_axi_gmem_RLAST;
  sc_core::sc_in< bool > m_axi_gmem_RVALID;
  sc_core::sc_out< bool > m_axi_gmem_RREADY;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<32,6,1,1,1,1,1,1>* mp_s_axi_control_transactor;
  xtlm::xaximm_xtlm2pin_t<512,64,1,1,1,1,1,1>* mp_m_axi_gmem_transactor;
  xsc::common::scalar2vectorN_converter<1>* mp_m_axi_gmem_AWLOCK_converter;
  sc_signal< bool > m_m_axi_gmem_AWLOCK_converter_signal;
  xsc::common::scalar2vectorN_converter<1>* mp_m_axi_gmem_ARLOCK_converter;
  sc_signal< bool > m_m_axi_gmem_ARLOCK_converter_signal;

};
#endif // XM_SYSTEMC




#ifdef RIVIERA
class DllExport emu_sim_copy_kernel_3_0 : public emu_sim_copy_kernel_3_0_sc
{
public:

  emu_sim_copy_kernel_3_0(const sc_core::sc_module_name& nm);
  virtual ~emu_sim_copy_kernel_3_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< sc_dt::sc_bv<6> > s_axi_control_AWADDR;
  sc_core::sc_in< bool > s_axi_control_AWVALID;
  sc_core::sc_out< bool > s_axi_control_AWREADY;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_control_WDATA;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_control_WSTRB;
  sc_core::sc_in< bool > s_axi_control_WVALID;
  sc_core::sc_out< bool > s_axi_control_WREADY;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_control_BRESP;
  sc_core::sc_out< bool > s_axi_control_BVALID;
  sc_core::sc_in< bool > s_axi_control_BREADY;
  sc_core::sc_in< sc_dt::sc_bv<6> > s_axi_control_ARADDR;
  sc_core::sc_in< bool > s_axi_control_ARVALID;
  sc_core::sc_out< bool > s_axi_control_ARREADY;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axi_control_RDATA;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_control_RRESP;
  sc_core::sc_out< bool > s_axi_control_RVALID;
  sc_core::sc_in< bool > s_axi_control_RREADY;
  sc_core::sc_in< bool > ap_clk;
  sc_core::sc_in< bool > ap_rst_n;
  sc_core::sc_out< bool > interrupt;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axi_gmem_AWADDR;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axi_gmem_AWLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_AWSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_axi_gmem_AWBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_axi_gmem_AWLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_AWREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_AWCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_AWPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_AWQOS;
  sc_core::sc_out< bool > m_axi_gmem_AWVALID;
  sc_core::sc_in< bool > m_axi_gmem_AWREADY;
  sc_core::sc_out< sc_dt::sc_bv<512> > m_axi_gmem_WDATA;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axi_gmem_WSTRB;
  sc_core::sc_out< bool > m_axi_gmem_WLAST;
  sc_core::sc_out< bool > m_axi_gmem_WVALID;
  sc_core::sc_in< bool > m_axi_gmem_WREADY;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axi_gmem_BRESP;
  sc_core::sc_in< bool > m_axi_gmem_BVALID;
  sc_core::sc_out< bool > m_axi_gmem_BREADY;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axi_gmem_ARADDR;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axi_gmem_ARLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_ARSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_axi_gmem_ARBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_axi_gmem_ARLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_ARREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_ARCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_ARPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_ARQOS;
  sc_core::sc_out< bool > m_axi_gmem_ARVALID;
  sc_core::sc_in< bool > m_axi_gmem_ARREADY;
  sc_core::sc_in< sc_dt::sc_bv<512> > m_axi_gmem_RDATA;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axi_gmem_RRESP;
  sc_core::sc_in< bool > m_axi_gmem_RLAST;
  sc_core::sc_in< bool > m_axi_gmem_RVALID;
  sc_core::sc_out< bool > m_axi_gmem_RREADY;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<32,6,1,1,1,1,1,1>* mp_s_axi_control_transactor;
  xtlm::xaximm_xtlm2pin_t<512,64,1,1,1,1,1,1>* mp_m_axi_gmem_transactor;
  xsc::common::scalar2vectorN_converter<1>* mp_m_axi_gmem_AWLOCK_converter;
  sc_signal< bool > m_m_axi_gmem_AWLOCK_converter_signal;
  xsc::common::scalar2vectorN_converter<1>* mp_m_axi_gmem_ARLOCK_converter;
  sc_signal< bool > m_m_axi_gmem_ARLOCK_converter_signal;

};
#endif // RIVIERA




#ifdef VCSSYSTEMC
#include "utils/xtlm_aximm_initiator_stub.h"

#include "utils/xtlm_aximm_target_stub.h"

class DllExport emu_sim_copy_kernel_3_0 : public emu_sim_copy_kernel_3_0_sc
{
public:

  emu_sim_copy_kernel_3_0(const sc_core::sc_module_name& nm);
  virtual ~emu_sim_copy_kernel_3_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< sc_dt::sc_bv<6> > s_axi_control_AWADDR;
  sc_core::sc_in< bool > s_axi_control_AWVALID;
  sc_core::sc_out< bool > s_axi_control_AWREADY;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_control_WDATA;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_control_WSTRB;
  sc_core::sc_in< bool > s_axi_control_WVALID;
  sc_core::sc_out< bool > s_axi_control_WREADY;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_control_BRESP;
  sc_core::sc_out< bool > s_axi_control_BVALID;
  sc_core::sc_in< bool > s_axi_control_BREADY;
  sc_core::sc_in< sc_dt::sc_bv<6> > s_axi_control_ARADDR;
  sc_core::sc_in< bool > s_axi_control_ARVALID;
  sc_core::sc_out< bool > s_axi_control_ARREADY;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axi_control_RDATA;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_control_RRESP;
  sc_core::sc_out< bool > s_axi_control_RVALID;
  sc_core::sc_in< bool > s_axi_control_RREADY;
  sc_core::sc_in< bool > ap_clk;
  sc_core::sc_in< bool > ap_rst_n;
  sc_core::sc_out< bool > interrupt;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axi_gmem_AWADDR;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axi_gmem_AWLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_AWSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_axi_gmem_AWBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_axi_gmem_AWLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_AWREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_AWCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_AWPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_AWQOS;
  sc_core::sc_out< bool > m_axi_gmem_AWVALID;
  sc_core::sc_in< bool > m_axi_gmem_AWREADY;
  sc_core::sc_out< sc_dt::sc_bv<512> > m_axi_gmem_WDATA;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axi_gmem_WSTRB;
  sc_core::sc_out< bool > m_axi_gmem_WLAST;
  sc_core::sc_out< bool > m_axi_gmem_WVALID;
  sc_core::sc_in< bool > m_axi_gmem_WREADY;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axi_gmem_BRESP;
  sc_core::sc_in< bool > m_axi_gmem_BVALID;
  sc_core::sc_out< bool > m_axi_gmem_BREADY;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axi_gmem_ARADDR;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axi_gmem_ARLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_ARSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_axi_gmem_ARBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_axi_gmem_ARLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_ARREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_ARCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_ARPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_ARQOS;
  sc_core::sc_out< bool > m_axi_gmem_ARVALID;
  sc_core::sc_in< bool > m_axi_gmem_ARREADY;
  sc_core::sc_in< sc_dt::sc_bv<512> > m_axi_gmem_RDATA;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axi_gmem_RRESP;
  sc_core::sc_in< bool > m_axi_gmem_RLAST;
  sc_core::sc_in< bool > m_axi_gmem_RVALID;
  sc_core::sc_out< bool > m_axi_gmem_RREADY;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<32,6,1,1,1,1,1,1>* mp_s_axi_control_transactor;
  xtlm::xaximm_xtlm2pin_t<512,64,1,1,1,1,1,1>* mp_m_axi_gmem_transactor;
  xsc::common::scalar2vectorN_converter<1>* mp_m_axi_gmem_AWLOCK_converter;
  sc_signal< bool > m_m_axi_gmem_AWLOCK_converter_signal;
  xsc::common::scalar2vectorN_converter<1>* mp_m_axi_gmem_ARLOCK_converter;
  sc_signal< bool > m_m_axi_gmem_ARLOCK_converter_signal;

  // Transactor stubs
  xtlm::xtlm_aximm_initiator_stub * m_axi_gmem_transactor_initiator_rd_socket_stub;
  xtlm::xtlm_aximm_initiator_stub * m_axi_gmem_transactor_initiator_wr_socket_stub;
  xtlm::xtlm_aximm_target_stub * s_axi_control_transactor_target_rd_socket_stub;
  xtlm::xtlm_aximm_target_stub * s_axi_control_transactor_target_wr_socket_stub;

  // Socket stubs

};
#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
class DllExport emu_sim_copy_kernel_3_0 : public emu_sim_copy_kernel_3_0_sc
{
public:

  emu_sim_copy_kernel_3_0(const sc_core::sc_module_name& nm);
  virtual ~emu_sim_copy_kernel_3_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< sc_dt::sc_bv<6> > s_axi_control_AWADDR;
  sc_core::sc_in< bool > s_axi_control_AWVALID;
  sc_core::sc_out< bool > s_axi_control_AWREADY;
  sc_core::sc_in< sc_dt::sc_bv<32> > s_axi_control_WDATA;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_control_WSTRB;
  sc_core::sc_in< bool > s_axi_control_WVALID;
  sc_core::sc_out< bool > s_axi_control_WREADY;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_control_BRESP;
  sc_core::sc_out< bool > s_axi_control_BVALID;
  sc_core::sc_in< bool > s_axi_control_BREADY;
  sc_core::sc_in< sc_dt::sc_bv<6> > s_axi_control_ARADDR;
  sc_core::sc_in< bool > s_axi_control_ARVALID;
  sc_core::sc_out< bool > s_axi_control_ARREADY;
  sc_core::sc_out< sc_dt::sc_bv<32> > s_axi_control_RDATA;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_control_RRESP;
  sc_core::sc_out< bool > s_axi_control_RVALID;
  sc_core::sc_in< bool > s_axi_control_RREADY;
  sc_core::sc_in< bool > ap_clk;
  sc_core::sc_in< bool > ap_rst_n;
  sc_core::sc_out< bool > interrupt;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axi_gmem_AWADDR;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axi_gmem_AWLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_AWSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_axi_gmem_AWBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_axi_gmem_AWLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_AWREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_AWCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_AWPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_AWQOS;
  sc_core::sc_out< bool > m_axi_gmem_AWVALID;
  sc_core::sc_in< bool > m_axi_gmem_AWREADY;
  sc_core::sc_out< sc_dt::sc_bv<512> > m_axi_gmem_WDATA;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axi_gmem_WSTRB;
  sc_core::sc_out< bool > m_axi_gmem_WLAST;
  sc_core::sc_out< bool > m_axi_gmem_WVALID;
  sc_core::sc_in< bool > m_axi_gmem_WREADY;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axi_gmem_BRESP;
  sc_core::sc_in< bool > m_axi_gmem_BVALID;
  sc_core::sc_out< bool > m_axi_gmem_BREADY;
  sc_core::sc_out< sc_dt::sc_bv<64> > m_axi_gmem_ARADDR;
  sc_core::sc_out< sc_dt::sc_bv<8> > m_axi_gmem_ARLEN;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_ARSIZE;
  sc_core::sc_out< sc_dt::sc_bv<2> > m_axi_gmem_ARBURST;
  sc_core::sc_out< sc_dt::sc_bv<1> > m_axi_gmem_ARLOCK;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_ARREGION;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_ARCACHE;
  sc_core::sc_out< sc_dt::sc_bv<3> > m_axi_gmem_ARPROT;
  sc_core::sc_out< sc_dt::sc_bv<4> > m_axi_gmem_ARQOS;
  sc_core::sc_out< bool > m_axi_gmem_ARVALID;
  sc_core::sc_in< bool > m_axi_gmem_ARREADY;
  sc_core::sc_in< sc_dt::sc_bv<512> > m_axi_gmem_RDATA;
  sc_core::sc_in< sc_dt::sc_bv<2> > m_axi_gmem_RRESP;
  sc_core::sc_in< bool > m_axi_gmem_RLAST;
  sc_core::sc_in< bool > m_axi_gmem_RVALID;
  sc_core::sc_out< bool > m_axi_gmem_RREADY;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<32,6,1,1,1,1,1,1>* mp_s_axi_control_transactor;
  xtlm::xaximm_xtlm2pin_t<512,64,1,1,1,1,1,1>* mp_m_axi_gmem_transactor;
  xsc::common::scalar2vectorN_converter<1>* mp_m_axi_gmem_AWLOCK_converter;
  sc_signal< bool > m_m_axi_gmem_AWLOCK_converter_signal;
  xsc::common::scalar2vectorN_converter<1>* mp_m_axi_gmem_ARLOCK_converter;
  sc_signal< bool > m_m_axi_gmem_ARLOCK_converter_signal;

};
#endif // MTI_SYSTEMC
#endif // IP_EMU_SIM_COPY_KERNEL_3_0_H_
