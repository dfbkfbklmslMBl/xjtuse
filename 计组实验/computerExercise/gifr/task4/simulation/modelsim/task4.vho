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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "11/08/2023 15:42:06"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
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

ENTITY 	task4 IS
    PORT (
	LED : OUT std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	Q : OUT std_logic_vector(7 DOWNTO 0);
	T4 : IN std_logic;
	LDAR : IN std_logic;
	CLR : IN std_logic;
	LDPC : IN std_logic
	);
END task4;

-- Design Ports Information
-- LED[7]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[5]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDAR	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDPC	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T4	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF task4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_T4 : std_logic;
SIGNAL ww_LDAR : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_LDPC : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \T4~input_o\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \LDPC~input_o\ : std_logic;
SIGNAL \LDAR~input_o\ : std_logic;
SIGNAL \inst1|$00000|auto_generated|result_node[6]~0_combout\ : std_logic;
SIGNAL \inst1|$00000|auto_generated|result_node[7]~1_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~7_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|aclr_actual~0_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~6_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~5_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~4_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~3_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]~2_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~1_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~0_combout\ : std_logic;
SIGNAL \inst1|$00000|auto_generated|result_node[7]~2_combout\ : std_logic;
SIGNAL \inst1|$00000|auto_generated|result_node[6]~3_combout\ : std_logic;
SIGNAL \inst1|$00000|auto_generated|result_node[5]~4_combout\ : std_logic;
SIGNAL \inst1|$00000|auto_generated|result_node[4]~5_combout\ : std_logic;
SIGNAL \inst1|$00000|auto_generated|result_node[3]~6_combout\ : std_logic;
SIGNAL \inst1|$00000|auto_generated|result_node[2]~7_combout\ : std_logic;
SIGNAL \inst1|$00000|auto_generated|result_node[1]~8_combout\ : std_logic;
SIGNAL \inst1|$00000|auto_generated|result_node[0]~9_combout\ : std_logic;
SIGNAL inst2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|LPM_COUNTER_component|auto_generated|pre_hazard\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|LPM_COUNTER_component|auto_generated|ALT_INV_aclr_actual~0_combout\ : std_logic;

BEGIN

LED <= ww_LED;
ww_B <= B;
Q <= ww_Q;
ww_T4 <= T4;
ww_LDAR <= LDAR;
ww_CLR <= CLR;
ww_LDPC <= LDPC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|LPM_COUNTER_component|auto_generated|ALT_INV_aclr_actual~0_combout\ <= NOT \inst|LPM_COUNTER_component|auto_generated|aclr_actual~0_combout\;

-- Location: IOOBUF_X18_Y0_N23
\LED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[7]~input_o\,
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\LED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[6]~input_o\,
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\LED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[5]~input_o\,
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[4]~input_o\,
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[3]~input_o\,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[2]~input_o\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[1]~input_o\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B[0]~input_o\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\Q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(7),
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\Q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(6),
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\Q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(5),
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\Q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(4),
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => inst2(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOIBUF_X1_Y0_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\T4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T4,
	o => \T4~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\LDPC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LDPC,
	o => \LDPC~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\LDAR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LDAR,
	o => \LDAR~input_o\);

-- Location: LCCOMB_X10_Y1_N24
\inst1|$00000|auto_generated|result_node[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|$00000|auto_generated|result_node[6]~0_combout\ = (\LDAR~input_o\) # ((!\CLR~input_o\ & \LDPC~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLR~input_o\,
	datac => \LDPC~input_o\,
	datad => \LDAR~input_o\,
	combout => \inst1|$00000|auto_generated|result_node[6]~0_combout\);

-- Location: LCCOMB_X10_Y1_N10
\inst1|$00000|auto_generated|result_node[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|$00000|auto_generated|result_node[7]~1_combout\ = (!\LDAR~input_o\ & (!\CLR~input_o\ & !\LDPC~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LDAR~input_o\,
	datab => \CLR~input_o\,
	datad => \LDPC~input_o\,
	combout => \inst1|$00000|auto_generated|result_node[7]~1_combout\);

-- Location: LCCOMB_X12_Y1_N2
\inst|LPM_COUNTER_component|auto_generated|latch_signal[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\ = (\CLR~input_o\) # ((\LDPC~input_o\ & ((!\B[7]~input_o\))) # (!\LDPC~input_o\ & (\inst|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\,
	datab => \B[7]~input_o\,
	datac => \CLR~input_o\,
	datad => \LDPC~input_o\,
	combout => \inst|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\);

-- Location: LCCOMB_X10_Y1_N26
\inst|LPM_COUNTER_component|auto_generated|latch_signal[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\ = (\CLR~input_o\) # ((\LDPC~input_o\ & (!\B[6]~input_o\)) # (!\LDPC~input_o\ & ((\inst|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \B[6]~input_o\,
	datac => \inst|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\,
	datad => \LDPC~input_o\,
	combout => \inst|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\);

-- Location: LCCOMB_X10_Y1_N28
\inst|LPM_COUNTER_component|auto_generated|latch_signal[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\ = (\CLR~input_o\) # ((\LDPC~input_o\ & ((!\B[5]~input_o\))) # (!\LDPC~input_o\ & (\inst|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \inst|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\,
	datac => \B[5]~input_o\,
	datad => \LDPC~input_o\,
	combout => \inst|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\);

-- Location: LCCOMB_X10_Y1_N14
\inst|LPM_COUNTER_component|auto_generated|latch_signal[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\ = (\CLR~input_o\) # ((\LDPC~input_o\ & (!\B[4]~input_o\)) # (!\LDPC~input_o\ & ((\inst|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \CLR~input_o\,
	datac => \inst|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\,
	datad => \LDPC~input_o\,
	combout => \inst|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\);

-- Location: LCCOMB_X12_Y1_N24
\inst|LPM_COUNTER_component|auto_generated|latch_signal[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\ = (\CLR~input_o\) # ((\LDPC~input_o\ & ((!\B[3]~input_o\))) # (!\LDPC~input_o\ & (\inst|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \inst|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\,
	datac => \B[3]~input_o\,
	datad => \LDPC~input_o\,
	combout => \inst|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\);

-- Location: LCCOMB_X12_Y1_N6
\inst|LPM_COUNTER_component|auto_generated|latch_signal[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\ = (\CLR~input_o\) # ((\LDPC~input_o\ & (!\B[2]~input_o\)) # (!\LDPC~input_o\ & ((\inst|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \B[2]~input_o\,
	datac => \inst|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\,
	datad => \LDPC~input_o\,
	combout => \inst|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\);

-- Location: LCCOMB_X11_Y1_N22
\inst|LPM_COUNTER_component|auto_generated|latch_signal[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\ = (\CLR~input_o\) # ((\LDPC~input_o\ & (!\B[1]~input_o\)) # (!\LDPC~input_o\ & ((\inst|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \inst|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\,
	datac => \CLR~input_o\,
	datad => \LDPC~input_o\,
	combout => \inst|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\);

-- Location: LCCOMB_X12_Y1_N8
\inst|LPM_COUNTER_component|auto_generated|latch_signal[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\ = (\CLR~input_o\) # ((\LDPC~input_o\ & ((!\B[0]~input_o\))) # (!\LDPC~input_o\ & (\inst|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\,
	datab => \B[0]~input_o\,
	datac => \CLR~input_o\,
	datad => \LDPC~input_o\,
	combout => \inst|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\);

-- Location: LCCOMB_X11_Y1_N4
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(0) $ (GND)
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(0),
	datad => VCC,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X12_Y1_N18
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~7_combout\ = \inst|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\ $ (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~7_combout\);

-- Location: LCCOMB_X10_Y1_N0
\inst|LPM_COUNTER_component|auto_generated|aclr_actual~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|aclr_actual~0_combout\ = (\CLR~input_o\) # (\LDPC~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLR~input_o\,
	datad => \LDPC~input_o\,
	combout => \inst|LPM_COUNTER_component|auto_generated|aclr_actual~0_combout\);

-- Location: FF_X12_Y1_N19
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T4~input_o\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~7_combout\,
	clrn => \inst|LPM_COUNTER_component|auto_generated|ALT_INV_aclr_actual~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X12_Y1_N20
\inst|LPM_COUNTER_component|auto_generated|pre_hazard[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(0) = \inst|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\ $ (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LPM_COUNTER_component|auto_generated|latch_signal[0]~15_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(0));

-- Location: LCCOMB_X11_Y1_N6
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(1) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(1) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(1)) # (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(1),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X11_Y1_N2
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~6_combout\ = \inst|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\ $ (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~6_combout\);

-- Location: FF_X11_Y1_N3
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T4~input_o\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]~6_combout\,
	clrn => \inst|LPM_COUNTER_component|auto_generated|ALT_INV_aclr_actual~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X11_Y1_N0
\inst|LPM_COUNTER_component|auto_generated|pre_hazard[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(1) = \inst|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\ $ (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LPM_COUNTER_component|auto_generated|latch_signal[1]~14_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(1));

-- Location: LCCOMB_X11_Y1_N8
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(2) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(2) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(2) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(2),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X12_Y1_N30
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~5_combout\ = \inst|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\ $ (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~5_combout\);

-- Location: FF_X12_Y1_N31
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T4~input_o\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]~5_combout\,
	clrn => \inst|LPM_COUNTER_component|auto_generated|ALT_INV_aclr_actual~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X12_Y1_N12
\inst|LPM_COUNTER_component|auto_generated|pre_hazard[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(2) = \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ (\inst|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst|LPM_COUNTER_component|auto_generated|latch_signal[2]~13_combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(2));

-- Location: LCCOMB_X11_Y1_N10
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(3) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(3) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(3)) # (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(3),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X12_Y1_N22
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~4_combout\ = \inst|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\ $ (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~4_combout\);

-- Location: FF_X12_Y1_N23
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T4~input_o\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]~4_combout\,
	clrn => \inst|LPM_COUNTER_component|auto_generated|ALT_INV_aclr_actual~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X12_Y1_N4
\inst|LPM_COUNTER_component|auto_generated|pre_hazard[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(3) = \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) $ (\inst|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst|LPM_COUNTER_component|auto_generated|latch_signal[3]~12_combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(3));

-- Location: LCCOMB_X11_Y1_N12
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(4) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(4) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(4) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(4),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X11_Y1_N26
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~3_combout\ = \inst|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\ $ (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~3_combout\);

-- Location: FF_X11_Y1_N27
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T4~input_o\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]~3_combout\,
	clrn => \inst|LPM_COUNTER_component|auto_generated|ALT_INV_aclr_actual~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X11_Y1_N20
\inst|LPM_COUNTER_component|auto_generated|pre_hazard[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(4) = \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) $ (\inst|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \inst|LPM_COUNTER_component|auto_generated|latch_signal[4]~11_combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(4));

-- Location: LCCOMB_X11_Y1_N14
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(5) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(5) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(5)) # (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(5),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X11_Y1_N30
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]~2_combout\ = \inst|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\ $ (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\,
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]~2_combout\);

-- Location: FF_X11_Y1_N31
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T4~input_o\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]~2_combout\,
	clrn => \inst|LPM_COUNTER_component|auto_generated|ALT_INV_aclr_actual~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X11_Y1_N24
\inst|LPM_COUNTER_component|auto_generated|pre_hazard[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(5) = \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) $ (\inst|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => \inst|LPM_COUNTER_component|auto_generated|latch_signal[5]~10_combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(5));

-- Location: LCCOMB_X11_Y1_N16
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(6) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(6) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(6) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(6),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X10_Y1_N12
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~1_combout\ = \inst|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\ $ (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~1_combout\);

-- Location: FF_X10_Y1_N13
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T4~input_o\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]~1_combout\,
	clrn => \inst|LPM_COUNTER_component|auto_generated|ALT_INV_aclr_actual~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X10_Y1_N6
\inst|LPM_COUNTER_component|auto_generated|pre_hazard[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(6) = \inst|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\ $ (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LPM_COUNTER_component|auto_generated|latch_signal[6]~9_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	combout => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(6));

-- Location: LCCOMB_X11_Y1_N18
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ $ (!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(7),
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\);

-- Location: LCCOMB_X11_Y1_N28
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~0_combout\ = \inst|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\ $ (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~0_combout\);

-- Location: FF_X11_Y1_N29
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T4~input_o\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]~0_combout\,
	clrn => \inst|LPM_COUNTER_component|auto_generated|ALT_INV_aclr_actual~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X12_Y1_N16
\inst|LPM_COUNTER_component|auto_generated|pre_hazard[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(7) = \inst|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\ $ (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|latch_signal[7]~8_combout\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(7));

-- Location: LCCOMB_X10_Y1_N4
\inst1|$00000|auto_generated|result_node[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|$00000|auto_generated|result_node[7]~2_combout\ = (\inst1|$00000|auto_generated|result_node[6]~0_combout\ & ((\B[7]~input_o\) # ((\inst1|$00000|auto_generated|result_node[7]~1_combout\ & 
-- !\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(7))))) # (!\inst1|$00000|auto_generated|result_node[6]~0_combout\ & (\inst1|$00000|auto_generated|result_node[7]~1_combout\ & ((!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|$00000|auto_generated|result_node[6]~0_combout\,
	datab => \inst1|$00000|auto_generated|result_node[7]~1_combout\,
	datac => \B[7]~input_o\,
	datad => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(7),
	combout => \inst1|$00000|auto_generated|result_node[7]~2_combout\);

-- Location: FF_X10_Y1_N5
\inst2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T4~input_o\,
	d => \inst1|$00000|auto_generated|result_node[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(7));

-- Location: LCCOMB_X10_Y1_N2
\inst1|$00000|auto_generated|result_node[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|$00000|auto_generated|result_node[6]~3_combout\ = (\inst1|$00000|auto_generated|result_node[6]~0_combout\ & ((\B[6]~input_o\) # ((\inst1|$00000|auto_generated|result_node[7]~1_combout\ & 
-- !\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(6))))) # (!\inst1|$00000|auto_generated|result_node[6]~0_combout\ & (\inst1|$00000|auto_generated|result_node[7]~1_combout\ & (!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|$00000|auto_generated|result_node[6]~0_combout\,
	datab => \inst1|$00000|auto_generated|result_node[7]~1_combout\,
	datac => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(6),
	datad => \B[6]~input_o\,
	combout => \inst1|$00000|auto_generated|result_node[6]~3_combout\);

-- Location: FF_X10_Y1_N3
\inst2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T4~input_o\,
	d => \inst1|$00000|auto_generated|result_node[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(6));

-- Location: LCCOMB_X10_Y1_N16
\inst1|$00000|auto_generated|result_node[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|$00000|auto_generated|result_node[5]~4_combout\ = (\inst1|$00000|auto_generated|result_node[6]~0_combout\ & ((\B[5]~input_o\) # ((\inst1|$00000|auto_generated|result_node[7]~1_combout\ & 
-- !\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(5))))) # (!\inst1|$00000|auto_generated|result_node[6]~0_combout\ & (\inst1|$00000|auto_generated|result_node[7]~1_combout\ & ((!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|$00000|auto_generated|result_node[6]~0_combout\,
	datab => \inst1|$00000|auto_generated|result_node[7]~1_combout\,
	datac => \B[5]~input_o\,
	datad => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(5),
	combout => \inst1|$00000|auto_generated|result_node[5]~4_combout\);

-- Location: FF_X10_Y1_N17
\inst2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T4~input_o\,
	d => \inst1|$00000|auto_generated|result_node[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(5));

-- Location: LCCOMB_X10_Y1_N22
\inst1|$00000|auto_generated|result_node[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|$00000|auto_generated|result_node[4]~5_combout\ = (\inst1|$00000|auto_generated|result_node[6]~0_combout\ & ((\B[4]~input_o\) # ((\inst1|$00000|auto_generated|result_node[7]~1_combout\ & 
-- !\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(4))))) # (!\inst1|$00000|auto_generated|result_node[6]~0_combout\ & (\inst1|$00000|auto_generated|result_node[7]~1_combout\ & (!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|$00000|auto_generated|result_node[6]~0_combout\,
	datab => \inst1|$00000|auto_generated|result_node[7]~1_combout\,
	datac => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(4),
	datad => \B[4]~input_o\,
	combout => \inst1|$00000|auto_generated|result_node[4]~5_combout\);

-- Location: FF_X10_Y1_N23
\inst2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T4~input_o\,
	d => \inst1|$00000|auto_generated|result_node[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(4));

-- Location: LCCOMB_X10_Y1_N8
\inst1|$00000|auto_generated|result_node[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|$00000|auto_generated|result_node[3]~6_combout\ = (\inst1|$00000|auto_generated|result_node[6]~0_combout\ & ((\B[3]~input_o\) # ((\inst1|$00000|auto_generated|result_node[7]~1_combout\ & 
-- !\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(3))))) # (!\inst1|$00000|auto_generated|result_node[6]~0_combout\ & (\inst1|$00000|auto_generated|result_node[7]~1_combout\ & ((!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|$00000|auto_generated|result_node[6]~0_combout\,
	datab => \inst1|$00000|auto_generated|result_node[7]~1_combout\,
	datac => \B[3]~input_o\,
	datad => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(3),
	combout => \inst1|$00000|auto_generated|result_node[3]~6_combout\);

-- Location: FF_X10_Y1_N9
\inst2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T4~input_o\,
	d => \inst1|$00000|auto_generated|result_node[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(3));

-- Location: LCCOMB_X10_Y1_N30
\inst1|$00000|auto_generated|result_node[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|$00000|auto_generated|result_node[2]~7_combout\ = (\inst1|$00000|auto_generated|result_node[6]~0_combout\ & ((\B[2]~input_o\) # ((\inst1|$00000|auto_generated|result_node[7]~1_combout\ & 
-- !\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(2))))) # (!\inst1|$00000|auto_generated|result_node[6]~0_combout\ & (\inst1|$00000|auto_generated|result_node[7]~1_combout\ & (!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|$00000|auto_generated|result_node[6]~0_combout\,
	datab => \inst1|$00000|auto_generated|result_node[7]~1_combout\,
	datac => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(2),
	datad => \B[2]~input_o\,
	combout => \inst1|$00000|auto_generated|result_node[2]~7_combout\);

-- Location: FF_X10_Y1_N31
\inst2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T4~input_o\,
	d => \inst1|$00000|auto_generated|result_node[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(2));

-- Location: LCCOMB_X10_Y1_N20
\inst1|$00000|auto_generated|result_node[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|$00000|auto_generated|result_node[1]~8_combout\ = (\inst1|$00000|auto_generated|result_node[6]~0_combout\ & ((\B[1]~input_o\) # ((\inst1|$00000|auto_generated|result_node[7]~1_combout\ & 
-- !\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(1))))) # (!\inst1|$00000|auto_generated|result_node[6]~0_combout\ & (\inst1|$00000|auto_generated|result_node[7]~1_combout\ & ((!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|$00000|auto_generated|result_node[6]~0_combout\,
	datab => \inst1|$00000|auto_generated|result_node[7]~1_combout\,
	datac => \B[1]~input_o\,
	datad => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(1),
	combout => \inst1|$00000|auto_generated|result_node[1]~8_combout\);

-- Location: FF_X10_Y1_N21
\inst2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T4~input_o\,
	d => \inst1|$00000|auto_generated|result_node[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(1));

-- Location: LCCOMB_X10_Y1_N18
\inst1|$00000|auto_generated|result_node[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|$00000|auto_generated|result_node[0]~9_combout\ = (\inst1|$00000|auto_generated|result_node[6]~0_combout\ & ((\B[0]~input_o\) # ((\inst1|$00000|auto_generated|result_node[7]~1_combout\ & 
-- !\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(0))))) # (!\inst1|$00000|auto_generated|result_node[6]~0_combout\ & (\inst1|$00000|auto_generated|result_node[7]~1_combout\ & ((!\inst|LPM_COUNTER_component|auto_generated|pre_hazard\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|$00000|auto_generated|result_node[6]~0_combout\,
	datab => \inst1|$00000|auto_generated|result_node[7]~1_combout\,
	datac => \B[0]~input_o\,
	datad => \inst|LPM_COUNTER_component|auto_generated|pre_hazard\(0),
	combout => \inst1|$00000|auto_generated|result_node[0]~9_combout\);

-- Location: FF_X10_Y1_N19
\inst2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \T4~input_o\,
	d => \inst1|$00000|auto_generated|result_node[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inst2(0));

ww_LED(7) <= \LED[7]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(0) <= \LED[0]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;
END structure;


