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


#include "bd_d216_xtlm_simple_intercon_0_0_sc.h"

#include "bd_d216_xtlm_simple_intercon_0_0.h"

#include "xtlm_simple_interconnect.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
bd_d216_xtlm_simple_intercon_0_0::bd_d216_xtlm_simple_intercon_0_0(const sc_core::sc_module_name& nm) : bd_d216_xtlm_simple_intercon_0_0_sc(nm), s00_axi_awid("s00_axi_awid"), s00_axi_awaddr("s00_axi_awaddr"), s00_axi_awlen("s00_axi_awlen"), s00_axi_awsize("s00_axi_awsize"), s00_axi_awburst("s00_axi_awburst"), s00_axi_awlock("s00_axi_awlock"), s00_axi_awcache("s00_axi_awcache"), s00_axi_awprot("s00_axi_awprot"), s00_axi_awqos("s00_axi_awqos"), s00_axi_awuser("s00_axi_awuser"), s00_axi_awvalid("s00_axi_awvalid"), s00_axi_awready("s00_axi_awready"), s00_axi_wdata("s00_axi_wdata"), s00_axi_wstrb("s00_axi_wstrb"), s00_axi_wlast("s00_axi_wlast"), s00_axi_wuser("s00_axi_wuser"), s00_axi_wvalid("s00_axi_wvalid"), s00_axi_wready("s00_axi_wready"), s00_axi_bid("s00_axi_bid"), s00_axi_bresp("s00_axi_bresp"), s00_axi_buser("s00_axi_buser"), s00_axi_bvalid("s00_axi_bvalid"), s00_axi_bready("s00_axi_bready"), s00_axi_arid("s00_axi_arid"), s00_axi_araddr("s00_axi_araddr"), s00_axi_arlen("s00_axi_arlen"), s00_axi_arsize("s00_axi_arsize"), s00_axi_arburst("s00_axi_arburst"), s00_axi_arlock("s00_axi_arlock"), s00_axi_arcache("s00_axi_arcache"), s00_axi_arprot("s00_axi_arprot"), s00_axi_arqos("s00_axi_arqos"), s00_axi_aruser("s00_axi_aruser"), s00_axi_arvalid("s00_axi_arvalid"), s00_axi_arready("s00_axi_arready"), s00_axi_rid("s00_axi_rid"), s00_axi_rdata("s00_axi_rdata"), s00_axi_rresp("s00_axi_rresp"), s00_axi_rlast("s00_axi_rlast"), s00_axi_ruser("s00_axi_ruser"), s00_axi_rvalid("s00_axi_rvalid"), s00_axi_rready("s00_axi_rready"), s00_axi_aclk("s00_axi_aclk"), s00_axi_aresetn("s00_axi_aresetn"), m00_axi_awid("m00_axi_awid"), m00_axi_awaddr("m00_axi_awaddr"), m00_axi_awlen("m00_axi_awlen"), m00_axi_awsize("m00_axi_awsize"), m00_axi_awburst("m00_axi_awburst"), m00_axi_awlock("m00_axi_awlock"), m00_axi_awcache("m00_axi_awcache"), m00_axi_awprot("m00_axi_awprot"), m00_axi_awqos("m00_axi_awqos"), m00_axi_awuser("m00_axi_awuser"), m00_axi_awvalid("m00_axi_awvalid"), m00_axi_awready("m00_axi_awready"), m00_axi_wdata("m00_axi_wdata"), m00_axi_wstrb("m00_axi_wstrb"), m00_axi_wlast("m00_axi_wlast"), m00_axi_wuser("m00_axi_wuser"), m00_axi_wvalid("m00_axi_wvalid"), m00_axi_wready("m00_axi_wready"), m00_axi_bid("m00_axi_bid"), m00_axi_bresp("m00_axi_bresp"), m00_axi_buser("m00_axi_buser"), m00_axi_bvalid("m00_axi_bvalid"), m00_axi_bready("m00_axi_bready"), m00_axi_arid("m00_axi_arid"), m00_axi_araddr("m00_axi_araddr"), m00_axi_arlen("m00_axi_arlen"), m00_axi_arsize("m00_axi_arsize"), m00_axi_arburst("m00_axi_arburst"), m00_axi_arlock("m00_axi_arlock"), m00_axi_arcache("m00_axi_arcache"), m00_axi_arprot("m00_axi_arprot"), m00_axi_arqos("m00_axi_arqos"), m00_axi_aruser("m00_axi_aruser"), m00_axi_arvalid("m00_axi_arvalid"), m00_axi_arready("m00_axi_arready"), m00_axi_rid("m00_axi_rid"), m00_axi_rdata("m00_axi_rdata"), m00_axi_rresp("m00_axi_rresp"), m00_axi_rlast("m00_axi_rlast"), m00_axi_ruser("m00_axi_ruser"), m00_axi_rvalid("m00_axi_rvalid"), m00_axi_rready("m00_axi_rready"), m00_axi_aclk("m00_axi_aclk"), m00_axi_aresetn("m00_axi_aresetn"), m02_axi_awid("m02_axi_awid"), m02_axi_awaddr("m02_axi_awaddr"), m02_axi_awlen("m02_axi_awlen"), m02_axi_awsize("m02_axi_awsize"), m02_axi_awburst("m02_axi_awburst"), m02_axi_awlock("m02_axi_awlock"), m02_axi_awcache("m02_axi_awcache"), m02_axi_awprot("m02_axi_awprot"), m02_axi_awqos("m02_axi_awqos"), m02_axi_awuser("m02_axi_awuser"), m02_axi_awvalid("m02_axi_awvalid"), m02_axi_awready("m02_axi_awready"), m02_axi_wdata("m02_axi_wdata"), m02_axi_wstrb("m02_axi_wstrb"), m02_axi_wlast("m02_axi_wlast"), m02_axi_wuser("m02_axi_wuser"), m02_axi_wvalid("m02_axi_wvalid"), m02_axi_wready("m02_axi_wready"), m02_axi_bid("m02_axi_bid"), m02_axi_bresp("m02_axi_bresp"), m02_axi_buser("m02_axi_buser"), m02_axi_bvalid("m02_axi_bvalid"), m02_axi_bready("m02_axi_bready"), m02_axi_arid("m02_axi_arid"), m02_axi_araddr("m02_axi_araddr"), m02_axi_arlen("m02_axi_arlen"), m02_axi_arsize("m02_axi_arsize"), m02_axi_arburst("m02_axi_arburst"), m02_axi_arlock("m02_axi_arlock"), m02_axi_arcache("m02_axi_arcache"), m02_axi_arprot("m02_axi_arprot"), m02_axi_arqos("m02_axi_arqos"), m02_axi_aruser("m02_axi_aruser"), m02_axi_arvalid("m02_axi_arvalid"), m02_axi_arready("m02_axi_arready"), m02_axi_rid("m02_axi_rid"), m02_axi_rdata("m02_axi_rdata"), m02_axi_rresp("m02_axi_rresp"), m02_axi_rlast("m02_axi_rlast"), m02_axi_ruser("m02_axi_ruser"), m02_axi_rvalid("m02_axi_rvalid"), m02_axi_rready("m02_axi_rready"), m02_axi_aclk("m02_axi_aclk"), m02_axi_aresetn("m02_axi_aresetn"), m05_axi_awid("m05_axi_awid"), m05_axi_awaddr("m05_axi_awaddr"), m05_axi_awlen("m05_axi_awlen"), m05_axi_awsize("m05_axi_awsize"), m05_axi_awburst("m05_axi_awburst"), m05_axi_awlock("m05_axi_awlock"), m05_axi_awcache("m05_axi_awcache"), m05_axi_awprot("m05_axi_awprot"), m05_axi_awqos("m05_axi_awqos"), m05_axi_awuser("m05_axi_awuser"), m05_axi_awvalid("m05_axi_awvalid"), m05_axi_awready("m05_axi_awready"), m05_axi_wdata("m05_axi_wdata"), m05_axi_wstrb("m05_axi_wstrb"), m05_axi_wlast("m05_axi_wlast"), m05_axi_wuser("m05_axi_wuser"), m05_axi_wvalid("m05_axi_wvalid"), m05_axi_wready("m05_axi_wready"), m05_axi_bid("m05_axi_bid"), m05_axi_bresp("m05_axi_bresp"), m05_axi_buser("m05_axi_buser"), m05_axi_bvalid("m05_axi_bvalid"), m05_axi_bready("m05_axi_bready"), m05_axi_arid("m05_axi_arid"), m05_axi_araddr("m05_axi_araddr"), m05_axi_arlen("m05_axi_arlen"), m05_axi_arsize("m05_axi_arsize"), m05_axi_arburst("m05_axi_arburst"), m05_axi_arlock("m05_axi_arlock"), m05_axi_arcache("m05_axi_arcache"), m05_axi_arprot("m05_axi_arprot"), m05_axi_arqos("m05_axi_arqos"), m05_axi_aruser("m05_axi_aruser"), m05_axi_arvalid("m05_axi_arvalid"), m05_axi_arready("m05_axi_arready"), m05_axi_rid("m05_axi_rid"), m05_axi_rdata("m05_axi_rdata"), m05_axi_rresp("m05_axi_rresp"), m05_axi_rlast("m05_axi_rlast"), m05_axi_ruser("m05_axi_ruser"), m05_axi_rvalid("m05_axi_rvalid"), m05_axi_rready("m05_axi_rready"), m05_axi_aclk("m05_axi_aclk"), m05_axi_aresetn("m05_axi_aresetn"), m03_axi_awid("m03_axi_awid"), m03_axi_awaddr("m03_axi_awaddr"), m03_axi_awlen("m03_axi_awlen"), m03_axi_awsize("m03_axi_awsize"), m03_axi_awburst("m03_axi_awburst"), m03_axi_awlock("m03_axi_awlock"), m03_axi_awcache("m03_axi_awcache"), m03_axi_awprot("m03_axi_awprot"), m03_axi_awqos("m03_axi_awqos"), m03_axi_awuser("m03_axi_awuser"), m03_axi_awvalid("m03_axi_awvalid"), m03_axi_awready("m03_axi_awready"), m03_axi_wdata("m03_axi_wdata"), m03_axi_wstrb("m03_axi_wstrb"), m03_axi_wlast("m03_axi_wlast"), m03_axi_wuser("m03_axi_wuser"), m03_axi_wvalid("m03_axi_wvalid"), m03_axi_wready("m03_axi_wready"), m03_axi_bid("m03_axi_bid"), m03_axi_bresp("m03_axi_bresp"), m03_axi_buser("m03_axi_buser"), m03_axi_bvalid("m03_axi_bvalid"), m03_axi_bready("m03_axi_bready"), m03_axi_arid("m03_axi_arid"), m03_axi_araddr("m03_axi_araddr"), m03_axi_arlen("m03_axi_arlen"), m03_axi_arsize("m03_axi_arsize"), m03_axi_arburst("m03_axi_arburst"), m03_axi_arlock("m03_axi_arlock"), m03_axi_arcache("m03_axi_arcache"), m03_axi_arprot("m03_axi_arprot"), m03_axi_arqos("m03_axi_arqos"), m03_axi_aruser("m03_axi_aruser"), m03_axi_arvalid("m03_axi_arvalid"), m03_axi_arready("m03_axi_arready"), m03_axi_rid("m03_axi_rid"), m03_axi_rdata("m03_axi_rdata"), m03_axi_rresp("m03_axi_rresp"), m03_axi_rlast("m03_axi_rlast"), m03_axi_ruser("m03_axi_ruser"), m03_axi_rvalid("m03_axi_rvalid"), m03_axi_rready("m03_axi_rready"), m03_axi_aclk("m03_axi_aclk"), m03_axi_aresetn("m03_axi_aresetn"), m04_axi_awid("m04_axi_awid"), m04_axi_awaddr("m04_axi_awaddr"), m04_axi_awlen("m04_axi_awlen"), m04_axi_awsize("m04_axi_awsize"), m04_axi_awburst("m04_axi_awburst"), m04_axi_awlock("m04_axi_awlock"), m04_axi_awcache("m04_axi_awcache"), m04_axi_awprot("m04_axi_awprot"), m04_axi_awqos("m04_axi_awqos"), m04_axi_awuser("m04_axi_awuser"), m04_axi_awvalid("m04_axi_awvalid"), m04_axi_awready("m04_axi_awready"), m04_axi_wdata("m04_axi_wdata"), m04_axi_wstrb("m04_axi_wstrb"), m04_axi_wlast("m04_axi_wlast"), m04_axi_wuser("m04_axi_wuser"), m04_axi_wvalid("m04_axi_wvalid"), m04_axi_wready("m04_axi_wready"), m04_axi_bid("m04_axi_bid"), m04_axi_bresp("m04_axi_bresp"), m04_axi_buser("m04_axi_buser"), m04_axi_bvalid("m04_axi_bvalid"), m04_axi_bready("m04_axi_bready"), m04_axi_arid("m04_axi_arid"), m04_axi_araddr("m04_axi_araddr"), m04_axi_arlen("m04_axi_arlen"), m04_axi_arsize("m04_axi_arsize"), m04_axi_arburst("m04_axi_arburst"), m04_axi_arlock("m04_axi_arlock"), m04_axi_arcache("m04_axi_arcache"), m04_axi_arprot("m04_axi_arprot"), m04_axi_arqos("m04_axi_arqos"), m04_axi_aruser("m04_axi_aruser"), m04_axi_arvalid("m04_axi_arvalid"), m04_axi_arready("m04_axi_arready"), m04_axi_rid("m04_axi_rid"), m04_axi_rdata("m04_axi_rdata"), m04_axi_rresp("m04_axi_rresp"), m04_axi_rlast("m04_axi_rlast"), m04_axi_ruser("m04_axi_ruser"), m04_axi_rvalid("m04_axi_rvalid"), m04_axi_rready("m04_axi_rready"), m04_axi_aclk("m04_axi_aclk"), m04_axi_aresetn("m04_axi_aresetn"), m06_axi_awid("m06_axi_awid"), m06_axi_awaddr("m06_axi_awaddr"), m06_axi_awlen("m06_axi_awlen"), m06_axi_awsize("m06_axi_awsize"), m06_axi_awburst("m06_axi_awburst"), m06_axi_awlock("m06_axi_awlock"), m06_axi_awcache("m06_axi_awcache"), m06_axi_awprot("m06_axi_awprot"), m06_axi_awqos("m06_axi_awqos"), m06_axi_awuser("m06_axi_awuser"), m06_axi_awvalid("m06_axi_awvalid"), m06_axi_awready("m06_axi_awready"), m06_axi_wdata("m06_axi_wdata"), m06_axi_wstrb("m06_axi_wstrb"), m06_axi_wlast("m06_axi_wlast"), m06_axi_wuser("m06_axi_wuser"), m06_axi_wvalid("m06_axi_wvalid"), m06_axi_wready("m06_axi_wready"), m06_axi_bid("m06_axi_bid"), m06_axi_bresp("m06_axi_bresp"), m06_axi_buser("m06_axi_buser"), m06_axi_bvalid("m06_axi_bvalid"), m06_axi_bready("m06_axi_bready"), m06_axi_arid("m06_axi_arid"), m06_axi_araddr("m06_axi_araddr"), m06_axi_arlen("m06_axi_arlen"), m06_axi_arsize("m06_axi_arsize"), m06_axi_arburst("m06_axi_arburst"), m06_axi_arlock("m06_axi_arlock"), m06_axi_arcache("m06_axi_arcache"), m06_axi_arprot("m06_axi_arprot"), m06_axi_arqos("m06_axi_arqos"), m06_axi_aruser("m06_axi_aruser"), m06_axi_arvalid("m06_axi_arvalid"), m06_axi_arready("m06_axi_arready"), m06_axi_rid("m06_axi_rid"), m06_axi_rdata("m06_axi_rdata"), m06_axi_rresp("m06_axi_rresp"), m06_axi_rlast("m06_axi_rlast"), m06_axi_ruser("m06_axi_ruser"), m06_axi_rvalid("m06_axi_rvalid"), m06_axi_rready("m06_axi_rready"), m06_axi_aclk("m06_axi_aclk"), m06_axi_aresetn("m06_axi_aresetn"), m01_axi_awaddr("m01_axi_awaddr"), m01_axi_awlen("m01_axi_awlen"), m01_axi_awsize("m01_axi_awsize"), m01_axi_awburst("m01_axi_awburst"), m01_axi_awprot("m01_axi_awprot"), m01_axi_awvalid("m01_axi_awvalid"), m01_axi_awready("m01_axi_awready"), m01_axi_wdata("m01_axi_wdata"), m01_axi_wstrb("m01_axi_wstrb"), m01_axi_wlast("m01_axi_wlast"), m01_axi_wvalid("m01_axi_wvalid"), m01_axi_wready("m01_axi_wready"), m01_axi_bresp("m01_axi_bresp"), m01_axi_bvalid("m01_axi_bvalid"), m01_axi_bready("m01_axi_bready"), m01_axi_araddr("m01_axi_araddr"), m01_axi_arlen("m01_axi_arlen"), m01_axi_arsize("m01_axi_arsize"), m01_axi_arburst("m01_axi_arburst"), m01_axi_arprot("m01_axi_arprot"), m01_axi_arvalid("m01_axi_arvalid"), m01_axi_arready("m01_axi_arready"), m01_axi_rdata("m01_axi_rdata"), m01_axi_rresp("m01_axi_rresp"), m01_axi_rlast("m01_axi_rlast"), m01_axi_rvalid("m01_axi_rvalid"), m01_axi_rready("m01_axi_rready"), m01_axi_aclk("m01_axi_aclk"), m01_axi_aresetn("m01_axi_aresetn"), s03_axi_awid("s03_axi_awid"), s03_axi_awaddr("s03_axi_awaddr"), s03_axi_awlen("s03_axi_awlen"), s03_axi_awsize("s03_axi_awsize"), s03_axi_awburst("s03_axi_awburst"), s03_axi_awlock("s03_axi_awlock"), s03_axi_awcache("s03_axi_awcache"), s03_axi_awprot("s03_axi_awprot"), s03_axi_awqos("s03_axi_awqos"), s03_axi_awuser("s03_axi_awuser"), s03_axi_awvalid("s03_axi_awvalid"), s03_axi_awready("s03_axi_awready"), s03_axi_wdata("s03_axi_wdata"), s03_axi_wstrb("s03_axi_wstrb"), s03_axi_wlast("s03_axi_wlast"), s03_axi_wuser("s03_axi_wuser"), s03_axi_wvalid("s03_axi_wvalid"), s03_axi_wready("s03_axi_wready"), s03_axi_bid("s03_axi_bid"), s03_axi_bresp("s03_axi_bresp"), s03_axi_buser("s03_axi_buser"), s03_axi_bvalid("s03_axi_bvalid"), s03_axi_bready("s03_axi_bready"), s03_axi_arid("s03_axi_arid"), s03_axi_araddr("s03_axi_araddr"), s03_axi_arlen("s03_axi_arlen"), s03_axi_arsize("s03_axi_arsize"), s03_axi_arburst("s03_axi_arburst"), s03_axi_arlock("s03_axi_arlock"), s03_axi_arcache("s03_axi_arcache"), s03_axi_arprot("s03_axi_arprot"), s03_axi_arqos("s03_axi_arqos"), s03_axi_aruser("s03_axi_aruser"), s03_axi_arvalid("s03_axi_arvalid"), s03_axi_arready("s03_axi_arready"), s03_axi_rid("s03_axi_rid"), s03_axi_rdata("s03_axi_rdata"), s03_axi_rresp("s03_axi_rresp"), s03_axi_rlast("s03_axi_rlast"), s03_axi_ruser("s03_axi_ruser"), s03_axi_rvalid("s03_axi_rvalid"), s03_axi_rready("s03_axi_rready"), s03_axi_aclk("s03_axi_aclk"), s03_axi_aresetn("s03_axi_aresetn"), s01_axi_awid("s01_axi_awid"), s01_axi_awaddr("s01_axi_awaddr"), s01_axi_awlen("s01_axi_awlen"), s01_axi_awsize("s01_axi_awsize"), s01_axi_awburst("s01_axi_awburst"), s01_axi_awlock("s01_axi_awlock"), s01_axi_awcache("s01_axi_awcache"), s01_axi_awprot("s01_axi_awprot"), s01_axi_awqos("s01_axi_awqos"), s01_axi_awuser("s01_axi_awuser"), s01_axi_awvalid("s01_axi_awvalid"), s01_axi_awready("s01_axi_awready"), s01_axi_wdata("s01_axi_wdata"), s01_axi_wstrb("s01_axi_wstrb"), s01_axi_wlast("s01_axi_wlast"), s01_axi_wuser("s01_axi_wuser"), s01_axi_wvalid("s01_axi_wvalid"), s01_axi_wready("s01_axi_wready"), s01_axi_bid("s01_axi_bid"), s01_axi_bresp("s01_axi_bresp"), s01_axi_buser("s01_axi_buser"), s01_axi_bvalid("s01_axi_bvalid"), s01_axi_bready("s01_axi_bready"), s01_axi_arid("s01_axi_arid"), s01_axi_araddr("s01_axi_araddr"), s01_axi_arlen("s01_axi_arlen"), s01_axi_arsize("s01_axi_arsize"), s01_axi_arburst("s01_axi_arburst"), s01_axi_arlock("s01_axi_arlock"), s01_axi_arcache("s01_axi_arcache"), s01_axi_arprot("s01_axi_arprot"), s01_axi_arqos("s01_axi_arqos"), s01_axi_aruser("s01_axi_aruser"), s01_axi_arvalid("s01_axi_arvalid"), s01_axi_arready("s01_axi_arready"), s01_axi_rid("s01_axi_rid"), s01_axi_rdata("s01_axi_rdata"), s01_axi_rresp("s01_axi_rresp"), s01_axi_rlast("s01_axi_rlast"), s01_axi_ruser("s01_axi_ruser"), s01_axi_rvalid("s01_axi_rvalid"), s01_axi_rready("s01_axi_rready"), s01_axi_aclk("s01_axi_aclk"), s01_axi_aresetn("s01_axi_aresetn"), s02_axi_awid("s02_axi_awid"), s02_axi_awaddr("s02_axi_awaddr"), s02_axi_awlen("s02_axi_awlen"), s02_axi_awsize("s02_axi_awsize"), s02_axi_awburst("s02_axi_awburst"), s02_axi_awlock("s02_axi_awlock"), s02_axi_awcache("s02_axi_awcache"), s02_axi_awprot("s02_axi_awprot"), s02_axi_awqos("s02_axi_awqos"), s02_axi_awuser("s02_axi_awuser"), s02_axi_awvalid("s02_axi_awvalid"), s02_axi_awready("s02_axi_awready"), s02_axi_wdata("s02_axi_wdata"), s02_axi_wstrb("s02_axi_wstrb"), s02_axi_wlast("s02_axi_wlast"), s02_axi_wuser("s02_axi_wuser"), s02_axi_wvalid("s02_axi_wvalid"), s02_axi_wready("s02_axi_wready"), s02_axi_bid("s02_axi_bid"), s02_axi_bresp("s02_axi_bresp"), s02_axi_buser("s02_axi_buser"), s02_axi_bvalid("s02_axi_bvalid"), s02_axi_bready("s02_axi_bready"), s02_axi_arid("s02_axi_arid"), s02_axi_araddr("s02_axi_araddr"), s02_axi_arlen("s02_axi_arlen"), s02_axi_arsize("s02_axi_arsize"), s02_axi_arburst("s02_axi_arburst"), s02_axi_arlock("s02_axi_arlock"), s02_axi_arcache("s02_axi_arcache"), s02_axi_arprot("s02_axi_arprot"), s02_axi_arqos("s02_axi_arqos"), s02_axi_aruser("s02_axi_aruser"), s02_axi_arvalid("s02_axi_arvalid"), s02_axi_arready("s02_axi_arready"), s02_axi_rid("s02_axi_rid"), s02_axi_rdata("s02_axi_rdata"), s02_axi_rresp("s02_axi_rresp"), s02_axi_rlast("s02_axi_rlast"), s02_axi_ruser("s02_axi_ruser"), s02_axi_rvalid("s02_axi_rvalid"), s02_axi_rready("s02_axi_rready"), s02_axi_aclk("s02_axi_aclk"), s02_axi_aresetn("s02_axi_aresetn"), s04_axi_awaddr("s04_axi_awaddr"), s04_axi_awlen("s04_axi_awlen"), s04_axi_awsize("s04_axi_awsize"), s04_axi_awlock("s04_axi_awlock"), s04_axi_awcache("s04_axi_awcache"), s04_axi_awprot("s04_axi_awprot"), s04_axi_awregion("s04_axi_awregion"), s04_axi_awqos("s04_axi_awqos"), s04_axi_awvalid("s04_axi_awvalid"), s04_axi_awready("s04_axi_awready"), s04_axi_wdata("s04_axi_wdata"), s04_axi_wstrb("s04_axi_wstrb"), s04_axi_wlast("s04_axi_wlast"), s04_axi_wvalid("s04_axi_wvalid"), s04_axi_wready("s04_axi_wready"), s04_axi_bresp("s04_axi_bresp"), s04_axi_bvalid("s04_axi_bvalid"), s04_axi_bready("s04_axi_bready"), s04_axi_araddr("s04_axi_araddr"), s04_axi_arlen("s04_axi_arlen"), s04_axi_arsize("s04_axi_arsize"), s04_axi_arlock("s04_axi_arlock"), s04_axi_arcache("s04_axi_arcache"), s04_axi_arprot("s04_axi_arprot"), s04_axi_arregion("s04_axi_arregion"), s04_axi_arqos("s04_axi_arqos"), s04_axi_arvalid("s04_axi_arvalid"), s04_axi_arready("s04_axi_arready"), s04_axi_rdata("s04_axi_rdata"), s04_axi_rresp("s04_axi_rresp"), s04_axi_rlast("s04_axi_rlast"), s04_axi_rvalid("s04_axi_rvalid"), s04_axi_rready("s04_axi_rready"), s04_axi_aclk("s04_axi_aclk"), s04_axi_aresetn("s04_axi_aresetn")
{

  // initialize pins
  mp_impl->s00_axi_aclk(s00_axi_aclk);
  mp_impl->s00_axi_aresetn(s00_axi_aresetn);
  mp_impl->m00_axi_aclk(m00_axi_aclk);
  mp_impl->m00_axi_aresetn(m00_axi_aresetn);
  mp_impl->m02_axi_aclk(m02_axi_aclk);
  mp_impl->m02_axi_aresetn(m02_axi_aresetn);
  mp_impl->m05_axi_aclk(m05_axi_aclk);
  mp_impl->m05_axi_aresetn(m05_axi_aresetn);
  mp_impl->m03_axi_aclk(m03_axi_aclk);
  mp_impl->m03_axi_aresetn(m03_axi_aresetn);
  mp_impl->m04_axi_aclk(m04_axi_aclk);
  mp_impl->m04_axi_aresetn(m04_axi_aresetn);
  mp_impl->m06_axi_aclk(m06_axi_aclk);
  mp_impl->m06_axi_aresetn(m06_axi_aresetn);
  mp_impl->m01_axi_aclk(m01_axi_aclk);
  mp_impl->m01_axi_aresetn(m01_axi_aresetn);
  mp_impl->s03_axi_aclk(s03_axi_aclk);
  mp_impl->s03_axi_aresetn(s03_axi_aresetn);
  mp_impl->s01_axi_aclk(s01_axi_aclk);
  mp_impl->s01_axi_aresetn(s01_axi_aresetn);
  mp_impl->s02_axi_aclk(s02_axi_aclk);
  mp_impl->s02_axi_aresetn(s02_axi_aresetn);
  mp_impl->s04_axi_aclk(s04_axi_aclk);
  mp_impl->s04_axi_aresetn(s04_axi_aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_M02_AXI_transactor = NULL;
  mp_M03_AXI_transactor = NULL;
  mp_M04_AXI_transactor = NULL;
  mp_M05_AXI_transactor = NULL;
  mp_M06_AXI_transactor = NULL;

  // initialize socket stubs

}

void bd_d216_xtlm_simple_intercon_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S00_AXI_transactor->AWID(s00_axi_awid);
    mp_S00_AXI_transactor->AWADDR(s00_axi_awaddr);
    mp_S00_AXI_transactor->AWLEN(s00_axi_awlen);
    mp_S00_AXI_transactor->AWSIZE(s00_axi_awsize);
    mp_S00_AXI_transactor->AWBURST(s00_axi_awburst);
    mp_S00_AXI_transactor->AWLOCK(s00_axi_awlock);
    mp_S00_AXI_transactor->AWCACHE(s00_axi_awcache);
    mp_S00_AXI_transactor->AWPROT(s00_axi_awprot);
    mp_S00_AXI_transactor->AWQOS(s00_axi_awqos);
    mp_S00_AXI_transactor->AWUSER(s00_axi_awuser);
    mp_S00_AXI_transactor->AWVALID(s00_axi_awvalid);
    mp_S00_AXI_transactor->AWREADY(s00_axi_awready);
    mp_S00_AXI_transactor->WDATA(s00_axi_wdata);
    mp_S00_AXI_transactor->WSTRB(s00_axi_wstrb);
    mp_S00_AXI_transactor->WLAST(s00_axi_wlast);
    mp_S00_AXI_transactor->WUSER(s00_axi_wuser);
    mp_S00_AXI_transactor->WVALID(s00_axi_wvalid);
    mp_S00_AXI_transactor->WREADY(s00_axi_wready);
    mp_S00_AXI_transactor->BID(s00_axi_bid);
    mp_S00_AXI_transactor->BRESP(s00_axi_bresp);
    mp_S00_AXI_transactor->BUSER(s00_axi_buser);
    mp_S00_AXI_transactor->BVALID(s00_axi_bvalid);
    mp_S00_AXI_transactor->BREADY(s00_axi_bready);
    mp_S00_AXI_transactor->ARID(s00_axi_arid);
    mp_S00_AXI_transactor->ARADDR(s00_axi_araddr);
    mp_S00_AXI_transactor->ARLEN(s00_axi_arlen);
    mp_S00_AXI_transactor->ARSIZE(s00_axi_arsize);
    mp_S00_AXI_transactor->ARBURST(s00_axi_arburst);
    mp_S00_AXI_transactor->ARLOCK(s00_axi_arlock);
    mp_S00_AXI_transactor->ARCACHE(s00_axi_arcache);
    mp_S00_AXI_transactor->ARPROT(s00_axi_arprot);
    mp_S00_AXI_transactor->ARQOS(s00_axi_arqos);
    mp_S00_AXI_transactor->ARUSER(s00_axi_aruser);
    mp_S00_AXI_transactor->ARVALID(s00_axi_arvalid);
    mp_S00_AXI_transactor->ARREADY(s00_axi_arready);
    mp_S00_AXI_transactor->RID(s00_axi_rid);
    mp_S00_AXI_transactor->RDATA(s00_axi_rdata);
    mp_S00_AXI_transactor->RRESP(s00_axi_rresp);
    mp_S00_AXI_transactor->RLAST(s00_axi_rlast);
    mp_S00_AXI_transactor->RUSER(s00_axi_ruser);
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

  // configure 'S01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S01_AXI' transactor parameters
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S01_AXI_transactor->AWID(s01_axi_awid);
    mp_S01_AXI_transactor->AWADDR(s01_axi_awaddr);
    mp_S01_AXI_transactor->AWLEN(s01_axi_awlen);
    mp_S01_AXI_transactor->AWSIZE(s01_axi_awsize);
    mp_S01_AXI_transactor->AWBURST(s01_axi_awburst);
    mp_S01_AXI_transactor->AWLOCK(s01_axi_awlock);
    mp_S01_AXI_transactor->AWCACHE(s01_axi_awcache);
    mp_S01_AXI_transactor->AWPROT(s01_axi_awprot);
    mp_S01_AXI_transactor->AWQOS(s01_axi_awqos);
    mp_S01_AXI_transactor->AWUSER(s01_axi_awuser);
    mp_S01_AXI_transactor->AWVALID(s01_axi_awvalid);
    mp_S01_AXI_transactor->AWREADY(s01_axi_awready);
    mp_S01_AXI_transactor->WDATA(s01_axi_wdata);
    mp_S01_AXI_transactor->WSTRB(s01_axi_wstrb);
    mp_S01_AXI_transactor->WLAST(s01_axi_wlast);
    mp_S01_AXI_transactor->WUSER(s01_axi_wuser);
    mp_S01_AXI_transactor->WVALID(s01_axi_wvalid);
    mp_S01_AXI_transactor->WREADY(s01_axi_wready);
    mp_S01_AXI_transactor->BID(s01_axi_bid);
    mp_S01_AXI_transactor->BRESP(s01_axi_bresp);
    mp_S01_AXI_transactor->BUSER(s01_axi_buser);
    mp_S01_AXI_transactor->BVALID(s01_axi_bvalid);
    mp_S01_AXI_transactor->BREADY(s01_axi_bready);
    mp_S01_AXI_transactor->ARID(s01_axi_arid);
    mp_S01_AXI_transactor->ARADDR(s01_axi_araddr);
    mp_S01_AXI_transactor->ARLEN(s01_axi_arlen);
    mp_S01_AXI_transactor->ARSIZE(s01_axi_arsize);
    mp_S01_AXI_transactor->ARBURST(s01_axi_arburst);
    mp_S01_AXI_transactor->ARLOCK(s01_axi_arlock);
    mp_S01_AXI_transactor->ARCACHE(s01_axi_arcache);
    mp_S01_AXI_transactor->ARPROT(s01_axi_arprot);
    mp_S01_AXI_transactor->ARQOS(s01_axi_arqos);
    mp_S01_AXI_transactor->ARUSER(s01_axi_aruser);
    mp_S01_AXI_transactor->ARVALID(s01_axi_arvalid);
    mp_S01_AXI_transactor->ARREADY(s01_axi_arready);
    mp_S01_AXI_transactor->RID(s01_axi_rid);
    mp_S01_AXI_transactor->RDATA(s01_axi_rdata);
    mp_S01_AXI_transactor->RRESP(s01_axi_rresp);
    mp_S01_AXI_transactor->RLAST(s01_axi_rlast);
    mp_S01_AXI_transactor->RUSER(s01_axi_ruser);
    mp_S01_AXI_transactor->RVALID(s01_axi_rvalid);
    mp_S01_AXI_transactor->RREADY(s01_axi_rready);
    mp_S01_AXI_transactor->CLK(s01_axi_aclk);
    mp_S01_AXI_transactor->RST(s01_axi_aresetn);

    // S01_AXI' transactor sockets

    mp_impl->target_1_rd_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->target_1_wr_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S02_AXI' transactor parameters
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S02_AXI_transactor->AWID(s02_axi_awid);
    mp_S02_AXI_transactor->AWADDR(s02_axi_awaddr);
    mp_S02_AXI_transactor->AWLEN(s02_axi_awlen);
    mp_S02_AXI_transactor->AWSIZE(s02_axi_awsize);
    mp_S02_AXI_transactor->AWBURST(s02_axi_awburst);
    mp_S02_AXI_transactor->AWLOCK(s02_axi_awlock);
    mp_S02_AXI_transactor->AWCACHE(s02_axi_awcache);
    mp_S02_AXI_transactor->AWPROT(s02_axi_awprot);
    mp_S02_AXI_transactor->AWQOS(s02_axi_awqos);
    mp_S02_AXI_transactor->AWUSER(s02_axi_awuser);
    mp_S02_AXI_transactor->AWVALID(s02_axi_awvalid);
    mp_S02_AXI_transactor->AWREADY(s02_axi_awready);
    mp_S02_AXI_transactor->WDATA(s02_axi_wdata);
    mp_S02_AXI_transactor->WSTRB(s02_axi_wstrb);
    mp_S02_AXI_transactor->WLAST(s02_axi_wlast);
    mp_S02_AXI_transactor->WUSER(s02_axi_wuser);
    mp_S02_AXI_transactor->WVALID(s02_axi_wvalid);
    mp_S02_AXI_transactor->WREADY(s02_axi_wready);
    mp_S02_AXI_transactor->BID(s02_axi_bid);
    mp_S02_AXI_transactor->BRESP(s02_axi_bresp);
    mp_S02_AXI_transactor->BUSER(s02_axi_buser);
    mp_S02_AXI_transactor->BVALID(s02_axi_bvalid);
    mp_S02_AXI_transactor->BREADY(s02_axi_bready);
    mp_S02_AXI_transactor->ARID(s02_axi_arid);
    mp_S02_AXI_transactor->ARADDR(s02_axi_araddr);
    mp_S02_AXI_transactor->ARLEN(s02_axi_arlen);
    mp_S02_AXI_transactor->ARSIZE(s02_axi_arsize);
    mp_S02_AXI_transactor->ARBURST(s02_axi_arburst);
    mp_S02_AXI_transactor->ARLOCK(s02_axi_arlock);
    mp_S02_AXI_transactor->ARCACHE(s02_axi_arcache);
    mp_S02_AXI_transactor->ARPROT(s02_axi_arprot);
    mp_S02_AXI_transactor->ARQOS(s02_axi_arqos);
    mp_S02_AXI_transactor->ARUSER(s02_axi_aruser);
    mp_S02_AXI_transactor->ARVALID(s02_axi_arvalid);
    mp_S02_AXI_transactor->ARREADY(s02_axi_arready);
    mp_S02_AXI_transactor->RID(s02_axi_rid);
    mp_S02_AXI_transactor->RDATA(s02_axi_rdata);
    mp_S02_AXI_transactor->RRESP(s02_axi_rresp);
    mp_S02_AXI_transactor->RLAST(s02_axi_rlast);
    mp_S02_AXI_transactor->RUSER(s02_axi_ruser);
    mp_S02_AXI_transactor->RVALID(s02_axi_rvalid);
    mp_S02_AXI_transactor->RREADY(s02_axi_rready);
    mp_S02_AXI_transactor->CLK(s02_axi_aclk);
    mp_S02_AXI_transactor->RST(s02_axi_aresetn);

    // S02_AXI' transactor sockets

    mp_impl->target_2_rd_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->target_2_wr_socket->bind(*(mp_S02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S03_AXI' transactor parameters
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S03_AXI_transactor->AWID(s03_axi_awid);
    mp_S03_AXI_transactor->AWADDR(s03_axi_awaddr);
    mp_S03_AXI_transactor->AWLEN(s03_axi_awlen);
    mp_S03_AXI_transactor->AWSIZE(s03_axi_awsize);
    mp_S03_AXI_transactor->AWBURST(s03_axi_awburst);
    mp_S03_AXI_transactor->AWLOCK(s03_axi_awlock);
    mp_S03_AXI_transactor->AWCACHE(s03_axi_awcache);
    mp_S03_AXI_transactor->AWPROT(s03_axi_awprot);
    mp_S03_AXI_transactor->AWQOS(s03_axi_awqos);
    mp_S03_AXI_transactor->AWUSER(s03_axi_awuser);
    mp_S03_AXI_transactor->AWVALID(s03_axi_awvalid);
    mp_S03_AXI_transactor->AWREADY(s03_axi_awready);
    mp_S03_AXI_transactor->WDATA(s03_axi_wdata);
    mp_S03_AXI_transactor->WSTRB(s03_axi_wstrb);
    mp_S03_AXI_transactor->WLAST(s03_axi_wlast);
    mp_S03_AXI_transactor->WUSER(s03_axi_wuser);
    mp_S03_AXI_transactor->WVALID(s03_axi_wvalid);
    mp_S03_AXI_transactor->WREADY(s03_axi_wready);
    mp_S03_AXI_transactor->BID(s03_axi_bid);
    mp_S03_AXI_transactor->BRESP(s03_axi_bresp);
    mp_S03_AXI_transactor->BUSER(s03_axi_buser);
    mp_S03_AXI_transactor->BVALID(s03_axi_bvalid);
    mp_S03_AXI_transactor->BREADY(s03_axi_bready);
    mp_S03_AXI_transactor->ARID(s03_axi_arid);
    mp_S03_AXI_transactor->ARADDR(s03_axi_araddr);
    mp_S03_AXI_transactor->ARLEN(s03_axi_arlen);
    mp_S03_AXI_transactor->ARSIZE(s03_axi_arsize);
    mp_S03_AXI_transactor->ARBURST(s03_axi_arburst);
    mp_S03_AXI_transactor->ARLOCK(s03_axi_arlock);
    mp_S03_AXI_transactor->ARCACHE(s03_axi_arcache);
    mp_S03_AXI_transactor->ARPROT(s03_axi_arprot);
    mp_S03_AXI_transactor->ARQOS(s03_axi_arqos);
    mp_S03_AXI_transactor->ARUSER(s03_axi_aruser);
    mp_S03_AXI_transactor->ARVALID(s03_axi_arvalid);
    mp_S03_AXI_transactor->ARREADY(s03_axi_arready);
    mp_S03_AXI_transactor->RID(s03_axi_rid);
    mp_S03_AXI_transactor->RDATA(s03_axi_rdata);
    mp_S03_AXI_transactor->RRESP(s03_axi_rresp);
    mp_S03_AXI_transactor->RLAST(s03_axi_rlast);
    mp_S03_AXI_transactor->RUSER(s03_axi_ruser);
    mp_S03_AXI_transactor->RVALID(s03_axi_rvalid);
    mp_S03_AXI_transactor->RREADY(s03_axi_rready);
    mp_S03_AXI_transactor->CLK(s03_axi_aclk);
    mp_S03_AXI_transactor->RST(s03_axi_aresetn);

    // S03_AXI' transactor sockets

    mp_impl->target_3_rd_socket->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_impl->target_3_wr_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S04_AXI' transactor parameters
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S04_AXI_transactor->AWADDR(s04_axi_awaddr);
    mp_S04_AXI_transactor->AWLEN(s04_axi_awlen);
    mp_S04_AXI_transactor->AWSIZE(s04_axi_awsize);
    mp_S04_AXI_transactor->AWLOCK(s04_axi_awlock);
    mp_S04_AXI_transactor->AWCACHE(s04_axi_awcache);
    mp_S04_AXI_transactor->AWPROT(s04_axi_awprot);
    mp_S04_AXI_transactor->AWREGION(s04_axi_awregion);
    mp_S04_AXI_transactor->AWQOS(s04_axi_awqos);
    mp_S04_AXI_transactor->AWVALID(s04_axi_awvalid);
    mp_S04_AXI_transactor->AWREADY(s04_axi_awready);
    mp_S04_AXI_transactor->WDATA(s04_axi_wdata);
    mp_S04_AXI_transactor->WSTRB(s04_axi_wstrb);
    mp_S04_AXI_transactor->WLAST(s04_axi_wlast);
    mp_S04_AXI_transactor->WVALID(s04_axi_wvalid);
    mp_S04_AXI_transactor->WREADY(s04_axi_wready);
    mp_S04_AXI_transactor->BRESP(s04_axi_bresp);
    mp_S04_AXI_transactor->BVALID(s04_axi_bvalid);
    mp_S04_AXI_transactor->BREADY(s04_axi_bready);
    mp_S04_AXI_transactor->ARADDR(s04_axi_araddr);
    mp_S04_AXI_transactor->ARLEN(s04_axi_arlen);
    mp_S04_AXI_transactor->ARSIZE(s04_axi_arsize);
    mp_S04_AXI_transactor->ARLOCK(s04_axi_arlock);
    mp_S04_AXI_transactor->ARCACHE(s04_axi_arcache);
    mp_S04_AXI_transactor->ARPROT(s04_axi_arprot);
    mp_S04_AXI_transactor->ARREGION(s04_axi_arregion);
    mp_S04_AXI_transactor->ARQOS(s04_axi_arqos);
    mp_S04_AXI_transactor->ARVALID(s04_axi_arvalid);
    mp_S04_AXI_transactor->ARREADY(s04_axi_arready);
    mp_S04_AXI_transactor->RDATA(s04_axi_rdata);
    mp_S04_AXI_transactor->RRESP(s04_axi_rresp);
    mp_S04_AXI_transactor->RLAST(s04_axi_rlast);
    mp_S04_AXI_transactor->RVALID(s04_axi_rvalid);
    mp_S04_AXI_transactor->RREADY(s04_axi_rready);
    mp_S04_AXI_transactor->CLK(s04_axi_aclk);
    mp_S04_AXI_transactor->RST(s04_axi_aresetn);

    // S04_AXI' transactor sockets

    mp_impl->target_4_rd_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->target_4_wr_socket->bind(*(mp_S04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
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

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,5,32,1,1,32,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

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

  // configure 'M01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M01_AXI_TLM_MODE") != 1)
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

    mp_M01_AXI_transactor->AWADDR(m01_axi_awaddr);
    mp_M01_AXI_transactor->AWLEN(m01_axi_awlen);
    mp_M01_AXI_transactor->AWSIZE(m01_axi_awsize);
    mp_M01_AXI_transactor->AWBURST(m01_axi_awburst);
    mp_M01_AXI_transactor->AWPROT(m01_axi_awprot);
    mp_M01_AXI_transactor->AWVALID(m01_axi_awvalid);
    mp_M01_AXI_transactor->AWREADY(m01_axi_awready);
    mp_M01_AXI_transactor->WDATA(m01_axi_wdata);
    mp_M01_AXI_transactor->WSTRB(m01_axi_wstrb);
    mp_M01_AXI_transactor->WLAST(m01_axi_wlast);
    mp_M01_AXI_transactor->WVALID(m01_axi_wvalid);
    mp_M01_AXI_transactor->WREADY(m01_axi_wready);
    mp_M01_AXI_transactor->BRESP(m01_axi_bresp);
    mp_M01_AXI_transactor->BVALID(m01_axi_bvalid);
    mp_M01_AXI_transactor->BREADY(m01_axi_bready);
    mp_M01_AXI_transactor->ARADDR(m01_axi_araddr);
    mp_M01_AXI_transactor->ARLEN(m01_axi_arlen);
    mp_M01_AXI_transactor->ARSIZE(m01_axi_arsize);
    mp_M01_AXI_transactor->ARBURST(m01_axi_arburst);
    mp_M01_AXI_transactor->ARPROT(m01_axi_arprot);
    mp_M01_AXI_transactor->ARVALID(m01_axi_arvalid);
    mp_M01_AXI_transactor->ARREADY(m01_axi_arready);
    mp_M01_AXI_transactor->RDATA(m01_axi_rdata);
    mp_M01_AXI_transactor->RRESP(m01_axi_rresp);
    mp_M01_AXI_transactor->RLAST(m01_axi_rlast);
    mp_M01_AXI_transactor->RVALID(m01_axi_rvalid);
    mp_M01_AXI_transactor->RREADY(m01_axi_rready);
    mp_M01_AXI_transactor->CLK(m01_axi_aclk);
    mp_M01_AXI_transactor->RST(m01_axi_aresetn);

    // M01_AXI' transactor sockets

    mp_impl->initiator_1_rd_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->initiator_1_wr_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M02_AXI' transactor parameters
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
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

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,5,32,1,1,32,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);

    // M02_AXI' transactor ports

    mp_M02_AXI_transactor->AWID(m02_axi_awid);
    mp_M02_AXI_transactor->AWADDR(m02_axi_awaddr);
    mp_M02_AXI_transactor->AWLEN(m02_axi_awlen);
    mp_M02_AXI_transactor->AWSIZE(m02_axi_awsize);
    mp_M02_AXI_transactor->AWBURST(m02_axi_awburst);
    mp_M02_AXI_transactor->AWLOCK(m02_axi_awlock);
    mp_M02_AXI_transactor->AWCACHE(m02_axi_awcache);
    mp_M02_AXI_transactor->AWPROT(m02_axi_awprot);
    mp_M02_AXI_transactor->AWQOS(m02_axi_awqos);
    mp_M02_AXI_transactor->AWUSER(m02_axi_awuser);
    mp_M02_AXI_transactor->AWVALID(m02_axi_awvalid);
    mp_M02_AXI_transactor->AWREADY(m02_axi_awready);
    mp_M02_AXI_transactor->WDATA(m02_axi_wdata);
    mp_M02_AXI_transactor->WSTRB(m02_axi_wstrb);
    mp_M02_AXI_transactor->WLAST(m02_axi_wlast);
    mp_M02_AXI_transactor->WUSER(m02_axi_wuser);
    mp_M02_AXI_transactor->WVALID(m02_axi_wvalid);
    mp_M02_AXI_transactor->WREADY(m02_axi_wready);
    mp_M02_AXI_transactor->BID(m02_axi_bid);
    mp_M02_AXI_transactor->BRESP(m02_axi_bresp);
    mp_M02_AXI_transactor->BUSER(m02_axi_buser);
    mp_M02_AXI_transactor->BVALID(m02_axi_bvalid);
    mp_M02_AXI_transactor->BREADY(m02_axi_bready);
    mp_M02_AXI_transactor->ARID(m02_axi_arid);
    mp_M02_AXI_transactor->ARADDR(m02_axi_araddr);
    mp_M02_AXI_transactor->ARLEN(m02_axi_arlen);
    mp_M02_AXI_transactor->ARSIZE(m02_axi_arsize);
    mp_M02_AXI_transactor->ARBURST(m02_axi_arburst);
    mp_M02_AXI_transactor->ARLOCK(m02_axi_arlock);
    mp_M02_AXI_transactor->ARCACHE(m02_axi_arcache);
    mp_M02_AXI_transactor->ARPROT(m02_axi_arprot);
    mp_M02_AXI_transactor->ARQOS(m02_axi_arqos);
    mp_M02_AXI_transactor->ARUSER(m02_axi_aruser);
    mp_M02_AXI_transactor->ARVALID(m02_axi_arvalid);
    mp_M02_AXI_transactor->ARREADY(m02_axi_arready);
    mp_M02_AXI_transactor->RID(m02_axi_rid);
    mp_M02_AXI_transactor->RDATA(m02_axi_rdata);
    mp_M02_AXI_transactor->RRESP(m02_axi_rresp);
    mp_M02_AXI_transactor->RLAST(m02_axi_rlast);
    mp_M02_AXI_transactor->RUSER(m02_axi_ruser);
    mp_M02_AXI_transactor->RVALID(m02_axi_rvalid);
    mp_M02_AXI_transactor->RREADY(m02_axi_rready);
    mp_M02_AXI_transactor->CLK(m02_axi_aclk);
    mp_M02_AXI_transactor->RST(m02_axi_aresetn);

    // M02_AXI' transactor sockets

    mp_impl->initiator_2_rd_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->initiator_2_wr_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M03_AXI' transactor parameters
    xsc::common_cpp::properties M03_AXI_transactor_param_props;
    M03_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M03_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
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

    mp_M03_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,5,32,1,1,32,1>("M03_AXI_transactor", M03_AXI_transactor_param_props);

    // M03_AXI' transactor ports

    mp_M03_AXI_transactor->AWID(m03_axi_awid);
    mp_M03_AXI_transactor->AWADDR(m03_axi_awaddr);
    mp_M03_AXI_transactor->AWLEN(m03_axi_awlen);
    mp_M03_AXI_transactor->AWSIZE(m03_axi_awsize);
    mp_M03_AXI_transactor->AWBURST(m03_axi_awburst);
    mp_M03_AXI_transactor->AWLOCK(m03_axi_awlock);
    mp_M03_AXI_transactor->AWCACHE(m03_axi_awcache);
    mp_M03_AXI_transactor->AWPROT(m03_axi_awprot);
    mp_M03_AXI_transactor->AWQOS(m03_axi_awqos);
    mp_M03_AXI_transactor->AWUSER(m03_axi_awuser);
    mp_M03_AXI_transactor->AWVALID(m03_axi_awvalid);
    mp_M03_AXI_transactor->AWREADY(m03_axi_awready);
    mp_M03_AXI_transactor->WDATA(m03_axi_wdata);
    mp_M03_AXI_transactor->WSTRB(m03_axi_wstrb);
    mp_M03_AXI_transactor->WLAST(m03_axi_wlast);
    mp_M03_AXI_transactor->WUSER(m03_axi_wuser);
    mp_M03_AXI_transactor->WVALID(m03_axi_wvalid);
    mp_M03_AXI_transactor->WREADY(m03_axi_wready);
    mp_M03_AXI_transactor->BID(m03_axi_bid);
    mp_M03_AXI_transactor->BRESP(m03_axi_bresp);
    mp_M03_AXI_transactor->BUSER(m03_axi_buser);
    mp_M03_AXI_transactor->BVALID(m03_axi_bvalid);
    mp_M03_AXI_transactor->BREADY(m03_axi_bready);
    mp_M03_AXI_transactor->ARID(m03_axi_arid);
    mp_M03_AXI_transactor->ARADDR(m03_axi_araddr);
    mp_M03_AXI_transactor->ARLEN(m03_axi_arlen);
    mp_M03_AXI_transactor->ARSIZE(m03_axi_arsize);
    mp_M03_AXI_transactor->ARBURST(m03_axi_arburst);
    mp_M03_AXI_transactor->ARLOCK(m03_axi_arlock);
    mp_M03_AXI_transactor->ARCACHE(m03_axi_arcache);
    mp_M03_AXI_transactor->ARPROT(m03_axi_arprot);
    mp_M03_AXI_transactor->ARQOS(m03_axi_arqos);
    mp_M03_AXI_transactor->ARUSER(m03_axi_aruser);
    mp_M03_AXI_transactor->ARVALID(m03_axi_arvalid);
    mp_M03_AXI_transactor->ARREADY(m03_axi_arready);
    mp_M03_AXI_transactor->RID(m03_axi_rid);
    mp_M03_AXI_transactor->RDATA(m03_axi_rdata);
    mp_M03_AXI_transactor->RRESP(m03_axi_rresp);
    mp_M03_AXI_transactor->RLAST(m03_axi_rlast);
    mp_M03_AXI_transactor->RUSER(m03_axi_ruser);
    mp_M03_AXI_transactor->RVALID(m03_axi_rvalid);
    mp_M03_AXI_transactor->RREADY(m03_axi_rready);
    mp_M03_AXI_transactor->CLK(m03_axi_aclk);
    mp_M03_AXI_transactor->RST(m03_axi_aresetn);

    // M03_AXI' transactor sockets

    mp_impl->initiator_3_rd_socket->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_impl->initiator_3_wr_socket->bind(*(mp_M03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M04_AXI' transactor parameters
    xsc::common_cpp::properties M04_AXI_transactor_param_props;
    M04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M04_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M04_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "17");
    M04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M04_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M04_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M04_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M04_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,17,1,1,1,1,1,1>("M04_AXI_transactor", M04_AXI_transactor_param_props);

    // M04_AXI' transactor ports

    mp_M04_AXI_transactor->AWID(m04_axi_awid);
    mp_M04_AXI_transactor->AWADDR(m04_axi_awaddr);
    mp_M04_AXI_transactor->AWLEN(m04_axi_awlen);
    mp_M04_AXI_transactor->AWSIZE(m04_axi_awsize);
    mp_M04_AXI_transactor->AWBURST(m04_axi_awburst);
    mp_M04_AXI_transactor->AWLOCK(m04_axi_awlock);
    mp_M04_AXI_transactor->AWCACHE(m04_axi_awcache);
    mp_M04_AXI_transactor->AWPROT(m04_axi_awprot);
    mp_M04_AXI_transactor->AWQOS(m04_axi_awqos);
    mp_M04_AXI_transactor->AWUSER(m04_axi_awuser);
    mp_M04_AXI_transactor->AWVALID(m04_axi_awvalid);
    mp_M04_AXI_transactor->AWREADY(m04_axi_awready);
    mp_M04_AXI_transactor->WDATA(m04_axi_wdata);
    mp_M04_AXI_transactor->WSTRB(m04_axi_wstrb);
    mp_M04_AXI_transactor->WLAST(m04_axi_wlast);
    mp_M04_AXI_transactor->WUSER(m04_axi_wuser);
    mp_M04_AXI_transactor->WVALID(m04_axi_wvalid);
    mp_M04_AXI_transactor->WREADY(m04_axi_wready);
    mp_M04_AXI_transactor->BID(m04_axi_bid);
    mp_M04_AXI_transactor->BRESP(m04_axi_bresp);
    mp_M04_AXI_transactor->BUSER(m04_axi_buser);
    mp_M04_AXI_transactor->BVALID(m04_axi_bvalid);
    mp_M04_AXI_transactor->BREADY(m04_axi_bready);
    mp_M04_AXI_transactor->ARID(m04_axi_arid);
    mp_M04_AXI_transactor->ARADDR(m04_axi_araddr);
    mp_M04_AXI_transactor->ARLEN(m04_axi_arlen);
    mp_M04_AXI_transactor->ARSIZE(m04_axi_arsize);
    mp_M04_AXI_transactor->ARBURST(m04_axi_arburst);
    mp_M04_AXI_transactor->ARLOCK(m04_axi_arlock);
    mp_M04_AXI_transactor->ARCACHE(m04_axi_arcache);
    mp_M04_AXI_transactor->ARPROT(m04_axi_arprot);
    mp_M04_AXI_transactor->ARQOS(m04_axi_arqos);
    mp_M04_AXI_transactor->ARUSER(m04_axi_aruser);
    mp_M04_AXI_transactor->ARVALID(m04_axi_arvalid);
    mp_M04_AXI_transactor->ARREADY(m04_axi_arready);
    mp_M04_AXI_transactor->RID(m04_axi_rid);
    mp_M04_AXI_transactor->RDATA(m04_axi_rdata);
    mp_M04_AXI_transactor->RRESP(m04_axi_rresp);
    mp_M04_AXI_transactor->RLAST(m04_axi_rlast);
    mp_M04_AXI_transactor->RUSER(m04_axi_ruser);
    mp_M04_AXI_transactor->RVALID(m04_axi_rvalid);
    mp_M04_AXI_transactor->RREADY(m04_axi_rready);
    mp_M04_AXI_transactor->CLK(m04_axi_aclk);
    mp_M04_AXI_transactor->RST(m04_axi_aresetn);

    // M04_AXI' transactor sockets

    mp_impl->initiator_4_rd_socket->bind(*(mp_M04_AXI_transactor->rd_socket));
    mp_impl->initiator_4_wr_socket->bind(*(mp_M04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M05_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M05_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M05_AXI' transactor parameters
    xsc::common_cpp::properties M05_AXI_transactor_param_props;
    M05_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M05_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M05_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "17");
    M05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M05_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M05_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M05_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M05_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M05_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M05_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M05_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M05_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,17,1,1,1,1,1,1>("M05_AXI_transactor", M05_AXI_transactor_param_props);

    // M05_AXI' transactor ports

    mp_M05_AXI_transactor->AWID(m05_axi_awid);
    mp_M05_AXI_transactor->AWADDR(m05_axi_awaddr);
    mp_M05_AXI_transactor->AWLEN(m05_axi_awlen);
    mp_M05_AXI_transactor->AWSIZE(m05_axi_awsize);
    mp_M05_AXI_transactor->AWBURST(m05_axi_awburst);
    mp_M05_AXI_transactor->AWLOCK(m05_axi_awlock);
    mp_M05_AXI_transactor->AWCACHE(m05_axi_awcache);
    mp_M05_AXI_transactor->AWPROT(m05_axi_awprot);
    mp_M05_AXI_transactor->AWQOS(m05_axi_awqos);
    mp_M05_AXI_transactor->AWUSER(m05_axi_awuser);
    mp_M05_AXI_transactor->AWVALID(m05_axi_awvalid);
    mp_M05_AXI_transactor->AWREADY(m05_axi_awready);
    mp_M05_AXI_transactor->WDATA(m05_axi_wdata);
    mp_M05_AXI_transactor->WSTRB(m05_axi_wstrb);
    mp_M05_AXI_transactor->WLAST(m05_axi_wlast);
    mp_M05_AXI_transactor->WUSER(m05_axi_wuser);
    mp_M05_AXI_transactor->WVALID(m05_axi_wvalid);
    mp_M05_AXI_transactor->WREADY(m05_axi_wready);
    mp_M05_AXI_transactor->BID(m05_axi_bid);
    mp_M05_AXI_transactor->BRESP(m05_axi_bresp);
    mp_M05_AXI_transactor->BUSER(m05_axi_buser);
    mp_M05_AXI_transactor->BVALID(m05_axi_bvalid);
    mp_M05_AXI_transactor->BREADY(m05_axi_bready);
    mp_M05_AXI_transactor->ARID(m05_axi_arid);
    mp_M05_AXI_transactor->ARADDR(m05_axi_araddr);
    mp_M05_AXI_transactor->ARLEN(m05_axi_arlen);
    mp_M05_AXI_transactor->ARSIZE(m05_axi_arsize);
    mp_M05_AXI_transactor->ARBURST(m05_axi_arburst);
    mp_M05_AXI_transactor->ARLOCK(m05_axi_arlock);
    mp_M05_AXI_transactor->ARCACHE(m05_axi_arcache);
    mp_M05_AXI_transactor->ARPROT(m05_axi_arprot);
    mp_M05_AXI_transactor->ARQOS(m05_axi_arqos);
    mp_M05_AXI_transactor->ARUSER(m05_axi_aruser);
    mp_M05_AXI_transactor->ARVALID(m05_axi_arvalid);
    mp_M05_AXI_transactor->ARREADY(m05_axi_arready);
    mp_M05_AXI_transactor->RID(m05_axi_rid);
    mp_M05_AXI_transactor->RDATA(m05_axi_rdata);
    mp_M05_AXI_transactor->RRESP(m05_axi_rresp);
    mp_M05_AXI_transactor->RLAST(m05_axi_rlast);
    mp_M05_AXI_transactor->RUSER(m05_axi_ruser);
    mp_M05_AXI_transactor->RVALID(m05_axi_rvalid);
    mp_M05_AXI_transactor->RREADY(m05_axi_rready);
    mp_M05_AXI_transactor->CLK(m05_axi_aclk);
    mp_M05_AXI_transactor->RST(m05_axi_aresetn);

    // M05_AXI' transactor sockets

    mp_impl->initiator_5_rd_socket->bind(*(mp_M05_AXI_transactor->rd_socket));
    mp_impl->initiator_5_wr_socket->bind(*(mp_M05_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M06_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M06_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M06_AXI' transactor parameters
    xsc::common_cpp::properties M06_AXI_transactor_param_props;
    M06_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M06_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M06_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "17");
    M06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M06_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M06_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M06_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M06_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M06_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M06_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M06_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M06_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M06_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,17,1,1,1,1,1,1>("M06_AXI_transactor", M06_AXI_transactor_param_props);

    // M06_AXI' transactor ports

    mp_M06_AXI_transactor->AWID(m06_axi_awid);
    mp_M06_AXI_transactor->AWADDR(m06_axi_awaddr);
    mp_M06_AXI_transactor->AWLEN(m06_axi_awlen);
    mp_M06_AXI_transactor->AWSIZE(m06_axi_awsize);
    mp_M06_AXI_transactor->AWBURST(m06_axi_awburst);
    mp_M06_AXI_transactor->AWLOCK(m06_axi_awlock);
    mp_M06_AXI_transactor->AWCACHE(m06_axi_awcache);
    mp_M06_AXI_transactor->AWPROT(m06_axi_awprot);
    mp_M06_AXI_transactor->AWQOS(m06_axi_awqos);
    mp_M06_AXI_transactor->AWUSER(m06_axi_awuser);
    mp_M06_AXI_transactor->AWVALID(m06_axi_awvalid);
    mp_M06_AXI_transactor->AWREADY(m06_axi_awready);
    mp_M06_AXI_transactor->WDATA(m06_axi_wdata);
    mp_M06_AXI_transactor->WSTRB(m06_axi_wstrb);
    mp_M06_AXI_transactor->WLAST(m06_axi_wlast);
    mp_M06_AXI_transactor->WUSER(m06_axi_wuser);
    mp_M06_AXI_transactor->WVALID(m06_axi_wvalid);
    mp_M06_AXI_transactor->WREADY(m06_axi_wready);
    mp_M06_AXI_transactor->BID(m06_axi_bid);
    mp_M06_AXI_transactor->BRESP(m06_axi_bresp);
    mp_M06_AXI_transactor->BUSER(m06_axi_buser);
    mp_M06_AXI_transactor->BVALID(m06_axi_bvalid);
    mp_M06_AXI_transactor->BREADY(m06_axi_bready);
    mp_M06_AXI_transactor->ARID(m06_axi_arid);
    mp_M06_AXI_transactor->ARADDR(m06_axi_araddr);
    mp_M06_AXI_transactor->ARLEN(m06_axi_arlen);
    mp_M06_AXI_transactor->ARSIZE(m06_axi_arsize);
    mp_M06_AXI_transactor->ARBURST(m06_axi_arburst);
    mp_M06_AXI_transactor->ARLOCK(m06_axi_arlock);
    mp_M06_AXI_transactor->ARCACHE(m06_axi_arcache);
    mp_M06_AXI_transactor->ARPROT(m06_axi_arprot);
    mp_M06_AXI_transactor->ARQOS(m06_axi_arqos);
    mp_M06_AXI_transactor->ARUSER(m06_axi_aruser);
    mp_M06_AXI_transactor->ARVALID(m06_axi_arvalid);
    mp_M06_AXI_transactor->ARREADY(m06_axi_arready);
    mp_M06_AXI_transactor->RID(m06_axi_rid);
    mp_M06_AXI_transactor->RDATA(m06_axi_rdata);
    mp_M06_AXI_transactor->RRESP(m06_axi_rresp);
    mp_M06_AXI_transactor->RLAST(m06_axi_rlast);
    mp_M06_AXI_transactor->RUSER(m06_axi_ruser);
    mp_M06_AXI_transactor->RVALID(m06_axi_rvalid);
    mp_M06_AXI_transactor->RREADY(m06_axi_rready);
    mp_M06_AXI_transactor->CLK(m06_axi_aclk);
    mp_M06_AXI_transactor->RST(m06_axi_aresetn);

    // M06_AXI' transactor sockets

    mp_impl->initiator_6_rd_socket->bind(*(mp_M06_AXI_transactor->rd_socket));
    mp_impl->initiator_6_wr_socket->bind(*(mp_M06_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
bd_d216_xtlm_simple_intercon_0_0::bd_d216_xtlm_simple_intercon_0_0(const sc_core::sc_module_name& nm) : bd_d216_xtlm_simple_intercon_0_0_sc(nm), s00_axi_awid("s00_axi_awid"), s00_axi_awaddr("s00_axi_awaddr"), s00_axi_awlen("s00_axi_awlen"), s00_axi_awsize("s00_axi_awsize"), s00_axi_awburst("s00_axi_awburst"), s00_axi_awlock("s00_axi_awlock"), s00_axi_awcache("s00_axi_awcache"), s00_axi_awprot("s00_axi_awprot"), s00_axi_awqos("s00_axi_awqos"), s00_axi_awuser("s00_axi_awuser"), s00_axi_awvalid("s00_axi_awvalid"), s00_axi_awready("s00_axi_awready"), s00_axi_wdata("s00_axi_wdata"), s00_axi_wstrb("s00_axi_wstrb"), s00_axi_wlast("s00_axi_wlast"), s00_axi_wuser("s00_axi_wuser"), s00_axi_wvalid("s00_axi_wvalid"), s00_axi_wready("s00_axi_wready"), s00_axi_bid("s00_axi_bid"), s00_axi_bresp("s00_axi_bresp"), s00_axi_buser("s00_axi_buser"), s00_axi_bvalid("s00_axi_bvalid"), s00_axi_bready("s00_axi_bready"), s00_axi_arid("s00_axi_arid"), s00_axi_araddr("s00_axi_araddr"), s00_axi_arlen("s00_axi_arlen"), s00_axi_arsize("s00_axi_arsize"), s00_axi_arburst("s00_axi_arburst"), s00_axi_arlock("s00_axi_arlock"), s00_axi_arcache("s00_axi_arcache"), s00_axi_arprot("s00_axi_arprot"), s00_axi_arqos("s00_axi_arqos"), s00_axi_aruser("s00_axi_aruser"), s00_axi_arvalid("s00_axi_arvalid"), s00_axi_arready("s00_axi_arready"), s00_axi_rid("s00_axi_rid"), s00_axi_rdata("s00_axi_rdata"), s00_axi_rresp("s00_axi_rresp"), s00_axi_rlast("s00_axi_rlast"), s00_axi_ruser("s00_axi_ruser"), s00_axi_rvalid("s00_axi_rvalid"), s00_axi_rready("s00_axi_rready"), s00_axi_aclk("s00_axi_aclk"), s00_axi_aresetn("s00_axi_aresetn"), m00_axi_awid("m00_axi_awid"), m00_axi_awaddr("m00_axi_awaddr"), m00_axi_awlen("m00_axi_awlen"), m00_axi_awsize("m00_axi_awsize"), m00_axi_awburst("m00_axi_awburst"), m00_axi_awlock("m00_axi_awlock"), m00_axi_awcache("m00_axi_awcache"), m00_axi_awprot("m00_axi_awprot"), m00_axi_awqos("m00_axi_awqos"), m00_axi_awuser("m00_axi_awuser"), m00_axi_awvalid("m00_axi_awvalid"), m00_axi_awready("m00_axi_awready"), m00_axi_wdata("m00_axi_wdata"), m00_axi_wstrb("m00_axi_wstrb"), m00_axi_wlast("m00_axi_wlast"), m00_axi_wuser("m00_axi_wuser"), m00_axi_wvalid("m00_axi_wvalid"), m00_axi_wready("m00_axi_wready"), m00_axi_bid("m00_axi_bid"), m00_axi_bresp("m00_axi_bresp"), m00_axi_buser("m00_axi_buser"), m00_axi_bvalid("m00_axi_bvalid"), m00_axi_bready("m00_axi_bready"), m00_axi_arid("m00_axi_arid"), m00_axi_araddr("m00_axi_araddr"), m00_axi_arlen("m00_axi_arlen"), m00_axi_arsize("m00_axi_arsize"), m00_axi_arburst("m00_axi_arburst"), m00_axi_arlock("m00_axi_arlock"), m00_axi_arcache("m00_axi_arcache"), m00_axi_arprot("m00_axi_arprot"), m00_axi_arqos("m00_axi_arqos"), m00_axi_aruser("m00_axi_aruser"), m00_axi_arvalid("m00_axi_arvalid"), m00_axi_arready("m00_axi_arready"), m00_axi_rid("m00_axi_rid"), m00_axi_rdata("m00_axi_rdata"), m00_axi_rresp("m00_axi_rresp"), m00_axi_rlast("m00_axi_rlast"), m00_axi_ruser("m00_axi_ruser"), m00_axi_rvalid("m00_axi_rvalid"), m00_axi_rready("m00_axi_rready"), m00_axi_aclk("m00_axi_aclk"), m00_axi_aresetn("m00_axi_aresetn"), m02_axi_awid("m02_axi_awid"), m02_axi_awaddr("m02_axi_awaddr"), m02_axi_awlen("m02_axi_awlen"), m02_axi_awsize("m02_axi_awsize"), m02_axi_awburst("m02_axi_awburst"), m02_axi_awlock("m02_axi_awlock"), m02_axi_awcache("m02_axi_awcache"), m02_axi_awprot("m02_axi_awprot"), m02_axi_awqos("m02_axi_awqos"), m02_axi_awuser("m02_axi_awuser"), m02_axi_awvalid("m02_axi_awvalid"), m02_axi_awready("m02_axi_awready"), m02_axi_wdata("m02_axi_wdata"), m02_axi_wstrb("m02_axi_wstrb"), m02_axi_wlast("m02_axi_wlast"), m02_axi_wuser("m02_axi_wuser"), m02_axi_wvalid("m02_axi_wvalid"), m02_axi_wready("m02_axi_wready"), m02_axi_bid("m02_axi_bid"), m02_axi_bresp("m02_axi_bresp"), m02_axi_buser("m02_axi_buser"), m02_axi_bvalid("m02_axi_bvalid"), m02_axi_bready("m02_axi_bready"), m02_axi_arid("m02_axi_arid"), m02_axi_araddr("m02_axi_araddr"), m02_axi_arlen("m02_axi_arlen"), m02_axi_arsize("m02_axi_arsize"), m02_axi_arburst("m02_axi_arburst"), m02_axi_arlock("m02_axi_arlock"), m02_axi_arcache("m02_axi_arcache"), m02_axi_arprot("m02_axi_arprot"), m02_axi_arqos("m02_axi_arqos"), m02_axi_aruser("m02_axi_aruser"), m02_axi_arvalid("m02_axi_arvalid"), m02_axi_arready("m02_axi_arready"), m02_axi_rid("m02_axi_rid"), m02_axi_rdata("m02_axi_rdata"), m02_axi_rresp("m02_axi_rresp"), m02_axi_rlast("m02_axi_rlast"), m02_axi_ruser("m02_axi_ruser"), m02_axi_rvalid("m02_axi_rvalid"), m02_axi_rready("m02_axi_rready"), m02_axi_aclk("m02_axi_aclk"), m02_axi_aresetn("m02_axi_aresetn"), m05_axi_awid("m05_axi_awid"), m05_axi_awaddr("m05_axi_awaddr"), m05_axi_awlen("m05_axi_awlen"), m05_axi_awsize("m05_axi_awsize"), m05_axi_awburst("m05_axi_awburst"), m05_axi_awlock("m05_axi_awlock"), m05_axi_awcache("m05_axi_awcache"), m05_axi_awprot("m05_axi_awprot"), m05_axi_awqos("m05_axi_awqos"), m05_axi_awuser("m05_axi_awuser"), m05_axi_awvalid("m05_axi_awvalid"), m05_axi_awready("m05_axi_awready"), m05_axi_wdata("m05_axi_wdata"), m05_axi_wstrb("m05_axi_wstrb"), m05_axi_wlast("m05_axi_wlast"), m05_axi_wuser("m05_axi_wuser"), m05_axi_wvalid("m05_axi_wvalid"), m05_axi_wready("m05_axi_wready"), m05_axi_bid("m05_axi_bid"), m05_axi_bresp("m05_axi_bresp"), m05_axi_buser("m05_axi_buser"), m05_axi_bvalid("m05_axi_bvalid"), m05_axi_bready("m05_axi_bready"), m05_axi_arid("m05_axi_arid"), m05_axi_araddr("m05_axi_araddr"), m05_axi_arlen("m05_axi_arlen"), m05_axi_arsize("m05_axi_arsize"), m05_axi_arburst("m05_axi_arburst"), m05_axi_arlock("m05_axi_arlock"), m05_axi_arcache("m05_axi_arcache"), m05_axi_arprot("m05_axi_arprot"), m05_axi_arqos("m05_axi_arqos"), m05_axi_aruser("m05_axi_aruser"), m05_axi_arvalid("m05_axi_arvalid"), m05_axi_arready("m05_axi_arready"), m05_axi_rid("m05_axi_rid"), m05_axi_rdata("m05_axi_rdata"), m05_axi_rresp("m05_axi_rresp"), m05_axi_rlast("m05_axi_rlast"), m05_axi_ruser("m05_axi_ruser"), m05_axi_rvalid("m05_axi_rvalid"), m05_axi_rready("m05_axi_rready"), m05_axi_aclk("m05_axi_aclk"), m05_axi_aresetn("m05_axi_aresetn"), m03_axi_awid("m03_axi_awid"), m03_axi_awaddr("m03_axi_awaddr"), m03_axi_awlen("m03_axi_awlen"), m03_axi_awsize("m03_axi_awsize"), m03_axi_awburst("m03_axi_awburst"), m03_axi_awlock("m03_axi_awlock"), m03_axi_awcache("m03_axi_awcache"), m03_axi_awprot("m03_axi_awprot"), m03_axi_awqos("m03_axi_awqos"), m03_axi_awuser("m03_axi_awuser"), m03_axi_awvalid("m03_axi_awvalid"), m03_axi_awready("m03_axi_awready"), m03_axi_wdata("m03_axi_wdata"), m03_axi_wstrb("m03_axi_wstrb"), m03_axi_wlast("m03_axi_wlast"), m03_axi_wuser("m03_axi_wuser"), m03_axi_wvalid("m03_axi_wvalid"), m03_axi_wready("m03_axi_wready"), m03_axi_bid("m03_axi_bid"), m03_axi_bresp("m03_axi_bresp"), m03_axi_buser("m03_axi_buser"), m03_axi_bvalid("m03_axi_bvalid"), m03_axi_bready("m03_axi_bready"), m03_axi_arid("m03_axi_arid"), m03_axi_araddr("m03_axi_araddr"), m03_axi_arlen("m03_axi_arlen"), m03_axi_arsize("m03_axi_arsize"), m03_axi_arburst("m03_axi_arburst"), m03_axi_arlock("m03_axi_arlock"), m03_axi_arcache("m03_axi_arcache"), m03_axi_arprot("m03_axi_arprot"), m03_axi_arqos("m03_axi_arqos"), m03_axi_aruser("m03_axi_aruser"), m03_axi_arvalid("m03_axi_arvalid"), m03_axi_arready("m03_axi_arready"), m03_axi_rid("m03_axi_rid"), m03_axi_rdata("m03_axi_rdata"), m03_axi_rresp("m03_axi_rresp"), m03_axi_rlast("m03_axi_rlast"), m03_axi_ruser("m03_axi_ruser"), m03_axi_rvalid("m03_axi_rvalid"), m03_axi_rready("m03_axi_rready"), m03_axi_aclk("m03_axi_aclk"), m03_axi_aresetn("m03_axi_aresetn"), m04_axi_awid("m04_axi_awid"), m04_axi_awaddr("m04_axi_awaddr"), m04_axi_awlen("m04_axi_awlen"), m04_axi_awsize("m04_axi_awsize"), m04_axi_awburst("m04_axi_awburst"), m04_axi_awlock("m04_axi_awlock"), m04_axi_awcache("m04_axi_awcache"), m04_axi_awprot("m04_axi_awprot"), m04_axi_awqos("m04_axi_awqos"), m04_axi_awuser("m04_axi_awuser"), m04_axi_awvalid("m04_axi_awvalid"), m04_axi_awready("m04_axi_awready"), m04_axi_wdata("m04_axi_wdata"), m04_axi_wstrb("m04_axi_wstrb"), m04_axi_wlast("m04_axi_wlast"), m04_axi_wuser("m04_axi_wuser"), m04_axi_wvalid("m04_axi_wvalid"), m04_axi_wready("m04_axi_wready"), m04_axi_bid("m04_axi_bid"), m04_axi_bresp("m04_axi_bresp"), m04_axi_buser("m04_axi_buser"), m04_axi_bvalid("m04_axi_bvalid"), m04_axi_bready("m04_axi_bready"), m04_axi_arid("m04_axi_arid"), m04_axi_araddr("m04_axi_araddr"), m04_axi_arlen("m04_axi_arlen"), m04_axi_arsize("m04_axi_arsize"), m04_axi_arburst("m04_axi_arburst"), m04_axi_arlock("m04_axi_arlock"), m04_axi_arcache("m04_axi_arcache"), m04_axi_arprot("m04_axi_arprot"), m04_axi_arqos("m04_axi_arqos"), m04_axi_aruser("m04_axi_aruser"), m04_axi_arvalid("m04_axi_arvalid"), m04_axi_arready("m04_axi_arready"), m04_axi_rid("m04_axi_rid"), m04_axi_rdata("m04_axi_rdata"), m04_axi_rresp("m04_axi_rresp"), m04_axi_rlast("m04_axi_rlast"), m04_axi_ruser("m04_axi_ruser"), m04_axi_rvalid("m04_axi_rvalid"), m04_axi_rready("m04_axi_rready"), m04_axi_aclk("m04_axi_aclk"), m04_axi_aresetn("m04_axi_aresetn"), m06_axi_awid("m06_axi_awid"), m06_axi_awaddr("m06_axi_awaddr"), m06_axi_awlen("m06_axi_awlen"), m06_axi_awsize("m06_axi_awsize"), m06_axi_awburst("m06_axi_awburst"), m06_axi_awlock("m06_axi_awlock"), m06_axi_awcache("m06_axi_awcache"), m06_axi_awprot("m06_axi_awprot"), m06_axi_awqos("m06_axi_awqos"), m06_axi_awuser("m06_axi_awuser"), m06_axi_awvalid("m06_axi_awvalid"), m06_axi_awready("m06_axi_awready"), m06_axi_wdata("m06_axi_wdata"), m06_axi_wstrb("m06_axi_wstrb"), m06_axi_wlast("m06_axi_wlast"), m06_axi_wuser("m06_axi_wuser"), m06_axi_wvalid("m06_axi_wvalid"), m06_axi_wready("m06_axi_wready"), m06_axi_bid("m06_axi_bid"), m06_axi_bresp("m06_axi_bresp"), m06_axi_buser("m06_axi_buser"), m06_axi_bvalid("m06_axi_bvalid"), m06_axi_bready("m06_axi_bready"), m06_axi_arid("m06_axi_arid"), m06_axi_araddr("m06_axi_araddr"), m06_axi_arlen("m06_axi_arlen"), m06_axi_arsize("m06_axi_arsize"), m06_axi_arburst("m06_axi_arburst"), m06_axi_arlock("m06_axi_arlock"), m06_axi_arcache("m06_axi_arcache"), m06_axi_arprot("m06_axi_arprot"), m06_axi_arqos("m06_axi_arqos"), m06_axi_aruser("m06_axi_aruser"), m06_axi_arvalid("m06_axi_arvalid"), m06_axi_arready("m06_axi_arready"), m06_axi_rid("m06_axi_rid"), m06_axi_rdata("m06_axi_rdata"), m06_axi_rresp("m06_axi_rresp"), m06_axi_rlast("m06_axi_rlast"), m06_axi_ruser("m06_axi_ruser"), m06_axi_rvalid("m06_axi_rvalid"), m06_axi_rready("m06_axi_rready"), m06_axi_aclk("m06_axi_aclk"), m06_axi_aresetn("m06_axi_aresetn"), m01_axi_awaddr("m01_axi_awaddr"), m01_axi_awlen("m01_axi_awlen"), m01_axi_awsize("m01_axi_awsize"), m01_axi_awburst("m01_axi_awburst"), m01_axi_awprot("m01_axi_awprot"), m01_axi_awvalid("m01_axi_awvalid"), m01_axi_awready("m01_axi_awready"), m01_axi_wdata("m01_axi_wdata"), m01_axi_wstrb("m01_axi_wstrb"), m01_axi_wlast("m01_axi_wlast"), m01_axi_wvalid("m01_axi_wvalid"), m01_axi_wready("m01_axi_wready"), m01_axi_bresp("m01_axi_bresp"), m01_axi_bvalid("m01_axi_bvalid"), m01_axi_bready("m01_axi_bready"), m01_axi_araddr("m01_axi_araddr"), m01_axi_arlen("m01_axi_arlen"), m01_axi_arsize("m01_axi_arsize"), m01_axi_arburst("m01_axi_arburst"), m01_axi_arprot("m01_axi_arprot"), m01_axi_arvalid("m01_axi_arvalid"), m01_axi_arready("m01_axi_arready"), m01_axi_rdata("m01_axi_rdata"), m01_axi_rresp("m01_axi_rresp"), m01_axi_rlast("m01_axi_rlast"), m01_axi_rvalid("m01_axi_rvalid"), m01_axi_rready("m01_axi_rready"), m01_axi_aclk("m01_axi_aclk"), m01_axi_aresetn("m01_axi_aresetn"), s03_axi_awid("s03_axi_awid"), s03_axi_awaddr("s03_axi_awaddr"), s03_axi_awlen("s03_axi_awlen"), s03_axi_awsize("s03_axi_awsize"), s03_axi_awburst("s03_axi_awburst"), s03_axi_awlock("s03_axi_awlock"), s03_axi_awcache("s03_axi_awcache"), s03_axi_awprot("s03_axi_awprot"), s03_axi_awqos("s03_axi_awqos"), s03_axi_awuser("s03_axi_awuser"), s03_axi_awvalid("s03_axi_awvalid"), s03_axi_awready("s03_axi_awready"), s03_axi_wdata("s03_axi_wdata"), s03_axi_wstrb("s03_axi_wstrb"), s03_axi_wlast("s03_axi_wlast"), s03_axi_wuser("s03_axi_wuser"), s03_axi_wvalid("s03_axi_wvalid"), s03_axi_wready("s03_axi_wready"), s03_axi_bid("s03_axi_bid"), s03_axi_bresp("s03_axi_bresp"), s03_axi_buser("s03_axi_buser"), s03_axi_bvalid("s03_axi_bvalid"), s03_axi_bready("s03_axi_bready"), s03_axi_arid("s03_axi_arid"), s03_axi_araddr("s03_axi_araddr"), s03_axi_arlen("s03_axi_arlen"), s03_axi_arsize("s03_axi_arsize"), s03_axi_arburst("s03_axi_arburst"), s03_axi_arlock("s03_axi_arlock"), s03_axi_arcache("s03_axi_arcache"), s03_axi_arprot("s03_axi_arprot"), s03_axi_arqos("s03_axi_arqos"), s03_axi_aruser("s03_axi_aruser"), s03_axi_arvalid("s03_axi_arvalid"), s03_axi_arready("s03_axi_arready"), s03_axi_rid("s03_axi_rid"), s03_axi_rdata("s03_axi_rdata"), s03_axi_rresp("s03_axi_rresp"), s03_axi_rlast("s03_axi_rlast"), s03_axi_ruser("s03_axi_ruser"), s03_axi_rvalid("s03_axi_rvalid"), s03_axi_rready("s03_axi_rready"), s03_axi_aclk("s03_axi_aclk"), s03_axi_aresetn("s03_axi_aresetn"), s01_axi_awid("s01_axi_awid"), s01_axi_awaddr("s01_axi_awaddr"), s01_axi_awlen("s01_axi_awlen"), s01_axi_awsize("s01_axi_awsize"), s01_axi_awburst("s01_axi_awburst"), s01_axi_awlock("s01_axi_awlock"), s01_axi_awcache("s01_axi_awcache"), s01_axi_awprot("s01_axi_awprot"), s01_axi_awqos("s01_axi_awqos"), s01_axi_awuser("s01_axi_awuser"), s01_axi_awvalid("s01_axi_awvalid"), s01_axi_awready("s01_axi_awready"), s01_axi_wdata("s01_axi_wdata"), s01_axi_wstrb("s01_axi_wstrb"), s01_axi_wlast("s01_axi_wlast"), s01_axi_wuser("s01_axi_wuser"), s01_axi_wvalid("s01_axi_wvalid"), s01_axi_wready("s01_axi_wready"), s01_axi_bid("s01_axi_bid"), s01_axi_bresp("s01_axi_bresp"), s01_axi_buser("s01_axi_buser"), s01_axi_bvalid("s01_axi_bvalid"), s01_axi_bready("s01_axi_bready"), s01_axi_arid("s01_axi_arid"), s01_axi_araddr("s01_axi_araddr"), s01_axi_arlen("s01_axi_arlen"), s01_axi_arsize("s01_axi_arsize"), s01_axi_arburst("s01_axi_arburst"), s01_axi_arlock("s01_axi_arlock"), s01_axi_arcache("s01_axi_arcache"), s01_axi_arprot("s01_axi_arprot"), s01_axi_arqos("s01_axi_arqos"), s01_axi_aruser("s01_axi_aruser"), s01_axi_arvalid("s01_axi_arvalid"), s01_axi_arready("s01_axi_arready"), s01_axi_rid("s01_axi_rid"), s01_axi_rdata("s01_axi_rdata"), s01_axi_rresp("s01_axi_rresp"), s01_axi_rlast("s01_axi_rlast"), s01_axi_ruser("s01_axi_ruser"), s01_axi_rvalid("s01_axi_rvalid"), s01_axi_rready("s01_axi_rready"), s01_axi_aclk("s01_axi_aclk"), s01_axi_aresetn("s01_axi_aresetn"), s02_axi_awid("s02_axi_awid"), s02_axi_awaddr("s02_axi_awaddr"), s02_axi_awlen("s02_axi_awlen"), s02_axi_awsize("s02_axi_awsize"), s02_axi_awburst("s02_axi_awburst"), s02_axi_awlock("s02_axi_awlock"), s02_axi_awcache("s02_axi_awcache"), s02_axi_awprot("s02_axi_awprot"), s02_axi_awqos("s02_axi_awqos"), s02_axi_awuser("s02_axi_awuser"), s02_axi_awvalid("s02_axi_awvalid"), s02_axi_awready("s02_axi_awready"), s02_axi_wdata("s02_axi_wdata"), s02_axi_wstrb("s02_axi_wstrb"), s02_axi_wlast("s02_axi_wlast"), s02_axi_wuser("s02_axi_wuser"), s02_axi_wvalid("s02_axi_wvalid"), s02_axi_wready("s02_axi_wready"), s02_axi_bid("s02_axi_bid"), s02_axi_bresp("s02_axi_bresp"), s02_axi_buser("s02_axi_buser"), s02_axi_bvalid("s02_axi_bvalid"), s02_axi_bready("s02_axi_bready"), s02_axi_arid("s02_axi_arid"), s02_axi_araddr("s02_axi_araddr"), s02_axi_arlen("s02_axi_arlen"), s02_axi_arsize("s02_axi_arsize"), s02_axi_arburst("s02_axi_arburst"), s02_axi_arlock("s02_axi_arlock"), s02_axi_arcache("s02_axi_arcache"), s02_axi_arprot("s02_axi_arprot"), s02_axi_arqos("s02_axi_arqos"), s02_axi_aruser("s02_axi_aruser"), s02_axi_arvalid("s02_axi_arvalid"), s02_axi_arready("s02_axi_arready"), s02_axi_rid("s02_axi_rid"), s02_axi_rdata("s02_axi_rdata"), s02_axi_rresp("s02_axi_rresp"), s02_axi_rlast("s02_axi_rlast"), s02_axi_ruser("s02_axi_ruser"), s02_axi_rvalid("s02_axi_rvalid"), s02_axi_rready("s02_axi_rready"), s02_axi_aclk("s02_axi_aclk"), s02_axi_aresetn("s02_axi_aresetn"), s04_axi_awaddr("s04_axi_awaddr"), s04_axi_awlen("s04_axi_awlen"), s04_axi_awsize("s04_axi_awsize"), s04_axi_awlock("s04_axi_awlock"), s04_axi_awcache("s04_axi_awcache"), s04_axi_awprot("s04_axi_awprot"), s04_axi_awregion("s04_axi_awregion"), s04_axi_awqos("s04_axi_awqos"), s04_axi_awvalid("s04_axi_awvalid"), s04_axi_awready("s04_axi_awready"), s04_axi_wdata("s04_axi_wdata"), s04_axi_wstrb("s04_axi_wstrb"), s04_axi_wlast("s04_axi_wlast"), s04_axi_wvalid("s04_axi_wvalid"), s04_axi_wready("s04_axi_wready"), s04_axi_bresp("s04_axi_bresp"), s04_axi_bvalid("s04_axi_bvalid"), s04_axi_bready("s04_axi_bready"), s04_axi_araddr("s04_axi_araddr"), s04_axi_arlen("s04_axi_arlen"), s04_axi_arsize("s04_axi_arsize"), s04_axi_arlock("s04_axi_arlock"), s04_axi_arcache("s04_axi_arcache"), s04_axi_arprot("s04_axi_arprot"), s04_axi_arregion("s04_axi_arregion"), s04_axi_arqos("s04_axi_arqos"), s04_axi_arvalid("s04_axi_arvalid"), s04_axi_arready("s04_axi_arready"), s04_axi_rdata("s04_axi_rdata"), s04_axi_rresp("s04_axi_rresp"), s04_axi_rlast("s04_axi_rlast"), s04_axi_rvalid("s04_axi_rvalid"), s04_axi_rready("s04_axi_rready"), s04_axi_aclk("s04_axi_aclk"), s04_axi_aresetn("s04_axi_aresetn")
{

  // initialize pins
  mp_impl->s00_axi_aclk(s00_axi_aclk);
  mp_impl->s00_axi_aresetn(s00_axi_aresetn);
  mp_impl->m00_axi_aclk(m00_axi_aclk);
  mp_impl->m00_axi_aresetn(m00_axi_aresetn);
  mp_impl->m02_axi_aclk(m02_axi_aclk);
  mp_impl->m02_axi_aresetn(m02_axi_aresetn);
  mp_impl->m05_axi_aclk(m05_axi_aclk);
  mp_impl->m05_axi_aresetn(m05_axi_aresetn);
  mp_impl->m03_axi_aclk(m03_axi_aclk);
  mp_impl->m03_axi_aresetn(m03_axi_aresetn);
  mp_impl->m04_axi_aclk(m04_axi_aclk);
  mp_impl->m04_axi_aresetn(m04_axi_aresetn);
  mp_impl->m06_axi_aclk(m06_axi_aclk);
  mp_impl->m06_axi_aresetn(m06_axi_aresetn);
  mp_impl->m01_axi_aclk(m01_axi_aclk);
  mp_impl->m01_axi_aresetn(m01_axi_aresetn);
  mp_impl->s03_axi_aclk(s03_axi_aclk);
  mp_impl->s03_axi_aresetn(s03_axi_aresetn);
  mp_impl->s01_axi_aclk(s01_axi_aclk);
  mp_impl->s01_axi_aresetn(s01_axi_aresetn);
  mp_impl->s02_axi_aclk(s02_axi_aclk);
  mp_impl->s02_axi_aresetn(s02_axi_aresetn);
  mp_impl->s04_axi_aclk(s04_axi_aclk);
  mp_impl->s04_axi_aresetn(s04_axi_aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_M02_AXI_transactor = NULL;
  mp_M03_AXI_transactor = NULL;
  mp_M04_AXI_transactor = NULL;
  mp_M05_AXI_transactor = NULL;
  mp_M06_AXI_transactor = NULL;

  // initialize socket stubs

}

void bd_d216_xtlm_simple_intercon_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S00_AXI_transactor->AWID(s00_axi_awid);
    mp_S00_AXI_transactor->AWADDR(s00_axi_awaddr);
    mp_S00_AXI_transactor->AWLEN(s00_axi_awlen);
    mp_S00_AXI_transactor->AWSIZE(s00_axi_awsize);
    mp_S00_AXI_transactor->AWBURST(s00_axi_awburst);
    mp_S00_AXI_transactor->AWLOCK(s00_axi_awlock);
    mp_S00_AXI_transactor->AWCACHE(s00_axi_awcache);
    mp_S00_AXI_transactor->AWPROT(s00_axi_awprot);
    mp_S00_AXI_transactor->AWQOS(s00_axi_awqos);
    mp_S00_AXI_transactor->AWUSER(s00_axi_awuser);
    mp_S00_AXI_transactor->AWVALID(s00_axi_awvalid);
    mp_S00_AXI_transactor->AWREADY(s00_axi_awready);
    mp_S00_AXI_transactor->WDATA(s00_axi_wdata);
    mp_S00_AXI_transactor->WSTRB(s00_axi_wstrb);
    mp_S00_AXI_transactor->WLAST(s00_axi_wlast);
    mp_S00_AXI_transactor->WUSER(s00_axi_wuser);
    mp_S00_AXI_transactor->WVALID(s00_axi_wvalid);
    mp_S00_AXI_transactor->WREADY(s00_axi_wready);
    mp_S00_AXI_transactor->BID(s00_axi_bid);
    mp_S00_AXI_transactor->BRESP(s00_axi_bresp);
    mp_S00_AXI_transactor->BUSER(s00_axi_buser);
    mp_S00_AXI_transactor->BVALID(s00_axi_bvalid);
    mp_S00_AXI_transactor->BREADY(s00_axi_bready);
    mp_S00_AXI_transactor->ARID(s00_axi_arid);
    mp_S00_AXI_transactor->ARADDR(s00_axi_araddr);
    mp_S00_AXI_transactor->ARLEN(s00_axi_arlen);
    mp_S00_AXI_transactor->ARSIZE(s00_axi_arsize);
    mp_S00_AXI_transactor->ARBURST(s00_axi_arburst);
    mp_S00_AXI_transactor->ARLOCK(s00_axi_arlock);
    mp_S00_AXI_transactor->ARCACHE(s00_axi_arcache);
    mp_S00_AXI_transactor->ARPROT(s00_axi_arprot);
    mp_S00_AXI_transactor->ARQOS(s00_axi_arqos);
    mp_S00_AXI_transactor->ARUSER(s00_axi_aruser);
    mp_S00_AXI_transactor->ARVALID(s00_axi_arvalid);
    mp_S00_AXI_transactor->ARREADY(s00_axi_arready);
    mp_S00_AXI_transactor->RID(s00_axi_rid);
    mp_S00_AXI_transactor->RDATA(s00_axi_rdata);
    mp_S00_AXI_transactor->RRESP(s00_axi_rresp);
    mp_S00_AXI_transactor->RLAST(s00_axi_rlast);
    mp_S00_AXI_transactor->RUSER(s00_axi_ruser);
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

  // configure 'S01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S01_AXI' transactor parameters
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S01_AXI_transactor->AWID(s01_axi_awid);
    mp_S01_AXI_transactor->AWADDR(s01_axi_awaddr);
    mp_S01_AXI_transactor->AWLEN(s01_axi_awlen);
    mp_S01_AXI_transactor->AWSIZE(s01_axi_awsize);
    mp_S01_AXI_transactor->AWBURST(s01_axi_awburst);
    mp_S01_AXI_transactor->AWLOCK(s01_axi_awlock);
    mp_S01_AXI_transactor->AWCACHE(s01_axi_awcache);
    mp_S01_AXI_transactor->AWPROT(s01_axi_awprot);
    mp_S01_AXI_transactor->AWQOS(s01_axi_awqos);
    mp_S01_AXI_transactor->AWUSER(s01_axi_awuser);
    mp_S01_AXI_transactor->AWVALID(s01_axi_awvalid);
    mp_S01_AXI_transactor->AWREADY(s01_axi_awready);
    mp_S01_AXI_transactor->WDATA(s01_axi_wdata);
    mp_S01_AXI_transactor->WSTRB(s01_axi_wstrb);
    mp_S01_AXI_transactor->WLAST(s01_axi_wlast);
    mp_S01_AXI_transactor->WUSER(s01_axi_wuser);
    mp_S01_AXI_transactor->WVALID(s01_axi_wvalid);
    mp_S01_AXI_transactor->WREADY(s01_axi_wready);
    mp_S01_AXI_transactor->BID(s01_axi_bid);
    mp_S01_AXI_transactor->BRESP(s01_axi_bresp);
    mp_S01_AXI_transactor->BUSER(s01_axi_buser);
    mp_S01_AXI_transactor->BVALID(s01_axi_bvalid);
    mp_S01_AXI_transactor->BREADY(s01_axi_bready);
    mp_S01_AXI_transactor->ARID(s01_axi_arid);
    mp_S01_AXI_transactor->ARADDR(s01_axi_araddr);
    mp_S01_AXI_transactor->ARLEN(s01_axi_arlen);
    mp_S01_AXI_transactor->ARSIZE(s01_axi_arsize);
    mp_S01_AXI_transactor->ARBURST(s01_axi_arburst);
    mp_S01_AXI_transactor->ARLOCK(s01_axi_arlock);
    mp_S01_AXI_transactor->ARCACHE(s01_axi_arcache);
    mp_S01_AXI_transactor->ARPROT(s01_axi_arprot);
    mp_S01_AXI_transactor->ARQOS(s01_axi_arqos);
    mp_S01_AXI_transactor->ARUSER(s01_axi_aruser);
    mp_S01_AXI_transactor->ARVALID(s01_axi_arvalid);
    mp_S01_AXI_transactor->ARREADY(s01_axi_arready);
    mp_S01_AXI_transactor->RID(s01_axi_rid);
    mp_S01_AXI_transactor->RDATA(s01_axi_rdata);
    mp_S01_AXI_transactor->RRESP(s01_axi_rresp);
    mp_S01_AXI_transactor->RLAST(s01_axi_rlast);
    mp_S01_AXI_transactor->RUSER(s01_axi_ruser);
    mp_S01_AXI_transactor->RVALID(s01_axi_rvalid);
    mp_S01_AXI_transactor->RREADY(s01_axi_rready);
    mp_S01_AXI_transactor->CLK(s01_axi_aclk);
    mp_S01_AXI_transactor->RST(s01_axi_aresetn);

    // S01_AXI' transactor sockets

    mp_impl->target_1_rd_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->target_1_wr_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S02_AXI' transactor parameters
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S02_AXI_transactor->AWID(s02_axi_awid);
    mp_S02_AXI_transactor->AWADDR(s02_axi_awaddr);
    mp_S02_AXI_transactor->AWLEN(s02_axi_awlen);
    mp_S02_AXI_transactor->AWSIZE(s02_axi_awsize);
    mp_S02_AXI_transactor->AWBURST(s02_axi_awburst);
    mp_S02_AXI_transactor->AWLOCK(s02_axi_awlock);
    mp_S02_AXI_transactor->AWCACHE(s02_axi_awcache);
    mp_S02_AXI_transactor->AWPROT(s02_axi_awprot);
    mp_S02_AXI_transactor->AWQOS(s02_axi_awqos);
    mp_S02_AXI_transactor->AWUSER(s02_axi_awuser);
    mp_S02_AXI_transactor->AWVALID(s02_axi_awvalid);
    mp_S02_AXI_transactor->AWREADY(s02_axi_awready);
    mp_S02_AXI_transactor->WDATA(s02_axi_wdata);
    mp_S02_AXI_transactor->WSTRB(s02_axi_wstrb);
    mp_S02_AXI_transactor->WLAST(s02_axi_wlast);
    mp_S02_AXI_transactor->WUSER(s02_axi_wuser);
    mp_S02_AXI_transactor->WVALID(s02_axi_wvalid);
    mp_S02_AXI_transactor->WREADY(s02_axi_wready);
    mp_S02_AXI_transactor->BID(s02_axi_bid);
    mp_S02_AXI_transactor->BRESP(s02_axi_bresp);
    mp_S02_AXI_transactor->BUSER(s02_axi_buser);
    mp_S02_AXI_transactor->BVALID(s02_axi_bvalid);
    mp_S02_AXI_transactor->BREADY(s02_axi_bready);
    mp_S02_AXI_transactor->ARID(s02_axi_arid);
    mp_S02_AXI_transactor->ARADDR(s02_axi_araddr);
    mp_S02_AXI_transactor->ARLEN(s02_axi_arlen);
    mp_S02_AXI_transactor->ARSIZE(s02_axi_arsize);
    mp_S02_AXI_transactor->ARBURST(s02_axi_arburst);
    mp_S02_AXI_transactor->ARLOCK(s02_axi_arlock);
    mp_S02_AXI_transactor->ARCACHE(s02_axi_arcache);
    mp_S02_AXI_transactor->ARPROT(s02_axi_arprot);
    mp_S02_AXI_transactor->ARQOS(s02_axi_arqos);
    mp_S02_AXI_transactor->ARUSER(s02_axi_aruser);
    mp_S02_AXI_transactor->ARVALID(s02_axi_arvalid);
    mp_S02_AXI_transactor->ARREADY(s02_axi_arready);
    mp_S02_AXI_transactor->RID(s02_axi_rid);
    mp_S02_AXI_transactor->RDATA(s02_axi_rdata);
    mp_S02_AXI_transactor->RRESP(s02_axi_rresp);
    mp_S02_AXI_transactor->RLAST(s02_axi_rlast);
    mp_S02_AXI_transactor->RUSER(s02_axi_ruser);
    mp_S02_AXI_transactor->RVALID(s02_axi_rvalid);
    mp_S02_AXI_transactor->RREADY(s02_axi_rready);
    mp_S02_AXI_transactor->CLK(s02_axi_aclk);
    mp_S02_AXI_transactor->RST(s02_axi_aresetn);

    // S02_AXI' transactor sockets

    mp_impl->target_2_rd_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->target_2_wr_socket->bind(*(mp_S02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S03_AXI' transactor parameters
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S03_AXI_transactor->AWID(s03_axi_awid);
    mp_S03_AXI_transactor->AWADDR(s03_axi_awaddr);
    mp_S03_AXI_transactor->AWLEN(s03_axi_awlen);
    mp_S03_AXI_transactor->AWSIZE(s03_axi_awsize);
    mp_S03_AXI_transactor->AWBURST(s03_axi_awburst);
    mp_S03_AXI_transactor->AWLOCK(s03_axi_awlock);
    mp_S03_AXI_transactor->AWCACHE(s03_axi_awcache);
    mp_S03_AXI_transactor->AWPROT(s03_axi_awprot);
    mp_S03_AXI_transactor->AWQOS(s03_axi_awqos);
    mp_S03_AXI_transactor->AWUSER(s03_axi_awuser);
    mp_S03_AXI_transactor->AWVALID(s03_axi_awvalid);
    mp_S03_AXI_transactor->AWREADY(s03_axi_awready);
    mp_S03_AXI_transactor->WDATA(s03_axi_wdata);
    mp_S03_AXI_transactor->WSTRB(s03_axi_wstrb);
    mp_S03_AXI_transactor->WLAST(s03_axi_wlast);
    mp_S03_AXI_transactor->WUSER(s03_axi_wuser);
    mp_S03_AXI_transactor->WVALID(s03_axi_wvalid);
    mp_S03_AXI_transactor->WREADY(s03_axi_wready);
    mp_S03_AXI_transactor->BID(s03_axi_bid);
    mp_S03_AXI_transactor->BRESP(s03_axi_bresp);
    mp_S03_AXI_transactor->BUSER(s03_axi_buser);
    mp_S03_AXI_transactor->BVALID(s03_axi_bvalid);
    mp_S03_AXI_transactor->BREADY(s03_axi_bready);
    mp_S03_AXI_transactor->ARID(s03_axi_arid);
    mp_S03_AXI_transactor->ARADDR(s03_axi_araddr);
    mp_S03_AXI_transactor->ARLEN(s03_axi_arlen);
    mp_S03_AXI_transactor->ARSIZE(s03_axi_arsize);
    mp_S03_AXI_transactor->ARBURST(s03_axi_arburst);
    mp_S03_AXI_transactor->ARLOCK(s03_axi_arlock);
    mp_S03_AXI_transactor->ARCACHE(s03_axi_arcache);
    mp_S03_AXI_transactor->ARPROT(s03_axi_arprot);
    mp_S03_AXI_transactor->ARQOS(s03_axi_arqos);
    mp_S03_AXI_transactor->ARUSER(s03_axi_aruser);
    mp_S03_AXI_transactor->ARVALID(s03_axi_arvalid);
    mp_S03_AXI_transactor->ARREADY(s03_axi_arready);
    mp_S03_AXI_transactor->RID(s03_axi_rid);
    mp_S03_AXI_transactor->RDATA(s03_axi_rdata);
    mp_S03_AXI_transactor->RRESP(s03_axi_rresp);
    mp_S03_AXI_transactor->RLAST(s03_axi_rlast);
    mp_S03_AXI_transactor->RUSER(s03_axi_ruser);
    mp_S03_AXI_transactor->RVALID(s03_axi_rvalid);
    mp_S03_AXI_transactor->RREADY(s03_axi_rready);
    mp_S03_AXI_transactor->CLK(s03_axi_aclk);
    mp_S03_AXI_transactor->RST(s03_axi_aresetn);

    // S03_AXI' transactor sockets

    mp_impl->target_3_rd_socket->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_impl->target_3_wr_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S04_AXI' transactor parameters
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S04_AXI_transactor->AWADDR(s04_axi_awaddr);
    mp_S04_AXI_transactor->AWLEN(s04_axi_awlen);
    mp_S04_AXI_transactor->AWSIZE(s04_axi_awsize);
    mp_S04_AXI_transactor->AWLOCK(s04_axi_awlock);
    mp_S04_AXI_transactor->AWCACHE(s04_axi_awcache);
    mp_S04_AXI_transactor->AWPROT(s04_axi_awprot);
    mp_S04_AXI_transactor->AWREGION(s04_axi_awregion);
    mp_S04_AXI_transactor->AWQOS(s04_axi_awqos);
    mp_S04_AXI_transactor->AWVALID(s04_axi_awvalid);
    mp_S04_AXI_transactor->AWREADY(s04_axi_awready);
    mp_S04_AXI_transactor->WDATA(s04_axi_wdata);
    mp_S04_AXI_transactor->WSTRB(s04_axi_wstrb);
    mp_S04_AXI_transactor->WLAST(s04_axi_wlast);
    mp_S04_AXI_transactor->WVALID(s04_axi_wvalid);
    mp_S04_AXI_transactor->WREADY(s04_axi_wready);
    mp_S04_AXI_transactor->BRESP(s04_axi_bresp);
    mp_S04_AXI_transactor->BVALID(s04_axi_bvalid);
    mp_S04_AXI_transactor->BREADY(s04_axi_bready);
    mp_S04_AXI_transactor->ARADDR(s04_axi_araddr);
    mp_S04_AXI_transactor->ARLEN(s04_axi_arlen);
    mp_S04_AXI_transactor->ARSIZE(s04_axi_arsize);
    mp_S04_AXI_transactor->ARLOCK(s04_axi_arlock);
    mp_S04_AXI_transactor->ARCACHE(s04_axi_arcache);
    mp_S04_AXI_transactor->ARPROT(s04_axi_arprot);
    mp_S04_AXI_transactor->ARREGION(s04_axi_arregion);
    mp_S04_AXI_transactor->ARQOS(s04_axi_arqos);
    mp_S04_AXI_transactor->ARVALID(s04_axi_arvalid);
    mp_S04_AXI_transactor->ARREADY(s04_axi_arready);
    mp_S04_AXI_transactor->RDATA(s04_axi_rdata);
    mp_S04_AXI_transactor->RRESP(s04_axi_rresp);
    mp_S04_AXI_transactor->RLAST(s04_axi_rlast);
    mp_S04_AXI_transactor->RVALID(s04_axi_rvalid);
    mp_S04_AXI_transactor->RREADY(s04_axi_rready);
    mp_S04_AXI_transactor->CLK(s04_axi_aclk);
    mp_S04_AXI_transactor->RST(s04_axi_aresetn);

    // S04_AXI' transactor sockets

    mp_impl->target_4_rd_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->target_4_wr_socket->bind(*(mp_S04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
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

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,5,32,1,1,32,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

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

  // configure 'M01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M01_AXI_TLM_MODE") != 1)
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

    mp_M01_AXI_transactor->AWADDR(m01_axi_awaddr);
    mp_M01_AXI_transactor->AWLEN(m01_axi_awlen);
    mp_M01_AXI_transactor->AWSIZE(m01_axi_awsize);
    mp_M01_AXI_transactor->AWBURST(m01_axi_awburst);
    mp_M01_AXI_transactor->AWPROT(m01_axi_awprot);
    mp_M01_AXI_transactor->AWVALID(m01_axi_awvalid);
    mp_M01_AXI_transactor->AWREADY(m01_axi_awready);
    mp_M01_AXI_transactor->WDATA(m01_axi_wdata);
    mp_M01_AXI_transactor->WSTRB(m01_axi_wstrb);
    mp_M01_AXI_transactor->WLAST(m01_axi_wlast);
    mp_M01_AXI_transactor->WVALID(m01_axi_wvalid);
    mp_M01_AXI_transactor->WREADY(m01_axi_wready);
    mp_M01_AXI_transactor->BRESP(m01_axi_bresp);
    mp_M01_AXI_transactor->BVALID(m01_axi_bvalid);
    mp_M01_AXI_transactor->BREADY(m01_axi_bready);
    mp_M01_AXI_transactor->ARADDR(m01_axi_araddr);
    mp_M01_AXI_transactor->ARLEN(m01_axi_arlen);
    mp_M01_AXI_transactor->ARSIZE(m01_axi_arsize);
    mp_M01_AXI_transactor->ARBURST(m01_axi_arburst);
    mp_M01_AXI_transactor->ARPROT(m01_axi_arprot);
    mp_M01_AXI_transactor->ARVALID(m01_axi_arvalid);
    mp_M01_AXI_transactor->ARREADY(m01_axi_arready);
    mp_M01_AXI_transactor->RDATA(m01_axi_rdata);
    mp_M01_AXI_transactor->RRESP(m01_axi_rresp);
    mp_M01_AXI_transactor->RLAST(m01_axi_rlast);
    mp_M01_AXI_transactor->RVALID(m01_axi_rvalid);
    mp_M01_AXI_transactor->RREADY(m01_axi_rready);
    mp_M01_AXI_transactor->CLK(m01_axi_aclk);
    mp_M01_AXI_transactor->RST(m01_axi_aresetn);

    // M01_AXI' transactor sockets

    mp_impl->initiator_1_rd_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->initiator_1_wr_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M02_AXI' transactor parameters
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
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

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,5,32,1,1,32,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);

    // M02_AXI' transactor ports

    mp_M02_AXI_transactor->AWID(m02_axi_awid);
    mp_M02_AXI_transactor->AWADDR(m02_axi_awaddr);
    mp_M02_AXI_transactor->AWLEN(m02_axi_awlen);
    mp_M02_AXI_transactor->AWSIZE(m02_axi_awsize);
    mp_M02_AXI_transactor->AWBURST(m02_axi_awburst);
    mp_M02_AXI_transactor->AWLOCK(m02_axi_awlock);
    mp_M02_AXI_transactor->AWCACHE(m02_axi_awcache);
    mp_M02_AXI_transactor->AWPROT(m02_axi_awprot);
    mp_M02_AXI_transactor->AWQOS(m02_axi_awqos);
    mp_M02_AXI_transactor->AWUSER(m02_axi_awuser);
    mp_M02_AXI_transactor->AWVALID(m02_axi_awvalid);
    mp_M02_AXI_transactor->AWREADY(m02_axi_awready);
    mp_M02_AXI_transactor->WDATA(m02_axi_wdata);
    mp_M02_AXI_transactor->WSTRB(m02_axi_wstrb);
    mp_M02_AXI_transactor->WLAST(m02_axi_wlast);
    mp_M02_AXI_transactor->WUSER(m02_axi_wuser);
    mp_M02_AXI_transactor->WVALID(m02_axi_wvalid);
    mp_M02_AXI_transactor->WREADY(m02_axi_wready);
    mp_M02_AXI_transactor->BID(m02_axi_bid);
    mp_M02_AXI_transactor->BRESP(m02_axi_bresp);
    mp_M02_AXI_transactor->BUSER(m02_axi_buser);
    mp_M02_AXI_transactor->BVALID(m02_axi_bvalid);
    mp_M02_AXI_transactor->BREADY(m02_axi_bready);
    mp_M02_AXI_transactor->ARID(m02_axi_arid);
    mp_M02_AXI_transactor->ARADDR(m02_axi_araddr);
    mp_M02_AXI_transactor->ARLEN(m02_axi_arlen);
    mp_M02_AXI_transactor->ARSIZE(m02_axi_arsize);
    mp_M02_AXI_transactor->ARBURST(m02_axi_arburst);
    mp_M02_AXI_transactor->ARLOCK(m02_axi_arlock);
    mp_M02_AXI_transactor->ARCACHE(m02_axi_arcache);
    mp_M02_AXI_transactor->ARPROT(m02_axi_arprot);
    mp_M02_AXI_transactor->ARQOS(m02_axi_arqos);
    mp_M02_AXI_transactor->ARUSER(m02_axi_aruser);
    mp_M02_AXI_transactor->ARVALID(m02_axi_arvalid);
    mp_M02_AXI_transactor->ARREADY(m02_axi_arready);
    mp_M02_AXI_transactor->RID(m02_axi_rid);
    mp_M02_AXI_transactor->RDATA(m02_axi_rdata);
    mp_M02_AXI_transactor->RRESP(m02_axi_rresp);
    mp_M02_AXI_transactor->RLAST(m02_axi_rlast);
    mp_M02_AXI_transactor->RUSER(m02_axi_ruser);
    mp_M02_AXI_transactor->RVALID(m02_axi_rvalid);
    mp_M02_AXI_transactor->RREADY(m02_axi_rready);
    mp_M02_AXI_transactor->CLK(m02_axi_aclk);
    mp_M02_AXI_transactor->RST(m02_axi_aresetn);

    // M02_AXI' transactor sockets

    mp_impl->initiator_2_rd_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->initiator_2_wr_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M03_AXI' transactor parameters
    xsc::common_cpp::properties M03_AXI_transactor_param_props;
    M03_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M03_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
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

    mp_M03_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,5,32,1,1,32,1>("M03_AXI_transactor", M03_AXI_transactor_param_props);

    // M03_AXI' transactor ports

    mp_M03_AXI_transactor->AWID(m03_axi_awid);
    mp_M03_AXI_transactor->AWADDR(m03_axi_awaddr);
    mp_M03_AXI_transactor->AWLEN(m03_axi_awlen);
    mp_M03_AXI_transactor->AWSIZE(m03_axi_awsize);
    mp_M03_AXI_transactor->AWBURST(m03_axi_awburst);
    mp_M03_AXI_transactor->AWLOCK(m03_axi_awlock);
    mp_M03_AXI_transactor->AWCACHE(m03_axi_awcache);
    mp_M03_AXI_transactor->AWPROT(m03_axi_awprot);
    mp_M03_AXI_transactor->AWQOS(m03_axi_awqos);
    mp_M03_AXI_transactor->AWUSER(m03_axi_awuser);
    mp_M03_AXI_transactor->AWVALID(m03_axi_awvalid);
    mp_M03_AXI_transactor->AWREADY(m03_axi_awready);
    mp_M03_AXI_transactor->WDATA(m03_axi_wdata);
    mp_M03_AXI_transactor->WSTRB(m03_axi_wstrb);
    mp_M03_AXI_transactor->WLAST(m03_axi_wlast);
    mp_M03_AXI_transactor->WUSER(m03_axi_wuser);
    mp_M03_AXI_transactor->WVALID(m03_axi_wvalid);
    mp_M03_AXI_transactor->WREADY(m03_axi_wready);
    mp_M03_AXI_transactor->BID(m03_axi_bid);
    mp_M03_AXI_transactor->BRESP(m03_axi_bresp);
    mp_M03_AXI_transactor->BUSER(m03_axi_buser);
    mp_M03_AXI_transactor->BVALID(m03_axi_bvalid);
    mp_M03_AXI_transactor->BREADY(m03_axi_bready);
    mp_M03_AXI_transactor->ARID(m03_axi_arid);
    mp_M03_AXI_transactor->ARADDR(m03_axi_araddr);
    mp_M03_AXI_transactor->ARLEN(m03_axi_arlen);
    mp_M03_AXI_transactor->ARSIZE(m03_axi_arsize);
    mp_M03_AXI_transactor->ARBURST(m03_axi_arburst);
    mp_M03_AXI_transactor->ARLOCK(m03_axi_arlock);
    mp_M03_AXI_transactor->ARCACHE(m03_axi_arcache);
    mp_M03_AXI_transactor->ARPROT(m03_axi_arprot);
    mp_M03_AXI_transactor->ARQOS(m03_axi_arqos);
    mp_M03_AXI_transactor->ARUSER(m03_axi_aruser);
    mp_M03_AXI_transactor->ARVALID(m03_axi_arvalid);
    mp_M03_AXI_transactor->ARREADY(m03_axi_arready);
    mp_M03_AXI_transactor->RID(m03_axi_rid);
    mp_M03_AXI_transactor->RDATA(m03_axi_rdata);
    mp_M03_AXI_transactor->RRESP(m03_axi_rresp);
    mp_M03_AXI_transactor->RLAST(m03_axi_rlast);
    mp_M03_AXI_transactor->RUSER(m03_axi_ruser);
    mp_M03_AXI_transactor->RVALID(m03_axi_rvalid);
    mp_M03_AXI_transactor->RREADY(m03_axi_rready);
    mp_M03_AXI_transactor->CLK(m03_axi_aclk);
    mp_M03_AXI_transactor->RST(m03_axi_aresetn);

    // M03_AXI' transactor sockets

    mp_impl->initiator_3_rd_socket->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_impl->initiator_3_wr_socket->bind(*(mp_M03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M04_AXI' transactor parameters
    xsc::common_cpp::properties M04_AXI_transactor_param_props;
    M04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M04_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M04_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "17");
    M04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M04_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M04_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M04_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M04_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,17,1,1,1,1,1,1>("M04_AXI_transactor", M04_AXI_transactor_param_props);

    // M04_AXI' transactor ports

    mp_M04_AXI_transactor->AWID(m04_axi_awid);
    mp_M04_AXI_transactor->AWADDR(m04_axi_awaddr);
    mp_M04_AXI_transactor->AWLEN(m04_axi_awlen);
    mp_M04_AXI_transactor->AWSIZE(m04_axi_awsize);
    mp_M04_AXI_transactor->AWBURST(m04_axi_awburst);
    mp_M04_AXI_transactor->AWLOCK(m04_axi_awlock);
    mp_M04_AXI_transactor->AWCACHE(m04_axi_awcache);
    mp_M04_AXI_transactor->AWPROT(m04_axi_awprot);
    mp_M04_AXI_transactor->AWQOS(m04_axi_awqos);
    mp_M04_AXI_transactor->AWUSER(m04_axi_awuser);
    mp_M04_AXI_transactor->AWVALID(m04_axi_awvalid);
    mp_M04_AXI_transactor->AWREADY(m04_axi_awready);
    mp_M04_AXI_transactor->WDATA(m04_axi_wdata);
    mp_M04_AXI_transactor->WSTRB(m04_axi_wstrb);
    mp_M04_AXI_transactor->WLAST(m04_axi_wlast);
    mp_M04_AXI_transactor->WUSER(m04_axi_wuser);
    mp_M04_AXI_transactor->WVALID(m04_axi_wvalid);
    mp_M04_AXI_transactor->WREADY(m04_axi_wready);
    mp_M04_AXI_transactor->BID(m04_axi_bid);
    mp_M04_AXI_transactor->BRESP(m04_axi_bresp);
    mp_M04_AXI_transactor->BUSER(m04_axi_buser);
    mp_M04_AXI_transactor->BVALID(m04_axi_bvalid);
    mp_M04_AXI_transactor->BREADY(m04_axi_bready);
    mp_M04_AXI_transactor->ARID(m04_axi_arid);
    mp_M04_AXI_transactor->ARADDR(m04_axi_araddr);
    mp_M04_AXI_transactor->ARLEN(m04_axi_arlen);
    mp_M04_AXI_transactor->ARSIZE(m04_axi_arsize);
    mp_M04_AXI_transactor->ARBURST(m04_axi_arburst);
    mp_M04_AXI_transactor->ARLOCK(m04_axi_arlock);
    mp_M04_AXI_transactor->ARCACHE(m04_axi_arcache);
    mp_M04_AXI_transactor->ARPROT(m04_axi_arprot);
    mp_M04_AXI_transactor->ARQOS(m04_axi_arqos);
    mp_M04_AXI_transactor->ARUSER(m04_axi_aruser);
    mp_M04_AXI_transactor->ARVALID(m04_axi_arvalid);
    mp_M04_AXI_transactor->ARREADY(m04_axi_arready);
    mp_M04_AXI_transactor->RID(m04_axi_rid);
    mp_M04_AXI_transactor->RDATA(m04_axi_rdata);
    mp_M04_AXI_transactor->RRESP(m04_axi_rresp);
    mp_M04_AXI_transactor->RLAST(m04_axi_rlast);
    mp_M04_AXI_transactor->RUSER(m04_axi_ruser);
    mp_M04_AXI_transactor->RVALID(m04_axi_rvalid);
    mp_M04_AXI_transactor->RREADY(m04_axi_rready);
    mp_M04_AXI_transactor->CLK(m04_axi_aclk);
    mp_M04_AXI_transactor->RST(m04_axi_aresetn);

    // M04_AXI' transactor sockets

    mp_impl->initiator_4_rd_socket->bind(*(mp_M04_AXI_transactor->rd_socket));
    mp_impl->initiator_4_wr_socket->bind(*(mp_M04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M05_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M05_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M05_AXI' transactor parameters
    xsc::common_cpp::properties M05_AXI_transactor_param_props;
    M05_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M05_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M05_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "17");
    M05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M05_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M05_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M05_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M05_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M05_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M05_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M05_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M05_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,17,1,1,1,1,1,1>("M05_AXI_transactor", M05_AXI_transactor_param_props);

    // M05_AXI' transactor ports

    mp_M05_AXI_transactor->AWID(m05_axi_awid);
    mp_M05_AXI_transactor->AWADDR(m05_axi_awaddr);
    mp_M05_AXI_transactor->AWLEN(m05_axi_awlen);
    mp_M05_AXI_transactor->AWSIZE(m05_axi_awsize);
    mp_M05_AXI_transactor->AWBURST(m05_axi_awburst);
    mp_M05_AXI_transactor->AWLOCK(m05_axi_awlock);
    mp_M05_AXI_transactor->AWCACHE(m05_axi_awcache);
    mp_M05_AXI_transactor->AWPROT(m05_axi_awprot);
    mp_M05_AXI_transactor->AWQOS(m05_axi_awqos);
    mp_M05_AXI_transactor->AWUSER(m05_axi_awuser);
    mp_M05_AXI_transactor->AWVALID(m05_axi_awvalid);
    mp_M05_AXI_transactor->AWREADY(m05_axi_awready);
    mp_M05_AXI_transactor->WDATA(m05_axi_wdata);
    mp_M05_AXI_transactor->WSTRB(m05_axi_wstrb);
    mp_M05_AXI_transactor->WLAST(m05_axi_wlast);
    mp_M05_AXI_transactor->WUSER(m05_axi_wuser);
    mp_M05_AXI_transactor->WVALID(m05_axi_wvalid);
    mp_M05_AXI_transactor->WREADY(m05_axi_wready);
    mp_M05_AXI_transactor->BID(m05_axi_bid);
    mp_M05_AXI_transactor->BRESP(m05_axi_bresp);
    mp_M05_AXI_transactor->BUSER(m05_axi_buser);
    mp_M05_AXI_transactor->BVALID(m05_axi_bvalid);
    mp_M05_AXI_transactor->BREADY(m05_axi_bready);
    mp_M05_AXI_transactor->ARID(m05_axi_arid);
    mp_M05_AXI_transactor->ARADDR(m05_axi_araddr);
    mp_M05_AXI_transactor->ARLEN(m05_axi_arlen);
    mp_M05_AXI_transactor->ARSIZE(m05_axi_arsize);
    mp_M05_AXI_transactor->ARBURST(m05_axi_arburst);
    mp_M05_AXI_transactor->ARLOCK(m05_axi_arlock);
    mp_M05_AXI_transactor->ARCACHE(m05_axi_arcache);
    mp_M05_AXI_transactor->ARPROT(m05_axi_arprot);
    mp_M05_AXI_transactor->ARQOS(m05_axi_arqos);
    mp_M05_AXI_transactor->ARUSER(m05_axi_aruser);
    mp_M05_AXI_transactor->ARVALID(m05_axi_arvalid);
    mp_M05_AXI_transactor->ARREADY(m05_axi_arready);
    mp_M05_AXI_transactor->RID(m05_axi_rid);
    mp_M05_AXI_transactor->RDATA(m05_axi_rdata);
    mp_M05_AXI_transactor->RRESP(m05_axi_rresp);
    mp_M05_AXI_transactor->RLAST(m05_axi_rlast);
    mp_M05_AXI_transactor->RUSER(m05_axi_ruser);
    mp_M05_AXI_transactor->RVALID(m05_axi_rvalid);
    mp_M05_AXI_transactor->RREADY(m05_axi_rready);
    mp_M05_AXI_transactor->CLK(m05_axi_aclk);
    mp_M05_AXI_transactor->RST(m05_axi_aresetn);

    // M05_AXI' transactor sockets

    mp_impl->initiator_5_rd_socket->bind(*(mp_M05_AXI_transactor->rd_socket));
    mp_impl->initiator_5_wr_socket->bind(*(mp_M05_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M06_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M06_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M06_AXI' transactor parameters
    xsc::common_cpp::properties M06_AXI_transactor_param_props;
    M06_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M06_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M06_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "17");
    M06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M06_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M06_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M06_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M06_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M06_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M06_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M06_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M06_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M06_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,17,1,1,1,1,1,1>("M06_AXI_transactor", M06_AXI_transactor_param_props);

    // M06_AXI' transactor ports

    mp_M06_AXI_transactor->AWID(m06_axi_awid);
    mp_M06_AXI_transactor->AWADDR(m06_axi_awaddr);
    mp_M06_AXI_transactor->AWLEN(m06_axi_awlen);
    mp_M06_AXI_transactor->AWSIZE(m06_axi_awsize);
    mp_M06_AXI_transactor->AWBURST(m06_axi_awburst);
    mp_M06_AXI_transactor->AWLOCK(m06_axi_awlock);
    mp_M06_AXI_transactor->AWCACHE(m06_axi_awcache);
    mp_M06_AXI_transactor->AWPROT(m06_axi_awprot);
    mp_M06_AXI_transactor->AWQOS(m06_axi_awqos);
    mp_M06_AXI_transactor->AWUSER(m06_axi_awuser);
    mp_M06_AXI_transactor->AWVALID(m06_axi_awvalid);
    mp_M06_AXI_transactor->AWREADY(m06_axi_awready);
    mp_M06_AXI_transactor->WDATA(m06_axi_wdata);
    mp_M06_AXI_transactor->WSTRB(m06_axi_wstrb);
    mp_M06_AXI_transactor->WLAST(m06_axi_wlast);
    mp_M06_AXI_transactor->WUSER(m06_axi_wuser);
    mp_M06_AXI_transactor->WVALID(m06_axi_wvalid);
    mp_M06_AXI_transactor->WREADY(m06_axi_wready);
    mp_M06_AXI_transactor->BID(m06_axi_bid);
    mp_M06_AXI_transactor->BRESP(m06_axi_bresp);
    mp_M06_AXI_transactor->BUSER(m06_axi_buser);
    mp_M06_AXI_transactor->BVALID(m06_axi_bvalid);
    mp_M06_AXI_transactor->BREADY(m06_axi_bready);
    mp_M06_AXI_transactor->ARID(m06_axi_arid);
    mp_M06_AXI_transactor->ARADDR(m06_axi_araddr);
    mp_M06_AXI_transactor->ARLEN(m06_axi_arlen);
    mp_M06_AXI_transactor->ARSIZE(m06_axi_arsize);
    mp_M06_AXI_transactor->ARBURST(m06_axi_arburst);
    mp_M06_AXI_transactor->ARLOCK(m06_axi_arlock);
    mp_M06_AXI_transactor->ARCACHE(m06_axi_arcache);
    mp_M06_AXI_transactor->ARPROT(m06_axi_arprot);
    mp_M06_AXI_transactor->ARQOS(m06_axi_arqos);
    mp_M06_AXI_transactor->ARUSER(m06_axi_aruser);
    mp_M06_AXI_transactor->ARVALID(m06_axi_arvalid);
    mp_M06_AXI_transactor->ARREADY(m06_axi_arready);
    mp_M06_AXI_transactor->RID(m06_axi_rid);
    mp_M06_AXI_transactor->RDATA(m06_axi_rdata);
    mp_M06_AXI_transactor->RRESP(m06_axi_rresp);
    mp_M06_AXI_transactor->RLAST(m06_axi_rlast);
    mp_M06_AXI_transactor->RUSER(m06_axi_ruser);
    mp_M06_AXI_transactor->RVALID(m06_axi_rvalid);
    mp_M06_AXI_transactor->RREADY(m06_axi_rready);
    mp_M06_AXI_transactor->CLK(m06_axi_aclk);
    mp_M06_AXI_transactor->RST(m06_axi_aresetn);

    // M06_AXI' transactor sockets

    mp_impl->initiator_6_rd_socket->bind(*(mp_M06_AXI_transactor->rd_socket));
    mp_impl->initiator_6_wr_socket->bind(*(mp_M06_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
bd_d216_xtlm_simple_intercon_0_0::bd_d216_xtlm_simple_intercon_0_0(const sc_core::sc_module_name& nm) : bd_d216_xtlm_simple_intercon_0_0_sc(nm), s00_axi_awid("s00_axi_awid"), s00_axi_awaddr("s00_axi_awaddr"), s00_axi_awlen("s00_axi_awlen"), s00_axi_awsize("s00_axi_awsize"), s00_axi_awburst("s00_axi_awburst"), s00_axi_awlock("s00_axi_awlock"), s00_axi_awcache("s00_axi_awcache"), s00_axi_awprot("s00_axi_awprot"), s00_axi_awqos("s00_axi_awqos"), s00_axi_awuser("s00_axi_awuser"), s00_axi_awvalid("s00_axi_awvalid"), s00_axi_awready("s00_axi_awready"), s00_axi_wdata("s00_axi_wdata"), s00_axi_wstrb("s00_axi_wstrb"), s00_axi_wlast("s00_axi_wlast"), s00_axi_wuser("s00_axi_wuser"), s00_axi_wvalid("s00_axi_wvalid"), s00_axi_wready("s00_axi_wready"), s00_axi_bid("s00_axi_bid"), s00_axi_bresp("s00_axi_bresp"), s00_axi_buser("s00_axi_buser"), s00_axi_bvalid("s00_axi_bvalid"), s00_axi_bready("s00_axi_bready"), s00_axi_arid("s00_axi_arid"), s00_axi_araddr("s00_axi_araddr"), s00_axi_arlen("s00_axi_arlen"), s00_axi_arsize("s00_axi_arsize"), s00_axi_arburst("s00_axi_arburst"), s00_axi_arlock("s00_axi_arlock"), s00_axi_arcache("s00_axi_arcache"), s00_axi_arprot("s00_axi_arprot"), s00_axi_arqos("s00_axi_arqos"), s00_axi_aruser("s00_axi_aruser"), s00_axi_arvalid("s00_axi_arvalid"), s00_axi_arready("s00_axi_arready"), s00_axi_rid("s00_axi_rid"), s00_axi_rdata("s00_axi_rdata"), s00_axi_rresp("s00_axi_rresp"), s00_axi_rlast("s00_axi_rlast"), s00_axi_ruser("s00_axi_ruser"), s00_axi_rvalid("s00_axi_rvalid"), s00_axi_rready("s00_axi_rready"), s00_axi_aclk("s00_axi_aclk"), s00_axi_aresetn("s00_axi_aresetn"), m00_axi_awid("m00_axi_awid"), m00_axi_awaddr("m00_axi_awaddr"), m00_axi_awlen("m00_axi_awlen"), m00_axi_awsize("m00_axi_awsize"), m00_axi_awburst("m00_axi_awburst"), m00_axi_awlock("m00_axi_awlock"), m00_axi_awcache("m00_axi_awcache"), m00_axi_awprot("m00_axi_awprot"), m00_axi_awqos("m00_axi_awqos"), m00_axi_awuser("m00_axi_awuser"), m00_axi_awvalid("m00_axi_awvalid"), m00_axi_awready("m00_axi_awready"), m00_axi_wdata("m00_axi_wdata"), m00_axi_wstrb("m00_axi_wstrb"), m00_axi_wlast("m00_axi_wlast"), m00_axi_wuser("m00_axi_wuser"), m00_axi_wvalid("m00_axi_wvalid"), m00_axi_wready("m00_axi_wready"), m00_axi_bid("m00_axi_bid"), m00_axi_bresp("m00_axi_bresp"), m00_axi_buser("m00_axi_buser"), m00_axi_bvalid("m00_axi_bvalid"), m00_axi_bready("m00_axi_bready"), m00_axi_arid("m00_axi_arid"), m00_axi_araddr("m00_axi_araddr"), m00_axi_arlen("m00_axi_arlen"), m00_axi_arsize("m00_axi_arsize"), m00_axi_arburst("m00_axi_arburst"), m00_axi_arlock("m00_axi_arlock"), m00_axi_arcache("m00_axi_arcache"), m00_axi_arprot("m00_axi_arprot"), m00_axi_arqos("m00_axi_arqos"), m00_axi_aruser("m00_axi_aruser"), m00_axi_arvalid("m00_axi_arvalid"), m00_axi_arready("m00_axi_arready"), m00_axi_rid("m00_axi_rid"), m00_axi_rdata("m00_axi_rdata"), m00_axi_rresp("m00_axi_rresp"), m00_axi_rlast("m00_axi_rlast"), m00_axi_ruser("m00_axi_ruser"), m00_axi_rvalid("m00_axi_rvalid"), m00_axi_rready("m00_axi_rready"), m00_axi_aclk("m00_axi_aclk"), m00_axi_aresetn("m00_axi_aresetn"), m02_axi_awid("m02_axi_awid"), m02_axi_awaddr("m02_axi_awaddr"), m02_axi_awlen("m02_axi_awlen"), m02_axi_awsize("m02_axi_awsize"), m02_axi_awburst("m02_axi_awburst"), m02_axi_awlock("m02_axi_awlock"), m02_axi_awcache("m02_axi_awcache"), m02_axi_awprot("m02_axi_awprot"), m02_axi_awqos("m02_axi_awqos"), m02_axi_awuser("m02_axi_awuser"), m02_axi_awvalid("m02_axi_awvalid"), m02_axi_awready("m02_axi_awready"), m02_axi_wdata("m02_axi_wdata"), m02_axi_wstrb("m02_axi_wstrb"), m02_axi_wlast("m02_axi_wlast"), m02_axi_wuser("m02_axi_wuser"), m02_axi_wvalid("m02_axi_wvalid"), m02_axi_wready("m02_axi_wready"), m02_axi_bid("m02_axi_bid"), m02_axi_bresp("m02_axi_bresp"), m02_axi_buser("m02_axi_buser"), m02_axi_bvalid("m02_axi_bvalid"), m02_axi_bready("m02_axi_bready"), m02_axi_arid("m02_axi_arid"), m02_axi_araddr("m02_axi_araddr"), m02_axi_arlen("m02_axi_arlen"), m02_axi_arsize("m02_axi_arsize"), m02_axi_arburst("m02_axi_arburst"), m02_axi_arlock("m02_axi_arlock"), m02_axi_arcache("m02_axi_arcache"), m02_axi_arprot("m02_axi_arprot"), m02_axi_arqos("m02_axi_arqos"), m02_axi_aruser("m02_axi_aruser"), m02_axi_arvalid("m02_axi_arvalid"), m02_axi_arready("m02_axi_arready"), m02_axi_rid("m02_axi_rid"), m02_axi_rdata("m02_axi_rdata"), m02_axi_rresp("m02_axi_rresp"), m02_axi_rlast("m02_axi_rlast"), m02_axi_ruser("m02_axi_ruser"), m02_axi_rvalid("m02_axi_rvalid"), m02_axi_rready("m02_axi_rready"), m02_axi_aclk("m02_axi_aclk"), m02_axi_aresetn("m02_axi_aresetn"), m05_axi_awid("m05_axi_awid"), m05_axi_awaddr("m05_axi_awaddr"), m05_axi_awlen("m05_axi_awlen"), m05_axi_awsize("m05_axi_awsize"), m05_axi_awburst("m05_axi_awburst"), m05_axi_awlock("m05_axi_awlock"), m05_axi_awcache("m05_axi_awcache"), m05_axi_awprot("m05_axi_awprot"), m05_axi_awqos("m05_axi_awqos"), m05_axi_awuser("m05_axi_awuser"), m05_axi_awvalid("m05_axi_awvalid"), m05_axi_awready("m05_axi_awready"), m05_axi_wdata("m05_axi_wdata"), m05_axi_wstrb("m05_axi_wstrb"), m05_axi_wlast("m05_axi_wlast"), m05_axi_wuser("m05_axi_wuser"), m05_axi_wvalid("m05_axi_wvalid"), m05_axi_wready("m05_axi_wready"), m05_axi_bid("m05_axi_bid"), m05_axi_bresp("m05_axi_bresp"), m05_axi_buser("m05_axi_buser"), m05_axi_bvalid("m05_axi_bvalid"), m05_axi_bready("m05_axi_bready"), m05_axi_arid("m05_axi_arid"), m05_axi_araddr("m05_axi_araddr"), m05_axi_arlen("m05_axi_arlen"), m05_axi_arsize("m05_axi_arsize"), m05_axi_arburst("m05_axi_arburst"), m05_axi_arlock("m05_axi_arlock"), m05_axi_arcache("m05_axi_arcache"), m05_axi_arprot("m05_axi_arprot"), m05_axi_arqos("m05_axi_arqos"), m05_axi_aruser("m05_axi_aruser"), m05_axi_arvalid("m05_axi_arvalid"), m05_axi_arready("m05_axi_arready"), m05_axi_rid("m05_axi_rid"), m05_axi_rdata("m05_axi_rdata"), m05_axi_rresp("m05_axi_rresp"), m05_axi_rlast("m05_axi_rlast"), m05_axi_ruser("m05_axi_ruser"), m05_axi_rvalid("m05_axi_rvalid"), m05_axi_rready("m05_axi_rready"), m05_axi_aclk("m05_axi_aclk"), m05_axi_aresetn("m05_axi_aresetn"), m03_axi_awid("m03_axi_awid"), m03_axi_awaddr("m03_axi_awaddr"), m03_axi_awlen("m03_axi_awlen"), m03_axi_awsize("m03_axi_awsize"), m03_axi_awburst("m03_axi_awburst"), m03_axi_awlock("m03_axi_awlock"), m03_axi_awcache("m03_axi_awcache"), m03_axi_awprot("m03_axi_awprot"), m03_axi_awqos("m03_axi_awqos"), m03_axi_awuser("m03_axi_awuser"), m03_axi_awvalid("m03_axi_awvalid"), m03_axi_awready("m03_axi_awready"), m03_axi_wdata("m03_axi_wdata"), m03_axi_wstrb("m03_axi_wstrb"), m03_axi_wlast("m03_axi_wlast"), m03_axi_wuser("m03_axi_wuser"), m03_axi_wvalid("m03_axi_wvalid"), m03_axi_wready("m03_axi_wready"), m03_axi_bid("m03_axi_bid"), m03_axi_bresp("m03_axi_bresp"), m03_axi_buser("m03_axi_buser"), m03_axi_bvalid("m03_axi_bvalid"), m03_axi_bready("m03_axi_bready"), m03_axi_arid("m03_axi_arid"), m03_axi_araddr("m03_axi_araddr"), m03_axi_arlen("m03_axi_arlen"), m03_axi_arsize("m03_axi_arsize"), m03_axi_arburst("m03_axi_arburst"), m03_axi_arlock("m03_axi_arlock"), m03_axi_arcache("m03_axi_arcache"), m03_axi_arprot("m03_axi_arprot"), m03_axi_arqos("m03_axi_arqos"), m03_axi_aruser("m03_axi_aruser"), m03_axi_arvalid("m03_axi_arvalid"), m03_axi_arready("m03_axi_arready"), m03_axi_rid("m03_axi_rid"), m03_axi_rdata("m03_axi_rdata"), m03_axi_rresp("m03_axi_rresp"), m03_axi_rlast("m03_axi_rlast"), m03_axi_ruser("m03_axi_ruser"), m03_axi_rvalid("m03_axi_rvalid"), m03_axi_rready("m03_axi_rready"), m03_axi_aclk("m03_axi_aclk"), m03_axi_aresetn("m03_axi_aresetn"), m04_axi_awid("m04_axi_awid"), m04_axi_awaddr("m04_axi_awaddr"), m04_axi_awlen("m04_axi_awlen"), m04_axi_awsize("m04_axi_awsize"), m04_axi_awburst("m04_axi_awburst"), m04_axi_awlock("m04_axi_awlock"), m04_axi_awcache("m04_axi_awcache"), m04_axi_awprot("m04_axi_awprot"), m04_axi_awqos("m04_axi_awqos"), m04_axi_awuser("m04_axi_awuser"), m04_axi_awvalid("m04_axi_awvalid"), m04_axi_awready("m04_axi_awready"), m04_axi_wdata("m04_axi_wdata"), m04_axi_wstrb("m04_axi_wstrb"), m04_axi_wlast("m04_axi_wlast"), m04_axi_wuser("m04_axi_wuser"), m04_axi_wvalid("m04_axi_wvalid"), m04_axi_wready("m04_axi_wready"), m04_axi_bid("m04_axi_bid"), m04_axi_bresp("m04_axi_bresp"), m04_axi_buser("m04_axi_buser"), m04_axi_bvalid("m04_axi_bvalid"), m04_axi_bready("m04_axi_bready"), m04_axi_arid("m04_axi_arid"), m04_axi_araddr("m04_axi_araddr"), m04_axi_arlen("m04_axi_arlen"), m04_axi_arsize("m04_axi_arsize"), m04_axi_arburst("m04_axi_arburst"), m04_axi_arlock("m04_axi_arlock"), m04_axi_arcache("m04_axi_arcache"), m04_axi_arprot("m04_axi_arprot"), m04_axi_arqos("m04_axi_arqos"), m04_axi_aruser("m04_axi_aruser"), m04_axi_arvalid("m04_axi_arvalid"), m04_axi_arready("m04_axi_arready"), m04_axi_rid("m04_axi_rid"), m04_axi_rdata("m04_axi_rdata"), m04_axi_rresp("m04_axi_rresp"), m04_axi_rlast("m04_axi_rlast"), m04_axi_ruser("m04_axi_ruser"), m04_axi_rvalid("m04_axi_rvalid"), m04_axi_rready("m04_axi_rready"), m04_axi_aclk("m04_axi_aclk"), m04_axi_aresetn("m04_axi_aresetn"), m06_axi_awid("m06_axi_awid"), m06_axi_awaddr("m06_axi_awaddr"), m06_axi_awlen("m06_axi_awlen"), m06_axi_awsize("m06_axi_awsize"), m06_axi_awburst("m06_axi_awburst"), m06_axi_awlock("m06_axi_awlock"), m06_axi_awcache("m06_axi_awcache"), m06_axi_awprot("m06_axi_awprot"), m06_axi_awqos("m06_axi_awqos"), m06_axi_awuser("m06_axi_awuser"), m06_axi_awvalid("m06_axi_awvalid"), m06_axi_awready("m06_axi_awready"), m06_axi_wdata("m06_axi_wdata"), m06_axi_wstrb("m06_axi_wstrb"), m06_axi_wlast("m06_axi_wlast"), m06_axi_wuser("m06_axi_wuser"), m06_axi_wvalid("m06_axi_wvalid"), m06_axi_wready("m06_axi_wready"), m06_axi_bid("m06_axi_bid"), m06_axi_bresp("m06_axi_bresp"), m06_axi_buser("m06_axi_buser"), m06_axi_bvalid("m06_axi_bvalid"), m06_axi_bready("m06_axi_bready"), m06_axi_arid("m06_axi_arid"), m06_axi_araddr("m06_axi_araddr"), m06_axi_arlen("m06_axi_arlen"), m06_axi_arsize("m06_axi_arsize"), m06_axi_arburst("m06_axi_arburst"), m06_axi_arlock("m06_axi_arlock"), m06_axi_arcache("m06_axi_arcache"), m06_axi_arprot("m06_axi_arprot"), m06_axi_arqos("m06_axi_arqos"), m06_axi_aruser("m06_axi_aruser"), m06_axi_arvalid("m06_axi_arvalid"), m06_axi_arready("m06_axi_arready"), m06_axi_rid("m06_axi_rid"), m06_axi_rdata("m06_axi_rdata"), m06_axi_rresp("m06_axi_rresp"), m06_axi_rlast("m06_axi_rlast"), m06_axi_ruser("m06_axi_ruser"), m06_axi_rvalid("m06_axi_rvalid"), m06_axi_rready("m06_axi_rready"), m06_axi_aclk("m06_axi_aclk"), m06_axi_aresetn("m06_axi_aresetn"), m01_axi_awaddr("m01_axi_awaddr"), m01_axi_awlen("m01_axi_awlen"), m01_axi_awsize("m01_axi_awsize"), m01_axi_awburst("m01_axi_awburst"), m01_axi_awprot("m01_axi_awprot"), m01_axi_awvalid("m01_axi_awvalid"), m01_axi_awready("m01_axi_awready"), m01_axi_wdata("m01_axi_wdata"), m01_axi_wstrb("m01_axi_wstrb"), m01_axi_wlast("m01_axi_wlast"), m01_axi_wvalid("m01_axi_wvalid"), m01_axi_wready("m01_axi_wready"), m01_axi_bresp("m01_axi_bresp"), m01_axi_bvalid("m01_axi_bvalid"), m01_axi_bready("m01_axi_bready"), m01_axi_araddr("m01_axi_araddr"), m01_axi_arlen("m01_axi_arlen"), m01_axi_arsize("m01_axi_arsize"), m01_axi_arburst("m01_axi_arburst"), m01_axi_arprot("m01_axi_arprot"), m01_axi_arvalid("m01_axi_arvalid"), m01_axi_arready("m01_axi_arready"), m01_axi_rdata("m01_axi_rdata"), m01_axi_rresp("m01_axi_rresp"), m01_axi_rlast("m01_axi_rlast"), m01_axi_rvalid("m01_axi_rvalid"), m01_axi_rready("m01_axi_rready"), m01_axi_aclk("m01_axi_aclk"), m01_axi_aresetn("m01_axi_aresetn"), s03_axi_awid("s03_axi_awid"), s03_axi_awaddr("s03_axi_awaddr"), s03_axi_awlen("s03_axi_awlen"), s03_axi_awsize("s03_axi_awsize"), s03_axi_awburst("s03_axi_awburst"), s03_axi_awlock("s03_axi_awlock"), s03_axi_awcache("s03_axi_awcache"), s03_axi_awprot("s03_axi_awprot"), s03_axi_awqos("s03_axi_awqos"), s03_axi_awuser("s03_axi_awuser"), s03_axi_awvalid("s03_axi_awvalid"), s03_axi_awready("s03_axi_awready"), s03_axi_wdata("s03_axi_wdata"), s03_axi_wstrb("s03_axi_wstrb"), s03_axi_wlast("s03_axi_wlast"), s03_axi_wuser("s03_axi_wuser"), s03_axi_wvalid("s03_axi_wvalid"), s03_axi_wready("s03_axi_wready"), s03_axi_bid("s03_axi_bid"), s03_axi_bresp("s03_axi_bresp"), s03_axi_buser("s03_axi_buser"), s03_axi_bvalid("s03_axi_bvalid"), s03_axi_bready("s03_axi_bready"), s03_axi_arid("s03_axi_arid"), s03_axi_araddr("s03_axi_araddr"), s03_axi_arlen("s03_axi_arlen"), s03_axi_arsize("s03_axi_arsize"), s03_axi_arburst("s03_axi_arburst"), s03_axi_arlock("s03_axi_arlock"), s03_axi_arcache("s03_axi_arcache"), s03_axi_arprot("s03_axi_arprot"), s03_axi_arqos("s03_axi_arqos"), s03_axi_aruser("s03_axi_aruser"), s03_axi_arvalid("s03_axi_arvalid"), s03_axi_arready("s03_axi_arready"), s03_axi_rid("s03_axi_rid"), s03_axi_rdata("s03_axi_rdata"), s03_axi_rresp("s03_axi_rresp"), s03_axi_rlast("s03_axi_rlast"), s03_axi_ruser("s03_axi_ruser"), s03_axi_rvalid("s03_axi_rvalid"), s03_axi_rready("s03_axi_rready"), s03_axi_aclk("s03_axi_aclk"), s03_axi_aresetn("s03_axi_aresetn"), s01_axi_awid("s01_axi_awid"), s01_axi_awaddr("s01_axi_awaddr"), s01_axi_awlen("s01_axi_awlen"), s01_axi_awsize("s01_axi_awsize"), s01_axi_awburst("s01_axi_awburst"), s01_axi_awlock("s01_axi_awlock"), s01_axi_awcache("s01_axi_awcache"), s01_axi_awprot("s01_axi_awprot"), s01_axi_awqos("s01_axi_awqos"), s01_axi_awuser("s01_axi_awuser"), s01_axi_awvalid("s01_axi_awvalid"), s01_axi_awready("s01_axi_awready"), s01_axi_wdata("s01_axi_wdata"), s01_axi_wstrb("s01_axi_wstrb"), s01_axi_wlast("s01_axi_wlast"), s01_axi_wuser("s01_axi_wuser"), s01_axi_wvalid("s01_axi_wvalid"), s01_axi_wready("s01_axi_wready"), s01_axi_bid("s01_axi_bid"), s01_axi_bresp("s01_axi_bresp"), s01_axi_buser("s01_axi_buser"), s01_axi_bvalid("s01_axi_bvalid"), s01_axi_bready("s01_axi_bready"), s01_axi_arid("s01_axi_arid"), s01_axi_araddr("s01_axi_araddr"), s01_axi_arlen("s01_axi_arlen"), s01_axi_arsize("s01_axi_arsize"), s01_axi_arburst("s01_axi_arburst"), s01_axi_arlock("s01_axi_arlock"), s01_axi_arcache("s01_axi_arcache"), s01_axi_arprot("s01_axi_arprot"), s01_axi_arqos("s01_axi_arqos"), s01_axi_aruser("s01_axi_aruser"), s01_axi_arvalid("s01_axi_arvalid"), s01_axi_arready("s01_axi_arready"), s01_axi_rid("s01_axi_rid"), s01_axi_rdata("s01_axi_rdata"), s01_axi_rresp("s01_axi_rresp"), s01_axi_rlast("s01_axi_rlast"), s01_axi_ruser("s01_axi_ruser"), s01_axi_rvalid("s01_axi_rvalid"), s01_axi_rready("s01_axi_rready"), s01_axi_aclk("s01_axi_aclk"), s01_axi_aresetn("s01_axi_aresetn"), s02_axi_awid("s02_axi_awid"), s02_axi_awaddr("s02_axi_awaddr"), s02_axi_awlen("s02_axi_awlen"), s02_axi_awsize("s02_axi_awsize"), s02_axi_awburst("s02_axi_awburst"), s02_axi_awlock("s02_axi_awlock"), s02_axi_awcache("s02_axi_awcache"), s02_axi_awprot("s02_axi_awprot"), s02_axi_awqos("s02_axi_awqos"), s02_axi_awuser("s02_axi_awuser"), s02_axi_awvalid("s02_axi_awvalid"), s02_axi_awready("s02_axi_awready"), s02_axi_wdata("s02_axi_wdata"), s02_axi_wstrb("s02_axi_wstrb"), s02_axi_wlast("s02_axi_wlast"), s02_axi_wuser("s02_axi_wuser"), s02_axi_wvalid("s02_axi_wvalid"), s02_axi_wready("s02_axi_wready"), s02_axi_bid("s02_axi_bid"), s02_axi_bresp("s02_axi_bresp"), s02_axi_buser("s02_axi_buser"), s02_axi_bvalid("s02_axi_bvalid"), s02_axi_bready("s02_axi_bready"), s02_axi_arid("s02_axi_arid"), s02_axi_araddr("s02_axi_araddr"), s02_axi_arlen("s02_axi_arlen"), s02_axi_arsize("s02_axi_arsize"), s02_axi_arburst("s02_axi_arburst"), s02_axi_arlock("s02_axi_arlock"), s02_axi_arcache("s02_axi_arcache"), s02_axi_arprot("s02_axi_arprot"), s02_axi_arqos("s02_axi_arqos"), s02_axi_aruser("s02_axi_aruser"), s02_axi_arvalid("s02_axi_arvalid"), s02_axi_arready("s02_axi_arready"), s02_axi_rid("s02_axi_rid"), s02_axi_rdata("s02_axi_rdata"), s02_axi_rresp("s02_axi_rresp"), s02_axi_rlast("s02_axi_rlast"), s02_axi_ruser("s02_axi_ruser"), s02_axi_rvalid("s02_axi_rvalid"), s02_axi_rready("s02_axi_rready"), s02_axi_aclk("s02_axi_aclk"), s02_axi_aresetn("s02_axi_aresetn"), s04_axi_awaddr("s04_axi_awaddr"), s04_axi_awlen("s04_axi_awlen"), s04_axi_awsize("s04_axi_awsize"), s04_axi_awlock("s04_axi_awlock"), s04_axi_awcache("s04_axi_awcache"), s04_axi_awprot("s04_axi_awprot"), s04_axi_awregion("s04_axi_awregion"), s04_axi_awqos("s04_axi_awqos"), s04_axi_awvalid("s04_axi_awvalid"), s04_axi_awready("s04_axi_awready"), s04_axi_wdata("s04_axi_wdata"), s04_axi_wstrb("s04_axi_wstrb"), s04_axi_wlast("s04_axi_wlast"), s04_axi_wvalid("s04_axi_wvalid"), s04_axi_wready("s04_axi_wready"), s04_axi_bresp("s04_axi_bresp"), s04_axi_bvalid("s04_axi_bvalid"), s04_axi_bready("s04_axi_bready"), s04_axi_araddr("s04_axi_araddr"), s04_axi_arlen("s04_axi_arlen"), s04_axi_arsize("s04_axi_arsize"), s04_axi_arlock("s04_axi_arlock"), s04_axi_arcache("s04_axi_arcache"), s04_axi_arprot("s04_axi_arprot"), s04_axi_arregion("s04_axi_arregion"), s04_axi_arqos("s04_axi_arqos"), s04_axi_arvalid("s04_axi_arvalid"), s04_axi_arready("s04_axi_arready"), s04_axi_rdata("s04_axi_rdata"), s04_axi_rresp("s04_axi_rresp"), s04_axi_rlast("s04_axi_rlast"), s04_axi_rvalid("s04_axi_rvalid"), s04_axi_rready("s04_axi_rready"), s04_axi_aclk("s04_axi_aclk"), s04_axi_aresetn("s04_axi_aresetn")
{

  // initialize pins
  mp_impl->s00_axi_aclk(s00_axi_aclk);
  mp_impl->s00_axi_aresetn(s00_axi_aresetn);
  mp_impl->m00_axi_aclk(m00_axi_aclk);
  mp_impl->m00_axi_aresetn(m00_axi_aresetn);
  mp_impl->m02_axi_aclk(m02_axi_aclk);
  mp_impl->m02_axi_aresetn(m02_axi_aresetn);
  mp_impl->m05_axi_aclk(m05_axi_aclk);
  mp_impl->m05_axi_aresetn(m05_axi_aresetn);
  mp_impl->m03_axi_aclk(m03_axi_aclk);
  mp_impl->m03_axi_aresetn(m03_axi_aresetn);
  mp_impl->m04_axi_aclk(m04_axi_aclk);
  mp_impl->m04_axi_aresetn(m04_axi_aresetn);
  mp_impl->m06_axi_aclk(m06_axi_aclk);
  mp_impl->m06_axi_aresetn(m06_axi_aresetn);
  mp_impl->m01_axi_aclk(m01_axi_aclk);
  mp_impl->m01_axi_aresetn(m01_axi_aresetn);
  mp_impl->s03_axi_aclk(s03_axi_aclk);
  mp_impl->s03_axi_aresetn(s03_axi_aresetn);
  mp_impl->s01_axi_aclk(s01_axi_aclk);
  mp_impl->s01_axi_aresetn(s01_axi_aresetn);
  mp_impl->s02_axi_aclk(s02_axi_aclk);
  mp_impl->s02_axi_aresetn(s02_axi_aresetn);
  mp_impl->s04_axi_aclk(s04_axi_aclk);
  mp_impl->s04_axi_aresetn(s04_axi_aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_M02_AXI_transactor = NULL;
  mp_M03_AXI_transactor = NULL;
  mp_M04_AXI_transactor = NULL;
  mp_M05_AXI_transactor = NULL;
  mp_M06_AXI_transactor = NULL;

  // initialize socket stubs

}

void bd_d216_xtlm_simple_intercon_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S00_AXI_transactor->AWID(s00_axi_awid);
    mp_S00_AXI_transactor->AWADDR(s00_axi_awaddr);
    mp_S00_AXI_transactor->AWLEN(s00_axi_awlen);
    mp_S00_AXI_transactor->AWSIZE(s00_axi_awsize);
    mp_S00_AXI_transactor->AWBURST(s00_axi_awburst);
    mp_S00_AXI_transactor->AWLOCK(s00_axi_awlock);
    mp_S00_AXI_transactor->AWCACHE(s00_axi_awcache);
    mp_S00_AXI_transactor->AWPROT(s00_axi_awprot);
    mp_S00_AXI_transactor->AWQOS(s00_axi_awqos);
    mp_S00_AXI_transactor->AWUSER(s00_axi_awuser);
    mp_S00_AXI_transactor->AWVALID(s00_axi_awvalid);
    mp_S00_AXI_transactor->AWREADY(s00_axi_awready);
    mp_S00_AXI_transactor->WDATA(s00_axi_wdata);
    mp_S00_AXI_transactor->WSTRB(s00_axi_wstrb);
    mp_S00_AXI_transactor->WLAST(s00_axi_wlast);
    mp_S00_AXI_transactor->WUSER(s00_axi_wuser);
    mp_S00_AXI_transactor->WVALID(s00_axi_wvalid);
    mp_S00_AXI_transactor->WREADY(s00_axi_wready);
    mp_S00_AXI_transactor->BID(s00_axi_bid);
    mp_S00_AXI_transactor->BRESP(s00_axi_bresp);
    mp_S00_AXI_transactor->BUSER(s00_axi_buser);
    mp_S00_AXI_transactor->BVALID(s00_axi_bvalid);
    mp_S00_AXI_transactor->BREADY(s00_axi_bready);
    mp_S00_AXI_transactor->ARID(s00_axi_arid);
    mp_S00_AXI_transactor->ARADDR(s00_axi_araddr);
    mp_S00_AXI_transactor->ARLEN(s00_axi_arlen);
    mp_S00_AXI_transactor->ARSIZE(s00_axi_arsize);
    mp_S00_AXI_transactor->ARBURST(s00_axi_arburst);
    mp_S00_AXI_transactor->ARLOCK(s00_axi_arlock);
    mp_S00_AXI_transactor->ARCACHE(s00_axi_arcache);
    mp_S00_AXI_transactor->ARPROT(s00_axi_arprot);
    mp_S00_AXI_transactor->ARQOS(s00_axi_arqos);
    mp_S00_AXI_transactor->ARUSER(s00_axi_aruser);
    mp_S00_AXI_transactor->ARVALID(s00_axi_arvalid);
    mp_S00_AXI_transactor->ARREADY(s00_axi_arready);
    mp_S00_AXI_transactor->RID(s00_axi_rid);
    mp_S00_AXI_transactor->RDATA(s00_axi_rdata);
    mp_S00_AXI_transactor->RRESP(s00_axi_rresp);
    mp_S00_AXI_transactor->RLAST(s00_axi_rlast);
    mp_S00_AXI_transactor->RUSER(s00_axi_ruser);
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

  // configure 'S01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S01_AXI' transactor parameters
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S01_AXI_transactor->AWID(s01_axi_awid);
    mp_S01_AXI_transactor->AWADDR(s01_axi_awaddr);
    mp_S01_AXI_transactor->AWLEN(s01_axi_awlen);
    mp_S01_AXI_transactor->AWSIZE(s01_axi_awsize);
    mp_S01_AXI_transactor->AWBURST(s01_axi_awburst);
    mp_S01_AXI_transactor->AWLOCK(s01_axi_awlock);
    mp_S01_AXI_transactor->AWCACHE(s01_axi_awcache);
    mp_S01_AXI_transactor->AWPROT(s01_axi_awprot);
    mp_S01_AXI_transactor->AWQOS(s01_axi_awqos);
    mp_S01_AXI_transactor->AWUSER(s01_axi_awuser);
    mp_S01_AXI_transactor->AWVALID(s01_axi_awvalid);
    mp_S01_AXI_transactor->AWREADY(s01_axi_awready);
    mp_S01_AXI_transactor->WDATA(s01_axi_wdata);
    mp_S01_AXI_transactor->WSTRB(s01_axi_wstrb);
    mp_S01_AXI_transactor->WLAST(s01_axi_wlast);
    mp_S01_AXI_transactor->WUSER(s01_axi_wuser);
    mp_S01_AXI_transactor->WVALID(s01_axi_wvalid);
    mp_S01_AXI_transactor->WREADY(s01_axi_wready);
    mp_S01_AXI_transactor->BID(s01_axi_bid);
    mp_S01_AXI_transactor->BRESP(s01_axi_bresp);
    mp_S01_AXI_transactor->BUSER(s01_axi_buser);
    mp_S01_AXI_transactor->BVALID(s01_axi_bvalid);
    mp_S01_AXI_transactor->BREADY(s01_axi_bready);
    mp_S01_AXI_transactor->ARID(s01_axi_arid);
    mp_S01_AXI_transactor->ARADDR(s01_axi_araddr);
    mp_S01_AXI_transactor->ARLEN(s01_axi_arlen);
    mp_S01_AXI_transactor->ARSIZE(s01_axi_arsize);
    mp_S01_AXI_transactor->ARBURST(s01_axi_arburst);
    mp_S01_AXI_transactor->ARLOCK(s01_axi_arlock);
    mp_S01_AXI_transactor->ARCACHE(s01_axi_arcache);
    mp_S01_AXI_transactor->ARPROT(s01_axi_arprot);
    mp_S01_AXI_transactor->ARQOS(s01_axi_arqos);
    mp_S01_AXI_transactor->ARUSER(s01_axi_aruser);
    mp_S01_AXI_transactor->ARVALID(s01_axi_arvalid);
    mp_S01_AXI_transactor->ARREADY(s01_axi_arready);
    mp_S01_AXI_transactor->RID(s01_axi_rid);
    mp_S01_AXI_transactor->RDATA(s01_axi_rdata);
    mp_S01_AXI_transactor->RRESP(s01_axi_rresp);
    mp_S01_AXI_transactor->RLAST(s01_axi_rlast);
    mp_S01_AXI_transactor->RUSER(s01_axi_ruser);
    mp_S01_AXI_transactor->RVALID(s01_axi_rvalid);
    mp_S01_AXI_transactor->RREADY(s01_axi_rready);
    mp_S01_AXI_transactor->CLK(s01_axi_aclk);
    mp_S01_AXI_transactor->RST(s01_axi_aresetn);

    // S01_AXI' transactor sockets

    mp_impl->target_1_rd_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->target_1_wr_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S02_AXI' transactor parameters
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S02_AXI_transactor->AWID(s02_axi_awid);
    mp_S02_AXI_transactor->AWADDR(s02_axi_awaddr);
    mp_S02_AXI_transactor->AWLEN(s02_axi_awlen);
    mp_S02_AXI_transactor->AWSIZE(s02_axi_awsize);
    mp_S02_AXI_transactor->AWBURST(s02_axi_awburst);
    mp_S02_AXI_transactor->AWLOCK(s02_axi_awlock);
    mp_S02_AXI_transactor->AWCACHE(s02_axi_awcache);
    mp_S02_AXI_transactor->AWPROT(s02_axi_awprot);
    mp_S02_AXI_transactor->AWQOS(s02_axi_awqos);
    mp_S02_AXI_transactor->AWUSER(s02_axi_awuser);
    mp_S02_AXI_transactor->AWVALID(s02_axi_awvalid);
    mp_S02_AXI_transactor->AWREADY(s02_axi_awready);
    mp_S02_AXI_transactor->WDATA(s02_axi_wdata);
    mp_S02_AXI_transactor->WSTRB(s02_axi_wstrb);
    mp_S02_AXI_transactor->WLAST(s02_axi_wlast);
    mp_S02_AXI_transactor->WUSER(s02_axi_wuser);
    mp_S02_AXI_transactor->WVALID(s02_axi_wvalid);
    mp_S02_AXI_transactor->WREADY(s02_axi_wready);
    mp_S02_AXI_transactor->BID(s02_axi_bid);
    mp_S02_AXI_transactor->BRESP(s02_axi_bresp);
    mp_S02_AXI_transactor->BUSER(s02_axi_buser);
    mp_S02_AXI_transactor->BVALID(s02_axi_bvalid);
    mp_S02_AXI_transactor->BREADY(s02_axi_bready);
    mp_S02_AXI_transactor->ARID(s02_axi_arid);
    mp_S02_AXI_transactor->ARADDR(s02_axi_araddr);
    mp_S02_AXI_transactor->ARLEN(s02_axi_arlen);
    mp_S02_AXI_transactor->ARSIZE(s02_axi_arsize);
    mp_S02_AXI_transactor->ARBURST(s02_axi_arburst);
    mp_S02_AXI_transactor->ARLOCK(s02_axi_arlock);
    mp_S02_AXI_transactor->ARCACHE(s02_axi_arcache);
    mp_S02_AXI_transactor->ARPROT(s02_axi_arprot);
    mp_S02_AXI_transactor->ARQOS(s02_axi_arqos);
    mp_S02_AXI_transactor->ARUSER(s02_axi_aruser);
    mp_S02_AXI_transactor->ARVALID(s02_axi_arvalid);
    mp_S02_AXI_transactor->ARREADY(s02_axi_arready);
    mp_S02_AXI_transactor->RID(s02_axi_rid);
    mp_S02_AXI_transactor->RDATA(s02_axi_rdata);
    mp_S02_AXI_transactor->RRESP(s02_axi_rresp);
    mp_S02_AXI_transactor->RLAST(s02_axi_rlast);
    mp_S02_AXI_transactor->RUSER(s02_axi_ruser);
    mp_S02_AXI_transactor->RVALID(s02_axi_rvalid);
    mp_S02_AXI_transactor->RREADY(s02_axi_rready);
    mp_S02_AXI_transactor->CLK(s02_axi_aclk);
    mp_S02_AXI_transactor->RST(s02_axi_aresetn);

    // S02_AXI' transactor sockets

    mp_impl->target_2_rd_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->target_2_wr_socket->bind(*(mp_S02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S03_AXI' transactor parameters
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S03_AXI_transactor->AWID(s03_axi_awid);
    mp_S03_AXI_transactor->AWADDR(s03_axi_awaddr);
    mp_S03_AXI_transactor->AWLEN(s03_axi_awlen);
    mp_S03_AXI_transactor->AWSIZE(s03_axi_awsize);
    mp_S03_AXI_transactor->AWBURST(s03_axi_awburst);
    mp_S03_AXI_transactor->AWLOCK(s03_axi_awlock);
    mp_S03_AXI_transactor->AWCACHE(s03_axi_awcache);
    mp_S03_AXI_transactor->AWPROT(s03_axi_awprot);
    mp_S03_AXI_transactor->AWQOS(s03_axi_awqos);
    mp_S03_AXI_transactor->AWUSER(s03_axi_awuser);
    mp_S03_AXI_transactor->AWVALID(s03_axi_awvalid);
    mp_S03_AXI_transactor->AWREADY(s03_axi_awready);
    mp_S03_AXI_transactor->WDATA(s03_axi_wdata);
    mp_S03_AXI_transactor->WSTRB(s03_axi_wstrb);
    mp_S03_AXI_transactor->WLAST(s03_axi_wlast);
    mp_S03_AXI_transactor->WUSER(s03_axi_wuser);
    mp_S03_AXI_transactor->WVALID(s03_axi_wvalid);
    mp_S03_AXI_transactor->WREADY(s03_axi_wready);
    mp_S03_AXI_transactor->BID(s03_axi_bid);
    mp_S03_AXI_transactor->BRESP(s03_axi_bresp);
    mp_S03_AXI_transactor->BUSER(s03_axi_buser);
    mp_S03_AXI_transactor->BVALID(s03_axi_bvalid);
    mp_S03_AXI_transactor->BREADY(s03_axi_bready);
    mp_S03_AXI_transactor->ARID(s03_axi_arid);
    mp_S03_AXI_transactor->ARADDR(s03_axi_araddr);
    mp_S03_AXI_transactor->ARLEN(s03_axi_arlen);
    mp_S03_AXI_transactor->ARSIZE(s03_axi_arsize);
    mp_S03_AXI_transactor->ARBURST(s03_axi_arburst);
    mp_S03_AXI_transactor->ARLOCK(s03_axi_arlock);
    mp_S03_AXI_transactor->ARCACHE(s03_axi_arcache);
    mp_S03_AXI_transactor->ARPROT(s03_axi_arprot);
    mp_S03_AXI_transactor->ARQOS(s03_axi_arqos);
    mp_S03_AXI_transactor->ARUSER(s03_axi_aruser);
    mp_S03_AXI_transactor->ARVALID(s03_axi_arvalid);
    mp_S03_AXI_transactor->ARREADY(s03_axi_arready);
    mp_S03_AXI_transactor->RID(s03_axi_rid);
    mp_S03_AXI_transactor->RDATA(s03_axi_rdata);
    mp_S03_AXI_transactor->RRESP(s03_axi_rresp);
    mp_S03_AXI_transactor->RLAST(s03_axi_rlast);
    mp_S03_AXI_transactor->RUSER(s03_axi_ruser);
    mp_S03_AXI_transactor->RVALID(s03_axi_rvalid);
    mp_S03_AXI_transactor->RREADY(s03_axi_rready);
    mp_S03_AXI_transactor->CLK(s03_axi_aclk);
    mp_S03_AXI_transactor->RST(s03_axi_aresetn);

    // S03_AXI' transactor sockets

    mp_impl->target_3_rd_socket->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_impl->target_3_wr_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S04_AXI' transactor parameters
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S04_AXI_transactor->AWADDR(s04_axi_awaddr);
    mp_S04_AXI_transactor->AWLEN(s04_axi_awlen);
    mp_S04_AXI_transactor->AWSIZE(s04_axi_awsize);
    mp_S04_AXI_transactor->AWLOCK(s04_axi_awlock);
    mp_S04_AXI_transactor->AWCACHE(s04_axi_awcache);
    mp_S04_AXI_transactor->AWPROT(s04_axi_awprot);
    mp_S04_AXI_transactor->AWREGION(s04_axi_awregion);
    mp_S04_AXI_transactor->AWQOS(s04_axi_awqos);
    mp_S04_AXI_transactor->AWVALID(s04_axi_awvalid);
    mp_S04_AXI_transactor->AWREADY(s04_axi_awready);
    mp_S04_AXI_transactor->WDATA(s04_axi_wdata);
    mp_S04_AXI_transactor->WSTRB(s04_axi_wstrb);
    mp_S04_AXI_transactor->WLAST(s04_axi_wlast);
    mp_S04_AXI_transactor->WVALID(s04_axi_wvalid);
    mp_S04_AXI_transactor->WREADY(s04_axi_wready);
    mp_S04_AXI_transactor->BRESP(s04_axi_bresp);
    mp_S04_AXI_transactor->BVALID(s04_axi_bvalid);
    mp_S04_AXI_transactor->BREADY(s04_axi_bready);
    mp_S04_AXI_transactor->ARADDR(s04_axi_araddr);
    mp_S04_AXI_transactor->ARLEN(s04_axi_arlen);
    mp_S04_AXI_transactor->ARSIZE(s04_axi_arsize);
    mp_S04_AXI_transactor->ARLOCK(s04_axi_arlock);
    mp_S04_AXI_transactor->ARCACHE(s04_axi_arcache);
    mp_S04_AXI_transactor->ARPROT(s04_axi_arprot);
    mp_S04_AXI_transactor->ARREGION(s04_axi_arregion);
    mp_S04_AXI_transactor->ARQOS(s04_axi_arqos);
    mp_S04_AXI_transactor->ARVALID(s04_axi_arvalid);
    mp_S04_AXI_transactor->ARREADY(s04_axi_arready);
    mp_S04_AXI_transactor->RDATA(s04_axi_rdata);
    mp_S04_AXI_transactor->RRESP(s04_axi_rresp);
    mp_S04_AXI_transactor->RLAST(s04_axi_rlast);
    mp_S04_AXI_transactor->RVALID(s04_axi_rvalid);
    mp_S04_AXI_transactor->RREADY(s04_axi_rready);
    mp_S04_AXI_transactor->CLK(s04_axi_aclk);
    mp_S04_AXI_transactor->RST(s04_axi_aresetn);

    // S04_AXI' transactor sockets

    mp_impl->target_4_rd_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->target_4_wr_socket->bind(*(mp_S04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
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

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,5,32,1,1,32,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

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

  // configure 'M01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M01_AXI_TLM_MODE") != 1)
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

    mp_M01_AXI_transactor->AWADDR(m01_axi_awaddr);
    mp_M01_AXI_transactor->AWLEN(m01_axi_awlen);
    mp_M01_AXI_transactor->AWSIZE(m01_axi_awsize);
    mp_M01_AXI_transactor->AWBURST(m01_axi_awburst);
    mp_M01_AXI_transactor->AWPROT(m01_axi_awprot);
    mp_M01_AXI_transactor->AWVALID(m01_axi_awvalid);
    mp_M01_AXI_transactor->AWREADY(m01_axi_awready);
    mp_M01_AXI_transactor->WDATA(m01_axi_wdata);
    mp_M01_AXI_transactor->WSTRB(m01_axi_wstrb);
    mp_M01_AXI_transactor->WLAST(m01_axi_wlast);
    mp_M01_AXI_transactor->WVALID(m01_axi_wvalid);
    mp_M01_AXI_transactor->WREADY(m01_axi_wready);
    mp_M01_AXI_transactor->BRESP(m01_axi_bresp);
    mp_M01_AXI_transactor->BVALID(m01_axi_bvalid);
    mp_M01_AXI_transactor->BREADY(m01_axi_bready);
    mp_M01_AXI_transactor->ARADDR(m01_axi_araddr);
    mp_M01_AXI_transactor->ARLEN(m01_axi_arlen);
    mp_M01_AXI_transactor->ARSIZE(m01_axi_arsize);
    mp_M01_AXI_transactor->ARBURST(m01_axi_arburst);
    mp_M01_AXI_transactor->ARPROT(m01_axi_arprot);
    mp_M01_AXI_transactor->ARVALID(m01_axi_arvalid);
    mp_M01_AXI_transactor->ARREADY(m01_axi_arready);
    mp_M01_AXI_transactor->RDATA(m01_axi_rdata);
    mp_M01_AXI_transactor->RRESP(m01_axi_rresp);
    mp_M01_AXI_transactor->RLAST(m01_axi_rlast);
    mp_M01_AXI_transactor->RVALID(m01_axi_rvalid);
    mp_M01_AXI_transactor->RREADY(m01_axi_rready);
    mp_M01_AXI_transactor->CLK(m01_axi_aclk);
    mp_M01_AXI_transactor->RST(m01_axi_aresetn);

    // M01_AXI' transactor sockets

    mp_impl->initiator_1_rd_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->initiator_1_wr_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M02_AXI' transactor parameters
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
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

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,5,32,1,1,32,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);

    // M02_AXI' transactor ports

    mp_M02_AXI_transactor->AWID(m02_axi_awid);
    mp_M02_AXI_transactor->AWADDR(m02_axi_awaddr);
    mp_M02_AXI_transactor->AWLEN(m02_axi_awlen);
    mp_M02_AXI_transactor->AWSIZE(m02_axi_awsize);
    mp_M02_AXI_transactor->AWBURST(m02_axi_awburst);
    mp_M02_AXI_transactor->AWLOCK(m02_axi_awlock);
    mp_M02_AXI_transactor->AWCACHE(m02_axi_awcache);
    mp_M02_AXI_transactor->AWPROT(m02_axi_awprot);
    mp_M02_AXI_transactor->AWQOS(m02_axi_awqos);
    mp_M02_AXI_transactor->AWUSER(m02_axi_awuser);
    mp_M02_AXI_transactor->AWVALID(m02_axi_awvalid);
    mp_M02_AXI_transactor->AWREADY(m02_axi_awready);
    mp_M02_AXI_transactor->WDATA(m02_axi_wdata);
    mp_M02_AXI_transactor->WSTRB(m02_axi_wstrb);
    mp_M02_AXI_transactor->WLAST(m02_axi_wlast);
    mp_M02_AXI_transactor->WUSER(m02_axi_wuser);
    mp_M02_AXI_transactor->WVALID(m02_axi_wvalid);
    mp_M02_AXI_transactor->WREADY(m02_axi_wready);
    mp_M02_AXI_transactor->BID(m02_axi_bid);
    mp_M02_AXI_transactor->BRESP(m02_axi_bresp);
    mp_M02_AXI_transactor->BUSER(m02_axi_buser);
    mp_M02_AXI_transactor->BVALID(m02_axi_bvalid);
    mp_M02_AXI_transactor->BREADY(m02_axi_bready);
    mp_M02_AXI_transactor->ARID(m02_axi_arid);
    mp_M02_AXI_transactor->ARADDR(m02_axi_araddr);
    mp_M02_AXI_transactor->ARLEN(m02_axi_arlen);
    mp_M02_AXI_transactor->ARSIZE(m02_axi_arsize);
    mp_M02_AXI_transactor->ARBURST(m02_axi_arburst);
    mp_M02_AXI_transactor->ARLOCK(m02_axi_arlock);
    mp_M02_AXI_transactor->ARCACHE(m02_axi_arcache);
    mp_M02_AXI_transactor->ARPROT(m02_axi_arprot);
    mp_M02_AXI_transactor->ARQOS(m02_axi_arqos);
    mp_M02_AXI_transactor->ARUSER(m02_axi_aruser);
    mp_M02_AXI_transactor->ARVALID(m02_axi_arvalid);
    mp_M02_AXI_transactor->ARREADY(m02_axi_arready);
    mp_M02_AXI_transactor->RID(m02_axi_rid);
    mp_M02_AXI_transactor->RDATA(m02_axi_rdata);
    mp_M02_AXI_transactor->RRESP(m02_axi_rresp);
    mp_M02_AXI_transactor->RLAST(m02_axi_rlast);
    mp_M02_AXI_transactor->RUSER(m02_axi_ruser);
    mp_M02_AXI_transactor->RVALID(m02_axi_rvalid);
    mp_M02_AXI_transactor->RREADY(m02_axi_rready);
    mp_M02_AXI_transactor->CLK(m02_axi_aclk);
    mp_M02_AXI_transactor->RST(m02_axi_aresetn);

    // M02_AXI' transactor sockets

    mp_impl->initiator_2_rd_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->initiator_2_wr_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M03_AXI' transactor parameters
    xsc::common_cpp::properties M03_AXI_transactor_param_props;
    M03_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M03_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
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

    mp_M03_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,5,32,1,1,32,1>("M03_AXI_transactor", M03_AXI_transactor_param_props);

    // M03_AXI' transactor ports

    mp_M03_AXI_transactor->AWID(m03_axi_awid);
    mp_M03_AXI_transactor->AWADDR(m03_axi_awaddr);
    mp_M03_AXI_transactor->AWLEN(m03_axi_awlen);
    mp_M03_AXI_transactor->AWSIZE(m03_axi_awsize);
    mp_M03_AXI_transactor->AWBURST(m03_axi_awburst);
    mp_M03_AXI_transactor->AWLOCK(m03_axi_awlock);
    mp_M03_AXI_transactor->AWCACHE(m03_axi_awcache);
    mp_M03_AXI_transactor->AWPROT(m03_axi_awprot);
    mp_M03_AXI_transactor->AWQOS(m03_axi_awqos);
    mp_M03_AXI_transactor->AWUSER(m03_axi_awuser);
    mp_M03_AXI_transactor->AWVALID(m03_axi_awvalid);
    mp_M03_AXI_transactor->AWREADY(m03_axi_awready);
    mp_M03_AXI_transactor->WDATA(m03_axi_wdata);
    mp_M03_AXI_transactor->WSTRB(m03_axi_wstrb);
    mp_M03_AXI_transactor->WLAST(m03_axi_wlast);
    mp_M03_AXI_transactor->WUSER(m03_axi_wuser);
    mp_M03_AXI_transactor->WVALID(m03_axi_wvalid);
    mp_M03_AXI_transactor->WREADY(m03_axi_wready);
    mp_M03_AXI_transactor->BID(m03_axi_bid);
    mp_M03_AXI_transactor->BRESP(m03_axi_bresp);
    mp_M03_AXI_transactor->BUSER(m03_axi_buser);
    mp_M03_AXI_transactor->BVALID(m03_axi_bvalid);
    mp_M03_AXI_transactor->BREADY(m03_axi_bready);
    mp_M03_AXI_transactor->ARID(m03_axi_arid);
    mp_M03_AXI_transactor->ARADDR(m03_axi_araddr);
    mp_M03_AXI_transactor->ARLEN(m03_axi_arlen);
    mp_M03_AXI_transactor->ARSIZE(m03_axi_arsize);
    mp_M03_AXI_transactor->ARBURST(m03_axi_arburst);
    mp_M03_AXI_transactor->ARLOCK(m03_axi_arlock);
    mp_M03_AXI_transactor->ARCACHE(m03_axi_arcache);
    mp_M03_AXI_transactor->ARPROT(m03_axi_arprot);
    mp_M03_AXI_transactor->ARQOS(m03_axi_arqos);
    mp_M03_AXI_transactor->ARUSER(m03_axi_aruser);
    mp_M03_AXI_transactor->ARVALID(m03_axi_arvalid);
    mp_M03_AXI_transactor->ARREADY(m03_axi_arready);
    mp_M03_AXI_transactor->RID(m03_axi_rid);
    mp_M03_AXI_transactor->RDATA(m03_axi_rdata);
    mp_M03_AXI_transactor->RRESP(m03_axi_rresp);
    mp_M03_AXI_transactor->RLAST(m03_axi_rlast);
    mp_M03_AXI_transactor->RUSER(m03_axi_ruser);
    mp_M03_AXI_transactor->RVALID(m03_axi_rvalid);
    mp_M03_AXI_transactor->RREADY(m03_axi_rready);
    mp_M03_AXI_transactor->CLK(m03_axi_aclk);
    mp_M03_AXI_transactor->RST(m03_axi_aresetn);

    // M03_AXI' transactor sockets

    mp_impl->initiator_3_rd_socket->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_impl->initiator_3_wr_socket->bind(*(mp_M03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M04_AXI' transactor parameters
    xsc::common_cpp::properties M04_AXI_transactor_param_props;
    M04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M04_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M04_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "17");
    M04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M04_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M04_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M04_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M04_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,17,1,1,1,1,1,1>("M04_AXI_transactor", M04_AXI_transactor_param_props);

    // M04_AXI' transactor ports

    mp_M04_AXI_transactor->AWID(m04_axi_awid);
    mp_M04_AXI_transactor->AWADDR(m04_axi_awaddr);
    mp_M04_AXI_transactor->AWLEN(m04_axi_awlen);
    mp_M04_AXI_transactor->AWSIZE(m04_axi_awsize);
    mp_M04_AXI_transactor->AWBURST(m04_axi_awburst);
    mp_M04_AXI_transactor->AWLOCK(m04_axi_awlock);
    mp_M04_AXI_transactor->AWCACHE(m04_axi_awcache);
    mp_M04_AXI_transactor->AWPROT(m04_axi_awprot);
    mp_M04_AXI_transactor->AWQOS(m04_axi_awqos);
    mp_M04_AXI_transactor->AWUSER(m04_axi_awuser);
    mp_M04_AXI_transactor->AWVALID(m04_axi_awvalid);
    mp_M04_AXI_transactor->AWREADY(m04_axi_awready);
    mp_M04_AXI_transactor->WDATA(m04_axi_wdata);
    mp_M04_AXI_transactor->WSTRB(m04_axi_wstrb);
    mp_M04_AXI_transactor->WLAST(m04_axi_wlast);
    mp_M04_AXI_transactor->WUSER(m04_axi_wuser);
    mp_M04_AXI_transactor->WVALID(m04_axi_wvalid);
    mp_M04_AXI_transactor->WREADY(m04_axi_wready);
    mp_M04_AXI_transactor->BID(m04_axi_bid);
    mp_M04_AXI_transactor->BRESP(m04_axi_bresp);
    mp_M04_AXI_transactor->BUSER(m04_axi_buser);
    mp_M04_AXI_transactor->BVALID(m04_axi_bvalid);
    mp_M04_AXI_transactor->BREADY(m04_axi_bready);
    mp_M04_AXI_transactor->ARID(m04_axi_arid);
    mp_M04_AXI_transactor->ARADDR(m04_axi_araddr);
    mp_M04_AXI_transactor->ARLEN(m04_axi_arlen);
    mp_M04_AXI_transactor->ARSIZE(m04_axi_arsize);
    mp_M04_AXI_transactor->ARBURST(m04_axi_arburst);
    mp_M04_AXI_transactor->ARLOCK(m04_axi_arlock);
    mp_M04_AXI_transactor->ARCACHE(m04_axi_arcache);
    mp_M04_AXI_transactor->ARPROT(m04_axi_arprot);
    mp_M04_AXI_transactor->ARQOS(m04_axi_arqos);
    mp_M04_AXI_transactor->ARUSER(m04_axi_aruser);
    mp_M04_AXI_transactor->ARVALID(m04_axi_arvalid);
    mp_M04_AXI_transactor->ARREADY(m04_axi_arready);
    mp_M04_AXI_transactor->RID(m04_axi_rid);
    mp_M04_AXI_transactor->RDATA(m04_axi_rdata);
    mp_M04_AXI_transactor->RRESP(m04_axi_rresp);
    mp_M04_AXI_transactor->RLAST(m04_axi_rlast);
    mp_M04_AXI_transactor->RUSER(m04_axi_ruser);
    mp_M04_AXI_transactor->RVALID(m04_axi_rvalid);
    mp_M04_AXI_transactor->RREADY(m04_axi_rready);
    mp_M04_AXI_transactor->CLK(m04_axi_aclk);
    mp_M04_AXI_transactor->RST(m04_axi_aresetn);

    // M04_AXI' transactor sockets

    mp_impl->initiator_4_rd_socket->bind(*(mp_M04_AXI_transactor->rd_socket));
    mp_impl->initiator_4_wr_socket->bind(*(mp_M04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M05_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M05_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M05_AXI' transactor parameters
    xsc::common_cpp::properties M05_AXI_transactor_param_props;
    M05_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M05_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M05_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "17");
    M05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M05_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M05_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M05_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M05_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M05_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M05_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M05_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M05_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,17,1,1,1,1,1,1>("M05_AXI_transactor", M05_AXI_transactor_param_props);

    // M05_AXI' transactor ports

    mp_M05_AXI_transactor->AWID(m05_axi_awid);
    mp_M05_AXI_transactor->AWADDR(m05_axi_awaddr);
    mp_M05_AXI_transactor->AWLEN(m05_axi_awlen);
    mp_M05_AXI_transactor->AWSIZE(m05_axi_awsize);
    mp_M05_AXI_transactor->AWBURST(m05_axi_awburst);
    mp_M05_AXI_transactor->AWLOCK(m05_axi_awlock);
    mp_M05_AXI_transactor->AWCACHE(m05_axi_awcache);
    mp_M05_AXI_transactor->AWPROT(m05_axi_awprot);
    mp_M05_AXI_transactor->AWQOS(m05_axi_awqos);
    mp_M05_AXI_transactor->AWUSER(m05_axi_awuser);
    mp_M05_AXI_transactor->AWVALID(m05_axi_awvalid);
    mp_M05_AXI_transactor->AWREADY(m05_axi_awready);
    mp_M05_AXI_transactor->WDATA(m05_axi_wdata);
    mp_M05_AXI_transactor->WSTRB(m05_axi_wstrb);
    mp_M05_AXI_transactor->WLAST(m05_axi_wlast);
    mp_M05_AXI_transactor->WUSER(m05_axi_wuser);
    mp_M05_AXI_transactor->WVALID(m05_axi_wvalid);
    mp_M05_AXI_transactor->WREADY(m05_axi_wready);
    mp_M05_AXI_transactor->BID(m05_axi_bid);
    mp_M05_AXI_transactor->BRESP(m05_axi_bresp);
    mp_M05_AXI_transactor->BUSER(m05_axi_buser);
    mp_M05_AXI_transactor->BVALID(m05_axi_bvalid);
    mp_M05_AXI_transactor->BREADY(m05_axi_bready);
    mp_M05_AXI_transactor->ARID(m05_axi_arid);
    mp_M05_AXI_transactor->ARADDR(m05_axi_araddr);
    mp_M05_AXI_transactor->ARLEN(m05_axi_arlen);
    mp_M05_AXI_transactor->ARSIZE(m05_axi_arsize);
    mp_M05_AXI_transactor->ARBURST(m05_axi_arburst);
    mp_M05_AXI_transactor->ARLOCK(m05_axi_arlock);
    mp_M05_AXI_transactor->ARCACHE(m05_axi_arcache);
    mp_M05_AXI_transactor->ARPROT(m05_axi_arprot);
    mp_M05_AXI_transactor->ARQOS(m05_axi_arqos);
    mp_M05_AXI_transactor->ARUSER(m05_axi_aruser);
    mp_M05_AXI_transactor->ARVALID(m05_axi_arvalid);
    mp_M05_AXI_transactor->ARREADY(m05_axi_arready);
    mp_M05_AXI_transactor->RID(m05_axi_rid);
    mp_M05_AXI_transactor->RDATA(m05_axi_rdata);
    mp_M05_AXI_transactor->RRESP(m05_axi_rresp);
    mp_M05_AXI_transactor->RLAST(m05_axi_rlast);
    mp_M05_AXI_transactor->RUSER(m05_axi_ruser);
    mp_M05_AXI_transactor->RVALID(m05_axi_rvalid);
    mp_M05_AXI_transactor->RREADY(m05_axi_rready);
    mp_M05_AXI_transactor->CLK(m05_axi_aclk);
    mp_M05_AXI_transactor->RST(m05_axi_aresetn);

    // M05_AXI' transactor sockets

    mp_impl->initiator_5_rd_socket->bind(*(mp_M05_AXI_transactor->rd_socket));
    mp_impl->initiator_5_wr_socket->bind(*(mp_M05_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M06_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M06_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M06_AXI' transactor parameters
    xsc::common_cpp::properties M06_AXI_transactor_param_props;
    M06_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M06_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M06_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "17");
    M06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M06_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M06_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M06_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M06_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M06_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M06_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M06_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M06_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M06_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,17,1,1,1,1,1,1>("M06_AXI_transactor", M06_AXI_transactor_param_props);

    // M06_AXI' transactor ports

    mp_M06_AXI_transactor->AWID(m06_axi_awid);
    mp_M06_AXI_transactor->AWADDR(m06_axi_awaddr);
    mp_M06_AXI_transactor->AWLEN(m06_axi_awlen);
    mp_M06_AXI_transactor->AWSIZE(m06_axi_awsize);
    mp_M06_AXI_transactor->AWBURST(m06_axi_awburst);
    mp_M06_AXI_transactor->AWLOCK(m06_axi_awlock);
    mp_M06_AXI_transactor->AWCACHE(m06_axi_awcache);
    mp_M06_AXI_transactor->AWPROT(m06_axi_awprot);
    mp_M06_AXI_transactor->AWQOS(m06_axi_awqos);
    mp_M06_AXI_transactor->AWUSER(m06_axi_awuser);
    mp_M06_AXI_transactor->AWVALID(m06_axi_awvalid);
    mp_M06_AXI_transactor->AWREADY(m06_axi_awready);
    mp_M06_AXI_transactor->WDATA(m06_axi_wdata);
    mp_M06_AXI_transactor->WSTRB(m06_axi_wstrb);
    mp_M06_AXI_transactor->WLAST(m06_axi_wlast);
    mp_M06_AXI_transactor->WUSER(m06_axi_wuser);
    mp_M06_AXI_transactor->WVALID(m06_axi_wvalid);
    mp_M06_AXI_transactor->WREADY(m06_axi_wready);
    mp_M06_AXI_transactor->BID(m06_axi_bid);
    mp_M06_AXI_transactor->BRESP(m06_axi_bresp);
    mp_M06_AXI_transactor->BUSER(m06_axi_buser);
    mp_M06_AXI_transactor->BVALID(m06_axi_bvalid);
    mp_M06_AXI_transactor->BREADY(m06_axi_bready);
    mp_M06_AXI_transactor->ARID(m06_axi_arid);
    mp_M06_AXI_transactor->ARADDR(m06_axi_araddr);
    mp_M06_AXI_transactor->ARLEN(m06_axi_arlen);
    mp_M06_AXI_transactor->ARSIZE(m06_axi_arsize);
    mp_M06_AXI_transactor->ARBURST(m06_axi_arburst);
    mp_M06_AXI_transactor->ARLOCK(m06_axi_arlock);
    mp_M06_AXI_transactor->ARCACHE(m06_axi_arcache);
    mp_M06_AXI_transactor->ARPROT(m06_axi_arprot);
    mp_M06_AXI_transactor->ARQOS(m06_axi_arqos);
    mp_M06_AXI_transactor->ARUSER(m06_axi_aruser);
    mp_M06_AXI_transactor->ARVALID(m06_axi_arvalid);
    mp_M06_AXI_transactor->ARREADY(m06_axi_arready);
    mp_M06_AXI_transactor->RID(m06_axi_rid);
    mp_M06_AXI_transactor->RDATA(m06_axi_rdata);
    mp_M06_AXI_transactor->RRESP(m06_axi_rresp);
    mp_M06_AXI_transactor->RLAST(m06_axi_rlast);
    mp_M06_AXI_transactor->RUSER(m06_axi_ruser);
    mp_M06_AXI_transactor->RVALID(m06_axi_rvalid);
    mp_M06_AXI_transactor->RREADY(m06_axi_rready);
    mp_M06_AXI_transactor->CLK(m06_axi_aclk);
    mp_M06_AXI_transactor->RST(m06_axi_aresetn);

    // M06_AXI' transactor sockets

    mp_impl->initiator_6_rd_socket->bind(*(mp_M06_AXI_transactor->rd_socket));
    mp_impl->initiator_6_wr_socket->bind(*(mp_M06_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
bd_d216_xtlm_simple_intercon_0_0::bd_d216_xtlm_simple_intercon_0_0(const sc_core::sc_module_name& nm) : bd_d216_xtlm_simple_intercon_0_0_sc(nm),  s00_axi_awid("s00_axi_awid"), s00_axi_awaddr("s00_axi_awaddr"), s00_axi_awlen("s00_axi_awlen"), s00_axi_awsize("s00_axi_awsize"), s00_axi_awburst("s00_axi_awburst"), s00_axi_awlock("s00_axi_awlock"), s00_axi_awcache("s00_axi_awcache"), s00_axi_awprot("s00_axi_awprot"), s00_axi_awqos("s00_axi_awqos"), s00_axi_awuser("s00_axi_awuser"), s00_axi_awvalid("s00_axi_awvalid"), s00_axi_awready("s00_axi_awready"), s00_axi_wdata("s00_axi_wdata"), s00_axi_wstrb("s00_axi_wstrb"), s00_axi_wlast("s00_axi_wlast"), s00_axi_wuser("s00_axi_wuser"), s00_axi_wvalid("s00_axi_wvalid"), s00_axi_wready("s00_axi_wready"), s00_axi_bid("s00_axi_bid"), s00_axi_bresp("s00_axi_bresp"), s00_axi_buser("s00_axi_buser"), s00_axi_bvalid("s00_axi_bvalid"), s00_axi_bready("s00_axi_bready"), s00_axi_arid("s00_axi_arid"), s00_axi_araddr("s00_axi_araddr"), s00_axi_arlen("s00_axi_arlen"), s00_axi_arsize("s00_axi_arsize"), s00_axi_arburst("s00_axi_arburst"), s00_axi_arlock("s00_axi_arlock"), s00_axi_arcache("s00_axi_arcache"), s00_axi_arprot("s00_axi_arprot"), s00_axi_arqos("s00_axi_arqos"), s00_axi_aruser("s00_axi_aruser"), s00_axi_arvalid("s00_axi_arvalid"), s00_axi_arready("s00_axi_arready"), s00_axi_rid("s00_axi_rid"), s00_axi_rdata("s00_axi_rdata"), s00_axi_rresp("s00_axi_rresp"), s00_axi_rlast("s00_axi_rlast"), s00_axi_ruser("s00_axi_ruser"), s00_axi_rvalid("s00_axi_rvalid"), s00_axi_rready("s00_axi_rready"), s00_axi_aclk("s00_axi_aclk"), s00_axi_aresetn("s00_axi_aresetn"), m00_axi_awid("m00_axi_awid"), m00_axi_awaddr("m00_axi_awaddr"), m00_axi_awlen("m00_axi_awlen"), m00_axi_awsize("m00_axi_awsize"), m00_axi_awburst("m00_axi_awburst"), m00_axi_awlock("m00_axi_awlock"), m00_axi_awcache("m00_axi_awcache"), m00_axi_awprot("m00_axi_awprot"), m00_axi_awqos("m00_axi_awqos"), m00_axi_awuser("m00_axi_awuser"), m00_axi_awvalid("m00_axi_awvalid"), m00_axi_awready("m00_axi_awready"), m00_axi_wdata("m00_axi_wdata"), m00_axi_wstrb("m00_axi_wstrb"), m00_axi_wlast("m00_axi_wlast"), m00_axi_wuser("m00_axi_wuser"), m00_axi_wvalid("m00_axi_wvalid"), m00_axi_wready("m00_axi_wready"), m00_axi_bid("m00_axi_bid"), m00_axi_bresp("m00_axi_bresp"), m00_axi_buser("m00_axi_buser"), m00_axi_bvalid("m00_axi_bvalid"), m00_axi_bready("m00_axi_bready"), m00_axi_arid("m00_axi_arid"), m00_axi_araddr("m00_axi_araddr"), m00_axi_arlen("m00_axi_arlen"), m00_axi_arsize("m00_axi_arsize"), m00_axi_arburst("m00_axi_arburst"), m00_axi_arlock("m00_axi_arlock"), m00_axi_arcache("m00_axi_arcache"), m00_axi_arprot("m00_axi_arprot"), m00_axi_arqos("m00_axi_arqos"), m00_axi_aruser("m00_axi_aruser"), m00_axi_arvalid("m00_axi_arvalid"), m00_axi_arready("m00_axi_arready"), m00_axi_rid("m00_axi_rid"), m00_axi_rdata("m00_axi_rdata"), m00_axi_rresp("m00_axi_rresp"), m00_axi_rlast("m00_axi_rlast"), m00_axi_ruser("m00_axi_ruser"), m00_axi_rvalid("m00_axi_rvalid"), m00_axi_rready("m00_axi_rready"), m00_axi_aclk("m00_axi_aclk"), m00_axi_aresetn("m00_axi_aresetn"), m02_axi_awid("m02_axi_awid"), m02_axi_awaddr("m02_axi_awaddr"), m02_axi_awlen("m02_axi_awlen"), m02_axi_awsize("m02_axi_awsize"), m02_axi_awburst("m02_axi_awburst"), m02_axi_awlock("m02_axi_awlock"), m02_axi_awcache("m02_axi_awcache"), m02_axi_awprot("m02_axi_awprot"), m02_axi_awqos("m02_axi_awqos"), m02_axi_awuser("m02_axi_awuser"), m02_axi_awvalid("m02_axi_awvalid"), m02_axi_awready("m02_axi_awready"), m02_axi_wdata("m02_axi_wdata"), m02_axi_wstrb("m02_axi_wstrb"), m02_axi_wlast("m02_axi_wlast"), m02_axi_wuser("m02_axi_wuser"), m02_axi_wvalid("m02_axi_wvalid"), m02_axi_wready("m02_axi_wready"), m02_axi_bid("m02_axi_bid"), m02_axi_bresp("m02_axi_bresp"), m02_axi_buser("m02_axi_buser"), m02_axi_bvalid("m02_axi_bvalid"), m02_axi_bready("m02_axi_bready"), m02_axi_arid("m02_axi_arid"), m02_axi_araddr("m02_axi_araddr"), m02_axi_arlen("m02_axi_arlen"), m02_axi_arsize("m02_axi_arsize"), m02_axi_arburst("m02_axi_arburst"), m02_axi_arlock("m02_axi_arlock"), m02_axi_arcache("m02_axi_arcache"), m02_axi_arprot("m02_axi_arprot"), m02_axi_arqos("m02_axi_arqos"), m02_axi_aruser("m02_axi_aruser"), m02_axi_arvalid("m02_axi_arvalid"), m02_axi_arready("m02_axi_arready"), m02_axi_rid("m02_axi_rid"), m02_axi_rdata("m02_axi_rdata"), m02_axi_rresp("m02_axi_rresp"), m02_axi_rlast("m02_axi_rlast"), m02_axi_ruser("m02_axi_ruser"), m02_axi_rvalid("m02_axi_rvalid"), m02_axi_rready("m02_axi_rready"), m02_axi_aclk("m02_axi_aclk"), m02_axi_aresetn("m02_axi_aresetn"), m05_axi_awid("m05_axi_awid"), m05_axi_awaddr("m05_axi_awaddr"), m05_axi_awlen("m05_axi_awlen"), m05_axi_awsize("m05_axi_awsize"), m05_axi_awburst("m05_axi_awburst"), m05_axi_awlock("m05_axi_awlock"), m05_axi_awcache("m05_axi_awcache"), m05_axi_awprot("m05_axi_awprot"), m05_axi_awqos("m05_axi_awqos"), m05_axi_awuser("m05_axi_awuser"), m05_axi_awvalid("m05_axi_awvalid"), m05_axi_awready("m05_axi_awready"), m05_axi_wdata("m05_axi_wdata"), m05_axi_wstrb("m05_axi_wstrb"), m05_axi_wlast("m05_axi_wlast"), m05_axi_wuser("m05_axi_wuser"), m05_axi_wvalid("m05_axi_wvalid"), m05_axi_wready("m05_axi_wready"), m05_axi_bid("m05_axi_bid"), m05_axi_bresp("m05_axi_bresp"), m05_axi_buser("m05_axi_buser"), m05_axi_bvalid("m05_axi_bvalid"), m05_axi_bready("m05_axi_bready"), m05_axi_arid("m05_axi_arid"), m05_axi_araddr("m05_axi_araddr"), m05_axi_arlen("m05_axi_arlen"), m05_axi_arsize("m05_axi_arsize"), m05_axi_arburst("m05_axi_arburst"), m05_axi_arlock("m05_axi_arlock"), m05_axi_arcache("m05_axi_arcache"), m05_axi_arprot("m05_axi_arprot"), m05_axi_arqos("m05_axi_arqos"), m05_axi_aruser("m05_axi_aruser"), m05_axi_arvalid("m05_axi_arvalid"), m05_axi_arready("m05_axi_arready"), m05_axi_rid("m05_axi_rid"), m05_axi_rdata("m05_axi_rdata"), m05_axi_rresp("m05_axi_rresp"), m05_axi_rlast("m05_axi_rlast"), m05_axi_ruser("m05_axi_ruser"), m05_axi_rvalid("m05_axi_rvalid"), m05_axi_rready("m05_axi_rready"), m05_axi_aclk("m05_axi_aclk"), m05_axi_aresetn("m05_axi_aresetn"), m03_axi_awid("m03_axi_awid"), m03_axi_awaddr("m03_axi_awaddr"), m03_axi_awlen("m03_axi_awlen"), m03_axi_awsize("m03_axi_awsize"), m03_axi_awburst("m03_axi_awburst"), m03_axi_awlock("m03_axi_awlock"), m03_axi_awcache("m03_axi_awcache"), m03_axi_awprot("m03_axi_awprot"), m03_axi_awqos("m03_axi_awqos"), m03_axi_awuser("m03_axi_awuser"), m03_axi_awvalid("m03_axi_awvalid"), m03_axi_awready("m03_axi_awready"), m03_axi_wdata("m03_axi_wdata"), m03_axi_wstrb("m03_axi_wstrb"), m03_axi_wlast("m03_axi_wlast"), m03_axi_wuser("m03_axi_wuser"), m03_axi_wvalid("m03_axi_wvalid"), m03_axi_wready("m03_axi_wready"), m03_axi_bid("m03_axi_bid"), m03_axi_bresp("m03_axi_bresp"), m03_axi_buser("m03_axi_buser"), m03_axi_bvalid("m03_axi_bvalid"), m03_axi_bready("m03_axi_bready"), m03_axi_arid("m03_axi_arid"), m03_axi_araddr("m03_axi_araddr"), m03_axi_arlen("m03_axi_arlen"), m03_axi_arsize("m03_axi_arsize"), m03_axi_arburst("m03_axi_arburst"), m03_axi_arlock("m03_axi_arlock"), m03_axi_arcache("m03_axi_arcache"), m03_axi_arprot("m03_axi_arprot"), m03_axi_arqos("m03_axi_arqos"), m03_axi_aruser("m03_axi_aruser"), m03_axi_arvalid("m03_axi_arvalid"), m03_axi_arready("m03_axi_arready"), m03_axi_rid("m03_axi_rid"), m03_axi_rdata("m03_axi_rdata"), m03_axi_rresp("m03_axi_rresp"), m03_axi_rlast("m03_axi_rlast"), m03_axi_ruser("m03_axi_ruser"), m03_axi_rvalid("m03_axi_rvalid"), m03_axi_rready("m03_axi_rready"), m03_axi_aclk("m03_axi_aclk"), m03_axi_aresetn("m03_axi_aresetn"), m04_axi_awid("m04_axi_awid"), m04_axi_awaddr("m04_axi_awaddr"), m04_axi_awlen("m04_axi_awlen"), m04_axi_awsize("m04_axi_awsize"), m04_axi_awburst("m04_axi_awburst"), m04_axi_awlock("m04_axi_awlock"), m04_axi_awcache("m04_axi_awcache"), m04_axi_awprot("m04_axi_awprot"), m04_axi_awqos("m04_axi_awqos"), m04_axi_awuser("m04_axi_awuser"), m04_axi_awvalid("m04_axi_awvalid"), m04_axi_awready("m04_axi_awready"), m04_axi_wdata("m04_axi_wdata"), m04_axi_wstrb("m04_axi_wstrb"), m04_axi_wlast("m04_axi_wlast"), m04_axi_wuser("m04_axi_wuser"), m04_axi_wvalid("m04_axi_wvalid"), m04_axi_wready("m04_axi_wready"), m04_axi_bid("m04_axi_bid"), m04_axi_bresp("m04_axi_bresp"), m04_axi_buser("m04_axi_buser"), m04_axi_bvalid("m04_axi_bvalid"), m04_axi_bready("m04_axi_bready"), m04_axi_arid("m04_axi_arid"), m04_axi_araddr("m04_axi_araddr"), m04_axi_arlen("m04_axi_arlen"), m04_axi_arsize("m04_axi_arsize"), m04_axi_arburst("m04_axi_arburst"), m04_axi_arlock("m04_axi_arlock"), m04_axi_arcache("m04_axi_arcache"), m04_axi_arprot("m04_axi_arprot"), m04_axi_arqos("m04_axi_arqos"), m04_axi_aruser("m04_axi_aruser"), m04_axi_arvalid("m04_axi_arvalid"), m04_axi_arready("m04_axi_arready"), m04_axi_rid("m04_axi_rid"), m04_axi_rdata("m04_axi_rdata"), m04_axi_rresp("m04_axi_rresp"), m04_axi_rlast("m04_axi_rlast"), m04_axi_ruser("m04_axi_ruser"), m04_axi_rvalid("m04_axi_rvalid"), m04_axi_rready("m04_axi_rready"), m04_axi_aclk("m04_axi_aclk"), m04_axi_aresetn("m04_axi_aresetn"), m06_axi_awid("m06_axi_awid"), m06_axi_awaddr("m06_axi_awaddr"), m06_axi_awlen("m06_axi_awlen"), m06_axi_awsize("m06_axi_awsize"), m06_axi_awburst("m06_axi_awburst"), m06_axi_awlock("m06_axi_awlock"), m06_axi_awcache("m06_axi_awcache"), m06_axi_awprot("m06_axi_awprot"), m06_axi_awqos("m06_axi_awqos"), m06_axi_awuser("m06_axi_awuser"), m06_axi_awvalid("m06_axi_awvalid"), m06_axi_awready("m06_axi_awready"), m06_axi_wdata("m06_axi_wdata"), m06_axi_wstrb("m06_axi_wstrb"), m06_axi_wlast("m06_axi_wlast"), m06_axi_wuser("m06_axi_wuser"), m06_axi_wvalid("m06_axi_wvalid"), m06_axi_wready("m06_axi_wready"), m06_axi_bid("m06_axi_bid"), m06_axi_bresp("m06_axi_bresp"), m06_axi_buser("m06_axi_buser"), m06_axi_bvalid("m06_axi_bvalid"), m06_axi_bready("m06_axi_bready"), m06_axi_arid("m06_axi_arid"), m06_axi_araddr("m06_axi_araddr"), m06_axi_arlen("m06_axi_arlen"), m06_axi_arsize("m06_axi_arsize"), m06_axi_arburst("m06_axi_arburst"), m06_axi_arlock("m06_axi_arlock"), m06_axi_arcache("m06_axi_arcache"), m06_axi_arprot("m06_axi_arprot"), m06_axi_arqos("m06_axi_arqos"), m06_axi_aruser("m06_axi_aruser"), m06_axi_arvalid("m06_axi_arvalid"), m06_axi_arready("m06_axi_arready"), m06_axi_rid("m06_axi_rid"), m06_axi_rdata("m06_axi_rdata"), m06_axi_rresp("m06_axi_rresp"), m06_axi_rlast("m06_axi_rlast"), m06_axi_ruser("m06_axi_ruser"), m06_axi_rvalid("m06_axi_rvalid"), m06_axi_rready("m06_axi_rready"), m06_axi_aclk("m06_axi_aclk"), m06_axi_aresetn("m06_axi_aresetn"), m01_axi_awaddr("m01_axi_awaddr"), m01_axi_awlen("m01_axi_awlen"), m01_axi_awsize("m01_axi_awsize"), m01_axi_awburst("m01_axi_awburst"), m01_axi_awprot("m01_axi_awprot"), m01_axi_awvalid("m01_axi_awvalid"), m01_axi_awready("m01_axi_awready"), m01_axi_wdata("m01_axi_wdata"), m01_axi_wstrb("m01_axi_wstrb"), m01_axi_wlast("m01_axi_wlast"), m01_axi_wvalid("m01_axi_wvalid"), m01_axi_wready("m01_axi_wready"), m01_axi_bresp("m01_axi_bresp"), m01_axi_bvalid("m01_axi_bvalid"), m01_axi_bready("m01_axi_bready"), m01_axi_araddr("m01_axi_araddr"), m01_axi_arlen("m01_axi_arlen"), m01_axi_arsize("m01_axi_arsize"), m01_axi_arburst("m01_axi_arburst"), m01_axi_arprot("m01_axi_arprot"), m01_axi_arvalid("m01_axi_arvalid"), m01_axi_arready("m01_axi_arready"), m01_axi_rdata("m01_axi_rdata"), m01_axi_rresp("m01_axi_rresp"), m01_axi_rlast("m01_axi_rlast"), m01_axi_rvalid("m01_axi_rvalid"), m01_axi_rready("m01_axi_rready"), m01_axi_aclk("m01_axi_aclk"), m01_axi_aresetn("m01_axi_aresetn"), s03_axi_awid("s03_axi_awid"), s03_axi_awaddr("s03_axi_awaddr"), s03_axi_awlen("s03_axi_awlen"), s03_axi_awsize("s03_axi_awsize"), s03_axi_awburst("s03_axi_awburst"), s03_axi_awlock("s03_axi_awlock"), s03_axi_awcache("s03_axi_awcache"), s03_axi_awprot("s03_axi_awprot"), s03_axi_awqos("s03_axi_awqos"), s03_axi_awuser("s03_axi_awuser"), s03_axi_awvalid("s03_axi_awvalid"), s03_axi_awready("s03_axi_awready"), s03_axi_wdata("s03_axi_wdata"), s03_axi_wstrb("s03_axi_wstrb"), s03_axi_wlast("s03_axi_wlast"), s03_axi_wuser("s03_axi_wuser"), s03_axi_wvalid("s03_axi_wvalid"), s03_axi_wready("s03_axi_wready"), s03_axi_bid("s03_axi_bid"), s03_axi_bresp("s03_axi_bresp"), s03_axi_buser("s03_axi_buser"), s03_axi_bvalid("s03_axi_bvalid"), s03_axi_bready("s03_axi_bready"), s03_axi_arid("s03_axi_arid"), s03_axi_araddr("s03_axi_araddr"), s03_axi_arlen("s03_axi_arlen"), s03_axi_arsize("s03_axi_arsize"), s03_axi_arburst("s03_axi_arburst"), s03_axi_arlock("s03_axi_arlock"), s03_axi_arcache("s03_axi_arcache"), s03_axi_arprot("s03_axi_arprot"), s03_axi_arqos("s03_axi_arqos"), s03_axi_aruser("s03_axi_aruser"), s03_axi_arvalid("s03_axi_arvalid"), s03_axi_arready("s03_axi_arready"), s03_axi_rid("s03_axi_rid"), s03_axi_rdata("s03_axi_rdata"), s03_axi_rresp("s03_axi_rresp"), s03_axi_rlast("s03_axi_rlast"), s03_axi_ruser("s03_axi_ruser"), s03_axi_rvalid("s03_axi_rvalid"), s03_axi_rready("s03_axi_rready"), s03_axi_aclk("s03_axi_aclk"), s03_axi_aresetn("s03_axi_aresetn"), s01_axi_awid("s01_axi_awid"), s01_axi_awaddr("s01_axi_awaddr"), s01_axi_awlen("s01_axi_awlen"), s01_axi_awsize("s01_axi_awsize"), s01_axi_awburst("s01_axi_awburst"), s01_axi_awlock("s01_axi_awlock"), s01_axi_awcache("s01_axi_awcache"), s01_axi_awprot("s01_axi_awprot"), s01_axi_awqos("s01_axi_awqos"), s01_axi_awuser("s01_axi_awuser"), s01_axi_awvalid("s01_axi_awvalid"), s01_axi_awready("s01_axi_awready"), s01_axi_wdata("s01_axi_wdata"), s01_axi_wstrb("s01_axi_wstrb"), s01_axi_wlast("s01_axi_wlast"), s01_axi_wuser("s01_axi_wuser"), s01_axi_wvalid("s01_axi_wvalid"), s01_axi_wready("s01_axi_wready"), s01_axi_bid("s01_axi_bid"), s01_axi_bresp("s01_axi_bresp"), s01_axi_buser("s01_axi_buser"), s01_axi_bvalid("s01_axi_bvalid"), s01_axi_bready("s01_axi_bready"), s01_axi_arid("s01_axi_arid"), s01_axi_araddr("s01_axi_araddr"), s01_axi_arlen("s01_axi_arlen"), s01_axi_arsize("s01_axi_arsize"), s01_axi_arburst("s01_axi_arburst"), s01_axi_arlock("s01_axi_arlock"), s01_axi_arcache("s01_axi_arcache"), s01_axi_arprot("s01_axi_arprot"), s01_axi_arqos("s01_axi_arqos"), s01_axi_aruser("s01_axi_aruser"), s01_axi_arvalid("s01_axi_arvalid"), s01_axi_arready("s01_axi_arready"), s01_axi_rid("s01_axi_rid"), s01_axi_rdata("s01_axi_rdata"), s01_axi_rresp("s01_axi_rresp"), s01_axi_rlast("s01_axi_rlast"), s01_axi_ruser("s01_axi_ruser"), s01_axi_rvalid("s01_axi_rvalid"), s01_axi_rready("s01_axi_rready"), s01_axi_aclk("s01_axi_aclk"), s01_axi_aresetn("s01_axi_aresetn"), s02_axi_awid("s02_axi_awid"), s02_axi_awaddr("s02_axi_awaddr"), s02_axi_awlen("s02_axi_awlen"), s02_axi_awsize("s02_axi_awsize"), s02_axi_awburst("s02_axi_awburst"), s02_axi_awlock("s02_axi_awlock"), s02_axi_awcache("s02_axi_awcache"), s02_axi_awprot("s02_axi_awprot"), s02_axi_awqos("s02_axi_awqos"), s02_axi_awuser("s02_axi_awuser"), s02_axi_awvalid("s02_axi_awvalid"), s02_axi_awready("s02_axi_awready"), s02_axi_wdata("s02_axi_wdata"), s02_axi_wstrb("s02_axi_wstrb"), s02_axi_wlast("s02_axi_wlast"), s02_axi_wuser("s02_axi_wuser"), s02_axi_wvalid("s02_axi_wvalid"), s02_axi_wready("s02_axi_wready"), s02_axi_bid("s02_axi_bid"), s02_axi_bresp("s02_axi_bresp"), s02_axi_buser("s02_axi_buser"), s02_axi_bvalid("s02_axi_bvalid"), s02_axi_bready("s02_axi_bready"), s02_axi_arid("s02_axi_arid"), s02_axi_araddr("s02_axi_araddr"), s02_axi_arlen("s02_axi_arlen"), s02_axi_arsize("s02_axi_arsize"), s02_axi_arburst("s02_axi_arburst"), s02_axi_arlock("s02_axi_arlock"), s02_axi_arcache("s02_axi_arcache"), s02_axi_arprot("s02_axi_arprot"), s02_axi_arqos("s02_axi_arqos"), s02_axi_aruser("s02_axi_aruser"), s02_axi_arvalid("s02_axi_arvalid"), s02_axi_arready("s02_axi_arready"), s02_axi_rid("s02_axi_rid"), s02_axi_rdata("s02_axi_rdata"), s02_axi_rresp("s02_axi_rresp"), s02_axi_rlast("s02_axi_rlast"), s02_axi_ruser("s02_axi_ruser"), s02_axi_rvalid("s02_axi_rvalid"), s02_axi_rready("s02_axi_rready"), s02_axi_aclk("s02_axi_aclk"), s02_axi_aresetn("s02_axi_aresetn"), s04_axi_awaddr("s04_axi_awaddr"), s04_axi_awlen("s04_axi_awlen"), s04_axi_awsize("s04_axi_awsize"), s04_axi_awlock("s04_axi_awlock"), s04_axi_awcache("s04_axi_awcache"), s04_axi_awprot("s04_axi_awprot"), s04_axi_awregion("s04_axi_awregion"), s04_axi_awqos("s04_axi_awqos"), s04_axi_awvalid("s04_axi_awvalid"), s04_axi_awready("s04_axi_awready"), s04_axi_wdata("s04_axi_wdata"), s04_axi_wstrb("s04_axi_wstrb"), s04_axi_wlast("s04_axi_wlast"), s04_axi_wvalid("s04_axi_wvalid"), s04_axi_wready("s04_axi_wready"), s04_axi_bresp("s04_axi_bresp"), s04_axi_bvalid("s04_axi_bvalid"), s04_axi_bready("s04_axi_bready"), s04_axi_araddr("s04_axi_araddr"), s04_axi_arlen("s04_axi_arlen"), s04_axi_arsize("s04_axi_arsize"), s04_axi_arlock("s04_axi_arlock"), s04_axi_arcache("s04_axi_arcache"), s04_axi_arprot("s04_axi_arprot"), s04_axi_arregion("s04_axi_arregion"), s04_axi_arqos("s04_axi_arqos"), s04_axi_arvalid("s04_axi_arvalid"), s04_axi_arready("s04_axi_arready"), s04_axi_rdata("s04_axi_rdata"), s04_axi_rresp("s04_axi_rresp"), s04_axi_rlast("s04_axi_rlast"), s04_axi_rvalid("s04_axi_rvalid"), s04_axi_rready("s04_axi_rready"), s04_axi_aclk("s04_axi_aclk"), s04_axi_aresetn("s04_axi_aresetn")
{
  // initialize pins
  mp_impl->s00_axi_aclk(s00_axi_aclk);
  mp_impl->s00_axi_aresetn(s00_axi_aresetn);
  mp_impl->m00_axi_aclk(m00_axi_aclk);
  mp_impl->m00_axi_aresetn(m00_axi_aresetn);
  mp_impl->m02_axi_aclk(m02_axi_aclk);
  mp_impl->m02_axi_aresetn(m02_axi_aresetn);
  mp_impl->m05_axi_aclk(m05_axi_aclk);
  mp_impl->m05_axi_aresetn(m05_axi_aresetn);
  mp_impl->m03_axi_aclk(m03_axi_aclk);
  mp_impl->m03_axi_aresetn(m03_axi_aresetn);
  mp_impl->m04_axi_aclk(m04_axi_aclk);
  mp_impl->m04_axi_aresetn(m04_axi_aresetn);
  mp_impl->m06_axi_aclk(m06_axi_aclk);
  mp_impl->m06_axi_aresetn(m06_axi_aresetn);
  mp_impl->m01_axi_aclk(m01_axi_aclk);
  mp_impl->m01_axi_aresetn(m01_axi_aresetn);
  mp_impl->s03_axi_aclk(s03_axi_aclk);
  mp_impl->s03_axi_aresetn(s03_axi_aresetn);
  mp_impl->s01_axi_aclk(s01_axi_aclk);
  mp_impl->s01_axi_aresetn(s01_axi_aresetn);
  mp_impl->s02_axi_aclk(s02_axi_aclk);
  mp_impl->s02_axi_aresetn(s02_axi_aresetn);
  mp_impl->s04_axi_aclk(s04_axi_aclk);
  mp_impl->s04_axi_aresetn(s04_axi_aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_M02_AXI_transactor = NULL;
  mp_M03_AXI_transactor = NULL;
  mp_M04_AXI_transactor = NULL;
  mp_M05_AXI_transactor = NULL;
  mp_M06_AXI_transactor = NULL;

  // Instantiate Socket Stubs

  // configure S00_AXI_transactor
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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
  mp_S00_AXI_transactor->AWID(s00_axi_awid);
  mp_S00_AXI_transactor->AWADDR(s00_axi_awaddr);
  mp_S00_AXI_transactor->AWLEN(s00_axi_awlen);
  mp_S00_AXI_transactor->AWSIZE(s00_axi_awsize);
  mp_S00_AXI_transactor->AWBURST(s00_axi_awburst);
  mp_S00_AXI_transactor->AWLOCK(s00_axi_awlock);
  mp_S00_AXI_transactor->AWCACHE(s00_axi_awcache);
  mp_S00_AXI_transactor->AWPROT(s00_axi_awprot);
  mp_S00_AXI_transactor->AWQOS(s00_axi_awqos);
  mp_S00_AXI_transactor->AWUSER(s00_axi_awuser);
  mp_S00_AXI_transactor->AWVALID(s00_axi_awvalid);
  mp_S00_AXI_transactor->AWREADY(s00_axi_awready);
  mp_S00_AXI_transactor->WDATA(s00_axi_wdata);
  mp_S00_AXI_transactor->WSTRB(s00_axi_wstrb);
  mp_S00_AXI_transactor->WLAST(s00_axi_wlast);
  mp_S00_AXI_transactor->WUSER(s00_axi_wuser);
  mp_S00_AXI_transactor->WVALID(s00_axi_wvalid);
  mp_S00_AXI_transactor->WREADY(s00_axi_wready);
  mp_S00_AXI_transactor->BID(s00_axi_bid);
  mp_S00_AXI_transactor->BRESP(s00_axi_bresp);
  mp_S00_AXI_transactor->BUSER(s00_axi_buser);
  mp_S00_AXI_transactor->BVALID(s00_axi_bvalid);
  mp_S00_AXI_transactor->BREADY(s00_axi_bready);
  mp_S00_AXI_transactor->ARID(s00_axi_arid);
  mp_S00_AXI_transactor->ARADDR(s00_axi_araddr);
  mp_S00_AXI_transactor->ARLEN(s00_axi_arlen);
  mp_S00_AXI_transactor->ARSIZE(s00_axi_arsize);
  mp_S00_AXI_transactor->ARBURST(s00_axi_arburst);
  mp_S00_AXI_transactor->ARLOCK(s00_axi_arlock);
  mp_S00_AXI_transactor->ARCACHE(s00_axi_arcache);
  mp_S00_AXI_transactor->ARPROT(s00_axi_arprot);
  mp_S00_AXI_transactor->ARQOS(s00_axi_arqos);
  mp_S00_AXI_transactor->ARUSER(s00_axi_aruser);
  mp_S00_AXI_transactor->ARVALID(s00_axi_arvalid);
  mp_S00_AXI_transactor->ARREADY(s00_axi_arready);
  mp_S00_AXI_transactor->RID(s00_axi_rid);
  mp_S00_AXI_transactor->RDATA(s00_axi_rdata);
  mp_S00_AXI_transactor->RRESP(s00_axi_rresp);
  mp_S00_AXI_transactor->RLAST(s00_axi_rlast);
  mp_S00_AXI_transactor->RUSER(s00_axi_ruser);
  mp_S00_AXI_transactor->RVALID(s00_axi_rvalid);
  mp_S00_AXI_transactor->RREADY(s00_axi_rready);
  mp_S00_AXI_transactor->CLK(s00_axi_aclk);
  mp_S00_AXI_transactor->RST(s00_axi_aresetn);
  // configure S01_AXI_transactor
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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
  mp_S01_AXI_transactor->AWID(s01_axi_awid);
  mp_S01_AXI_transactor->AWADDR(s01_axi_awaddr);
  mp_S01_AXI_transactor->AWLEN(s01_axi_awlen);
  mp_S01_AXI_transactor->AWSIZE(s01_axi_awsize);
  mp_S01_AXI_transactor->AWBURST(s01_axi_awburst);
  mp_S01_AXI_transactor->AWLOCK(s01_axi_awlock);
  mp_S01_AXI_transactor->AWCACHE(s01_axi_awcache);
  mp_S01_AXI_transactor->AWPROT(s01_axi_awprot);
  mp_S01_AXI_transactor->AWQOS(s01_axi_awqos);
  mp_S01_AXI_transactor->AWUSER(s01_axi_awuser);
  mp_S01_AXI_transactor->AWVALID(s01_axi_awvalid);
  mp_S01_AXI_transactor->AWREADY(s01_axi_awready);
  mp_S01_AXI_transactor->WDATA(s01_axi_wdata);
  mp_S01_AXI_transactor->WSTRB(s01_axi_wstrb);
  mp_S01_AXI_transactor->WLAST(s01_axi_wlast);
  mp_S01_AXI_transactor->WUSER(s01_axi_wuser);
  mp_S01_AXI_transactor->WVALID(s01_axi_wvalid);
  mp_S01_AXI_transactor->WREADY(s01_axi_wready);
  mp_S01_AXI_transactor->BID(s01_axi_bid);
  mp_S01_AXI_transactor->BRESP(s01_axi_bresp);
  mp_S01_AXI_transactor->BUSER(s01_axi_buser);
  mp_S01_AXI_transactor->BVALID(s01_axi_bvalid);
  mp_S01_AXI_transactor->BREADY(s01_axi_bready);
  mp_S01_AXI_transactor->ARID(s01_axi_arid);
  mp_S01_AXI_transactor->ARADDR(s01_axi_araddr);
  mp_S01_AXI_transactor->ARLEN(s01_axi_arlen);
  mp_S01_AXI_transactor->ARSIZE(s01_axi_arsize);
  mp_S01_AXI_transactor->ARBURST(s01_axi_arburst);
  mp_S01_AXI_transactor->ARLOCK(s01_axi_arlock);
  mp_S01_AXI_transactor->ARCACHE(s01_axi_arcache);
  mp_S01_AXI_transactor->ARPROT(s01_axi_arprot);
  mp_S01_AXI_transactor->ARQOS(s01_axi_arqos);
  mp_S01_AXI_transactor->ARUSER(s01_axi_aruser);
  mp_S01_AXI_transactor->ARVALID(s01_axi_arvalid);
  mp_S01_AXI_transactor->ARREADY(s01_axi_arready);
  mp_S01_AXI_transactor->RID(s01_axi_rid);
  mp_S01_AXI_transactor->RDATA(s01_axi_rdata);
  mp_S01_AXI_transactor->RRESP(s01_axi_rresp);
  mp_S01_AXI_transactor->RLAST(s01_axi_rlast);
  mp_S01_AXI_transactor->RUSER(s01_axi_ruser);
  mp_S01_AXI_transactor->RVALID(s01_axi_rvalid);
  mp_S01_AXI_transactor->RREADY(s01_axi_rready);
  mp_S01_AXI_transactor->CLK(s01_axi_aclk);
  mp_S01_AXI_transactor->RST(s01_axi_aresetn);
  // configure S02_AXI_transactor
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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
  mp_S02_AXI_transactor->AWID(s02_axi_awid);
  mp_S02_AXI_transactor->AWADDR(s02_axi_awaddr);
  mp_S02_AXI_transactor->AWLEN(s02_axi_awlen);
  mp_S02_AXI_transactor->AWSIZE(s02_axi_awsize);
  mp_S02_AXI_transactor->AWBURST(s02_axi_awburst);
  mp_S02_AXI_transactor->AWLOCK(s02_axi_awlock);
  mp_S02_AXI_transactor->AWCACHE(s02_axi_awcache);
  mp_S02_AXI_transactor->AWPROT(s02_axi_awprot);
  mp_S02_AXI_transactor->AWQOS(s02_axi_awqos);
  mp_S02_AXI_transactor->AWUSER(s02_axi_awuser);
  mp_S02_AXI_transactor->AWVALID(s02_axi_awvalid);
  mp_S02_AXI_transactor->AWREADY(s02_axi_awready);
  mp_S02_AXI_transactor->WDATA(s02_axi_wdata);
  mp_S02_AXI_transactor->WSTRB(s02_axi_wstrb);
  mp_S02_AXI_transactor->WLAST(s02_axi_wlast);
  mp_S02_AXI_transactor->WUSER(s02_axi_wuser);
  mp_S02_AXI_transactor->WVALID(s02_axi_wvalid);
  mp_S02_AXI_transactor->WREADY(s02_axi_wready);
  mp_S02_AXI_transactor->BID(s02_axi_bid);
  mp_S02_AXI_transactor->BRESP(s02_axi_bresp);
  mp_S02_AXI_transactor->BUSER(s02_axi_buser);
  mp_S02_AXI_transactor->BVALID(s02_axi_bvalid);
  mp_S02_AXI_transactor->BREADY(s02_axi_bready);
  mp_S02_AXI_transactor->ARID(s02_axi_arid);
  mp_S02_AXI_transactor->ARADDR(s02_axi_araddr);
  mp_S02_AXI_transactor->ARLEN(s02_axi_arlen);
  mp_S02_AXI_transactor->ARSIZE(s02_axi_arsize);
  mp_S02_AXI_transactor->ARBURST(s02_axi_arburst);
  mp_S02_AXI_transactor->ARLOCK(s02_axi_arlock);
  mp_S02_AXI_transactor->ARCACHE(s02_axi_arcache);
  mp_S02_AXI_transactor->ARPROT(s02_axi_arprot);
  mp_S02_AXI_transactor->ARQOS(s02_axi_arqos);
  mp_S02_AXI_transactor->ARUSER(s02_axi_aruser);
  mp_S02_AXI_transactor->ARVALID(s02_axi_arvalid);
  mp_S02_AXI_transactor->ARREADY(s02_axi_arready);
  mp_S02_AXI_transactor->RID(s02_axi_rid);
  mp_S02_AXI_transactor->RDATA(s02_axi_rdata);
  mp_S02_AXI_transactor->RRESP(s02_axi_rresp);
  mp_S02_AXI_transactor->RLAST(s02_axi_rlast);
  mp_S02_AXI_transactor->RUSER(s02_axi_ruser);
  mp_S02_AXI_transactor->RVALID(s02_axi_rvalid);
  mp_S02_AXI_transactor->RREADY(s02_axi_rready);
  mp_S02_AXI_transactor->CLK(s02_axi_aclk);
  mp_S02_AXI_transactor->RST(s02_axi_aresetn);
  // configure S03_AXI_transactor
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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
  mp_S03_AXI_transactor->AWID(s03_axi_awid);
  mp_S03_AXI_transactor->AWADDR(s03_axi_awaddr);
  mp_S03_AXI_transactor->AWLEN(s03_axi_awlen);
  mp_S03_AXI_transactor->AWSIZE(s03_axi_awsize);
  mp_S03_AXI_transactor->AWBURST(s03_axi_awburst);
  mp_S03_AXI_transactor->AWLOCK(s03_axi_awlock);
  mp_S03_AXI_transactor->AWCACHE(s03_axi_awcache);
  mp_S03_AXI_transactor->AWPROT(s03_axi_awprot);
  mp_S03_AXI_transactor->AWQOS(s03_axi_awqos);
  mp_S03_AXI_transactor->AWUSER(s03_axi_awuser);
  mp_S03_AXI_transactor->AWVALID(s03_axi_awvalid);
  mp_S03_AXI_transactor->AWREADY(s03_axi_awready);
  mp_S03_AXI_transactor->WDATA(s03_axi_wdata);
  mp_S03_AXI_transactor->WSTRB(s03_axi_wstrb);
  mp_S03_AXI_transactor->WLAST(s03_axi_wlast);
  mp_S03_AXI_transactor->WUSER(s03_axi_wuser);
  mp_S03_AXI_transactor->WVALID(s03_axi_wvalid);
  mp_S03_AXI_transactor->WREADY(s03_axi_wready);
  mp_S03_AXI_transactor->BID(s03_axi_bid);
  mp_S03_AXI_transactor->BRESP(s03_axi_bresp);
  mp_S03_AXI_transactor->BUSER(s03_axi_buser);
  mp_S03_AXI_transactor->BVALID(s03_axi_bvalid);
  mp_S03_AXI_transactor->BREADY(s03_axi_bready);
  mp_S03_AXI_transactor->ARID(s03_axi_arid);
  mp_S03_AXI_transactor->ARADDR(s03_axi_araddr);
  mp_S03_AXI_transactor->ARLEN(s03_axi_arlen);
  mp_S03_AXI_transactor->ARSIZE(s03_axi_arsize);
  mp_S03_AXI_transactor->ARBURST(s03_axi_arburst);
  mp_S03_AXI_transactor->ARLOCK(s03_axi_arlock);
  mp_S03_AXI_transactor->ARCACHE(s03_axi_arcache);
  mp_S03_AXI_transactor->ARPROT(s03_axi_arprot);
  mp_S03_AXI_transactor->ARQOS(s03_axi_arqos);
  mp_S03_AXI_transactor->ARUSER(s03_axi_aruser);
  mp_S03_AXI_transactor->ARVALID(s03_axi_arvalid);
  mp_S03_AXI_transactor->ARREADY(s03_axi_arready);
  mp_S03_AXI_transactor->RID(s03_axi_rid);
  mp_S03_AXI_transactor->RDATA(s03_axi_rdata);
  mp_S03_AXI_transactor->RRESP(s03_axi_rresp);
  mp_S03_AXI_transactor->RLAST(s03_axi_rlast);
  mp_S03_AXI_transactor->RUSER(s03_axi_ruser);
  mp_S03_AXI_transactor->RVALID(s03_axi_rvalid);
  mp_S03_AXI_transactor->RREADY(s03_axi_rready);
  mp_S03_AXI_transactor->CLK(s03_axi_aclk);
  mp_S03_AXI_transactor->RST(s03_axi_aresetn);
  // configure S04_AXI_transactor
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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
  mp_S04_AXI_transactor->AWADDR(s04_axi_awaddr);
  mp_S04_AXI_transactor->AWLEN(s04_axi_awlen);
  mp_S04_AXI_transactor->AWSIZE(s04_axi_awsize);
  mp_S04_AXI_transactor->AWLOCK(s04_axi_awlock);
  mp_S04_AXI_transactor->AWCACHE(s04_axi_awcache);
  mp_S04_AXI_transactor->AWPROT(s04_axi_awprot);
  mp_S04_AXI_transactor->AWREGION(s04_axi_awregion);
  mp_S04_AXI_transactor->AWQOS(s04_axi_awqos);
  mp_S04_AXI_transactor->AWVALID(s04_axi_awvalid);
  mp_S04_AXI_transactor->AWREADY(s04_axi_awready);
  mp_S04_AXI_transactor->WDATA(s04_axi_wdata);
  mp_S04_AXI_transactor->WSTRB(s04_axi_wstrb);
  mp_S04_AXI_transactor->WLAST(s04_axi_wlast);
  mp_S04_AXI_transactor->WVALID(s04_axi_wvalid);
  mp_S04_AXI_transactor->WREADY(s04_axi_wready);
  mp_S04_AXI_transactor->BRESP(s04_axi_bresp);
  mp_S04_AXI_transactor->BVALID(s04_axi_bvalid);
  mp_S04_AXI_transactor->BREADY(s04_axi_bready);
  mp_S04_AXI_transactor->ARADDR(s04_axi_araddr);
  mp_S04_AXI_transactor->ARLEN(s04_axi_arlen);
  mp_S04_AXI_transactor->ARSIZE(s04_axi_arsize);
  mp_S04_AXI_transactor->ARLOCK(s04_axi_arlock);
  mp_S04_AXI_transactor->ARCACHE(s04_axi_arcache);
  mp_S04_AXI_transactor->ARPROT(s04_axi_arprot);
  mp_S04_AXI_transactor->ARREGION(s04_axi_arregion);
  mp_S04_AXI_transactor->ARQOS(s04_axi_arqos);
  mp_S04_AXI_transactor->ARVALID(s04_axi_arvalid);
  mp_S04_AXI_transactor->ARREADY(s04_axi_arready);
  mp_S04_AXI_transactor->RDATA(s04_axi_rdata);
  mp_S04_AXI_transactor->RRESP(s04_axi_rresp);
  mp_S04_AXI_transactor->RLAST(s04_axi_rlast);
  mp_S04_AXI_transactor->RVALID(s04_axi_rvalid);
  mp_S04_AXI_transactor->RREADY(s04_axi_rready);
  mp_S04_AXI_transactor->CLK(s04_axi_aclk);
  mp_S04_AXI_transactor->RST(s04_axi_aresetn);
  // configure M00_AXI_transactor
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
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

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,5,32,1,1,32,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);
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
  mp_M01_AXI_transactor->AWADDR(m01_axi_awaddr);
  mp_M01_AXI_transactor->AWLEN(m01_axi_awlen);
  mp_M01_AXI_transactor->AWSIZE(m01_axi_awsize);
  mp_M01_AXI_transactor->AWBURST(m01_axi_awburst);
  mp_M01_AXI_transactor->AWPROT(m01_axi_awprot);
  mp_M01_AXI_transactor->AWVALID(m01_axi_awvalid);
  mp_M01_AXI_transactor->AWREADY(m01_axi_awready);
  mp_M01_AXI_transactor->WDATA(m01_axi_wdata);
  mp_M01_AXI_transactor->WSTRB(m01_axi_wstrb);
  mp_M01_AXI_transactor->WLAST(m01_axi_wlast);
  mp_M01_AXI_transactor->WVALID(m01_axi_wvalid);
  mp_M01_AXI_transactor->WREADY(m01_axi_wready);
  mp_M01_AXI_transactor->BRESP(m01_axi_bresp);
  mp_M01_AXI_transactor->BVALID(m01_axi_bvalid);
  mp_M01_AXI_transactor->BREADY(m01_axi_bready);
  mp_M01_AXI_transactor->ARADDR(m01_axi_araddr);
  mp_M01_AXI_transactor->ARLEN(m01_axi_arlen);
  mp_M01_AXI_transactor->ARSIZE(m01_axi_arsize);
  mp_M01_AXI_transactor->ARBURST(m01_axi_arburst);
  mp_M01_AXI_transactor->ARPROT(m01_axi_arprot);
  mp_M01_AXI_transactor->ARVALID(m01_axi_arvalid);
  mp_M01_AXI_transactor->ARREADY(m01_axi_arready);
  mp_M01_AXI_transactor->RDATA(m01_axi_rdata);
  mp_M01_AXI_transactor->RRESP(m01_axi_rresp);
  mp_M01_AXI_transactor->RLAST(m01_axi_rlast);
  mp_M01_AXI_transactor->RVALID(m01_axi_rvalid);
  mp_M01_AXI_transactor->RREADY(m01_axi_rready);
  mp_M01_AXI_transactor->CLK(m01_axi_aclk);
  mp_M01_AXI_transactor->RST(m01_axi_aresetn);
  // configure M02_AXI_transactor
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
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

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,5,32,1,1,32,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);
  mp_M02_AXI_transactor->AWID(m02_axi_awid);
  mp_M02_AXI_transactor->AWADDR(m02_axi_awaddr);
  mp_M02_AXI_transactor->AWLEN(m02_axi_awlen);
  mp_M02_AXI_transactor->AWSIZE(m02_axi_awsize);
  mp_M02_AXI_transactor->AWBURST(m02_axi_awburst);
  mp_M02_AXI_transactor->AWLOCK(m02_axi_awlock);
  mp_M02_AXI_transactor->AWCACHE(m02_axi_awcache);
  mp_M02_AXI_transactor->AWPROT(m02_axi_awprot);
  mp_M02_AXI_transactor->AWQOS(m02_axi_awqos);
  mp_M02_AXI_transactor->AWUSER(m02_axi_awuser);
  mp_M02_AXI_transactor->AWVALID(m02_axi_awvalid);
  mp_M02_AXI_transactor->AWREADY(m02_axi_awready);
  mp_M02_AXI_transactor->WDATA(m02_axi_wdata);
  mp_M02_AXI_transactor->WSTRB(m02_axi_wstrb);
  mp_M02_AXI_transactor->WLAST(m02_axi_wlast);
  mp_M02_AXI_transactor->WUSER(m02_axi_wuser);
  mp_M02_AXI_transactor->WVALID(m02_axi_wvalid);
  mp_M02_AXI_transactor->WREADY(m02_axi_wready);
  mp_M02_AXI_transactor->BID(m02_axi_bid);
  mp_M02_AXI_transactor->BRESP(m02_axi_bresp);
  mp_M02_AXI_transactor->BUSER(m02_axi_buser);
  mp_M02_AXI_transactor->BVALID(m02_axi_bvalid);
  mp_M02_AXI_transactor->BREADY(m02_axi_bready);
  mp_M02_AXI_transactor->ARID(m02_axi_arid);
  mp_M02_AXI_transactor->ARADDR(m02_axi_araddr);
  mp_M02_AXI_transactor->ARLEN(m02_axi_arlen);
  mp_M02_AXI_transactor->ARSIZE(m02_axi_arsize);
  mp_M02_AXI_transactor->ARBURST(m02_axi_arburst);
  mp_M02_AXI_transactor->ARLOCK(m02_axi_arlock);
  mp_M02_AXI_transactor->ARCACHE(m02_axi_arcache);
  mp_M02_AXI_transactor->ARPROT(m02_axi_arprot);
  mp_M02_AXI_transactor->ARQOS(m02_axi_arqos);
  mp_M02_AXI_transactor->ARUSER(m02_axi_aruser);
  mp_M02_AXI_transactor->ARVALID(m02_axi_arvalid);
  mp_M02_AXI_transactor->ARREADY(m02_axi_arready);
  mp_M02_AXI_transactor->RID(m02_axi_rid);
  mp_M02_AXI_transactor->RDATA(m02_axi_rdata);
  mp_M02_AXI_transactor->RRESP(m02_axi_rresp);
  mp_M02_AXI_transactor->RLAST(m02_axi_rlast);
  mp_M02_AXI_transactor->RUSER(m02_axi_ruser);
  mp_M02_AXI_transactor->RVALID(m02_axi_rvalid);
  mp_M02_AXI_transactor->RREADY(m02_axi_rready);
  mp_M02_AXI_transactor->CLK(m02_axi_aclk);
  mp_M02_AXI_transactor->RST(m02_axi_aresetn);
  // configure M03_AXI_transactor
    xsc::common_cpp::properties M03_AXI_transactor_param_props;
    M03_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M03_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
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

    mp_M03_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,5,32,1,1,32,1>("M03_AXI_transactor", M03_AXI_transactor_param_props);
  mp_M03_AXI_transactor->AWID(m03_axi_awid);
  mp_M03_AXI_transactor->AWADDR(m03_axi_awaddr);
  mp_M03_AXI_transactor->AWLEN(m03_axi_awlen);
  mp_M03_AXI_transactor->AWSIZE(m03_axi_awsize);
  mp_M03_AXI_transactor->AWBURST(m03_axi_awburst);
  mp_M03_AXI_transactor->AWLOCK(m03_axi_awlock);
  mp_M03_AXI_transactor->AWCACHE(m03_axi_awcache);
  mp_M03_AXI_transactor->AWPROT(m03_axi_awprot);
  mp_M03_AXI_transactor->AWQOS(m03_axi_awqos);
  mp_M03_AXI_transactor->AWUSER(m03_axi_awuser);
  mp_M03_AXI_transactor->AWVALID(m03_axi_awvalid);
  mp_M03_AXI_transactor->AWREADY(m03_axi_awready);
  mp_M03_AXI_transactor->WDATA(m03_axi_wdata);
  mp_M03_AXI_transactor->WSTRB(m03_axi_wstrb);
  mp_M03_AXI_transactor->WLAST(m03_axi_wlast);
  mp_M03_AXI_transactor->WUSER(m03_axi_wuser);
  mp_M03_AXI_transactor->WVALID(m03_axi_wvalid);
  mp_M03_AXI_transactor->WREADY(m03_axi_wready);
  mp_M03_AXI_transactor->BID(m03_axi_bid);
  mp_M03_AXI_transactor->BRESP(m03_axi_bresp);
  mp_M03_AXI_transactor->BUSER(m03_axi_buser);
  mp_M03_AXI_transactor->BVALID(m03_axi_bvalid);
  mp_M03_AXI_transactor->BREADY(m03_axi_bready);
  mp_M03_AXI_transactor->ARID(m03_axi_arid);
  mp_M03_AXI_transactor->ARADDR(m03_axi_araddr);
  mp_M03_AXI_transactor->ARLEN(m03_axi_arlen);
  mp_M03_AXI_transactor->ARSIZE(m03_axi_arsize);
  mp_M03_AXI_transactor->ARBURST(m03_axi_arburst);
  mp_M03_AXI_transactor->ARLOCK(m03_axi_arlock);
  mp_M03_AXI_transactor->ARCACHE(m03_axi_arcache);
  mp_M03_AXI_transactor->ARPROT(m03_axi_arprot);
  mp_M03_AXI_transactor->ARQOS(m03_axi_arqos);
  mp_M03_AXI_transactor->ARUSER(m03_axi_aruser);
  mp_M03_AXI_transactor->ARVALID(m03_axi_arvalid);
  mp_M03_AXI_transactor->ARREADY(m03_axi_arready);
  mp_M03_AXI_transactor->RID(m03_axi_rid);
  mp_M03_AXI_transactor->RDATA(m03_axi_rdata);
  mp_M03_AXI_transactor->RRESP(m03_axi_rresp);
  mp_M03_AXI_transactor->RLAST(m03_axi_rlast);
  mp_M03_AXI_transactor->RUSER(m03_axi_ruser);
  mp_M03_AXI_transactor->RVALID(m03_axi_rvalid);
  mp_M03_AXI_transactor->RREADY(m03_axi_rready);
  mp_M03_AXI_transactor->CLK(m03_axi_aclk);
  mp_M03_AXI_transactor->RST(m03_axi_aresetn);
  // configure M04_AXI_transactor
    xsc::common_cpp::properties M04_AXI_transactor_param_props;
    M04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M04_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M04_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "17");
    M04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M04_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M04_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M04_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M04_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,17,1,1,1,1,1,1>("M04_AXI_transactor", M04_AXI_transactor_param_props);
  mp_M04_AXI_transactor->AWID(m04_axi_awid);
  mp_M04_AXI_transactor->AWADDR(m04_axi_awaddr);
  mp_M04_AXI_transactor->AWLEN(m04_axi_awlen);
  mp_M04_AXI_transactor->AWSIZE(m04_axi_awsize);
  mp_M04_AXI_transactor->AWBURST(m04_axi_awburst);
  mp_M04_AXI_transactor->AWLOCK(m04_axi_awlock);
  mp_M04_AXI_transactor->AWCACHE(m04_axi_awcache);
  mp_M04_AXI_transactor->AWPROT(m04_axi_awprot);
  mp_M04_AXI_transactor->AWQOS(m04_axi_awqos);
  mp_M04_AXI_transactor->AWUSER(m04_axi_awuser);
  mp_M04_AXI_transactor->AWVALID(m04_axi_awvalid);
  mp_M04_AXI_transactor->AWREADY(m04_axi_awready);
  mp_M04_AXI_transactor->WDATA(m04_axi_wdata);
  mp_M04_AXI_transactor->WSTRB(m04_axi_wstrb);
  mp_M04_AXI_transactor->WLAST(m04_axi_wlast);
  mp_M04_AXI_transactor->WUSER(m04_axi_wuser);
  mp_M04_AXI_transactor->WVALID(m04_axi_wvalid);
  mp_M04_AXI_transactor->WREADY(m04_axi_wready);
  mp_M04_AXI_transactor->BID(m04_axi_bid);
  mp_M04_AXI_transactor->BRESP(m04_axi_bresp);
  mp_M04_AXI_transactor->BUSER(m04_axi_buser);
  mp_M04_AXI_transactor->BVALID(m04_axi_bvalid);
  mp_M04_AXI_transactor->BREADY(m04_axi_bready);
  mp_M04_AXI_transactor->ARID(m04_axi_arid);
  mp_M04_AXI_transactor->ARADDR(m04_axi_araddr);
  mp_M04_AXI_transactor->ARLEN(m04_axi_arlen);
  mp_M04_AXI_transactor->ARSIZE(m04_axi_arsize);
  mp_M04_AXI_transactor->ARBURST(m04_axi_arburst);
  mp_M04_AXI_transactor->ARLOCK(m04_axi_arlock);
  mp_M04_AXI_transactor->ARCACHE(m04_axi_arcache);
  mp_M04_AXI_transactor->ARPROT(m04_axi_arprot);
  mp_M04_AXI_transactor->ARQOS(m04_axi_arqos);
  mp_M04_AXI_transactor->ARUSER(m04_axi_aruser);
  mp_M04_AXI_transactor->ARVALID(m04_axi_arvalid);
  mp_M04_AXI_transactor->ARREADY(m04_axi_arready);
  mp_M04_AXI_transactor->RID(m04_axi_rid);
  mp_M04_AXI_transactor->RDATA(m04_axi_rdata);
  mp_M04_AXI_transactor->RRESP(m04_axi_rresp);
  mp_M04_AXI_transactor->RLAST(m04_axi_rlast);
  mp_M04_AXI_transactor->RUSER(m04_axi_ruser);
  mp_M04_AXI_transactor->RVALID(m04_axi_rvalid);
  mp_M04_AXI_transactor->RREADY(m04_axi_rready);
  mp_M04_AXI_transactor->CLK(m04_axi_aclk);
  mp_M04_AXI_transactor->RST(m04_axi_aresetn);
  // configure M05_AXI_transactor
    xsc::common_cpp::properties M05_AXI_transactor_param_props;
    M05_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M05_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M05_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "17");
    M05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M05_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M05_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M05_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M05_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M05_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M05_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M05_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M05_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,17,1,1,1,1,1,1>("M05_AXI_transactor", M05_AXI_transactor_param_props);
  mp_M05_AXI_transactor->AWID(m05_axi_awid);
  mp_M05_AXI_transactor->AWADDR(m05_axi_awaddr);
  mp_M05_AXI_transactor->AWLEN(m05_axi_awlen);
  mp_M05_AXI_transactor->AWSIZE(m05_axi_awsize);
  mp_M05_AXI_transactor->AWBURST(m05_axi_awburst);
  mp_M05_AXI_transactor->AWLOCK(m05_axi_awlock);
  mp_M05_AXI_transactor->AWCACHE(m05_axi_awcache);
  mp_M05_AXI_transactor->AWPROT(m05_axi_awprot);
  mp_M05_AXI_transactor->AWQOS(m05_axi_awqos);
  mp_M05_AXI_transactor->AWUSER(m05_axi_awuser);
  mp_M05_AXI_transactor->AWVALID(m05_axi_awvalid);
  mp_M05_AXI_transactor->AWREADY(m05_axi_awready);
  mp_M05_AXI_transactor->WDATA(m05_axi_wdata);
  mp_M05_AXI_transactor->WSTRB(m05_axi_wstrb);
  mp_M05_AXI_transactor->WLAST(m05_axi_wlast);
  mp_M05_AXI_transactor->WUSER(m05_axi_wuser);
  mp_M05_AXI_transactor->WVALID(m05_axi_wvalid);
  mp_M05_AXI_transactor->WREADY(m05_axi_wready);
  mp_M05_AXI_transactor->BID(m05_axi_bid);
  mp_M05_AXI_transactor->BRESP(m05_axi_bresp);
  mp_M05_AXI_transactor->BUSER(m05_axi_buser);
  mp_M05_AXI_transactor->BVALID(m05_axi_bvalid);
  mp_M05_AXI_transactor->BREADY(m05_axi_bready);
  mp_M05_AXI_transactor->ARID(m05_axi_arid);
  mp_M05_AXI_transactor->ARADDR(m05_axi_araddr);
  mp_M05_AXI_transactor->ARLEN(m05_axi_arlen);
  mp_M05_AXI_transactor->ARSIZE(m05_axi_arsize);
  mp_M05_AXI_transactor->ARBURST(m05_axi_arburst);
  mp_M05_AXI_transactor->ARLOCK(m05_axi_arlock);
  mp_M05_AXI_transactor->ARCACHE(m05_axi_arcache);
  mp_M05_AXI_transactor->ARPROT(m05_axi_arprot);
  mp_M05_AXI_transactor->ARQOS(m05_axi_arqos);
  mp_M05_AXI_transactor->ARUSER(m05_axi_aruser);
  mp_M05_AXI_transactor->ARVALID(m05_axi_arvalid);
  mp_M05_AXI_transactor->ARREADY(m05_axi_arready);
  mp_M05_AXI_transactor->RID(m05_axi_rid);
  mp_M05_AXI_transactor->RDATA(m05_axi_rdata);
  mp_M05_AXI_transactor->RRESP(m05_axi_rresp);
  mp_M05_AXI_transactor->RLAST(m05_axi_rlast);
  mp_M05_AXI_transactor->RUSER(m05_axi_ruser);
  mp_M05_AXI_transactor->RVALID(m05_axi_rvalid);
  mp_M05_AXI_transactor->RREADY(m05_axi_rready);
  mp_M05_AXI_transactor->CLK(m05_axi_aclk);
  mp_M05_AXI_transactor->RST(m05_axi_aresetn);
  // configure M06_AXI_transactor
    xsc::common_cpp::properties M06_AXI_transactor_param_props;
    M06_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M06_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M06_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "17");
    M06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M06_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M06_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M06_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M06_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M06_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M06_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M06_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M06_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M06_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,17,1,1,1,1,1,1>("M06_AXI_transactor", M06_AXI_transactor_param_props);
  mp_M06_AXI_transactor->AWID(m06_axi_awid);
  mp_M06_AXI_transactor->AWADDR(m06_axi_awaddr);
  mp_M06_AXI_transactor->AWLEN(m06_axi_awlen);
  mp_M06_AXI_transactor->AWSIZE(m06_axi_awsize);
  mp_M06_AXI_transactor->AWBURST(m06_axi_awburst);
  mp_M06_AXI_transactor->AWLOCK(m06_axi_awlock);
  mp_M06_AXI_transactor->AWCACHE(m06_axi_awcache);
  mp_M06_AXI_transactor->AWPROT(m06_axi_awprot);
  mp_M06_AXI_transactor->AWQOS(m06_axi_awqos);
  mp_M06_AXI_transactor->AWUSER(m06_axi_awuser);
  mp_M06_AXI_transactor->AWVALID(m06_axi_awvalid);
  mp_M06_AXI_transactor->AWREADY(m06_axi_awready);
  mp_M06_AXI_transactor->WDATA(m06_axi_wdata);
  mp_M06_AXI_transactor->WSTRB(m06_axi_wstrb);
  mp_M06_AXI_transactor->WLAST(m06_axi_wlast);
  mp_M06_AXI_transactor->WUSER(m06_axi_wuser);
  mp_M06_AXI_transactor->WVALID(m06_axi_wvalid);
  mp_M06_AXI_transactor->WREADY(m06_axi_wready);
  mp_M06_AXI_transactor->BID(m06_axi_bid);
  mp_M06_AXI_transactor->BRESP(m06_axi_bresp);
  mp_M06_AXI_transactor->BUSER(m06_axi_buser);
  mp_M06_AXI_transactor->BVALID(m06_axi_bvalid);
  mp_M06_AXI_transactor->BREADY(m06_axi_bready);
  mp_M06_AXI_transactor->ARID(m06_axi_arid);
  mp_M06_AXI_transactor->ARADDR(m06_axi_araddr);
  mp_M06_AXI_transactor->ARLEN(m06_axi_arlen);
  mp_M06_AXI_transactor->ARSIZE(m06_axi_arsize);
  mp_M06_AXI_transactor->ARBURST(m06_axi_arburst);
  mp_M06_AXI_transactor->ARLOCK(m06_axi_arlock);
  mp_M06_AXI_transactor->ARCACHE(m06_axi_arcache);
  mp_M06_AXI_transactor->ARPROT(m06_axi_arprot);
  mp_M06_AXI_transactor->ARQOS(m06_axi_arqos);
  mp_M06_AXI_transactor->ARUSER(m06_axi_aruser);
  mp_M06_AXI_transactor->ARVALID(m06_axi_arvalid);
  mp_M06_AXI_transactor->ARREADY(m06_axi_arready);
  mp_M06_AXI_transactor->RID(m06_axi_rid);
  mp_M06_AXI_transactor->RDATA(m06_axi_rdata);
  mp_M06_AXI_transactor->RRESP(m06_axi_rresp);
  mp_M06_AXI_transactor->RLAST(m06_axi_rlast);
  mp_M06_AXI_transactor->RUSER(m06_axi_ruser);
  mp_M06_AXI_transactor->RVALID(m06_axi_rvalid);
  mp_M06_AXI_transactor->RREADY(m06_axi_rready);
  mp_M06_AXI_transactor->CLK(m06_axi_aclk);
  mp_M06_AXI_transactor->RST(m06_axi_aresetn);

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
  M04_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M04_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M05_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M05_AXI_transactor_initiator_rd_socket_stub = nullptr;
  M06_AXI_transactor_initiator_wr_socket_stub = nullptr;
  M06_AXI_transactor_initiator_rd_socket_stub = nullptr;

}

void bd_d216_xtlm_simple_intercon_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S00_AXI_TLM_MODE") != 1)
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

  // configure 'S01_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S01_AXI_TLM_MODE") != 1)
  {
    mp_impl->target_1_rd_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->target_1_wr_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  
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
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S02_AXI_TLM_MODE") != 1)
  {
    mp_impl->target_2_rd_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->target_2_wr_socket->bind(*(mp_S02_AXI_transactor->wr_socket));
  
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
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S03_AXI_TLM_MODE") != 1)
  {
    mp_impl->target_3_rd_socket->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_impl->target_3_wr_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  
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
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S04_AXI_TLM_MODE") != 1)
  {
    mp_impl->target_4_rd_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->target_4_wr_socket->bind(*(mp_S04_AXI_transactor->wr_socket));
  
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
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M00_AXI_TLM_MODE") != 1)
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

  // configure 'M01_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M01_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_1_rd_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->initiator_1_wr_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  
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
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M02_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_2_rd_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->initiator_2_wr_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  
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
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M03_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_3_rd_socket->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_impl->initiator_3_wr_socket->bind(*(mp_M03_AXI_transactor->wr_socket));
  
  }
  else
  {
    M03_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M03_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M03_AXI_transactor->wr_socket));
    M03_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M03_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_M03_AXI_transactor->disable_transactor();
  }

  // configure 'M04_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M04_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_4_rd_socket->bind(*(mp_M04_AXI_transactor->rd_socket));
    mp_impl->initiator_4_wr_socket->bind(*(mp_M04_AXI_transactor->wr_socket));
  
  }
  else
  {
    M04_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M04_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M04_AXI_transactor->wr_socket));
    M04_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M04_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M04_AXI_transactor->rd_socket));
    mp_M04_AXI_transactor->disable_transactor();
  }

  // configure 'M05_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M05_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_5_rd_socket->bind(*(mp_M05_AXI_transactor->rd_socket));
    mp_impl->initiator_5_wr_socket->bind(*(mp_M05_AXI_transactor->wr_socket));
  
  }
  else
  {
    M05_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M05_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M05_AXI_transactor->wr_socket));
    M05_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M05_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M05_AXI_transactor->rd_socket));
    mp_M05_AXI_transactor->disable_transactor();
  }

  // configure 'M06_AXI' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M06_AXI_TLM_MODE") != 1)
  {
    mp_impl->initiator_6_rd_socket->bind(*(mp_M06_AXI_transactor->rd_socket));
    mp_impl->initiator_6_wr_socket->bind(*(mp_M06_AXI_transactor->wr_socket));
  
  }
  else
  {
    M06_AXI_transactor_initiator_wr_socket_stub = new xtlm::xtlm_aximm_initiator_stub("wr_socket",0);
    M06_AXI_transactor_initiator_wr_socket_stub->bind(*(mp_M06_AXI_transactor->wr_socket));
    M06_AXI_transactor_initiator_rd_socket_stub = new xtlm::xtlm_aximm_initiator_stub("rd_socket",0);
    M06_AXI_transactor_initiator_rd_socket_stub->bind(*(mp_M06_AXI_transactor->rd_socket));
    mp_M06_AXI_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
bd_d216_xtlm_simple_intercon_0_0::bd_d216_xtlm_simple_intercon_0_0(const sc_core::sc_module_name& nm) : bd_d216_xtlm_simple_intercon_0_0_sc(nm), s00_axi_awid("s00_axi_awid"), s00_axi_awaddr("s00_axi_awaddr"), s00_axi_awlen("s00_axi_awlen"), s00_axi_awsize("s00_axi_awsize"), s00_axi_awburst("s00_axi_awburst"), s00_axi_awlock("s00_axi_awlock"), s00_axi_awcache("s00_axi_awcache"), s00_axi_awprot("s00_axi_awprot"), s00_axi_awqos("s00_axi_awqos"), s00_axi_awuser("s00_axi_awuser"), s00_axi_awvalid("s00_axi_awvalid"), s00_axi_awready("s00_axi_awready"), s00_axi_wdata("s00_axi_wdata"), s00_axi_wstrb("s00_axi_wstrb"), s00_axi_wlast("s00_axi_wlast"), s00_axi_wuser("s00_axi_wuser"), s00_axi_wvalid("s00_axi_wvalid"), s00_axi_wready("s00_axi_wready"), s00_axi_bid("s00_axi_bid"), s00_axi_bresp("s00_axi_bresp"), s00_axi_buser("s00_axi_buser"), s00_axi_bvalid("s00_axi_bvalid"), s00_axi_bready("s00_axi_bready"), s00_axi_arid("s00_axi_arid"), s00_axi_araddr("s00_axi_araddr"), s00_axi_arlen("s00_axi_arlen"), s00_axi_arsize("s00_axi_arsize"), s00_axi_arburst("s00_axi_arburst"), s00_axi_arlock("s00_axi_arlock"), s00_axi_arcache("s00_axi_arcache"), s00_axi_arprot("s00_axi_arprot"), s00_axi_arqos("s00_axi_arqos"), s00_axi_aruser("s00_axi_aruser"), s00_axi_arvalid("s00_axi_arvalid"), s00_axi_arready("s00_axi_arready"), s00_axi_rid("s00_axi_rid"), s00_axi_rdata("s00_axi_rdata"), s00_axi_rresp("s00_axi_rresp"), s00_axi_rlast("s00_axi_rlast"), s00_axi_ruser("s00_axi_ruser"), s00_axi_rvalid("s00_axi_rvalid"), s00_axi_rready("s00_axi_rready"), s00_axi_aclk("s00_axi_aclk"), s00_axi_aresetn("s00_axi_aresetn"), m00_axi_awid("m00_axi_awid"), m00_axi_awaddr("m00_axi_awaddr"), m00_axi_awlen("m00_axi_awlen"), m00_axi_awsize("m00_axi_awsize"), m00_axi_awburst("m00_axi_awburst"), m00_axi_awlock("m00_axi_awlock"), m00_axi_awcache("m00_axi_awcache"), m00_axi_awprot("m00_axi_awprot"), m00_axi_awqos("m00_axi_awqos"), m00_axi_awuser("m00_axi_awuser"), m00_axi_awvalid("m00_axi_awvalid"), m00_axi_awready("m00_axi_awready"), m00_axi_wdata("m00_axi_wdata"), m00_axi_wstrb("m00_axi_wstrb"), m00_axi_wlast("m00_axi_wlast"), m00_axi_wuser("m00_axi_wuser"), m00_axi_wvalid("m00_axi_wvalid"), m00_axi_wready("m00_axi_wready"), m00_axi_bid("m00_axi_bid"), m00_axi_bresp("m00_axi_bresp"), m00_axi_buser("m00_axi_buser"), m00_axi_bvalid("m00_axi_bvalid"), m00_axi_bready("m00_axi_bready"), m00_axi_arid("m00_axi_arid"), m00_axi_araddr("m00_axi_araddr"), m00_axi_arlen("m00_axi_arlen"), m00_axi_arsize("m00_axi_arsize"), m00_axi_arburst("m00_axi_arburst"), m00_axi_arlock("m00_axi_arlock"), m00_axi_arcache("m00_axi_arcache"), m00_axi_arprot("m00_axi_arprot"), m00_axi_arqos("m00_axi_arqos"), m00_axi_aruser("m00_axi_aruser"), m00_axi_arvalid("m00_axi_arvalid"), m00_axi_arready("m00_axi_arready"), m00_axi_rid("m00_axi_rid"), m00_axi_rdata("m00_axi_rdata"), m00_axi_rresp("m00_axi_rresp"), m00_axi_rlast("m00_axi_rlast"), m00_axi_ruser("m00_axi_ruser"), m00_axi_rvalid("m00_axi_rvalid"), m00_axi_rready("m00_axi_rready"), m00_axi_aclk("m00_axi_aclk"), m00_axi_aresetn("m00_axi_aresetn"), m02_axi_awid("m02_axi_awid"), m02_axi_awaddr("m02_axi_awaddr"), m02_axi_awlen("m02_axi_awlen"), m02_axi_awsize("m02_axi_awsize"), m02_axi_awburst("m02_axi_awburst"), m02_axi_awlock("m02_axi_awlock"), m02_axi_awcache("m02_axi_awcache"), m02_axi_awprot("m02_axi_awprot"), m02_axi_awqos("m02_axi_awqos"), m02_axi_awuser("m02_axi_awuser"), m02_axi_awvalid("m02_axi_awvalid"), m02_axi_awready("m02_axi_awready"), m02_axi_wdata("m02_axi_wdata"), m02_axi_wstrb("m02_axi_wstrb"), m02_axi_wlast("m02_axi_wlast"), m02_axi_wuser("m02_axi_wuser"), m02_axi_wvalid("m02_axi_wvalid"), m02_axi_wready("m02_axi_wready"), m02_axi_bid("m02_axi_bid"), m02_axi_bresp("m02_axi_bresp"), m02_axi_buser("m02_axi_buser"), m02_axi_bvalid("m02_axi_bvalid"), m02_axi_bready("m02_axi_bready"), m02_axi_arid("m02_axi_arid"), m02_axi_araddr("m02_axi_araddr"), m02_axi_arlen("m02_axi_arlen"), m02_axi_arsize("m02_axi_arsize"), m02_axi_arburst("m02_axi_arburst"), m02_axi_arlock("m02_axi_arlock"), m02_axi_arcache("m02_axi_arcache"), m02_axi_arprot("m02_axi_arprot"), m02_axi_arqos("m02_axi_arqos"), m02_axi_aruser("m02_axi_aruser"), m02_axi_arvalid("m02_axi_arvalid"), m02_axi_arready("m02_axi_arready"), m02_axi_rid("m02_axi_rid"), m02_axi_rdata("m02_axi_rdata"), m02_axi_rresp("m02_axi_rresp"), m02_axi_rlast("m02_axi_rlast"), m02_axi_ruser("m02_axi_ruser"), m02_axi_rvalid("m02_axi_rvalid"), m02_axi_rready("m02_axi_rready"), m02_axi_aclk("m02_axi_aclk"), m02_axi_aresetn("m02_axi_aresetn"), m05_axi_awid("m05_axi_awid"), m05_axi_awaddr("m05_axi_awaddr"), m05_axi_awlen("m05_axi_awlen"), m05_axi_awsize("m05_axi_awsize"), m05_axi_awburst("m05_axi_awburst"), m05_axi_awlock("m05_axi_awlock"), m05_axi_awcache("m05_axi_awcache"), m05_axi_awprot("m05_axi_awprot"), m05_axi_awqos("m05_axi_awqos"), m05_axi_awuser("m05_axi_awuser"), m05_axi_awvalid("m05_axi_awvalid"), m05_axi_awready("m05_axi_awready"), m05_axi_wdata("m05_axi_wdata"), m05_axi_wstrb("m05_axi_wstrb"), m05_axi_wlast("m05_axi_wlast"), m05_axi_wuser("m05_axi_wuser"), m05_axi_wvalid("m05_axi_wvalid"), m05_axi_wready("m05_axi_wready"), m05_axi_bid("m05_axi_bid"), m05_axi_bresp("m05_axi_bresp"), m05_axi_buser("m05_axi_buser"), m05_axi_bvalid("m05_axi_bvalid"), m05_axi_bready("m05_axi_bready"), m05_axi_arid("m05_axi_arid"), m05_axi_araddr("m05_axi_araddr"), m05_axi_arlen("m05_axi_arlen"), m05_axi_arsize("m05_axi_arsize"), m05_axi_arburst("m05_axi_arburst"), m05_axi_arlock("m05_axi_arlock"), m05_axi_arcache("m05_axi_arcache"), m05_axi_arprot("m05_axi_arprot"), m05_axi_arqos("m05_axi_arqos"), m05_axi_aruser("m05_axi_aruser"), m05_axi_arvalid("m05_axi_arvalid"), m05_axi_arready("m05_axi_arready"), m05_axi_rid("m05_axi_rid"), m05_axi_rdata("m05_axi_rdata"), m05_axi_rresp("m05_axi_rresp"), m05_axi_rlast("m05_axi_rlast"), m05_axi_ruser("m05_axi_ruser"), m05_axi_rvalid("m05_axi_rvalid"), m05_axi_rready("m05_axi_rready"), m05_axi_aclk("m05_axi_aclk"), m05_axi_aresetn("m05_axi_aresetn"), m03_axi_awid("m03_axi_awid"), m03_axi_awaddr("m03_axi_awaddr"), m03_axi_awlen("m03_axi_awlen"), m03_axi_awsize("m03_axi_awsize"), m03_axi_awburst("m03_axi_awburst"), m03_axi_awlock("m03_axi_awlock"), m03_axi_awcache("m03_axi_awcache"), m03_axi_awprot("m03_axi_awprot"), m03_axi_awqos("m03_axi_awqos"), m03_axi_awuser("m03_axi_awuser"), m03_axi_awvalid("m03_axi_awvalid"), m03_axi_awready("m03_axi_awready"), m03_axi_wdata("m03_axi_wdata"), m03_axi_wstrb("m03_axi_wstrb"), m03_axi_wlast("m03_axi_wlast"), m03_axi_wuser("m03_axi_wuser"), m03_axi_wvalid("m03_axi_wvalid"), m03_axi_wready("m03_axi_wready"), m03_axi_bid("m03_axi_bid"), m03_axi_bresp("m03_axi_bresp"), m03_axi_buser("m03_axi_buser"), m03_axi_bvalid("m03_axi_bvalid"), m03_axi_bready("m03_axi_bready"), m03_axi_arid("m03_axi_arid"), m03_axi_araddr("m03_axi_araddr"), m03_axi_arlen("m03_axi_arlen"), m03_axi_arsize("m03_axi_arsize"), m03_axi_arburst("m03_axi_arburst"), m03_axi_arlock("m03_axi_arlock"), m03_axi_arcache("m03_axi_arcache"), m03_axi_arprot("m03_axi_arprot"), m03_axi_arqos("m03_axi_arqos"), m03_axi_aruser("m03_axi_aruser"), m03_axi_arvalid("m03_axi_arvalid"), m03_axi_arready("m03_axi_arready"), m03_axi_rid("m03_axi_rid"), m03_axi_rdata("m03_axi_rdata"), m03_axi_rresp("m03_axi_rresp"), m03_axi_rlast("m03_axi_rlast"), m03_axi_ruser("m03_axi_ruser"), m03_axi_rvalid("m03_axi_rvalid"), m03_axi_rready("m03_axi_rready"), m03_axi_aclk("m03_axi_aclk"), m03_axi_aresetn("m03_axi_aresetn"), m04_axi_awid("m04_axi_awid"), m04_axi_awaddr("m04_axi_awaddr"), m04_axi_awlen("m04_axi_awlen"), m04_axi_awsize("m04_axi_awsize"), m04_axi_awburst("m04_axi_awburst"), m04_axi_awlock("m04_axi_awlock"), m04_axi_awcache("m04_axi_awcache"), m04_axi_awprot("m04_axi_awprot"), m04_axi_awqos("m04_axi_awqos"), m04_axi_awuser("m04_axi_awuser"), m04_axi_awvalid("m04_axi_awvalid"), m04_axi_awready("m04_axi_awready"), m04_axi_wdata("m04_axi_wdata"), m04_axi_wstrb("m04_axi_wstrb"), m04_axi_wlast("m04_axi_wlast"), m04_axi_wuser("m04_axi_wuser"), m04_axi_wvalid("m04_axi_wvalid"), m04_axi_wready("m04_axi_wready"), m04_axi_bid("m04_axi_bid"), m04_axi_bresp("m04_axi_bresp"), m04_axi_buser("m04_axi_buser"), m04_axi_bvalid("m04_axi_bvalid"), m04_axi_bready("m04_axi_bready"), m04_axi_arid("m04_axi_arid"), m04_axi_araddr("m04_axi_araddr"), m04_axi_arlen("m04_axi_arlen"), m04_axi_arsize("m04_axi_arsize"), m04_axi_arburst("m04_axi_arburst"), m04_axi_arlock("m04_axi_arlock"), m04_axi_arcache("m04_axi_arcache"), m04_axi_arprot("m04_axi_arprot"), m04_axi_arqos("m04_axi_arqos"), m04_axi_aruser("m04_axi_aruser"), m04_axi_arvalid("m04_axi_arvalid"), m04_axi_arready("m04_axi_arready"), m04_axi_rid("m04_axi_rid"), m04_axi_rdata("m04_axi_rdata"), m04_axi_rresp("m04_axi_rresp"), m04_axi_rlast("m04_axi_rlast"), m04_axi_ruser("m04_axi_ruser"), m04_axi_rvalid("m04_axi_rvalid"), m04_axi_rready("m04_axi_rready"), m04_axi_aclk("m04_axi_aclk"), m04_axi_aresetn("m04_axi_aresetn"), m06_axi_awid("m06_axi_awid"), m06_axi_awaddr("m06_axi_awaddr"), m06_axi_awlen("m06_axi_awlen"), m06_axi_awsize("m06_axi_awsize"), m06_axi_awburst("m06_axi_awburst"), m06_axi_awlock("m06_axi_awlock"), m06_axi_awcache("m06_axi_awcache"), m06_axi_awprot("m06_axi_awprot"), m06_axi_awqos("m06_axi_awqos"), m06_axi_awuser("m06_axi_awuser"), m06_axi_awvalid("m06_axi_awvalid"), m06_axi_awready("m06_axi_awready"), m06_axi_wdata("m06_axi_wdata"), m06_axi_wstrb("m06_axi_wstrb"), m06_axi_wlast("m06_axi_wlast"), m06_axi_wuser("m06_axi_wuser"), m06_axi_wvalid("m06_axi_wvalid"), m06_axi_wready("m06_axi_wready"), m06_axi_bid("m06_axi_bid"), m06_axi_bresp("m06_axi_bresp"), m06_axi_buser("m06_axi_buser"), m06_axi_bvalid("m06_axi_bvalid"), m06_axi_bready("m06_axi_bready"), m06_axi_arid("m06_axi_arid"), m06_axi_araddr("m06_axi_araddr"), m06_axi_arlen("m06_axi_arlen"), m06_axi_arsize("m06_axi_arsize"), m06_axi_arburst("m06_axi_arburst"), m06_axi_arlock("m06_axi_arlock"), m06_axi_arcache("m06_axi_arcache"), m06_axi_arprot("m06_axi_arprot"), m06_axi_arqos("m06_axi_arqos"), m06_axi_aruser("m06_axi_aruser"), m06_axi_arvalid("m06_axi_arvalid"), m06_axi_arready("m06_axi_arready"), m06_axi_rid("m06_axi_rid"), m06_axi_rdata("m06_axi_rdata"), m06_axi_rresp("m06_axi_rresp"), m06_axi_rlast("m06_axi_rlast"), m06_axi_ruser("m06_axi_ruser"), m06_axi_rvalid("m06_axi_rvalid"), m06_axi_rready("m06_axi_rready"), m06_axi_aclk("m06_axi_aclk"), m06_axi_aresetn("m06_axi_aresetn"), m01_axi_awaddr("m01_axi_awaddr"), m01_axi_awlen("m01_axi_awlen"), m01_axi_awsize("m01_axi_awsize"), m01_axi_awburst("m01_axi_awburst"), m01_axi_awprot("m01_axi_awprot"), m01_axi_awvalid("m01_axi_awvalid"), m01_axi_awready("m01_axi_awready"), m01_axi_wdata("m01_axi_wdata"), m01_axi_wstrb("m01_axi_wstrb"), m01_axi_wlast("m01_axi_wlast"), m01_axi_wvalid("m01_axi_wvalid"), m01_axi_wready("m01_axi_wready"), m01_axi_bresp("m01_axi_bresp"), m01_axi_bvalid("m01_axi_bvalid"), m01_axi_bready("m01_axi_bready"), m01_axi_araddr("m01_axi_araddr"), m01_axi_arlen("m01_axi_arlen"), m01_axi_arsize("m01_axi_arsize"), m01_axi_arburst("m01_axi_arburst"), m01_axi_arprot("m01_axi_arprot"), m01_axi_arvalid("m01_axi_arvalid"), m01_axi_arready("m01_axi_arready"), m01_axi_rdata("m01_axi_rdata"), m01_axi_rresp("m01_axi_rresp"), m01_axi_rlast("m01_axi_rlast"), m01_axi_rvalid("m01_axi_rvalid"), m01_axi_rready("m01_axi_rready"), m01_axi_aclk("m01_axi_aclk"), m01_axi_aresetn("m01_axi_aresetn"), s03_axi_awid("s03_axi_awid"), s03_axi_awaddr("s03_axi_awaddr"), s03_axi_awlen("s03_axi_awlen"), s03_axi_awsize("s03_axi_awsize"), s03_axi_awburst("s03_axi_awburst"), s03_axi_awlock("s03_axi_awlock"), s03_axi_awcache("s03_axi_awcache"), s03_axi_awprot("s03_axi_awprot"), s03_axi_awqos("s03_axi_awqos"), s03_axi_awuser("s03_axi_awuser"), s03_axi_awvalid("s03_axi_awvalid"), s03_axi_awready("s03_axi_awready"), s03_axi_wdata("s03_axi_wdata"), s03_axi_wstrb("s03_axi_wstrb"), s03_axi_wlast("s03_axi_wlast"), s03_axi_wuser("s03_axi_wuser"), s03_axi_wvalid("s03_axi_wvalid"), s03_axi_wready("s03_axi_wready"), s03_axi_bid("s03_axi_bid"), s03_axi_bresp("s03_axi_bresp"), s03_axi_buser("s03_axi_buser"), s03_axi_bvalid("s03_axi_bvalid"), s03_axi_bready("s03_axi_bready"), s03_axi_arid("s03_axi_arid"), s03_axi_araddr("s03_axi_araddr"), s03_axi_arlen("s03_axi_arlen"), s03_axi_arsize("s03_axi_arsize"), s03_axi_arburst("s03_axi_arburst"), s03_axi_arlock("s03_axi_arlock"), s03_axi_arcache("s03_axi_arcache"), s03_axi_arprot("s03_axi_arprot"), s03_axi_arqos("s03_axi_arqos"), s03_axi_aruser("s03_axi_aruser"), s03_axi_arvalid("s03_axi_arvalid"), s03_axi_arready("s03_axi_arready"), s03_axi_rid("s03_axi_rid"), s03_axi_rdata("s03_axi_rdata"), s03_axi_rresp("s03_axi_rresp"), s03_axi_rlast("s03_axi_rlast"), s03_axi_ruser("s03_axi_ruser"), s03_axi_rvalid("s03_axi_rvalid"), s03_axi_rready("s03_axi_rready"), s03_axi_aclk("s03_axi_aclk"), s03_axi_aresetn("s03_axi_aresetn"), s01_axi_awid("s01_axi_awid"), s01_axi_awaddr("s01_axi_awaddr"), s01_axi_awlen("s01_axi_awlen"), s01_axi_awsize("s01_axi_awsize"), s01_axi_awburst("s01_axi_awburst"), s01_axi_awlock("s01_axi_awlock"), s01_axi_awcache("s01_axi_awcache"), s01_axi_awprot("s01_axi_awprot"), s01_axi_awqos("s01_axi_awqos"), s01_axi_awuser("s01_axi_awuser"), s01_axi_awvalid("s01_axi_awvalid"), s01_axi_awready("s01_axi_awready"), s01_axi_wdata("s01_axi_wdata"), s01_axi_wstrb("s01_axi_wstrb"), s01_axi_wlast("s01_axi_wlast"), s01_axi_wuser("s01_axi_wuser"), s01_axi_wvalid("s01_axi_wvalid"), s01_axi_wready("s01_axi_wready"), s01_axi_bid("s01_axi_bid"), s01_axi_bresp("s01_axi_bresp"), s01_axi_buser("s01_axi_buser"), s01_axi_bvalid("s01_axi_bvalid"), s01_axi_bready("s01_axi_bready"), s01_axi_arid("s01_axi_arid"), s01_axi_araddr("s01_axi_araddr"), s01_axi_arlen("s01_axi_arlen"), s01_axi_arsize("s01_axi_arsize"), s01_axi_arburst("s01_axi_arburst"), s01_axi_arlock("s01_axi_arlock"), s01_axi_arcache("s01_axi_arcache"), s01_axi_arprot("s01_axi_arprot"), s01_axi_arqos("s01_axi_arqos"), s01_axi_aruser("s01_axi_aruser"), s01_axi_arvalid("s01_axi_arvalid"), s01_axi_arready("s01_axi_arready"), s01_axi_rid("s01_axi_rid"), s01_axi_rdata("s01_axi_rdata"), s01_axi_rresp("s01_axi_rresp"), s01_axi_rlast("s01_axi_rlast"), s01_axi_ruser("s01_axi_ruser"), s01_axi_rvalid("s01_axi_rvalid"), s01_axi_rready("s01_axi_rready"), s01_axi_aclk("s01_axi_aclk"), s01_axi_aresetn("s01_axi_aresetn"), s02_axi_awid("s02_axi_awid"), s02_axi_awaddr("s02_axi_awaddr"), s02_axi_awlen("s02_axi_awlen"), s02_axi_awsize("s02_axi_awsize"), s02_axi_awburst("s02_axi_awburst"), s02_axi_awlock("s02_axi_awlock"), s02_axi_awcache("s02_axi_awcache"), s02_axi_awprot("s02_axi_awprot"), s02_axi_awqos("s02_axi_awqos"), s02_axi_awuser("s02_axi_awuser"), s02_axi_awvalid("s02_axi_awvalid"), s02_axi_awready("s02_axi_awready"), s02_axi_wdata("s02_axi_wdata"), s02_axi_wstrb("s02_axi_wstrb"), s02_axi_wlast("s02_axi_wlast"), s02_axi_wuser("s02_axi_wuser"), s02_axi_wvalid("s02_axi_wvalid"), s02_axi_wready("s02_axi_wready"), s02_axi_bid("s02_axi_bid"), s02_axi_bresp("s02_axi_bresp"), s02_axi_buser("s02_axi_buser"), s02_axi_bvalid("s02_axi_bvalid"), s02_axi_bready("s02_axi_bready"), s02_axi_arid("s02_axi_arid"), s02_axi_araddr("s02_axi_araddr"), s02_axi_arlen("s02_axi_arlen"), s02_axi_arsize("s02_axi_arsize"), s02_axi_arburst("s02_axi_arburst"), s02_axi_arlock("s02_axi_arlock"), s02_axi_arcache("s02_axi_arcache"), s02_axi_arprot("s02_axi_arprot"), s02_axi_arqos("s02_axi_arqos"), s02_axi_aruser("s02_axi_aruser"), s02_axi_arvalid("s02_axi_arvalid"), s02_axi_arready("s02_axi_arready"), s02_axi_rid("s02_axi_rid"), s02_axi_rdata("s02_axi_rdata"), s02_axi_rresp("s02_axi_rresp"), s02_axi_rlast("s02_axi_rlast"), s02_axi_ruser("s02_axi_ruser"), s02_axi_rvalid("s02_axi_rvalid"), s02_axi_rready("s02_axi_rready"), s02_axi_aclk("s02_axi_aclk"), s02_axi_aresetn("s02_axi_aresetn"), s04_axi_awaddr("s04_axi_awaddr"), s04_axi_awlen("s04_axi_awlen"), s04_axi_awsize("s04_axi_awsize"), s04_axi_awlock("s04_axi_awlock"), s04_axi_awcache("s04_axi_awcache"), s04_axi_awprot("s04_axi_awprot"), s04_axi_awregion("s04_axi_awregion"), s04_axi_awqos("s04_axi_awqos"), s04_axi_awvalid("s04_axi_awvalid"), s04_axi_awready("s04_axi_awready"), s04_axi_wdata("s04_axi_wdata"), s04_axi_wstrb("s04_axi_wstrb"), s04_axi_wlast("s04_axi_wlast"), s04_axi_wvalid("s04_axi_wvalid"), s04_axi_wready("s04_axi_wready"), s04_axi_bresp("s04_axi_bresp"), s04_axi_bvalid("s04_axi_bvalid"), s04_axi_bready("s04_axi_bready"), s04_axi_araddr("s04_axi_araddr"), s04_axi_arlen("s04_axi_arlen"), s04_axi_arsize("s04_axi_arsize"), s04_axi_arlock("s04_axi_arlock"), s04_axi_arcache("s04_axi_arcache"), s04_axi_arprot("s04_axi_arprot"), s04_axi_arregion("s04_axi_arregion"), s04_axi_arqos("s04_axi_arqos"), s04_axi_arvalid("s04_axi_arvalid"), s04_axi_arready("s04_axi_arready"), s04_axi_rdata("s04_axi_rdata"), s04_axi_rresp("s04_axi_rresp"), s04_axi_rlast("s04_axi_rlast"), s04_axi_rvalid("s04_axi_rvalid"), s04_axi_rready("s04_axi_rready"), s04_axi_aclk("s04_axi_aclk"), s04_axi_aresetn("s04_axi_aresetn")
{

  // initialize pins
  mp_impl->s00_axi_aclk(s00_axi_aclk);
  mp_impl->s00_axi_aresetn(s00_axi_aresetn);
  mp_impl->m00_axi_aclk(m00_axi_aclk);
  mp_impl->m00_axi_aresetn(m00_axi_aresetn);
  mp_impl->m02_axi_aclk(m02_axi_aclk);
  mp_impl->m02_axi_aresetn(m02_axi_aresetn);
  mp_impl->m05_axi_aclk(m05_axi_aclk);
  mp_impl->m05_axi_aresetn(m05_axi_aresetn);
  mp_impl->m03_axi_aclk(m03_axi_aclk);
  mp_impl->m03_axi_aresetn(m03_axi_aresetn);
  mp_impl->m04_axi_aclk(m04_axi_aclk);
  mp_impl->m04_axi_aresetn(m04_axi_aresetn);
  mp_impl->m06_axi_aclk(m06_axi_aclk);
  mp_impl->m06_axi_aresetn(m06_axi_aresetn);
  mp_impl->m01_axi_aclk(m01_axi_aclk);
  mp_impl->m01_axi_aresetn(m01_axi_aresetn);
  mp_impl->s03_axi_aclk(s03_axi_aclk);
  mp_impl->s03_axi_aresetn(s03_axi_aresetn);
  mp_impl->s01_axi_aclk(s01_axi_aclk);
  mp_impl->s01_axi_aresetn(s01_axi_aresetn);
  mp_impl->s02_axi_aclk(s02_axi_aclk);
  mp_impl->s02_axi_aresetn(s02_axi_aresetn);
  mp_impl->s04_axi_aclk(s04_axi_aclk);
  mp_impl->s04_axi_aresetn(s04_axi_aresetn);

  // initialize transactors
  mp_S00_AXI_transactor = NULL;
  mp_S01_AXI_transactor = NULL;
  mp_S02_AXI_transactor = NULL;
  mp_S03_AXI_transactor = NULL;
  mp_S04_AXI_transactor = NULL;
  mp_M00_AXI_transactor = NULL;
  mp_M01_AXI_transactor = NULL;
  mp_M02_AXI_transactor = NULL;
  mp_M03_AXI_transactor = NULL;
  mp_M04_AXI_transactor = NULL;
  mp_M05_AXI_transactor = NULL;
  mp_M06_AXI_transactor = NULL;

  // initialize socket stubs

}

void bd_d216_xtlm_simple_intercon_0_0::before_end_of_elaboration()
{
  // configure 'S00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S00_AXI' transactor parameters
    xsc::common_cpp::properties S00_AXI_transactor_param_props;
    S00_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S00_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S00_AXI_transactor->AWID(s00_axi_awid);
    mp_S00_AXI_transactor->AWADDR(s00_axi_awaddr);
    mp_S00_AXI_transactor->AWLEN(s00_axi_awlen);
    mp_S00_AXI_transactor->AWSIZE(s00_axi_awsize);
    mp_S00_AXI_transactor->AWBURST(s00_axi_awburst);
    mp_S00_AXI_transactor->AWLOCK(s00_axi_awlock);
    mp_S00_AXI_transactor->AWCACHE(s00_axi_awcache);
    mp_S00_AXI_transactor->AWPROT(s00_axi_awprot);
    mp_S00_AXI_transactor->AWQOS(s00_axi_awqos);
    mp_S00_AXI_transactor->AWUSER(s00_axi_awuser);
    mp_S00_AXI_transactor->AWVALID(s00_axi_awvalid);
    mp_S00_AXI_transactor->AWREADY(s00_axi_awready);
    mp_S00_AXI_transactor->WDATA(s00_axi_wdata);
    mp_S00_AXI_transactor->WSTRB(s00_axi_wstrb);
    mp_S00_AXI_transactor->WLAST(s00_axi_wlast);
    mp_S00_AXI_transactor->WUSER(s00_axi_wuser);
    mp_S00_AXI_transactor->WVALID(s00_axi_wvalid);
    mp_S00_AXI_transactor->WREADY(s00_axi_wready);
    mp_S00_AXI_transactor->BID(s00_axi_bid);
    mp_S00_AXI_transactor->BRESP(s00_axi_bresp);
    mp_S00_AXI_transactor->BUSER(s00_axi_buser);
    mp_S00_AXI_transactor->BVALID(s00_axi_bvalid);
    mp_S00_AXI_transactor->BREADY(s00_axi_bready);
    mp_S00_AXI_transactor->ARID(s00_axi_arid);
    mp_S00_AXI_transactor->ARADDR(s00_axi_araddr);
    mp_S00_AXI_transactor->ARLEN(s00_axi_arlen);
    mp_S00_AXI_transactor->ARSIZE(s00_axi_arsize);
    mp_S00_AXI_transactor->ARBURST(s00_axi_arburst);
    mp_S00_AXI_transactor->ARLOCK(s00_axi_arlock);
    mp_S00_AXI_transactor->ARCACHE(s00_axi_arcache);
    mp_S00_AXI_transactor->ARPROT(s00_axi_arprot);
    mp_S00_AXI_transactor->ARQOS(s00_axi_arqos);
    mp_S00_AXI_transactor->ARUSER(s00_axi_aruser);
    mp_S00_AXI_transactor->ARVALID(s00_axi_arvalid);
    mp_S00_AXI_transactor->ARREADY(s00_axi_arready);
    mp_S00_AXI_transactor->RID(s00_axi_rid);
    mp_S00_AXI_transactor->RDATA(s00_axi_rdata);
    mp_S00_AXI_transactor->RRESP(s00_axi_rresp);
    mp_S00_AXI_transactor->RLAST(s00_axi_rlast);
    mp_S00_AXI_transactor->RUSER(s00_axi_ruser);
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

  // configure 'S01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S01_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S01_AXI' transactor parameters
    xsc::common_cpp::properties S01_AXI_transactor_param_props;
    S01_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S01_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S01_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S01_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S01_AXI_transactor->AWID(s01_axi_awid);
    mp_S01_AXI_transactor->AWADDR(s01_axi_awaddr);
    mp_S01_AXI_transactor->AWLEN(s01_axi_awlen);
    mp_S01_AXI_transactor->AWSIZE(s01_axi_awsize);
    mp_S01_AXI_transactor->AWBURST(s01_axi_awburst);
    mp_S01_AXI_transactor->AWLOCK(s01_axi_awlock);
    mp_S01_AXI_transactor->AWCACHE(s01_axi_awcache);
    mp_S01_AXI_transactor->AWPROT(s01_axi_awprot);
    mp_S01_AXI_transactor->AWQOS(s01_axi_awqos);
    mp_S01_AXI_transactor->AWUSER(s01_axi_awuser);
    mp_S01_AXI_transactor->AWVALID(s01_axi_awvalid);
    mp_S01_AXI_transactor->AWREADY(s01_axi_awready);
    mp_S01_AXI_transactor->WDATA(s01_axi_wdata);
    mp_S01_AXI_transactor->WSTRB(s01_axi_wstrb);
    mp_S01_AXI_transactor->WLAST(s01_axi_wlast);
    mp_S01_AXI_transactor->WUSER(s01_axi_wuser);
    mp_S01_AXI_transactor->WVALID(s01_axi_wvalid);
    mp_S01_AXI_transactor->WREADY(s01_axi_wready);
    mp_S01_AXI_transactor->BID(s01_axi_bid);
    mp_S01_AXI_transactor->BRESP(s01_axi_bresp);
    mp_S01_AXI_transactor->BUSER(s01_axi_buser);
    mp_S01_AXI_transactor->BVALID(s01_axi_bvalid);
    mp_S01_AXI_transactor->BREADY(s01_axi_bready);
    mp_S01_AXI_transactor->ARID(s01_axi_arid);
    mp_S01_AXI_transactor->ARADDR(s01_axi_araddr);
    mp_S01_AXI_transactor->ARLEN(s01_axi_arlen);
    mp_S01_AXI_transactor->ARSIZE(s01_axi_arsize);
    mp_S01_AXI_transactor->ARBURST(s01_axi_arburst);
    mp_S01_AXI_transactor->ARLOCK(s01_axi_arlock);
    mp_S01_AXI_transactor->ARCACHE(s01_axi_arcache);
    mp_S01_AXI_transactor->ARPROT(s01_axi_arprot);
    mp_S01_AXI_transactor->ARQOS(s01_axi_arqos);
    mp_S01_AXI_transactor->ARUSER(s01_axi_aruser);
    mp_S01_AXI_transactor->ARVALID(s01_axi_arvalid);
    mp_S01_AXI_transactor->ARREADY(s01_axi_arready);
    mp_S01_AXI_transactor->RID(s01_axi_rid);
    mp_S01_AXI_transactor->RDATA(s01_axi_rdata);
    mp_S01_AXI_transactor->RRESP(s01_axi_rresp);
    mp_S01_AXI_transactor->RLAST(s01_axi_rlast);
    mp_S01_AXI_transactor->RUSER(s01_axi_ruser);
    mp_S01_AXI_transactor->RVALID(s01_axi_rvalid);
    mp_S01_AXI_transactor->RREADY(s01_axi_rready);
    mp_S01_AXI_transactor->CLK(s01_axi_aclk);
    mp_S01_AXI_transactor->RST(s01_axi_aresetn);

    // S01_AXI' transactor sockets

    mp_impl->target_1_rd_socket->bind(*(mp_S01_AXI_transactor->rd_socket));
    mp_impl->target_1_wr_socket->bind(*(mp_S01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S02_AXI' transactor parameters
    xsc::common_cpp::properties S02_AXI_transactor_param_props;
    S02_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S02_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S02_AXI_transactor->AWID(s02_axi_awid);
    mp_S02_AXI_transactor->AWADDR(s02_axi_awaddr);
    mp_S02_AXI_transactor->AWLEN(s02_axi_awlen);
    mp_S02_AXI_transactor->AWSIZE(s02_axi_awsize);
    mp_S02_AXI_transactor->AWBURST(s02_axi_awburst);
    mp_S02_AXI_transactor->AWLOCK(s02_axi_awlock);
    mp_S02_AXI_transactor->AWCACHE(s02_axi_awcache);
    mp_S02_AXI_transactor->AWPROT(s02_axi_awprot);
    mp_S02_AXI_transactor->AWQOS(s02_axi_awqos);
    mp_S02_AXI_transactor->AWUSER(s02_axi_awuser);
    mp_S02_AXI_transactor->AWVALID(s02_axi_awvalid);
    mp_S02_AXI_transactor->AWREADY(s02_axi_awready);
    mp_S02_AXI_transactor->WDATA(s02_axi_wdata);
    mp_S02_AXI_transactor->WSTRB(s02_axi_wstrb);
    mp_S02_AXI_transactor->WLAST(s02_axi_wlast);
    mp_S02_AXI_transactor->WUSER(s02_axi_wuser);
    mp_S02_AXI_transactor->WVALID(s02_axi_wvalid);
    mp_S02_AXI_transactor->WREADY(s02_axi_wready);
    mp_S02_AXI_transactor->BID(s02_axi_bid);
    mp_S02_AXI_transactor->BRESP(s02_axi_bresp);
    mp_S02_AXI_transactor->BUSER(s02_axi_buser);
    mp_S02_AXI_transactor->BVALID(s02_axi_bvalid);
    mp_S02_AXI_transactor->BREADY(s02_axi_bready);
    mp_S02_AXI_transactor->ARID(s02_axi_arid);
    mp_S02_AXI_transactor->ARADDR(s02_axi_araddr);
    mp_S02_AXI_transactor->ARLEN(s02_axi_arlen);
    mp_S02_AXI_transactor->ARSIZE(s02_axi_arsize);
    mp_S02_AXI_transactor->ARBURST(s02_axi_arburst);
    mp_S02_AXI_transactor->ARLOCK(s02_axi_arlock);
    mp_S02_AXI_transactor->ARCACHE(s02_axi_arcache);
    mp_S02_AXI_transactor->ARPROT(s02_axi_arprot);
    mp_S02_AXI_transactor->ARQOS(s02_axi_arqos);
    mp_S02_AXI_transactor->ARUSER(s02_axi_aruser);
    mp_S02_AXI_transactor->ARVALID(s02_axi_arvalid);
    mp_S02_AXI_transactor->ARREADY(s02_axi_arready);
    mp_S02_AXI_transactor->RID(s02_axi_rid);
    mp_S02_AXI_transactor->RDATA(s02_axi_rdata);
    mp_S02_AXI_transactor->RRESP(s02_axi_rresp);
    mp_S02_AXI_transactor->RLAST(s02_axi_rlast);
    mp_S02_AXI_transactor->RUSER(s02_axi_ruser);
    mp_S02_AXI_transactor->RVALID(s02_axi_rvalid);
    mp_S02_AXI_transactor->RREADY(s02_axi_rready);
    mp_S02_AXI_transactor->CLK(s02_axi_aclk);
    mp_S02_AXI_transactor->RST(s02_axi_aresetn);

    // S02_AXI' transactor sockets

    mp_impl->target_2_rd_socket->bind(*(mp_S02_AXI_transactor->rd_socket));
    mp_impl->target_2_wr_socket->bind(*(mp_S02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S03_AXI' transactor parameters
    xsc::common_cpp::properties S03_AXI_transactor_param_props;
    S03_AXI_transactor_param_props.addLong("DATA_WIDTH", "32");
    S03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    S03_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    S03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S03_AXI_transactor->AWID(s03_axi_awid);
    mp_S03_AXI_transactor->AWADDR(s03_axi_awaddr);
    mp_S03_AXI_transactor->AWLEN(s03_axi_awlen);
    mp_S03_AXI_transactor->AWSIZE(s03_axi_awsize);
    mp_S03_AXI_transactor->AWBURST(s03_axi_awburst);
    mp_S03_AXI_transactor->AWLOCK(s03_axi_awlock);
    mp_S03_AXI_transactor->AWCACHE(s03_axi_awcache);
    mp_S03_AXI_transactor->AWPROT(s03_axi_awprot);
    mp_S03_AXI_transactor->AWQOS(s03_axi_awqos);
    mp_S03_AXI_transactor->AWUSER(s03_axi_awuser);
    mp_S03_AXI_transactor->AWVALID(s03_axi_awvalid);
    mp_S03_AXI_transactor->AWREADY(s03_axi_awready);
    mp_S03_AXI_transactor->WDATA(s03_axi_wdata);
    mp_S03_AXI_transactor->WSTRB(s03_axi_wstrb);
    mp_S03_AXI_transactor->WLAST(s03_axi_wlast);
    mp_S03_AXI_transactor->WUSER(s03_axi_wuser);
    mp_S03_AXI_transactor->WVALID(s03_axi_wvalid);
    mp_S03_AXI_transactor->WREADY(s03_axi_wready);
    mp_S03_AXI_transactor->BID(s03_axi_bid);
    mp_S03_AXI_transactor->BRESP(s03_axi_bresp);
    mp_S03_AXI_transactor->BUSER(s03_axi_buser);
    mp_S03_AXI_transactor->BVALID(s03_axi_bvalid);
    mp_S03_AXI_transactor->BREADY(s03_axi_bready);
    mp_S03_AXI_transactor->ARID(s03_axi_arid);
    mp_S03_AXI_transactor->ARADDR(s03_axi_araddr);
    mp_S03_AXI_transactor->ARLEN(s03_axi_arlen);
    mp_S03_AXI_transactor->ARSIZE(s03_axi_arsize);
    mp_S03_AXI_transactor->ARBURST(s03_axi_arburst);
    mp_S03_AXI_transactor->ARLOCK(s03_axi_arlock);
    mp_S03_AXI_transactor->ARCACHE(s03_axi_arcache);
    mp_S03_AXI_transactor->ARPROT(s03_axi_arprot);
    mp_S03_AXI_transactor->ARQOS(s03_axi_arqos);
    mp_S03_AXI_transactor->ARUSER(s03_axi_aruser);
    mp_S03_AXI_transactor->ARVALID(s03_axi_arvalid);
    mp_S03_AXI_transactor->ARREADY(s03_axi_arready);
    mp_S03_AXI_transactor->RID(s03_axi_rid);
    mp_S03_AXI_transactor->RDATA(s03_axi_rdata);
    mp_S03_AXI_transactor->RRESP(s03_axi_rresp);
    mp_S03_AXI_transactor->RLAST(s03_axi_rlast);
    mp_S03_AXI_transactor->RUSER(s03_axi_ruser);
    mp_S03_AXI_transactor->RVALID(s03_axi_rvalid);
    mp_S03_AXI_transactor->RREADY(s03_axi_rready);
    mp_S03_AXI_transactor->CLK(s03_axi_aclk);
    mp_S03_AXI_transactor->RST(s03_axi_aresetn);

    // S03_AXI' transactor sockets

    mp_impl->target_3_rd_socket->bind(*(mp_S03_AXI_transactor->rd_socket));
    mp_impl->target_3_wr_socket->bind(*(mp_S03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'S04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "S04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'S04_AXI' transactor parameters
    xsc::common_cpp::properties S04_AXI_transactor_param_props;
    S04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    S04_AXI_transactor_param_props.addLong("FREQ_HZ", "300000000");
    S04_AXI_transactor_param_props.addLong("ID_WIDTH", "0");
    S04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "64");
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

    mp_S04_AXI_transactor->AWADDR(s04_axi_awaddr);
    mp_S04_AXI_transactor->AWLEN(s04_axi_awlen);
    mp_S04_AXI_transactor->AWSIZE(s04_axi_awsize);
    mp_S04_AXI_transactor->AWLOCK(s04_axi_awlock);
    mp_S04_AXI_transactor->AWCACHE(s04_axi_awcache);
    mp_S04_AXI_transactor->AWPROT(s04_axi_awprot);
    mp_S04_AXI_transactor->AWREGION(s04_axi_awregion);
    mp_S04_AXI_transactor->AWQOS(s04_axi_awqos);
    mp_S04_AXI_transactor->AWVALID(s04_axi_awvalid);
    mp_S04_AXI_transactor->AWREADY(s04_axi_awready);
    mp_S04_AXI_transactor->WDATA(s04_axi_wdata);
    mp_S04_AXI_transactor->WSTRB(s04_axi_wstrb);
    mp_S04_AXI_transactor->WLAST(s04_axi_wlast);
    mp_S04_AXI_transactor->WVALID(s04_axi_wvalid);
    mp_S04_AXI_transactor->WREADY(s04_axi_wready);
    mp_S04_AXI_transactor->BRESP(s04_axi_bresp);
    mp_S04_AXI_transactor->BVALID(s04_axi_bvalid);
    mp_S04_AXI_transactor->BREADY(s04_axi_bready);
    mp_S04_AXI_transactor->ARADDR(s04_axi_araddr);
    mp_S04_AXI_transactor->ARLEN(s04_axi_arlen);
    mp_S04_AXI_transactor->ARSIZE(s04_axi_arsize);
    mp_S04_AXI_transactor->ARLOCK(s04_axi_arlock);
    mp_S04_AXI_transactor->ARCACHE(s04_axi_arcache);
    mp_S04_AXI_transactor->ARPROT(s04_axi_arprot);
    mp_S04_AXI_transactor->ARREGION(s04_axi_arregion);
    mp_S04_AXI_transactor->ARQOS(s04_axi_arqos);
    mp_S04_AXI_transactor->ARVALID(s04_axi_arvalid);
    mp_S04_AXI_transactor->ARREADY(s04_axi_arready);
    mp_S04_AXI_transactor->RDATA(s04_axi_rdata);
    mp_S04_AXI_transactor->RRESP(s04_axi_rresp);
    mp_S04_AXI_transactor->RLAST(s04_axi_rlast);
    mp_S04_AXI_transactor->RVALID(s04_axi_rvalid);
    mp_S04_AXI_transactor->RREADY(s04_axi_rready);
    mp_S04_AXI_transactor->CLK(s04_axi_aclk);
    mp_S04_AXI_transactor->RST(s04_axi_aresetn);

    // S04_AXI' transactor sockets

    mp_impl->target_4_rd_socket->bind(*(mp_S04_AXI_transactor->rd_socket));
    mp_impl->target_4_wr_socket->bind(*(mp_S04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M00_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M00_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M00_AXI' transactor parameters
    xsc::common_cpp::properties M00_AXI_transactor_param_props;
    M00_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M00_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M00_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M00_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
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

    mp_M00_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,5,32,1,1,32,1>("M00_AXI_transactor", M00_AXI_transactor_param_props);

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

  // configure 'M01_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M01_AXI_TLM_MODE") != 1)
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

    mp_M01_AXI_transactor->AWADDR(m01_axi_awaddr);
    mp_M01_AXI_transactor->AWLEN(m01_axi_awlen);
    mp_M01_AXI_transactor->AWSIZE(m01_axi_awsize);
    mp_M01_AXI_transactor->AWBURST(m01_axi_awburst);
    mp_M01_AXI_transactor->AWPROT(m01_axi_awprot);
    mp_M01_AXI_transactor->AWVALID(m01_axi_awvalid);
    mp_M01_AXI_transactor->AWREADY(m01_axi_awready);
    mp_M01_AXI_transactor->WDATA(m01_axi_wdata);
    mp_M01_AXI_transactor->WSTRB(m01_axi_wstrb);
    mp_M01_AXI_transactor->WLAST(m01_axi_wlast);
    mp_M01_AXI_transactor->WVALID(m01_axi_wvalid);
    mp_M01_AXI_transactor->WREADY(m01_axi_wready);
    mp_M01_AXI_transactor->BRESP(m01_axi_bresp);
    mp_M01_AXI_transactor->BVALID(m01_axi_bvalid);
    mp_M01_AXI_transactor->BREADY(m01_axi_bready);
    mp_M01_AXI_transactor->ARADDR(m01_axi_araddr);
    mp_M01_AXI_transactor->ARLEN(m01_axi_arlen);
    mp_M01_AXI_transactor->ARSIZE(m01_axi_arsize);
    mp_M01_AXI_transactor->ARBURST(m01_axi_arburst);
    mp_M01_AXI_transactor->ARPROT(m01_axi_arprot);
    mp_M01_AXI_transactor->ARVALID(m01_axi_arvalid);
    mp_M01_AXI_transactor->ARREADY(m01_axi_arready);
    mp_M01_AXI_transactor->RDATA(m01_axi_rdata);
    mp_M01_AXI_transactor->RRESP(m01_axi_rresp);
    mp_M01_AXI_transactor->RLAST(m01_axi_rlast);
    mp_M01_AXI_transactor->RVALID(m01_axi_rvalid);
    mp_M01_AXI_transactor->RREADY(m01_axi_rready);
    mp_M01_AXI_transactor->CLK(m01_axi_aclk);
    mp_M01_AXI_transactor->RST(m01_axi_aresetn);

    // M01_AXI' transactor sockets

    mp_impl->initiator_1_rd_socket->bind(*(mp_M01_AXI_transactor->rd_socket));
    mp_impl->initiator_1_wr_socket->bind(*(mp_M01_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M02_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M02_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M02_AXI' transactor parameters
    xsc::common_cpp::properties M02_AXI_transactor_param_props;
    M02_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M02_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M02_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M02_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
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

    mp_M02_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,5,32,1,1,32,1>("M02_AXI_transactor", M02_AXI_transactor_param_props);

    // M02_AXI' transactor ports

    mp_M02_AXI_transactor->AWID(m02_axi_awid);
    mp_M02_AXI_transactor->AWADDR(m02_axi_awaddr);
    mp_M02_AXI_transactor->AWLEN(m02_axi_awlen);
    mp_M02_AXI_transactor->AWSIZE(m02_axi_awsize);
    mp_M02_AXI_transactor->AWBURST(m02_axi_awburst);
    mp_M02_AXI_transactor->AWLOCK(m02_axi_awlock);
    mp_M02_AXI_transactor->AWCACHE(m02_axi_awcache);
    mp_M02_AXI_transactor->AWPROT(m02_axi_awprot);
    mp_M02_AXI_transactor->AWQOS(m02_axi_awqos);
    mp_M02_AXI_transactor->AWUSER(m02_axi_awuser);
    mp_M02_AXI_transactor->AWVALID(m02_axi_awvalid);
    mp_M02_AXI_transactor->AWREADY(m02_axi_awready);
    mp_M02_AXI_transactor->WDATA(m02_axi_wdata);
    mp_M02_AXI_transactor->WSTRB(m02_axi_wstrb);
    mp_M02_AXI_transactor->WLAST(m02_axi_wlast);
    mp_M02_AXI_transactor->WUSER(m02_axi_wuser);
    mp_M02_AXI_transactor->WVALID(m02_axi_wvalid);
    mp_M02_AXI_transactor->WREADY(m02_axi_wready);
    mp_M02_AXI_transactor->BID(m02_axi_bid);
    mp_M02_AXI_transactor->BRESP(m02_axi_bresp);
    mp_M02_AXI_transactor->BUSER(m02_axi_buser);
    mp_M02_AXI_transactor->BVALID(m02_axi_bvalid);
    mp_M02_AXI_transactor->BREADY(m02_axi_bready);
    mp_M02_AXI_transactor->ARID(m02_axi_arid);
    mp_M02_AXI_transactor->ARADDR(m02_axi_araddr);
    mp_M02_AXI_transactor->ARLEN(m02_axi_arlen);
    mp_M02_AXI_transactor->ARSIZE(m02_axi_arsize);
    mp_M02_AXI_transactor->ARBURST(m02_axi_arburst);
    mp_M02_AXI_transactor->ARLOCK(m02_axi_arlock);
    mp_M02_AXI_transactor->ARCACHE(m02_axi_arcache);
    mp_M02_AXI_transactor->ARPROT(m02_axi_arprot);
    mp_M02_AXI_transactor->ARQOS(m02_axi_arqos);
    mp_M02_AXI_transactor->ARUSER(m02_axi_aruser);
    mp_M02_AXI_transactor->ARVALID(m02_axi_arvalid);
    mp_M02_AXI_transactor->ARREADY(m02_axi_arready);
    mp_M02_AXI_transactor->RID(m02_axi_rid);
    mp_M02_AXI_transactor->RDATA(m02_axi_rdata);
    mp_M02_AXI_transactor->RRESP(m02_axi_rresp);
    mp_M02_AXI_transactor->RLAST(m02_axi_rlast);
    mp_M02_AXI_transactor->RUSER(m02_axi_ruser);
    mp_M02_AXI_transactor->RVALID(m02_axi_rvalid);
    mp_M02_AXI_transactor->RREADY(m02_axi_rready);
    mp_M02_AXI_transactor->CLK(m02_axi_aclk);
    mp_M02_AXI_transactor->RST(m02_axi_aresetn);

    // M02_AXI' transactor sockets

    mp_impl->initiator_2_rd_socket->bind(*(mp_M02_AXI_transactor->rd_socket));
    mp_impl->initiator_2_wr_socket->bind(*(mp_M02_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M03_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M03_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M03_AXI' transactor parameters
    xsc::common_cpp::properties M03_AXI_transactor_param_props;
    M03_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M03_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M03_AXI_transactor_param_props.addLong("ID_WIDTH", "5");
    M03_AXI_transactor_param_props.addLong("ADDR_WIDTH", "34");
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

    mp_M03_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,34,5,32,1,1,32,1>("M03_AXI_transactor", M03_AXI_transactor_param_props);

    // M03_AXI' transactor ports

    mp_M03_AXI_transactor->AWID(m03_axi_awid);
    mp_M03_AXI_transactor->AWADDR(m03_axi_awaddr);
    mp_M03_AXI_transactor->AWLEN(m03_axi_awlen);
    mp_M03_AXI_transactor->AWSIZE(m03_axi_awsize);
    mp_M03_AXI_transactor->AWBURST(m03_axi_awburst);
    mp_M03_AXI_transactor->AWLOCK(m03_axi_awlock);
    mp_M03_AXI_transactor->AWCACHE(m03_axi_awcache);
    mp_M03_AXI_transactor->AWPROT(m03_axi_awprot);
    mp_M03_AXI_transactor->AWQOS(m03_axi_awqos);
    mp_M03_AXI_transactor->AWUSER(m03_axi_awuser);
    mp_M03_AXI_transactor->AWVALID(m03_axi_awvalid);
    mp_M03_AXI_transactor->AWREADY(m03_axi_awready);
    mp_M03_AXI_transactor->WDATA(m03_axi_wdata);
    mp_M03_AXI_transactor->WSTRB(m03_axi_wstrb);
    mp_M03_AXI_transactor->WLAST(m03_axi_wlast);
    mp_M03_AXI_transactor->WUSER(m03_axi_wuser);
    mp_M03_AXI_transactor->WVALID(m03_axi_wvalid);
    mp_M03_AXI_transactor->WREADY(m03_axi_wready);
    mp_M03_AXI_transactor->BID(m03_axi_bid);
    mp_M03_AXI_transactor->BRESP(m03_axi_bresp);
    mp_M03_AXI_transactor->BUSER(m03_axi_buser);
    mp_M03_AXI_transactor->BVALID(m03_axi_bvalid);
    mp_M03_AXI_transactor->BREADY(m03_axi_bready);
    mp_M03_AXI_transactor->ARID(m03_axi_arid);
    mp_M03_AXI_transactor->ARADDR(m03_axi_araddr);
    mp_M03_AXI_transactor->ARLEN(m03_axi_arlen);
    mp_M03_AXI_transactor->ARSIZE(m03_axi_arsize);
    mp_M03_AXI_transactor->ARBURST(m03_axi_arburst);
    mp_M03_AXI_transactor->ARLOCK(m03_axi_arlock);
    mp_M03_AXI_transactor->ARCACHE(m03_axi_arcache);
    mp_M03_AXI_transactor->ARPROT(m03_axi_arprot);
    mp_M03_AXI_transactor->ARQOS(m03_axi_arqos);
    mp_M03_AXI_transactor->ARUSER(m03_axi_aruser);
    mp_M03_AXI_transactor->ARVALID(m03_axi_arvalid);
    mp_M03_AXI_transactor->ARREADY(m03_axi_arready);
    mp_M03_AXI_transactor->RID(m03_axi_rid);
    mp_M03_AXI_transactor->RDATA(m03_axi_rdata);
    mp_M03_AXI_transactor->RRESP(m03_axi_rresp);
    mp_M03_AXI_transactor->RLAST(m03_axi_rlast);
    mp_M03_AXI_transactor->RUSER(m03_axi_ruser);
    mp_M03_AXI_transactor->RVALID(m03_axi_rvalid);
    mp_M03_AXI_transactor->RREADY(m03_axi_rready);
    mp_M03_AXI_transactor->CLK(m03_axi_aclk);
    mp_M03_AXI_transactor->RST(m03_axi_aresetn);

    // M03_AXI' transactor sockets

    mp_impl->initiator_3_rd_socket->bind(*(mp_M03_AXI_transactor->rd_socket));
    mp_impl->initiator_3_wr_socket->bind(*(mp_M03_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M04_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M04_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M04_AXI' transactor parameters
    xsc::common_cpp::properties M04_AXI_transactor_param_props;
    M04_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M04_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M04_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("ADDR_WIDTH", "17");
    M04_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M04_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M04_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M04_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M04_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M04_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M04_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M04_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M04_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M04_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M04_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M04_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M04_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M04_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M04_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M04_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M04_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M04_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M04_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M04_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M04_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M04_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M04_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,17,1,1,1,1,1,1>("M04_AXI_transactor", M04_AXI_transactor_param_props);

    // M04_AXI' transactor ports

    mp_M04_AXI_transactor->AWID(m04_axi_awid);
    mp_M04_AXI_transactor->AWADDR(m04_axi_awaddr);
    mp_M04_AXI_transactor->AWLEN(m04_axi_awlen);
    mp_M04_AXI_transactor->AWSIZE(m04_axi_awsize);
    mp_M04_AXI_transactor->AWBURST(m04_axi_awburst);
    mp_M04_AXI_transactor->AWLOCK(m04_axi_awlock);
    mp_M04_AXI_transactor->AWCACHE(m04_axi_awcache);
    mp_M04_AXI_transactor->AWPROT(m04_axi_awprot);
    mp_M04_AXI_transactor->AWQOS(m04_axi_awqos);
    mp_M04_AXI_transactor->AWUSER(m04_axi_awuser);
    mp_M04_AXI_transactor->AWVALID(m04_axi_awvalid);
    mp_M04_AXI_transactor->AWREADY(m04_axi_awready);
    mp_M04_AXI_transactor->WDATA(m04_axi_wdata);
    mp_M04_AXI_transactor->WSTRB(m04_axi_wstrb);
    mp_M04_AXI_transactor->WLAST(m04_axi_wlast);
    mp_M04_AXI_transactor->WUSER(m04_axi_wuser);
    mp_M04_AXI_transactor->WVALID(m04_axi_wvalid);
    mp_M04_AXI_transactor->WREADY(m04_axi_wready);
    mp_M04_AXI_transactor->BID(m04_axi_bid);
    mp_M04_AXI_transactor->BRESP(m04_axi_bresp);
    mp_M04_AXI_transactor->BUSER(m04_axi_buser);
    mp_M04_AXI_transactor->BVALID(m04_axi_bvalid);
    mp_M04_AXI_transactor->BREADY(m04_axi_bready);
    mp_M04_AXI_transactor->ARID(m04_axi_arid);
    mp_M04_AXI_transactor->ARADDR(m04_axi_araddr);
    mp_M04_AXI_transactor->ARLEN(m04_axi_arlen);
    mp_M04_AXI_transactor->ARSIZE(m04_axi_arsize);
    mp_M04_AXI_transactor->ARBURST(m04_axi_arburst);
    mp_M04_AXI_transactor->ARLOCK(m04_axi_arlock);
    mp_M04_AXI_transactor->ARCACHE(m04_axi_arcache);
    mp_M04_AXI_transactor->ARPROT(m04_axi_arprot);
    mp_M04_AXI_transactor->ARQOS(m04_axi_arqos);
    mp_M04_AXI_transactor->ARUSER(m04_axi_aruser);
    mp_M04_AXI_transactor->ARVALID(m04_axi_arvalid);
    mp_M04_AXI_transactor->ARREADY(m04_axi_arready);
    mp_M04_AXI_transactor->RID(m04_axi_rid);
    mp_M04_AXI_transactor->RDATA(m04_axi_rdata);
    mp_M04_AXI_transactor->RRESP(m04_axi_rresp);
    mp_M04_AXI_transactor->RLAST(m04_axi_rlast);
    mp_M04_AXI_transactor->RUSER(m04_axi_ruser);
    mp_M04_AXI_transactor->RVALID(m04_axi_rvalid);
    mp_M04_AXI_transactor->RREADY(m04_axi_rready);
    mp_M04_AXI_transactor->CLK(m04_axi_aclk);
    mp_M04_AXI_transactor->RST(m04_axi_aresetn);

    // M04_AXI' transactor sockets

    mp_impl->initiator_4_rd_socket->bind(*(mp_M04_AXI_transactor->rd_socket));
    mp_impl->initiator_4_wr_socket->bind(*(mp_M04_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M05_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M05_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M05_AXI' transactor parameters
    xsc::common_cpp::properties M05_AXI_transactor_param_props;
    M05_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M05_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M05_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("ADDR_WIDTH", "17");
    M05_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M05_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M05_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M05_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M05_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M05_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M05_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M05_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M05_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M05_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M05_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M05_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M05_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M05_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M05_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M05_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M05_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M05_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M05_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M05_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M05_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M05_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M05_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,17,1,1,1,1,1,1>("M05_AXI_transactor", M05_AXI_transactor_param_props);

    // M05_AXI' transactor ports

    mp_M05_AXI_transactor->AWID(m05_axi_awid);
    mp_M05_AXI_transactor->AWADDR(m05_axi_awaddr);
    mp_M05_AXI_transactor->AWLEN(m05_axi_awlen);
    mp_M05_AXI_transactor->AWSIZE(m05_axi_awsize);
    mp_M05_AXI_transactor->AWBURST(m05_axi_awburst);
    mp_M05_AXI_transactor->AWLOCK(m05_axi_awlock);
    mp_M05_AXI_transactor->AWCACHE(m05_axi_awcache);
    mp_M05_AXI_transactor->AWPROT(m05_axi_awprot);
    mp_M05_AXI_transactor->AWQOS(m05_axi_awqos);
    mp_M05_AXI_transactor->AWUSER(m05_axi_awuser);
    mp_M05_AXI_transactor->AWVALID(m05_axi_awvalid);
    mp_M05_AXI_transactor->AWREADY(m05_axi_awready);
    mp_M05_AXI_transactor->WDATA(m05_axi_wdata);
    mp_M05_AXI_transactor->WSTRB(m05_axi_wstrb);
    mp_M05_AXI_transactor->WLAST(m05_axi_wlast);
    mp_M05_AXI_transactor->WUSER(m05_axi_wuser);
    mp_M05_AXI_transactor->WVALID(m05_axi_wvalid);
    mp_M05_AXI_transactor->WREADY(m05_axi_wready);
    mp_M05_AXI_transactor->BID(m05_axi_bid);
    mp_M05_AXI_transactor->BRESP(m05_axi_bresp);
    mp_M05_AXI_transactor->BUSER(m05_axi_buser);
    mp_M05_AXI_transactor->BVALID(m05_axi_bvalid);
    mp_M05_AXI_transactor->BREADY(m05_axi_bready);
    mp_M05_AXI_transactor->ARID(m05_axi_arid);
    mp_M05_AXI_transactor->ARADDR(m05_axi_araddr);
    mp_M05_AXI_transactor->ARLEN(m05_axi_arlen);
    mp_M05_AXI_transactor->ARSIZE(m05_axi_arsize);
    mp_M05_AXI_transactor->ARBURST(m05_axi_arburst);
    mp_M05_AXI_transactor->ARLOCK(m05_axi_arlock);
    mp_M05_AXI_transactor->ARCACHE(m05_axi_arcache);
    mp_M05_AXI_transactor->ARPROT(m05_axi_arprot);
    mp_M05_AXI_transactor->ARQOS(m05_axi_arqos);
    mp_M05_AXI_transactor->ARUSER(m05_axi_aruser);
    mp_M05_AXI_transactor->ARVALID(m05_axi_arvalid);
    mp_M05_AXI_transactor->ARREADY(m05_axi_arready);
    mp_M05_AXI_transactor->RID(m05_axi_rid);
    mp_M05_AXI_transactor->RDATA(m05_axi_rdata);
    mp_M05_AXI_transactor->RRESP(m05_axi_rresp);
    mp_M05_AXI_transactor->RLAST(m05_axi_rlast);
    mp_M05_AXI_transactor->RUSER(m05_axi_ruser);
    mp_M05_AXI_transactor->RVALID(m05_axi_rvalid);
    mp_M05_AXI_transactor->RREADY(m05_axi_rready);
    mp_M05_AXI_transactor->CLK(m05_axi_aclk);
    mp_M05_AXI_transactor->RST(m05_axi_aresetn);

    // M05_AXI' transactor sockets

    mp_impl->initiator_5_rd_socket->bind(*(mp_M05_AXI_transactor->rd_socket));
    mp_impl->initiator_5_wr_socket->bind(*(mp_M05_AXI_transactor->wr_socket));
  }
  else
  {
  }

  // configure 'M06_AXI' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("bd_d216_xtlm_simple_intercon_0_0", "M06_AXI_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'M06_AXI' transactor parameters
    xsc::common_cpp::properties M06_AXI_transactor_param_props;
    M06_AXI_transactor_param_props.addLong("DATA_WIDTH", "512");
    M06_AXI_transactor_param_props.addLong("FREQ_HZ", "300120048");
    M06_AXI_transactor_param_props.addLong("ID_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("ADDR_WIDTH", "17");
    M06_AXI_transactor_param_props.addLong("AWUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("ARUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("WUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("RUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("BUSER_WIDTH", "1");
    M06_AXI_transactor_param_props.addLong("HAS_BURST", "1");
    M06_AXI_transactor_param_props.addLong("HAS_LOCK", "1");
    M06_AXI_transactor_param_props.addLong("HAS_PROT", "1");
    M06_AXI_transactor_param_props.addLong("HAS_CACHE", "1");
    M06_AXI_transactor_param_props.addLong("HAS_QOS", "1");
    M06_AXI_transactor_param_props.addLong("HAS_REGION", "0");
    M06_AXI_transactor_param_props.addLong("HAS_WSTRB", "1");
    M06_AXI_transactor_param_props.addLong("HAS_BRESP", "1");
    M06_AXI_transactor_param_props.addLong("HAS_RRESP", "1");
    M06_AXI_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    M06_AXI_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    M06_AXI_transactor_param_props.addLong("MAX_BURST_LENGTH", "256");
    M06_AXI_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    M06_AXI_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    M06_AXI_transactor_param_props.addLong("HAS_SIZE", "1");
    M06_AXI_transactor_param_props.addLong("HAS_RESET", "1");
    M06_AXI_transactor_param_props.addFloat("PHASE", "0.000");
    M06_AXI_transactor_param_props.addString("PROTOCOL", "AXI4");
    M06_AXI_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    M06_AXI_transactor_param_props.addString("CLK_DOMAIN", "pfm_dynamic_ddr_default_clk_0");
    M06_AXI_transactor_param_props.addString("SLR_ASSIGNMENT", "");

    mp_M06_AXI_transactor = new xtlm::xaximm_xtlm2pin_t<512,17,1,1,1,1,1,1>("M06_AXI_transactor", M06_AXI_transactor_param_props);

    // M06_AXI' transactor ports

    mp_M06_AXI_transactor->AWID(m06_axi_awid);
    mp_M06_AXI_transactor->AWADDR(m06_axi_awaddr);
    mp_M06_AXI_transactor->AWLEN(m06_axi_awlen);
    mp_M06_AXI_transactor->AWSIZE(m06_axi_awsize);
    mp_M06_AXI_transactor->AWBURST(m06_axi_awburst);
    mp_M06_AXI_transactor->AWLOCK(m06_axi_awlock);
    mp_M06_AXI_transactor->AWCACHE(m06_axi_awcache);
    mp_M06_AXI_transactor->AWPROT(m06_axi_awprot);
    mp_M06_AXI_transactor->AWQOS(m06_axi_awqos);
    mp_M06_AXI_transactor->AWUSER(m06_axi_awuser);
    mp_M06_AXI_transactor->AWVALID(m06_axi_awvalid);
    mp_M06_AXI_transactor->AWREADY(m06_axi_awready);
    mp_M06_AXI_transactor->WDATA(m06_axi_wdata);
    mp_M06_AXI_transactor->WSTRB(m06_axi_wstrb);
    mp_M06_AXI_transactor->WLAST(m06_axi_wlast);
    mp_M06_AXI_transactor->WUSER(m06_axi_wuser);
    mp_M06_AXI_transactor->WVALID(m06_axi_wvalid);
    mp_M06_AXI_transactor->WREADY(m06_axi_wready);
    mp_M06_AXI_transactor->BID(m06_axi_bid);
    mp_M06_AXI_transactor->BRESP(m06_axi_bresp);
    mp_M06_AXI_transactor->BUSER(m06_axi_buser);
    mp_M06_AXI_transactor->BVALID(m06_axi_bvalid);
    mp_M06_AXI_transactor->BREADY(m06_axi_bready);
    mp_M06_AXI_transactor->ARID(m06_axi_arid);
    mp_M06_AXI_transactor->ARADDR(m06_axi_araddr);
    mp_M06_AXI_transactor->ARLEN(m06_axi_arlen);
    mp_M06_AXI_transactor->ARSIZE(m06_axi_arsize);
    mp_M06_AXI_transactor->ARBURST(m06_axi_arburst);
    mp_M06_AXI_transactor->ARLOCK(m06_axi_arlock);
    mp_M06_AXI_transactor->ARCACHE(m06_axi_arcache);
    mp_M06_AXI_transactor->ARPROT(m06_axi_arprot);
    mp_M06_AXI_transactor->ARQOS(m06_axi_arqos);
    mp_M06_AXI_transactor->ARUSER(m06_axi_aruser);
    mp_M06_AXI_transactor->ARVALID(m06_axi_arvalid);
    mp_M06_AXI_transactor->ARREADY(m06_axi_arready);
    mp_M06_AXI_transactor->RID(m06_axi_rid);
    mp_M06_AXI_transactor->RDATA(m06_axi_rdata);
    mp_M06_AXI_transactor->RRESP(m06_axi_rresp);
    mp_M06_AXI_transactor->RLAST(m06_axi_rlast);
    mp_M06_AXI_transactor->RUSER(m06_axi_ruser);
    mp_M06_AXI_transactor->RVALID(m06_axi_rvalid);
    mp_M06_AXI_transactor->RREADY(m06_axi_rready);
    mp_M06_AXI_transactor->CLK(m06_axi_aclk);
    mp_M06_AXI_transactor->RST(m06_axi_aresetn);

    // M06_AXI' transactor sockets

    mp_impl->initiator_6_rd_socket->bind(*(mp_M06_AXI_transactor->rd_socket));
    mp_impl->initiator_6_wr_socket->bind(*(mp_M06_AXI_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // MTI_SYSTEMC




bd_d216_xtlm_simple_intercon_0_0::~bd_d216_xtlm_simple_intercon_0_0()
{
  delete mp_S00_AXI_transactor;

  delete mp_S01_AXI_transactor;

  delete mp_S02_AXI_transactor;

  delete mp_S03_AXI_transactor;

  delete mp_S04_AXI_transactor;

  delete mp_M00_AXI_transactor;

  delete mp_M01_AXI_transactor;

  delete mp_M02_AXI_transactor;

  delete mp_M03_AXI_transactor;

  delete mp_M04_AXI_transactor;

  delete mp_M05_AXI_transactor;

  delete mp_M06_AXI_transactor;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(bd_d216_xtlm_simple_intercon_0_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(bd_d216_xtlm_simple_intercon_0_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(bd_d216_xtlm_simple_intercon_0_0);
SC_REGISTER_BV(512);
#endif

