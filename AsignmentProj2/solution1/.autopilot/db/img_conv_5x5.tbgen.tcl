set moduleName img_conv_5x5
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {img_conv_5x5}
set C_modelType { void 0 }
set C_modelArgList {
	{ inptr int 8 regular {array 2048 { 1 1 } 1 1 }  }
	{ outptr int 8 regular {array 60 { 0 3 } 0 1 }  }
	{ mask int 8 regular {array 25 { 1 1 } 1 1 }  }
	{ y int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inptr", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "outptr", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mask", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inptr_address0 sc_out sc_lv 11 signal 0 } 
	{ inptr_ce0 sc_out sc_logic 1 signal 0 } 
	{ inptr_q0 sc_in sc_lv 8 signal 0 } 
	{ inptr_address1 sc_out sc_lv 11 signal 0 } 
	{ inptr_ce1 sc_out sc_logic 1 signal 0 } 
	{ inptr_q1 sc_in sc_lv 8 signal 0 } 
	{ outptr_address0 sc_out sc_lv 6 signal 1 } 
	{ outptr_ce0 sc_out sc_logic 1 signal 1 } 
	{ outptr_we0 sc_out sc_logic 1 signal 1 } 
	{ outptr_d0 sc_out sc_lv 8 signal 1 } 
	{ mask_address0 sc_out sc_lv 5 signal 2 } 
	{ mask_ce0 sc_out sc_logic 1 signal 2 } 
	{ mask_q0 sc_in sc_lv 8 signal 2 } 
	{ mask_address1 sc_out sc_lv 5 signal 2 } 
	{ mask_ce1 sc_out sc_logic 1 signal 2 } 
	{ mask_q1 sc_in sc_lv 8 signal 2 } 
	{ y sc_in sc_lv 5 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inptr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inptr", "role": "address0" }} , 
 	{ "name": "inptr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inptr", "role": "ce0" }} , 
 	{ "name": "inptr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inptr", "role": "q0" }} , 
 	{ "name": "inptr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "inptr", "role": "address1" }} , 
 	{ "name": "inptr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inptr", "role": "ce1" }} , 
 	{ "name": "inptr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inptr", "role": "q1" }} , 
 	{ "name": "outptr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "outptr", "role": "address0" }} , 
 	{ "name": "outptr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outptr", "role": "ce0" }} , 
 	{ "name": "outptr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outptr", "role": "we0" }} , 
 	{ "name": "outptr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "outptr", "role": "d0" }} , 
 	{ "name": "mask_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mask", "role": "address0" }} , 
 	{ "name": "mask_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mask", "role": "ce0" }} , 
 	{ "name": "mask_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mask", "role": "q0" }} , 
 	{ "name": "mask_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "mask", "role": "address1" }} , 
 	{ "name": "mask_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mask", "role": "ce1" }} , 
 	{ "name": "mask_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mask", "role": "q1" }} , 
 	{ "name": "y", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "y", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "img_conv_5x5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1921", "EstimateLatencyMax" : "1921",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "inptr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outptr", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mask", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_mac_mulabkb_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_mac_mulacud_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.convolve_mac_mulabkb_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	img_conv_5x5 {
		inptr {Type I LastRead 5 FirstWrite -1}
		outptr {Type O LastRead -1 FirstWrite 2}
		mask {Type I LastRead 5 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1921", "Max" : "1921"}
	, {"Name" : "Interval", "Min" : "1921", "Max" : "1921"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	inptr { ap_memory {  { inptr_address0 mem_address 1 11 }  { inptr_ce0 mem_ce 1 1 }  { inptr_q0 mem_dout 0 8 }  { inptr_address1 MemPortADDR2 1 11 }  { inptr_ce1 MemPortCE2 1 1 }  { inptr_q1 MemPortDOUT2 0 8 } } }
	outptr { ap_memory {  { outptr_address0 mem_address 1 6 }  { outptr_ce0 mem_ce 1 1 }  { outptr_we0 mem_we 1 1 }  { outptr_d0 mem_din 1 8 } } }
	mask { ap_memory {  { mask_address0 mem_address 1 5 }  { mask_ce0 mem_ce 1 1 }  { mask_q0 mem_dout 0 8 }  { mask_address1 MemPortADDR2 1 5 }  { mask_ce1 MemPortCE2 1 1 }  { mask_q1 MemPortDOUT2 0 8 } } }
	y { ap_none {  { y in_data 0 5 } } }
}
