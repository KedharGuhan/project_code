// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module Filter2d_accel_Mat2Axi (
        imgOutput_data_dout,
        imgOutput_data_empty_n,
        imgOutput_data_read,
        m_axi_gmem2_AWVALID,
        m_axi_gmem2_AWREADY,
        m_axi_gmem2_AWADDR,
        m_axi_gmem2_AWID,
        m_axi_gmem2_AWLEN,
        m_axi_gmem2_AWSIZE,
        m_axi_gmem2_AWBURST,
        m_axi_gmem2_AWLOCK,
        m_axi_gmem2_AWCACHE,
        m_axi_gmem2_AWPROT,
        m_axi_gmem2_AWQOS,
        m_axi_gmem2_AWREGION,
        m_axi_gmem2_AWUSER,
        m_axi_gmem2_WVALID,
        m_axi_gmem2_WREADY,
        m_axi_gmem2_WDATA,
        m_axi_gmem2_WSTRB,
        m_axi_gmem2_WLAST,
        m_axi_gmem2_WID,
        m_axi_gmem2_WUSER,
        m_axi_gmem2_ARVALID,
        m_axi_gmem2_ARREADY,
        m_axi_gmem2_ARADDR,
        m_axi_gmem2_ARID,
        m_axi_gmem2_ARLEN,
        m_axi_gmem2_ARSIZE,
        m_axi_gmem2_ARBURST,
        m_axi_gmem2_ARLOCK,
        m_axi_gmem2_ARCACHE,
        m_axi_gmem2_ARPROT,
        m_axi_gmem2_ARQOS,
        m_axi_gmem2_ARREGION,
        m_axi_gmem2_ARUSER,
        m_axi_gmem2_RVALID,
        m_axi_gmem2_RREADY,
        m_axi_gmem2_RDATA,
        m_axi_gmem2_RLAST,
        m_axi_gmem2_RID,
        m_axi_gmem2_RFIFONUM,
        m_axi_gmem2_RUSER,
        m_axi_gmem2_RRESP,
        m_axi_gmem2_BVALID,
        m_axi_gmem2_BREADY,
        m_axi_gmem2_BRESP,
        m_axi_gmem2_BID,
        m_axi_gmem2_BUSER,
        dout,
        rows,
        cols,
        ap_clk,
        ap_rst,
        dout_ap_vld,
        ap_start,
        rows_ap_vld,
        cols_ap_vld,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input  [7:0] imgOutput_data_dout;
input   imgOutput_data_empty_n;
output   imgOutput_data_read;
output   m_axi_gmem2_AWVALID;
input   m_axi_gmem2_AWREADY;
output  [63:0] m_axi_gmem2_AWADDR;
output  [0:0] m_axi_gmem2_AWID;
output  [31:0] m_axi_gmem2_AWLEN;
output  [2:0] m_axi_gmem2_AWSIZE;
output  [1:0] m_axi_gmem2_AWBURST;
output  [1:0] m_axi_gmem2_AWLOCK;
output  [3:0] m_axi_gmem2_AWCACHE;
output  [2:0] m_axi_gmem2_AWPROT;
output  [3:0] m_axi_gmem2_AWQOS;
output  [3:0] m_axi_gmem2_AWREGION;
output  [0:0] m_axi_gmem2_AWUSER;
output   m_axi_gmem2_WVALID;
input   m_axi_gmem2_WREADY;
output  [7:0] m_axi_gmem2_WDATA;
output  [0:0] m_axi_gmem2_WSTRB;
output   m_axi_gmem2_WLAST;
output  [0:0] m_axi_gmem2_WID;
output  [0:0] m_axi_gmem2_WUSER;
output   m_axi_gmem2_ARVALID;
input   m_axi_gmem2_ARREADY;
output  [63:0] m_axi_gmem2_ARADDR;
output  [0:0] m_axi_gmem2_ARID;
output  [31:0] m_axi_gmem2_ARLEN;
output  [2:0] m_axi_gmem2_ARSIZE;
output  [1:0] m_axi_gmem2_ARBURST;
output  [1:0] m_axi_gmem2_ARLOCK;
output  [3:0] m_axi_gmem2_ARCACHE;
output  [2:0] m_axi_gmem2_ARPROT;
output  [3:0] m_axi_gmem2_ARQOS;
output  [3:0] m_axi_gmem2_ARREGION;
output  [0:0] m_axi_gmem2_ARUSER;
input   m_axi_gmem2_RVALID;
output   m_axi_gmem2_RREADY;
input  [7:0] m_axi_gmem2_RDATA;
input   m_axi_gmem2_RLAST;
input  [0:0] m_axi_gmem2_RID;
input  [10:0] m_axi_gmem2_RFIFONUM;
input  [0:0] m_axi_gmem2_RUSER;
input  [1:0] m_axi_gmem2_RRESP;
input   m_axi_gmem2_BVALID;
output   m_axi_gmem2_BREADY;
input  [1:0] m_axi_gmem2_BRESP;
input  [0:0] m_axi_gmem2_BID;
input  [0:0] m_axi_gmem2_BUSER;
input  [63:0] dout;
input  [15:0] rows;
input  [31:0] cols;
input   ap_clk;
input   ap_rst;
input   dout_ap_vld;
input   ap_start;
input   rows_ap_vld;
input   cols_ap_vld;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

wire    entry_proc6_U0_ap_start;
wire    entry_proc6_U0_ap_done;
wire    entry_proc6_U0_ap_continue;
wire    entry_proc6_U0_ap_idle;
wire    entry_proc6_U0_ap_ready;
wire   [63:0] entry_proc6_U0_dout_c_din;
wire    entry_proc6_U0_dout_c_write;
wire    addrbound_U0_ap_start;
wire    addrbound_U0_ap_done;
wire    addrbound_U0_ap_continue;
wire    addrbound_U0_ap_idle;
wire    addrbound_U0_ap_ready;
wire   [14:0] addrbound_U0_p_channel;
wire   [14:0] addrbound_U0_rows;
wire   [14:0] addrbound_U0_cols;
wire    p_channel_full_n;
wire    Mat2Axi_Block_entry24_proc_U0_ap_start;
wire    Mat2Axi_Block_entry24_proc_U0_ap_done;
wire    Mat2Axi_Block_entry24_proc_U0_ap_continue;
wire    Mat2Axi_Block_entry24_proc_U0_ap_idle;
wire    Mat2Axi_Block_entry24_proc_U0_ap_ready;
wire   [14:0] Mat2Axi_Block_entry24_proc_U0_ap_return;
wire    axibound_full_n;
wire    Mat2AxiStream_U0_imgOutput_data_read;
wire   [7:0] Mat2AxiStream_U0_ldata_din;
wire    Mat2AxiStream_U0_ldata_write;
wire    Mat2AxiStream_U0_ap_start;
wire    Mat2AxiStream_U0_ap_done;
wire    Mat2AxiStream_U0_ap_ready;
wire    Mat2AxiStream_U0_ap_idle;
wire    Mat2AxiStream_U0_ap_continue;
wire    AxiStream2Axi_U0_ap_start;
wire    AxiStream2Axi_U0_ap_done;
wire    AxiStream2Axi_U0_ap_continue;
wire    AxiStream2Axi_U0_ap_idle;
wire    AxiStream2Axi_U0_ap_ready;
wire    AxiStream2Axi_U0_ldata_read;
wire    AxiStream2Axi_U0_m_axi_gmem2_AWVALID;
wire   [63:0] AxiStream2Axi_U0_m_axi_gmem2_AWADDR;
wire   [0:0] AxiStream2Axi_U0_m_axi_gmem2_AWID;
wire   [31:0] AxiStream2Axi_U0_m_axi_gmem2_AWLEN;
wire   [2:0] AxiStream2Axi_U0_m_axi_gmem2_AWSIZE;
wire   [1:0] AxiStream2Axi_U0_m_axi_gmem2_AWBURST;
wire   [1:0] AxiStream2Axi_U0_m_axi_gmem2_AWLOCK;
wire   [3:0] AxiStream2Axi_U0_m_axi_gmem2_AWCACHE;
wire   [2:0] AxiStream2Axi_U0_m_axi_gmem2_AWPROT;
wire   [3:0] AxiStream2Axi_U0_m_axi_gmem2_AWQOS;
wire   [3:0] AxiStream2Axi_U0_m_axi_gmem2_AWREGION;
wire   [0:0] AxiStream2Axi_U0_m_axi_gmem2_AWUSER;
wire    AxiStream2Axi_U0_m_axi_gmem2_WVALID;
wire   [7:0] AxiStream2Axi_U0_m_axi_gmem2_WDATA;
wire   [0:0] AxiStream2Axi_U0_m_axi_gmem2_WSTRB;
wire    AxiStream2Axi_U0_m_axi_gmem2_WLAST;
wire   [0:0] AxiStream2Axi_U0_m_axi_gmem2_WID;
wire   [0:0] AxiStream2Axi_U0_m_axi_gmem2_WUSER;
wire    AxiStream2Axi_U0_m_axi_gmem2_ARVALID;
wire   [63:0] AxiStream2Axi_U0_m_axi_gmem2_ARADDR;
wire   [0:0] AxiStream2Axi_U0_m_axi_gmem2_ARID;
wire   [31:0] AxiStream2Axi_U0_m_axi_gmem2_ARLEN;
wire   [2:0] AxiStream2Axi_U0_m_axi_gmem2_ARSIZE;
wire   [1:0] AxiStream2Axi_U0_m_axi_gmem2_ARBURST;
wire   [1:0] AxiStream2Axi_U0_m_axi_gmem2_ARLOCK;
wire   [3:0] AxiStream2Axi_U0_m_axi_gmem2_ARCACHE;
wire   [2:0] AxiStream2Axi_U0_m_axi_gmem2_ARPROT;
wire   [3:0] AxiStream2Axi_U0_m_axi_gmem2_ARQOS;
wire   [3:0] AxiStream2Axi_U0_m_axi_gmem2_ARREGION;
wire   [0:0] AxiStream2Axi_U0_m_axi_gmem2_ARUSER;
wire    AxiStream2Axi_U0_m_axi_gmem2_RREADY;
wire    AxiStream2Axi_U0_m_axi_gmem2_BREADY;
wire    AxiStream2Axi_U0_dout_read;
wire    dout_c_full_n;
wire   [63:0] dout_c_dout;
wire   [2:0] dout_c_num_data_valid;
wire   [2:0] dout_c_fifo_cap;
wire    dout_c_empty_n;
wire   [14:0] p_channel_dout;
wire   [2:0] p_channel_num_data_valid;
wire   [2:0] p_channel_fifo_cap;
wire    p_channel_empty_n;
wire   [14:0] axibound_dout;
wire   [2:0] axibound_num_data_valid;
wire   [2:0] axibound_fifo_cap;
wire    axibound_empty_n;
wire    ldata_full_n;
wire   [7:0] ldata_dout;
wire   [2:0] ldata_num_data_valid;
wire   [2:0] ldata_fifo_cap;
wire    ldata_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_entry_proc6_U0_ap_ready;
wire    ap_sync_entry_proc6_U0_ap_ready;
reg    ap_sync_reg_addrbound_U0_ap_ready;
wire    ap_sync_addrbound_U0_ap_ready;
reg    ap_sync_reg_Mat2AxiStream_U0_ap_ready;
wire    ap_sync_Mat2AxiStream_U0_ap_ready;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_sync_reg_entry_proc6_U0_ap_ready = 1'b0;
#0 ap_sync_reg_addrbound_U0_ap_ready = 1'b0;
#0 ap_sync_reg_Mat2AxiStream_U0_ap_ready = 1'b0;
end

Filter2d_accel_entry_proc6 entry_proc6_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(entry_proc6_U0_ap_start),
    .ap_done(entry_proc6_U0_ap_done),
    .ap_continue(entry_proc6_U0_ap_continue),
    .ap_idle(entry_proc6_U0_ap_idle),
    .ap_ready(entry_proc6_U0_ap_ready),
    .dout(dout),
    .dout_c_din(entry_proc6_U0_dout_c_din),
    .dout_c_num_data_valid(dout_c_num_data_valid),
    .dout_c_fifo_cap(dout_c_fifo_cap),
    .dout_c_full_n(dout_c_full_n),
    .dout_c_write(entry_proc6_U0_dout_c_write)
);

Filter2d_accel_addrbound addrbound_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(addrbound_U0_ap_start),
    .ap_done(addrbound_U0_ap_done),
    .ap_continue(addrbound_U0_ap_continue),
    .ap_idle(addrbound_U0_ap_idle),
    .ap_ready(addrbound_U0_ap_ready),
    .p_channel(addrbound_U0_p_channel),
    .rows(addrbound_U0_rows),
    .cols(addrbound_U0_cols)
);

Filter2d_accel_Mat2Axi_Block_entry24_proc Mat2Axi_Block_entry24_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Mat2Axi_Block_entry24_proc_U0_ap_start),
    .ap_done(Mat2Axi_Block_entry24_proc_U0_ap_done),
    .ap_continue(Mat2Axi_Block_entry24_proc_U0_ap_continue),
    .ap_idle(Mat2Axi_Block_entry24_proc_U0_ap_idle),
    .ap_ready(Mat2Axi_Block_entry24_proc_U0_ap_ready),
    .axibound_1(p_channel_dout),
    .ap_return(Mat2Axi_Block_entry24_proc_U0_ap_return)
);

Filter2d_accel_Mat2AxiStream Mat2AxiStream_U0(
    .imgOutput_data_dout(imgOutput_data_dout),
    .imgOutput_data_empty_n(imgOutput_data_empty_n),
    .imgOutput_data_read(Mat2AxiStream_U0_imgOutput_data_read),
    .ldata_din(Mat2AxiStream_U0_ldata_din),
    .ldata_full_n(ldata_full_n),
    .ldata_write(Mat2AxiStream_U0_ldata_write),
    .rows(rows),
    .cols(cols),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .rows_ap_vld(rows_ap_vld),
    .cols_ap_vld(cols_ap_vld),
    .ap_start(Mat2AxiStream_U0_ap_start),
    .ap_done(Mat2AxiStream_U0_ap_done),
    .ap_ready(Mat2AxiStream_U0_ap_ready),
    .ap_idle(Mat2AxiStream_U0_ap_idle),
    .ap_continue(Mat2AxiStream_U0_ap_continue)
);

Filter2d_accel_AxiStream2Axi AxiStream2Axi_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(AxiStream2Axi_U0_ap_start),
    .ap_done(AxiStream2Axi_U0_ap_done),
    .ap_continue(AxiStream2Axi_U0_ap_continue),
    .ap_idle(AxiStream2Axi_U0_ap_idle),
    .ap_ready(AxiStream2Axi_U0_ap_ready),
    .ldata_dout(ldata_dout),
    .ldata_num_data_valid(ldata_num_data_valid),
    .ldata_fifo_cap(ldata_fifo_cap),
    .ldata_empty_n(ldata_empty_n),
    .ldata_read(AxiStream2Axi_U0_ldata_read),
    .m_axi_gmem2_AWVALID(AxiStream2Axi_U0_m_axi_gmem2_AWVALID),
    .m_axi_gmem2_AWREADY(m_axi_gmem2_AWREADY),
    .m_axi_gmem2_AWADDR(AxiStream2Axi_U0_m_axi_gmem2_AWADDR),
    .m_axi_gmem2_AWID(AxiStream2Axi_U0_m_axi_gmem2_AWID),
    .m_axi_gmem2_AWLEN(AxiStream2Axi_U0_m_axi_gmem2_AWLEN),
    .m_axi_gmem2_AWSIZE(AxiStream2Axi_U0_m_axi_gmem2_AWSIZE),
    .m_axi_gmem2_AWBURST(AxiStream2Axi_U0_m_axi_gmem2_AWBURST),
    .m_axi_gmem2_AWLOCK(AxiStream2Axi_U0_m_axi_gmem2_AWLOCK),
    .m_axi_gmem2_AWCACHE(AxiStream2Axi_U0_m_axi_gmem2_AWCACHE),
    .m_axi_gmem2_AWPROT(AxiStream2Axi_U0_m_axi_gmem2_AWPROT),
    .m_axi_gmem2_AWQOS(AxiStream2Axi_U0_m_axi_gmem2_AWQOS),
    .m_axi_gmem2_AWREGION(AxiStream2Axi_U0_m_axi_gmem2_AWREGION),
    .m_axi_gmem2_AWUSER(AxiStream2Axi_U0_m_axi_gmem2_AWUSER),
    .m_axi_gmem2_WVALID(AxiStream2Axi_U0_m_axi_gmem2_WVALID),
    .m_axi_gmem2_WREADY(m_axi_gmem2_WREADY),
    .m_axi_gmem2_WDATA(AxiStream2Axi_U0_m_axi_gmem2_WDATA),
    .m_axi_gmem2_WSTRB(AxiStream2Axi_U0_m_axi_gmem2_WSTRB),
    .m_axi_gmem2_WLAST(AxiStream2Axi_U0_m_axi_gmem2_WLAST),
    .m_axi_gmem2_WID(AxiStream2Axi_U0_m_axi_gmem2_WID),
    .m_axi_gmem2_WUSER(AxiStream2Axi_U0_m_axi_gmem2_WUSER),
    .m_axi_gmem2_ARVALID(AxiStream2Axi_U0_m_axi_gmem2_ARVALID),
    .m_axi_gmem2_ARREADY(1'b0),
    .m_axi_gmem2_ARADDR(AxiStream2Axi_U0_m_axi_gmem2_ARADDR),
    .m_axi_gmem2_ARID(AxiStream2Axi_U0_m_axi_gmem2_ARID),
    .m_axi_gmem2_ARLEN(AxiStream2Axi_U0_m_axi_gmem2_ARLEN),
    .m_axi_gmem2_ARSIZE(AxiStream2Axi_U0_m_axi_gmem2_ARSIZE),
    .m_axi_gmem2_ARBURST(AxiStream2Axi_U0_m_axi_gmem2_ARBURST),
    .m_axi_gmem2_ARLOCK(AxiStream2Axi_U0_m_axi_gmem2_ARLOCK),
    .m_axi_gmem2_ARCACHE(AxiStream2Axi_U0_m_axi_gmem2_ARCACHE),
    .m_axi_gmem2_ARPROT(AxiStream2Axi_U0_m_axi_gmem2_ARPROT),
    .m_axi_gmem2_ARQOS(AxiStream2Axi_U0_m_axi_gmem2_ARQOS),
    .m_axi_gmem2_ARREGION(AxiStream2Axi_U0_m_axi_gmem2_ARREGION),
    .m_axi_gmem2_ARUSER(AxiStream2Axi_U0_m_axi_gmem2_ARUSER),
    .m_axi_gmem2_RVALID(1'b0),
    .m_axi_gmem2_RREADY(AxiStream2Axi_U0_m_axi_gmem2_RREADY),
    .m_axi_gmem2_RDATA(8'd0),
    .m_axi_gmem2_RLAST(1'b0),
    .m_axi_gmem2_RID(1'd0),
    .m_axi_gmem2_RFIFONUM(11'd0),
    .m_axi_gmem2_RUSER(1'd0),
    .m_axi_gmem2_RRESP(2'd0),
    .m_axi_gmem2_BVALID(m_axi_gmem2_BVALID),
    .m_axi_gmem2_BREADY(AxiStream2Axi_U0_m_axi_gmem2_BREADY),
    .m_axi_gmem2_BRESP(m_axi_gmem2_BRESP),
    .m_axi_gmem2_BID(m_axi_gmem2_BID),
    .m_axi_gmem2_BUSER(m_axi_gmem2_BUSER),
    .dout_dout(dout_c_dout),
    .dout_num_data_valid(dout_c_num_data_valid),
    .dout_fifo_cap(dout_c_fifo_cap),
    .dout_empty_n(dout_c_empty_n),
    .dout_read(AxiStream2Axi_U0_dout_read),
    .addrbound_read(axibound_dout)
);

Filter2d_accel_fifo_w64_d4_S dout_c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(entry_proc6_U0_dout_c_din),
    .if_full_n(dout_c_full_n),
    .if_write(entry_proc6_U0_dout_c_write),
    .if_dout(dout_c_dout),
    .if_num_data_valid(dout_c_num_data_valid),
    .if_fifo_cap(dout_c_fifo_cap),
    .if_empty_n(dout_c_empty_n),
    .if_read(AxiStream2Axi_U0_dout_read)
);

Filter2d_accel_fifo_w15_d2_S p_channel_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(addrbound_U0_p_channel),
    .if_full_n(p_channel_full_n),
    .if_write(addrbound_U0_ap_done),
    .if_dout(p_channel_dout),
    .if_num_data_valid(p_channel_num_data_valid),
    .if_fifo_cap(p_channel_fifo_cap),
    .if_empty_n(p_channel_empty_n),
    .if_read(Mat2Axi_Block_entry24_proc_U0_ap_ready)
);

Filter2d_accel_fifo_w15_d2_S axibound_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Mat2Axi_Block_entry24_proc_U0_ap_return),
    .if_full_n(axibound_full_n),
    .if_write(Mat2Axi_Block_entry24_proc_U0_ap_done),
    .if_dout(axibound_dout),
    .if_num_data_valid(axibound_num_data_valid),
    .if_fifo_cap(axibound_fifo_cap),
    .if_empty_n(axibound_empty_n),
    .if_read(AxiStream2Axi_U0_ap_ready)
);

Filter2d_accel_fifo_w8_d2_S_x ldata_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Mat2AxiStream_U0_ldata_din),
    .if_full_n(ldata_full_n),
    .if_write(Mat2AxiStream_U0_ldata_write),
    .if_dout(ldata_dout),
    .if_num_data_valid(ldata_num_data_valid),
    .if_fifo_cap(ldata_fifo_cap),
    .if_empty_n(ldata_empty_n),
    .if_read(AxiStream2Axi_U0_ldata_read)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_Mat2AxiStream_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_Mat2AxiStream_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_Mat2AxiStream_U0_ap_ready <= ap_sync_Mat2AxiStream_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_addrbound_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_addrbound_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_addrbound_U0_ap_ready <= ap_sync_addrbound_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_entry_proc6_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_entry_proc6_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_entry_proc6_U0_ap_ready <= ap_sync_entry_proc6_U0_ap_ready;
        end
    end
end

assign AxiStream2Axi_U0_ap_continue = ap_continue;

assign AxiStream2Axi_U0_ap_start = axibound_empty_n;

assign Mat2AxiStream_U0_ap_continue = 1'b1;

assign Mat2AxiStream_U0_ap_start = ((ap_sync_reg_Mat2AxiStream_U0_ap_ready ^ 1'b1) & ap_start);

assign Mat2Axi_Block_entry24_proc_U0_ap_continue = axibound_full_n;

assign Mat2Axi_Block_entry24_proc_U0_ap_start = p_channel_empty_n;

assign addrbound_U0_ap_continue = p_channel_full_n;

assign addrbound_U0_ap_start = ((ap_sync_reg_addrbound_U0_ap_ready ^ 1'b1) & ap_start);

assign addrbound_U0_cols = {{cols[(15 - 32'd1):0]}};

assign addrbound_U0_rows = {{rows[(15 - 16'd1):0]}};

assign ap_done = AxiStream2Axi_U0_ap_done;

assign ap_idle = ((axibound_empty_n ^ 1'b1) & (p_channel_empty_n ^ 1'b1) & entry_proc6_U0_ap_idle & addrbound_U0_ap_idle & Mat2Axi_Block_entry24_proc_U0_ap_idle & Mat2AxiStream_U0_ap_idle & AxiStream2Axi_U0_ap_idle);

assign ap_ready = ap_sync_ready;

assign ap_sync_Mat2AxiStream_U0_ap_ready = (ap_sync_reg_Mat2AxiStream_U0_ap_ready | Mat2AxiStream_U0_ap_ready);

assign ap_sync_addrbound_U0_ap_ready = (ap_sync_reg_addrbound_U0_ap_ready | addrbound_U0_ap_ready);

assign ap_sync_entry_proc6_U0_ap_ready = (entry_proc6_U0_ap_ready | ap_sync_reg_entry_proc6_U0_ap_ready);

assign ap_sync_ready = (ap_sync_entry_proc6_U0_ap_ready & ap_sync_addrbound_U0_ap_ready & ap_sync_Mat2AxiStream_U0_ap_ready);

assign entry_proc6_U0_ap_continue = 1'b1;

assign entry_proc6_U0_ap_start = ((ap_sync_reg_entry_proc6_U0_ap_ready ^ 1'b1) & ap_start);

assign imgOutput_data_read = Mat2AxiStream_U0_imgOutput_data_read;

assign m_axi_gmem2_ARADDR = 64'd0;

assign m_axi_gmem2_ARBURST = 2'd0;

assign m_axi_gmem2_ARCACHE = 4'd0;

assign m_axi_gmem2_ARID = 1'd0;

assign m_axi_gmem2_ARLEN = 32'd0;

assign m_axi_gmem2_ARLOCK = 2'd0;

assign m_axi_gmem2_ARPROT = 3'd0;

assign m_axi_gmem2_ARQOS = 4'd0;

assign m_axi_gmem2_ARREGION = 4'd0;

assign m_axi_gmem2_ARSIZE = 3'd0;

assign m_axi_gmem2_ARUSER = 1'd0;

assign m_axi_gmem2_ARVALID = 1'b0;

assign m_axi_gmem2_AWADDR = AxiStream2Axi_U0_m_axi_gmem2_AWADDR;

assign m_axi_gmem2_AWBURST = AxiStream2Axi_U0_m_axi_gmem2_AWBURST;

assign m_axi_gmem2_AWCACHE = AxiStream2Axi_U0_m_axi_gmem2_AWCACHE;

assign m_axi_gmem2_AWID = AxiStream2Axi_U0_m_axi_gmem2_AWID;

assign m_axi_gmem2_AWLEN = AxiStream2Axi_U0_m_axi_gmem2_AWLEN;

assign m_axi_gmem2_AWLOCK = AxiStream2Axi_U0_m_axi_gmem2_AWLOCK;

assign m_axi_gmem2_AWPROT = AxiStream2Axi_U0_m_axi_gmem2_AWPROT;

assign m_axi_gmem2_AWQOS = AxiStream2Axi_U0_m_axi_gmem2_AWQOS;

assign m_axi_gmem2_AWREGION = AxiStream2Axi_U0_m_axi_gmem2_AWREGION;

assign m_axi_gmem2_AWSIZE = AxiStream2Axi_U0_m_axi_gmem2_AWSIZE;

assign m_axi_gmem2_AWUSER = AxiStream2Axi_U0_m_axi_gmem2_AWUSER;

assign m_axi_gmem2_AWVALID = AxiStream2Axi_U0_m_axi_gmem2_AWVALID;

assign m_axi_gmem2_BREADY = AxiStream2Axi_U0_m_axi_gmem2_BREADY;

assign m_axi_gmem2_RREADY = 1'b0;

assign m_axi_gmem2_WDATA = AxiStream2Axi_U0_m_axi_gmem2_WDATA;

assign m_axi_gmem2_WID = AxiStream2Axi_U0_m_axi_gmem2_WID;

assign m_axi_gmem2_WLAST = AxiStream2Axi_U0_m_axi_gmem2_WLAST;

assign m_axi_gmem2_WSTRB = AxiStream2Axi_U0_m_axi_gmem2_WSTRB;

assign m_axi_gmem2_WUSER = AxiStream2Axi_U0_m_axi_gmem2_WUSER;

assign m_axi_gmem2_WVALID = AxiStream2Axi_U0_m_axi_gmem2_WVALID;

endmodule //Filter2d_accel_Mat2Axi
