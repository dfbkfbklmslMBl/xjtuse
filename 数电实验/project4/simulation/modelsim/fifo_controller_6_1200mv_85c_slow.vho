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

-- DATE "05/19/2024 09:55:40"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fifo_controller IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	wr_en : IN std_logic;
	rd_en : IN std_logic;
	data_in : IN std_logic_vector(7 DOWNTO 0);
	data_out : OUT std_logic_vector(7 DOWNTO 0);
	empty : OUT std_logic;
	full : OUT std_logic
	);
END fifo_controller;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- empty	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- full	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_en	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_en	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fifo_controller IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_wr_en : std_logic;
SIGNAL ww_rd_en : std_logic;
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_empty : std_logic;
SIGNAL ww_full : std_logic;
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \empty~output_o\ : std_logic;
SIGNAL \full~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rd_en~input_o\ : std_logic;
SIGNAL \fifo_count[0]~8_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \wr_en~input_o\ : std_logic;
SIGNAL \fifo_count[7]~10_combout\ : std_logic;
SIGNAL \fifo_count[0]~9\ : std_logic;
SIGNAL \fifo_count[1]~11_combout\ : std_logic;
SIGNAL \fifo_count[1]~12\ : std_logic;
SIGNAL \fifo_count[2]~13_combout\ : std_logic;
SIGNAL \fifo_count[2]~14\ : std_logic;
SIGNAL \fifo_count[3]~15_combout\ : std_logic;
SIGNAL \fifo_count[3]~16\ : std_logic;
SIGNAL \fifo_count[4]~17_combout\ : std_logic;
SIGNAL \fifo_count[4]~18\ : std_logic;
SIGNAL \fifo_count[5]~19_combout\ : std_logic;
SIGNAL \fifo_count[5]~20\ : std_logic;
SIGNAL \fifo_count[6]~21_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \empty~reg0_q\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \fifo_count[6]~22\ : std_logic;
SIGNAL \fifo_count[7]~23_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \full~reg0_q\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \wren~0_combout\ : std_logic;
SIGNAL \wren~q\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \wr_ptr[0]~6_combout\ : std_logic;
SIGNAL \rd_ptr[0]~6_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \wr_ptr[1]~7_combout\ : std_logic;
SIGNAL \rd_ptr[1]~7_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \wr_ptr[1]~8\ : std_logic;
SIGNAL \wr_ptr[2]~9_combout\ : std_logic;
SIGNAL \rd_ptr[1]~8\ : std_logic;
SIGNAL \rd_ptr[2]~9_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \wr_ptr[2]~10\ : std_logic;
SIGNAL \wr_ptr[3]~11_combout\ : std_logic;
SIGNAL \rd_ptr[2]~10\ : std_logic;
SIGNAL \rd_ptr[3]~11_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \wr_ptr[3]~12\ : std_logic;
SIGNAL \wr_ptr[4]~13_combout\ : std_logic;
SIGNAL \rd_ptr[3]~12\ : std_logic;
SIGNAL \rd_ptr[4]~13_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \wr_ptr[4]~14\ : std_logic;
SIGNAL \wr_ptr[5]~15_combout\ : std_logic;
SIGNAL \rd_ptr[4]~14\ : std_logic;
SIGNAL \rd_ptr[5]~15_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \wr_ptr[5]~16\ : std_logic;
SIGNAL \wr_ptr[6]~17_combout\ : std_logic;
SIGNAL \rd_ptr[5]~16\ : std_logic;
SIGNAL \rd_ptr[6]~17_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL wr_ptr : std_logic_vector(6 DOWNTO 0);
SIGNAL rd_ptr : std_logic_vector(6 DOWNTO 0);
SIGNAL fifo_count : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_always0~0_combout\ : std_logic;
SIGNAL \ALT_INV_empty~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_wr_en <= wr_en;
ww_rd_en <= rd_en;
ww_data_in <= data_in;
data_out <= ww_data_out;
empty <= ww_empty;
full <= ww_full;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \data_in[7]~input_o\ & \data_in[6]~input_o\ & \data_in[5]~input_o\ & \data_in[4]~input_o\ & \data_in[3]~input_o\ & 
\data_in[2]~input_o\ & \data_in[1]~input_o\ & \data_in[0]~input_o\);

\ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\comb~6_combout\ & \comb~5_combout\ & \comb~4_combout\ & \comb~3_combout\ & \comb~2_combout\ & \comb~1_combout\ & \comb~0_combout\);

\ram|altsyncram_component|auto_generated|q_a\(0) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_a\(1) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_a\(2) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_a\(3) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_a\(4) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_a\(5) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_a\(6) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_a\(7) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_always0~0_combout\ <= NOT \always0~0_combout\;
\ALT_INV_empty~reg0_q\ <= NOT \empty~reg0_q\;

-- Location: IOOBUF_X10_Y31_N2
\data_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\data_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\data_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\data_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\data_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\data_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\data_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\data_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\empty~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_empty~reg0_q\,
	devoe => ww_devoe,
	o => \empty~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\full~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \full~reg0_q\,
	devoe => ww_devoe,
	o => \full~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X24_Y0_N8
\rd_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd_en,
	o => \rd_en~input_o\);

-- Location: LCCOMB_X16_Y1_N14
\fifo_count[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fifo_count[0]~8_combout\ = fifo_count(0) $ (VCC)
-- \fifo_count[0]~9\ = CARRY(fifo_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => fifo_count(0),
	datad => VCC,
	combout => \fifo_count[0]~8_combout\,
	cout => \fifo_count[0]~9\);

-- Location: IOIBUF_X16_Y0_N22
\rst~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G19
\rst~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X22_Y0_N8
\wr_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_en,
	o => \wr_en~input_o\);

-- Location: LCCOMB_X16_Y1_N12
\fifo_count[7]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fifo_count[7]~10_combout\ = (\full~reg0_q\ & (((\rd_en~input_o\ & \empty~reg0_q\)))) # (!\full~reg0_q\ & ((\wr_en~input_o\) # ((\rd_en~input_o\ & \empty~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full~reg0_q\,
	datab => \wr_en~input_o\,
	datac => \rd_en~input_o\,
	datad => \empty~reg0_q\,
	combout => \fifo_count[7]~10_combout\);

-- Location: FF_X16_Y1_N15
\fifo_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_count[0]~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \fifo_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_count(0));

-- Location: LCCOMB_X16_Y1_N16
\fifo_count[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fifo_count[1]~11_combout\ = (\always0~1_combout\ & ((fifo_count(1) & (\fifo_count[0]~9\ & VCC)) # (!fifo_count(1) & (!\fifo_count[0]~9\)))) # (!\always0~1_combout\ & ((fifo_count(1) & (!\fifo_count[0]~9\)) # (!fifo_count(1) & ((\fifo_count[0]~9\) # 
-- (GND)))))
-- \fifo_count[1]~12\ = CARRY((\always0~1_combout\ & (!fifo_count(1) & !\fifo_count[0]~9\)) # (!\always0~1_combout\ & ((!\fifo_count[0]~9\) # (!fifo_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~1_combout\,
	datab => fifo_count(1),
	datad => VCC,
	cin => \fifo_count[0]~9\,
	combout => \fifo_count[1]~11_combout\,
	cout => \fifo_count[1]~12\);

-- Location: FF_X16_Y1_N17
\fifo_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_count[1]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \fifo_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_count(1));

-- Location: LCCOMB_X16_Y1_N18
\fifo_count[2]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fifo_count[2]~13_combout\ = ((\always0~1_combout\ $ (fifo_count(2) $ (!\fifo_count[1]~12\)))) # (GND)
-- \fifo_count[2]~14\ = CARRY((\always0~1_combout\ & ((fifo_count(2)) # (!\fifo_count[1]~12\))) # (!\always0~1_combout\ & (fifo_count(2) & !\fifo_count[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~1_combout\,
	datab => fifo_count(2),
	datad => VCC,
	cin => \fifo_count[1]~12\,
	combout => \fifo_count[2]~13_combout\,
	cout => \fifo_count[2]~14\);

-- Location: FF_X16_Y1_N19
\fifo_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_count[2]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \fifo_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_count(2));

-- Location: LCCOMB_X16_Y1_N20
\fifo_count[3]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fifo_count[3]~15_combout\ = (\always0~1_combout\ & ((fifo_count(3) & (\fifo_count[2]~14\ & VCC)) # (!fifo_count(3) & (!\fifo_count[2]~14\)))) # (!\always0~1_combout\ & ((fifo_count(3) & (!\fifo_count[2]~14\)) # (!fifo_count(3) & ((\fifo_count[2]~14\) # 
-- (GND)))))
-- \fifo_count[3]~16\ = CARRY((\always0~1_combout\ & (!fifo_count(3) & !\fifo_count[2]~14\)) # (!\always0~1_combout\ & ((!\fifo_count[2]~14\) # (!fifo_count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~1_combout\,
	datab => fifo_count(3),
	datad => VCC,
	cin => \fifo_count[2]~14\,
	combout => \fifo_count[3]~15_combout\,
	cout => \fifo_count[3]~16\);

-- Location: FF_X16_Y1_N21
\fifo_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_count[3]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \fifo_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_count(3));

-- Location: LCCOMB_X16_Y1_N22
\fifo_count[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fifo_count[4]~17_combout\ = ((fifo_count(4) $ (\always0~1_combout\ $ (!\fifo_count[3]~16\)))) # (GND)
-- \fifo_count[4]~18\ = CARRY((fifo_count(4) & ((\always0~1_combout\) # (!\fifo_count[3]~16\))) # (!fifo_count(4) & (\always0~1_combout\ & !\fifo_count[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => fifo_count(4),
	datab => \always0~1_combout\,
	datad => VCC,
	cin => \fifo_count[3]~16\,
	combout => \fifo_count[4]~17_combout\,
	cout => \fifo_count[4]~18\);

-- Location: FF_X16_Y1_N23
\fifo_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_count[4]~17_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \fifo_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_count(4));

-- Location: LCCOMB_X16_Y1_N24
\fifo_count[5]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fifo_count[5]~19_combout\ = (\always0~1_combout\ & ((fifo_count(5) & (\fifo_count[4]~18\ & VCC)) # (!fifo_count(5) & (!\fifo_count[4]~18\)))) # (!\always0~1_combout\ & ((fifo_count(5) & (!\fifo_count[4]~18\)) # (!fifo_count(5) & ((\fifo_count[4]~18\) # 
-- (GND)))))
-- \fifo_count[5]~20\ = CARRY((\always0~1_combout\ & (!fifo_count(5) & !\fifo_count[4]~18\)) # (!\always0~1_combout\ & ((!\fifo_count[4]~18\) # (!fifo_count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always0~1_combout\,
	datab => fifo_count(5),
	datad => VCC,
	cin => \fifo_count[4]~18\,
	combout => \fifo_count[5]~19_combout\,
	cout => \fifo_count[5]~20\);

-- Location: FF_X16_Y1_N25
\fifo_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_count[5]~19_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \fifo_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_count(5));

-- Location: LCCOMB_X16_Y1_N26
\fifo_count[6]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fifo_count[6]~21_combout\ = ((fifo_count(6) $ (\always0~1_combout\ $ (!\fifo_count[5]~20\)))) # (GND)
-- \fifo_count[6]~22\ = CARRY((fifo_count(6) & ((\always0~1_combout\) # (!\fifo_count[5]~20\))) # (!fifo_count(6) & (\always0~1_combout\ & !\fifo_count[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => fifo_count(6),
	datab => \always0~1_combout\,
	datad => VCC,
	cin => \fifo_count[5]~20\,
	combout => \fifo_count[6]~21_combout\,
	cout => \fifo_count[6]~22\);

-- Location: FF_X16_Y1_N27
\fifo_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_count[6]~21_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \fifo_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_count(6));

-- Location: LCCOMB_X16_Y1_N10
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!fifo_count(3) & (!fifo_count(2) & (!fifo_count(0) & !fifo_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_count(3),
	datab => fifo_count(2),
	datac => fifo_count(0),
	datad => fifo_count(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X16_Y1_N8
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!fifo_count(6) & (!fifo_count(5) & (!fifo_count(4) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_count(6),
	datab => fifo_count(5),
	datac => fifo_count(4),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X16_Y1_N0
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (fifo_count(7)) # (!\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => fifo_count(7),
	datac => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: FF_X16_Y1_N1
\empty~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \empty~reg0_q\);

-- Location: LCCOMB_X16_Y1_N6
\always0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~1_combout\ = (\rd_en~input_o\ & \empty~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rd_en~input_o\,
	datad => \empty~reg0_q\,
	combout => \always0~1_combout\);

-- Location: LCCOMB_X16_Y1_N28
\fifo_count[7]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \fifo_count[7]~23_combout\ = fifo_count(7) $ (\fifo_count[6]~22\ $ (\always0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => fifo_count(7),
	datad => \always0~1_combout\,
	cin => \fifo_count[6]~22\,
	combout => \fifo_count[7]~23_combout\);

-- Location: FF_X16_Y1_N29
\fifo_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fifo_count[7]~23_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \fifo_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_count(7));

-- Location: LCCOMB_X16_Y1_N30
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (fifo_count(7) & \Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => fifo_count(7),
	datac => \Equal0~1_combout\,
	combout => \Equal1~0_combout\);

-- Location: FF_X16_Y1_N31
\full~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \full~reg0_q\);

-- Location: LCCOMB_X14_Y1_N0
\always0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (\full~reg0_q\) # (!\wr_en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \full~reg0_q\,
	datad => \wr_en~input_o\,
	combout => \always0~0_combout\);

-- Location: LCCOMB_X15_Y1_N4
\wren~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wren~0_combout\ = !\always0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \always0~0_combout\,
	combout => \wren~0_combout\);

-- Location: FF_X15_Y1_N5
wren : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wren~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wren~q\);

-- Location: IOIBUF_X33_Y16_N8
\data_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X14_Y1_N12
\wr_ptr[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_ptr[0]~6_combout\ = wr_ptr(0) $ (((!\full~reg0_q\ & \wr_en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \full~reg0_q\,
	datac => wr_ptr(0),
	datad => \wr_en~input_o\,
	combout => \wr_ptr[0]~6_combout\);

-- Location: FF_X14_Y1_N13
\wr_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wr_ptr[0]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(0));

-- Location: LCCOMB_X16_Y1_N4
\rd_ptr[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rd_ptr[0]~6_combout\ = rd_ptr(0) $ (((\rd_en~input_o\ & \empty~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rd_en~input_o\,
	datac => rd_ptr(0),
	datad => \empty~reg0_q\,
	combout => \rd_ptr[0]~6_combout\);

-- Location: FF_X16_Y1_N5
\rd_ptr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rd_ptr[0]~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(0));

-- Location: LCCOMB_X15_Y1_N26
\comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\wren~q\ & (wr_ptr(0))) # (!\wren~q\ & ((rd_ptr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(0),
	datac => \wren~q\,
	datad => rd_ptr(0),
	combout => \comb~0_combout\);

-- Location: LCCOMB_X14_Y1_N14
\wr_ptr[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_ptr[1]~7_combout\ = (wr_ptr(0) & (wr_ptr(1) $ (VCC))) # (!wr_ptr(0) & (wr_ptr(1) & VCC))
-- \wr_ptr[1]~8\ = CARRY((wr_ptr(0) & wr_ptr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(0),
	datab => wr_ptr(1),
	datad => VCC,
	combout => \wr_ptr[1]~7_combout\,
	cout => \wr_ptr[1]~8\);

-- Location: FF_X14_Y1_N15
\wr_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wr_ptr[1]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(1));

-- Location: LCCOMB_X15_Y1_N14
\rd_ptr[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rd_ptr[1]~7_combout\ = (rd_ptr(0) & (rd_ptr(1) $ (VCC))) # (!rd_ptr(0) & (rd_ptr(1) & VCC))
-- \rd_ptr[1]~8\ = CARRY((rd_ptr(0) & rd_ptr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(0),
	datab => rd_ptr(1),
	datad => VCC,
	combout => \rd_ptr[1]~7_combout\,
	cout => \rd_ptr[1]~8\);

-- Location: FF_X15_Y1_N15
\rd_ptr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rd_ptr[1]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(1));

-- Location: LCCOMB_X14_Y1_N2
\comb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\wren~q\ & (wr_ptr(1))) # (!\wren~q\ & ((rd_ptr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(1),
	datac => rd_ptr(1),
	datad => \wren~q\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X14_Y1_N16
\wr_ptr[2]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_ptr[2]~9_combout\ = (wr_ptr(2) & (!\wr_ptr[1]~8\)) # (!wr_ptr(2) & ((\wr_ptr[1]~8\) # (GND)))
-- \wr_ptr[2]~10\ = CARRY((!\wr_ptr[1]~8\) # (!wr_ptr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(2),
	datad => VCC,
	cin => \wr_ptr[1]~8\,
	combout => \wr_ptr[2]~9_combout\,
	cout => \wr_ptr[2]~10\);

-- Location: FF_X14_Y1_N17
\wr_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wr_ptr[2]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(2));

-- Location: LCCOMB_X15_Y1_N16
\rd_ptr[2]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rd_ptr[2]~9_combout\ = (rd_ptr(2) & (!\rd_ptr[1]~8\)) # (!rd_ptr(2) & ((\rd_ptr[1]~8\) # (GND)))
-- \rd_ptr[2]~10\ = CARRY((!\rd_ptr[1]~8\) # (!rd_ptr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(2),
	datad => VCC,
	cin => \rd_ptr[1]~8\,
	combout => \rd_ptr[2]~9_combout\,
	cout => \rd_ptr[2]~10\);

-- Location: FF_X15_Y1_N17
\rd_ptr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rd_ptr[2]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(2));

-- Location: LCCOMB_X15_Y1_N12
\comb~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\wren~q\ & (wr_ptr(2))) # (!\wren~q\ & ((rd_ptr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wren~q\,
	datac => wr_ptr(2),
	datad => rd_ptr(2),
	combout => \comb~2_combout\);

-- Location: LCCOMB_X14_Y1_N18
\wr_ptr[3]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_ptr[3]~11_combout\ = (wr_ptr(3) & (\wr_ptr[2]~10\ $ (GND))) # (!wr_ptr(3) & (!\wr_ptr[2]~10\ & VCC))
-- \wr_ptr[3]~12\ = CARRY((wr_ptr(3) & !\wr_ptr[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(3),
	datad => VCC,
	cin => \wr_ptr[2]~10\,
	combout => \wr_ptr[3]~11_combout\,
	cout => \wr_ptr[3]~12\);

-- Location: FF_X14_Y1_N19
\wr_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wr_ptr[3]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(3));

-- Location: LCCOMB_X15_Y1_N18
\rd_ptr[3]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rd_ptr[3]~11_combout\ = (rd_ptr(3) & (\rd_ptr[2]~10\ $ (GND))) # (!rd_ptr(3) & (!\rd_ptr[2]~10\ & VCC))
-- \rd_ptr[3]~12\ = CARRY((rd_ptr(3) & !\rd_ptr[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(3),
	datad => VCC,
	cin => \rd_ptr[2]~10\,
	combout => \rd_ptr[3]~11_combout\,
	cout => \rd_ptr[3]~12\);

-- Location: FF_X15_Y1_N19
\rd_ptr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rd_ptr[3]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(3));

-- Location: LCCOMB_X14_Y1_N8
\comb~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\wren~q\ & (wr_ptr(3))) # (!\wren~q\ & ((rd_ptr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~q\,
	datab => wr_ptr(3),
	datad => rd_ptr(3),
	combout => \comb~3_combout\);

-- Location: LCCOMB_X14_Y1_N20
\wr_ptr[4]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_ptr[4]~13_combout\ = (wr_ptr(4) & (!\wr_ptr[3]~12\)) # (!wr_ptr(4) & ((\wr_ptr[3]~12\) # (GND)))
-- \wr_ptr[4]~14\ = CARRY((!\wr_ptr[3]~12\) # (!wr_ptr(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(4),
	datad => VCC,
	cin => \wr_ptr[3]~12\,
	combout => \wr_ptr[4]~13_combout\,
	cout => \wr_ptr[4]~14\);

-- Location: FF_X14_Y1_N21
\wr_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wr_ptr[4]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(4));

-- Location: LCCOMB_X15_Y1_N20
\rd_ptr[4]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rd_ptr[4]~13_combout\ = (rd_ptr(4) & (!\rd_ptr[3]~12\)) # (!rd_ptr(4) & ((\rd_ptr[3]~12\) # (GND)))
-- \rd_ptr[4]~14\ = CARRY((!\rd_ptr[3]~12\) # (!rd_ptr(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rd_ptr(4),
	datad => VCC,
	cin => \rd_ptr[3]~12\,
	combout => \rd_ptr[4]~13_combout\,
	cout => \rd_ptr[4]~14\);

-- Location: FF_X15_Y1_N21
\rd_ptr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rd_ptr[4]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(4));

-- Location: LCCOMB_X14_Y1_N10
\comb~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\wren~q\ & (wr_ptr(4))) # (!\wren~q\ & ((rd_ptr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => wr_ptr(4),
	datac => rd_ptr(4),
	datad => \wren~q\,
	combout => \comb~4_combout\);

-- Location: LCCOMB_X14_Y1_N22
\wr_ptr[5]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_ptr[5]~15_combout\ = (wr_ptr(5) & (\wr_ptr[4]~14\ $ (GND))) # (!wr_ptr(5) & (!\wr_ptr[4]~14\ & VCC))
-- \wr_ptr[5]~16\ = CARRY((wr_ptr(5) & !\wr_ptr[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => wr_ptr(5),
	datad => VCC,
	cin => \wr_ptr[4]~14\,
	combout => \wr_ptr[5]~15_combout\,
	cout => \wr_ptr[5]~16\);

-- Location: FF_X14_Y1_N23
\wr_ptr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wr_ptr[5]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(5));

-- Location: LCCOMB_X15_Y1_N22
\rd_ptr[5]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rd_ptr[5]~15_combout\ = (rd_ptr(5) & (\rd_ptr[4]~14\ $ (GND))) # (!rd_ptr(5) & (!\rd_ptr[4]~14\ & VCC))
-- \rd_ptr[5]~16\ = CARRY((rd_ptr(5) & !\rd_ptr[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rd_ptr(5),
	datad => VCC,
	cin => \rd_ptr[4]~14\,
	combout => \rd_ptr[5]~15_combout\,
	cout => \rd_ptr[5]~16\);

-- Location: FF_X15_Y1_N23
\rd_ptr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rd_ptr[5]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(5));

-- Location: LCCOMB_X14_Y1_N28
\comb~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\wren~q\ & (wr_ptr(5))) # (!\wren~q\ & ((rd_ptr(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~q\,
	datac => wr_ptr(5),
	datad => rd_ptr(5),
	combout => \comb~5_combout\);

-- Location: LCCOMB_X14_Y1_N24
\wr_ptr[6]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_ptr[6]~17_combout\ = \wr_ptr[5]~16\ $ (wr_ptr(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => wr_ptr(6),
	cin => \wr_ptr[5]~16\,
	combout => \wr_ptr[6]~17_combout\);

-- Location: FF_X14_Y1_N25
\wr_ptr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wr_ptr[6]~17_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \ALT_INV_always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_ptr(6));

-- Location: LCCOMB_X15_Y1_N24
\rd_ptr[6]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rd_ptr[6]~17_combout\ = \rd_ptr[5]~16\ $ (rd_ptr(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => rd_ptr(6),
	cin => \rd_ptr[5]~16\,
	combout => \rd_ptr[6]~17_combout\);

-- Location: FF_X15_Y1_N25
\rd_ptr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rd_ptr[6]~17_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_ptr(6));

-- Location: LCCOMB_X14_Y1_N26
\comb~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (\wren~q\ & (wr_ptr(6))) # (!\wren~q\ & ((rd_ptr(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~q\,
	datab => wr_ptr(6),
	datad => rd_ptr(6),
	combout => \comb~6_combout\);

-- Location: IOIBUF_X33_Y16_N1
\data_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\data_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\data_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\data_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\data_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\data_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\data_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: M9K_X7_Y1_N0
\ram|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "manage:ram|altsyncram:altsyncram_component|altsyncram_9if1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 7,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren~q\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;

ww_empty <= \empty~output_o\;

ww_full <= \full~output_o\;
END structure;


