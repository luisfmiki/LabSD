-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/07/2022 19:01:59"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Datapath IS
    PORT (
	clock : IN std_logic;
	a0_f : IN std_logic;
	a0_d : IN std_logic;
	a1_f : IN std_logic;
	a1_d : IN std_logic;
	a2_f : IN std_logic;
	a2_d : IN std_logic;
	r0_in : IN std_logic;
	r1_in : IN std_logic;
	r2_in : IN std_logic;
	r_sel : IN std_logic;
	porta : IN std_logic;
	load_m : IN std_logic;
	f_cnt : IN std_logic;
	led_in : IN std_logic_vector(3 DOWNTO 0);
	motor : IN std_logic_vector(1 DOWNTO 0);
	r0_out : OUT std_logic;
	r1_out : OUT std_logic;
	r2_out : OUT std_logic;
	f_T : OUT std_logic;
	porta_out : OUT std_logic;
	led_out : OUT std_logic_vector(6 DOWNTO 0);
	m_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END Datapath;

-- Design Ports Information
-- r0_out	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1_out	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2_out	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f_T	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- porta_out	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_out[0]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_out[1]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_out[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_out[3]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_out[4]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_out[5]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_out[6]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m_out[0]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m_out[1]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m_out[2]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m_out[3]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_in[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- led_in[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- led_in[2]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- led_in[3]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- r0_in	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- r_sel	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a0_f	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a0_d	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- r1_in	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a1_f	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a1_d	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- r2_in	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a2_f	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a2_d	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- f_cnt	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- porta	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- motor[0]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- load_m	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- motor[1]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_a0_f : std_logic;
SIGNAL ww_a0_d : std_logic;
SIGNAL ww_a1_f : std_logic;
SIGNAL ww_a1_d : std_logic;
SIGNAL ww_a2_f : std_logic;
SIGNAL ww_a2_d : std_logic;
SIGNAL ww_r0_in : std_logic;
SIGNAL ww_r1_in : std_logic;
SIGNAL ww_r2_in : std_logic;
SIGNAL ww_r_sel : std_logic;
SIGNAL ww_porta : std_logic;
SIGNAL ww_load_m : std_logic;
SIGNAL ww_f_cnt : std_logic;
SIGNAL ww_led_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_motor : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_r0_out : std_logic;
SIGNAL ww_r1_out : std_logic;
SIGNAL ww_r2_out : std_logic;
SIGNAL ww_f_T : std_logic;
SIGNAL ww_porta_out : std_logic;
SIGNAL ww_led_out : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_m_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tempor|div1|clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tempor|div1|Add0~0_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~1\ : std_logic;
SIGNAL \tempor|div1|Add0~2_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~3\ : std_logic;
SIGNAL \tempor|div1|Add0~4_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~5\ : std_logic;
SIGNAL \tempor|div1|Add0~6_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~7\ : std_logic;
SIGNAL \tempor|div1|Add0~8_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~9\ : std_logic;
SIGNAL \tempor|div1|Add0~10_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~11\ : std_logic;
SIGNAL \tempor|div1|Add0~12_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~13\ : std_logic;
SIGNAL \tempor|div1|Add0~14_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~15\ : std_logic;
SIGNAL \tempor|div1|Add0~16_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~17\ : std_logic;
SIGNAL \tempor|div1|Add0~18_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~19\ : std_logic;
SIGNAL \tempor|div1|Add0~20_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~21\ : std_logic;
SIGNAL \tempor|div1|Add0~22_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~23\ : std_logic;
SIGNAL \tempor|div1|Add0~24_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~25\ : std_logic;
SIGNAL \tempor|div1|Add0~26_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~27\ : std_logic;
SIGNAL \tempor|div1|Add0~28_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~29\ : std_logic;
SIGNAL \tempor|div1|Add0~30_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~31\ : std_logic;
SIGNAL \tempor|div1|Add0~32_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~33\ : std_logic;
SIGNAL \tempor|div1|Add0~34_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~35\ : std_logic;
SIGNAL \tempor|div1|Add0~36_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~37\ : std_logic;
SIGNAL \tempor|div1|Add0~38_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~39\ : std_logic;
SIGNAL \tempor|div1|Add0~40_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~41\ : std_logic;
SIGNAL \tempor|div1|Add0~42_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~43\ : std_logic;
SIGNAL \tempor|div1|Add0~44_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~45\ : std_logic;
SIGNAL \tempor|div1|Add0~46_combout\ : std_logic;
SIGNAL \tempor|div1|Add0~47\ : std_logic;
SIGNAL \tempor|div1|Add0~48_combout\ : std_logic;
SIGNAL \tempor|div1|clk~regout\ : std_logic;
SIGNAL \tempor|div1|Equal0~0_combout\ : std_logic;
SIGNAL \tempor|div1|Equal0~1_combout\ : std_logic;
SIGNAL \tempor|div1|Equal0~2_combout\ : std_logic;
SIGNAL \tempor|div1|Equal0~3_combout\ : std_logic;
SIGNAL \tempor|div1|Equal0~4_combout\ : std_logic;
SIGNAL \tempor|div1|Equal0~5_combout\ : std_logic;
SIGNAL \tempor|div1|Equal0~6_combout\ : std_logic;
SIGNAL \tempor|div1|Equal0~7_combout\ : std_logic;
SIGNAL \tempor|div1|clk~0_combout\ : std_logic;
SIGNAL \tempor|div1|cnt~0_combout\ : std_logic;
SIGNAL \tempor|div1|cnt~1_combout\ : std_logic;
SIGNAL \tempor|div1|cnt~2_combout\ : std_logic;
SIGNAL \tempor|div1|cnt~3_combout\ : std_logic;
SIGNAL \tempor|div1|cnt~4_combout\ : std_logic;
SIGNAL \tempor|div1|cnt~5_combout\ : std_logic;
SIGNAL \tempor|div1|cnt~6_combout\ : std_logic;
SIGNAL \tempor|div1|cnt~7_combout\ : std_logic;
SIGNAL \tempor|div1|cnt~8_combout\ : std_logic;
SIGNAL \tempor|div1|cnt~9_combout\ : std_logic;
SIGNAL \tempor|div1|cnt~10_combout\ : std_logic;
SIGNAL \tempor|div1|cnt~11_combout\ : std_logic;
SIGNAL \tempor|div1|cnt~12_combout\ : std_logic;
SIGNAL \a0_d~combout\ : std_logic;
SIGNAL \a1_f~combout\ : std_logic;
SIGNAL \a2_d~combout\ : std_logic;
SIGNAL \tempor|div1|clk~clkctrl_outclk\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \a0_f~combout\ : std_logic;
SIGNAL \r0_in~combout\ : std_logic;
SIGNAL \r_sel~combout\ : std_logic;
SIGNAL \mux0|F~0_combout\ : std_logic;
SIGNAL \r0|Q~regout\ : std_logic;
SIGNAL \a1_d~combout\ : std_logic;
SIGNAL \r1_in~combout\ : std_logic;
SIGNAL \mux1|F~0_combout\ : std_logic;
SIGNAL \r1|Q~regout\ : std_logic;
SIGNAL \a2_f~combout\ : std_logic;
SIGNAL \r2_in~combout\ : std_logic;
SIGNAL \mux2|F~0_combout\ : std_logic;
SIGNAL \r2|Q~regout\ : std_logic;
SIGNAL \f_cnt~combout\ : std_logic;
SIGNAL \tempor|count[0]~0_combout\ : std_logic;
SIGNAL \tempor|count[1]~1_combout\ : std_logic;
SIGNAL \tempor|Equal0~0_combout\ : std_logic;
SIGNAL \porta~combout\ : std_logic;
SIGNAL \reg_porta|Q~feeder_combout\ : std_logic;
SIGNAL \reg_porta|Q~regout\ : std_logic;
SIGNAL \BCD|Mux6~0_combout\ : std_logic;
SIGNAL \BCD|Mux5~0_combout\ : std_logic;
SIGNAL \BCD|Mux4~0_combout\ : std_logic;
SIGNAL \BCD|Mux3~0_combout\ : std_logic;
SIGNAL \BCD|Mux2~0_combout\ : std_logic;
SIGNAL \BCD|Mux1~0_combout\ : std_logic;
SIGNAL \BCD|Mux0~0_combout\ : std_logic;
SIGNAL \reg_M|Mout[0]~feeder_combout\ : std_logic;
SIGNAL \load_m~combout\ : std_logic;
SIGNAL \reg_M|Mout[1]~feeder_combout\ : std_logic;
SIGNAL \decod|b[2]~0_combout\ : std_logic;
SIGNAL \decod|b[2]~1_combout\ : std_logic;
SIGNAL \decod|b[2]~2_combout\ : std_logic;
SIGNAL \motor~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \led_in~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tempor|count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \reg_M|Mout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \tempor|div1|cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \decod|b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decod|ALT_INV_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \BCD|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_a0_f <= a0_f;
ww_a0_d <= a0_d;
ww_a1_f <= a1_f;
ww_a1_d <= a1_d;
ww_a2_f <= a2_f;
ww_a2_d <= a2_d;
ww_r0_in <= r0_in;
ww_r1_in <= r1_in;
ww_r2_in <= r2_in;
ww_r_sel <= r_sel;
ww_porta <= porta;
ww_load_m <= load_m;
ww_f_cnt <= f_cnt;
ww_led_in <= led_in;
ww_motor <= motor;
r0_out <= ww_r0_out;
r1_out <= ww_r1_out;
r2_out <= ww_r2_out;
f_T <= ww_f_T;
porta_out <= ww_porta_out;
led_out <= ww_led_out;
m_out <= ww_m_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\tempor|div1|clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \tempor|div1|clk~regout\);
\decod|ALT_INV_b\(0) <= NOT \decod|b\(0);
\BCD|ALT_INV_Mux0~0_combout\ <= NOT \BCD|Mux0~0_combout\;

-- Location: LCCOMB_X41_Y29_N8
\tempor|div1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~0_combout\ = \tempor|div1|cnt\(0) $ (VCC)
-- \tempor|div1|Add0~1\ = CARRY(\tempor|div1|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempor|div1|cnt\(0),
	datad => VCC,
	combout => \tempor|div1|Add0~0_combout\,
	cout => \tempor|div1|Add0~1\);

-- Location: LCCOMB_X41_Y29_N10
\tempor|div1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~2_combout\ = (\tempor|div1|cnt\(1) & (!\tempor|div1|Add0~1\)) # (!\tempor|div1|cnt\(1) & ((\tempor|div1|Add0~1\) # (GND)))
-- \tempor|div1|Add0~3\ = CARRY((!\tempor|div1|Add0~1\) # (!\tempor|div1|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|cnt\(1),
	datad => VCC,
	cin => \tempor|div1|Add0~1\,
	combout => \tempor|div1|Add0~2_combout\,
	cout => \tempor|div1|Add0~3\);

-- Location: LCCOMB_X41_Y29_N12
\tempor|div1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~4_combout\ = (\tempor|div1|cnt\(2) & (\tempor|div1|Add0~3\ $ (GND))) # (!\tempor|div1|cnt\(2) & (!\tempor|div1|Add0~3\ & VCC))
-- \tempor|div1|Add0~5\ = CARRY((\tempor|div1|cnt\(2) & !\tempor|div1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|cnt\(2),
	datad => VCC,
	cin => \tempor|div1|Add0~3\,
	combout => \tempor|div1|Add0~4_combout\,
	cout => \tempor|div1|Add0~5\);

-- Location: LCCOMB_X41_Y29_N14
\tempor|div1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~6_combout\ = (\tempor|div1|cnt\(3) & (!\tempor|div1|Add0~5\)) # (!\tempor|div1|cnt\(3) & ((\tempor|div1|Add0~5\) # (GND)))
-- \tempor|div1|Add0~7\ = CARRY((!\tempor|div1|Add0~5\) # (!\tempor|div1|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempor|div1|cnt\(3),
	datad => VCC,
	cin => \tempor|div1|Add0~5\,
	combout => \tempor|div1|Add0~6_combout\,
	cout => \tempor|div1|Add0~7\);

-- Location: LCCOMB_X41_Y29_N16
\tempor|div1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~8_combout\ = (\tempor|div1|cnt\(4) & (\tempor|div1|Add0~7\ $ (GND))) # (!\tempor|div1|cnt\(4) & (!\tempor|div1|Add0~7\ & VCC))
-- \tempor|div1|Add0~9\ = CARRY((\tempor|div1|cnt\(4) & !\tempor|div1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|cnt\(4),
	datad => VCC,
	cin => \tempor|div1|Add0~7\,
	combout => \tempor|div1|Add0~8_combout\,
	cout => \tempor|div1|Add0~9\);

-- Location: LCCOMB_X41_Y29_N18
\tempor|div1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~10_combout\ = (\tempor|div1|cnt\(5) & (!\tempor|div1|Add0~9\)) # (!\tempor|div1|cnt\(5) & ((\tempor|div1|Add0~9\) # (GND)))
-- \tempor|div1|Add0~11\ = CARRY((!\tempor|div1|Add0~9\) # (!\tempor|div1|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempor|div1|cnt\(5),
	datad => VCC,
	cin => \tempor|div1|Add0~9\,
	combout => \tempor|div1|Add0~10_combout\,
	cout => \tempor|div1|Add0~11\);

-- Location: LCCOMB_X41_Y29_N20
\tempor|div1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~12_combout\ = (\tempor|div1|cnt\(6) & (\tempor|div1|Add0~11\ $ (GND))) # (!\tempor|div1|cnt\(6) & (!\tempor|div1|Add0~11\ & VCC))
-- \tempor|div1|Add0~13\ = CARRY((\tempor|div1|cnt\(6) & !\tempor|div1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempor|div1|cnt\(6),
	datad => VCC,
	cin => \tempor|div1|Add0~11\,
	combout => \tempor|div1|Add0~12_combout\,
	cout => \tempor|div1|Add0~13\);

-- Location: LCCOMB_X41_Y29_N22
\tempor|div1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~14_combout\ = (\tempor|div1|cnt\(7) & (!\tempor|div1|Add0~13\)) # (!\tempor|div1|cnt\(7) & ((\tempor|div1|Add0~13\) # (GND)))
-- \tempor|div1|Add0~15\ = CARRY((!\tempor|div1|Add0~13\) # (!\tempor|div1|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempor|div1|cnt\(7),
	datad => VCC,
	cin => \tempor|div1|Add0~13\,
	combout => \tempor|div1|Add0~14_combout\,
	cout => \tempor|div1|Add0~15\);

-- Location: LCCOMB_X41_Y29_N24
\tempor|div1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~16_combout\ = (\tempor|div1|cnt\(8) & (\tempor|div1|Add0~15\ $ (GND))) # (!\tempor|div1|cnt\(8) & (!\tempor|div1|Add0~15\ & VCC))
-- \tempor|div1|Add0~17\ = CARRY((\tempor|div1|cnt\(8) & !\tempor|div1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|cnt\(8),
	datad => VCC,
	cin => \tempor|div1|Add0~15\,
	combout => \tempor|div1|Add0~16_combout\,
	cout => \tempor|div1|Add0~17\);

-- Location: LCCOMB_X41_Y29_N26
\tempor|div1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~18_combout\ = (\tempor|div1|cnt\(9) & (!\tempor|div1|Add0~17\)) # (!\tempor|div1|cnt\(9) & ((\tempor|div1|Add0~17\) # (GND)))
-- \tempor|div1|Add0~19\ = CARRY((!\tempor|div1|Add0~17\) # (!\tempor|div1|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempor|div1|cnt\(9),
	datad => VCC,
	cin => \tempor|div1|Add0~17\,
	combout => \tempor|div1|Add0~18_combout\,
	cout => \tempor|div1|Add0~19\);

-- Location: LCCOMB_X41_Y29_N28
\tempor|div1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~20_combout\ = (\tempor|div1|cnt\(10) & (\tempor|div1|Add0~19\ $ (GND))) # (!\tempor|div1|cnt\(10) & (!\tempor|div1|Add0~19\ & VCC))
-- \tempor|div1|Add0~21\ = CARRY((\tempor|div1|cnt\(10) & !\tempor|div1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempor|div1|cnt\(10),
	datad => VCC,
	cin => \tempor|div1|Add0~19\,
	combout => \tempor|div1|Add0~20_combout\,
	cout => \tempor|div1|Add0~21\);

-- Location: LCCOMB_X41_Y29_N30
\tempor|div1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~22_combout\ = (\tempor|div1|cnt\(11) & (!\tempor|div1|Add0~21\)) # (!\tempor|div1|cnt\(11) & ((\tempor|div1|Add0~21\) # (GND)))
-- \tempor|div1|Add0~23\ = CARRY((!\tempor|div1|Add0~21\) # (!\tempor|div1|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|cnt\(11),
	datad => VCC,
	cin => \tempor|div1|Add0~21\,
	combout => \tempor|div1|Add0~22_combout\,
	cout => \tempor|div1|Add0~23\);

-- Location: LCCOMB_X41_Y28_N0
\tempor|div1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~24_combout\ = (\tempor|div1|cnt\(12) & (\tempor|div1|Add0~23\ $ (GND))) # (!\tempor|div1|cnt\(12) & (!\tempor|div1|Add0~23\ & VCC))
-- \tempor|div1|Add0~25\ = CARRY((\tempor|div1|cnt\(12) & !\tempor|div1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempor|div1|cnt\(12),
	datad => VCC,
	cin => \tempor|div1|Add0~23\,
	combout => \tempor|div1|Add0~24_combout\,
	cout => \tempor|div1|Add0~25\);

-- Location: LCCOMB_X41_Y28_N2
\tempor|div1|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~26_combout\ = (\tempor|div1|cnt\(13) & (!\tempor|div1|Add0~25\)) # (!\tempor|div1|cnt\(13) & ((\tempor|div1|Add0~25\) # (GND)))
-- \tempor|div1|Add0~27\ = CARRY((!\tempor|div1|Add0~25\) # (!\tempor|div1|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempor|div1|cnt\(13),
	datad => VCC,
	cin => \tempor|div1|Add0~25\,
	combout => \tempor|div1|Add0~26_combout\,
	cout => \tempor|div1|Add0~27\);

-- Location: LCCOMB_X41_Y28_N4
\tempor|div1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~28_combout\ = (\tempor|div1|cnt\(14) & (\tempor|div1|Add0~27\ $ (GND))) # (!\tempor|div1|cnt\(14) & (!\tempor|div1|Add0~27\ & VCC))
-- \tempor|div1|Add0~29\ = CARRY((\tempor|div1|cnt\(14) & !\tempor|div1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|cnt\(14),
	datad => VCC,
	cin => \tempor|div1|Add0~27\,
	combout => \tempor|div1|Add0~28_combout\,
	cout => \tempor|div1|Add0~29\);

-- Location: LCCOMB_X41_Y28_N6
\tempor|div1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~30_combout\ = (\tempor|div1|cnt\(15) & (!\tempor|div1|Add0~29\)) # (!\tempor|div1|cnt\(15) & ((\tempor|div1|Add0~29\) # (GND)))
-- \tempor|div1|Add0~31\ = CARRY((!\tempor|div1|Add0~29\) # (!\tempor|div1|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|cnt\(15),
	datad => VCC,
	cin => \tempor|div1|Add0~29\,
	combout => \tempor|div1|Add0~30_combout\,
	cout => \tempor|div1|Add0~31\);

-- Location: LCCOMB_X41_Y28_N8
\tempor|div1|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~32_combout\ = (\tempor|div1|cnt\(16) & (\tempor|div1|Add0~31\ $ (GND))) # (!\tempor|div1|cnt\(16) & (!\tempor|div1|Add0~31\ & VCC))
-- \tempor|div1|Add0~33\ = CARRY((\tempor|div1|cnt\(16) & !\tempor|div1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempor|div1|cnt\(16),
	datad => VCC,
	cin => \tempor|div1|Add0~31\,
	combout => \tempor|div1|Add0~32_combout\,
	cout => \tempor|div1|Add0~33\);

-- Location: LCCOMB_X41_Y28_N10
\tempor|div1|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~34_combout\ = (\tempor|div1|cnt\(17) & (!\tempor|div1|Add0~33\)) # (!\tempor|div1|cnt\(17) & ((\tempor|div1|Add0~33\) # (GND)))
-- \tempor|div1|Add0~35\ = CARRY((!\tempor|div1|Add0~33\) # (!\tempor|div1|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|cnt\(17),
	datad => VCC,
	cin => \tempor|div1|Add0~33\,
	combout => \tempor|div1|Add0~34_combout\,
	cout => \tempor|div1|Add0~35\);

-- Location: LCCOMB_X41_Y28_N12
\tempor|div1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~36_combout\ = (\tempor|div1|cnt\(18) & (\tempor|div1|Add0~35\ $ (GND))) # (!\tempor|div1|cnt\(18) & (!\tempor|div1|Add0~35\ & VCC))
-- \tempor|div1|Add0~37\ = CARRY((\tempor|div1|cnt\(18) & !\tempor|div1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempor|div1|cnt\(18),
	datad => VCC,
	cin => \tempor|div1|Add0~35\,
	combout => \tempor|div1|Add0~36_combout\,
	cout => \tempor|div1|Add0~37\);

-- Location: LCCOMB_X41_Y28_N14
\tempor|div1|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~38_combout\ = (\tempor|div1|cnt\(19) & (!\tempor|div1|Add0~37\)) # (!\tempor|div1|cnt\(19) & ((\tempor|div1|Add0~37\) # (GND)))
-- \tempor|div1|Add0~39\ = CARRY((!\tempor|div1|Add0~37\) # (!\tempor|div1|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|cnt\(19),
	datad => VCC,
	cin => \tempor|div1|Add0~37\,
	combout => \tempor|div1|Add0~38_combout\,
	cout => \tempor|div1|Add0~39\);

-- Location: LCCOMB_X41_Y28_N16
\tempor|div1|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~40_combout\ = (\tempor|div1|cnt\(20) & (\tempor|div1|Add0~39\ $ (GND))) # (!\tempor|div1|cnt\(20) & (!\tempor|div1|Add0~39\ & VCC))
-- \tempor|div1|Add0~41\ = CARRY((\tempor|div1|cnt\(20) & !\tempor|div1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|cnt\(20),
	datad => VCC,
	cin => \tempor|div1|Add0~39\,
	combout => \tempor|div1|Add0~40_combout\,
	cout => \tempor|div1|Add0~41\);

-- Location: LCCOMB_X41_Y28_N18
\tempor|div1|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~42_combout\ = (\tempor|div1|cnt\(21) & (!\tempor|div1|Add0~41\)) # (!\tempor|div1|cnt\(21) & ((\tempor|div1|Add0~41\) # (GND)))
-- \tempor|div1|Add0~43\ = CARRY((!\tempor|div1|Add0~41\) # (!\tempor|div1|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempor|div1|cnt\(21),
	datad => VCC,
	cin => \tempor|div1|Add0~41\,
	combout => \tempor|div1|Add0~42_combout\,
	cout => \tempor|div1|Add0~43\);

-- Location: LCCOMB_X41_Y28_N20
\tempor|div1|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~44_combout\ = (\tempor|div1|cnt\(22) & (\tempor|div1|Add0~43\ $ (GND))) # (!\tempor|div1|cnt\(22) & (!\tempor|div1|Add0~43\ & VCC))
-- \tempor|div1|Add0~45\ = CARRY((\tempor|div1|cnt\(22) & !\tempor|div1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempor|div1|cnt\(22),
	datad => VCC,
	cin => \tempor|div1|Add0~43\,
	combout => \tempor|div1|Add0~44_combout\,
	cout => \tempor|div1|Add0~45\);

-- Location: LCCOMB_X41_Y28_N22
\tempor|div1|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~46_combout\ = (\tempor|div1|cnt\(23) & (!\tempor|div1|Add0~45\)) # (!\tempor|div1|cnt\(23) & ((\tempor|div1|Add0~45\) # (GND)))
-- \tempor|div1|Add0~47\ = CARRY((!\tempor|div1|Add0~45\) # (!\tempor|div1|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempor|div1|cnt\(23),
	datad => VCC,
	cin => \tempor|div1|Add0~45\,
	combout => \tempor|div1|Add0~46_combout\,
	cout => \tempor|div1|Add0~47\);

-- Location: LCCOMB_X41_Y28_N24
\tempor|div1|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Add0~48_combout\ = \tempor|div1|Add0~47\ $ (!\tempor|div1|cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tempor|div1|cnt\(24),
	cin => \tempor|div1|Add0~47\,
	combout => \tempor|div1|Add0~48_combout\);

-- Location: LCFF_X40_Y28_N23
\tempor|div1|clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|clk~regout\);

-- Location: LCFF_X41_Y28_N27
\tempor|div1|cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(24));

-- Location: LCFF_X41_Y28_N29
\tempor|div1|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(22));

-- Location: LCFF_X41_Y28_N31
\tempor|div1|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(21));

-- Location: LCFF_X41_Y28_N23
\tempor|div1|cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(23));

-- Location: LCCOMB_X40_Y28_N4
\tempor|div1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Equal0~0_combout\ = (\tempor|div1|cnt\(24) & (\tempor|div1|cnt\(21) & (\tempor|div1|cnt\(22) & !\tempor|div1|cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|cnt\(24),
	datab => \tempor|div1|cnt\(21),
	datac => \tempor|div1|cnt\(22),
	datad => \tempor|div1|cnt\(23),
	combout => \tempor|div1|Equal0~0_combout\);

-- Location: LCFF_X40_Y28_N31
\tempor|div1|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(20));

-- Location: LCFF_X40_Y28_N15
\tempor|div1|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(19));

-- Location: LCFF_X40_Y28_N25
\tempor|div1|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(18));

-- Location: LCFF_X41_Y28_N11
\tempor|div1|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(17));

-- Location: LCCOMB_X40_Y28_N12
\tempor|div1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Equal0~1_combout\ = (\tempor|div1|cnt\(18) & (\tempor|div1|cnt\(19) & (!\tempor|div1|cnt\(17) & \tempor|div1|cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|cnt\(18),
	datab => \tempor|div1|cnt\(19),
	datac => \tempor|div1|cnt\(17),
	datad => \tempor|div1|cnt\(20),
	combout => \tempor|div1|Equal0~1_combout\);

-- Location: LCFF_X40_Y28_N7
\tempor|div1|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(16));

-- Location: LCFF_X40_Y28_N9
\tempor|div1|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(14));

-- Location: LCFF_X40_Y28_N19
\tempor|div1|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(13));

-- Location: LCFF_X41_Y28_N7
\tempor|div1|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(15));

-- Location: LCCOMB_X40_Y28_N26
\tempor|div1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Equal0~2_combout\ = (\tempor|div1|cnt\(16) & (\tempor|div1|cnt\(13) & (\tempor|div1|cnt\(14) & !\tempor|div1|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|cnt\(16),
	datab => \tempor|div1|cnt\(13),
	datac => \tempor|div1|cnt\(14),
	datad => \tempor|div1|cnt\(15),
	combout => \tempor|div1|Equal0~2_combout\);

-- Location: LCFF_X40_Y28_N17
\tempor|div1|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(12));

-- Location: LCFF_X40_Y28_N1
\tempor|div1|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(11));

-- Location: LCFF_X41_Y29_N29
\tempor|div1|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(10));

-- Location: LCFF_X41_Y29_N27
\tempor|div1|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(9));

-- Location: LCCOMB_X40_Y28_N28
\tempor|div1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Equal0~3_combout\ = (\tempor|div1|cnt\(12) & (\tempor|div1|cnt\(11) & (!\tempor|div1|cnt\(9) & !\tempor|div1|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|cnt\(12),
	datab => \tempor|div1|cnt\(11),
	datac => \tempor|div1|cnt\(9),
	datad => \tempor|div1|cnt\(10),
	combout => \tempor|div1|Equal0~3_combout\);

-- Location: LCCOMB_X40_Y28_N10
\tempor|div1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Equal0~4_combout\ = (\tempor|div1|Equal0~1_combout\ & (\tempor|div1|Equal0~2_combout\ & (\tempor|div1|Equal0~0_combout\ & \tempor|div1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|Equal0~1_combout\,
	datab => \tempor|div1|Equal0~2_combout\,
	datac => \tempor|div1|Equal0~0_combout\,
	datad => \tempor|div1|Equal0~3_combout\,
	combout => \tempor|div1|Equal0~4_combout\);

-- Location: LCFF_X41_Y29_N5
\tempor|div1|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(6));

-- Location: LCFF_X41_Y29_N25
\tempor|div1|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(8));

-- Location: LCFF_X41_Y29_N23
\tempor|div1|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(7));

-- Location: LCFF_X41_Y29_N19
\tempor|div1|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(5));

-- Location: LCCOMB_X41_Y29_N6
\tempor|div1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Equal0~5_combout\ = (!\tempor|div1|cnt\(8) & (!\tempor|div1|cnt\(5) & (\tempor|div1|cnt\(6) & !\tempor|div1|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|cnt\(8),
	datab => \tempor|div1|cnt\(5),
	datac => \tempor|div1|cnt\(6),
	datad => \tempor|div1|cnt\(7),
	combout => \tempor|div1|Equal0~5_combout\);

-- Location: LCFF_X41_Y29_N17
\tempor|div1|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(4));

-- Location: LCFF_X41_Y29_N15
\tempor|div1|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(3));

-- Location: LCFF_X41_Y29_N13
\tempor|div1|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(2));

-- Location: LCFF_X41_Y29_N11
\tempor|div1|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(1));

-- Location: LCCOMB_X41_Y29_N0
\tempor|div1|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Equal0~6_combout\ = (!\tempor|div1|cnt\(1) & (!\tempor|div1|cnt\(3) & (!\tempor|div1|cnt\(4) & !\tempor|div1|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|cnt\(1),
	datab => \tempor|div1|cnt\(3),
	datac => \tempor|div1|cnt\(4),
	datad => \tempor|div1|cnt\(2),
	combout => \tempor|div1|Equal0~6_combout\);

-- Location: LCFF_X41_Y29_N3
\tempor|div1|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|div1|cnt~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|div1|cnt\(0));

-- Location: LCCOMB_X40_Y28_N2
\tempor|div1|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|Equal0~7_combout\ = (!\tempor|div1|cnt\(0) & (\tempor|div1|Equal0~6_combout\ & (\tempor|div1|Equal0~5_combout\ & \tempor|div1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|cnt\(0),
	datab => \tempor|div1|Equal0~6_combout\,
	datac => \tempor|div1|Equal0~5_combout\,
	datad => \tempor|div1|Equal0~4_combout\,
	combout => \tempor|div1|Equal0~7_combout\);

-- Location: LCCOMB_X40_Y28_N22
\tempor|div1|clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|clk~0_combout\ = \tempor|div1|clk~regout\ $ (\tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempor|div1|clk~regout\,
	datad => \tempor|div1|Equal0~7_combout\,
	combout => \tempor|div1|clk~0_combout\);

-- Location: LCCOMB_X41_Y28_N26
\tempor|div1|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|cnt~0_combout\ = (\tempor|div1|Add0~48_combout\ & !\tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempor|div1|Add0~48_combout\,
	datad => \tempor|div1|Equal0~7_combout\,
	combout => \tempor|div1|cnt~0_combout\);

-- Location: LCCOMB_X41_Y28_N28
\tempor|div1|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|cnt~1_combout\ = (\tempor|div1|Add0~44_combout\ & !\tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempor|div1|Add0~44_combout\,
	datad => \tempor|div1|Equal0~7_combout\,
	combout => \tempor|div1|cnt~1_combout\);

-- Location: LCCOMB_X41_Y28_N30
\tempor|div1|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|cnt~2_combout\ = (!\tempor|div1|Equal0~7_combout\ & \tempor|div1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|div1|Equal0~7_combout\,
	datad => \tempor|div1|Add0~42_combout\,
	combout => \tempor|div1|cnt~2_combout\);

-- Location: LCCOMB_X40_Y28_N30
\tempor|div1|cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|cnt~3_combout\ = (\tempor|div1|Add0~40_combout\ & !\tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempor|div1|Add0~40_combout\,
	datad => \tempor|div1|Equal0~7_combout\,
	combout => \tempor|div1|cnt~3_combout\);

-- Location: LCCOMB_X40_Y28_N14
\tempor|div1|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|cnt~4_combout\ = (\tempor|div1|Add0~38_combout\ & !\tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempor|div1|Add0~38_combout\,
	datad => \tempor|div1|Equal0~7_combout\,
	combout => \tempor|div1|cnt~4_combout\);

-- Location: LCCOMB_X40_Y28_N24
\tempor|div1|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|cnt~5_combout\ = (\tempor|div1|Add0~36_combout\ & !\tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempor|div1|Add0~36_combout\,
	datad => \tempor|div1|Equal0~7_combout\,
	combout => \tempor|div1|cnt~5_combout\);

-- Location: LCCOMB_X40_Y28_N6
\tempor|div1|cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|cnt~6_combout\ = (\tempor|div1|Add0~32_combout\ & !\tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempor|div1|Add0~32_combout\,
	datad => \tempor|div1|Equal0~7_combout\,
	combout => \tempor|div1|cnt~6_combout\);

-- Location: LCCOMB_X40_Y28_N8
\tempor|div1|cnt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|cnt~7_combout\ = (!\tempor|div1|Equal0~7_combout\ & \tempor|div1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempor|div1|Equal0~7_combout\,
	datac => \tempor|div1|Add0~28_combout\,
	combout => \tempor|div1|cnt~7_combout\);

-- Location: LCCOMB_X40_Y28_N18
\tempor|div1|cnt~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|cnt~8_combout\ = (!\tempor|div1|Equal0~7_combout\ & \tempor|div1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tempor|div1|Equal0~7_combout\,
	datad => \tempor|div1|Add0~26_combout\,
	combout => \tempor|div1|cnt~8_combout\);

-- Location: LCCOMB_X40_Y28_N16
\tempor|div1|cnt~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|cnt~9_combout\ = (\tempor|div1|Add0~24_combout\ & !\tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempor|div1|Add0~24_combout\,
	datad => \tempor|div1|Equal0~7_combout\,
	combout => \tempor|div1|cnt~9_combout\);

-- Location: LCCOMB_X40_Y28_N0
\tempor|div1|cnt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|cnt~10_combout\ = (\tempor|div1|Add0~22_combout\ & !\tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempor|div1|Add0~22_combout\,
	datad => \tempor|div1|Equal0~7_combout\,
	combout => \tempor|div1|cnt~10_combout\);

-- Location: LCCOMB_X41_Y29_N4
\tempor|div1|cnt~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|cnt~11_combout\ = (\tempor|div1|Add0~12_combout\ & !\tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempor|div1|Add0~12_combout\,
	datad => \tempor|div1|Equal0~7_combout\,
	combout => \tempor|div1|cnt~11_combout\);

-- Location: LCCOMB_X41_Y29_N2
\tempor|div1|cnt~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|div1|cnt~12_combout\ = (\tempor|div1|Add0~0_combout\ & !\tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempor|div1|Add0~0_combout\,
	datad => \tempor|div1|Equal0~7_combout\,
	combout => \tempor|div1|cnt~12_combout\);

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a0_d~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a0_d,
	combout => \a0_d~combout\);

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a1_f~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a1_f,
	combout => \a1_f~combout\);

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a2_d~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a2_d,
	combout => \a2_d~combout\);

-- Location: CLKCTRL_G10
\tempor|div1|clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tempor|div1|clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tempor|div1|clk~clkctrl_outclk\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a0_f~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a0_f,
	combout => \a0_f~combout\);

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\r0_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_r0_in,
	combout => \r0_in~combout\);

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\r_sel~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_r_sel,
	combout => \r_sel~combout\);

-- Location: LCCOMB_X64_Y25_N16
\mux0|F~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|F~0_combout\ = (\r_sel~combout\ & ((\a0_d~combout\) # ((\a0_f~combout\)))) # (!\r_sel~combout\ & (((\r0_in~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0_d~combout\,
	datab => \a0_f~combout\,
	datac => \r0_in~combout\,
	datad => \r_sel~combout\,
	combout => \mux0|F~0_combout\);

-- Location: LCFF_X64_Y25_N17
\r0|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux0|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|Q~regout\);

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a1_d~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a1_d,
	combout => \a1_d~combout\);

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\r1_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_r1_in,
	combout => \r1_in~combout\);

-- Location: LCCOMB_X64_Y26_N16
\mux1|F~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|F~0_combout\ = (\r_sel~combout\ & ((\a1_f~combout\) # ((\a1_d~combout\)))) # (!\r_sel~combout\ & (((\r1_in~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1_f~combout\,
	datab => \a1_d~combout\,
	datac => \r_sel~combout\,
	datad => \r1_in~combout\,
	combout => \mux1|F~0_combout\);

-- Location: LCFF_X64_Y26_N17
\r1|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q~regout\);

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a2_f~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a2_f,
	combout => \a2_f~combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\r2_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_r2_in,
	combout => \r2_in~combout\);

-- Location: LCCOMB_X64_Y26_N22
\mux2|F~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2|F~0_combout\ = (\r_sel~combout\ & ((\a2_d~combout\) # ((\a2_f~combout\)))) # (!\r_sel~combout\ & (((\r2_in~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a2_d~combout\,
	datab => \a2_f~combout\,
	datac => \r_sel~combout\,
	datad => \r2_in~combout\,
	combout => \mux2|F~0_combout\);

-- Location: LCFF_X64_Y26_N23
\r2|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux2|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|Q~regout\);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\f_cnt~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_f_cnt,
	combout => \f_cnt~combout\);

-- Location: LCCOMB_X14_Y35_N12
\tempor|count[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|count[0]~0_combout\ = (!\tempor|count\(0) & \f_cnt~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempor|count\(0),
	datad => \f_cnt~combout\,
	combout => \tempor|count[0]~0_combout\);

-- Location: LCFF_X14_Y35_N13
\tempor|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tempor|div1|clk~clkctrl_outclk\,
	datain => \tempor|count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|count\(0));

-- Location: LCCOMB_X14_Y35_N2
\tempor|count[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|count[1]~1_combout\ = (\f_cnt~combout\ & (\tempor|count\(1) $ (\tempor|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f_cnt~combout\,
	datac => \tempor|count\(1),
	datad => \tempor|count\(0),
	combout => \tempor|count[1]~1_combout\);

-- Location: LCFF_X14_Y35_N3
\tempor|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \tempor|div1|clk~clkctrl_outclk\,
	datain => \tempor|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|count\(1));

-- Location: LCCOMB_X14_Y35_N0
\tempor|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|Equal0~0_combout\ = (\tempor|count\(0) & \tempor|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempor|count\(0),
	datad => \tempor|count\(1),
	combout => \tempor|Equal0~0_combout\);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\porta~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_porta,
	combout => \porta~combout\);

-- Location: LCCOMB_X1_Y25_N28
\reg_porta|Q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_porta|Q~feeder_combout\ = \porta~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \porta~combout\,
	combout => \reg_porta|Q~feeder_combout\);

-- Location: LCFF_X1_Y25_N29
\reg_porta|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_porta|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_porta|Q~regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\led_in[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_led_in(0),
	combout => \led_in~combout\(0));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\led_in[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_led_in(2),
	combout => \led_in~combout\(2));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\led_in[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_led_in(3),
	combout => \led_in~combout\(3));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\led_in[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_led_in(1),
	combout => \led_in~combout\(1));

-- Location: LCCOMB_X28_Y35_N12
\BCD|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCD|Mux6~0_combout\ = (\led_in~combout\(2) & (!\led_in~combout\(1) & (\led_in~combout\(0) $ (!\led_in~combout\(3))))) # (!\led_in~combout\(2) & (\led_in~combout\(0) & (\led_in~combout\(3) $ (!\led_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_in~combout\(0),
	datab => \led_in~combout\(2),
	datac => \led_in~combout\(3),
	datad => \led_in~combout\(1),
	combout => \BCD|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y35_N26
\BCD|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCD|Mux5~0_combout\ = (\led_in~combout\(3) & ((\led_in~combout\(0) & ((\led_in~combout\(1)))) # (!\led_in~combout\(0) & (\led_in~combout\(2))))) # (!\led_in~combout\(3) & (\led_in~combout\(2) & (\led_in~combout\(0) $ (\led_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_in~combout\(0),
	datab => \led_in~combout\(2),
	datac => \led_in~combout\(3),
	datad => \led_in~combout\(1),
	combout => \BCD|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y35_N20
\BCD|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCD|Mux4~0_combout\ = (\led_in~combout\(2) & (\led_in~combout\(3) & ((\led_in~combout\(1)) # (!\led_in~combout\(0))))) # (!\led_in~combout\(2) & (!\led_in~combout\(0) & (!\led_in~combout\(3) & \led_in~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_in~combout\(0),
	datab => \led_in~combout\(2),
	datac => \led_in~combout\(3),
	datad => \led_in~combout\(1),
	combout => \BCD|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y35_N6
\BCD|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCD|Mux3~0_combout\ = (\led_in~combout\(1) & ((\led_in~combout\(0) & (\led_in~combout\(2))) # (!\led_in~combout\(0) & (!\led_in~combout\(2) & \led_in~combout\(3))))) # (!\led_in~combout\(1) & (!\led_in~combout\(3) & (\led_in~combout\(0) $ 
-- (\led_in~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_in~combout\(0),
	datab => \led_in~combout\(2),
	datac => \led_in~combout\(3),
	datad => \led_in~combout\(1),
	combout => \BCD|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y35_N0
\BCD|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCD|Mux2~0_combout\ = (\led_in~combout\(1) & (\led_in~combout\(0) & ((!\led_in~combout\(3))))) # (!\led_in~combout\(1) & ((\led_in~combout\(2) & ((!\led_in~combout\(3)))) # (!\led_in~combout\(2) & (\led_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_in~combout\(0),
	datab => \led_in~combout\(2),
	datac => \led_in~combout\(3),
	datad => \led_in~combout\(1),
	combout => \BCD|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y35_N10
\BCD|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCD|Mux1~0_combout\ = (\led_in~combout\(0) & (\led_in~combout\(3) $ (((\led_in~combout\(1)) # (!\led_in~combout\(2)))))) # (!\led_in~combout\(0) & (!\led_in~combout\(2) & (!\led_in~combout\(3) & \led_in~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_in~combout\(0),
	datab => \led_in~combout\(2),
	datac => \led_in~combout\(3),
	datad => \led_in~combout\(1),
	combout => \BCD|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y35_N16
\BCD|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCD|Mux0~0_combout\ = (\led_in~combout\(0) & ((\led_in~combout\(3)) # (\led_in~combout\(2) $ (\led_in~combout\(1))))) # (!\led_in~combout\(0) & ((\led_in~combout\(1)) # (\led_in~combout\(2) $ (\led_in~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_in~combout\(0),
	datab => \led_in~combout\(2),
	datac => \led_in~combout\(3),
	datad => \led_in~combout\(1),
	combout => \BCD|Mux0~0_combout\);

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\motor[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_motor(0),
	combout => \motor~combout\(0));

-- Location: LCCOMB_X36_Y1_N16
\reg_M|Mout[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_M|Mout[0]~feeder_combout\ = \motor~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \motor~combout\(0),
	combout => \reg_M|Mout[0]~feeder_combout\);

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\load_m~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_load_m,
	combout => \load_m~combout\);

-- Location: LCFF_X36_Y1_N17
\reg_M|Mout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_M|Mout[0]~feeder_combout\,
	ena => \load_m~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_M|Mout\(0));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\motor[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_motor(1),
	combout => \motor~combout\(1));

-- Location: LCCOMB_X36_Y1_N14
\reg_M|Mout[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_M|Mout[1]~feeder_combout\ = \motor~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \motor~combout\(1),
	combout => \reg_M|Mout[1]~feeder_combout\);

-- Location: LCFF_X36_Y1_N15
\reg_M|Mout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_M|Mout[1]~feeder_combout\,
	ena => \load_m~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_M|Mout\(1));

-- Location: LCCOMB_X36_Y1_N20
\decod|b[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \decod|b\(0) = (\reg_M|Mout\(0)) # (\reg_M|Mout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_M|Mout\(0),
	datac => \reg_M|Mout\(1),
	combout => \decod|b\(0));

-- Location: LCCOMB_X36_Y1_N2
\decod|b[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decod|b[2]~0_combout\ = (\reg_M|Mout\(0) & !\reg_M|Mout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_M|Mout\(0),
	datac => \reg_M|Mout\(1),
	combout => \decod|b[2]~0_combout\);

-- Location: LCCOMB_X37_Y1_N16
\decod|b[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decod|b[2]~1_combout\ = (\reg_M|Mout\(1) & !\reg_M|Mout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_M|Mout\(1),
	datad => \reg_M|Mout\(0),
	combout => \decod|b[2]~1_combout\);

-- Location: LCCOMB_X37_Y1_N18
\decod|b[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decod|b[2]~2_combout\ = (\reg_M|Mout\(1) & \reg_M|Mout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_M|Mout\(1),
	datad => \reg_M|Mout\(0),
	combout => \decod|b[2]~2_combout\);

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r0_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \r0|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r0_out);

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r1_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \r1|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r1_out);

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r2_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \r2|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r2_out);

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\f_T~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \tempor|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_f_T);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\porta_out~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \reg_porta|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_porta_out);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BCD|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_out(0));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BCD|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_out(1));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BCD|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_out(2));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BCD|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_out(3));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_out[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BCD|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_out(4));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_out[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BCD|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_out(5));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_out[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \BCD|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_out(6));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\m_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decod|ALT_INV_b\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_m_out(0));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\m_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decod|b[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_m_out(1));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\m_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decod|b[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_m_out(2));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\m_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \decod|b[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_m_out(3));
END structure;


