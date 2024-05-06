// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of shift
//        bit 7~0 - shift[7:0] (Read/Write)
//        others  - reserved
// 0x14 : reserved
// 0x18 : Data signal of rows
//        bit 31~0 - rows[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of cols
//        bit 31~0 - cols[31:0] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFILTER2D_ACCEL_CONTROL_ADDR_AP_CTRL    0x00
#define XFILTER2D_ACCEL_CONTROL_ADDR_GIE        0x04
#define XFILTER2D_ACCEL_CONTROL_ADDR_IER        0x08
#define XFILTER2D_ACCEL_CONTROL_ADDR_ISR        0x0c
#define XFILTER2D_ACCEL_CONTROL_ADDR_SHIFT_DATA 0x10
#define XFILTER2D_ACCEL_CONTROL_BITS_SHIFT_DATA 8
#define XFILTER2D_ACCEL_CONTROL_ADDR_ROWS_DATA  0x18
#define XFILTER2D_ACCEL_CONTROL_BITS_ROWS_DATA  32
#define XFILTER2D_ACCEL_CONTROL_ADDR_COLS_DATA  0x20
#define XFILTER2D_ACCEL_CONTROL_BITS_COLS_DATA  32

// control_r
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of img_in
//        bit 31~0 - img_in[31:0] (Read/Write)
// 0x14 : Data signal of img_in
//        bit 31~0 - img_in[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of filter
//        bit 31~0 - filter[31:0] (Read/Write)
// 0x20 : Data signal of filter
//        bit 31~0 - filter[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of conv_out
//        bit 31~0 - conv_out[31:0] (Read/Write)
// 0x2c : Data signal of conv_out
//        bit 31~0 - conv_out[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of maxpool_out
//        bit 31~0 - maxpool_out[31:0] (Read/Write)
// 0x38 : Data signal of maxpool_out
//        bit 31~0 - maxpool_out[63:32] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFILTER2D_ACCEL_CONTROL_R_ADDR_IMG_IN_DATA      0x10
#define XFILTER2D_ACCEL_CONTROL_R_BITS_IMG_IN_DATA      64
#define XFILTER2D_ACCEL_CONTROL_R_ADDR_FILTER_DATA      0x1c
#define XFILTER2D_ACCEL_CONTROL_R_BITS_FILTER_DATA      64
#define XFILTER2D_ACCEL_CONTROL_R_ADDR_CONV_OUT_DATA    0x28
#define XFILTER2D_ACCEL_CONTROL_R_BITS_CONV_OUT_DATA    64
#define XFILTER2D_ACCEL_CONTROL_R_ADDR_MAXPOOL_OUT_DATA 0x34
#define XFILTER2D_ACCEL_CONTROL_R_BITS_MAXPOOL_OUT_DATA 64

