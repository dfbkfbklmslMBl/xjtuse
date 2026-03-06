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

-- DATE "12/02/2024 15:39:54"

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

ENTITY 	task6 IS
    PORT (
	SE : OUT std_logic_vector(6 DOWNTO 1);
	I : IN std_logic_vector(7 DOWNTO 2);
	T4 : IN std_logic;
	P : IN std_logic_vector(4 DOWNTO 1);
	SWA : IN std_logic;
	SWB : IN std_logic;
	FZ : IN std_logic;
	FC : IN std_logic
	);
END task6;

-- Design Ports Information
-- SE[6]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE[5]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE[4]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE[3]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE[2]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SE[1]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T4	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FZ	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FC	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[3]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[7]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[6]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[5]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[2]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWB	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[4]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[4]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SWA	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF task6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SE : std_logic_vector(6 DOWNTO 1);
SIGNAL ww_I : std_logic_vector(7 DOWNTO 2);
SIGNAL ww_T4 : std_logic;
SIGNAL ww_P : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_SWA : std_logic;
SIGNAL ww_SWB : std_logic;
SIGNAL ww_FZ : std_logic;
SIGNAL ww_FC : std_logic;
SIGNAL \SE[6]~output_o\ : std_logic;
SIGNAL \SE[5]~output_o\ : std_logic;
SIGNAL \SE[4]~output_o\ : std_logic;
SIGNAL \SE[3]~output_o\ : std_logic;
SIGNAL \SE[2]~output_o\ : std_logic;
SIGNAL \SE[1]~output_o\ : std_logic;
SIGNAL \T4~input_o\ : std_logic;
SIGNAL \FC~input_o\ : std_logic;
SIGNAL \P[3]~input_o\ : std_logic;
SIGNAL \FZ~input_o\ : std_logic;
SIGNAL \inst7~0_combout\ : std_logic;
SIGNAL \P[1]~input_o\ : std_logic;
SIGNAL \I[7]~input_o\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \I[6]~input_o\ : std_logic;
SIGNAL \inst9~combout\ : std_logic;
SIGNAL \P[4]~input_o\ : std_logic;
SIGNAL \I[3]~input_o\ : std_logic;
SIGNAL \I[5]~input_o\ : std_logic;
SIGNAL \P[2]~input_o\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \SWB~input_o\ : std_logic;
SIGNAL \inst5~1_combout\ : std_logic;
SIGNAL \I[4]~input_o\ : std_logic;
SIGNAL \I[2]~input_o\ : std_logic;
SIGNAL \inst6~0_combout\ : std_logic;
SIGNAL \SWA~input_o\ : std_logic;
SIGNAL \inst6~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst6~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst5~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst9~combout\ : std_logic;
SIGNAL \ALT_INV_inst8~combout\ : std_logic;
SIGNAL \ALT_INV_inst7~0_combout\ : std_logic;

BEGIN

SE <= ww_SE;
ww_I <= I;
ww_T4 <= T4;
ww_P <= P;
ww_SWA <= SWA;
ww_SWB <= SWB;
ww_FZ <= FZ;
ww_FC <= FC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst6~1_combout\ <= NOT \inst6~1_combout\;
\ALT_INV_inst5~1_combout\ <= NOT \inst5~1_combout\;
\ALT_INV_inst9~combout\ <= NOT \inst9~combout\;
\ALT_INV_inst8~combout\ <= NOT \inst8~combout\;
\ALT_INV_inst7~0_combout\ <= NOT \inst7~0_combout\;

-- Location: IOOBUF_X13_Y0_N2
\SE[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \SE[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\SE[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst7~0_combout\,
	devoe => ww_devoe,
	o => \SE[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\SE[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst8~combout\,
	devoe => ww_devoe,
	o => \SE[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\SE[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst9~combout\,
	devoe => ww_devoe,
	o => \SE[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\SE[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst5~1_combout\,
	devoe => ww_devoe,
	o => \SE[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\SE[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst6~1_combout\,
	devoe => ww_devoe,
	o => \SE[1]~output_o\);

-- Location: IOIBUF_X16_Y0_N1
\T4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T4,
	o => \T4~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\FC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FC,
	o => \FC~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\P[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(3),
	o => \P[3]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\FZ~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FZ,
	o => \FZ~input_o\);

-- Location: LCCOMB_X28_Y2_N16
\inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7~0_combout\ = (\T4~input_o\ & (!\P[3]~input_o\ & ((\FC~input_o\) # (\FZ~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T4~input_o\,
	datab => \FC~input_o\,
	datac => \P[3]~input_o\,
	datad => \FZ~input_o\,
	combout => \inst7~0_combout\);

-- Location: IOIBUF_X23_Y0_N8
\P[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(1),
	o => \P[1]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\I[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(7),
	o => \I[7]~input_o\);

-- Location: LCCOMB_X28_Y2_N10
inst8 : cycloneive_lcell_comb
-- Equation(s):
-- \inst8~combout\ = (\T4~input_o\ & (!\P[1]~input_o\ & \I[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T4~input_o\,
	datab => \P[1]~input_o\,
	datad => \I[7]~input_o\,
	combout => \inst8~combout\);

-- Location: IOIBUF_X30_Y0_N22
\I[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(6),
	o => \I[6]~input_o\);

-- Location: LCCOMB_X28_Y2_N28
inst9 : cycloneive_lcell_comb
-- Equation(s):
-- \inst9~combout\ = (\T4~input_o\ & (!\P[1]~input_o\ & \I[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T4~input_o\,
	datab => \P[1]~input_o\,
	datad => \I[6]~input_o\,
	combout => \inst9~combout\);

-- Location: IOIBUF_X34_Y2_N15
\P[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(4),
	o => \P[4]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\I[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(3),
	o => \I[3]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\I[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(5),
	o => \I[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\P[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(2),
	o => \P[2]~input_o\);

-- Location: LCCOMB_X28_Y2_N22
\inst5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = (\I[3]~input_o\ & (((!\P[1]~input_o\ & \I[5]~input_o\)) # (!\P[2]~input_o\))) # (!\I[3]~input_o\ & (!\P[1]~input_o\ & (\I[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I[3]~input_o\,
	datab => \P[1]~input_o\,
	datac => \I[5]~input_o\,
	datad => \P[2]~input_o\,
	combout => \inst5~0_combout\);

-- Location: IOIBUF_X34_Y9_N22
\SWB~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWB,
	o => \SWB~input_o\);

-- Location: LCCOMB_X28_Y2_N8
\inst5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5~1_combout\ = (\T4~input_o\ & ((\inst5~0_combout\) # ((!\P[4]~input_o\ & \SWB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T4~input_o\,
	datab => \P[4]~input_o\,
	datac => \inst5~0_combout\,
	datad => \SWB~input_o\,
	combout => \inst5~1_combout\);

-- Location: IOIBUF_X25_Y0_N1
\I[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(4),
	o => \I[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\I[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_I(2),
	o => \I[2]~input_o\);

-- Location: LCCOMB_X28_Y2_N2
\inst6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6~0_combout\ = (\I[4]~input_o\ & (((\I[2]~input_o\ & !\P[2]~input_o\)) # (!\P[1]~input_o\))) # (!\I[4]~input_o\ & (((\I[2]~input_o\ & !\P[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I[4]~input_o\,
	datab => \P[1]~input_o\,
	datac => \I[2]~input_o\,
	datad => \P[2]~input_o\,
	combout => \inst6~0_combout\);

-- Location: IOIBUF_X34_Y4_N15
\SWA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SWA,
	o => \SWA~input_o\);

-- Location: LCCOMB_X28_Y2_N12
\inst6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6~1_combout\ = (\T4~input_o\ & ((\inst6~0_combout\) # ((\SWA~input_o\ & !\P[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T4~input_o\,
	datab => \inst6~0_combout\,
	datac => \SWA~input_o\,
	datad => \P[4]~input_o\,
	combout => \inst6~1_combout\);

ww_SE(6) <= \SE[6]~output_o\;

ww_SE(5) <= \SE[5]~output_o\;

ww_SE(4) <= \SE[4]~output_o\;

ww_SE(3) <= \SE[3]~output_o\;

ww_SE(2) <= \SE[2]~output_o\;

ww_SE(1) <= \SE[1]~output_o\;
END structure;


