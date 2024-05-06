set moduleName xFFilter2Dkernel_Pipeline_COL_LOOP
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {xFFilter2Dkernel_Pipeline_COL_LOOP}
set C_modelType { void 0 }
set C_modelArgList {
	{ src_kernel_win_5 int 8 regular  }
	{ src_kernel_win_3 int 8 regular  }
	{ src_kernel_win int 8 regular  }
	{ widthloop int 17 regular  }
	{ cmp204 int 1 regular  }
	{ imgInput_data int 8 regular {fifo 0 volatile }  }
	{ zext_ln696 int 16 regular  }
	{ brmerge30 int 1 regular  }
	{ locy int 2 regular  }
	{ cmp1_i18 int 1 regular  }
	{ cmp179_1 int 1 regular  }
	{ empty_26 int 1 regular  }
	{ locy_1 int 2 regular  }
	{ empty_27 int 1 regular  }
	{ empty int 1 regular  }
	{ locy_2 int 2 regular  }
	{ p_filter_kernel_0_0_val1 int 16 regular  }
	{ p_filter_kernel_0_1_val2 int 16 regular  }
	{ p_filter_kernel_0_2_val3 int 16 regular  }
	{ p_filter_kernel_1_0_val4 int 16 regular  }
	{ p_filter_kernel_1_1_val5 int 16 regular  }
	{ p_filter_kernel_1_2_val6 int 16 regular  }
	{ p_filter_kernel_2_0_val7 int 16 regular  }
	{ p_filter_kernel_2_1_val8 int 16 regular  }
	{ p_filter_kernel_2_2_val9 int 16 regular  }
	{ shift int 8 regular  }
	{ imgOutput_data int 8 regular {fifo 1 volatile }  }
	{ src_kernel_win_11_out int 8 regular {pointer 1}  }
	{ src_kernel_win_10_out int 8 regular {pointer 2}  }
	{ src_kernel_win_9_out int 8 regular {pointer 1}  }
	{ src_kernel_win_8_out int 8 regular {pointer 2}  }
	{ src_kernel_win_7_out int 8 regular {pointer 2}  }
	{ src_kernel_win_6_out int 8 regular {pointer 1}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "src_kernel_win_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_kernel_win_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_kernel_win", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "widthloop", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "cmp204", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "imgInput_data", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln696", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "brmerge30", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "locy", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "cmp1_i18", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "cmp179_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty_26", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "locy_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "empty_27", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "locy_2", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "p_filter_kernel_0_0_val1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_filter_kernel_0_1_val2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_filter_kernel_0_2_val3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_filter_kernel_1_0_val4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_filter_kernel_1_1_val5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_filter_kernel_1_2_val6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_filter_kernel_2_0_val7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_filter_kernel_2_1_val8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_filter_kernel_2_2_val9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "shift", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "imgOutput_data", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_kernel_win_11_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_kernel_win_10_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "src_kernel_win_9_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_kernel_win_8_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "src_kernel_win_7_out", "interface" : "wire", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "src_kernel_win_6_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgInput_data_dout sc_in sc_lv 8 signal 5 } 
	{ imgInput_data_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ imgInput_data_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ imgInput_data_empty_n sc_in sc_logic 1 signal 5 } 
	{ imgInput_data_read sc_out sc_logic 1 signal 5 } 
	{ imgOutput_data_din sc_out sc_lv 8 signal 26 } 
	{ imgOutput_data_num_data_valid sc_in sc_lv 3 signal 26 } 
	{ imgOutput_data_fifo_cap sc_in sc_lv 3 signal 26 } 
	{ imgOutput_data_full_n sc_in sc_logic 1 signal 26 } 
	{ imgOutput_data_write sc_out sc_logic 1 signal 26 } 
	{ src_kernel_win_5 sc_in sc_lv 8 signal 0 } 
	{ src_kernel_win_3 sc_in sc_lv 8 signal 1 } 
	{ src_kernel_win sc_in sc_lv 8 signal 2 } 
	{ widthloop sc_in sc_lv 17 signal 3 } 
	{ cmp204 sc_in sc_lv 1 signal 4 } 
	{ zext_ln696 sc_in sc_lv 16 signal 6 } 
	{ brmerge30 sc_in sc_lv 1 signal 7 } 
	{ locy sc_in sc_lv 2 signal 8 } 
	{ cmp1_i18 sc_in sc_lv 1 signal 9 } 
	{ cmp179_1 sc_in sc_lv 1 signal 10 } 
	{ empty_26 sc_in sc_lv 1 signal 11 } 
	{ locy_1 sc_in sc_lv 2 signal 12 } 
	{ empty_27 sc_in sc_lv 1 signal 13 } 
	{ empty sc_in sc_lv 1 signal 14 } 
	{ locy_2 sc_in sc_lv 2 signal 15 } 
	{ p_filter_kernel_0_0_val1 sc_in sc_lv 16 signal 16 } 
	{ p_filter_kernel_0_1_val2 sc_in sc_lv 16 signal 17 } 
	{ p_filter_kernel_0_2_val3 sc_in sc_lv 16 signal 18 } 
	{ p_filter_kernel_1_0_val4 sc_in sc_lv 16 signal 19 } 
	{ p_filter_kernel_1_1_val5 sc_in sc_lv 16 signal 20 } 
	{ p_filter_kernel_1_2_val6 sc_in sc_lv 16 signal 21 } 
	{ p_filter_kernel_2_0_val7 sc_in sc_lv 16 signal 22 } 
	{ p_filter_kernel_2_1_val8 sc_in sc_lv 16 signal 23 } 
	{ p_filter_kernel_2_2_val9 sc_in sc_lv 16 signal 24 } 
	{ shift sc_in sc_lv 8 signal 25 } 
	{ src_kernel_win_11_out sc_out sc_lv 8 signal 27 } 
	{ src_kernel_win_11_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ src_kernel_win_10_out_i sc_in sc_lv 8 signal 28 } 
	{ src_kernel_win_10_out_o sc_out sc_lv 8 signal 28 } 
	{ src_kernel_win_10_out_o_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ src_kernel_win_9_out sc_out sc_lv 8 signal 29 } 
	{ src_kernel_win_9_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ src_kernel_win_8_out_i sc_in sc_lv 8 signal 30 } 
	{ src_kernel_win_8_out_o sc_out sc_lv 8 signal 30 } 
	{ src_kernel_win_8_out_o_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ src_kernel_win_7_out_i sc_in sc_lv 8 signal 31 } 
	{ src_kernel_win_7_out_o sc_out sc_lv 8 signal 31 } 
	{ src_kernel_win_7_out_o_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ src_kernel_win_6_out sc_out sc_lv 8 signal 32 } 
	{ src_kernel_win_6_out_ap_vld sc_out sc_logic 1 outvld 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgInput_data_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgInput_data", "role": "dout" }} , 
 	{ "name": "imgInput_data_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgInput_data", "role": "num_data_valid" }} , 
 	{ "name": "imgInput_data_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgInput_data", "role": "fifo_cap" }} , 
 	{ "name": "imgInput_data_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_data", "role": "empty_n" }} , 
 	{ "name": "imgInput_data_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_data", "role": "read" }} , 
 	{ "name": "imgOutput_data_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgOutput_data", "role": "din" }} , 
 	{ "name": "imgOutput_data_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgOutput_data", "role": "num_data_valid" }} , 
 	{ "name": "imgOutput_data_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imgOutput_data", "role": "fifo_cap" }} , 
 	{ "name": "imgOutput_data_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_data", "role": "full_n" }} , 
 	{ "name": "imgOutput_data_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_data", "role": "write" }} , 
 	{ "name": "src_kernel_win_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_kernel_win_5", "role": "default" }} , 
 	{ "name": "src_kernel_win_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_kernel_win_3", "role": "default" }} , 
 	{ "name": "src_kernel_win", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_kernel_win", "role": "default" }} , 
 	{ "name": "widthloop", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "widthloop", "role": "default" }} , 
 	{ "name": "cmp204", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp204", "role": "default" }} , 
 	{ "name": "zext_ln696", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "zext_ln696", "role": "default" }} , 
 	{ "name": "brmerge30", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "brmerge30", "role": "default" }} , 
 	{ "name": "locy", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "locy", "role": "default" }} , 
 	{ "name": "cmp1_i18", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp1_i18", "role": "default" }} , 
 	{ "name": "cmp179_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp179_1", "role": "default" }} , 
 	{ "name": "empty_26", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_26", "role": "default" }} , 
 	{ "name": "locy_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "locy_1", "role": "default" }} , 
 	{ "name": "empty_27", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_27", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "locy_2", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "locy_2", "role": "default" }} , 
 	{ "name": "p_filter_kernel_0_0_val1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_filter_kernel_0_0_val1", "role": "default" }} , 
 	{ "name": "p_filter_kernel_0_1_val2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_filter_kernel_0_1_val2", "role": "default" }} , 
 	{ "name": "p_filter_kernel_0_2_val3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_filter_kernel_0_2_val3", "role": "default" }} , 
 	{ "name": "p_filter_kernel_1_0_val4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_filter_kernel_1_0_val4", "role": "default" }} , 
 	{ "name": "p_filter_kernel_1_1_val5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_filter_kernel_1_1_val5", "role": "default" }} , 
 	{ "name": "p_filter_kernel_1_2_val6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_filter_kernel_1_2_val6", "role": "default" }} , 
 	{ "name": "p_filter_kernel_2_0_val7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_filter_kernel_2_0_val7", "role": "default" }} , 
 	{ "name": "p_filter_kernel_2_1_val8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_filter_kernel_2_1_val8", "role": "default" }} , 
 	{ "name": "p_filter_kernel_2_2_val9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_filter_kernel_2_2_val9", "role": "default" }} , 
 	{ "name": "shift", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "shift", "role": "default" }} , 
 	{ "name": "src_kernel_win_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_kernel_win_11_out", "role": "default" }} , 
 	{ "name": "src_kernel_win_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_kernel_win_11_out", "role": "ap_vld" }} , 
 	{ "name": "src_kernel_win_10_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_kernel_win_10_out", "role": "i" }} , 
 	{ "name": "src_kernel_win_10_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_kernel_win_10_out", "role": "o" }} , 
 	{ "name": "src_kernel_win_10_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_kernel_win_10_out", "role": "o_ap_vld" }} , 
 	{ "name": "src_kernel_win_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_kernel_win_9_out", "role": "default" }} , 
 	{ "name": "src_kernel_win_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_kernel_win_9_out", "role": "ap_vld" }} , 
 	{ "name": "src_kernel_win_8_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_kernel_win_8_out", "role": "i" }} , 
 	{ "name": "src_kernel_win_8_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_kernel_win_8_out", "role": "o" }} , 
 	{ "name": "src_kernel_win_8_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_kernel_win_8_out", "role": "o_ap_vld" }} , 
 	{ "name": "src_kernel_win_7_out_i", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_kernel_win_7_out", "role": "i" }} , 
 	{ "name": "src_kernel_win_7_out_o", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_kernel_win_7_out", "role": "o" }} , 
 	{ "name": "src_kernel_win_7_out_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_kernel_win_7_out", "role": "o_ap_vld" }} , 
 	{ "name": "src_kernel_win_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_kernel_win_6_out", "role": "default" }} , 
 	{ "name": "src_kernel_win_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "src_kernel_win_6_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "15", "16", "17", "18"],
		"CDFG" : "xFFilter2Dkernel_Pipeline_COL_LOOP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "65566",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "src_kernel_win_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_kernel_win_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "src_kernel_win", "Type" : "None", "Direction" : "I"},
			{"Name" : "widthloop", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp204", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgInput_data", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgInput_data_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln696", "Type" : "None", "Direction" : "I"},
			{"Name" : "brmerge30", "Type" : "None", "Direction" : "I"},
			{"Name" : "locy", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp1_i18", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp179_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "locy_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "locy_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_filter_kernel_0_0_val1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_filter_kernel_0_1_val2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_filter_kernel_0_2_val3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_filter_kernel_1_0_val4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_filter_kernel_1_1_val5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_filter_kernel_1_2_val6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_filter_kernel_2_0_val7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_filter_kernel_2_1_val8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_filter_kernel_2_2_val9", "Type" : "None", "Direction" : "I"},
			{"Name" : "shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgOutput_data", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgOutput_data_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_kernel_win_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_kernel_win_10_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "src_kernel_win_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "src_kernel_win_8_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "src_kernel_win_7_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "src_kernel_win_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "COL_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter28", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter28", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_buf_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.k_buf_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mul_16s_8ns_24_4_0_U80", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mul_16s_8ns_24_4_0_U81", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mul_16s_8ns_24_4_0_U82", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.ashr_32s_8ns_32_7_0_U83", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_24s_25_4_0_U84", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_24s_25_4_0_U85", "Parent" : "4"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_24s_25_4_0_U86", "Parent" : "4"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_25s_26_4_0_U87", "Parent" : "4"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_26s_27_4_0_U88", "Parent" : "4"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_27s_28_4_0_U89", "Parent" : "4"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U115", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U116", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_8_1_1_U117", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xFFilter2Dkernel_Pipeline_COL_LOOP {
		src_kernel_win_5 {Type I LastRead 0 FirstWrite -1}
		src_kernel_win_3 {Type I LastRead 0 FirstWrite -1}
		src_kernel_win {Type I LastRead 0 FirstWrite -1}
		widthloop {Type I LastRead 0 FirstWrite -1}
		cmp204 {Type I LastRead 0 FirstWrite -1}
		imgInput_data {Type I LastRead 2 FirstWrite -1}
		zext_ln696 {Type I LastRead 0 FirstWrite -1}
		brmerge30 {Type I LastRead 0 FirstWrite -1}
		locy {Type I LastRead 0 FirstWrite -1}
		cmp1_i18 {Type I LastRead 0 FirstWrite -1}
		cmp179_1 {Type I LastRead 0 FirstWrite -1}
		empty_26 {Type I LastRead 0 FirstWrite -1}
		locy_1 {Type I LastRead 0 FirstWrite -1}
		empty_27 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		locy_2 {Type I LastRead 0 FirstWrite -1}
		p_filter_kernel_0_0_val1 {Type I LastRead 0 FirstWrite -1}
		p_filter_kernel_0_1_val2 {Type I LastRead 0 FirstWrite -1}
		p_filter_kernel_0_2_val3 {Type I LastRead 0 FirstWrite -1}
		p_filter_kernel_1_0_val4 {Type I LastRead 0 FirstWrite -1}
		p_filter_kernel_1_1_val5 {Type I LastRead 0 FirstWrite -1}
		p_filter_kernel_1_2_val6 {Type I LastRead 0 FirstWrite -1}
		p_filter_kernel_2_0_val7 {Type I LastRead 0 FirstWrite -1}
		p_filter_kernel_2_1_val8 {Type I LastRead 0 FirstWrite -1}
		p_filter_kernel_2_2_val9 {Type I LastRead 0 FirstWrite -1}
		shift {Type I LastRead 0 FirstWrite -1}
		imgOutput_data {Type O LastRead -1 FirstWrite 28}
		src_kernel_win_11_out {Type O LastRead -1 FirstWrite 27}
		src_kernel_win_10_out {Type IO LastRead 7 FirstWrite 7}
		src_kernel_win_9_out {Type O LastRead -1 FirstWrite 27}
		src_kernel_win_8_out {Type IO LastRead 7 FirstWrite 7}
		src_kernel_win_7_out {Type IO LastRead 7 FirstWrite 7}
		src_kernel_win_6_out {Type O LastRead -1 FirstWrite 27}}
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
	{"Name" : "Latency", "Min" : "31", "Max" : "65566"}
	, {"Name" : "Interval", "Min" : "31", "Max" : "65566"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	src_kernel_win_5 { ap_none {  { src_kernel_win_5 in_data 0 8 } } }
	src_kernel_win_3 { ap_none {  { src_kernel_win_3 in_data 0 8 } } }
	src_kernel_win { ap_none {  { src_kernel_win in_data 0 8 } } }
	widthloop { ap_none {  { widthloop in_data 0 17 } } }
	cmp204 { ap_none {  { cmp204 in_data 0 1 } } }
	imgInput_data { ap_fifo {  { imgInput_data_dout fifo_data_in 0 8 }  { imgInput_data_num_data_valid fifo_status_num_data_valid 0 3 }  { imgInput_data_fifo_cap fifo_update 0 3 }  { imgInput_data_empty_n fifo_status 0 1 }  { imgInput_data_read fifo_port_we 1 1 } } }
	zext_ln696 { ap_none {  { zext_ln696 in_data 0 16 } } }
	brmerge30 { ap_none {  { brmerge30 in_data 0 1 } } }
	locy { ap_none {  { locy in_data 0 2 } } }
	cmp1_i18 { ap_none {  { cmp1_i18 in_data 0 1 } } }
	cmp179_1 { ap_none {  { cmp179_1 in_data 0 1 } } }
	empty_26 { ap_none {  { empty_26 in_data 0 1 } } }
	locy_1 { ap_none {  { locy_1 in_data 0 2 } } }
	empty_27 { ap_none {  { empty_27 in_data 0 1 } } }
	empty { ap_none {  { empty in_data 0 1 } } }
	locy_2 { ap_none {  { locy_2 in_data 0 2 } } }
	p_filter_kernel_0_0_val1 { ap_none {  { p_filter_kernel_0_0_val1 in_data 0 16 } } }
	p_filter_kernel_0_1_val2 { ap_none {  { p_filter_kernel_0_1_val2 in_data 0 16 } } }
	p_filter_kernel_0_2_val3 { ap_none {  { p_filter_kernel_0_2_val3 in_data 0 16 } } }
	p_filter_kernel_1_0_val4 { ap_none {  { p_filter_kernel_1_0_val4 in_data 0 16 } } }
	p_filter_kernel_1_1_val5 { ap_none {  { p_filter_kernel_1_1_val5 in_data 0 16 } } }
	p_filter_kernel_1_2_val6 { ap_none {  { p_filter_kernel_1_2_val6 in_data 0 16 } } }
	p_filter_kernel_2_0_val7 { ap_none {  { p_filter_kernel_2_0_val7 in_data 0 16 } } }
	p_filter_kernel_2_1_val8 { ap_none {  { p_filter_kernel_2_1_val8 in_data 0 16 } } }
	p_filter_kernel_2_2_val9 { ap_none {  { p_filter_kernel_2_2_val9 in_data 0 16 } } }
	shift { ap_none {  { shift in_data 0 8 } } }
	imgOutput_data { ap_fifo {  { imgOutput_data_din fifo_data_in 1 8 }  { imgOutput_data_num_data_valid fifo_status_num_data_valid 0 3 }  { imgOutput_data_fifo_cap fifo_update 0 3 }  { imgOutput_data_full_n fifo_status 0 1 }  { imgOutput_data_write fifo_port_we 1 1 } } }
	src_kernel_win_11_out { ap_vld {  { src_kernel_win_11_out out_data 1 8 }  { src_kernel_win_11_out_ap_vld out_vld 1 1 } } }
	src_kernel_win_10_out { ap_ovld {  { src_kernel_win_10_out_i in_data 0 8 }  { src_kernel_win_10_out_o out_data 1 8 }  { src_kernel_win_10_out_o_ap_vld out_vld 1 1 } } }
	src_kernel_win_9_out { ap_vld {  { src_kernel_win_9_out out_data 1 8 }  { src_kernel_win_9_out_ap_vld out_vld 1 1 } } }
	src_kernel_win_8_out { ap_ovld {  { src_kernel_win_8_out_i in_data 0 8 }  { src_kernel_win_8_out_o out_data 1 8 }  { src_kernel_win_8_out_o_ap_vld out_vld 1 1 } } }
	src_kernel_win_7_out { ap_ovld {  { src_kernel_win_7_out_i in_data 0 8 }  { src_kernel_win_7_out_o out_data 1 8 }  { src_kernel_win_7_out_o_ap_vld out_vld 1 1 } } }
	src_kernel_win_6_out { ap_vld {  { src_kernel_win_6_out out_data 1 8 }  { src_kernel_win_6_out_ap_vld out_vld 1 1 } } }
}
