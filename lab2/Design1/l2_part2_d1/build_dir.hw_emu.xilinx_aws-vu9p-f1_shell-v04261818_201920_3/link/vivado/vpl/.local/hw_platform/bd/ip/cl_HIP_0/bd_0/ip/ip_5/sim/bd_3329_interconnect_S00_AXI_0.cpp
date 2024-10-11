// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
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

#include "bd_3329_interconnect_S00_AXI_0_sc.h"

#include "bd_3329_interconnect_S00_AXI_0.h"

#include "smartconnect.h"

#include <map>
#include <string>

bd_3329_interconnect_S00_AXI_0::bd_3329_interconnect_S00_AXI_0(const sc_core::sc_module_name& nm) : bd_3329_interconnect_S00_AXI_0_sc(nm), aclk("aclk"), aresetn("aresetn"), S00_AXI_awid("S00_AXI_awid"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awlen("S00_AXI_awlen"), S00_AXI_awsize("S00_AXI_awsize"), S00_AXI_awburst("S00_AXI_awburst"), S00_AXI_awlock("S00_AXI_awlock"), S00_AXI_awcache("S00_AXI_awcache"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awqos("S00_AXI_awqos"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wlast("S00_AXI_wlast"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bid("S00_AXI_bid"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_arid("S00_AXI_arid"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rid("S00_AXI_rid"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), M00_AXI_awid("M00_AXI_awid"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awlen("M00_AXI_awlen"), M00_AXI_awsize("M00_AXI_awsize"), M00_AXI_awburst("M00_AXI_awburst"), M00_AXI_awlock("M00_AXI_awlock"), M00_AXI_awcache("M00_AXI_awcache"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awqos("M00_AXI_awqos"), M00_AXI_awuser("M00_AXI_awuser"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wlast("M00_AXI_wlast"), M00_AXI_wuser("M00_AXI_wuser"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bid("M00_AXI_bid"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_buser("M00_AXI_buser"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_arid("M00_AXI_arid"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arlen("M00_AXI_arlen"), M00_AXI_arsize("M00_AXI_arsize"), M00_AXI_arburst("M00_AXI_arburst"), M00_AXI_arlock("M00_AXI_arlock"), M00_AXI_arcache("M00_AXI_arcache"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arqos("M00_AXI_arqos"), M00_AXI_aruser("M00_AXI_aruser"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rid("M00_AXI_rid"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rlast("M00_AXI_rlast"), M00_AXI_ruser("M00_AXI_ruser"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready"), M01_AXI_awid("M01_AXI_awid"), M01_AXI_awaddr("M01_AXI_awaddr"), M01_AXI_awlen("M01_AXI_awlen"), M01_AXI_awsize("M01_AXI_awsize"), M01_AXI_awburst("M01_AXI_awburst"), M01_AXI_awlock("M01_AXI_awlock"), M01_AXI_awcache("M01_AXI_awcache"), M01_AXI_awprot("M01_AXI_awprot"), M01_AXI_awqos("M01_AXI_awqos"), M01_AXI_awuser("M01_AXI_awuser"), M01_AXI_awvalid("M01_AXI_awvalid"), M01_AXI_awready("M01_AXI_awready"), M01_AXI_wdata("M01_AXI_wdata"), M01_AXI_wstrb("M01_AXI_wstrb"), M01_AXI_wlast("M01_AXI_wlast"), M01_AXI_wuser("M01_AXI_wuser"), M01_AXI_wvalid("M01_AXI_wvalid"), M01_AXI_wready("M01_AXI_wready"), M01_AXI_bid("M01_AXI_bid"), M01_AXI_bresp("M01_AXI_bresp"), M01_AXI_buser("M01_AXI_buser"), M01_AXI_bvalid("M01_AXI_bvalid"), M01_AXI_bready("M01_AXI_bready"), M01_AXI_arid("M01_AXI_arid"), M01_AXI_araddr("M01_AXI_araddr"), M01_AXI_arlen("M01_AXI_arlen"), M01_AXI_arsize("M01_AXI_arsize"), M01_AXI_arburst("M01_AXI_arburst"), M01_AXI_arlock("M01_AXI_arlock"), M01_AXI_arcache("M01_AXI_arcache"), M01_AXI_arprot("M01_AXI_arprot"), M01_AXI_arqos("M01_AXI_arqos"), M01_AXI_aruser("M01_AXI_aruser"), M01_AXI_arvalid("M01_AXI_arvalid"), M01_AXI_arready("M01_AXI_arready"), M01_AXI_rid("M01_AXI_rid"), M01_AXI_rdata("M01_AXI_rdata"), M01_AXI_rresp("M01_AXI_rresp"), M01_AXI_rlast("M01_AXI_rlast"), M01_AXI_ruser("M01_AXI_ruser"), M01_AXI_rvalid("M01_AXI_rvalid"), M01_AXI_rready("M01_AXI_rready"), M02_AXI_awid("M02_AXI_awid"), M02_AXI_awaddr("M02_AXI_awaddr"), M02_AXI_awlen("M02_AXI_awlen"), M02_AXI_awsize("M02_AXI_awsize"), M02_AXI_awburst("M02_AXI_awburst"), M02_AXI_awlock("M02_AXI_awlock"), M02_AXI_awcache("M02_AXI_awcache"), M02_AXI_awprot("M02_AXI_awprot"), M02_AXI_awqos("M02_AXI_awqos"), M02_AXI_awuser("M02_AXI_awuser"), M02_AXI_awvalid("M02_AXI_awvalid"), M02_AXI_awready("M02_AXI_awready"), M02_AXI_wdata("M02_AXI_wdata"), M02_AXI_wstrb("M02_AXI_wstrb"), M02_AXI_wlast("M02_AXI_wlast"), M02_AXI_wuser("M02_AXI_wuser"), M02_AXI_wvalid("M02_AXI_wvalid"), M02_AXI_wready("M02_AXI_wready"), M02_AXI_bid("M02_AXI_bid"), M02_AXI_bresp("M02_AXI_bresp"), M02_AXI_buser("M02_AXI_buser"), M02_AXI_bvalid("M02_AXI_bvalid"), M02_AXI_bready("M02_AXI_bready"), M02_AXI_arid("M02_AXI_arid"), M02_AXI_araddr("M02_AXI_araddr"), M02_AXI_arlen("M02_AXI_arlen"), M02_AXI_arsize("M02_AXI_arsize"), M02_AXI_arburst("M02_AXI_arburst"), M02_AXI_arlock("M02_AXI_arlock"), M02_AXI_arcache("M02_AXI_arcache"), M02_AXI_arprot("M02_AXI_arprot"), M02_AXI_arqos("M02_AXI_arqos"), M02_AXI_aruser("M02_AXI_aruser"), M02_AXI_arvalid("M02_AXI_arvalid"), M02_AXI_arready("M02_AXI_arready"), M02_AXI_rid("M02_AXI_rid"), M02_AXI_rdata("M02_AXI_rdata"), M02_AXI_rresp("M02_AXI_rresp"), M02_AXI_rlast("M02_AXI_rlast"), M02_AXI_ruser("M02_AXI_ruser"), M02_AXI_rvalid("M02_AXI_rvalid"), M02_AXI_rready("M02_AXI_rready"), M03_AXI_awid("M03_AXI_awid"), M03_AXI_awaddr("M03_AXI_awaddr"), M03_AXI_awlen("M03_AXI_awlen"), M03_AXI_awsize("M03_AXI_awsize"), M03_AXI_awburst("M03_AXI_awburst"), M03_AXI_awlock("M03_AXI_awlock"), M03_AXI_awcache("M03_AXI_awcache"), M03_AXI_awprot("M03_AXI_awprot"), M03_AXI_awqos("M03_AXI_awqos"), M03_AXI_awuser("M03_AXI_awuser"), M03_AXI_awvalid("M03_AXI_awvalid"), M03_AXI_awready("M03_AXI_awready"), M03_AXI_wdata("M03_AXI_wdata"), M03_AXI_wstrb("M03_AXI_wstrb"), M03_AXI_wlast("M03_AXI_wlast"), M03_AXI_wuser("M03_AXI_wuser"), M03_AXI_wvalid("M03_AXI_wvalid"), M03_AXI_wready("M03_AXI_wready"), M03_AXI_bid("M03_AXI_bid"), M03_AXI_bresp("M03_AXI_bresp"), M03_AXI_buser("M03_AXI_buser"), M03_AXI_bvalid("M03_AXI_bvalid"), M03_AXI_bready("M03_AXI_bready"), M03_AXI_arid("M03_AXI_arid"), M03_AXI_araddr("M03_AXI_araddr"), M03_AXI_arlen("M03_AXI_arlen"), M03_AXI_arsize("M03_AXI_arsize"), M03_AXI_arburst("M03_AXI_arburst"), M03_AXI_arlock("M03_AXI_arlock"), M03_AXI_arcache("M03_AXI_arcache"), M03_AXI_arprot("M03_AXI_arprot"), M03_AXI_arqos("M03_AXI_arqos"), M03_AXI_aruser("M03_AXI_aruser"), M03_AXI_arvalid("M03_AXI_arvalid"), M03_AXI_arready("M03_AXI_arready"), M03_AXI_rid("M03_AXI_rid"), M03_AXI_rdata("M03_AXI_rdata"), M03_AXI_rresp("M03_AXI_rresp"), M03_AXI_rlast("M03_AXI_rlast"), M03_AXI_ruser("M03_AXI_ruser"), M03_AXI_rvalid("M03_AXI_rvalid"), M03_AXI_rready("M03_AXI_rready"), M04_AXI_awid("M04_AXI_awid"), M04_AXI_awaddr("M04_AXI_awaddr"), M04_AXI_awlen("M04_AXI_awlen"), M04_AXI_awsize("M04_AXI_awsize"), M04_AXI_awburst("M04_AXI_awburst"), M04_AXI_awlock("M04_AXI_awlock"), M04_AXI_awcache("M04_AXI_awcache"), M04_AXI_awprot("M04_AXI_awprot"), M04_AXI_awqos("M04_AXI_awqos"), M04_AXI_awuser("M04_AXI_awuser"), M04_AXI_awvalid("M04_AXI_awvalid"), M04_AXI_awready("M04_AXI_awready"), M04_AXI_wdata("M04_AXI_wdata"), M04_AXI_wstrb("M04_AXI_wstrb"), M04_AXI_wlast("M04_AXI_wlast"), M04_AXI_wuser("M04_AXI_wuser"), M04_AXI_wvalid("M04_AXI_wvalid"), M04_AXI_wready("M04_AXI_wready"), M04_AXI_bid("M04_AXI_bid"), M04_AXI_bresp("M04_AXI_bresp"), M04_AXI_buser("M04_AXI_buser"), M04_AXI_bvalid("M04_AXI_bvalid"), M04_AXI_bready("M04_AXI_bready"), M04_AXI_arid("M04_AXI_arid"), M04_AXI_araddr("M04_AXI_araddr"), M04_AXI_arlen("M04_AXI_arlen"), M04_AXI_arsize("M04_AXI_arsize"), M04_AXI_arburst("M04_AXI_arburst"), M04_AXI_arlock("M04_AXI_arlock"), M04_AXI_arcache("M04_AXI_arcache"), M04_AXI_arprot("M04_AXI_arprot"), M04_AXI_arqos("M04_AXI_arqos"), M04_AXI_aruser("M04_AXI_aruser"), M04_AXI_arvalid("M04_AXI_arvalid"), M04_AXI_arready("M04_AXI_arready"), M04_AXI_rid("M04_AXI_rid"), M04_AXI_rdata("M04_AXI_rdata"), M04_AXI_rresp("M04_AXI_rresp"), M04_AXI_rlast("M04_AXI_rlast"), M04_AXI_ruser("M04_AXI_ruser"), M04_AXI_rvalid("M04_AXI_rvalid"), M04_AXI_rready("M04_AXI_rready"), M05_AXI_awid("M05_AXI_awid"), M05_AXI_awaddr("M05_AXI_awaddr"), M05_AXI_awlen("M05_AXI_awlen"), M05_AXI_awsize("M05_AXI_awsize"), M05_AXI_awburst("M05_AXI_awburst"), M05_AXI_awlock("M05_AXI_awlock"), M05_AXI_awcache("M05_AXI_awcache"), M05_AXI_awprot("M05_AXI_awprot"), M05_AXI_awqos("M05_AXI_awqos"), M05_AXI_awuser("M05_AXI_awuser"), M05_AXI_awvalid("M05_AXI_awvalid"), M05_AXI_awready("M05_AXI_awready"), M05_AXI_wdata("M05_AXI_wdata"), M05_AXI_wstrb("M05_AXI_wstrb"), M05_AXI_wlast("M05_AXI_wlast"), M05_AXI_wuser("M05_AXI_wuser"), M05_AXI_wvalid("M05_AXI_wvalid"), M05_AXI_wready("M05_AXI_wready"), M05_AXI_bid("M05_AXI_bid"), M05_AXI_bresp("M05_AXI_bresp"), M05_AXI_buser("M05_AXI_buser"), M05_AXI_bvalid("M05_AXI_bvalid"), M05_AXI_bready("M05_AXI_bready"), M05_AXI_arid("M05_AXI_arid"), M05_AXI_araddr("M05_AXI_araddr"), M05_AXI_arlen("M05_AXI_arlen"), M05_AXI_arsize("M05_AXI_arsize"), M05_AXI_arburst("M05_AXI_arburst"), M05_AXI_arlock("M05_AXI_arlock"), M05_AXI_arcache("M05_AXI_arcache"), M05_AXI_arprot("M05_AXI_arprot"), M05_AXI_arqos("M05_AXI_arqos"), M05_AXI_aruser("M05_AXI_aruser"), M05_AXI_arvalid("M05_AXI_arvalid"), M05_AXI_arready("M05_AXI_arready"), M05_AXI_rid("M05_AXI_rid"), M05_AXI_rdata("M05_AXI_rdata"), M05_AXI_rresp("M05_AXI_rresp"), M05_AXI_rlast("M05_AXI_rlast"), M05_AXI_ruser("M05_AXI_ruser"), M05_AXI_rvalid("M05_AXI_rvalid"), M05_AXI_rready("M05_AXI_rready"), M06_AXI_awid("M06_AXI_awid"), M06_AXI_awaddr("M06_AXI_awaddr"), M06_AXI_awlen("M06_AXI_awlen"), M06_AXI_awsize("M06_AXI_awsize"), M06_AXI_awburst("M06_AXI_awburst"), M06_AXI_awlock("M06_AXI_awlock"), M06_AXI_awcache("M06_AXI_awcache"), M06_AXI_awprot("M06_AXI_awprot"), M06_AXI_awqos("M06_AXI_awqos"), M06_AXI_awuser("M06_AXI_awuser"), M06_AXI_awvalid("M06_AXI_awvalid"), M06_AXI_awready("M06_AXI_awready"), M06_AXI_wdata("M06_AXI_wdata"), M06_AXI_wstrb("M06_AXI_wstrb"), M06_AXI_wlast("M06_AXI_wlast"), M06_AXI_wuser("M06_AXI_wuser"), M06_AXI_wvalid("M06_AXI_wvalid"), M06_AXI_wready("M06_AXI_wready"), M06_AXI_bid("M06_AXI_bid"), M06_AXI_bresp("M06_AXI_bresp"), M06_AXI_buser("M06_AXI_buser"), M06_AXI_bvalid("M06_AXI_bvalid"), M06_AXI_bready("M06_AXI_bready"), M06_AXI_arid("M06_AXI_arid"), M06_AXI_araddr("M06_AXI_araddr"), M06_AXI_arlen("M06_AXI_arlen"), M06_AXI_arsize("M06_AXI_arsize"), M06_AXI_arburst("M06_AXI_arburst"), M06_AXI_arlock("M06_AXI_arlock"), M06_AXI_arcache("M06_AXI_arcache"), M06_AXI_arprot("M06_AXI_arprot"), M06_AXI_arqos("M06_AXI_arqos"), M06_AXI_aruser("M06_AXI_aruser"), M06_AXI_arvalid("M06_AXI_arvalid"), M06_AXI_arready("M06_AXI_arready"), M06_AXI_rid("M06_AXI_rid"), M06_AXI_rdata("M06_AXI_rdata"), M06_AXI_rresp("M06_AXI_rresp"), M06_AXI_rlast("M06_AXI_rlast"), M06_AXI_ruser("M06_AXI_ruser"), M06_AXI_rvalid("M06_AXI_rvalid"), M06_AXI_rready("M06_AXI_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aresetn(aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_awlock_converter = NULL;
  mp_S00_AXI_arlock_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M00_AXI_awlock_converter = NULL;
  mp_M00_AXI_arlock_converter = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_M01_AXI_awlock_converter = NULL;
  mp_M01_AXI_arlock_converter = NULL;
  mp_M02_AXI_transactor = NULL;
  mp_M02_AXI_awlock_converter = NULL;
  mp_M02_AXI_arlock_converter = NULL;
  mp_M03_AXI_transactor = NULL;
  mp_M03_AXI_awlock_converter = NULL;
  mp_M03_AXI_arlock_converter = NULL;
  mp_M04_AXI_transactor = NULL;
  mp_M04_AXI_awlock_converter = NULL;
  mp_M04_AXI_arlock_converter = NULL;
  mp_M05_AXI_transactor = NULL;
  mp_M05_AXI_awlock_converter = NULL;
  mp_M05_AXI_arlock_converter = NULL;
  mp_M06_AXI_transactor = NULL;
  mp_M06_AXI_awlock_converter = NULL;
  mp_M06_AXI_arlock_converter = NULL;
}

void bd_3329_interconnect_S00_AXI_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_3329_interconnect_S00_AXI_0", "S00_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "250000000");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "6");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "37");
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
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "4");
    S00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S00_AXI_transactor_param_props.addFloat("PHASE", "0");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_data_h2c_00");
    S00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");
    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,37,6,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);
    mp_S00_AXI_transactor->AWID(S00_AXI_awid);
    mp_S00_AXI_transactor->AWADDR(S00_AXI_awaddr);
    mp_S00_AXI_transactor->AWLEN(S00_AXI_awlen);
    mp_S00_AXI_transactor->AWSIZE(S00_AXI_awsize);
    mp_S00_AXI_transactor->AWBURST(S00_AXI_awburst);
    mp_S00_AXI_awlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awlock_converter");
    mp_S00_AXI_awlock_converter->vector_in(S00_AXI_awlock);
    mp_S00_AXI_awlock_converter->scalar_out(m_S00_AXI_awlock_converter_signal);
    mp_S00_AXI_transactor->AWLOCK(m_S00_AXI_awlock_converter_signal);
    mp_S00_AXI_transactor->AWCACHE(S00_AXI_awcache);
    mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
    mp_S00_AXI_transactor->AWQOS(S00_AXI_awqos);
    mp_S00_AXI_transactor->AWVALID(S00_AXI_awvalid);
    mp_S00_AXI_transactor->AWREADY(S00_AXI_awready);
    mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
    mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
    mp_S00_AXI_transactor->WLAST(S00_AXI_wlast);
    mp_S00_AXI_transactor->WVALID(S00_AXI_wvalid);
    mp_S00_AXI_transactor->WREADY(S00_AXI_wready);
    mp_S00_AXI_transactor->BID(S00_AXI_bid);
    mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
    mp_S00_AXI_transactor->BVALID(S00_AXI_bvalid);
    mp_S00_AXI_transactor->BREADY(S00_AXI_bready);
    mp_S00_AXI_transactor->ARID(S00_AXI_arid);
    mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
    mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
    mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
    mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
    mp_S00_AXI_arlock_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arlock_converter");
    mp_S00_AXI_arlock_converter->vector_in(S00_AXI_arlock);
    mp_S00_AXI_arlock_converter->scalar_out(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARLOCK(m_S00_AXI_arlock_converter_signal);
    mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
    mp_S00_AXI_transactor->ARVALID(S00_AXI_arvalid);
    mp_S00_AXI_transactor->ARREADY(S00_AXI_arready);
    mp_S00_AXI_transactor->RID(S00_AXI_rid);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_transactor->RLAST(S00_AXI_rlast);
    mp_S00_AXI_transactor->RVALID(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RREADY(S00_AXI_rready);
    mp_S00_AXI_transactor->CLK(aclk);
    m_S00_AXI_transactor_rst_signal.write(1);
    mp_S00_AXI_transactor->RST(m_S00_AXI_transactor_rst_signal);

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  // configure 'M00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_3329_interconnect_S00_AXI_0", "M00_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "250000000");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "3");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "37");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "114");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "114");
    M00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "14");
    M00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "14");
    M00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "114");
    M00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M00_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M00_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M00_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_data_h2c_00");
    M00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "SLR0");
    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,37,3,114,14,114,114,14>("M00_AXI_transactor", M00_AXI_transactor_param_props);
    mp_M00_AXI_transactor->AWID(M00_AXI_awid);
    mp_M00_AXI_transactor->AWADDR(M00_AXI_awaddr);
    mp_M00_AXI_transactor->AWLEN(M00_AXI_awlen);
    mp_M00_AXI_transactor->AWSIZE(M00_AXI_awsize);
    mp_M00_AXI_transactor->AWBURST(M00_AXI_awburst);
    mp_M00_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_awlock_converter");
    mp_M00_AXI_awlock_converter->scalar_in(m_M00_AXI_awlock_converter_signal);
    mp_M00_AXI_awlock_converter->vector_out(M00_AXI_awlock);
    mp_M00_AXI_transactor->AWLOCK(m_M00_AXI_awlock_converter_signal);
    mp_M00_AXI_transactor->AWCACHE(M00_AXI_awcache);
    mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
    mp_M00_AXI_transactor->AWQOS(M00_AXI_awqos);
    mp_M00_AXI_transactor->AWUSER(M00_AXI_awuser);
    mp_M00_AXI_transactor->AWVALID(M00_AXI_awvalid);
    mp_M00_AXI_transactor->AWREADY(M00_AXI_awready);
    mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
    mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
    mp_M00_AXI_transactor->WLAST(M00_AXI_wlast);
    mp_M00_AXI_transactor->WUSER(M00_AXI_wuser);
    mp_M00_AXI_transactor->WVALID(M00_AXI_wvalid);
    mp_M00_AXI_transactor->WREADY(M00_AXI_wready);
    mp_M00_AXI_transactor->BID(M00_AXI_bid);
    mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
    mp_M00_AXI_transactor->BUSER(M00_AXI_buser);
    mp_M00_AXI_transactor->BVALID(M00_AXI_bvalid);
    mp_M00_AXI_transactor->BREADY(M00_AXI_bready);
    mp_M00_AXI_transactor->ARID(M00_AXI_arid);
    mp_M00_AXI_transactor->ARADDR(M00_AXI_araddr);
    mp_M00_AXI_transactor->ARLEN(M00_AXI_arlen);
    mp_M00_AXI_transactor->ARSIZE(M00_AXI_arsize);
    mp_M00_AXI_transactor->ARBURST(M00_AXI_arburst);
    mp_M00_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_arlock_converter");
    mp_M00_AXI_arlock_converter->scalar_in(m_M00_AXI_arlock_converter_signal);
    mp_M00_AXI_arlock_converter->vector_out(M00_AXI_arlock);
    mp_M00_AXI_transactor->ARLOCK(m_M00_AXI_arlock_converter_signal);
    mp_M00_AXI_transactor->ARCACHE(M00_AXI_arcache);
    mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
    mp_M00_AXI_transactor->ARQOS(M00_AXI_arqos);
    mp_M00_AXI_transactor->ARUSER(M00_AXI_aruser);
    mp_M00_AXI_transactor->ARVALID(M00_AXI_arvalid);
    mp_M00_AXI_transactor->ARREADY(M00_AXI_arready);
    mp_M00_AXI_transactor->RID(M00_AXI_rid);
    mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
    mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
    mp_M00_AXI_transactor->RLAST(M00_AXI_rlast);
    mp_M00_AXI_transactor->RUSER(M00_AXI_ruser);
    mp_M00_AXI_transactor->RVALID(M00_AXI_rvalid);
    mp_M00_AXI_transactor->RREADY(M00_AXI_rready);
    mp_M00_AXI_transactor->CLK(aclk);
    m_M00_AXI_transactor_rst_signal.write(1);
    mp_M00_AXI_transactor->RST(m_M00_AXI_transactor_rst_signal);

    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  // configure 'M01_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_3329_interconnect_S00_AXI_0", "M01_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties M01_AXI_transactor_param_props;
    M01_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M01_AXI_transactor_param_props.addLong("FREQ_HZ", "250000000");
    M01_AXI_transactor_param_props.addLong("ID_WIDTH", "3");
    M01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "37");
    M01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "114");
    M01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "114");
    M01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "14");
    M01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "14");
    M01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "114");
    M01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addFloat("PHASE", "0");
    M01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M01_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_data_h2c_00");
    M01_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "SLR0");
    mp_M01_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,37,3,114,14,114,114,14>("M01_AXI_transactor", M01_AXI_transactor_param_props);
    mp_M01_AXI_transactor->AWID(M01_AXI_awid);
    mp_M01_AXI_transactor->AWADDR(M01_AXI_awaddr);
    mp_M01_AXI_transactor->AWLEN(M01_AXI_awlen);
    mp_M01_AXI_transactor->AWSIZE(M01_AXI_awsize);
    mp_M01_AXI_transactor->AWBURST(M01_AXI_awburst);
    mp_M01_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_awlock_converter");
    mp_M01_AXI_awlock_converter->scalar_in(m_M01_AXI_awlock_converter_signal);
    mp_M01_AXI_awlock_converter->vector_out(M01_AXI_awlock);
    mp_M01_AXI_transactor->AWLOCK(m_M01_AXI_awlock_converter_signal);
    mp_M01_AXI_transactor->AWCACHE(M01_AXI_awcache);
    mp_M01_AXI_transactor->AWPROT(M01_AXI_awprot);
    mp_M01_AXI_transactor->AWQOS(M01_AXI_awqos);
    mp_M01_AXI_transactor->AWUSER(M01_AXI_awuser);
    mp_M01_AXI_transactor->AWVALID(M01_AXI_awvalid);
    mp_M01_AXI_transactor->AWREADY(M01_AXI_awready);
    mp_M01_AXI_transactor->WDATA(M01_AXI_wdata);
    mp_M01_AXI_transactor->WSTRB(M01_AXI_wstrb);
    mp_M01_AXI_transactor->WLAST(M01_AXI_wlast);
    mp_M01_AXI_transactor->WUSER(M01_AXI_wuser);
    mp_M01_AXI_transactor->WVALID(M01_AXI_wvalid);
    mp_M01_AXI_transactor->WREADY(M01_AXI_wready);
    mp_M01_AXI_transactor->BID(M01_AXI_bid);
    mp_M01_AXI_transactor->BRESP(M01_AXI_bresp);
    mp_M01_AXI_transactor->BUSER(M01_AXI_buser);
    mp_M01_AXI_transactor->BVALID(M01_AXI_bvalid);
    mp_M01_AXI_transactor->BREADY(M01_AXI_bready);
    mp_M01_AXI_transactor->ARID(M01_AXI_arid);
    mp_M01_AXI_transactor->ARADDR(M01_AXI_araddr);
    mp_M01_AXI_transactor->ARLEN(M01_AXI_arlen);
    mp_M01_AXI_transactor->ARSIZE(M01_AXI_arsize);
    mp_M01_AXI_transactor->ARBURST(M01_AXI_arburst);
    mp_M01_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_arlock_converter");
    mp_M01_AXI_arlock_converter->scalar_in(m_M01_AXI_arlock_converter_signal);
    mp_M01_AXI_arlock_converter->vector_out(M01_AXI_arlock);
    mp_M01_AXI_transactor->ARLOCK(m_M01_AXI_arlock_converter_signal);
    mp_M01_AXI_transactor->ARCACHE(M01_AXI_arcache);
    mp_M01_AXI_transactor->ARPROT(M01_AXI_arprot);
    mp_M01_AXI_transactor->ARQOS(M01_AXI_arqos);
    mp_M01_AXI_transactor->ARUSER(M01_AXI_aruser);
    mp_M01_AXI_transactor->ARVALID(M01_AXI_arvalid);
    mp_M01_AXI_transactor->ARREADY(M01_AXI_arready);
    mp_M01_AXI_transactor->RID(M01_AXI_rid);
    mp_M01_AXI_transactor->RDATA(M01_AXI_rdata);
    mp_M01_AXI_transactor->RRESP(M01_AXI_rresp);
    mp_M01_AXI_transactor->RLAST(M01_AXI_rlast);
    mp_M01_AXI_transactor->RUSER(M01_AXI_ruser);
    mp_M01_AXI_transactor->RVALID(M01_AXI_rvalid);
    mp_M01_AXI_transactor->RREADY(M01_AXI_rready);
    mp_M01_AXI_transactor->CLK(aclk);
    m_M01_AXI_transactor_rst_signal.write(1);
    mp_M01_AXI_transactor->RST(m_M01_AXI_transactor_rst_signal);

    mp_impl->M01_AXI_tlm_aximm_read_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->M01_AXI_tlm_aximm_write_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }
  // configure 'M02_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_3329_interconnect_S00_AXI_0", "M02_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "250000000");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "3");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "37");
    M02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "114");
    M02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "114");
    M02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "14");
    M02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "14");
    M02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "114");
    M02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addFloat("PHASE", "0");
    M02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M02_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_data_h2c_00");
    M02_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "SLR0");
    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,37,3,114,14,114,114,14>("M02_AXI_transactor", M02_AXI_transactor_param_props);
    mp_M02_AXI_transactor->AWID(M02_AXI_awid);
    mp_M02_AXI_transactor->AWADDR(M02_AXI_awaddr);
    mp_M02_AXI_transactor->AWLEN(M02_AXI_awlen);
    mp_M02_AXI_transactor->AWSIZE(M02_AXI_awsize);
    mp_M02_AXI_transactor->AWBURST(M02_AXI_awburst);
    mp_M02_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_awlock_converter");
    mp_M02_AXI_awlock_converter->scalar_in(m_M02_AXI_awlock_converter_signal);
    mp_M02_AXI_awlock_converter->vector_out(M02_AXI_awlock);
    mp_M02_AXI_transactor->AWLOCK(m_M02_AXI_awlock_converter_signal);
    mp_M02_AXI_transactor->AWCACHE(M02_AXI_awcache);
    mp_M02_AXI_transactor->AWPROT(M02_AXI_awprot);
    mp_M02_AXI_transactor->AWQOS(M02_AXI_awqos);
    mp_M02_AXI_transactor->AWUSER(M02_AXI_awuser);
    mp_M02_AXI_transactor->AWVALID(M02_AXI_awvalid);
    mp_M02_AXI_transactor->AWREADY(M02_AXI_awready);
    mp_M02_AXI_transactor->WDATA(M02_AXI_wdata);
    mp_M02_AXI_transactor->WSTRB(M02_AXI_wstrb);
    mp_M02_AXI_transactor->WLAST(M02_AXI_wlast);
    mp_M02_AXI_transactor->WUSER(M02_AXI_wuser);
    mp_M02_AXI_transactor->WVALID(M02_AXI_wvalid);
    mp_M02_AXI_transactor->WREADY(M02_AXI_wready);
    mp_M02_AXI_transactor->BID(M02_AXI_bid);
    mp_M02_AXI_transactor->BRESP(M02_AXI_bresp);
    mp_M02_AXI_transactor->BUSER(M02_AXI_buser);
    mp_M02_AXI_transactor->BVALID(M02_AXI_bvalid);
    mp_M02_AXI_transactor->BREADY(M02_AXI_bready);
    mp_M02_AXI_transactor->ARID(M02_AXI_arid);
    mp_M02_AXI_transactor->ARADDR(M02_AXI_araddr);
    mp_M02_AXI_transactor->ARLEN(M02_AXI_arlen);
    mp_M02_AXI_transactor->ARSIZE(M02_AXI_arsize);
    mp_M02_AXI_transactor->ARBURST(M02_AXI_arburst);
    mp_M02_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_arlock_converter");
    mp_M02_AXI_arlock_converter->scalar_in(m_M02_AXI_arlock_converter_signal);
    mp_M02_AXI_arlock_converter->vector_out(M02_AXI_arlock);
    mp_M02_AXI_transactor->ARLOCK(m_M02_AXI_arlock_converter_signal);
    mp_M02_AXI_transactor->ARCACHE(M02_AXI_arcache);
    mp_M02_AXI_transactor->ARPROT(M02_AXI_arprot);
    mp_M02_AXI_transactor->ARQOS(M02_AXI_arqos);
    mp_M02_AXI_transactor->ARUSER(M02_AXI_aruser);
    mp_M02_AXI_transactor->ARVALID(M02_AXI_arvalid);
    mp_M02_AXI_transactor->ARREADY(M02_AXI_arready);
    mp_M02_AXI_transactor->RID(M02_AXI_rid);
    mp_M02_AXI_transactor->RDATA(M02_AXI_rdata);
    mp_M02_AXI_transactor->RRESP(M02_AXI_rresp);
    mp_M02_AXI_transactor->RLAST(M02_AXI_rlast);
    mp_M02_AXI_transactor->RUSER(M02_AXI_ruser);
    mp_M02_AXI_transactor->RVALID(M02_AXI_rvalid);
    mp_M02_AXI_transactor->RREADY(M02_AXI_rready);
    mp_M02_AXI_transactor->CLK(aclk);
    m_M02_AXI_transactor_rst_signal.write(1);
    mp_M02_AXI_transactor->RST(m_M02_AXI_transactor_rst_signal);

    mp_impl->M02_AXI_tlm_aximm_read_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->M02_AXI_tlm_aximm_write_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }
  // configure 'M03_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_3329_interconnect_S00_AXI_0", "M03_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties M03_AXI_transactor_param_props;
    M03_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M03_AXI_transactor_param_props.addLong("FREQ_HZ", "250000000");
    M03_AXI_transactor_param_props.addLong("ID_WIDTH", "3");
    M03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "37");
    M03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "114");
    M03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "114");
    M03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "14");
    M03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "14");
    M03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "114");
    M03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addFloat("PHASE", "0");
    M03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M03_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_data_h2c_00");
    M03_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "SLR0");
    mp_M03_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,37,3,114,14,114,114,14>("M03_AXI_transactor", M03_AXI_transactor_param_props);
    mp_M03_AXI_transactor->AWID(M03_AXI_awid);
    mp_M03_AXI_transactor->AWADDR(M03_AXI_awaddr);
    mp_M03_AXI_transactor->AWLEN(M03_AXI_awlen);
    mp_M03_AXI_transactor->AWSIZE(M03_AXI_awsize);
    mp_M03_AXI_transactor->AWBURST(M03_AXI_awburst);
    mp_M03_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_awlock_converter");
    mp_M03_AXI_awlock_converter->scalar_in(m_M03_AXI_awlock_converter_signal);
    mp_M03_AXI_awlock_converter->vector_out(M03_AXI_awlock);
    mp_M03_AXI_transactor->AWLOCK(m_M03_AXI_awlock_converter_signal);
    mp_M03_AXI_transactor->AWCACHE(M03_AXI_awcache);
    mp_M03_AXI_transactor->AWPROT(M03_AXI_awprot);
    mp_M03_AXI_transactor->AWQOS(M03_AXI_awqos);
    mp_M03_AXI_transactor->AWUSER(M03_AXI_awuser);
    mp_M03_AXI_transactor->AWVALID(M03_AXI_awvalid);
    mp_M03_AXI_transactor->AWREADY(M03_AXI_awready);
    mp_M03_AXI_transactor->WDATA(M03_AXI_wdata);
    mp_M03_AXI_transactor->WSTRB(M03_AXI_wstrb);
    mp_M03_AXI_transactor->WLAST(M03_AXI_wlast);
    mp_M03_AXI_transactor->WUSER(M03_AXI_wuser);
    mp_M03_AXI_transactor->WVALID(M03_AXI_wvalid);
    mp_M03_AXI_transactor->WREADY(M03_AXI_wready);
    mp_M03_AXI_transactor->BID(M03_AXI_bid);
    mp_M03_AXI_transactor->BRESP(M03_AXI_bresp);
    mp_M03_AXI_transactor->BUSER(M03_AXI_buser);
    mp_M03_AXI_transactor->BVALID(M03_AXI_bvalid);
    mp_M03_AXI_transactor->BREADY(M03_AXI_bready);
    mp_M03_AXI_transactor->ARID(M03_AXI_arid);
    mp_M03_AXI_transactor->ARADDR(M03_AXI_araddr);
    mp_M03_AXI_transactor->ARLEN(M03_AXI_arlen);
    mp_M03_AXI_transactor->ARSIZE(M03_AXI_arsize);
    mp_M03_AXI_transactor->ARBURST(M03_AXI_arburst);
    mp_M03_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_arlock_converter");
    mp_M03_AXI_arlock_converter->scalar_in(m_M03_AXI_arlock_converter_signal);
    mp_M03_AXI_arlock_converter->vector_out(M03_AXI_arlock);
    mp_M03_AXI_transactor->ARLOCK(m_M03_AXI_arlock_converter_signal);
    mp_M03_AXI_transactor->ARCACHE(M03_AXI_arcache);
    mp_M03_AXI_transactor->ARPROT(M03_AXI_arprot);
    mp_M03_AXI_transactor->ARQOS(M03_AXI_arqos);
    mp_M03_AXI_transactor->ARUSER(M03_AXI_aruser);
    mp_M03_AXI_transactor->ARVALID(M03_AXI_arvalid);
    mp_M03_AXI_transactor->ARREADY(M03_AXI_arready);
    mp_M03_AXI_transactor->RID(M03_AXI_rid);
    mp_M03_AXI_transactor->RDATA(M03_AXI_rdata);
    mp_M03_AXI_transactor->RRESP(M03_AXI_rresp);
    mp_M03_AXI_transactor->RLAST(M03_AXI_rlast);
    mp_M03_AXI_transactor->RUSER(M03_AXI_ruser);
    mp_M03_AXI_transactor->RVALID(M03_AXI_rvalid);
    mp_M03_AXI_transactor->RREADY(M03_AXI_rready);
    mp_M03_AXI_transactor->CLK(aclk);
    m_M03_AXI_transactor_rst_signal.write(1);
    mp_M03_AXI_transactor->RST(m_M03_AXI_transactor_rst_signal);

    mp_impl->M03_AXI_tlm_aximm_read_socket->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_impl->M03_AXI_tlm_aximm_write_socket->bind(*(mp_M03_AXI_transactor->wr_socket));
  }
  // configure 'M04_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_3329_interconnect_S00_AXI_0", "M04_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties M04_AXI_transactor_param_props;
    M04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M04_AXI_transactor_param_props.addLong("FREQ_HZ", "250000000");
    M04_AXI_transactor_param_props.addLong("ID_WIDTH", "3");
    M04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "37");
    M04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "114");
    M04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "114");
    M04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "14");
    M04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "14");
    M04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "114");
    M04_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addFloat("PHASE", "0");
    M04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M04_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_data_h2c_00");
    M04_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "SLR0");
    mp_M04_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,37,3,114,14,114,114,14>("M04_AXI_transactor", M04_AXI_transactor_param_props);
    mp_M04_AXI_transactor->AWID(M04_AXI_awid);
    mp_M04_AXI_transactor->AWADDR(M04_AXI_awaddr);
    mp_M04_AXI_transactor->AWLEN(M04_AXI_awlen);
    mp_M04_AXI_transactor->AWSIZE(M04_AXI_awsize);
    mp_M04_AXI_transactor->AWBURST(M04_AXI_awburst);
    mp_M04_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<1>("M04_AXI_awlock_converter");
    mp_M04_AXI_awlock_converter->scalar_in(m_M04_AXI_awlock_converter_signal);
    mp_M04_AXI_awlock_converter->vector_out(M04_AXI_awlock);
    mp_M04_AXI_transactor->AWLOCK(m_M04_AXI_awlock_converter_signal);
    mp_M04_AXI_transactor->AWCACHE(M04_AXI_awcache);
    mp_M04_AXI_transactor->AWPROT(M04_AXI_awprot);
    mp_M04_AXI_transactor->AWQOS(M04_AXI_awqos);
    mp_M04_AXI_transactor->AWUSER(M04_AXI_awuser);
    mp_M04_AXI_transactor->AWVALID(M04_AXI_awvalid);
    mp_M04_AXI_transactor->AWREADY(M04_AXI_awready);
    mp_M04_AXI_transactor->WDATA(M04_AXI_wdata);
    mp_M04_AXI_transactor->WSTRB(M04_AXI_wstrb);
    mp_M04_AXI_transactor->WLAST(M04_AXI_wlast);
    mp_M04_AXI_transactor->WUSER(M04_AXI_wuser);
    mp_M04_AXI_transactor->WVALID(M04_AXI_wvalid);
    mp_M04_AXI_transactor->WREADY(M04_AXI_wready);
    mp_M04_AXI_transactor->BID(M04_AXI_bid);
    mp_M04_AXI_transactor->BRESP(M04_AXI_bresp);
    mp_M04_AXI_transactor->BUSER(M04_AXI_buser);
    mp_M04_AXI_transactor->BVALID(M04_AXI_bvalid);
    mp_M04_AXI_transactor->BREADY(M04_AXI_bready);
    mp_M04_AXI_transactor->ARID(M04_AXI_arid);
    mp_M04_AXI_transactor->ARADDR(M04_AXI_araddr);
    mp_M04_AXI_transactor->ARLEN(M04_AXI_arlen);
    mp_M04_AXI_transactor->ARSIZE(M04_AXI_arsize);
    mp_M04_AXI_transactor->ARBURST(M04_AXI_arburst);
    mp_M04_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("M04_AXI_arlock_converter");
    mp_M04_AXI_arlock_converter->scalar_in(m_M04_AXI_arlock_converter_signal);
    mp_M04_AXI_arlock_converter->vector_out(M04_AXI_arlock);
    mp_M04_AXI_transactor->ARLOCK(m_M04_AXI_arlock_converter_signal);
    mp_M04_AXI_transactor->ARCACHE(M04_AXI_arcache);
    mp_M04_AXI_transactor->ARPROT(M04_AXI_arprot);
    mp_M04_AXI_transactor->ARQOS(M04_AXI_arqos);
    mp_M04_AXI_transactor->ARUSER(M04_AXI_aruser);
    mp_M04_AXI_transactor->ARVALID(M04_AXI_arvalid);
    mp_M04_AXI_transactor->ARREADY(M04_AXI_arready);
    mp_M04_AXI_transactor->RID(M04_AXI_rid);
    mp_M04_AXI_transactor->RDATA(M04_AXI_rdata);
    mp_M04_AXI_transactor->RRESP(M04_AXI_rresp);
    mp_M04_AXI_transactor->RLAST(M04_AXI_rlast);
    mp_M04_AXI_transactor->RUSER(M04_AXI_ruser);
    mp_M04_AXI_transactor->RVALID(M04_AXI_rvalid);
    mp_M04_AXI_transactor->RREADY(M04_AXI_rready);
    mp_M04_AXI_transactor->CLK(aclk);
    m_M04_AXI_transactor_rst_signal.write(1);
    mp_M04_AXI_transactor->RST(m_M04_AXI_transactor_rst_signal);

    mp_impl->M04_AXI_tlm_aximm_read_socket->bind(*(mp_M04_AXI_transactor->rd_socket));
    mp_impl->M04_AXI_tlm_aximm_write_socket->bind(*(mp_M04_AXI_transactor->wr_socket));
  }
  // configure 'M05_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_3329_interconnect_S00_AXI_0", "M05_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties M05_AXI_transactor_param_props;
    M05_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M05_AXI_transactor_param_props.addLong("FREQ_HZ", "250000000");
    M05_AXI_transactor_param_props.addLong("ID_WIDTH", "3");
    M05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "37");
    M05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "114");
    M05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "114");
    M05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "14");
    M05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "14");
    M05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "114");
    M05_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M05_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M05_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M05_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M05_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addFloat("PHASE", "0");
    M05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M05_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_data_h2c_00");
    M05_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "SLR0");
    mp_M05_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,37,3,114,14,114,114,14>("M05_AXI_transactor", M05_AXI_transactor_param_props);
    mp_M05_AXI_transactor->AWID(M05_AXI_awid);
    mp_M05_AXI_transactor->AWADDR(M05_AXI_awaddr);
    mp_M05_AXI_transactor->AWLEN(M05_AXI_awlen);
    mp_M05_AXI_transactor->AWSIZE(M05_AXI_awsize);
    mp_M05_AXI_transactor->AWBURST(M05_AXI_awburst);
    mp_M05_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<1>("M05_AXI_awlock_converter");
    mp_M05_AXI_awlock_converter->scalar_in(m_M05_AXI_awlock_converter_signal);
    mp_M05_AXI_awlock_converter->vector_out(M05_AXI_awlock);
    mp_M05_AXI_transactor->AWLOCK(m_M05_AXI_awlock_converter_signal);
    mp_M05_AXI_transactor->AWCACHE(M05_AXI_awcache);
    mp_M05_AXI_transactor->AWPROT(M05_AXI_awprot);
    mp_M05_AXI_transactor->AWQOS(M05_AXI_awqos);
    mp_M05_AXI_transactor->AWUSER(M05_AXI_awuser);
    mp_M05_AXI_transactor->AWVALID(M05_AXI_awvalid);
    mp_M05_AXI_transactor->AWREADY(M05_AXI_awready);
    mp_M05_AXI_transactor->WDATA(M05_AXI_wdata);
    mp_M05_AXI_transactor->WSTRB(M05_AXI_wstrb);
    mp_M05_AXI_transactor->WLAST(M05_AXI_wlast);
    mp_M05_AXI_transactor->WUSER(M05_AXI_wuser);
    mp_M05_AXI_transactor->WVALID(M05_AXI_wvalid);
    mp_M05_AXI_transactor->WREADY(M05_AXI_wready);
    mp_M05_AXI_transactor->BID(M05_AXI_bid);
    mp_M05_AXI_transactor->BRESP(M05_AXI_bresp);
    mp_M05_AXI_transactor->BUSER(M05_AXI_buser);
    mp_M05_AXI_transactor->BVALID(M05_AXI_bvalid);
    mp_M05_AXI_transactor->BREADY(M05_AXI_bready);
    mp_M05_AXI_transactor->ARID(M05_AXI_arid);
    mp_M05_AXI_transactor->ARADDR(M05_AXI_araddr);
    mp_M05_AXI_transactor->ARLEN(M05_AXI_arlen);
    mp_M05_AXI_transactor->ARSIZE(M05_AXI_arsize);
    mp_M05_AXI_transactor->ARBURST(M05_AXI_arburst);
    mp_M05_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("M05_AXI_arlock_converter");
    mp_M05_AXI_arlock_converter->scalar_in(m_M05_AXI_arlock_converter_signal);
    mp_M05_AXI_arlock_converter->vector_out(M05_AXI_arlock);
    mp_M05_AXI_transactor->ARLOCK(m_M05_AXI_arlock_converter_signal);
    mp_M05_AXI_transactor->ARCACHE(M05_AXI_arcache);
    mp_M05_AXI_transactor->ARPROT(M05_AXI_arprot);
    mp_M05_AXI_transactor->ARQOS(M05_AXI_arqos);
    mp_M05_AXI_transactor->ARUSER(M05_AXI_aruser);
    mp_M05_AXI_transactor->ARVALID(M05_AXI_arvalid);
    mp_M05_AXI_transactor->ARREADY(M05_AXI_arready);
    mp_M05_AXI_transactor->RID(M05_AXI_rid);
    mp_M05_AXI_transactor->RDATA(M05_AXI_rdata);
    mp_M05_AXI_transactor->RRESP(M05_AXI_rresp);
    mp_M05_AXI_transactor->RLAST(M05_AXI_rlast);
    mp_M05_AXI_transactor->RUSER(M05_AXI_ruser);
    mp_M05_AXI_transactor->RVALID(M05_AXI_rvalid);
    mp_M05_AXI_transactor->RREADY(M05_AXI_rready);
    mp_M05_AXI_transactor->CLK(aclk);
    m_M05_AXI_transactor_rst_signal.write(1);
    mp_M05_AXI_transactor->RST(m_M05_AXI_transactor_rst_signal);

    mp_impl->M05_AXI_tlm_aximm_read_socket->bind(*(mp_M05_AXI_transactor->rd_socket));
    mp_impl->M05_AXI_tlm_aximm_write_socket->bind(*(mp_M05_AXI_transactor->wr_socket));
  }
  // configure 'M06_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_3329_interconnect_S00_AXI_0", "M06_AXI_TLM_MODE") != 1)
  {
    xsc::common_cpp::properties M06_AXI_transactor_param_props;
    M06_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M06_AXI_transactor_param_props.addLong("FREQ_HZ", "250000000");
    M06_AXI_transactor_param_props.addLong("ID_WIDTH", "3");
    M06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "37");
    M06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "114");
    M06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "114");
    M06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "14");
    M06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "14");
    M06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "114");
    M06_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M06_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M06_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M06_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M06_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M06_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    M06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    M06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addFloat("PHASE", "0");
    M06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M06_AXI_transactor_param_props.addString("CLK_DOMAIN", "cd_data_h2c_00");
    M06_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "SLR0");
    mp_M06_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,37,3,114,14,114,114,14>("M06_AXI_transactor", M06_AXI_transactor_param_props);
    mp_M06_AXI_transactor->AWID(M06_AXI_awid);
    mp_M06_AXI_transactor->AWADDR(M06_AXI_awaddr);
    mp_M06_AXI_transactor->AWLEN(M06_AXI_awlen);
    mp_M06_AXI_transactor->AWSIZE(M06_AXI_awsize);
    mp_M06_AXI_transactor->AWBURST(M06_AXI_awburst);
    mp_M06_AXI_awlock_converter = new xsc::common::scalar2vectorN_converter<1>("M06_AXI_awlock_converter");
    mp_M06_AXI_awlock_converter->scalar_in(m_M06_AXI_awlock_converter_signal);
    mp_M06_AXI_awlock_converter->vector_out(M06_AXI_awlock);
    mp_M06_AXI_transactor->AWLOCK(m_M06_AXI_awlock_converter_signal);
    mp_M06_AXI_transactor->AWCACHE(M06_AXI_awcache);
    mp_M06_AXI_transactor->AWPROT(M06_AXI_awprot);
    mp_M06_AXI_transactor->AWQOS(M06_AXI_awqos);
    mp_M06_AXI_transactor->AWUSER(M06_AXI_awuser);
    mp_M06_AXI_transactor->AWVALID(M06_AXI_awvalid);
    mp_M06_AXI_transactor->AWREADY(M06_AXI_awready);
    mp_M06_AXI_transactor->WDATA(M06_AXI_wdata);
    mp_M06_AXI_transactor->WSTRB(M06_AXI_wstrb);
    mp_M06_AXI_transactor->WLAST(M06_AXI_wlast);
    mp_M06_AXI_transactor->WUSER(M06_AXI_wuser);
    mp_M06_AXI_transactor->WVALID(M06_AXI_wvalid);
    mp_M06_AXI_transactor->WREADY(M06_AXI_wready);
    mp_M06_AXI_transactor->BID(M06_AXI_bid);
    mp_M06_AXI_transactor->BRESP(M06_AXI_bresp);
    mp_M06_AXI_transactor->BUSER(M06_AXI_buser);
    mp_M06_AXI_transactor->BVALID(M06_AXI_bvalid);
    mp_M06_AXI_transactor->BREADY(M06_AXI_bready);
    mp_M06_AXI_transactor->ARID(M06_AXI_arid);
    mp_M06_AXI_transactor->ARADDR(M06_AXI_araddr);
    mp_M06_AXI_transactor->ARLEN(M06_AXI_arlen);
    mp_M06_AXI_transactor->ARSIZE(M06_AXI_arsize);
    mp_M06_AXI_transactor->ARBURST(M06_AXI_arburst);
    mp_M06_AXI_arlock_converter = new xsc::common::scalar2vectorN_converter<1>("M06_AXI_arlock_converter");
    mp_M06_AXI_arlock_converter->scalar_in(m_M06_AXI_arlock_converter_signal);
    mp_M06_AXI_arlock_converter->vector_out(M06_AXI_arlock);
    mp_M06_AXI_transactor->ARLOCK(m_M06_AXI_arlock_converter_signal);
    mp_M06_AXI_transactor->ARCACHE(M06_AXI_arcache);
    mp_M06_AXI_transactor->ARPROT(M06_AXI_arprot);
    mp_M06_AXI_transactor->ARQOS(M06_AXI_arqos);
    mp_M06_AXI_transactor->ARUSER(M06_AXI_aruser);
    mp_M06_AXI_transactor->ARVALID(M06_AXI_arvalid);
    mp_M06_AXI_transactor->ARREADY(M06_AXI_arready);
    mp_M06_AXI_transactor->RID(M06_AXI_rid);
    mp_M06_AXI_transactor->RDATA(M06_AXI_rdata);
    mp_M06_AXI_transactor->RRESP(M06_AXI_rresp);
    mp_M06_AXI_transactor->RLAST(M06_AXI_rlast);
    mp_M06_AXI_transactor->RUSER(M06_AXI_ruser);
    mp_M06_AXI_transactor->RVALID(M06_AXI_rvalid);
    mp_M06_AXI_transactor->RREADY(M06_AXI_rready);
    mp_M06_AXI_transactor->CLK(aclk);
    m_M06_AXI_transactor_rst_signal.write(1);
    mp_M06_AXI_transactor->RST(m_M06_AXI_transactor_rst_signal);

    mp_impl->M06_AXI_tlm_aximm_read_socket->bind(*(mp_M06_AXI_transactor->rd_socket));
    mp_impl->M06_AXI_tlm_aximm_write_socket->bind(*(mp_M06_AXI_transactor->wr_socket));
  }
}

bd_3329_interconnect_S00_AXI_0::~bd_3329_interconnect_S00_AXI_0()
{
  delete mp_S00_AXI_transactor;
  delete mp_S00_AXI_awlock_converter;
  delete mp_S00_AXI_arlock_converter;
  delete mp_M00_AXI_transactor;
  delete mp_M00_AXI_awlock_converter;
  delete mp_M00_AXI_arlock_converter;
  delete mp_M01_AXI_transactor;
  delete mp_M01_AXI_awlock_converter;
  delete mp_M01_AXI_arlock_converter;
  delete mp_M02_AXI_transactor;
  delete mp_M02_AXI_awlock_converter;
  delete mp_M02_AXI_arlock_converter;
  delete mp_M03_AXI_transactor;
  delete mp_M03_AXI_awlock_converter;
  delete mp_M03_AXI_arlock_converter;
  delete mp_M04_AXI_transactor;
  delete mp_M04_AXI_awlock_converter;
  delete mp_M04_AXI_arlock_converter;
  delete mp_M05_AXI_transactor;
  delete mp_M05_AXI_awlock_converter;
  delete mp_M05_AXI_arlock_converter;
  delete mp_M06_AXI_transactor;
  delete mp_M06_AXI_awlock_converter;
  delete mp_M06_AXI_arlock_converter;
}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(bd_3329_interconnect_S00_AXI_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(bd_3329_interconnect_S00_AXI_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(bd_3329_interconnect_S00_AXI_0);
#endif
