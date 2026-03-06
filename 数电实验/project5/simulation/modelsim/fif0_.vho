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

-- DATE "05/19/2024 23:21:24"

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

ENTITY 	\fif0_\ IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	wr_en : IN std_logic;
	rd_en : IN std_logic;
	data_in : IN std_logic_vector(7 DOWNTO 0);
	data_out : OUT std_logic_vector(7 DOWNTO 0);
	empty : OUT std_logic;
	full : OUT std_logic
	);
END \fif0_\;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- empty	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- full	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_en	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd_en	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF \fif0_\ IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_wr_en : std_logic;
SIGNAL ww_rd_en : std_logic;
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_empty : std_logic;
SIGNAL ww_full : std_logic;
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \rd_en~input_o\ : std_logic;
SIGNAL \count[0]~9_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \count~11_combout\ : std_logic;
SIGNAL \count[0]~10\ : std_logic;
SIGNAL \count[1]~12_combout\ : std_logic;
SIGNAL \count[1]~13\ : std_logic;
SIGNAL \count[2]~14_combout\ : std_logic;
SIGNAL \count[2]~15\ : std_logic;
SIGNAL \count[3]~16_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \count[3]~17\ : std_logic;
SIGNAL \count[4]~18_combout\ : std_logic;
SIGNAL \count[4]~19\ : std_logic;
SIGNAL \count[5]~20_combout\ : std_logic;
SIGNAL \count[5]~21\ : std_logic;
SIGNAL \count[6]~22_combout\ : std_logic;
SIGNAL \count[6]~23\ : std_logic;
SIGNAL \count[7]~24_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \always2~0_combout\ : std_logic;
SIGNAL \count[7]~25\ : std_logic;
SIGNAL \count[8]~26_combout\ : std_logic;
SIGNAL \wr_en~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \write_pointer[0]~7_combout\ : std_logic;
SIGNAL \read_pointer[0]~7_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \write_pointer[1]~8_combout\ : std_logic;
SIGNAL \read_pointer[1]~8_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \read_pointer[1]~9\ : std_logic;
SIGNAL \read_pointer[2]~10_combout\ : std_logic;
SIGNAL \write_pointer[1]~9\ : std_logic;
SIGNAL \write_pointer[2]~10_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \read_pointer[2]~11\ : std_logic;
SIGNAL \read_pointer[3]~12_combout\ : std_logic;
SIGNAL \write_pointer[2]~11\ : std_logic;
SIGNAL \write_pointer[3]~12_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \write_pointer[3]~13\ : std_logic;
SIGNAL \write_pointer[4]~14_combout\ : std_logic;
SIGNAL \read_pointer[3]~13\ : std_logic;
SIGNAL \read_pointer[4]~14_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \write_pointer[4]~15\ : std_logic;
SIGNAL \write_pointer[5]~16_combout\ : std_logic;
SIGNAL \read_pointer[4]~15\ : std_logic;
SIGNAL \read_pointer[5]~16_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \read_pointer[5]~17\ : std_logic;
SIGNAL \read_pointer[6]~18_combout\ : std_logic;
SIGNAL \write_pointer[5]~17\ : std_logic;
SIGNAL \write_pointer[6]~18_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \write_pointer[6]~19\ : std_logic;
SIGNAL \write_pointer[7]~20_combout\ : std_logic;
SIGNAL \read_pointer[6]~19\ : std_logic;
SIGNAL \read_pointer[7]~20_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL write_pointer : std_logic_vector(7 DOWNTO 0);
SIGNAL read_pointer : std_logic_vector(7 DOWNTO 0);
SIGNAL count : std_logic_vector(8 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
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

\ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\comb~9_combout\ & \comb~8_combout\ & \comb~7_combout\ & \comb~6_combout\ & \comb~5_combout\ & \comb~4_combout\ & \comb~3_combout\ & \comb~2_combout\);

\ram|altsyncram_component|auto_generated|q_a\(0) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_a\(1) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_a\(2) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_a\(3) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_a\(4) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_a\(5) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_a\(6) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_a\(7) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X26_Y0_N2
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

-- Location: IOOBUF_X33_Y24_N9
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

-- Location: IOOBUF_X26_Y0_N9
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

-- Location: IOOBUF_X33_Y15_N9
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

-- Location: IOOBUF_X33_Y24_N2
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

-- Location: IOOBUF_X26_Y31_N2
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

-- Location: IOOBUF_X33_Y14_N2
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

-- Location: IOOBUF_X33_Y12_N9
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

-- Location: IOOBUF_X33_Y22_N2
\empty~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~2_combout\,
	devoe => ww_devoe,
	o => \empty~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\full~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~0_combout\,
	devoe => ww_devoe,
	o => \full~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G17
\clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y11_N1
\rd_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd_en,
	o => \rd_en~input_o\);

-- Location: LCCOMB_X31_Y11_N10
\count[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[0]~9_combout\ = count(0) $ (VCC)
-- \count[0]~10\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \count[0]~9_combout\,
	cout => \count[0]~10\);

-- Location: IOIBUF_X16_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y11_N0
\count~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count~11_combout\ = \comb~1_combout\ $ (\comb~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb~1_combout\,
	datad => \comb~0_combout\,
	combout => \count~11_combout\);

-- Location: FF_X31_Y11_N11
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[0]~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X31_Y11_N12
\count[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[1]~12_combout\ = (count(1) & ((\always2~0_combout\ & (!\count[0]~10\)) # (!\always2~0_combout\ & (\count[0]~10\ & VCC)))) # (!count(1) & ((\always2~0_combout\ & ((\count[0]~10\) # (GND))) # (!\always2~0_combout\ & (!\count[0]~10\))))
-- \count[1]~13\ = CARRY((count(1) & (\always2~0_combout\ & !\count[0]~10\)) # (!count(1) & ((\always2~0_combout\) # (!\count[0]~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \always2~0_combout\,
	datad => VCC,
	cin => \count[0]~10\,
	combout => \count[1]~12_combout\,
	cout => \count[1]~13\);

-- Location: FF_X31_Y11_N13
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[1]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X31_Y11_N14
\count[2]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[2]~14_combout\ = ((count(2) $ (\always2~0_combout\ $ (\count[1]~13\)))) # (GND)
-- \count[2]~15\ = CARRY((count(2) & ((!\count[1]~13\) # (!\always2~0_combout\))) # (!count(2) & (!\always2~0_combout\ & !\count[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => \always2~0_combout\,
	datad => VCC,
	cin => \count[1]~13\,
	combout => \count[2]~14_combout\,
	cout => \count[2]~15\);

-- Location: FF_X31_Y11_N15
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[2]~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X31_Y11_N16
\count[3]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[3]~16_combout\ = (count(3) & ((\always2~0_combout\ & (!\count[2]~15\)) # (!\always2~0_combout\ & (\count[2]~15\ & VCC)))) # (!count(3) & ((\always2~0_combout\ & ((\count[2]~15\) # (GND))) # (!\always2~0_combout\ & (!\count[2]~15\))))
-- \count[3]~17\ = CARRY((count(3) & (\always2~0_combout\ & !\count[2]~15\)) # (!count(3) & ((\always2~0_combout\) # (!\count[2]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \always2~0_combout\,
	datad => VCC,
	cin => \count[2]~15\,
	combout => \count[3]~16_combout\,
	cout => \count[3]~17\);

-- Location: FF_X31_Y11_N17
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[3]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X31_Y11_N8
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(1) & (!count(3) & (!count(2) & !count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(3),
	datac => count(2),
	datad => count(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X31_Y11_N18
\count[4]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[4]~18_combout\ = ((count(4) $ (\always2~0_combout\ $ (\count[3]~17\)))) # (GND)
-- \count[4]~19\ = CARRY((count(4) & ((!\count[3]~17\) # (!\always2~0_combout\))) # (!count(4) & (!\always2~0_combout\ & !\count[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => \always2~0_combout\,
	datad => VCC,
	cin => \count[3]~17\,
	combout => \count[4]~18_combout\,
	cout => \count[4]~19\);

-- Location: FF_X31_Y11_N19
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[4]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X31_Y11_N20
\count[5]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[5]~20_combout\ = (count(5) & ((\always2~0_combout\ & (!\count[4]~19\)) # (!\always2~0_combout\ & (\count[4]~19\ & VCC)))) # (!count(5) & ((\always2~0_combout\ & ((\count[4]~19\) # (GND))) # (!\always2~0_combout\ & (!\count[4]~19\))))
-- \count[5]~21\ = CARRY((count(5) & (\always2~0_combout\ & !\count[4]~19\)) # (!count(5) & ((\always2~0_combout\) # (!\count[4]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => \always2~0_combout\,
	datad => VCC,
	cin => \count[4]~19\,
	combout => \count[5]~20_combout\,
	cout => \count[5]~21\);

-- Location: FF_X31_Y11_N21
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[5]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X31_Y11_N22
\count[6]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[6]~22_combout\ = ((count(6) $ (\always2~0_combout\ $ (\count[5]~21\)))) # (GND)
-- \count[6]~23\ = CARRY((count(6) & ((!\count[5]~21\) # (!\always2~0_combout\))) # (!count(6) & (!\always2~0_combout\ & !\count[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => \always2~0_combout\,
	datad => VCC,
	cin => \count[5]~21\,
	combout => \count[6]~22_combout\,
	cout => \count[6]~23\);

-- Location: FF_X31_Y11_N23
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[6]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X31_Y11_N24
\count[7]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[7]~24_combout\ = (count(7) & ((\always2~0_combout\ & (!\count[6]~23\)) # (!\always2~0_combout\ & (\count[6]~23\ & VCC)))) # (!count(7) & ((\always2~0_combout\ & ((\count[6]~23\) # (GND))) # (!\always2~0_combout\ & (!\count[6]~23\))))
-- \count[7]~25\ = CARRY((count(7) & (\always2~0_combout\ & !\count[6]~23\)) # (!count(7) & ((\always2~0_combout\) # (!\count[6]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => \always2~0_combout\,
	datad => VCC,
	cin => \count[6]~23\,
	combout => \count[7]~24_combout\,
	cout => \count[7]~25\);

-- Location: FF_X31_Y11_N25
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[7]~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X31_Y11_N2
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!count(7) & (!count(5) & (!count(6) & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(5),
	datac => count(6),
	datad => count(4),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X31_Y11_N6
\comb~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\rd_en~input_o\ & ((count(8)) # ((!\Equal0~1_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => \rd_en~input_o\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X31_Y11_N28
\always2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always2~0_combout\ = (\comb~0_combout\ & !\comb~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb~0_combout\,
	datad => \comb~1_combout\,
	combout => \always2~0_combout\);

-- Location: LCCOMB_X31_Y11_N26
\count[8]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count[8]~26_combout\ = count(8) $ (\count[7]~25\ $ (\always2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datad => \always2~0_combout\,
	cin => \count[7]~25\,
	combout => \count[8]~26_combout\);

-- Location: FF_X31_Y11_N27
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \count[8]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: IOIBUF_X33_Y16_N8
\wr_en~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_en,
	o => \wr_en~input_o\);

-- Location: LCCOMB_X31_Y11_N4
\comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\wr_en~input_o\ & (((!\Equal0~1_combout\) # (!\Equal0~0_combout\)) # (!count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => \wr_en~input_o\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \comb~0_combout\);

-- Location: IOIBUF_X33_Y16_N1
\data_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X29_Y11_N26
\write_pointer[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_pointer[0]~7_combout\ = \comb~0_combout\ $ (write_pointer(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datac => write_pointer(0),
	combout => \write_pointer[0]~7_combout\);

-- Location: FF_X29_Y11_N27
\write_pointer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \write_pointer[0]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_pointer(0));

-- Location: LCCOMB_X29_Y11_N12
\read_pointer[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \read_pointer[0]~7_combout\ = read_pointer(0) $ (\comb~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => read_pointer(0),
	datad => \comb~1_combout\,
	combout => \read_pointer[0]~7_combout\);

-- Location: FF_X29_Y11_N13
\read_pointer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \read_pointer[0]~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_pointer(0));

-- Location: LCCOMB_X29_Y11_N24
\comb~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\reset~input_o\ & ((\comb~1_combout\ & ((read_pointer(0)))) # (!\comb~1_combout\ & (write_pointer(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \comb~1_combout\,
	datac => write_pointer(0),
	datad => read_pointer(0),
	combout => \comb~2_combout\);

-- Location: LCCOMB_X30_Y11_N0
\write_pointer[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_pointer[1]~8_combout\ = (write_pointer(0) & (write_pointer(1) $ (VCC))) # (!write_pointer(0) & (write_pointer(1) & VCC))
-- \write_pointer[1]~9\ = CARRY((write_pointer(0) & write_pointer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_pointer(0),
	datab => write_pointer(1),
	datad => VCC,
	combout => \write_pointer[1]~8_combout\,
	cout => \write_pointer[1]~9\);

-- Location: FF_X30_Y11_N1
\write_pointer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \write_pointer[1]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_pointer(1));

-- Location: LCCOMB_X30_Y11_N16
\read_pointer[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \read_pointer[1]~8_combout\ = (read_pointer(0) & (read_pointer(1) $ (VCC))) # (!read_pointer(0) & (read_pointer(1) & VCC))
-- \read_pointer[1]~9\ = CARRY((read_pointer(0) & read_pointer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_pointer(0),
	datab => read_pointer(1),
	datad => VCC,
	combout => \read_pointer[1]~8_combout\,
	cout => \read_pointer[1]~9\);

-- Location: FF_X30_Y11_N17
\read_pointer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \read_pointer[1]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_pointer(1));

-- Location: LCCOMB_X29_Y11_N14
\comb~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (!\reset~input_o\ & ((\comb~1_combout\ & ((read_pointer(1)))) # (!\comb~1_combout\ & (write_pointer(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => write_pointer(1),
	datac => \comb~1_combout\,
	datad => read_pointer(1),
	combout => \comb~3_combout\);

-- Location: LCCOMB_X30_Y11_N18
\read_pointer[2]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \read_pointer[2]~10_combout\ = (read_pointer(2) & (!\read_pointer[1]~9\)) # (!read_pointer(2) & ((\read_pointer[1]~9\) # (GND)))
-- \read_pointer[2]~11\ = CARRY((!\read_pointer[1]~9\) # (!read_pointer(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => read_pointer(2),
	datad => VCC,
	cin => \read_pointer[1]~9\,
	combout => \read_pointer[2]~10_combout\,
	cout => \read_pointer[2]~11\);

-- Location: FF_X30_Y11_N19
\read_pointer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \read_pointer[2]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_pointer(2));

-- Location: LCCOMB_X30_Y11_N2
\write_pointer[2]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_pointer[2]~10_combout\ = (write_pointer(2) & (!\write_pointer[1]~9\)) # (!write_pointer(2) & ((\write_pointer[1]~9\) # (GND)))
-- \write_pointer[2]~11\ = CARRY((!\write_pointer[1]~9\) # (!write_pointer(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => write_pointer(2),
	datad => VCC,
	cin => \write_pointer[1]~9\,
	combout => \write_pointer[2]~10_combout\,
	cout => \write_pointer[2]~11\);

-- Location: FF_X30_Y11_N3
\write_pointer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \write_pointer[2]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_pointer(2));

-- Location: LCCOMB_X29_Y11_N16
\comb~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (!\reset~input_o\ & ((\comb~1_combout\ & (read_pointer(2))) # (!\comb~1_combout\ & ((write_pointer(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => read_pointer(2),
	datac => \comb~1_combout\,
	datad => write_pointer(2),
	combout => \comb~4_combout\);

-- Location: LCCOMB_X30_Y11_N20
\read_pointer[3]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \read_pointer[3]~12_combout\ = (read_pointer(3) & (\read_pointer[2]~11\ $ (GND))) # (!read_pointer(3) & (!\read_pointer[2]~11\ & VCC))
-- \read_pointer[3]~13\ = CARRY((read_pointer(3) & !\read_pointer[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => read_pointer(3),
	datad => VCC,
	cin => \read_pointer[2]~11\,
	combout => \read_pointer[3]~12_combout\,
	cout => \read_pointer[3]~13\);

-- Location: FF_X30_Y11_N21
\read_pointer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \read_pointer[3]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_pointer(3));

-- Location: LCCOMB_X30_Y11_N4
\write_pointer[3]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_pointer[3]~12_combout\ = (write_pointer(3) & (\write_pointer[2]~11\ $ (GND))) # (!write_pointer(3) & (!\write_pointer[2]~11\ & VCC))
-- \write_pointer[3]~13\ = CARRY((write_pointer(3) & !\write_pointer[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => write_pointer(3),
	datad => VCC,
	cin => \write_pointer[2]~11\,
	combout => \write_pointer[3]~12_combout\,
	cout => \write_pointer[3]~13\);

-- Location: FF_X30_Y11_N5
\write_pointer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \write_pointer[3]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_pointer(3));

-- Location: LCCOMB_X29_Y11_N10
\comb~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (!\reset~input_o\ & ((\comb~1_combout\ & (read_pointer(3))) # (!\comb~1_combout\ & ((write_pointer(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \comb~1_combout\,
	datac => read_pointer(3),
	datad => write_pointer(3),
	combout => \comb~5_combout\);

-- Location: LCCOMB_X30_Y11_N6
\write_pointer[4]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_pointer[4]~14_combout\ = (write_pointer(4) & (!\write_pointer[3]~13\)) # (!write_pointer(4) & ((\write_pointer[3]~13\) # (GND)))
-- \write_pointer[4]~15\ = CARRY((!\write_pointer[3]~13\) # (!write_pointer(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => write_pointer(4),
	datad => VCC,
	cin => \write_pointer[3]~13\,
	combout => \write_pointer[4]~14_combout\,
	cout => \write_pointer[4]~15\);

-- Location: FF_X30_Y11_N7
\write_pointer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \write_pointer[4]~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_pointer(4));

-- Location: LCCOMB_X30_Y11_N22
\read_pointer[4]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \read_pointer[4]~14_combout\ = (read_pointer(4) & (!\read_pointer[3]~13\)) # (!read_pointer(4) & ((\read_pointer[3]~13\) # (GND)))
-- \read_pointer[4]~15\ = CARRY((!\read_pointer[3]~13\) # (!read_pointer(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => read_pointer(4),
	datad => VCC,
	cin => \read_pointer[3]~13\,
	combout => \read_pointer[4]~14_combout\,
	cout => \read_pointer[4]~15\);

-- Location: FF_X30_Y11_N23
\read_pointer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \read_pointer[4]~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_pointer(4));

-- Location: LCCOMB_X29_Y11_N20
\comb~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (!\reset~input_o\ & ((\comb~1_combout\ & ((read_pointer(4)))) # (!\comb~1_combout\ & (write_pointer(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => write_pointer(4),
	datab => read_pointer(4),
	datac => \comb~1_combout\,
	datad => \reset~input_o\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X30_Y11_N8
\write_pointer[5]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_pointer[5]~16_combout\ = (write_pointer(5) & (\write_pointer[4]~15\ $ (GND))) # (!write_pointer(5) & (!\write_pointer[4]~15\ & VCC))
-- \write_pointer[5]~17\ = CARRY((write_pointer(5) & !\write_pointer[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => write_pointer(5),
	datad => VCC,
	cin => \write_pointer[4]~15\,
	combout => \write_pointer[5]~16_combout\,
	cout => \write_pointer[5]~17\);

-- Location: FF_X30_Y11_N9
\write_pointer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \write_pointer[5]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_pointer(5));

-- Location: LCCOMB_X30_Y11_N24
\read_pointer[5]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \read_pointer[5]~16_combout\ = (read_pointer(5) & (\read_pointer[4]~15\ $ (GND))) # (!read_pointer(5) & (!\read_pointer[4]~15\ & VCC))
-- \read_pointer[5]~17\ = CARRY((read_pointer(5) & !\read_pointer[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => read_pointer(5),
	datad => VCC,
	cin => \read_pointer[4]~15\,
	combout => \read_pointer[5]~16_combout\,
	cout => \read_pointer[5]~17\);

-- Location: FF_X30_Y11_N25
\read_pointer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \read_pointer[5]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_pointer(5));

-- Location: LCCOMB_X29_Y11_N22
\comb~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (!\reset~input_o\ & ((\comb~1_combout\ & ((read_pointer(5)))) # (!\comb~1_combout\ & (write_pointer(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => write_pointer(5),
	datac => \comb~1_combout\,
	datad => read_pointer(5),
	combout => \comb~7_combout\);

-- Location: LCCOMB_X30_Y11_N26
\read_pointer[6]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \read_pointer[6]~18_combout\ = (read_pointer(6) & (!\read_pointer[5]~17\)) # (!read_pointer(6) & ((\read_pointer[5]~17\) # (GND)))
-- \read_pointer[6]~19\ = CARRY((!\read_pointer[5]~17\) # (!read_pointer(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => read_pointer(6),
	datad => VCC,
	cin => \read_pointer[5]~17\,
	combout => \read_pointer[6]~18_combout\,
	cout => \read_pointer[6]~19\);

-- Location: FF_X30_Y11_N27
\read_pointer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \read_pointer[6]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_pointer(6));

-- Location: LCCOMB_X30_Y11_N10
\write_pointer[6]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_pointer[6]~18_combout\ = (write_pointer(6) & (!\write_pointer[5]~17\)) # (!write_pointer(6) & ((\write_pointer[5]~17\) # (GND)))
-- \write_pointer[6]~19\ = CARRY((!\write_pointer[5]~17\) # (!write_pointer(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => write_pointer(6),
	datad => VCC,
	cin => \write_pointer[5]~17\,
	combout => \write_pointer[6]~18_combout\,
	cout => \write_pointer[6]~19\);

-- Location: FF_X30_Y11_N11
\write_pointer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \write_pointer[6]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_pointer(6));

-- Location: LCCOMB_X29_Y11_N4
\comb~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (!\reset~input_o\ & ((\comb~1_combout\ & (read_pointer(6))) # (!\comb~1_combout\ & ((write_pointer(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => read_pointer(6),
	datab => write_pointer(6),
	datac => \comb~1_combout\,
	datad => \reset~input_o\,
	combout => \comb~8_combout\);

-- Location: LCCOMB_X30_Y11_N12
\write_pointer[7]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_pointer[7]~20_combout\ = \write_pointer[6]~19\ $ (!write_pointer(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => write_pointer(7),
	cin => \write_pointer[6]~19\,
	combout => \write_pointer[7]~20_combout\);

-- Location: FF_X30_Y11_N13
\write_pointer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \write_pointer[7]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => write_pointer(7));

-- Location: LCCOMB_X30_Y11_N28
\read_pointer[7]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \read_pointer[7]~20_combout\ = \read_pointer[6]~19\ $ (!read_pointer(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => read_pointer(7),
	cin => \read_pointer[6]~19\,
	combout => \read_pointer[7]~20_combout\);

-- Location: FF_X30_Y11_N29
\read_pointer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \read_pointer[7]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => read_pointer(7));

-- Location: LCCOMB_X29_Y11_N6
\comb~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = (!\reset~input_o\ & ((\comb~1_combout\ & ((read_pointer(7)))) # (!\comb~1_combout\ & (write_pointer(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => write_pointer(7),
	datac => \comb~1_combout\,
	datad => read_pointer(7),
	combout => \comb~9_combout\);

-- Location: IOIBUF_X33_Y14_N8
\data_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\data_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\data_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\data_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\data_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\data_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\data_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: M9K_X28_Y11_N0
\ram|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "myram:ram|altsyncram:altsyncram_component|altsyncram_cif1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \comb~0_combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X30_Y15_N20
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & !count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => count(8),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X30_Y15_N6
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => count(8),
	combout => \Equal1~0_combout\);

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


