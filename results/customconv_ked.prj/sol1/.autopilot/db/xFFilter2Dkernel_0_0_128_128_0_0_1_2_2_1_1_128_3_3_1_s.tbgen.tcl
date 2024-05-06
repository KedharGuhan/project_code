set moduleName xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {xFFilter2Dkernel<0, 0, 128, 128, 0, 0, 1, 2, 2, 1, 1, 128, 3, 3, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgInput_data int 8 regular {fifo 0 volatile }  }
	{ imgOutput_data int 8 regular {fifo 1 volatile }  }
	{ p_filter_kernel_0_0_val1 int 16 regular  }
	{ p_filter_kernel_0_1_val2 int 16 regular  }
	{ p_filter_kernel_0_2_val3 int 16 regular  }
	{ p_filter_kernel_1_0_val4 int 16 regular  }
	{ p_filter_kernel_1_1_val5 int 16 regular  }
	{ p_filter_kernel_1_2_val6 int 16 regular  }
	{ p_filter_kernel_2_0_val7 int 16 regular  }
	{ p_filter_kernel_2_1_val8 int 16 regular  }
	{ p_filter_kernel_2_2_val9 int 16 regular  }
	{ shift uint 8 regular  }
	{ rows uint 16 regular  }
	{ cols uint 16 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "imgInput_data", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "imgOutput_data", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
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
 	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgInput_data_dout sc_in sc_lv 8 signal 0 } 
	{ imgInput_data_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ imgInput_data_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ imgInput_data_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgInput_data_read sc_out sc_logic 1 signal 0 } 
	{ imgOutput_data_din sc_out sc_lv 8 signal 1 } 
	{ imgOutput_data_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ imgOutput_data_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ imgOutput_data_full_n sc_in sc_logic 1 signal 1 } 
	{ imgOutput_data_write sc_out sc_logic 1 signal 1 } 
	{ p_filter_kernel_0_0_val1 sc_in sc_lv 16 signal 2 } 
	{ p_filter_kernel_0_1_val2 sc_in sc_lv 16 signal 3 } 
	{ p_filter_kernel_0_2_val3 sc_in sc_lv 16 signal 4 } 
	{ p_filter_kernel_1_0_val4 sc_in sc_lv 16 signal 5 } 
	{ p_filter_kernel_1_1_val5 sc_in sc_lv 16 signal 6 } 
	{ p_filter_kernel_1_2_val6 sc_in sc_lv 16 signal 7 } 
	{ p_filter_kernel_2_0_val7 sc_in sc_lv 16 signal 8 } 
	{ p_filter_kernel_2_1_val8 sc_in sc_lv 16 signal 9 } 
	{ p_filter_kernel_2_2_val9 sc_in sc_lv 16 signal 10 } 
	{ shift sc_in sc_lv 8 signal 11 } 
	{ rows sc_in sc_lv 16 signal 12 } 
	{ cols sc_in sc_lv 16 signal 13 } 
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
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "cols", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "181", "EstimateLatencyMax" : "4297523341",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "imgInput_data", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196", "Port" : "imgInput_data", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "imgOutput_data", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196", "Port" : "imgOutput_data", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
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
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ROW_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "6", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196", "Parent" : "0", "Child" : ["2", "3", "4", "5", "16", "17", "18", "19"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.k_buf_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.k_buf_1_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.k_buf_2_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377", "Parent" : "1", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mul_16s_8ns_24_4_0_U80", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mul_16s_8ns_24_4_0_U81", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mul_16s_8ns_24_4_0_U82", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.ashr_32s_8ns_32_7_0_U83", "Parent" : "5"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_24s_25_4_0_U84", "Parent" : "5"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_24s_25_4_0_U85", "Parent" : "5"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_24s_25_4_0_U86", "Parent" : "5"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_25s_26_4_0_U87", "Parent" : "5"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_26s_27_4_0_U88", "Parent" : "5"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_27s_28_4_0_U89", "Parent" : "5"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.sparsemux_7_2_8_1_1_U115", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.sparsemux_7_2_8_1_1_U116", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.sparsemux_7_2_8_1_1_U117", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s {
		imgInput_data {Type I LastRead 2 FirstWrite -1}
		imgOutput_data {Type O LastRead -1 FirstWrite 28}
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
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "181", "Max" : "4297523341"}
	, {"Name" : "Interval", "Min" : "181", "Max" : "2556045"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	imgInput_data { ap_fifo {  { imgInput_data_dout fifo_data_in 0 8 }  { imgInput_data_num_data_valid fifo_status_num_data_valid 0 3 }  { imgInput_data_fifo_cap fifo_update 0 3 }  { imgInput_data_empty_n fifo_status 0 1 }  { imgInput_data_read fifo_port_we 1 1 } } }
	imgOutput_data { ap_fifo {  { imgOutput_data_din fifo_data_in 1 8 }  { imgOutput_data_num_data_valid fifo_status_num_data_valid 0 3 }  { imgOutput_data_fifo_cap fifo_update 0 3 }  { imgOutput_data_full_n fifo_status 0 1 }  { imgOutput_data_write fifo_port_we 1 1 } } }
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
	rows { ap_none {  { rows in_data 0 16 } } }
	cols { ap_none {  { cols in_data 0 16 } } }
}
