// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module Filter2d_accel_xFApplyFilter2D_0_0_3_3_1_s (
        ap_clk,
        ap_rst,
        p_kernel_pixel_0_0_val,
        p_kernel_pixel_0_1_val,
        p_kernel_pixel_0_2_val,
        p_kernel_pixel_1_0_val,
        p_kernel_pixel_1_1_val,
        p_kernel_pixel_1_2_val,
        p_kernel_pixel_2_0_val,
        p_kernel_pixel_2_1_val,
        p_kernel_pixel_2_2_val,
        p_kernel_filter_0_0_val,
        p_kernel_filter_0_1_val,
        p_kernel_filter_0_2_val,
        p_kernel_filter_1_0_val,
        p_kernel_filter_1_1_val,
        p_kernel_filter_1_2_val,
        p_kernel_filter_2_0_val,
        p_kernel_filter_2_1_val,
        p_kernel_filter_2_2_val,
        shift,
        ap_return,
        ap_ce
);


input   ap_clk;
input   ap_rst;
input  [7:0] p_kernel_pixel_0_0_val;
input  [7:0] p_kernel_pixel_0_1_val;
input  [7:0] p_kernel_pixel_0_2_val;
input  [7:0] p_kernel_pixel_1_0_val;
input  [7:0] p_kernel_pixel_1_1_val;
input  [7:0] p_kernel_pixel_1_2_val;
input  [7:0] p_kernel_pixel_2_0_val;
input  [7:0] p_kernel_pixel_2_1_val;
input  [7:0] p_kernel_pixel_2_2_val;
input  [15:0] p_kernel_filter_0_0_val;
input  [15:0] p_kernel_filter_0_1_val;
input  [15:0] p_kernel_filter_0_2_val;
input  [15:0] p_kernel_filter_1_0_val;
input  [15:0] p_kernel_filter_1_1_val;
input  [15:0] p_kernel_filter_1_2_val;
input  [15:0] p_kernel_filter_2_0_val;
input  [15:0] p_kernel_filter_2_1_val;
input  [15:0] p_kernel_filter_2_2_val;
input  [7:0] shift;
output  [7:0] ap_return;
input   ap_ce;

reg[7:0] ap_return;

reg   [7:0] shift_read_reg_393;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] shift_read_reg_393_pp0_iter1_reg;
reg   [7:0] shift_read_reg_393_pp0_iter2_reg;
reg   [7:0] shift_read_reg_393_pp0_iter3_reg;
reg   [7:0] shift_read_reg_393_pp0_iter4_reg;
reg   [7:0] shift_read_reg_393_pp0_iter5_reg;
reg   [7:0] shift_read_reg_393_pp0_iter6_reg;
reg   [7:0] shift_read_reg_393_pp0_iter7_reg;
reg   [7:0] shift_read_reg_393_pp0_iter8_reg;
reg   [7:0] shift_read_reg_393_pp0_iter9_reg;
reg   [7:0] shift_read_reg_393_pp0_iter10_reg;
reg   [7:0] shift_read_reg_393_pp0_iter11_reg;
reg   [15:0] p_kernel_filter_2_2_val_read_reg_398;
reg   [15:0] p_kernel_filter_2_2_val_read_reg_398_pp0_iter1_reg;
reg   [15:0] p_kernel_filter_2_2_val_read_reg_398_pp0_iter2_reg;
reg   [15:0] p_kernel_filter_2_2_val_read_reg_398_pp0_iter3_reg;
reg   [15:0] p_kernel_filter_2_2_val_read_reg_398_pp0_iter4_reg;
reg   [15:0] p_kernel_filter_2_2_val_read_reg_398_pp0_iter5_reg;
reg   [15:0] p_kernel_filter_2_2_val_read_reg_398_pp0_iter6_reg;
reg  signed [15:0] p_kernel_filter_2_2_val_read_reg_398_pp0_iter7_reg;
reg   [15:0] p_kernel_filter_2_1_val_read_reg_403;
reg  signed [15:0] p_kernel_filter_2_1_val_read_reg_403_pp0_iter1_reg;
reg   [15:0] p_kernel_filter_1_2_val_read_reg_408;
reg   [15:0] p_kernel_filter_1_2_val_read_reg_408_pp0_iter1_reg;
reg   [15:0] p_kernel_filter_1_2_val_read_reg_408_pp0_iter2_reg;
reg  signed [15:0] p_kernel_filter_1_2_val_read_reg_408_pp0_iter3_reg;
reg   [15:0] p_kernel_filter_1_1_val_read_reg_413;
reg   [15:0] p_kernel_filter_1_1_val_read_reg_413_pp0_iter1_reg;
reg   [15:0] p_kernel_filter_1_1_val_read_reg_413_pp0_iter2_reg;
reg   [15:0] p_kernel_filter_1_1_val_read_reg_413_pp0_iter3_reg;
reg  signed [15:0] p_kernel_filter_1_1_val_read_reg_413_pp0_iter4_reg;
reg   [15:0] p_kernel_filter_1_0_val_read_reg_418;
reg  signed [15:0] p_kernel_filter_1_0_val_read_reg_418_pp0_iter1_reg;
reg   [15:0] p_kernel_filter_0_0_val_read_reg_423;
reg  signed [15:0] p_kernel_filter_0_0_val_read_reg_423_pp0_iter1_reg;
reg   [7:0] p_kernel_pixel_2_2_val_read_reg_428;
reg   [7:0] p_kernel_pixel_2_2_val_read_reg_428_pp0_iter1_reg;
reg   [7:0] p_kernel_pixel_1_2_val_read_reg_433;
reg   [7:0] p_kernel_pixel_1_2_val_read_reg_433_pp0_iter1_reg;
reg   [7:0] p_kernel_pixel_1_1_val_read_reg_438;
reg   [7:0] p_kernel_pixel_1_1_val_read_reg_438_pp0_iter1_reg;
reg   [7:0] p_kernel_pixel_1_1_val_read_reg_438_pp0_iter2_reg;
reg   [7:0] p_kernel_pixel_1_1_val_read_reg_438_pp0_iter3_reg;
reg   [7:0] p_kernel_pixel_1_1_val_read_reg_438_pp0_iter4_reg;
reg   [7:0] p_kernel_pixel_1_0_val_read_reg_443;
reg   [7:0] p_kernel_pixel_1_0_val_read_reg_443_pp0_iter1_reg;
reg   [7:0] p_kernel_pixel_1_0_val_read_reg_443_pp0_iter2_reg;
reg   [7:0] p_kernel_pixel_1_0_val_read_reg_443_pp0_iter3_reg;
reg   [7:0] p_kernel_pixel_0_1_val_read_reg_448;
reg   [7:0] p_kernel_pixel_0_1_val_read_reg_448_pp0_iter1_reg;
reg   [7:0] p_kernel_pixel_0_0_val_read_reg_453;
reg   [7:0] p_kernel_pixel_0_0_val_read_reg_453_pp0_iter1_reg;
reg   [7:0] p_kernel_pixel_0_0_val_read_reg_453_pp0_iter2_reg;
reg   [7:0] p_kernel_pixel_0_0_val_read_reg_453_pp0_iter3_reg;
reg   [7:0] p_kernel_pixel_0_0_val_read_reg_453_pp0_iter4_reg;
reg   [7:0] p_kernel_pixel_0_0_val_read_reg_453_pp0_iter5_reg;
reg   [7:0] p_kernel_pixel_0_0_val_read_reg_453_pp0_iter6_reg;
reg   [7:0] p_kernel_pixel_0_0_val_read_reg_453_pp0_iter7_reg;
wire   [23:0] grp_fu_178_p2;
reg  signed [23:0] temp_reg_518;
wire   [23:0] grp_fu_192_p2;
reg  signed [23:0] temp_3_reg_523;
wire   [23:0] grp_fu_206_p2;
reg  signed [23:0] temp_7_reg_528;
wire  signed [24:0] grp_fu_345_p3;
reg  signed [24:0] sum_1_reg_558;
wire  signed [24:0] grp_fu_353_p3;
reg  signed [24:0] add_ln607_reg_563;
wire  signed [24:0] grp_fu_361_p3;
reg  signed [24:0] add_ln607_3_reg_578;
wire   [25:0] sum_2_fu_257_p2;
reg  signed [25:0] sum_2_reg_583;
wire  signed [25:0] grp_fu_369_p3;
reg  signed [25:0] add_ln607_4_reg_598;
reg  signed [25:0] add_ln607_4_reg_598_pp0_iter8_reg;
wire  signed [26:0] grp_fu_377_p3;
reg  signed [26:0] add_ln607_2_reg_603;
(* use_dsp48 = "no" *) wire   [26:0] sum_3_fu_278_p2;
reg  signed [26:0] sum_3_reg_618;
wire  signed [27:0] grp_fu_385_p3;
reg  signed [27:0] sum_4_reg_628;
wire   [31:0] grp_fu_292_p2;
reg   [31:0] tmp_sum_reg_643;
reg   [19:0] tmp_reg_649;
wire    ap_block_pp0_stage0;
wire   [7:0] grp_fu_178_p1;
wire   [7:0] grp_fu_192_p1;
wire   [7:0] grp_fu_206_p1;
wire  signed [25:0] sext_ln607_fu_254_p1;
wire  signed [25:0] sext_ln583_fu_251_p1;
wire  signed [26:0] sext_ln607_2_fu_275_p1;
wire  signed [31:0] grp_fu_292_p0;
wire   [31:0] grp_fu_292_p1;
wire   [0:0] icmp_ln614_fu_308_p2;
wire   [0:0] tmp_8_fu_313_p3;
wire   [0:0] or_ln614_fu_331_p2;
wire   [7:0] select_ln614_1_fu_323_p3;
wire   [7:0] trunc_ln619_fu_320_p1;
wire   [7:0] grp_fu_345_p1;
wire   [7:0] grp_fu_353_p1;
wire   [7:0] grp_fu_361_p1;
wire   [7:0] grp_fu_369_p1;
wire   [7:0] grp_fu_377_p1;
wire   [7:0] grp_fu_385_p1;
reg    grp_fu_178_ce;
reg    grp_fu_192_ce;
reg    grp_fu_206_ce;
reg    grp_fu_292_ce;
wire   [7:0] select_ln614_fu_337_p3;
reg    grp_fu_345_ce;
reg    grp_fu_353_ce;
reg    grp_fu_361_ce;
reg    grp_fu_369_ce;
reg    grp_fu_377_ce;
reg    grp_fu_385_ce;
reg    ap_ce_reg;
reg   [7:0] p_kernel_pixel_0_0_val_int_reg;
reg   [7:0] p_kernel_pixel_0_1_val_int_reg;
reg   [7:0] p_kernel_pixel_0_2_val_int_reg;
reg   [7:0] p_kernel_pixel_1_0_val_int_reg;
reg   [7:0] p_kernel_pixel_1_1_val_int_reg;
reg   [7:0] p_kernel_pixel_1_2_val_int_reg;
reg   [7:0] p_kernel_pixel_2_0_val_int_reg;
reg   [7:0] p_kernel_pixel_2_1_val_int_reg;
reg   [7:0] p_kernel_pixel_2_2_val_int_reg;
reg   [15:0] p_kernel_filter_0_0_val_int_reg;
reg  signed [15:0] p_kernel_filter_0_1_val_int_reg;
reg  signed [15:0] p_kernel_filter_0_2_val_int_reg;
reg   [15:0] p_kernel_filter_1_0_val_int_reg;
reg   [15:0] p_kernel_filter_1_1_val_int_reg;
reg   [15:0] p_kernel_filter_1_2_val_int_reg;
reg  signed [15:0] p_kernel_filter_2_0_val_int_reg;
reg   [15:0] p_kernel_filter_2_1_val_int_reg;
reg   [15:0] p_kernel_filter_2_2_val_int_reg;
reg   [7:0] shift_int_reg;
reg   [7:0] ap_return_int_reg;
wire   [23:0] grp_fu_178_p10;
wire   [23:0] grp_fu_192_p10;
wire   [23:0] grp_fu_206_p10;
wire   [23:0] grp_fu_345_p10;
wire   [23:0] grp_fu_353_p10;
wire   [23:0] grp_fu_361_p10;
wire   [23:0] grp_fu_369_p10;
wire   [23:0] grp_fu_377_p10;
wire   [23:0] grp_fu_385_p10;

Filter2d_accel_mul_16s_8ns_24_4_0 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 24 ))
mul_16s_8ns_24_4_0_U80(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_kernel_filter_0_1_val_int_reg),
    .din1(grp_fu_178_p1),
    .ce(grp_fu_178_ce),
    .dout(grp_fu_178_p2)
);

Filter2d_accel_mul_16s_8ns_24_4_0 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 24 ))
mul_16s_8ns_24_4_0_U81(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_kernel_filter_0_2_val_int_reg),
    .din1(grp_fu_192_p1),
    .ce(grp_fu_192_ce),
    .dout(grp_fu_192_p2)
);

Filter2d_accel_mul_16s_8ns_24_4_0 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 24 ))
mul_16s_8ns_24_4_0_U82(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_kernel_filter_2_0_val_int_reg),
    .din1(grp_fu_206_p1),
    .ce(grp_fu_206_ce),
    .dout(grp_fu_206_p2)
);

Filter2d_accel_ashr_32s_8ns_32_7_0 #(
    .ID( 1 ),
    .NUM_STAGE( 7 ),
    .OP( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 32 ))
ashr_32s_8ns_32_7_0_U83(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_292_p0),
    .din1(grp_fu_292_p1),
    .ce(grp_fu_292_ce),
    .dout(grp_fu_292_p2)
);

Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 24 ),
    .dout_WIDTH( 25 ))
mac_muladd_16s_8ns_24s_25_4_0_U84(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_kernel_filter_0_0_val_read_reg_423_pp0_iter1_reg),
    .din1(grp_fu_345_p1),
    .din2(temp_reg_518),
    .ce(grp_fu_345_ce),
    .dout(grp_fu_345_p3)
);

Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 24 ),
    .dout_WIDTH( 25 ))
mac_muladd_16s_8ns_24s_25_4_0_U85(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_kernel_filter_1_0_val_read_reg_418_pp0_iter1_reg),
    .din1(grp_fu_353_p1),
    .din2(temp_3_reg_523),
    .ce(grp_fu_353_ce),
    .dout(grp_fu_353_p3)
);

Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 24 ),
    .dout_WIDTH( 25 ))
mac_muladd_16s_8ns_24s_25_4_0_U86(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_kernel_filter_2_1_val_read_reg_403_pp0_iter1_reg),
    .din1(grp_fu_361_p1),
    .din2(temp_7_reg_528),
    .ce(grp_fu_361_ce),
    .dout(grp_fu_361_p3)
);

Filter2d_accel_mac_muladd_16s_8ns_25s_26_4_0 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 25 ),
    .dout_WIDTH( 26 ))
mac_muladd_16s_8ns_25s_26_4_0_U87(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_kernel_filter_1_2_val_read_reg_408_pp0_iter3_reg),
    .din1(grp_fu_369_p1),
    .din2(add_ln607_3_reg_578),
    .ce(grp_fu_369_ce),
    .dout(grp_fu_369_p3)
);

Filter2d_accel_mac_muladd_16s_8ns_26s_27_4_0 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 26 ),
    .dout_WIDTH( 27 ))
mac_muladd_16s_8ns_26s_27_4_0_U88(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_kernel_filter_1_1_val_read_reg_413_pp0_iter4_reg),
    .din1(grp_fu_377_p1),
    .din2(sum_2_reg_583),
    .ce(grp_fu_377_ce),
    .dout(grp_fu_377_p3)
);

Filter2d_accel_mac_muladd_16s_8ns_27s_28_4_0 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 27 ),
    .dout_WIDTH( 28 ))
mac_muladd_16s_8ns_27s_28_4_0_U89(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_kernel_filter_2_2_val_read_reg_398_pp0_iter7_reg),
    .din1(grp_fu_385_p1),
    .din2(sum_3_reg_618),
    .ce(grp_fu_385_ce),
    .dout(grp_fu_385_p3)
);

always @ (posedge ap_clk) begin
    ap_ce_reg <= ap_ce;
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        add_ln607_2_reg_603 <= grp_fu_377_p3;
        add_ln607_3_reg_578 <= grp_fu_361_p3;
        add_ln607_4_reg_598 <= grp_fu_369_p3;
        add_ln607_4_reg_598_pp0_iter8_reg <= add_ln607_4_reg_598;
        add_ln607_reg_563 <= grp_fu_353_p3;
        p_kernel_filter_0_0_val_read_reg_423 <= p_kernel_filter_0_0_val_int_reg;
        p_kernel_filter_0_0_val_read_reg_423_pp0_iter1_reg <= p_kernel_filter_0_0_val_read_reg_423;
        p_kernel_filter_1_0_val_read_reg_418 <= p_kernel_filter_1_0_val_int_reg;
        p_kernel_filter_1_0_val_read_reg_418_pp0_iter1_reg <= p_kernel_filter_1_0_val_read_reg_418;
        p_kernel_filter_1_1_val_read_reg_413 <= p_kernel_filter_1_1_val_int_reg;
        p_kernel_filter_1_1_val_read_reg_413_pp0_iter1_reg <= p_kernel_filter_1_1_val_read_reg_413;
        p_kernel_filter_1_1_val_read_reg_413_pp0_iter2_reg <= p_kernel_filter_1_1_val_read_reg_413_pp0_iter1_reg;
        p_kernel_filter_1_1_val_read_reg_413_pp0_iter3_reg <= p_kernel_filter_1_1_val_read_reg_413_pp0_iter2_reg;
        p_kernel_filter_1_1_val_read_reg_413_pp0_iter4_reg <= p_kernel_filter_1_1_val_read_reg_413_pp0_iter3_reg;
        p_kernel_filter_1_2_val_read_reg_408 <= p_kernel_filter_1_2_val_int_reg;
        p_kernel_filter_1_2_val_read_reg_408_pp0_iter1_reg <= p_kernel_filter_1_2_val_read_reg_408;
        p_kernel_filter_1_2_val_read_reg_408_pp0_iter2_reg <= p_kernel_filter_1_2_val_read_reg_408_pp0_iter1_reg;
        p_kernel_filter_1_2_val_read_reg_408_pp0_iter3_reg <= p_kernel_filter_1_2_val_read_reg_408_pp0_iter2_reg;
        p_kernel_filter_2_1_val_read_reg_403 <= p_kernel_filter_2_1_val_int_reg;
        p_kernel_filter_2_1_val_read_reg_403_pp0_iter1_reg <= p_kernel_filter_2_1_val_read_reg_403;
        p_kernel_filter_2_2_val_read_reg_398 <= p_kernel_filter_2_2_val_int_reg;
        p_kernel_filter_2_2_val_read_reg_398_pp0_iter1_reg <= p_kernel_filter_2_2_val_read_reg_398;
        p_kernel_filter_2_2_val_read_reg_398_pp0_iter2_reg <= p_kernel_filter_2_2_val_read_reg_398_pp0_iter1_reg;
        p_kernel_filter_2_2_val_read_reg_398_pp0_iter3_reg <= p_kernel_filter_2_2_val_read_reg_398_pp0_iter2_reg;
        p_kernel_filter_2_2_val_read_reg_398_pp0_iter4_reg <= p_kernel_filter_2_2_val_read_reg_398_pp0_iter3_reg;
        p_kernel_filter_2_2_val_read_reg_398_pp0_iter5_reg <= p_kernel_filter_2_2_val_read_reg_398_pp0_iter4_reg;
        p_kernel_filter_2_2_val_read_reg_398_pp0_iter6_reg <= p_kernel_filter_2_2_val_read_reg_398_pp0_iter5_reg;
        p_kernel_filter_2_2_val_read_reg_398_pp0_iter7_reg <= p_kernel_filter_2_2_val_read_reg_398_pp0_iter6_reg;
        p_kernel_pixel_0_0_val_read_reg_453 <= p_kernel_pixel_0_0_val_int_reg;
        p_kernel_pixel_0_0_val_read_reg_453_pp0_iter1_reg <= p_kernel_pixel_0_0_val_read_reg_453;
        p_kernel_pixel_0_0_val_read_reg_453_pp0_iter2_reg <= p_kernel_pixel_0_0_val_read_reg_453_pp0_iter1_reg;
        p_kernel_pixel_0_0_val_read_reg_453_pp0_iter3_reg <= p_kernel_pixel_0_0_val_read_reg_453_pp0_iter2_reg;
        p_kernel_pixel_0_0_val_read_reg_453_pp0_iter4_reg <= p_kernel_pixel_0_0_val_read_reg_453_pp0_iter3_reg;
        p_kernel_pixel_0_0_val_read_reg_453_pp0_iter5_reg <= p_kernel_pixel_0_0_val_read_reg_453_pp0_iter4_reg;
        p_kernel_pixel_0_0_val_read_reg_453_pp0_iter6_reg <= p_kernel_pixel_0_0_val_read_reg_453_pp0_iter5_reg;
        p_kernel_pixel_0_0_val_read_reg_453_pp0_iter7_reg <= p_kernel_pixel_0_0_val_read_reg_453_pp0_iter6_reg;
        p_kernel_pixel_0_1_val_read_reg_448 <= p_kernel_pixel_0_1_val_int_reg;
        p_kernel_pixel_0_1_val_read_reg_448_pp0_iter1_reg <= p_kernel_pixel_0_1_val_read_reg_448;
        p_kernel_pixel_1_0_val_read_reg_443 <= p_kernel_pixel_1_0_val_int_reg;
        p_kernel_pixel_1_0_val_read_reg_443_pp0_iter1_reg <= p_kernel_pixel_1_0_val_read_reg_443;
        p_kernel_pixel_1_0_val_read_reg_443_pp0_iter2_reg <= p_kernel_pixel_1_0_val_read_reg_443_pp0_iter1_reg;
        p_kernel_pixel_1_0_val_read_reg_443_pp0_iter3_reg <= p_kernel_pixel_1_0_val_read_reg_443_pp0_iter2_reg;
        p_kernel_pixel_1_1_val_read_reg_438 <= p_kernel_pixel_1_1_val_int_reg;
        p_kernel_pixel_1_1_val_read_reg_438_pp0_iter1_reg <= p_kernel_pixel_1_1_val_read_reg_438;
        p_kernel_pixel_1_1_val_read_reg_438_pp0_iter2_reg <= p_kernel_pixel_1_1_val_read_reg_438_pp0_iter1_reg;
        p_kernel_pixel_1_1_val_read_reg_438_pp0_iter3_reg <= p_kernel_pixel_1_1_val_read_reg_438_pp0_iter2_reg;
        p_kernel_pixel_1_1_val_read_reg_438_pp0_iter4_reg <= p_kernel_pixel_1_1_val_read_reg_438_pp0_iter3_reg;
        p_kernel_pixel_1_2_val_read_reg_433 <= p_kernel_pixel_1_2_val_int_reg;
        p_kernel_pixel_1_2_val_read_reg_433_pp0_iter1_reg <= p_kernel_pixel_1_2_val_read_reg_433;
        p_kernel_pixel_2_2_val_read_reg_428 <= p_kernel_pixel_2_2_val_int_reg;
        p_kernel_pixel_2_2_val_read_reg_428_pp0_iter1_reg <= p_kernel_pixel_2_2_val_read_reg_428;
        shift_read_reg_393 <= shift_int_reg;
        shift_read_reg_393_pp0_iter10_reg <= shift_read_reg_393_pp0_iter9_reg;
        shift_read_reg_393_pp0_iter11_reg <= shift_read_reg_393_pp0_iter10_reg;
        shift_read_reg_393_pp0_iter1_reg <= shift_read_reg_393;
        shift_read_reg_393_pp0_iter2_reg <= shift_read_reg_393_pp0_iter1_reg;
        shift_read_reg_393_pp0_iter3_reg <= shift_read_reg_393_pp0_iter2_reg;
        shift_read_reg_393_pp0_iter4_reg <= shift_read_reg_393_pp0_iter3_reg;
        shift_read_reg_393_pp0_iter5_reg <= shift_read_reg_393_pp0_iter4_reg;
        shift_read_reg_393_pp0_iter6_reg <= shift_read_reg_393_pp0_iter5_reg;
        shift_read_reg_393_pp0_iter7_reg <= shift_read_reg_393_pp0_iter6_reg;
        shift_read_reg_393_pp0_iter8_reg <= shift_read_reg_393_pp0_iter7_reg;
        shift_read_reg_393_pp0_iter9_reg <= shift_read_reg_393_pp0_iter8_reg;
        sum_1_reg_558 <= grp_fu_345_p3;
        sum_2_reg_583 <= sum_2_fu_257_p2;
        sum_3_reg_618 <= sum_3_fu_278_p2;
        sum_4_reg_628 <= grp_fu_385_p3;
        temp_3_reg_523 <= grp_fu_192_p2;
        temp_7_reg_528 <= grp_fu_206_p2;
        temp_reg_518 <= grp_fu_178_p2;
        tmp_reg_649 <= {{grp_fu_292_p2[27:8]}};
        tmp_sum_reg_643 <= grp_fu_292_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce_reg)) begin
        ap_return_int_reg <= select_ln614_fu_337_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_ce)) begin
        p_kernel_filter_0_0_val_int_reg <= p_kernel_filter_0_0_val;
        p_kernel_filter_0_1_val_int_reg <= p_kernel_filter_0_1_val;
        p_kernel_filter_0_2_val_int_reg <= p_kernel_filter_0_2_val;
        p_kernel_filter_1_0_val_int_reg <= p_kernel_filter_1_0_val;
        p_kernel_filter_1_1_val_int_reg <= p_kernel_filter_1_1_val;
        p_kernel_filter_1_2_val_int_reg <= p_kernel_filter_1_2_val;
        p_kernel_filter_2_0_val_int_reg <= p_kernel_filter_2_0_val;
        p_kernel_filter_2_1_val_int_reg <= p_kernel_filter_2_1_val;
        p_kernel_filter_2_2_val_int_reg <= p_kernel_filter_2_2_val;
        p_kernel_pixel_0_0_val_int_reg <= p_kernel_pixel_0_0_val;
        p_kernel_pixel_0_1_val_int_reg <= p_kernel_pixel_0_1_val;
        p_kernel_pixel_0_2_val_int_reg <= p_kernel_pixel_0_2_val;
        p_kernel_pixel_1_0_val_int_reg <= p_kernel_pixel_1_0_val;
        p_kernel_pixel_1_1_val_int_reg <= p_kernel_pixel_1_1_val;
        p_kernel_pixel_1_2_val_int_reg <= p_kernel_pixel_1_2_val;
        p_kernel_pixel_2_0_val_int_reg <= p_kernel_pixel_2_0_val;
        p_kernel_pixel_2_1_val_int_reg <= p_kernel_pixel_2_1_val;
        p_kernel_pixel_2_2_val_int_reg <= p_kernel_pixel_2_2_val;
        shift_int_reg <= shift;
    end
end

always @ (*) begin
    if ((1'b0 == ap_ce_reg)) begin
        ap_return = ap_return_int_reg;
    end else if ((1'b1 == ap_ce_reg)) begin
        ap_return = select_ln614_fu_337_p3;
    end else begin
        ap_return = 'bx;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_178_ce = 1'b1;
    end else begin
        grp_fu_178_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_192_ce = 1'b1;
    end else begin
        grp_fu_192_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_206_ce = 1'b1;
    end else begin
        grp_fu_206_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_292_ce = 1'b1;
    end else begin
        grp_fu_292_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_345_ce = 1'b1;
    end else begin
        grp_fu_345_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_353_ce = 1'b1;
    end else begin
        grp_fu_353_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_361_ce = 1'b1;
    end else begin
        grp_fu_361_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_369_ce = 1'b1;
    end else begin
        grp_fu_369_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_377_ce = 1'b1;
    end else begin
        grp_fu_377_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce_reg))) begin
        grp_fu_385_ce = 1'b1;
    end else begin
        grp_fu_385_ce = 1'b0;
    end
end

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign grp_fu_178_p1 = grp_fu_178_p10;

assign grp_fu_178_p10 = p_kernel_pixel_2_1_val_int_reg;

assign grp_fu_192_p1 = grp_fu_192_p10;

assign grp_fu_192_p10 = p_kernel_pixel_2_0_val_int_reg;

assign grp_fu_206_p1 = grp_fu_206_p10;

assign grp_fu_206_p10 = p_kernel_pixel_0_2_val_int_reg;

assign grp_fu_292_p0 = sum_4_reg_628;

assign grp_fu_292_p1 = shift_read_reg_393_pp0_iter11_reg;

assign grp_fu_345_p1 = grp_fu_345_p10;

assign grp_fu_345_p10 = p_kernel_pixel_2_2_val_read_reg_428_pp0_iter1_reg;

assign grp_fu_353_p1 = grp_fu_353_p10;

assign grp_fu_353_p10 = p_kernel_pixel_1_2_val_read_reg_433_pp0_iter1_reg;

assign grp_fu_361_p1 = grp_fu_361_p10;

assign grp_fu_361_p10 = p_kernel_pixel_0_1_val_read_reg_448_pp0_iter1_reg;

assign grp_fu_369_p1 = grp_fu_369_p10;

assign grp_fu_369_p10 = p_kernel_pixel_1_0_val_read_reg_443_pp0_iter3_reg;

assign grp_fu_377_p1 = grp_fu_377_p10;

assign grp_fu_377_p10 = p_kernel_pixel_1_1_val_read_reg_438_pp0_iter4_reg;

assign grp_fu_385_p1 = grp_fu_385_p10;

assign grp_fu_385_p10 = p_kernel_pixel_0_0_val_read_reg_453_pp0_iter7_reg;

assign icmp_ln614_fu_308_p2 = (($signed(tmp_reg_649) > $signed(20'd0)) ? 1'b1 : 1'b0);

assign or_ln614_fu_331_p2 = (tmp_8_fu_313_p3 | icmp_ln614_fu_308_p2);

assign select_ln614_1_fu_323_p3 = ((icmp_ln614_fu_308_p2[0:0] == 1'b1) ? 8'd255 : 8'd0);

assign select_ln614_fu_337_p3 = ((or_ln614_fu_331_p2[0:0] == 1'b1) ? select_ln614_1_fu_323_p3 : trunc_ln619_fu_320_p1);

assign sext_ln583_fu_251_p1 = sum_1_reg_558;

assign sext_ln607_2_fu_275_p1 = add_ln607_4_reg_598_pp0_iter8_reg;

assign sext_ln607_fu_254_p1 = add_ln607_reg_563;

assign sum_2_fu_257_p2 = ($signed(sext_ln607_fu_254_p1) + $signed(sext_ln583_fu_251_p1));

assign sum_3_fu_278_p2 = ($signed(sext_ln607_2_fu_275_p1) + $signed(add_ln607_2_reg_603));

assign tmp_8_fu_313_p3 = tmp_sum_reg_643[32'd27];

assign trunc_ln619_fu_320_p1 = tmp_sum_reg_643[7:0];

endmodule //Filter2d_accel_xFApplyFilter2D_0_0_3_3_1_s
