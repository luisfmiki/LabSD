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

-- DATE "12/07/2022 19:59:07"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	elevador IS
    PORT (
	clk : IN std_logic;
	A0_f : IN std_logic;
	A0_d : IN std_logic;
	A1_f : IN std_logic;
	A1_d : IN std_logic;
	A2_f : IN std_logic;
	A2_d : IN std_logic;
	S_porta : IN std_logic;
	S_andar : IN std_logic;
	B_abre : IN std_logic;
	B_fecha : IN std_logic;
	B_alarme : IN std_logic;
	RST : IN std_logic;
	M_out : OUT std_logic_vector(3 DOWNTO 0);
	LED_out : OUT std_logic_vector(6 DOWNTO 0);
	PORTA_out : OUT std_logic;
	B_alarme_out : OUT std_logic
	);
END elevador;

-- Design Ports Information
-- M_out[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_out[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_out[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M_out[3]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[1]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[3]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[4]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[5]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_out[6]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PORTA_out	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_alarme_out	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_alarme	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_andar	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_abre	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1_f	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1_d	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2_f	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2_d	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0_f	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0_d	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S_porta	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_fecha	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF elevador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_A0_f : std_logic;
SIGNAL ww_A0_d : std_logic;
SIGNAL ww_A1_f : std_logic;
SIGNAL ww_A1_d : std_logic;
SIGNAL ww_A2_f : std_logic;
SIGNAL ww_A2_d : std_logic;
SIGNAL ww_S_porta : std_logic;
SIGNAL ww_S_andar : std_logic;
SIGNAL ww_B_abre : std_logic;
SIGNAL ww_B_fecha : std_logic;
SIGNAL ww_B_alarme : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_M_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LED_out : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_PORTA_out : std_logic;
SIGNAL ww_B_alarme_out : std_logic;
SIGNAL \control|Selector13~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control|Selector11~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \path|tempor|div1|clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \path|tempor|div1|Add0~0_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~1\ : std_logic;
SIGNAL \path|tempor|div1|Add0~2_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~3\ : std_logic;
SIGNAL \path|tempor|div1|Add0~4_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~5\ : std_logic;
SIGNAL \path|tempor|div1|Add0~6_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~7\ : std_logic;
SIGNAL \path|tempor|div1|Add0~8_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~9\ : std_logic;
SIGNAL \path|tempor|div1|Add0~10_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~11\ : std_logic;
SIGNAL \path|tempor|div1|Add0~12_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~13\ : std_logic;
SIGNAL \path|tempor|div1|Add0~14_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~15\ : std_logic;
SIGNAL \path|tempor|div1|Add0~16_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~17\ : std_logic;
SIGNAL \path|tempor|div1|Add0~18_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~19\ : std_logic;
SIGNAL \path|tempor|div1|Add0~20_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~21\ : std_logic;
SIGNAL \path|tempor|div1|Add0~22_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~23\ : std_logic;
SIGNAL \path|tempor|div1|Add0~24_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~25\ : std_logic;
SIGNAL \path|tempor|div1|Add0~26_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~27\ : std_logic;
SIGNAL \path|tempor|div1|Add0~28_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~29\ : std_logic;
SIGNAL \path|tempor|div1|Add0~30_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~31\ : std_logic;
SIGNAL \path|tempor|div1|Add0~32_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~33\ : std_logic;
SIGNAL \path|tempor|div1|Add0~34_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~35\ : std_logic;
SIGNAL \path|tempor|div1|Add0~36_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~37\ : std_logic;
SIGNAL \path|tempor|div1|Add0~38_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~39\ : std_logic;
SIGNAL \path|tempor|div1|Add0~40_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~41\ : std_logic;
SIGNAL \path|tempor|div1|Add0~42_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~43\ : std_logic;
SIGNAL \path|tempor|div1|Add0~44_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~45\ : std_logic;
SIGNAL \path|tempor|div1|Add0~46_combout\ : std_logic;
SIGNAL \path|tempor|div1|Add0~47\ : std_logic;
SIGNAL \path|tempor|div1|Add0~48_combout\ : std_logic;
SIGNAL \path|mux2|F~0_combout\ : std_logic;
SIGNAL \control|Selector15~2_combout\ : std_logic;
SIGNAL \control|Selector7~0_combout\ : std_logic;
SIGNAL \path|tempor|div1|clk~q\ : std_logic;
SIGNAL \path|tempor|div1|Equal0~0_combout\ : std_logic;
SIGNAL \path|tempor|div1|Equal0~1_combout\ : std_logic;
SIGNAL \path|tempor|div1|Equal0~2_combout\ : std_logic;
SIGNAL \path|tempor|div1|Equal0~3_combout\ : std_logic;
SIGNAL \path|tempor|div1|Equal0~4_combout\ : std_logic;
SIGNAL \path|tempor|div1|Equal0~5_combout\ : std_logic;
SIGNAL \path|tempor|div1|Equal0~6_combout\ : std_logic;
SIGNAL \path|tempor|div1|Equal0~7_combout\ : std_logic;
SIGNAL \path|tempor|div1|clk~0_combout\ : std_logic;
SIGNAL \path|tempor|div1|cnt~0_combout\ : std_logic;
SIGNAL \path|tempor|div1|cnt~1_combout\ : std_logic;
SIGNAL \path|tempor|div1|cnt~2_combout\ : std_logic;
SIGNAL \path|tempor|div1|cnt~3_combout\ : std_logic;
SIGNAL \path|tempor|div1|cnt~4_combout\ : std_logic;
SIGNAL \path|tempor|div1|cnt~5_combout\ : std_logic;
SIGNAL \path|tempor|div1|cnt~6_combout\ : std_logic;
SIGNAL \path|tempor|div1|cnt~7_combout\ : std_logic;
SIGNAL \path|tempor|div1|cnt~8_combout\ : std_logic;
SIGNAL \path|tempor|div1|cnt~9_combout\ : std_logic;
SIGNAL \path|tempor|div1|cnt~10_combout\ : std_logic;
SIGNAL \path|tempor|div1|cnt~11_combout\ : std_logic;
SIGNAL \path|tempor|div1|cnt~12_combout\ : std_logic;
SIGNAL \A1_f~input_o\ : std_logic;
SIGNAL \A2_f~input_o\ : std_logic;
SIGNAL \A2_d~input_o\ : std_logic;
SIGNAL \A0_d~input_o\ : std_logic;
SIGNAL \S_porta~input_o\ : std_logic;
SIGNAL \path|tempor|div1|clk~clkctrl_outclk\ : std_logic;
SIGNAL \path|tempor|div1|clk~feeder_combout\ : std_logic;
SIGNAL \M_out[0]~output_o\ : std_logic;
SIGNAL \M_out[1]~output_o\ : std_logic;
SIGNAL \M_out[2]~output_o\ : std_logic;
SIGNAL \M_out[3]~output_o\ : std_logic;
SIGNAL \LED_out[0]~output_o\ : std_logic;
SIGNAL \LED_out[1]~output_o\ : std_logic;
SIGNAL \LED_out[2]~output_o\ : std_logic;
SIGNAL \LED_out[3]~output_o\ : std_logic;
SIGNAL \LED_out[4]~output_o\ : std_logic;
SIGNAL \LED_out[5]~output_o\ : std_logic;
SIGNAL \LED_out[6]~output_o\ : std_logic;
SIGNAL \PORTA_out~output_o\ : std_logic;
SIGNAL \B_alarme_out~output_o\ : std_logic;
SIGNAL \A0_f~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \B_fecha~input_o\ : std_logic;
SIGNAL \B_abre~input_o\ : std_logic;
SIGNAL \A1_d~input_o\ : std_logic;
SIGNAL \path|mux1|F~0_combout\ : std_logic;
SIGNAL \path|r1|Q~q\ : std_logic;
SIGNAL \S_andar~input_o\ : std_logic;
SIGNAL \control|process_1~0_combout\ : std_logic;
SIGNAL \path|tempor|count[0]~0_combout\ : std_logic;
SIGNAL \path|tempor|count[1]~1_combout\ : std_logic;
SIGNAL \control|Selector4~2_combout\ : std_logic;
SIGNAL \control|Selector4~0_combout\ : std_logic;
SIGNAL \control|Selector4~1_combout\ : std_logic;
SIGNAL \control|Selector4~3_combout\ : std_logic;
SIGNAL \control|proximo_estado.F_1_573~combout\ : std_logic;
SIGNAL \control|estado_atual~11_combout\ : std_logic;
SIGNAL \control|estado_atual.F_1~q\ : std_logic;
SIGNAL \control|Selector15~0_combout\ : std_logic;
SIGNAL \control|Selector6~0_combout\ : std_logic;
SIGNAL \control|proximo_estado.E2_505~combout\ : std_logic;
SIGNAL \control|estado_atual~13_combout\ : std_logic;
SIGNAL \control|estado_atual.E2~q\ : std_logic;
SIGNAL \control|process_1~3_combout\ : std_logic;
SIGNAL \control|Selector7~1_combout\ : std_logic;
SIGNAL \control|Selector7~2_combout\ : std_logic;
SIGNAL \control|proximo_estado.F_2_471~combout\ : std_logic;
SIGNAL \control|estado_atual~14_combout\ : std_logic;
SIGNAL \control|estado_atual.F_2~q\ : std_logic;
SIGNAL \control|Selector8~0_combout\ : std_logic;
SIGNAL \control|Selector8~1_combout\ : std_logic;
SIGNAL \control|proximo_estado.A_2_437~combout\ : std_logic;
SIGNAL \control|estado_atual~15_combout\ : std_logic;
SIGNAL \control|estado_atual.A_2~q\ : std_logic;
SIGNAL \path|mux2|F~1_combout\ : std_logic;
SIGNAL \path|r2|Q~q\ : std_logic;
SIGNAL \control|process_1~2_combout\ : std_logic;
SIGNAL \control|Selector1~1_combout\ : std_logic;
SIGNAL \control|Selector1~2_combout\ : std_logic;
SIGNAL \control|proximo_estado.F_T_675~combout\ : std_logic;
SIGNAL \control|estado_atual~17_combout\ : std_logic;
SIGNAL \control|estado_atual.F_T~q\ : std_logic;
SIGNAL \control|Selector2~0_combout\ : std_logic;
SIGNAL \control|Selector2~1_combout\ : std_logic;
SIGNAL \control|Selector2~2_combout\ : std_logic;
SIGNAL \control|proximo_estado.A_T_641~combout\ : std_logic;
SIGNAL \control|estado_atual~16_combout\ : std_logic;
SIGNAL \control|estado_atual.A_T~q\ : std_logic;
SIGNAL \control|Selector11~0_combout\ : std_logic;
SIGNAL \control|Selector11~0clkctrl_outclk\ : std_logic;
SIGNAL \control|Selector5~0_combout\ : std_logic;
SIGNAL \control|Selector5~1_combout\ : std_logic;
SIGNAL \control|proximo_estado.A_1_539~combout\ : std_logic;
SIGNAL \control|estado_atual~12_combout\ : std_logic;
SIGNAL \control|estado_atual.A_1~q\ : std_logic;
SIGNAL \control|WideOr0~0_combout\ : std_logic;
SIGNAL \path|mux0|F~0_combout\ : std_logic;
SIGNAL \path|r0|Q~q\ : std_logic;
SIGNAL \control|Selector17~0_combout\ : std_logic;
SIGNAL \control|Selector17~1_combout\ : std_logic;
SIGNAL \control|Selector17~2_combout\ : std_logic;
SIGNAL \control|Selector17~3_combout\ : std_logic;
SIGNAL \control|Selector3~0_combout\ : std_logic;
SIGNAL \control|proximo_estado.E1_607~combout\ : std_logic;
SIGNAL \control|estado_atual~10_combout\ : std_logic;
SIGNAL \control|estado_atual.E1~q\ : std_logic;
SIGNAL \control|process_1~1_combout\ : std_logic;
SIGNAL \control|Selector9~1_combout\ : std_logic;
SIGNAL \control|motor[1]~0_combout\ : std_logic;
SIGNAL \control|Selector13~0_combout\ : std_logic;
SIGNAL \control|Selector13~0clkctrl_outclk\ : std_logic;
SIGNAL \control|Selector1~0_combout\ : std_logic;
SIGNAL \control|Selector15~1_combout\ : std_logic;
SIGNAL \path|decod|b[2]~0_combout\ : std_logic;
SIGNAL \path|decod|b[2]~1_combout\ : std_logic;
SIGNAL \path|decod|b[2]~2_combout\ : std_logic;
SIGNAL \control|Selector12~0_combout\ : std_logic;
SIGNAL \control|Selector9~0_combout\ : std_logic;
SIGNAL \control|Selector9~2_combout\ : std_logic;
SIGNAL \control|Selector0~0_combout\ : std_logic;
SIGNAL \control|Selector0~1_combout\ : std_logic;
SIGNAL \path|BCD|Mux1~0_combout\ : std_logic;
SIGNAL \path|BCD|Mux1~1_combout\ : std_logic;
SIGNAL \path|BCD|Mux1~2_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \path|reg_porta|Q~q\ : std_logic;
SIGNAL \B_alarme~input_o\ : std_logic;
SIGNAL \path|tempor|div1|cnt\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \path|decod|b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \control|led\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \path|reg_M|Mout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \path|tempor|count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \control|motor\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \control|ALT_INV_led\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \path|decod|ALT_INV_b\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_A0_f <= A0_f;
ww_A0_d <= A0_d;
ww_A1_f <= A1_f;
ww_A1_d <= A1_d;
ww_A2_f <= A2_f;
ww_A2_d <= A2_d;
ww_S_porta <= S_porta;
ww_S_andar <= S_andar;
ww_B_abre <= B_abre;
ww_B_fecha <= B_fecha;
ww_B_alarme <= B_alarme;
ww_RST <= RST;
M_out <= ww_M_out;
LED_out <= ww_LED_out;
PORTA_out <= ww_PORTA_out;
B_alarme_out <= ww_B_alarme_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\control|Selector13~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \control|Selector13~0_combout\);

\control|Selector11~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \control|Selector11~0_combout\);

\path|tempor|div1|clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \path|tempor|div1|clk~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\control|ALT_INV_led\(1) <= NOT \control|led\(1);
\path|decod|ALT_INV_b\(0) <= NOT \path|decod|b\(0);

-- Location: LCCOMB_X55_Y72_N8
\path|tempor|div1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~0_combout\ = \path|tempor|div1|cnt\(0) $ (VCC)
-- \path|tempor|div1|Add0~1\ = CARRY(\path|tempor|div1|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|cnt\(0),
	datad => VCC,
	combout => \path|tempor|div1|Add0~0_combout\,
	cout => \path|tempor|div1|Add0~1\);

-- Location: LCCOMB_X55_Y72_N10
\path|tempor|div1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~2_combout\ = (\path|tempor|div1|cnt\(1) & (!\path|tempor|div1|Add0~1\)) # (!\path|tempor|div1|cnt\(1) & ((\path|tempor|div1|Add0~1\) # (GND)))
-- \path|tempor|div1|Add0~3\ = CARRY((!\path|tempor|div1|Add0~1\) # (!\path|tempor|div1|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(1),
	datad => VCC,
	cin => \path|tempor|div1|Add0~1\,
	combout => \path|tempor|div1|Add0~2_combout\,
	cout => \path|tempor|div1|Add0~3\);

-- Location: LCCOMB_X55_Y72_N12
\path|tempor|div1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~4_combout\ = (\path|tempor|div1|cnt\(2) & (\path|tempor|div1|Add0~3\ $ (GND))) # (!\path|tempor|div1|cnt\(2) & (!\path|tempor|div1|Add0~3\ & VCC))
-- \path|tempor|div1|Add0~5\ = CARRY((\path|tempor|div1|cnt\(2) & !\path|tempor|div1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(2),
	datad => VCC,
	cin => \path|tempor|div1|Add0~3\,
	combout => \path|tempor|div1|Add0~4_combout\,
	cout => \path|tempor|div1|Add0~5\);

-- Location: LCCOMB_X55_Y72_N14
\path|tempor|div1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~6_combout\ = (\path|tempor|div1|cnt\(3) & (!\path|tempor|div1|Add0~5\)) # (!\path|tempor|div1|cnt\(3) & ((\path|tempor|div1|Add0~5\) # (GND)))
-- \path|tempor|div1|Add0~7\ = CARRY((!\path|tempor|div1|Add0~5\) # (!\path|tempor|div1|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|cnt\(3),
	datad => VCC,
	cin => \path|tempor|div1|Add0~5\,
	combout => \path|tempor|div1|Add0~6_combout\,
	cout => \path|tempor|div1|Add0~7\);

-- Location: LCCOMB_X55_Y72_N16
\path|tempor|div1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~8_combout\ = (\path|tempor|div1|cnt\(4) & (\path|tempor|div1|Add0~7\ $ (GND))) # (!\path|tempor|div1|cnt\(4) & (!\path|tempor|div1|Add0~7\ & VCC))
-- \path|tempor|div1|Add0~9\ = CARRY((\path|tempor|div1|cnt\(4) & !\path|tempor|div1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|cnt\(4),
	datad => VCC,
	cin => \path|tempor|div1|Add0~7\,
	combout => \path|tempor|div1|Add0~8_combout\,
	cout => \path|tempor|div1|Add0~9\);

-- Location: LCCOMB_X55_Y72_N18
\path|tempor|div1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~10_combout\ = (\path|tempor|div1|cnt\(5) & (!\path|tempor|div1|Add0~9\)) # (!\path|tempor|div1|cnt\(5) & ((\path|tempor|div1|Add0~9\) # (GND)))
-- \path|tempor|div1|Add0~11\ = CARRY((!\path|tempor|div1|Add0~9\) # (!\path|tempor|div1|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|cnt\(5),
	datad => VCC,
	cin => \path|tempor|div1|Add0~9\,
	combout => \path|tempor|div1|Add0~10_combout\,
	cout => \path|tempor|div1|Add0~11\);

-- Location: LCCOMB_X55_Y72_N20
\path|tempor|div1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~12_combout\ = (\path|tempor|div1|cnt\(6) & (\path|tempor|div1|Add0~11\ $ (GND))) # (!\path|tempor|div1|cnt\(6) & (!\path|tempor|div1|Add0~11\ & VCC))
-- \path|tempor|div1|Add0~13\ = CARRY((\path|tempor|div1|cnt\(6) & !\path|tempor|div1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|cnt\(6),
	datad => VCC,
	cin => \path|tempor|div1|Add0~11\,
	combout => \path|tempor|div1|Add0~12_combout\,
	cout => \path|tempor|div1|Add0~13\);

-- Location: LCCOMB_X55_Y72_N22
\path|tempor|div1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~14_combout\ = (\path|tempor|div1|cnt\(7) & (!\path|tempor|div1|Add0~13\)) # (!\path|tempor|div1|cnt\(7) & ((\path|tempor|div1|Add0~13\) # (GND)))
-- \path|tempor|div1|Add0~15\ = CARRY((!\path|tempor|div1|Add0~13\) # (!\path|tempor|div1|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(7),
	datad => VCC,
	cin => \path|tempor|div1|Add0~13\,
	combout => \path|tempor|div1|Add0~14_combout\,
	cout => \path|tempor|div1|Add0~15\);

-- Location: LCCOMB_X55_Y72_N24
\path|tempor|div1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~16_combout\ = (\path|tempor|div1|cnt\(8) & (\path|tempor|div1|Add0~15\ $ (GND))) # (!\path|tempor|div1|cnt\(8) & (!\path|tempor|div1|Add0~15\ & VCC))
-- \path|tempor|div1|Add0~17\ = CARRY((\path|tempor|div1|cnt\(8) & !\path|tempor|div1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|cnt\(8),
	datad => VCC,
	cin => \path|tempor|div1|Add0~15\,
	combout => \path|tempor|div1|Add0~16_combout\,
	cout => \path|tempor|div1|Add0~17\);

-- Location: LCCOMB_X55_Y72_N26
\path|tempor|div1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~18_combout\ = (\path|tempor|div1|cnt\(9) & (!\path|tempor|div1|Add0~17\)) # (!\path|tempor|div1|cnt\(9) & ((\path|tempor|div1|Add0~17\) # (GND)))
-- \path|tempor|div1|Add0~19\ = CARRY((!\path|tempor|div1|Add0~17\) # (!\path|tempor|div1|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(9),
	datad => VCC,
	cin => \path|tempor|div1|Add0~17\,
	combout => \path|tempor|div1|Add0~18_combout\,
	cout => \path|tempor|div1|Add0~19\);

-- Location: LCCOMB_X55_Y72_N28
\path|tempor|div1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~20_combout\ = (\path|tempor|div1|cnt\(10) & (\path|tempor|div1|Add0~19\ $ (GND))) # (!\path|tempor|div1|cnt\(10) & (!\path|tempor|div1|Add0~19\ & VCC))
-- \path|tempor|div1|Add0~21\ = CARRY((\path|tempor|div1|cnt\(10) & !\path|tempor|div1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|cnt\(10),
	datad => VCC,
	cin => \path|tempor|div1|Add0~19\,
	combout => \path|tempor|div1|Add0~20_combout\,
	cout => \path|tempor|div1|Add0~21\);

-- Location: LCCOMB_X55_Y72_N30
\path|tempor|div1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~22_combout\ = (\path|tempor|div1|cnt\(11) & (!\path|tempor|div1|Add0~21\)) # (!\path|tempor|div1|cnt\(11) & ((\path|tempor|div1|Add0~21\) # (GND)))
-- \path|tempor|div1|Add0~23\ = CARRY((!\path|tempor|div1|Add0~21\) # (!\path|tempor|div1|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|cnt\(11),
	datad => VCC,
	cin => \path|tempor|div1|Add0~21\,
	combout => \path|tempor|div1|Add0~22_combout\,
	cout => \path|tempor|div1|Add0~23\);

-- Location: LCCOMB_X55_Y71_N0
\path|tempor|div1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~24_combout\ = (\path|tempor|div1|cnt\(12) & (\path|tempor|div1|Add0~23\ $ (GND))) # (!\path|tempor|div1|cnt\(12) & (!\path|tempor|div1|Add0~23\ & VCC))
-- \path|tempor|div1|Add0~25\ = CARRY((\path|tempor|div1|cnt\(12) & !\path|tempor|div1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(12),
	datad => VCC,
	cin => \path|tempor|div1|Add0~23\,
	combout => \path|tempor|div1|Add0~24_combout\,
	cout => \path|tempor|div1|Add0~25\);

-- Location: LCCOMB_X55_Y71_N2
\path|tempor|div1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~26_combout\ = (\path|tempor|div1|cnt\(13) & (!\path|tempor|div1|Add0~25\)) # (!\path|tempor|div1|cnt\(13) & ((\path|tempor|div1|Add0~25\) # (GND)))
-- \path|tempor|div1|Add0~27\ = CARRY((!\path|tempor|div1|Add0~25\) # (!\path|tempor|div1|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(13),
	datad => VCC,
	cin => \path|tempor|div1|Add0~25\,
	combout => \path|tempor|div1|Add0~26_combout\,
	cout => \path|tempor|div1|Add0~27\);

-- Location: LCCOMB_X55_Y71_N4
\path|tempor|div1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~28_combout\ = (\path|tempor|div1|cnt\(14) & (\path|tempor|div1|Add0~27\ $ (GND))) # (!\path|tempor|div1|cnt\(14) & (!\path|tempor|div1|Add0~27\ & VCC))
-- \path|tempor|div1|Add0~29\ = CARRY((\path|tempor|div1|cnt\(14) & !\path|tempor|div1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|cnt\(14),
	datad => VCC,
	cin => \path|tempor|div1|Add0~27\,
	combout => \path|tempor|div1|Add0~28_combout\,
	cout => \path|tempor|div1|Add0~29\);

-- Location: LCCOMB_X55_Y71_N6
\path|tempor|div1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~30_combout\ = (\path|tempor|div1|cnt\(15) & (!\path|tempor|div1|Add0~29\)) # (!\path|tempor|div1|cnt\(15) & ((\path|tempor|div1|Add0~29\) # (GND)))
-- \path|tempor|div1|Add0~31\ = CARRY((!\path|tempor|div1|Add0~29\) # (!\path|tempor|div1|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(15),
	datad => VCC,
	cin => \path|tempor|div1|Add0~29\,
	combout => \path|tempor|div1|Add0~30_combout\,
	cout => \path|tempor|div1|Add0~31\);

-- Location: LCCOMB_X55_Y71_N8
\path|tempor|div1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~32_combout\ = (\path|tempor|div1|cnt\(16) & (\path|tempor|div1|Add0~31\ $ (GND))) # (!\path|tempor|div1|cnt\(16) & (!\path|tempor|div1|Add0~31\ & VCC))
-- \path|tempor|div1|Add0~33\ = CARRY((\path|tempor|div1|cnt\(16) & !\path|tempor|div1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(16),
	datad => VCC,
	cin => \path|tempor|div1|Add0~31\,
	combout => \path|tempor|div1|Add0~32_combout\,
	cout => \path|tempor|div1|Add0~33\);

-- Location: LCCOMB_X55_Y71_N10
\path|tempor|div1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~34_combout\ = (\path|tempor|div1|cnt\(17) & (!\path|tempor|div1|Add0~33\)) # (!\path|tempor|div1|cnt\(17) & ((\path|tempor|div1|Add0~33\) # (GND)))
-- \path|tempor|div1|Add0~35\ = CARRY((!\path|tempor|div1|Add0~33\) # (!\path|tempor|div1|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(17),
	datad => VCC,
	cin => \path|tempor|div1|Add0~33\,
	combout => \path|tempor|div1|Add0~34_combout\,
	cout => \path|tempor|div1|Add0~35\);

-- Location: LCCOMB_X55_Y71_N12
\path|tempor|div1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~36_combout\ = (\path|tempor|div1|cnt\(18) & (\path|tempor|div1|Add0~35\ $ (GND))) # (!\path|tempor|div1|cnt\(18) & (!\path|tempor|div1|Add0~35\ & VCC))
-- \path|tempor|div1|Add0~37\ = CARRY((\path|tempor|div1|cnt\(18) & !\path|tempor|div1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|cnt\(18),
	datad => VCC,
	cin => \path|tempor|div1|Add0~35\,
	combout => \path|tempor|div1|Add0~36_combout\,
	cout => \path|tempor|div1|Add0~37\);

-- Location: LCCOMB_X55_Y71_N14
\path|tempor|div1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~38_combout\ = (\path|tempor|div1|cnt\(19) & (!\path|tempor|div1|Add0~37\)) # (!\path|tempor|div1|cnt\(19) & ((\path|tempor|div1|Add0~37\) # (GND)))
-- \path|tempor|div1|Add0~39\ = CARRY((!\path|tempor|div1|Add0~37\) # (!\path|tempor|div1|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|cnt\(19),
	datad => VCC,
	cin => \path|tempor|div1|Add0~37\,
	combout => \path|tempor|div1|Add0~38_combout\,
	cout => \path|tempor|div1|Add0~39\);

-- Location: LCCOMB_X55_Y71_N16
\path|tempor|div1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~40_combout\ = (\path|tempor|div1|cnt\(20) & (\path|tempor|div1|Add0~39\ $ (GND))) # (!\path|tempor|div1|cnt\(20) & (!\path|tempor|div1|Add0~39\ & VCC))
-- \path|tempor|div1|Add0~41\ = CARRY((\path|tempor|div1|cnt\(20) & !\path|tempor|div1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|cnt\(20),
	datad => VCC,
	cin => \path|tempor|div1|Add0~39\,
	combout => \path|tempor|div1|Add0~40_combout\,
	cout => \path|tempor|div1|Add0~41\);

-- Location: LCCOMB_X55_Y71_N18
\path|tempor|div1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~42_combout\ = (\path|tempor|div1|cnt\(21) & (!\path|tempor|div1|Add0~41\)) # (!\path|tempor|div1|cnt\(21) & ((\path|tempor|div1|Add0~41\) # (GND)))
-- \path|tempor|div1|Add0~43\ = CARRY((!\path|tempor|div1|Add0~41\) # (!\path|tempor|div1|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(21),
	datad => VCC,
	cin => \path|tempor|div1|Add0~41\,
	combout => \path|tempor|div1|Add0~42_combout\,
	cout => \path|tempor|div1|Add0~43\);

-- Location: LCCOMB_X55_Y71_N20
\path|tempor|div1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~44_combout\ = (\path|tempor|div1|cnt\(22) & (\path|tempor|div1|Add0~43\ $ (GND))) # (!\path|tempor|div1|cnt\(22) & (!\path|tempor|div1|Add0~43\ & VCC))
-- \path|tempor|div1|Add0~45\ = CARRY((\path|tempor|div1|cnt\(22) & !\path|tempor|div1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|cnt\(22),
	datad => VCC,
	cin => \path|tempor|div1|Add0~43\,
	combout => \path|tempor|div1|Add0~44_combout\,
	cout => \path|tempor|div1|Add0~45\);

-- Location: LCCOMB_X55_Y71_N22
\path|tempor|div1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~46_combout\ = (\path|tempor|div1|cnt\(23) & (!\path|tempor|div1|Add0~45\)) # (!\path|tempor|div1|cnt\(23) & ((\path|tempor|div1|Add0~45\) # (GND)))
-- \path|tempor|div1|Add0~47\ = CARRY((!\path|tempor|div1|Add0~45\) # (!\path|tempor|div1|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(23),
	datad => VCC,
	cin => \path|tempor|div1|Add0~45\,
	combout => \path|tempor|div1|Add0~46_combout\,
	cout => \path|tempor|div1|Add0~47\);

-- Location: LCCOMB_X55_Y71_N24
\path|tempor|div1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Add0~48_combout\ = \path|tempor|div1|Add0~47\ $ (!\path|tempor|div1|cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \path|tempor|div1|cnt\(24),
	cin => \path|tempor|div1|Add0~47\,
	combout => \path|tempor|div1|Add0~48_combout\);

-- Location: LCCOMB_X1_Y45_N28
\path|mux2|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|mux2|F~0_combout\ = (\A2_f~input_o\) # (\A2_d~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A2_f~input_o\,
	datad => \A2_d~input_o\,
	combout => \path|mux2|F~0_combout\);

-- Location: LCCOMB_X4_Y35_N30
\control|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector15~2_combout\ = (!\path|r0|Q~q\ & (!\control|estado_atual.F_T~q\ & ((\path|r2|Q~q\) # (\path|r1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|r2|Q~q\,
	datab => \path|r0|Q~q\,
	datac => \path|r1|Q~q\,
	datad => \control|estado_atual.F_T~q\,
	combout => \control|Selector15~2_combout\);

-- Location: LCCOMB_X1_Y35_N26
\control|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector7~0_combout\ = (!\path|r2|Q~q\ & (!\B_abre~input_o\ & (\control|estado_atual.F_2~q\ & !\path|r1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|r2|Q~q\,
	datab => \B_abre~input_o\,
	datac => \control|estado_atual.F_2~q\,
	datad => \path|r1|Q~q\,
	combout => \control|Selector7~0_combout\);

-- Location: FF_X56_Y71_N11
\path|tempor|div1|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|clk~q\);

-- Location: FF_X56_Y71_N23
\path|tempor|div1|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(24));

-- Location: FF_X56_Y71_N29
\path|tempor|div1|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(22));

-- Location: FF_X55_Y71_N31
\path|tempor|div1|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(21));

-- Location: FF_X55_Y71_N23
\path|tempor|div1|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(23));

-- Location: LCCOMB_X56_Y71_N12
\path|tempor|div1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Equal0~0_combout\ = (\path|tempor|div1|cnt\(24) & (!\path|tempor|div1|cnt\(23) & (\path|tempor|div1|cnt\(22) & \path|tempor|div1|cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(24),
	datab => \path|tempor|div1|cnt\(23),
	datac => \path|tempor|div1|cnt\(22),
	datad => \path|tempor|div1|cnt\(21),
	combout => \path|tempor|div1|Equal0~0_combout\);

-- Location: FF_X56_Y71_N15
\path|tempor|div1|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(20));

-- Location: FF_X56_Y71_N27
\path|tempor|div1|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(19));

-- Location: FF_X55_Y71_N29
\path|tempor|div1|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(18));

-- Location: FF_X55_Y71_N11
\path|tempor|div1|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(17));

-- Location: LCCOMB_X56_Y71_N8
\path|tempor|div1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Equal0~1_combout\ = (\path|tempor|div1|cnt\(19) & (\path|tempor|div1|cnt\(18) & (\path|tempor|div1|cnt\(20) & !\path|tempor|div1|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(19),
	datab => \path|tempor|div1|cnt\(18),
	datac => \path|tempor|div1|cnt\(20),
	datad => \path|tempor|div1|cnt\(17),
	combout => \path|tempor|div1|Equal0~1_combout\);

-- Location: FF_X55_Y71_N27
\path|tempor|div1|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(16));

-- Location: FF_X56_Y71_N19
\path|tempor|div1|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(14));

-- Location: FF_X56_Y71_N25
\path|tempor|div1|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(13));

-- Location: FF_X55_Y71_N7
\path|tempor|div1|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(15));

-- Location: LCCOMB_X56_Y71_N30
\path|tempor|div1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Equal0~2_combout\ = (\path|tempor|div1|cnt\(16) & (\path|tempor|div1|cnt\(13) & (!\path|tempor|div1|cnt\(15) & \path|tempor|div1|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(16),
	datab => \path|tempor|div1|cnt\(13),
	datac => \path|tempor|div1|cnt\(15),
	datad => \path|tempor|div1|cnt\(14),
	combout => \path|tempor|div1|Equal0~2_combout\);

-- Location: FF_X56_Y71_N21
\path|tempor|div1|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(12));

-- Location: FF_X56_Y71_N5
\path|tempor|div1|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(11));

-- Location: FF_X55_Y72_N29
\path|tempor|div1|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(10));

-- Location: FF_X55_Y72_N27
\path|tempor|div1|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(9));

-- Location: LCCOMB_X56_Y71_N0
\path|tempor|div1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Equal0~3_combout\ = (\path|tempor|div1|cnt\(11) & (!\path|tempor|div1|cnt\(10) & (!\path|tempor|div1|cnt\(9) & \path|tempor|div1|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(11),
	datab => \path|tempor|div1|cnt\(10),
	datac => \path|tempor|div1|cnt\(9),
	datad => \path|tempor|div1|cnt\(12),
	combout => \path|tempor|div1|Equal0~3_combout\);

-- Location: LCCOMB_X56_Y71_N16
\path|tempor|div1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Equal0~4_combout\ = (\path|tempor|div1|Equal0~0_combout\ & (\path|tempor|div1|Equal0~1_combout\ & (\path|tempor|div1|Equal0~2_combout\ & \path|tempor|div1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|Equal0~0_combout\,
	datab => \path|tempor|div1|Equal0~1_combout\,
	datac => \path|tempor|div1|Equal0~2_combout\,
	datad => \path|tempor|div1|Equal0~3_combout\,
	combout => \path|tempor|div1|Equal0~4_combout\);

-- Location: FF_X55_Y72_N1
\path|tempor|div1|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(6));

-- Location: FF_X55_Y72_N25
\path|tempor|div1|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(8));

-- Location: FF_X55_Y72_N23
\path|tempor|div1|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(7));

-- Location: FF_X55_Y72_N19
\path|tempor|div1|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(5));

-- Location: LCCOMB_X55_Y72_N6
\path|tempor|div1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Equal0~5_combout\ = (!\path|tempor|div1|cnt\(8) & (\path|tempor|div1|cnt\(6) & (!\path|tempor|div1|cnt\(7) & !\path|tempor|div1|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(8),
	datab => \path|tempor|div1|cnt\(6),
	datac => \path|tempor|div1|cnt\(7),
	datad => \path|tempor|div1|cnt\(5),
	combout => \path|tempor|div1|Equal0~5_combout\);

-- Location: FF_X55_Y72_N17
\path|tempor|div1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(4));

-- Location: FF_X55_Y72_N15
\path|tempor|div1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(3));

-- Location: FF_X55_Y72_N13
\path|tempor|div1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(2));

-- Location: FF_X55_Y72_N11
\path|tempor|div1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(1));

-- Location: LCCOMB_X55_Y72_N4
\path|tempor|div1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Equal0~6_combout\ = (!\path|tempor|div1|cnt\(2) & (!\path|tempor|div1|cnt\(3) & (!\path|tempor|div1|cnt\(1) & !\path|tempor|div1|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(2),
	datab => \path|tempor|div1|cnt\(3),
	datac => \path|tempor|div1|cnt\(1),
	datad => \path|tempor|div1|cnt\(4),
	combout => \path|tempor|div1|Equal0~6_combout\);

-- Location: FF_X55_Y72_N3
\path|tempor|div1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path|tempor|div1|cnt~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|div1|cnt\(0));

-- Location: LCCOMB_X56_Y71_N2
\path|tempor|div1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|Equal0~7_combout\ = (!\path|tempor|div1|cnt\(0) & (\path|tempor|div1|Equal0~5_combout\ & (\path|tempor|div1|Equal0~6_combout\ & \path|tempor|div1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|cnt\(0),
	datab => \path|tempor|div1|Equal0~5_combout\,
	datac => \path|tempor|div1|Equal0~6_combout\,
	datad => \path|tempor|div1|Equal0~4_combout\,
	combout => \path|tempor|div1|Equal0~7_combout\);

-- Location: LCCOMB_X56_Y71_N6
\path|tempor|div1|clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|clk~0_combout\ = \path|tempor|div1|clk~q\ $ (\path|tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|clk~q\,
	datad => \path|tempor|div1|Equal0~7_combout\,
	combout => \path|tempor|div1|clk~0_combout\);

-- Location: LCCOMB_X56_Y71_N22
\path|tempor|div1|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|cnt~0_combout\ = (!\path|tempor|div1|Equal0~7_combout\ & \path|tempor|div1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|Equal0~7_combout\,
	datad => \path|tempor|div1|Add0~48_combout\,
	combout => \path|tempor|div1|cnt~0_combout\);

-- Location: LCCOMB_X56_Y71_N28
\path|tempor|div1|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|cnt~1_combout\ = (!\path|tempor|div1|Equal0~7_combout\ & \path|tempor|div1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|Equal0~7_combout\,
	datad => \path|tempor|div1|Add0~44_combout\,
	combout => \path|tempor|div1|cnt~1_combout\);

-- Location: LCCOMB_X55_Y71_N30
\path|tempor|div1|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|cnt~2_combout\ = (!\path|tempor|div1|Equal0~7_combout\ & \path|tempor|div1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|Equal0~7_combout\,
	datad => \path|tempor|div1|Add0~42_combout\,
	combout => \path|tempor|div1|cnt~2_combout\);

-- Location: LCCOMB_X56_Y71_N14
\path|tempor|div1|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|cnt~3_combout\ = (\path|tempor|div1|Add0~40_combout\ & !\path|tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \path|tempor|div1|Add0~40_combout\,
	datad => \path|tempor|div1|Equal0~7_combout\,
	combout => \path|tempor|div1|cnt~3_combout\);

-- Location: LCCOMB_X56_Y71_N26
\path|tempor|div1|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|cnt~4_combout\ = (!\path|tempor|div1|Equal0~7_combout\ & \path|tempor|div1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|Equal0~7_combout\,
	datad => \path|tempor|div1|Add0~38_combout\,
	combout => \path|tempor|div1|cnt~4_combout\);

-- Location: LCCOMB_X55_Y71_N28
\path|tempor|div1|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|cnt~5_combout\ = (!\path|tempor|div1|Equal0~7_combout\ & \path|tempor|div1|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|tempor|div1|Equal0~7_combout\,
	datad => \path|tempor|div1|Add0~36_combout\,
	combout => \path|tempor|div1|cnt~5_combout\);

-- Location: LCCOMB_X55_Y71_N26
\path|tempor|div1|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|cnt~6_combout\ = (\path|tempor|div1|Add0~32_combout\ & !\path|tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \path|tempor|div1|Add0~32_combout\,
	datad => \path|tempor|div1|Equal0~7_combout\,
	combout => \path|tempor|div1|cnt~6_combout\);

-- Location: LCCOMB_X56_Y71_N18
\path|tempor|div1|cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|cnt~7_combout\ = (\path|tempor|div1|Add0~28_combout\ & !\path|tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \path|tempor|div1|Add0~28_combout\,
	datad => \path|tempor|div1|Equal0~7_combout\,
	combout => \path|tempor|div1|cnt~7_combout\);

-- Location: LCCOMB_X56_Y71_N24
\path|tempor|div1|cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|cnt~8_combout\ = (!\path|tempor|div1|Equal0~7_combout\ & \path|tempor|div1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|Equal0~7_combout\,
	datad => \path|tempor|div1|Add0~26_combout\,
	combout => \path|tempor|div1|cnt~8_combout\);

-- Location: LCCOMB_X56_Y71_N20
\path|tempor|div1|cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|cnt~9_combout\ = (\path|tempor|div1|Add0~24_combout\ & !\path|tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \path|tempor|div1|Add0~24_combout\,
	datad => \path|tempor|div1|Equal0~7_combout\,
	combout => \path|tempor|div1|cnt~9_combout\);

-- Location: LCCOMB_X56_Y71_N4
\path|tempor|div1|cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|cnt~10_combout\ = (!\path|tempor|div1|Equal0~7_combout\ & \path|tempor|div1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|Equal0~7_combout\,
	datad => \path|tempor|div1|Add0~22_combout\,
	combout => \path|tempor|div1|cnt~10_combout\);

-- Location: LCCOMB_X55_Y72_N0
\path|tempor|div1|cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|cnt~11_combout\ = (\path|tempor|div1|Add0~12_combout\ & !\path|tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|div1|Add0~12_combout\,
	datad => \path|tempor|div1|Equal0~7_combout\,
	combout => \path|tempor|div1|cnt~11_combout\);

-- Location: LCCOMB_X55_Y72_N2
\path|tempor|div1|cnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|cnt~12_combout\ = (\path|tempor|div1|Add0~0_combout\ & !\path|tempor|div1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \path|tempor|div1|Add0~0_combout\,
	datad => \path|tempor|div1|Equal0~7_combout\,
	combout => \path|tempor|div1|cnt~12_combout\);

-- Location: IOIBUF_X0_Y42_N8
\A1_f~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1_f,
	o => \A1_f~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\A2_f~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2_f,
	o => \A2_f~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\A2_d~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2_d,
	o => \A2_d~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\A0_d~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0_d,
	o => \A0_d~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\S_porta~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S_porta,
	o => \S_porta~input_o\);

-- Location: CLKCTRL_G11
\path|tempor|div1|clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \path|tempor|div1|clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \path|tempor|div1|clk~clkctrl_outclk\);

-- Location: LCCOMB_X56_Y71_N10
\path|tempor|div1|clk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|div1|clk~feeder_combout\ = \path|tempor|div1|clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \path|tempor|div1|clk~0_combout\,
	combout => \path|tempor|div1|clk~feeder_combout\);

-- Location: IOOBUF_X0_Y32_N23
\M_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \path|decod|ALT_INV_b\(0),
	devoe => ww_devoe,
	o => \M_out[0]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\M_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \path|decod|b[2]~0_combout\,
	devoe => ww_devoe,
	o => \M_out[1]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\M_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \path|decod|b[2]~1_combout\,
	devoe => ww_devoe,
	o => \M_out[2]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\M_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \path|decod|b[2]~2_combout\,
	devoe => ww_devoe,
	o => \M_out[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\LED_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \path|BCD|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \LED_out[0]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\LED_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_out[1]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\LED_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \path|BCD|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \LED_out[2]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LED_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \path|BCD|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \LED_out[3]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\LED_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control|led\(0),
	devoe => ww_devoe,
	o => \LED_out[4]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\LED_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \path|BCD|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \LED_out[5]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\LED_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \control|ALT_INV_led\(1),
	devoe => ww_devoe,
	o => \LED_out[6]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\PORTA_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \path|reg_porta|Q~q\,
	devoe => ww_devoe,
	o => \PORTA_out~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\B_alarme_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_alarme~input_o\,
	devoe => ww_devoe,
	o => \B_alarme_out~output_o\);

-- Location: IOIBUF_X0_Y34_N15
\A0_f~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0_f,
	o => \A0_f~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\B_fecha~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_fecha,
	o => \B_fecha~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\B_abre~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_abre,
	o => \B_abre~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\A1_d~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1_d,
	o => \A1_d~input_o\);

-- Location: LCCOMB_X2_Y35_N0
\path|mux1|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|mux1|F~0_combout\ = (\control|WideOr0~0_combout\ & ((\A1_f~input_o\) # (\A1_d~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1_f~input_o\,
	datac => \control|WideOr0~0_combout\,
	datad => \A1_d~input_o\,
	combout => \path|mux1|F~0_combout\);

-- Location: FF_X2_Y35_N1
\path|r1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \path|mux1|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|r1|Q~q\);

-- Location: IOIBUF_X0_Y35_N15
\S_andar~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S_andar,
	o => \S_andar~input_o\);

-- Location: LCCOMB_X2_Y35_N20
\control|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|process_1~0_combout\ = (!\path|r0|Q~q\ & ((\path|r2|Q~q\) # (\path|r1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|r2|Q~q\,
	datac => \path|r0|Q~q\,
	datad => \path|r1|Q~q\,
	combout => \control|process_1~0_combout\);

-- Location: LCCOMB_X2_Y35_N4
\path|tempor|count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|count[0]~0_combout\ = (!\path|tempor|count\(0) & ((\control|estado_atual.A_T~q\) # ((\control|estado_atual.A_1~q\) # (\control|estado_atual.A_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|estado_atual.A_T~q\,
	datab => \control|estado_atual.A_1~q\,
	datac => \control|estado_atual.A_2~q\,
	datad => \path|tempor|count\(0),
	combout => \path|tempor|count[0]~0_combout\);

-- Location: FF_X2_Y35_N25
\path|tempor|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \path|tempor|div1|clk~clkctrl_outclk\,
	asdata => \path|tempor|count[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|count\(0));

-- Location: LCCOMB_X2_Y35_N26
\path|tempor|count[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|tempor|count[1]~1_combout\ = (!\control|WideOr0~0_combout\ & (\path|tempor|count\(0) $ (\path|tempor|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \path|tempor|count\(0),
	datac => \path|tempor|count\(1),
	datad => \control|WideOr0~0_combout\,
	combout => \path|tempor|count[1]~1_combout\);

-- Location: FF_X2_Y35_N27
\path|tempor|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \path|tempor|div1|clk~clkctrl_outclk\,
	d => \path|tempor|count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|tempor|count\(1));

-- Location: LCCOMB_X2_Y35_N16
\control|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector4~2_combout\ = (!\S_porta~input_o\ & (\path|tempor|count\(0) & (\control|estado_atual.A_1~q\ & \path|tempor|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_porta~input_o\,
	datab => \path|tempor|count\(0),
	datac => \control|estado_atual.A_1~q\,
	datad => \path|tempor|count\(1),
	combout => \control|Selector4~2_combout\);

-- Location: LCCOMB_X2_Y35_N24
\control|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector4~0_combout\ = (\S_andar~input_o\ & \control|estado_atual.E2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_andar~input_o\,
	datad => \control|estado_atual.E2~q\,
	combout => \control|Selector4~0_combout\);

-- Location: LCCOMB_X2_Y35_N12
\control|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector4~1_combout\ = (\control|process_1~1_combout\ & (!\control|process_1~2_combout\ & (\control|estado_atual.F_1~q\))) # (!\control|process_1~1_combout\ & ((\control|Selector4~0_combout\) # ((!\control|process_1~2_combout\ & 
-- \control|estado_atual.F_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|process_1~1_combout\,
	datab => \control|process_1~2_combout\,
	datac => \control|estado_atual.F_1~q\,
	datad => \control|Selector4~0_combout\,
	combout => \control|Selector4~1_combout\);

-- Location: LCCOMB_X3_Y35_N22
\control|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector4~3_combout\ = (\control|Selector4~2_combout\) # ((\control|Selector4~1_combout\) # ((\control|Selector1~0_combout\ & \control|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Selector1~0_combout\,
	datab => \control|process_1~0_combout\,
	datac => \control|Selector4~2_combout\,
	datad => \control|Selector4~1_combout\,
	combout => \control|Selector4~3_combout\);

-- Location: LCCOMB_X3_Y35_N28
\control|proximo_estado.F_1_573\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|proximo_estado.F_1_573~combout\ = (GLOBAL(\control|Selector11~0clkctrl_outclk\) & ((\control|Selector4~3_combout\))) # (!GLOBAL(\control|Selector11~0clkctrl_outclk\) & (\control|proximo_estado.F_1_573~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|proximo_estado.F_1_573~combout\,
	datac => \control|Selector4~3_combout\,
	datad => \control|Selector11~0clkctrl_outclk\,
	combout => \control|proximo_estado.F_1_573~combout\);

-- Location: LCCOMB_X3_Y35_N2
\control|estado_atual~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|estado_atual~11_combout\ = (!\RST~input_o\ & \control|proximo_estado.F_1_573~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \control|proximo_estado.F_1_573~combout\,
	combout => \control|estado_atual~11_combout\);

-- Location: FF_X3_Y35_N3
\control|estado_atual.F_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \control|estado_atual~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|estado_atual.F_1~q\);

-- Location: LCCOMB_X4_Y35_N24
\control|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector15~0_combout\ = (!\path|r1|Q~q\ & (\path|r2|Q~q\ & (!\path|r0|Q~q\ & \control|estado_atual.F_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|r1|Q~q\,
	datab => \path|r2|Q~q\,
	datac => \path|r0|Q~q\,
	datad => \control|estado_atual.F_1~q\,
	combout => \control|Selector15~0_combout\);

-- Location: LCCOMB_X4_Y35_N6
\control|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector6~0_combout\ = (\control|Selector15~0_combout\) # ((\control|Selector17~0_combout\) # ((\control|estado_atual.E2~q\ & !\S_andar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|estado_atual.E2~q\,
	datab => \S_andar~input_o\,
	datac => \control|Selector15~0_combout\,
	datad => \control|Selector17~0_combout\,
	combout => \control|Selector6~0_combout\);

-- Location: LCCOMB_X3_Y35_N12
\control|proximo_estado.E2_505\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|proximo_estado.E2_505~combout\ = (GLOBAL(\control|Selector11~0clkctrl_outclk\) & ((\control|Selector6~0_combout\))) # (!GLOBAL(\control|Selector11~0clkctrl_outclk\) & (\control|proximo_estado.E2_505~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|proximo_estado.E2_505~combout\,
	datac => \control|Selector11~0clkctrl_outclk\,
	datad => \control|Selector6~0_combout\,
	combout => \control|proximo_estado.E2_505~combout\);

-- Location: LCCOMB_X3_Y35_N20
\control|estado_atual~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|estado_atual~13_combout\ = (!\RST~input_o\ & \control|proximo_estado.E2_505~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \control|proximo_estado.E2_505~combout\,
	combout => \control|estado_atual~13_combout\);

-- Location: FF_X3_Y35_N21
\control|estado_atual.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \control|estado_atual~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|estado_atual.E2~q\);

-- Location: LCCOMB_X2_Y35_N2
\control|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|process_1~3_combout\ = (!\S_porta~input_o\ & (\path|tempor|count\(1) & \path|tempor|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_porta~input_o\,
	datac => \path|tempor|count\(1),
	datad => \path|tempor|count\(0),
	combout => \control|process_1~3_combout\);

-- Location: LCCOMB_X1_Y35_N28
\control|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector7~1_combout\ = (\control|Selector7~0_combout\ & (((\control|estado_atual.A_2~q\ & \control|process_1~3_combout\)) # (!\path|r0|Q~q\))) # (!\control|Selector7~0_combout\ & (\control|estado_atual.A_2~q\ & ((\control|process_1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Selector7~0_combout\,
	datab => \control|estado_atual.A_2~q\,
	datac => \path|r0|Q~q\,
	datad => \control|process_1~3_combout\,
	combout => \control|Selector7~1_combout\);

-- Location: LCCOMB_X1_Y35_N20
\control|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector7~2_combout\ = (\control|Selector7~1_combout\) # ((\control|process_1~1_combout\ & (\S_andar~input_o\ & \control|estado_atual.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|process_1~1_combout\,
	datab => \S_andar~input_o\,
	datac => \control|estado_atual.E2~q\,
	datad => \control|Selector7~1_combout\,
	combout => \control|Selector7~2_combout\);

-- Location: LCCOMB_X1_Y35_N10
\control|proximo_estado.F_2_471\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|proximo_estado.F_2_471~combout\ = (GLOBAL(\control|Selector11~0clkctrl_outclk\) & ((\control|Selector7~2_combout\))) # (!GLOBAL(\control|Selector11~0clkctrl_outclk\) & (\control|proximo_estado.F_2_471~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|proximo_estado.F_2_471~combout\,
	datab => \control|Selector11~0clkctrl_outclk\,
	datad => \control|Selector7~2_combout\,
	combout => \control|proximo_estado.F_2_471~combout\);

-- Location: LCCOMB_X1_Y35_N22
\control|estado_atual~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|estado_atual~14_combout\ = (!\RST~input_o\ & \control|proximo_estado.F_2_471~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datad => \control|proximo_estado.F_2_471~combout\,
	combout => \control|estado_atual~14_combout\);

-- Location: FF_X1_Y35_N23
\control|estado_atual.F_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control|estado_atual~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|estado_atual.F_2~q\);

-- Location: LCCOMB_X1_Y35_N12
\control|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector8~0_combout\ = (\control|estado_atual.F_2~q\ & ((\path|r2|Q~q\) # ((!\path|r1|Q~q\ & !\path|r0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|r2|Q~q\,
	datab => \path|r1|Q~q\,
	datac => \path|r0|Q~q\,
	datad => \control|estado_atual.F_2~q\,
	combout => \control|Selector8~0_combout\);

-- Location: LCCOMB_X1_Y35_N4
\control|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector8~1_combout\ = (\control|process_1~3_combout\ & (((\control|Selector8~0_combout\ & \control|process_1~2_combout\)))) # (!\control|process_1~3_combout\ & ((\control|estado_atual.A_2~q\) # ((\control|Selector8~0_combout\ & 
-- \control|process_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|process_1~3_combout\,
	datab => \control|estado_atual.A_2~q\,
	datac => \control|Selector8~0_combout\,
	datad => \control|process_1~2_combout\,
	combout => \control|Selector8~1_combout\);

-- Location: LCCOMB_X1_Y35_N24
\control|proximo_estado.A_2_437\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|proximo_estado.A_2_437~combout\ = (GLOBAL(\control|Selector11~0clkctrl_outclk\) & ((\control|Selector8~1_combout\))) # (!GLOBAL(\control|Selector11~0clkctrl_outclk\) & (\control|proximo_estado.A_2_437~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|proximo_estado.A_2_437~combout\,
	datac => \control|Selector8~1_combout\,
	datad => \control|Selector11~0clkctrl_outclk\,
	combout => \control|proximo_estado.A_2_437~combout\);

-- Location: LCCOMB_X1_Y35_N6
\control|estado_atual~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|estado_atual~15_combout\ = (!\RST~input_o\ & \control|proximo_estado.A_2_437~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datad => \control|proximo_estado.A_2_437~combout\,
	combout => \control|estado_atual~15_combout\);

-- Location: FF_X1_Y35_N7
\control|estado_atual.A_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control|estado_atual~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|estado_atual.A_2~q\);

-- Location: LCCOMB_X1_Y35_N16
\path|mux2|F~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|mux2|F~1_combout\ = (\path|mux2|F~0_combout\ & (!\control|estado_atual.A_T~q\ & (!\control|estado_atual.A_1~q\ & !\control|estado_atual.A_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|mux2|F~0_combout\,
	datab => \control|estado_atual.A_T~q\,
	datac => \control|estado_atual.A_1~q\,
	datad => \control|estado_atual.A_2~q\,
	combout => \path|mux2|F~1_combout\);

-- Location: FF_X2_Y35_N23
\path|r2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \path|mux2|F~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|r2|Q~q\);

-- Location: LCCOMB_X2_Y35_N30
\control|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|process_1~2_combout\ = (\path|r1|Q~q\) # ((\B_abre~input_o\) # ((\path|r2|Q~q\) # (\path|r0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|r1|Q~q\,
	datab => \B_abre~input_o\,
	datac => \path|r2|Q~q\,
	datad => \path|r0|Q~q\,
	combout => \control|process_1~2_combout\);

-- Location: LCCOMB_X2_Y35_N10
\control|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector1~1_combout\ = (\control|Selector1~0_combout\ & (((!\control|process_1~2_combout\ & !\control|estado_atual.F_T~q\)) # (!\control|process_1~0_combout\))) # (!\control|Selector1~0_combout\ & (!\control|process_1~2_combout\ & 
-- ((!\control|estado_atual.F_T~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Selector1~0_combout\,
	datab => \control|process_1~2_combout\,
	datac => \control|process_1~0_combout\,
	datad => \control|estado_atual.F_T~q\,
	combout => \control|Selector1~1_combout\);

-- Location: LCCOMB_X2_Y35_N22
\control|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector1~2_combout\ = (\control|Selector1~1_combout\) # ((!\control|Selector2~1_combout\ & \control|estado_atual.A_T~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Selector2~1_combout\,
	datab => \control|estado_atual.A_T~q\,
	datad => \control|Selector1~1_combout\,
	combout => \control|Selector1~2_combout\);

-- Location: LCCOMB_X2_Y35_N28
\control|proximo_estado.F_T_675\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|proximo_estado.F_T_675~combout\ = (GLOBAL(\control|Selector11~0clkctrl_outclk\) & ((\control|Selector1~2_combout\))) # (!GLOBAL(\control|Selector11~0clkctrl_outclk\) & (\control|proximo_estado.F_T_675~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|proximo_estado.F_T_675~combout\,
	datac => \control|Selector11~0clkctrl_outclk\,
	datad => \control|Selector1~2_combout\,
	combout => \control|proximo_estado.F_T_675~combout\);

-- Location: LCCOMB_X1_Y35_N30
\control|estado_atual~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|estado_atual~17_combout\ = (!\RST~input_o\ & !\control|proximo_estado.F_T_675~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datad => \control|proximo_estado.F_T_675~combout\,
	combout => \control|estado_atual~17_combout\);

-- Location: FF_X1_Y35_N31
\control|estado_atual.F_T\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control|estado_atual~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|estado_atual.F_T~q\);

-- Location: LCCOMB_X1_Y35_N8
\control|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector2~0_combout\ = (!\control|estado_atual.F_T~q\ & ((\path|r0|Q~q\) # ((!\path|r2|Q~q\ & !\path|r1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|r2|Q~q\,
	datab => \path|r0|Q~q\,
	datac => \control|estado_atual.F_T~q\,
	datad => \path|r1|Q~q\,
	combout => \control|Selector2~0_combout\);

-- Location: LCCOMB_X2_Y35_N18
\control|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector2~1_combout\ = (!\B_fecha~input_o\ & ((\S_porta~input_o\) # ((!\path|tempor|count\(0)) # (!\path|tempor|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_porta~input_o\,
	datab => \B_fecha~input_o\,
	datac => \path|tempor|count\(1),
	datad => \path|tempor|count\(0),
	combout => \control|Selector2~1_combout\);

-- Location: LCCOMB_X1_Y35_N14
\control|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector2~2_combout\ = (\control|process_1~2_combout\ & ((\control|Selector2~0_combout\) # ((\control|estado_atual.A_T~q\ & \control|Selector2~1_combout\)))) # (!\control|process_1~2_combout\ & (((\control|estado_atual.A_T~q\ & 
-- \control|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|process_1~2_combout\,
	datab => \control|Selector2~0_combout\,
	datac => \control|estado_atual.A_T~q\,
	datad => \control|Selector2~1_combout\,
	combout => \control|Selector2~2_combout\);

-- Location: LCCOMB_X1_Y35_N18
\control|proximo_estado.A_T_641\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|proximo_estado.A_T_641~combout\ = (GLOBAL(\control|Selector11~0clkctrl_outclk\) & ((\control|Selector2~2_combout\))) # (!GLOBAL(\control|Selector11~0clkctrl_outclk\) & (\control|proximo_estado.A_T_641~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|proximo_estado.A_T_641~combout\,
	datac => \control|Selector2~2_combout\,
	datad => \control|Selector11~0clkctrl_outclk\,
	combout => \control|proximo_estado.A_T_641~combout\);

-- Location: LCCOMB_X1_Y35_N2
\control|estado_atual~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|estado_atual~16_combout\ = (!\RST~input_o\ & \control|proximo_estado.A_T_641~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datad => \control|proximo_estado.A_T_641~combout\,
	combout => \control|estado_atual~16_combout\);

-- Location: FF_X1_Y35_N3
\control|estado_atual.A_T\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \control|estado_atual~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|estado_atual.A_T~q\);

-- Location: LCCOMB_X1_Y35_N0
\control|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector11~0_combout\ = ((!\control|estado_atual.A_T~q\) # (!\B_fecha~input_o\)) # (!\S_porta~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_porta~input_o\,
	datac => \B_fecha~input_o\,
	datad => \control|estado_atual.A_T~q\,
	combout => \control|Selector11~0_combout\);

-- Location: CLKCTRL_G4
\control|Selector11~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \control|Selector11~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \control|Selector11~0clkctrl_outclk\);

-- Location: LCCOMB_X4_Y35_N22
\control|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector5~0_combout\ = (\path|r1|Q~q\) # ((\B_abre~input_o\ & ((\path|r0|Q~q\) # (!\path|r2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_abre~input_o\,
	datab => \path|r0|Q~q\,
	datac => \path|r1|Q~q\,
	datad => \path|r2|Q~q\,
	combout => \control|Selector5~0_combout\);

-- Location: LCCOMB_X3_Y35_N26
\control|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector5~1_combout\ = (\control|estado_atual.A_1~q\ & (((\control|Selector5~0_combout\ & \control|estado_atual.F_1~q\)) # (!\control|process_1~3_combout\))) # (!\control|estado_atual.A_1~q\ & (\control|Selector5~0_combout\ & 
-- (\control|estado_atual.F_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|estado_atual.A_1~q\,
	datab => \control|Selector5~0_combout\,
	datac => \control|estado_atual.F_1~q\,
	datad => \control|process_1~3_combout\,
	combout => \control|Selector5~1_combout\);

-- Location: LCCOMB_X3_Y35_N10
\control|proximo_estado.A_1_539\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|proximo_estado.A_1_539~combout\ = (GLOBAL(\control|Selector11~0clkctrl_outclk\) & ((\control|Selector5~1_combout\))) # (!GLOBAL(\control|Selector11~0clkctrl_outclk\) & (\control|proximo_estado.A_1_539~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|proximo_estado.A_1_539~combout\,
	datac => \control|Selector11~0clkctrl_outclk\,
	datad => \control|Selector5~1_combout\,
	combout => \control|proximo_estado.A_1_539~combout\);

-- Location: LCCOMB_X3_Y35_N0
\control|estado_atual~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|estado_atual~12_combout\ = (!\RST~input_o\ & \control|proximo_estado.A_1_539~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \control|proximo_estado.A_1_539~combout\,
	combout => \control|estado_atual~12_combout\);

-- Location: FF_X3_Y35_N1
\control|estado_atual.A_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \control|estado_atual~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|estado_atual.A_1~q\);

-- Location: LCCOMB_X2_Y35_N8
\control|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|WideOr0~0_combout\ = (!\control|estado_atual.A_T~q\ & (!\control|estado_atual.A_1~q\ & !\control|estado_atual.A_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|estado_atual.A_T~q\,
	datab => \control|estado_atual.A_1~q\,
	datac => \control|estado_atual.A_2~q\,
	combout => \control|WideOr0~0_combout\);

-- Location: LCCOMB_X2_Y35_N14
\path|mux0|F~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|mux0|F~0_combout\ = (\control|WideOr0~0_combout\ & ((\A0_d~input_o\) # (\A0_f~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A0_d~input_o\,
	datab => \A0_f~input_o\,
	datac => \control|WideOr0~0_combout\,
	combout => \path|mux0|F~0_combout\);

-- Location: FF_X2_Y35_N15
\path|r0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \path|mux0|F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|r0|Q~q\);

-- Location: LCCOMB_X4_Y35_N20
\control|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector17~0_combout\ = (!\path|r2|Q~q\ & (\control|estado_atual.F_2~q\ & ((\path|r0|Q~q\) # (\path|r1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|r2|Q~q\,
	datab => \path|r0|Q~q\,
	datac => \path|r1|Q~q\,
	datad => \control|estado_atual.F_2~q\,
	combout => \control|Selector17~0_combout\);

-- Location: LCCOMB_X4_Y35_N28
\control|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector17~1_combout\ = (!\B_abre~input_o\ & (\path|r0|Q~q\ & (!\path|r1|Q~q\ & \control|estado_atual.F_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_abre~input_o\,
	datab => \path|r0|Q~q\,
	datac => \path|r1|Q~q\,
	datad => \control|estado_atual.F_1~q\,
	combout => \control|Selector17~1_combout\);

-- Location: LCCOMB_X4_Y35_N26
\control|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector17~2_combout\ = (\path|r0|Q~q\) # (((!\path|r1|Q~q\ & !\path|r2|Q~q\)) # (!\S_andar~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \path|r0|Q~q\,
	datab => \path|r1|Q~q\,
	datac => \S_andar~input_o\,
	datad => \path|r2|Q~q\,
	combout => \control|Selector17~2_combout\);

-- Location: LCCOMB_X4_Y35_N16
\control|Selector17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector17~3_combout\ = (\control|Selector17~0_combout\) # ((\control|Selector17~1_combout\) # ((\control|estado_atual.E1~q\ & \control|Selector17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|estado_atual.E1~q\,
	datab => \control|Selector17~0_combout\,
	datac => \control|Selector17~1_combout\,
	datad => \control|Selector17~2_combout\,
	combout => \control|Selector17~3_combout\);

-- Location: LCCOMB_X4_Y35_N4
\control|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector3~0_combout\ = (\control|Selector15~2_combout\) # ((\control|Selector17~1_combout\) # ((!\S_andar~input_o\ & \control|estado_atual.E1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Selector15~2_combout\,
	datab => \S_andar~input_o\,
	datac => \control|estado_atual.E1~q\,
	datad => \control|Selector17~1_combout\,
	combout => \control|Selector3~0_combout\);

-- Location: LCCOMB_X4_Y35_N2
\control|proximo_estado.E1_607\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|proximo_estado.E1_607~combout\ = (GLOBAL(\control|Selector11~0clkctrl_outclk\) & ((\control|Selector3~0_combout\))) # (!GLOBAL(\control|Selector11~0clkctrl_outclk\) & (\control|proximo_estado.E1_607~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|proximo_estado.E1_607~combout\,
	datac => \control|Selector3~0_combout\,
	datad => \control|Selector11~0clkctrl_outclk\,
	combout => \control|proximo_estado.E1_607~combout\);

-- Location: LCCOMB_X4_Y35_N18
\control|estado_atual~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|estado_atual~10_combout\ = (!\RST~input_o\ & \control|proximo_estado.E1_607~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \control|proximo_estado.E1_607~combout\,
	combout => \control|estado_atual~10_combout\);

-- Location: FF_X4_Y35_N19
\control|estado_atual.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \control|estado_atual~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|estado_atual.E1~q\);

-- Location: LCCOMB_X2_Y35_N6
\control|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|process_1~1_combout\ = (!\path|r1|Q~q\ & ((\path|r0|Q~q\) # (\path|r2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \path|r0|Q~q\,
	datac => \path|r2|Q~q\,
	datad => \path|r1|Q~q\,
	combout => \control|process_1~1_combout\);

-- Location: LCCOMB_X3_Y35_N6
\control|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector9~1_combout\ = (\control|estado_atual.E1~q\ & (((!\control|process_1~1_combout\ & !\control|process_1~0_combout\)) # (!\S_andar~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_andar~input_o\,
	datab => \control|estado_atual.E1~q\,
	datac => \control|process_1~1_combout\,
	datad => \control|process_1~0_combout\,
	combout => \control|Selector9~1_combout\);

-- Location: LCCOMB_X3_Y35_N4
\control|motor[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|motor[1]~0_combout\ = (\S_andar~input_o\ & ((\path|r2|Q~q\ & (!\path|r1|Q~q\)) # (!\path|r2|Q~q\ & ((\path|r1|Q~q\) # (\path|r0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_andar~input_o\,
	datab => \path|r2|Q~q\,
	datac => \path|r1|Q~q\,
	datad => \path|r0|Q~q\,
	combout => \control|motor[1]~0_combout\);

-- Location: LCCOMB_X4_Y35_N0
\control|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector13~0_combout\ = (!\control|Selector9~1_combout\ & ((\control|motor[1]~0_combout\) # (!\control|estado_atual.E2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Selector9~1_combout\,
	datac => \control|motor[1]~0_combout\,
	datad => \control|estado_atual.E2~q\,
	combout => \control|Selector13~0_combout\);

-- Location: CLKCTRL_G0
\control|Selector13~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \control|Selector13~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \control|Selector13~0clkctrl_outclk\);

-- Location: LCCOMB_X4_Y35_N8
\control|motor[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|motor\(1) = (GLOBAL(\control|Selector13~0clkctrl_outclk\) & (\control|Selector17~3_combout\)) # (!GLOBAL(\control|Selector13~0clkctrl_outclk\) & ((\control|motor\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Selector17~3_combout\,
	datac => \control|motor\(1),
	datad => \control|Selector13~0clkctrl_outclk\,
	combout => \control|motor\(1));

-- Location: FF_X4_Y35_N9
\path|reg_M|Mout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control|motor\(1),
	ena => \control|estado_atual.E1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|reg_M|Mout\(1));

-- Location: LCCOMB_X3_Y35_N30
\control|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector1~0_combout\ = (\S_andar~input_o\ & \control|estado_atual.E1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_andar~input_o\,
	datad => \control|estado_atual.E1~q\,
	combout => \control|Selector1~0_combout\);

-- Location: LCCOMB_X4_Y35_N10
\control|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector15~1_combout\ = (\control|Selector15~0_combout\) # ((\control|process_1~0_combout\ & ((\control|Selector1~0_combout\) # (!\control|estado_atual.F_T~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Selector15~0_combout\,
	datab => \control|estado_atual.F_T~q\,
	datac => \control|Selector1~0_combout\,
	datad => \control|process_1~0_combout\,
	combout => \control|Selector15~1_combout\);

-- Location: LCCOMB_X4_Y35_N12
\control|motor[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|motor\(0) = (GLOBAL(\control|Selector13~0clkctrl_outclk\) & ((\control|Selector15~1_combout\))) # (!GLOBAL(\control|Selector13~0clkctrl_outclk\) & (\control|motor\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|motor\(0),
	datac => \control|Selector15~1_combout\,
	datad => \control|Selector13~0clkctrl_outclk\,
	combout => \control|motor\(0));

-- Location: FF_X4_Y35_N13
\path|reg_M|Mout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \control|motor\(0),
	ena => \control|estado_atual.E1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|reg_M|Mout\(0));

-- Location: LCCOMB_X1_Y32_N16
\path|decod|b[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|decod|b\(0) = (\path|reg_M|Mout\(1)) # (\path|reg_M|Mout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \path|reg_M|Mout\(1),
	datad => \path|reg_M|Mout\(0),
	combout => \path|decod|b\(0));

-- Location: LCCOMB_X1_Y32_N14
\path|decod|b[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|decod|b[2]~0_combout\ = (!\path|reg_M|Mout\(1) & \path|reg_M|Mout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \path|reg_M|Mout\(1),
	datad => \path|reg_M|Mout\(0),
	combout => \path|decod|b[2]~0_combout\);

-- Location: LCCOMB_X1_Y32_N28
\path|decod|b[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|decod|b[2]~1_combout\ = (\path|reg_M|Mout\(1) & !\path|reg_M|Mout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \path|reg_M|Mout\(1),
	datad => \path|reg_M|Mout\(0),
	combout => \path|decod|b[2]~1_combout\);

-- Location: LCCOMB_X1_Y32_N30
\path|decod|b[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|decod|b[2]~2_combout\ = (\path|reg_M|Mout\(1) & \path|reg_M|Mout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \path|reg_M|Mout\(1),
	datad => \path|reg_M|Mout\(0),
	combout => \path|decod|b[2]~2_combout\);

-- Location: LCCOMB_X4_Y35_N14
\control|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector12~0_combout\ = (\control|estado_atual.A_2~q\) # ((\control|estado_atual.F_2~q\) # ((\control|Selector4~0_combout\ & \control|process_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Selector4~0_combout\,
	datab => \control|process_1~1_combout\,
	datac => \control|estado_atual.A_2~q\,
	datad => \control|estado_atual.F_2~q\,
	combout => \control|Selector12~0_combout\);

-- Location: LCCOMB_X5_Y35_N16
\control|led[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|led\(1) = (GLOBAL(\control|Selector13~0clkctrl_outclk\) & (\control|Selector12~0_combout\)) # (!GLOBAL(\control|Selector13~0clkctrl_outclk\) & ((\control|led\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Selector12~0_combout\,
	datac => \control|Selector13~0clkctrl_outclk\,
	datad => \control|led\(1),
	combout => \control|led\(1));

-- Location: LCCOMB_X3_Y35_N14
\control|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector9~0_combout\ = (!\control|estado_atual.F_1~q\ & !\control|estado_atual.A_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|estado_atual.F_1~q\,
	datad => \control|estado_atual.A_1~q\,
	combout => \control|Selector9~0_combout\);

-- Location: LCCOMB_X3_Y35_N8
\control|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector9~2_combout\ = (\control|estado_atual.E2~q\ & (((\control|motor[1]~0_combout\)))) # (!\control|estado_atual.E2~q\ & (((!\control|Selector9~0_combout\)) # (!\control|Selector9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Selector9~1_combout\,
	datab => \control|motor[1]~0_combout\,
	datac => \control|Selector9~0_combout\,
	datad => \control|estado_atual.E2~q\,
	combout => \control|Selector9~2_combout\);

-- Location: LCCOMB_X3_Y35_N24
\control|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector0~0_combout\ = (!\control|estado_atual.E2~q\ & (((\control|Selector1~0_combout\ & \control|process_1~0_combout\)) # (!\control|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|estado_atual.E2~q\,
	datab => \control|Selector9~0_combout\,
	datac => \control|Selector1~0_combout\,
	datad => \control|process_1~0_combout\,
	combout => \control|Selector0~0_combout\);

-- Location: LCCOMB_X3_Y35_N16
\control|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector0~1_combout\ = (\control|Selector0~0_combout\) # ((\control|estado_atual.E2~q\ & ((!\control|process_1~1_combout\) # (!\S_andar~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_andar~input_o\,
	datab => \control|estado_atual.E2~q\,
	datac => \control|process_1~1_combout\,
	datad => \control|Selector0~0_combout\,
	combout => \control|Selector0~1_combout\);

-- Location: LCCOMB_X3_Y35_N18
\control|led[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|led\(0) = (\control|Selector9~2_combout\ & ((\control|Selector0~1_combout\))) # (!\control|Selector9~2_combout\ & (\control|led\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|led\(0),
	datac => \control|Selector9~2_combout\,
	datad => \control|Selector0~1_combout\,
	combout => \control|led\(0));

-- Location: LCCOMB_X1_Y36_N0
\path|BCD|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|BCD|Mux1~0_combout\ = (!\control|led\(1) & \control|led\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|led\(1),
	datad => \control|led\(0),
	combout => \path|BCD|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y36_N10
\path|BCD|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|BCD|Mux1~1_combout\ = (\control|led\(1) & !\control|led\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|led\(1),
	datad => \control|led\(0),
	combout => \path|BCD|Mux1~1_combout\);

-- Location: LCCOMB_X1_Y36_N4
\path|BCD|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \path|BCD|Mux1~2_combout\ = (\control|led\(1)) # (\control|led\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|led\(1),
	datad => \control|led\(0),
	combout => \path|BCD|Mux1~2_combout\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: FF_X1_Y35_N11
\path|reg_porta|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \control|WideOr0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \path|reg_porta|Q~q\);

-- Location: IOIBUF_X58_Y73_N22
\B_alarme~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_alarme,
	o => \B_alarme~input_o\);

ww_M_out(0) <= \M_out[0]~output_o\;

ww_M_out(1) <= \M_out[1]~output_o\;

ww_M_out(2) <= \M_out[2]~output_o\;

ww_M_out(3) <= \M_out[3]~output_o\;

ww_LED_out(0) <= \LED_out[0]~output_o\;

ww_LED_out(1) <= \LED_out[1]~output_o\;

ww_LED_out(2) <= \LED_out[2]~output_o\;

ww_LED_out(3) <= \LED_out[3]~output_o\;

ww_LED_out(4) <= \LED_out[4]~output_o\;

ww_LED_out(5) <= \LED_out[5]~output_o\;

ww_LED_out(6) <= \LED_out[6]~output_o\;

ww_PORTA_out <= \PORTA_out~output_o\;

ww_B_alarme_out <= \B_alarme_out~output_o\;
END structure;


