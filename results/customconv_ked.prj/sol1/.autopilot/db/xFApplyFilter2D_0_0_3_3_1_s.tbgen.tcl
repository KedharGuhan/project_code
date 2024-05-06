set moduleName xFApplyFilter2D_0_0_3_3_1_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {xFApplyFilter2D<0, 0, 3, 3, 1>}
set C_modelType { int 8 }
set C_modelArgList {
	{ p_kernel_pixel_0_0_val int 8 regular  }
	{ p_kernel_pixel_0_1_val int 8 regular  }
	{ p_kernel_pixel_0_2_val int 8 regular  }
	{ p_kernel_pixel_1_0_val int 8 regular  }
	{ p_kernel_pixel_1_1_val int 8 regular  }
	{ p_kernel_pixel_1_2_val int 8 regular  }
	{ p_kernel_pixel_2_0_val int 8 regular  }
	{ p_kernel_pixel_2_1_val int 8 regular  }
	{ p_kernel_pixel_2_2_val int 8 regular  }
	{ p_kernel_filter_0_0_val int 16 regular  }
	{ p_kernel_filter_0_1_val int 16 regular  }
	{ p_kernel_filter_0_2_val int 16 regular  }
	{ p_kernel_filter_1_0_val int 16 regular  }
	{ p_kernel_filter_1_1_val int 16 regular  }
	{ p_kernel_filter_1_2_val int 16 regular  }
	{ p_kernel_filter_2_0_val int 16 regular  }
	{ p_kernel_filter_2_1_val int 16 regular  }
	{ p_kernel_filter_2_2_val int 16 regular  }
	{ shift uint 8 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "p_kernel_pixel_0_0_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_pixel_0_1_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_pixel_0_2_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_pixel_1_0_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_pixel_1_1_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_pixel_1_2_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_pixel_2_0_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_pixel_2_1_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_pixel_2_2_val", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_filter_0_0_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_filter_0_1_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_filter_0_2_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_filter_1_0_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_filter_1_1_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_filter_1_2_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_filter_2_0_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_filter_2_1_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_kernel_filter_2_2_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "shift", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 8} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ p_kernel_pixel_0_0_val sc_in sc_lv 8 signal 0 } 
	{ p_kernel_pixel_0_1_val sc_in sc_lv 8 signal 1 } 
	{ p_kernel_pixel_0_2_val sc_in sc_lv 8 signal 2 } 
	{ p_kernel_pixel_1_0_val sc_in sc_lv 8 signal 3 } 
	{ p_kernel_pixel_1_1_val sc_in sc_lv 8 signal 4 } 
	{ p_kernel_pixel_1_2_val sc_in sc_lv 8 signal 5 } 
	{ p_kernel_pixel_2_0_val sc_in sc_lv 8 signal 6 } 
	{ p_kernel_pixel_2_1_val sc_in sc_lv 8 signal 7 } 
	{ p_kernel_pixel_2_2_val sc_in sc_lv 8 signal 8 } 
	{ p_kernel_filter_0_0_val sc_in sc_lv 16 signal 9 } 
	{ p_kernel_filter_0_1_val sc_in sc_lv 16 signal 10 } 
	{ p_kernel_filter_0_2_val sc_in sc_lv 16 signal 11 } 
	{ p_kernel_filter_1_0_val sc_in sc_lv 16 signal 12 } 
	{ p_kernel_filter_1_1_val sc_in sc_lv 16 signal 13 } 
	{ p_kernel_filter_1_2_val sc_in sc_lv 16 signal 14 } 
	{ p_kernel_filter_2_0_val sc_in sc_lv 16 signal 15 } 
	{ p_kernel_filter_2_1_val sc_in sc_lv 16 signal 16 } 
	{ p_kernel_filter_2_2_val sc_in sc_lv 16 signal 17 } 
	{ shift sc_in sc_lv 8 signal 18 } 
	{ ap_return sc_out sc_lv 8 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "p_kernel_pixel_0_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_pixel_0_0_val", "role": "default" }} , 
 	{ "name": "p_kernel_pixel_0_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_pixel_0_1_val", "role": "default" }} , 
 	{ "name": "p_kernel_pixel_0_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_pixel_0_2_val", "role": "default" }} , 
 	{ "name": "p_kernel_pixel_1_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_pixel_1_0_val", "role": "default" }} , 
 	{ "name": "p_kernel_pixel_1_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_pixel_1_1_val", "role": "default" }} , 
 	{ "name": "p_kernel_pixel_1_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_pixel_1_2_val", "role": "default" }} , 
 	{ "name": "p_kernel_pixel_2_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_pixel_2_0_val", "role": "default" }} , 
 	{ "name": "p_kernel_pixel_2_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_pixel_2_1_val", "role": "default" }} , 
 	{ "name": "p_kernel_pixel_2_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_kernel_pixel_2_2_val", "role": "default" }} , 
 	{ "name": "p_kernel_filter_0_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_kernel_filter_0_0_val", "role": "default" }} , 
 	{ "name": "p_kernel_filter_0_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_kernel_filter_0_1_val", "role": "default" }} , 
 	{ "name": "p_kernel_filter_0_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_kernel_filter_0_2_val", "role": "default" }} , 
 	{ "name": "p_kernel_filter_1_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_kernel_filter_1_0_val", "role": "default" }} , 
 	{ "name": "p_kernel_filter_1_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_kernel_filter_1_1_val", "role": "default" }} , 
 	{ "name": "p_kernel_filter_1_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_kernel_filter_1_2_val", "role": "default" }} , 
 	{ "name": "p_kernel_filter_2_0_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_kernel_filter_2_0_val", "role": "default" }} , 
 	{ "name": "p_kernel_filter_2_1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_kernel_filter_2_1_val", "role": "default" }} , 
 	{ "name": "p_kernel_filter_2_2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_kernel_filter_2_2_val", "role": "default" }} , 
 	{ "name": "shift", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "shift", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "xFApplyFilter2D_0_0_3_3_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "19", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_kernel_pixel_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_pixel_0_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_pixel_0_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_pixel_1_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_pixel_1_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_pixel_1_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_pixel_2_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_pixel_2_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_pixel_2_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_filter_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_filter_0_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_filter_0_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_filter_1_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_filter_1_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_filter_1_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_filter_2_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_filter_2_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_kernel_filter_2_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_8ns_24_4_0_U80", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_8ns_24_4_0_U81", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_8ns_24_4_0_U82", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ashr_32s_8ns_32_7_0_U83", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_24s_25_4_0_U84", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_24s_25_4_0_U85", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_24s_25_4_0_U86", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_25s_26_4_0_U87", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_26s_27_4_0_U88", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_27s_28_4_0_U89", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFApplyFilter2D_0_0_3_3_1_s {
		p_kernel_pixel_0_0_val {Type I LastRead 0 FirstWrite -1}
		p_kernel_pixel_0_1_val {Type I LastRead 0 FirstWrite -1}
		p_kernel_pixel_0_2_val {Type I LastRead 0 FirstWrite -1}
		p_kernel_pixel_1_0_val {Type I LastRead 0 FirstWrite -1}
		p_kernel_pixel_1_1_val {Type I LastRead 0 FirstWrite -1}
		p_kernel_pixel_1_2_val {Type I LastRead 0 FirstWrite -1}
		p_kernel_pixel_2_0_val {Type I LastRead 0 FirstWrite -1}
		p_kernel_pixel_2_1_val {Type I LastRead 0 FirstWrite -1}
		p_kernel_pixel_2_2_val {Type I LastRead 0 FirstWrite -1}
		p_kernel_filter_0_0_val {Type I LastRead 0 FirstWrite -1}
		p_kernel_filter_0_1_val {Type I LastRead 0 FirstWrite -1}
		p_kernel_filter_0_2_val {Type I LastRead 0 FirstWrite -1}
		p_kernel_filter_1_0_val {Type I LastRead 0 FirstWrite -1}
		p_kernel_filter_1_1_val {Type I LastRead 0 FirstWrite -1}
		p_kernel_filter_1_2_val {Type I LastRead 0 FirstWrite -1}
		p_kernel_filter_2_0_val {Type I LastRead 0 FirstWrite -1}
		p_kernel_filter_2_1_val {Type I LastRead 0 FirstWrite -1}
		p_kernel_filter_2_2_val {Type I LastRead 0 FirstWrite -1}
		shift {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19", "Max" : "19"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_kernel_pixel_0_0_val { ap_none {  { p_kernel_pixel_0_0_val in_data 0 8 } } }
	p_kernel_pixel_0_1_val { ap_none {  { p_kernel_pixel_0_1_val in_data 0 8 } } }
	p_kernel_pixel_0_2_val { ap_none {  { p_kernel_pixel_0_2_val in_data 0 8 } } }
	p_kernel_pixel_1_0_val { ap_none {  { p_kernel_pixel_1_0_val in_data 0 8 } } }
	p_kernel_pixel_1_1_val { ap_none {  { p_kernel_pixel_1_1_val in_data 0 8 } } }
	p_kernel_pixel_1_2_val { ap_none {  { p_kernel_pixel_1_2_val in_data 0 8 } } }
	p_kernel_pixel_2_0_val { ap_none {  { p_kernel_pixel_2_0_val in_data 0 8 } } }
	p_kernel_pixel_2_1_val { ap_none {  { p_kernel_pixel_2_1_val in_data 0 8 } } }
	p_kernel_pixel_2_2_val { ap_none {  { p_kernel_pixel_2_2_val in_data 0 8 } } }
	p_kernel_filter_0_0_val { ap_none {  { p_kernel_filter_0_0_val in_data 0 16 } } }
	p_kernel_filter_0_1_val { ap_none {  { p_kernel_filter_0_1_val in_data 0 16 } } }
	p_kernel_filter_0_2_val { ap_none {  { p_kernel_filter_0_2_val in_data 0 16 } } }
	p_kernel_filter_1_0_val { ap_none {  { p_kernel_filter_1_0_val in_data 0 16 } } }
	p_kernel_filter_1_1_val { ap_none {  { p_kernel_filter_1_1_val in_data 0 16 } } }
	p_kernel_filter_1_2_val { ap_none {  { p_kernel_filter_1_2_val in_data 0 16 } } }
	p_kernel_filter_2_0_val { ap_none {  { p_kernel_filter_2_0_val in_data 0 16 } } }
	p_kernel_filter_2_1_val { ap_none {  { p_kernel_filter_2_1_val in_data 0 16 } } }
	p_kernel_filter_2_2_val { ap_none {  { p_kernel_filter_2_2_val in_data 0 16 } } }
	shift { ap_none {  { shift in_data 0 8 } } }
}
