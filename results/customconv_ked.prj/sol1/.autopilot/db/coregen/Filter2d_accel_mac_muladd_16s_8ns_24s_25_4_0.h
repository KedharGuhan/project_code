// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0__HH__
#define __Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0__HH__
#include "Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0_DSP48_0.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0_DSP48_0 Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0_DSP48_0_U;

    SC_CTOR(Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0):  Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0_DSP48_0_U ("Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0_DSP48_0_U") {
        Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0_DSP48_0_U.clk(clk);
        Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0_DSP48_0_U.rst(reset);
        Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0_DSP48_0_U.ce(ce);
        Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0_DSP48_0_U.in0(din0);
        Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0_DSP48_0_U.in1(din1);
        Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0_DSP48_0_U.in2(din2);
        Filter2d_accel_mac_muladd_16s_8ns_24s_25_4_0_DSP48_0_U.dout(dout);

    }

};

#endif //
