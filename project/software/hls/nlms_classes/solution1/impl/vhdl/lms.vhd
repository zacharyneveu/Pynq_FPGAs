-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity lms is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    x : IN STD_LOGIC_VECTOR (31 downto 0);
    y : IN STD_LOGIC_VECTOR (31 downto 0);
    mu : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of lms is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "lms,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=1,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.256000,HLS_SYN_LAT=975,HLS_SYN_TPT=none,HLS_SYN_MEM=2,HLS_SYN_DSP=5,HLS_SYN_FF=587,HLS_SYN_LUT=1145,HLS_VERSION=2018_3}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000001000000000000000000000";
    constant ap_ST_fsm_state23 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000010000000000000000000000";
    constant ap_ST_fsm_state24 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000100000000000000000000000";
    constant ap_ST_fsm_state25 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000001000000000000000000000000";
    constant ap_ST_fsm_state26 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000010000000000000000000000000";
    constant ap_ST_fsm_state27 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000100000000000000000000000000";
    constant ap_ST_fsm_state28 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000001000000000000000000000000000";
    constant ap_ST_fsm_state29 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000010000000000000000000000000000";
    constant ap_ST_fsm_state30 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000100000000000000000000000000000";
    constant ap_ST_fsm_state31 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000001000000000000000000000000000000";
    constant ap_ST_fsm_state32 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000010000000000000000000000000000000";
    constant ap_ST_fsm_state33 : STD_LOGIC_VECTOR (42 downto 0) := "0000000000100000000000000000000000000000000";
    constant ap_ST_fsm_state34 : STD_LOGIC_VECTOR (42 downto 0) := "0000000001000000000000000000000000000000000";
    constant ap_ST_fsm_state35 : STD_LOGIC_VECTOR (42 downto 0) := "0000000010000000000000000000000000000000000";
    constant ap_ST_fsm_state36 : STD_LOGIC_VECTOR (42 downto 0) := "0000000100000000000000000000000000000000000";
    constant ap_ST_fsm_state37 : STD_LOGIC_VECTOR (42 downto 0) := "0000001000000000000000000000000000000000000";
    constant ap_ST_fsm_state38 : STD_LOGIC_VECTOR (42 downto 0) := "0000010000000000000000000000000000000000000";
    constant ap_ST_fsm_state39 : STD_LOGIC_VECTOR (42 downto 0) := "0000100000000000000000000000000000000000000";
    constant ap_ST_fsm_state40 : STD_LOGIC_VECTOR (42 downto 0) := "0001000000000000000000000000000000000000000";
    constant ap_ST_fsm_state41 : STD_LOGIC_VECTOR (42 downto 0) := "0010000000000000000000000000000000000000000";
    constant ap_ST_fsm_state42 : STD_LOGIC_VECTOR (42 downto 0) := "0100000000000000000000000000000000000000000";
    constant ap_ST_fsm_state43 : STD_LOGIC_VECTOR (42 downto 0) := "1000000000000000000000000000000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_24 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100100";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv32_22 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100010";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";
    constant ap_const_lv32_1A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011010";
    constant ap_const_lv32_29 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101001";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_23 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100011";
    constant ap_const_lv6_32 : STD_LOGIC_VECTOR (5 downto 0) := "110010";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv32_2A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101010";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_11 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010001";
    constant ap_const_lv32_16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010110";
    constant ap_const_lv32_25 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100101";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_1B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011011";
    constant ap_const_lv6_3F : STD_LOGIC_VECTOR (5 downto 0) := "111111";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (42 downto 0) := "0000000000000000000000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal lms_sr_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal lms_sr_ce0 : STD_LOGIC;
    signal lms_sr_we0 : STD_LOGIC;
    signal lms_sr_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal lms_sr_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal lms_w_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal lms_w_ce0 : STD_LOGIC;
    signal lms_w_we0 : STD_LOGIC;
    signal lms_w_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_146 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal ap_CS_fsm_state37 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state37 : signal is "none";
    signal grp_fu_142_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_153 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_CS_fsm_state17 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state17 : signal is "none";
    signal ap_CS_fsm_state31 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state31 : signal is "none";
    signal ap_CS_fsm_state35 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state35 : signal is "none";
    signal grp_fu_137_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_159 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal ap_CS_fsm_state22 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state22 : signal is "none";
    signal ap_CS_fsm_state27 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state27 : signal is "none";
    signal ap_CS_fsm_state42 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state42 : signal is "none";
    signal i_fu_173_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_reg_225 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_i_fu_167_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_i_fu_184_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_i_reg_235 : STD_LOGIC_VECTOR (63 downto 0);
    signal lms_sr_load_reg_245 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_1_fu_195_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_1_reg_253 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state36 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state36 : signal is "none";
    signal lms_w_addr_1_reg_258 : STD_LOGIC_VECTOR (5 downto 0);
    signal exitcond_i_fu_189_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal lms_yhat_load_i_reg_103 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_i_reg_115 : STD_LOGIC_VECTOR (5 downto 0);
    signal i1_i_reg_126 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state43 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state43 : signal is "none";
    signal tmp_2_i_fu_179_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_1_i_fu_201_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state32 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state32 : signal is "none";
    signal grp_fu_137_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_137_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_CS_fsm_state18 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state18 : signal is "none";
    signal ap_CS_fsm_state23 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state23 : signal is "none";
    signal ap_CS_fsm_state38 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state38 : signal is "none";
    signal grp_fu_142_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_142_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal ap_CS_fsm_state28 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state28 : signal is "none";
    signal grp_fu_137_opcode : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (42 downto 0);

    component lms_faddfsub_32ns_32ns_32_5_full_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        opcode : IN STD_LOGIC_VECTOR (1 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component lms_fmul_32ns_32ns_32_4_max_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component lms_lms_sr IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    lms_sr_U : component lms_lms_sr
    generic map (
        DataWidth => 32,
        AddressRange => 50,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => lms_sr_address0,
        ce0 => lms_sr_ce0,
        we0 => lms_sr_we0,
        d0 => lms_sr_d0,
        q0 => lms_sr_q0);

    lms_w_U : component lms_lms_sr
    generic map (
        DataWidth => 32,
        AddressRange => 50,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => lms_w_address0,
        ce0 => lms_w_ce0,
        we0 => lms_w_we0,
        d0 => reg_159,
        q0 => lms_w_q0);

    lms_faddfsub_32ns_32ns_32_5_full_dsp_1_U1 : component lms_faddfsub_32ns_32ns_32_5_full_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_137_p0,
        din1 => grp_fu_137_p1,
        opcode => grp_fu_137_opcode,
        ce => ap_const_logic_1,
        dout => grp_fu_137_p2);

    lms_fmul_32ns_32ns_32_4_max_dsp_1_U2 : component lms_fmul_32ns_32ns_32_4_max_dsp_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_142_p0,
        din1 => grp_fu_142_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_142_p2);





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


    i1_i_reg_126_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state43)) then 
                i1_i_reg_126 <= i_1_reg_253;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state35)) then 
                i1_i_reg_126 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    i_i_reg_115_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
                i_i_reg_115 <= i_reg_225;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_i_reg_115 <= ap_const_lv6_32;
            end if; 
        end if;
    end process;

    lms_yhat_load_i_reg_103_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
                lms_yhat_load_i_reg_103 <= grp_fu_137_p2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                lms_yhat_load_i_reg_103 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state36)) then
                i_1_reg_253 <= i_1_fu_195_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_167_p2 = ap_const_lv1_0))) then
                i_reg_225 <= i_fu_173_p2;
                    tmp_3_i_reg_235(5 downto 0) <= tmp_3_i_fu_184_p1(5 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                lms_sr_load_reg_245 <= lms_sr_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state36) and (exitcond_i_fu_189_p2 = ap_const_lv1_0))) then
                lms_w_addr_1_reg_258 <= tmp_1_i_fu_201_p1(6 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state13) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state37))) then
                reg_146 <= lms_w_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state35) or (ap_const_logic_1 = ap_CS_fsm_state31) or (ap_const_logic_1 = ap_CS_fsm_state17) or (ap_const_logic_1 = ap_CS_fsm_state7))) then
                reg_153 <= grp_fu_142_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state42) or (ap_const_logic_1 = ap_CS_fsm_state27) or (ap_const_logic_1 = ap_CS_fsm_state22) or (ap_const_logic_1 = ap_CS_fsm_state12))) then
                reg_159 <= grp_fu_137_p2;
            end if;
        end if;
    end process;
    tmp_3_i_reg_235(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, tmp_i_fu_167_p2, ap_CS_fsm_state36, exitcond_i_fu_189_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_167_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state13;
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
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 => 
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 => 
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 => 
                ap_NS_fsm <= ap_ST_fsm_state23;
            when ap_ST_fsm_state23 => 
                ap_NS_fsm <= ap_ST_fsm_state24;
            when ap_ST_fsm_state24 => 
                ap_NS_fsm <= ap_ST_fsm_state25;
            when ap_ST_fsm_state25 => 
                ap_NS_fsm <= ap_ST_fsm_state26;
            when ap_ST_fsm_state26 => 
                ap_NS_fsm <= ap_ST_fsm_state27;
            when ap_ST_fsm_state27 => 
                ap_NS_fsm <= ap_ST_fsm_state28;
            when ap_ST_fsm_state28 => 
                ap_NS_fsm <= ap_ST_fsm_state29;
            when ap_ST_fsm_state29 => 
                ap_NS_fsm <= ap_ST_fsm_state30;
            when ap_ST_fsm_state30 => 
                ap_NS_fsm <= ap_ST_fsm_state31;
            when ap_ST_fsm_state31 => 
                ap_NS_fsm <= ap_ST_fsm_state32;
            when ap_ST_fsm_state32 => 
                ap_NS_fsm <= ap_ST_fsm_state33;
            when ap_ST_fsm_state33 => 
                ap_NS_fsm <= ap_ST_fsm_state34;
            when ap_ST_fsm_state34 => 
                ap_NS_fsm <= ap_ST_fsm_state35;
            when ap_ST_fsm_state35 => 
                ap_NS_fsm <= ap_ST_fsm_state36;
            when ap_ST_fsm_state36 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state36) and (exitcond_i_fu_189_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state37;
                end if;
            when ap_ST_fsm_state37 => 
                ap_NS_fsm <= ap_ST_fsm_state38;
            when ap_ST_fsm_state38 => 
                ap_NS_fsm <= ap_ST_fsm_state39;
            when ap_ST_fsm_state39 => 
                ap_NS_fsm <= ap_ST_fsm_state40;
            when ap_ST_fsm_state40 => 
                ap_NS_fsm <= ap_ST_fsm_state41;
            when ap_ST_fsm_state41 => 
                ap_NS_fsm <= ap_ST_fsm_state42;
            when ap_ST_fsm_state42 => 
                ap_NS_fsm <= ap_ST_fsm_state43;
            when ap_ST_fsm_state43 => 
                ap_NS_fsm <= ap_ST_fsm_state36;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state14 <= ap_CS_fsm(13);
    ap_CS_fsm_state17 <= ap_CS_fsm(16);
    ap_CS_fsm_state18 <= ap_CS_fsm(17);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state22 <= ap_CS_fsm(21);
    ap_CS_fsm_state23 <= ap_CS_fsm(22);
    ap_CS_fsm_state27 <= ap_CS_fsm(26);
    ap_CS_fsm_state28 <= ap_CS_fsm(27);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state31 <= ap_CS_fsm(30);
    ap_CS_fsm_state32 <= ap_CS_fsm(31);
    ap_CS_fsm_state35 <= ap_CS_fsm(34);
    ap_CS_fsm_state36 <= ap_CS_fsm(35);
    ap_CS_fsm_state37 <= ap_CS_fsm(36);
    ap_CS_fsm_state38 <= ap_CS_fsm(37);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state42 <= ap_CS_fsm(41);
    ap_CS_fsm_state43 <= ap_CS_fsm(42);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_done_assign_proc : process(ap_CS_fsm_state36, exitcond_i_fu_189_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state36) and (exitcond_i_fu_189_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state36, exitcond_i_fu_189_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state36) and (exitcond_i_fu_189_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return <= ap_const_lv32_0;
    exitcond_i_fu_189_p2 <= "1" when (i1_i_reg_126 = ap_const_lv6_32) else "0";

    grp_fu_137_opcode_assign_proc : process(ap_CS_fsm_state8, ap_CS_fsm_state18, ap_CS_fsm_state23, ap_CS_fsm_state38)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state23)) then 
            grp_fu_137_opcode <= ap_const_lv2_1;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state38) or (ap_const_logic_1 = ap_CS_fsm_state18) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            grp_fu_137_opcode <= ap_const_lv2_0;
        else 
            grp_fu_137_opcode <= "XX";
        end if; 
    end process;


    grp_fu_137_p0_assign_proc : process(y, reg_146, lms_yhat_load_i_reg_103, ap_CS_fsm_state8, ap_CS_fsm_state18, ap_CS_fsm_state23, ap_CS_fsm_state38)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state38)) then 
            grp_fu_137_p0 <= reg_146;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state23)) then 
            grp_fu_137_p0 <= y;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state18) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            grp_fu_137_p0 <= lms_yhat_load_i_reg_103;
        else 
            grp_fu_137_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_137_p1_assign_proc : process(reg_153, reg_159, ap_CS_fsm_state8, ap_CS_fsm_state18, ap_CS_fsm_state23, ap_CS_fsm_state38)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state23)) then 
            grp_fu_137_p1 <= reg_159;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state38) or (ap_const_logic_1 = ap_CS_fsm_state18) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            grp_fu_137_p1 <= reg_153;
        else 
            grp_fu_137_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_142_p0_assign_proc : process(reg_146, reg_153, reg_159, lms_sr_load_reg_245, ap_CS_fsm_state32, ap_CS_fsm_state4, ap_CS_fsm_state14, ap_CS_fsm_state28)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state32)) then 
            grp_fu_142_p0 <= reg_153;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state28)) then 
            grp_fu_142_p0 <= reg_159;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
            grp_fu_142_p0 <= reg_146;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            grp_fu_142_p0 <= lms_sr_load_reg_245;
        else 
            grp_fu_142_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_142_p1_assign_proc : process(x, mu, reg_146, ap_CS_fsm_state32, ap_CS_fsm_state4, ap_CS_fsm_state14, ap_CS_fsm_state28)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state28)) then 
            grp_fu_142_p1 <= mu;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state14) or (ap_const_logic_1 = ap_CS_fsm_state32))) then 
            grp_fu_142_p1 <= x;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            grp_fu_142_p1 <= reg_146;
        else 
            grp_fu_142_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    i_1_fu_195_p2 <= std_logic_vector(unsigned(i1_i_reg_126) + unsigned(ap_const_lv6_1));
    i_fu_173_p2 <= std_logic_vector(unsigned(i_i_reg_115) + unsigned(ap_const_lv6_3F));

    lms_sr_address0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state2, tmp_3_i_reg_235, tmp_2_i_fu_179_p1, ap_CS_fsm_state32)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state32)) then 
            lms_sr_address0 <= ap_const_lv6_0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            lms_sr_address0 <= tmp_3_i_reg_235(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            lms_sr_address0 <= tmp_2_i_fu_179_p1(6 - 1 downto 0);
        else 
            lms_sr_address0 <= "XXXXXX";
        end if; 
    end process;


    lms_sr_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state2, ap_CS_fsm_state32)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state32) or (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            lms_sr_ce0 <= ap_const_logic_1;
        else 
            lms_sr_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    lms_sr_d0_assign_proc : process(x, lms_sr_q0, ap_CS_fsm_state3, ap_CS_fsm_state32)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state32)) then 
            lms_sr_d0 <= x;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            lms_sr_d0 <= lms_sr_q0;
        else 
            lms_sr_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    lms_sr_we0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state32)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state32))) then 
            lms_sr_we0 <= ap_const_logic_1;
        else 
            lms_sr_we0 <= ap_const_logic_0;
        end if; 
    end process;


    lms_w_address0_assign_proc : process(ap_CS_fsm_state2, tmp_i_fu_167_p2, tmp_3_i_fu_184_p1, ap_CS_fsm_state36, lms_w_addr_1_reg_258, ap_CS_fsm_state43, tmp_1_i_fu_201_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state43)) then 
            lms_w_address0 <= lms_w_addr_1_reg_258;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state36)) then 
            lms_w_address0 <= tmp_1_i_fu_201_p1(6 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_167_p2 = ap_const_lv1_1))) then 
            lms_w_address0 <= ap_const_lv6_0;
        elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_167_p2 = ap_const_lv1_0))) then 
            lms_w_address0 <= tmp_3_i_fu_184_p1(6 - 1 downto 0);
        else 
            lms_w_address0 <= "XXXXXX";
        end if; 
    end process;


    lms_w_ce0_assign_proc : process(ap_CS_fsm_state2, tmp_i_fu_167_p2, ap_CS_fsm_state36, ap_CS_fsm_state43)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state43) or (ap_const_logic_1 = ap_CS_fsm_state36) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_167_p2 = ap_const_lv1_1)) or ((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_i_fu_167_p2 = ap_const_lv1_0)))) then 
            lms_w_ce0 <= ap_const_logic_1;
        else 
            lms_w_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    lms_w_we0_assign_proc : process(ap_CS_fsm_state43)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state43)) then 
            lms_w_we0 <= ap_const_logic_1;
        else 
            lms_w_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_i_fu_201_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i1_i_reg_126),64));
    tmp_2_i_fu_179_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_fu_173_p2),64));
    tmp_3_i_fu_184_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_i_reg_115),64));
    tmp_i_fu_167_p2 <= "1" when (i_i_reg_115 = ap_const_lv6_0) else "0";
end behav;