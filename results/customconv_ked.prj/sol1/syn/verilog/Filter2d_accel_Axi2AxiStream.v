// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module Filter2d_accel_Axi2AxiStream (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        start_out,
        start_write,
        m_axi_gmem0_AWVALID,
        m_axi_gmem0_AWREADY,
        m_axi_gmem0_AWADDR,
        m_axi_gmem0_AWID,
        m_axi_gmem0_AWLEN,
        m_axi_gmem0_AWSIZE,
        m_axi_gmem0_AWBURST,
        m_axi_gmem0_AWLOCK,
        m_axi_gmem0_AWCACHE,
        m_axi_gmem0_AWPROT,
        m_axi_gmem0_AWQOS,
        m_axi_gmem0_AWREGION,
        m_axi_gmem0_AWUSER,
        m_axi_gmem0_WVALID,
        m_axi_gmem0_WREADY,
        m_axi_gmem0_WDATA,
        m_axi_gmem0_WSTRB,
        m_axi_gmem0_WLAST,
        m_axi_gmem0_WID,
        m_axi_gmem0_WUSER,
        m_axi_gmem0_ARVALID,
        m_axi_gmem0_ARREADY,
        m_axi_gmem0_ARADDR,
        m_axi_gmem0_ARID,
        m_axi_gmem0_ARLEN,
        m_axi_gmem0_ARSIZE,
        m_axi_gmem0_ARBURST,
        m_axi_gmem0_ARLOCK,
        m_axi_gmem0_ARCACHE,
        m_axi_gmem0_ARPROT,
        m_axi_gmem0_ARQOS,
        m_axi_gmem0_ARREGION,
        m_axi_gmem0_ARUSER,
        m_axi_gmem0_RVALID,
        m_axi_gmem0_RREADY,
        m_axi_gmem0_RDATA,
        m_axi_gmem0_RLAST,
        m_axi_gmem0_RID,
        m_axi_gmem0_RFIFONUM,
        m_axi_gmem0_RUSER,
        m_axi_gmem0_RRESP,
        m_axi_gmem0_BVALID,
        m_axi_gmem0_BREADY,
        m_axi_gmem0_BRESP,
        m_axi_gmem0_BID,
        m_axi_gmem0_BUSER,
        din,
        ldata_din,
        ldata_num_data_valid,
        ldata_fifo_cap,
        ldata_full_n,
        ldata_write,
        rows,
        cols,
        rows_c_din,
        rows_c_num_data_valid,
        rows_c_fifo_cap,
        rows_c_full_n,
        rows_c_write,
        cols_c_din,
        cols_c_num_data_valid,
        cols_c_fifo_cap,
        cols_c_full_n,
        cols_c_write
);

parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
output   m_axi_gmem0_AWVALID;
input   m_axi_gmem0_AWREADY;
output  [63:0] m_axi_gmem0_AWADDR;
output  [0:0] m_axi_gmem0_AWID;
output  [31:0] m_axi_gmem0_AWLEN;
output  [2:0] m_axi_gmem0_AWSIZE;
output  [1:0] m_axi_gmem0_AWBURST;
output  [1:0] m_axi_gmem0_AWLOCK;
output  [3:0] m_axi_gmem0_AWCACHE;
output  [2:0] m_axi_gmem0_AWPROT;
output  [3:0] m_axi_gmem0_AWQOS;
output  [3:0] m_axi_gmem0_AWREGION;
output  [0:0] m_axi_gmem0_AWUSER;
output   m_axi_gmem0_WVALID;
input   m_axi_gmem0_WREADY;
output  [7:0] m_axi_gmem0_WDATA;
output  [0:0] m_axi_gmem0_WSTRB;
output   m_axi_gmem0_WLAST;
output  [0:0] m_axi_gmem0_WID;
output  [0:0] m_axi_gmem0_WUSER;
output   m_axi_gmem0_ARVALID;
input   m_axi_gmem0_ARREADY;
output  [63:0] m_axi_gmem0_ARADDR;
output  [0:0] m_axi_gmem0_ARID;
output  [31:0] m_axi_gmem0_ARLEN;
output  [2:0] m_axi_gmem0_ARSIZE;
output  [1:0] m_axi_gmem0_ARBURST;
output  [1:0] m_axi_gmem0_ARLOCK;
output  [3:0] m_axi_gmem0_ARCACHE;
output  [2:0] m_axi_gmem0_ARPROT;
output  [3:0] m_axi_gmem0_ARQOS;
output  [3:0] m_axi_gmem0_ARREGION;
output  [0:0] m_axi_gmem0_ARUSER;
input   m_axi_gmem0_RVALID;
output   m_axi_gmem0_RREADY;
input  [7:0] m_axi_gmem0_RDATA;
input   m_axi_gmem0_RLAST;
input  [0:0] m_axi_gmem0_RID;
input  [10:0] m_axi_gmem0_RFIFONUM;
input  [0:0] m_axi_gmem0_RUSER;
input  [1:0] m_axi_gmem0_RRESP;
input   m_axi_gmem0_BVALID;
output   m_axi_gmem0_BREADY;
input  [1:0] m_axi_gmem0_BRESP;
input  [0:0] m_axi_gmem0_BID;
input  [0:0] m_axi_gmem0_BUSER;
input  [63:0] din;
output  [7:0] ldata_din;
input  [2:0] ldata_num_data_valid;
input  [2:0] ldata_fifo_cap;
input   ldata_full_n;
output   ldata_write;
input  [31:0] rows;
input  [31:0] cols;
output  [31:0] rows_c_din;
input  [2:0] rows_c_num_data_valid;
input  [2:0] rows_c_fifo_cap;
input   rows_c_full_n;
output   rows_c_write;
output  [31:0] cols_c_din;
input  [2:0] cols_c_num_data_valid;
input  [2:0] cols_c_fifo_cap;
input   cols_c_full_n;
output   cols_c_write;

reg ap_done;
reg ap_idle;
reg start_write;
reg m_axi_gmem0_ARVALID;
reg[63:0] m_axi_gmem0_ARADDR;
reg[0:0] m_axi_gmem0_ARID;
reg[31:0] m_axi_gmem0_ARLEN;
reg[2:0] m_axi_gmem0_ARSIZE;
reg[1:0] m_axi_gmem0_ARBURST;
reg[1:0] m_axi_gmem0_ARLOCK;
reg[3:0] m_axi_gmem0_ARCACHE;
reg[2:0] m_axi_gmem0_ARPROT;
reg[3:0] m_axi_gmem0_ARQOS;
reg[3:0] m_axi_gmem0_ARREGION;
reg[0:0] m_axi_gmem0_ARUSER;
reg m_axi_gmem0_RREADY;
reg ldata_write;
reg rows_c_write;
reg cols_c_write;

reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    gmem0_blk_n_AR;
wire    ap_CS_fsm_state4;
reg    rows_c_blk_n;
reg    cols_c_blk_n;
reg    ap_block_state1;
wire   [14:0] grp_fu_126_p2;
reg   [14:0] mul_rows_cols_reg_153;
wire    ap_CS_fsm_state3;
wire   [31:0] zext_ln1021_fu_139_p1;
wire    grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_start;
wire    grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_done;
wire    grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_idle;
wire    grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_ready;
wire    grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWVALID;
wire   [63:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWADDR;
wire   [0:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWID;
wire   [31:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWLEN;
wire   [2:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWSIZE;
wire   [1:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWBURST;
wire   [1:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWLOCK;
wire   [3:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWCACHE;
wire   [2:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWPROT;
wire   [3:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWQOS;
wire   [3:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWREGION;
wire   [0:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWUSER;
wire    grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_WVALID;
wire   [7:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_WDATA;
wire   [0:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_WSTRB;
wire    grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_WLAST;
wire   [0:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_WID;
wire   [0:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_WUSER;
wire    grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARVALID;
wire   [63:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARADDR;
wire   [0:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARID;
wire   [31:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARLEN;
wire   [2:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARSIZE;
wire   [1:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARBURST;
wire   [1:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARLOCK;
wire   [3:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARCACHE;
wire   [2:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARPROT;
wire   [3:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARQOS;
wire   [3:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARREGION;
wire   [0:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARUSER;
wire    grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_RREADY;
wire    grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_BREADY;
wire   [7:0] grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ldata_din;
wire    grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ldata_write;
reg    grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_start_reg;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire  signed [14:0] grp_fu_126_p0;
wire  signed [14:0] grp_fu_126_p1;
reg    grp_fu_126_ce;
wire    ap_CS_fsm_state2;
reg   [12:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 13'd1;
#0 grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_start_reg = 1'b0;
end

Filter2d_accel_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1 grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_start),
    .ap_done(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_done),
    .ap_idle(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_idle),
    .ap_ready(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_ready),
    .m_axi_gmem0_AWVALID(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWVALID),
    .m_axi_gmem0_AWREADY(1'b0),
    .m_axi_gmem0_AWADDR(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWADDR),
    .m_axi_gmem0_AWID(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWID),
    .m_axi_gmem0_AWLEN(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWLEN),
    .m_axi_gmem0_AWSIZE(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWSIZE),
    .m_axi_gmem0_AWBURST(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWBURST),
    .m_axi_gmem0_AWLOCK(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWLOCK),
    .m_axi_gmem0_AWCACHE(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWCACHE),
    .m_axi_gmem0_AWPROT(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWPROT),
    .m_axi_gmem0_AWQOS(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWQOS),
    .m_axi_gmem0_AWREGION(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWREGION),
    .m_axi_gmem0_AWUSER(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_AWUSER),
    .m_axi_gmem0_WVALID(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_WVALID),
    .m_axi_gmem0_WREADY(1'b0),
    .m_axi_gmem0_WDATA(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_WDATA),
    .m_axi_gmem0_WSTRB(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_WSTRB),
    .m_axi_gmem0_WLAST(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_WLAST),
    .m_axi_gmem0_WID(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_WID),
    .m_axi_gmem0_WUSER(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_WUSER),
    .m_axi_gmem0_ARVALID(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARVALID),
    .m_axi_gmem0_ARREADY(m_axi_gmem0_ARREADY),
    .m_axi_gmem0_ARADDR(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARADDR),
    .m_axi_gmem0_ARID(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARID),
    .m_axi_gmem0_ARLEN(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARLEN),
    .m_axi_gmem0_ARSIZE(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARSIZE),
    .m_axi_gmem0_ARBURST(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARBURST),
    .m_axi_gmem0_ARLOCK(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARLOCK),
    .m_axi_gmem0_ARCACHE(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARCACHE),
    .m_axi_gmem0_ARPROT(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARPROT),
    .m_axi_gmem0_ARQOS(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARQOS),
    .m_axi_gmem0_ARREGION(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARREGION),
    .m_axi_gmem0_ARUSER(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARUSER),
    .m_axi_gmem0_RVALID(m_axi_gmem0_RVALID),
    .m_axi_gmem0_RREADY(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_RREADY),
    .m_axi_gmem0_RDATA(m_axi_gmem0_RDATA),
    .m_axi_gmem0_RLAST(m_axi_gmem0_RLAST),
    .m_axi_gmem0_RID(m_axi_gmem0_RID),
    .m_axi_gmem0_RFIFONUM(m_axi_gmem0_RFIFONUM),
    .m_axi_gmem0_RUSER(m_axi_gmem0_RUSER),
    .m_axi_gmem0_RRESP(m_axi_gmem0_RRESP),
    .m_axi_gmem0_BVALID(1'b0),
    .m_axi_gmem0_BREADY(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_BREADY),
    .m_axi_gmem0_BRESP(2'd0),
    .m_axi_gmem0_BID(1'd0),
    .m_axi_gmem0_BUSER(1'd0),
    .ldata_din(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ldata_din),
    .ldata_num_data_valid(3'd0),
    .ldata_fifo_cap(3'd0),
    .ldata_full_n(ldata_full_n),
    .ldata_write(grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ldata_write),
    .mul_rows_cols(mul_rows_cols_reg_153),
    .din(din)
);

Filter2d_accel_mul_15s_15s_15_3_1 #(
    .ID( 1 ),
    .NUM_STAGE( 3 ),
    .din0_WIDTH( 15 ),
    .din1_WIDTH( 15 ),
    .dout_WIDTH( 15 ))
mul_15s_15s_15_3_1_U11(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_126_p0),
    .din1(grp_fu_126_p1),
    .ce(grp_fu_126_ce),
    .dout(grp_fu_126_p2)
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state13) & (grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_start_reg <= 1'b1;
        end else if ((grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_ready == 1'b1)) begin
            grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mul_rows_cols_reg_153 <= grp_fu_126_p2;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

always @ (*) begin
    if ((grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((m_axi_gmem0_ARREADY == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) & (grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (real_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        cols_c_blk_n = cols_c_full_n;
    end else begin
        cols_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        cols_c_write = 1'b1;
    end else begin
        cols_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        gmem0_blk_n_AR = m_axi_gmem0_ARREADY;
    end else begin
        gmem0_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1)))) begin
        grp_fu_126_ce = 1'b1;
    end else begin
        grp_fu_126_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) & (grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_done == 1'b1))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        ldata_write = grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ldata_write;
    end else begin
        ldata_write = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_gmem0_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        m_axi_gmem0_ARADDR = din;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        m_axi_gmem0_ARADDR = grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARADDR;
    end else begin
        m_axi_gmem0_ARADDR = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        m_axi_gmem0_ARBURST = grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARBURST;
    end else begin
        m_axi_gmem0_ARBURST = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        m_axi_gmem0_ARCACHE = grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARCACHE;
    end else begin
        m_axi_gmem0_ARCACHE = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        m_axi_gmem0_ARID = grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARID;
    end else begin
        m_axi_gmem0_ARID = 1'd0;
    end
end

always @ (*) begin
    if (((m_axi_gmem0_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        m_axi_gmem0_ARLEN = zext_ln1021_fu_139_p1;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        m_axi_gmem0_ARLEN = grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARLEN;
    end else begin
        m_axi_gmem0_ARLEN = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        m_axi_gmem0_ARLOCK = grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARLOCK;
    end else begin
        m_axi_gmem0_ARLOCK = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        m_axi_gmem0_ARPROT = grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARPROT;
    end else begin
        m_axi_gmem0_ARPROT = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        m_axi_gmem0_ARQOS = grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARQOS;
    end else begin
        m_axi_gmem0_ARQOS = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        m_axi_gmem0_ARREGION = grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARREGION;
    end else begin
        m_axi_gmem0_ARREGION = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        m_axi_gmem0_ARSIZE = grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARSIZE;
    end else begin
        m_axi_gmem0_ARSIZE = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        m_axi_gmem0_ARUSER = grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARUSER;
    end else begin
        m_axi_gmem0_ARUSER = 1'd0;
    end
end

always @ (*) begin
    if (((m_axi_gmem0_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        m_axi_gmem0_ARVALID = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        m_axi_gmem0_ARVALID = grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_ARVALID;
    end else begin
        m_axi_gmem0_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        m_axi_gmem0_RREADY = grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_m_axi_gmem0_RREADY;
    end else begin
        m_axi_gmem0_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (real_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        rows_c_blk_n = rows_c_full_n;
    end else begin
        rows_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        rows_c_write = 1'b1;
    end else begin
        rows_c_write = 1'b0;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((m_axi_gmem0_ARREADY == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (real_start == 1'b0) | (cols_c_full_n == 1'b0) | (rows_c_full_n == 1'b0));
end

assign ap_ready = internal_ap_ready;

assign cols_c_din = cols;

assign grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_start = grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ap_start_reg;

assign grp_fu_126_p0 = cols[14:0];

assign grp_fu_126_p1 = rows[14:0];

assign ldata_din = grp_Axi2AxiStream_Pipeline_VITIS_LOOP_1021_1_fu_108_ldata_din;

assign m_axi_gmem0_AWADDR = 64'd0;

assign m_axi_gmem0_AWBURST = 2'd0;

assign m_axi_gmem0_AWCACHE = 4'd0;

assign m_axi_gmem0_AWID = 1'd0;

assign m_axi_gmem0_AWLEN = 32'd0;

assign m_axi_gmem0_AWLOCK = 2'd0;

assign m_axi_gmem0_AWPROT = 3'd0;

assign m_axi_gmem0_AWQOS = 4'd0;

assign m_axi_gmem0_AWREGION = 4'd0;

assign m_axi_gmem0_AWSIZE = 3'd0;

assign m_axi_gmem0_AWUSER = 1'd0;

assign m_axi_gmem0_AWVALID = 1'b0;

assign m_axi_gmem0_BREADY = 1'b0;

assign m_axi_gmem0_WDATA = 8'd0;

assign m_axi_gmem0_WID = 1'd0;

assign m_axi_gmem0_WLAST = 1'b0;

assign m_axi_gmem0_WSTRB = 1'd0;

assign m_axi_gmem0_WUSER = 1'd0;

assign m_axi_gmem0_WVALID = 1'b0;

assign rows_c_din = rows;

assign start_out = real_start;

assign zext_ln1021_fu_139_p1 = mul_rows_cols_reg_153;

endmodule //Filter2d_accel_Axi2AxiStream