############# SLR PBLOCK CONSTRAINTS #################

######## TOP SLR
create_pblock pblock_dynamic_SLR2
resize_pblock [get_pblocks pblock_dynamic_SLR2] -add {CLOCKREGION_X0Y10:CLOCKREGION_X5Y14}


####### MIDDLE SLR
create_pblock pblock_dynamic_SLR1
resize_pblock [get_pblocks pblock_dynamic_SLR1] -add {CLOCKREGION_X0Y5:CLOCKREGION_X3Y9}
resize_pblock [get_pblocks pblock_dynamic_SLR1] -remove {SLICE_X108Y300:SLICE_X111Y599}

####### BOTTOM SLR
create_pblock pblock_dynamic_SLR0
resize_pblock [get_pblocks pblock_dynamic_SLR0] -add {CLOCKREGION_X0Y0:CLOCKREGION_X3Y4}
resize_pblock [get_pblocks pblock_dynamic_SLR0] -remove {SLICE_X108Y0:SLICE_X111Y299}
