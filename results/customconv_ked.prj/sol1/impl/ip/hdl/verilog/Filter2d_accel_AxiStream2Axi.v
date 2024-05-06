// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module Filter2d_accel_AxiStream2Axi (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        ldata_dout,
        ldata_num_data_valid,
        ldata_fifo_cap,
        ldata_empty_n,
        ldata_read,
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
        dout_dout,
        dout_num_data_valid,
        dout_fifo_cap,
        dout_empty_n,
        dout_read,
        addrbound_read
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [7:0] ldata_dout;
input  [2:0] ldata_num_data_valid;
input  [2:0] ldata_fifo_cap;
input   ldata_empty_n;
output   ldata_read;
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
input  [63:0] dout_dout;
input  [2:0] dout_num_data_valid;
input  [2:0] dout_fifo_cap;
input   dout_empty_n;
output   dout_read;
input  [14:0] addrbound_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg ldata_read;
reg m_axi_gmem2_AWVALID;
reg[63:0] m_axi_gmem2_AWADDR;
reg[0:0] m_axi_gmem2_AWID;
reg[31:0] m_axi_gmem2_AWLEN;
reg[2:0] m_axi_gmem2_AWSIZE;
reg[1:0] m_axi_gmem2_AWBURST;
reg[1:0] m_axi_gmem2_AWLOCK;
reg[3:0] m_axi_gmem2_AWCACHE;
reg[2:0] m_axi_gmem2_AWPROT;
reg[3:0] m_axi_gmem2_AWQOS;
reg[3:0] m_axi_gmem2_AWREGION;
reg[0:0] m_axi_gmem2_AWUSER;
reg m_axi_gmem2_WVALID;
reg m_axi_gmem2_BREADY;
reg dout_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    gmem2_blk_n_AW;
wire    ap_CS_fsm_state2;
reg    gmem2_blk_n_B;
wire    ap_CS_fsm_state9;
reg    dout_blk_n;
reg    ap_block_state1;
reg   [63:0] dout_1_reg_93;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_done;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_idle;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_ready;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ldata_read;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWVALID;
wire   [63:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWADDR;
wire   [0:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWID;
wire   [31:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWLEN;
wire   [2:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWSIZE;
wire   [1:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWBURST;
wire   [1:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWLOCK;
wire   [3:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWCACHE;
wire   [2:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWPROT;
wire   [3:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWQOS;
wire   [3:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWREGION;
wire   [0:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWUSER;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WVALID;
wire   [7:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WDATA;
wire   [0:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WSTRB;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WLAST;
wire   [0:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WID;
wire   [0:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WUSER;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARVALID;
wire   [63:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARADDR;
wire   [0:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARID;
wire   [31:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARLEN;
wire   [2:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARSIZE;
wire   [1:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARBURST;
wire   [1:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARLOCK;
wire   [3:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARCACHE;
wire   [2:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARPROT;
wire   [3:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARQOS;
wire   [3:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARREGION;
wire   [0:0] grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARUSER;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_RREADY;
wire    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_BREADY;
reg    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
wire   [31:0] zext_ln1379_fu_83_p1;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 9'd1;
#0 grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start_reg = 1'b0;
end

Filter2d_accel_AxiStream2Axi_Pipeline_MMIterOutLoop2 grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start),
    .ap_done(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_done),
    .ap_idle(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_idle),
    .ap_ready(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_ready),
    .ldata_dout(ldata_dout),
    .ldata_num_data_valid(3'd0),
    .ldata_fifo_cap(3'd0),
    .ldata_empty_n(ldata_empty_n),
    .ldata_read(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ldata_read),
    .m_axi_gmem2_AWVALID(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWVALID),
    .m_axi_gmem2_AWREADY(m_axi_gmem2_AWREADY),
    .m_axi_gmem2_AWADDR(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWADDR),
    .m_axi_gmem2_AWID(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWID),
    .m_axi_gmem2_AWLEN(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWLEN),
    .m_axi_gmem2_AWSIZE(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWSIZE),
    .m_axi_gmem2_AWBURST(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWBURST),
    .m_axi_gmem2_AWLOCK(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWLOCK),
    .m_axi_gmem2_AWCACHE(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWCACHE),
    .m_axi_gmem2_AWPROT(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWPROT),
    .m_axi_gmem2_AWQOS(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWQOS),
    .m_axi_gmem2_AWREGION(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWREGION),
    .m_axi_gmem2_AWUSER(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWUSER),
    .m_axi_gmem2_WVALID(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WVALID),
    .m_axi_gmem2_WREADY(m_axi_gmem2_WREADY),
    .m_axi_gmem2_WDATA(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WDATA),
    .m_axi_gmem2_WSTRB(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WSTRB),
    .m_axi_gmem2_WLAST(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WLAST),
    .m_axi_gmem2_WID(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WID),
    .m_axi_gmem2_WUSER(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WUSER),
    .m_axi_gmem2_ARVALID(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARVALID),
    .m_axi_gmem2_ARREADY(1'b0),
    .m_axi_gmem2_ARADDR(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARADDR),
    .m_axi_gmem2_ARID(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARID),
    .m_axi_gmem2_ARLEN(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARLEN),
    .m_axi_gmem2_ARSIZE(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARSIZE),
    .m_axi_gmem2_ARBURST(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARBURST),
    .m_axi_gmem2_ARLOCK(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARLOCK),
    .m_axi_gmem2_ARCACHE(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARCACHE),
    .m_axi_gmem2_ARPROT(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARPROT),
    .m_axi_gmem2_ARQOS(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARQOS),
    .m_axi_gmem2_ARREGION(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARREGION),
    .m_axi_gmem2_ARUSER(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARUSER),
    .m_axi_gmem2_RVALID(1'b0),
    .m_axi_gmem2_RREADY(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_RREADY),
    .m_axi_gmem2_RDATA(8'd0),
    .m_axi_gmem2_RLAST(1'b0),
    .m_axi_gmem2_RID(1'd0),
    .m_axi_gmem2_RFIFONUM(11'd0),
    .m_axi_gmem2_RUSER(1'd0),
    .m_axi_gmem2_RRESP(2'd0),
    .m_axi_gmem2_BVALID(m_axi_gmem2_BVALID),
    .m_axi_gmem2_BREADY(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_BREADY),
    .m_axi_gmem2_BRESP(m_axi_gmem2_BRESP),
    .m_axi_gmem2_BID(m_axi_gmem2_BID),
    .m_axi_gmem2_BUSER(m_axi_gmem2_BUSER),
    .addrbound_read(addrbound_read),
    .dout_1(dout_1_reg_93)
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
        end else if (((m_axi_gmem2_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start_reg <= 1'b1;
        end else if ((grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_ready == 1'b1)) begin
            grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        dout_1_reg_93 <= dout_dout;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((m_axi_gmem2_AWREADY == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

always @ (*) begin
    if ((grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

always @ (*) begin
    if ((m_axi_gmem2_BVALID == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_gmem2_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((m_axi_gmem2_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        dout_blk_n = dout_empty_n;
    end else begin
        dout_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        dout_read = 1'b1;
    end else begin
        dout_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        gmem2_blk_n_AW = m_axi_gmem2_AWREADY;
    end else begin
        gmem2_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        gmem2_blk_n_B = m_axi_gmem2_BVALID;
    end else begin
        gmem2_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ldata_read = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ldata_read;
    end else begin
        ldata_read = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_gmem2_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_gmem2_AWADDR = dout_1_reg_93;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWADDR = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWADDR;
    end else begin
        m_axi_gmem2_AWADDR = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWBURST = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWBURST;
    end else begin
        m_axi_gmem2_AWBURST = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWCACHE = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWCACHE;
    end else begin
        m_axi_gmem2_AWCACHE = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWID = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWID;
    end else begin
        m_axi_gmem2_AWID = 1'd0;
    end
end

always @ (*) begin
    if (((m_axi_gmem2_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_gmem2_AWLEN = zext_ln1379_fu_83_p1;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWLEN = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWLEN;
    end else begin
        m_axi_gmem2_AWLEN = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWLOCK = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWLOCK;
    end else begin
        m_axi_gmem2_AWLOCK = 2'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWPROT = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWPROT;
    end else begin
        m_axi_gmem2_AWPROT = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWQOS = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWQOS;
    end else begin
        m_axi_gmem2_AWQOS = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWREGION = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWREGION;
    end else begin
        m_axi_gmem2_AWREGION = 4'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWSIZE = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWSIZE;
    end else begin
        m_axi_gmem2_AWSIZE = 3'd0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWUSER = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWUSER;
    end else begin
        m_axi_gmem2_AWUSER = 1'd0;
    end
end

always @ (*) begin
    if (((m_axi_gmem2_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_gmem2_AWVALID = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_AWVALID = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWVALID;
    end else begin
        m_axi_gmem2_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((m_axi_gmem2_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        m_axi_gmem2_BREADY = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_BREADY = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_BREADY;
    end else begin
        m_axi_gmem2_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        m_axi_gmem2_WVALID = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WVALID;
    end else begin
        m_axi_gmem2_WVALID = 1'b0;
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
            if (((m_axi_gmem2_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_done == 1'b1))) begin
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
            if (((m_axi_gmem2_BVALID == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((dout_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start_reg;

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

assign m_axi_gmem2_RREADY = 1'b0;

assign m_axi_gmem2_WDATA = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WDATA;

assign m_axi_gmem2_WID = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WID;

assign m_axi_gmem2_WLAST = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WLAST;

assign m_axi_gmem2_WSTRB = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WSTRB;

assign m_axi_gmem2_WUSER = grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WUSER;

assign zext_ln1379_fu_83_p1 = addrbound_read;

endmodule //Filter2d_accel_AxiStream2Axi
