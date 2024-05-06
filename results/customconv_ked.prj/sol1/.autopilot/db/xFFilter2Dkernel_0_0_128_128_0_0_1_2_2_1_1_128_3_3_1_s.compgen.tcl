# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
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
    id 154 \
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
    id 155 \
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
    id 156 \
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
    id 157 \
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
    id 158 \
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
    id 159 \
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
    id 160 \
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
    id 161 \
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
    id 162 \
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
    id 163 \
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
    id 164 \
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
    id 165 \
    name rows \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rows \
    op interface \
    ports { rows { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name cols \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cols \
    op interface \
    ports { cols { I 16 vector } } \
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


