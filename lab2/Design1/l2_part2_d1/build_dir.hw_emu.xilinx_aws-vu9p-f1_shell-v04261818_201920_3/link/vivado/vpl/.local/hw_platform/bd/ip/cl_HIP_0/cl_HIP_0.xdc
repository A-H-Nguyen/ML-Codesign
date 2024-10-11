
# *************************************************************************
#    ____  ____
#   /   /\/   /
#  /___/  \  /
#  \   \   \/    © Copyright 2017 Xilinx, Inc. All rights reserved.
#   \   \        This file contains confidential and proprietary
#   /   /        information of Xilinx, Inc. and is protected under U.S.
#  /___/   /\    and international copyright and other intellectual
#  \   \  /  \   property laws.
#   \___\/\___ #
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

# ----------------------------------------------------------------------
# Interconnect Switchboard PBLOCK assignments
# ----------------------------------------------------------------------
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] [get_cells [list interconnect/interconnect_s00_axi/inst/switchboards ] ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] [get_cells memory/interconnect_ddrmem_ctrl]


# ----------------------------------------------------------------------
# SLR-crossing PBLOCK assignments
# ----------------------------------------------------------------------
# ------------------------------------------------------------
# BEGIN interconnect_s00_axi
# ------------------------------------------------------------

# S00_AXI:SLR0 -> interconnect_s00_axi:SLR0
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_aw_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_ar_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_w_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_r_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/s00_entry_pipeline \
  interconnect/interconnect_s00_axi/inst/s00_axi2sc \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_aw_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_ar_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_w_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_r_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/s00_nodes/s00_b_node/inst/inst_si_handler \
 ]

# interconnect_s00_axi:SLR0 -> M00_AXI:SLR1
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_aw_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_ar_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_w_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_r_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] \
  [list \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_aw_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_ar_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_w_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_r_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m00_nodes/m00_b_node/inst/inst_si_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] \
  [list \
  interconnect/interconnect_s00_axi/inst/m00_exit_pipeline \
  interconnect/interconnect_s00_axi/inst/m00_sc2axi \
 ]

# interconnect_s00_axi:SLR0 -> M01_AXI:SLR2
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_aw_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_ar_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_w_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_r_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] \
  [list \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_aw_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_ar_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_w_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_r_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m01_nodes/m01_b_node/inst/inst_si_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] \
  [list \
  interconnect/interconnect_s00_axi/inst/m01_exit_pipeline \
  interconnect/interconnect_s00_axi/inst/m01_sc2axi \
 ]

# interconnect_s00_axi:SLR0 -> M02_AXI:SLR1
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/m02_nodes/m02_aw_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m02_nodes/m02_ar_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m02_nodes/m02_w_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m02_nodes/m02_r_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m02_nodes/m02_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] \
  [list \
  interconnect/interconnect_s00_axi/inst/m02_nodes/m02_aw_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m02_nodes/m02_ar_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m02_nodes/m02_w_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m02_nodes/m02_r_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m02_nodes/m02_b_node/inst/inst_si_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] \
  [list \
  interconnect/interconnect_s00_axi/inst/m02_exit_pipeline \
  interconnect/interconnect_s00_axi/inst/m02_sc2axi \
 ]

# interconnect_s00_axi:SLR0 -> M03_AXI:SLR0
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/m03_nodes/m03_aw_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m03_nodes/m03_ar_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m03_nodes/m03_w_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m03_nodes/m03_r_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m03_nodes/m03_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/m03_nodes/m03_aw_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m03_nodes/m03_ar_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m03_nodes/m03_w_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m03_nodes/m03_r_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m03_nodes/m03_b_node/inst/inst_si_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/m03_exit_pipeline \
  interconnect/interconnect_s00_axi/inst/m03_sc2axi \
 ]

# interconnect_s00_axi:SLR0 -> M04_AXI:SLR2
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/m04_nodes/m04_aw_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m04_nodes/m04_ar_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m04_nodes/m04_w_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m04_nodes/m04_r_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m04_nodes/m04_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] \
  [list \
  interconnect/interconnect_s00_axi/inst/m04_nodes/m04_aw_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m04_nodes/m04_ar_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m04_nodes/m04_w_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m04_nodes/m04_r_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m04_nodes/m04_b_node/inst/inst_si_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] \
  [list \
  interconnect/interconnect_s00_axi/inst/m04_exit_pipeline \
  interconnect/interconnect_s00_axi/inst/m04_sc2axi \
 ]

# interconnect_s00_axi:SLR0 -> M05_AXI:SLR1
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/m05_nodes/m05_aw_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m05_nodes/m05_ar_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m05_nodes/m05_w_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m05_nodes/m05_r_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m05_nodes/m05_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] \
  [list \
  interconnect/interconnect_s00_axi/inst/m05_nodes/m05_aw_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m05_nodes/m05_ar_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m05_nodes/m05_w_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m05_nodes/m05_r_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m05_nodes/m05_b_node/inst/inst_si_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] \
  [list \
  interconnect/interconnect_s00_axi/inst/m05_exit_pipeline \
  interconnect/interconnect_s00_axi/inst/m05_sc2axi \
 ]

# interconnect_s00_axi:SLR0 -> M06_AXI:SLR0
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/m06_nodes/m06_aw_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m06_nodes/m06_ar_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m06_nodes/m06_w_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m06_nodes/m06_r_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m06_nodes/m06_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/m06_nodes/m06_aw_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m06_nodes/m06_ar_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m06_nodes/m06_w_node/inst/inst_mi_handler \
  interconnect/interconnect_s00_axi/inst/m06_nodes/m06_r_node/inst/inst_si_handler \
  interconnect/interconnect_s00_axi/inst/m06_nodes/m06_b_node/inst/inst_si_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_s00_axi/inst/m06_exit_pipeline \
  interconnect/interconnect_s00_axi/inst/m06_sc2axi \
 ]
# ------------------------------------------------------------
# END interconnect_s00_axi
# ------------------------------------------------------------
# ------------------------------------------------------------
# BEGIN interconnect_ddr4_mem00
# ------------------------------------------------------------

# interconnect_ddr4_mem00:SLR1 -> M00_AXI:SLR1
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] \
  [list \
  interconnect/interconnect_ddr4_mem00/inst/m00_exit_pipeline \
  interconnect/interconnect_ddr4_mem00/inst/m00_sc2axi \
 ]

# S00_AXI:SLR1 -> interconnect_ddr4_mem00:SLR1
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] \
  [list \
  interconnect/interconnect_ddr4_mem00/inst/s00_nodes/s00_aw_node/inst/inst_si_handler \
  interconnect/interconnect_ddr4_mem00/inst/s00_nodes/s00_ar_node/inst/inst_si_handler \
  interconnect/interconnect_ddr4_mem00/inst/s00_nodes/s00_w_node/inst/inst_si_handler \
  interconnect/interconnect_ddr4_mem00/inst/s00_nodes/s00_r_node/inst/inst_mi_handler \
  interconnect/interconnect_ddr4_mem00/inst/s00_nodes/s00_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] \
  [list \
  interconnect/interconnect_ddr4_mem00/inst/s00_entry_pipeline \
  interconnect/interconnect_ddr4_mem00/inst/s00_axi2sc \
 ]
# ------------------------------------------------------------
# END interconnect_ddr4_mem00
# ------------------------------------------------------------
# ------------------------------------------------------------
# BEGIN interconnect_ddr4_mem01
# ------------------------------------------------------------

# interconnect_ddr4_mem01:SLR2 -> M00_AXI:SLR2
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] \
  [list \
  interconnect/interconnect_ddr4_mem01/inst/m00_exit_pipeline \
  interconnect/interconnect_ddr4_mem01/inst/m00_sc2axi \
 ]

# S00_AXI:SLR2 -> interconnect_ddr4_mem01:SLR2
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] \
  [list \
  interconnect/interconnect_ddr4_mem01/inst/s00_nodes/s00_aw_node/inst/inst_si_handler \
  interconnect/interconnect_ddr4_mem01/inst/s00_nodes/s00_ar_node/inst/inst_si_handler \
  interconnect/interconnect_ddr4_mem01/inst/s00_nodes/s00_w_node/inst/inst_si_handler \
  interconnect/interconnect_ddr4_mem01/inst/s00_nodes/s00_r_node/inst/inst_mi_handler \
  interconnect/interconnect_ddr4_mem01/inst/s00_nodes/s00_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] \
  [list \
  interconnect/interconnect_ddr4_mem01/inst/s00_entry_pipeline \
  interconnect/interconnect_ddr4_mem01/inst/s00_axi2sc \
 ]
# ------------------------------------------------------------
# END interconnect_ddr4_mem01
# ------------------------------------------------------------
# ------------------------------------------------------------
# BEGIN interconnect_ddr4_mem02
# ------------------------------------------------------------

# interconnect_ddr4_mem02:SLR1 -> M00_AXI:SLR1
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] \
  [list \
  interconnect/interconnect_ddr4_mem02/inst/m00_exit_pipeline \
  interconnect/interconnect_ddr4_mem02/inst/m00_sc2axi \
 ]

# S00_AXI:SLR1 -> interconnect_ddr4_mem02:SLR1
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] \
  [list \
  interconnect/interconnect_ddr4_mem02/inst/s00_nodes/s00_aw_node/inst/inst_si_handler \
  interconnect/interconnect_ddr4_mem02/inst/s00_nodes/s00_ar_node/inst/inst_si_handler \
  interconnect/interconnect_ddr4_mem02/inst/s00_nodes/s00_w_node/inst/inst_si_handler \
  interconnect/interconnect_ddr4_mem02/inst/s00_nodes/s00_r_node/inst/inst_mi_handler \
  interconnect/interconnect_ddr4_mem02/inst/s00_nodes/s00_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] \
  [list \
  interconnect/interconnect_ddr4_mem02/inst/s00_entry_pipeline \
  interconnect/interconnect_ddr4_mem02/inst/s00_axi2sc \
 ]
# ------------------------------------------------------------
# END interconnect_ddr4_mem02
# ------------------------------------------------------------
# ------------------------------------------------------------
# BEGIN interconnect_ddr4_mem03
# ------------------------------------------------------------

# interconnect_ddr4_mem03:SLR0 -> M00_AXI:SLR0
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_ddr4_mem03/inst/m00_exit_pipeline \
  interconnect/interconnect_ddr4_mem03/inst/m00_sc2axi \
 ]

# S00_AXI:SLR0 -> interconnect_ddr4_mem03:SLR0
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_ddr4_mem03/inst/s00_nodes/s00_aw_node/inst/inst_si_handler \
  interconnect/interconnect_ddr4_mem03/inst/s00_nodes/s00_ar_node/inst/inst_si_handler \
  interconnect/interconnect_ddr4_mem03/inst/s00_nodes/s00_w_node/inst/inst_si_handler \
  interconnect/interconnect_ddr4_mem03/inst/s00_nodes/s00_r_node/inst/inst_mi_handler \
  interconnect/interconnect_ddr4_mem03/inst/s00_nodes/s00_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_ddr4_mem03/inst/s00_entry_pipeline \
  interconnect/interconnect_ddr4_mem03/inst/s00_axi2sc \
 ]
# ------------------------------------------------------------
# END interconnect_ddr4_mem03
# ------------------------------------------------------------
# ------------------------------------------------------------
# BEGIN interconnect_plram_mem00
# ------------------------------------------------------------

# interconnect_plram_mem00:SLR2 -> M00_AXI:SLR2
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] \
  [list \
  interconnect/interconnect_plram_mem00/inst/m00_exit_pipeline \
  interconnect/interconnect_plram_mem00/inst/m00_sc2axi \
 ]

# S00_AXI:SLR2 -> interconnect_plram_mem00:SLR2
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] \
  [list \
  interconnect/interconnect_plram_mem00/inst/s00_nodes/s00_aw_node/inst/inst_si_handler \
  interconnect/interconnect_plram_mem00/inst/s00_nodes/s00_ar_node/inst/inst_si_handler \
  interconnect/interconnect_plram_mem00/inst/s00_nodes/s00_w_node/inst/inst_si_handler \
  interconnect/interconnect_plram_mem00/inst/s00_nodes/s00_r_node/inst/inst_mi_handler \
  interconnect/interconnect_plram_mem00/inst/s00_nodes/s00_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR2] \
  [list \
  interconnect/interconnect_plram_mem00/inst/s00_entry_pipeline \
  interconnect/interconnect_plram_mem00/inst/s00_axi2sc \
 ]
# ------------------------------------------------------------
# END interconnect_plram_mem00
# ------------------------------------------------------------
# ------------------------------------------------------------
# BEGIN interconnect_plram_mem01
# ------------------------------------------------------------

# interconnect_plram_mem01:SLR1 -> M00_AXI:SLR1
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] \
  [list \
  interconnect/interconnect_plram_mem01/inst/m00_exit_pipeline \
  interconnect/interconnect_plram_mem01/inst/m00_sc2axi \
 ]

# S00_AXI:SLR1 -> interconnect_plram_mem01:SLR1
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] \
  [list \
  interconnect/interconnect_plram_mem01/inst/s00_nodes/s00_aw_node/inst/inst_si_handler \
  interconnect/interconnect_plram_mem01/inst/s00_nodes/s00_ar_node/inst/inst_si_handler \
  interconnect/interconnect_plram_mem01/inst/s00_nodes/s00_w_node/inst/inst_si_handler \
  interconnect/interconnect_plram_mem01/inst/s00_nodes/s00_r_node/inst/inst_mi_handler \
  interconnect/interconnect_plram_mem01/inst/s00_nodes/s00_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR1] \
  [list \
  interconnect/interconnect_plram_mem01/inst/s00_entry_pipeline \
  interconnect/interconnect_plram_mem01/inst/s00_axi2sc \
 ]
# ------------------------------------------------------------
# END interconnect_plram_mem01
# ------------------------------------------------------------
# ------------------------------------------------------------
# BEGIN interconnect_plram_mem02
# ------------------------------------------------------------

# interconnect_plram_mem02:SLR0 -> M00_AXI:SLR0
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_plram_mem02/inst/m00_exit_pipeline \
  interconnect/interconnect_plram_mem02/inst/m00_sc2axi \
 ]

# S00_AXI:SLR0 -> interconnect_plram_mem02:SLR0
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_plram_mem02/inst/s00_nodes/s00_aw_node/inst/inst_si_handler \
  interconnect/interconnect_plram_mem02/inst/s00_nodes/s00_ar_node/inst/inst_si_handler \
  interconnect/interconnect_plram_mem02/inst/s00_nodes/s00_w_node/inst/inst_si_handler \
  interconnect/interconnect_plram_mem02/inst/s00_nodes/s00_r_node/inst/inst_mi_handler \
  interconnect/interconnect_plram_mem02/inst/s00_nodes/s00_b_node/inst/inst_mi_handler \
 ]
add_cells_to_pblock [get_pblocks pblock_dynamic_SLR0] \
  [list \
  interconnect/interconnect_plram_mem02/inst/s00_entry_pipeline \
  interconnect/interconnect_plram_mem02/inst/s00_axi2sc \
 ]
# ------------------------------------------------------------
# END interconnect_plram_mem02
# ------------------------------------------------------------
# ----------------------------------------------------------------------
# Child PBLOCK declaration and assignment
# ----------------------------------------------------------------------
create_pblock pblock_ddr4_mem00
add_cells_to_pblock [get_pblocks pblock_ddr4_mem00] [get_cells [list memory/ddr4_mem00]]
resize_pblock [get_pblocks pblock_ddr4_mem00] -add {CLOCKREGION_X2Y1:CLOCKREGION_X2Y3}
set_property SNAPPING_MODE ON [get_pblocks pblock_ddr4_mem00]
set_property PARENT pblock_dynamic_SLR0 [get_pblocks pblock_ddr4_mem00]

create_pblock pblock_ddr4_mem02
add_cells_to_pblock [get_pblocks pblock_ddr4_mem02] [get_cells [list memory/ddr4_mem02]]
resize_pblock [get_pblocks pblock_ddr4_mem02] -add {CLOCKREGION_X2Y7:CLOCKREGION_X2Y9}
set_property SNAPPING_MODE ON [get_pblocks pblock_ddr4_mem02]
set_property PARENT pblock_dynamic_SLR1 [get_pblocks pblock_ddr4_mem02]

create_pblock pblock_ddr4_mem03
add_cells_to_pblock [get_pblocks pblock_ddr4_mem03] [get_cells [list memory/ddr4_mem03]]
resize_pblock [get_pblocks pblock_ddr4_mem03] -add {CLOCKREGION_X4Y11:CLOCKREGION_X4Y13}
set_property SNAPPING_MODE ON [get_pblocks pblock_ddr4_mem03]
set_property PARENT pblock_dynamic_SLR2 [get_pblocks pblock_ddr4_mem03]



