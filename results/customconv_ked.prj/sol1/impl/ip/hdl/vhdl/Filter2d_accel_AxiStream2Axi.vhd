-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Filter2d_accel_AxiStream2Axi is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ldata_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    ldata_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
    ldata_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
    ldata_empty_n : IN STD_LOGIC;
    ldata_read : OUT STD_LOGIC;
    m_axi_gmem2_AWVALID : OUT STD_LOGIC;
    m_axi_gmem2_AWREADY : IN STD_LOGIC;
    m_axi_gmem2_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem2_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem2_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem2_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem2_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem2_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem2_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem2_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem2_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem2_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem2_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem2_WVALID : OUT STD_LOGIC;
    m_axi_gmem2_WREADY : IN STD_LOGIC;
    m_axi_gmem2_WDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
    m_axi_gmem2_WSTRB : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem2_WLAST : OUT STD_LOGIC;
    m_axi_gmem2_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem2_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem2_ARVALID : OUT STD_LOGIC;
    m_axi_gmem2_ARREADY : IN STD_LOGIC;
    m_axi_gmem2_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem2_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem2_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem2_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem2_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem2_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem2_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem2_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem2_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem2_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem2_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem2_RVALID : IN STD_LOGIC;
    m_axi_gmem2_RREADY : OUT STD_LOGIC;
    m_axi_gmem2_RDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    m_axi_gmem2_RLAST : IN STD_LOGIC;
    m_axi_gmem2_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem2_RFIFONUM : IN STD_LOGIC_VECTOR (10 downto 0);
    m_axi_gmem2_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem2_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem2_BVALID : IN STD_LOGIC;
    m_axi_gmem2_BREADY : OUT STD_LOGIC;
    m_axi_gmem2_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem2_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem2_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    dout_dout : IN STD_LOGIC_VECTOR (63 downto 0);
    dout_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
    dout_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
    dout_empty_n : IN STD_LOGIC;
    dout_read : OUT STD_LOGIC;
    addrbound_read : IN STD_LOGIC_VECTOR (14 downto 0) );
end;


architecture behav of Filter2d_accel_AxiStream2Axi is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal gmem2_blk_n_AW : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal gmem2_blk_n_B : STD_LOGIC;
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal dout_blk_n : STD_LOGIC;
    signal ap_block_state1 : BOOLEAN;
    signal dout_1_reg_93 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start : STD_LOGIC;
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_done : STD_LOGIC;
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_idle : STD_LOGIC;
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_ready : STD_LOGIC;
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ldata_read : STD_LOGIC;
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWVALID : STD_LOGIC;
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WVALID : STD_LOGIC;
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WDATA : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WSTRB : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WLAST : STD_LOGIC;
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARVALID : STD_LOGIC;
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARID : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_RREADY : STD_LOGIC;
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_BREADY : STD_LOGIC;
    signal grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal zext_ln1379_fu_83_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ST_fsm_state8_blk : STD_LOGIC;
    signal ap_ST_fsm_state9_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component Filter2d_accel_AxiStream2Axi_Pipeline_MMIterOutLoop2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ldata_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        ldata_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
        ldata_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
        ldata_empty_n : IN STD_LOGIC;
        ldata_read : OUT STD_LOGIC;
        m_axi_gmem2_AWVALID : OUT STD_LOGIC;
        m_axi_gmem2_AWREADY : IN STD_LOGIC;
        m_axi_gmem2_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_gmem2_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem2_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_gmem2_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem2_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem2_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem2_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem2_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem2_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem2_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem2_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem2_WVALID : OUT STD_LOGIC;
        m_axi_gmem2_WREADY : IN STD_LOGIC;
        m_axi_gmem2_WDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
        m_axi_gmem2_WSTRB : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem2_WLAST : OUT STD_LOGIC;
        m_axi_gmem2_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem2_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem2_ARVALID : OUT STD_LOGIC;
        m_axi_gmem2_ARREADY : IN STD_LOGIC;
        m_axi_gmem2_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_gmem2_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem2_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_gmem2_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem2_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem2_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem2_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem2_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem2_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem2_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem2_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem2_RVALID : IN STD_LOGIC;
        m_axi_gmem2_RREADY : OUT STD_LOGIC;
        m_axi_gmem2_RDATA : IN STD_LOGIC_VECTOR (7 downto 0);
        m_axi_gmem2_RLAST : IN STD_LOGIC;
        m_axi_gmem2_RID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem2_RFIFONUM : IN STD_LOGIC_VECTOR (10 downto 0);
        m_axi_gmem2_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem2_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem2_BVALID : IN STD_LOGIC;
        m_axi_gmem2_BREADY : OUT STD_LOGIC;
        m_axi_gmem2_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem2_BID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem2_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        addrbound_read : IN STD_LOGIC_VECTOR (14 downto 0);
        dout_1 : IN STD_LOGIC_VECTOR (63 downto 0) );
    end component;



begin
    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67 : component Filter2d_accel_AxiStream2Axi_Pipeline_MMIterOutLoop2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start,
        ap_done => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_done,
        ap_idle => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_idle,
        ap_ready => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_ready,
        ldata_dout => ldata_dout,
        ldata_num_data_valid => ap_const_lv3_0,
        ldata_fifo_cap => ap_const_lv3_0,
        ldata_empty_n => ldata_empty_n,
        ldata_read => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ldata_read,
        m_axi_gmem2_AWVALID => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWVALID,
        m_axi_gmem2_AWREADY => m_axi_gmem2_AWREADY,
        m_axi_gmem2_AWADDR => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWADDR,
        m_axi_gmem2_AWID => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWID,
        m_axi_gmem2_AWLEN => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWLEN,
        m_axi_gmem2_AWSIZE => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWSIZE,
        m_axi_gmem2_AWBURST => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWBURST,
        m_axi_gmem2_AWLOCK => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWLOCK,
        m_axi_gmem2_AWCACHE => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWCACHE,
        m_axi_gmem2_AWPROT => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWPROT,
        m_axi_gmem2_AWQOS => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWQOS,
        m_axi_gmem2_AWREGION => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWREGION,
        m_axi_gmem2_AWUSER => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWUSER,
        m_axi_gmem2_WVALID => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WVALID,
        m_axi_gmem2_WREADY => m_axi_gmem2_WREADY,
        m_axi_gmem2_WDATA => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WDATA,
        m_axi_gmem2_WSTRB => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WSTRB,
        m_axi_gmem2_WLAST => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WLAST,
        m_axi_gmem2_WID => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WID,
        m_axi_gmem2_WUSER => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WUSER,
        m_axi_gmem2_ARVALID => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARVALID,
        m_axi_gmem2_ARREADY => ap_const_logic_0,
        m_axi_gmem2_ARADDR => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARADDR,
        m_axi_gmem2_ARID => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARID,
        m_axi_gmem2_ARLEN => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARLEN,
        m_axi_gmem2_ARSIZE => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARSIZE,
        m_axi_gmem2_ARBURST => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARBURST,
        m_axi_gmem2_ARLOCK => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARLOCK,
        m_axi_gmem2_ARCACHE => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARCACHE,
        m_axi_gmem2_ARPROT => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARPROT,
        m_axi_gmem2_ARQOS => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARQOS,
        m_axi_gmem2_ARREGION => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARREGION,
        m_axi_gmem2_ARUSER => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_ARUSER,
        m_axi_gmem2_RVALID => ap_const_logic_0,
        m_axi_gmem2_RREADY => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_RREADY,
        m_axi_gmem2_RDATA => ap_const_lv8_0,
        m_axi_gmem2_RLAST => ap_const_logic_0,
        m_axi_gmem2_RID => ap_const_lv1_0,
        m_axi_gmem2_RFIFONUM => ap_const_lv11_0,
        m_axi_gmem2_RUSER => ap_const_lv1_0,
        m_axi_gmem2_RRESP => ap_const_lv2_0,
        m_axi_gmem2_BVALID => m_axi_gmem2_BVALID,
        m_axi_gmem2_BREADY => grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_BREADY,
        m_axi_gmem2_BRESP => m_axi_gmem2_BRESP,
        m_axi_gmem2_BID => m_axi_gmem2_BID,
        m_axi_gmem2_BUSER => m_axi_gmem2_BUSER,
        addrbound_read => addrbound_read,
        dout_1 => dout_1_reg_93);





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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((m_axi_gmem2_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state9))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_ready = ap_const_logic_1)) then 
                    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_const_boolean_0 = ap_block_state1))) then
                dout_1_reg_93 <= dout_dout;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, m_axi_gmem2_AWREADY, m_axi_gmem2_BVALID, ap_CS_fsm_state2, ap_CS_fsm_state9, ap_block_state1, grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_done, ap_CS_fsm_state4)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_const_boolean_0 = ap_block_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((m_axi_gmem2_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                if (((m_axi_gmem2_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state9))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_block_state1)
    begin
        if ((ap_const_boolean_1 = ap_block_state1)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(m_axi_gmem2_AWREADY)
    begin
        if ((m_axi_gmem2_AWREADY = ap_const_logic_0)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state3_blk <= ap_const_logic_0;

    ap_ST_fsm_state4_blk_assign_proc : process(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_done)
    begin
        if ((grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state4_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state4_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state5_blk <= ap_const_logic_0;
    ap_ST_fsm_state6_blk <= ap_const_logic_0;
    ap_ST_fsm_state7_blk <= ap_const_logic_0;
    ap_ST_fsm_state8_blk <= ap_const_logic_0;

    ap_ST_fsm_state9_blk_assign_proc : process(m_axi_gmem2_BVALID)
    begin
        if ((m_axi_gmem2_BVALID = ap_const_logic_0)) then 
            ap_ST_fsm_state9_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state9_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, dout_empty_n)
    begin
                ap_block_state1 <= ((dout_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, m_axi_gmem2_BVALID, ap_CS_fsm_state9)
    begin
        if (((m_axi_gmem2_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
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


    ap_ready_assign_proc : process(m_axi_gmem2_BVALID, ap_CS_fsm_state9)
    begin
        if (((m_axi_gmem2_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    dout_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, dout_empty_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            dout_blk_n <= dout_empty_n;
        else 
            dout_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    dout_read_assign_proc : process(ap_CS_fsm_state1, ap_block_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_const_boolean_0 = ap_block_state1))) then 
            dout_read <= ap_const_logic_1;
        else 
            dout_read <= ap_const_logic_0;
        end if; 
    end process;


    gmem2_blk_n_AW_assign_proc : process(m_axi_gmem2_AWREADY, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            gmem2_blk_n_AW <= m_axi_gmem2_AWREADY;
        else 
            gmem2_blk_n_AW <= ap_const_logic_1;
        end if; 
    end process;


    gmem2_blk_n_B_assign_proc : process(m_axi_gmem2_BVALID, ap_CS_fsm_state9)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            gmem2_blk_n_B <= m_axi_gmem2_BVALID;
        else 
            gmem2_blk_n_B <= ap_const_logic_1;
        end if; 
    end process;

    grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ap_start_reg;

    ldata_read_assign_proc : process(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ldata_read, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ldata_read <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_ldata_read;
        else 
            ldata_read <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem2_ARADDR <= ap_const_lv64_0;
    m_axi_gmem2_ARBURST <= ap_const_lv2_0;
    m_axi_gmem2_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem2_ARID <= ap_const_lv1_0;
    m_axi_gmem2_ARLEN <= ap_const_lv32_0;
    m_axi_gmem2_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem2_ARPROT <= ap_const_lv3_0;
    m_axi_gmem2_ARQOS <= ap_const_lv4_0;
    m_axi_gmem2_ARREGION <= ap_const_lv4_0;
    m_axi_gmem2_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem2_ARUSER <= ap_const_lv1_0;
    m_axi_gmem2_ARVALID <= ap_const_logic_0;

    m_axi_gmem2_AWADDR_assign_proc : process(m_axi_gmem2_AWREADY, ap_CS_fsm_state2, dout_1_reg_93, grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWADDR, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((m_axi_gmem2_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem2_AWADDR <= dout_1_reg_93;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_gmem2_AWADDR <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWADDR;
        else 
            m_axi_gmem2_AWADDR <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    m_axi_gmem2_AWBURST_assign_proc : process(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWBURST, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_gmem2_AWBURST <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWBURST;
        else 
            m_axi_gmem2_AWBURST <= ap_const_lv2_0;
        end if; 
    end process;


    m_axi_gmem2_AWCACHE_assign_proc : process(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWCACHE, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_gmem2_AWCACHE <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWCACHE;
        else 
            m_axi_gmem2_AWCACHE <= ap_const_lv4_0;
        end if; 
    end process;


    m_axi_gmem2_AWID_assign_proc : process(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWID, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_gmem2_AWID <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWID;
        else 
            m_axi_gmem2_AWID <= ap_const_lv1_0;
        end if; 
    end process;


    m_axi_gmem2_AWLEN_assign_proc : process(m_axi_gmem2_AWREADY, ap_CS_fsm_state2, grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWLEN, ap_CS_fsm_state3, ap_CS_fsm_state4, zext_ln1379_fu_83_p1)
    begin
        if (((m_axi_gmem2_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem2_AWLEN <= zext_ln1379_fu_83_p1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_gmem2_AWLEN <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWLEN;
        else 
            m_axi_gmem2_AWLEN <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    m_axi_gmem2_AWLOCK_assign_proc : process(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWLOCK, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_gmem2_AWLOCK <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWLOCK;
        else 
            m_axi_gmem2_AWLOCK <= ap_const_lv2_0;
        end if; 
    end process;


    m_axi_gmem2_AWPROT_assign_proc : process(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWPROT, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_gmem2_AWPROT <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWPROT;
        else 
            m_axi_gmem2_AWPROT <= ap_const_lv3_0;
        end if; 
    end process;


    m_axi_gmem2_AWQOS_assign_proc : process(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWQOS, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_gmem2_AWQOS <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWQOS;
        else 
            m_axi_gmem2_AWQOS <= ap_const_lv4_0;
        end if; 
    end process;


    m_axi_gmem2_AWREGION_assign_proc : process(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWREGION, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_gmem2_AWREGION <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWREGION;
        else 
            m_axi_gmem2_AWREGION <= ap_const_lv4_0;
        end if; 
    end process;


    m_axi_gmem2_AWSIZE_assign_proc : process(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWSIZE, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_gmem2_AWSIZE <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWSIZE;
        else 
            m_axi_gmem2_AWSIZE <= ap_const_lv3_0;
        end if; 
    end process;


    m_axi_gmem2_AWUSER_assign_proc : process(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWUSER, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_gmem2_AWUSER <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWUSER;
        else 
            m_axi_gmem2_AWUSER <= ap_const_lv1_0;
        end if; 
    end process;


    m_axi_gmem2_AWVALID_assign_proc : process(m_axi_gmem2_AWREADY, ap_CS_fsm_state2, grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWVALID, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((m_axi_gmem2_AWREADY = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            m_axi_gmem2_AWVALID <= ap_const_logic_1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_gmem2_AWVALID <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_AWVALID;
        else 
            m_axi_gmem2_AWVALID <= ap_const_logic_0;
        end if; 
    end process;


    m_axi_gmem2_BREADY_assign_proc : process(m_axi_gmem2_BVALID, ap_CS_fsm_state9, grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_BREADY, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((m_axi_gmem2_BVALID = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            m_axi_gmem2_BREADY <= ap_const_logic_1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_gmem2_BREADY <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_BREADY;
        else 
            m_axi_gmem2_BREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem2_RREADY <= ap_const_logic_0;
    m_axi_gmem2_WDATA <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WDATA;
    m_axi_gmem2_WID <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WID;
    m_axi_gmem2_WLAST <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WLAST;
    m_axi_gmem2_WSTRB <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WSTRB;
    m_axi_gmem2_WUSER <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WUSER;

    m_axi_gmem2_WVALID_assign_proc : process(grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WVALID, ap_CS_fsm_state3, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            m_axi_gmem2_WVALID <= grp_AxiStream2Axi_Pipeline_MMIterOutLoop2_fu_67_m_axi_gmem2_WVALID;
        else 
            m_axi_gmem2_WVALID <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln1379_fu_83_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(addrbound_read),32));
end behav;
