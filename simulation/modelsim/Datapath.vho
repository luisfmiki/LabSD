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

-- DATE "12/02/2022 11:00:23"

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
-- r0_out	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r1_out	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r2_out	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- f_T	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- porta_out	=>  Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_out[0]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_out[1]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_out[2]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_out[3]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_out[4]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_out[5]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_out[6]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m_out[0]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m_out[1]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m_out[2]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- m_out[3]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_in[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- led_in[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- led_in[2]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- led_in[3]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- r0_in	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- r_sel	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a0_f	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a0_d	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- r1_in	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a1_f	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a1_d	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- r2_in	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a2_f	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a2_d	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- f_cnt	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- porta	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- motor[0]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- load_m	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- motor[1]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \a0_d~combout\ : std_logic;
SIGNAL \r1_in~combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \r0_in~combout\ : std_logic;
SIGNAL \a0_f~combout\ : std_logic;
SIGNAL \r_sel~combout\ : std_logic;
SIGNAL \mux0|F~0_combout\ : std_logic;
SIGNAL \r0|Q~regout\ : std_logic;
SIGNAL \a1_d~combout\ : std_logic;
SIGNAL \a1_f~combout\ : std_logic;
SIGNAL \mux1|F~0_combout\ : std_logic;
SIGNAL \r1|Q~regout\ : std_logic;
SIGNAL \a2_f~combout\ : std_logic;
SIGNAL \r2_in~combout\ : std_logic;
SIGNAL \a2_d~combout\ : std_logic;
SIGNAL \mux2|F~0_combout\ : std_logic;
SIGNAL \r2|Q~regout\ : std_logic;
SIGNAL \f_cnt~combout\ : std_logic;
SIGNAL \tempor|counter_up~2_combout\ : std_logic;
SIGNAL \tempor|counter_up~1_combout\ : std_logic;
SIGNAL \tempor|counter_up~0_combout\ : std_logic;
SIGNAL \tempor|Equal0~0_combout\ : std_logic;
SIGNAL \porta~combout\ : std_logic;
SIGNAL \regPorta|Q~feeder_combout\ : std_logic;
SIGNAL \regPorta|Q~regout\ : std_logic;
SIGNAL \BCD|Mux6~0_combout\ : std_logic;
SIGNAL \BCD|Mux5~0_combout\ : std_logic;
SIGNAL \BCD|Mux4~0_combout\ : std_logic;
SIGNAL \BCD|Mux3~0_combout\ : std_logic;
SIGNAL \BCD|Mux2~0_combout\ : std_logic;
SIGNAL \BCD|Mux1~0_combout\ : std_logic;
SIGNAL \BCD|Mux0~0_combout\ : std_logic;
SIGNAL \reg_M|Mout[1]~feeder_combout\ : std_logic;
SIGNAL \load_m~combout\ : std_logic;
SIGNAL \reg_M|Mout[0]~feeder_combout\ : std_logic;
SIGNAL \decod|b[2]~0_combout\ : std_logic;
SIGNAL \decod|b[2]~1_combout\ : std_logic;
SIGNAL \decod|b[2]~2_combout\ : std_logic;
SIGNAL \decod|b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg_M|Mout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \tempor|counter_up\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \motor~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \led_in~combout\ : std_logic_vector(3 DOWNTO 0);
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
\decod|ALT_INV_b\(0) <= NOT \decod|b\(0);
\BCD|ALT_INV_Mux0~0_combout\ <= NOT \BCD|Mux0~0_combout\;

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y32_N20
\mux0|F~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux0|F~0_combout\ = (\r_sel~combout\ & ((\a0_d~combout\) # ((\a0_f~combout\)))) # (!\r_sel~combout\ & (((\r0_in~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a0_d~combout\,
	datab => \r0_in~combout\,
	datac => \a0_f~combout\,
	datad => \r_sel~combout\,
	combout => \mux0|F~0_combout\);

-- Location: LCFF_X1_Y32_N21
\r0|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux0|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r0|Q~regout\);

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y32_N14
\mux1|F~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux1|F~0_combout\ = (\r_sel~combout\ & (((\a1_d~combout\) # (\a1_f~combout\)))) # (!\r_sel~combout\ & (\r1_in~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1_in~combout\,
	datab => \a1_d~combout\,
	datac => \a1_f~combout\,
	datad => \r_sel~combout\,
	combout => \mux1|F~0_combout\);

-- Location: LCFF_X1_Y32_N15
\r1|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux1|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r1|Q~regout\);

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y33_N20
\mux2|F~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux2|F~0_combout\ = (\r_sel~combout\ & ((\a2_f~combout\) # ((\a2_d~combout\)))) # (!\r_sel~combout\ & (((\r2_in~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_sel~combout\,
	datab => \a2_f~combout\,
	datac => \r2_in~combout\,
	datad => \a2_d~combout\,
	combout => \mux2|F~0_combout\);

-- Location: LCFF_X1_Y33_N21
\r2|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \mux2|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \r2|Q~regout\);

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X64_Y22_N0
\tempor|counter_up~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|counter_up~2_combout\ = (!\tempor|counter_up\(0) & \f_cnt~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tempor|counter_up\(0),
	datad => \f_cnt~combout\,
	combout => \tempor|counter_up~2_combout\);

-- Location: LCFF_X64_Y22_N1
\tempor|counter_up[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|counter_up~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|counter_up\(0));

-- Location: LCCOMB_X64_Y22_N6
\tempor|counter_up~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|counter_up~1_combout\ = (\f_cnt~combout\ & (\tempor|counter_up\(1) $ (\tempor|counter_up\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_cnt~combout\,
	datac => \tempor|counter_up\(1),
	datad => \tempor|counter_up\(0),
	combout => \tempor|counter_up~1_combout\);

-- Location: LCFF_X64_Y22_N7
\tempor|counter_up[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|counter_up~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|counter_up\(1));

-- Location: LCCOMB_X64_Y22_N12
\tempor|counter_up~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|counter_up~0_combout\ = (\f_cnt~combout\ & (\tempor|counter_up\(2) $ (((\tempor|counter_up\(0) & \tempor|counter_up\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f_cnt~combout\,
	datab => \tempor|counter_up\(0),
	datac => \tempor|counter_up\(2),
	datad => \tempor|counter_up\(1),
	combout => \tempor|counter_up~0_combout\);

-- Location: LCFF_X64_Y22_N13
\tempor|counter_up[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tempor|counter_up~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tempor|counter_up\(2));

-- Location: LCCOMB_X64_Y22_N14
\tempor|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tempor|Equal0~0_combout\ = (\tempor|counter_up\(2) & (\tempor|counter_up\(1) & \tempor|counter_up\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempor|counter_up\(2),
	datab => \tempor|counter_up\(1),
	datac => \tempor|counter_up\(0),
	combout => \tempor|Equal0~0_combout\);

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y5_N20
\regPorta|Q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \regPorta|Q~feeder_combout\ = \porta~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \porta~combout\,
	combout => \regPorta|Q~feeder_combout\);

-- Location: LCFF_X1_Y5_N21
\regPorta|Q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \regPorta|Q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regPorta|Q~regout\);

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

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X21_Y35_N20
\BCD|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCD|Mux6~0_combout\ = (\led_in~combout\(2) & (!\led_in~combout\(1) & (\led_in~combout\(3) $ (!\led_in~combout\(0))))) # (!\led_in~combout\(2) & (\led_in~combout\(0) & (\led_in~combout\(1) $ (!\led_in~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_in~combout\(1),
	datab => \led_in~combout\(2),
	datac => \led_in~combout\(3),
	datad => \led_in~combout\(0),
	combout => \BCD|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y35_N10
\BCD|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCD|Mux5~0_combout\ = (\led_in~combout\(1) & ((\led_in~combout\(0) & ((\led_in~combout\(3)))) # (!\led_in~combout\(0) & (\led_in~combout\(2))))) # (!\led_in~combout\(1) & (\led_in~combout\(2) & (\led_in~combout\(3) $ (\led_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_in~combout\(1),
	datab => \led_in~combout\(2),
	datac => \led_in~combout\(3),
	datad => \led_in~combout\(0),
	combout => \BCD|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y35_N0
\BCD|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCD|Mux4~0_combout\ = (\led_in~combout\(2) & (\led_in~combout\(3) & ((\led_in~combout\(1)) # (!\led_in~combout\(0))))) # (!\led_in~combout\(2) & (\led_in~combout\(1) & (!\led_in~combout\(3) & !\led_in~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_in~combout\(1),
	datab => \led_in~combout\(2),
	datac => \led_in~combout\(3),
	datad => \led_in~combout\(0),
	combout => \BCD|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y35_N2
\BCD|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCD|Mux3~0_combout\ = (\led_in~combout\(1) & ((\led_in~combout\(2) & ((\led_in~combout\(0)))) # (!\led_in~combout\(2) & (\led_in~combout\(3) & !\led_in~combout\(0))))) # (!\led_in~combout\(1) & (!\led_in~combout\(3) & (\led_in~combout\(2) $ 
-- (\led_in~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_in~combout\(1),
	datab => \led_in~combout\(2),
	datac => \led_in~combout\(3),
	datad => \led_in~combout\(0),
	combout => \BCD|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y35_N12
\BCD|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCD|Mux2~0_combout\ = (\led_in~combout\(1) & (((!\led_in~combout\(3) & \led_in~combout\(0))))) # (!\led_in~combout\(1) & ((\led_in~combout\(2) & (!\led_in~combout\(3))) # (!\led_in~combout\(2) & ((\led_in~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_in~combout\(1),
	datab => \led_in~combout\(2),
	datac => \led_in~combout\(3),
	datad => \led_in~combout\(0),
	combout => \BCD|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y35_N18
\BCD|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCD|Mux1~0_combout\ = (\led_in~combout\(1) & (!\led_in~combout\(3) & ((\led_in~combout\(0)) # (!\led_in~combout\(2))))) # (!\led_in~combout\(1) & (\led_in~combout\(0) & (\led_in~combout\(2) $ (!\led_in~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_in~combout\(1),
	datab => \led_in~combout\(2),
	datac => \led_in~combout\(3),
	datad => \led_in~combout\(0),
	combout => \BCD|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y35_N16
\BCD|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BCD|Mux0~0_combout\ = (\led_in~combout\(0) & ((\led_in~combout\(3)) # (\led_in~combout\(1) $ (\led_in~combout\(2))))) # (!\led_in~combout\(0) & ((\led_in~combout\(1)) # (\led_in~combout\(2) $ (\led_in~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_in~combout\(1),
	datab => \led_in~combout\(2),
	datac => \led_in~combout\(3),
	datad => \led_in~combout\(0),
	combout => \BCD|Mux0~0_combout\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X35_Y35_N30
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

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X35_Y35_N31
\reg_M|Mout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_M|Mout[1]~feeder_combout\,
	ena => \load_m~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_M|Mout\(1));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X35_Y35_N24
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

-- Location: LCFF_X35_Y35_N25
\reg_M|Mout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \reg_M|Mout[0]~feeder_combout\,
	ena => \load_m~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_M|Mout\(0));

-- Location: LCCOMB_X35_Y35_N0
\decod|b[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \decod|b\(0) = (\reg_M|Mout\(1)) # (\reg_M|Mout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_M|Mout\(1),
	datac => \reg_M|Mout\(0),
	combout => \decod|b\(0));

-- Location: LCCOMB_X34_Y35_N0
\decod|b[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \decod|b[2]~0_combout\ = (!\reg_M|Mout\(1) & \reg_M|Mout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_M|Mout\(1),
	datad => \reg_M|Mout\(0),
	combout => \decod|b[2]~0_combout\);

-- Location: LCCOMB_X34_Y35_N2
\decod|b[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \decod|b[2]~1_combout\ = (\reg_M|Mout\(1) & !\reg_M|Mout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_M|Mout\(1),
	datad => \reg_M|Mout\(0),
	combout => \decod|b[2]~1_combout\);

-- Location: LCCOMB_X34_Y35_N28
\decod|b[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \decod|b[2]~2_combout\ = (\reg_M|Mout\(1) & \reg_M|Mout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_M|Mout\(1),
	datad => \reg_M|Mout\(0),
	combout => \decod|b[2]~2_combout\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \regPorta|Q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_porta_out);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


