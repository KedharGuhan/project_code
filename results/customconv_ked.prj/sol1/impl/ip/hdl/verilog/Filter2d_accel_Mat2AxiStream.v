// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module Filter2d_accel_Mat2AxiStream (
        imgOutput_data_dout,
        imgOutput_data_empty_n,
        imgOutput_data_read,
        ldata_din,
        ldata_full_n,
        ldata_write,
        rows,
        cols,
        ap_clk,
        ap_rst,
        rows_ap_vld,
        cols_ap_vld,
        ap_start,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [7:0] imgOutput_data_dout;
input   imgOutput_data_empty_n;
output   imgOutput_data_read;
output  [7:0] ldata_din;
input   ldata_full_n;
output   ldata_write;
input  [15:0] rows;
input  [31:0] cols;
input   ap_clk;
input   ap_rst;
input   rows_ap_vld;
input   cols_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    entry_proc_U0_ap_start;
wire    entry_proc_U0_ap_done;
wire    entry_proc_U0_ap_continue;
wire    entry_proc_U0_ap_idle;
wire    entry_proc_U0_ap_ready;
wire   [15:0] entry_proc_U0_rows_c_din;
wire    entry_proc_U0_rows_c_write;
wire   [31:0] entry_proc_U0_cols_c_din;
wire    entry_proc_U0_cols_c_write;
wire    last_blk_pxl_width_1_U0_ap_start;
wire    last_blk_pxl_width_1_U0_ap_done;
wire    last_blk_pxl_width_1_U0_ap_continue;
wire    last_blk_pxl_width_1_U0_ap_idle;
wire    last_blk_pxl_width_1_U0_ap_ready;
wire   [3:0] last_blk_pxl_width_1_U0_return_r;
wire    last_blk_width_channel_full_n;
wire    MatStream2AxiStream_2_U0_ap_start;
wire    MatStream2AxiStream_2_U0_ap_done;
wire    MatStream2AxiStream_2_U0_ap_continue;
wire    MatStream2AxiStream_2_U0_ap_idle;
wire    MatStream2AxiStream_2_U0_ap_ready;
wire    MatStream2AxiStream_2_U0_imgOutput_data_read;
wire   [7:0] MatStream2AxiStream_2_U0_ldata_din;
wire    MatStream2AxiStream_2_U0_ldata_write;
wire    MatStream2AxiStream_2_U0_rows_read;
wire    MatStream2AxiStream_2_U0_cols_bound_per_npc_read;
wire    rows_c_full_n;
wire   [15:0] rows_c_dout;
wire   [2:0] rows_c_num_data_valid;
wire   [2:0] rows_c_fifo_cap;
wire    rows_c_empty_n;
wire    cols_c_full_n;
wire   [31:0] cols_c_dout;
wire   [2:0] cols_c_num_data_valid;
wire   [2:0] cols_c_fifo_cap;
wire    cols_c_empty_n;
wire   [3:0] last_blk_width_channel_dout;
wire   [2:0] last_blk_width_channel_num_data_valid;
wire   [2:0] last_blk_width_channel_fifo_cap;
wire    last_blk_width_channel_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_entry_proc_U0_ap_ready;
wire    ap_sync_entry_proc_U0_ap_ready;
reg    ap_sync_reg_last_blk_pxl_width_1_U0_ap_ready;
wire    ap_sync_last_blk_pxl_width_1_U0_ap_ready;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_entry_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_last_blk_pxl_width_1_U0_ap_ready = 1'b0;
end

Filter2d_accel_entry_proc entry_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(entry_proc_U0_ap_start),
    .ap_done(entry_proc_U0_ap_done),
    .ap_continue(entry_proc_U0_ap_continue),
    .ap_idle(entry_proc_U0_ap_idle),
    .ap_ready(entry_proc_U0_ap_ready),
    .rows(rows),
    .rows_c_din(entry_proc_U0_rows_c_din),
    .rows_c_num_data_valid(rows_c_num_data_valid),
    .rows_c_fifo_cap(rows_c_fifo_cap),
    .rows_c_full_n(rows_c_full_n),
    .rows_c_write(entry_proc_U0_rows_c_write),
    .cols(cols),
    .cols_c_din(entry_proc_U0_cols_c_din),
    .cols_c_num_data_valid(cols_c_num_data_valid),
    .cols_c_fifo_cap(cols_c_fifo_cap),
    .cols_c_full_n(cols_c_full_n),
    .cols_c_write(entry_proc_U0_cols_c_write)
);

Filter2d_accel_last_blk_pxl_width_1 last_blk_pxl_width_1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(last_blk_pxl_width_1_U0_ap_start),
    .ap_done(last_blk_pxl_width_1_U0_ap_done),
    .ap_continue(last_blk_pxl_width_1_U0_ap_continue),
    .ap_idle(last_blk_pxl_width_1_U0_ap_idle),
    .ap_ready(last_blk_pxl_width_1_U0_ap_ready),
    .return_r(last_blk_pxl_width_1_U0_return_r)
);

Filter2d_accel_MatStream2AxiStream_2_s MatStream2AxiStream_2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(MatStream2AxiStream_2_U0_ap_start),
    .ap_done(MatStream2AxiStream_2_U0_ap_done),
    .ap_continue(MatStream2AxiStream_2_U0_ap_continue),
    .ap_idle(MatStream2AxiStream_2_U0_ap_idle),
    .ap_ready(MatStream2AxiStream_2_U0_ap_ready),
    .imgOutput_data_dout(imgOutput_data_dout),
    .imgOutput_data_num_data_valid(3'd0),
    .imgOutput_data_fifo_cap(3'd0),
    .imgOutput_data_empty_n(imgOutput_data_empty_n),
    .imgOutput_data_read(MatStream2AxiStream_2_U0_imgOutput_data_read),
    .ldata_din(MatStream2AxiStream_2_U0_ldata_din),
    .ldata_num_data_valid(3'd0),
    .ldata_fifo_cap(3'd0),
    .ldata_full_n(ldata_full_n),
    .ldata_write(MatStream2AxiStream_2_U0_ldata_write),
    .rows_dout(rows_c_dout),
    .rows_num_data_valid(rows_c_num_data_valid),
    .rows_fifo_cap(rows_c_fifo_cap),
    .rows_empty_n(rows_c_empty_n),
    .rows_read(MatStream2AxiStream_2_U0_rows_read),
    .cols_bound_per_npc_dout(cols_c_dout),
    .cols_bound_per_npc_num_data_valid(cols_c_num_data_valid),
    .cols_bound_per_npc_fifo_cap(cols_c_fifo_cap),
    .cols_bound_per_npc_empty_n(cols_c_empty_n),
    .cols_bound_per_npc_read(MatStream2AxiStream_2_U0_cols_bound_per_npc_read),
    .last_blk_width(last_blk_width_channel_dout)
);

Filter2d_accel_fifo_w16_d3_S rows_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc_U0_rows_c_din),
    .if_full_n(rows_c_full_n),
    .if_write(entry_proc_U0_rows_c_write),
    .if_dout(rows_c_dout),
    .if_num_data_valid(rows_c_num_data_valid),
    .if_fifo_cap(rows_c_fifo_cap),
    .if_empty_n(rows_c_empty_n),
    .if_read(MatStream2AxiStream_2_U0_rows_read)
);

Filter2d_accel_fifo_w32_d3_S_x cols_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc_U0_cols_c_din),
    .if_full_n(cols_c_full_n),
    .if_write(entry_proc_U0_cols_c_write),
    .if_dout(cols_c_dout),
    .if_num_data_valid(cols_c_num_data_valid),
    .if_fifo_cap(cols_c_fifo_cap),
    .if_empty_n(cols_c_empty_n),
    .if_read(MatStream2AxiStream_2_U0_cols_bound_per_npc_read)
);

Filter2d_accel_fifo_w4_d2_S_x last_blk_width_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(last_blk_pxl_width_1_U0_return_r),
    .if_full_n(last_blk_width_channel_full_n),
    .if_write(last_blk_pxl_width_1_U0_ap_done),
    .if_dout(last_blk_width_channel_dout),
    .if_num_data_valid(last_blk_width_channel_num_data_valid),
    .if_fifo_cap(last_blk_width_channel_fifo_cap),
    .if_empty_n(last_blk_width_channel_empty_n),
    .if_read(MatStream2AxiStream_2_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_entry_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_entry_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_entry_proc_U0_ap_ready <= ap_sync_entry_proc_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_last_blk_pxl_width_1_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_last_blk_pxl_width_1_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_last_blk_pxl_width_1_U0_ap_ready <= ap_sync_last_blk_pxl_width_1_U0_ap_ready;
        end
    end
end

assign MatStream2AxiStream_2_U0_ap_continue = ap_continue;

assign MatStream2AxiStream_2_U0_ap_start = last_blk_width_channel_empty_n;

assign ap_done = MatStream2AxiStream_2_U0_ap_done;

assign ap_idle = (last_blk_pxl_width_1_U0_ap_idle & (last_blk_width_channel_empty_n ^ 1'b1) & entry_proc_U0_ap_idle & MatStream2AxiStream_2_U0_ap_idle);

assign ap_ready = ap_sync_ready;

assign ap_sync_entry_proc_U0_ap_ready = (entry_proc_U0_ap_ready | ap_sync_reg_entry_proc_U0_ap_ready);

assign ap_sync_last_blk_pxl_width_1_U0_ap_ready = (last_blk_pxl_width_1_U0_ap_ready | ap_sync_reg_last_blk_pxl_width_1_U0_ap_ready);

assign ap_sync_ready = (ap_sync_last_blk_pxl_width_1_U0_ap_ready & ap_sync_entry_proc_U0_ap_ready);

assign entry_proc_U0_ap_continue = 1'b1;

assign entry_proc_U0_ap_start = ((ap_sync_reg_entry_proc_U0_ap_ready ^ 1'b1) & ap_start);

assign imgOutput_data_read = MatStream2AxiStream_2_U0_imgOutput_data_read;

assign last_blk_pxl_width_1_U0_ap_continue = last_blk_width_channel_full_n;

assign last_blk_pxl_width_1_U0_ap_start = ((ap_sync_reg_last_blk_pxl_width_1_U0_ap_ready ^ 1'b1) & ap_start);

assign ldata_din = MatStream2AxiStream_2_U0_ldata_din;

assign ldata_write = MatStream2AxiStream_2_U0_ldata_write;

endmodule //Filter2d_accel_Mat2AxiStream
