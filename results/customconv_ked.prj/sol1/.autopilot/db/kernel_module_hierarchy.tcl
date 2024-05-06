set ModuleHierarchy {[{
"Name" : "Filter2d_accel","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc7_U0","ID" : "1","Type" : "sequential"},
	{"Name" : "Block_entry1_proc_U0","ID" : "2","Type" : "sequential"},
	{"Name" : "Array2xfMat_8_0_128_128_1_2_U0","ID" : "3","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_Axi2Mat_fu_84","ID" : "4","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "Axi2AxiStream_U0","ID" : "5","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108","ID" : "6","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_1021_1","ID" : "7","Type" : "pipeline"},]},]},
			{"Name" : "AxiStream2Mat_U0","ID" : "8","Type" : "dataflow",
				"SubInsts" : [
				{"Name" : "entry_proc5_U0","ID" : "9","Type" : "sequential"},
				{"Name" : "last_blk_pxl_width_U0","ID" : "10","Type" : "sequential"},
				{"Name" : "AxiStream2MatStream_2_U0","ID" : "11","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow_fu_58","ID" : "12","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "MMIterInLoopRow","ID" : "13","Type" : "pipeline"},]},]},]},]},]},
	{"Name" : "filter2D_0_3_3_0_0_128_128_1_2_2_U0","ID" : "14","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_filter2D_Pipeline_VITIS_LOOP_834_1_VITIS_LOOP_835_2_fu_129","ID" : "15","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_834_1_VITIS_LOOP_835_2","ID" : "16","Type" : "pipeline"},]},
		{"Name" : "grp_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s_fu_145","ID" : "17","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "ROW_LOOP","ID" : "18","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196","ID" : "19","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "COL_LOOP","ID" : "20","Type" : "pipeline",
					"SubInsts" : [
					{"Name" : "grp_xFApplyFilter2D_0_0_3_3_1_s_fu_377","ID" : "21","Type" : "pipeline"},]},]},]},]},]},
	{"Name" : "xfMat2Array_8_0_128_128_1_2_1_U0","ID" : "22","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_Mat2Axi_fu_74","ID" : "23","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "addrbound_U0","ID" : "24","Type" : "sequential"},
			{"Name" : "Mat2AxiStream_U0","ID" : "25","Type" : "dataflow",
				"SubInsts" : [
				{"Name" : "entry_proc_U0","ID" : "26","Type" : "sequential"},
				{"Name" : "last_blk_pxl_width_1_U0","ID" : "27","Type" : "sequential"},
				{"Name" : "MatStream2AxiStream_2_U0","ID" : "28","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol_fu_79","ID" : "29","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "MMIterOutRow_MMIterOutCol","ID" : "30","Type" : "pipeline"},]},]},]},
			{"Name" : "entry_proc6_U0","ID" : "31","Type" : "sequential"},
			{"Name" : "axibound_U","ID" : "32","Type" : "sequential"},
			{"Name" : "AxiStream2Axi_U0","ID" : "33","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67","ID" : "34","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "MMIterOutLoop2","ID" : "35","Type" : "pipeline"},]},]},]},]},
	{"Name" : "pool_gpt_U0","ID" : "36","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_pool_gpt_Pipeline_VITIS_LOOP_9_1_VITIS_LOOP_10_2_fu_66","ID" : "37","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_9_1_VITIS_LOOP_10_2","ID" : "38","Type" : "pipeline"},]},]},]
}]}