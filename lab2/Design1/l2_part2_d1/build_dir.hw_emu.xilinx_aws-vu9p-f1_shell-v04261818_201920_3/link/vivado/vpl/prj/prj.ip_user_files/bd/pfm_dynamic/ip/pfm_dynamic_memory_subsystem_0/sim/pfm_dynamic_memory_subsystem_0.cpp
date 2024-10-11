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


#include "pfm_dynamic_memory_subsystem_0_sc.h"

#include "pfm_dynamic_memory_subsystem_0.h"

#include "bd_d216.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
pfm_dynamic_memory_subsystem_0::pfm_dynamic_memory_subsystem_0(const sc_core::sc_module_name& nm) : pfm_dynamic_memory_subsystem_0_sc(nm), aclk("aclk"), aclk1("aclk1"), aresetn("aresetn"), S00_AXI_awid("S00_AXI_awid"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awlen("S00_AXI_awlen"), S00_AXI_awsize("S00_AXI_awsize"), S00_AXI_awburst("S00_AXI_awburst"), S00_AXI_awlock("S00_AXI_awlock"), S00_AXI_awcache("S00_AXI_awcache"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awqos("S00_AXI_awqos"), S00_AXI_awuser("S00_AXI_awuser"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wlast("S00_AXI_wlast"), S00_AXI_wuser("S00_AXI_wuser"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bid("S00_AXI_bid"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_buser("S00_AXI_buser"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_arid("S00_AXI_arid"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_aruser("S00_AXI_aruser"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rid("S00_AXI_rid"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_ruser("S00_AXI_ruser"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), S01_AXI_awid("S01_AXI_awid"), S01_AXI_awaddr("S01_AXI_awaddr"), S01_AXI_awlen("S01_AXI_awlen"), S01_AXI_awsize("S01_AXI_awsize"), S01_AXI_awburst("S01_AXI_awburst"), S01_AXI_awlock("S01_AXI_awlock"), S01_AXI_awcache("S01_AXI_awcache"), S01_AXI_awprot("S01_AXI_awprot"), S01_AXI_awqos("S01_AXI_awqos"), S01_AXI_awuser("S01_AXI_awuser"), S01_AXI_awvalid("S01_AXI_awvalid"), S01_AXI_awready("S01_AXI_awready"), S01_AXI_wdata("S01_AXI_wdata"), S01_AXI_wstrb("S01_AXI_wstrb"), S01_AXI_wlast("S01_AXI_wlast"), S01_AXI_wuser("S01_AXI_wuser"), S01_AXI_wvalid("S01_AXI_wvalid"), S01_AXI_wready("S01_AXI_wready"), S01_AXI_bid("S01_AXI_bid"), S01_AXI_bresp("S01_AXI_bresp"), S01_AXI_buser("S01_AXI_buser"), S01_AXI_bvalid("S01_AXI_bvalid"), S01_AXI_bready("S01_AXI_bready"), S01_AXI_arid("S01_AXI_arid"), S01_AXI_araddr("S01_AXI_araddr"), S01_AXI_arlen("S01_AXI_arlen"), S01_AXI_arsize("S01_AXI_arsize"), S01_AXI_arburst("S01_AXI_arburst"), S01_AXI_arlock("S01_AXI_arlock"), S01_AXI_arcache("S01_AXI_arcache"), S01_AXI_arprot("S01_AXI_arprot"), S01_AXI_arqos("S01_AXI_arqos"), S01_AXI_aruser("S01_AXI_aruser"), S01_AXI_arvalid("S01_AXI_arvalid"), S01_AXI_arready("S01_AXI_arready"), S01_AXI_rid("S01_AXI_rid"), S01_AXI_rdata("S01_AXI_rdata"), S01_AXI_rresp("S01_AXI_rresp"), S01_AXI_rlast("S01_AXI_rlast"), S01_AXI_ruser("S01_AXI_ruser"), S01_AXI_rvalid("S01_AXI_rvalid"), S01_AXI_rready("S01_AXI_rready"), S02_AXI_awid("S02_AXI_awid"), S02_AXI_awaddr("S02_AXI_awaddr"), S02_AXI_awlen("S02_AXI_awlen"), S02_AXI_awsize("S02_AXI_awsize"), S02_AXI_awburst("S02_AXI_awburst"), S02_AXI_awlock("S02_AXI_awlock"), S02_AXI_awcache("S02_AXI_awcache"), S02_AXI_awprot("S02_AXI_awprot"), S02_AXI_awqos("S02_AXI_awqos"), S02_AXI_awuser("S02_AXI_awuser"), S02_AXI_awvalid("S02_AXI_awvalid"), S02_AXI_awready("S02_AXI_awready"), S02_AXI_wdata("S02_AXI_wdata"), S02_AXI_wstrb("S02_AXI_wstrb"), S02_AXI_wlast("S02_AXI_wlast"), S02_AXI_wuser("S02_AXI_wuser"), S02_AXI_wvalid("S02_AXI_wvalid"), S02_AXI_wready("S02_AXI_wready"), S02_AXI_bid("S02_AXI_bid"), S02_AXI_bresp("S02_AXI_bresp"), S02_AXI_buser("S02_AXI_buser"), S02_AXI_bvalid("S02_AXI_bvalid"), S02_AXI_bready("S02_AXI_bready"), S02_AXI_arid("S02_AXI_arid"), S02_AXI_araddr("S02_AXI_araddr"), S02_AXI_arlen("S02_AXI_arlen"), S02_AXI_arsize("S02_AXI_arsize"), S02_AXI_arburst("S02_AXI_arburst"), S02_AXI_arlock("S02_AXI_arlock"), S02_AXI_arcache("S02_AXI_arcache"), S02_AXI_arprot("S02_AXI_arprot"), S02_AXI_arqos("S02_AXI_arqos"), S02_AXI_aruser("S02_AXI_aruser"), S02_AXI_arvalid("S02_AXI_arvalid"), S02_AXI_arready("S02_AXI_arready"), S02_AXI_rid("S02_AXI_rid"), S02_AXI_rdata("S02_AXI_rdata"), S02_AXI_rresp("S02_AXI_rresp"), S02_AXI_rlast("S02_AXI_rlast"), S02_AXI_ruser("S02_AXI_ruser"), S02_AXI_rvalid("S02_AXI_rvalid"), S02_AXI_rready("S02_AXI_rready"), S03_AXI_awid("S03_AXI_awid"), S03_AXI_awaddr("S03_AXI_awaddr"), S03_AXI_awlen("S03_AXI_awlen"), S03_AXI_awsize("S03_AXI_awsize"), S03_AXI_awburst("S03_AXI_awburst"), S03_AXI_awlock("S03_AXI_awlock"), S03_AXI_awcache("S03_AXI_awcache"), S03_AXI_awprot("S03_AXI_awprot"), S03_AXI_awqos("S03_AXI_awqos"), S03_AXI_awuser("S03_AXI_awuser"), S03_AXI_awvalid("S03_AXI_awvalid"), S03_AXI_awready("S03_AXI_awready"), S03_AXI_wdata("S03_AXI_wdata"), S03_AXI_wstrb("S03_AXI_wstrb"), S03_AXI_wlast("S03_AXI_wlast"), S03_AXI_wuser("S03_AXI_wuser"), S03_AXI_wvalid("S03_AXI_wvalid"), S03_AXI_wready("S03_AXI_wready"), S03_AXI_bid("S03_AXI_bid"), S03_AXI_bresp("S03_AXI_bresp"), S03_AXI_buser("S03_AXI_buser"), S03_AXI_bvalid("S03_AXI_bvalid"), S03_AXI_bready("S03_AXI_bready"), S03_AXI_arid("S03_AXI_arid"), S03_AXI_araddr("S03_AXI_araddr"), S03_AXI_arlen("S03_AXI_arlen"), S03_AXI_arsize("S03_AXI_arsize"), S03_AXI_arburst("S03_AXI_arburst"), S03_AXI_arlock("S03_AXI_arlock"), S03_AXI_arcache("S03_AXI_arcache"), S03_AXI_arprot("S03_AXI_arprot"), S03_AXI_arqos("S03_AXI_arqos"), S03_AXI_aruser("S03_AXI_aruser"), S03_AXI_arvalid("S03_AXI_arvalid"), S03_AXI_arready("S03_AXI_arready"), S03_AXI_rid("S03_AXI_rid"), S03_AXI_rdata("S03_AXI_rdata"), S03_AXI_rresp("S03_AXI_rresp"), S03_AXI_rlast("S03_AXI_rlast"), S03_AXI_ruser("S03_AXI_ruser"), S03_AXI_rvalid("S03_AXI_rvalid"), S03_AXI_rready("S03_AXI_rready"), S04_AXI_awaddr("S04_AXI_awaddr"), S04_AXI_awlen("S04_AXI_awlen"), S04_AXI_awsize("S04_AXI_awsize"), S04_AXI_awlock("S04_AXI_awlock"), S04_AXI_awcache("S04_AXI_awcache"), S04_AXI_awprot("S04_AXI_awprot"), S04_AXI_awregion("S04_AXI_awregion"), S04_AXI_awqos("S04_AXI_awqos"), S04_AXI_awvalid("S04_AXI_awvalid"), S04_AXI_awready("S04_AXI_awready"), S04_AXI_wdata("S04_AXI_wdata"), S04_AXI_wstrb("S04_AXI_wstrb"), S04_AXI_wlast("S04_AXI_wlast"), S04_AXI_wvalid("S04_AXI_wvalid"), S04_AXI_wready("S04_AXI_wready"), S04_AXI_bresp("S04_AXI_bresp"), S04_AXI_bvalid("S04_AXI_bvalid"), S04_AXI_bready("S04_AXI_bready"), S04_AXI_araddr("S04_AXI_araddr"), S04_AXI_arlen("S04_AXI_arlen"), S04_AXI_arsize("S04_AXI_arsize"), S04_AXI_arlock("S04_AXI_arlock"), S04_AXI_arcache("S04_AXI_arcache"), S04_AXI_arprot("S04_AXI_arprot"), S04_AXI_arregion("S04_AXI_arregion"), S04_AXI_arqos("S04_AXI_arqos"), S04_AXI_arvalid("S04_AXI_arvalid"), S04_AXI_arready("S04_AXI_arready"), S04_AXI_rdata("S04_AXI_rdata"), S04_AXI_rresp("S04_AXI_rresp"), S04_AXI_rlast("S04_AXI_rlast"), S04_AXI_rvalid("S04_AXI_rvalid"), S04_AXI_rready("S04_AXI_rready"), ddr4_mem_calib_complete("ddr4_mem_calib_complete"), M00_AXI_awid("M00_AXI_awid"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awlen("M00_AXI_awlen"), M00_AXI_awsize("M00_AXI_awsize"), M00_AXI_awburst("M00_AXI_awburst"), M00_AXI_awlock("M00_AXI_awlock"), M00_AXI_awcache("M00_AXI_awcache"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awqos("M00_AXI_awqos"), M00_AXI_awuser("M00_AXI_awuser"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wlast("M00_AXI_wlast"), M00_AXI_wuser("M00_AXI_wuser"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bid("M00_AXI_bid"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_buser("M00_AXI_buser"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_arid("M00_AXI_arid"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arlen("M00_AXI_arlen"), M00_AXI_arsize("M00_AXI_arsize"), M00_AXI_arburst("M00_AXI_arburst"), M00_AXI_arlock("M00_AXI_arlock"), M00_AXI_arcache("M00_AXI_arcache"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arqos("M00_AXI_arqos"), M00_AXI_aruser("M00_AXI_aruser"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rid("M00_AXI_rid"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rlast("M00_AXI_rlast"), M00_AXI_ruser("M00_AXI_ruser"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready"), M01_AXI_awaddr("M01_AXI_awaddr"), M01_AXI_awlen("M01_AXI_awlen"), M01_AXI_awsize("M01_AXI_awsize"), M01_AXI_awburst("M01_AXI_awburst"), M01_AXI_awprot("M01_AXI_awprot"), M01_AXI_awvalid("M01_AXI_awvalid"), M01_AXI_awready("M01_AXI_awready"), M01_AXI_wdata("M01_AXI_wdata"), M01_AXI_wstrb("M01_AXI_wstrb"), M01_AXI_wlast("M01_AXI_wlast"), M01_AXI_wvalid("M01_AXI_wvalid"), M01_AXI_wready("M01_AXI_wready"), M01_AXI_bresp("M01_AXI_bresp"), M01_AXI_bvalid("M01_AXI_bvalid"), M01_AXI_bready("M01_AXI_bready"), M01_AXI_araddr("M01_AXI_araddr"), M01_AXI_arlen("M01_AXI_arlen"), M01_AXI_arsize("M01_AXI_arsize"), M01_AXI_arburst("M01_AXI_arburst"), M01_AXI_arprot("M01_AXI_arprot"), M01_AXI_arvalid("M01_AXI_arvalid"), M01_AXI_arready("M01_AXI_arready"), M01_AXI_rdata("M01_AXI_rdata"), M01_AXI_rresp("M01_AXI_rresp"), M01_AXI_rlast("M01_AXI_rlast"), M01_AXI_rvalid("M01_AXI_rvalid"), M01_AXI_rready("M01_AXI_rready"), M02_AXI_awid("M02_AXI_awid"), M02_AXI_awaddr("M02_AXI_awaddr"), M02_AXI_awlen("M02_AXI_awlen"), M02_AXI_awsize("M02_AXI_awsize"), M02_AXI_awburst("M02_AXI_awburst"), M02_AXI_awlock("M02_AXI_awlock"), M02_AXI_awcache("M02_AXI_awcache"), M02_AXI_awprot("M02_AXI_awprot"), M02_AXI_awqos("M02_AXI_awqos"), M02_AXI_awuser("M02_AXI_awuser"), M02_AXI_awvalid("M02_AXI_awvalid"), M02_AXI_awready("M02_AXI_awready"), M02_AXI_wdata("M02_AXI_wdata"), M02_AXI_wstrb("M02_AXI_wstrb"), M02_AXI_wlast("M02_AXI_wlast"), M02_AXI_wuser("M02_AXI_wuser"), M02_AXI_wvalid("M02_AXI_wvalid"), M02_AXI_wready("M02_AXI_wready"), M02_AXI_bid("M02_AXI_bid"), M02_AXI_bresp("M02_AXI_bresp"), M02_AXI_buser("M02_AXI_buser"), M02_AXI_bvalid("M02_AXI_bvalid"), M02_AXI_bready("M02_AXI_bready"), M02_AXI_arid("M02_AXI_arid"), M02_AXI_araddr("M02_AXI_araddr"), M02_AXI_arlen("M02_AXI_arlen"), M02_AXI_arsize("M02_AXI_arsize"), M02_AXI_arburst("M02_AXI_arburst"), M02_AXI_arlock("M02_AXI_arlock"), M02_AXI_arcache("M02_AXI_arcache"), M02_AXI_arprot("M02_AXI_arprot"), M02_AXI_arqos("M02_AXI_arqos"), M02_AXI_aruser("M02_AXI_aruser"), M02_AXI_arvalid("M02_AXI_arvalid"), M02_AXI_arready("M02_AXI_arready"), M02_AXI_rid("M02_AXI_rid"), M02_AXI_rdata("M02_AXI_rdata"), M02_AXI_rresp("M02_AXI_rresp"), M02_AXI_rlast("M02_AXI_rlast"), M02_AXI_ruser("M02_AXI_ruser"), M02_AXI_rvalid("M02_AXI_rvalid"), M02_AXI_rready("M02_AXI_rready"), M03_AXI_awid("M03_AXI_awid"), M03_AXI_awaddr("M03_AXI_awaddr"), M03_AXI_awlen("M03_AXI_awlen"), M03_AXI_awsize("M03_AXI_awsize"), M03_AXI_awburst("M03_AXI_awburst"), M03_AXI_awlock("M03_AXI_awlock"), M03_AXI_awcache("M03_AXI_awcache"), M03_AXI_awprot("M03_AXI_awprot"), M03_AXI_awqos("M03_AXI_awqos"), M03_AXI_awuser("M03_AXI_awuser"), M03_AXI_awvalid("M03_AXI_awvalid"), M03_AXI_awready("M03_AXI_awready"), M03_AXI_wdata("M03_AXI_wdata"), M03_AXI_wstrb("M03_AXI_wstrb"), M03_AXI_wlast("M03_AXI_wlast"), M03_AXI_wuser("M03_AXI_wuser"), M03_AXI_wvalid("M03_AXI_wvalid"), M03_AXI_wready("M03_AXI_wready"), M03_AXI_bid("M03_AXI_bid"), M03_AXI_bresp("M03_AXI_bresp"), M03_AXI_buser("M03_AXI_buser"), M03_AXI_bvalid("M03_AXI_bvalid"), M03_AXI_bready("M03_AXI_bready"), M03_AXI_arid("M03_AXI_arid"), M03_AXI_araddr("M03_AXI_araddr"), M03_AXI_arlen("M03_AXI_arlen"), M03_AXI_arsize("M03_AXI_arsize"), M03_AXI_arburst("M03_AXI_arburst"), M03_AXI_arlock("M03_AXI_arlock"), M03_AXI_arcache("M03_AXI_arcache"), M03_AXI_arprot("M03_AXI_arprot"), M03_AXI_arqos("M03_AXI_arqos"), M03_AXI_aruser("M03_AXI_aruser"), M03_AXI_arvalid("M03_AXI_arvalid"), M03_AXI_arready("M03_AXI_arready"), M03_AXI_rid("M03_AXI_rid"), M03_AXI_rdata("M03_AXI_rdata"), M03_AXI_rresp("M03_AXI_rresp"), M03_AXI_rlast("M03_AXI_rlast"), M03_AXI_ruser("M03_AXI_ruser"), M03_AXI_rvalid("M03_AXI_rvalid"), M03_AXI_rready("M03_AXI_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aclk1(aclk1);
  mp_impl->aresetn(aresetn);
  mp_impl->ddr4_mem_calib_complete(ddr4_mem_calib_complete);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_awvalid_converter = NULL;
  mp_S00_AXI_awready_converter = NULL;
  mp_S00_AXI_wlast_converter = NULL;
  mp_S00_AXI_wvalid_converter = NULL;
  mp_S00_AXI_wready_converter = NULL;
  mp_S00_AXI_bvalid_converter = NULL;
  mp_S00_AXI_bready_converter = NULL;
  mp_S00_AXI_arvalid_converter = NULL;
  mp_S00_AXI_arready_converter = NULL;
  mp_S00_AXI_rlast_converter = NULL;
  mp_S00_AXI_rvalid_converter = NULL;
  mp_S00_AXI_rready_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S01_AXI_awvalid_converter = NULL;
  mp_S01_AXI_awready_converter = NULL;
  mp_S01_AXI_wlast_converter = NULL;
  mp_S01_AXI_wvalid_converter = NULL;
  mp_S01_AXI_wready_converter = NULL;
  mp_S01_AXI_bvalid_converter = NULL;
  mp_S01_AXI_bready_converter = NULL;
  mp_S01_AXI_arvalid_converter = NULL;
  mp_S01_AXI_arready_converter = NULL;
  mp_S01_AXI_rlast_converter = NULL;
  mp_S01_AXI_rvalid_converter = NULL;
  mp_S01_AXI_rready_converter = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S02_AXI_awvalid_converter = NULL;
  mp_S02_AXI_awready_converter = NULL;
  mp_S02_AXI_wlast_converter = NULL;
  mp_S02_AXI_wvalid_converter = NULL;
  mp_S02_AXI_wready_converter = NULL;
  mp_S02_AXI_bvalid_converter = NULL;
  mp_S02_AXI_bready_converter = NULL;
  mp_S02_AXI_arvalid_converter = NULL;
  mp_S02_AXI_arready_converter = NULL;
  mp_S02_AXI_rlast_converter = NULL;
  mp_S02_AXI_rvalid_converter = NULL;
  mp_S02_AXI_rready_converter = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S03_AXI_awvalid_converter = NULL;
  mp_S03_AXI_awready_converter = NULL;
  mp_S03_AXI_wlast_converter = NULL;
  mp_S03_AXI_wvalid_converter = NULL;
  mp_S03_AXI_wready_converter = NULL;
  mp_S03_AXI_bvalid_converter = NULL;
  mp_S03_AXI_bready_converter = NULL;
  mp_S03_AXI_arvalid_converter = NULL;
  mp_S03_AXI_arready_converter = NULL;
  mp_S03_AXI_rlast_converter = NULL;
  mp_S03_AXI_rvalid_converter = NULL;
  mp_S03_AXI_rready_converter = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_S04_AXI_awvalid_converter = NULL;
  mp_S04_AXI_awready_converter = NULL;
  mp_S04_AXI_wlast_converter = NULL;
  mp_S04_AXI_wvalid_converter = NULL;
  mp_S04_AXI_wready_converter = NULL;
  mp_S04_AXI_bvalid_converter = NULL;
  mp_S04_AXI_bready_converter = NULL;
  mp_S04_AXI_arvalid_converter = NULL;
  mp_S04_AXI_arready_converter = NULL;
  mp_S04_AXI_rlast_converter = NULL;
  mp_S04_AXI_rvalid_converter = NULL;
  mp_S04_AXI_rready_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M00_AXI_awaddr_converter = NULL;
  mp_M00_AXI_awvalid_converter = NULL;
  mp_M00_AXI_awready_converter = NULL;
  mp_M00_AXI_wlast_converter = NULL;
  mp_M00_AXI_wvalid_converter = NULL;
  mp_M00_AXI_wready_converter = NULL;
  mp_M00_AXI_bvalid_converter = NULL;
  mp_M00_AXI_bready_converter = NULL;
  mp_M00_AXI_araddr_converter = NULL;
  mp_M00_AXI_arvalid_converter = NULL;
  mp_M00_AXI_arready_converter = NULL;
  mp_M00_AXI_rlast_converter = NULL;
  mp_M00_AXI_rvalid_converter = NULL;
  mp_M00_AXI_rready_converter = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_M01_AXI_awvalid_converter = NULL;
  mp_M01_AXI_awready_converter = NULL;
  mp_M01_AXI_wlast_converter = NULL;
  mp_M01_AXI_wvalid_converter = NULL;
  mp_M01_AXI_wready_converter = NULL;
  mp_M01_AXI_bvalid_converter = NULL;
  mp_M01_AXI_bready_converter = NULL;
  mp_M01_AXI_arvalid_converter = NULL;
  mp_M01_AXI_arready_converter = NULL;
  mp_M01_AXI_rlast_converter = NULL;
  mp_M01_AXI_rvalid_converter = NULL;
  mp_M01_AXI_rready_converter = NULL;
  mp_M02_AXI_transactor = NULL;
  mp_M02_AXI_awaddr_converter = NULL;
  mp_M02_AXI_awvalid_converter = NULL;
  mp_M02_AXI_awready_converter = NULL;
  mp_M02_AXI_wlast_converter = NULL;
  mp_M02_AXI_wvalid_converter = NULL;
  mp_M02_AXI_wready_converter = NULL;
  mp_M02_AXI_bvalid_converter = NULL;
  mp_M02_AXI_bready_converter = NULL;
  mp_M02_AXI_araddr_converter = NULL;
  mp_M02_AXI_arvalid_converter = NULL;
  mp_M02_AXI_arready_converter = NULL;
  mp_M02_AXI_rlast_converter = NULL;
  mp_M02_AXI_rvalid_converter = NULL;
  mp_M02_AXI_rready_converter = NULL;
  mp_M03_AXI_transactor = NULL;
  mp_M03_AXI_awaddr_converter = NULL;
  mp_M03_AXI_awvalid_converter = NULL;
  mp_M03_AXI_awready_converter = NULL;
  mp_M03_AXI_wlast_converter = NULL;
  mp_M03_AXI_wvalid_converter = NULL;
  mp_M03_AXI_wready_converter = NULL;
  mp_M03_AXI_bvalid_converter = NULL;
  mp_M03_AXI_bready_converter = NULL;
  mp_M03_AXI_araddr_converter = NULL;
  mp_M03_AXI_arvalid_converter = NULL;
  mp_M03_AXI_arready_converter = NULL;
  mp_M03_AXI_rlast_converter = NULL;
  mp_M03_AXI_rvalid_converter = NULL;
  mp_M03_AXI_rready_converter = NULL;

  // initialize socket stubs

}

void pfm_dynamic_memory_subsystem_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
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
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWID(S00_AXI_awid);
    mp_S00_AXI_transactor->AWADDR(S00_AXI_awaddr);
    mp_S00_AXI_transactor->AWLEN(S00_AXI_awlen);
    mp_S00_AXI_transactor->AWSIZE(S00_AXI_awsize);
    mp_S00_AXI_transactor->AWBURST(S00_AXI_awburst);
    mp_S00_AXI_transactor->AWLOCK(S00_AXI_awlock);
    mp_S00_AXI_transactor->AWCACHE(S00_AXI_awcache);
    mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
    mp_S00_AXI_transactor->AWQOS(S00_AXI_awqos);
    mp_S00_AXI_transactor->AWUSER(S00_AXI_awuser);
    mp_S00_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awvalid_converter");
    mp_S00_AXI_awvalid_converter->vector_in(S00_AXI_awvalid);
    mp_S00_AXI_awvalid_converter->scalar_out(m_S00_AXI_awvalid_converter_signal);
    mp_S00_AXI_transactor->AWVALID(m_S00_AXI_awvalid_converter_signal);
    mp_S00_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_awready_converter");
    mp_S00_AXI_awready_converter->scalar_in(m_S00_AXI_awready_converter_signal);
    mp_S00_AXI_awready_converter->vector_out(S00_AXI_awready);
    mp_S00_AXI_transactor->AWREADY(m_S00_AXI_awready_converter_signal);
    mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
    mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
    mp_S00_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wlast_converter");
    mp_S00_AXI_wlast_converter->vector_in(S00_AXI_wlast);
    mp_S00_AXI_wlast_converter->scalar_out(m_S00_AXI_wlast_converter_signal);
    mp_S00_AXI_transactor->WLAST(m_S00_AXI_wlast_converter_signal);
    mp_S00_AXI_transactor->WUSER(S00_AXI_wuser);
    mp_S00_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wvalid_converter");
    mp_S00_AXI_wvalid_converter->vector_in(S00_AXI_wvalid);
    mp_S00_AXI_wvalid_converter->scalar_out(m_S00_AXI_wvalid_converter_signal);
    mp_S00_AXI_transactor->WVALID(m_S00_AXI_wvalid_converter_signal);
    mp_S00_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_wready_converter");
    mp_S00_AXI_wready_converter->scalar_in(m_S00_AXI_wready_converter_signal);
    mp_S00_AXI_wready_converter->vector_out(S00_AXI_wready);
    mp_S00_AXI_transactor->WREADY(m_S00_AXI_wready_converter_signal);
    mp_S00_AXI_transactor->BID(S00_AXI_bid);
    mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
    mp_S00_AXI_transactor->BUSER(S00_AXI_buser);
    mp_S00_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_bvalid_converter");
    mp_S00_AXI_bvalid_converter->scalar_in(m_S00_AXI_bvalid_converter_signal);
    mp_S00_AXI_bvalid_converter->vector_out(S00_AXI_bvalid);
    mp_S00_AXI_transactor->BVALID(m_S00_AXI_bvalid_converter_signal);
    mp_S00_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_bready_converter");
    mp_S00_AXI_bready_converter->vector_in(S00_AXI_bready);
    mp_S00_AXI_bready_converter->scalar_out(m_S00_AXI_bready_converter_signal);
    mp_S00_AXI_transactor->BREADY(m_S00_AXI_bready_converter_signal);
    mp_S00_AXI_transactor->ARID(S00_AXI_arid);
    mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
    mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
    mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
    mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
    mp_S00_AXI_transactor->ARLOCK(S00_AXI_arlock);
    mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
    mp_S00_AXI_transactor->ARUSER(S00_AXI_aruser);
    mp_S00_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arvalid_converter");
    mp_S00_AXI_arvalid_converter->vector_in(S00_AXI_arvalid);
    mp_S00_AXI_arvalid_converter->scalar_out(m_S00_AXI_arvalid_converter_signal);
    mp_S00_AXI_transactor->ARVALID(m_S00_AXI_arvalid_converter_signal);
    mp_S00_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_arready_converter");
    mp_S00_AXI_arready_converter->scalar_in(m_S00_AXI_arready_converter_signal);
    mp_S00_AXI_arready_converter->vector_out(S00_AXI_arready);
    mp_S00_AXI_transactor->ARREADY(m_S00_AXI_arready_converter_signal);
    mp_S00_AXI_transactor->RID(S00_AXI_rid);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rlast_converter");
    mp_S00_AXI_rlast_converter->scalar_in(m_S00_AXI_rlast_converter_signal);
    mp_S00_AXI_rlast_converter->vector_out(S00_AXI_rlast);
    mp_S00_AXI_transactor->RLAST(m_S00_AXI_rlast_converter_signal);
    mp_S00_AXI_transactor->RUSER(S00_AXI_ruser);
    mp_S00_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rvalid_converter");
    mp_S00_AXI_rvalid_converter->scalar_in(m_S00_AXI_rvalid_converter_signal);
    mp_S00_AXI_rvalid_converter->vector_out(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RVALID(m_S00_AXI_rvalid_converter_signal);
    mp_S00_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_rready_converter");
    mp_S00_AXI_rready_converter->vector_in(S00_AXI_rready);
    mp_S00_AXI_rready_converter->scalar_out(m_S00_AXI_rready_converter_signal);
    mp_S00_AXI_transactor->RREADY(m_S00_AXI_rready_converter_signal);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S01_AXI' transactor parameters
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "35");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S01_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);

    // S01_AXI' transactor ports

    mp_S01_AXI_transactor->AWID(S01_AXI_awid);
    mp_S01_AXI_transactor->AWADDR(S01_AXI_awaddr);
    mp_S01_AXI_transactor->AWLEN(S01_AXI_awlen);
    mp_S01_AXI_transactor->AWSIZE(S01_AXI_awsize);
    mp_S01_AXI_transactor->AWBURST(S01_AXI_awburst);
    mp_S01_AXI_transactor->AWLOCK(S01_AXI_awlock);
    mp_S01_AXI_transactor->AWCACHE(S01_AXI_awcache);
    mp_S01_AXI_transactor->AWPROT(S01_AXI_awprot);
    mp_S01_AXI_transactor->AWQOS(S01_AXI_awqos);
    mp_S01_AXI_transactor->AWUSER(S01_AXI_awuser);
    mp_S01_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_awvalid_converter");
    mp_S01_AXI_awvalid_converter->vector_in(S01_AXI_awvalid);
    mp_S01_AXI_awvalid_converter->scalar_out(m_S01_AXI_awvalid_converter_signal);
    mp_S01_AXI_transactor->AWVALID(m_S01_AXI_awvalid_converter_signal);
    mp_S01_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_awready_converter");
    mp_S01_AXI_awready_converter->scalar_in(m_S01_AXI_awready_converter_signal);
    mp_S01_AXI_awready_converter->vector_out(S01_AXI_awready);
    mp_S01_AXI_transactor->AWREADY(m_S01_AXI_awready_converter_signal);
    mp_S01_AXI_transactor->WDATA(S01_AXI_wdata);
    mp_S01_AXI_transactor->WSTRB(S01_AXI_wstrb);
    mp_S01_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_wlast_converter");
    mp_S01_AXI_wlast_converter->vector_in(S01_AXI_wlast);
    mp_S01_AXI_wlast_converter->scalar_out(m_S01_AXI_wlast_converter_signal);
    mp_S01_AXI_transactor->WLAST(m_S01_AXI_wlast_converter_signal);
    mp_S01_AXI_transactor->WUSER(S01_AXI_wuser);
    mp_S01_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_wvalid_converter");
    mp_S01_AXI_wvalid_converter->vector_in(S01_AXI_wvalid);
    mp_S01_AXI_wvalid_converter->scalar_out(m_S01_AXI_wvalid_converter_signal);
    mp_S01_AXI_transactor->WVALID(m_S01_AXI_wvalid_converter_signal);
    mp_S01_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_wready_converter");
    mp_S01_AXI_wready_converter->scalar_in(m_S01_AXI_wready_converter_signal);
    mp_S01_AXI_wready_converter->vector_out(S01_AXI_wready);
    mp_S01_AXI_transactor->WREADY(m_S01_AXI_wready_converter_signal);
    mp_S01_AXI_transactor->BID(S01_AXI_bid);
    mp_S01_AXI_transactor->BRESP(S01_AXI_bresp);
    mp_S01_AXI_transactor->BUSER(S01_AXI_buser);
    mp_S01_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_bvalid_converter");
    mp_S01_AXI_bvalid_converter->scalar_in(m_S01_AXI_bvalid_converter_signal);
    mp_S01_AXI_bvalid_converter->vector_out(S01_AXI_bvalid);
    mp_S01_AXI_transactor->BVALID(m_S01_AXI_bvalid_converter_signal);
    mp_S01_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_bready_converter");
    mp_S01_AXI_bready_converter->vector_in(S01_AXI_bready);
    mp_S01_AXI_bready_converter->scalar_out(m_S01_AXI_bready_converter_signal);
    mp_S01_AXI_transactor->BREADY(m_S01_AXI_bready_converter_signal);
    mp_S01_AXI_transactor->ARID(S01_AXI_arid);
    mp_S01_AXI_transactor->ARADDR(S01_AXI_araddr);
    mp_S01_AXI_transactor->ARLEN(S01_AXI_arlen);
    mp_S01_AXI_transactor->ARSIZE(S01_AXI_arsize);
    mp_S01_AXI_transactor->ARBURST(S01_AXI_arburst);
    mp_S01_AXI_transactor->ARLOCK(S01_AXI_arlock);
    mp_S01_AXI_transactor->ARCACHE(S01_AXI_arcache);
    mp_S01_AXI_transactor->ARPROT(S01_AXI_arprot);
    mp_S01_AXI_transactor->ARQOS(S01_AXI_arqos);
    mp_S01_AXI_transactor->ARUSER(S01_AXI_aruser);
    mp_S01_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_arvalid_converter");
    mp_S01_AXI_arvalid_converter->vector_in(S01_AXI_arvalid);
    mp_S01_AXI_arvalid_converter->scalar_out(m_S01_AXI_arvalid_converter_signal);
    mp_S01_AXI_transactor->ARVALID(m_S01_AXI_arvalid_converter_signal);
    mp_S01_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_arready_converter");
    mp_S01_AXI_arready_converter->scalar_in(m_S01_AXI_arready_converter_signal);
    mp_S01_AXI_arready_converter->vector_out(S01_AXI_arready);
    mp_S01_AXI_transactor->ARREADY(m_S01_AXI_arready_converter_signal);
    mp_S01_AXI_transactor->RID(S01_AXI_rid);
    mp_S01_AXI_transactor->RDATA(S01_AXI_rdata);
    mp_S01_AXI_transactor->RRESP(S01_AXI_rresp);
    mp_S01_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_rlast_converter");
    mp_S01_AXI_rlast_converter->scalar_in(m_S01_AXI_rlast_converter_signal);
    mp_S01_AXI_rlast_converter->vector_out(S01_AXI_rlast);
    mp_S01_AXI_transactor->RLAST(m_S01_AXI_rlast_converter_signal);
    mp_S01_AXI_transactor->RUSER(S01_AXI_ruser);
    mp_S01_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_rvalid_converter");
    mp_S01_AXI_rvalid_converter->scalar_in(m_S01_AXI_rvalid_converter_signal);
    mp_S01_AXI_rvalid_converter->vector_out(S01_AXI_rvalid);
    mp_S01_AXI_transactor->RVALID(m_S01_AXI_rvalid_converter_signal);
    mp_S01_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_rready_converter");
    mp_S01_AXI_rready_converter->vector_in(S01_AXI_rready);
    mp_S01_AXI_rready_converter->scalar_out(m_S01_AXI_rready_converter_signal);
    mp_S01_AXI_transactor->RREADY(m_S01_AXI_rready_converter_signal);
    mp_S01_AXI_transactor->CLK(aclk);
    mp_S01_AXI_transactor->RST(aresetn);

    // S01_AXI' transactor sockets

    mp_impl->S01_AXI_tlm_aximm_read_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->S01_AXI_tlm_aximm_write_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S02_AXI' transactor parameters
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S02_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S02_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S02_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S02_AXI_transactor", S02_AXI_transactor_param_props);

    // S02_AXI' transactor ports

    mp_S02_AXI_transactor->AWID(S02_AXI_awid);
    mp_S02_AXI_transactor->AWADDR(S02_AXI_awaddr);
    mp_S02_AXI_transactor->AWLEN(S02_AXI_awlen);
    mp_S02_AXI_transactor->AWSIZE(S02_AXI_awsize);
    mp_S02_AXI_transactor->AWBURST(S02_AXI_awburst);
    mp_S02_AXI_transactor->AWLOCK(S02_AXI_awlock);
    mp_S02_AXI_transactor->AWCACHE(S02_AXI_awcache);
    mp_S02_AXI_transactor->AWPROT(S02_AXI_awprot);
    mp_S02_AXI_transactor->AWQOS(S02_AXI_awqos);
    mp_S02_AXI_transactor->AWUSER(S02_AXI_awuser);
    mp_S02_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_awvalid_converter");
    mp_S02_AXI_awvalid_converter->vector_in(S02_AXI_awvalid);
    mp_S02_AXI_awvalid_converter->scalar_out(m_S02_AXI_awvalid_converter_signal);
    mp_S02_AXI_transactor->AWVALID(m_S02_AXI_awvalid_converter_signal);
    mp_S02_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_awready_converter");
    mp_S02_AXI_awready_converter->scalar_in(m_S02_AXI_awready_converter_signal);
    mp_S02_AXI_awready_converter->vector_out(S02_AXI_awready);
    mp_S02_AXI_transactor->AWREADY(m_S02_AXI_awready_converter_signal);
    mp_S02_AXI_transactor->WDATA(S02_AXI_wdata);
    mp_S02_AXI_transactor->WSTRB(S02_AXI_wstrb);
    mp_S02_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_wlast_converter");
    mp_S02_AXI_wlast_converter->vector_in(S02_AXI_wlast);
    mp_S02_AXI_wlast_converter->scalar_out(m_S02_AXI_wlast_converter_signal);
    mp_S02_AXI_transactor->WLAST(m_S02_AXI_wlast_converter_signal);
    mp_S02_AXI_transactor->WUSER(S02_AXI_wuser);
    mp_S02_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_wvalid_converter");
    mp_S02_AXI_wvalid_converter->vector_in(S02_AXI_wvalid);
    mp_S02_AXI_wvalid_converter->scalar_out(m_S02_AXI_wvalid_converter_signal);
    mp_S02_AXI_transactor->WVALID(m_S02_AXI_wvalid_converter_signal);
    mp_S02_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_wready_converter");
    mp_S02_AXI_wready_converter->scalar_in(m_S02_AXI_wready_converter_signal);
    mp_S02_AXI_wready_converter->vector_out(S02_AXI_wready);
    mp_S02_AXI_transactor->WREADY(m_S02_AXI_wready_converter_signal);
    mp_S02_AXI_transactor->BID(S02_AXI_bid);
    mp_S02_AXI_transactor->BRESP(S02_AXI_bresp);
    mp_S02_AXI_transactor->BUSER(S02_AXI_buser);
    mp_S02_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_bvalid_converter");
    mp_S02_AXI_bvalid_converter->scalar_in(m_S02_AXI_bvalid_converter_signal);
    mp_S02_AXI_bvalid_converter->vector_out(S02_AXI_bvalid);
    mp_S02_AXI_transactor->BVALID(m_S02_AXI_bvalid_converter_signal);
    mp_S02_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_bready_converter");
    mp_S02_AXI_bready_converter->vector_in(S02_AXI_bready);
    mp_S02_AXI_bready_converter->scalar_out(m_S02_AXI_bready_converter_signal);
    mp_S02_AXI_transactor->BREADY(m_S02_AXI_bready_converter_signal);
    mp_S02_AXI_transactor->ARID(S02_AXI_arid);
    mp_S02_AXI_transactor->ARADDR(S02_AXI_araddr);
    mp_S02_AXI_transactor->ARLEN(S02_AXI_arlen);
    mp_S02_AXI_transactor->ARSIZE(S02_AXI_arsize);
    mp_S02_AXI_transactor->ARBURST(S02_AXI_arburst);
    mp_S02_AXI_transactor->ARLOCK(S02_AXI_arlock);
    mp_S02_AXI_transactor->ARCACHE(S02_AXI_arcache);
    mp_S02_AXI_transactor->ARPROT(S02_AXI_arprot);
    mp_S02_AXI_transactor->ARQOS(S02_AXI_arqos);
    mp_S02_AXI_transactor->ARUSER(S02_AXI_aruser);
    mp_S02_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_arvalid_converter");
    mp_S02_AXI_arvalid_converter->vector_in(S02_AXI_arvalid);
    mp_S02_AXI_arvalid_converter->scalar_out(m_S02_AXI_arvalid_converter_signal);
    mp_S02_AXI_transactor->ARVALID(m_S02_AXI_arvalid_converter_signal);
    mp_S02_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_arready_converter");
    mp_S02_AXI_arready_converter->scalar_in(m_S02_AXI_arready_converter_signal);
    mp_S02_AXI_arready_converter->vector_out(S02_AXI_arready);
    mp_S02_AXI_transactor->ARREADY(m_S02_AXI_arready_converter_signal);
    mp_S02_AXI_transactor->RID(S02_AXI_rid);
    mp_S02_AXI_transactor->RDATA(S02_AXI_rdata);
    mp_S02_AXI_transactor->RRESP(S02_AXI_rresp);
    mp_S02_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_rlast_converter");
    mp_S02_AXI_rlast_converter->scalar_in(m_S02_AXI_rlast_converter_signal);
    mp_S02_AXI_rlast_converter->vector_out(S02_AXI_rlast);
    mp_S02_AXI_transactor->RLAST(m_S02_AXI_rlast_converter_signal);
    mp_S02_AXI_transactor->RUSER(S02_AXI_ruser);
    mp_S02_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_rvalid_converter");
    mp_S02_AXI_rvalid_converter->scalar_in(m_S02_AXI_rvalid_converter_signal);
    mp_S02_AXI_rvalid_converter->vector_out(S02_AXI_rvalid);
    mp_S02_AXI_transactor->RVALID(m_S02_AXI_rvalid_converter_signal);
    mp_S02_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_rready_converter");
    mp_S02_AXI_rready_converter->vector_in(S02_AXI_rready);
    mp_S02_AXI_rready_converter->scalar_out(m_S02_AXI_rready_converter_signal);
    mp_S02_AXI_transactor->RREADY(m_S02_AXI_rready_converter_signal);
    mp_S02_AXI_transactor->CLK(aclk);
    mp_S02_AXI_transactor->RST(aresetn);

    // S02_AXI' transactor sockets

    mp_impl->S02_AXI_tlm_aximm_read_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->S02_AXI_tlm_aximm_write_socket->bind(*(mp_S02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S03_AXI' transactor parameters
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S03_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S03_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S03_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S03_AXI_transactor", S03_AXI_transactor_param_props);

    // S03_AXI' transactor ports

    mp_S03_AXI_transactor->AWID(S03_AXI_awid);
    mp_S03_AXI_transactor->AWADDR(S03_AXI_awaddr);
    mp_S03_AXI_transactor->AWLEN(S03_AXI_awlen);
    mp_S03_AXI_transactor->AWSIZE(S03_AXI_awsize);
    mp_S03_AXI_transactor->AWBURST(S03_AXI_awburst);
    mp_S03_AXI_transactor->AWLOCK(S03_AXI_awlock);
    mp_S03_AXI_transactor->AWCACHE(S03_AXI_awcache);
    mp_S03_AXI_transactor->AWPROT(S03_AXI_awprot);
    mp_S03_AXI_transactor->AWQOS(S03_AXI_awqos);
    mp_S03_AXI_transactor->AWUSER(S03_AXI_awuser);
    mp_S03_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_awvalid_converter");
    mp_S03_AXI_awvalid_converter->vector_in(S03_AXI_awvalid);
    mp_S03_AXI_awvalid_converter->scalar_out(m_S03_AXI_awvalid_converter_signal);
    mp_S03_AXI_transactor->AWVALID(m_S03_AXI_awvalid_converter_signal);
    mp_S03_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_awready_converter");
    mp_S03_AXI_awready_converter->scalar_in(m_S03_AXI_awready_converter_signal);
    mp_S03_AXI_awready_converter->vector_out(S03_AXI_awready);
    mp_S03_AXI_transactor->AWREADY(m_S03_AXI_awready_converter_signal);
    mp_S03_AXI_transactor->WDATA(S03_AXI_wdata);
    mp_S03_AXI_transactor->WSTRB(S03_AXI_wstrb);
    mp_S03_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_wlast_converter");
    mp_S03_AXI_wlast_converter->vector_in(S03_AXI_wlast);
    mp_S03_AXI_wlast_converter->scalar_out(m_S03_AXI_wlast_converter_signal);
    mp_S03_AXI_transactor->WLAST(m_S03_AXI_wlast_converter_signal);
    mp_S03_AXI_transactor->WUSER(S03_AXI_wuser);
    mp_S03_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_wvalid_converter");
    mp_S03_AXI_wvalid_converter->vector_in(S03_AXI_wvalid);
    mp_S03_AXI_wvalid_converter->scalar_out(m_S03_AXI_wvalid_converter_signal);
    mp_S03_AXI_transactor->WVALID(m_S03_AXI_wvalid_converter_signal);
    mp_S03_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_wready_converter");
    mp_S03_AXI_wready_converter->scalar_in(m_S03_AXI_wready_converter_signal);
    mp_S03_AXI_wready_converter->vector_out(S03_AXI_wready);
    mp_S03_AXI_transactor->WREADY(m_S03_AXI_wready_converter_signal);
    mp_S03_AXI_transactor->BID(S03_AXI_bid);
    mp_S03_AXI_transactor->BRESP(S03_AXI_bresp);
    mp_S03_AXI_transactor->BUSER(S03_AXI_buser);
    mp_S03_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_bvalid_converter");
    mp_S03_AXI_bvalid_converter->scalar_in(m_S03_AXI_bvalid_converter_signal);
    mp_S03_AXI_bvalid_converter->vector_out(S03_AXI_bvalid);
    mp_S03_AXI_transactor->BVALID(m_S03_AXI_bvalid_converter_signal);
    mp_S03_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_bready_converter");
    mp_S03_AXI_bready_converter->vector_in(S03_AXI_bready);
    mp_S03_AXI_bready_converter->scalar_out(m_S03_AXI_bready_converter_signal);
    mp_S03_AXI_transactor->BREADY(m_S03_AXI_bready_converter_signal);
    mp_S03_AXI_transactor->ARID(S03_AXI_arid);
    mp_S03_AXI_transactor->ARADDR(S03_AXI_araddr);
    mp_S03_AXI_transactor->ARLEN(S03_AXI_arlen);
    mp_S03_AXI_transactor->ARSIZE(S03_AXI_arsize);
    mp_S03_AXI_transactor->ARBURST(S03_AXI_arburst);
    mp_S03_AXI_transactor->ARLOCK(S03_AXI_arlock);
    mp_S03_AXI_transactor->ARCACHE(S03_AXI_arcache);
    mp_S03_AXI_transactor->ARPROT(S03_AXI_arprot);
    mp_S03_AXI_transactor->ARQOS(S03_AXI_arqos);
    mp_S03_AXI_transactor->ARUSER(S03_AXI_aruser);
    mp_S03_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_arvalid_converter");
    mp_S03_AXI_arvalid_converter->vector_in(S03_AXI_arvalid);
    mp_S03_AXI_arvalid_converter->scalar_out(m_S03_AXI_arvalid_converter_signal);
    mp_S03_AXI_transactor->ARVALID(m_S03_AXI_arvalid_converter_signal);
    mp_S03_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_arready_converter");
    mp_S03_AXI_arready_converter->scalar_in(m_S03_AXI_arready_converter_signal);
    mp_S03_AXI_arready_converter->vector_out(S03_AXI_arready);
    mp_S03_AXI_transactor->ARREADY(m_S03_AXI_arready_converter_signal);
    mp_S03_AXI_transactor->RID(S03_AXI_rid);
    mp_S03_AXI_transactor->RDATA(S03_AXI_rdata);
    mp_S03_AXI_transactor->RRESP(S03_AXI_rresp);
    mp_S03_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_rlast_converter");
    mp_S03_AXI_rlast_converter->scalar_in(m_S03_AXI_rlast_converter_signal);
    mp_S03_AXI_rlast_converter->vector_out(S03_AXI_rlast);
    mp_S03_AXI_transactor->RLAST(m_S03_AXI_rlast_converter_signal);
    mp_S03_AXI_transactor->RUSER(S03_AXI_ruser);
    mp_S03_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_rvalid_converter");
    mp_S03_AXI_rvalid_converter->scalar_in(m_S03_AXI_rvalid_converter_signal);
    mp_S03_AXI_rvalid_converter->vector_out(S03_AXI_rvalid);
    mp_S03_AXI_transactor->RVALID(m_S03_AXI_rvalid_converter_signal);
    mp_S03_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_rready_converter");
    mp_S03_AXI_rready_converter->vector_in(S03_AXI_rready);
    mp_S03_AXI_rready_converter->scalar_out(m_S03_AXI_rready_converter_signal);
    mp_S03_AXI_transactor->RREADY(m_S03_AXI_rready_converter_signal);
    mp_S03_AXI_transactor->CLK(aclk);
    mp_S03_AXI_transactor->RST(aresetn);

    // S03_AXI' transactor sockets

    mp_impl->S03_AXI_tlm_aximm_read_socket->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_impl->S03_AXI_tlm_aximm_write_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S04_AXI' transactor parameters
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "35");
    S04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S04_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S04_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S04_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S04_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,64,1,1,1,1,1,1>("S04_AXI_transactor", S04_AXI_transactor_param_props);

    // S04_AXI' transactor ports

    mp_S04_AXI_transactor->AWADDR(S04_AXI_awaddr);
    mp_S04_AXI_transactor->AWLEN(S04_AXI_awlen);
    mp_S04_AXI_transactor->AWSIZE(S04_AXI_awsize);
    mp_S04_AXI_transactor->AWLOCK(S04_AXI_awlock);
    mp_S04_AXI_transactor->AWCACHE(S04_AXI_awcache);
    mp_S04_AXI_transactor->AWPROT(S04_AXI_awprot);
    mp_S04_AXI_transactor->AWREGION(S04_AXI_awregion);
    mp_S04_AXI_transactor->AWQOS(S04_AXI_awqos);
    mp_S04_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_awvalid_converter");
    mp_S04_AXI_awvalid_converter->vector_in(S04_AXI_awvalid);
    mp_S04_AXI_awvalid_converter->scalar_out(m_S04_AXI_awvalid_converter_signal);
    mp_S04_AXI_transactor->AWVALID(m_S04_AXI_awvalid_converter_signal);
    mp_S04_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_awready_converter");
    mp_S04_AXI_awready_converter->scalar_in(m_S04_AXI_awready_converter_signal);
    mp_S04_AXI_awready_converter->vector_out(S04_AXI_awready);
    mp_S04_AXI_transactor->AWREADY(m_S04_AXI_awready_converter_signal);
    mp_S04_AXI_transactor->WDATA(S04_AXI_wdata);
    mp_S04_AXI_transactor->WSTRB(S04_AXI_wstrb);
    mp_S04_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_wlast_converter");
    mp_S04_AXI_wlast_converter->vector_in(S04_AXI_wlast);
    mp_S04_AXI_wlast_converter->scalar_out(m_S04_AXI_wlast_converter_signal);
    mp_S04_AXI_transactor->WLAST(m_S04_AXI_wlast_converter_signal);
    mp_S04_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_wvalid_converter");
    mp_S04_AXI_wvalid_converter->vector_in(S04_AXI_wvalid);
    mp_S04_AXI_wvalid_converter->scalar_out(m_S04_AXI_wvalid_converter_signal);
    mp_S04_AXI_transactor->WVALID(m_S04_AXI_wvalid_converter_signal);
    mp_S04_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_wready_converter");
    mp_S04_AXI_wready_converter->scalar_in(m_S04_AXI_wready_converter_signal);
    mp_S04_AXI_wready_converter->vector_out(S04_AXI_wready);
    mp_S04_AXI_transactor->WREADY(m_S04_AXI_wready_converter_signal);
    mp_S04_AXI_transactor->BRESP(S04_AXI_bresp);
    mp_S04_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_bvalid_converter");
    mp_S04_AXI_bvalid_converter->scalar_in(m_S04_AXI_bvalid_converter_signal);
    mp_S04_AXI_bvalid_converter->vector_out(S04_AXI_bvalid);
    mp_S04_AXI_transactor->BVALID(m_S04_AXI_bvalid_converter_signal);
    mp_S04_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_bready_converter");
    mp_S04_AXI_bready_converter->vector_in(S04_AXI_bready);
    mp_S04_AXI_bready_converter->scalar_out(m_S04_AXI_bready_converter_signal);
    mp_S04_AXI_transactor->BREADY(m_S04_AXI_bready_converter_signal);
    mp_S04_AXI_transactor->ARADDR(S04_AXI_araddr);
    mp_S04_AXI_transactor->ARLEN(S04_AXI_arlen);
    mp_S04_AXI_transactor->ARSIZE(S04_AXI_arsize);
    mp_S04_AXI_transactor->ARLOCK(S04_AXI_arlock);
    mp_S04_AXI_transactor->ARCACHE(S04_AXI_arcache);
    mp_S04_AXI_transactor->ARPROT(S04_AXI_arprot);
    mp_S04_AXI_transactor->ARREGION(S04_AXI_arregion);
    mp_S04_AXI_transactor->ARQOS(S04_AXI_arqos);
    mp_S04_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_arvalid_converter");
    mp_S04_AXI_arvalid_converter->vector_in(S04_AXI_arvalid);
    mp_S04_AXI_arvalid_converter->scalar_out(m_S04_AXI_arvalid_converter_signal);
    mp_S04_AXI_transactor->ARVALID(m_S04_AXI_arvalid_converter_signal);
    mp_S04_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_arready_converter");
    mp_S04_AXI_arready_converter->scalar_in(m_S04_AXI_arready_converter_signal);
    mp_S04_AXI_arready_converter->vector_out(S04_AXI_arready);
    mp_S04_AXI_transactor->ARREADY(m_S04_AXI_arready_converter_signal);
    mp_S04_AXI_transactor->RDATA(S04_AXI_rdata);
    mp_S04_AXI_transactor->RRESP(S04_AXI_rresp);
    mp_S04_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_rlast_converter");
    mp_S04_AXI_rlast_converter->scalar_in(m_S04_AXI_rlast_converter_signal);
    mp_S04_AXI_rlast_converter->vector_out(S04_AXI_rlast);
    mp_S04_AXI_transactor->RLAST(m_S04_AXI_rlast_converter_signal);
    mp_S04_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_rvalid_converter");
    mp_S04_AXI_rvalid_converter->scalar_in(m_S04_AXI_rvalid_converter_signal);
    mp_S04_AXI_rvalid_converter->vector_out(S04_AXI_rvalid);
    mp_S04_AXI_transactor->RVALID(m_S04_AXI_rvalid_converter_signal);
    mp_S04_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_rready_converter");
    mp_S04_AXI_rready_converter->vector_in(S04_AXI_rready);
    mp_S04_AXI_rready_converter->scalar_out(m_S04_AXI_rready_converter_signal);
    mp_S04_AXI_transactor->RREADY(m_S04_AXI_rready_converter_signal);
    mp_S04_AXI_transactor->CLK(aclk1);
    mp_S04_AXI_transactor->RST(aresetn);

    // S04_AXI' transactor sockets

    mp_impl->S04_AXI_tlm_aximm_read_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->S04_AXI_tlm_aximm_write_socket->bind(*(mp_S04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
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
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,5,32,1,1,32,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWID(M00_AXI_awid);
    mp_M00_AXI_awaddr_converter = new xsc::common::vector2vector_converter<39,34>("M00_AXI_awaddr_converter");
    mp_M00_AXI_awaddr_converter->vector_in(m_M00_AXI_awaddr_converter_signal);
    mp_M00_AXI_awaddr_converter->vector_out(M00_AXI_awaddr);
    mp_M00_AXI_transactor->AWADDR(m_M00_AXI_awaddr_converter_signal);
    mp_M00_AXI_transactor->AWLEN(M00_AXI_awlen);
    mp_M00_AXI_transactor->AWSIZE(M00_AXI_awsize);
    mp_M00_AXI_transactor->AWBURST(M00_AXI_awburst);
    mp_M00_AXI_transactor->AWLOCK(M00_AXI_awlock);
    mp_M00_AXI_transactor->AWCACHE(M00_AXI_awcache);
    mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
    mp_M00_AXI_transactor->AWQOS(M00_AXI_awqos);
    mp_M00_AXI_transactor->AWUSER(M00_AXI_awuser);
    mp_M00_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_awvalid_converter");
    mp_M00_AXI_awvalid_converter->scalar_in(m_M00_AXI_awvalid_converter_signal);
    mp_M00_AXI_awvalid_converter->vector_out(M00_AXI_awvalid);
    mp_M00_AXI_transactor->AWVALID(m_M00_AXI_awvalid_converter_signal);
    mp_M00_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_awready_converter");
    mp_M00_AXI_awready_converter->vector_in(M00_AXI_awready);
    mp_M00_AXI_awready_converter->scalar_out(m_M00_AXI_awready_converter_signal);
    mp_M00_AXI_transactor->AWREADY(m_M00_AXI_awready_converter_signal);
    mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
    mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
    mp_M00_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_wlast_converter");
    mp_M00_AXI_wlast_converter->scalar_in(m_M00_AXI_wlast_converter_signal);
    mp_M00_AXI_wlast_converter->vector_out(M00_AXI_wlast);
    mp_M00_AXI_transactor->WLAST(m_M00_AXI_wlast_converter_signal);
    mp_M00_AXI_transactor->WUSER(M00_AXI_wuser);
    mp_M00_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_wvalid_converter");
    mp_M00_AXI_wvalid_converter->scalar_in(m_M00_AXI_wvalid_converter_signal);
    mp_M00_AXI_wvalid_converter->vector_out(M00_AXI_wvalid);
    mp_M00_AXI_transactor->WVALID(m_M00_AXI_wvalid_converter_signal);
    mp_M00_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_wready_converter");
    mp_M00_AXI_wready_converter->vector_in(M00_AXI_wready);
    mp_M00_AXI_wready_converter->scalar_out(m_M00_AXI_wready_converter_signal);
    mp_M00_AXI_transactor->WREADY(m_M00_AXI_wready_converter_signal);
    mp_M00_AXI_transactor->BID(M00_AXI_bid);
    mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
    mp_M00_AXI_transactor->BUSER(M00_AXI_buser);
    mp_M00_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_bvalid_converter");
    mp_M00_AXI_bvalid_converter->vector_in(M00_AXI_bvalid);
    mp_M00_AXI_bvalid_converter->scalar_out(m_M00_AXI_bvalid_converter_signal);
    mp_M00_AXI_transactor->BVALID(m_M00_AXI_bvalid_converter_signal);
    mp_M00_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_bready_converter");
    mp_M00_AXI_bready_converter->scalar_in(m_M00_AXI_bready_converter_signal);
    mp_M00_AXI_bready_converter->vector_out(M00_AXI_bready);
    mp_M00_AXI_transactor->BREADY(m_M00_AXI_bready_converter_signal);
    mp_M00_AXI_transactor->ARID(M00_AXI_arid);
    mp_M00_AXI_araddr_converter = new xsc::common::vector2vector_converter<39,34>("M00_AXI_araddr_converter");
    mp_M00_AXI_araddr_converter->vector_in(m_M00_AXI_araddr_converter_signal);
    mp_M00_AXI_araddr_converter->vector_out(M00_AXI_araddr);
    mp_M00_AXI_transactor->ARADDR(m_M00_AXI_araddr_converter_signal);
    mp_M00_AXI_transactor->ARLEN(M00_AXI_arlen);
    mp_M00_AXI_transactor->ARSIZE(M00_AXI_arsize);
    mp_M00_AXI_transactor->ARBURST(M00_AXI_arburst);
    mp_M00_AXI_transactor->ARLOCK(M00_AXI_arlock);
    mp_M00_AXI_transactor->ARCACHE(M00_AXI_arcache);
    mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
    mp_M00_AXI_transactor->ARQOS(M00_AXI_arqos);
    mp_M00_AXI_transactor->ARUSER(M00_AXI_aruser);
    mp_M00_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_arvalid_converter");
    mp_M00_AXI_arvalid_converter->scalar_in(m_M00_AXI_arvalid_converter_signal);
    mp_M00_AXI_arvalid_converter->vector_out(M00_AXI_arvalid);
    mp_M00_AXI_transactor->ARVALID(m_M00_AXI_arvalid_converter_signal);
    mp_M00_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_arready_converter");
    mp_M00_AXI_arready_converter->vector_in(M00_AXI_arready);
    mp_M00_AXI_arready_converter->scalar_out(m_M00_AXI_arready_converter_signal);
    mp_M00_AXI_transactor->ARREADY(m_M00_AXI_arready_converter_signal);
    mp_M00_AXI_transactor->RID(M00_AXI_rid);
    mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
    mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
    mp_M00_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_rlast_converter");
    mp_M00_AXI_rlast_converter->vector_in(M00_AXI_rlast);
    mp_M00_AXI_rlast_converter->scalar_out(m_M00_AXI_rlast_converter_signal);
    mp_M00_AXI_transactor->RLAST(m_M00_AXI_rlast_converter_signal);
    mp_M00_AXI_transactor->RUSER(M00_AXI_ruser);
    mp_M00_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_rvalid_converter");
    mp_M00_AXI_rvalid_converter->vector_in(M00_AXI_rvalid);
    mp_M00_AXI_rvalid_converter->scalar_out(m_M00_AXI_rvalid_converter_signal);
    mp_M00_AXI_transactor->RVALID(m_M00_AXI_rvalid_converter_signal);
    mp_M00_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_rready_converter");
    mp_M00_AXI_rready_converter->scalar_in(m_M00_AXI_rready_converter_signal);
    mp_M00_AXI_rready_converter->vector_out(M00_AXI_rready);
    mp_M00_AXI_transactor->RREADY(m_M00_AXI_rready_converter_signal);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M01_AXI' transactor parameters
    xsc::common_cpp::properties M01_AXI_transactor_param_props;
    M01_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M01_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "35");
    M01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M01_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M01_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M01_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M01_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M01_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,35,1,1,1,1,1,1>("M01_AXI_transactor", M01_AXI_transactor_param_props);

    // M01_AXI' transactor ports

    mp_M01_AXI_transactor->AWADDR(M01_AXI_awaddr);
    mp_M01_AXI_transactor->AWLEN(M01_AXI_awlen);
    mp_M01_AXI_transactor->AWSIZE(M01_AXI_awsize);
    mp_M01_AXI_transactor->AWBURST(M01_AXI_awburst);
    mp_M01_AXI_transactor->AWPROT(M01_AXI_awprot);
    mp_M01_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_awvalid_converter");
    mp_M01_AXI_awvalid_converter->scalar_in(m_M01_AXI_awvalid_converter_signal);
    mp_M01_AXI_awvalid_converter->vector_out(M01_AXI_awvalid);
    mp_M01_AXI_transactor->AWVALID(m_M01_AXI_awvalid_converter_signal);
    mp_M01_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_awready_converter");
    mp_M01_AXI_awready_converter->vector_in(M01_AXI_awready);
    mp_M01_AXI_awready_converter->scalar_out(m_M01_AXI_awready_converter_signal);
    mp_M01_AXI_transactor->AWREADY(m_M01_AXI_awready_converter_signal);
    mp_M01_AXI_transactor->WDATA(M01_AXI_wdata);
    mp_M01_AXI_transactor->WSTRB(M01_AXI_wstrb);
    mp_M01_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_wlast_converter");
    mp_M01_AXI_wlast_converter->scalar_in(m_M01_AXI_wlast_converter_signal);
    mp_M01_AXI_wlast_converter->vector_out(M01_AXI_wlast);
    mp_M01_AXI_transactor->WLAST(m_M01_AXI_wlast_converter_signal);
    mp_M01_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_wvalid_converter");
    mp_M01_AXI_wvalid_converter->scalar_in(m_M01_AXI_wvalid_converter_signal);
    mp_M01_AXI_wvalid_converter->vector_out(M01_AXI_wvalid);
    mp_M01_AXI_transactor->WVALID(m_M01_AXI_wvalid_converter_signal);
    mp_M01_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_wready_converter");
    mp_M01_AXI_wready_converter->vector_in(M01_AXI_wready);
    mp_M01_AXI_wready_converter->scalar_out(m_M01_AXI_wready_converter_signal);
    mp_M01_AXI_transactor->WREADY(m_M01_AXI_wready_converter_signal);
    mp_M01_AXI_transactor->BRESP(M01_AXI_bresp);
    mp_M01_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_bvalid_converter");
    mp_M01_AXI_bvalid_converter->vector_in(M01_AXI_bvalid);
    mp_M01_AXI_bvalid_converter->scalar_out(m_M01_AXI_bvalid_converter_signal);
    mp_M01_AXI_transactor->BVALID(m_M01_AXI_bvalid_converter_signal);
    mp_M01_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_bready_converter");
    mp_M01_AXI_bready_converter->scalar_in(m_M01_AXI_bready_converter_signal);
    mp_M01_AXI_bready_converter->vector_out(M01_AXI_bready);
    mp_M01_AXI_transactor->BREADY(m_M01_AXI_bready_converter_signal);
    mp_M01_AXI_transactor->ARADDR(M01_AXI_araddr);
    mp_M01_AXI_transactor->ARLEN(M01_AXI_arlen);
    mp_M01_AXI_transactor->ARSIZE(M01_AXI_arsize);
    mp_M01_AXI_transactor->ARBURST(M01_AXI_arburst);
    mp_M01_AXI_transactor->ARPROT(M01_AXI_arprot);
    mp_M01_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_arvalid_converter");
    mp_M01_AXI_arvalid_converter->scalar_in(m_M01_AXI_arvalid_converter_signal);
    mp_M01_AXI_arvalid_converter->vector_out(M01_AXI_arvalid);
    mp_M01_AXI_transactor->ARVALID(m_M01_AXI_arvalid_converter_signal);
    mp_M01_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_arready_converter");
    mp_M01_AXI_arready_converter->vector_in(M01_AXI_arready);
    mp_M01_AXI_arready_converter->scalar_out(m_M01_AXI_arready_converter_signal);
    mp_M01_AXI_transactor->ARREADY(m_M01_AXI_arready_converter_signal);
    mp_M01_AXI_transactor->RDATA(M01_AXI_rdata);
    mp_M01_AXI_transactor->RRESP(M01_AXI_rresp);
    mp_M01_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_rlast_converter");
    mp_M01_AXI_rlast_converter->vector_in(M01_AXI_rlast);
    mp_M01_AXI_rlast_converter->scalar_out(m_M01_AXI_rlast_converter_signal);
    mp_M01_AXI_transactor->RLAST(m_M01_AXI_rlast_converter_signal);
    mp_M01_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_rvalid_converter");
    mp_M01_AXI_rvalid_converter->vector_in(M01_AXI_rvalid);
    mp_M01_AXI_rvalid_converter->scalar_out(m_M01_AXI_rvalid_converter_signal);
    mp_M01_AXI_transactor->RVALID(m_M01_AXI_rvalid_converter_signal);
    mp_M01_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_rready_converter");
    mp_M01_AXI_rready_converter->scalar_in(m_M01_AXI_rready_converter_signal);
    mp_M01_AXI_rready_converter->vector_out(M01_AXI_rready);
    mp_M01_AXI_transactor->RREADY(m_M01_AXI_rready_converter_signal);
    mp_M01_AXI_transactor->CLK(aclk);
    mp_M01_AXI_transactor->RST(aresetn);

    // M01_AXI' transactor sockets

    mp_impl->M01_AXI_tlm_aximm_read_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->M01_AXI_tlm_aximm_write_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M02_AXI' transactor parameters
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M02_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M02_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M02_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,5,32,1,1,32,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);

    // M02_AXI' transactor ports

    mp_M02_AXI_transactor->AWID(M02_AXI_awid);
    mp_M02_AXI_awaddr_converter = new xsc::common::vector2vector_converter<39,34>("M02_AXI_awaddr_converter");
    mp_M02_AXI_awaddr_converter->vector_in(m_M02_AXI_awaddr_converter_signal);
    mp_M02_AXI_awaddr_converter->vector_out(M02_AXI_awaddr);
    mp_M02_AXI_transactor->AWADDR(m_M02_AXI_awaddr_converter_signal);
    mp_M02_AXI_transactor->AWLEN(M02_AXI_awlen);
    mp_M02_AXI_transactor->AWSIZE(M02_AXI_awsize);
    mp_M02_AXI_transactor->AWBURST(M02_AXI_awburst);
    mp_M02_AXI_transactor->AWLOCK(M02_AXI_awlock);
    mp_M02_AXI_transactor->AWCACHE(M02_AXI_awcache);
    mp_M02_AXI_transactor->AWPROT(M02_AXI_awprot);
    mp_M02_AXI_transactor->AWQOS(M02_AXI_awqos);
    mp_M02_AXI_transactor->AWUSER(M02_AXI_awuser);
    mp_M02_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_awvalid_converter");
    mp_M02_AXI_awvalid_converter->scalar_in(m_M02_AXI_awvalid_converter_signal);
    mp_M02_AXI_awvalid_converter->vector_out(M02_AXI_awvalid);
    mp_M02_AXI_transactor->AWVALID(m_M02_AXI_awvalid_converter_signal);
    mp_M02_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_awready_converter");
    mp_M02_AXI_awready_converter->vector_in(M02_AXI_awready);
    mp_M02_AXI_awready_converter->scalar_out(m_M02_AXI_awready_converter_signal);
    mp_M02_AXI_transactor->AWREADY(m_M02_AXI_awready_converter_signal);
    mp_M02_AXI_transactor->WDATA(M02_AXI_wdata);
    mp_M02_AXI_transactor->WSTRB(M02_AXI_wstrb);
    mp_M02_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_wlast_converter");
    mp_M02_AXI_wlast_converter->scalar_in(m_M02_AXI_wlast_converter_signal);
    mp_M02_AXI_wlast_converter->vector_out(M02_AXI_wlast);
    mp_M02_AXI_transactor->WLAST(m_M02_AXI_wlast_converter_signal);
    mp_M02_AXI_transactor->WUSER(M02_AXI_wuser);
    mp_M02_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_wvalid_converter");
    mp_M02_AXI_wvalid_converter->scalar_in(m_M02_AXI_wvalid_converter_signal);
    mp_M02_AXI_wvalid_converter->vector_out(M02_AXI_wvalid);
    mp_M02_AXI_transactor->WVALID(m_M02_AXI_wvalid_converter_signal);
    mp_M02_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_wready_converter");
    mp_M02_AXI_wready_converter->vector_in(M02_AXI_wready);
    mp_M02_AXI_wready_converter->scalar_out(m_M02_AXI_wready_converter_signal);
    mp_M02_AXI_transactor->WREADY(m_M02_AXI_wready_converter_signal);
    mp_M02_AXI_transactor->BID(M02_AXI_bid);
    mp_M02_AXI_transactor->BRESP(M02_AXI_bresp);
    mp_M02_AXI_transactor->BUSER(M02_AXI_buser);
    mp_M02_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_bvalid_converter");
    mp_M02_AXI_bvalid_converter->vector_in(M02_AXI_bvalid);
    mp_M02_AXI_bvalid_converter->scalar_out(m_M02_AXI_bvalid_converter_signal);
    mp_M02_AXI_transactor->BVALID(m_M02_AXI_bvalid_converter_signal);
    mp_M02_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_bready_converter");
    mp_M02_AXI_bready_converter->scalar_in(m_M02_AXI_bready_converter_signal);
    mp_M02_AXI_bready_converter->vector_out(M02_AXI_bready);
    mp_M02_AXI_transactor->BREADY(m_M02_AXI_bready_converter_signal);
    mp_M02_AXI_transactor->ARID(M02_AXI_arid);
    mp_M02_AXI_araddr_converter = new xsc::common::vector2vector_converter<39,34>("M02_AXI_araddr_converter");
    mp_M02_AXI_araddr_converter->vector_in(m_M02_AXI_araddr_converter_signal);
    mp_M02_AXI_araddr_converter->vector_out(M02_AXI_araddr);
    mp_M02_AXI_transactor->ARADDR(m_M02_AXI_araddr_converter_signal);
    mp_M02_AXI_transactor->ARLEN(M02_AXI_arlen);
    mp_M02_AXI_transactor->ARSIZE(M02_AXI_arsize);
    mp_M02_AXI_transactor->ARBURST(M02_AXI_arburst);
    mp_M02_AXI_transactor->ARLOCK(M02_AXI_arlock);
    mp_M02_AXI_transactor->ARCACHE(M02_AXI_arcache);
    mp_M02_AXI_transactor->ARPROT(M02_AXI_arprot);
    mp_M02_AXI_transactor->ARQOS(M02_AXI_arqos);
    mp_M02_AXI_transactor->ARUSER(M02_AXI_aruser);
    mp_M02_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_arvalid_converter");
    mp_M02_AXI_arvalid_converter->scalar_in(m_M02_AXI_arvalid_converter_signal);
    mp_M02_AXI_arvalid_converter->vector_out(M02_AXI_arvalid);
    mp_M02_AXI_transactor->ARVALID(m_M02_AXI_arvalid_converter_signal);
    mp_M02_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_arready_converter");
    mp_M02_AXI_arready_converter->vector_in(M02_AXI_arready);
    mp_M02_AXI_arready_converter->scalar_out(m_M02_AXI_arready_converter_signal);
    mp_M02_AXI_transactor->ARREADY(m_M02_AXI_arready_converter_signal);
    mp_M02_AXI_transactor->RID(M02_AXI_rid);
    mp_M02_AXI_transactor->RDATA(M02_AXI_rdata);
    mp_M02_AXI_transactor->RRESP(M02_AXI_rresp);
    mp_M02_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_rlast_converter");
    mp_M02_AXI_rlast_converter->vector_in(M02_AXI_rlast);
    mp_M02_AXI_rlast_converter->scalar_out(m_M02_AXI_rlast_converter_signal);
    mp_M02_AXI_transactor->RLAST(m_M02_AXI_rlast_converter_signal);
    mp_M02_AXI_transactor->RUSER(M02_AXI_ruser);
    mp_M02_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_rvalid_converter");
    mp_M02_AXI_rvalid_converter->vector_in(M02_AXI_rvalid);
    mp_M02_AXI_rvalid_converter->scalar_out(m_M02_AXI_rvalid_converter_signal);
    mp_M02_AXI_transactor->RVALID(m_M02_AXI_rvalid_converter_signal);
    mp_M02_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_rready_converter");
    mp_M02_AXI_rready_converter->scalar_in(m_M02_AXI_rready_converter_signal);
    mp_M02_AXI_rready_converter->vector_out(M02_AXI_rready);
    mp_M02_AXI_transactor->RREADY(m_M02_AXI_rready_converter_signal);
    mp_M02_AXI_transactor->CLK(aclk);
    mp_M02_AXI_transactor->RST(aresetn);

    // M02_AXI' transactor sockets

    mp_impl->M02_AXI_tlm_aximm_read_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->M02_AXI_tlm_aximm_write_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M03_AXI' transactor parameters
    xsc::common_cpp::properties M03_AXI_transactor_param_props;
    M03_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M03_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M03_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M03_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M03_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M03_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,5,32,1,1,32,1>("M03_AXI_transactor", M03_AXI_transactor_param_props);

    // M03_AXI' transactor ports

    mp_M03_AXI_transactor->AWID(M03_AXI_awid);
    mp_M03_AXI_awaddr_converter = new xsc::common::vector2vector_converter<39,34>("M03_AXI_awaddr_converter");
    mp_M03_AXI_awaddr_converter->vector_in(m_M03_AXI_awaddr_converter_signal);
    mp_M03_AXI_awaddr_converter->vector_out(M03_AXI_awaddr);
    mp_M03_AXI_transactor->AWADDR(m_M03_AXI_awaddr_converter_signal);
    mp_M03_AXI_transactor->AWLEN(M03_AXI_awlen);
    mp_M03_AXI_transactor->AWSIZE(M03_AXI_awsize);
    mp_M03_AXI_transactor->AWBURST(M03_AXI_awburst);
    mp_M03_AXI_transactor->AWLOCK(M03_AXI_awlock);
    mp_M03_AXI_transactor->AWCACHE(M03_AXI_awcache);
    mp_M03_AXI_transactor->AWPROT(M03_AXI_awprot);
    mp_M03_AXI_transactor->AWQOS(M03_AXI_awqos);
    mp_M03_AXI_transactor->AWUSER(M03_AXI_awuser);
    mp_M03_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_awvalid_converter");
    mp_M03_AXI_awvalid_converter->scalar_in(m_M03_AXI_awvalid_converter_signal);
    mp_M03_AXI_awvalid_converter->vector_out(M03_AXI_awvalid);
    mp_M03_AXI_transactor->AWVALID(m_M03_AXI_awvalid_converter_signal);
    mp_M03_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_awready_converter");
    mp_M03_AXI_awready_converter->vector_in(M03_AXI_awready);
    mp_M03_AXI_awready_converter->scalar_out(m_M03_AXI_awready_converter_signal);
    mp_M03_AXI_transactor->AWREADY(m_M03_AXI_awready_converter_signal);
    mp_M03_AXI_transactor->WDATA(M03_AXI_wdata);
    mp_M03_AXI_transactor->WSTRB(M03_AXI_wstrb);
    mp_M03_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_wlast_converter");
    mp_M03_AXI_wlast_converter->scalar_in(m_M03_AXI_wlast_converter_signal);
    mp_M03_AXI_wlast_converter->vector_out(M03_AXI_wlast);
    mp_M03_AXI_transactor->WLAST(m_M03_AXI_wlast_converter_signal);
    mp_M03_AXI_transactor->WUSER(M03_AXI_wuser);
    mp_M03_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_wvalid_converter");
    mp_M03_AXI_wvalid_converter->scalar_in(m_M03_AXI_wvalid_converter_signal);
    mp_M03_AXI_wvalid_converter->vector_out(M03_AXI_wvalid);
    mp_M03_AXI_transactor->WVALID(m_M03_AXI_wvalid_converter_signal);
    mp_M03_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_wready_converter");
    mp_M03_AXI_wready_converter->vector_in(M03_AXI_wready);
    mp_M03_AXI_wready_converter->scalar_out(m_M03_AXI_wready_converter_signal);
    mp_M03_AXI_transactor->WREADY(m_M03_AXI_wready_converter_signal);
    mp_M03_AXI_transactor->BID(M03_AXI_bid);
    mp_M03_AXI_transactor->BRESP(M03_AXI_bresp);
    mp_M03_AXI_transactor->BUSER(M03_AXI_buser);
    mp_M03_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_bvalid_converter");
    mp_M03_AXI_bvalid_converter->vector_in(M03_AXI_bvalid);
    mp_M03_AXI_bvalid_converter->scalar_out(m_M03_AXI_bvalid_converter_signal);
    mp_M03_AXI_transactor->BVALID(m_M03_AXI_bvalid_converter_signal);
    mp_M03_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_bready_converter");
    mp_M03_AXI_bready_converter->scalar_in(m_M03_AXI_bready_converter_signal);
    mp_M03_AXI_bready_converter->vector_out(M03_AXI_bready);
    mp_M03_AXI_transactor->BREADY(m_M03_AXI_bready_converter_signal);
    mp_M03_AXI_transactor->ARID(M03_AXI_arid);
    mp_M03_AXI_araddr_converter = new xsc::common::vector2vector_converter<39,34>("M03_AXI_araddr_converter");
    mp_M03_AXI_araddr_converter->vector_in(m_M03_AXI_araddr_converter_signal);
    mp_M03_AXI_araddr_converter->vector_out(M03_AXI_araddr);
    mp_M03_AXI_transactor->ARADDR(m_M03_AXI_araddr_converter_signal);
    mp_M03_AXI_transactor->ARLEN(M03_AXI_arlen);
    mp_M03_AXI_transactor->ARSIZE(M03_AXI_arsize);
    mp_M03_AXI_transactor->ARBURST(M03_AXI_arburst);
    mp_M03_AXI_transactor->ARLOCK(M03_AXI_arlock);
    mp_M03_AXI_transactor->ARCACHE(M03_AXI_arcache);
    mp_M03_AXI_transactor->ARPROT(M03_AXI_arprot);
    mp_M03_AXI_transactor->ARQOS(M03_AXI_arqos);
    mp_M03_AXI_transactor->ARUSER(M03_AXI_aruser);
    mp_M03_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_arvalid_converter");
    mp_M03_AXI_arvalid_converter->scalar_in(m_M03_AXI_arvalid_converter_signal);
    mp_M03_AXI_arvalid_converter->vector_out(M03_AXI_arvalid);
    mp_M03_AXI_transactor->ARVALID(m_M03_AXI_arvalid_converter_signal);
    mp_M03_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_arready_converter");
    mp_M03_AXI_arready_converter->vector_in(M03_AXI_arready);
    mp_M03_AXI_arready_converter->scalar_out(m_M03_AXI_arready_converter_signal);
    mp_M03_AXI_transactor->ARREADY(m_M03_AXI_arready_converter_signal);
    mp_M03_AXI_transactor->RID(M03_AXI_rid);
    mp_M03_AXI_transactor->RDATA(M03_AXI_rdata);
    mp_M03_AXI_transactor->RRESP(M03_AXI_rresp);
    mp_M03_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_rlast_converter");
    mp_M03_AXI_rlast_converter->vector_in(M03_AXI_rlast);
    mp_M03_AXI_rlast_converter->scalar_out(m_M03_AXI_rlast_converter_signal);
    mp_M03_AXI_transactor->RLAST(m_M03_AXI_rlast_converter_signal);
    mp_M03_AXI_transactor->RUSER(M03_AXI_ruser);
    mp_M03_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_rvalid_converter");
    mp_M03_AXI_rvalid_converter->vector_in(M03_AXI_rvalid);
    mp_M03_AXI_rvalid_converter->scalar_out(m_M03_AXI_rvalid_converter_signal);
    mp_M03_AXI_transactor->RVALID(m_M03_AXI_rvalid_converter_signal);
    mp_M03_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_rready_converter");
    mp_M03_AXI_rready_converter->scalar_in(m_M03_AXI_rready_converter_signal);
    mp_M03_AXI_rready_converter->vector_out(M03_AXI_rready);
    mp_M03_AXI_transactor->RREADY(m_M03_AXI_rready_converter_signal);
    mp_M03_AXI_transactor->CLK(aclk);
    mp_M03_AXI_transactor->RST(aresetn);

    // M03_AXI' transactor sockets

    mp_impl->M03_AXI_tlm_aximm_read_socket->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_impl->M03_AXI_tlm_aximm_write_socket->bind(*(mp_M03_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
pfm_dynamic_memory_subsystem_0::pfm_dynamic_memory_subsystem_0(const sc_core::sc_module_name& nm) : pfm_dynamic_memory_subsystem_0_sc(nm), aclk("aclk"), aclk1("aclk1"), aresetn("aresetn"), S00_AXI_awid("S00_AXI_awid"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awlen("S00_AXI_awlen"), S00_AXI_awsize("S00_AXI_awsize"), S00_AXI_awburst("S00_AXI_awburst"), S00_AXI_awlock("S00_AXI_awlock"), S00_AXI_awcache("S00_AXI_awcache"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awqos("S00_AXI_awqos"), S00_AXI_awuser("S00_AXI_awuser"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wlast("S00_AXI_wlast"), S00_AXI_wuser("S00_AXI_wuser"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bid("S00_AXI_bid"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_buser("S00_AXI_buser"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_arid("S00_AXI_arid"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_aruser("S00_AXI_aruser"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rid("S00_AXI_rid"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_ruser("S00_AXI_ruser"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), S01_AXI_awid("S01_AXI_awid"), S01_AXI_awaddr("S01_AXI_awaddr"), S01_AXI_awlen("S01_AXI_awlen"), S01_AXI_awsize("S01_AXI_awsize"), S01_AXI_awburst("S01_AXI_awburst"), S01_AXI_awlock("S01_AXI_awlock"), S01_AXI_awcache("S01_AXI_awcache"), S01_AXI_awprot("S01_AXI_awprot"), S01_AXI_awqos("S01_AXI_awqos"), S01_AXI_awuser("S01_AXI_awuser"), S01_AXI_awvalid("S01_AXI_awvalid"), S01_AXI_awready("S01_AXI_awready"), S01_AXI_wdata("S01_AXI_wdata"), S01_AXI_wstrb("S01_AXI_wstrb"), S01_AXI_wlast("S01_AXI_wlast"), S01_AXI_wuser("S01_AXI_wuser"), S01_AXI_wvalid("S01_AXI_wvalid"), S01_AXI_wready("S01_AXI_wready"), S01_AXI_bid("S01_AXI_bid"), S01_AXI_bresp("S01_AXI_bresp"), S01_AXI_buser("S01_AXI_buser"), S01_AXI_bvalid("S01_AXI_bvalid"), S01_AXI_bready("S01_AXI_bready"), S01_AXI_arid("S01_AXI_arid"), S01_AXI_araddr("S01_AXI_araddr"), S01_AXI_arlen("S01_AXI_arlen"), S01_AXI_arsize("S01_AXI_arsize"), S01_AXI_arburst("S01_AXI_arburst"), S01_AXI_arlock("S01_AXI_arlock"), S01_AXI_arcache("S01_AXI_arcache"), S01_AXI_arprot("S01_AXI_arprot"), S01_AXI_arqos("S01_AXI_arqos"), S01_AXI_aruser("S01_AXI_aruser"), S01_AXI_arvalid("S01_AXI_arvalid"), S01_AXI_arready("S01_AXI_arready"), S01_AXI_rid("S01_AXI_rid"), S01_AXI_rdata("S01_AXI_rdata"), S01_AXI_rresp("S01_AXI_rresp"), S01_AXI_rlast("S01_AXI_rlast"), S01_AXI_ruser("S01_AXI_ruser"), S01_AXI_rvalid("S01_AXI_rvalid"), S01_AXI_rready("S01_AXI_rready"), S02_AXI_awid("S02_AXI_awid"), S02_AXI_awaddr("S02_AXI_awaddr"), S02_AXI_awlen("S02_AXI_awlen"), S02_AXI_awsize("S02_AXI_awsize"), S02_AXI_awburst("S02_AXI_awburst"), S02_AXI_awlock("S02_AXI_awlock"), S02_AXI_awcache("S02_AXI_awcache"), S02_AXI_awprot("S02_AXI_awprot"), S02_AXI_awqos("S02_AXI_awqos"), S02_AXI_awuser("S02_AXI_awuser"), S02_AXI_awvalid("S02_AXI_awvalid"), S02_AXI_awready("S02_AXI_awready"), S02_AXI_wdata("S02_AXI_wdata"), S02_AXI_wstrb("S02_AXI_wstrb"), S02_AXI_wlast("S02_AXI_wlast"), S02_AXI_wuser("S02_AXI_wuser"), S02_AXI_wvalid("S02_AXI_wvalid"), S02_AXI_wready("S02_AXI_wready"), S02_AXI_bid("S02_AXI_bid"), S02_AXI_bresp("S02_AXI_bresp"), S02_AXI_buser("S02_AXI_buser"), S02_AXI_bvalid("S02_AXI_bvalid"), S02_AXI_bready("S02_AXI_bready"), S02_AXI_arid("S02_AXI_arid"), S02_AXI_araddr("S02_AXI_araddr"), S02_AXI_arlen("S02_AXI_arlen"), S02_AXI_arsize("S02_AXI_arsize"), S02_AXI_arburst("S02_AXI_arburst"), S02_AXI_arlock("S02_AXI_arlock"), S02_AXI_arcache("S02_AXI_arcache"), S02_AXI_arprot("S02_AXI_arprot"), S02_AXI_arqos("S02_AXI_arqos"), S02_AXI_aruser("S02_AXI_aruser"), S02_AXI_arvalid("S02_AXI_arvalid"), S02_AXI_arready("S02_AXI_arready"), S02_AXI_rid("S02_AXI_rid"), S02_AXI_rdata("S02_AXI_rdata"), S02_AXI_rresp("S02_AXI_rresp"), S02_AXI_rlast("S02_AXI_rlast"), S02_AXI_ruser("S02_AXI_ruser"), S02_AXI_rvalid("S02_AXI_rvalid"), S02_AXI_rready("S02_AXI_rready"), S03_AXI_awid("S03_AXI_awid"), S03_AXI_awaddr("S03_AXI_awaddr"), S03_AXI_awlen("S03_AXI_awlen"), S03_AXI_awsize("S03_AXI_awsize"), S03_AXI_awburst("S03_AXI_awburst"), S03_AXI_awlock("S03_AXI_awlock"), S03_AXI_awcache("S03_AXI_awcache"), S03_AXI_awprot("S03_AXI_awprot"), S03_AXI_awqos("S03_AXI_awqos"), S03_AXI_awuser("S03_AXI_awuser"), S03_AXI_awvalid("S03_AXI_awvalid"), S03_AXI_awready("S03_AXI_awready"), S03_AXI_wdata("S03_AXI_wdata"), S03_AXI_wstrb("S03_AXI_wstrb"), S03_AXI_wlast("S03_AXI_wlast"), S03_AXI_wuser("S03_AXI_wuser"), S03_AXI_wvalid("S03_AXI_wvalid"), S03_AXI_wready("S03_AXI_wready"), S03_AXI_bid("S03_AXI_bid"), S03_AXI_bresp("S03_AXI_bresp"), S03_AXI_buser("S03_AXI_buser"), S03_AXI_bvalid("S03_AXI_bvalid"), S03_AXI_bready("S03_AXI_bready"), S03_AXI_arid("S03_AXI_arid"), S03_AXI_araddr("S03_AXI_araddr"), S03_AXI_arlen("S03_AXI_arlen"), S03_AXI_arsize("S03_AXI_arsize"), S03_AXI_arburst("S03_AXI_arburst"), S03_AXI_arlock("S03_AXI_arlock"), S03_AXI_arcache("S03_AXI_arcache"), S03_AXI_arprot("S03_AXI_arprot"), S03_AXI_arqos("S03_AXI_arqos"), S03_AXI_aruser("S03_AXI_aruser"), S03_AXI_arvalid("S03_AXI_arvalid"), S03_AXI_arready("S03_AXI_arready"), S03_AXI_rid("S03_AXI_rid"), S03_AXI_rdata("S03_AXI_rdata"), S03_AXI_rresp("S03_AXI_rresp"), S03_AXI_rlast("S03_AXI_rlast"), S03_AXI_ruser("S03_AXI_ruser"), S03_AXI_rvalid("S03_AXI_rvalid"), S03_AXI_rready("S03_AXI_rready"), S04_AXI_awaddr("S04_AXI_awaddr"), S04_AXI_awlen("S04_AXI_awlen"), S04_AXI_awsize("S04_AXI_awsize"), S04_AXI_awlock("S04_AXI_awlock"), S04_AXI_awcache("S04_AXI_awcache"), S04_AXI_awprot("S04_AXI_awprot"), S04_AXI_awregion("S04_AXI_awregion"), S04_AXI_awqos("S04_AXI_awqos"), S04_AXI_awvalid("S04_AXI_awvalid"), S04_AXI_awready("S04_AXI_awready"), S04_AXI_wdata("S04_AXI_wdata"), S04_AXI_wstrb("S04_AXI_wstrb"), S04_AXI_wlast("S04_AXI_wlast"), S04_AXI_wvalid("S04_AXI_wvalid"), S04_AXI_wready("S04_AXI_wready"), S04_AXI_bresp("S04_AXI_bresp"), S04_AXI_bvalid("S04_AXI_bvalid"), S04_AXI_bready("S04_AXI_bready"), S04_AXI_araddr("S04_AXI_araddr"), S04_AXI_arlen("S04_AXI_arlen"), S04_AXI_arsize("S04_AXI_arsize"), S04_AXI_arlock("S04_AXI_arlock"), S04_AXI_arcache("S04_AXI_arcache"), S04_AXI_arprot("S04_AXI_arprot"), S04_AXI_arregion("S04_AXI_arregion"), S04_AXI_arqos("S04_AXI_arqos"), S04_AXI_arvalid("S04_AXI_arvalid"), S04_AXI_arready("S04_AXI_arready"), S04_AXI_rdata("S04_AXI_rdata"), S04_AXI_rresp("S04_AXI_rresp"), S04_AXI_rlast("S04_AXI_rlast"), S04_AXI_rvalid("S04_AXI_rvalid"), S04_AXI_rready("S04_AXI_rready"), ddr4_mem_calib_complete("ddr4_mem_calib_complete"), M00_AXI_awid("M00_AXI_awid"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awlen("M00_AXI_awlen"), M00_AXI_awsize("M00_AXI_awsize"), M00_AXI_awburst("M00_AXI_awburst"), M00_AXI_awlock("M00_AXI_awlock"), M00_AXI_awcache("M00_AXI_awcache"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awqos("M00_AXI_awqos"), M00_AXI_awuser("M00_AXI_awuser"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wlast("M00_AXI_wlast"), M00_AXI_wuser("M00_AXI_wuser"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bid("M00_AXI_bid"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_buser("M00_AXI_buser"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_arid("M00_AXI_arid"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arlen("M00_AXI_arlen"), M00_AXI_arsize("M00_AXI_arsize"), M00_AXI_arburst("M00_AXI_arburst"), M00_AXI_arlock("M00_AXI_arlock"), M00_AXI_arcache("M00_AXI_arcache"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arqos("M00_AXI_arqos"), M00_AXI_aruser("M00_AXI_aruser"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rid("M00_AXI_rid"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rlast("M00_AXI_rlast"), M00_AXI_ruser("M00_AXI_ruser"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready"), M01_AXI_awaddr("M01_AXI_awaddr"), M01_AXI_awlen("M01_AXI_awlen"), M01_AXI_awsize("M01_AXI_awsize"), M01_AXI_awburst("M01_AXI_awburst"), M01_AXI_awprot("M01_AXI_awprot"), M01_AXI_awvalid("M01_AXI_awvalid"), M01_AXI_awready("M01_AXI_awready"), M01_AXI_wdata("M01_AXI_wdata"), M01_AXI_wstrb("M01_AXI_wstrb"), M01_AXI_wlast("M01_AXI_wlast"), M01_AXI_wvalid("M01_AXI_wvalid"), M01_AXI_wready("M01_AXI_wready"), M01_AXI_bresp("M01_AXI_bresp"), M01_AXI_bvalid("M01_AXI_bvalid"), M01_AXI_bready("M01_AXI_bready"), M01_AXI_araddr("M01_AXI_araddr"), M01_AXI_arlen("M01_AXI_arlen"), M01_AXI_arsize("M01_AXI_arsize"), M01_AXI_arburst("M01_AXI_arburst"), M01_AXI_arprot("M01_AXI_arprot"), M01_AXI_arvalid("M01_AXI_arvalid"), M01_AXI_arready("M01_AXI_arready"), M01_AXI_rdata("M01_AXI_rdata"), M01_AXI_rresp("M01_AXI_rresp"), M01_AXI_rlast("M01_AXI_rlast"), M01_AXI_rvalid("M01_AXI_rvalid"), M01_AXI_rready("M01_AXI_rready"), M02_AXI_awid("M02_AXI_awid"), M02_AXI_awaddr("M02_AXI_awaddr"), M02_AXI_awlen("M02_AXI_awlen"), M02_AXI_awsize("M02_AXI_awsize"), M02_AXI_awburst("M02_AXI_awburst"), M02_AXI_awlock("M02_AXI_awlock"), M02_AXI_awcache("M02_AXI_awcache"), M02_AXI_awprot("M02_AXI_awprot"), M02_AXI_awqos("M02_AXI_awqos"), M02_AXI_awuser("M02_AXI_awuser"), M02_AXI_awvalid("M02_AXI_awvalid"), M02_AXI_awready("M02_AXI_awready"), M02_AXI_wdata("M02_AXI_wdata"), M02_AXI_wstrb("M02_AXI_wstrb"), M02_AXI_wlast("M02_AXI_wlast"), M02_AXI_wuser("M02_AXI_wuser"), M02_AXI_wvalid("M02_AXI_wvalid"), M02_AXI_wready("M02_AXI_wready"), M02_AXI_bid("M02_AXI_bid"), M02_AXI_bresp("M02_AXI_bresp"), M02_AXI_buser("M02_AXI_buser"), M02_AXI_bvalid("M02_AXI_bvalid"), M02_AXI_bready("M02_AXI_bready"), M02_AXI_arid("M02_AXI_arid"), M02_AXI_araddr("M02_AXI_araddr"), M02_AXI_arlen("M02_AXI_arlen"), M02_AXI_arsize("M02_AXI_arsize"), M02_AXI_arburst("M02_AXI_arburst"), M02_AXI_arlock("M02_AXI_arlock"), M02_AXI_arcache("M02_AXI_arcache"), M02_AXI_arprot("M02_AXI_arprot"), M02_AXI_arqos("M02_AXI_arqos"), M02_AXI_aruser("M02_AXI_aruser"), M02_AXI_arvalid("M02_AXI_arvalid"), M02_AXI_arready("M02_AXI_arready"), M02_AXI_rid("M02_AXI_rid"), M02_AXI_rdata("M02_AXI_rdata"), M02_AXI_rresp("M02_AXI_rresp"), M02_AXI_rlast("M02_AXI_rlast"), M02_AXI_ruser("M02_AXI_ruser"), M02_AXI_rvalid("M02_AXI_rvalid"), M02_AXI_rready("M02_AXI_rready"), M03_AXI_awid("M03_AXI_awid"), M03_AXI_awaddr("M03_AXI_awaddr"), M03_AXI_awlen("M03_AXI_awlen"), M03_AXI_awsize("M03_AXI_awsize"), M03_AXI_awburst("M03_AXI_awburst"), M03_AXI_awlock("M03_AXI_awlock"), M03_AXI_awcache("M03_AXI_awcache"), M03_AXI_awprot("M03_AXI_awprot"), M03_AXI_awqos("M03_AXI_awqos"), M03_AXI_awuser("M03_AXI_awuser"), M03_AXI_awvalid("M03_AXI_awvalid"), M03_AXI_awready("M03_AXI_awready"), M03_AXI_wdata("M03_AXI_wdata"), M03_AXI_wstrb("M03_AXI_wstrb"), M03_AXI_wlast("M03_AXI_wlast"), M03_AXI_wuser("M03_AXI_wuser"), M03_AXI_wvalid("M03_AXI_wvalid"), M03_AXI_wready("M03_AXI_wready"), M03_AXI_bid("M03_AXI_bid"), M03_AXI_bresp("M03_AXI_bresp"), M03_AXI_buser("M03_AXI_buser"), M03_AXI_bvalid("M03_AXI_bvalid"), M03_AXI_bready("M03_AXI_bready"), M03_AXI_arid("M03_AXI_arid"), M03_AXI_araddr("M03_AXI_araddr"), M03_AXI_arlen("M03_AXI_arlen"), M03_AXI_arsize("M03_AXI_arsize"), M03_AXI_arburst("M03_AXI_arburst"), M03_AXI_arlock("M03_AXI_arlock"), M03_AXI_arcache("M03_AXI_arcache"), M03_AXI_arprot("M03_AXI_arprot"), M03_AXI_arqos("M03_AXI_arqos"), M03_AXI_aruser("M03_AXI_aruser"), M03_AXI_arvalid("M03_AXI_arvalid"), M03_AXI_arready("M03_AXI_arready"), M03_AXI_rid("M03_AXI_rid"), M03_AXI_rdata("M03_AXI_rdata"), M03_AXI_rresp("M03_AXI_rresp"), M03_AXI_rlast("M03_AXI_rlast"), M03_AXI_ruser("M03_AXI_ruser"), M03_AXI_rvalid("M03_AXI_rvalid"), M03_AXI_rready("M03_AXI_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aclk1(aclk1);
  mp_impl->aresetn(aresetn);
  mp_impl->ddr4_mem_calib_complete(ddr4_mem_calib_complete);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_awvalid_converter = NULL;
  mp_S00_AXI_awready_converter = NULL;
  mp_S00_AXI_wlast_converter = NULL;
  mp_S00_AXI_wvalid_converter = NULL;
  mp_S00_AXI_wready_converter = NULL;
  mp_S00_AXI_bvalid_converter = NULL;
  mp_S00_AXI_bready_converter = NULL;
  mp_S00_AXI_arvalid_converter = NULL;
  mp_S00_AXI_arready_converter = NULL;
  mp_S00_AXI_rlast_converter = NULL;
  mp_S00_AXI_rvalid_converter = NULL;
  mp_S00_AXI_rready_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S01_AXI_awvalid_converter = NULL;
  mp_S01_AXI_awready_converter = NULL;
  mp_S01_AXI_wlast_converter = NULL;
  mp_S01_AXI_wvalid_converter = NULL;
  mp_S01_AXI_wready_converter = NULL;
  mp_S01_AXI_bvalid_converter = NULL;
  mp_S01_AXI_bready_converter = NULL;
  mp_S01_AXI_arvalid_converter = NULL;
  mp_S01_AXI_arready_converter = NULL;
  mp_S01_AXI_rlast_converter = NULL;
  mp_S01_AXI_rvalid_converter = NULL;
  mp_S01_AXI_rready_converter = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S02_AXI_awvalid_converter = NULL;
  mp_S02_AXI_awready_converter = NULL;
  mp_S02_AXI_wlast_converter = NULL;
  mp_S02_AXI_wvalid_converter = NULL;
  mp_S02_AXI_wready_converter = NULL;
  mp_S02_AXI_bvalid_converter = NULL;
  mp_S02_AXI_bready_converter = NULL;
  mp_S02_AXI_arvalid_converter = NULL;
  mp_S02_AXI_arready_converter = NULL;
  mp_S02_AXI_rlast_converter = NULL;
  mp_S02_AXI_rvalid_converter = NULL;
  mp_S02_AXI_rready_converter = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S03_AXI_awvalid_converter = NULL;
  mp_S03_AXI_awready_converter = NULL;
  mp_S03_AXI_wlast_converter = NULL;
  mp_S03_AXI_wvalid_converter = NULL;
  mp_S03_AXI_wready_converter = NULL;
  mp_S03_AXI_bvalid_converter = NULL;
  mp_S03_AXI_bready_converter = NULL;
  mp_S03_AXI_arvalid_converter = NULL;
  mp_S03_AXI_arready_converter = NULL;
  mp_S03_AXI_rlast_converter = NULL;
  mp_S03_AXI_rvalid_converter = NULL;
  mp_S03_AXI_rready_converter = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_S04_AXI_awvalid_converter = NULL;
  mp_S04_AXI_awready_converter = NULL;
  mp_S04_AXI_wlast_converter = NULL;
  mp_S04_AXI_wvalid_converter = NULL;
  mp_S04_AXI_wready_converter = NULL;
  mp_S04_AXI_bvalid_converter = NULL;
  mp_S04_AXI_bready_converter = NULL;
  mp_S04_AXI_arvalid_converter = NULL;
  mp_S04_AXI_arready_converter = NULL;
  mp_S04_AXI_rlast_converter = NULL;
  mp_S04_AXI_rvalid_converter = NULL;
  mp_S04_AXI_rready_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M00_AXI_awaddr_converter = NULL;
  mp_M00_AXI_awvalid_converter = NULL;
  mp_M00_AXI_awready_converter = NULL;
  mp_M00_AXI_wlast_converter = NULL;
  mp_M00_AXI_wvalid_converter = NULL;
  mp_M00_AXI_wready_converter = NULL;
  mp_M00_AXI_bvalid_converter = NULL;
  mp_M00_AXI_bready_converter = NULL;
  mp_M00_AXI_araddr_converter = NULL;
  mp_M00_AXI_arvalid_converter = NULL;
  mp_M00_AXI_arready_converter = NULL;
  mp_M00_AXI_rlast_converter = NULL;
  mp_M00_AXI_rvalid_converter = NULL;
  mp_M00_AXI_rready_converter = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_M01_AXI_awvalid_converter = NULL;
  mp_M01_AXI_awready_converter = NULL;
  mp_M01_AXI_wlast_converter = NULL;
  mp_M01_AXI_wvalid_converter = NULL;
  mp_M01_AXI_wready_converter = NULL;
  mp_M01_AXI_bvalid_converter = NULL;
  mp_M01_AXI_bready_converter = NULL;
  mp_M01_AXI_arvalid_converter = NULL;
  mp_M01_AXI_arready_converter = NULL;
  mp_M01_AXI_rlast_converter = NULL;
  mp_M01_AXI_rvalid_converter = NULL;
  mp_M01_AXI_rready_converter = NULL;
  mp_M02_AXI_transactor = NULL;
  mp_M02_AXI_awaddr_converter = NULL;
  mp_M02_AXI_awvalid_converter = NULL;
  mp_M02_AXI_awready_converter = NULL;
  mp_M02_AXI_wlast_converter = NULL;
  mp_M02_AXI_wvalid_converter = NULL;
  mp_M02_AXI_wready_converter = NULL;
  mp_M02_AXI_bvalid_converter = NULL;
  mp_M02_AXI_bready_converter = NULL;
  mp_M02_AXI_araddr_converter = NULL;
  mp_M02_AXI_arvalid_converter = NULL;
  mp_M02_AXI_arready_converter = NULL;
  mp_M02_AXI_rlast_converter = NULL;
  mp_M02_AXI_rvalid_converter = NULL;
  mp_M02_AXI_rready_converter = NULL;
  mp_M03_AXI_transactor = NULL;
  mp_M03_AXI_awaddr_converter = NULL;
  mp_M03_AXI_awvalid_converter = NULL;
  mp_M03_AXI_awready_converter = NULL;
  mp_M03_AXI_wlast_converter = NULL;
  mp_M03_AXI_wvalid_converter = NULL;
  mp_M03_AXI_wready_converter = NULL;
  mp_M03_AXI_bvalid_converter = NULL;
  mp_M03_AXI_bready_converter = NULL;
  mp_M03_AXI_araddr_converter = NULL;
  mp_M03_AXI_arvalid_converter = NULL;
  mp_M03_AXI_arready_converter = NULL;
  mp_M03_AXI_rlast_converter = NULL;
  mp_M03_AXI_rvalid_converter = NULL;
  mp_M03_AXI_rready_converter = NULL;

  // initialize socket stubs

}

void pfm_dynamic_memory_subsystem_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
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
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWID(S00_AXI_awid);
    mp_S00_AXI_transactor->AWADDR(S00_AXI_awaddr);
    mp_S00_AXI_transactor->AWLEN(S00_AXI_awlen);
    mp_S00_AXI_transactor->AWSIZE(S00_AXI_awsize);
    mp_S00_AXI_transactor->AWBURST(S00_AXI_awburst);
    mp_S00_AXI_transactor->AWLOCK(S00_AXI_awlock);
    mp_S00_AXI_transactor->AWCACHE(S00_AXI_awcache);
    mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
    mp_S00_AXI_transactor->AWQOS(S00_AXI_awqos);
    mp_S00_AXI_transactor->AWUSER(S00_AXI_awuser);
    mp_S00_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awvalid_converter");
    mp_S00_AXI_awvalid_converter->vector_in(S00_AXI_awvalid);
    mp_S00_AXI_awvalid_converter->scalar_out(m_S00_AXI_awvalid_converter_signal);
    mp_S00_AXI_transactor->AWVALID(m_S00_AXI_awvalid_converter_signal);
    mp_S00_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_awready_converter");
    mp_S00_AXI_awready_converter->scalar_in(m_S00_AXI_awready_converter_signal);
    mp_S00_AXI_awready_converter->vector_out(S00_AXI_awready);
    mp_S00_AXI_transactor->AWREADY(m_S00_AXI_awready_converter_signal);
    mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
    mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
    mp_S00_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wlast_converter");
    mp_S00_AXI_wlast_converter->vector_in(S00_AXI_wlast);
    mp_S00_AXI_wlast_converter->scalar_out(m_S00_AXI_wlast_converter_signal);
    mp_S00_AXI_transactor->WLAST(m_S00_AXI_wlast_converter_signal);
    mp_S00_AXI_transactor->WUSER(S00_AXI_wuser);
    mp_S00_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wvalid_converter");
    mp_S00_AXI_wvalid_converter->vector_in(S00_AXI_wvalid);
    mp_S00_AXI_wvalid_converter->scalar_out(m_S00_AXI_wvalid_converter_signal);
    mp_S00_AXI_transactor->WVALID(m_S00_AXI_wvalid_converter_signal);
    mp_S00_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_wready_converter");
    mp_S00_AXI_wready_converter->scalar_in(m_S00_AXI_wready_converter_signal);
    mp_S00_AXI_wready_converter->vector_out(S00_AXI_wready);
    mp_S00_AXI_transactor->WREADY(m_S00_AXI_wready_converter_signal);
    mp_S00_AXI_transactor->BID(S00_AXI_bid);
    mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
    mp_S00_AXI_transactor->BUSER(S00_AXI_buser);
    mp_S00_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_bvalid_converter");
    mp_S00_AXI_bvalid_converter->scalar_in(m_S00_AXI_bvalid_converter_signal);
    mp_S00_AXI_bvalid_converter->vector_out(S00_AXI_bvalid);
    mp_S00_AXI_transactor->BVALID(m_S00_AXI_bvalid_converter_signal);
    mp_S00_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_bready_converter");
    mp_S00_AXI_bready_converter->vector_in(S00_AXI_bready);
    mp_S00_AXI_bready_converter->scalar_out(m_S00_AXI_bready_converter_signal);
    mp_S00_AXI_transactor->BREADY(m_S00_AXI_bready_converter_signal);
    mp_S00_AXI_transactor->ARID(S00_AXI_arid);
    mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
    mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
    mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
    mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
    mp_S00_AXI_transactor->ARLOCK(S00_AXI_arlock);
    mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
    mp_S00_AXI_transactor->ARUSER(S00_AXI_aruser);
    mp_S00_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arvalid_converter");
    mp_S00_AXI_arvalid_converter->vector_in(S00_AXI_arvalid);
    mp_S00_AXI_arvalid_converter->scalar_out(m_S00_AXI_arvalid_converter_signal);
    mp_S00_AXI_transactor->ARVALID(m_S00_AXI_arvalid_converter_signal);
    mp_S00_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_arready_converter");
    mp_S00_AXI_arready_converter->scalar_in(m_S00_AXI_arready_converter_signal);
    mp_S00_AXI_arready_converter->vector_out(S00_AXI_arready);
    mp_S00_AXI_transactor->ARREADY(m_S00_AXI_arready_converter_signal);
    mp_S00_AXI_transactor->RID(S00_AXI_rid);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rlast_converter");
    mp_S00_AXI_rlast_converter->scalar_in(m_S00_AXI_rlast_converter_signal);
    mp_S00_AXI_rlast_converter->vector_out(S00_AXI_rlast);
    mp_S00_AXI_transactor->RLAST(m_S00_AXI_rlast_converter_signal);
    mp_S00_AXI_transactor->RUSER(S00_AXI_ruser);
    mp_S00_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rvalid_converter");
    mp_S00_AXI_rvalid_converter->scalar_in(m_S00_AXI_rvalid_converter_signal);
    mp_S00_AXI_rvalid_converter->vector_out(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RVALID(m_S00_AXI_rvalid_converter_signal);
    mp_S00_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_rready_converter");
    mp_S00_AXI_rready_converter->vector_in(S00_AXI_rready);
    mp_S00_AXI_rready_converter->scalar_out(m_S00_AXI_rready_converter_signal);
    mp_S00_AXI_transactor->RREADY(m_S00_AXI_rready_converter_signal);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S01_AXI' transactor parameters
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "35");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S01_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);

    // S01_AXI' transactor ports

    mp_S01_AXI_transactor->AWID(S01_AXI_awid);
    mp_S01_AXI_transactor->AWADDR(S01_AXI_awaddr);
    mp_S01_AXI_transactor->AWLEN(S01_AXI_awlen);
    mp_S01_AXI_transactor->AWSIZE(S01_AXI_awsize);
    mp_S01_AXI_transactor->AWBURST(S01_AXI_awburst);
    mp_S01_AXI_transactor->AWLOCK(S01_AXI_awlock);
    mp_S01_AXI_transactor->AWCACHE(S01_AXI_awcache);
    mp_S01_AXI_transactor->AWPROT(S01_AXI_awprot);
    mp_S01_AXI_transactor->AWQOS(S01_AXI_awqos);
    mp_S01_AXI_transactor->AWUSER(S01_AXI_awuser);
    mp_S01_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_awvalid_converter");
    mp_S01_AXI_awvalid_converter->vector_in(S01_AXI_awvalid);
    mp_S01_AXI_awvalid_converter->scalar_out(m_S01_AXI_awvalid_converter_signal);
    mp_S01_AXI_transactor->AWVALID(m_S01_AXI_awvalid_converter_signal);
    mp_S01_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_awready_converter");
    mp_S01_AXI_awready_converter->scalar_in(m_S01_AXI_awready_converter_signal);
    mp_S01_AXI_awready_converter->vector_out(S01_AXI_awready);
    mp_S01_AXI_transactor->AWREADY(m_S01_AXI_awready_converter_signal);
    mp_S01_AXI_transactor->WDATA(S01_AXI_wdata);
    mp_S01_AXI_transactor->WSTRB(S01_AXI_wstrb);
    mp_S01_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_wlast_converter");
    mp_S01_AXI_wlast_converter->vector_in(S01_AXI_wlast);
    mp_S01_AXI_wlast_converter->scalar_out(m_S01_AXI_wlast_converter_signal);
    mp_S01_AXI_transactor->WLAST(m_S01_AXI_wlast_converter_signal);
    mp_S01_AXI_transactor->WUSER(S01_AXI_wuser);
    mp_S01_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_wvalid_converter");
    mp_S01_AXI_wvalid_converter->vector_in(S01_AXI_wvalid);
    mp_S01_AXI_wvalid_converter->scalar_out(m_S01_AXI_wvalid_converter_signal);
    mp_S01_AXI_transactor->WVALID(m_S01_AXI_wvalid_converter_signal);
    mp_S01_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_wready_converter");
    mp_S01_AXI_wready_converter->scalar_in(m_S01_AXI_wready_converter_signal);
    mp_S01_AXI_wready_converter->vector_out(S01_AXI_wready);
    mp_S01_AXI_transactor->WREADY(m_S01_AXI_wready_converter_signal);
    mp_S01_AXI_transactor->BID(S01_AXI_bid);
    mp_S01_AXI_transactor->BRESP(S01_AXI_bresp);
    mp_S01_AXI_transactor->BUSER(S01_AXI_buser);
    mp_S01_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_bvalid_converter");
    mp_S01_AXI_bvalid_converter->scalar_in(m_S01_AXI_bvalid_converter_signal);
    mp_S01_AXI_bvalid_converter->vector_out(S01_AXI_bvalid);
    mp_S01_AXI_transactor->BVALID(m_S01_AXI_bvalid_converter_signal);
    mp_S01_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_bready_converter");
    mp_S01_AXI_bready_converter->vector_in(S01_AXI_bready);
    mp_S01_AXI_bready_converter->scalar_out(m_S01_AXI_bready_converter_signal);
    mp_S01_AXI_transactor->BREADY(m_S01_AXI_bready_converter_signal);
    mp_S01_AXI_transactor->ARID(S01_AXI_arid);
    mp_S01_AXI_transactor->ARADDR(S01_AXI_araddr);
    mp_S01_AXI_transactor->ARLEN(S01_AXI_arlen);
    mp_S01_AXI_transactor->ARSIZE(S01_AXI_arsize);
    mp_S01_AXI_transactor->ARBURST(S01_AXI_arburst);
    mp_S01_AXI_transactor->ARLOCK(S01_AXI_arlock);
    mp_S01_AXI_transactor->ARCACHE(S01_AXI_arcache);
    mp_S01_AXI_transactor->ARPROT(S01_AXI_arprot);
    mp_S01_AXI_transactor->ARQOS(S01_AXI_arqos);
    mp_S01_AXI_transactor->ARUSER(S01_AXI_aruser);
    mp_S01_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_arvalid_converter");
    mp_S01_AXI_arvalid_converter->vector_in(S01_AXI_arvalid);
    mp_S01_AXI_arvalid_converter->scalar_out(m_S01_AXI_arvalid_converter_signal);
    mp_S01_AXI_transactor->ARVALID(m_S01_AXI_arvalid_converter_signal);
    mp_S01_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_arready_converter");
    mp_S01_AXI_arready_converter->scalar_in(m_S01_AXI_arready_converter_signal);
    mp_S01_AXI_arready_converter->vector_out(S01_AXI_arready);
    mp_S01_AXI_transactor->ARREADY(m_S01_AXI_arready_converter_signal);
    mp_S01_AXI_transactor->RID(S01_AXI_rid);
    mp_S01_AXI_transactor->RDATA(S01_AXI_rdata);
    mp_S01_AXI_transactor->RRESP(S01_AXI_rresp);
    mp_S01_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_rlast_converter");
    mp_S01_AXI_rlast_converter->scalar_in(m_S01_AXI_rlast_converter_signal);
    mp_S01_AXI_rlast_converter->vector_out(S01_AXI_rlast);
    mp_S01_AXI_transactor->RLAST(m_S01_AXI_rlast_converter_signal);
    mp_S01_AXI_transactor->RUSER(S01_AXI_ruser);
    mp_S01_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_rvalid_converter");
    mp_S01_AXI_rvalid_converter->scalar_in(m_S01_AXI_rvalid_converter_signal);
    mp_S01_AXI_rvalid_converter->vector_out(S01_AXI_rvalid);
    mp_S01_AXI_transactor->RVALID(m_S01_AXI_rvalid_converter_signal);
    mp_S01_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_rready_converter");
    mp_S01_AXI_rready_converter->vector_in(S01_AXI_rready);
    mp_S01_AXI_rready_converter->scalar_out(m_S01_AXI_rready_converter_signal);
    mp_S01_AXI_transactor->RREADY(m_S01_AXI_rready_converter_signal);
    mp_S01_AXI_transactor->CLK(aclk);
    mp_S01_AXI_transactor->RST(aresetn);

    // S01_AXI' transactor sockets

    mp_impl->S01_AXI_tlm_aximm_read_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->S01_AXI_tlm_aximm_write_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S02_AXI' transactor parameters
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S02_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S02_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S02_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S02_AXI_transactor", S02_AXI_transactor_param_props);

    // S02_AXI' transactor ports

    mp_S02_AXI_transactor->AWID(S02_AXI_awid);
    mp_S02_AXI_transactor->AWADDR(S02_AXI_awaddr);
    mp_S02_AXI_transactor->AWLEN(S02_AXI_awlen);
    mp_S02_AXI_transactor->AWSIZE(S02_AXI_awsize);
    mp_S02_AXI_transactor->AWBURST(S02_AXI_awburst);
    mp_S02_AXI_transactor->AWLOCK(S02_AXI_awlock);
    mp_S02_AXI_transactor->AWCACHE(S02_AXI_awcache);
    mp_S02_AXI_transactor->AWPROT(S02_AXI_awprot);
    mp_S02_AXI_transactor->AWQOS(S02_AXI_awqos);
    mp_S02_AXI_transactor->AWUSER(S02_AXI_awuser);
    mp_S02_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_awvalid_converter");
    mp_S02_AXI_awvalid_converter->vector_in(S02_AXI_awvalid);
    mp_S02_AXI_awvalid_converter->scalar_out(m_S02_AXI_awvalid_converter_signal);
    mp_S02_AXI_transactor->AWVALID(m_S02_AXI_awvalid_converter_signal);
    mp_S02_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_awready_converter");
    mp_S02_AXI_awready_converter->scalar_in(m_S02_AXI_awready_converter_signal);
    mp_S02_AXI_awready_converter->vector_out(S02_AXI_awready);
    mp_S02_AXI_transactor->AWREADY(m_S02_AXI_awready_converter_signal);
    mp_S02_AXI_transactor->WDATA(S02_AXI_wdata);
    mp_S02_AXI_transactor->WSTRB(S02_AXI_wstrb);
    mp_S02_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_wlast_converter");
    mp_S02_AXI_wlast_converter->vector_in(S02_AXI_wlast);
    mp_S02_AXI_wlast_converter->scalar_out(m_S02_AXI_wlast_converter_signal);
    mp_S02_AXI_transactor->WLAST(m_S02_AXI_wlast_converter_signal);
    mp_S02_AXI_transactor->WUSER(S02_AXI_wuser);
    mp_S02_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_wvalid_converter");
    mp_S02_AXI_wvalid_converter->vector_in(S02_AXI_wvalid);
    mp_S02_AXI_wvalid_converter->scalar_out(m_S02_AXI_wvalid_converter_signal);
    mp_S02_AXI_transactor->WVALID(m_S02_AXI_wvalid_converter_signal);
    mp_S02_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_wready_converter");
    mp_S02_AXI_wready_converter->scalar_in(m_S02_AXI_wready_converter_signal);
    mp_S02_AXI_wready_converter->vector_out(S02_AXI_wready);
    mp_S02_AXI_transactor->WREADY(m_S02_AXI_wready_converter_signal);
    mp_S02_AXI_transactor->BID(S02_AXI_bid);
    mp_S02_AXI_transactor->BRESP(S02_AXI_bresp);
    mp_S02_AXI_transactor->BUSER(S02_AXI_buser);
    mp_S02_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_bvalid_converter");
    mp_S02_AXI_bvalid_converter->scalar_in(m_S02_AXI_bvalid_converter_signal);
    mp_S02_AXI_bvalid_converter->vector_out(S02_AXI_bvalid);
    mp_S02_AXI_transactor->BVALID(m_S02_AXI_bvalid_converter_signal);
    mp_S02_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_bready_converter");
    mp_S02_AXI_bready_converter->vector_in(S02_AXI_bready);
    mp_S02_AXI_bready_converter->scalar_out(m_S02_AXI_bready_converter_signal);
    mp_S02_AXI_transactor->BREADY(m_S02_AXI_bready_converter_signal);
    mp_S02_AXI_transactor->ARID(S02_AXI_arid);
    mp_S02_AXI_transactor->ARADDR(S02_AXI_araddr);
    mp_S02_AXI_transactor->ARLEN(S02_AXI_arlen);
    mp_S02_AXI_transactor->ARSIZE(S02_AXI_arsize);
    mp_S02_AXI_transactor->ARBURST(S02_AXI_arburst);
    mp_S02_AXI_transactor->ARLOCK(S02_AXI_arlock);
    mp_S02_AXI_transactor->ARCACHE(S02_AXI_arcache);
    mp_S02_AXI_transactor->ARPROT(S02_AXI_arprot);
    mp_S02_AXI_transactor->ARQOS(S02_AXI_arqos);
    mp_S02_AXI_transactor->ARUSER(S02_AXI_aruser);
    mp_S02_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_arvalid_converter");
    mp_S02_AXI_arvalid_converter->vector_in(S02_AXI_arvalid);
    mp_S02_AXI_arvalid_converter->scalar_out(m_S02_AXI_arvalid_converter_signal);
    mp_S02_AXI_transactor->ARVALID(m_S02_AXI_arvalid_converter_signal);
    mp_S02_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_arready_converter");
    mp_S02_AXI_arready_converter->scalar_in(m_S02_AXI_arready_converter_signal);
    mp_S02_AXI_arready_converter->vector_out(S02_AXI_arready);
    mp_S02_AXI_transactor->ARREADY(m_S02_AXI_arready_converter_signal);
    mp_S02_AXI_transactor->RID(S02_AXI_rid);
    mp_S02_AXI_transactor->RDATA(S02_AXI_rdata);
    mp_S02_AXI_transactor->RRESP(S02_AXI_rresp);
    mp_S02_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_rlast_converter");
    mp_S02_AXI_rlast_converter->scalar_in(m_S02_AXI_rlast_converter_signal);
    mp_S02_AXI_rlast_converter->vector_out(S02_AXI_rlast);
    mp_S02_AXI_transactor->RLAST(m_S02_AXI_rlast_converter_signal);
    mp_S02_AXI_transactor->RUSER(S02_AXI_ruser);
    mp_S02_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_rvalid_converter");
    mp_S02_AXI_rvalid_converter->scalar_in(m_S02_AXI_rvalid_converter_signal);
    mp_S02_AXI_rvalid_converter->vector_out(S02_AXI_rvalid);
    mp_S02_AXI_transactor->RVALID(m_S02_AXI_rvalid_converter_signal);
    mp_S02_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_rready_converter");
    mp_S02_AXI_rready_converter->vector_in(S02_AXI_rready);
    mp_S02_AXI_rready_converter->scalar_out(m_S02_AXI_rready_converter_signal);
    mp_S02_AXI_transactor->RREADY(m_S02_AXI_rready_converter_signal);
    mp_S02_AXI_transactor->CLK(aclk);
    mp_S02_AXI_transactor->RST(aresetn);

    // S02_AXI' transactor sockets

    mp_impl->S02_AXI_tlm_aximm_read_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->S02_AXI_tlm_aximm_write_socket->bind(*(mp_S02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S03_AXI' transactor parameters
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S03_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S03_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S03_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S03_AXI_transactor", S03_AXI_transactor_param_props);

    // S03_AXI' transactor ports

    mp_S03_AXI_transactor->AWID(S03_AXI_awid);
    mp_S03_AXI_transactor->AWADDR(S03_AXI_awaddr);
    mp_S03_AXI_transactor->AWLEN(S03_AXI_awlen);
    mp_S03_AXI_transactor->AWSIZE(S03_AXI_awsize);
    mp_S03_AXI_transactor->AWBURST(S03_AXI_awburst);
    mp_S03_AXI_transactor->AWLOCK(S03_AXI_awlock);
    mp_S03_AXI_transactor->AWCACHE(S03_AXI_awcache);
    mp_S03_AXI_transactor->AWPROT(S03_AXI_awprot);
    mp_S03_AXI_transactor->AWQOS(S03_AXI_awqos);
    mp_S03_AXI_transactor->AWUSER(S03_AXI_awuser);
    mp_S03_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_awvalid_converter");
    mp_S03_AXI_awvalid_converter->vector_in(S03_AXI_awvalid);
    mp_S03_AXI_awvalid_converter->scalar_out(m_S03_AXI_awvalid_converter_signal);
    mp_S03_AXI_transactor->AWVALID(m_S03_AXI_awvalid_converter_signal);
    mp_S03_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_awready_converter");
    mp_S03_AXI_awready_converter->scalar_in(m_S03_AXI_awready_converter_signal);
    mp_S03_AXI_awready_converter->vector_out(S03_AXI_awready);
    mp_S03_AXI_transactor->AWREADY(m_S03_AXI_awready_converter_signal);
    mp_S03_AXI_transactor->WDATA(S03_AXI_wdata);
    mp_S03_AXI_transactor->WSTRB(S03_AXI_wstrb);
    mp_S03_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_wlast_converter");
    mp_S03_AXI_wlast_converter->vector_in(S03_AXI_wlast);
    mp_S03_AXI_wlast_converter->scalar_out(m_S03_AXI_wlast_converter_signal);
    mp_S03_AXI_transactor->WLAST(m_S03_AXI_wlast_converter_signal);
    mp_S03_AXI_transactor->WUSER(S03_AXI_wuser);
    mp_S03_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_wvalid_converter");
    mp_S03_AXI_wvalid_converter->vector_in(S03_AXI_wvalid);
    mp_S03_AXI_wvalid_converter->scalar_out(m_S03_AXI_wvalid_converter_signal);
    mp_S03_AXI_transactor->WVALID(m_S03_AXI_wvalid_converter_signal);
    mp_S03_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_wready_converter");
    mp_S03_AXI_wready_converter->scalar_in(m_S03_AXI_wready_converter_signal);
    mp_S03_AXI_wready_converter->vector_out(S03_AXI_wready);
    mp_S03_AXI_transactor->WREADY(m_S03_AXI_wready_converter_signal);
    mp_S03_AXI_transactor->BID(S03_AXI_bid);
    mp_S03_AXI_transactor->BRESP(S03_AXI_bresp);
    mp_S03_AXI_transactor->BUSER(S03_AXI_buser);
    mp_S03_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_bvalid_converter");
    mp_S03_AXI_bvalid_converter->scalar_in(m_S03_AXI_bvalid_converter_signal);
    mp_S03_AXI_bvalid_converter->vector_out(S03_AXI_bvalid);
    mp_S03_AXI_transactor->BVALID(m_S03_AXI_bvalid_converter_signal);
    mp_S03_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_bready_converter");
    mp_S03_AXI_bready_converter->vector_in(S03_AXI_bready);
    mp_S03_AXI_bready_converter->scalar_out(m_S03_AXI_bready_converter_signal);
    mp_S03_AXI_transactor->BREADY(m_S03_AXI_bready_converter_signal);
    mp_S03_AXI_transactor->ARID(S03_AXI_arid);
    mp_S03_AXI_transactor->ARADDR(S03_AXI_araddr);
    mp_S03_AXI_transactor->ARLEN(S03_AXI_arlen);
    mp_S03_AXI_transactor->ARSIZE(S03_AXI_arsize);
    mp_S03_AXI_transactor->ARBURST(S03_AXI_arburst);
    mp_S03_AXI_transactor->ARLOCK(S03_AXI_arlock);
    mp_S03_AXI_transactor->ARCACHE(S03_AXI_arcache);
    mp_S03_AXI_transactor->ARPROT(S03_AXI_arprot);
    mp_S03_AXI_transactor->ARQOS(S03_AXI_arqos);
    mp_S03_AXI_transactor->ARUSER(S03_AXI_aruser);
    mp_S03_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_arvalid_converter");
    mp_S03_AXI_arvalid_converter->vector_in(S03_AXI_arvalid);
    mp_S03_AXI_arvalid_converter->scalar_out(m_S03_AXI_arvalid_converter_signal);
    mp_S03_AXI_transactor->ARVALID(m_S03_AXI_arvalid_converter_signal);
    mp_S03_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_arready_converter");
    mp_S03_AXI_arready_converter->scalar_in(m_S03_AXI_arready_converter_signal);
    mp_S03_AXI_arready_converter->vector_out(S03_AXI_arready);
    mp_S03_AXI_transactor->ARREADY(m_S03_AXI_arready_converter_signal);
    mp_S03_AXI_transactor->RID(S03_AXI_rid);
    mp_S03_AXI_transactor->RDATA(S03_AXI_rdata);
    mp_S03_AXI_transactor->RRESP(S03_AXI_rresp);
    mp_S03_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_rlast_converter");
    mp_S03_AXI_rlast_converter->scalar_in(m_S03_AXI_rlast_converter_signal);
    mp_S03_AXI_rlast_converter->vector_out(S03_AXI_rlast);
    mp_S03_AXI_transactor->RLAST(m_S03_AXI_rlast_converter_signal);
    mp_S03_AXI_transactor->RUSER(S03_AXI_ruser);
    mp_S03_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_rvalid_converter");
    mp_S03_AXI_rvalid_converter->scalar_in(m_S03_AXI_rvalid_converter_signal);
    mp_S03_AXI_rvalid_converter->vector_out(S03_AXI_rvalid);
    mp_S03_AXI_transactor->RVALID(m_S03_AXI_rvalid_converter_signal);
    mp_S03_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_rready_converter");
    mp_S03_AXI_rready_converter->vector_in(S03_AXI_rready);
    mp_S03_AXI_rready_converter->scalar_out(m_S03_AXI_rready_converter_signal);
    mp_S03_AXI_transactor->RREADY(m_S03_AXI_rready_converter_signal);
    mp_S03_AXI_transactor->CLK(aclk);
    mp_S03_AXI_transactor->RST(aresetn);

    // S03_AXI' transactor sockets

    mp_impl->S03_AXI_tlm_aximm_read_socket->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_impl->S03_AXI_tlm_aximm_write_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S04_AXI' transactor parameters
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "35");
    S04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S04_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S04_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S04_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S04_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,64,1,1,1,1,1,1>("S04_AXI_transactor", S04_AXI_transactor_param_props);

    // S04_AXI' transactor ports

    mp_S04_AXI_transactor->AWADDR(S04_AXI_awaddr);
    mp_S04_AXI_transactor->AWLEN(S04_AXI_awlen);
    mp_S04_AXI_transactor->AWSIZE(S04_AXI_awsize);
    mp_S04_AXI_transactor->AWLOCK(S04_AXI_awlock);
    mp_S04_AXI_transactor->AWCACHE(S04_AXI_awcache);
    mp_S04_AXI_transactor->AWPROT(S04_AXI_awprot);
    mp_S04_AXI_transactor->AWREGION(S04_AXI_awregion);
    mp_S04_AXI_transactor->AWQOS(S04_AXI_awqos);
    mp_S04_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_awvalid_converter");
    mp_S04_AXI_awvalid_converter->vector_in(S04_AXI_awvalid);
    mp_S04_AXI_awvalid_converter->scalar_out(m_S04_AXI_awvalid_converter_signal);
    mp_S04_AXI_transactor->AWVALID(m_S04_AXI_awvalid_converter_signal);
    mp_S04_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_awready_converter");
    mp_S04_AXI_awready_converter->scalar_in(m_S04_AXI_awready_converter_signal);
    mp_S04_AXI_awready_converter->vector_out(S04_AXI_awready);
    mp_S04_AXI_transactor->AWREADY(m_S04_AXI_awready_converter_signal);
    mp_S04_AXI_transactor->WDATA(S04_AXI_wdata);
    mp_S04_AXI_transactor->WSTRB(S04_AXI_wstrb);
    mp_S04_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_wlast_converter");
    mp_S04_AXI_wlast_converter->vector_in(S04_AXI_wlast);
    mp_S04_AXI_wlast_converter->scalar_out(m_S04_AXI_wlast_converter_signal);
    mp_S04_AXI_transactor->WLAST(m_S04_AXI_wlast_converter_signal);
    mp_S04_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_wvalid_converter");
    mp_S04_AXI_wvalid_converter->vector_in(S04_AXI_wvalid);
    mp_S04_AXI_wvalid_converter->scalar_out(m_S04_AXI_wvalid_converter_signal);
    mp_S04_AXI_transactor->WVALID(m_S04_AXI_wvalid_converter_signal);
    mp_S04_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_wready_converter");
    mp_S04_AXI_wready_converter->scalar_in(m_S04_AXI_wready_converter_signal);
    mp_S04_AXI_wready_converter->vector_out(S04_AXI_wready);
    mp_S04_AXI_transactor->WREADY(m_S04_AXI_wready_converter_signal);
    mp_S04_AXI_transactor->BRESP(S04_AXI_bresp);
    mp_S04_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_bvalid_converter");
    mp_S04_AXI_bvalid_converter->scalar_in(m_S04_AXI_bvalid_converter_signal);
    mp_S04_AXI_bvalid_converter->vector_out(S04_AXI_bvalid);
    mp_S04_AXI_transactor->BVALID(m_S04_AXI_bvalid_converter_signal);
    mp_S04_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_bready_converter");
    mp_S04_AXI_bready_converter->vector_in(S04_AXI_bready);
    mp_S04_AXI_bready_converter->scalar_out(m_S04_AXI_bready_converter_signal);
    mp_S04_AXI_transactor->BREADY(m_S04_AXI_bready_converter_signal);
    mp_S04_AXI_transactor->ARADDR(S04_AXI_araddr);
    mp_S04_AXI_transactor->ARLEN(S04_AXI_arlen);
    mp_S04_AXI_transactor->ARSIZE(S04_AXI_arsize);
    mp_S04_AXI_transactor->ARLOCK(S04_AXI_arlock);
    mp_S04_AXI_transactor->ARCACHE(S04_AXI_arcache);
    mp_S04_AXI_transactor->ARPROT(S04_AXI_arprot);
    mp_S04_AXI_transactor->ARREGION(S04_AXI_arregion);
    mp_S04_AXI_transactor->ARQOS(S04_AXI_arqos);
    mp_S04_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_arvalid_converter");
    mp_S04_AXI_arvalid_converter->vector_in(S04_AXI_arvalid);
    mp_S04_AXI_arvalid_converter->scalar_out(m_S04_AXI_arvalid_converter_signal);
    mp_S04_AXI_transactor->ARVALID(m_S04_AXI_arvalid_converter_signal);
    mp_S04_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_arready_converter");
    mp_S04_AXI_arready_converter->scalar_in(m_S04_AXI_arready_converter_signal);
    mp_S04_AXI_arready_converter->vector_out(S04_AXI_arready);
    mp_S04_AXI_transactor->ARREADY(m_S04_AXI_arready_converter_signal);
    mp_S04_AXI_transactor->RDATA(S04_AXI_rdata);
    mp_S04_AXI_transactor->RRESP(S04_AXI_rresp);
    mp_S04_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_rlast_converter");
    mp_S04_AXI_rlast_converter->scalar_in(m_S04_AXI_rlast_converter_signal);
    mp_S04_AXI_rlast_converter->vector_out(S04_AXI_rlast);
    mp_S04_AXI_transactor->RLAST(m_S04_AXI_rlast_converter_signal);
    mp_S04_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_rvalid_converter");
    mp_S04_AXI_rvalid_converter->scalar_in(m_S04_AXI_rvalid_converter_signal);
    mp_S04_AXI_rvalid_converter->vector_out(S04_AXI_rvalid);
    mp_S04_AXI_transactor->RVALID(m_S04_AXI_rvalid_converter_signal);
    mp_S04_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_rready_converter");
    mp_S04_AXI_rready_converter->vector_in(S04_AXI_rready);
    mp_S04_AXI_rready_converter->scalar_out(m_S04_AXI_rready_converter_signal);
    mp_S04_AXI_transactor->RREADY(m_S04_AXI_rready_converter_signal);
    mp_S04_AXI_transactor->CLK(aclk1);
    mp_S04_AXI_transactor->RST(aresetn);

    // S04_AXI' transactor sockets

    mp_impl->S04_AXI_tlm_aximm_read_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->S04_AXI_tlm_aximm_write_socket->bind(*(mp_S04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
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
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,5,32,1,1,32,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWID(M00_AXI_awid);
    mp_M00_AXI_awaddr_converter = new xsc::common::vector2vector_converter<39,34>("M00_AXI_awaddr_converter");
    mp_M00_AXI_awaddr_converter->vector_in(m_M00_AXI_awaddr_converter_signal);
    mp_M00_AXI_awaddr_converter->vector_out(M00_AXI_awaddr);
    mp_M00_AXI_transactor->AWADDR(m_M00_AXI_awaddr_converter_signal);
    mp_M00_AXI_transactor->AWLEN(M00_AXI_awlen);
    mp_M00_AXI_transactor->AWSIZE(M00_AXI_awsize);
    mp_M00_AXI_transactor->AWBURST(M00_AXI_awburst);
    mp_M00_AXI_transactor->AWLOCK(M00_AXI_awlock);
    mp_M00_AXI_transactor->AWCACHE(M00_AXI_awcache);
    mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
    mp_M00_AXI_transactor->AWQOS(M00_AXI_awqos);
    mp_M00_AXI_transactor->AWUSER(M00_AXI_awuser);
    mp_M00_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_awvalid_converter");
    mp_M00_AXI_awvalid_converter->scalar_in(m_M00_AXI_awvalid_converter_signal);
    mp_M00_AXI_awvalid_converter->vector_out(M00_AXI_awvalid);
    mp_M00_AXI_transactor->AWVALID(m_M00_AXI_awvalid_converter_signal);
    mp_M00_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_awready_converter");
    mp_M00_AXI_awready_converter->vector_in(M00_AXI_awready);
    mp_M00_AXI_awready_converter->scalar_out(m_M00_AXI_awready_converter_signal);
    mp_M00_AXI_transactor->AWREADY(m_M00_AXI_awready_converter_signal);
    mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
    mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
    mp_M00_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_wlast_converter");
    mp_M00_AXI_wlast_converter->scalar_in(m_M00_AXI_wlast_converter_signal);
    mp_M00_AXI_wlast_converter->vector_out(M00_AXI_wlast);
    mp_M00_AXI_transactor->WLAST(m_M00_AXI_wlast_converter_signal);
    mp_M00_AXI_transactor->WUSER(M00_AXI_wuser);
    mp_M00_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_wvalid_converter");
    mp_M00_AXI_wvalid_converter->scalar_in(m_M00_AXI_wvalid_converter_signal);
    mp_M00_AXI_wvalid_converter->vector_out(M00_AXI_wvalid);
    mp_M00_AXI_transactor->WVALID(m_M00_AXI_wvalid_converter_signal);
    mp_M00_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_wready_converter");
    mp_M00_AXI_wready_converter->vector_in(M00_AXI_wready);
    mp_M00_AXI_wready_converter->scalar_out(m_M00_AXI_wready_converter_signal);
    mp_M00_AXI_transactor->WREADY(m_M00_AXI_wready_converter_signal);
    mp_M00_AXI_transactor->BID(M00_AXI_bid);
    mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
    mp_M00_AXI_transactor->BUSER(M00_AXI_buser);
    mp_M00_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_bvalid_converter");
    mp_M00_AXI_bvalid_converter->vector_in(M00_AXI_bvalid);
    mp_M00_AXI_bvalid_converter->scalar_out(m_M00_AXI_bvalid_converter_signal);
    mp_M00_AXI_transactor->BVALID(m_M00_AXI_bvalid_converter_signal);
    mp_M00_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_bready_converter");
    mp_M00_AXI_bready_converter->scalar_in(m_M00_AXI_bready_converter_signal);
    mp_M00_AXI_bready_converter->vector_out(M00_AXI_bready);
    mp_M00_AXI_transactor->BREADY(m_M00_AXI_bready_converter_signal);
    mp_M00_AXI_transactor->ARID(M00_AXI_arid);
    mp_M00_AXI_araddr_converter = new xsc::common::vector2vector_converter<39,34>("M00_AXI_araddr_converter");
    mp_M00_AXI_araddr_converter->vector_in(m_M00_AXI_araddr_converter_signal);
    mp_M00_AXI_araddr_converter->vector_out(M00_AXI_araddr);
    mp_M00_AXI_transactor->ARADDR(m_M00_AXI_araddr_converter_signal);
    mp_M00_AXI_transactor->ARLEN(M00_AXI_arlen);
    mp_M00_AXI_transactor->ARSIZE(M00_AXI_arsize);
    mp_M00_AXI_transactor->ARBURST(M00_AXI_arburst);
    mp_M00_AXI_transactor->ARLOCK(M00_AXI_arlock);
    mp_M00_AXI_transactor->ARCACHE(M00_AXI_arcache);
    mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
    mp_M00_AXI_transactor->ARQOS(M00_AXI_arqos);
    mp_M00_AXI_transactor->ARUSER(M00_AXI_aruser);
    mp_M00_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_arvalid_converter");
    mp_M00_AXI_arvalid_converter->scalar_in(m_M00_AXI_arvalid_converter_signal);
    mp_M00_AXI_arvalid_converter->vector_out(M00_AXI_arvalid);
    mp_M00_AXI_transactor->ARVALID(m_M00_AXI_arvalid_converter_signal);
    mp_M00_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_arready_converter");
    mp_M00_AXI_arready_converter->vector_in(M00_AXI_arready);
    mp_M00_AXI_arready_converter->scalar_out(m_M00_AXI_arready_converter_signal);
    mp_M00_AXI_transactor->ARREADY(m_M00_AXI_arready_converter_signal);
    mp_M00_AXI_transactor->RID(M00_AXI_rid);
    mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
    mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
    mp_M00_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_rlast_converter");
    mp_M00_AXI_rlast_converter->vector_in(M00_AXI_rlast);
    mp_M00_AXI_rlast_converter->scalar_out(m_M00_AXI_rlast_converter_signal);
    mp_M00_AXI_transactor->RLAST(m_M00_AXI_rlast_converter_signal);
    mp_M00_AXI_transactor->RUSER(M00_AXI_ruser);
    mp_M00_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_rvalid_converter");
    mp_M00_AXI_rvalid_converter->vector_in(M00_AXI_rvalid);
    mp_M00_AXI_rvalid_converter->scalar_out(m_M00_AXI_rvalid_converter_signal);
    mp_M00_AXI_transactor->RVALID(m_M00_AXI_rvalid_converter_signal);
    mp_M00_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_rready_converter");
    mp_M00_AXI_rready_converter->scalar_in(m_M00_AXI_rready_converter_signal);
    mp_M00_AXI_rready_converter->vector_out(M00_AXI_rready);
    mp_M00_AXI_transactor->RREADY(m_M00_AXI_rready_converter_signal);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M01_AXI' transactor parameters
    xsc::common_cpp::properties M01_AXI_transactor_param_props;
    M01_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M01_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "35");
    M01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M01_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M01_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M01_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M01_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M01_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,35,1,1,1,1,1,1>("M01_AXI_transactor", M01_AXI_transactor_param_props);

    // M01_AXI' transactor ports

    mp_M01_AXI_transactor->AWADDR(M01_AXI_awaddr);
    mp_M01_AXI_transactor->AWLEN(M01_AXI_awlen);
    mp_M01_AXI_transactor->AWSIZE(M01_AXI_awsize);
    mp_M01_AXI_transactor->AWBURST(M01_AXI_awburst);
    mp_M01_AXI_transactor->AWPROT(M01_AXI_awprot);
    mp_M01_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_awvalid_converter");
    mp_M01_AXI_awvalid_converter->scalar_in(m_M01_AXI_awvalid_converter_signal);
    mp_M01_AXI_awvalid_converter->vector_out(M01_AXI_awvalid);
    mp_M01_AXI_transactor->AWVALID(m_M01_AXI_awvalid_converter_signal);
    mp_M01_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_awready_converter");
    mp_M01_AXI_awready_converter->vector_in(M01_AXI_awready);
    mp_M01_AXI_awready_converter->scalar_out(m_M01_AXI_awready_converter_signal);
    mp_M01_AXI_transactor->AWREADY(m_M01_AXI_awready_converter_signal);
    mp_M01_AXI_transactor->WDATA(M01_AXI_wdata);
    mp_M01_AXI_transactor->WSTRB(M01_AXI_wstrb);
    mp_M01_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_wlast_converter");
    mp_M01_AXI_wlast_converter->scalar_in(m_M01_AXI_wlast_converter_signal);
    mp_M01_AXI_wlast_converter->vector_out(M01_AXI_wlast);
    mp_M01_AXI_transactor->WLAST(m_M01_AXI_wlast_converter_signal);
    mp_M01_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_wvalid_converter");
    mp_M01_AXI_wvalid_converter->scalar_in(m_M01_AXI_wvalid_converter_signal);
    mp_M01_AXI_wvalid_converter->vector_out(M01_AXI_wvalid);
    mp_M01_AXI_transactor->WVALID(m_M01_AXI_wvalid_converter_signal);
    mp_M01_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_wready_converter");
    mp_M01_AXI_wready_converter->vector_in(M01_AXI_wready);
    mp_M01_AXI_wready_converter->scalar_out(m_M01_AXI_wready_converter_signal);
    mp_M01_AXI_transactor->WREADY(m_M01_AXI_wready_converter_signal);
    mp_M01_AXI_transactor->BRESP(M01_AXI_bresp);
    mp_M01_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_bvalid_converter");
    mp_M01_AXI_bvalid_converter->vector_in(M01_AXI_bvalid);
    mp_M01_AXI_bvalid_converter->scalar_out(m_M01_AXI_bvalid_converter_signal);
    mp_M01_AXI_transactor->BVALID(m_M01_AXI_bvalid_converter_signal);
    mp_M01_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_bready_converter");
    mp_M01_AXI_bready_converter->scalar_in(m_M01_AXI_bready_converter_signal);
    mp_M01_AXI_bready_converter->vector_out(M01_AXI_bready);
    mp_M01_AXI_transactor->BREADY(m_M01_AXI_bready_converter_signal);
    mp_M01_AXI_transactor->ARADDR(M01_AXI_araddr);
    mp_M01_AXI_transactor->ARLEN(M01_AXI_arlen);
    mp_M01_AXI_transactor->ARSIZE(M01_AXI_arsize);
    mp_M01_AXI_transactor->ARBURST(M01_AXI_arburst);
    mp_M01_AXI_transactor->ARPROT(M01_AXI_arprot);
    mp_M01_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_arvalid_converter");
    mp_M01_AXI_arvalid_converter->scalar_in(m_M01_AXI_arvalid_converter_signal);
    mp_M01_AXI_arvalid_converter->vector_out(M01_AXI_arvalid);
    mp_M01_AXI_transactor->ARVALID(m_M01_AXI_arvalid_converter_signal);
    mp_M01_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_arready_converter");
    mp_M01_AXI_arready_converter->vector_in(M01_AXI_arready);
    mp_M01_AXI_arready_converter->scalar_out(m_M01_AXI_arready_converter_signal);
    mp_M01_AXI_transactor->ARREADY(m_M01_AXI_arready_converter_signal);
    mp_M01_AXI_transactor->RDATA(M01_AXI_rdata);
    mp_M01_AXI_transactor->RRESP(M01_AXI_rresp);
    mp_M01_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_rlast_converter");
    mp_M01_AXI_rlast_converter->vector_in(M01_AXI_rlast);
    mp_M01_AXI_rlast_converter->scalar_out(m_M01_AXI_rlast_converter_signal);
    mp_M01_AXI_transactor->RLAST(m_M01_AXI_rlast_converter_signal);
    mp_M01_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_rvalid_converter");
    mp_M01_AXI_rvalid_converter->vector_in(M01_AXI_rvalid);
    mp_M01_AXI_rvalid_converter->scalar_out(m_M01_AXI_rvalid_converter_signal);
    mp_M01_AXI_transactor->RVALID(m_M01_AXI_rvalid_converter_signal);
    mp_M01_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_rready_converter");
    mp_M01_AXI_rready_converter->scalar_in(m_M01_AXI_rready_converter_signal);
    mp_M01_AXI_rready_converter->vector_out(M01_AXI_rready);
    mp_M01_AXI_transactor->RREADY(m_M01_AXI_rready_converter_signal);
    mp_M01_AXI_transactor->CLK(aclk);
    mp_M01_AXI_transactor->RST(aresetn);

    // M01_AXI' transactor sockets

    mp_impl->M01_AXI_tlm_aximm_read_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->M01_AXI_tlm_aximm_write_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M02_AXI' transactor parameters
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M02_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M02_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M02_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,5,32,1,1,32,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);

    // M02_AXI' transactor ports

    mp_M02_AXI_transactor->AWID(M02_AXI_awid);
    mp_M02_AXI_awaddr_converter = new xsc::common::vector2vector_converter<39,34>("M02_AXI_awaddr_converter");
    mp_M02_AXI_awaddr_converter->vector_in(m_M02_AXI_awaddr_converter_signal);
    mp_M02_AXI_awaddr_converter->vector_out(M02_AXI_awaddr);
    mp_M02_AXI_transactor->AWADDR(m_M02_AXI_awaddr_converter_signal);
    mp_M02_AXI_transactor->AWLEN(M02_AXI_awlen);
    mp_M02_AXI_transactor->AWSIZE(M02_AXI_awsize);
    mp_M02_AXI_transactor->AWBURST(M02_AXI_awburst);
    mp_M02_AXI_transactor->AWLOCK(M02_AXI_awlock);
    mp_M02_AXI_transactor->AWCACHE(M02_AXI_awcache);
    mp_M02_AXI_transactor->AWPROT(M02_AXI_awprot);
    mp_M02_AXI_transactor->AWQOS(M02_AXI_awqos);
    mp_M02_AXI_transactor->AWUSER(M02_AXI_awuser);
    mp_M02_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_awvalid_converter");
    mp_M02_AXI_awvalid_converter->scalar_in(m_M02_AXI_awvalid_converter_signal);
    mp_M02_AXI_awvalid_converter->vector_out(M02_AXI_awvalid);
    mp_M02_AXI_transactor->AWVALID(m_M02_AXI_awvalid_converter_signal);
    mp_M02_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_awready_converter");
    mp_M02_AXI_awready_converter->vector_in(M02_AXI_awready);
    mp_M02_AXI_awready_converter->scalar_out(m_M02_AXI_awready_converter_signal);
    mp_M02_AXI_transactor->AWREADY(m_M02_AXI_awready_converter_signal);
    mp_M02_AXI_transactor->WDATA(M02_AXI_wdata);
    mp_M02_AXI_transactor->WSTRB(M02_AXI_wstrb);
    mp_M02_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_wlast_converter");
    mp_M02_AXI_wlast_converter->scalar_in(m_M02_AXI_wlast_converter_signal);
    mp_M02_AXI_wlast_converter->vector_out(M02_AXI_wlast);
    mp_M02_AXI_transactor->WLAST(m_M02_AXI_wlast_converter_signal);
    mp_M02_AXI_transactor->WUSER(M02_AXI_wuser);
    mp_M02_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_wvalid_converter");
    mp_M02_AXI_wvalid_converter->scalar_in(m_M02_AXI_wvalid_converter_signal);
    mp_M02_AXI_wvalid_converter->vector_out(M02_AXI_wvalid);
    mp_M02_AXI_transactor->WVALID(m_M02_AXI_wvalid_converter_signal);
    mp_M02_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_wready_converter");
    mp_M02_AXI_wready_converter->vector_in(M02_AXI_wready);
    mp_M02_AXI_wready_converter->scalar_out(m_M02_AXI_wready_converter_signal);
    mp_M02_AXI_transactor->WREADY(m_M02_AXI_wready_converter_signal);
    mp_M02_AXI_transactor->BID(M02_AXI_bid);
    mp_M02_AXI_transactor->BRESP(M02_AXI_bresp);
    mp_M02_AXI_transactor->BUSER(M02_AXI_buser);
    mp_M02_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_bvalid_converter");
    mp_M02_AXI_bvalid_converter->vector_in(M02_AXI_bvalid);
    mp_M02_AXI_bvalid_converter->scalar_out(m_M02_AXI_bvalid_converter_signal);
    mp_M02_AXI_transactor->BVALID(m_M02_AXI_bvalid_converter_signal);
    mp_M02_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_bready_converter");
    mp_M02_AXI_bready_converter->scalar_in(m_M02_AXI_bready_converter_signal);
    mp_M02_AXI_bready_converter->vector_out(M02_AXI_bready);
    mp_M02_AXI_transactor->BREADY(m_M02_AXI_bready_converter_signal);
    mp_M02_AXI_transactor->ARID(M02_AXI_arid);
    mp_M02_AXI_araddr_converter = new xsc::common::vector2vector_converter<39,34>("M02_AXI_araddr_converter");
    mp_M02_AXI_araddr_converter->vector_in(m_M02_AXI_araddr_converter_signal);
    mp_M02_AXI_araddr_converter->vector_out(M02_AXI_araddr);
    mp_M02_AXI_transactor->ARADDR(m_M02_AXI_araddr_converter_signal);
    mp_M02_AXI_transactor->ARLEN(M02_AXI_arlen);
    mp_M02_AXI_transactor->ARSIZE(M02_AXI_arsize);
    mp_M02_AXI_transactor->ARBURST(M02_AXI_arburst);
    mp_M02_AXI_transactor->ARLOCK(M02_AXI_arlock);
    mp_M02_AXI_transactor->ARCACHE(M02_AXI_arcache);
    mp_M02_AXI_transactor->ARPROT(M02_AXI_arprot);
    mp_M02_AXI_transactor->ARQOS(M02_AXI_arqos);
    mp_M02_AXI_transactor->ARUSER(M02_AXI_aruser);
    mp_M02_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_arvalid_converter");
    mp_M02_AXI_arvalid_converter->scalar_in(m_M02_AXI_arvalid_converter_signal);
    mp_M02_AXI_arvalid_converter->vector_out(M02_AXI_arvalid);
    mp_M02_AXI_transactor->ARVALID(m_M02_AXI_arvalid_converter_signal);
    mp_M02_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_arready_converter");
    mp_M02_AXI_arready_converter->vector_in(M02_AXI_arready);
    mp_M02_AXI_arready_converter->scalar_out(m_M02_AXI_arready_converter_signal);
    mp_M02_AXI_transactor->ARREADY(m_M02_AXI_arready_converter_signal);
    mp_M02_AXI_transactor->RID(M02_AXI_rid);
    mp_M02_AXI_transactor->RDATA(M02_AXI_rdata);
    mp_M02_AXI_transactor->RRESP(M02_AXI_rresp);
    mp_M02_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_rlast_converter");
    mp_M02_AXI_rlast_converter->vector_in(M02_AXI_rlast);
    mp_M02_AXI_rlast_converter->scalar_out(m_M02_AXI_rlast_converter_signal);
    mp_M02_AXI_transactor->RLAST(m_M02_AXI_rlast_converter_signal);
    mp_M02_AXI_transactor->RUSER(M02_AXI_ruser);
    mp_M02_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_rvalid_converter");
    mp_M02_AXI_rvalid_converter->vector_in(M02_AXI_rvalid);
    mp_M02_AXI_rvalid_converter->scalar_out(m_M02_AXI_rvalid_converter_signal);
    mp_M02_AXI_transactor->RVALID(m_M02_AXI_rvalid_converter_signal);
    mp_M02_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_rready_converter");
    mp_M02_AXI_rready_converter->scalar_in(m_M02_AXI_rready_converter_signal);
    mp_M02_AXI_rready_converter->vector_out(M02_AXI_rready);
    mp_M02_AXI_transactor->RREADY(m_M02_AXI_rready_converter_signal);
    mp_M02_AXI_transactor->CLK(aclk);
    mp_M02_AXI_transactor->RST(aresetn);

    // M02_AXI' transactor sockets

    mp_impl->M02_AXI_tlm_aximm_read_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->M02_AXI_tlm_aximm_write_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M03_AXI' transactor parameters
    xsc::common_cpp::properties M03_AXI_transactor_param_props;
    M03_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M03_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M03_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M03_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M03_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M03_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,5,32,1,1,32,1>("M03_AXI_transactor", M03_AXI_transactor_param_props);

    // M03_AXI' transactor ports

    mp_M03_AXI_transactor->AWID(M03_AXI_awid);
    mp_M03_AXI_awaddr_converter = new xsc::common::vector2vector_converter<39,34>("M03_AXI_awaddr_converter");
    mp_M03_AXI_awaddr_converter->vector_in(m_M03_AXI_awaddr_converter_signal);
    mp_M03_AXI_awaddr_converter->vector_out(M03_AXI_awaddr);
    mp_M03_AXI_transactor->AWADDR(m_M03_AXI_awaddr_converter_signal);
    mp_M03_AXI_transactor->AWLEN(M03_AXI_awlen);
    mp_M03_AXI_transactor->AWSIZE(M03_AXI_awsize);
    mp_M03_AXI_transactor->AWBURST(M03_AXI_awburst);
    mp_M03_AXI_transactor->AWLOCK(M03_AXI_awlock);
    mp_M03_AXI_transactor->AWCACHE(M03_AXI_awcache);
    mp_M03_AXI_transactor->AWPROT(M03_AXI_awprot);
    mp_M03_AXI_transactor->AWQOS(M03_AXI_awqos);
    mp_M03_AXI_transactor->AWUSER(M03_AXI_awuser);
    mp_M03_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_awvalid_converter");
    mp_M03_AXI_awvalid_converter->scalar_in(m_M03_AXI_awvalid_converter_signal);
    mp_M03_AXI_awvalid_converter->vector_out(M03_AXI_awvalid);
    mp_M03_AXI_transactor->AWVALID(m_M03_AXI_awvalid_converter_signal);
    mp_M03_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_awready_converter");
    mp_M03_AXI_awready_converter->vector_in(M03_AXI_awready);
    mp_M03_AXI_awready_converter->scalar_out(m_M03_AXI_awready_converter_signal);
    mp_M03_AXI_transactor->AWREADY(m_M03_AXI_awready_converter_signal);
    mp_M03_AXI_transactor->WDATA(M03_AXI_wdata);
    mp_M03_AXI_transactor->WSTRB(M03_AXI_wstrb);
    mp_M03_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_wlast_converter");
    mp_M03_AXI_wlast_converter->scalar_in(m_M03_AXI_wlast_converter_signal);
    mp_M03_AXI_wlast_converter->vector_out(M03_AXI_wlast);
    mp_M03_AXI_transactor->WLAST(m_M03_AXI_wlast_converter_signal);
    mp_M03_AXI_transactor->WUSER(M03_AXI_wuser);
    mp_M03_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_wvalid_converter");
    mp_M03_AXI_wvalid_converter->scalar_in(m_M03_AXI_wvalid_converter_signal);
    mp_M03_AXI_wvalid_converter->vector_out(M03_AXI_wvalid);
    mp_M03_AXI_transactor->WVALID(m_M03_AXI_wvalid_converter_signal);
    mp_M03_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_wready_converter");
    mp_M03_AXI_wready_converter->vector_in(M03_AXI_wready);
    mp_M03_AXI_wready_converter->scalar_out(m_M03_AXI_wready_converter_signal);
    mp_M03_AXI_transactor->WREADY(m_M03_AXI_wready_converter_signal);
    mp_M03_AXI_transactor->BID(M03_AXI_bid);
    mp_M03_AXI_transactor->BRESP(M03_AXI_bresp);
    mp_M03_AXI_transactor->BUSER(M03_AXI_buser);
    mp_M03_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_bvalid_converter");
    mp_M03_AXI_bvalid_converter->vector_in(M03_AXI_bvalid);
    mp_M03_AXI_bvalid_converter->scalar_out(m_M03_AXI_bvalid_converter_signal);
    mp_M03_AXI_transactor->BVALID(m_M03_AXI_bvalid_converter_signal);
    mp_M03_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_bready_converter");
    mp_M03_AXI_bready_converter->scalar_in(m_M03_AXI_bready_converter_signal);
    mp_M03_AXI_bready_converter->vector_out(M03_AXI_bready);
    mp_M03_AXI_transactor->BREADY(m_M03_AXI_bready_converter_signal);
    mp_M03_AXI_transactor->ARID(M03_AXI_arid);
    mp_M03_AXI_araddr_converter = new xsc::common::vector2vector_converter<39,34>("M03_AXI_araddr_converter");
    mp_M03_AXI_araddr_converter->vector_in(m_M03_AXI_araddr_converter_signal);
    mp_M03_AXI_araddr_converter->vector_out(M03_AXI_araddr);
    mp_M03_AXI_transactor->ARADDR(m_M03_AXI_araddr_converter_signal);
    mp_M03_AXI_transactor->ARLEN(M03_AXI_arlen);
    mp_M03_AXI_transactor->ARSIZE(M03_AXI_arsize);
    mp_M03_AXI_transactor->ARBURST(M03_AXI_arburst);
    mp_M03_AXI_transactor->ARLOCK(M03_AXI_arlock);
    mp_M03_AXI_transactor->ARCACHE(M03_AXI_arcache);
    mp_M03_AXI_transactor->ARPROT(M03_AXI_arprot);
    mp_M03_AXI_transactor->ARQOS(M03_AXI_arqos);
    mp_M03_AXI_transactor->ARUSER(M03_AXI_aruser);
    mp_M03_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_arvalid_converter");
    mp_M03_AXI_arvalid_converter->scalar_in(m_M03_AXI_arvalid_converter_signal);
    mp_M03_AXI_arvalid_converter->vector_out(M03_AXI_arvalid);
    mp_M03_AXI_transactor->ARVALID(m_M03_AXI_arvalid_converter_signal);
    mp_M03_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_arready_converter");
    mp_M03_AXI_arready_converter->vector_in(M03_AXI_arready);
    mp_M03_AXI_arready_converter->scalar_out(m_M03_AXI_arready_converter_signal);
    mp_M03_AXI_transactor->ARREADY(m_M03_AXI_arready_converter_signal);
    mp_M03_AXI_transactor->RID(M03_AXI_rid);
    mp_M03_AXI_transactor->RDATA(M03_AXI_rdata);
    mp_M03_AXI_transactor->RRESP(M03_AXI_rresp);
    mp_M03_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_rlast_converter");
    mp_M03_AXI_rlast_converter->vector_in(M03_AXI_rlast);
    mp_M03_AXI_rlast_converter->scalar_out(m_M03_AXI_rlast_converter_signal);
    mp_M03_AXI_transactor->RLAST(m_M03_AXI_rlast_converter_signal);
    mp_M03_AXI_transactor->RUSER(M03_AXI_ruser);
    mp_M03_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_rvalid_converter");
    mp_M03_AXI_rvalid_converter->vector_in(M03_AXI_rvalid);
    mp_M03_AXI_rvalid_converter->scalar_out(m_M03_AXI_rvalid_converter_signal);
    mp_M03_AXI_transactor->RVALID(m_M03_AXI_rvalid_converter_signal);
    mp_M03_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_rready_converter");
    mp_M03_AXI_rready_converter->scalar_in(m_M03_AXI_rready_converter_signal);
    mp_M03_AXI_rready_converter->vector_out(M03_AXI_rready);
    mp_M03_AXI_transactor->RREADY(m_M03_AXI_rready_converter_signal);
    mp_M03_AXI_transactor->CLK(aclk);
    mp_M03_AXI_transactor->RST(aresetn);

    // M03_AXI' transactor sockets

    mp_impl->M03_AXI_tlm_aximm_read_socket->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_impl->M03_AXI_tlm_aximm_write_socket->bind(*(mp_M03_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
pfm_dynamic_memory_subsystem_0::pfm_dynamic_memory_subsystem_0(const sc_core::sc_module_name& nm) : pfm_dynamic_memory_subsystem_0_sc(nm), aclk("aclk"), aclk1("aclk1"), aresetn("aresetn"), S00_AXI_awid("S00_AXI_awid"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awlen("S00_AXI_awlen"), S00_AXI_awsize("S00_AXI_awsize"), S00_AXI_awburst("S00_AXI_awburst"), S00_AXI_awlock("S00_AXI_awlock"), S00_AXI_awcache("S00_AXI_awcache"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awqos("S00_AXI_awqos"), S00_AXI_awuser("S00_AXI_awuser"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wlast("S00_AXI_wlast"), S00_AXI_wuser("S00_AXI_wuser"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bid("S00_AXI_bid"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_buser("S00_AXI_buser"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_arid("S00_AXI_arid"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_aruser("S00_AXI_aruser"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rid("S00_AXI_rid"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_ruser("S00_AXI_ruser"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), S01_AXI_awid("S01_AXI_awid"), S01_AXI_awaddr("S01_AXI_awaddr"), S01_AXI_awlen("S01_AXI_awlen"), S01_AXI_awsize("S01_AXI_awsize"), S01_AXI_awburst("S01_AXI_awburst"), S01_AXI_awlock("S01_AXI_awlock"), S01_AXI_awcache("S01_AXI_awcache"), S01_AXI_awprot("S01_AXI_awprot"), S01_AXI_awqos("S01_AXI_awqos"), S01_AXI_awuser("S01_AXI_awuser"), S01_AXI_awvalid("S01_AXI_awvalid"), S01_AXI_awready("S01_AXI_awready"), S01_AXI_wdata("S01_AXI_wdata"), S01_AXI_wstrb("S01_AXI_wstrb"), S01_AXI_wlast("S01_AXI_wlast"), S01_AXI_wuser("S01_AXI_wuser"), S01_AXI_wvalid("S01_AXI_wvalid"), S01_AXI_wready("S01_AXI_wready"), S01_AXI_bid("S01_AXI_bid"), S01_AXI_bresp("S01_AXI_bresp"), S01_AXI_buser("S01_AXI_buser"), S01_AXI_bvalid("S01_AXI_bvalid"), S01_AXI_bready("S01_AXI_bready"), S01_AXI_arid("S01_AXI_arid"), S01_AXI_araddr("S01_AXI_araddr"), S01_AXI_arlen("S01_AXI_arlen"), S01_AXI_arsize("S01_AXI_arsize"), S01_AXI_arburst("S01_AXI_arburst"), S01_AXI_arlock("S01_AXI_arlock"), S01_AXI_arcache("S01_AXI_arcache"), S01_AXI_arprot("S01_AXI_arprot"), S01_AXI_arqos("S01_AXI_arqos"), S01_AXI_aruser("S01_AXI_aruser"), S01_AXI_arvalid("S01_AXI_arvalid"), S01_AXI_arready("S01_AXI_arready"), S01_AXI_rid("S01_AXI_rid"), S01_AXI_rdata("S01_AXI_rdata"), S01_AXI_rresp("S01_AXI_rresp"), S01_AXI_rlast("S01_AXI_rlast"), S01_AXI_ruser("S01_AXI_ruser"), S01_AXI_rvalid("S01_AXI_rvalid"), S01_AXI_rready("S01_AXI_rready"), S02_AXI_awid("S02_AXI_awid"), S02_AXI_awaddr("S02_AXI_awaddr"), S02_AXI_awlen("S02_AXI_awlen"), S02_AXI_awsize("S02_AXI_awsize"), S02_AXI_awburst("S02_AXI_awburst"), S02_AXI_awlock("S02_AXI_awlock"), S02_AXI_awcache("S02_AXI_awcache"), S02_AXI_awprot("S02_AXI_awprot"), S02_AXI_awqos("S02_AXI_awqos"), S02_AXI_awuser("S02_AXI_awuser"), S02_AXI_awvalid("S02_AXI_awvalid"), S02_AXI_awready("S02_AXI_awready"), S02_AXI_wdata("S02_AXI_wdata"), S02_AXI_wstrb("S02_AXI_wstrb"), S02_AXI_wlast("S02_AXI_wlast"), S02_AXI_wuser("S02_AXI_wuser"), S02_AXI_wvalid("S02_AXI_wvalid"), S02_AXI_wready("S02_AXI_wready"), S02_AXI_bid("S02_AXI_bid"), S02_AXI_bresp("S02_AXI_bresp"), S02_AXI_buser("S02_AXI_buser"), S02_AXI_bvalid("S02_AXI_bvalid"), S02_AXI_bready("S02_AXI_bready"), S02_AXI_arid("S02_AXI_arid"), S02_AXI_araddr("S02_AXI_araddr"), S02_AXI_arlen("S02_AXI_arlen"), S02_AXI_arsize("S02_AXI_arsize"), S02_AXI_arburst("S02_AXI_arburst"), S02_AXI_arlock("S02_AXI_arlock"), S02_AXI_arcache("S02_AXI_arcache"), S02_AXI_arprot("S02_AXI_arprot"), S02_AXI_arqos("S02_AXI_arqos"), S02_AXI_aruser("S02_AXI_aruser"), S02_AXI_arvalid("S02_AXI_arvalid"), S02_AXI_arready("S02_AXI_arready"), S02_AXI_rid("S02_AXI_rid"), S02_AXI_rdata("S02_AXI_rdata"), S02_AXI_rresp("S02_AXI_rresp"), S02_AXI_rlast("S02_AXI_rlast"), S02_AXI_ruser("S02_AXI_ruser"), S02_AXI_rvalid("S02_AXI_rvalid"), S02_AXI_rready("S02_AXI_rready"), S03_AXI_awid("S03_AXI_awid"), S03_AXI_awaddr("S03_AXI_awaddr"), S03_AXI_awlen("S03_AXI_awlen"), S03_AXI_awsize("S03_AXI_awsize"), S03_AXI_awburst("S03_AXI_awburst"), S03_AXI_awlock("S03_AXI_awlock"), S03_AXI_awcache("S03_AXI_awcache"), S03_AXI_awprot("S03_AXI_awprot"), S03_AXI_awqos("S03_AXI_awqos"), S03_AXI_awuser("S03_AXI_awuser"), S03_AXI_awvalid("S03_AXI_awvalid"), S03_AXI_awready("S03_AXI_awready"), S03_AXI_wdata("S03_AXI_wdata"), S03_AXI_wstrb("S03_AXI_wstrb"), S03_AXI_wlast("S03_AXI_wlast"), S03_AXI_wuser("S03_AXI_wuser"), S03_AXI_wvalid("S03_AXI_wvalid"), S03_AXI_wready("S03_AXI_wready"), S03_AXI_bid("S03_AXI_bid"), S03_AXI_bresp("S03_AXI_bresp"), S03_AXI_buser("S03_AXI_buser"), S03_AXI_bvalid("S03_AXI_bvalid"), S03_AXI_bready("S03_AXI_bready"), S03_AXI_arid("S03_AXI_arid"), S03_AXI_araddr("S03_AXI_araddr"), S03_AXI_arlen("S03_AXI_arlen"), S03_AXI_arsize("S03_AXI_arsize"), S03_AXI_arburst("S03_AXI_arburst"), S03_AXI_arlock("S03_AXI_arlock"), S03_AXI_arcache("S03_AXI_arcache"), S03_AXI_arprot("S03_AXI_arprot"), S03_AXI_arqos("S03_AXI_arqos"), S03_AXI_aruser("S03_AXI_aruser"), S03_AXI_arvalid("S03_AXI_arvalid"), S03_AXI_arready("S03_AXI_arready"), S03_AXI_rid("S03_AXI_rid"), S03_AXI_rdata("S03_AXI_rdata"), S03_AXI_rresp("S03_AXI_rresp"), S03_AXI_rlast("S03_AXI_rlast"), S03_AXI_ruser("S03_AXI_ruser"), S03_AXI_rvalid("S03_AXI_rvalid"), S03_AXI_rready("S03_AXI_rready"), S04_AXI_awaddr("S04_AXI_awaddr"), S04_AXI_awlen("S04_AXI_awlen"), S04_AXI_awsize("S04_AXI_awsize"), S04_AXI_awlock("S04_AXI_awlock"), S04_AXI_awcache("S04_AXI_awcache"), S04_AXI_awprot("S04_AXI_awprot"), S04_AXI_awregion("S04_AXI_awregion"), S04_AXI_awqos("S04_AXI_awqos"), S04_AXI_awvalid("S04_AXI_awvalid"), S04_AXI_awready("S04_AXI_awready"), S04_AXI_wdata("S04_AXI_wdata"), S04_AXI_wstrb("S04_AXI_wstrb"), S04_AXI_wlast("S04_AXI_wlast"), S04_AXI_wvalid("S04_AXI_wvalid"), S04_AXI_wready("S04_AXI_wready"), S04_AXI_bresp("S04_AXI_bresp"), S04_AXI_bvalid("S04_AXI_bvalid"), S04_AXI_bready("S04_AXI_bready"), S04_AXI_araddr("S04_AXI_araddr"), S04_AXI_arlen("S04_AXI_arlen"), S04_AXI_arsize("S04_AXI_arsize"), S04_AXI_arlock("S04_AXI_arlock"), S04_AXI_arcache("S04_AXI_arcache"), S04_AXI_arprot("S04_AXI_arprot"), S04_AXI_arregion("S04_AXI_arregion"), S04_AXI_arqos("S04_AXI_arqos"), S04_AXI_arvalid("S04_AXI_arvalid"), S04_AXI_arready("S04_AXI_arready"), S04_AXI_rdata("S04_AXI_rdata"), S04_AXI_rresp("S04_AXI_rresp"), S04_AXI_rlast("S04_AXI_rlast"), S04_AXI_rvalid("S04_AXI_rvalid"), S04_AXI_rready("S04_AXI_rready"), ddr4_mem_calib_complete("ddr4_mem_calib_complete"), M00_AXI_awid("M00_AXI_awid"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awlen("M00_AXI_awlen"), M00_AXI_awsize("M00_AXI_awsize"), M00_AXI_awburst("M00_AXI_awburst"), M00_AXI_awlock("M00_AXI_awlock"), M00_AXI_awcache("M00_AXI_awcache"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awqos("M00_AXI_awqos"), M00_AXI_awuser("M00_AXI_awuser"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wlast("M00_AXI_wlast"), M00_AXI_wuser("M00_AXI_wuser"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bid("M00_AXI_bid"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_buser("M00_AXI_buser"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_arid("M00_AXI_arid"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arlen("M00_AXI_arlen"), M00_AXI_arsize("M00_AXI_arsize"), M00_AXI_arburst("M00_AXI_arburst"), M00_AXI_arlock("M00_AXI_arlock"), M00_AXI_arcache("M00_AXI_arcache"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arqos("M00_AXI_arqos"), M00_AXI_aruser("M00_AXI_aruser"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rid("M00_AXI_rid"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rlast("M00_AXI_rlast"), M00_AXI_ruser("M00_AXI_ruser"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready"), M01_AXI_awaddr("M01_AXI_awaddr"), M01_AXI_awlen("M01_AXI_awlen"), M01_AXI_awsize("M01_AXI_awsize"), M01_AXI_awburst("M01_AXI_awburst"), M01_AXI_awprot("M01_AXI_awprot"), M01_AXI_awvalid("M01_AXI_awvalid"), M01_AXI_awready("M01_AXI_awready"), M01_AXI_wdata("M01_AXI_wdata"), M01_AXI_wstrb("M01_AXI_wstrb"), M01_AXI_wlast("M01_AXI_wlast"), M01_AXI_wvalid("M01_AXI_wvalid"), M01_AXI_wready("M01_AXI_wready"), M01_AXI_bresp("M01_AXI_bresp"), M01_AXI_bvalid("M01_AXI_bvalid"), M01_AXI_bready("M01_AXI_bready"), M01_AXI_araddr("M01_AXI_araddr"), M01_AXI_arlen("M01_AXI_arlen"), M01_AXI_arsize("M01_AXI_arsize"), M01_AXI_arburst("M01_AXI_arburst"), M01_AXI_arprot("M01_AXI_arprot"), M01_AXI_arvalid("M01_AXI_arvalid"), M01_AXI_arready("M01_AXI_arready"), M01_AXI_rdata("M01_AXI_rdata"), M01_AXI_rresp("M01_AXI_rresp"), M01_AXI_rlast("M01_AXI_rlast"), M01_AXI_rvalid("M01_AXI_rvalid"), M01_AXI_rready("M01_AXI_rready"), M02_AXI_awid("M02_AXI_awid"), M02_AXI_awaddr("M02_AXI_awaddr"), M02_AXI_awlen("M02_AXI_awlen"), M02_AXI_awsize("M02_AXI_awsize"), M02_AXI_awburst("M02_AXI_awburst"), M02_AXI_awlock("M02_AXI_awlock"), M02_AXI_awcache("M02_AXI_awcache"), M02_AXI_awprot("M02_AXI_awprot"), M02_AXI_awqos("M02_AXI_awqos"), M02_AXI_awuser("M02_AXI_awuser"), M02_AXI_awvalid("M02_AXI_awvalid"), M02_AXI_awready("M02_AXI_awready"), M02_AXI_wdata("M02_AXI_wdata"), M02_AXI_wstrb("M02_AXI_wstrb"), M02_AXI_wlast("M02_AXI_wlast"), M02_AXI_wuser("M02_AXI_wuser"), M02_AXI_wvalid("M02_AXI_wvalid"), M02_AXI_wready("M02_AXI_wready"), M02_AXI_bid("M02_AXI_bid"), M02_AXI_bresp("M02_AXI_bresp"), M02_AXI_buser("M02_AXI_buser"), M02_AXI_bvalid("M02_AXI_bvalid"), M02_AXI_bready("M02_AXI_bready"), M02_AXI_arid("M02_AXI_arid"), M02_AXI_araddr("M02_AXI_araddr"), M02_AXI_arlen("M02_AXI_arlen"), M02_AXI_arsize("M02_AXI_arsize"), M02_AXI_arburst("M02_AXI_arburst"), M02_AXI_arlock("M02_AXI_arlock"), M02_AXI_arcache("M02_AXI_arcache"), M02_AXI_arprot("M02_AXI_arprot"), M02_AXI_arqos("M02_AXI_arqos"), M02_AXI_aruser("M02_AXI_aruser"), M02_AXI_arvalid("M02_AXI_arvalid"), M02_AXI_arready("M02_AXI_arready"), M02_AXI_rid("M02_AXI_rid"), M02_AXI_rdata("M02_AXI_rdata"), M02_AXI_rresp("M02_AXI_rresp"), M02_AXI_rlast("M02_AXI_rlast"), M02_AXI_ruser("M02_AXI_ruser"), M02_AXI_rvalid("M02_AXI_rvalid"), M02_AXI_rready("M02_AXI_rready"), M03_AXI_awid("M03_AXI_awid"), M03_AXI_awaddr("M03_AXI_awaddr"), M03_AXI_awlen("M03_AXI_awlen"), M03_AXI_awsize("M03_AXI_awsize"), M03_AXI_awburst("M03_AXI_awburst"), M03_AXI_awlock("M03_AXI_awlock"), M03_AXI_awcache("M03_AXI_awcache"), M03_AXI_awprot("M03_AXI_awprot"), M03_AXI_awqos("M03_AXI_awqos"), M03_AXI_awuser("M03_AXI_awuser"), M03_AXI_awvalid("M03_AXI_awvalid"), M03_AXI_awready("M03_AXI_awready"), M03_AXI_wdata("M03_AXI_wdata"), M03_AXI_wstrb("M03_AXI_wstrb"), M03_AXI_wlast("M03_AXI_wlast"), M03_AXI_wuser("M03_AXI_wuser"), M03_AXI_wvalid("M03_AXI_wvalid"), M03_AXI_wready("M03_AXI_wready"), M03_AXI_bid("M03_AXI_bid"), M03_AXI_bresp("M03_AXI_bresp"), M03_AXI_buser("M03_AXI_buser"), M03_AXI_bvalid("M03_AXI_bvalid"), M03_AXI_bready("M03_AXI_bready"), M03_AXI_arid("M03_AXI_arid"), M03_AXI_araddr("M03_AXI_araddr"), M03_AXI_arlen("M03_AXI_arlen"), M03_AXI_arsize("M03_AXI_arsize"), M03_AXI_arburst("M03_AXI_arburst"), M03_AXI_arlock("M03_AXI_arlock"), M03_AXI_arcache("M03_AXI_arcache"), M03_AXI_arprot("M03_AXI_arprot"), M03_AXI_arqos("M03_AXI_arqos"), M03_AXI_aruser("M03_AXI_aruser"), M03_AXI_arvalid("M03_AXI_arvalid"), M03_AXI_arready("M03_AXI_arready"), M03_AXI_rid("M03_AXI_rid"), M03_AXI_rdata("M03_AXI_rdata"), M03_AXI_rresp("M03_AXI_rresp"), M03_AXI_rlast("M03_AXI_rlast"), M03_AXI_ruser("M03_AXI_ruser"), M03_AXI_rvalid("M03_AXI_rvalid"), M03_AXI_rready("M03_AXI_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aclk1(aclk1);
  mp_impl->aresetn(aresetn);
  mp_impl->ddr4_mem_calib_complete(ddr4_mem_calib_complete);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_awvalid_converter = NULL;
  mp_S00_AXI_awready_converter = NULL;
  mp_S00_AXI_wlast_converter = NULL;
  mp_S00_AXI_wvalid_converter = NULL;
  mp_S00_AXI_wready_converter = NULL;
  mp_S00_AXI_bvalid_converter = NULL;
  mp_S00_AXI_bready_converter = NULL;
  mp_S00_AXI_arvalid_converter = NULL;
  mp_S00_AXI_arready_converter = NULL;
  mp_S00_AXI_rlast_converter = NULL;
  mp_S00_AXI_rvalid_converter = NULL;
  mp_S00_AXI_rready_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S01_AXI_awvalid_converter = NULL;
  mp_S01_AXI_awready_converter = NULL;
  mp_S01_AXI_wlast_converter = NULL;
  mp_S01_AXI_wvalid_converter = NULL;
  mp_S01_AXI_wready_converter = NULL;
  mp_S01_AXI_bvalid_converter = NULL;
  mp_S01_AXI_bready_converter = NULL;
  mp_S01_AXI_arvalid_converter = NULL;
  mp_S01_AXI_arready_converter = NULL;
  mp_S01_AXI_rlast_converter = NULL;
  mp_S01_AXI_rvalid_converter = NULL;
  mp_S01_AXI_rready_converter = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S02_AXI_awvalid_converter = NULL;
  mp_S02_AXI_awready_converter = NULL;
  mp_S02_AXI_wlast_converter = NULL;
  mp_S02_AXI_wvalid_converter = NULL;
  mp_S02_AXI_wready_converter = NULL;
  mp_S02_AXI_bvalid_converter = NULL;
  mp_S02_AXI_bready_converter = NULL;
  mp_S02_AXI_arvalid_converter = NULL;
  mp_S02_AXI_arready_converter = NULL;
  mp_S02_AXI_rlast_converter = NULL;
  mp_S02_AXI_rvalid_converter = NULL;
  mp_S02_AXI_rready_converter = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S03_AXI_awvalid_converter = NULL;
  mp_S03_AXI_awready_converter = NULL;
  mp_S03_AXI_wlast_converter = NULL;
  mp_S03_AXI_wvalid_converter = NULL;
  mp_S03_AXI_wready_converter = NULL;
  mp_S03_AXI_bvalid_converter = NULL;
  mp_S03_AXI_bready_converter = NULL;
  mp_S03_AXI_arvalid_converter = NULL;
  mp_S03_AXI_arready_converter = NULL;
  mp_S03_AXI_rlast_converter = NULL;
  mp_S03_AXI_rvalid_converter = NULL;
  mp_S03_AXI_rready_converter = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_S04_AXI_awvalid_converter = NULL;
  mp_S04_AXI_awready_converter = NULL;
  mp_S04_AXI_wlast_converter = NULL;
  mp_S04_AXI_wvalid_converter = NULL;
  mp_S04_AXI_wready_converter = NULL;
  mp_S04_AXI_bvalid_converter = NULL;
  mp_S04_AXI_bready_converter = NULL;
  mp_S04_AXI_arvalid_converter = NULL;
  mp_S04_AXI_arready_converter = NULL;
  mp_S04_AXI_rlast_converter = NULL;
  mp_S04_AXI_rvalid_converter = NULL;
  mp_S04_AXI_rready_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M00_AXI_awaddr_converter = NULL;
  mp_M00_AXI_awvalid_converter = NULL;
  mp_M00_AXI_awready_converter = NULL;
  mp_M00_AXI_wlast_converter = NULL;
  mp_M00_AXI_wvalid_converter = NULL;
  mp_M00_AXI_wready_converter = NULL;
  mp_M00_AXI_bvalid_converter = NULL;
  mp_M00_AXI_bready_converter = NULL;
  mp_M00_AXI_araddr_converter = NULL;
  mp_M00_AXI_arvalid_converter = NULL;
  mp_M00_AXI_arready_converter = NULL;
  mp_M00_AXI_rlast_converter = NULL;
  mp_M00_AXI_rvalid_converter = NULL;
  mp_M00_AXI_rready_converter = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_M01_AXI_awvalid_converter = NULL;
  mp_M01_AXI_awready_converter = NULL;
  mp_M01_AXI_wlast_converter = NULL;
  mp_M01_AXI_wvalid_converter = NULL;
  mp_M01_AXI_wready_converter = NULL;
  mp_M01_AXI_bvalid_converter = NULL;
  mp_M01_AXI_bready_converter = NULL;
  mp_M01_AXI_arvalid_converter = NULL;
  mp_M01_AXI_arready_converter = NULL;
  mp_M01_AXI_rlast_converter = NULL;
  mp_M01_AXI_rvalid_converter = NULL;
  mp_M01_AXI_rready_converter = NULL;
  mp_M02_AXI_transactor = NULL;
  mp_M02_AXI_awaddr_converter = NULL;
  mp_M02_AXI_awvalid_converter = NULL;
  mp_M02_AXI_awready_converter = NULL;
  mp_M02_AXI_wlast_converter = NULL;
  mp_M02_AXI_wvalid_converter = NULL;
  mp_M02_AXI_wready_converter = NULL;
  mp_M02_AXI_bvalid_converter = NULL;
  mp_M02_AXI_bready_converter = NULL;
  mp_M02_AXI_araddr_converter = NULL;
  mp_M02_AXI_arvalid_converter = NULL;
  mp_M02_AXI_arready_converter = NULL;
  mp_M02_AXI_rlast_converter = NULL;
  mp_M02_AXI_rvalid_converter = NULL;
  mp_M02_AXI_rready_converter = NULL;
  mp_M03_AXI_transactor = NULL;
  mp_M03_AXI_awaddr_converter = NULL;
  mp_M03_AXI_awvalid_converter = NULL;
  mp_M03_AXI_awready_converter = NULL;
  mp_M03_AXI_wlast_converter = NULL;
  mp_M03_AXI_wvalid_converter = NULL;
  mp_M03_AXI_wready_converter = NULL;
  mp_M03_AXI_bvalid_converter = NULL;
  mp_M03_AXI_bready_converter = NULL;
  mp_M03_AXI_araddr_converter = NULL;
  mp_M03_AXI_arvalid_converter = NULL;
  mp_M03_AXI_arready_converter = NULL;
  mp_M03_AXI_rlast_converter = NULL;
  mp_M03_AXI_rvalid_converter = NULL;
  mp_M03_AXI_rready_converter = NULL;

  // initialize socket stubs

}

void pfm_dynamic_memory_subsystem_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
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
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWID(S00_AXI_awid);
    mp_S00_AXI_transactor->AWADDR(S00_AXI_awaddr);
    mp_S00_AXI_transactor->AWLEN(S00_AXI_awlen);
    mp_S00_AXI_transactor->AWSIZE(S00_AXI_awsize);
    mp_S00_AXI_transactor->AWBURST(S00_AXI_awburst);
    mp_S00_AXI_transactor->AWLOCK(S00_AXI_awlock);
    mp_S00_AXI_transactor->AWCACHE(S00_AXI_awcache);
    mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
    mp_S00_AXI_transactor->AWQOS(S00_AXI_awqos);
    mp_S00_AXI_transactor->AWUSER(S00_AXI_awuser);
    mp_S00_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awvalid_converter");
    mp_S00_AXI_awvalid_converter->vector_in(S00_AXI_awvalid);
    mp_S00_AXI_awvalid_converter->scalar_out(m_S00_AXI_awvalid_converter_signal);
    mp_S00_AXI_transactor->AWVALID(m_S00_AXI_awvalid_converter_signal);
    mp_S00_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_awready_converter");
    mp_S00_AXI_awready_converter->scalar_in(m_S00_AXI_awready_converter_signal);
    mp_S00_AXI_awready_converter->vector_out(S00_AXI_awready);
    mp_S00_AXI_transactor->AWREADY(m_S00_AXI_awready_converter_signal);
    mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
    mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
    mp_S00_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wlast_converter");
    mp_S00_AXI_wlast_converter->vector_in(S00_AXI_wlast);
    mp_S00_AXI_wlast_converter->scalar_out(m_S00_AXI_wlast_converter_signal);
    mp_S00_AXI_transactor->WLAST(m_S00_AXI_wlast_converter_signal);
    mp_S00_AXI_transactor->WUSER(S00_AXI_wuser);
    mp_S00_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wvalid_converter");
    mp_S00_AXI_wvalid_converter->vector_in(S00_AXI_wvalid);
    mp_S00_AXI_wvalid_converter->scalar_out(m_S00_AXI_wvalid_converter_signal);
    mp_S00_AXI_transactor->WVALID(m_S00_AXI_wvalid_converter_signal);
    mp_S00_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_wready_converter");
    mp_S00_AXI_wready_converter->scalar_in(m_S00_AXI_wready_converter_signal);
    mp_S00_AXI_wready_converter->vector_out(S00_AXI_wready);
    mp_S00_AXI_transactor->WREADY(m_S00_AXI_wready_converter_signal);
    mp_S00_AXI_transactor->BID(S00_AXI_bid);
    mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
    mp_S00_AXI_transactor->BUSER(S00_AXI_buser);
    mp_S00_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_bvalid_converter");
    mp_S00_AXI_bvalid_converter->scalar_in(m_S00_AXI_bvalid_converter_signal);
    mp_S00_AXI_bvalid_converter->vector_out(S00_AXI_bvalid);
    mp_S00_AXI_transactor->BVALID(m_S00_AXI_bvalid_converter_signal);
    mp_S00_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_bready_converter");
    mp_S00_AXI_bready_converter->vector_in(S00_AXI_bready);
    mp_S00_AXI_bready_converter->scalar_out(m_S00_AXI_bready_converter_signal);
    mp_S00_AXI_transactor->BREADY(m_S00_AXI_bready_converter_signal);
    mp_S00_AXI_transactor->ARID(S00_AXI_arid);
    mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
    mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
    mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
    mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
    mp_S00_AXI_transactor->ARLOCK(S00_AXI_arlock);
    mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
    mp_S00_AXI_transactor->ARUSER(S00_AXI_aruser);
    mp_S00_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arvalid_converter");
    mp_S00_AXI_arvalid_converter->vector_in(S00_AXI_arvalid);
    mp_S00_AXI_arvalid_converter->scalar_out(m_S00_AXI_arvalid_converter_signal);
    mp_S00_AXI_transactor->ARVALID(m_S00_AXI_arvalid_converter_signal);
    mp_S00_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_arready_converter");
    mp_S00_AXI_arready_converter->scalar_in(m_S00_AXI_arready_converter_signal);
    mp_S00_AXI_arready_converter->vector_out(S00_AXI_arready);
    mp_S00_AXI_transactor->ARREADY(m_S00_AXI_arready_converter_signal);
    mp_S00_AXI_transactor->RID(S00_AXI_rid);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rlast_converter");
    mp_S00_AXI_rlast_converter->scalar_in(m_S00_AXI_rlast_converter_signal);
    mp_S00_AXI_rlast_converter->vector_out(S00_AXI_rlast);
    mp_S00_AXI_transactor->RLAST(m_S00_AXI_rlast_converter_signal);
    mp_S00_AXI_transactor->RUSER(S00_AXI_ruser);
    mp_S00_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rvalid_converter");
    mp_S00_AXI_rvalid_converter->scalar_in(m_S00_AXI_rvalid_converter_signal);
    mp_S00_AXI_rvalid_converter->vector_out(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RVALID(m_S00_AXI_rvalid_converter_signal);
    mp_S00_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_rready_converter");
    mp_S00_AXI_rready_converter->vector_in(S00_AXI_rready);
    mp_S00_AXI_rready_converter->scalar_out(m_S00_AXI_rready_converter_signal);
    mp_S00_AXI_transactor->RREADY(m_S00_AXI_rready_converter_signal);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S01_AXI' transactor parameters
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "35");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S01_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);

    // S01_AXI' transactor ports

    mp_S01_AXI_transactor->AWID(S01_AXI_awid);
    mp_S01_AXI_transactor->AWADDR(S01_AXI_awaddr);
    mp_S01_AXI_transactor->AWLEN(S01_AXI_awlen);
    mp_S01_AXI_transactor->AWSIZE(S01_AXI_awsize);
    mp_S01_AXI_transactor->AWBURST(S01_AXI_awburst);
    mp_S01_AXI_transactor->AWLOCK(S01_AXI_awlock);
    mp_S01_AXI_transactor->AWCACHE(S01_AXI_awcache);
    mp_S01_AXI_transactor->AWPROT(S01_AXI_awprot);
    mp_S01_AXI_transactor->AWQOS(S01_AXI_awqos);
    mp_S01_AXI_transactor->AWUSER(S01_AXI_awuser);
    mp_S01_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_awvalid_converter");
    mp_S01_AXI_awvalid_converter->vector_in(S01_AXI_awvalid);
    mp_S01_AXI_awvalid_converter->scalar_out(m_S01_AXI_awvalid_converter_signal);
    mp_S01_AXI_transactor->AWVALID(m_S01_AXI_awvalid_converter_signal);
    mp_S01_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_awready_converter");
    mp_S01_AXI_awready_converter->scalar_in(m_S01_AXI_awready_converter_signal);
    mp_S01_AXI_awready_converter->vector_out(S01_AXI_awready);
    mp_S01_AXI_transactor->AWREADY(m_S01_AXI_awready_converter_signal);
    mp_S01_AXI_transactor->WDATA(S01_AXI_wdata);
    mp_S01_AXI_transactor->WSTRB(S01_AXI_wstrb);
    mp_S01_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_wlast_converter");
    mp_S01_AXI_wlast_converter->vector_in(S01_AXI_wlast);
    mp_S01_AXI_wlast_converter->scalar_out(m_S01_AXI_wlast_converter_signal);
    mp_S01_AXI_transactor->WLAST(m_S01_AXI_wlast_converter_signal);
    mp_S01_AXI_transactor->WUSER(S01_AXI_wuser);
    mp_S01_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_wvalid_converter");
    mp_S01_AXI_wvalid_converter->vector_in(S01_AXI_wvalid);
    mp_S01_AXI_wvalid_converter->scalar_out(m_S01_AXI_wvalid_converter_signal);
    mp_S01_AXI_transactor->WVALID(m_S01_AXI_wvalid_converter_signal);
    mp_S01_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_wready_converter");
    mp_S01_AXI_wready_converter->scalar_in(m_S01_AXI_wready_converter_signal);
    mp_S01_AXI_wready_converter->vector_out(S01_AXI_wready);
    mp_S01_AXI_transactor->WREADY(m_S01_AXI_wready_converter_signal);
    mp_S01_AXI_transactor->BID(S01_AXI_bid);
    mp_S01_AXI_transactor->BRESP(S01_AXI_bresp);
    mp_S01_AXI_transactor->BUSER(S01_AXI_buser);
    mp_S01_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_bvalid_converter");
    mp_S01_AXI_bvalid_converter->scalar_in(m_S01_AXI_bvalid_converter_signal);
    mp_S01_AXI_bvalid_converter->vector_out(S01_AXI_bvalid);
    mp_S01_AXI_transactor->BVALID(m_S01_AXI_bvalid_converter_signal);
    mp_S01_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_bready_converter");
    mp_S01_AXI_bready_converter->vector_in(S01_AXI_bready);
    mp_S01_AXI_bready_converter->scalar_out(m_S01_AXI_bready_converter_signal);
    mp_S01_AXI_transactor->BREADY(m_S01_AXI_bready_converter_signal);
    mp_S01_AXI_transactor->ARID(S01_AXI_arid);
    mp_S01_AXI_transactor->ARADDR(S01_AXI_araddr);
    mp_S01_AXI_transactor->ARLEN(S01_AXI_arlen);
    mp_S01_AXI_transactor->ARSIZE(S01_AXI_arsize);
    mp_S01_AXI_transactor->ARBURST(S01_AXI_arburst);
    mp_S01_AXI_transactor->ARLOCK(S01_AXI_arlock);
    mp_S01_AXI_transactor->ARCACHE(S01_AXI_arcache);
    mp_S01_AXI_transactor->ARPROT(S01_AXI_arprot);
    mp_S01_AXI_transactor->ARQOS(S01_AXI_arqos);
    mp_S01_AXI_transactor->ARUSER(S01_AXI_aruser);
    mp_S01_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_arvalid_converter");
    mp_S01_AXI_arvalid_converter->vector_in(S01_AXI_arvalid);
    mp_S01_AXI_arvalid_converter->scalar_out(m_S01_AXI_arvalid_converter_signal);
    mp_S01_AXI_transactor->ARVALID(m_S01_AXI_arvalid_converter_signal);
    mp_S01_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_arready_converter");
    mp_S01_AXI_arready_converter->scalar_in(m_S01_AXI_arready_converter_signal);
    mp_S01_AXI_arready_converter->vector_out(S01_AXI_arready);
    mp_S01_AXI_transactor->ARREADY(m_S01_AXI_arready_converter_signal);
    mp_S01_AXI_transactor->RID(S01_AXI_rid);
    mp_S01_AXI_transactor->RDATA(S01_AXI_rdata);
    mp_S01_AXI_transactor->RRESP(S01_AXI_rresp);
    mp_S01_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_rlast_converter");
    mp_S01_AXI_rlast_converter->scalar_in(m_S01_AXI_rlast_converter_signal);
    mp_S01_AXI_rlast_converter->vector_out(S01_AXI_rlast);
    mp_S01_AXI_transactor->RLAST(m_S01_AXI_rlast_converter_signal);
    mp_S01_AXI_transactor->RUSER(S01_AXI_ruser);
    mp_S01_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_rvalid_converter");
    mp_S01_AXI_rvalid_converter->scalar_in(m_S01_AXI_rvalid_converter_signal);
    mp_S01_AXI_rvalid_converter->vector_out(S01_AXI_rvalid);
    mp_S01_AXI_transactor->RVALID(m_S01_AXI_rvalid_converter_signal);
    mp_S01_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_rready_converter");
    mp_S01_AXI_rready_converter->vector_in(S01_AXI_rready);
    mp_S01_AXI_rready_converter->scalar_out(m_S01_AXI_rready_converter_signal);
    mp_S01_AXI_transactor->RREADY(m_S01_AXI_rready_converter_signal);
    mp_S01_AXI_transactor->CLK(aclk);
    mp_S01_AXI_transactor->RST(aresetn);

    // S01_AXI' transactor sockets

    mp_impl->S01_AXI_tlm_aximm_read_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->S01_AXI_tlm_aximm_write_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S02_AXI' transactor parameters
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S02_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S02_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S02_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S02_AXI_transactor", S02_AXI_transactor_param_props);

    // S02_AXI' transactor ports

    mp_S02_AXI_transactor->AWID(S02_AXI_awid);
    mp_S02_AXI_transactor->AWADDR(S02_AXI_awaddr);
    mp_S02_AXI_transactor->AWLEN(S02_AXI_awlen);
    mp_S02_AXI_transactor->AWSIZE(S02_AXI_awsize);
    mp_S02_AXI_transactor->AWBURST(S02_AXI_awburst);
    mp_S02_AXI_transactor->AWLOCK(S02_AXI_awlock);
    mp_S02_AXI_transactor->AWCACHE(S02_AXI_awcache);
    mp_S02_AXI_transactor->AWPROT(S02_AXI_awprot);
    mp_S02_AXI_transactor->AWQOS(S02_AXI_awqos);
    mp_S02_AXI_transactor->AWUSER(S02_AXI_awuser);
    mp_S02_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_awvalid_converter");
    mp_S02_AXI_awvalid_converter->vector_in(S02_AXI_awvalid);
    mp_S02_AXI_awvalid_converter->scalar_out(m_S02_AXI_awvalid_converter_signal);
    mp_S02_AXI_transactor->AWVALID(m_S02_AXI_awvalid_converter_signal);
    mp_S02_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_awready_converter");
    mp_S02_AXI_awready_converter->scalar_in(m_S02_AXI_awready_converter_signal);
    mp_S02_AXI_awready_converter->vector_out(S02_AXI_awready);
    mp_S02_AXI_transactor->AWREADY(m_S02_AXI_awready_converter_signal);
    mp_S02_AXI_transactor->WDATA(S02_AXI_wdata);
    mp_S02_AXI_transactor->WSTRB(S02_AXI_wstrb);
    mp_S02_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_wlast_converter");
    mp_S02_AXI_wlast_converter->vector_in(S02_AXI_wlast);
    mp_S02_AXI_wlast_converter->scalar_out(m_S02_AXI_wlast_converter_signal);
    mp_S02_AXI_transactor->WLAST(m_S02_AXI_wlast_converter_signal);
    mp_S02_AXI_transactor->WUSER(S02_AXI_wuser);
    mp_S02_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_wvalid_converter");
    mp_S02_AXI_wvalid_converter->vector_in(S02_AXI_wvalid);
    mp_S02_AXI_wvalid_converter->scalar_out(m_S02_AXI_wvalid_converter_signal);
    mp_S02_AXI_transactor->WVALID(m_S02_AXI_wvalid_converter_signal);
    mp_S02_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_wready_converter");
    mp_S02_AXI_wready_converter->scalar_in(m_S02_AXI_wready_converter_signal);
    mp_S02_AXI_wready_converter->vector_out(S02_AXI_wready);
    mp_S02_AXI_transactor->WREADY(m_S02_AXI_wready_converter_signal);
    mp_S02_AXI_transactor->BID(S02_AXI_bid);
    mp_S02_AXI_transactor->BRESP(S02_AXI_bresp);
    mp_S02_AXI_transactor->BUSER(S02_AXI_buser);
    mp_S02_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_bvalid_converter");
    mp_S02_AXI_bvalid_converter->scalar_in(m_S02_AXI_bvalid_converter_signal);
    mp_S02_AXI_bvalid_converter->vector_out(S02_AXI_bvalid);
    mp_S02_AXI_transactor->BVALID(m_S02_AXI_bvalid_converter_signal);
    mp_S02_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_bready_converter");
    mp_S02_AXI_bready_converter->vector_in(S02_AXI_bready);
    mp_S02_AXI_bready_converter->scalar_out(m_S02_AXI_bready_converter_signal);
    mp_S02_AXI_transactor->BREADY(m_S02_AXI_bready_converter_signal);
    mp_S02_AXI_transactor->ARID(S02_AXI_arid);
    mp_S02_AXI_transactor->ARADDR(S02_AXI_araddr);
    mp_S02_AXI_transactor->ARLEN(S02_AXI_arlen);
    mp_S02_AXI_transactor->ARSIZE(S02_AXI_arsize);
    mp_S02_AXI_transactor->ARBURST(S02_AXI_arburst);
    mp_S02_AXI_transactor->ARLOCK(S02_AXI_arlock);
    mp_S02_AXI_transactor->ARCACHE(S02_AXI_arcache);
    mp_S02_AXI_transactor->ARPROT(S02_AXI_arprot);
    mp_S02_AXI_transactor->ARQOS(S02_AXI_arqos);
    mp_S02_AXI_transactor->ARUSER(S02_AXI_aruser);
    mp_S02_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_arvalid_converter");
    mp_S02_AXI_arvalid_converter->vector_in(S02_AXI_arvalid);
    mp_S02_AXI_arvalid_converter->scalar_out(m_S02_AXI_arvalid_converter_signal);
    mp_S02_AXI_transactor->ARVALID(m_S02_AXI_arvalid_converter_signal);
    mp_S02_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_arready_converter");
    mp_S02_AXI_arready_converter->scalar_in(m_S02_AXI_arready_converter_signal);
    mp_S02_AXI_arready_converter->vector_out(S02_AXI_arready);
    mp_S02_AXI_transactor->ARREADY(m_S02_AXI_arready_converter_signal);
    mp_S02_AXI_transactor->RID(S02_AXI_rid);
    mp_S02_AXI_transactor->RDATA(S02_AXI_rdata);
    mp_S02_AXI_transactor->RRESP(S02_AXI_rresp);
    mp_S02_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_rlast_converter");
    mp_S02_AXI_rlast_converter->scalar_in(m_S02_AXI_rlast_converter_signal);
    mp_S02_AXI_rlast_converter->vector_out(S02_AXI_rlast);
    mp_S02_AXI_transactor->RLAST(m_S02_AXI_rlast_converter_signal);
    mp_S02_AXI_transactor->RUSER(S02_AXI_ruser);
    mp_S02_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_rvalid_converter");
    mp_S02_AXI_rvalid_converter->scalar_in(m_S02_AXI_rvalid_converter_signal);
    mp_S02_AXI_rvalid_converter->vector_out(S02_AXI_rvalid);
    mp_S02_AXI_transactor->RVALID(m_S02_AXI_rvalid_converter_signal);
    mp_S02_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_rready_converter");
    mp_S02_AXI_rready_converter->vector_in(S02_AXI_rready);
    mp_S02_AXI_rready_converter->scalar_out(m_S02_AXI_rready_converter_signal);
    mp_S02_AXI_transactor->RREADY(m_S02_AXI_rready_converter_signal);
    mp_S02_AXI_transactor->CLK(aclk);
    mp_S02_AXI_transactor->RST(aresetn);

    // S02_AXI' transactor sockets

    mp_impl->S02_AXI_tlm_aximm_read_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->S02_AXI_tlm_aximm_write_socket->bind(*(mp_S02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S03_AXI' transactor parameters
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S03_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S03_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S03_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S03_AXI_transactor", S03_AXI_transactor_param_props);

    // S03_AXI' transactor ports

    mp_S03_AXI_transactor->AWID(S03_AXI_awid);
    mp_S03_AXI_transactor->AWADDR(S03_AXI_awaddr);
    mp_S03_AXI_transactor->AWLEN(S03_AXI_awlen);
    mp_S03_AXI_transactor->AWSIZE(S03_AXI_awsize);
    mp_S03_AXI_transactor->AWBURST(S03_AXI_awburst);
    mp_S03_AXI_transactor->AWLOCK(S03_AXI_awlock);
    mp_S03_AXI_transactor->AWCACHE(S03_AXI_awcache);
    mp_S03_AXI_transactor->AWPROT(S03_AXI_awprot);
    mp_S03_AXI_transactor->AWQOS(S03_AXI_awqos);
    mp_S03_AXI_transactor->AWUSER(S03_AXI_awuser);
    mp_S03_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_awvalid_converter");
    mp_S03_AXI_awvalid_converter->vector_in(S03_AXI_awvalid);
    mp_S03_AXI_awvalid_converter->scalar_out(m_S03_AXI_awvalid_converter_signal);
    mp_S03_AXI_transactor->AWVALID(m_S03_AXI_awvalid_converter_signal);
    mp_S03_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_awready_converter");
    mp_S03_AXI_awready_converter->scalar_in(m_S03_AXI_awready_converter_signal);
    mp_S03_AXI_awready_converter->vector_out(S03_AXI_awready);
    mp_S03_AXI_transactor->AWREADY(m_S03_AXI_awready_converter_signal);
    mp_S03_AXI_transactor->WDATA(S03_AXI_wdata);
    mp_S03_AXI_transactor->WSTRB(S03_AXI_wstrb);
    mp_S03_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_wlast_converter");
    mp_S03_AXI_wlast_converter->vector_in(S03_AXI_wlast);
    mp_S03_AXI_wlast_converter->scalar_out(m_S03_AXI_wlast_converter_signal);
    mp_S03_AXI_transactor->WLAST(m_S03_AXI_wlast_converter_signal);
    mp_S03_AXI_transactor->WUSER(S03_AXI_wuser);
    mp_S03_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_wvalid_converter");
    mp_S03_AXI_wvalid_converter->vector_in(S03_AXI_wvalid);
    mp_S03_AXI_wvalid_converter->scalar_out(m_S03_AXI_wvalid_converter_signal);
    mp_S03_AXI_transactor->WVALID(m_S03_AXI_wvalid_converter_signal);
    mp_S03_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_wready_converter");
    mp_S03_AXI_wready_converter->scalar_in(m_S03_AXI_wready_converter_signal);
    mp_S03_AXI_wready_converter->vector_out(S03_AXI_wready);
    mp_S03_AXI_transactor->WREADY(m_S03_AXI_wready_converter_signal);
    mp_S03_AXI_transactor->BID(S03_AXI_bid);
    mp_S03_AXI_transactor->BRESP(S03_AXI_bresp);
    mp_S03_AXI_transactor->BUSER(S03_AXI_buser);
    mp_S03_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_bvalid_converter");
    mp_S03_AXI_bvalid_converter->scalar_in(m_S03_AXI_bvalid_converter_signal);
    mp_S03_AXI_bvalid_converter->vector_out(S03_AXI_bvalid);
    mp_S03_AXI_transactor->BVALID(m_S03_AXI_bvalid_converter_signal);
    mp_S03_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_bready_converter");
    mp_S03_AXI_bready_converter->vector_in(S03_AXI_bready);
    mp_S03_AXI_bready_converter->scalar_out(m_S03_AXI_bready_converter_signal);
    mp_S03_AXI_transactor->BREADY(m_S03_AXI_bready_converter_signal);
    mp_S03_AXI_transactor->ARID(S03_AXI_arid);
    mp_S03_AXI_transactor->ARADDR(S03_AXI_araddr);
    mp_S03_AXI_transactor->ARLEN(S03_AXI_arlen);
    mp_S03_AXI_transactor->ARSIZE(S03_AXI_arsize);
    mp_S03_AXI_transactor->ARBURST(S03_AXI_arburst);
    mp_S03_AXI_transactor->ARLOCK(S03_AXI_arlock);
    mp_S03_AXI_transactor->ARCACHE(S03_AXI_arcache);
    mp_S03_AXI_transactor->ARPROT(S03_AXI_arprot);
    mp_S03_AXI_transactor->ARQOS(S03_AXI_arqos);
    mp_S03_AXI_transactor->ARUSER(S03_AXI_aruser);
    mp_S03_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_arvalid_converter");
    mp_S03_AXI_arvalid_converter->vector_in(S03_AXI_arvalid);
    mp_S03_AXI_arvalid_converter->scalar_out(m_S03_AXI_arvalid_converter_signal);
    mp_S03_AXI_transactor->ARVALID(m_S03_AXI_arvalid_converter_signal);
    mp_S03_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_arready_converter");
    mp_S03_AXI_arready_converter->scalar_in(m_S03_AXI_arready_converter_signal);
    mp_S03_AXI_arready_converter->vector_out(S03_AXI_arready);
    mp_S03_AXI_transactor->ARREADY(m_S03_AXI_arready_converter_signal);
    mp_S03_AXI_transactor->RID(S03_AXI_rid);
    mp_S03_AXI_transactor->RDATA(S03_AXI_rdata);
    mp_S03_AXI_transactor->RRESP(S03_AXI_rresp);
    mp_S03_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_rlast_converter");
    mp_S03_AXI_rlast_converter->scalar_in(m_S03_AXI_rlast_converter_signal);
    mp_S03_AXI_rlast_converter->vector_out(S03_AXI_rlast);
    mp_S03_AXI_transactor->RLAST(m_S03_AXI_rlast_converter_signal);
    mp_S03_AXI_transactor->RUSER(S03_AXI_ruser);
    mp_S03_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_rvalid_converter");
    mp_S03_AXI_rvalid_converter->scalar_in(m_S03_AXI_rvalid_converter_signal);
    mp_S03_AXI_rvalid_converter->vector_out(S03_AXI_rvalid);
    mp_S03_AXI_transactor->RVALID(m_S03_AXI_rvalid_converter_signal);
    mp_S03_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_rready_converter");
    mp_S03_AXI_rready_converter->vector_in(S03_AXI_rready);
    mp_S03_AXI_rready_converter->scalar_out(m_S03_AXI_rready_converter_signal);
    mp_S03_AXI_transactor->RREADY(m_S03_AXI_rready_converter_signal);
    mp_S03_AXI_transactor->CLK(aclk);
    mp_S03_AXI_transactor->RST(aresetn);

    // S03_AXI' transactor sockets

    mp_impl->S03_AXI_tlm_aximm_read_socket->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_impl->S03_AXI_tlm_aximm_write_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S04_AXI' transactor parameters
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "35");
    S04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S04_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S04_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S04_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S04_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,64,1,1,1,1,1,1>("S04_AXI_transactor", S04_AXI_transactor_param_props);

    // S04_AXI' transactor ports

    mp_S04_AXI_transactor->AWADDR(S04_AXI_awaddr);
    mp_S04_AXI_transactor->AWLEN(S04_AXI_awlen);
    mp_S04_AXI_transactor->AWSIZE(S04_AXI_awsize);
    mp_S04_AXI_transactor->AWLOCK(S04_AXI_awlock);
    mp_S04_AXI_transactor->AWCACHE(S04_AXI_awcache);
    mp_S04_AXI_transactor->AWPROT(S04_AXI_awprot);
    mp_S04_AXI_transactor->AWREGION(S04_AXI_awregion);
    mp_S04_AXI_transactor->AWQOS(S04_AXI_awqos);
    mp_S04_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_awvalid_converter");
    mp_S04_AXI_awvalid_converter->vector_in(S04_AXI_awvalid);
    mp_S04_AXI_awvalid_converter->scalar_out(m_S04_AXI_awvalid_converter_signal);
    mp_S04_AXI_transactor->AWVALID(m_S04_AXI_awvalid_converter_signal);
    mp_S04_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_awready_converter");
    mp_S04_AXI_awready_converter->scalar_in(m_S04_AXI_awready_converter_signal);
    mp_S04_AXI_awready_converter->vector_out(S04_AXI_awready);
    mp_S04_AXI_transactor->AWREADY(m_S04_AXI_awready_converter_signal);
    mp_S04_AXI_transactor->WDATA(S04_AXI_wdata);
    mp_S04_AXI_transactor->WSTRB(S04_AXI_wstrb);
    mp_S04_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_wlast_converter");
    mp_S04_AXI_wlast_converter->vector_in(S04_AXI_wlast);
    mp_S04_AXI_wlast_converter->scalar_out(m_S04_AXI_wlast_converter_signal);
    mp_S04_AXI_transactor->WLAST(m_S04_AXI_wlast_converter_signal);
    mp_S04_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_wvalid_converter");
    mp_S04_AXI_wvalid_converter->vector_in(S04_AXI_wvalid);
    mp_S04_AXI_wvalid_converter->scalar_out(m_S04_AXI_wvalid_converter_signal);
    mp_S04_AXI_transactor->WVALID(m_S04_AXI_wvalid_converter_signal);
    mp_S04_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_wready_converter");
    mp_S04_AXI_wready_converter->scalar_in(m_S04_AXI_wready_converter_signal);
    mp_S04_AXI_wready_converter->vector_out(S04_AXI_wready);
    mp_S04_AXI_transactor->WREADY(m_S04_AXI_wready_converter_signal);
    mp_S04_AXI_transactor->BRESP(S04_AXI_bresp);
    mp_S04_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_bvalid_converter");
    mp_S04_AXI_bvalid_converter->scalar_in(m_S04_AXI_bvalid_converter_signal);
    mp_S04_AXI_bvalid_converter->vector_out(S04_AXI_bvalid);
    mp_S04_AXI_transactor->BVALID(m_S04_AXI_bvalid_converter_signal);
    mp_S04_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_bready_converter");
    mp_S04_AXI_bready_converter->vector_in(S04_AXI_bready);
    mp_S04_AXI_bready_converter->scalar_out(m_S04_AXI_bready_converter_signal);
    mp_S04_AXI_transactor->BREADY(m_S04_AXI_bready_converter_signal);
    mp_S04_AXI_transactor->ARADDR(S04_AXI_araddr);
    mp_S04_AXI_transactor->ARLEN(S04_AXI_arlen);
    mp_S04_AXI_transactor->ARSIZE(S04_AXI_arsize);
    mp_S04_AXI_transactor->ARLOCK(S04_AXI_arlock);
    mp_S04_AXI_transactor->ARCACHE(S04_AXI_arcache);
    mp_S04_AXI_transactor->ARPROT(S04_AXI_arprot);
    mp_S04_AXI_transactor->ARREGION(S04_AXI_arregion);
    mp_S04_AXI_transactor->ARQOS(S04_AXI_arqos);
    mp_S04_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_arvalid_converter");
    mp_S04_AXI_arvalid_converter->vector_in(S04_AXI_arvalid);
    mp_S04_AXI_arvalid_converter->scalar_out(m_S04_AXI_arvalid_converter_signal);
    mp_S04_AXI_transactor->ARVALID(m_S04_AXI_arvalid_converter_signal);
    mp_S04_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_arready_converter");
    mp_S04_AXI_arready_converter->scalar_in(m_S04_AXI_arready_converter_signal);
    mp_S04_AXI_arready_converter->vector_out(S04_AXI_arready);
    mp_S04_AXI_transactor->ARREADY(m_S04_AXI_arready_converter_signal);
    mp_S04_AXI_transactor->RDATA(S04_AXI_rdata);
    mp_S04_AXI_transactor->RRESP(S04_AXI_rresp);
    mp_S04_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_rlast_converter");
    mp_S04_AXI_rlast_converter->scalar_in(m_S04_AXI_rlast_converter_signal);
    mp_S04_AXI_rlast_converter->vector_out(S04_AXI_rlast);
    mp_S04_AXI_transactor->RLAST(m_S04_AXI_rlast_converter_signal);
    mp_S04_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_rvalid_converter");
    mp_S04_AXI_rvalid_converter->scalar_in(m_S04_AXI_rvalid_converter_signal);
    mp_S04_AXI_rvalid_converter->vector_out(S04_AXI_rvalid);
    mp_S04_AXI_transactor->RVALID(m_S04_AXI_rvalid_converter_signal);
    mp_S04_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_rready_converter");
    mp_S04_AXI_rready_converter->vector_in(S04_AXI_rready);
    mp_S04_AXI_rready_converter->scalar_out(m_S04_AXI_rready_converter_signal);
    mp_S04_AXI_transactor->RREADY(m_S04_AXI_rready_converter_signal);
    mp_S04_AXI_transactor->CLK(aclk1);
    mp_S04_AXI_transactor->RST(aresetn);

    // S04_AXI' transactor sockets

    mp_impl->S04_AXI_tlm_aximm_read_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->S04_AXI_tlm_aximm_write_socket->bind(*(mp_S04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
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
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,5,32,1,1,32,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWID(M00_AXI_awid);
    mp_M00_AXI_awaddr_converter = new xsc::common::vector2vector_converter<39,34>("M00_AXI_awaddr_converter");
    mp_M00_AXI_awaddr_converter->vector_in(m_M00_AXI_awaddr_converter_signal);
    mp_M00_AXI_awaddr_converter->vector_out(M00_AXI_awaddr);
    mp_M00_AXI_transactor->AWADDR(m_M00_AXI_awaddr_converter_signal);
    mp_M00_AXI_transactor->AWLEN(M00_AXI_awlen);
    mp_M00_AXI_transactor->AWSIZE(M00_AXI_awsize);
    mp_M00_AXI_transactor->AWBURST(M00_AXI_awburst);
    mp_M00_AXI_transactor->AWLOCK(M00_AXI_awlock);
    mp_M00_AXI_transactor->AWCACHE(M00_AXI_awcache);
    mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
    mp_M00_AXI_transactor->AWQOS(M00_AXI_awqos);
    mp_M00_AXI_transactor->AWUSER(M00_AXI_awuser);
    mp_M00_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_awvalid_converter");
    mp_M00_AXI_awvalid_converter->scalar_in(m_M00_AXI_awvalid_converter_signal);
    mp_M00_AXI_awvalid_converter->vector_out(M00_AXI_awvalid);
    mp_M00_AXI_transactor->AWVALID(m_M00_AXI_awvalid_converter_signal);
    mp_M00_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_awready_converter");
    mp_M00_AXI_awready_converter->vector_in(M00_AXI_awready);
    mp_M00_AXI_awready_converter->scalar_out(m_M00_AXI_awready_converter_signal);
    mp_M00_AXI_transactor->AWREADY(m_M00_AXI_awready_converter_signal);
    mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
    mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
    mp_M00_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_wlast_converter");
    mp_M00_AXI_wlast_converter->scalar_in(m_M00_AXI_wlast_converter_signal);
    mp_M00_AXI_wlast_converter->vector_out(M00_AXI_wlast);
    mp_M00_AXI_transactor->WLAST(m_M00_AXI_wlast_converter_signal);
    mp_M00_AXI_transactor->WUSER(M00_AXI_wuser);
    mp_M00_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_wvalid_converter");
    mp_M00_AXI_wvalid_converter->scalar_in(m_M00_AXI_wvalid_converter_signal);
    mp_M00_AXI_wvalid_converter->vector_out(M00_AXI_wvalid);
    mp_M00_AXI_transactor->WVALID(m_M00_AXI_wvalid_converter_signal);
    mp_M00_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_wready_converter");
    mp_M00_AXI_wready_converter->vector_in(M00_AXI_wready);
    mp_M00_AXI_wready_converter->scalar_out(m_M00_AXI_wready_converter_signal);
    mp_M00_AXI_transactor->WREADY(m_M00_AXI_wready_converter_signal);
    mp_M00_AXI_transactor->BID(M00_AXI_bid);
    mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
    mp_M00_AXI_transactor->BUSER(M00_AXI_buser);
    mp_M00_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_bvalid_converter");
    mp_M00_AXI_bvalid_converter->vector_in(M00_AXI_bvalid);
    mp_M00_AXI_bvalid_converter->scalar_out(m_M00_AXI_bvalid_converter_signal);
    mp_M00_AXI_transactor->BVALID(m_M00_AXI_bvalid_converter_signal);
    mp_M00_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_bready_converter");
    mp_M00_AXI_bready_converter->scalar_in(m_M00_AXI_bready_converter_signal);
    mp_M00_AXI_bready_converter->vector_out(M00_AXI_bready);
    mp_M00_AXI_transactor->BREADY(m_M00_AXI_bready_converter_signal);
    mp_M00_AXI_transactor->ARID(M00_AXI_arid);
    mp_M00_AXI_araddr_converter = new xsc::common::vector2vector_converter<39,34>("M00_AXI_araddr_converter");
    mp_M00_AXI_araddr_converter->vector_in(m_M00_AXI_araddr_converter_signal);
    mp_M00_AXI_araddr_converter->vector_out(M00_AXI_araddr);
    mp_M00_AXI_transactor->ARADDR(m_M00_AXI_araddr_converter_signal);
    mp_M00_AXI_transactor->ARLEN(M00_AXI_arlen);
    mp_M00_AXI_transactor->ARSIZE(M00_AXI_arsize);
    mp_M00_AXI_transactor->ARBURST(M00_AXI_arburst);
    mp_M00_AXI_transactor->ARLOCK(M00_AXI_arlock);
    mp_M00_AXI_transactor->ARCACHE(M00_AXI_arcache);
    mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
    mp_M00_AXI_transactor->ARQOS(M00_AXI_arqos);
    mp_M00_AXI_transactor->ARUSER(M00_AXI_aruser);
    mp_M00_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_arvalid_converter");
    mp_M00_AXI_arvalid_converter->scalar_in(m_M00_AXI_arvalid_converter_signal);
    mp_M00_AXI_arvalid_converter->vector_out(M00_AXI_arvalid);
    mp_M00_AXI_transactor->ARVALID(m_M00_AXI_arvalid_converter_signal);
    mp_M00_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_arready_converter");
    mp_M00_AXI_arready_converter->vector_in(M00_AXI_arready);
    mp_M00_AXI_arready_converter->scalar_out(m_M00_AXI_arready_converter_signal);
    mp_M00_AXI_transactor->ARREADY(m_M00_AXI_arready_converter_signal);
    mp_M00_AXI_transactor->RID(M00_AXI_rid);
    mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
    mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
    mp_M00_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_rlast_converter");
    mp_M00_AXI_rlast_converter->vector_in(M00_AXI_rlast);
    mp_M00_AXI_rlast_converter->scalar_out(m_M00_AXI_rlast_converter_signal);
    mp_M00_AXI_transactor->RLAST(m_M00_AXI_rlast_converter_signal);
    mp_M00_AXI_transactor->RUSER(M00_AXI_ruser);
    mp_M00_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_rvalid_converter");
    mp_M00_AXI_rvalid_converter->vector_in(M00_AXI_rvalid);
    mp_M00_AXI_rvalid_converter->scalar_out(m_M00_AXI_rvalid_converter_signal);
    mp_M00_AXI_transactor->RVALID(m_M00_AXI_rvalid_converter_signal);
    mp_M00_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_rready_converter");
    mp_M00_AXI_rready_converter->scalar_in(m_M00_AXI_rready_converter_signal);
    mp_M00_AXI_rready_converter->vector_out(M00_AXI_rready);
    mp_M00_AXI_transactor->RREADY(m_M00_AXI_rready_converter_signal);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M01_AXI' transactor parameters
    xsc::common_cpp::properties M01_AXI_transactor_param_props;
    M01_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M01_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "35");
    M01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M01_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M01_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M01_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M01_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M01_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,35,1,1,1,1,1,1>("M01_AXI_transactor", M01_AXI_transactor_param_props);

    // M01_AXI' transactor ports

    mp_M01_AXI_transactor->AWADDR(M01_AXI_awaddr);
    mp_M01_AXI_transactor->AWLEN(M01_AXI_awlen);
    mp_M01_AXI_transactor->AWSIZE(M01_AXI_awsize);
    mp_M01_AXI_transactor->AWBURST(M01_AXI_awburst);
    mp_M01_AXI_transactor->AWPROT(M01_AXI_awprot);
    mp_M01_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_awvalid_converter");
    mp_M01_AXI_awvalid_converter->scalar_in(m_M01_AXI_awvalid_converter_signal);
    mp_M01_AXI_awvalid_converter->vector_out(M01_AXI_awvalid);
    mp_M01_AXI_transactor->AWVALID(m_M01_AXI_awvalid_converter_signal);
    mp_M01_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_awready_converter");
    mp_M01_AXI_awready_converter->vector_in(M01_AXI_awready);
    mp_M01_AXI_awready_converter->scalar_out(m_M01_AXI_awready_converter_signal);
    mp_M01_AXI_transactor->AWREADY(m_M01_AXI_awready_converter_signal);
    mp_M01_AXI_transactor->WDATA(M01_AXI_wdata);
    mp_M01_AXI_transactor->WSTRB(M01_AXI_wstrb);
    mp_M01_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_wlast_converter");
    mp_M01_AXI_wlast_converter->scalar_in(m_M01_AXI_wlast_converter_signal);
    mp_M01_AXI_wlast_converter->vector_out(M01_AXI_wlast);
    mp_M01_AXI_transactor->WLAST(m_M01_AXI_wlast_converter_signal);
    mp_M01_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_wvalid_converter");
    mp_M01_AXI_wvalid_converter->scalar_in(m_M01_AXI_wvalid_converter_signal);
    mp_M01_AXI_wvalid_converter->vector_out(M01_AXI_wvalid);
    mp_M01_AXI_transactor->WVALID(m_M01_AXI_wvalid_converter_signal);
    mp_M01_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_wready_converter");
    mp_M01_AXI_wready_converter->vector_in(M01_AXI_wready);
    mp_M01_AXI_wready_converter->scalar_out(m_M01_AXI_wready_converter_signal);
    mp_M01_AXI_transactor->WREADY(m_M01_AXI_wready_converter_signal);
    mp_M01_AXI_transactor->BRESP(M01_AXI_bresp);
    mp_M01_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_bvalid_converter");
    mp_M01_AXI_bvalid_converter->vector_in(M01_AXI_bvalid);
    mp_M01_AXI_bvalid_converter->scalar_out(m_M01_AXI_bvalid_converter_signal);
    mp_M01_AXI_transactor->BVALID(m_M01_AXI_bvalid_converter_signal);
    mp_M01_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_bready_converter");
    mp_M01_AXI_bready_converter->scalar_in(m_M01_AXI_bready_converter_signal);
    mp_M01_AXI_bready_converter->vector_out(M01_AXI_bready);
    mp_M01_AXI_transactor->BREADY(m_M01_AXI_bready_converter_signal);
    mp_M01_AXI_transactor->ARADDR(M01_AXI_araddr);
    mp_M01_AXI_transactor->ARLEN(M01_AXI_arlen);
    mp_M01_AXI_transactor->ARSIZE(M01_AXI_arsize);
    mp_M01_AXI_transactor->ARBURST(M01_AXI_arburst);
    mp_M01_AXI_transactor->ARPROT(M01_AXI_arprot);
    mp_M01_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_arvalid_converter");
    mp_M01_AXI_arvalid_converter->scalar_in(m_M01_AXI_arvalid_converter_signal);
    mp_M01_AXI_arvalid_converter->vector_out(M01_AXI_arvalid);
    mp_M01_AXI_transactor->ARVALID(m_M01_AXI_arvalid_converter_signal);
    mp_M01_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_arready_converter");
    mp_M01_AXI_arready_converter->vector_in(M01_AXI_arready);
    mp_M01_AXI_arready_converter->scalar_out(m_M01_AXI_arready_converter_signal);
    mp_M01_AXI_transactor->ARREADY(m_M01_AXI_arready_converter_signal);
    mp_M01_AXI_transactor->RDATA(M01_AXI_rdata);
    mp_M01_AXI_transactor->RRESP(M01_AXI_rresp);
    mp_M01_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_rlast_converter");
    mp_M01_AXI_rlast_converter->vector_in(M01_AXI_rlast);
    mp_M01_AXI_rlast_converter->scalar_out(m_M01_AXI_rlast_converter_signal);
    mp_M01_AXI_transactor->RLAST(m_M01_AXI_rlast_converter_signal);
    mp_M01_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_rvalid_converter");
    mp_M01_AXI_rvalid_converter->vector_in(M01_AXI_rvalid);
    mp_M01_AXI_rvalid_converter->scalar_out(m_M01_AXI_rvalid_converter_signal);
    mp_M01_AXI_transactor->RVALID(m_M01_AXI_rvalid_converter_signal);
    mp_M01_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_rready_converter");
    mp_M01_AXI_rready_converter->scalar_in(m_M01_AXI_rready_converter_signal);
    mp_M01_AXI_rready_converter->vector_out(M01_AXI_rready);
    mp_M01_AXI_transactor->RREADY(m_M01_AXI_rready_converter_signal);
    mp_M01_AXI_transactor->CLK(aclk);
    mp_M01_AXI_transactor->RST(aresetn);

    // M01_AXI' transactor sockets

    mp_impl->M01_AXI_tlm_aximm_read_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->M01_AXI_tlm_aximm_write_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M02_AXI' transactor parameters
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M02_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M02_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M02_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,5,32,1,1,32,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);

    // M02_AXI' transactor ports

    mp_M02_AXI_transactor->AWID(M02_AXI_awid);
    mp_M02_AXI_awaddr_converter = new xsc::common::vector2vector_converter<39,34>("M02_AXI_awaddr_converter");
    mp_M02_AXI_awaddr_converter->vector_in(m_M02_AXI_awaddr_converter_signal);
    mp_M02_AXI_awaddr_converter->vector_out(M02_AXI_awaddr);
    mp_M02_AXI_transactor->AWADDR(m_M02_AXI_awaddr_converter_signal);
    mp_M02_AXI_transactor->AWLEN(M02_AXI_awlen);
    mp_M02_AXI_transactor->AWSIZE(M02_AXI_awsize);
    mp_M02_AXI_transactor->AWBURST(M02_AXI_awburst);
    mp_M02_AXI_transactor->AWLOCK(M02_AXI_awlock);
    mp_M02_AXI_transactor->AWCACHE(M02_AXI_awcache);
    mp_M02_AXI_transactor->AWPROT(M02_AXI_awprot);
    mp_M02_AXI_transactor->AWQOS(M02_AXI_awqos);
    mp_M02_AXI_transactor->AWUSER(M02_AXI_awuser);
    mp_M02_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_awvalid_converter");
    mp_M02_AXI_awvalid_converter->scalar_in(m_M02_AXI_awvalid_converter_signal);
    mp_M02_AXI_awvalid_converter->vector_out(M02_AXI_awvalid);
    mp_M02_AXI_transactor->AWVALID(m_M02_AXI_awvalid_converter_signal);
    mp_M02_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_awready_converter");
    mp_M02_AXI_awready_converter->vector_in(M02_AXI_awready);
    mp_M02_AXI_awready_converter->scalar_out(m_M02_AXI_awready_converter_signal);
    mp_M02_AXI_transactor->AWREADY(m_M02_AXI_awready_converter_signal);
    mp_M02_AXI_transactor->WDATA(M02_AXI_wdata);
    mp_M02_AXI_transactor->WSTRB(M02_AXI_wstrb);
    mp_M02_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_wlast_converter");
    mp_M02_AXI_wlast_converter->scalar_in(m_M02_AXI_wlast_converter_signal);
    mp_M02_AXI_wlast_converter->vector_out(M02_AXI_wlast);
    mp_M02_AXI_transactor->WLAST(m_M02_AXI_wlast_converter_signal);
    mp_M02_AXI_transactor->WUSER(M02_AXI_wuser);
    mp_M02_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_wvalid_converter");
    mp_M02_AXI_wvalid_converter->scalar_in(m_M02_AXI_wvalid_converter_signal);
    mp_M02_AXI_wvalid_converter->vector_out(M02_AXI_wvalid);
    mp_M02_AXI_transactor->WVALID(m_M02_AXI_wvalid_converter_signal);
    mp_M02_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_wready_converter");
    mp_M02_AXI_wready_converter->vector_in(M02_AXI_wready);
    mp_M02_AXI_wready_converter->scalar_out(m_M02_AXI_wready_converter_signal);
    mp_M02_AXI_transactor->WREADY(m_M02_AXI_wready_converter_signal);
    mp_M02_AXI_transactor->BID(M02_AXI_bid);
    mp_M02_AXI_transactor->BRESP(M02_AXI_bresp);
    mp_M02_AXI_transactor->BUSER(M02_AXI_buser);
    mp_M02_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_bvalid_converter");
    mp_M02_AXI_bvalid_converter->vector_in(M02_AXI_bvalid);
    mp_M02_AXI_bvalid_converter->scalar_out(m_M02_AXI_bvalid_converter_signal);
    mp_M02_AXI_transactor->BVALID(m_M02_AXI_bvalid_converter_signal);
    mp_M02_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_bready_converter");
    mp_M02_AXI_bready_converter->scalar_in(m_M02_AXI_bready_converter_signal);
    mp_M02_AXI_bready_converter->vector_out(M02_AXI_bready);
    mp_M02_AXI_transactor->BREADY(m_M02_AXI_bready_converter_signal);
    mp_M02_AXI_transactor->ARID(M02_AXI_arid);
    mp_M02_AXI_araddr_converter = new xsc::common::vector2vector_converter<39,34>("M02_AXI_araddr_converter");
    mp_M02_AXI_araddr_converter->vector_in(m_M02_AXI_araddr_converter_signal);
    mp_M02_AXI_araddr_converter->vector_out(M02_AXI_araddr);
    mp_M02_AXI_transactor->ARADDR(m_M02_AXI_araddr_converter_signal);
    mp_M02_AXI_transactor->ARLEN(M02_AXI_arlen);
    mp_M02_AXI_transactor->ARSIZE(M02_AXI_arsize);
    mp_M02_AXI_transactor->ARBURST(M02_AXI_arburst);
    mp_M02_AXI_transactor->ARLOCK(M02_AXI_arlock);
    mp_M02_AXI_transactor->ARCACHE(M02_AXI_arcache);
    mp_M02_AXI_transactor->ARPROT(M02_AXI_arprot);
    mp_M02_AXI_transactor->ARQOS(M02_AXI_arqos);
    mp_M02_AXI_transactor->ARUSER(M02_AXI_aruser);
    mp_M02_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_arvalid_converter");
    mp_M02_AXI_arvalid_converter->scalar_in(m_M02_AXI_arvalid_converter_signal);
    mp_M02_AXI_arvalid_converter->vector_out(M02_AXI_arvalid);
    mp_M02_AXI_transactor->ARVALID(m_M02_AXI_arvalid_converter_signal);
    mp_M02_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_arready_converter");
    mp_M02_AXI_arready_converter->vector_in(M02_AXI_arready);
    mp_M02_AXI_arready_converter->scalar_out(m_M02_AXI_arready_converter_signal);
    mp_M02_AXI_transactor->ARREADY(m_M02_AXI_arready_converter_signal);
    mp_M02_AXI_transactor->RID(M02_AXI_rid);
    mp_M02_AXI_transactor->RDATA(M02_AXI_rdata);
    mp_M02_AXI_transactor->RRESP(M02_AXI_rresp);
    mp_M02_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_rlast_converter");
    mp_M02_AXI_rlast_converter->vector_in(M02_AXI_rlast);
    mp_M02_AXI_rlast_converter->scalar_out(m_M02_AXI_rlast_converter_signal);
    mp_M02_AXI_transactor->RLAST(m_M02_AXI_rlast_converter_signal);
    mp_M02_AXI_transactor->RUSER(M02_AXI_ruser);
    mp_M02_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_rvalid_converter");
    mp_M02_AXI_rvalid_converter->vector_in(M02_AXI_rvalid);
    mp_M02_AXI_rvalid_converter->scalar_out(m_M02_AXI_rvalid_converter_signal);
    mp_M02_AXI_transactor->RVALID(m_M02_AXI_rvalid_converter_signal);
    mp_M02_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_rready_converter");
    mp_M02_AXI_rready_converter->scalar_in(m_M02_AXI_rready_converter_signal);
    mp_M02_AXI_rready_converter->vector_out(M02_AXI_rready);
    mp_M02_AXI_transactor->RREADY(m_M02_AXI_rready_converter_signal);
    mp_M02_AXI_transactor->CLK(aclk);
    mp_M02_AXI_transactor->RST(aresetn);

    // M02_AXI' transactor sockets

    mp_impl->M02_AXI_tlm_aximm_read_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->M02_AXI_tlm_aximm_write_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M03_AXI' transactor parameters
    xsc::common_cpp::properties M03_AXI_transactor_param_props;
    M03_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M03_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M03_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M03_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M03_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M03_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,5,32,1,1,32,1>("M03_AXI_transactor", M03_AXI_transactor_param_props);

    // M03_AXI' transactor ports

    mp_M03_AXI_transactor->AWID(M03_AXI_awid);
    mp_M03_AXI_awaddr_converter = new xsc::common::vector2vector_converter<39,34>("M03_AXI_awaddr_converter");
    mp_M03_AXI_awaddr_converter->vector_in(m_M03_AXI_awaddr_converter_signal);
    mp_M03_AXI_awaddr_converter->vector_out(M03_AXI_awaddr);
    mp_M03_AXI_transactor->AWADDR(m_M03_AXI_awaddr_converter_signal);
    mp_M03_AXI_transactor->AWLEN(M03_AXI_awlen);
    mp_M03_AXI_transactor->AWSIZE(M03_AXI_awsize);
    mp_M03_AXI_transactor->AWBURST(M03_AXI_awburst);
    mp_M03_AXI_transactor->AWLOCK(M03_AXI_awlock);
    mp_M03_AXI_transactor->AWCACHE(M03_AXI_awcache);
    mp_M03_AXI_transactor->AWPROT(M03_AXI_awprot);
    mp_M03_AXI_transactor->AWQOS(M03_AXI_awqos);
    mp_M03_AXI_transactor->AWUSER(M03_AXI_awuser);
    mp_M03_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_awvalid_converter");
    mp_M03_AXI_awvalid_converter->scalar_in(m_M03_AXI_awvalid_converter_signal);
    mp_M03_AXI_awvalid_converter->vector_out(M03_AXI_awvalid);
    mp_M03_AXI_transactor->AWVALID(m_M03_AXI_awvalid_converter_signal);
    mp_M03_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_awready_converter");
    mp_M03_AXI_awready_converter->vector_in(M03_AXI_awready);
    mp_M03_AXI_awready_converter->scalar_out(m_M03_AXI_awready_converter_signal);
    mp_M03_AXI_transactor->AWREADY(m_M03_AXI_awready_converter_signal);
    mp_M03_AXI_transactor->WDATA(M03_AXI_wdata);
    mp_M03_AXI_transactor->WSTRB(M03_AXI_wstrb);
    mp_M03_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_wlast_converter");
    mp_M03_AXI_wlast_converter->scalar_in(m_M03_AXI_wlast_converter_signal);
    mp_M03_AXI_wlast_converter->vector_out(M03_AXI_wlast);
    mp_M03_AXI_transactor->WLAST(m_M03_AXI_wlast_converter_signal);
    mp_M03_AXI_transactor->WUSER(M03_AXI_wuser);
    mp_M03_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_wvalid_converter");
    mp_M03_AXI_wvalid_converter->scalar_in(m_M03_AXI_wvalid_converter_signal);
    mp_M03_AXI_wvalid_converter->vector_out(M03_AXI_wvalid);
    mp_M03_AXI_transactor->WVALID(m_M03_AXI_wvalid_converter_signal);
    mp_M03_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_wready_converter");
    mp_M03_AXI_wready_converter->vector_in(M03_AXI_wready);
    mp_M03_AXI_wready_converter->scalar_out(m_M03_AXI_wready_converter_signal);
    mp_M03_AXI_transactor->WREADY(m_M03_AXI_wready_converter_signal);
    mp_M03_AXI_transactor->BID(M03_AXI_bid);
    mp_M03_AXI_transactor->BRESP(M03_AXI_bresp);
    mp_M03_AXI_transactor->BUSER(M03_AXI_buser);
    mp_M03_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_bvalid_converter");
    mp_M03_AXI_bvalid_converter->vector_in(M03_AXI_bvalid);
    mp_M03_AXI_bvalid_converter->scalar_out(m_M03_AXI_bvalid_converter_signal);
    mp_M03_AXI_transactor->BVALID(m_M03_AXI_bvalid_converter_signal);
    mp_M03_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_bready_converter");
    mp_M03_AXI_bready_converter->scalar_in(m_M03_AXI_bready_converter_signal);
    mp_M03_AXI_bready_converter->vector_out(M03_AXI_bready);
    mp_M03_AXI_transactor->BREADY(m_M03_AXI_bready_converter_signal);
    mp_M03_AXI_transactor->ARID(M03_AXI_arid);
    mp_M03_AXI_araddr_converter = new xsc::common::vector2vector_converter<39,34>("M03_AXI_araddr_converter");
    mp_M03_AXI_araddr_converter->vector_in(m_M03_AXI_araddr_converter_signal);
    mp_M03_AXI_araddr_converter->vector_out(M03_AXI_araddr);
    mp_M03_AXI_transactor->ARADDR(m_M03_AXI_araddr_converter_signal);
    mp_M03_AXI_transactor->ARLEN(M03_AXI_arlen);
    mp_M03_AXI_transactor->ARSIZE(M03_AXI_arsize);
    mp_M03_AXI_transactor->ARBURST(M03_AXI_arburst);
    mp_M03_AXI_transactor->ARLOCK(M03_AXI_arlock);
    mp_M03_AXI_transactor->ARCACHE(M03_AXI_arcache);
    mp_M03_AXI_transactor->ARPROT(M03_AXI_arprot);
    mp_M03_AXI_transactor->ARQOS(M03_AXI_arqos);
    mp_M03_AXI_transactor->ARUSER(M03_AXI_aruser);
    mp_M03_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_arvalid_converter");
    mp_M03_AXI_arvalid_converter->scalar_in(m_M03_AXI_arvalid_converter_signal);
    mp_M03_AXI_arvalid_converter->vector_out(M03_AXI_arvalid);
    mp_M03_AXI_transactor->ARVALID(m_M03_AXI_arvalid_converter_signal);
    mp_M03_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_arready_converter");
    mp_M03_AXI_arready_converter->vector_in(M03_AXI_arready);
    mp_M03_AXI_arready_converter->scalar_out(m_M03_AXI_arready_converter_signal);
    mp_M03_AXI_transactor->ARREADY(m_M03_AXI_arready_converter_signal);
    mp_M03_AXI_transactor->RID(M03_AXI_rid);
    mp_M03_AXI_transactor->RDATA(M03_AXI_rdata);
    mp_M03_AXI_transactor->RRESP(M03_AXI_rresp);
    mp_M03_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_rlast_converter");
    mp_M03_AXI_rlast_converter->vector_in(M03_AXI_rlast);
    mp_M03_AXI_rlast_converter->scalar_out(m_M03_AXI_rlast_converter_signal);
    mp_M03_AXI_transactor->RLAST(m_M03_AXI_rlast_converter_signal);
    mp_M03_AXI_transactor->RUSER(M03_AXI_ruser);
    mp_M03_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_rvalid_converter");
    mp_M03_AXI_rvalid_converter->vector_in(M03_AXI_rvalid);
    mp_M03_AXI_rvalid_converter->scalar_out(m_M03_AXI_rvalid_converter_signal);
    mp_M03_AXI_transactor->RVALID(m_M03_AXI_rvalid_converter_signal);
    mp_M03_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_rready_converter");
    mp_M03_AXI_rready_converter->scalar_in(m_M03_AXI_rready_converter_signal);
    mp_M03_AXI_rready_converter->vector_out(M03_AXI_rready);
    mp_M03_AXI_transactor->RREADY(m_M03_AXI_rready_converter_signal);
    mp_M03_AXI_transactor->CLK(aclk);
    mp_M03_AXI_transactor->RST(aresetn);

    // M03_AXI' transactor sockets

    mp_impl->M03_AXI_tlm_aximm_read_socket->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_impl->M03_AXI_tlm_aximm_write_socket->bind(*(mp_M03_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
pfm_dynamic_memory_subsystem_0::pfm_dynamic_memory_subsystem_0(const sc_core::sc_module_name& nm) : pfm_dynamic_memory_subsystem_0_sc(nm),  aclk("aclk"), aclk1("aclk1"), aresetn("aresetn"), S00_AXI_awid("S00_AXI_awid"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awlen("S00_AXI_awlen"), S00_AXI_awsize("S00_AXI_awsize"), S00_AXI_awburst("S00_AXI_awburst"), S00_AXI_awlock("S00_AXI_awlock"), S00_AXI_awcache("S00_AXI_awcache"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awqos("S00_AXI_awqos"), S00_AXI_awuser("S00_AXI_awuser"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wlast("S00_AXI_wlast"), S00_AXI_wuser("S00_AXI_wuser"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bid("S00_AXI_bid"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_buser("S00_AXI_buser"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_arid("S00_AXI_arid"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_aruser("S00_AXI_aruser"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rid("S00_AXI_rid"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_ruser("S00_AXI_ruser"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), S01_AXI_awid("S01_AXI_awid"), S01_AXI_awaddr("S01_AXI_awaddr"), S01_AXI_awlen("S01_AXI_awlen"), S01_AXI_awsize("S01_AXI_awsize"), S01_AXI_awburst("S01_AXI_awburst"), S01_AXI_awlock("S01_AXI_awlock"), S01_AXI_awcache("S01_AXI_awcache"), S01_AXI_awprot("S01_AXI_awprot"), S01_AXI_awqos("S01_AXI_awqos"), S01_AXI_awuser("S01_AXI_awuser"), S01_AXI_awvalid("S01_AXI_awvalid"), S01_AXI_awready("S01_AXI_awready"), S01_AXI_wdata("S01_AXI_wdata"), S01_AXI_wstrb("S01_AXI_wstrb"), S01_AXI_wlast("S01_AXI_wlast"), S01_AXI_wuser("S01_AXI_wuser"), S01_AXI_wvalid("S01_AXI_wvalid"), S01_AXI_wready("S01_AXI_wready"), S01_AXI_bid("S01_AXI_bid"), S01_AXI_bresp("S01_AXI_bresp"), S01_AXI_buser("S01_AXI_buser"), S01_AXI_bvalid("S01_AXI_bvalid"), S01_AXI_bready("S01_AXI_bready"), S01_AXI_arid("S01_AXI_arid"), S01_AXI_araddr("S01_AXI_araddr"), S01_AXI_arlen("S01_AXI_arlen"), S01_AXI_arsize("S01_AXI_arsize"), S01_AXI_arburst("S01_AXI_arburst"), S01_AXI_arlock("S01_AXI_arlock"), S01_AXI_arcache("S01_AXI_arcache"), S01_AXI_arprot("S01_AXI_arprot"), S01_AXI_arqos("S01_AXI_arqos"), S01_AXI_aruser("S01_AXI_aruser"), S01_AXI_arvalid("S01_AXI_arvalid"), S01_AXI_arready("S01_AXI_arready"), S01_AXI_rid("S01_AXI_rid"), S01_AXI_rdata("S01_AXI_rdata"), S01_AXI_rresp("S01_AXI_rresp"), S01_AXI_rlast("S01_AXI_rlast"), S01_AXI_ruser("S01_AXI_ruser"), S01_AXI_rvalid("S01_AXI_rvalid"), S01_AXI_rready("S01_AXI_rready"), S02_AXI_awid("S02_AXI_awid"), S02_AXI_awaddr("S02_AXI_awaddr"), S02_AXI_awlen("S02_AXI_awlen"), S02_AXI_awsize("S02_AXI_awsize"), S02_AXI_awburst("S02_AXI_awburst"), S02_AXI_awlock("S02_AXI_awlock"), S02_AXI_awcache("S02_AXI_awcache"), S02_AXI_awprot("S02_AXI_awprot"), S02_AXI_awqos("S02_AXI_awqos"), S02_AXI_awuser("S02_AXI_awuser"), S02_AXI_awvalid("S02_AXI_awvalid"), S02_AXI_awready("S02_AXI_awready"), S02_AXI_wdata("S02_AXI_wdata"), S02_AXI_wstrb("S02_AXI_wstrb"), S02_AXI_wlast("S02_AXI_wlast"), S02_AXI_wuser("S02_AXI_wuser"), S02_AXI_wvalid("S02_AXI_wvalid"), S02_AXI_wready("S02_AXI_wready"), S02_AXI_bid("S02_AXI_bid"), S02_AXI_bresp("S02_AXI_bresp"), S02_AXI_buser("S02_AXI_buser"), S02_AXI_bvalid("S02_AXI_bvalid"), S02_AXI_bready("S02_AXI_bready"), S02_AXI_arid("S02_AXI_arid"), S02_AXI_araddr("S02_AXI_araddr"), S02_AXI_arlen("S02_AXI_arlen"), S02_AXI_arsize("S02_AXI_arsize"), S02_AXI_arburst("S02_AXI_arburst"), S02_AXI_arlock("S02_AXI_arlock"), S02_AXI_arcache("S02_AXI_arcache"), S02_AXI_arprot("S02_AXI_arprot"), S02_AXI_arqos("S02_AXI_arqos"), S02_AXI_aruser("S02_AXI_aruser"), S02_AXI_arvalid("S02_AXI_arvalid"), S02_AXI_arready("S02_AXI_arready"), S02_AXI_rid("S02_AXI_rid"), S02_AXI_rdata("S02_AXI_rdata"), S02_AXI_rresp("S02_AXI_rresp"), S02_AXI_rlast("S02_AXI_rlast"), S02_AXI_ruser("S02_AXI_ruser"), S02_AXI_rvalid("S02_AXI_rvalid"), S02_AXI_rready("S02_AXI_rready"), S03_AXI_awid("S03_AXI_awid"), S03_AXI_awaddr("S03_AXI_awaddr"), S03_AXI_awlen("S03_AXI_awlen"), S03_AXI_awsize("S03_AXI_awsize"), S03_AXI_awburst("S03_AXI_awburst"), S03_AXI_awlock("S03_AXI_awlock"), S03_AXI_awcache("S03_AXI_awcache"), S03_AXI_awprot("S03_AXI_awprot"), S03_AXI_awqos("S03_AXI_awqos"), S03_AXI_awuser("S03_AXI_awuser"), S03_AXI_awvalid("S03_AXI_awvalid"), S03_AXI_awready("S03_AXI_awready"), S03_AXI_wdata("S03_AXI_wdata"), S03_AXI_wstrb("S03_AXI_wstrb"), S03_AXI_wlast("S03_AXI_wlast"), S03_AXI_wuser("S03_AXI_wuser"), S03_AXI_wvalid("S03_AXI_wvalid"), S03_AXI_wready("S03_AXI_wready"), S03_AXI_bid("S03_AXI_bid"), S03_AXI_bresp("S03_AXI_bresp"), S03_AXI_buser("S03_AXI_buser"), S03_AXI_bvalid("S03_AXI_bvalid"), S03_AXI_bready("S03_AXI_bready"), S03_AXI_arid("S03_AXI_arid"), S03_AXI_araddr("S03_AXI_araddr"), S03_AXI_arlen("S03_AXI_arlen"), S03_AXI_arsize("S03_AXI_arsize"), S03_AXI_arburst("S03_AXI_arburst"), S03_AXI_arlock("S03_AXI_arlock"), S03_AXI_arcache("S03_AXI_arcache"), S03_AXI_arprot("S03_AXI_arprot"), S03_AXI_arqos("S03_AXI_arqos"), S03_AXI_aruser("S03_AXI_aruser"), S03_AXI_arvalid("S03_AXI_arvalid"), S03_AXI_arready("S03_AXI_arready"), S03_AXI_rid("S03_AXI_rid"), S03_AXI_rdata("S03_AXI_rdata"), S03_AXI_rresp("S03_AXI_rresp"), S03_AXI_rlast("S03_AXI_rlast"), S03_AXI_ruser("S03_AXI_ruser"), S03_AXI_rvalid("S03_AXI_rvalid"), S03_AXI_rready("S03_AXI_rready"), S04_AXI_awaddr("S04_AXI_awaddr"), S04_AXI_awlen("S04_AXI_awlen"), S04_AXI_awsize("S04_AXI_awsize"), S04_AXI_awlock("S04_AXI_awlock"), S04_AXI_awcache("S04_AXI_awcache"), S04_AXI_awprot("S04_AXI_awprot"), S04_AXI_awregion("S04_AXI_awregion"), S04_AXI_awqos("S04_AXI_awqos"), S04_AXI_awvalid("S04_AXI_awvalid"), S04_AXI_awready("S04_AXI_awready"), S04_AXI_wdata("S04_AXI_wdata"), S04_AXI_wstrb("S04_AXI_wstrb"), S04_AXI_wlast("S04_AXI_wlast"), S04_AXI_wvalid("S04_AXI_wvalid"), S04_AXI_wready("S04_AXI_wready"), S04_AXI_bresp("S04_AXI_bresp"), S04_AXI_bvalid("S04_AXI_bvalid"), S04_AXI_bready("S04_AXI_bready"), S04_AXI_araddr("S04_AXI_araddr"), S04_AXI_arlen("S04_AXI_arlen"), S04_AXI_arsize("S04_AXI_arsize"), S04_AXI_arlock("S04_AXI_arlock"), S04_AXI_arcache("S04_AXI_arcache"), S04_AXI_arprot("S04_AXI_arprot"), S04_AXI_arregion("S04_AXI_arregion"), S04_AXI_arqos("S04_AXI_arqos"), S04_AXI_arvalid("S04_AXI_arvalid"), S04_AXI_arready("S04_AXI_arready"), S04_AXI_rdata("S04_AXI_rdata"), S04_AXI_rresp("S04_AXI_rresp"), S04_AXI_rlast("S04_AXI_rlast"), S04_AXI_rvalid("S04_AXI_rvalid"), S04_AXI_rready("S04_AXI_rready"), ddr4_mem_calib_complete("ddr4_mem_calib_complete"), M00_AXI_awid("M00_AXI_awid"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awlen("M00_AXI_awlen"), M00_AXI_awsize("M00_AXI_awsize"), M00_AXI_awburst("M00_AXI_awburst"), M00_AXI_awlock("M00_AXI_awlock"), M00_AXI_awcache("M00_AXI_awcache"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awqos("M00_AXI_awqos"), M00_AXI_awuser("M00_AXI_awuser"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wlast("M00_AXI_wlast"), M00_AXI_wuser("M00_AXI_wuser"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bid("M00_AXI_bid"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_buser("M00_AXI_buser"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_arid("M00_AXI_arid"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arlen("M00_AXI_arlen"), M00_AXI_arsize("M00_AXI_arsize"), M00_AXI_arburst("M00_AXI_arburst"), M00_AXI_arlock("M00_AXI_arlock"), M00_AXI_arcache("M00_AXI_arcache"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arqos("M00_AXI_arqos"), M00_AXI_aruser("M00_AXI_aruser"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rid("M00_AXI_rid"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rlast("M00_AXI_rlast"), M00_AXI_ruser("M00_AXI_ruser"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready"), M01_AXI_awaddr("M01_AXI_awaddr"), M01_AXI_awlen("M01_AXI_awlen"), M01_AXI_awsize("M01_AXI_awsize"), M01_AXI_awburst("M01_AXI_awburst"), M01_AXI_awprot("M01_AXI_awprot"), M01_AXI_awvalid("M01_AXI_awvalid"), M01_AXI_awready("M01_AXI_awready"), M01_AXI_wdata("M01_AXI_wdata"), M01_AXI_wstrb("M01_AXI_wstrb"), M01_AXI_wlast("M01_AXI_wlast"), M01_AXI_wvalid("M01_AXI_wvalid"), M01_AXI_wready("M01_AXI_wready"), M01_AXI_bresp("M01_AXI_bresp"), M01_AXI_bvalid("M01_AXI_bvalid"), M01_AXI_bready("M01_AXI_bready"), M01_AXI_araddr("M01_AXI_araddr"), M01_AXI_arlen("M01_AXI_arlen"), M01_AXI_arsize("M01_AXI_arsize"), M01_AXI_arburst("M01_AXI_arburst"), M01_AXI_arprot("M01_AXI_arprot"), M01_AXI_arvalid("M01_AXI_arvalid"), M01_AXI_arready("M01_AXI_arready"), M01_AXI_rdata("M01_AXI_rdata"), M01_AXI_rresp("M01_AXI_rresp"), M01_AXI_rlast("M01_AXI_rlast"), M01_AXI_rvalid("M01_AXI_rvalid"), M01_AXI_rready("M01_AXI_rready"), M02_AXI_awid("M02_AXI_awid"), M02_AXI_awaddr("M02_AXI_awaddr"), M02_AXI_awlen("M02_AXI_awlen"), M02_AXI_awsize("M02_AXI_awsize"), M02_AXI_awburst("M02_AXI_awburst"), M02_AXI_awlock("M02_AXI_awlock"), M02_AXI_awcache("M02_AXI_awcache"), M02_AXI_awprot("M02_AXI_awprot"), M02_AXI_awqos("M02_AXI_awqos"), M02_AXI_awuser("M02_AXI_awuser"), M02_AXI_awvalid("M02_AXI_awvalid"), M02_AXI_awready("M02_AXI_awready"), M02_AXI_wdata("M02_AXI_wdata"), M02_AXI_wstrb("M02_AXI_wstrb"), M02_AXI_wlast("M02_AXI_wlast"), M02_AXI_wuser("M02_AXI_wuser"), M02_AXI_wvalid("M02_AXI_wvalid"), M02_AXI_wready("M02_AXI_wready"), M02_AXI_bid("M02_AXI_bid"), M02_AXI_bresp("M02_AXI_bresp"), M02_AXI_buser("M02_AXI_buser"), M02_AXI_bvalid("M02_AXI_bvalid"), M02_AXI_bready("M02_AXI_bready"), M02_AXI_arid("M02_AXI_arid"), M02_AXI_araddr("M02_AXI_araddr"), M02_AXI_arlen("M02_AXI_arlen"), M02_AXI_arsize("M02_AXI_arsize"), M02_AXI_arburst("M02_AXI_arburst"), M02_AXI_arlock("M02_AXI_arlock"), M02_AXI_arcache("M02_AXI_arcache"), M02_AXI_arprot("M02_AXI_arprot"), M02_AXI_arqos("M02_AXI_arqos"), M02_AXI_aruser("M02_AXI_aruser"), M02_AXI_arvalid("M02_AXI_arvalid"), M02_AXI_arready("M02_AXI_arready"), M02_AXI_rid("M02_AXI_rid"), M02_AXI_rdata("M02_AXI_rdata"), M02_AXI_rresp("M02_AXI_rresp"), M02_AXI_rlast("M02_AXI_rlast"), M02_AXI_ruser("M02_AXI_ruser"), M02_AXI_rvalid("M02_AXI_rvalid"), M02_AXI_rready("M02_AXI_rready"), M03_AXI_awid("M03_AXI_awid"), M03_AXI_awaddr("M03_AXI_awaddr"), M03_AXI_awlen("M03_AXI_awlen"), M03_AXI_awsize("M03_AXI_awsize"), M03_AXI_awburst("M03_AXI_awburst"), M03_AXI_awlock("M03_AXI_awlock"), M03_AXI_awcache("M03_AXI_awcache"), M03_AXI_awprot("M03_AXI_awprot"), M03_AXI_awqos("M03_AXI_awqos"), M03_AXI_awuser("M03_AXI_awuser"), M03_AXI_awvalid("M03_AXI_awvalid"), M03_AXI_awready("M03_AXI_awready"), M03_AXI_wdata("M03_AXI_wdata"), M03_AXI_wstrb("M03_AXI_wstrb"), M03_AXI_wlast("M03_AXI_wlast"), M03_AXI_wuser("M03_AXI_wuser"), M03_AXI_wvalid("M03_AXI_wvalid"), M03_AXI_wready("M03_AXI_wready"), M03_AXI_bid("M03_AXI_bid"), M03_AXI_bresp("M03_AXI_bresp"), M03_AXI_buser("M03_AXI_buser"), M03_AXI_bvalid("M03_AXI_bvalid"), M03_AXI_bready("M03_AXI_bready"), M03_AXI_arid("M03_AXI_arid"), M03_AXI_araddr("M03_AXI_araddr"), M03_AXI_arlen("M03_AXI_arlen"), M03_AXI_arsize("M03_AXI_arsize"), M03_AXI_arburst("M03_AXI_arburst"), M03_AXI_arlock("M03_AXI_arlock"), M03_AXI_arcache("M03_AXI_arcache"), M03_AXI_arprot("M03_AXI_arprot"), M03_AXI_arqos("M03_AXI_arqos"), M03_AXI_aruser("M03_AXI_aruser"), M03_AXI_arvalid("M03_AXI_arvalid"), M03_AXI_arready("M03_AXI_arready"), M03_AXI_rid("M03_AXI_rid"), M03_AXI_rdata("M03_AXI_rdata"), M03_AXI_rresp("M03_AXI_rresp"), M03_AXI_rlast("M03_AXI_rlast"), M03_AXI_ruser("M03_AXI_ruser"), M03_AXI_rvalid("M03_AXI_rvalid"), M03_AXI_rready("M03_AXI_rready")
{
  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aclk1(aclk1);
  mp_impl->aresetn(aresetn);
  mp_impl->ddr4_mem_calib_complete(ddr4_mem_calib_complete);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_awvalid_converter = NULL;
  mp_S00_AXI_awready_converter = NULL;
  mp_S00_AXI_wlast_converter = NULL;
  mp_S00_AXI_wvalid_converter = NULL;
  mp_S00_AXI_wready_converter = NULL;
  mp_S00_AXI_bvalid_converter = NULL;
  mp_S00_AXI_bready_converter = NULL;
  mp_S00_AXI_arvalid_converter = NULL;
  mp_S00_AXI_arready_converter = NULL;
  mp_S00_AXI_rlast_converter = NULL;
  mp_S00_AXI_rvalid_converter = NULL;
  mp_S00_AXI_rready_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S01_AXI_awvalid_converter = NULL;
  mp_S01_AXI_awready_converter = NULL;
  mp_S01_AXI_wlast_converter = NULL;
  mp_S01_AXI_wvalid_converter = NULL;
  mp_S01_AXI_wready_converter = NULL;
  mp_S01_AXI_bvalid_converter = NULL;
  mp_S01_AXI_bready_converter = NULL;
  mp_S01_AXI_arvalid_converter = NULL;
  mp_S01_AXI_arready_converter = NULL;
  mp_S01_AXI_rlast_converter = NULL;
  mp_S01_AXI_rvalid_converter = NULL;
  mp_S01_AXI_rready_converter = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S02_AXI_awvalid_converter = NULL;
  mp_S02_AXI_awready_converter = NULL;
  mp_S02_AXI_wlast_converter = NULL;
  mp_S02_AXI_wvalid_converter = NULL;
  mp_S02_AXI_wready_converter = NULL;
  mp_S02_AXI_bvalid_converter = NULL;
  mp_S02_AXI_bready_converter = NULL;
  mp_S02_AXI_arvalid_converter = NULL;
  mp_S02_AXI_arready_converter = NULL;
  mp_S02_AXI_rlast_converter = NULL;
  mp_S02_AXI_rvalid_converter = NULL;
  mp_S02_AXI_rready_converter = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S03_AXI_awvalid_converter = NULL;
  mp_S03_AXI_awready_converter = NULL;
  mp_S03_AXI_wlast_converter = NULL;
  mp_S03_AXI_wvalid_converter = NULL;
  mp_S03_AXI_wready_converter = NULL;
  mp_S03_AXI_bvalid_converter = NULL;
  mp_S03_AXI_bready_converter = NULL;
  mp_S03_AXI_arvalid_converter = NULL;
  mp_S03_AXI_arready_converter = NULL;
  mp_S03_AXI_rlast_converter = NULL;
  mp_S03_AXI_rvalid_converter = NULL;
  mp_S03_AXI_rready_converter = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_S04_AXI_awvalid_converter = NULL;
  mp_S04_AXI_awready_converter = NULL;
  mp_S04_AXI_wlast_converter = NULL;
  mp_S04_AXI_wvalid_converter = NULL;
  mp_S04_AXI_wready_converter = NULL;
  mp_S04_AXI_bvalid_converter = NULL;
  mp_S04_AXI_bready_converter = NULL;
  mp_S04_AXI_arvalid_converter = NULL;
  mp_S04_AXI_arready_converter = NULL;
  mp_S04_AXI_rlast_converter = NULL;
  mp_S04_AXI_rvalid_converter = NULL;
  mp_S04_AXI_rready_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M00_AXI_awaddr_converter = NULL;
  mp_M00_AXI_awvalid_converter = NULL;
  mp_M00_AXI_awready_converter = NULL;
  mp_M00_AXI_wlast_converter = NULL;
  mp_M00_AXI_wvalid_converter = NULL;
  mp_M00_AXI_wready_converter = NULL;
  mp_M00_AXI_bvalid_converter = NULL;
  mp_M00_AXI_bready_converter = NULL;
  mp_M00_AXI_araddr_converter = NULL;
  mp_M00_AXI_arvalid_converter = NULL;
  mp_M00_AXI_arready_converter = NULL;
  mp_M00_AXI_rlast_converter = NULL;
  mp_M00_AXI_rvalid_converter = NULL;
  mp_M00_AXI_rready_converter = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_M01_AXI_awvalid_converter = NULL;
  mp_M01_AXI_awready_converter = NULL;
  mp_M01_AXI_wlast_converter = NULL;
  mp_M01_AXI_wvalid_converter = NULL;
  mp_M01_AXI_wready_converter = NULL;
  mp_M01_AXI_bvalid_converter = NULL;
  mp_M01_AXI_bready_converter = NULL;
  mp_M01_AXI_arvalid_converter = NULL;
  mp_M01_AXI_arready_converter = NULL;
  mp_M01_AXI_rlast_converter = NULL;
  mp_M01_AXI_rvalid_converter = NULL;
  mp_M01_AXI_rready_converter = NULL;
  mp_M02_AXI_transactor = NULL;
  mp_M02_AXI_awaddr_converter = NULL;
  mp_M02_AXI_awvalid_converter = NULL;
  mp_M02_AXI_awready_converter = NULL;
  mp_M02_AXI_wlast_converter = NULL;
  mp_M02_AXI_wvalid_converter = NULL;
  mp_M02_AXI_wready_converter = NULL;
  mp_M02_AXI_bvalid_converter = NULL;
  mp_M02_AXI_bready_converter = NULL;
  mp_M02_AXI_araddr_converter = NULL;
  mp_M02_AXI_arvalid_converter = NULL;
  mp_M02_AXI_arready_converter = NULL;
  mp_M02_AXI_rlast_converter = NULL;
  mp_M02_AXI_rvalid_converter = NULL;
  mp_M02_AXI_rready_converter = NULL;
  mp_M03_AXI_transactor = NULL;
  mp_M03_AXI_awaddr_converter = NULL;
  mp_M03_AXI_awvalid_converter = NULL;
  mp_M03_AXI_awready_converter = NULL;
  mp_M03_AXI_wlast_converter = NULL;
  mp_M03_AXI_wvalid_converter = NULL;
  mp_M03_AXI_wready_converter = NULL;
  mp_M03_AXI_bvalid_converter = NULL;
  mp_M03_AXI_bready_converter = NULL;
  mp_M03_AXI_araddr_converter = NULL;
  mp_M03_AXI_arvalid_converter = NULL;
  mp_M03_AXI_arready_converter = NULL;
  mp_M03_AXI_rlast_converter = NULL;
  mp_M03_AXI_rvalid_converter = NULL;
  mp_M03_AXI_rready_converter = NULL;

  // Instantiate Socket Stubs

  // configure S00_AXI_transactor
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
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
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);
  mp_S00_AXI_transactor->AWID(S00_AXI_awid);
  mp_S00_AXI_transactor->AWADDR(S00_AXI_awaddr);
  mp_S00_AXI_transactor->AWLEN(S00_AXI_awlen);
  mp_S00_AXI_transactor->AWSIZE(S00_AXI_awsize);
  mp_S00_AXI_transactor->AWBURST(S00_AXI_awburst);
  mp_S00_AXI_transactor->AWLOCK(S00_AXI_awlock);
  mp_S00_AXI_transactor->AWCACHE(S00_AXI_awcache);
  mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
  mp_S00_AXI_transactor->AWQOS(S00_AXI_awqos);
  mp_S00_AXI_transactor->AWUSER(S00_AXI_awuser);
  mp_S00_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awvalid_converter");
  mp_S00_AXI_awvalid_converter->vector_in(S00_AXI_awvalid);
  mp_S00_AXI_awvalid_converter->scalar_out(m_S00_AXI_awvalid_converter_signal);
  mp_S00_AXI_transactor->AWVALID(m_S00_AXI_awvalid_converter_signal);
  mp_S00_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_awready_converter");
  mp_S00_AXI_awready_converter->scalar_in(m_S00_AXI_awready_converter_signal);
  mp_S00_AXI_awready_converter->vector_out(S00_AXI_awready);
  mp_S00_AXI_transactor->AWREADY(m_S00_AXI_awready_converter_signal);
  mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
  mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
  mp_S00_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wlast_converter");
  mp_S00_AXI_wlast_converter->vector_in(S00_AXI_wlast);
  mp_S00_AXI_wlast_converter->scalar_out(m_S00_AXI_wlast_converter_signal);
  mp_S00_AXI_transactor->WLAST(m_S00_AXI_wlast_converter_signal);
  mp_S00_AXI_transactor->WUSER(S00_AXI_wuser);
  mp_S00_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wvalid_converter");
  mp_S00_AXI_wvalid_converter->vector_in(S00_AXI_wvalid);
  mp_S00_AXI_wvalid_converter->scalar_out(m_S00_AXI_wvalid_converter_signal);
  mp_S00_AXI_transactor->WVALID(m_S00_AXI_wvalid_converter_signal);
  mp_S00_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_wready_converter");
  mp_S00_AXI_wready_converter->scalar_in(m_S00_AXI_wready_converter_signal);
  mp_S00_AXI_wready_converter->vector_out(S00_AXI_wready);
  mp_S00_AXI_transactor->WREADY(m_S00_AXI_wready_converter_signal);
  mp_S00_AXI_transactor->BID(S00_AXI_bid);
  mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
  mp_S00_AXI_transactor->BUSER(S00_AXI_buser);
  mp_S00_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_bvalid_converter");
  mp_S00_AXI_bvalid_converter->scalar_in(m_S00_AXI_bvalid_converter_signal);
  mp_S00_AXI_bvalid_converter->vector_out(S00_AXI_bvalid);
  mp_S00_AXI_transactor->BVALID(m_S00_AXI_bvalid_converter_signal);
  mp_S00_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_bready_converter");
  mp_S00_AXI_bready_converter->vector_in(S00_AXI_bready);
  mp_S00_AXI_bready_converter->scalar_out(m_S00_AXI_bready_converter_signal);
  mp_S00_AXI_transactor->BREADY(m_S00_AXI_bready_converter_signal);
  mp_S00_AXI_transactor->ARID(S00_AXI_arid);
  mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
  mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
  mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
  mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
  mp_S00_AXI_transactor->ARLOCK(S00_AXI_arlock);
  mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
  mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
  mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
  mp_S00_AXI_transactor->ARUSER(S00_AXI_aruser);
  mp_S00_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arvalid_converter");
  mp_S00_AXI_arvalid_converter->vector_in(S00_AXI_arvalid);
  mp_S00_AXI_arvalid_converter->scalar_out(m_S00_AXI_arvalid_converter_signal);
  mp_S00_AXI_transactor->ARVALID(m_S00_AXI_arvalid_converter_signal);
  mp_S00_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_arready_converter");
  mp_S00_AXI_arready_converter->scalar_in(m_S00_AXI_arready_converter_signal);
  mp_S00_AXI_arready_converter->vector_out(S00_AXI_arready);
  mp_S00_AXI_transactor->ARREADY(m_S00_AXI_arready_converter_signal);
  mp_S00_AXI_transactor->RID(S00_AXI_rid);
  mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
  mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
  mp_S00_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rlast_converter");
  mp_S00_AXI_rlast_converter->scalar_in(m_S00_AXI_rlast_converter_signal);
  mp_S00_AXI_rlast_converter->vector_out(S00_AXI_rlast);
  mp_S00_AXI_transactor->RLAST(m_S00_AXI_rlast_converter_signal);
  mp_S00_AXI_transactor->RUSER(S00_AXI_ruser);
  mp_S00_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rvalid_converter");
  mp_S00_AXI_rvalid_converter->scalar_in(m_S00_AXI_rvalid_converter_signal);
  mp_S00_AXI_rvalid_converter->vector_out(S00_AXI_rvalid);
  mp_S00_AXI_transactor->RVALID(m_S00_AXI_rvalid_converter_signal);
  mp_S00_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_rready_converter");
  mp_S00_AXI_rready_converter->vector_in(S00_AXI_rready);
  mp_S00_AXI_rready_converter->scalar_out(m_S00_AXI_rready_converter_signal);
  mp_S00_AXI_transactor->RREADY(m_S00_AXI_rready_converter_signal);
  mp_S00_AXI_transactor->CLK(aclk);
  mp_S00_AXI_transactor->RST(aresetn);
  // configure S01_AXI_transactor
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "35");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S01_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);
  mp_S01_AXI_transactor->AWID(S01_AXI_awid);
  mp_S01_AXI_transactor->AWADDR(S01_AXI_awaddr);
  mp_S01_AXI_transactor->AWLEN(S01_AXI_awlen);
  mp_S01_AXI_transactor->AWSIZE(S01_AXI_awsize);
  mp_S01_AXI_transactor->AWBURST(S01_AXI_awburst);
  mp_S01_AXI_transactor->AWLOCK(S01_AXI_awlock);
  mp_S01_AXI_transactor->AWCACHE(S01_AXI_awcache);
  mp_S01_AXI_transactor->AWPROT(S01_AXI_awprot);
  mp_S01_AXI_transactor->AWQOS(S01_AXI_awqos);
  mp_S01_AXI_transactor->AWUSER(S01_AXI_awuser);
  mp_S01_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_awvalid_converter");
  mp_S01_AXI_awvalid_converter->vector_in(S01_AXI_awvalid);
  mp_S01_AXI_awvalid_converter->scalar_out(m_S01_AXI_awvalid_converter_signal);
  mp_S01_AXI_transactor->AWVALID(m_S01_AXI_awvalid_converter_signal);
  mp_S01_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_awready_converter");
  mp_S01_AXI_awready_converter->scalar_in(m_S01_AXI_awready_converter_signal);
  mp_S01_AXI_awready_converter->vector_out(S01_AXI_awready);
  mp_S01_AXI_transactor->AWREADY(m_S01_AXI_awready_converter_signal);
  mp_S01_AXI_transactor->WDATA(S01_AXI_wdata);
  mp_S01_AXI_transactor->WSTRB(S01_AXI_wstrb);
  mp_S01_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_wlast_converter");
  mp_S01_AXI_wlast_converter->vector_in(S01_AXI_wlast);
  mp_S01_AXI_wlast_converter->scalar_out(m_S01_AXI_wlast_converter_signal);
  mp_S01_AXI_transactor->WLAST(m_S01_AXI_wlast_converter_signal);
  mp_S01_AXI_transactor->WUSER(S01_AXI_wuser);
  mp_S01_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_wvalid_converter");
  mp_S01_AXI_wvalid_converter->vector_in(S01_AXI_wvalid);
  mp_S01_AXI_wvalid_converter->scalar_out(m_S01_AXI_wvalid_converter_signal);
  mp_S01_AXI_transactor->WVALID(m_S01_AXI_wvalid_converter_signal);
  mp_S01_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_wready_converter");
  mp_S01_AXI_wready_converter->scalar_in(m_S01_AXI_wready_converter_signal);
  mp_S01_AXI_wready_converter->vector_out(S01_AXI_wready);
  mp_S01_AXI_transactor->WREADY(m_S01_AXI_wready_converter_signal);
  mp_S01_AXI_transactor->BID(S01_AXI_bid);
  mp_S01_AXI_transactor->BRESP(S01_AXI_bresp);
  mp_S01_AXI_transactor->BUSER(S01_AXI_buser);
  mp_S01_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_bvalid_converter");
  mp_S01_AXI_bvalid_converter->scalar_in(m_S01_AXI_bvalid_converter_signal);
  mp_S01_AXI_bvalid_converter->vector_out(S01_AXI_bvalid);
  mp_S01_AXI_transactor->BVALID(m_S01_AXI_bvalid_converter_signal);
  mp_S01_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_bready_converter");
  mp_S01_AXI_bready_converter->vector_in(S01_AXI_bready);
  mp_S01_AXI_bready_converter->scalar_out(m_S01_AXI_bready_converter_signal);
  mp_S01_AXI_transactor->BREADY(m_S01_AXI_bready_converter_signal);
  mp_S01_AXI_transactor->ARID(S01_AXI_arid);
  mp_S01_AXI_transactor->ARADDR(S01_AXI_araddr);
  mp_S01_AXI_transactor->ARLEN(S01_AXI_arlen);
  mp_S01_AXI_transactor->ARSIZE(S01_AXI_arsize);
  mp_S01_AXI_transactor->ARBURST(S01_AXI_arburst);
  mp_S01_AXI_transactor->ARLOCK(S01_AXI_arlock);
  mp_S01_AXI_transactor->ARCACHE(S01_AXI_arcache);
  mp_S01_AXI_transactor->ARPROT(S01_AXI_arprot);
  mp_S01_AXI_transactor->ARQOS(S01_AXI_arqos);
  mp_S01_AXI_transactor->ARUSER(S01_AXI_aruser);
  mp_S01_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_arvalid_converter");
  mp_S01_AXI_arvalid_converter->vector_in(S01_AXI_arvalid);
  mp_S01_AXI_arvalid_converter->scalar_out(m_S01_AXI_arvalid_converter_signal);
  mp_S01_AXI_transactor->ARVALID(m_S01_AXI_arvalid_converter_signal);
  mp_S01_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_arready_converter");
  mp_S01_AXI_arready_converter->scalar_in(m_S01_AXI_arready_converter_signal);
  mp_S01_AXI_arready_converter->vector_out(S01_AXI_arready);
  mp_S01_AXI_transactor->ARREADY(m_S01_AXI_arready_converter_signal);
  mp_S01_AXI_transactor->RID(S01_AXI_rid);
  mp_S01_AXI_transactor->RDATA(S01_AXI_rdata);
  mp_S01_AXI_transactor->RRESP(S01_AXI_rresp);
  mp_S01_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_rlast_converter");
  mp_S01_AXI_rlast_converter->scalar_in(m_S01_AXI_rlast_converter_signal);
  mp_S01_AXI_rlast_converter->vector_out(S01_AXI_rlast);
  mp_S01_AXI_transactor->RLAST(m_S01_AXI_rlast_converter_signal);
  mp_S01_AXI_transactor->RUSER(S01_AXI_ruser);
  mp_S01_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_rvalid_converter");
  mp_S01_AXI_rvalid_converter->scalar_in(m_S01_AXI_rvalid_converter_signal);
  mp_S01_AXI_rvalid_converter->vector_out(S01_AXI_rvalid);
  mp_S01_AXI_transactor->RVALID(m_S01_AXI_rvalid_converter_signal);
  mp_S01_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_rready_converter");
  mp_S01_AXI_rready_converter->vector_in(S01_AXI_rready);
  mp_S01_AXI_rready_converter->scalar_out(m_S01_AXI_rready_converter_signal);
  mp_S01_AXI_transactor->RREADY(m_S01_AXI_rready_converter_signal);
  mp_S01_AXI_transactor->CLK(aclk);
  mp_S01_AXI_transactor->RST(aresetn);
  // configure S02_AXI_transactor
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S02_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S02_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S02_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S02_AXI_transactor", S02_AXI_transactor_param_props);
  mp_S02_AXI_transactor->AWID(S02_AXI_awid);
  mp_S02_AXI_transactor->AWADDR(S02_AXI_awaddr);
  mp_S02_AXI_transactor->AWLEN(S02_AXI_awlen);
  mp_S02_AXI_transactor->AWSIZE(S02_AXI_awsize);
  mp_S02_AXI_transactor->AWBURST(S02_AXI_awburst);
  mp_S02_AXI_transactor->AWLOCK(S02_AXI_awlock);
  mp_S02_AXI_transactor->AWCACHE(S02_AXI_awcache);
  mp_S02_AXI_transactor->AWPROT(S02_AXI_awprot);
  mp_S02_AXI_transactor->AWQOS(S02_AXI_awqos);
  mp_S02_AXI_transactor->AWUSER(S02_AXI_awuser);
  mp_S02_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_awvalid_converter");
  mp_S02_AXI_awvalid_converter->vector_in(S02_AXI_awvalid);
  mp_S02_AXI_awvalid_converter->scalar_out(m_S02_AXI_awvalid_converter_signal);
  mp_S02_AXI_transactor->AWVALID(m_S02_AXI_awvalid_converter_signal);
  mp_S02_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_awready_converter");
  mp_S02_AXI_awready_converter->scalar_in(m_S02_AXI_awready_converter_signal);
  mp_S02_AXI_awready_converter->vector_out(S02_AXI_awready);
  mp_S02_AXI_transactor->AWREADY(m_S02_AXI_awready_converter_signal);
  mp_S02_AXI_transactor->WDATA(S02_AXI_wdata);
  mp_S02_AXI_transactor->WSTRB(S02_AXI_wstrb);
  mp_S02_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_wlast_converter");
  mp_S02_AXI_wlast_converter->vector_in(S02_AXI_wlast);
  mp_S02_AXI_wlast_converter->scalar_out(m_S02_AXI_wlast_converter_signal);
  mp_S02_AXI_transactor->WLAST(m_S02_AXI_wlast_converter_signal);
  mp_S02_AXI_transactor->WUSER(S02_AXI_wuser);
  mp_S02_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_wvalid_converter");
  mp_S02_AXI_wvalid_converter->vector_in(S02_AXI_wvalid);
  mp_S02_AXI_wvalid_converter->scalar_out(m_S02_AXI_wvalid_converter_signal);
  mp_S02_AXI_transactor->WVALID(m_S02_AXI_wvalid_converter_signal);
  mp_S02_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_wready_converter");
  mp_S02_AXI_wready_converter->scalar_in(m_S02_AXI_wready_converter_signal);
  mp_S02_AXI_wready_converter->vector_out(S02_AXI_wready);
  mp_S02_AXI_transactor->WREADY(m_S02_AXI_wready_converter_signal);
  mp_S02_AXI_transactor->BID(S02_AXI_bid);
  mp_S02_AXI_transactor->BRESP(S02_AXI_bresp);
  mp_S02_AXI_transactor->BUSER(S02_AXI_buser);
  mp_S02_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_bvalid_converter");
  mp_S02_AXI_bvalid_converter->scalar_in(m_S02_AXI_bvalid_converter_signal);
  mp_S02_AXI_bvalid_converter->vector_out(S02_AXI_bvalid);
  mp_S02_AXI_transactor->BVALID(m_S02_AXI_bvalid_converter_signal);
  mp_S02_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_bready_converter");
  mp_S02_AXI_bready_converter->vector_in(S02_AXI_bready);
  mp_S02_AXI_bready_converter->scalar_out(m_S02_AXI_bready_converter_signal);
  mp_S02_AXI_transactor->BREADY(m_S02_AXI_bready_converter_signal);
  mp_S02_AXI_transactor->ARID(S02_AXI_arid);
  mp_S02_AXI_transactor->ARADDR(S02_AXI_araddr);
  mp_S02_AXI_transactor->ARLEN(S02_AXI_arlen);
  mp_S02_AXI_transactor->ARSIZE(S02_AXI_arsize);
  mp_S02_AXI_transactor->ARBURST(S02_AXI_arburst);
  mp_S02_AXI_transactor->ARLOCK(S02_AXI_arlock);
  mp_S02_AXI_transactor->ARCACHE(S02_AXI_arcache);
  mp_S02_AXI_transactor->ARPROT(S02_AXI_arprot);
  mp_S02_AXI_transactor->ARQOS(S02_AXI_arqos);
  mp_S02_AXI_transactor->ARUSER(S02_AXI_aruser);
  mp_S02_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_arvalid_converter");
  mp_S02_AXI_arvalid_converter->vector_in(S02_AXI_arvalid);
  mp_S02_AXI_arvalid_converter->scalar_out(m_S02_AXI_arvalid_converter_signal);
  mp_S02_AXI_transactor->ARVALID(m_S02_AXI_arvalid_converter_signal);
  mp_S02_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_arready_converter");
  mp_S02_AXI_arready_converter->scalar_in(m_S02_AXI_arready_converter_signal);
  mp_S02_AXI_arready_converter->vector_out(S02_AXI_arready);
  mp_S02_AXI_transactor->ARREADY(m_S02_AXI_arready_converter_signal);
  mp_S02_AXI_transactor->RID(S02_AXI_rid);
  mp_S02_AXI_transactor->RDATA(S02_AXI_rdata);
  mp_S02_AXI_transactor->RRESP(S02_AXI_rresp);
  mp_S02_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_rlast_converter");
  mp_S02_AXI_rlast_converter->scalar_in(m_S02_AXI_rlast_converter_signal);
  mp_S02_AXI_rlast_converter->vector_out(S02_AXI_rlast);
  mp_S02_AXI_transactor->RLAST(m_S02_AXI_rlast_converter_signal);
  mp_S02_AXI_transactor->RUSER(S02_AXI_ruser);
  mp_S02_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_rvalid_converter");
  mp_S02_AXI_rvalid_converter->scalar_in(m_S02_AXI_rvalid_converter_signal);
  mp_S02_AXI_rvalid_converter->vector_out(S02_AXI_rvalid);
  mp_S02_AXI_transactor->RVALID(m_S02_AXI_rvalid_converter_signal);
  mp_S02_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_rready_converter");
  mp_S02_AXI_rready_converter->vector_in(S02_AXI_rready);
  mp_S02_AXI_rready_converter->scalar_out(m_S02_AXI_rready_converter_signal);
  mp_S02_AXI_transactor->RREADY(m_S02_AXI_rready_converter_signal);
  mp_S02_AXI_transactor->CLK(aclk);
  mp_S02_AXI_transactor->RST(aresetn);
  // configure S03_AXI_transactor
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S03_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S03_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S03_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S03_AXI_transactor", S03_AXI_transactor_param_props);
  mp_S03_AXI_transactor->AWID(S03_AXI_awid);
  mp_S03_AXI_transactor->AWADDR(S03_AXI_awaddr);
  mp_S03_AXI_transactor->AWLEN(S03_AXI_awlen);
  mp_S03_AXI_transactor->AWSIZE(S03_AXI_awsize);
  mp_S03_AXI_transactor->AWBURST(S03_AXI_awburst);
  mp_S03_AXI_transactor->AWLOCK(S03_AXI_awlock);
  mp_S03_AXI_transactor->AWCACHE(S03_AXI_awcache);
  mp_S03_AXI_transactor->AWPROT(S03_AXI_awprot);
  mp_S03_AXI_transactor->AWQOS(S03_AXI_awqos);
  mp_S03_AXI_transactor->AWUSER(S03_AXI_awuser);
  mp_S03_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_awvalid_converter");
  mp_S03_AXI_awvalid_converter->vector_in(S03_AXI_awvalid);
  mp_S03_AXI_awvalid_converter->scalar_out(m_S03_AXI_awvalid_converter_signal);
  mp_S03_AXI_transactor->AWVALID(m_S03_AXI_awvalid_converter_signal);
  mp_S03_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_awready_converter");
  mp_S03_AXI_awready_converter->scalar_in(m_S03_AXI_awready_converter_signal);
  mp_S03_AXI_awready_converter->vector_out(S03_AXI_awready);
  mp_S03_AXI_transactor->AWREADY(m_S03_AXI_awready_converter_signal);
  mp_S03_AXI_transactor->WDATA(S03_AXI_wdata);
  mp_S03_AXI_transactor->WSTRB(S03_AXI_wstrb);
  mp_S03_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_wlast_converter");
  mp_S03_AXI_wlast_converter->vector_in(S03_AXI_wlast);
  mp_S03_AXI_wlast_converter->scalar_out(m_S03_AXI_wlast_converter_signal);
  mp_S03_AXI_transactor->WLAST(m_S03_AXI_wlast_converter_signal);
  mp_S03_AXI_transactor->WUSER(S03_AXI_wuser);
  mp_S03_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_wvalid_converter");
  mp_S03_AXI_wvalid_converter->vector_in(S03_AXI_wvalid);
  mp_S03_AXI_wvalid_converter->scalar_out(m_S03_AXI_wvalid_converter_signal);
  mp_S03_AXI_transactor->WVALID(m_S03_AXI_wvalid_converter_signal);
  mp_S03_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_wready_converter");
  mp_S03_AXI_wready_converter->scalar_in(m_S03_AXI_wready_converter_signal);
  mp_S03_AXI_wready_converter->vector_out(S03_AXI_wready);
  mp_S03_AXI_transactor->WREADY(m_S03_AXI_wready_converter_signal);
  mp_S03_AXI_transactor->BID(S03_AXI_bid);
  mp_S03_AXI_transactor->BRESP(S03_AXI_bresp);
  mp_S03_AXI_transactor->BUSER(S03_AXI_buser);
  mp_S03_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_bvalid_converter");
  mp_S03_AXI_bvalid_converter->scalar_in(m_S03_AXI_bvalid_converter_signal);
  mp_S03_AXI_bvalid_converter->vector_out(S03_AXI_bvalid);
  mp_S03_AXI_transactor->BVALID(m_S03_AXI_bvalid_converter_signal);
  mp_S03_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_bready_converter");
  mp_S03_AXI_bready_converter->vector_in(S03_AXI_bready);
  mp_S03_AXI_bready_converter->scalar_out(m_S03_AXI_bready_converter_signal);
  mp_S03_AXI_transactor->BREADY(m_S03_AXI_bready_converter_signal);
  mp_S03_AXI_transactor->ARID(S03_AXI_arid);
  mp_S03_AXI_transactor->ARADDR(S03_AXI_araddr);
  mp_S03_AXI_transactor->ARLEN(S03_AXI_arlen);
  mp_S03_AXI_transactor->ARSIZE(S03_AXI_arsize);
  mp_S03_AXI_transactor->ARBURST(S03_AXI_arburst);
  mp_S03_AXI_transactor->ARLOCK(S03_AXI_arlock);
  mp_S03_AXI_transactor->ARCACHE(S03_AXI_arcache);
  mp_S03_AXI_transactor->ARPROT(S03_AXI_arprot);
  mp_S03_AXI_transactor->ARQOS(S03_AXI_arqos);
  mp_S03_AXI_transactor->ARUSER(S03_AXI_aruser);
  mp_S03_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_arvalid_converter");
  mp_S03_AXI_arvalid_converter->vector_in(S03_AXI_arvalid);
  mp_S03_AXI_arvalid_converter->scalar_out(m_S03_AXI_arvalid_converter_signal);
  mp_S03_AXI_transactor->ARVALID(m_S03_AXI_arvalid_converter_signal);
  mp_S03_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_arready_converter");
  mp_S03_AXI_arready_converter->scalar_in(m_S03_AXI_arready_converter_signal);
  mp_S03_AXI_arready_converter->vector_out(S03_AXI_arready);
  mp_S03_AXI_transactor->ARREADY(m_S03_AXI_arready_converter_signal);
  mp_S03_AXI_transactor->RID(S03_AXI_rid);
  mp_S03_AXI_transactor->RDATA(S03_AXI_rdata);
  mp_S03_AXI_transactor->RRESP(S03_AXI_rresp);
  mp_S03_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_rlast_converter");
  mp_S03_AXI_rlast_converter->scalar_in(m_S03_AXI_rlast_converter_signal);
  mp_S03_AXI_rlast_converter->vector_out(S03_AXI_rlast);
  mp_S03_AXI_transactor->RLAST(m_S03_AXI_rlast_converter_signal);
  mp_S03_AXI_transactor->RUSER(S03_AXI_ruser);
  mp_S03_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_rvalid_converter");
  mp_S03_AXI_rvalid_converter->scalar_in(m_S03_AXI_rvalid_converter_signal);
  mp_S03_AXI_rvalid_converter->vector_out(S03_AXI_rvalid);
  mp_S03_AXI_transactor->RVALID(m_S03_AXI_rvalid_converter_signal);
  mp_S03_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_rready_converter");
  mp_S03_AXI_rready_converter->vector_in(S03_AXI_rready);
  mp_S03_AXI_rready_converter->scalar_out(m_S03_AXI_rready_converter_signal);
  mp_S03_AXI_transactor->RREADY(m_S03_AXI_rready_converter_signal);
  mp_S03_AXI_transactor->CLK(aclk);
  mp_S03_AXI_transactor->RST(aresetn);
  // configure S04_AXI_transactor
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "35");
    S04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S04_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S04_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S04_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S04_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,64,1,1,1,1,1,1>("S04_AXI_transactor", S04_AXI_transactor_param_props);
  mp_S04_AXI_transactor->AWADDR(S04_AXI_awaddr);
  mp_S04_AXI_transactor->AWLEN(S04_AXI_awlen);
  mp_S04_AXI_transactor->AWSIZE(S04_AXI_awsize);
  mp_S04_AXI_transactor->AWLOCK(S04_AXI_awlock);
  mp_S04_AXI_transactor->AWCACHE(S04_AXI_awcache);
  mp_S04_AXI_transactor->AWPROT(S04_AXI_awprot);
  mp_S04_AXI_transactor->AWREGION(S04_AXI_awregion);
  mp_S04_AXI_transactor->AWQOS(S04_AXI_awqos);
  mp_S04_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_awvalid_converter");
  mp_S04_AXI_awvalid_converter->vector_in(S04_AXI_awvalid);
  mp_S04_AXI_awvalid_converter->scalar_out(m_S04_AXI_awvalid_converter_signal);
  mp_S04_AXI_transactor->AWVALID(m_S04_AXI_awvalid_converter_signal);
  mp_S04_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_awready_converter");
  mp_S04_AXI_awready_converter->scalar_in(m_S04_AXI_awready_converter_signal);
  mp_S04_AXI_awready_converter->vector_out(S04_AXI_awready);
  mp_S04_AXI_transactor->AWREADY(m_S04_AXI_awready_converter_signal);
  mp_S04_AXI_transactor->WDATA(S04_AXI_wdata);
  mp_S04_AXI_transactor->WSTRB(S04_AXI_wstrb);
  mp_S04_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_wlast_converter");
  mp_S04_AXI_wlast_converter->vector_in(S04_AXI_wlast);
  mp_S04_AXI_wlast_converter->scalar_out(m_S04_AXI_wlast_converter_signal);
  mp_S04_AXI_transactor->WLAST(m_S04_AXI_wlast_converter_signal);
  mp_S04_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_wvalid_converter");
  mp_S04_AXI_wvalid_converter->vector_in(S04_AXI_wvalid);
  mp_S04_AXI_wvalid_converter->scalar_out(m_S04_AXI_wvalid_converter_signal);
  mp_S04_AXI_transactor->WVALID(m_S04_AXI_wvalid_converter_signal);
  mp_S04_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_wready_converter");
  mp_S04_AXI_wready_converter->scalar_in(m_S04_AXI_wready_converter_signal);
  mp_S04_AXI_wready_converter->vector_out(S04_AXI_wready);
  mp_S04_AXI_transactor->WREADY(m_S04_AXI_wready_converter_signal);
  mp_S04_AXI_transactor->BRESP(S04_AXI_bresp);
  mp_S04_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_bvalid_converter");
  mp_S04_AXI_bvalid_converter->scalar_in(m_S04_AXI_bvalid_converter_signal);
  mp_S04_AXI_bvalid_converter->vector_out(S04_AXI_bvalid);
  mp_S04_AXI_transactor->BVALID(m_S04_AXI_bvalid_converter_signal);
  mp_S04_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_bready_converter");
  mp_S04_AXI_bready_converter->vector_in(S04_AXI_bready);
  mp_S04_AXI_bready_converter->scalar_out(m_S04_AXI_bready_converter_signal);
  mp_S04_AXI_transactor->BREADY(m_S04_AXI_bready_converter_signal);
  mp_S04_AXI_transactor->ARADDR(S04_AXI_araddr);
  mp_S04_AXI_transactor->ARLEN(S04_AXI_arlen);
  mp_S04_AXI_transactor->ARSIZE(S04_AXI_arsize);
  mp_S04_AXI_transactor->ARLOCK(S04_AXI_arlock);
  mp_S04_AXI_transactor->ARCACHE(S04_AXI_arcache);
  mp_S04_AXI_transactor->ARPROT(S04_AXI_arprot);
  mp_S04_AXI_transactor->ARREGION(S04_AXI_arregion);
  mp_S04_AXI_transactor->ARQOS(S04_AXI_arqos);
  mp_S04_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_arvalid_converter");
  mp_S04_AXI_arvalid_converter->vector_in(S04_AXI_arvalid);
  mp_S04_AXI_arvalid_converter->scalar_out(m_S04_AXI_arvalid_converter_signal);
  mp_S04_AXI_transactor->ARVALID(m_S04_AXI_arvalid_converter_signal);
  mp_S04_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_arready_converter");
  mp_S04_AXI_arready_converter->scalar_in(m_S04_AXI_arready_converter_signal);
  mp_S04_AXI_arready_converter->vector_out(S04_AXI_arready);
  mp_S04_AXI_transactor->ARREADY(m_S04_AXI_arready_converter_signal);
  mp_S04_AXI_transactor->RDATA(S04_AXI_rdata);
  mp_S04_AXI_transactor->RRESP(S04_AXI_rresp);
  mp_S04_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_rlast_converter");
  mp_S04_AXI_rlast_converter->scalar_in(m_S04_AXI_rlast_converter_signal);
  mp_S04_AXI_rlast_converter->vector_out(S04_AXI_rlast);
  mp_S04_AXI_transactor->RLAST(m_S04_AXI_rlast_converter_signal);
  mp_S04_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_rvalid_converter");
  mp_S04_AXI_rvalid_converter->scalar_in(m_S04_AXI_rvalid_converter_signal);
  mp_S04_AXI_rvalid_converter->vector_out(S04_AXI_rvalid);
  mp_S04_AXI_transactor->RVALID(m_S04_AXI_rvalid_converter_signal);
  mp_S04_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_rready_converter");
  mp_S04_AXI_rready_converter->vector_in(S04_AXI_rready);
  mp_S04_AXI_rready_converter->scalar_out(m_S04_AXI_rready_converter_signal);
  mp_S04_AXI_transactor->RREADY(m_S04_AXI_rready_converter_signal);
  mp_S04_AXI_transactor->CLK(aclk1);
  mp_S04_AXI_transactor->RST(aresetn);
  // configure M00_AXI_transactor
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
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
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,5,32,1,1,32,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);
  mp_M00_AXI_transactor->AWID(M00_AXI_awid);
  mp_M00_AXI_awaddr_converter = new xsc::common::vector2vector_converter<39,34>("M00_AXI_awaddr_converter");
  mp_M00_AXI_awaddr_converter->vector_in(m_M00_AXI_awaddr_converter_signal);
  mp_M00_AXI_awaddr_converter->vector_out(M00_AXI_awaddr);
  mp_M00_AXI_transactor->AWADDR(m_M00_AXI_awaddr_converter_signal);
  mp_M00_AXI_transactor->AWLEN(M00_AXI_awlen);
  mp_M00_AXI_transactor->AWSIZE(M00_AXI_awsize);
  mp_M00_AXI_transactor->AWBURST(M00_AXI_awburst);
  mp_M00_AXI_transactor->AWLOCK(M00_AXI_awlock);
  mp_M00_AXI_transactor->AWCACHE(M00_AXI_awcache);
  mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
  mp_M00_AXI_transactor->AWQOS(M00_AXI_awqos);
  mp_M00_AXI_transactor->AWUSER(M00_AXI_awuser);
  mp_M00_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_awvalid_converter");
  mp_M00_AXI_awvalid_converter->scalar_in(m_M00_AXI_awvalid_converter_signal);
  mp_M00_AXI_awvalid_converter->vector_out(M00_AXI_awvalid);
  mp_M00_AXI_transactor->AWVALID(m_M00_AXI_awvalid_converter_signal);
  mp_M00_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_awready_converter");
  mp_M00_AXI_awready_converter->vector_in(M00_AXI_awready);
  mp_M00_AXI_awready_converter->scalar_out(m_M00_AXI_awready_converter_signal);
  mp_M00_AXI_transactor->AWREADY(m_M00_AXI_awready_converter_signal);
  mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
  mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
  mp_M00_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_wlast_converter");
  mp_M00_AXI_wlast_converter->scalar_in(m_M00_AXI_wlast_converter_signal);
  mp_M00_AXI_wlast_converter->vector_out(M00_AXI_wlast);
  mp_M00_AXI_transactor->WLAST(m_M00_AXI_wlast_converter_signal);
  mp_M00_AXI_transactor->WUSER(M00_AXI_wuser);
  mp_M00_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_wvalid_converter");
  mp_M00_AXI_wvalid_converter->scalar_in(m_M00_AXI_wvalid_converter_signal);
  mp_M00_AXI_wvalid_converter->vector_out(M00_AXI_wvalid);
  mp_M00_AXI_transactor->WVALID(m_M00_AXI_wvalid_converter_signal);
  mp_M00_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_wready_converter");
  mp_M00_AXI_wready_converter->vector_in(M00_AXI_wready);
  mp_M00_AXI_wready_converter->scalar_out(m_M00_AXI_wready_converter_signal);
  mp_M00_AXI_transactor->WREADY(m_M00_AXI_wready_converter_signal);
  mp_M00_AXI_transactor->BID(M00_AXI_bid);
  mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
  mp_M00_AXI_transactor->BUSER(M00_AXI_buser);
  mp_M00_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_bvalid_converter");
  mp_M00_AXI_bvalid_converter->vector_in(M00_AXI_bvalid);
  mp_M00_AXI_bvalid_converter->scalar_out(m_M00_AXI_bvalid_converter_signal);
  mp_M00_AXI_transactor->BVALID(m_M00_AXI_bvalid_converter_signal);
  mp_M00_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_bready_converter");
  mp_M00_AXI_bready_converter->scalar_in(m_M00_AXI_bready_converter_signal);
  mp_M00_AXI_bready_converter->vector_out(M00_AXI_bready);
  mp_M00_AXI_transactor->BREADY(m_M00_AXI_bready_converter_signal);
  mp_M00_AXI_transactor->ARID(M00_AXI_arid);
  mp_M00_AXI_araddr_converter = new xsc::common::vector2vector_converter<39,34>("M00_AXI_araddr_converter");
  mp_M00_AXI_araddr_converter->vector_in(m_M00_AXI_araddr_converter_signal);
  mp_M00_AXI_araddr_converter->vector_out(M00_AXI_araddr);
  mp_M00_AXI_transactor->ARADDR(m_M00_AXI_araddr_converter_signal);
  mp_M00_AXI_transactor->ARLEN(M00_AXI_arlen);
  mp_M00_AXI_transactor->ARSIZE(M00_AXI_arsize);
  mp_M00_AXI_transactor->ARBURST(M00_AXI_arburst);
  mp_M00_AXI_transactor->ARLOCK(M00_AXI_arlock);
  mp_M00_AXI_transactor->ARCACHE(M00_AXI_arcache);
  mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
  mp_M00_AXI_transactor->ARQOS(M00_AXI_arqos);
  mp_M00_AXI_transactor->ARUSER(M00_AXI_aruser);
  mp_M00_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_arvalid_converter");
  mp_M00_AXI_arvalid_converter->scalar_in(m_M00_AXI_arvalid_converter_signal);
  mp_M00_AXI_arvalid_converter->vector_out(M00_AXI_arvalid);
  mp_M00_AXI_transactor->ARVALID(m_M00_AXI_arvalid_converter_signal);
  mp_M00_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_arready_converter");
  mp_M00_AXI_arready_converter->vector_in(M00_AXI_arready);
  mp_M00_AXI_arready_converter->scalar_out(m_M00_AXI_arready_converter_signal);
  mp_M00_AXI_transactor->ARREADY(m_M00_AXI_arready_converter_signal);
  mp_M00_AXI_transactor->RID(M00_AXI_rid);
  mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
  mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
  mp_M00_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_rlast_converter");
  mp_M00_AXI_rlast_converter->vector_in(M00_AXI_rlast);
  mp_M00_AXI_rlast_converter->scalar_out(m_M00_AXI_rlast_converter_signal);
  mp_M00_AXI_transactor->RLAST(m_M00_AXI_rlast_converter_signal);
  mp_M00_AXI_transactor->RUSER(M00_AXI_ruser);
  mp_M00_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_rvalid_converter");
  mp_M00_AXI_rvalid_converter->vector_in(M00_AXI_rvalid);
  mp_M00_AXI_rvalid_converter->scalar_out(m_M00_AXI_rvalid_converter_signal);
  mp_M00_AXI_transactor->RVALID(m_M00_AXI_rvalid_converter_signal);
  mp_M00_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_rready_converter");
  mp_M00_AXI_rready_converter->scalar_in(m_M00_AXI_rready_converter_signal);
  mp_M00_AXI_rready_converter->vector_out(M00_AXI_rready);
  mp_M00_AXI_transactor->RREADY(m_M00_AXI_rready_converter_signal);
  mp_M00_AXI_transactor->CLK(aclk);
  mp_M00_AXI_transactor->RST(aresetn);
  // configure M01_AXI_transactor
    xsc::common_cpp::properties M01_AXI_transactor_param_props;
    M01_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M01_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "35");
    M01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M01_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M01_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M01_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M01_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M01_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,35,1,1,1,1,1,1>("M01_AXI_transactor", M01_AXI_transactor_param_props);
  mp_M01_AXI_transactor->AWADDR(M01_AXI_awaddr);
  mp_M01_AXI_transactor->AWLEN(M01_AXI_awlen);
  mp_M01_AXI_transactor->AWSIZE(M01_AXI_awsize);
  mp_M01_AXI_transactor->AWBURST(M01_AXI_awburst);
  mp_M01_AXI_transactor->AWPROT(M01_AXI_awprot);
  mp_M01_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_awvalid_converter");
  mp_M01_AXI_awvalid_converter->scalar_in(m_M01_AXI_awvalid_converter_signal);
  mp_M01_AXI_awvalid_converter->vector_out(M01_AXI_awvalid);
  mp_M01_AXI_transactor->AWVALID(m_M01_AXI_awvalid_converter_signal);
  mp_M01_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_awready_converter");
  mp_M01_AXI_awready_converter->vector_in(M01_AXI_awready);
  mp_M01_AXI_awready_converter->scalar_out(m_M01_AXI_awready_converter_signal);
  mp_M01_AXI_transactor->AWREADY(m_M01_AXI_awready_converter_signal);
  mp_M01_AXI_transactor->WDATA(M01_AXI_wdata);
  mp_M01_AXI_transactor->WSTRB(M01_AXI_wstrb);
  mp_M01_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_wlast_converter");
  mp_M01_AXI_wlast_converter->scalar_in(m_M01_AXI_wlast_converter_signal);
  mp_M01_AXI_wlast_converter->vector_out(M01_AXI_wlast);
  mp_M01_AXI_transactor->WLAST(m_M01_AXI_wlast_converter_signal);
  mp_M01_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_wvalid_converter");
  mp_M01_AXI_wvalid_converter->scalar_in(m_M01_AXI_wvalid_converter_signal);
  mp_M01_AXI_wvalid_converter->vector_out(M01_AXI_wvalid);
  mp_M01_AXI_transactor->WVALID(m_M01_AXI_wvalid_converter_signal);
  mp_M01_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_wready_converter");
  mp_M01_AXI_wready_converter->vector_in(M01_AXI_wready);
  mp_M01_AXI_wready_converter->scalar_out(m_M01_AXI_wready_converter_signal);
  mp_M01_AXI_transactor->WREADY(m_M01_AXI_wready_converter_signal);
  mp_M01_AXI_transactor->BRESP(M01_AXI_bresp);
  mp_M01_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_bvalid_converter");
  mp_M01_AXI_bvalid_converter->vector_in(M01_AXI_bvalid);
  mp_M01_AXI_bvalid_converter->scalar_out(m_M01_AXI_bvalid_converter_signal);
  mp_M01_AXI_transactor->BVALID(m_M01_AXI_bvalid_converter_signal);
  mp_M01_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_bready_converter");
  mp_M01_AXI_bready_converter->scalar_in(m_M01_AXI_bready_converter_signal);
  mp_M01_AXI_bready_converter->vector_out(M01_AXI_bready);
  mp_M01_AXI_transactor->BREADY(m_M01_AXI_bready_converter_signal);
  mp_M01_AXI_transactor->ARADDR(M01_AXI_araddr);
  mp_M01_AXI_transactor->ARLEN(M01_AXI_arlen);
  mp_M01_AXI_transactor->ARSIZE(M01_AXI_arsize);
  mp_M01_AXI_transactor->ARBURST(M01_AXI_arburst);
  mp_M01_AXI_transactor->ARPROT(M01_AXI_arprot);
  mp_M01_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_arvalid_converter");
  mp_M01_AXI_arvalid_converter->scalar_in(m_M01_AXI_arvalid_converter_signal);
  mp_M01_AXI_arvalid_converter->vector_out(M01_AXI_arvalid);
  mp_M01_AXI_transactor->ARVALID(m_M01_AXI_arvalid_converter_signal);
  mp_M01_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_arready_converter");
  mp_M01_AXI_arready_converter->vector_in(M01_AXI_arready);
  mp_M01_AXI_arready_converter->scalar_out(m_M01_AXI_arready_converter_signal);
  mp_M01_AXI_transactor->ARREADY(m_M01_AXI_arready_converter_signal);
  mp_M01_AXI_transactor->RDATA(M01_AXI_rdata);
  mp_M01_AXI_transactor->RRESP(M01_AXI_rresp);
  mp_M01_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_rlast_converter");
  mp_M01_AXI_rlast_converter->vector_in(M01_AXI_rlast);
  mp_M01_AXI_rlast_converter->scalar_out(m_M01_AXI_rlast_converter_signal);
  mp_M01_AXI_transactor->RLAST(m_M01_AXI_rlast_converter_signal);
  mp_M01_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_rvalid_converter");
  mp_M01_AXI_rvalid_converter->vector_in(M01_AXI_rvalid);
  mp_M01_AXI_rvalid_converter->scalar_out(m_M01_AXI_rvalid_converter_signal);
  mp_M01_AXI_transactor->RVALID(m_M01_AXI_rvalid_converter_signal);
  mp_M01_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_rready_converter");
  mp_M01_AXI_rready_converter->scalar_in(m_M01_AXI_rready_converter_signal);
  mp_M01_AXI_rready_converter->vector_out(M01_AXI_rready);
  mp_M01_AXI_transactor->RREADY(m_M01_AXI_rready_converter_signal);
  mp_M01_AXI_transactor->CLK(aclk);
  mp_M01_AXI_transactor->RST(aresetn);
  // configure M02_AXI_transactor
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M02_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M02_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M02_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,5,32,1,1,32,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);
  mp_M02_AXI_transactor->AWID(M02_AXI_awid);
  mp_M02_AXI_awaddr_converter = new xsc::common::vector2vector_converter<39,34>("M02_AXI_awaddr_converter");
  mp_M02_AXI_awaddr_converter->vector_in(m_M02_AXI_awaddr_converter_signal);
  mp_M02_AXI_awaddr_converter->vector_out(M02_AXI_awaddr);
  mp_M02_AXI_transactor->AWADDR(m_M02_AXI_awaddr_converter_signal);
  mp_M02_AXI_transactor->AWLEN(M02_AXI_awlen);
  mp_M02_AXI_transactor->AWSIZE(M02_AXI_awsize);
  mp_M02_AXI_transactor->AWBURST(M02_AXI_awburst);
  mp_M02_AXI_transactor->AWLOCK(M02_AXI_awlock);
  mp_M02_AXI_transactor->AWCACHE(M02_AXI_awcache);
  mp_M02_AXI_transactor->AWPROT(M02_AXI_awprot);
  mp_M02_AXI_transactor->AWQOS(M02_AXI_awqos);
  mp_M02_AXI_transactor->AWUSER(M02_AXI_awuser);
  mp_M02_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_awvalid_converter");
  mp_M02_AXI_awvalid_converter->scalar_in(m_M02_AXI_awvalid_converter_signal);
  mp_M02_AXI_awvalid_converter->vector_out(M02_AXI_awvalid);
  mp_M02_AXI_transactor->AWVALID(m_M02_AXI_awvalid_converter_signal);
  mp_M02_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_awready_converter");
  mp_M02_AXI_awready_converter->vector_in(M02_AXI_awready);
  mp_M02_AXI_awready_converter->scalar_out(m_M02_AXI_awready_converter_signal);
  mp_M02_AXI_transactor->AWREADY(m_M02_AXI_awready_converter_signal);
  mp_M02_AXI_transactor->WDATA(M02_AXI_wdata);
  mp_M02_AXI_transactor->WSTRB(M02_AXI_wstrb);
  mp_M02_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_wlast_converter");
  mp_M02_AXI_wlast_converter->scalar_in(m_M02_AXI_wlast_converter_signal);
  mp_M02_AXI_wlast_converter->vector_out(M02_AXI_wlast);
  mp_M02_AXI_transactor->WLAST(m_M02_AXI_wlast_converter_signal);
  mp_M02_AXI_transactor->WUSER(M02_AXI_wuser);
  mp_M02_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_wvalid_converter");
  mp_M02_AXI_wvalid_converter->scalar_in(m_M02_AXI_wvalid_converter_signal);
  mp_M02_AXI_wvalid_converter->vector_out(M02_AXI_wvalid);
  mp_M02_AXI_transactor->WVALID(m_M02_AXI_wvalid_converter_signal);
  mp_M02_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_wready_converter");
  mp_M02_AXI_wready_converter->vector_in(M02_AXI_wready);
  mp_M02_AXI_wready_converter->scalar_out(m_M02_AXI_wready_converter_signal);
  mp_M02_AXI_transactor->WREADY(m_M02_AXI_wready_converter_signal);
  mp_M02_AXI_transactor->BID(M02_AXI_bid);
  mp_M02_AXI_transactor->BRESP(M02_AXI_bresp);
  mp_M02_AXI_transactor->BUSER(M02_AXI_buser);
  mp_M02_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_bvalid_converter");
  mp_M02_AXI_bvalid_converter->vector_in(M02_AXI_bvalid);
  mp_M02_AXI_bvalid_converter->scalar_out(m_M02_AXI_bvalid_converter_signal);
  mp_M02_AXI_transactor->BVALID(m_M02_AXI_bvalid_converter_signal);
  mp_M02_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_bready_converter");
  mp_M02_AXI_bready_converter->scalar_in(m_M02_AXI_bready_converter_signal);
  mp_M02_AXI_bready_converter->vector_out(M02_AXI_bready);
  mp_M02_AXI_transactor->BREADY(m_M02_AXI_bready_converter_signal);
  mp_M02_AXI_transactor->ARID(M02_AXI_arid);
  mp_M02_AXI_araddr_converter = new xsc::common::vector2vector_converter<39,34>("M02_AXI_araddr_converter");
  mp_M02_AXI_araddr_converter->vector_in(m_M02_AXI_araddr_converter_signal);
  mp_M02_AXI_araddr_converter->vector_out(M02_AXI_araddr);
  mp_M02_AXI_transactor->ARADDR(m_M02_AXI_araddr_converter_signal);
  mp_M02_AXI_transactor->ARLEN(M02_AXI_arlen);
  mp_M02_AXI_transactor->ARSIZE(M02_AXI_arsize);
  mp_M02_AXI_transactor->ARBURST(M02_AXI_arburst);
  mp_M02_AXI_transactor->ARLOCK(M02_AXI_arlock);
  mp_M02_AXI_transactor->ARCACHE(M02_AXI_arcache);
  mp_M02_AXI_transactor->ARPROT(M02_AXI_arprot);
  mp_M02_AXI_transactor->ARQOS(M02_AXI_arqos);
  mp_M02_AXI_transactor->ARUSER(M02_AXI_aruser);
  mp_M02_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_arvalid_converter");
  mp_M02_AXI_arvalid_converter->scalar_in(m_M02_AXI_arvalid_converter_signal);
  mp_M02_AXI_arvalid_converter->vector_out(M02_AXI_arvalid);
  mp_M02_AXI_transactor->ARVALID(m_M02_AXI_arvalid_converter_signal);
  mp_M02_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_arready_converter");
  mp_M02_AXI_arready_converter->vector_in(M02_AXI_arready);
  mp_M02_AXI_arready_converter->scalar_out(m_M02_AXI_arready_converter_signal);
  mp_M02_AXI_transactor->ARREADY(m_M02_AXI_arready_converter_signal);
  mp_M02_AXI_transactor->RID(M02_AXI_rid);
  mp_M02_AXI_transactor->RDATA(M02_AXI_rdata);
  mp_M02_AXI_transactor->RRESP(M02_AXI_rresp);
  mp_M02_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_rlast_converter");
  mp_M02_AXI_rlast_converter->vector_in(M02_AXI_rlast);
  mp_M02_AXI_rlast_converter->scalar_out(m_M02_AXI_rlast_converter_signal);
  mp_M02_AXI_transactor->RLAST(m_M02_AXI_rlast_converter_signal);
  mp_M02_AXI_transactor->RUSER(M02_AXI_ruser);
  mp_M02_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_rvalid_converter");
  mp_M02_AXI_rvalid_converter->vector_in(M02_AXI_rvalid);
  mp_M02_AXI_rvalid_converter->scalar_out(m_M02_AXI_rvalid_converter_signal);
  mp_M02_AXI_transactor->RVALID(m_M02_AXI_rvalid_converter_signal);
  mp_M02_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_rready_converter");
  mp_M02_AXI_rready_converter->scalar_in(m_M02_AXI_rready_converter_signal);
  mp_M02_AXI_rready_converter->vector_out(M02_AXI_rready);
  mp_M02_AXI_transactor->RREADY(m_M02_AXI_rready_converter_signal);
  mp_M02_AXI_transactor->CLK(aclk);
  mp_M02_AXI_transactor->RST(aresetn);
  // configure M03_AXI_transactor
    xsc::common_cpp::properties M03_AXI_transactor_param_props;
    M03_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M03_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M03_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M03_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M03_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M03_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,5,32,1,1,32,1>("M03_AXI_transactor", M03_AXI_transactor_param_props);
  mp_M03_AXI_transactor->AWID(M03_AXI_awid);
  mp_M03_AXI_awaddr_converter = new xsc::common::vector2vector_converter<39,34>("M03_AXI_awaddr_converter");
  mp_M03_AXI_awaddr_converter->vector_in(m_M03_AXI_awaddr_converter_signal);
  mp_M03_AXI_awaddr_converter->vector_out(M03_AXI_awaddr);
  mp_M03_AXI_transactor->AWADDR(m_M03_AXI_awaddr_converter_signal);
  mp_M03_AXI_transactor->AWLEN(M03_AXI_awlen);
  mp_M03_AXI_transactor->AWSIZE(M03_AXI_awsize);
  mp_M03_AXI_transactor->AWBURST(M03_AXI_awburst);
  mp_M03_AXI_transactor->AWLOCK(M03_AXI_awlock);
  mp_M03_AXI_transactor->AWCACHE(M03_AXI_awcache);
  mp_M03_AXI_transactor->AWPROT(M03_AXI_awprot);
  mp_M03_AXI_transactor->AWQOS(M03_AXI_awqos);
  mp_M03_AXI_transactor->AWUSER(M03_AXI_awuser);
  mp_M03_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_awvalid_converter");
  mp_M03_AXI_awvalid_converter->scalar_in(m_M03_AXI_awvalid_converter_signal);
  mp_M03_AXI_awvalid_converter->vector_out(M03_AXI_awvalid);
  mp_M03_AXI_transactor->AWVALID(m_M03_AXI_awvalid_converter_signal);
  mp_M03_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_awready_converter");
  mp_M03_AXI_awready_converter->vector_in(M03_AXI_awready);
  mp_M03_AXI_awready_converter->scalar_out(m_M03_AXI_awready_converter_signal);
  mp_M03_AXI_transactor->AWREADY(m_M03_AXI_awready_converter_signal);
  mp_M03_AXI_transactor->WDATA(M03_AXI_wdata);
  mp_M03_AXI_transactor->WSTRB(M03_AXI_wstrb);
  mp_M03_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_wlast_converter");
  mp_M03_AXI_wlast_converter->scalar_in(m_M03_AXI_wlast_converter_signal);
  mp_M03_AXI_wlast_converter->vector_out(M03_AXI_wlast);
  mp_M03_AXI_transactor->WLAST(m_M03_AXI_wlast_converter_signal);
  mp_M03_AXI_transactor->WUSER(M03_AXI_wuser);
  mp_M03_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_wvalid_converter");
  mp_M03_AXI_wvalid_converter->scalar_in(m_M03_AXI_wvalid_converter_signal);
  mp_M03_AXI_wvalid_converter->vector_out(M03_AXI_wvalid);
  mp_M03_AXI_transactor->WVALID(m_M03_AXI_wvalid_converter_signal);
  mp_M03_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_wready_converter");
  mp_M03_AXI_wready_converter->vector_in(M03_AXI_wready);
  mp_M03_AXI_wready_converter->scalar_out(m_M03_AXI_wready_converter_signal);
  mp_M03_AXI_transactor->WREADY(m_M03_AXI_wready_converter_signal);
  mp_M03_AXI_transactor->BID(M03_AXI_bid);
  mp_M03_AXI_transactor->BRESP(M03_AXI_bresp);
  mp_M03_AXI_transactor->BUSER(M03_AXI_buser);
  mp_M03_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_bvalid_converter");
  mp_M03_AXI_bvalid_converter->vector_in(M03_AXI_bvalid);
  mp_M03_AXI_bvalid_converter->scalar_out(m_M03_AXI_bvalid_converter_signal);
  mp_M03_AXI_transactor->BVALID(m_M03_AXI_bvalid_converter_signal);
  mp_M03_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_bready_converter");
  mp_M03_AXI_bready_converter->scalar_in(m_M03_AXI_bready_converter_signal);
  mp_M03_AXI_bready_converter->vector_out(M03_AXI_bready);
  mp_M03_AXI_transactor->BREADY(m_M03_AXI_bready_converter_signal);
  mp_M03_AXI_transactor->ARID(M03_AXI_arid);
  mp_M03_AXI_araddr_converter = new xsc::common::vector2vector_converter<39,34>("M03_AXI_araddr_converter");
  mp_M03_AXI_araddr_converter->vector_in(m_M03_AXI_araddr_converter_signal);
  mp_M03_AXI_araddr_converter->vector_out(M03_AXI_araddr);
  mp_M03_AXI_transactor->ARADDR(m_M03_AXI_araddr_converter_signal);
  mp_M03_AXI_transactor->ARLEN(M03_AXI_arlen);
  mp_M03_AXI_transactor->ARSIZE(M03_AXI_arsize);
  mp_M03_AXI_transactor->ARBURST(M03_AXI_arburst);
  mp_M03_AXI_transactor->ARLOCK(M03_AXI_arlock);
  mp_M03_AXI_transactor->ARCACHE(M03_AXI_arcache);
  mp_M03_AXI_transactor->ARPROT(M03_AXI_arprot);
  mp_M03_AXI_transactor->ARQOS(M03_AXI_arqos);
  mp_M03_AXI_transactor->ARUSER(M03_AXI_aruser);
  mp_M03_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_arvalid_converter");
  mp_M03_AXI_arvalid_converter->scalar_in(m_M03_AXI_arvalid_converter_signal);
  mp_M03_AXI_arvalid_converter->vector_out(M03_AXI_arvalid);
  mp_M03_AXI_transactor->ARVALID(m_M03_AXI_arvalid_converter_signal);
  mp_M03_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_arready_converter");
  mp_M03_AXI_arready_converter->vector_in(M03_AXI_arready);
  mp_M03_AXI_arready_converter->scalar_out(m_M03_AXI_arready_converter_signal);
  mp_M03_AXI_transactor->ARREADY(m_M03_AXI_arready_converter_signal);
  mp_M03_AXI_transactor->RID(M03_AXI_rid);
  mp_M03_AXI_transactor->RDATA(M03_AXI_rdata);
  mp_M03_AXI_transactor->RRESP(M03_AXI_rresp);
  mp_M03_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_rlast_converter");
  mp_M03_AXI_rlast_converter->vector_in(M03_AXI_rlast);
  mp_M03_AXI_rlast_converter->scalar_out(m_M03_AXI_rlast_converter_signal);
  mp_M03_AXI_transactor->RLAST(m_M03_AXI_rlast_converter_signal);
  mp_M03_AXI_transactor->RUSER(M03_AXI_ruser);
  mp_M03_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_rvalid_converter");
  mp_M03_AXI_rvalid_converter->vector_in(M03_AXI_rvalid);
  mp_M03_AXI_rvalid_converter->scalar_out(m_M03_AXI_rvalid_converter_signal);
  mp_M03_AXI_transactor->RVALID(m_M03_AXI_rvalid_converter_signal);
  mp_M03_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_rready_converter");
  mp_M03_AXI_rready_converter->scalar_in(m_M03_AXI_rready_converter_signal);
  mp_M03_AXI_rready_converter->vector_out(M03_AXI_rready);
  mp_M03_AXI_transactor->RREADY(m_M03_AXI_rready_converter_signal);
  mp_M03_AXI_transactor->CLK(aclk);
  mp_M03_AXI_transactor->RST(aresetn);

  // initialize transactors stubs
  S00_AXI_transactor_target_wr_socket_stub = nullptr;
  S00_AXI_transactor_target_rd_socket_stub = nullptr;
  S01_AXI_transactor_target_wr_socket_stub = nullptr;
  S01_AXI_transactor_target_rd_socket_stub = nullptr;
  S02_AXI_transactor_target_wr_socket_stub = nullptr;
  S02_AXI_transactor_target_rd_socket_stub = nullptr;
  S03_AXI_transactor_target_wr_socket_stub = nullptr;
  S03_AXI_transactor_target_rd_socket_stub = nullptr;
  S04_AXI_transactor_target_wr_socket_stub = nullptr;
  S04_AXI_transactor_target_rd_socket_stub = nullptr;
  M00_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M00_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M01_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M01_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M02_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M02_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M03_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M03_AXI_transactor_initiator_rd_socket_stub = nullptr;

}

void pfm_dynamic_memory_subsystem_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S00_AXI_TLM_MODE") != 1)
  {
    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  
  }
  else
  {
    S00_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S00_AXI_transactor_target_wr_socket_stub->bind(*(mp_S00_AXI_transactor->wr_socket));
    S00_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S00_AXI_transactor_target_rd_socket_stub->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_S00_AXI_transactor->disable_transactor();
  }

  // configure 'S01_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S01_AXI_TLM_MODE") != 1)
  {
    mp_impl->S01_AXI_tlm_aximm_read_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->S01_AXI_tlm_aximm_write_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  
  }
  else
  {
    S01_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S01_AXI_transactor_target_wr_socket_stub->bind(*(mp_S01_AXI_transactor->wr_socket));
    S01_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S01_AXI_transactor_target_rd_socket_stub->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_S01_AXI_transactor->disable_transactor();
  }

  // configure 'S02_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S02_AXI_TLM_MODE") != 1)
  {
    mp_impl->S02_AXI_tlm_aximm_read_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->S02_AXI_tlm_aximm_write_socket->bind(*(mp_S02_AXI_transactor->wr_socket));
  
  }
  else
  {
    S02_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S02_AXI_transactor_target_wr_socket_stub->bind(*(mp_S02_AXI_transactor->wr_socket));
    S02_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S02_AXI_transactor_target_rd_socket_stub->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_S02_AXI_transactor->disable_transactor();
  }

  // configure 'S03_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S03_AXI_TLM_MODE") != 1)
  {
    mp_impl->S03_AXI_tlm_aximm_read_socket->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_impl->S03_AXI_tlm_aximm_write_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  
  }
  else
  {
    S03_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S03_AXI_transactor_target_wr_socket_stub->bind(*(mp_S03_AXI_transactor->wr_socket));
    S03_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S03_AXI_transactor_target_rd_socket_stub->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_S03_AXI_transactor->disable_transactor();
  }

  // configure 'S04_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S04_AXI_TLM_MODE") != 1)
  {
    mp_impl->S04_AXI_tlm_aximm_read_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->S04_AXI_tlm_aximm_write_socket->bind(*(mp_S04_AXI_transactor->wr_socket));
  
  }
  else
  {
    S04_AXI_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    S04_AXI_transactor_target_wr_socket_stub->bind(*(mp_S04_AXI_transactor->wr_socket));
    S04_AXI_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    S04_AXI_transactor_target_rd_socket_stub->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_S04_AXI_transactor->disable_transactor();
  }

  // configure 'M00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M00_AXI_TLM_MODE") != 1)
  {
    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  
  }
  else
  {
    M00_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M00_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M00_AXI_transactor->wr_socket));
    M00_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M00_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_M00_AXI_transactor->disable_transactor();
  }

  // configure 'M01_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M01_AXI_TLM_MODE") != 1)
  {
    mp_impl->M01_AXI_tlm_aximm_read_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->M01_AXI_tlm_aximm_write_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  
  }
  else
  {
    M01_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M01_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M01_AXI_transactor->wr_socket));
    M01_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M01_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_M01_AXI_transactor->disable_transactor();
  }

  // configure 'M02_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M02_AXI_TLM_MODE") != 1)
  {
    mp_impl->M02_AXI_tlm_aximm_read_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->M02_AXI_tlm_aximm_write_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  
  }
  else
  {
    M02_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M02_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M02_AXI_transactor->wr_socket));
    M02_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M02_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_M02_AXI_transactor->disable_transactor();
  }

  // configure 'M03_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M03_AXI_TLM_MODE") != 1)
  {
    mp_impl->M03_AXI_tlm_aximm_read_socket->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_impl->M03_AXI_tlm_aximm_write_socket->bind(*(mp_M03_AXI_transactor->wr_socket));
  
  }
  else
  {
    M03_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M03_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M03_AXI_transactor->wr_socket));
    M03_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M03_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_M03_AXI_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
pfm_dynamic_memory_subsystem_0::pfm_dynamic_memory_subsystem_0(const sc_core::sc_module_name& nm) : pfm_dynamic_memory_subsystem_0_sc(nm), aclk("aclk"), aclk1("aclk1"), aresetn("aresetn"), S00_AXI_awid("S00_AXI_awid"), S00_AXI_awaddr("S00_AXI_awaddr"), S00_AXI_awlen("S00_AXI_awlen"), S00_AXI_awsize("S00_AXI_awsize"), S00_AXI_awburst("S00_AXI_awburst"), S00_AXI_awlock("S00_AXI_awlock"), S00_AXI_awcache("S00_AXI_awcache"), S00_AXI_awprot("S00_AXI_awprot"), S00_AXI_awqos("S00_AXI_awqos"), S00_AXI_awuser("S00_AXI_awuser"), S00_AXI_awvalid("S00_AXI_awvalid"), S00_AXI_awready("S00_AXI_awready"), S00_AXI_wdata("S00_AXI_wdata"), S00_AXI_wstrb("S00_AXI_wstrb"), S00_AXI_wlast("S00_AXI_wlast"), S00_AXI_wuser("S00_AXI_wuser"), S00_AXI_wvalid("S00_AXI_wvalid"), S00_AXI_wready("S00_AXI_wready"), S00_AXI_bid("S00_AXI_bid"), S00_AXI_bresp("S00_AXI_bresp"), S00_AXI_buser("S00_AXI_buser"), S00_AXI_bvalid("S00_AXI_bvalid"), S00_AXI_bready("S00_AXI_bready"), S00_AXI_arid("S00_AXI_arid"), S00_AXI_araddr("S00_AXI_araddr"), S00_AXI_arlen("S00_AXI_arlen"), S00_AXI_arsize("S00_AXI_arsize"), S00_AXI_arburst("S00_AXI_arburst"), S00_AXI_arlock("S00_AXI_arlock"), S00_AXI_arcache("S00_AXI_arcache"), S00_AXI_arprot("S00_AXI_arprot"), S00_AXI_arqos("S00_AXI_arqos"), S00_AXI_aruser("S00_AXI_aruser"), S00_AXI_arvalid("S00_AXI_arvalid"), S00_AXI_arready("S00_AXI_arready"), S00_AXI_rid("S00_AXI_rid"), S00_AXI_rdata("S00_AXI_rdata"), S00_AXI_rresp("S00_AXI_rresp"), S00_AXI_rlast("S00_AXI_rlast"), S00_AXI_ruser("S00_AXI_ruser"), S00_AXI_rvalid("S00_AXI_rvalid"), S00_AXI_rready("S00_AXI_rready"), S01_AXI_awid("S01_AXI_awid"), S01_AXI_awaddr("S01_AXI_awaddr"), S01_AXI_awlen("S01_AXI_awlen"), S01_AXI_awsize("S01_AXI_awsize"), S01_AXI_awburst("S01_AXI_awburst"), S01_AXI_awlock("S01_AXI_awlock"), S01_AXI_awcache("S01_AXI_awcache"), S01_AXI_awprot("S01_AXI_awprot"), S01_AXI_awqos("S01_AXI_awqos"), S01_AXI_awuser("S01_AXI_awuser"), S01_AXI_awvalid("S01_AXI_awvalid"), S01_AXI_awready("S01_AXI_awready"), S01_AXI_wdata("S01_AXI_wdata"), S01_AXI_wstrb("S01_AXI_wstrb"), S01_AXI_wlast("S01_AXI_wlast"), S01_AXI_wuser("S01_AXI_wuser"), S01_AXI_wvalid("S01_AXI_wvalid"), S01_AXI_wready("S01_AXI_wready"), S01_AXI_bid("S01_AXI_bid"), S01_AXI_bresp("S01_AXI_bresp"), S01_AXI_buser("S01_AXI_buser"), S01_AXI_bvalid("S01_AXI_bvalid"), S01_AXI_bready("S01_AXI_bready"), S01_AXI_arid("S01_AXI_arid"), S01_AXI_araddr("S01_AXI_araddr"), S01_AXI_arlen("S01_AXI_arlen"), S01_AXI_arsize("S01_AXI_arsize"), S01_AXI_arburst("S01_AXI_arburst"), S01_AXI_arlock("S01_AXI_arlock"), S01_AXI_arcache("S01_AXI_arcache"), S01_AXI_arprot("S01_AXI_arprot"), S01_AXI_arqos("S01_AXI_arqos"), S01_AXI_aruser("S01_AXI_aruser"), S01_AXI_arvalid("S01_AXI_arvalid"), S01_AXI_arready("S01_AXI_arready"), S01_AXI_rid("S01_AXI_rid"), S01_AXI_rdata("S01_AXI_rdata"), S01_AXI_rresp("S01_AXI_rresp"), S01_AXI_rlast("S01_AXI_rlast"), S01_AXI_ruser("S01_AXI_ruser"), S01_AXI_rvalid("S01_AXI_rvalid"), S01_AXI_rready("S01_AXI_rready"), S02_AXI_awid("S02_AXI_awid"), S02_AXI_awaddr("S02_AXI_awaddr"), S02_AXI_awlen("S02_AXI_awlen"), S02_AXI_awsize("S02_AXI_awsize"), S02_AXI_awburst("S02_AXI_awburst"), S02_AXI_awlock("S02_AXI_awlock"), S02_AXI_awcache("S02_AXI_awcache"), S02_AXI_awprot("S02_AXI_awprot"), S02_AXI_awqos("S02_AXI_awqos"), S02_AXI_awuser("S02_AXI_awuser"), S02_AXI_awvalid("S02_AXI_awvalid"), S02_AXI_awready("S02_AXI_awready"), S02_AXI_wdata("S02_AXI_wdata"), S02_AXI_wstrb("S02_AXI_wstrb"), S02_AXI_wlast("S02_AXI_wlast"), S02_AXI_wuser("S02_AXI_wuser"), S02_AXI_wvalid("S02_AXI_wvalid"), S02_AXI_wready("S02_AXI_wready"), S02_AXI_bid("S02_AXI_bid"), S02_AXI_bresp("S02_AXI_bresp"), S02_AXI_buser("S02_AXI_buser"), S02_AXI_bvalid("S02_AXI_bvalid"), S02_AXI_bready("S02_AXI_bready"), S02_AXI_arid("S02_AXI_arid"), S02_AXI_araddr("S02_AXI_araddr"), S02_AXI_arlen("S02_AXI_arlen"), S02_AXI_arsize("S02_AXI_arsize"), S02_AXI_arburst("S02_AXI_arburst"), S02_AXI_arlock("S02_AXI_arlock"), S02_AXI_arcache("S02_AXI_arcache"), S02_AXI_arprot("S02_AXI_arprot"), S02_AXI_arqos("S02_AXI_arqos"), S02_AXI_aruser("S02_AXI_aruser"), S02_AXI_arvalid("S02_AXI_arvalid"), S02_AXI_arready("S02_AXI_arready"), S02_AXI_rid("S02_AXI_rid"), S02_AXI_rdata("S02_AXI_rdata"), S02_AXI_rresp("S02_AXI_rresp"), S02_AXI_rlast("S02_AXI_rlast"), S02_AXI_ruser("S02_AXI_ruser"), S02_AXI_rvalid("S02_AXI_rvalid"), S02_AXI_rready("S02_AXI_rready"), S03_AXI_awid("S03_AXI_awid"), S03_AXI_awaddr("S03_AXI_awaddr"), S03_AXI_awlen("S03_AXI_awlen"), S03_AXI_awsize("S03_AXI_awsize"), S03_AXI_awburst("S03_AXI_awburst"), S03_AXI_awlock("S03_AXI_awlock"), S03_AXI_awcache("S03_AXI_awcache"), S03_AXI_awprot("S03_AXI_awprot"), S03_AXI_awqos("S03_AXI_awqos"), S03_AXI_awuser("S03_AXI_awuser"), S03_AXI_awvalid("S03_AXI_awvalid"), S03_AXI_awready("S03_AXI_awready"), S03_AXI_wdata("S03_AXI_wdata"), S03_AXI_wstrb("S03_AXI_wstrb"), S03_AXI_wlast("S03_AXI_wlast"), S03_AXI_wuser("S03_AXI_wuser"), S03_AXI_wvalid("S03_AXI_wvalid"), S03_AXI_wready("S03_AXI_wready"), S03_AXI_bid("S03_AXI_bid"), S03_AXI_bresp("S03_AXI_bresp"), S03_AXI_buser("S03_AXI_buser"), S03_AXI_bvalid("S03_AXI_bvalid"), S03_AXI_bready("S03_AXI_bready"), S03_AXI_arid("S03_AXI_arid"), S03_AXI_araddr("S03_AXI_araddr"), S03_AXI_arlen("S03_AXI_arlen"), S03_AXI_arsize("S03_AXI_arsize"), S03_AXI_arburst("S03_AXI_arburst"), S03_AXI_arlock("S03_AXI_arlock"), S03_AXI_arcache("S03_AXI_arcache"), S03_AXI_arprot("S03_AXI_arprot"), S03_AXI_arqos("S03_AXI_arqos"), S03_AXI_aruser("S03_AXI_aruser"), S03_AXI_arvalid("S03_AXI_arvalid"), S03_AXI_arready("S03_AXI_arready"), S03_AXI_rid("S03_AXI_rid"), S03_AXI_rdata("S03_AXI_rdata"), S03_AXI_rresp("S03_AXI_rresp"), S03_AXI_rlast("S03_AXI_rlast"), S03_AXI_ruser("S03_AXI_ruser"), S03_AXI_rvalid("S03_AXI_rvalid"), S03_AXI_rready("S03_AXI_rready"), S04_AXI_awaddr("S04_AXI_awaddr"), S04_AXI_awlen("S04_AXI_awlen"), S04_AXI_awsize("S04_AXI_awsize"), S04_AXI_awlock("S04_AXI_awlock"), S04_AXI_awcache("S04_AXI_awcache"), S04_AXI_awprot("S04_AXI_awprot"), S04_AXI_awregion("S04_AXI_awregion"), S04_AXI_awqos("S04_AXI_awqos"), S04_AXI_awvalid("S04_AXI_awvalid"), S04_AXI_awready("S04_AXI_awready"), S04_AXI_wdata("S04_AXI_wdata"), S04_AXI_wstrb("S04_AXI_wstrb"), S04_AXI_wlast("S04_AXI_wlast"), S04_AXI_wvalid("S04_AXI_wvalid"), S04_AXI_wready("S04_AXI_wready"), S04_AXI_bresp("S04_AXI_bresp"), S04_AXI_bvalid("S04_AXI_bvalid"), S04_AXI_bready("S04_AXI_bready"), S04_AXI_araddr("S04_AXI_araddr"), S04_AXI_arlen("S04_AXI_arlen"), S04_AXI_arsize("S04_AXI_arsize"), S04_AXI_arlock("S04_AXI_arlock"), S04_AXI_arcache("S04_AXI_arcache"), S04_AXI_arprot("S04_AXI_arprot"), S04_AXI_arregion("S04_AXI_arregion"), S04_AXI_arqos("S04_AXI_arqos"), S04_AXI_arvalid("S04_AXI_arvalid"), S04_AXI_arready("S04_AXI_arready"), S04_AXI_rdata("S04_AXI_rdata"), S04_AXI_rresp("S04_AXI_rresp"), S04_AXI_rlast("S04_AXI_rlast"), S04_AXI_rvalid("S04_AXI_rvalid"), S04_AXI_rready("S04_AXI_rready"), ddr4_mem_calib_complete("ddr4_mem_calib_complete"), M00_AXI_awid("M00_AXI_awid"), M00_AXI_awaddr("M00_AXI_awaddr"), M00_AXI_awlen("M00_AXI_awlen"), M00_AXI_awsize("M00_AXI_awsize"), M00_AXI_awburst("M00_AXI_awburst"), M00_AXI_awlock("M00_AXI_awlock"), M00_AXI_awcache("M00_AXI_awcache"), M00_AXI_awprot("M00_AXI_awprot"), M00_AXI_awqos("M00_AXI_awqos"), M00_AXI_awuser("M00_AXI_awuser"), M00_AXI_awvalid("M00_AXI_awvalid"), M00_AXI_awready("M00_AXI_awready"), M00_AXI_wdata("M00_AXI_wdata"), M00_AXI_wstrb("M00_AXI_wstrb"), M00_AXI_wlast("M00_AXI_wlast"), M00_AXI_wuser("M00_AXI_wuser"), M00_AXI_wvalid("M00_AXI_wvalid"), M00_AXI_wready("M00_AXI_wready"), M00_AXI_bid("M00_AXI_bid"), M00_AXI_bresp("M00_AXI_bresp"), M00_AXI_buser("M00_AXI_buser"), M00_AXI_bvalid("M00_AXI_bvalid"), M00_AXI_bready("M00_AXI_bready"), M00_AXI_arid("M00_AXI_arid"), M00_AXI_araddr("M00_AXI_araddr"), M00_AXI_arlen("M00_AXI_arlen"), M00_AXI_arsize("M00_AXI_arsize"), M00_AXI_arburst("M00_AXI_arburst"), M00_AXI_arlock("M00_AXI_arlock"), M00_AXI_arcache("M00_AXI_arcache"), M00_AXI_arprot("M00_AXI_arprot"), M00_AXI_arqos("M00_AXI_arqos"), M00_AXI_aruser("M00_AXI_aruser"), M00_AXI_arvalid("M00_AXI_arvalid"), M00_AXI_arready("M00_AXI_arready"), M00_AXI_rid("M00_AXI_rid"), M00_AXI_rdata("M00_AXI_rdata"), M00_AXI_rresp("M00_AXI_rresp"), M00_AXI_rlast("M00_AXI_rlast"), M00_AXI_ruser("M00_AXI_ruser"), M00_AXI_rvalid("M00_AXI_rvalid"), M00_AXI_rready("M00_AXI_rready"), M01_AXI_awaddr("M01_AXI_awaddr"), M01_AXI_awlen("M01_AXI_awlen"), M01_AXI_awsize("M01_AXI_awsize"), M01_AXI_awburst("M01_AXI_awburst"), M01_AXI_awprot("M01_AXI_awprot"), M01_AXI_awvalid("M01_AXI_awvalid"), M01_AXI_awready("M01_AXI_awready"), M01_AXI_wdata("M01_AXI_wdata"), M01_AXI_wstrb("M01_AXI_wstrb"), M01_AXI_wlast("M01_AXI_wlast"), M01_AXI_wvalid("M01_AXI_wvalid"), M01_AXI_wready("M01_AXI_wready"), M01_AXI_bresp("M01_AXI_bresp"), M01_AXI_bvalid("M01_AXI_bvalid"), M01_AXI_bready("M01_AXI_bready"), M01_AXI_araddr("M01_AXI_araddr"), M01_AXI_arlen("M01_AXI_arlen"), M01_AXI_arsize("M01_AXI_arsize"), M01_AXI_arburst("M01_AXI_arburst"), M01_AXI_arprot("M01_AXI_arprot"), M01_AXI_arvalid("M01_AXI_arvalid"), M01_AXI_arready("M01_AXI_arready"), M01_AXI_rdata("M01_AXI_rdata"), M01_AXI_rresp("M01_AXI_rresp"), M01_AXI_rlast("M01_AXI_rlast"), M01_AXI_rvalid("M01_AXI_rvalid"), M01_AXI_rready("M01_AXI_rready"), M02_AXI_awid("M02_AXI_awid"), M02_AXI_awaddr("M02_AXI_awaddr"), M02_AXI_awlen("M02_AXI_awlen"), M02_AXI_awsize("M02_AXI_awsize"), M02_AXI_awburst("M02_AXI_awburst"), M02_AXI_awlock("M02_AXI_awlock"), M02_AXI_awcache("M02_AXI_awcache"), M02_AXI_awprot("M02_AXI_awprot"), M02_AXI_awqos("M02_AXI_awqos"), M02_AXI_awuser("M02_AXI_awuser"), M02_AXI_awvalid("M02_AXI_awvalid"), M02_AXI_awready("M02_AXI_awready"), M02_AXI_wdata("M02_AXI_wdata"), M02_AXI_wstrb("M02_AXI_wstrb"), M02_AXI_wlast("M02_AXI_wlast"), M02_AXI_wuser("M02_AXI_wuser"), M02_AXI_wvalid("M02_AXI_wvalid"), M02_AXI_wready("M02_AXI_wready"), M02_AXI_bid("M02_AXI_bid"), M02_AXI_bresp("M02_AXI_bresp"), M02_AXI_buser("M02_AXI_buser"), M02_AXI_bvalid("M02_AXI_bvalid"), M02_AXI_bready("M02_AXI_bready"), M02_AXI_arid("M02_AXI_arid"), M02_AXI_araddr("M02_AXI_araddr"), M02_AXI_arlen("M02_AXI_arlen"), M02_AXI_arsize("M02_AXI_arsize"), M02_AXI_arburst("M02_AXI_arburst"), M02_AXI_arlock("M02_AXI_arlock"), M02_AXI_arcache("M02_AXI_arcache"), M02_AXI_arprot("M02_AXI_arprot"), M02_AXI_arqos("M02_AXI_arqos"), M02_AXI_aruser("M02_AXI_aruser"), M02_AXI_arvalid("M02_AXI_arvalid"), M02_AXI_arready("M02_AXI_arready"), M02_AXI_rid("M02_AXI_rid"), M02_AXI_rdata("M02_AXI_rdata"), M02_AXI_rresp("M02_AXI_rresp"), M02_AXI_rlast("M02_AXI_rlast"), M02_AXI_ruser("M02_AXI_ruser"), M02_AXI_rvalid("M02_AXI_rvalid"), M02_AXI_rready("M02_AXI_rready"), M03_AXI_awid("M03_AXI_awid"), M03_AXI_awaddr("M03_AXI_awaddr"), M03_AXI_awlen("M03_AXI_awlen"), M03_AXI_awsize("M03_AXI_awsize"), M03_AXI_awburst("M03_AXI_awburst"), M03_AXI_awlock("M03_AXI_awlock"), M03_AXI_awcache("M03_AXI_awcache"), M03_AXI_awprot("M03_AXI_awprot"), M03_AXI_awqos("M03_AXI_awqos"), M03_AXI_awuser("M03_AXI_awuser"), M03_AXI_awvalid("M03_AXI_awvalid"), M03_AXI_awready("M03_AXI_awready"), M03_AXI_wdata("M03_AXI_wdata"), M03_AXI_wstrb("M03_AXI_wstrb"), M03_AXI_wlast("M03_AXI_wlast"), M03_AXI_wuser("M03_AXI_wuser"), M03_AXI_wvalid("M03_AXI_wvalid"), M03_AXI_wready("M03_AXI_wready"), M03_AXI_bid("M03_AXI_bid"), M03_AXI_bresp("M03_AXI_bresp"), M03_AXI_buser("M03_AXI_buser"), M03_AXI_bvalid("M03_AXI_bvalid"), M03_AXI_bready("M03_AXI_bready"), M03_AXI_arid("M03_AXI_arid"), M03_AXI_araddr("M03_AXI_araddr"), M03_AXI_arlen("M03_AXI_arlen"), M03_AXI_arsize("M03_AXI_arsize"), M03_AXI_arburst("M03_AXI_arburst"), M03_AXI_arlock("M03_AXI_arlock"), M03_AXI_arcache("M03_AXI_arcache"), M03_AXI_arprot("M03_AXI_arprot"), M03_AXI_arqos("M03_AXI_arqos"), M03_AXI_aruser("M03_AXI_aruser"), M03_AXI_arvalid("M03_AXI_arvalid"), M03_AXI_arready("M03_AXI_arready"), M03_AXI_rid("M03_AXI_rid"), M03_AXI_rdata("M03_AXI_rdata"), M03_AXI_rresp("M03_AXI_rresp"), M03_AXI_rlast("M03_AXI_rlast"), M03_AXI_ruser("M03_AXI_ruser"), M03_AXI_rvalid("M03_AXI_rvalid"), M03_AXI_rready("M03_AXI_rready")
{

  // initialize pins
  mp_impl->aclk(aclk);
  mp_impl->aclk1(aclk1);
  mp_impl->aresetn(aresetn);
  mp_impl->ddr4_mem_calib_complete(ddr4_mem_calib_complete);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S00_AXI_awvalid_converter = NULL;
  mp_S00_AXI_awready_converter = NULL;
  mp_S00_AXI_wlast_converter = NULL;
  mp_S00_AXI_wvalid_converter = NULL;
  mp_S00_AXI_wready_converter = NULL;
  mp_S00_AXI_bvalid_converter = NULL;
  mp_S00_AXI_bready_converter = NULL;
  mp_S00_AXI_arvalid_converter = NULL;
  mp_S00_AXI_arready_converter = NULL;
  mp_S00_AXI_rlast_converter = NULL;
  mp_S00_AXI_rvalid_converter = NULL;
  mp_S00_AXI_rready_converter = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S01_AXI_awvalid_converter = NULL;
  mp_S01_AXI_awready_converter = NULL;
  mp_S01_AXI_wlast_converter = NULL;
  mp_S01_AXI_wvalid_converter = NULL;
  mp_S01_AXI_wready_converter = NULL;
  mp_S01_AXI_bvalid_converter = NULL;
  mp_S01_AXI_bready_converter = NULL;
  mp_S01_AXI_arvalid_converter = NULL;
  mp_S01_AXI_arready_converter = NULL;
  mp_S01_AXI_rlast_converter = NULL;
  mp_S01_AXI_rvalid_converter = NULL;
  mp_S01_AXI_rready_converter = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S02_AXI_awvalid_converter = NULL;
  mp_S02_AXI_awready_converter = NULL;
  mp_S02_AXI_wlast_converter = NULL;
  mp_S02_AXI_wvalid_converter = NULL;
  mp_S02_AXI_wready_converter = NULL;
  mp_S02_AXI_bvalid_converter = NULL;
  mp_S02_AXI_bready_converter = NULL;
  mp_S02_AXI_arvalid_converter = NULL;
  mp_S02_AXI_arready_converter = NULL;
  mp_S02_AXI_rlast_converter = NULL;
  mp_S02_AXI_rvalid_converter = NULL;
  mp_S02_AXI_rready_converter = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S03_AXI_awvalid_converter = NULL;
  mp_S03_AXI_awready_converter = NULL;
  mp_S03_AXI_wlast_converter = NULL;
  mp_S03_AXI_wvalid_converter = NULL;
  mp_S03_AXI_wready_converter = NULL;
  mp_S03_AXI_bvalid_converter = NULL;
  mp_S03_AXI_bready_converter = NULL;
  mp_S03_AXI_arvalid_converter = NULL;
  mp_S03_AXI_arready_converter = NULL;
  mp_S03_AXI_rlast_converter = NULL;
  mp_S03_AXI_rvalid_converter = NULL;
  mp_S03_AXI_rready_converter = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_S04_AXI_awvalid_converter = NULL;
  mp_S04_AXI_awready_converter = NULL;
  mp_S04_AXI_wlast_converter = NULL;
  mp_S04_AXI_wvalid_converter = NULL;
  mp_S04_AXI_wready_converter = NULL;
  mp_S04_AXI_bvalid_converter = NULL;
  mp_S04_AXI_bready_converter = NULL;
  mp_S04_AXI_arvalid_converter = NULL;
  mp_S04_AXI_arready_converter = NULL;
  mp_S04_AXI_rlast_converter = NULL;
  mp_S04_AXI_rvalid_converter = NULL;
  mp_S04_AXI_rready_converter = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M00_AXI_awaddr_converter = NULL;
  mp_M00_AXI_awvalid_converter = NULL;
  mp_M00_AXI_awready_converter = NULL;
  mp_M00_AXI_wlast_converter = NULL;
  mp_M00_AXI_wvalid_converter = NULL;
  mp_M00_AXI_wready_converter = NULL;
  mp_M00_AXI_bvalid_converter = NULL;
  mp_M00_AXI_bready_converter = NULL;
  mp_M00_AXI_araddr_converter = NULL;
  mp_M00_AXI_arvalid_converter = NULL;
  mp_M00_AXI_arready_converter = NULL;
  mp_M00_AXI_rlast_converter = NULL;
  mp_M00_AXI_rvalid_converter = NULL;
  mp_M00_AXI_rready_converter = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_M01_AXI_awvalid_converter = NULL;
  mp_M01_AXI_awready_converter = NULL;
  mp_M01_AXI_wlast_converter = NULL;
  mp_M01_AXI_wvalid_converter = NULL;
  mp_M01_AXI_wready_converter = NULL;
  mp_M01_AXI_bvalid_converter = NULL;
  mp_M01_AXI_bready_converter = NULL;
  mp_M01_AXI_arvalid_converter = NULL;
  mp_M01_AXI_arready_converter = NULL;
  mp_M01_AXI_rlast_converter = NULL;
  mp_M01_AXI_rvalid_converter = NULL;
  mp_M01_AXI_rready_converter = NULL;
  mp_M02_AXI_transactor = NULL;
  mp_M02_AXI_awaddr_converter = NULL;
  mp_M02_AXI_awvalid_converter = NULL;
  mp_M02_AXI_awready_converter = NULL;
  mp_M02_AXI_wlast_converter = NULL;
  mp_M02_AXI_wvalid_converter = NULL;
  mp_M02_AXI_wready_converter = NULL;
  mp_M02_AXI_bvalid_converter = NULL;
  mp_M02_AXI_bready_converter = NULL;
  mp_M02_AXI_araddr_converter = NULL;
  mp_M02_AXI_arvalid_converter = NULL;
  mp_M02_AXI_arready_converter = NULL;
  mp_M02_AXI_rlast_converter = NULL;
  mp_M02_AXI_rvalid_converter = NULL;
  mp_M02_AXI_rready_converter = NULL;
  mp_M03_AXI_transactor = NULL;
  mp_M03_AXI_awaddr_converter = NULL;
  mp_M03_AXI_awvalid_converter = NULL;
  mp_M03_AXI_awready_converter = NULL;
  mp_M03_AXI_wlast_converter = NULL;
  mp_M03_AXI_wvalid_converter = NULL;
  mp_M03_AXI_wready_converter = NULL;
  mp_M03_AXI_bvalid_converter = NULL;
  mp_M03_AXI_bready_converter = NULL;
  mp_M03_AXI_araddr_converter = NULL;
  mp_M03_AXI_arvalid_converter = NULL;
  mp_M03_AXI_arready_converter = NULL;
  mp_M03_AXI_rlast_converter = NULL;
  mp_M03_AXI_rvalid_converter = NULL;
  mp_M03_AXI_rready_converter = NULL;

  // initialize socket stubs

}

void pfm_dynamic_memory_subsystem_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S00_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S00_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S00_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S00_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S00_AXI_transactor_param_props.addLong("HAS_REGION", "0");
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
    S00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S00_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S00_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S00_AXI_transactor", S00_AXI_transactor_param_props);

    // S00_AXI' transactor ports

    mp_S00_AXI_transactor->AWID(S00_AXI_awid);
    mp_S00_AXI_transactor->AWADDR(S00_AXI_awaddr);
    mp_S00_AXI_transactor->AWLEN(S00_AXI_awlen);
    mp_S00_AXI_transactor->AWSIZE(S00_AXI_awsize);
    mp_S00_AXI_transactor->AWBURST(S00_AXI_awburst);
    mp_S00_AXI_transactor->AWLOCK(S00_AXI_awlock);
    mp_S00_AXI_transactor->AWCACHE(S00_AXI_awcache);
    mp_S00_AXI_transactor->AWPROT(S00_AXI_awprot);
    mp_S00_AXI_transactor->AWQOS(S00_AXI_awqos);
    mp_S00_AXI_transactor->AWUSER(S00_AXI_awuser);
    mp_S00_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_awvalid_converter");
    mp_S00_AXI_awvalid_converter->vector_in(S00_AXI_awvalid);
    mp_S00_AXI_awvalid_converter->scalar_out(m_S00_AXI_awvalid_converter_signal);
    mp_S00_AXI_transactor->AWVALID(m_S00_AXI_awvalid_converter_signal);
    mp_S00_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_awready_converter");
    mp_S00_AXI_awready_converter->scalar_in(m_S00_AXI_awready_converter_signal);
    mp_S00_AXI_awready_converter->vector_out(S00_AXI_awready);
    mp_S00_AXI_transactor->AWREADY(m_S00_AXI_awready_converter_signal);
    mp_S00_AXI_transactor->WDATA(S00_AXI_wdata);
    mp_S00_AXI_transactor->WSTRB(S00_AXI_wstrb);
    mp_S00_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wlast_converter");
    mp_S00_AXI_wlast_converter->vector_in(S00_AXI_wlast);
    mp_S00_AXI_wlast_converter->scalar_out(m_S00_AXI_wlast_converter_signal);
    mp_S00_AXI_transactor->WLAST(m_S00_AXI_wlast_converter_signal);
    mp_S00_AXI_transactor->WUSER(S00_AXI_wuser);
    mp_S00_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_wvalid_converter");
    mp_S00_AXI_wvalid_converter->vector_in(S00_AXI_wvalid);
    mp_S00_AXI_wvalid_converter->scalar_out(m_S00_AXI_wvalid_converter_signal);
    mp_S00_AXI_transactor->WVALID(m_S00_AXI_wvalid_converter_signal);
    mp_S00_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_wready_converter");
    mp_S00_AXI_wready_converter->scalar_in(m_S00_AXI_wready_converter_signal);
    mp_S00_AXI_wready_converter->vector_out(S00_AXI_wready);
    mp_S00_AXI_transactor->WREADY(m_S00_AXI_wready_converter_signal);
    mp_S00_AXI_transactor->BID(S00_AXI_bid);
    mp_S00_AXI_transactor->BRESP(S00_AXI_bresp);
    mp_S00_AXI_transactor->BUSER(S00_AXI_buser);
    mp_S00_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_bvalid_converter");
    mp_S00_AXI_bvalid_converter->scalar_in(m_S00_AXI_bvalid_converter_signal);
    mp_S00_AXI_bvalid_converter->vector_out(S00_AXI_bvalid);
    mp_S00_AXI_transactor->BVALID(m_S00_AXI_bvalid_converter_signal);
    mp_S00_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_bready_converter");
    mp_S00_AXI_bready_converter->vector_in(S00_AXI_bready);
    mp_S00_AXI_bready_converter->scalar_out(m_S00_AXI_bready_converter_signal);
    mp_S00_AXI_transactor->BREADY(m_S00_AXI_bready_converter_signal);
    mp_S00_AXI_transactor->ARID(S00_AXI_arid);
    mp_S00_AXI_transactor->ARADDR(S00_AXI_araddr);
    mp_S00_AXI_transactor->ARLEN(S00_AXI_arlen);
    mp_S00_AXI_transactor->ARSIZE(S00_AXI_arsize);
    mp_S00_AXI_transactor->ARBURST(S00_AXI_arburst);
    mp_S00_AXI_transactor->ARLOCK(S00_AXI_arlock);
    mp_S00_AXI_transactor->ARCACHE(S00_AXI_arcache);
    mp_S00_AXI_transactor->ARPROT(S00_AXI_arprot);
    mp_S00_AXI_transactor->ARQOS(S00_AXI_arqos);
    mp_S00_AXI_transactor->ARUSER(S00_AXI_aruser);
    mp_S00_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_arvalid_converter");
    mp_S00_AXI_arvalid_converter->vector_in(S00_AXI_arvalid);
    mp_S00_AXI_arvalid_converter->scalar_out(m_S00_AXI_arvalid_converter_signal);
    mp_S00_AXI_transactor->ARVALID(m_S00_AXI_arvalid_converter_signal);
    mp_S00_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_arready_converter");
    mp_S00_AXI_arready_converter->scalar_in(m_S00_AXI_arready_converter_signal);
    mp_S00_AXI_arready_converter->vector_out(S00_AXI_arready);
    mp_S00_AXI_transactor->ARREADY(m_S00_AXI_arready_converter_signal);
    mp_S00_AXI_transactor->RID(S00_AXI_rid);
    mp_S00_AXI_transactor->RDATA(S00_AXI_rdata);
    mp_S00_AXI_transactor->RRESP(S00_AXI_rresp);
    mp_S00_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rlast_converter");
    mp_S00_AXI_rlast_converter->scalar_in(m_S00_AXI_rlast_converter_signal);
    mp_S00_AXI_rlast_converter->vector_out(S00_AXI_rlast);
    mp_S00_AXI_transactor->RLAST(m_S00_AXI_rlast_converter_signal);
    mp_S00_AXI_transactor->RUSER(S00_AXI_ruser);
    mp_S00_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S00_AXI_rvalid_converter");
    mp_S00_AXI_rvalid_converter->scalar_in(m_S00_AXI_rvalid_converter_signal);
    mp_S00_AXI_rvalid_converter->vector_out(S00_AXI_rvalid);
    mp_S00_AXI_transactor->RVALID(m_S00_AXI_rvalid_converter_signal);
    mp_S00_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S00_AXI_rready_converter");
    mp_S00_AXI_rready_converter->vector_in(S00_AXI_rready);
    mp_S00_AXI_rready_converter->scalar_out(m_S00_AXI_rready_converter_signal);
    mp_S00_AXI_transactor->RREADY(m_S00_AXI_rready_converter_signal);
    mp_S00_AXI_transactor->CLK(aclk);
    mp_S00_AXI_transactor->RST(aresetn);

    // S00_AXI' transactor sockets

    mp_impl->S00_AXI_tlm_aximm_read_socket->bind(*(mp_S00_AXI_transactor->rd_socket));
    mp_impl->S00_AXI_tlm_aximm_write_socket->bind(*(mp_S00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S01_AXI' transactor parameters
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "35");
    S01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S01_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S01_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S01_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S01_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S01_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S01_AXI_transactor", S01_AXI_transactor_param_props);

    // S01_AXI' transactor ports

    mp_S01_AXI_transactor->AWID(S01_AXI_awid);
    mp_S01_AXI_transactor->AWADDR(S01_AXI_awaddr);
    mp_S01_AXI_transactor->AWLEN(S01_AXI_awlen);
    mp_S01_AXI_transactor->AWSIZE(S01_AXI_awsize);
    mp_S01_AXI_transactor->AWBURST(S01_AXI_awburst);
    mp_S01_AXI_transactor->AWLOCK(S01_AXI_awlock);
    mp_S01_AXI_transactor->AWCACHE(S01_AXI_awcache);
    mp_S01_AXI_transactor->AWPROT(S01_AXI_awprot);
    mp_S01_AXI_transactor->AWQOS(S01_AXI_awqos);
    mp_S01_AXI_transactor->AWUSER(S01_AXI_awuser);
    mp_S01_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_awvalid_converter");
    mp_S01_AXI_awvalid_converter->vector_in(S01_AXI_awvalid);
    mp_S01_AXI_awvalid_converter->scalar_out(m_S01_AXI_awvalid_converter_signal);
    mp_S01_AXI_transactor->AWVALID(m_S01_AXI_awvalid_converter_signal);
    mp_S01_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_awready_converter");
    mp_S01_AXI_awready_converter->scalar_in(m_S01_AXI_awready_converter_signal);
    mp_S01_AXI_awready_converter->vector_out(S01_AXI_awready);
    mp_S01_AXI_transactor->AWREADY(m_S01_AXI_awready_converter_signal);
    mp_S01_AXI_transactor->WDATA(S01_AXI_wdata);
    mp_S01_AXI_transactor->WSTRB(S01_AXI_wstrb);
    mp_S01_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_wlast_converter");
    mp_S01_AXI_wlast_converter->vector_in(S01_AXI_wlast);
    mp_S01_AXI_wlast_converter->scalar_out(m_S01_AXI_wlast_converter_signal);
    mp_S01_AXI_transactor->WLAST(m_S01_AXI_wlast_converter_signal);
    mp_S01_AXI_transactor->WUSER(S01_AXI_wuser);
    mp_S01_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_wvalid_converter");
    mp_S01_AXI_wvalid_converter->vector_in(S01_AXI_wvalid);
    mp_S01_AXI_wvalid_converter->scalar_out(m_S01_AXI_wvalid_converter_signal);
    mp_S01_AXI_transactor->WVALID(m_S01_AXI_wvalid_converter_signal);
    mp_S01_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_wready_converter");
    mp_S01_AXI_wready_converter->scalar_in(m_S01_AXI_wready_converter_signal);
    mp_S01_AXI_wready_converter->vector_out(S01_AXI_wready);
    mp_S01_AXI_transactor->WREADY(m_S01_AXI_wready_converter_signal);
    mp_S01_AXI_transactor->BID(S01_AXI_bid);
    mp_S01_AXI_transactor->BRESP(S01_AXI_bresp);
    mp_S01_AXI_transactor->BUSER(S01_AXI_buser);
    mp_S01_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_bvalid_converter");
    mp_S01_AXI_bvalid_converter->scalar_in(m_S01_AXI_bvalid_converter_signal);
    mp_S01_AXI_bvalid_converter->vector_out(S01_AXI_bvalid);
    mp_S01_AXI_transactor->BVALID(m_S01_AXI_bvalid_converter_signal);
    mp_S01_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_bready_converter");
    mp_S01_AXI_bready_converter->vector_in(S01_AXI_bready);
    mp_S01_AXI_bready_converter->scalar_out(m_S01_AXI_bready_converter_signal);
    mp_S01_AXI_transactor->BREADY(m_S01_AXI_bready_converter_signal);
    mp_S01_AXI_transactor->ARID(S01_AXI_arid);
    mp_S01_AXI_transactor->ARADDR(S01_AXI_araddr);
    mp_S01_AXI_transactor->ARLEN(S01_AXI_arlen);
    mp_S01_AXI_transactor->ARSIZE(S01_AXI_arsize);
    mp_S01_AXI_transactor->ARBURST(S01_AXI_arburst);
    mp_S01_AXI_transactor->ARLOCK(S01_AXI_arlock);
    mp_S01_AXI_transactor->ARCACHE(S01_AXI_arcache);
    mp_S01_AXI_transactor->ARPROT(S01_AXI_arprot);
    mp_S01_AXI_transactor->ARQOS(S01_AXI_arqos);
    mp_S01_AXI_transactor->ARUSER(S01_AXI_aruser);
    mp_S01_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_arvalid_converter");
    mp_S01_AXI_arvalid_converter->vector_in(S01_AXI_arvalid);
    mp_S01_AXI_arvalid_converter->scalar_out(m_S01_AXI_arvalid_converter_signal);
    mp_S01_AXI_transactor->ARVALID(m_S01_AXI_arvalid_converter_signal);
    mp_S01_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_arready_converter");
    mp_S01_AXI_arready_converter->scalar_in(m_S01_AXI_arready_converter_signal);
    mp_S01_AXI_arready_converter->vector_out(S01_AXI_arready);
    mp_S01_AXI_transactor->ARREADY(m_S01_AXI_arready_converter_signal);
    mp_S01_AXI_transactor->RID(S01_AXI_rid);
    mp_S01_AXI_transactor->RDATA(S01_AXI_rdata);
    mp_S01_AXI_transactor->RRESP(S01_AXI_rresp);
    mp_S01_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_rlast_converter");
    mp_S01_AXI_rlast_converter->scalar_in(m_S01_AXI_rlast_converter_signal);
    mp_S01_AXI_rlast_converter->vector_out(S01_AXI_rlast);
    mp_S01_AXI_transactor->RLAST(m_S01_AXI_rlast_converter_signal);
    mp_S01_AXI_transactor->RUSER(S01_AXI_ruser);
    mp_S01_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S01_AXI_rvalid_converter");
    mp_S01_AXI_rvalid_converter->scalar_in(m_S01_AXI_rvalid_converter_signal);
    mp_S01_AXI_rvalid_converter->vector_out(S01_AXI_rvalid);
    mp_S01_AXI_transactor->RVALID(m_S01_AXI_rvalid_converter_signal);
    mp_S01_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S01_AXI_rready_converter");
    mp_S01_AXI_rready_converter->vector_in(S01_AXI_rready);
    mp_S01_AXI_rready_converter->scalar_out(m_S01_AXI_rready_converter_signal);
    mp_S01_AXI_transactor->RREADY(m_S01_AXI_rready_converter_signal);
    mp_S01_AXI_transactor->CLK(aclk);
    mp_S01_AXI_transactor->RST(aresetn);

    // S01_AXI' transactor sockets

    mp_impl->S01_AXI_tlm_aximm_read_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->S01_AXI_tlm_aximm_write_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S02_AXI' transactor parameters
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S02_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S02_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S02_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S02_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S02_AXI_transactor", S02_AXI_transactor_param_props);

    // S02_AXI' transactor ports

    mp_S02_AXI_transactor->AWID(S02_AXI_awid);
    mp_S02_AXI_transactor->AWADDR(S02_AXI_awaddr);
    mp_S02_AXI_transactor->AWLEN(S02_AXI_awlen);
    mp_S02_AXI_transactor->AWSIZE(S02_AXI_awsize);
    mp_S02_AXI_transactor->AWBURST(S02_AXI_awburst);
    mp_S02_AXI_transactor->AWLOCK(S02_AXI_awlock);
    mp_S02_AXI_transactor->AWCACHE(S02_AXI_awcache);
    mp_S02_AXI_transactor->AWPROT(S02_AXI_awprot);
    mp_S02_AXI_transactor->AWQOS(S02_AXI_awqos);
    mp_S02_AXI_transactor->AWUSER(S02_AXI_awuser);
    mp_S02_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_awvalid_converter");
    mp_S02_AXI_awvalid_converter->vector_in(S02_AXI_awvalid);
    mp_S02_AXI_awvalid_converter->scalar_out(m_S02_AXI_awvalid_converter_signal);
    mp_S02_AXI_transactor->AWVALID(m_S02_AXI_awvalid_converter_signal);
    mp_S02_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_awready_converter");
    mp_S02_AXI_awready_converter->scalar_in(m_S02_AXI_awready_converter_signal);
    mp_S02_AXI_awready_converter->vector_out(S02_AXI_awready);
    mp_S02_AXI_transactor->AWREADY(m_S02_AXI_awready_converter_signal);
    mp_S02_AXI_transactor->WDATA(S02_AXI_wdata);
    mp_S02_AXI_transactor->WSTRB(S02_AXI_wstrb);
    mp_S02_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_wlast_converter");
    mp_S02_AXI_wlast_converter->vector_in(S02_AXI_wlast);
    mp_S02_AXI_wlast_converter->scalar_out(m_S02_AXI_wlast_converter_signal);
    mp_S02_AXI_transactor->WLAST(m_S02_AXI_wlast_converter_signal);
    mp_S02_AXI_transactor->WUSER(S02_AXI_wuser);
    mp_S02_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_wvalid_converter");
    mp_S02_AXI_wvalid_converter->vector_in(S02_AXI_wvalid);
    mp_S02_AXI_wvalid_converter->scalar_out(m_S02_AXI_wvalid_converter_signal);
    mp_S02_AXI_transactor->WVALID(m_S02_AXI_wvalid_converter_signal);
    mp_S02_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_wready_converter");
    mp_S02_AXI_wready_converter->scalar_in(m_S02_AXI_wready_converter_signal);
    mp_S02_AXI_wready_converter->vector_out(S02_AXI_wready);
    mp_S02_AXI_transactor->WREADY(m_S02_AXI_wready_converter_signal);
    mp_S02_AXI_transactor->BID(S02_AXI_bid);
    mp_S02_AXI_transactor->BRESP(S02_AXI_bresp);
    mp_S02_AXI_transactor->BUSER(S02_AXI_buser);
    mp_S02_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_bvalid_converter");
    mp_S02_AXI_bvalid_converter->scalar_in(m_S02_AXI_bvalid_converter_signal);
    mp_S02_AXI_bvalid_converter->vector_out(S02_AXI_bvalid);
    mp_S02_AXI_transactor->BVALID(m_S02_AXI_bvalid_converter_signal);
    mp_S02_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_bready_converter");
    mp_S02_AXI_bready_converter->vector_in(S02_AXI_bready);
    mp_S02_AXI_bready_converter->scalar_out(m_S02_AXI_bready_converter_signal);
    mp_S02_AXI_transactor->BREADY(m_S02_AXI_bready_converter_signal);
    mp_S02_AXI_transactor->ARID(S02_AXI_arid);
    mp_S02_AXI_transactor->ARADDR(S02_AXI_araddr);
    mp_S02_AXI_transactor->ARLEN(S02_AXI_arlen);
    mp_S02_AXI_transactor->ARSIZE(S02_AXI_arsize);
    mp_S02_AXI_transactor->ARBURST(S02_AXI_arburst);
    mp_S02_AXI_transactor->ARLOCK(S02_AXI_arlock);
    mp_S02_AXI_transactor->ARCACHE(S02_AXI_arcache);
    mp_S02_AXI_transactor->ARPROT(S02_AXI_arprot);
    mp_S02_AXI_transactor->ARQOS(S02_AXI_arqos);
    mp_S02_AXI_transactor->ARUSER(S02_AXI_aruser);
    mp_S02_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_arvalid_converter");
    mp_S02_AXI_arvalid_converter->vector_in(S02_AXI_arvalid);
    mp_S02_AXI_arvalid_converter->scalar_out(m_S02_AXI_arvalid_converter_signal);
    mp_S02_AXI_transactor->ARVALID(m_S02_AXI_arvalid_converter_signal);
    mp_S02_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_arready_converter");
    mp_S02_AXI_arready_converter->scalar_in(m_S02_AXI_arready_converter_signal);
    mp_S02_AXI_arready_converter->vector_out(S02_AXI_arready);
    mp_S02_AXI_transactor->ARREADY(m_S02_AXI_arready_converter_signal);
    mp_S02_AXI_transactor->RID(S02_AXI_rid);
    mp_S02_AXI_transactor->RDATA(S02_AXI_rdata);
    mp_S02_AXI_transactor->RRESP(S02_AXI_rresp);
    mp_S02_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_rlast_converter");
    mp_S02_AXI_rlast_converter->scalar_in(m_S02_AXI_rlast_converter_signal);
    mp_S02_AXI_rlast_converter->vector_out(S02_AXI_rlast);
    mp_S02_AXI_transactor->RLAST(m_S02_AXI_rlast_converter_signal);
    mp_S02_AXI_transactor->RUSER(S02_AXI_ruser);
    mp_S02_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S02_AXI_rvalid_converter");
    mp_S02_AXI_rvalid_converter->scalar_in(m_S02_AXI_rvalid_converter_signal);
    mp_S02_AXI_rvalid_converter->vector_out(S02_AXI_rvalid);
    mp_S02_AXI_transactor->RVALID(m_S02_AXI_rvalid_converter_signal);
    mp_S02_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S02_AXI_rready_converter");
    mp_S02_AXI_rready_converter->vector_in(S02_AXI_rready);
    mp_S02_AXI_rready_converter->scalar_out(m_S02_AXI_rready_converter_signal);
    mp_S02_AXI_transactor->RREADY(m_S02_AXI_rready_converter_signal);
    mp_S02_AXI_transactor->CLK(aclk);
    mp_S02_AXI_transactor->RST(aresetn);

    // S02_AXI' transactor sockets

    mp_impl->S02_AXI_tlm_aximm_read_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->S02_AXI_tlm_aximm_write_socket->bind(*(mp_S02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S03_AXI' transactor parameters
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    S03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    S03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    S03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    S03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    S03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S03_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    S03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S03_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    S03_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S03_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<32,64,1,1,1,1,1,1>("S03_AXI_transactor", S03_AXI_transactor_param_props);

    // S03_AXI' transactor ports

    mp_S03_AXI_transactor->AWID(S03_AXI_awid);
    mp_S03_AXI_transactor->AWADDR(S03_AXI_awaddr);
    mp_S03_AXI_transactor->AWLEN(S03_AXI_awlen);
    mp_S03_AXI_transactor->AWSIZE(S03_AXI_awsize);
    mp_S03_AXI_transactor->AWBURST(S03_AXI_awburst);
    mp_S03_AXI_transactor->AWLOCK(S03_AXI_awlock);
    mp_S03_AXI_transactor->AWCACHE(S03_AXI_awcache);
    mp_S03_AXI_transactor->AWPROT(S03_AXI_awprot);
    mp_S03_AXI_transactor->AWQOS(S03_AXI_awqos);
    mp_S03_AXI_transactor->AWUSER(S03_AXI_awuser);
    mp_S03_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_awvalid_converter");
    mp_S03_AXI_awvalid_converter->vector_in(S03_AXI_awvalid);
    mp_S03_AXI_awvalid_converter->scalar_out(m_S03_AXI_awvalid_converter_signal);
    mp_S03_AXI_transactor->AWVALID(m_S03_AXI_awvalid_converter_signal);
    mp_S03_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_awready_converter");
    mp_S03_AXI_awready_converter->scalar_in(m_S03_AXI_awready_converter_signal);
    mp_S03_AXI_awready_converter->vector_out(S03_AXI_awready);
    mp_S03_AXI_transactor->AWREADY(m_S03_AXI_awready_converter_signal);
    mp_S03_AXI_transactor->WDATA(S03_AXI_wdata);
    mp_S03_AXI_transactor->WSTRB(S03_AXI_wstrb);
    mp_S03_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_wlast_converter");
    mp_S03_AXI_wlast_converter->vector_in(S03_AXI_wlast);
    mp_S03_AXI_wlast_converter->scalar_out(m_S03_AXI_wlast_converter_signal);
    mp_S03_AXI_transactor->WLAST(m_S03_AXI_wlast_converter_signal);
    mp_S03_AXI_transactor->WUSER(S03_AXI_wuser);
    mp_S03_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_wvalid_converter");
    mp_S03_AXI_wvalid_converter->vector_in(S03_AXI_wvalid);
    mp_S03_AXI_wvalid_converter->scalar_out(m_S03_AXI_wvalid_converter_signal);
    mp_S03_AXI_transactor->WVALID(m_S03_AXI_wvalid_converter_signal);
    mp_S03_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_wready_converter");
    mp_S03_AXI_wready_converter->scalar_in(m_S03_AXI_wready_converter_signal);
    mp_S03_AXI_wready_converter->vector_out(S03_AXI_wready);
    mp_S03_AXI_transactor->WREADY(m_S03_AXI_wready_converter_signal);
    mp_S03_AXI_transactor->BID(S03_AXI_bid);
    mp_S03_AXI_transactor->BRESP(S03_AXI_bresp);
    mp_S03_AXI_transactor->BUSER(S03_AXI_buser);
    mp_S03_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_bvalid_converter");
    mp_S03_AXI_bvalid_converter->scalar_in(m_S03_AXI_bvalid_converter_signal);
    mp_S03_AXI_bvalid_converter->vector_out(S03_AXI_bvalid);
    mp_S03_AXI_transactor->BVALID(m_S03_AXI_bvalid_converter_signal);
    mp_S03_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_bready_converter");
    mp_S03_AXI_bready_converter->vector_in(S03_AXI_bready);
    mp_S03_AXI_bready_converter->scalar_out(m_S03_AXI_bready_converter_signal);
    mp_S03_AXI_transactor->BREADY(m_S03_AXI_bready_converter_signal);
    mp_S03_AXI_transactor->ARID(S03_AXI_arid);
    mp_S03_AXI_transactor->ARADDR(S03_AXI_araddr);
    mp_S03_AXI_transactor->ARLEN(S03_AXI_arlen);
    mp_S03_AXI_transactor->ARSIZE(S03_AXI_arsize);
    mp_S03_AXI_transactor->ARBURST(S03_AXI_arburst);
    mp_S03_AXI_transactor->ARLOCK(S03_AXI_arlock);
    mp_S03_AXI_transactor->ARCACHE(S03_AXI_arcache);
    mp_S03_AXI_transactor->ARPROT(S03_AXI_arprot);
    mp_S03_AXI_transactor->ARQOS(S03_AXI_arqos);
    mp_S03_AXI_transactor->ARUSER(S03_AXI_aruser);
    mp_S03_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_arvalid_converter");
    mp_S03_AXI_arvalid_converter->vector_in(S03_AXI_arvalid);
    mp_S03_AXI_arvalid_converter->scalar_out(m_S03_AXI_arvalid_converter_signal);
    mp_S03_AXI_transactor->ARVALID(m_S03_AXI_arvalid_converter_signal);
    mp_S03_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_arready_converter");
    mp_S03_AXI_arready_converter->scalar_in(m_S03_AXI_arready_converter_signal);
    mp_S03_AXI_arready_converter->vector_out(S03_AXI_arready);
    mp_S03_AXI_transactor->ARREADY(m_S03_AXI_arready_converter_signal);
    mp_S03_AXI_transactor->RID(S03_AXI_rid);
    mp_S03_AXI_transactor->RDATA(S03_AXI_rdata);
    mp_S03_AXI_transactor->RRESP(S03_AXI_rresp);
    mp_S03_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_rlast_converter");
    mp_S03_AXI_rlast_converter->scalar_in(m_S03_AXI_rlast_converter_signal);
    mp_S03_AXI_rlast_converter->vector_out(S03_AXI_rlast);
    mp_S03_AXI_transactor->RLAST(m_S03_AXI_rlast_converter_signal);
    mp_S03_AXI_transactor->RUSER(S03_AXI_ruser);
    mp_S03_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S03_AXI_rvalid_converter");
    mp_S03_AXI_rvalid_converter->scalar_in(m_S03_AXI_rvalid_converter_signal);
    mp_S03_AXI_rvalid_converter->vector_out(S03_AXI_rvalid);
    mp_S03_AXI_transactor->RVALID(m_S03_AXI_rvalid_converter_signal);
    mp_S03_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S03_AXI_rready_converter");
    mp_S03_AXI_rready_converter->vector_in(S03_AXI_rready);
    mp_S03_AXI_rready_converter->scalar_out(m_S03_AXI_rready_converter_signal);
    mp_S03_AXI_transactor->RREADY(m_S03_AXI_rready_converter_signal);
    mp_S03_AXI_transactor->CLK(aclk);
    mp_S03_AXI_transactor->RST(aresetn);

    // S03_AXI' transactor sockets

    mp_impl->S03_AXI_tlm_aximm_read_socket->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_impl->S03_AXI_tlm_aximm_write_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "S04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S04_AXI' transactor parameters
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "35");
    S04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("HAS_BURST", "0");
    S04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    S04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    S04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    S04_AXI_transactor_param_props.addLong("HAS_REGION", "1");
    S04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    S04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    S04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "0");
    S04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "16");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "16");
    S04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    S04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    S04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    S04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    S04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    S04_AXI_transactor_param_props.addFloat("PHASE", "0.0");
    S04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    S04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    S04_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_kernel_clk_0_clk");
    S04_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_S04_AXI_transactor = new xtlm::xaximm_pin2xtlm_t<512,64,1,1,1,1,1,1>("S04_AXI_transactor", S04_AXI_transactor_param_props);

    // S04_AXI' transactor ports

    mp_S04_AXI_transactor->AWADDR(S04_AXI_awaddr);
    mp_S04_AXI_transactor->AWLEN(S04_AXI_awlen);
    mp_S04_AXI_transactor->AWSIZE(S04_AXI_awsize);
    mp_S04_AXI_transactor->AWLOCK(S04_AXI_awlock);
    mp_S04_AXI_transactor->AWCACHE(S04_AXI_awcache);
    mp_S04_AXI_transactor->AWPROT(S04_AXI_awprot);
    mp_S04_AXI_transactor->AWREGION(S04_AXI_awregion);
    mp_S04_AXI_transactor->AWQOS(S04_AXI_awqos);
    mp_S04_AXI_awvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_awvalid_converter");
    mp_S04_AXI_awvalid_converter->vector_in(S04_AXI_awvalid);
    mp_S04_AXI_awvalid_converter->scalar_out(m_S04_AXI_awvalid_converter_signal);
    mp_S04_AXI_transactor->AWVALID(m_S04_AXI_awvalid_converter_signal);
    mp_S04_AXI_awready_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_awready_converter");
    mp_S04_AXI_awready_converter->scalar_in(m_S04_AXI_awready_converter_signal);
    mp_S04_AXI_awready_converter->vector_out(S04_AXI_awready);
    mp_S04_AXI_transactor->AWREADY(m_S04_AXI_awready_converter_signal);
    mp_S04_AXI_transactor->WDATA(S04_AXI_wdata);
    mp_S04_AXI_transactor->WSTRB(S04_AXI_wstrb);
    mp_S04_AXI_wlast_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_wlast_converter");
    mp_S04_AXI_wlast_converter->vector_in(S04_AXI_wlast);
    mp_S04_AXI_wlast_converter->scalar_out(m_S04_AXI_wlast_converter_signal);
    mp_S04_AXI_transactor->WLAST(m_S04_AXI_wlast_converter_signal);
    mp_S04_AXI_wvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_wvalid_converter");
    mp_S04_AXI_wvalid_converter->vector_in(S04_AXI_wvalid);
    mp_S04_AXI_wvalid_converter->scalar_out(m_S04_AXI_wvalid_converter_signal);
    mp_S04_AXI_transactor->WVALID(m_S04_AXI_wvalid_converter_signal);
    mp_S04_AXI_wready_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_wready_converter");
    mp_S04_AXI_wready_converter->scalar_in(m_S04_AXI_wready_converter_signal);
    mp_S04_AXI_wready_converter->vector_out(S04_AXI_wready);
    mp_S04_AXI_transactor->WREADY(m_S04_AXI_wready_converter_signal);
    mp_S04_AXI_transactor->BRESP(S04_AXI_bresp);
    mp_S04_AXI_bvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_bvalid_converter");
    mp_S04_AXI_bvalid_converter->scalar_in(m_S04_AXI_bvalid_converter_signal);
    mp_S04_AXI_bvalid_converter->vector_out(S04_AXI_bvalid);
    mp_S04_AXI_transactor->BVALID(m_S04_AXI_bvalid_converter_signal);
    mp_S04_AXI_bready_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_bready_converter");
    mp_S04_AXI_bready_converter->vector_in(S04_AXI_bready);
    mp_S04_AXI_bready_converter->scalar_out(m_S04_AXI_bready_converter_signal);
    mp_S04_AXI_transactor->BREADY(m_S04_AXI_bready_converter_signal);
    mp_S04_AXI_transactor->ARADDR(S04_AXI_araddr);
    mp_S04_AXI_transactor->ARLEN(S04_AXI_arlen);
    mp_S04_AXI_transactor->ARSIZE(S04_AXI_arsize);
    mp_S04_AXI_transactor->ARLOCK(S04_AXI_arlock);
    mp_S04_AXI_transactor->ARCACHE(S04_AXI_arcache);
    mp_S04_AXI_transactor->ARPROT(S04_AXI_arprot);
    mp_S04_AXI_transactor->ARREGION(S04_AXI_arregion);
    mp_S04_AXI_transactor->ARQOS(S04_AXI_arqos);
    mp_S04_AXI_arvalid_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_arvalid_converter");
    mp_S04_AXI_arvalid_converter->vector_in(S04_AXI_arvalid);
    mp_S04_AXI_arvalid_converter->scalar_out(m_S04_AXI_arvalid_converter_signal);
    mp_S04_AXI_transactor->ARVALID(m_S04_AXI_arvalid_converter_signal);
    mp_S04_AXI_arready_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_arready_converter");
    mp_S04_AXI_arready_converter->scalar_in(m_S04_AXI_arready_converter_signal);
    mp_S04_AXI_arready_converter->vector_out(S04_AXI_arready);
    mp_S04_AXI_transactor->ARREADY(m_S04_AXI_arready_converter_signal);
    mp_S04_AXI_transactor->RDATA(S04_AXI_rdata);
    mp_S04_AXI_transactor->RRESP(S04_AXI_rresp);
    mp_S04_AXI_rlast_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_rlast_converter");
    mp_S04_AXI_rlast_converter->scalar_in(m_S04_AXI_rlast_converter_signal);
    mp_S04_AXI_rlast_converter->vector_out(S04_AXI_rlast);
    mp_S04_AXI_transactor->RLAST(m_S04_AXI_rlast_converter_signal);
    mp_S04_AXI_rvalid_converter = new xsc::common::scalar2vectorN_converter<1>("S04_AXI_rvalid_converter");
    mp_S04_AXI_rvalid_converter->scalar_in(m_S04_AXI_rvalid_converter_signal);
    mp_S04_AXI_rvalid_converter->vector_out(S04_AXI_rvalid);
    mp_S04_AXI_transactor->RVALID(m_S04_AXI_rvalid_converter_signal);
    mp_S04_AXI_rready_converter = new xsc::common::vectorN2scalar_converter<1>("S04_AXI_rready_converter");
    mp_S04_AXI_rready_converter->vector_in(S04_AXI_rready);
    mp_S04_AXI_rready_converter->scalar_out(m_S04_AXI_rready_converter_signal);
    mp_S04_AXI_transactor->RREADY(m_S04_AXI_rready_converter_signal);
    mp_S04_AXI_transactor->CLK(aclk1);
    mp_S04_AXI_transactor->RST(aresetn);

    // S04_AXI' transactor sockets

    mp_impl->S04_AXI_tlm_aximm_read_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->S04_AXI_tlm_aximm_write_socket->bind(*(mp_S04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M00_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M00_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
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
    M00_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M00_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M00_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M00_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M00_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M00_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M00_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M00_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M00_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M00_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M00_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,5,32,1,1,32,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

    // M00_AXI' transactor ports

    mp_M00_AXI_transactor->AWID(M00_AXI_awid);
    mp_M00_AXI_awaddr_converter = new xsc::common::vector2vector_converter<39,34>("M00_AXI_awaddr_converter");
    mp_M00_AXI_awaddr_converter->vector_in(m_M00_AXI_awaddr_converter_signal);
    mp_M00_AXI_awaddr_converter->vector_out(M00_AXI_awaddr);
    mp_M00_AXI_transactor->AWADDR(m_M00_AXI_awaddr_converter_signal);
    mp_M00_AXI_transactor->AWLEN(M00_AXI_awlen);
    mp_M00_AXI_transactor->AWSIZE(M00_AXI_awsize);
    mp_M00_AXI_transactor->AWBURST(M00_AXI_awburst);
    mp_M00_AXI_transactor->AWLOCK(M00_AXI_awlock);
    mp_M00_AXI_transactor->AWCACHE(M00_AXI_awcache);
    mp_M00_AXI_transactor->AWPROT(M00_AXI_awprot);
    mp_M00_AXI_transactor->AWQOS(M00_AXI_awqos);
    mp_M00_AXI_transactor->AWUSER(M00_AXI_awuser);
    mp_M00_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_awvalid_converter");
    mp_M00_AXI_awvalid_converter->scalar_in(m_M00_AXI_awvalid_converter_signal);
    mp_M00_AXI_awvalid_converter->vector_out(M00_AXI_awvalid);
    mp_M00_AXI_transactor->AWVALID(m_M00_AXI_awvalid_converter_signal);
    mp_M00_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_awready_converter");
    mp_M00_AXI_awready_converter->vector_in(M00_AXI_awready);
    mp_M00_AXI_awready_converter->scalar_out(m_M00_AXI_awready_converter_signal);
    mp_M00_AXI_transactor->AWREADY(m_M00_AXI_awready_converter_signal);
    mp_M00_AXI_transactor->WDATA(M00_AXI_wdata);
    mp_M00_AXI_transactor->WSTRB(M00_AXI_wstrb);
    mp_M00_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_wlast_converter");
    mp_M00_AXI_wlast_converter->scalar_in(m_M00_AXI_wlast_converter_signal);
    mp_M00_AXI_wlast_converter->vector_out(M00_AXI_wlast);
    mp_M00_AXI_transactor->WLAST(m_M00_AXI_wlast_converter_signal);
    mp_M00_AXI_transactor->WUSER(M00_AXI_wuser);
    mp_M00_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_wvalid_converter");
    mp_M00_AXI_wvalid_converter->scalar_in(m_M00_AXI_wvalid_converter_signal);
    mp_M00_AXI_wvalid_converter->vector_out(M00_AXI_wvalid);
    mp_M00_AXI_transactor->WVALID(m_M00_AXI_wvalid_converter_signal);
    mp_M00_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_wready_converter");
    mp_M00_AXI_wready_converter->vector_in(M00_AXI_wready);
    mp_M00_AXI_wready_converter->scalar_out(m_M00_AXI_wready_converter_signal);
    mp_M00_AXI_transactor->WREADY(m_M00_AXI_wready_converter_signal);
    mp_M00_AXI_transactor->BID(M00_AXI_bid);
    mp_M00_AXI_transactor->BRESP(M00_AXI_bresp);
    mp_M00_AXI_transactor->BUSER(M00_AXI_buser);
    mp_M00_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_bvalid_converter");
    mp_M00_AXI_bvalid_converter->vector_in(M00_AXI_bvalid);
    mp_M00_AXI_bvalid_converter->scalar_out(m_M00_AXI_bvalid_converter_signal);
    mp_M00_AXI_transactor->BVALID(m_M00_AXI_bvalid_converter_signal);
    mp_M00_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_bready_converter");
    mp_M00_AXI_bready_converter->scalar_in(m_M00_AXI_bready_converter_signal);
    mp_M00_AXI_bready_converter->vector_out(M00_AXI_bready);
    mp_M00_AXI_transactor->BREADY(m_M00_AXI_bready_converter_signal);
    mp_M00_AXI_transactor->ARID(M00_AXI_arid);
    mp_M00_AXI_araddr_converter = new xsc::common::vector2vector_converter<39,34>("M00_AXI_araddr_converter");
    mp_M00_AXI_araddr_converter->vector_in(m_M00_AXI_araddr_converter_signal);
    mp_M00_AXI_araddr_converter->vector_out(M00_AXI_araddr);
    mp_M00_AXI_transactor->ARADDR(m_M00_AXI_araddr_converter_signal);
    mp_M00_AXI_transactor->ARLEN(M00_AXI_arlen);
    mp_M00_AXI_transactor->ARSIZE(M00_AXI_arsize);
    mp_M00_AXI_transactor->ARBURST(M00_AXI_arburst);
    mp_M00_AXI_transactor->ARLOCK(M00_AXI_arlock);
    mp_M00_AXI_transactor->ARCACHE(M00_AXI_arcache);
    mp_M00_AXI_transactor->ARPROT(M00_AXI_arprot);
    mp_M00_AXI_transactor->ARQOS(M00_AXI_arqos);
    mp_M00_AXI_transactor->ARUSER(M00_AXI_aruser);
    mp_M00_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_arvalid_converter");
    mp_M00_AXI_arvalid_converter->scalar_in(m_M00_AXI_arvalid_converter_signal);
    mp_M00_AXI_arvalid_converter->vector_out(M00_AXI_arvalid);
    mp_M00_AXI_transactor->ARVALID(m_M00_AXI_arvalid_converter_signal);
    mp_M00_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_arready_converter");
    mp_M00_AXI_arready_converter->vector_in(M00_AXI_arready);
    mp_M00_AXI_arready_converter->scalar_out(m_M00_AXI_arready_converter_signal);
    mp_M00_AXI_transactor->ARREADY(m_M00_AXI_arready_converter_signal);
    mp_M00_AXI_transactor->RID(M00_AXI_rid);
    mp_M00_AXI_transactor->RDATA(M00_AXI_rdata);
    mp_M00_AXI_transactor->RRESP(M00_AXI_rresp);
    mp_M00_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_rlast_converter");
    mp_M00_AXI_rlast_converter->vector_in(M00_AXI_rlast);
    mp_M00_AXI_rlast_converter->scalar_out(m_M00_AXI_rlast_converter_signal);
    mp_M00_AXI_transactor->RLAST(m_M00_AXI_rlast_converter_signal);
    mp_M00_AXI_transactor->RUSER(M00_AXI_ruser);
    mp_M00_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M00_AXI_rvalid_converter");
    mp_M00_AXI_rvalid_converter->vector_in(M00_AXI_rvalid);
    mp_M00_AXI_rvalid_converter->scalar_out(m_M00_AXI_rvalid_converter_signal);
    mp_M00_AXI_transactor->RVALID(m_M00_AXI_rvalid_converter_signal);
    mp_M00_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M00_AXI_rready_converter");
    mp_M00_AXI_rready_converter->scalar_in(m_M00_AXI_rready_converter_signal);
    mp_M00_AXI_rready_converter->vector_out(M00_AXI_rready);
    mp_M00_AXI_transactor->RREADY(m_M00_AXI_rready_converter_signal);
    mp_M00_AXI_transactor->CLK(aclk);
    mp_M00_AXI_transactor->RST(aresetn);

    // M00_AXI' transactor sockets

    mp_impl->M00_AXI_tlm_aximm_read_socket->bind(*(mp_M00_AXI_transactor->rd_socket));
    mp_impl->M00_AXI_tlm_aximm_write_socket->bind(*(mp_M00_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M01_AXI' transactor parameters
    xsc::common_cpp::properties M01_AXI_transactor_param_props;
    M01_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M01_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M01_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "35");
    M01_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("RUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("BUSER_WIDTH", "0");
    M01_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M01_AXI_transactor_param_props.addLong("HAS_LOCK", "0");
    M01_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M01_AXI_transactor_param_props.addLong("HAS_CACHE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_QOS", "0");
    M01_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M01_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M01_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M01_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M01_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M01_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M01_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M01_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M01_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M01_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M01_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M01_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M01_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M01_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M01_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M01_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,35,1,1,1,1,1,1>("M01_AXI_transactor", M01_AXI_transactor_param_props);

    // M01_AXI' transactor ports

    mp_M01_AXI_transactor->AWADDR(M01_AXI_awaddr);
    mp_M01_AXI_transactor->AWLEN(M01_AXI_awlen);
    mp_M01_AXI_transactor->AWSIZE(M01_AXI_awsize);
    mp_M01_AXI_transactor->AWBURST(M01_AXI_awburst);
    mp_M01_AXI_transactor->AWPROT(M01_AXI_awprot);
    mp_M01_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_awvalid_converter");
    mp_M01_AXI_awvalid_converter->scalar_in(m_M01_AXI_awvalid_converter_signal);
    mp_M01_AXI_awvalid_converter->vector_out(M01_AXI_awvalid);
    mp_M01_AXI_transactor->AWVALID(m_M01_AXI_awvalid_converter_signal);
    mp_M01_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_awready_converter");
    mp_M01_AXI_awready_converter->vector_in(M01_AXI_awready);
    mp_M01_AXI_awready_converter->scalar_out(m_M01_AXI_awready_converter_signal);
    mp_M01_AXI_transactor->AWREADY(m_M01_AXI_awready_converter_signal);
    mp_M01_AXI_transactor->WDATA(M01_AXI_wdata);
    mp_M01_AXI_transactor->WSTRB(M01_AXI_wstrb);
    mp_M01_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_wlast_converter");
    mp_M01_AXI_wlast_converter->scalar_in(m_M01_AXI_wlast_converter_signal);
    mp_M01_AXI_wlast_converter->vector_out(M01_AXI_wlast);
    mp_M01_AXI_transactor->WLAST(m_M01_AXI_wlast_converter_signal);
    mp_M01_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_wvalid_converter");
    mp_M01_AXI_wvalid_converter->scalar_in(m_M01_AXI_wvalid_converter_signal);
    mp_M01_AXI_wvalid_converter->vector_out(M01_AXI_wvalid);
    mp_M01_AXI_transactor->WVALID(m_M01_AXI_wvalid_converter_signal);
    mp_M01_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_wready_converter");
    mp_M01_AXI_wready_converter->vector_in(M01_AXI_wready);
    mp_M01_AXI_wready_converter->scalar_out(m_M01_AXI_wready_converter_signal);
    mp_M01_AXI_transactor->WREADY(m_M01_AXI_wready_converter_signal);
    mp_M01_AXI_transactor->BRESP(M01_AXI_bresp);
    mp_M01_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_bvalid_converter");
    mp_M01_AXI_bvalid_converter->vector_in(M01_AXI_bvalid);
    mp_M01_AXI_bvalid_converter->scalar_out(m_M01_AXI_bvalid_converter_signal);
    mp_M01_AXI_transactor->BVALID(m_M01_AXI_bvalid_converter_signal);
    mp_M01_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_bready_converter");
    mp_M01_AXI_bready_converter->scalar_in(m_M01_AXI_bready_converter_signal);
    mp_M01_AXI_bready_converter->vector_out(M01_AXI_bready);
    mp_M01_AXI_transactor->BREADY(m_M01_AXI_bready_converter_signal);
    mp_M01_AXI_transactor->ARADDR(M01_AXI_araddr);
    mp_M01_AXI_transactor->ARLEN(M01_AXI_arlen);
    mp_M01_AXI_transactor->ARSIZE(M01_AXI_arsize);
    mp_M01_AXI_transactor->ARBURST(M01_AXI_arburst);
    mp_M01_AXI_transactor->ARPROT(M01_AXI_arprot);
    mp_M01_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_arvalid_converter");
    mp_M01_AXI_arvalid_converter->scalar_in(m_M01_AXI_arvalid_converter_signal);
    mp_M01_AXI_arvalid_converter->vector_out(M01_AXI_arvalid);
    mp_M01_AXI_transactor->ARVALID(m_M01_AXI_arvalid_converter_signal);
    mp_M01_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_arready_converter");
    mp_M01_AXI_arready_converter->vector_in(M01_AXI_arready);
    mp_M01_AXI_arready_converter->scalar_out(m_M01_AXI_arready_converter_signal);
    mp_M01_AXI_transactor->ARREADY(m_M01_AXI_arready_converter_signal);
    mp_M01_AXI_transactor->RDATA(M01_AXI_rdata);
    mp_M01_AXI_transactor->RRESP(M01_AXI_rresp);
    mp_M01_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_rlast_converter");
    mp_M01_AXI_rlast_converter->vector_in(M01_AXI_rlast);
    mp_M01_AXI_rlast_converter->scalar_out(m_M01_AXI_rlast_converter_signal);
    mp_M01_AXI_transactor->RLAST(m_M01_AXI_rlast_converter_signal);
    mp_M01_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M01_AXI_rvalid_converter");
    mp_M01_AXI_rvalid_converter->vector_in(M01_AXI_rvalid);
    mp_M01_AXI_rvalid_converter->scalar_out(m_M01_AXI_rvalid_converter_signal);
    mp_M01_AXI_transactor->RVALID(m_M01_AXI_rvalid_converter_signal);
    mp_M01_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M01_AXI_rready_converter");
    mp_M01_AXI_rready_converter->scalar_in(m_M01_AXI_rready_converter_signal);
    mp_M01_AXI_rready_converter->vector_out(M01_AXI_rready);
    mp_M01_AXI_transactor->RREADY(m_M01_AXI_rready_converter_signal);
    mp_M01_AXI_transactor->CLK(aclk);
    mp_M01_AXI_transactor->RST(aresetn);

    // M01_AXI' transactor sockets

    mp_impl->M01_AXI_tlm_aximm_read_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->M01_AXI_tlm_aximm_write_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M02_AXI' transactor parameters
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M02_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M02_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M02_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M02_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M02_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M02_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M02_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M02_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M02_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M02_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M02_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M02_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M02_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M02_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M02_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M02_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M02_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M02_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M02_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M02_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M02_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M02_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,5,32,1,1,32,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);

    // M02_AXI' transactor ports

    mp_M02_AXI_transactor->AWID(M02_AXI_awid);
    mp_M02_AXI_awaddr_converter = new xsc::common::vector2vector_converter<39,34>("M02_AXI_awaddr_converter");
    mp_M02_AXI_awaddr_converter->vector_in(m_M02_AXI_awaddr_converter_signal);
    mp_M02_AXI_awaddr_converter->vector_out(M02_AXI_awaddr);
    mp_M02_AXI_transactor->AWADDR(m_M02_AXI_awaddr_converter_signal);
    mp_M02_AXI_transactor->AWLEN(M02_AXI_awlen);
    mp_M02_AXI_transactor->AWSIZE(M02_AXI_awsize);
    mp_M02_AXI_transactor->AWBURST(M02_AXI_awburst);
    mp_M02_AXI_transactor->AWLOCK(M02_AXI_awlock);
    mp_M02_AXI_transactor->AWCACHE(M02_AXI_awcache);
    mp_M02_AXI_transactor->AWPROT(M02_AXI_awprot);
    mp_M02_AXI_transactor->AWQOS(M02_AXI_awqos);
    mp_M02_AXI_transactor->AWUSER(M02_AXI_awuser);
    mp_M02_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_awvalid_converter");
    mp_M02_AXI_awvalid_converter->scalar_in(m_M02_AXI_awvalid_converter_signal);
    mp_M02_AXI_awvalid_converter->vector_out(M02_AXI_awvalid);
    mp_M02_AXI_transactor->AWVALID(m_M02_AXI_awvalid_converter_signal);
    mp_M02_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_awready_converter");
    mp_M02_AXI_awready_converter->vector_in(M02_AXI_awready);
    mp_M02_AXI_awready_converter->scalar_out(m_M02_AXI_awready_converter_signal);
    mp_M02_AXI_transactor->AWREADY(m_M02_AXI_awready_converter_signal);
    mp_M02_AXI_transactor->WDATA(M02_AXI_wdata);
    mp_M02_AXI_transactor->WSTRB(M02_AXI_wstrb);
    mp_M02_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_wlast_converter");
    mp_M02_AXI_wlast_converter->scalar_in(m_M02_AXI_wlast_converter_signal);
    mp_M02_AXI_wlast_converter->vector_out(M02_AXI_wlast);
    mp_M02_AXI_transactor->WLAST(m_M02_AXI_wlast_converter_signal);
    mp_M02_AXI_transactor->WUSER(M02_AXI_wuser);
    mp_M02_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_wvalid_converter");
    mp_M02_AXI_wvalid_converter->scalar_in(m_M02_AXI_wvalid_converter_signal);
    mp_M02_AXI_wvalid_converter->vector_out(M02_AXI_wvalid);
    mp_M02_AXI_transactor->WVALID(m_M02_AXI_wvalid_converter_signal);
    mp_M02_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_wready_converter");
    mp_M02_AXI_wready_converter->vector_in(M02_AXI_wready);
    mp_M02_AXI_wready_converter->scalar_out(m_M02_AXI_wready_converter_signal);
    mp_M02_AXI_transactor->WREADY(m_M02_AXI_wready_converter_signal);
    mp_M02_AXI_transactor->BID(M02_AXI_bid);
    mp_M02_AXI_transactor->BRESP(M02_AXI_bresp);
    mp_M02_AXI_transactor->BUSER(M02_AXI_buser);
    mp_M02_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_bvalid_converter");
    mp_M02_AXI_bvalid_converter->vector_in(M02_AXI_bvalid);
    mp_M02_AXI_bvalid_converter->scalar_out(m_M02_AXI_bvalid_converter_signal);
    mp_M02_AXI_transactor->BVALID(m_M02_AXI_bvalid_converter_signal);
    mp_M02_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_bready_converter");
    mp_M02_AXI_bready_converter->scalar_in(m_M02_AXI_bready_converter_signal);
    mp_M02_AXI_bready_converter->vector_out(M02_AXI_bready);
    mp_M02_AXI_transactor->BREADY(m_M02_AXI_bready_converter_signal);
    mp_M02_AXI_transactor->ARID(M02_AXI_arid);
    mp_M02_AXI_araddr_converter = new xsc::common::vector2vector_converter<39,34>("M02_AXI_araddr_converter");
    mp_M02_AXI_araddr_converter->vector_in(m_M02_AXI_araddr_converter_signal);
    mp_M02_AXI_araddr_converter->vector_out(M02_AXI_araddr);
    mp_M02_AXI_transactor->ARADDR(m_M02_AXI_araddr_converter_signal);
    mp_M02_AXI_transactor->ARLEN(M02_AXI_arlen);
    mp_M02_AXI_transactor->ARSIZE(M02_AXI_arsize);
    mp_M02_AXI_transactor->ARBURST(M02_AXI_arburst);
    mp_M02_AXI_transactor->ARLOCK(M02_AXI_arlock);
    mp_M02_AXI_transactor->ARCACHE(M02_AXI_arcache);
    mp_M02_AXI_transactor->ARPROT(M02_AXI_arprot);
    mp_M02_AXI_transactor->ARQOS(M02_AXI_arqos);
    mp_M02_AXI_transactor->ARUSER(M02_AXI_aruser);
    mp_M02_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_arvalid_converter");
    mp_M02_AXI_arvalid_converter->scalar_in(m_M02_AXI_arvalid_converter_signal);
    mp_M02_AXI_arvalid_converter->vector_out(M02_AXI_arvalid);
    mp_M02_AXI_transactor->ARVALID(m_M02_AXI_arvalid_converter_signal);
    mp_M02_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_arready_converter");
    mp_M02_AXI_arready_converter->vector_in(M02_AXI_arready);
    mp_M02_AXI_arready_converter->scalar_out(m_M02_AXI_arready_converter_signal);
    mp_M02_AXI_transactor->ARREADY(m_M02_AXI_arready_converter_signal);
    mp_M02_AXI_transactor->RID(M02_AXI_rid);
    mp_M02_AXI_transactor->RDATA(M02_AXI_rdata);
    mp_M02_AXI_transactor->RRESP(M02_AXI_rresp);
    mp_M02_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_rlast_converter");
    mp_M02_AXI_rlast_converter->vector_in(M02_AXI_rlast);
    mp_M02_AXI_rlast_converter->scalar_out(m_M02_AXI_rlast_converter_signal);
    mp_M02_AXI_transactor->RLAST(m_M02_AXI_rlast_converter_signal);
    mp_M02_AXI_transactor->RUSER(M02_AXI_ruser);
    mp_M02_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M02_AXI_rvalid_converter");
    mp_M02_AXI_rvalid_converter->vector_in(M02_AXI_rvalid);
    mp_M02_AXI_rvalid_converter->scalar_out(m_M02_AXI_rvalid_converter_signal);
    mp_M02_AXI_transactor->RVALID(m_M02_AXI_rvalid_converter_signal);
    mp_M02_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M02_AXI_rready_converter");
    mp_M02_AXI_rready_converter->scalar_in(m_M02_AXI_rready_converter_signal);
    mp_M02_AXI_rready_converter->vector_out(M02_AXI_rready);
    mp_M02_AXI_transactor->RREADY(m_M02_AXI_rready_converter_signal);
    mp_M02_AXI_transactor->CLK(aclk);
    mp_M02_AXI_transactor->RST(aresetn);

    // M02_AXI' transactor sockets

    mp_impl->M02_AXI_tlm_aximm_read_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->M02_AXI_tlm_aximm_write_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("pfm_dynamic_memory_subsystem_0", "M03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M03_AXI' transactor parameters
    xsc::common_cpp::properties M03_AXI_transactor_param_props;
    M03_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M03_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "39");
    M03_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "32");
    M03_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "32");
    M03_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M03_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M03_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M03_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M03_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M03_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M03_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M03_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M03_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M03_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M03_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M03_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M03_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M03_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M03_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M03_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M03_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M03_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M03_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M03_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M03_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M03_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M03_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M03_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M03_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,39,5,32,1,1,32,1>("M03_AXI_transactor", M03_AXI_transactor_param_props);

    // M03_AXI' transactor ports

    mp_M03_AXI_transactor->AWID(M03_AXI_awid);
    mp_M03_AXI_awaddr_converter = new xsc::common::vector2vector_converter<39,34>("M03_AXI_awaddr_converter");
    mp_M03_AXI_awaddr_converter->vector_in(m_M03_AXI_awaddr_converter_signal);
    mp_M03_AXI_awaddr_converter->vector_out(M03_AXI_awaddr);
    mp_M03_AXI_transactor->AWADDR(m_M03_AXI_awaddr_converter_signal);
    mp_M03_AXI_transactor->AWLEN(M03_AXI_awlen);
    mp_M03_AXI_transactor->AWSIZE(M03_AXI_awsize);
    mp_M03_AXI_transactor->AWBURST(M03_AXI_awburst);
    mp_M03_AXI_transactor->AWLOCK(M03_AXI_awlock);
    mp_M03_AXI_transactor->AWCACHE(M03_AXI_awcache);
    mp_M03_AXI_transactor->AWPROT(M03_AXI_awprot);
    mp_M03_AXI_transactor->AWQOS(M03_AXI_awqos);
    mp_M03_AXI_transactor->AWUSER(M03_AXI_awuser);
    mp_M03_AXI_awvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_awvalid_converter");
    mp_M03_AXI_awvalid_converter->scalar_in(m_M03_AXI_awvalid_converter_signal);
    mp_M03_AXI_awvalid_converter->vector_out(M03_AXI_awvalid);
    mp_M03_AXI_transactor->AWVALID(m_M03_AXI_awvalid_converter_signal);
    mp_M03_AXI_awready_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_awready_converter");
    mp_M03_AXI_awready_converter->vector_in(M03_AXI_awready);
    mp_M03_AXI_awready_converter->scalar_out(m_M03_AXI_awready_converter_signal);
    mp_M03_AXI_transactor->AWREADY(m_M03_AXI_awready_converter_signal);
    mp_M03_AXI_transactor->WDATA(M03_AXI_wdata);
    mp_M03_AXI_transactor->WSTRB(M03_AXI_wstrb);
    mp_M03_AXI_wlast_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_wlast_converter");
    mp_M03_AXI_wlast_converter->scalar_in(m_M03_AXI_wlast_converter_signal);
    mp_M03_AXI_wlast_converter->vector_out(M03_AXI_wlast);
    mp_M03_AXI_transactor->WLAST(m_M03_AXI_wlast_converter_signal);
    mp_M03_AXI_transactor->WUSER(M03_AXI_wuser);
    mp_M03_AXI_wvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_wvalid_converter");
    mp_M03_AXI_wvalid_converter->scalar_in(m_M03_AXI_wvalid_converter_signal);
    mp_M03_AXI_wvalid_converter->vector_out(M03_AXI_wvalid);
    mp_M03_AXI_transactor->WVALID(m_M03_AXI_wvalid_converter_signal);
    mp_M03_AXI_wready_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_wready_converter");
    mp_M03_AXI_wready_converter->vector_in(M03_AXI_wready);
    mp_M03_AXI_wready_converter->scalar_out(m_M03_AXI_wready_converter_signal);
    mp_M03_AXI_transactor->WREADY(m_M03_AXI_wready_converter_signal);
    mp_M03_AXI_transactor->BID(M03_AXI_bid);
    mp_M03_AXI_transactor->BRESP(M03_AXI_bresp);
    mp_M03_AXI_transactor->BUSER(M03_AXI_buser);
    mp_M03_AXI_bvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_bvalid_converter");
    mp_M03_AXI_bvalid_converter->vector_in(M03_AXI_bvalid);
    mp_M03_AXI_bvalid_converter->scalar_out(m_M03_AXI_bvalid_converter_signal);
    mp_M03_AXI_transactor->BVALID(m_M03_AXI_bvalid_converter_signal);
    mp_M03_AXI_bready_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_bready_converter");
    mp_M03_AXI_bready_converter->scalar_in(m_M03_AXI_bready_converter_signal);
    mp_M03_AXI_bready_converter->vector_out(M03_AXI_bready);
    mp_M03_AXI_transactor->BREADY(m_M03_AXI_bready_converter_signal);
    mp_M03_AXI_transactor->ARID(M03_AXI_arid);
    mp_M03_AXI_araddr_converter = new xsc::common::vector2vector_converter<39,34>("M03_AXI_araddr_converter");
    mp_M03_AXI_araddr_converter->vector_in(m_M03_AXI_araddr_converter_signal);
    mp_M03_AXI_araddr_converter->vector_out(M03_AXI_araddr);
    mp_M03_AXI_transactor->ARADDR(m_M03_AXI_araddr_converter_signal);
    mp_M03_AXI_transactor->ARLEN(M03_AXI_arlen);
    mp_M03_AXI_transactor->ARSIZE(M03_AXI_arsize);
    mp_M03_AXI_transactor->ARBURST(M03_AXI_arburst);
    mp_M03_AXI_transactor->ARLOCK(M03_AXI_arlock);
    mp_M03_AXI_transactor->ARCACHE(M03_AXI_arcache);
    mp_M03_AXI_transactor->ARPROT(M03_AXI_arprot);
    mp_M03_AXI_transactor->ARQOS(M03_AXI_arqos);
    mp_M03_AXI_transactor->ARUSER(M03_AXI_aruser);
    mp_M03_AXI_arvalid_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_arvalid_converter");
    mp_M03_AXI_arvalid_converter->scalar_in(m_M03_AXI_arvalid_converter_signal);
    mp_M03_AXI_arvalid_converter->vector_out(M03_AXI_arvalid);
    mp_M03_AXI_transactor->ARVALID(m_M03_AXI_arvalid_converter_signal);
    mp_M03_AXI_arready_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_arready_converter");
    mp_M03_AXI_arready_converter->vector_in(M03_AXI_arready);
    mp_M03_AXI_arready_converter->scalar_out(m_M03_AXI_arready_converter_signal);
    mp_M03_AXI_transactor->ARREADY(m_M03_AXI_arready_converter_signal);
    mp_M03_AXI_transactor->RID(M03_AXI_rid);
    mp_M03_AXI_transactor->RDATA(M03_AXI_rdata);
    mp_M03_AXI_transactor->RRESP(M03_AXI_rresp);
    mp_M03_AXI_rlast_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_rlast_converter");
    mp_M03_AXI_rlast_converter->vector_in(M03_AXI_rlast);
    mp_M03_AXI_rlast_converter->scalar_out(m_M03_AXI_rlast_converter_signal);
    mp_M03_AXI_transactor->RLAST(m_M03_AXI_rlast_converter_signal);
    mp_M03_AXI_transactor->RUSER(M03_AXI_ruser);
    mp_M03_AXI_rvalid_converter = new xsc::common::vectorN2scalar_converter<1>("M03_AXI_rvalid_converter");
    mp_M03_AXI_rvalid_converter->vector_in(M03_AXI_rvalid);
    mp_M03_AXI_rvalid_converter->scalar_out(m_M03_AXI_rvalid_converter_signal);
    mp_M03_AXI_transactor->RVALID(m_M03_AXI_rvalid_converter_signal);
    mp_M03_AXI_rready_converter = new xsc::common::scalar2vectorN_converter<1>("M03_AXI_rready_converter");
    mp_M03_AXI_rready_converter->scalar_in(m_M03_AXI_rready_converter_signal);
    mp_M03_AXI_rready_converter->vector_out(M03_AXI_rready);
    mp_M03_AXI_transactor->RREADY(m_M03_AXI_rready_converter_signal);
    mp_M03_AXI_transactor->CLK(aclk);
    mp_M03_AXI_transactor->RST(aresetn);

    // M03_AXI' transactor sockets

    mp_impl->M03_AXI_tlm_aximm_read_socket->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_impl->M03_AXI_tlm_aximm_write_socket->bind(*(mp_M03_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // MTI_SYSTEMC




pfm_dynamic_memory_subsystem_0::~pfm_dynamic_memory_subsystem_0()
{
  delete mp_S00_AXI_transactor;
  delete mp_S00_AXI_awvalid_converter;
  delete mp_S00_AXI_awready_converter;
  delete mp_S00_AXI_wlast_converter;
  delete mp_S00_AXI_wvalid_converter;
  delete mp_S00_AXI_wready_converter;
  delete mp_S00_AXI_bvalid_converter;
  delete mp_S00_AXI_bready_converter;
  delete mp_S00_AXI_arvalid_converter;
  delete mp_S00_AXI_arready_converter;
  delete mp_S00_AXI_rlast_converter;
  delete mp_S00_AXI_rvalid_converter;
  delete mp_S00_AXI_rready_converter;

  delete mp_S01_AXI_transactor;
  delete mp_S01_AXI_awvalid_converter;
  delete mp_S01_AXI_awready_converter;
  delete mp_S01_AXI_wlast_converter;
  delete mp_S01_AXI_wvalid_converter;
  delete mp_S01_AXI_wready_converter;
  delete mp_S01_AXI_bvalid_converter;
  delete mp_S01_AXI_bready_converter;
  delete mp_S01_AXI_arvalid_converter;
  delete mp_S01_AXI_arready_converter;
  delete mp_S01_AXI_rlast_converter;
  delete mp_S01_AXI_rvalid_converter;
  delete mp_S01_AXI_rready_converter;

  delete mp_S02_AXI_transactor;
  delete mp_S02_AXI_awvalid_converter;
  delete mp_S02_AXI_awready_converter;
  delete mp_S02_AXI_wlast_converter;
  delete mp_S02_AXI_wvalid_converter;
  delete mp_S02_AXI_wready_converter;
  delete mp_S02_AXI_bvalid_converter;
  delete mp_S02_AXI_bready_converter;
  delete mp_S02_AXI_arvalid_converter;
  delete mp_S02_AXI_arready_converter;
  delete mp_S02_AXI_rlast_converter;
  delete mp_S02_AXI_rvalid_converter;
  delete mp_S02_AXI_rready_converter;

  delete mp_S03_AXI_transactor;
  delete mp_S03_AXI_awvalid_converter;
  delete mp_S03_AXI_awready_converter;
  delete mp_S03_AXI_wlast_converter;
  delete mp_S03_AXI_wvalid_converter;
  delete mp_S03_AXI_wready_converter;
  delete mp_S03_AXI_bvalid_converter;
  delete mp_S03_AXI_bready_converter;
  delete mp_S03_AXI_arvalid_converter;
  delete mp_S03_AXI_arready_converter;
  delete mp_S03_AXI_rlast_converter;
  delete mp_S03_AXI_rvalid_converter;
  delete mp_S03_AXI_rready_converter;

  delete mp_S04_AXI_transactor;
  delete mp_S04_AXI_awvalid_converter;
  delete mp_S04_AXI_awready_converter;
  delete mp_S04_AXI_wlast_converter;
  delete mp_S04_AXI_wvalid_converter;
  delete mp_S04_AXI_wready_converter;
  delete mp_S04_AXI_bvalid_converter;
  delete mp_S04_AXI_bready_converter;
  delete mp_S04_AXI_arvalid_converter;
  delete mp_S04_AXI_arready_converter;
  delete mp_S04_AXI_rlast_converter;
  delete mp_S04_AXI_rvalid_converter;
  delete mp_S04_AXI_rready_converter;

  delete mp_M00_AXI_transactor;
  delete mp_M00_AXI_awaddr_converter;
  delete mp_M00_AXI_awvalid_converter;
  delete mp_M00_AXI_awready_converter;
  delete mp_M00_AXI_wlast_converter;
  delete mp_M00_AXI_wvalid_converter;
  delete mp_M00_AXI_wready_converter;
  delete mp_M00_AXI_bvalid_converter;
  delete mp_M00_AXI_bready_converter;
  delete mp_M00_AXI_araddr_converter;
  delete mp_M00_AXI_arvalid_converter;
  delete mp_M00_AXI_arready_converter;
  delete mp_M00_AXI_rlast_converter;
  delete mp_M00_AXI_rvalid_converter;
  delete mp_M00_AXI_rready_converter;

  delete mp_M01_AXI_transactor;
  delete mp_M01_AXI_awvalid_converter;
  delete mp_M01_AXI_awready_converter;
  delete mp_M01_AXI_wlast_converter;
  delete mp_M01_AXI_wvalid_converter;
  delete mp_M01_AXI_wready_converter;
  delete mp_M01_AXI_bvalid_converter;
  delete mp_M01_AXI_bready_converter;
  delete mp_M01_AXI_arvalid_converter;
  delete mp_M01_AXI_arready_converter;
  delete mp_M01_AXI_rlast_converter;
  delete mp_M01_AXI_rvalid_converter;
  delete mp_M01_AXI_rready_converter;

  delete mp_M02_AXI_transactor;
  delete mp_M02_AXI_awaddr_converter;
  delete mp_M02_AXI_awvalid_converter;
  delete mp_M02_AXI_awready_converter;
  delete mp_M02_AXI_wlast_converter;
  delete mp_M02_AXI_wvalid_converter;
  delete mp_M02_AXI_wready_converter;
  delete mp_M02_AXI_bvalid_converter;
  delete mp_M02_AXI_bready_converter;
  delete mp_M02_AXI_araddr_converter;
  delete mp_M02_AXI_arvalid_converter;
  delete mp_M02_AXI_arready_converter;
  delete mp_M02_AXI_rlast_converter;
  delete mp_M02_AXI_rvalid_converter;
  delete mp_M02_AXI_rready_converter;

  delete mp_M03_AXI_transactor;
  delete mp_M03_AXI_awaddr_converter;
  delete mp_M03_AXI_awvalid_converter;
  delete mp_M03_AXI_awready_converter;
  delete mp_M03_AXI_wlast_converter;
  delete mp_M03_AXI_wvalid_converter;
  delete mp_M03_AXI_wready_converter;
  delete mp_M03_AXI_bvalid_converter;
  delete mp_M03_AXI_bready_converter;
  delete mp_M03_AXI_araddr_converter;
  delete mp_M03_AXI_arvalid_converter;
  delete mp_M03_AXI_arready_converter;
  delete mp_M03_AXI_rlast_converter;
  delete mp_M03_AXI_rvalid_converter;
  delete mp_M03_AXI_rready_converter;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(pfm_dynamic_memory_subsystem_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(pfm_dynamic_memory_subsystem_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(pfm_dynamic_memory_subsystem_0);
SC_REGISTER_BV(512);
#endif

