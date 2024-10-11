set moduleName dot_prod_Pipeline_load
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set C_modelName {dot_prod_Pipeline_load}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_load int 512 regular  }
	{ gmem_load_1 int 512 regular  }
	{ va_buffer int 32 regular {array 16 { 0 3 } 0 1 }  }
	{ vb_buffer int 32 regular {array 16 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem_load", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_load_1", "interface" : "wire", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "va_buffer", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "vb_buffer", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gmem_load sc_in sc_lv 512 signal 0 } 
	{ gmem_load_1 sc_in sc_lv 512 signal 1 } 
	{ va_buffer_address0 sc_out sc_lv 4 signal 2 } 
	{ va_buffer_ce0 sc_out sc_logic 1 signal 2 } 
	{ va_buffer_we0 sc_out sc_logic 1 signal 2 } 
	{ va_buffer_d0 sc_out sc_lv 32 signal 2 } 
	{ vb_buffer_address0 sc_out sc_lv 4 signal 3 } 
	{ vb_buffer_ce0 sc_out sc_logic 1 signal 3 } 
	{ vb_buffer_we0 sc_out sc_logic 1 signal 3 } 
	{ vb_buffer_d0 sc_out sc_lv 32 signal 3 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "gmem_load", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_load", "role": "default" }} , 
 	{ "name": "gmem_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem_load_1", "role": "default" }} , 
 	{ "name": "va_buffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "va_buffer", "role": "address0" }} , 
 	{ "name": "va_buffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "va_buffer", "role": "ce0" }} , 
 	{ "name": "va_buffer_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "va_buffer", "role": "we0" }} , 
 	{ "name": "va_buffer_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "va_buffer", "role": "d0" }} , 
 	{ "name": "vb_buffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "vb_buffer", "role": "address0" }} , 
 	{ "name": "vb_buffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vb_buffer", "role": "ce0" }} , 
 	{ "name": "vb_buffer_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "vb_buffer", "role": "we0" }} , 
 	{ "name": "vb_buffer_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "vb_buffer", "role": "d0" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dot_prod_Pipeline_load",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "va_buffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "vb_buffer", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "load", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dot_prod_Pipeline_load {
		gmem_load {Type I LastRead 0 FirstWrite -1}
		gmem_load_1 {Type I LastRead 0 FirstWrite -1}
		va_buffer {Type O LastRead -1 FirstWrite 1}
		vb_buffer {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	gmem_load { ap_none {  { gmem_load in_data 0 512 } } }
	gmem_load_1 { ap_none {  { gmem_load_1 in_data 0 512 } } }
	va_buffer { ap_memory {  { va_buffer_address0 mem_address 1 4 }  { va_buffer_ce0 mem_ce 1 1 }  { va_buffer_we0 mem_we 1 1 }  { va_buffer_d0 mem_din 1 32 } } }
	vb_buffer { ap_memory {  { vb_buffer_address0 mem_address 1 4 }  { vb_buffer_ce0 mem_ce 1 1 }  { vb_buffer_we0 mem_we 1 1 }  { vb_buffer_d0 mem_din 1 32 } } }
}
