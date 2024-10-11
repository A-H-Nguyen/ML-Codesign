# *************************************************************************
#    ____  ____
#   /   /\/   /
#  /___/  \  /
#  \   \   \/    © Copyright 2017 Xilinx, Inc. All rights reserved.
#   \   \        This file contains confidential and proprietary
#   /   /        information of Xilinx, Inc. and is protected under U.S.
#  /___/   /\    and international copyright and other intellectual
#  \   \  /  \   property laws.
#   \___\/\___\
#
#
# *************************************************************************
#
# Disclaimer:
#
#       This disclaimer is not a license and does not grant any rights to
#       the materials distributed herewith. Except as otherwise provided in
#       a valid license issued to you by Xilinx, and to the maximum extent
#       permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE
#       "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL
#       WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY,
#       INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY,
#       NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#       (2) Xilinx shall not be liable (whether in contract or tort,
#       including negligence, or under any other theory of liability) for
#       any loss or damage of any kind or nature related to, arising under
#       or in connection with these materials, including for any direct, or
#       any indirect, special, incidental, or consequential loss or damage
#       (including loss of data, profits, goodwill, or any type of loss or
#       damage suffered as a result of any action brought by a third party)
#       even if such damage or loss was reasonably foreseeable or Xilinx
#       had been advised of the possibility of the same.
#
# Critical Applications:
#
#       Xilinx products are not designed or intended to be fail-safe, or
#       for use in any application requiring fail-safe performance, such as
#       life-support or safety devices or systems, Class III medical
#       devices, nuclear facilities, applications related to the deployment
#       of airbags, or any other applications that could lead to death,
#       personal injury, or severe property or environmental damage
#       (individually and collectively, "Critical Applications"). Customer
#       assumes the sole risk and liability of any use of Xilinx products
#       in Critical Applications, subject only to applicable laws and
#       regulations governing limitations on product liability.
#
# THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS
# FILE AT ALL TIMES.
#
# *************************************************************************
set env(SDX_HIP_USE_AWS) true
# set env(SDX_MSS_DISABLE_SLR_AGGREGATION) true
# set env(SDX_MSS_DISABLE_SLR_AGGREGATOR) true

set env(DSA_INFO) {
  child_pblock_declarations {
    pblock_ddr4_mem00 {
      range CLOCKREGION_X2Y1:CLOCKREGION_X2Y3
      parent pblock_dynamic_SLR0
      cell_paths memory/ddr4_mem00
    }
    pblock_ddr4_mem02 {
      range CLOCKREGION_X2Y7:CLOCKREGION_X2Y9
      parent pblock_dynamic_SLR1
      cell_paths memory/ddr4_mem02
    }
    pblock_ddr4_mem03 {
      range CLOCKREGION_X4Y11:CLOCKREGION_X4Y13
      parent pblock_dynamic_SLR2
      cell_paths memory/ddr4_mem03
    }
  }
  slr_pblock_map {
    SLR0 pblock_dynamic_SLR0
    SLR1 pblock_dynamic_SLR1
    SLR2 pblock_dynamic_SLR2
  }
  board_component_slr_map {
    aws_ddra SLR2 
    aws_ddrb SLR1 
    aws_ddrc SLR1
    aws_ddrd SLR0 
  }
}

# Skip BD supported IP check
set_param bd.skipSupportedIPCheck true

# Set HIP SLR automation level
set __sdx_hip_slr_automation_level 2
if {[info exists ::env(SDX_HIP_SLR_AUTOMATION_LEVEL)]} {
  set __sdx_hip_slr_automation_level $::env(SDX_HIP_SLR_AUTOMATION_LEVEL)
}
set_param ips.enableSLRParameter $__sdx_hip_slr_automation_level
