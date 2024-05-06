// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module Filter2d_accel_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        imgOutput_data_dout,
        imgOutput_data_num_data_valid,
        imgOutput_data_fifo_cap,
        imgOutput_data_empty_n,
        imgOutput_data_read,
        ldata_din,
        ldata_num_data_valid,
        ldata_fifo_cap,
        ldata_full_n,
        ldata_write,
        bound,
        empty,
        sub,
        last_blk_width_load,
        cols_bound_per_npc_load,
        localbuffer_out,
        localbuffer_out_ap_vld,
        filled_out,
        filled_out_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] imgOutput_data_dout;
input  [2:0] imgOutput_data_num_data_valid;
input  [2:0] imgOutput_data_fifo_cap;
input   imgOutput_data_empty_n;
output   imgOutput_data_read;
output  [7:0] ldata_din;
input  [2:0] ldata_num_data_valid;
input  [2:0] ldata_fifo_cap;
input   ldata_full_n;
output   ldata_write;
input  [31:0] bound;
input  [15:0] empty;
input  [31:0] sub;
input  [3:0] last_blk_width_load;
input  [31:0] cols_bound_per_npc_load;
output  [7:0] localbuffer_out;
output   localbuffer_out_ap_vld;
output  [3:0] filled_out;
output   filled_out_ap_vld;

reg ap_idle;
reg imgOutput_data_read;
reg ldata_write;
reg localbuffer_out_ap_vld;
reg filled_out_ap_vld;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
reg   [0:0] icmp_ln1301_reg_427;
reg   [0:0] icmp_ln1315_reg_447;
reg    ap_predicate_op41_read_state4;
reg    ap_block_state4_pp0_stage1_iter1;
reg   [0:0] icmp_ln1301_reg_427_pp0_iter2_reg;
reg   [0:0] icmp_ln1324_reg_475;
reg   [0:0] icmp_ln1324_reg_475_pp0_iter3_reg;
reg    ap_predicate_op76_write_state8;
reg    ap_block_state8_pp0_stage1_iter3;
reg    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln1301_fu_193_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    imgOutput_data_blk_n;
wire    ap_block_pp0_stage1;
reg    ldata_blk_n;
reg   [7:0] val_1_reg_149;
wire    ap_block_pp0_stage0_11001;
reg    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln1301_reg_427_pp0_iter1_reg;
reg   [0:0] icmp_ln1301_reg_427_pp0_iter3_reg;
wire   [31:0] add_ln1301_fu_198_p2;
reg   [31:0] add_ln1301_reg_431;
wire   [15:0] select_ln1294_fu_212_p3;
reg   [15:0] select_ln1294_reg_436;
wire   [0:0] bLast_fu_223_p2;
reg   [0:0] bLast_reg_442;
wire   [0:0] icmp_ln1315_fu_228_p2;
wire   [15:0] add_ln1306_fu_233_p2;
reg   [15:0] add_ln1306_reg_451;
wire   [3:0] xf_bits_per_clock_fu_242_p3;
reg   [3:0] xf_bits_per_clock_reg_456;
reg   [7:0] val_reg_463;
reg   [3:0] filled_1_reg_468;
wire   [0:0] icmp_ln1324_fu_268_p2;
wire  signed [4:0] sub_ln1332_fu_274_p2;
reg  signed [4:0] sub_ln1332_reg_479;
reg   [0:0] tmp_9_reg_484;
reg   [0:0] tmp_9_reg_484_pp0_iter3_reg;
wire   [2:0] sub_ln1332_1_fu_292_p2;
reg   [2:0] sub_ln1332_1_reg_489;
wire   [3:0] xor_ln1333_fu_298_p2;
wire   [7:0] grp_fu_306_p2;
reg   [7:0] shl_ln1320_reg_509;
wire   [7:0] grp_fu_315_p2;
reg   [7:0] shl_ln1332_reg_514;
wire   [7:0] grp_fu_338_p2;
reg   [7:0] lshr_ln1332_reg_524;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [7:0] ap_phi_reg_pp0_iter0_val_1_reg_149;
reg   [7:0] ap_phi_reg_pp0_iter1_val_1_reg_149;
reg   [7:0] ap_phi_reg_pp0_iter2_val_1_reg_149;
wire   [3:0] ap_phi_reg_pp0_iter0_conv3_i12_i_i933_pn_reg_161;
reg   [3:0] ap_phi_reg_pp0_iter1_conv3_i12_i_i933_pn_reg_161;
reg   [3:0] ap_phi_reg_pp0_iter2_conv3_i12_i_i933_pn_reg_161;
reg   [3:0] filled_fu_76;
wire   [3:0] filled_next_fu_321_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [7:0] localbuffer_fu_80;
wire   [7:0] localbuffer_2_fu_358_p3;
wire   [7:0] localbuffer_1_fu_347_p2;
reg   [15:0] j_fu_84;
reg   [15:0] ap_sig_allocacmp_j_load;
reg   [31:0] indvar_flatten_fu_88;
reg    ap_block_pp0_stage1_01001;
wire    ap_block_pp0_stage0_01001;
wire   [0:0] icmp_ln1306_fu_207_p2;
wire   [31:0] zext_ln1306_fu_220_p1;
wire   [4:0] zext_ln1313_fu_255_p1;
wire   [4:0] sub_ln1324_fu_262_p2;
wire   [4:0] zext_ln1320_2_fu_258_p1;
wire   [2:0] trunc_ln1332_fu_280_p1;
wire   [7:0] grp_fu_306_p1;
wire   [7:0] grp_fu_315_p1;
wire  signed [31:0] sext_ln1332_fu_331_p1;
wire   [7:0] grp_fu_338_p1;
reg    grp_fu_306_ce;
reg    grp_fu_315_ce;
reg    grp_fu_338_ce;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage0;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to4;
reg    ap_done_pending_pp0;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 filled_fu_76 = 4'd0;
#0 localbuffer_fu_80 = 8'd0;
#0 j_fu_84 = 16'd0;
#0 indvar_flatten_fu_88 = 32'd0;
#0 ap_done_reg = 1'b0;
end

Filter2d_accel_shl_8ns_4ns_8_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .OP( 0 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 4 ),
    .dout_WIDTH( 8 ))
shl_8ns_4ns_8_2_1_U186(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ap_phi_reg_pp0_iter2_val_1_reg_149),
    .din1(grp_fu_306_p1),
    .ce(grp_fu_306_ce),
    .dout(grp_fu_306_p2)
);

Filter2d_accel_shl_8ns_3ns_8_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .OP( 0 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 3 ),
    .dout_WIDTH( 8 ))
shl_8ns_3ns_8_2_1_U187(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(ap_phi_reg_pp0_iter2_val_1_reg_149),
    .din1(grp_fu_315_p1),
    .ce(grp_fu_315_ce),
    .dout(grp_fu_315_p2)
);

Filter2d_accel_lshr_8ns_8ns_8_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .OP( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 8 ))
lshr_8ns_8ns_8_2_1_U188(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(val_1_reg_149),
    .din1(grp_fu_338_p1),
    .ce(grp_fu_338_ce),
    .dout(grp_fu_338_p2)
);

Filter2d_accel_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln1324_fu_268_p2 == 1'd1) & (icmp_ln1301_reg_427_pp0_iter1_reg == 1'd0))) begin
        ap_phi_reg_pp0_iter2_conv3_i12_i_i933_pn_reg_161 <= xf_bits_per_clock_reg_456;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln1324_fu_268_p2 == 1'd0) & (icmp_ln1301_reg_427_pp0_iter1_reg == 1'd0))) begin
        ap_phi_reg_pp0_iter2_conv3_i12_i_i933_pn_reg_161 <= xor_ln1333_fu_298_p2;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_phi_reg_pp0_iter2_conv3_i12_i_i933_pn_reg_161 <= ap_phi_reg_pp0_iter1_conv3_i12_i_i933_pn_reg_161;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln1315_reg_447 == 1'd0) & (icmp_ln1301_reg_427 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_phi_reg_pp0_iter2_val_1_reg_149 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln1315_reg_447 == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln1301_reg_427_pp0_iter1_reg == 1'd0))) begin
        ap_phi_reg_pp0_iter2_val_1_reg_149 <= val_reg_463;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_phi_reg_pp0_iter2_val_1_reg_149 <= ap_phi_reg_pp0_iter1_val_1_reg_149;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        filled_fu_76 <= 4'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        filled_fu_76 <= filled_next_fu_321_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_88 <= 32'd0;
        end else if (((icmp_ln1301_reg_427 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten_fu_88 <= add_ln1301_reg_431;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_84 <= 16'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln1301_reg_427 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_84 <= add_ln1306_reg_451;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        localbuffer_fu_80 <= 8'd0;
    end else if (((icmp_ln1324_reg_475_pp0_iter3_reg == 1'd1) & (icmp_ln1301_reg_427_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        localbuffer_fu_80 <= localbuffer_1_fu_347_p2;
    end else if (((icmp_ln1324_reg_475_pp0_iter3_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln1301_reg_427_pp0_iter3_reg == 1'd0))) begin
        localbuffer_fu_80 <= localbuffer_2_fu_358_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln1301_reg_431 <= add_ln1301_fu_198_p2;
        icmp_ln1301_reg_427 <= icmp_ln1301_fu_193_p2;
        icmp_ln1301_reg_427_pp0_iter1_reg <= icmp_ln1301_reg_427;
        icmp_ln1301_reg_427_pp0_iter2_reg <= icmp_ln1301_reg_427_pp0_iter1_reg;
        icmp_ln1301_reg_427_pp0_iter3_reg <= icmp_ln1301_reg_427_pp0_iter2_reg;
        lshr_ln1332_reg_524 <= grp_fu_338_p2;
        select_ln1294_reg_436 <= select_ln1294_fu_212_p3;
        val_reg_463 <= imgOutput_data_dout;
        xf_bits_per_clock_reg_456 <= xf_bits_per_clock_fu_242_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln1306_reg_451 <= add_ln1306_fu_233_p2;
        bLast_reg_442 <= bLast_fu_223_p2;
        icmp_ln1315_reg_447 <= icmp_ln1315_fu_228_p2;
        icmp_ln1324_reg_475 <= icmp_ln1324_fu_268_p2;
        icmp_ln1324_reg_475_pp0_iter3_reg <= icmp_ln1324_reg_475;
        shl_ln1320_reg_509 <= grp_fu_306_p2;
        shl_ln1332_reg_514 <= grp_fu_315_p2;
        sub_ln1332_1_reg_489 <= sub_ln1332_1_fu_292_p2;
        sub_ln1332_reg_479 <= sub_ln1332_fu_274_p2;
        tmp_9_reg_484 <= sub_ln1332_fu_274_p2[32'd4];
        tmp_9_reg_484_pp0_iter3_reg <= tmp_9_reg_484;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_phi_reg_pp0_iter1_conv3_i12_i_i933_pn_reg_161 <= ap_phi_reg_pp0_iter0_conv3_i12_i_i933_pn_reg_161;
        ap_phi_reg_pp0_iter1_val_1_reg_149 <= ap_phi_reg_pp0_iter0_val_1_reg_149;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        filled_1_reg_468 <= filled_fu_76;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        val_1_reg_149 <= ap_phi_reg_pp0_iter2_val_1_reg_149;
    end
end

always @ (*) begin
    if (((icmp_ln1301_fu_193_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln1301_reg_427_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1301_reg_427_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (~((ap_loop_exit_ready_pp0_iter3_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (ap_loop_exit_ready == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (icmp_ln1301_reg_427 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_sig_allocacmp_j_load = add_ln1306_reg_451;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_84;
    end
end

always @ (*) begin
    if (((icmp_ln1301_reg_427_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        filled_out_ap_vld = 1'b1;
    end else begin
        filled_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_306_ce = 1'b1;
    end else begin
        grp_fu_306_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_315_ce = 1'b1;
    end else begin
        grp_fu_315_ce = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_338_ce = 1'b1;
    end else begin
        grp_fu_338_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_predicate_op41_read_state4 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        imgOutput_data_blk_n = imgOutput_data_empty_n;
    end else begin
        imgOutput_data_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_predicate_op41_read_state4 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        imgOutput_data_read = 1'b1;
    end else begin
        imgOutput_data_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op76_write_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ldata_blk_n = ldata_full_n;
    end else begin
        ldata_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_predicate_op76_write_state8 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ldata_write = 1'b1;
    end else begin
        ldata_write = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln1301_reg_427_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        localbuffer_out_ap_vld = 1'b1;
    end else begin
        localbuffer_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1301_fu_198_p2 = (indvar_flatten_fu_88 + 32'd1);

assign add_ln1306_fu_233_p2 = (select_ln1294_reg_436 + 16'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage1_01001 = (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state8_pp0_stage1_iter3)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage1_iter1)));
end

always @ (*) begin
    ap_block_pp0_stage1_11001 = (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state8_pp0_stage1_iter3)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage1_iter1)));
end

always @ (*) begin
    ap_block_pp0_stage1_subdone = (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_block_state8_pp0_stage1_iter3)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_block_state4_pp0_stage1_iter1)));
end

always @ (*) begin
    ap_block_state4_pp0_stage1_iter1 = ((ap_predicate_op41_read_state4 == 1'b1) & (imgOutput_data_empty_n == 1'b0));
end

always @ (*) begin
    ap_block_state8_pp0_stage1_iter3 = ((ap_predicate_op76_write_state8 == 1'b1) & (ldata_full_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign ap_phi_reg_pp0_iter0_conv3_i12_i_i933_pn_reg_161 = 'bx;

assign ap_phi_reg_pp0_iter0_val_1_reg_149 = 'bx;

always @ (*) begin
    ap_predicate_op41_read_state4 = ((icmp_ln1315_reg_447 == 1'd1) & (icmp_ln1301_reg_427 == 1'd0));
end

always @ (*) begin
    ap_predicate_op76_write_state8 = ((icmp_ln1324_reg_475_pp0_iter3_reg == 1'd0) & (icmp_ln1301_reg_427_pp0_iter2_reg == 1'd0));
end

assign bLast_fu_223_p2 = ((sub == zext_ln1306_fu_220_p1) ? 1'b1 : 1'b0);

assign filled_next_fu_321_p2 = (ap_phi_reg_pp0_iter2_conv3_i12_i_i933_pn_reg_161 + filled_1_reg_468);

assign filled_out = filled_1_reg_468;

assign grp_fu_306_p1 = filled_1_reg_468;

assign grp_fu_315_p1 = sub_ln1332_1_reg_489;

assign grp_fu_338_p1 = sext_ln1332_fu_331_p1[7:0];

assign icmp_ln1301_fu_193_p2 = ((indvar_flatten_fu_88 == bound) ? 1'b1 : 1'b0);

assign icmp_ln1306_fu_207_p2 = ((ap_sig_allocacmp_j_load == empty) ? 1'b1 : 1'b0);

assign icmp_ln1315_fu_228_p2 = (($signed(zext_ln1306_fu_220_p1) < $signed(cols_bound_per_npc_load)) ? 1'b1 : 1'b0);

assign icmp_ln1324_fu_268_p2 = (($signed(sub_ln1324_fu_262_p2) > $signed(zext_ln1320_2_fu_258_p1)) ? 1'b1 : 1'b0);

assign ldata_din = (shl_ln1320_reg_509 | localbuffer_fu_80);

assign localbuffer_1_fu_347_p2 = (shl_ln1320_reg_509 | localbuffer_fu_80);

assign localbuffer_2_fu_358_p3 = ((tmp_9_reg_484_pp0_iter3_reg[0:0] == 1'b1) ? shl_ln1332_reg_514 : lshr_ln1332_reg_524);

assign localbuffer_out = localbuffer_fu_80;

assign select_ln1294_fu_212_p3 = ((icmp_ln1306_fu_207_p2[0:0] == 1'b1) ? 16'd0 : ap_sig_allocacmp_j_load);

assign sext_ln1332_fu_331_p1 = sub_ln1332_reg_479;

assign sub_ln1324_fu_262_p2 = (5'd8 - zext_ln1313_fu_255_p1);

assign sub_ln1332_1_fu_292_p2 = (3'd0 - trunc_ln1332_fu_280_p1);

assign sub_ln1332_fu_274_p2 = (5'd8 - zext_ln1320_2_fu_258_p1);

assign trunc_ln1332_fu_280_p1 = sub_ln1332_fu_274_p2[2:0];

assign xf_bits_per_clock_fu_242_p3 = ((bLast_reg_442[0:0] == 1'b1) ? last_blk_width_load : 4'd8);

assign xor_ln1333_fu_298_p2 = (xf_bits_per_clock_reg_456 ^ 4'd8);

assign zext_ln1306_fu_220_p1 = select_ln1294_reg_436;

assign zext_ln1313_fu_255_p1 = xf_bits_per_clock_reg_456;

assign zext_ln1320_2_fu_258_p1 = filled_fu_76;

endmodule //Filter2d_accel_MatStream2AxiStream_2_Pipeline_MMIterOutRow_MMIterOutCol
