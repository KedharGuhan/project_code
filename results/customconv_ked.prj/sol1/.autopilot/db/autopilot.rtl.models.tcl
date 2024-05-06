set SynModuleInfo {
  {SRCNAME entry_proc7 MODELNAME entry_proc7 RTLNAME Filter2d_accel_entry_proc7}
  {SRCNAME Block_entry1_proc MODELNAME Block_entry1_proc RTLNAME Filter2d_accel_Block_entry1_proc}
  {SRCNAME Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1 MODELNAME Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1 RTLNAME Filter2d_accel_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1
    SUBMODULES {
      {MODELNAME Filter2d_accel_flow_control_loop_pipe_sequential_init RTLNAME Filter2d_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME Filter2d_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME Axi2AxiStream MODELNAME Axi2AxiStream RTLNAME Filter2d_accel_Axi2AxiStream
    SUBMODULES {
      {MODELNAME Filter2d_accel_mul_15s_15s_15_3_1 RTLNAME Filter2d_accel_mul_15s_15s_15_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME entry_proc5 MODELNAME entry_proc5 RTLNAME Filter2d_accel_entry_proc5}
  {SRCNAME last_blk_pxl_width MODELNAME last_blk_pxl_width RTLNAME Filter2d_accel_last_blk_pxl_width}
  {SRCNAME AxiStream2MatStream<2>_Pipeline_MMIterInLoopRow MODELNAME AxiStream2MatStream_2_Pipeline_MMIterInLoopRow RTLNAME Filter2d_accel_AxiStream2MatStream_2_Pipeline_MMIterInLoopRow
    SUBMODULES {
      {MODELNAME Filter2d_accel_lshr_8ns_3ns_8_2_1 RTLNAME Filter2d_accel_lshr_8ns_3ns_8_2_1 BINDTYPE op TYPE lshr IMPL auto_pipe LATENCY 1}
      {MODELNAME Filter2d_accel_shl_8ns_3ns_8_2_1 RTLNAME Filter2d_accel_shl_8ns_3ns_8_2_1 BINDTYPE op TYPE shl IMPL auto_pipe LATENCY 1}
    }
  }
  {SRCNAME AxiStream2MatStream<2> MODELNAME AxiStream2MatStream_2_s RTLNAME Filter2d_accel_AxiStream2MatStream_2_s
    SUBMODULES {
      {MODELNAME Filter2d_accel_mul_32s_32s_32_5_1 RTLNAME Filter2d_accel_mul_32s_32s_32_5_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME AxiStream2Mat MODELNAME AxiStream2Mat RTLNAME Filter2d_accel_AxiStream2Mat
    SUBMODULES {
      {MODELNAME Filter2d_accel_fifo_w32_d3_S RTLNAME Filter2d_accel_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME Filter2d_accel_fifo_w32_d3_S RTLNAME Filter2d_accel_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME Filter2d_accel_fifo_w4_d2_S RTLNAME Filter2d_accel_fifo_w4_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last_blk_width_channel_U}
    }
  }
  {SRCNAME Axi2Mat MODELNAME Axi2Mat RTLNAME Filter2d_accel_Axi2Mat
    SUBMODULES {
      {MODELNAME Filter2d_accel_fifo_w8_d2_S RTLNAME Filter2d_accel_fifo_w8_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ldata_U}
      {MODELNAME Filter2d_accel_fifo_w32_d2_S RTLNAME Filter2d_accel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME Filter2d_accel_fifo_w32_d2_S RTLNAME Filter2d_accel_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME Filter2d_accel_start_for_AxiStream2Mat_U0 RTLNAME Filter2d_accel_start_for_AxiStream2Mat_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_AxiStream2Mat_U0_U}
    }
  }
  {SRCNAME {Array2xfMat<8, 0, 128, 128, 1, 2>} MODELNAME Array2xfMat_8_0_128_128_1_2_s RTLNAME Filter2d_accel_Array2xfMat_8_0_128_128_1_2_s}
  {SRCNAME filter2D_Pipeline_VITIS_LOOP_834_1_VITIS_LOOP_835_2 MODELNAME filter2D_Pipeline_VITIS_LOOP_834_1_VITIS_LOOP_835_2 RTLNAME Filter2d_accel_filter2D_Pipeline_VITIS_LOOP_834_1_VITIS_LOOP_835_2}
  {SRCNAME {xFApplyFilter2D<0, 0, 3, 3, 1>} MODELNAME xFApplyFilter2D_0_0_3_3_1_s RTLNAME Filter2d_accel_xFApplyFilter2D_0_0_3_3_1_s
    SUBMODULES {
      {MODELNAME Filter2d_accel_mul_16s_8ns_24_4_0 RTLNAME Filter2d_accel_mul_16s_8ns_24_4_0 BINDTYPE op TYPE mul IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Filter2d_accel_ashr_32s_8ns_32_7_0 RTLNAME Filter2d_accel_ashr_32s_8ns_32_7_0 BINDTYPE op TYPE ashr IMPL auto_pipe LATENCY 6}
      {MODELNAME Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0 RTLNAME Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Filter2d_accel_mac_muladd_16s_8ns_25s_26_4_0 RTLNAME Filter2d_accel_mac_muladd_16s_8ns_25s_26_4_0 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Filter2d_accel_mac_muladd_16s_8ns_26s_27_4_0 RTLNAME Filter2d_accel_mac_muladd_16s_8ns_26s_27_4_0 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME Filter2d_accel_mac_muladd_16s_8ns_27s_28_4_0 RTLNAME Filter2d_accel_mac_muladd_16s_8ns_27s_28_4_0 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME xFFilter2Dkernel_Pipeline_COL_LOOP MODELNAME xFFilter2Dkernel_Pipeline_COL_LOOP RTLNAME Filter2d_accel_xFFilter2Dkernel_Pipeline_COL_LOOP
    SUBMODULES {
      {MODELNAME Filter2d_accel_sparsemux_7_2_8_1_1 RTLNAME Filter2d_accel_sparsemux_7_2_8_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME Filter2d_accel_xFFilter2Dkernel_Pipeline_COL_LOOP_k_buf_RAM_AUTO_2R1W RTLNAME Filter2d_accel_xFFilter2Dkernel_Pipeline_COL_LOOP_k_buf_RAM_AUTO_2R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {xFFilter2Dkernel<0, 0, 128, 128, 0, 0, 1, 2, 2, 1, 1, 128, 3, 3, 1>} MODELNAME xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s RTLNAME Filter2d_accel_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s}
  {SRCNAME {filter2D<0, 3, 3, 0, 0, 128, 128, 1, 2, 2>} MODELNAME filter2D_0_3_3_0_0_128_128_1_2_2_s RTLNAME Filter2d_accel_filter2D_0_3_3_0_0_128_128_1_2_2_s}
  {SRCNAME entry_proc6 MODELNAME entry_proc6 RTLNAME Filter2d_accel_entry_proc6}
  {SRCNAME addrbound MODELNAME addrbound RTLNAME Filter2d_accel_addrbound}
  {SRCNAME Mat2Axi_Block_entry24_proc MODELNAME Mat2Axi_Block_entry24_proc RTLNAME Filter2d_accel_Mat2Axi_Block_entry24_proc}
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME Filter2d_accel_entry_proc}
  {SRCNAME last_blk_pxl_width.1 MODELNAME last_blk_pxl_width_1 RTLNAME Filter2d_accel_last_blk_pxl_width_1}
  {SRCNAME MatStream2AxiStream<2>_Pipeline_MMIterOutRow_MMIterOutCol MODELNAME MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol RTLNAME Filter2d_accel_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol
    SUBMODULES {
      {MODELNAME Filter2d_accel_shl_8ns_4ns_8_2_1 RTLNAME Filter2d_accel_shl_8ns_4ns_8_2_1 BINDTYPE op TYPE shl IMPL auto_pipe LATENCY 1}
      {MODELNAME Filter2d_accel_lshr_8ns_8ns_8_2_1 RTLNAME Filter2d_accel_lshr_8ns_8ns_8_2_1 BINDTYPE op TYPE lshr IMPL auto_pipe LATENCY 1}
    }
  }
  {SRCNAME MatStream2AxiStream<2> MODELNAME MatStream2AxiStream_2_s RTLNAME Filter2d_accel_MatStream2AxiStream_2_s
    SUBMODULES {
      {MODELNAME Filter2d_accel_mul_16ns_16ns_32_4_1 RTLNAME Filter2d_accel_mul_16ns_16ns_32_4_1 BINDTYPE op TYPE mul IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Mat2AxiStream MODELNAME Mat2AxiStream RTLNAME Filter2d_accel_Mat2AxiStream
    SUBMODULES {
      {MODELNAME Filter2d_accel_fifo_w16_d3_S RTLNAME Filter2d_accel_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME rows_c_U}
      {MODELNAME Filter2d_accel_fifo_w32_d3_S_x RTLNAME Filter2d_accel_fifo_w32_d3_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cols_c_U}
      {MODELNAME Filter2d_accel_fifo_w4_d2_S_x RTLNAME Filter2d_accel_fifo_w4_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME last_blk_width_channel_U}
    }
  }
  {SRCNAME AxiStream2Axi_Pipeline_MMIterOutLoop2 MODELNAME AxiStream2Axi_Pipeline_MMIterOutLoop2 RTLNAME Filter2d_accel_AxiStream2Axi_Pipeline_MMIterOutLoop2}
  {SRCNAME AxiStream2Axi MODELNAME AxiStream2Axi RTLNAME Filter2d_accel_AxiStream2Axi}
  {SRCNAME Mat2Axi MODELNAME Mat2Axi RTLNAME Filter2d_accel_Mat2Axi
    SUBMODULES {
      {MODELNAME Filter2d_accel_fifo_w64_d4_S RTLNAME Filter2d_accel_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME dout_c_U}
      {MODELNAME Filter2d_accel_fifo_w15_d2_S RTLNAME Filter2d_accel_fifo_w15_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_channel_U}
      {MODELNAME Filter2d_accel_fifo_w15_d2_S RTLNAME Filter2d_accel_fifo_w15_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME axibound_U}
      {MODELNAME Filter2d_accel_fifo_w8_d2_S_x RTLNAME Filter2d_accel_fifo_w8_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME ldata_U}
    }
  }
  {SRCNAME {xfMat2Array<8, 0, 128, 128, 1, 2, 1>} MODELNAME xfMat2Array_8_0_128_128_1_2_1_s RTLNAME Filter2d_accel_xfMat2Array_8_0_128_128_1_2_1_s}
  {SRCNAME pool_gpt_Pipeline_VITIS_LOOP_9_1_VITIS_LOOP_10_2 MODELNAME pool_gpt_Pipeline_VITIS_LOOP_9_1_VITIS_LOOP_10_2 RTLNAME Filter2d_accel_pool_gpt_Pipeline_VITIS_LOOP_9_1_VITIS_LOOP_10_2
    SUBMODULES {
      {MODELNAME Filter2d_accel_add_64ns_64ns_64_2_1 RTLNAME Filter2d_accel_add_64ns_64ns_64_2_1 BINDTYPE op TYPE add IMPL fabric LATENCY 1}
    }
  }
  {SRCNAME pool_gpt MODELNAME pool_gpt RTLNAME Filter2d_accel_pool_gpt}
  {SRCNAME Filter2d_accel MODELNAME Filter2d_accel RTLNAME Filter2d_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME Filter2d_accel_fifo_w64_d5_S RTLNAME Filter2d_accel_fifo_w64_d5_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME conv_out_c11_U}
      {MODELNAME Filter2d_accel_fifo_w64_d6_S RTLNAME Filter2d_accel_fifo_w64_d6_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME maxpool_out_c_U}
      {MODELNAME Filter2d_accel_fifo_w32_d4_S RTLNAME Filter2d_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgOutput_rows_channel_U}
      {MODELNAME Filter2d_accel_fifo_w32_d4_S RTLNAME Filter2d_accel_fifo_w32_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgOutput_cols_channel_U}
      {MODELNAME Filter2d_accel_fifo_w32_d2_S_x RTLNAME Filter2d_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput_rows_c12_channel_U}
      {MODELNAME Filter2d_accel_fifo_w32_d2_S_x RTLNAME Filter2d_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput_cols_c13_channel_U}
      {MODELNAME Filter2d_accel_fifo_w8_d2_S_x0 RTLNAME Filter2d_accel_fifo_w8_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput_data_U}
      {MODELNAME Filter2d_accel_fifo_w32_d2_S_x RTLNAME Filter2d_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput_rows_c_U}
      {MODELNAME Filter2d_accel_fifo_w32_d2_S_x RTLNAME Filter2d_accel_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgInput_cols_c_U}
      {MODELNAME Filter2d_accel_fifo_w8_d2_S_x0 RTLNAME Filter2d_accel_fifo_w8_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME imgOutput_data_U}
      {MODELNAME Filter2d_accel_fifo_w64_d2_S RTLNAME Filter2d_accel_fifo_w64_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME conv_out_c_U}
      {MODELNAME Filter2d_accel_gmem0_m_axi RTLNAME Filter2d_accel_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME Filter2d_accel_gmem1_m_axi RTLNAME Filter2d_accel_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME Filter2d_accel_gmem2_m_axi RTLNAME Filter2d_accel_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME Filter2d_accel_gmem3_m_axi RTLNAME Filter2d_accel_gmem3_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME Filter2d_accel_control_s_axi RTLNAME Filter2d_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME Filter2d_accel_control_r_s_axi RTLNAME Filter2d_accel_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
