-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Filter2d_accel_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    imgInput_data_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    imgInput_data_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
    imgInput_data_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
    imgInput_data_empty_n : IN STD_LOGIC;
    imgInput_data_read : OUT STD_LOGIC;
    imgOutput_data_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    imgOutput_data_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
    imgOutput_data_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
    imgOutput_data_full_n : IN STD_LOGIC;
    imgOutput_data_write : OUT STD_LOGIC;
    p_filter_kernel_0_0_val1 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_filter_kernel_0_1_val2 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_filter_kernel_0_2_val3 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_filter_kernel_1_0_val4 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_filter_kernel_1_1_val5 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_filter_kernel_1_2_val6 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_filter_kernel_2_0_val7 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_filter_kernel_2_1_val8 : IN STD_LOGIC_VECTOR (15 downto 0);
    p_filter_kernel_2_2_val9 : IN STD_LOGIC_VECTOR (15 downto 0);
    shift : IN STD_LOGIC_VECTOR (7 downto 0);
    rows : IN STD_LOGIC_VECTOR (15 downto 0);
    cols : IN STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of Filter2d_accel_xFFilter2Dkernel_0_0_128_128_0_0_1_2_2_1_1_128_3_3_1_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv17_5 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000101";
    constant ap_const_lv17_2 : STD_LOGIC_VECTOR (16 downto 0) := "00000000000000010";
    constant ap_const_lv17_1FFFF : STD_LOGIC_VECTOR (16 downto 0) := "11111111111111111";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv16_FFFC : STD_LOGIC_VECTOR (15 downto 0) := "1111111111111100";
    constant ap_const_lv16_4 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000100";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv16_FFFF : STD_LOGIC_VECTOR (15 downto 0) := "1111111111111111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv17_1FFFE : STD_LOGIC_VECTOR (16 downto 0) := "11111111111111110";
    constant ap_const_lv15_0 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000000";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal zext_ln695_fu_235_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal zext_ln695_reg_586 : STD_LOGIC_VECTOR (16 downto 0);
    signal heightloop_fu_239_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal heightloop_reg_594 : STD_LOGIC_VECTOR (16 downto 0);
    signal widthloop_fu_249_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal widthloop_reg_599 : STD_LOGIC_VECTOR (16 downto 0);
    signal sub62_fu_255_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal sub62_reg_604 : STD_LOGIC_VECTOR (16 downto 0);
    signal trunc_ln707_fu_261_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln707_reg_610 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_2_fu_282_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal i_2_reg_618 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ImagLocy_fu_288_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ImagLocy_reg_623 : STD_LOGIC_VECTOR (15 downto 0);
    signal cmp204_fu_294_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp204_reg_631 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_636 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_7_reg_642 : STD_LOGIC_VECTOR (14 downto 0);
    signal ImagLocy_cast_fu_323_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal ImagLocy_cast_reg_647 : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ref_fu_337_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal ref_reg_655 : STD_LOGIC_VECTOR (1 downto 0);
    signal y_2_fu_344_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal y_2_reg_662 : STD_LOGIC_VECTOR (16 downto 0);
    signal brmerge30_fu_366_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge30_reg_668 : STD_LOGIC_VECTOR (0 downto 0);
    signal src_kernel_win_load_reg_673 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal src_kernel_win_3_load_reg_678 : STD_LOGIC_VECTOR (7 downto 0);
    signal src_kernel_win_5_load_reg_683 : STD_LOGIC_VECTOR (7 downto 0);
    signal cmp1_i18_fu_393_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp1_i18_reg_688 : STD_LOGIC_VECTOR (0 downto 0);
    signal locy_fu_411_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal locy_reg_693 : STD_LOGIC_VECTOR (1 downto 0);
    signal locy_1_fu_454_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal locy_1_reg_698 : STD_LOGIC_VECTOR (1 downto 0);
    signal cmp179_1_fu_459_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp179_1_reg_703 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_45_fu_466_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_45_reg_708 : STD_LOGIC_VECTOR (0 downto 0);
    signal locy_2_fu_478_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal locy_2_reg_713 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_6_reg_718 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start : STD_LOGIC;
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_done : STD_LOGIC;
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_idle : STD_LOGIC;
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_ready : STD_LOGIC;
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgInput_data_read : STD_LOGIC;
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgOutput_data_din : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgOutput_data_write : STD_LOGIC;
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_11_out : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_11_out_ap_vld : STD_LOGIC;
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_10_out_o : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_10_out_o_ap_vld : STD_LOGIC;
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_9_out : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_9_out_ap_vld : STD_LOGIC;
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_8_out_o : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_8_out_o_ap_vld : STD_LOGIC;
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_7_out_o : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_7_out_o_ap_vld : STD_LOGIC;
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_6_out : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_6_out_ap_vld : STD_LOGIC;
    signal grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal src_kernel_win_5_fu_120 : STD_LOGIC_VECTOR (7 downto 0);
    signal src_kernel_win_4_fu_116 : STD_LOGIC_VECTOR (7 downto 0);
    signal src_kernel_win_3_fu_112 : STD_LOGIC_VECTOR (7 downto 0);
    signal src_kernel_win_2_fu_108 : STD_LOGIC_VECTOR (7 downto 0);
    signal src_kernel_win_1_fu_104 : STD_LOGIC_VECTOR (7 downto 0);
    signal src_kernel_win_fu_100 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_fu_96 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal zext_ln696_fu_245_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal zext_ln707_fu_273_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal slt_fu_326_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal rev56_fu_331_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal notrhs_fu_355_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_fu_350_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp57_fu_318_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge_not_fu_360_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal rev_fu_388_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond25_fu_397_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_fu_385_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal t_fu_403_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal y_1_fu_416_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal slt57_fu_430_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp_i17_1_fu_425_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal rev58_fu_434_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_cond26_fu_440_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal empty_43_fu_421_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal t_1_fu_446_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal empty_44_fu_463_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal t_2_fu_470_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln707_fu_277_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component Filter2d_accel_xFFilter2Dkernel_Pipeline_COL_LOOP IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        imgInput_data_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        imgInput_data_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
        imgInput_data_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
        imgInput_data_empty_n : IN STD_LOGIC;
        imgInput_data_read : OUT STD_LOGIC;
        imgOutput_data_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        imgOutput_data_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
        imgOutput_data_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
        imgOutput_data_full_n : IN STD_LOGIC;
        imgOutput_data_write : OUT STD_LOGIC;
        src_kernel_win_5 : IN STD_LOGIC_VECTOR (7 downto 0);
        src_kernel_win_3 : IN STD_LOGIC_VECTOR (7 downto 0);
        src_kernel_win : IN STD_LOGIC_VECTOR (7 downto 0);
        widthloop : IN STD_LOGIC_VECTOR (16 downto 0);
        cmp204 : IN STD_LOGIC_VECTOR (0 downto 0);
        zext_ln696 : IN STD_LOGIC_VECTOR (15 downto 0);
        brmerge30 : IN STD_LOGIC_VECTOR (0 downto 0);
        locy : IN STD_LOGIC_VECTOR (1 downto 0);
        cmp1_i18 : IN STD_LOGIC_VECTOR (0 downto 0);
        cmp179_1 : IN STD_LOGIC_VECTOR (0 downto 0);
        empty_26 : IN STD_LOGIC_VECTOR (0 downto 0);
        locy_1 : IN STD_LOGIC_VECTOR (1 downto 0);
        empty_27 : IN STD_LOGIC_VECTOR (0 downto 0);
        empty : IN STD_LOGIC_VECTOR (0 downto 0);
        locy_2 : IN STD_LOGIC_VECTOR (1 downto 0);
        p_filter_kernel_0_0_val1 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_filter_kernel_0_1_val2 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_filter_kernel_0_2_val3 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_filter_kernel_1_0_val4 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_filter_kernel_1_1_val5 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_filter_kernel_1_2_val6 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_filter_kernel_2_0_val7 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_filter_kernel_2_1_val8 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_filter_kernel_2_2_val9 : IN STD_LOGIC_VECTOR (15 downto 0);
        shift : IN STD_LOGIC_VECTOR (7 downto 0);
        src_kernel_win_11_out : OUT STD_LOGIC_VECTOR (7 downto 0);
        src_kernel_win_11_out_ap_vld : OUT STD_LOGIC;
        src_kernel_win_10_out_i : IN STD_LOGIC_VECTOR (7 downto 0);
        src_kernel_win_10_out_o : OUT STD_LOGIC_VECTOR (7 downto 0);
        src_kernel_win_10_out_o_ap_vld : OUT STD_LOGIC;
        src_kernel_win_9_out : OUT STD_LOGIC_VECTOR (7 downto 0);
        src_kernel_win_9_out_ap_vld : OUT STD_LOGIC;
        src_kernel_win_8_out_i : IN STD_LOGIC_VECTOR (7 downto 0);
        src_kernel_win_8_out_o : OUT STD_LOGIC_VECTOR (7 downto 0);
        src_kernel_win_8_out_o_ap_vld : OUT STD_LOGIC;
        src_kernel_win_7_out_i : IN STD_LOGIC_VECTOR (7 downto 0);
        src_kernel_win_7_out_o : OUT STD_LOGIC_VECTOR (7 downto 0);
        src_kernel_win_7_out_o_ap_vld : OUT STD_LOGIC;
        src_kernel_win_6_out : OUT STD_LOGIC_VECTOR (7 downto 0);
        src_kernel_win_6_out_ap_vld : OUT STD_LOGIC );
    end component;



begin
    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196 : component Filter2d_accel_xFFilter2Dkernel_Pipeline_COL_LOOP
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start,
        ap_done => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_done,
        ap_idle => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_idle,
        ap_ready => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_ready,
        imgInput_data_dout => imgInput_data_dout,
        imgInput_data_num_data_valid => ap_const_lv3_0,
        imgInput_data_fifo_cap => ap_const_lv3_0,
        imgInput_data_empty_n => imgInput_data_empty_n,
        imgInput_data_read => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgInput_data_read,
        imgOutput_data_din => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgOutput_data_din,
        imgOutput_data_num_data_valid => ap_const_lv3_0,
        imgOutput_data_fifo_cap => ap_const_lv3_0,
        imgOutput_data_full_n => imgOutput_data_full_n,
        imgOutput_data_write => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgOutput_data_write,
        src_kernel_win_5 => src_kernel_win_5_load_reg_683,
        src_kernel_win_3 => src_kernel_win_3_load_reg_678,
        src_kernel_win => src_kernel_win_load_reg_673,
        widthloop => widthloop_reg_599,
        cmp204 => cmp204_reg_631,
        zext_ln696 => cols,
        brmerge30 => brmerge30_reg_668,
        locy => locy_reg_693,
        cmp1_i18 => cmp1_i18_reg_688,
        cmp179_1 => cmp179_1_reg_703,
        empty_26 => tmp_6_reg_718,
        locy_1 => locy_1_reg_698,
        empty_27 => empty_45_reg_708,
        empty => tmp_reg_636,
        locy_2 => locy_2_reg_713,
        p_filter_kernel_0_0_val1 => p_filter_kernel_0_0_val1,
        p_filter_kernel_0_1_val2 => p_filter_kernel_0_1_val2,
        p_filter_kernel_0_2_val3 => p_filter_kernel_0_2_val3,
        p_filter_kernel_1_0_val4 => p_filter_kernel_1_0_val4,
        p_filter_kernel_1_1_val5 => p_filter_kernel_1_1_val5,
        p_filter_kernel_1_2_val6 => p_filter_kernel_1_2_val6,
        p_filter_kernel_2_0_val7 => p_filter_kernel_2_0_val7,
        p_filter_kernel_2_1_val8 => p_filter_kernel_2_1_val8,
        p_filter_kernel_2_2_val9 => p_filter_kernel_2_2_val9,
        shift => shift,
        src_kernel_win_11_out => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_11_out,
        src_kernel_win_11_out_ap_vld => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_11_out_ap_vld,
        src_kernel_win_10_out_i => src_kernel_win_4_fu_116,
        src_kernel_win_10_out_o => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_10_out_o,
        src_kernel_win_10_out_o_ap_vld => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_10_out_o_ap_vld,
        src_kernel_win_9_out => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_9_out,
        src_kernel_win_9_out_ap_vld => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_9_out_ap_vld,
        src_kernel_win_8_out_i => src_kernel_win_2_fu_108,
        src_kernel_win_8_out_o => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_8_out_o,
        src_kernel_win_8_out_o_ap_vld => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_8_out_o_ap_vld,
        src_kernel_win_7_out_i => src_kernel_win_1_fu_104,
        src_kernel_win_7_out_o => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_7_out_o,
        src_kernel_win_7_out_o_ap_vld => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_7_out_o_ap_vld,
        src_kernel_win_6_out => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_6_out,
        src_kernel_win_6_out_ap_vld => grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_6_out_ap_vld);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_ready = ap_const_logic_1)) then 
                    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_fu_96_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_fu_96 <= ap_const_lv16_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                i_fu_96 <= i_2_reg_618;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                ImagLocy_cast_reg_647 <= ImagLocy_cast_fu_323_p1;
                brmerge30_reg_668 <= brmerge30_fu_366_p2;
                ref_reg_655 <= ref_fu_337_p3;
                y_2_reg_662 <= y_2_fu_344_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                ImagLocy_reg_623 <= ImagLocy_fu_288_p2;
                cmp204_reg_631 <= cmp204_fu_294_p2;
                i_2_reg_618 <= i_2_fu_282_p2;
                tmp_7_reg_642 <= ImagLocy_fu_288_p2(15 downto 1);
                tmp_reg_636 <= ImagLocy_fu_288_p2(15 downto 15);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                cmp179_1_reg_703 <= cmp179_1_fu_459_p2;
                cmp1_i18_reg_688 <= cmp1_i18_fu_393_p2;
                empty_45_reg_708 <= empty_45_fu_466_p2;
                locy_1_reg_698 <= locy_1_fu_454_p2;
                locy_2_reg_713 <= locy_2_fu_478_p2;
                locy_reg_693 <= locy_fu_411_p2;
                src_kernel_win_3_load_reg_678 <= src_kernel_win_3_fu_112;
                src_kernel_win_5_load_reg_683 <= src_kernel_win_5_fu_120;
                src_kernel_win_load_reg_673 <= src_kernel_win_fu_100;
                tmp_6_reg_718 <= y_1_fu_416_p2(16 downto 16);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                heightloop_reg_594 <= heightloop_fu_239_p2;
                sub62_reg_604 <= sub62_fu_255_p2;
                trunc_ln707_reg_610 <= trunc_ln707_fu_261_p1;
                widthloop_reg_599 <= widthloop_fu_249_p2;
                    zext_ln695_reg_586(15 downto 0) <= zext_ln695_fu_235_p1(15 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_7_out_o_ap_vld = ap_const_logic_1))) then
                src_kernel_win_1_fu_104 <= grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_7_out_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_8_out_o_ap_vld = ap_const_logic_1))) then
                src_kernel_win_2_fu_108 <= grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_8_out_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_9_out_ap_vld = ap_const_logic_1))) then
                src_kernel_win_3_fu_112 <= grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_9_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_10_out_o_ap_vld = ap_const_logic_1))) then
                src_kernel_win_4_fu_116 <= grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_10_out_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_11_out_ap_vld = ap_const_logic_1))) then
                src_kernel_win_5_fu_120 <= grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_11_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_6_out_ap_vld = ap_const_logic_1))) then
                src_kernel_win_fu_100 <= grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_src_kernel_win_6_out;
            end if;
        end if;
    end process;
    zext_ln695_reg_586(16) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_done, ap_CS_fsm_state6, icmp_ln707_fu_277_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln707_fu_277_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
        ImagLocy_cast_fu_323_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(ImagLocy_reg_623),17));

    ImagLocy_fu_288_p2 <= std_logic_vector(unsigned(i_fu_96) + unsigned(ap_const_lv16_FFFC));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;

    ap_ST_fsm_state6_blk_assign_proc : process(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_done)
    begin
        if ((grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state6_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state6_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln707_fu_277_p2)
    begin
        if ((((icmp_ln707_fu_277_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln707_fu_277_p2)
    begin
        if (((icmp_ln707_fu_277_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    brmerge30_fu_366_p2 <= (cmp57_fu_318_p2 or brmerge_not_fu_360_p2);
    brmerge_not_fu_360_p2 <= (notrhs_fu_355_p2 and icmp_fu_350_p2);
    cmp179_1_fu_459_p2 <= "1" when (signed(ImagLocy_cast_reg_647) > signed(zext_ln695_reg_586)) else "0";
    cmp1_i18_fu_393_p2 <= "1" when (signed(ImagLocy_cast_reg_647) < signed(zext_ln695_reg_586)) else "0";
    cmp204_fu_294_p2 <= "1" when (unsigned(i_fu_96) > unsigned(ap_const_lv16_4)) else "0";
    cmp57_fu_318_p2 <= "1" when (signed(ImagLocy_reg_623) < signed(ap_const_lv16_FFFF)) else "0";
    cmp_i17_1_fu_425_p2 <= "1" when (signed(ImagLocy_reg_623) > signed(ap_const_lv16_0)) else "0";
    empty_43_fu_421_p1 <= y_1_fu_416_p2(2 - 1 downto 0);
    empty_44_fu_463_p1 <= y_2_reg_662(2 - 1 downto 0);
    empty_45_fu_466_p2 <= "1" when (unsigned(y_2_reg_662) < unsigned(zext_ln695_reg_586)) else "0";
    empty_fu_385_p1 <= ImagLocy_reg_623(2 - 1 downto 0);
    grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start <= grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_ap_start_reg;
    heightloop_fu_239_p2 <= std_logic_vector(unsigned(zext_ln695_fu_235_p1) + unsigned(ap_const_lv17_5));
    i_2_fu_282_p2 <= std_logic_vector(unsigned(i_fu_96) + unsigned(ap_const_lv16_1));
    icmp_fu_350_p2 <= "1" when (signed(tmp_7_reg_642) > signed(ap_const_lv15_0)) else "0";
    icmp_ln707_fu_277_p2 <= "1" when (unsigned(heightloop_reg_594) > unsigned(zext_ln707_fu_273_p1)) else "0";

    imgInput_data_read_assign_proc : process(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgInput_data_read, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            imgInput_data_read <= grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgInput_data_read;
        else 
            imgInput_data_read <= ap_const_logic_0;
        end if; 
    end process;

    imgOutput_data_din <= grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgOutput_data_din;

    imgOutput_data_write_assign_proc : process(grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgOutput_data_write, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            imgOutput_data_write <= grp_xFFilter2Dkernel_Pipeline_COL_LOOP_fu_196_imgOutput_data_write;
        else 
            imgOutput_data_write <= ap_const_logic_0;
        end if; 
    end process;

    locy_1_fu_454_p2 <= std_logic_vector(unsigned(ref_reg_655) - unsigned(t_1_fu_446_p3));
    locy_2_fu_478_p2 <= std_logic_vector(unsigned(ref_reg_655) - unsigned(t_2_fu_470_p3));
    locy_fu_411_p2 <= std_logic_vector(unsigned(ref_reg_655) - unsigned(t_fu_403_p3));
    notrhs_fu_355_p2 <= "1" when (signed(sub62_reg_604) > signed(ImagLocy_cast_fu_323_p1)) else "0";
    or_cond25_fu_397_p2 <= (rev_fu_388_p2 and cmp1_i18_fu_393_p2);
    or_cond26_fu_440_p2 <= (rev58_fu_434_p2 and cmp_i17_1_fu_425_p2);
    ref_fu_337_p3 <= 
        trunc_ln707_reg_610 when (rev56_fu_331_p2(0) = '1') else 
        ap_const_lv2_2;
    rev56_fu_331_p2 <= (slt_fu_326_p2 xor ap_const_lv1_1);
    rev58_fu_434_p2 <= (slt57_fu_430_p2 xor ap_const_lv1_1);
    rev_fu_388_p2 <= (tmp_reg_636 xor ap_const_lv1_1);
    slt57_fu_430_p2 <= "1" when (signed(zext_ln695_reg_586) < signed(ImagLocy_cast_reg_647)) else "0";
    slt_fu_326_p2 <= "1" when (signed(ImagLocy_cast_fu_323_p1) < signed(sub62_reg_604)) else "0";
    sub62_fu_255_p2 <= std_logic_vector(unsigned(zext_ln695_fu_235_p1) + unsigned(ap_const_lv17_1FFFF));
    t_1_fu_446_p3 <= 
        empty_43_fu_421_p1 when (or_cond26_fu_440_p2(0) = '1') else 
        ap_const_lv2_3;
    t_2_fu_470_p3 <= 
        empty_44_fu_463_p1 when (empty_45_fu_466_p2(0) = '1') else 
        ap_const_lv2_3;
    t_fu_403_p3 <= 
        empty_fu_385_p1 when (or_cond25_fu_397_p2(0) = '1') else 
        ap_const_lv2_3;
    trunc_ln707_fu_261_p1 <= sub62_fu_255_p2(2 - 1 downto 0);
    widthloop_fu_249_p2 <= std_logic_vector(unsigned(zext_ln696_fu_245_p1) + unsigned(ap_const_lv17_2));
    y_1_fu_416_p2 <= std_logic_vector(signed(ImagLocy_cast_reg_647) + signed(ap_const_lv17_1FFFF));
    y_2_fu_344_p2 <= std_logic_vector(signed(ImagLocy_cast_fu_323_p1) + signed(ap_const_lv17_1FFFE));
    zext_ln695_fu_235_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(rows),17));
    zext_ln696_fu_245_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(cols),17));
    zext_ln707_fu_273_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_fu_96),17));
end behav;
