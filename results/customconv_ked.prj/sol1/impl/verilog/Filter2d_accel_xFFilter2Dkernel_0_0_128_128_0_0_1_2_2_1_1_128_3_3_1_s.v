// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module Filter2d_accel_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        imgInput_data_dout,
        imgInput_data_num_data_valid,
        imgInput_data_fifo_cap,
        imgInput_data_empty_n,
        imgInput_data_read,
        imgOutput_data_din,
        imgOutput_data_num_data_valid,
        imgOutput_data_fifo_cap,
        imgOutput_data_full_n,
        imgOutput_data_write,
        p_filter_kernel_0_0_val1,
        p_filter_kernel_0_1_val2,
        p_filter_kernel_0_2_val3,
        p_filter_kernel_1_0_val4,
        p_filter_kernel_1_1_val5,
        p_filter_kernel_1_2_val6,
        p_filter_kernel_2_0_val7,
        p_filter_kernel_2_1_val8,
        p_filter_kernel_2_2_val9,
        shift,
        rows,
        cols
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] imgInput_data_dout;
input  [2:0] imgInput_data_num_data_valid;
input  [2:0] imgInput_data_fifo_cap;
input   imgInput_data_empty_n;
output   imgInput_data_read;
output  [7:0] imgOutput_data_din;
input  [2:0] imgOutput_data_num_data_valid;
input  [2:0] imgOutput_data_fifo_cap;
input   imgOutput_data_full_n;
output   imgOutput_data_write;
input  [15:0] p_filter_kernel_0_0_val1;
input  [15:0] p_filter_kernel_0_1_val2;
input  [15:0] p_filter_kernel_0_2_val3;
input  [15:0] p_filter_kernel_1_0_val4;
input  [15:0] p_filter_kernel_1_1_val5;
input  [15:0] p_filter_kernel_1_2_val6;
input  [15:0] p_filter_kernel_2_0_val7;
input  [15:0] p_filter_kernel_2_1_val8;
input  [15:0] p_filter_kernel_2_2_val9;
input  [7:0] shift;
input  [15:0] rows;
input  [15:0] cols;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg imgInput_data_read;
reg imgOutput_data_write;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [16:0] zext_ln695_fu_235_p1;
reg   [16:0] zext_ln695_reg_586;
wire   [16:0] heightloop_fu_239_p2;
reg   [16:0] heightloop_reg_594;
wire   [16:0] widthloop_fu_249_p2;
reg   [16:0] widthloop_reg_599;
wire   [16:0] sub62_fu_255_p2;
reg   [16:0] sub62_reg_604;
wire   [1:0] trunc_ln707_fu_261_p1;
reg   [1:0] trunc_ln707_reg_610;
wire   [15:0] i_2_fu_282_p2;
reg   [15:0] i_2_reg_618;
wire    ap_CS_fsm_state2;
wire  signed [15:0] ImagLocy_fu_288_p2;
reg  signed [15:0] ImagLocy_reg_623;
wire   [0:0] cmp204_fu_294_p2;
reg   [0:0] cmp204_reg_631;
reg   [0:0] tmp_reg_636;
reg   [14:0] tmp_7_reg_642;
wire  signed [16:0] ImagLocy_cast_fu_323_p1;
reg  signed [16:0] ImagLocy_cast_reg_647;
wire    ap_CS_fsm_state3;
wire   [1:0] ref_fu_337_p3;
reg   [1:0] ref_reg_655;
wire   [16:0] y_2_fu_344_p2;
reg   [16:0] y_2_reg_662;
wire   [0:0] brmerge30_fu_366_p2;
reg   [0:0] brmerge30_reg_668;
reg   [7:0] src_kernel_win_load_reg_673;
wire    ap_CS_fsm_state4;
reg   [7:0] src_kernel_win_3_load_reg_678;
reg   [7:0] src_kernel_win_5_load_reg_683;
wire   [0:0] cmp1_i18_fu_393_p2;
reg   [0:0] cmp1_i18_reg_688;
wire   [1:0] locy_fu_411_p2;
reg   [1:0] locy_reg_693;
wire   [1:0] locy_1_fu_454_p2;
reg   [1:0] locy_1_reg_698;
wire   [0:0] cmp179_1_fu_459_p2;
reg   [0:0] cmp179_1_reg_703;
wire   [0:0] empty_45_fu_466_p2;
reg   [0:0] empty_45_reg_708;
wire   [1:0] locy_2_fu_478_p2;
reg   [1:0] locy_2_reg_713;
reg   [0:0] tmp_6_reg_718;
wire    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start;
wire    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_done;
wire    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_idle;
wire    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_ready;
wire    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgInput_data_read;
wire   [7:0] grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgOutput_data_din;
wire    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgOutput_data_write;
wire   [7:0] grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_11_out;
wire    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_11_out_ap_vld;
wire   [7:0] grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_10_out_o;
wire    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_10_out_o_ap_vld;
wire   [7:0] grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_9_out;
wire    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_9_out_ap_vld;
wire   [7:0] grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_8_out_o;
wire    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_8_out_o_ap_vld;
wire   [7:0] grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_7_out_o;
wire    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_7_out_o_ap_vld;
wire   [7:0] grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_6_out;
wire    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_6_out_ap_vld;
reg    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg   [7:0] src_kernel_win_5_fu_120;
reg   [7:0] src_kernel_win_4_fu_116;
reg   [7:0] src_kernel_win_3_fu_112;
reg   [7:0] src_kernel_win_2_fu_108;
reg   [7:0] src_kernel_win_1_fu_104;
reg   [7:0] src_kernel_win_fu_100;
reg   [15:0] i_fu_96;
wire   [16:0] zext_ln696_fu_245_p1;
wire   [16:0] zext_ln707_fu_273_p1;
wire   [0:0] slt_fu_326_p2;
wire   [0:0] rev56_fu_331_p2;
wire   [0:0] notrhs_fu_355_p2;
wire   [0:0] icmp_fu_350_p2;
wire   [0:0] cmp57_fu_318_p2;
wire   [0:0] brmerge_not_fu_360_p2;
wire   [0:0] rev_fu_388_p2;
wire   [0:0] or_cond25_fu_397_p2;
wire   [1:0] empty_fu_385_p1;
wire   [1:0] t_fu_403_p3;
wire   [16:0] y_1_fu_416_p2;
wire   [0:0] slt57_fu_430_p2;
wire   [0:0] cmp_i17_1_fu_425_p2;
wire   [0:0] rev58_fu_434_p2;
wire   [0:0] or_cond26_fu_440_p2;
wire   [1:0] empty_43_fu_421_p1;
wire   [1:0] t_1_fu_446_p3;
wire   [1:0] empty_44_fu_463_p1;
wire   [1:0] t_2_fu_470_p3;
wire   [0:0] icmp_ln707_fu_277_p2;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start_reg = 1'b0;
#0 i_fu_96 = 16'd0;
end

Filter2d_accel_xFFilter2Dkernel_Pipeline_COL_LOOP grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start),
    .ap_done(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_done),
    .ap_idle(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_idle),
    .ap_ready(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_ready),
    .imgInput_data_dout(imgInput_data_dout),
    .imgInput_data_num_data_valid(3'd0),
    .imgInput_data_fifo_cap(3'd0),
    .imgInput_data_empty_n(imgInput_data_empty_n),
    .imgInput_data_read(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgInput_data_read),
    .imgOutput_data_din(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgOutput_data_din),
    .imgOutput_data_num_data_valid(3'd0),
    .imgOutput_data_fifo_cap(3'd0),
    .imgOutput_data_full_n(imgOutput_data_full_n),
    .imgOutput_data_write(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgOutput_data_write),
    .src_kernel_win_5(src_kernel_win_5_load_reg_683),
    .src_kernel_win_3(src_kernel_win_3_load_reg_678),
    .src_kernel_win(src_kernel_win_load_reg_673),
    .widthloop(widthloop_reg_599),
    .cmp204(cmp204_reg_631),
    .zext_ln696(cols),
    .brmerge30(brmerge30_reg_668),
    .locy(locy_reg_693),
    .cmp1_i18(cmp1_i18_reg_688),
    .cmp179_1(cmp179_1_reg_703),
    .empty_26(tmp_6_reg_718),
    .locy_1(locy_1_reg_698),
    .empty_27(empty_45_reg_708),
    .empty(tmp_reg_636),
    .locy_2(locy_2_reg_713),
    .p_filter_kernel_0_0_val1(p_filter_kernel_0_0_val1),
    .p_filter_kernel_0_1_val2(p_filter_kernel_0_1_val2),
    .p_filter_kernel_0_2_val3(p_filter_kernel_0_2_val3),
    .p_filter_kernel_1_0_val4(p_filter_kernel_1_0_val4),
    .p_filter_kernel_1_1_val5(p_filter_kernel_1_1_val5),
    .p_filter_kernel_1_2_val6(p_filter_kernel_1_2_val6),
    .p_filter_kernel_2_0_val7(p_filter_kernel_2_0_val7),
    .p_filter_kernel_2_1_val8(p_filter_kernel_2_1_val8),
    .p_filter_kernel_2_2_val9(p_filter_kernel_2_2_val9),
    .shift(shift),
    .src_kernel_win_11_out(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_11_out),
    .src_kernel_win_11_out_ap_vld(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_11_out_ap_vld),
    .src_kernel_win_10_out_i(src_kernel_win_4_fu_116),
    .src_kernel_win_10_out_o(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_10_out_o),
    .src_kernel_win_10_out_o_ap_vld(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_10_out_o_ap_vld),
    .src_kernel_win_9_out(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_9_out),
    .src_kernel_win_9_out_ap_vld(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_9_out_ap_vld),
    .src_kernel_win_8_out_i(src_kernel_win_2_fu_108),
    .src_kernel_win_8_out_o(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_8_out_o),
    .src_kernel_win_8_out_o_ap_vld(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_8_out_o_ap_vld),
    .src_kernel_win_7_out_i(src_kernel_win_1_fu_104),
    .src_kernel_win_7_out_o(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_7_out_o),
    .src_kernel_win_7_out_o_ap_vld(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_7_out_o_ap_vld),
    .src_kernel_win_6_out(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_6_out),
    .src_kernel_win_6_out_ap_vld(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_6_out_ap_vld)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start_reg <= 1'b1;
        end else if ((grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_ready == 1'b1)) begin
            grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_96 <= 16'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_fu_96 <= i_2_reg_618;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ImagLocy_cast_reg_647 <= ImagLocy_cast_fu_323_p1;
        brmerge30_reg_668 <= brmerge30_fu_366_p2;
        ref_reg_655 <= ref_fu_337_p3;
        y_2_reg_662 <= y_2_fu_344_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ImagLocy_reg_623 <= ImagLocy_fu_288_p2;
        cmp204_reg_631 <= cmp204_fu_294_p2;
        i_2_reg_618 <= i_2_fu_282_p2;
        tmp_7_reg_642 <= {{ImagLocy_fu_288_p2[15:1]}};
        tmp_reg_636 <= ImagLocy_fu_288_p2[32'd15];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        cmp179_1_reg_703 <= cmp179_1_fu_459_p2;
        cmp1_i18_reg_688 <= cmp1_i18_fu_393_p2;
        empty_45_reg_708 <= empty_45_fu_466_p2;
        locy_1_reg_698 <= locy_1_fu_454_p2;
        locy_2_reg_713 <= locy_2_fu_478_p2;
        locy_reg_693 <= locy_fu_411_p2;
        src_kernel_win_3_load_reg_678 <= src_kernel_win_3_fu_112;
        src_kernel_win_5_load_reg_683 <= src_kernel_win_5_fu_120;
        src_kernel_win_load_reg_673 <= src_kernel_win_fu_100;
        tmp_6_reg_718 <= y_1_fu_416_p2[32'd16];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        heightloop_reg_594 <= heightloop_fu_239_p2;
        sub62_reg_604 <= sub62_fu_255_p2;
        trunc_ln707_reg_610 <= trunc_ln707_fu_261_p1;
        widthloop_reg_599 <= widthloop_fu_249_p2;
        zext_ln695_reg_586[15 : 0] <= zext_ln695_fu_235_p1[15 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_7_out_o_ap_vld == 1'b1))) begin
        src_kernel_win_1_fu_104 <= grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_7_out_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_8_out_o_ap_vld == 1'b1))) begin
        src_kernel_win_2_fu_108 <= grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_8_out_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_9_out_ap_vld == 1'b1))) begin
        src_kernel_win_3_fu_112 <= grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_9_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_10_out_o_ap_vld == 1'b1))) begin
        src_kernel_win_4_fu_116 <= grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_10_out_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_11_out_ap_vld == 1'b1))) begin
        src_kernel_win_5_fu_120 <= grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_11_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_6_out_ap_vld == 1'b1))) begin
        src_kernel_win_fu_100 <= grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_6_out;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln707_fu_277_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln707_fu_277_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        imgInput_data_read = grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgInput_data_read;
    end else begin
        imgInput_data_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        imgOutput_data_write = grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgOutput_data_write;
    end else begin
        imgOutput_data_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln707_fu_277_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ImagLocy_cast_fu_323_p1 = ImagLocy_reg_623;

assign ImagLocy_fu_288_p2 = ($signed(i_fu_96) + $signed(16'd65532));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign brmerge30_fu_366_p2 = (cmp57_fu_318_p2 | brmerge_not_fu_360_p2);

assign brmerge_not_fu_360_p2 = (notrhs_fu_355_p2 & icmp_fu_350_p2);

assign cmp179_1_fu_459_p2 = (($signed(ImagLocy_cast_reg_647) > $signed(zext_ln695_reg_586)) ? 1'b1 : 1'b0);

assign cmp1_i18_fu_393_p2 = (($signed(ImagLocy_cast_reg_647) < $signed(zext_ln695_reg_586)) ? 1'b1 : 1'b0);

assign cmp204_fu_294_p2 = ((i_fu_96 > 16'd4) ? 1'b1 : 1'b0);

assign cmp57_fu_318_p2 = (($signed(ImagLocy_reg_623) < $signed(16'd65535)) ? 1'b1 : 1'b0);

assign cmp_i17_1_fu_425_p2 = (($signed(ImagLocy_reg_623) > $signed(16'd0)) ? 1'b1 : 1'b0);

assign empty_43_fu_421_p1 = y_1_fu_416_p2[1:0];

assign empty_44_fu_463_p1 = y_2_reg_662[1:0];

assign empty_45_fu_466_p2 = ((y_2_reg_662 < zext_ln695_reg_586) ? 1'b1 : 1'b0);

assign empty_fu_385_p1 = ImagLocy_reg_623[1:0];

assign grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start = grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start_reg;

assign heightloop_fu_239_p2 = (zext_ln695_fu_235_p1 + 17'd5);

assign i_2_fu_282_p2 = (i_fu_96 + 16'd1);

assign icmp_fu_350_p2 = (($signed(tmp_7_reg_642) > $signed(15'd0)) ? 1'b1 : 1'b0);

assign icmp_ln707_fu_277_p2 = ((heightloop_reg_594 > zext_ln707_fu_273_p1) ? 1'b1 : 1'b0);

assign imgOutput_data_din = grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgOutput_data_din;

assign locy_1_fu_454_p2 = (ref_reg_655 - t_1_fu_446_p3);

assign locy_2_fu_478_p2 = (ref_reg_655 - t_2_fu_470_p3);

assign locy_fu_411_p2 = (ref_reg_655 - t_fu_403_p3);

assign notrhs_fu_355_p2 = (($signed(sub62_reg_604) > $signed(ImagLocy_cast_fu_323_p1)) ? 1'b1 : 1'b0);

assign or_cond25_fu_397_p2 = (rev_fu_388_p2 & cmp1_i18_fu_393_p2);

assign or_cond26_fu_440_p2 = (rev58_fu_434_p2 & cmp_i17_1_fu_425_p2);

assign ref_fu_337_p3 = ((rev56_fu_331_p2[0:0] == 1'b1) ? trunc_ln707_reg_610 : 2'd2);

assign rev56_fu_331_p2 = (slt_fu_326_p2 ^ 1'd1);

assign rev58_fu_434_p2 = (slt57_fu_430_p2 ^ 1'd1);

assign rev_fu_388_p2 = (tmp_reg_636 ^ 1'd1);

assign slt57_fu_430_p2 = (($signed(zext_ln695_reg_586) < $signed(ImagLocy_cast_reg_647)) ? 1'b1 : 1'b0);

assign slt_fu_326_p2 = (($signed(ImagLocy_cast_fu_323_p1) < $signed(sub62_reg_604)) ? 1'b1 : 1'b0);

assign sub62_fu_255_p2 = ($signed(zext_ln695_fu_235_p1) + $signed(17'd131071));

assign t_1_fu_446_p3 = ((or_cond26_fu_440_p2[0:0] == 1'b1) ? empty_43_fu_421_p1 : 2'd3);

assign t_2_fu_470_p3 = ((empty_45_fu_466_p2[0:0] == 1'b1) ? empty_44_fu_463_p1 : 2'd3);

assign t_fu_403_p3 = ((or_cond25_fu_397_p2[0:0] == 1'b1) ? empty_fu_385_p1 : 2'd3);

assign trunc_ln707_fu_261_p1 = sub62_fu_255_p2[1:0];

assign widthloop_fu_249_p2 = (zext_ln696_fu_245_p1 + 17'd2);

assign y_1_fu_416_p2 = ($signed(ImagLocy_cast_reg_647) + $signed(17'd131071));

assign y_2_fu_344_p2 = ($signed(ImagLocy_cast_fu_323_p1) + $signed(17'd131070));

assign zext_ln695_fu_235_p1 = rows;

assign zext_ln696_fu_245_p1 = cols;

assign zext_ln707_fu_273_p1 = i_fu_96;

always @ (posedge ap_clk) begin
    zext_ln695_reg_586[16] <= 1'b0;
end

endmodule //Filter2d_accel_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s
