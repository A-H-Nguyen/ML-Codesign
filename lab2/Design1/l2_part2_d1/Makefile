#
# Copyright 2019-2021 Xilinx, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# makefile-generator v1.0.3
#

############################## Help Section ##############################
# TODO (0): Name your app
APP := dot_prod_app
# TODO (1): Add your kernels
KERNELS := dot_prod
.PHONY: help

help::
	$(ECHO) "Makefile Usage:"
	$(ECHO) "  make all TARGET=<sw_emu/hw_emu/hw> PLATFORM=<FPGA platform> HOST_ARCH=<aarch32/aarch64/x86> EDGE_COMMON_SW=<rootfs and kernel image path>"
	$(ECHO) "      Command to generate the design for specified Target and Shell."
	$(ECHO) ""
	$(ECHO) "  make clean "
	$(ECHO) "      Command to remove the generated non-hardware files."
	$(ECHO) ""
	$(ECHO) "  make cleanall"
	$(ECHO) "      Command to remove all the generated files."
	$(ECHO) ""
	$(ECHO) "  make test PLATFORM=<FPGA platform>"
	$(ECHO) "      Command to run the application. This is same as 'run' target but does not have any makefile dependency."
	$(ECHO) ""
	$(ECHO) "  make sd_card TARGET=<sw_emu/hw_emu/hw> PLATFORM=<FPGA platform> HOST_ARCH=<aarch32/aarch64/x86> EDGE_COMMON_SW=<rootfs and kernel image path>"
	$(ECHO) "      Command to prepare sd_card files."
	$(ECHO) ""
	$(ECHO) "  make run TARGET=<sw_emu/hw_emu/hw> PLATFORM=<FPGA platform> HOST_ARCH=<aarch32/aarch64/x86> EDGE_COMMON_SW=<rootfs and kernel image path>"
	$(ECHO) "      Command to run application in emulation."
	$(ECHO) ""
	$(ECHO) "  make build TARGET=<sw_emu/hw_emu/hw> PLATFORM=<FPGA platform> HOST_ARCH=<aarch32/aarch64/x86> EDGE_COMMON_SW=<rootfs and kernel image path>"
	$(ECHO) "      Command to build xclbin application."
	$(ECHO) ""
	$(ECHO) "  make host HOST_ARCH=<aarch32/aarch64/x86> EDGE_COMMON_SW=<rootfs and kernel image path>"
	$(ECHO) "      Command to build host application."
	$(ECHO) "  By default, HOST_ARCH=x86. HOST_ARCH and EDGE_COMMON_SW is required for SoC shells"
	$(ECHO) ""
	$(ECHO) "  make cosim TARGET=hw_emu PLATFORM=<FPGA platform>"
	$(ECHO) "      Command to perform HLS cosim."
	$(ECHO) ""
	$(ECHO) "  make cbin TARGET=sw_emu PLATFORM=<FPGA platform>"
	$(ECHO) "      Command to build c binaires in csim"
	$(ECHO) ""

############################## Setting up Project Variables ##############################
# Points to top directory of Git repository
MK_PATH := $(abspath $(lastword $(MAKEFILE_LIST)))
COMMON_REPO = ../
PWD = $(shell readlink -f .)
XF_PROJ_ROOT = $(shell readlink -f $(COMMON_REPO))

TARGET := hw
HOST_ARCH := x86
SYSROOT :=

include ./utils.mk

XSA :=
ifneq ($(PLATFORM), )
XSA := $(call device2xsa, $(PLATFORM))
endif
TEMP_DIR := ./_x.$(TARGET).$(XSA)
BUILD_DIR := ./build_dir.$(TARGET).$(XSA)

# SoC variables
RUN_APP_SCRIPT = ./run_app.sh
PACKAGE_OUT = ./package.$(TARGET)

LAUNCH_EMULATOR = $(PACKAGE_OUT)/launch_$(TARGET).sh
RESULT_STRING = TEST PASSED

VPP := v++
VPP_PFLAGS :=
CMD_ARGS = $(BUILD_DIR)/$(APP).xclbin
SDCARD := sd_card

include $(XF_PROJ_ROOT)/common/includes/opencl/opencl.mk
CXXFLAGS += $(opencl_CXXFLAGS) -Wall -O0 -g -std=c++1y
LDFLAGS += $(opencl_LDFLAGS)


########################## Checking if PLATFORM in whitelist #######################
PLATFORM_BLOCKLIST += zcu104_base zc702_base nodma
############################## Setting up Host Variables ##############################
#Include Required Host Source Files
CXXFLAGS += -I$(XF_PROJ_ROOT)/common/includes/xcl2
HOST_SRCS += $(XF_PROJ_ROOT)/common/includes/xcl2/xcl2.cpp ./src/host.cpp
# Host compiler global settings
CXXFLAGS += -fmessage-length=0
LDFLAGS += -lrt -lstdc++

ifneq ($(HOST_ARCH), x86)
	LDFLAGS += --sysroot=$(SYSROOT)
endif

############################## Setting up Kernel Variables ##############################
# Kernel compiler global settings
VPP_FLAGS += -t $(TARGET) --platform $(PLATFORM) --save-temps
ifneq ($(TARGET), hw)
	VPP_FLAGS += -g
endif



EXECUTABLE = host
EMCONFIG_DIR = $(TEMP_DIR)
EMU_DIR = $(SDCARD)/data/emulation
CSIM_DIR = csim

############################## Declaring Binary Containers ##############################
BINARY_CONTAINERS += $(BUILD_DIR)/$(APP).xclbin
BINARY_CONTAINER_KERNEL_OBJS += $(KERNELS:%=$(TEMP_DIR)/%.xo)
COSIM_LOGS += $(KERNELS:%=$(TEMP_DIR)/cosim/%_cosim.log)
CSIM_BINARIES += $(KERNELS:%=$(CSIM_DIR)/%.o)

############################## Setting Targets ##############################
CP = cp -rf

.PHONY: all clean cleanall docs emconfig
all: check-platform check-device $(EXECUTABLE) $(BINARY_CONTAINERS) emconfig sd_card

.PHONY: exe
exe: $(EXECUTABLE)

.PHONY: host
host: $(EXECUTABLE)

.PHONY: build
build: check-vitis check-device $(BINARY_CONTAINERS)

.PHONY: cosim
cosim: $(COSIM_LOGS)

.PHONY: cbin
cbin: $(CSIM_BINARIES)

$(COSIM_LOGS): $(TEMP_DIR)/cosim/%_cosim.log: src/%.cpp src/%_tb.cpp src/%.hpp $(TEMP_DIR)/%.xo
	mkdir -p $(TEMP_DIR)/cosim
	cp $(TEMP_DIR)/$*/$*/$*.tcl $(TEMP_DIR)/$*/$*/$*_cosim.tcl
	sed '/add_files*/a\add_files -tb "$(PWD)/src/$*_tb.cpp"' -i $(TEMP_DIR)/$*/$*/$*_cosim.tcl
	# Replace export hw with run cosim
	sed "s/export_design/cosim_design/" -i $(TEMP_DIR)/$*/$*/$*_cosim.tcl
	# Replace the final puts
	sed "s/HLS completed successfully/cosim finished/" -i $(TEMP_DIR)/$*/$*/$*_cosim.tcl
	# Create a makefile for the Cosim and then run it -- don't pass the arguments from the current make invocation
	printf "all:\n\tvivado_hls -f $*_cosim.tcl | tee $(PWD)/$@" > $(TEMP_DIR)/$*/$*/Makefile
	make MAKEOVERRIDES= -C $(TEMP_DIR)/$*/$* all

$(CSIM_BINARIES): $(CSIM_DIR)/%.o: src/%.cpp src/%_tb.cpp src/%.hpp
	mkdir -p $(CSIM_DIR)
	$(CXX) $(CXXFLAGS) -o $@ src/$*.cpp src/$*_tb.cpp

.PHONY: xclbin
xclbin: build

############################## Setting Rules for Binary Containers (Building Kernels) ##############################
$(BINARY_CONTAINER_KERNEL_OBJS): $(TEMP_DIR)/%.xo: src/%.cpp
	mkdir -p $(TEMP_DIR)
	$(VPP) $(VPP_FLAGS) --temp_dir $(TEMP_DIR) -c -k $* -I'$(<D)' -o'$@' '$<'

$(BUILD_DIR)/$(APP).xclbin: $(BINARY_CONTAINER_KERNEL_OBJS)
	mkdir -p $(BUILD_DIR)
ifeq ($(HOST_ARCH), x86)
	$(VPP) $(VPP_FLAGS) --temp_dir $(BUILD_DIR) -l $(VPP_LDFLAGS) -o'$@' $(+)
	$(VPP) -p $(BUILD_DIR)/$(KERNELS).link.xclbin -t $(TARGET) --platform $(PLATFORM) --package.out_dir $(PACKAGE_OUT) -o $(BUILD_DIR)/$(KERNELS).xclbin
else
	$(VPP) $(VPP_FLAGS) -l $(VPP_LDFLAGS) --temp_dir $(TEMP_DIR) -o'$(BUILD_DIR)/vadd.xclbin' $(+)
endif
############################## Setting Rules for Host (Building Host Executable) ##############################
$(EXECUTABLE): $(HOST_SRCS) | check-xrt
		$(CXX) -o $@ $^ $(CXXFLAGS) $(LDFLAGS)

emconfig:$(EMCONFIG_DIR)/emconfig.json
$(EMCONFIG_DIR)/emconfig.json:
	emconfigutil --platform $(PLATFORM) --od $(EMCONFIG_DIR)

############################## Setting Essential Checks and Running Rules ##############################
run: all
ifeq ($(TARGET),$(filter $(TARGET),sw_emu hw_emu))
ifeq ($(HOST_ARCH), x86)
	$(CP) $(EMCONFIG_DIR)/emconfig.json .
	XCL_EMULATION_MODE=$(TARGET) ./$(EXECUTABLE) $(CMD_ARGS)
else
	$(LAUNCH_EMULATOR) -run-app $(RUN_APP_SCRIPT) | tee run_app.log; exit $${PIPESTATUS[0]}
endif
else
ifeq ($(HOST_ARCH), x86)
	./$(EXECUTABLE) $(CMD_ARGS)
endif
endif


.PHONY: test
test: $(EXECUTABLE)
ifeq ($(TARGET),$(filter $(TARGET),sw_emu hw_emu))
ifeq ($(HOST_ARCH), x86)
	XCL_EMULATION_MODE=$(TARGET) ./$(EXECUTABLE) $(CMD_ARGS)
else
	$(LAUNCH_EMULATOR) -run-app $(RUN_APP_SCRIPT) | tee run_app.log; exit $${PIPESTATUS[0]}
endif
else
ifeq ($(HOST_ARCH), x86)
	./$(EXECUTABLE) $(CMD_ARGS)
else
	$(ECHO) "Please copy the content of sd_card folder and data to an SD Card and run on the board"
endif
endif


############################## Preparing sdcard ##############################
sd_card: $(BINARY_CONTAINERS) $(EXECUTABLE) gen_run_app
ifneq ($(HOST_ARCH), x86)
	$(VPP) $(VPP_PFLAGS) -p $(BUILD_DIR)/mmult.xclbin -t $(TARGET) --platform $(PLATFORM) --package.out_dir $(PACKAGE_OUT) --package.rootfs $(EDGE_COMMON_SW)/rootfs.ext4 --package.sd_file $(SD_IMAGE_FILE) --package.sd_file xrt.ini --package.sd_file $(RUN_APP_SCRIPT) --package.sd_file $(EXECUTABLE) -o mmult.xclbin
endif

############################## Cleaning Rules ##############################
# Cleaning stuff
clean:
	-$(RMDIR) $(EXECUTABLE) $(XCLBIN)/{*sw_emu*,*hw_emu*}
	-$(RMDIR) profile_* TempConfig system_estimate.xtxt *.rpt *.csv
	-$(RMDIR) src/*.ll *v++* .Xil emconfig.json dltmp* xmltmp* *.log *.jou *.wcfg *.wdb

cleanall: clean
	-$(RMDIR) build_dir* sd_card*
	-$(RMDIR) package.*
	-$(RMDIR) _x* *xclbin.run_summary qemu-memory-_* emulation _vimage pl* start_simulation.sh *.xclbin
