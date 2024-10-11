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


// IP VLNV: xilinx.com:ip:shell_utils_embedded_scheduler_hw:1.0
// IP Revision: 0

(* X_CORE_INFO = "shell_utils_embedded_scheduler_hw,Vivado 2021.2" *)
(* CHECK_LICENSE_TYPE = "emu_embedded_scheduler_hw_0_0,shell_utils_embedded_scheduler_hw,{}" *)
(* CORE_GENERATION_INFO = "emu_embedded_scheduler_hw_0_0,shell_utils_embedded_scheduler_hw,{x_ipProduct=Vivado 2021.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=shell_utils_embedded_scheduler_hw,x_ipVersion=1.0,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module emu_embedded_scheduler_hw_0_0 (
  clk,
  reset_n,
  host_awaddr,
  host_awprot,
  host_awvalid,
  host_awready,
  host_wdata,
  host_wstrb,
  host_wvalid,
  host_wready,
  host_bvalid,
  host_bresp,
  host_bready,
  host_araddr,
  host_arprot,
  host_arvalid,
  host_arready,
  host_rdata,
  host_rresp,
  host_rvalid,
  host_rready,
  ap_start_cuisr,
  ap_done_cuisr,
  Offset,
  SlotSize,
  NoofSlots,
  CqBaseAddress,
  ap_start_cudma,
  ap_done_cudma,
  CuDmaQueue_reg,
  irq_sr0,
  irq_sr1,
  irq_sr2,
  irq_sr3,
  irq_ack,
  irq_cu,
  irq_cu_completion,
  irq_slotavailable
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF host, ASSOCIATED_RESET reset_n, FREQ_HZ 300000000.0, PHASE 0.0, CLK_DOMAIN emu_dma_pcie_clk_0_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *)
input wire reset_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host AWADDR" *)
input wire [31 : 0] host_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host AWPROT" *)
input wire [2 : 0] host_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host AWVALID" *)
input wire host_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host AWREADY" *)
output wire host_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host WDATA" *)
input wire [31 : 0] host_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host WSTRB" *)
input wire [3 : 0] host_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host WVALID" *)
input wire host_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host WREADY" *)
output wire host_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host BVALID" *)
output wire host_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host BRESP" *)
output wire [1 : 0] host_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host BREADY" *)
input wire host_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host ARADDR" *)
input wire [31 : 0] host_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host ARPROT" *)
input wire [2 : 0] host_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host ARVALID" *)
input wire host_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host ARREADY" *)
output wire host_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host RDATA" *)
output wire [31 : 0] host_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host RRESP" *)
output wire [1 : 0] host_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host RVALID" *)
output wire host_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME host, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 300000000.0, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN emu_dma_pcie_clk_0_clk, NUM_READ_THREADS 1, NUM_WRITE_THREA\
DS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 host RREADY" *)
input wire host_rready;
output wire ap_start_cuisr;
input wire ap_done_cuisr;
output wire [31 : 0] Offset;
output wire [12 : 0] SlotSize;
output wire [7 : 0] NoofSlots;
output wire [31 : 0] CqBaseAddress;
output wire ap_start_cudma;
input wire ap_done_cudma;
output wire [127 : 0] CuDmaQueue_reg;
output wire irq_sr0;
output wire irq_sr1;
output wire irq_sr2;
output wire irq_sr3;
input wire [15 : 0] irq_ack;
input wire [127 : 0] irq_cu;
output wire irq_cu_completion;
output wire irq_slotavailable;

  shell_utils_embedded_scheduler_hw inst (
    .clk(clk),
    .reset_n(reset_n),
    .host_awaddr(host_awaddr),
    .host_awprot(host_awprot),
    .host_awvalid(host_awvalid),
    .host_awready(host_awready),
    .host_wdata(host_wdata),
    .host_wstrb(host_wstrb),
    .host_wvalid(host_wvalid),
    .host_wready(host_wready),
    .host_bvalid(host_bvalid),
    .host_bresp(host_bresp),
    .host_bready(host_bready),
    .host_araddr(host_araddr),
    .host_arprot(host_arprot),
    .host_arvalid(host_arvalid),
    .host_arready(host_arready),
    .host_rdata(host_rdata),
    .host_rresp(host_rresp),
    .host_rvalid(host_rvalid),
    .host_rready(host_rready),
    .ap_start_cuisr(ap_start_cuisr),
    .ap_done_cuisr(ap_done_cuisr),
    .Offset(Offset),
    .SlotSize(SlotSize),
    .NoofSlots(NoofSlots),
    .CqBaseAddress(CqBaseAddress),
    .ap_start_cudma(ap_start_cudma),
    .ap_done_cudma(ap_done_cudma),
    .CuDmaQueue_reg(CuDmaQueue_reg),
    .irq_sr0(irq_sr0),
    .irq_sr1(irq_sr1),
    .irq_sr2(irq_sr2),
    .irq_sr3(irq_sr3),
    .irq_ack(irq_ack),
    .irq_cu(irq_cu),
    .irq_cu_completion(irq_cu_completion),
    .irq_slotavailable(irq_slotavailable)
  );
endmodule
