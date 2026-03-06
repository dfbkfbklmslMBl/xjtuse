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

-- DATE "11/10/2023 15:39:07"

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

ENTITY 	task5 IS
    PORT (
	ar : OUT std_logic_vector(7 DOWNTO 0);
	ar_alk : IN std_logic;
	pc_b : IN std_logic;
	load_pc : IN std_logic;
	pc_clk : IN std_logic;
	rst : IN std_logic;
	input_b : IN std_logic;
	data : IN std_logic_vector(7 DOWNTO 0);
	pc : OUT std_logic_vector(7 DOWNTO 0)
	);
END task5;

-- Design Ports Information
-- ar[7]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ar[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ar[5]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ar[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ar[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ar[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ar[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ar[0]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_b	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[7]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[6]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[5]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[4]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[3]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_b	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ar_alk	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_clk	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_pc	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF task5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ar : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ar_alk : std_logic;
SIGNAL ww_pc_b : std_logic;
SIGNAL ww_load_pc : std_logic;
SIGNAL ww_pc_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_input_b : std_logic;
SIGNAL ww_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL \pc_b~input_o\ : std_logic;
SIGNAL \ar[7]~output_o\ : std_logic;
SIGNAL \ar[6]~output_o\ : std_logic;
SIGNAL \ar[5]~output_o\ : std_logic;
SIGNAL \ar[4]~output_o\ : std_logic;
SIGNAL \ar[3]~output_o\ : std_logic;
SIGNAL \ar[2]~output_o\ : std_logic;
SIGNAL \ar[1]~output_o\ : std_logic;
SIGNAL \ar[0]~output_o\ : std_logic;
SIGNAL \pc[7]~output_o\ : std_logic;
SIGNAL \pc[6]~output_o\ : std_logic;
SIGNAL \pc[5]~output_o\ : std_logic;
SIGNAL \pc[4]~output_o\ : std_logic;
SIGNAL \pc[3]~output_o\ : std_logic;
SIGNAL \pc[2]~output_o\ : std_logic;
SIGNAL \pc[1]~output_o\ : std_logic;
SIGNAL \pc[0]~output_o\ : std_logic;
SIGNAL \ar_alk~input_o\ : std_logic;
SIGNAL \data[7]~input_o\ : std_logic;
SIGNAL \input_b~input_o\ : std_logic;
SIGNAL \pc_clk~input_o\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \gdfx_temp0[0]~7_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \load_pc~input_o\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \gdfx_temp0[1]~6_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \gdfx_temp0[2]~5_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \gdfx_temp0[3]~4_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \data[4]~input_o\ : std_logic;
SIGNAL \gdfx_temp0[4]~3_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \data[5]~input_o\ : std_logic;
SIGNAL \gdfx_temp0[5]~2_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \data[6]~input_o\ : std_logic;
SIGNAL \gdfx_temp0[6]~1_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \gdfx_temp0[7]~0_combout\ : std_logic;
SIGNAL \inst1|latches\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ar <= ww_ar;
ww_ar_alk <= ar_alk;
ww_pc_b <= pc_b;
ww_load_pc <= load_pc;
ww_pc_clk <= pc_clk;
ww_rst <= rst;
ww_input_b <= input_b;
ww_data <= data;
pc <= ww_pc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X18_Y0_N23
\ar[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|latches\(7),
	devoe => ww_devoe,
	o => \ar[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\ar[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|latches\(6),
	devoe => ww_devoe,
	o => \ar[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\ar[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|latches\(5),
	devoe => ww_devoe,
	o => \ar[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\ar[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|latches\(4),
	devoe => ww_devoe,
	o => \ar[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\ar[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|latches\(3),
	devoe => ww_devoe,
	o => \ar[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\ar[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|latches\(2),
	devoe => ww_devoe,
	o => \ar[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\ar[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|latches\(1),
	devoe => ww_devoe,
	o => \ar[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\ar[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|latches\(0),
	devoe => ww_devoe,
	o => \ar[0]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\pc[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	devoe => ww_devoe,
	o => \pc[7]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\pc[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	devoe => ww_devoe,
	o => \pc[6]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\pc[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	devoe => ww_devoe,
	o => \pc[5]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\pc[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	devoe => ww_devoe,
	o => \pc[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\pc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \pc[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\pc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \pc[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\pc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \pc[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\pc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \pc[0]~output_o\);

-- Location: IOIBUF_X34_Y9_N15
\ar_alk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ar_alk,
	o => \ar_alk~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(7),
	o => \data[7]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\input_b~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_b,
	o => \input_b~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\pc_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_clk,
	o => \pc_clk~input_o\);

-- Location: LCCOMB_X30_Y1_N4
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: IOIBUF_X23_Y0_N8
\data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: LCCOMB_X31_Y1_N20
\gdfx_temp0[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \gdfx_temp0[0]~7_combout\ = (\input_b~input_o\ & (\data[0]~input_o\)) # (!\input_b~input_o\ & ((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data[0]~input_o\,
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \input_b~input_o\,
	combout => \gdfx_temp0[0]~7_combout\);

-- Location: IOIBUF_X25_Y0_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\load_pc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_pc,
	o => \load_pc~input_o\);

-- Location: FF_X30_Y1_N5
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pc_clk~input_o\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \gdfx_temp0[0]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \load_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X30_Y1_N6
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: IOIBUF_X28_Y0_N22
\data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: LCCOMB_X30_Y1_N22
\gdfx_temp0[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \gdfx_temp0[1]~6_combout\ = (\input_b~input_o\ & (\data[1]~input_o\)) # (!\input_b~input_o\ & ((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~input_o\,
	datab => \input_b~input_o\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \gdfx_temp0[1]~6_combout\);

-- Location: FF_X30_Y1_N7
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pc_clk~input_o\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \gdfx_temp0[1]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \load_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X30_Y1_N8
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: IOIBUF_X32_Y0_N22
\data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: LCCOMB_X30_Y1_N24
\gdfx_temp0[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \gdfx_temp0[2]~5_combout\ = (\input_b~input_o\ & (\data[2]~input_o\)) # (!\input_b~input_o\ & ((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data[2]~input_o\,
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \input_b~input_o\,
	combout => \gdfx_temp0[2]~5_combout\);

-- Location: FF_X30_Y1_N9
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pc_clk~input_o\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \gdfx_temp0[2]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \load_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X30_Y1_N10
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: IOIBUF_X34_Y2_N15
\data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: LCCOMB_X31_Y1_N10
\gdfx_temp0[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \gdfx_temp0[3]~4_combout\ = (\input_b~input_o\ & (\data[3]~input_o\)) # (!\input_b~input_o\ & ((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_b~input_o\,
	datac => \data[3]~input_o\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \gdfx_temp0[3]~4_combout\);

-- Location: FF_X30_Y1_N11
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pc_clk~input_o\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \gdfx_temp0[3]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \load_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X30_Y1_N12
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: IOIBUF_X34_Y4_N15
\data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(4),
	o => \data[4]~input_o\);

-- Location: LCCOMB_X31_Y1_N16
\gdfx_temp0[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gdfx_temp0[4]~3_combout\ = (\input_b~input_o\ & (\data[4]~input_o\)) # (!\input_b~input_o\ & ((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_b~input_o\,
	datac => \data[4]~input_o\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	combout => \gdfx_temp0[4]~3_combout\);

-- Location: FF_X30_Y1_N13
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pc_clk~input_o\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \gdfx_temp0[4]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \load_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X30_Y1_N14
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: IOIBUF_X34_Y9_N22
\data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(5),
	o => \data[5]~input_o\);

-- Location: LCCOMB_X30_Y1_N2
\gdfx_temp0[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gdfx_temp0[5]~2_combout\ = (\input_b~input_o\ & ((\data[5]~input_o\))) # (!\input_b~input_o\ & (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_b~input_o\,
	datac => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => \data[5]~input_o\,
	combout => \gdfx_temp0[5]~2_combout\);

-- Location: FF_X30_Y1_N15
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pc_clk~input_o\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	asdata => \gdfx_temp0[5]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \load_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X30_Y1_N16
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: IOIBUF_X3_Y0_N1
\data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(6),
	o => \data[6]~input_o\);

-- Location: LCCOMB_X30_Y1_N20
\gdfx_temp0[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gdfx_temp0[6]~1_combout\ = (\input_b~input_o\ & (\data[6]~input_o\)) # (!\input_b~input_o\ & ((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_b~input_o\,
	datac => \data[6]~input_o\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	combout => \gdfx_temp0[6]~1_combout\);

-- Location: FF_X30_Y1_N17
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pc_clk~input_o\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	asdata => \gdfx_temp0[6]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \load_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X30_Y1_N18
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ $ (\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\);

-- Location: FF_X30_Y1_N19
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pc_clk~input_o\,
	d => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	asdata => \gdfx_temp0[7]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \load_pc~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X29_Y1_N16
\gdfx_temp0[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gdfx_temp0[7]~0_combout\ = (\input_b~input_o\ & (\data[7]~input_o\)) # (!\input_b~input_o\ & ((\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data[7]~input_o\,
	datac => \input_b~input_o\,
	datad => \inst|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \gdfx_temp0[7]~0_combout\);

-- Location: LCCOMB_X29_Y1_N22
\inst1|latches[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|latches\(7) = (\ar_alk~input_o\ & ((\gdfx_temp0[7]~0_combout\))) # (!\ar_alk~input_o\ & (\inst1|latches\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|latches\(7),
	datac => \ar_alk~input_o\,
	datad => \gdfx_temp0[7]~0_combout\,
	combout => \inst1|latches\(7));

-- Location: LCCOMB_X30_Y1_N0
\inst1|latches[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|latches\(6) = (\ar_alk~input_o\ & ((\gdfx_temp0[6]~1_combout\))) # (!\ar_alk~input_o\ & (\inst1|latches\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|latches\(6),
	datac => \ar_alk~input_o\,
	datad => \gdfx_temp0[6]~1_combout\,
	combout => \inst1|latches\(6));

-- Location: LCCOMB_X30_Y1_N26
\inst1|latches[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|latches\(5) = (\ar_alk~input_o\ & ((\gdfx_temp0[5]~2_combout\))) # (!\ar_alk~input_o\ & (\inst1|latches\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|latches\(5),
	datac => \ar_alk~input_o\,
	datad => \gdfx_temp0[5]~2_combout\,
	combout => \inst1|latches\(5));

-- Location: LCCOMB_X31_Y1_N26
\inst1|latches[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|latches\(4) = (\ar_alk~input_o\ & ((\gdfx_temp0[4]~3_combout\))) # (!\ar_alk~input_o\ & (\inst1|latches\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|latches\(4),
	datac => \ar_alk~input_o\,
	datad => \gdfx_temp0[4]~3_combout\,
	combout => \inst1|latches\(4));

-- Location: LCCOMB_X31_Y1_N12
\inst1|latches[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|latches\(3) = (\ar_alk~input_o\ & ((\gdfx_temp0[3]~4_combout\))) # (!\ar_alk~input_o\ & (\inst1|latches\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|latches\(3),
	datac => \ar_alk~input_o\,
	datad => \gdfx_temp0[3]~4_combout\,
	combout => \inst1|latches\(3));

-- Location: LCCOMB_X30_Y1_N28
\inst1|latches[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|latches\(2) = (\ar_alk~input_o\ & ((\gdfx_temp0[2]~5_combout\))) # (!\ar_alk~input_o\ & (\inst1|latches\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|latches\(2),
	datac => \ar_alk~input_o\,
	datad => \gdfx_temp0[2]~5_combout\,
	combout => \inst1|latches\(2));

-- Location: LCCOMB_X30_Y1_N30
\inst1|latches[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|latches\(1) = (\ar_alk~input_o\ & ((\gdfx_temp0[1]~6_combout\))) # (!\ar_alk~input_o\ & (\inst1|latches\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|latches\(1),
	datac => \gdfx_temp0[1]~6_combout\,
	datad => \ar_alk~input_o\,
	combout => \inst1|latches\(1));

-- Location: LCCOMB_X31_Y1_N22
\inst1|latches[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|latches\(0) = (\ar_alk~input_o\ & ((\gdfx_temp0[0]~7_combout\))) # (!\ar_alk~input_o\ & (\inst1|latches\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|latches\(0),
	datac => \ar_alk~input_o\,
	datad => \gdfx_temp0[0]~7_combout\,
	combout => \inst1|latches\(0));

-- Location: IOIBUF_X0_Y5_N15
\pc_b~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pc_b,
	o => \pc_b~input_o\);

ww_ar(7) <= \ar[7]~output_o\;

ww_ar(6) <= \ar[6]~output_o\;

ww_ar(5) <= \ar[5]~output_o\;

ww_ar(4) <= \ar[4]~output_o\;

ww_ar(3) <= \ar[3]~output_o\;

ww_ar(2) <= \ar[2]~output_o\;

ww_ar(1) <= \ar[1]~output_o\;

ww_ar(0) <= \ar[0]~output_o\;

ww_pc(7) <= \pc[7]~output_o\;

ww_pc(6) <= \pc[6]~output_o\;

ww_pc(5) <= \pc[5]~output_o\;

ww_pc(4) <= \pc[4]~output_o\;

ww_pc(3) <= \pc[3]~output_o\;

ww_pc(2) <= \pc[2]~output_o\;

ww_pc(1) <= \pc[1]~output_o\;

ww_pc(0) <= \pc[0]~output_o\;
END structure;


