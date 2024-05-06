-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Filter2d_accel_filter2D_Pipeline_VITIS_LOOP_834_1_VITIS_LOOP_835_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_gmem1_AWVALID : OUT STD_LOGIC;
    m_axi_gmem1_AWREADY : IN STD_LOGIC;
    m_axi_gmem1_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem1_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem1_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem1_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem1_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_WVALID : OUT STD_LOGIC;
    m_axi_gmem1_WREADY : IN STD_LOGIC;
    m_axi_gmem1_WDATA : OUT STD_LOGIC_VECTOR (15 downto 0);
    m_axi_gmem1_WSTRB : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_WLAST : OUT STD_LOGIC;
    m_axi_gmem1_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_ARVALID : OUT STD_LOGIC;
    m_axi_gmem1_ARREADY : IN STD_LOGIC;
    m_axi_gmem1_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem1_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem1_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem1_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem1_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem1_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_RVALID : IN STD_LOGIC;
    m_axi_gmem1_RREADY : OUT STD_LOGIC;
    m_axi_gmem1_RDATA : IN STD_LOGIC_VECTOR (15 downto 0);
    m_axi_gmem1_RLAST : IN STD_LOGIC;
    m_axi_gmem1_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_RFIFONUM : IN STD_LOGIC_VECTOR (9 downto 0);
    m_axi_gmem1_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_BVALID : IN STD_LOGIC;
    m_axi_gmem1_BREADY : OUT STD_LOGIC;
    m_axi_gmem1_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem1_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem1_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    sext_ln834 : IN STD_LOGIC_VECTOR (62 downto 0);
    p_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    p_out_ap_vld : OUT STD_LOGIC;
    p_out1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    p_out1_ap_vld : OUT STD_LOGIC;
    p_out2 : OUT STD_LOGIC_VECTOR (15 downto 0);
    p_out2_ap_vld : OUT STD_LOGIC;
    p_out3 : OUT STD_LOGIC_VECTOR (15 downto 0);
    p_out3_ap_vld : OUT STD_LOGIC;
    p_out4 : OUT STD_LOGIC_VECTOR (15 downto 0);
    p_out4_ap_vld : OUT STD_LOGIC;
    p_out5 : OUT STD_LOGIC_VECTOR (15 downto 0);
    p_out5_ap_vld : OUT STD_LOGIC;
    p_out6 : OUT STD_LOGIC_VECTOR (15 downto 0);
    p_out6_ap_vld : OUT STD_LOGIC;
    p_out7 : OUT STD_LOGIC_VECTOR (15 downto 0);
    p_out7_ap_vld : OUT STD_LOGIC;
    p_out8 : OUT STD_LOGIC_VECTOR (15 downto 0);
    p_out8_ap_vld : OUT STD_LOGIC );
end;


architecture behav of Filter2d_accel_filter2D_Pipeline_VITIS_LOOP_834_1_VITIS_LOOP_835_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv4_9 : STD_LOGIC_VECTOR (3 downto 0) := "1001";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln834_fu_214_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal gmem1_blk_n_R : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal select_ln834_fu_244_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln834_reg_449 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln834_1_fu_258_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal select_ln834_1_reg_453 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln835_fu_266_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln835_reg_458 : STD_LOGIC_VECTOR (1 downto 0);
    signal j_fu_70 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal ap_sig_allocacmp_j_load : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal i_fu_74 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal ap_sig_allocacmp_i_load : STD_LOGIC_VECTOR (1 downto 0);
    signal indvar_flatten_fu_78 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal add_ln834_fu_220_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_indvar_flatten_load : STD_LOGIC_VECTOR (3 downto 0);
    signal empty_fu_82 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal empty_53_fu_86 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal empty_54_fu_90 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal empty_55_fu_94 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal empty_56_fu_98 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal empty_57_fu_102 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal empty_58_fu_106 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal empty_59_fu_110 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal empty_60_fu_114 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal icmp_ln835_fu_238_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln834_1_fu_252_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component Filter2d_accel_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component Filter2d_accel_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
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
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    i_fu_74_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_74 <= ap_const_lv2_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    i_fu_74 <= select_ln834_1_reg_453;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_fu_78_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln834_fu_214_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten_fu_78 <= add_ln834_fu_220_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_78 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;

    j_fu_70_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_70 <= ap_const_lv2_0;
                elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                    j_fu_70 <= add_ln835_reg_458;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln835_reg_458 <= add_ln835_fu_266_p2;
                select_ln834_1_reg_453 <= select_ln834_1_fu_258_p3;
                select_ln834_reg_449 <= select_ln834_fu_244_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (select_ln834_1_reg_453 = ap_const_lv2_1) and (select_ln834_reg_449 = ap_const_lv2_0))) then
                empty_53_fu_86 <= m_axi_gmem1_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((select_ln834_reg_449 = ap_const_lv2_0)) and not((select_ln834_reg_449 = ap_const_lv2_1)) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (select_ln834_1_reg_453 = ap_const_lv2_1))) then
                empty_54_fu_90 <= m_axi_gmem1_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (select_ln834_1_reg_453 = ap_const_lv2_0) and (select_ln834_reg_449 = ap_const_lv2_1))) then
                empty_55_fu_94 <= m_axi_gmem1_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (select_ln834_1_reg_453 = ap_const_lv2_0) and (select_ln834_reg_449 = ap_const_lv2_0))) then
                empty_56_fu_98 <= m_axi_gmem1_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((select_ln834_reg_449 = ap_const_lv2_0)) and not((select_ln834_reg_449 = ap_const_lv2_1)) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (select_ln834_1_reg_453 = ap_const_lv2_0))) then
                empty_57_fu_102 <= m_axi_gmem1_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((select_ln834_1_reg_453 = ap_const_lv2_0)) and not((select_ln834_1_reg_453 = ap_const_lv2_1)) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (select_ln834_reg_449 = ap_const_lv2_1))) then
                empty_58_fu_106 <= m_axi_gmem1_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((select_ln834_1_reg_453 = ap_const_lv2_0)) and not((select_ln834_1_reg_453 = ap_const_lv2_1)) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (select_ln834_reg_449 = ap_const_lv2_0))) then
                empty_59_fu_110 <= m_axi_gmem1_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((select_ln834_1_reg_453 = ap_const_lv2_0)) and not((select_ln834_reg_449 = ap_const_lv2_0)) and not((select_ln834_reg_449 = ap_const_lv2_1)) and not((select_ln834_1_reg_453 = ap_const_lv2_1)) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                empty_60_fu_114 <= m_axi_gmem1_RDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (select_ln834_1_reg_453 = ap_const_lv2_1) and (select_ln834_reg_449 = ap_const_lv2_1))) then
                empty_fu_82 <= m_axi_gmem1_RDATA;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln834_1_fu_252_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_load) + unsigned(ap_const_lv2_1));
    add_ln834_fu_220_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten_load) + unsigned(ap_const_lv4_1));
    add_ln835_fu_266_p2 <= std_logic_vector(unsigned(select_ln834_fu_244_p3) + unsigned(ap_const_lv2_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state2_pp0_stage0_iter1)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_pp0_stage0_iter1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state2_pp0_stage0_iter1)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_pp0_stage0_iter1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state2_pp0_stage0_iter1)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_pp0_stage0_iter1));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(m_axi_gmem1_RVALID)
    begin
                ap_block_state2_pp0_stage0_iter1 <= (m_axi_gmem1_RVALID = ap_const_logic_0);
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln834_fu_214_p2)
    begin
        if (((icmp_ln834_fu_214_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, select_ln834_1_reg_453, ap_loop_init, i_fu_74)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
            if ((ap_loop_init = ap_const_logic_1)) then 
                ap_sig_allocacmp_i_load <= ap_const_lv2_0;
            elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                ap_sig_allocacmp_i_load <= select_ln834_1_reg_453;
            else 
                ap_sig_allocacmp_i_load <= i_fu_74;
            end if;
        else 
            ap_sig_allocacmp_i_load <= i_fu_74;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten_fu_78)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten_load <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_indvar_flatten_load <= indvar_flatten_fu_78;
        end if; 
    end process;


    ap_sig_allocacmp_j_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, add_ln835_reg_458, j_fu_70, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
            if ((ap_loop_init = ap_const_logic_1)) then 
                ap_sig_allocacmp_j_load <= ap_const_lv2_0;
            elsif ((ap_enable_reg_pp0_iter1 = ap_const_logic_1)) then 
                ap_sig_allocacmp_j_load <= add_ln835_reg_458;
            else 
                ap_sig_allocacmp_j_load <= j_fu_70;
            end if;
        else 
            ap_sig_allocacmp_j_load <= j_fu_70;
        end if; 
    end process;


    gmem1_blk_n_R_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, m_axi_gmem1_RVALID, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            gmem1_blk_n_R <= m_axi_gmem1_RVALID;
        else 
            gmem1_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    icmp_ln834_fu_214_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten_load = ap_const_lv4_9) else "0";
    icmp_ln835_fu_238_p2 <= "1" when (ap_sig_allocacmp_j_load = ap_const_lv2_3) else "0";
    m_axi_gmem1_ARADDR <= ap_const_lv64_0;
    m_axi_gmem1_ARBURST <= ap_const_lv2_0;
    m_axi_gmem1_ARCACHE <= ap_const_lv4_0;
    m_axi_gmem1_ARID <= ap_const_lv1_0;
    m_axi_gmem1_ARLEN <= ap_const_lv32_0;
    m_axi_gmem1_ARLOCK <= ap_const_lv2_0;
    m_axi_gmem1_ARPROT <= ap_const_lv3_0;
    m_axi_gmem1_ARQOS <= ap_const_lv4_0;
    m_axi_gmem1_ARREGION <= ap_const_lv4_0;
    m_axi_gmem1_ARSIZE <= ap_const_lv3_0;
    m_axi_gmem1_ARUSER <= ap_const_lv1_0;
    m_axi_gmem1_ARVALID <= ap_const_logic_0;
    m_axi_gmem1_AWADDR <= ap_const_lv64_0;
    m_axi_gmem1_AWBURST <= ap_const_lv2_0;
    m_axi_gmem1_AWCACHE <= ap_const_lv4_0;
    m_axi_gmem1_AWID <= ap_const_lv1_0;
    m_axi_gmem1_AWLEN <= ap_const_lv32_0;
    m_axi_gmem1_AWLOCK <= ap_const_lv2_0;
    m_axi_gmem1_AWPROT <= ap_const_lv3_0;
    m_axi_gmem1_AWQOS <= ap_const_lv4_0;
    m_axi_gmem1_AWREGION <= ap_const_lv4_0;
    m_axi_gmem1_AWSIZE <= ap_const_lv3_0;
    m_axi_gmem1_AWUSER <= ap_const_lv1_0;
    m_axi_gmem1_AWVALID <= ap_const_logic_0;
    m_axi_gmem1_BREADY <= ap_const_logic_0;

    m_axi_gmem1_RREADY_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            m_axi_gmem1_RREADY <= ap_const_logic_1;
        else 
            m_axi_gmem1_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_gmem1_WDATA <= ap_const_lv16_0;
    m_axi_gmem1_WID <= ap_const_lv1_0;
    m_axi_gmem1_WLAST <= ap_const_logic_0;
    m_axi_gmem1_WSTRB <= ap_const_lv2_0;
    m_axi_gmem1_WUSER <= ap_const_lv1_0;
    m_axi_gmem1_WVALID <= ap_const_logic_0;
    p_out <= empty_60_fu_114;
    p_out1 <= empty_59_fu_110;

    p_out1_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln834_fu_214_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln834_fu_214_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_out1_ap_vld <= ap_const_logic_1;
        else 
            p_out1_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    p_out2 <= empty_58_fu_106;

    p_out2_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln834_fu_214_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln834_fu_214_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_out2_ap_vld <= ap_const_logic_1;
        else 
            p_out2_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    p_out3 <= empty_57_fu_102;

    p_out3_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln834_fu_214_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln834_fu_214_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_out3_ap_vld <= ap_const_logic_1;
        else 
            p_out3_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    p_out4 <= empty_56_fu_98;

    p_out4_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln834_fu_214_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln834_fu_214_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_out4_ap_vld <= ap_const_logic_1;
        else 
            p_out4_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    p_out5 <= empty_55_fu_94;

    p_out5_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln834_fu_214_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln834_fu_214_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_out5_ap_vld <= ap_const_logic_1;
        else 
            p_out5_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    p_out6 <= empty_54_fu_90;

    p_out6_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln834_fu_214_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln834_fu_214_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_out6_ap_vld <= ap_const_logic_1;
        else 
            p_out6_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    p_out7 <= empty_53_fu_86;

    p_out7_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln834_fu_214_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln834_fu_214_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_out7_ap_vld <= ap_const_logic_1;
        else 
            p_out7_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    p_out8 <= empty_fu_82;

    p_out8_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln834_fu_214_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln834_fu_214_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_out8_ap_vld <= ap_const_logic_1;
        else 
            p_out8_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    p_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln834_fu_214_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln834_fu_214_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_out_ap_vld <= ap_const_logic_1;
        else 
            p_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    select_ln834_1_fu_258_p3 <= 
        add_ln834_1_fu_252_p2 when (icmp_ln835_fu_238_p2(0) = '1') else 
        ap_sig_allocacmp_i_load;
    select_ln834_fu_244_p3 <= 
        ap_const_lv2_0 when (icmp_ln835_fu_238_p2(0) = '1') else 
        ap_sig_allocacmp_j_load;
end behav;