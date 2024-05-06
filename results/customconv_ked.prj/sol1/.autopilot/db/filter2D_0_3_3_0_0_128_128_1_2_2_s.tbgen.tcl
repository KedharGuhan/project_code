set moduleName filter2D_0_3_3_0_0_128_128_1_2_2_s
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
set C_modelName {filter2D<0, 3, 3, 0, 0, 128, 128, 1, 2, 2>}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
	{ imgInput_data int 8 regular {fifo 0 volatile }  }
	{ imgOutput_data int 8 regular {fifo 1 volatile }  }
	{ gmem1 int 16 regular {axi_master 0}  }
	{ filter int 64 regular  }
	{ p_shift uint 8 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "imgInput_data", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "imgOutput_data", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "filter","offset": { "type": "dynamic","port_name": "filter","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "filter", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p_shift", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 75
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 0 } 
	{ p_src_mat_rows_num_data_valid sc_in sc_lv 3 signal 0 } 
	{ p_src_mat_rows_fifo_cap sc_in sc_lv 3 signal 0 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 0 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 1 } 
	{ p_src_mat_cols_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ p_src_mat_cols_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 1 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 1 } 
	{ imgInput_data_dout sc_in sc_lv 8 signal 2 } 
	{ imgInput_data_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ imgInput_data_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ imgInput_data_empty_n sc_in sc_logic 1 signal 2 } 
	{ imgInput_data_read sc_out sc_logic 1 signal 2 } 
	{ imgOutput_data_din sc_out sc_lv 8 signal 3 } 
	{ imgOutput_data_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ imgOutput_data_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ imgOutput_data_full_n sc_in sc_logic 1 signal 3 } 
	{ imgOutput_data_write sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 16 signal 4 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 16 signal 4 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem1_RFIFONUM sc_in sc_lv 10 signal 4 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 4 } 
	{ filter sc_in sc_lv 64 signal 5 } 
	{ p_shift sc_in sc_lv 8 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "num_data_valid" }} , 
 	{ "name": "p_src_mat_rows_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "fifo_cap" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "num_data_valid" }} , 
 	{ "name": "p_src_mat_cols_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "fifo_cap" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }} , 
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
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "gmem1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "filter", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "filter", "role": "default" }} , 
 	{ "name": "p_shift", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_shift", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "filter2D_0_3_3_0_0_128_128_1_2_2_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "203", "EstimateLatencyMax" : "4297523363",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgInput_data", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145", "Port" : "imgInput_data", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "imgOutput_data", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145", "Port" : "imgOutput_data", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_filter2D_Pipeline_VITIS_LOOP_834_1_VITIS_LOOP_835_2_fu_129", "Port" : "gmem1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "filter", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_shift", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_filter2D_Pipeline_VITIS_LOOP_834_1_VITIS_LOOP_835_2_fu_129", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "filter2D_Pipeline_VITIS_LOOP_834_1_VITIS_LOOP_835_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln834", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out8", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_834_1_VITIS_LOOP_835_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_filter2D_Pipeline_VITIS_LOOP_834_1_VITIS_LOOP_835_2_fu_129.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145", "Parent" : "0", "Child" : ["4"],
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
					{"ID" : "4", "SubInstance" : "grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196", "Port" : "imgInput_data", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "imgOutput_data", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196", "Port" : "imgOutput_data", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196", "Parent" : "3", "Child" : ["5", "6", "7", "8", "19", "20", "21", "22"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.k_buf_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.k_buf_1_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.k_buf_2_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377", "Parent" : "4", "Child" : ["9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
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
	{"ID" : "9", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mul_16s_8ns_24_4_0_U80", "Parent" : "8"},
	{"ID" : "10", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mul_16s_8ns_24_4_0_U81", "Parent" : "8"},
	{"ID" : "11", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mul_16s_8ns_24_4_0_U82", "Parent" : "8"},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.ashr_32s_8ns_32_7_0_U83", "Parent" : "8"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_24s_25_4_0_U84", "Parent" : "8"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_24s_25_4_0_U85", "Parent" : "8"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_24s_25_4_0_U86", "Parent" : "8"},
	{"ID" : "16", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_25s_26_4_0_U87", "Parent" : "8"},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_26s_27_4_0_U88", "Parent" : "8"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377.mac_muladd_16s_8ns_27s_28_4_0_U89", "Parent" : "8"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.sparsemux_7_2_8_1_1_U115", "Parent" : "4"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.sparsemux_7_2_8_1_1_U116", "Parent" : "4"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.sparsemux_7_2_8_1_1_U117", "Parent" : "4"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145.grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"}]}


set ArgLastReadFirstWriteLatency {
	filter2D_0_3_3_0_0_128_128_1_2_2_s {
		p_src_mat_rows {Type I LastRead 9 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 9 FirstWrite -1}
		imgInput_data {Type I LastRead 2 FirstWrite -1}
		imgOutput_data {Type O LastRead -1 FirstWrite 28}
		gmem1 {Type I LastRead 1 FirstWrite -1}
		filter {Type I LastRead 0 FirstWrite -1}
		p_shift {Type I LastRead 10 FirstWrite -1}}
	filter2D_Pipeline_VITIS_LOOP_834_1_VITIS_LOOP_835_2 {
		gmem1 {Type I LastRead 1 FirstWrite -1}
		sext_ln834 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		p_out3 {Type O LastRead -1 FirstWrite 0}
		p_out4 {Type O LastRead -1 FirstWrite 0}
		p_out5 {Type O LastRead -1 FirstWrite 0}
		p_out6 {Type O LastRead -1 FirstWrite 0}
		p_out7 {Type O LastRead -1 FirstWrite 0}
		p_out8 {Type O LastRead -1 FirstWrite 0}}
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
	{"Name" : "Latency", "Min" : "203", "Max" : "4297523363"}
	, {"Name" : "Interval", "Min" : "203", "Max" : "2556067"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data_in 0 32 }  { p_src_mat_rows_num_data_valid fifo_status_num_data_valid 0 3 }  { p_src_mat_rows_fifo_cap fifo_update 0 3 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_port_we 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data_in 0 32 }  { p_src_mat_cols_num_data_valid fifo_status_num_data_valid 0 3 }  { p_src_mat_cols_fifo_cap fifo_update 0 3 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_port_we 1 1 } } }
	imgInput_data { ap_fifo {  { imgInput_data_dout fifo_data_in 0 8 }  { imgInput_data_num_data_valid fifo_status_num_data_valid 0 3 }  { imgInput_data_fifo_cap fifo_update 0 3 }  { imgInput_data_empty_n fifo_status 0 1 }  { imgInput_data_read fifo_port_we 1 1 } } }
	imgOutput_data { ap_fifo {  { imgOutput_data_din fifo_data_in 1 8 }  { imgOutput_data_num_data_valid fifo_status_num_data_valid 0 3 }  { imgOutput_data_fifo_cap fifo_update 0 3 }  { imgOutput_data_full_n fifo_status 0 1 }  { imgOutput_data_write fifo_port_we 1 1 } } }
	 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 32 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 16 }  { m_axi_gmem1_WSTRB STRB 1 2 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 32 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 16 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RFIFONUM LEN 0 10 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	filter { ap_none {  { filter in_data 0 64 } } }
	p_shift { ap_none {  { p_shift in_data 0 8 } } }
}
