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


// IP VLNV: xilinx.com:ip:bscan_wirethrough:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_8181_ip_bscan_user_00_0 (
  m_drck,
  m_reset,
  m_sel,
  m_capture,
  m_shift,
  m_update,
  m_tdi,
  m_runtest,
  m_tck,
  m_tms,
  m_bscanid_en,
  m_tdo,
  s_drck,
  s_reset,
  s_sel,
  s_capture,
  s_shift,
  s_update,
  s_tdi,
  s_runtest,
  s_tck,
  s_tms,
  s_bscanid_en,
  s_tdo
);

(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 M_BSCAN DRCK" *)
output wire [0 : 0] m_drck;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 M_BSCAN RESET" *)
output wire [0 : 0] m_reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 M_BSCAN SEL" *)
output wire [0 : 0] m_sel;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 M_BSCAN CAPTURE" *)
output wire [0 : 0] m_capture;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 M_BSCAN SHIFT" *)
output wire [0 : 0] m_shift;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 M_BSCAN UPDATE" *)
output wire [0 : 0] m_update;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 M_BSCAN TDI" *)
output wire [0 : 0] m_tdi;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 M_BSCAN RUNTEST" *)
output wire [0 : 0] m_runtest;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 M_BSCAN TCK" *)
output wire [0 : 0] m_tck;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 M_BSCAN TMS" *)
output wire [0 : 0] m_tms;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 M_BSCAN BSCANID_EN" *)
output wire [0 : 0] m_bscanid_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 M_BSCAN TDO" *)
input wire [0 : 0] m_tdo;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN DRCK" *)
input wire [0 : 0] s_drck;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN RESET" *)
input wire [0 : 0] s_reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN SEL" *)
input wire [0 : 0] s_sel;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN CAPTURE" *)
input wire [0 : 0] s_capture;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN SHIFT" *)
input wire [0 : 0] s_shift;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN UPDATE" *)
input wire [0 : 0] s_update;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN TDI" *)
input wire [0 : 0] s_tdi;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN RUNTEST" *)
input wire [0 : 0] s_runtest;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN TCK" *)
input wire [0 : 0] s_tck;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN TMS" *)
input wire [0 : 0] s_tms;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN BSCANID_EN" *)
input wire [0 : 0] s_bscanid_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 S_BSCAN TDO" *)
output wire [0 : 0] s_tdo;

  bscan_wirethrough #(
    .C_DRCK_WIDTH(1),
    .C_HAS_DRCK(1),
    .C_RESET_WIDTH(1),
    .C_HAS_RESET(1),
    .C_SEL_WIDTH(1),
    .C_HAS_SEL(1),
    .C_CAPTURE_WIDTH(1),
    .C_HAS_CAPTURE(1),
    .C_SHIFT_WIDTH(1),
    .C_HAS_SHIFT(1),
    .C_UPDATE_WIDTH(1),
    .C_HAS_UPDATE(1),
    .C_TDI_WIDTH(1),
    .C_HAS_TDI(1),
    .C_RUNTEST_WIDTH(1),
    .C_HAS_RUNTEST(1),
    .C_TCK_WIDTH(1),
    .C_HAS_TCK(1),
    .C_TMS_WIDTH(1),
    .C_HAS_TMS(1),
    .C_BSCANID_EN_WIDTH(1),
    .C_HAS_BSCANID_EN(1),
    .C_BSCANID_WIDTH(32),
    .C_HAS_BSCANID(0),
    .C_TDO_WIDTH(1),
    .C_HAS_TDO(1)
  ) inst (
    .m_drck(m_drck),
    .m_reset(m_reset),
    .m_sel(m_sel),
    .m_capture(m_capture),
    .m_shift(m_shift),
    .m_update(m_update),
    .m_tdi(m_tdi),
    .m_runtest(m_runtest),
    .m_tck(m_tck),
    .m_tms(m_tms),
    .m_bscanid_en(m_bscanid_en),
    .m_bscanid(32'B0),
    .m_tdo(m_tdo),
    .s_drck(s_drck),
    .s_reset(s_reset),
    .s_sel(s_sel),
    .s_capture(s_capture),
    .s_shift(s_shift),
    .s_update(s_update),
    .s_tdi(s_tdi),
    .s_runtest(s_runtest),
    .s_tck(s_tck),
    .s_tms(s_tms),
    .s_bscanid_en(s_bscanid_en),
    .s_bscanid(),
    .s_tdo(s_tdo)
  );
endmodule
