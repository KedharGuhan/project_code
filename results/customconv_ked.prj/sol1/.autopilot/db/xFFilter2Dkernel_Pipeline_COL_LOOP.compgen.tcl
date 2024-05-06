# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler Filter2d_accel_sparsemux_7_2_8_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler Filter2d_accel_xFFilter2Dkernel_Pipeline_COL_LOOP_k_buf_RAM_AUTO_2R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 3 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name src_kernel_win_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_kernel_win_5 \
    op interface \
    ports { src_kernel_win_5 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name src_kernel_win_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_kernel_win_3 \
    op interface \
    ports { src_kernel_win_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name src_kernel_win \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_src_kernel_win \
    op interface \
    ports { src_kernel_win { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name widthloop \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_widthloop \
    op interface \
    ports { widthloop { I 17 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name cmp204 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp204 \
    op interface \
    ports { cmp204 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name imgInput_data \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imgInput_data \
    op interface \
    ports { imgInput_data_dout { I 8 vector } imgInput_data_num_data_valid { I 3 vector } imgInput_data_fifo_cap { I 3 vector } imgInput_data_empty_n { I 1 bit } imgInput_data_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name zext_ln696 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln696 \
    op interface \
    ports { zext_ln696 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name brmerge30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_brmerge30 \
    op interface \
    ports { brmerge30 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name locy \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_locy \
    op interface \
    ports { locy { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name cmp1_i18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp1_i18 \
    op interface \
    ports { cmp1_i18 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name cmp179_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp179_1 \
    op interface \
    ports { cmp179_1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name empty_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_26 \
    op interface \
    ports { empty_26 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name locy_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_locy_1 \
    op interface \
    ports { locy_1 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name empty_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_27 \
    op interface \
    ports { empty_27 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name locy_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_locy_2 \
    op interface \
    ports { locy_2 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name p_filter_kernel_0_0_val1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_filter_kernel_0_0_val1 \
    op interface \
    ports { p_filter_kernel_0_0_val1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name p_filter_kernel_0_1_val2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_filter_kernel_0_1_val2 \
    op interface \
    ports { p_filter_kernel_0_1_val2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name p_filter_kernel_0_2_val3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_filter_kernel_0_2_val3 \
    op interface \
    ports { p_filter_kernel_0_2_val3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name p_filter_kernel_1_0_val4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_filter_kernel_1_0_val4 \
    op interface \
    ports { p_filter_kernel_1_0_val4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name p_filter_kernel_1_1_val5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_filter_kernel_1_1_val5 \
    op interface \
    ports { p_filter_kernel_1_1_val5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name p_filter_kernel_1_2_val6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_filter_kernel_1_2_val6 \
    op interface \
    ports { p_filter_kernel_1_2_val6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name p_filter_kernel_2_0_val7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_filter_kernel_2_0_val7 \
    op interface \
    ports { p_filter_kernel_2_0_val7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name p_filter_kernel_2_1_val8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_filter_kernel_2_1_val8 \
    op interface \
    ports { p_filter_kernel_2_1_val8 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name p_filter_kernel_2_2_val9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_filter_kernel_2_2_val9 \
    op interface \
    ports { p_filter_kernel_2_2_val9 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name shift \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_shift \
    op interface \
    ports { shift { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name imgOutput_data \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_imgOutput_data \
    op interface \
    ports { imgOutput_data_din { O 8 vector } imgOutput_data_num_data_valid { I 3 vector } imgOutput_data_fifo_cap { I 3 vector } imgOutput_data_full_n { I 1 bit } imgOutput_data_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name src_kernel_win_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_kernel_win_11_out \
    op interface \
    ports { src_kernel_win_11_out { O 8 vector } src_kernel_win_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name src_kernel_win_10_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_src_kernel_win_10_out \
    op interface \
    ports { src_kernel_win_10_out_i { I 8 vector } src_kernel_win_10_out_o { O 8 vector } src_kernel_win_10_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name src_kernel_win_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_kernel_win_9_out \
    op interface \
    ports { src_kernel_win_9_out { O 8 vector } src_kernel_win_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name src_kernel_win_8_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_src_kernel_win_8_out \
    op interface \
    ports { src_kernel_win_8_out_i { I 8 vector } src_kernel_win_8_out_o { O 8 vector } src_kernel_win_8_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name src_kernel_win_7_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_src_kernel_win_7_out \
    op interface \
    ports { src_kernel_win_7_out_i { I 8 vector } src_kernel_win_7_out_o { O 8 vector } src_kernel_win_7_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name src_kernel_win_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_src_kernel_win_6_out \
    op interface \
    ports { src_kernel_win_6_out { O 8 vector } src_kernel_win_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName Filter2d_accel_flow_control_loop_pipe_sequential_init_U
set CompName Filter2d_accel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix Filter2d_accel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


