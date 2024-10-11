#!/bin/sh
v=/proj/rdi-xsj/staff/donlina/scbuild/HEAD/prep/rdi/vivado/bin/vivado
#for i in xit/*.xit; do
#echo "Encrypting $i to image $i"
#$v -exec xilcrypt -e -a 50 $i -o image/$i > crypt.log
#done
cp -f xit/*.xit image/xit
cp -f bd/*.tcl image/bd
cp -f xgui/sdx_memory_subsystem_v1_0.tcl image/xgui/sdx_memory_subsystem_v1_0.tcl
