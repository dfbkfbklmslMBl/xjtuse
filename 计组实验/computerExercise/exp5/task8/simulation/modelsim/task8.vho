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

-- DATE "12/02/2024 16:17:04"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	task8 IS
    PORT (
	LDR0 : OUT std_logic;
	I1 : IN std_logic;
	I0 : IN std_logic;
	LDRI : IN std_logic;
	LDR1 : OUT std_logic;
	LDR2 : OUT std_logic;
	R0_B : OUT std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	RS_B : IN std_logic;
	RD_B : IN std_logic;
	R1_B : OUT std_logic;
	R2_B : OUT std_logic;
	RJ_B : IN std_logic
	);
END task8;

-- Design Ports Information
-- LDR0	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDR1	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDR2	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0_B	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1_B	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2_B	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDRI	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I1	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I0	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I3	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RS_B	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_B	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RJ_B	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF task8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LDR0 : std_logic;
SIGNAL ww_I1 : std_logic;
SIGNAL ww_I0 : std_logic;
SIGNAL ww_LDRI : std_logic;
SIGNAL ww_LDR1 : std_logic;
SIGNAL ww_LDR2 : std_logic;
SIGNAL ww_R0_B : std_logic;
SIGNAL ww_I3 : std_logic;
SIGNAL ww_I2 : std_logic;
SIGNAL ww_RS_B : std_logic;
SIGNAL ww_RD_B : std_logic;
SIGNAL ww_R1_B : std_logic;
SIGNAL ww_R2_B : std_logic;
SIGNAL ww_RJ_B : std_logic;
SIGNAL \LDR0~output_o\ : std_logic;
SIGNAL \LDR1~output_o\ : std_logic;
SIGNAL \LDR2~output_o\ : std_logic;
SIGNAL \R0_B~output_o\ : std_logic;
SIGNAL \R1_B~output_o\ : std_logic;
SIGNAL \R2_B~output_o\ : std_logic;
SIGNAL \I0~input_o\ : std_logic;
SIGNAL \I1~input_o\ : std_logic;
SIGNAL \LDRI~input_o\ : std_logic;
SIGNAL \inst|33~combout\ : std_logic;
SIGNAL \inst|34~combout\ : std_logic;
SIGNAL \inst|35~combout\ : std_logic;
SIGNAL \I2~input_o\ : std_logic;
SIGNAL \RS_B~input_o\ : std_logic;
SIGNAL \I3~input_o\ : std_logic;
SIGNAL \inst2|33~combout\ : std_logic;
SIGNAL \RD_B~input_o\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \inst2|34~combout\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \inst1|35~combout\ : std_logic;
SIGNAL \inst2|35~0_combout\ : std_logic;
SIGNAL \RJ_B~input_o\ : std_logic;
SIGNAL \inst11~combout\ : std_logic;
SIGNAL \ALT_INV_inst11~combout\ : std_logic;

BEGIN

LDR0 <= ww_LDR0;
ww_I1 <= I1;
ww_I0 <= I0;
ww_LDRI <= LDRI;
LDR1 <= ww_LDR1;
LDR2 <= ww_LDR2;
R0_B <= ww_R0_B;
ww_I3 <= I3;
ww_I2 <= I2;
ww_RS_B <= RS_B;
ww_RD_B <= RD_B;
R1_B <= ww_R1_B;
R2_B <= ww_R2_B;
ww_RJ_B <= RJ_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst11~combout\ <= NOT \inst11~combout\;

-- Location: IOOBUF_X23_Y0_N9
\LDR0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|33~combout\,
	devoe => ww_devoe,
	o => \LDR0~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\LDR1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|34~combout\,
	devoe => ww_devoe,
	o => \LDR1~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\LDR2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|35~combout\,
	devoe => ww_devoe,
	o => \LDR2~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\R0_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~combout\,
	devoe => ww_devoe,
	o => \R0_B~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\R1_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~combout\,
	devoe => ww_devoe,
	o => \R1_B~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\R2_B~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst11~combout\,
	devoe => ww_devoe,
	o => \R2_B~output_o\);

-- Location: IOIBUF_X16_Y0_N8
\I0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I0,
	o => \I0~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\I1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I1,
	o => \I1~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\LDRI~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LDRI,
	o => \LDRI~input_o\);

-- Location: LCCOMB_X30_Y2_N8
\inst|33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|33~combout\ = (!\I0~input_o\ & (!\I1~input_o\ & !\LDRI~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0~input_o\,
	datac => \I1~input_o\,
	datad => \LDRI~input_o\,
	combout => \inst|33~combout\);

-- Location: LCCOMB_X30_Y2_N26
\inst|34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|34~combout\ = (\I0~input_o\ & (!\I1~input_o\ & !\LDRI~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0~input_o\,
	datac => \I1~input_o\,
	datad => \LDRI~input_o\,
	combout => \inst|34~combout\);

-- Location: LCCOMB_X30_Y2_N4
\inst|35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|35~combout\ = (!\I0~input_o\ & (\I1~input_o\ & !\LDRI~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0~input_o\,
	datac => \I1~input_o\,
	datad => \LDRI~input_o\,
	combout => \inst|35~combout\);

-- Location: IOIBUF_X25_Y0_N1
\I2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I2,
	o => \I2~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\RS_B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RS_B,
	o => \RS_B~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\I3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I3,
	o => \I3~input_o\);

-- Location: LCCOMB_X30_Y2_N14
\inst2|33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|33~combout\ = (!\I2~input_o\ & (!\RS_B~input_o\ & !\I3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2~input_o\,
	datab => \RS_B~input_o\,
	datac => \I3~input_o\,
	combout => \inst2|33~combout\);

-- Location: IOIBUF_X34_Y3_N22
\RD_B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_B,
	o => \RD_B~input_o\);

-- Location: LCCOMB_X30_Y2_N24
inst3 : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~combout\ = (\inst2|33~combout\) # ((!\I0~input_o\ & (!\I1~input_o\ & !\RD_B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0~input_o\,
	datab => \inst2|33~combout\,
	datac => \I1~input_o\,
	datad => \RD_B~input_o\,
	combout => \inst3~combout\);

-- Location: LCCOMB_X30_Y2_N2
\inst2|34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|34~combout\ = (\I2~input_o\ & (!\RS_B~input_o\ & !\I3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2~input_o\,
	datab => \RS_B~input_o\,
	datac => \I3~input_o\,
	combout => \inst2|34~combout\);

-- Location: LCCOMB_X30_Y2_N20
inst4 : cycloneive_lcell_comb
-- Equation(s):
-- \inst4~combout\ = (\inst2|34~combout\) # ((\I0~input_o\ & (!\I1~input_o\ & !\RD_B~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0~input_o\,
	datab => \inst2|34~combout\,
	datac => \I1~input_o\,
	datad => \RD_B~input_o\,
	combout => \inst4~combout\);

-- Location: LCCOMB_X30_Y2_N6
\inst1|35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|35~combout\ = (!\I0~input_o\ & (\I1~input_o\ & !\RD_B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0~input_o\,
	datac => \I1~input_o\,
	datad => \RD_B~input_o\,
	combout => \inst1|35~combout\);

-- Location: LCCOMB_X30_Y2_N0
\inst2|35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|35~0_combout\ = (!\I2~input_o\ & (!\RS_B~input_o\ & \I3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I2~input_o\,
	datab => \RS_B~input_o\,
	datac => \I3~input_o\,
	combout => \inst2|35~0_combout\);

-- Location: IOIBUF_X34_Y9_N15
\RJ_B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RJ_B,
	o => \RJ_B~input_o\);

-- Location: LCCOMB_X30_Y2_N18
inst11 : cycloneive_lcell_comb
-- Equation(s):
-- \inst11~combout\ = (\RJ_B~input_o\) # ((!\inst1|35~combout\ & !\inst2|35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|35~combout\,
	datab => \inst2|35~0_combout\,
	datad => \RJ_B~input_o\,
	combout => \inst11~combout\);

ww_LDR0 <= \LDR0~output_o\;

ww_LDR1 <= \LDR1~output_o\;

ww_LDR2 <= \LDR2~output_o\;

ww_R0_B <= \R0_B~output_o\;

ww_R1_B <= \R1_B~output_o\;

ww_R2_B <= \R2_B~output_o\;
END structure;


