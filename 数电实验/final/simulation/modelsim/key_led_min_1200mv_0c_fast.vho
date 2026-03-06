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

-- DATE "06/02/2024 20:03:21"

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

ENTITY 	key_led IS
    PORT (
	sys_clk : IN std_logic;
	sys_rst_n : IN std_logic;
	key : IN std_logic_vector(1 DOWNTO 0);
	led : OUT std_logic_vector(1 DOWNTO 0)
	);
END key_led;

-- Design Ports Information
-- led[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_rst_n	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF key_led IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sys_clk : std_logic;
SIGNAL ww_sys_rst_n : std_logic;
SIGNAL ww_key : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(1 DOWNTO 0);
SIGNAL \sys_rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sys_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \sys_clk~input_o\ : std_logic;
SIGNAL \sys_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt[0]~25_combout\ : std_logic;
SIGNAL \sys_rst_n~input_o\ : std_logic;
SIGNAL \sys_rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \cnt[0]~26\ : std_logic;
SIGNAL \cnt[1]~27_combout\ : std_logic;
SIGNAL \cnt[1]~28\ : std_logic;
SIGNAL \cnt[2]~29_combout\ : std_logic;
SIGNAL \cnt[2]~30\ : std_logic;
SIGNAL \cnt[3]~31_combout\ : std_logic;
SIGNAL \cnt[3]~32\ : std_logic;
SIGNAL \cnt[4]~33_combout\ : std_logic;
SIGNAL \cnt[4]~34\ : std_logic;
SIGNAL \cnt[5]~35_combout\ : std_logic;
SIGNAL \cnt[5]~36\ : std_logic;
SIGNAL \cnt[6]~37_combout\ : std_logic;
SIGNAL \cnt[6]~38\ : std_logic;
SIGNAL \cnt[7]~39_combout\ : std_logic;
SIGNAL \cnt[7]~40\ : std_logic;
SIGNAL \cnt[8]~41_combout\ : std_logic;
SIGNAL \cnt[8]~42\ : std_logic;
SIGNAL \cnt[9]~43_combout\ : std_logic;
SIGNAL \cnt[9]~44\ : std_logic;
SIGNAL \cnt[10]~45_combout\ : std_logic;
SIGNAL \cnt[10]~46\ : std_logic;
SIGNAL \cnt[11]~47_combout\ : std_logic;
SIGNAL \cnt[11]~48\ : std_logic;
SIGNAL \cnt[12]~49_combout\ : std_logic;
SIGNAL \cnt[12]~50\ : std_logic;
SIGNAL \cnt[13]~51_combout\ : std_logic;
SIGNAL \cnt[13]~52\ : std_logic;
SIGNAL \cnt[14]~53_combout\ : std_logic;
SIGNAL \cnt[14]~54\ : std_logic;
SIGNAL \cnt[15]~55_combout\ : std_logic;
SIGNAL \cnt[15]~56\ : std_logic;
SIGNAL \cnt[16]~57_combout\ : std_logic;
SIGNAL \cnt[16]~58\ : std_logic;
SIGNAL \cnt[17]~59_combout\ : std_logic;
SIGNAL \cnt[17]~60\ : std_logic;
SIGNAL \cnt[18]~61_combout\ : std_logic;
SIGNAL \cnt[18]~62\ : std_logic;
SIGNAL \cnt[19]~63_combout\ : std_logic;
SIGNAL \cnt[19]~64\ : std_logic;
SIGNAL \cnt[20]~65_combout\ : std_logic;
SIGNAL \cnt[20]~66\ : std_logic;
SIGNAL \cnt[21]~67_combout\ : std_logic;
SIGNAL \cnt[21]~68\ : std_logic;
SIGNAL \cnt[22]~69_combout\ : std_logic;
SIGNAL \cnt[22]~70\ : std_logic;
SIGNAL \cnt[23]~71_combout\ : std_logic;
SIGNAL \cnt[23]~72\ : std_logic;
SIGNAL \cnt[24]~73_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \led_controller~0_combout\ : std_logic;
SIGNAL \led_controller~q\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \led[0]~reg0_q\ : std_logic;
SIGNAL \led[1]~0_combout\ : std_logic;
SIGNAL \led[1]~reg0_q\ : std_logic;
SIGNAL cnt : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_led[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_led[0]~reg0_q\ : std_logic;

BEGIN

ww_sys_clk <= sys_clk;
ww_sys_rst_n <= sys_rst_n;
ww_key <= key;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sys_rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_rst_n~input_o\);

\sys_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_clk~input_o\);
\ALT_INV_led[1]~reg0_q\ <= NOT \led[1]~reg0_q\;
\ALT_INV_led[0]~reg0_q\ <= NOT \led[0]~reg0_q\;

-- Location: IOOBUF_X12_Y31_N9
\led[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\led[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led[1]~reg0_q\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\sys_clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_clk,
	o => \sys_clk~input_o\);

-- Location: CLKCTRL_G17
\sys_clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X12_Y30_N8
\cnt[0]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[0]~25_combout\ = cnt(0) $ (VCC)
-- \cnt[0]~26\ = CARRY(cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(0),
	datad => VCC,
	combout => \cnt[0]~25_combout\,
	cout => \cnt[0]~26\);

-- Location: IOIBUF_X16_Y0_N22
\sys_rst_n~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_rst_n,
	o => \sys_rst_n~input_o\);

-- Location: CLKCTRL_G19
\sys_rst_n~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_rst_n~inputclkctrl_outclk\);

-- Location: LCCOMB_X12_Y30_N10
\cnt[1]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[1]~27_combout\ = (cnt(1) & (!\cnt[0]~26\)) # (!cnt(1) & ((\cnt[0]~26\) # (GND)))
-- \cnt[1]~28\ = CARRY((!\cnt[0]~26\) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datad => VCC,
	cin => \cnt[0]~26\,
	combout => \cnt[1]~27_combout\,
	cout => \cnt[1]~28\);

-- Location: FF_X12_Y30_N11
\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[1]~27_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

-- Location: LCCOMB_X12_Y30_N12
\cnt[2]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[2]~29_combout\ = (cnt(2) & (\cnt[1]~28\ $ (GND))) # (!cnt(2) & (!\cnt[1]~28\ & VCC))
-- \cnt[2]~30\ = CARRY((cnt(2) & !\cnt[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(2),
	datad => VCC,
	cin => \cnt[1]~28\,
	combout => \cnt[2]~29_combout\,
	cout => \cnt[2]~30\);

-- Location: FF_X12_Y30_N13
\cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[2]~29_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(2));

-- Location: LCCOMB_X12_Y30_N14
\cnt[3]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[3]~31_combout\ = (cnt(3) & (!\cnt[2]~30\)) # (!cnt(3) & ((\cnt[2]~30\) # (GND)))
-- \cnt[3]~32\ = CARRY((!\cnt[2]~30\) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(3),
	datad => VCC,
	cin => \cnt[2]~30\,
	combout => \cnt[3]~31_combout\,
	cout => \cnt[3]~32\);

-- Location: FF_X12_Y30_N15
\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[3]~31_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

-- Location: LCCOMB_X12_Y30_N16
\cnt[4]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[4]~33_combout\ = (cnt(4) & (\cnt[3]~32\ $ (GND))) # (!cnt(4) & (!\cnt[3]~32\ & VCC))
-- \cnt[4]~34\ = CARRY((cnt(4) & !\cnt[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(4),
	datad => VCC,
	cin => \cnt[3]~32\,
	combout => \cnt[4]~33_combout\,
	cout => \cnt[4]~34\);

-- Location: FF_X12_Y30_N17
\cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[4]~33_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(4));

-- Location: LCCOMB_X12_Y30_N18
\cnt[5]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[5]~35_combout\ = (cnt(5) & (!\cnt[4]~34\)) # (!cnt(5) & ((\cnt[4]~34\) # (GND)))
-- \cnt[5]~36\ = CARRY((!\cnt[4]~34\) # (!cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	datad => VCC,
	cin => \cnt[4]~34\,
	combout => \cnt[5]~35_combout\,
	cout => \cnt[5]~36\);

-- Location: FF_X12_Y30_N19
\cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[5]~35_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(5));

-- Location: LCCOMB_X12_Y30_N20
\cnt[6]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[6]~37_combout\ = (cnt(6) & (\cnt[5]~36\ $ (GND))) # (!cnt(6) & (!\cnt[5]~36\ & VCC))
-- \cnt[6]~38\ = CARRY((cnt(6) & !\cnt[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(6),
	datad => VCC,
	cin => \cnt[5]~36\,
	combout => \cnt[6]~37_combout\,
	cout => \cnt[6]~38\);

-- Location: FF_X12_Y30_N21
\cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[6]~37_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(6));

-- Location: LCCOMB_X12_Y30_N22
\cnt[7]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[7]~39_combout\ = (cnt(7) & (!\cnt[6]~38\)) # (!cnt(7) & ((\cnt[6]~38\) # (GND)))
-- \cnt[7]~40\ = CARRY((!\cnt[6]~38\) # (!cnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(7),
	datad => VCC,
	cin => \cnt[6]~38\,
	combout => \cnt[7]~39_combout\,
	cout => \cnt[7]~40\);

-- Location: FF_X12_Y30_N23
\cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[7]~39_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(7));

-- Location: LCCOMB_X12_Y30_N24
\cnt[8]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[8]~41_combout\ = (cnt(8) & (\cnt[7]~40\ $ (GND))) # (!cnt(8) & (!\cnt[7]~40\ & VCC))
-- \cnt[8]~42\ = CARRY((cnt(8) & !\cnt[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(8),
	datad => VCC,
	cin => \cnt[7]~40\,
	combout => \cnt[8]~41_combout\,
	cout => \cnt[8]~42\);

-- Location: FF_X12_Y30_N25
\cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[8]~41_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(8));

-- Location: LCCOMB_X12_Y30_N26
\cnt[9]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[9]~43_combout\ = (cnt(9) & (!\cnt[8]~42\)) # (!cnt(9) & ((\cnt[8]~42\) # (GND)))
-- \cnt[9]~44\ = CARRY((!\cnt[8]~42\) # (!cnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(9),
	datad => VCC,
	cin => \cnt[8]~42\,
	combout => \cnt[9]~43_combout\,
	cout => \cnt[9]~44\);

-- Location: FF_X12_Y30_N27
\cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[9]~43_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(9));

-- Location: LCCOMB_X12_Y30_N28
\cnt[10]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[10]~45_combout\ = (cnt(10) & (\cnt[9]~44\ $ (GND))) # (!cnt(10) & (!\cnt[9]~44\ & VCC))
-- \cnt[10]~46\ = CARRY((cnt(10) & !\cnt[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(10),
	datad => VCC,
	cin => \cnt[9]~44\,
	combout => \cnt[10]~45_combout\,
	cout => \cnt[10]~46\);

-- Location: FF_X12_Y30_N29
\cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[10]~45_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(10));

-- Location: LCCOMB_X12_Y30_N30
\cnt[11]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[11]~47_combout\ = (cnt(11) & (!\cnt[10]~46\)) # (!cnt(11) & ((\cnt[10]~46\) # (GND)))
-- \cnt[11]~48\ = CARRY((!\cnt[10]~46\) # (!cnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(11),
	datad => VCC,
	cin => \cnt[10]~46\,
	combout => \cnt[11]~47_combout\,
	cout => \cnt[11]~48\);

-- Location: FF_X12_Y30_N31
\cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[11]~47_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(11));

-- Location: LCCOMB_X12_Y29_N0
\cnt[12]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[12]~49_combout\ = (cnt(12) & (\cnt[11]~48\ $ (GND))) # (!cnt(12) & (!\cnt[11]~48\ & VCC))
-- \cnt[12]~50\ = CARRY((cnt(12) & !\cnt[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(12),
	datad => VCC,
	cin => \cnt[11]~48\,
	combout => \cnt[12]~49_combout\,
	cout => \cnt[12]~50\);

-- Location: FF_X13_Y30_N25
\cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	asdata => \cnt[12]~49_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(12));

-- Location: LCCOMB_X12_Y29_N2
\cnt[13]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[13]~51_combout\ = (cnt(13) & (!\cnt[12]~50\)) # (!cnt(13) & ((\cnt[12]~50\) # (GND)))
-- \cnt[13]~52\ = CARRY((!\cnt[12]~50\) # (!cnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(13),
	datad => VCC,
	cin => \cnt[12]~50\,
	combout => \cnt[13]~51_combout\,
	cout => \cnt[13]~52\);

-- Location: FF_X12_Y29_N3
\cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[13]~51_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(13));

-- Location: LCCOMB_X12_Y29_N4
\cnt[14]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[14]~53_combout\ = (cnt(14) & (\cnt[13]~52\ $ (GND))) # (!cnt(14) & (!\cnt[13]~52\ & VCC))
-- \cnt[14]~54\ = CARRY((cnt(14) & !\cnt[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(14),
	datad => VCC,
	cin => \cnt[13]~52\,
	combout => \cnt[14]~53_combout\,
	cout => \cnt[14]~54\);

-- Location: FF_X12_Y29_N5
\cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[14]~53_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(14));

-- Location: LCCOMB_X12_Y29_N6
\cnt[15]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[15]~55_combout\ = (cnt(15) & (!\cnt[14]~54\)) # (!cnt(15) & ((\cnt[14]~54\) # (GND)))
-- \cnt[15]~56\ = CARRY((!\cnt[14]~54\) # (!cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(15),
	datad => VCC,
	cin => \cnt[14]~54\,
	combout => \cnt[15]~55_combout\,
	cout => \cnt[15]~56\);

-- Location: FF_X12_Y29_N7
\cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[15]~55_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(15));

-- Location: LCCOMB_X12_Y29_N8
\cnt[16]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[16]~57_combout\ = (cnt(16) & (\cnt[15]~56\ $ (GND))) # (!cnt(16) & (!\cnt[15]~56\ & VCC))
-- \cnt[16]~58\ = CARRY((cnt(16) & !\cnt[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(16),
	datad => VCC,
	cin => \cnt[15]~56\,
	combout => \cnt[16]~57_combout\,
	cout => \cnt[16]~58\);

-- Location: FF_X12_Y29_N9
\cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[16]~57_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(16));

-- Location: LCCOMB_X12_Y29_N10
\cnt[17]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[17]~59_combout\ = (cnt(17) & (!\cnt[16]~58\)) # (!cnt(17) & ((\cnt[16]~58\) # (GND)))
-- \cnt[17]~60\ = CARRY((!\cnt[16]~58\) # (!cnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(17),
	datad => VCC,
	cin => \cnt[16]~58\,
	combout => \cnt[17]~59_combout\,
	cout => \cnt[17]~60\);

-- Location: FF_X12_Y29_N11
\cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[17]~59_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(17));

-- Location: LCCOMB_X12_Y29_N12
\cnt[18]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[18]~61_combout\ = (cnt(18) & (\cnt[17]~60\ $ (GND))) # (!cnt(18) & (!\cnt[17]~60\ & VCC))
-- \cnt[18]~62\ = CARRY((cnt(18) & !\cnt[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(18),
	datad => VCC,
	cin => \cnt[17]~60\,
	combout => \cnt[18]~61_combout\,
	cout => \cnt[18]~62\);

-- Location: FF_X12_Y29_N13
\cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[18]~61_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(18));

-- Location: LCCOMB_X12_Y29_N14
\cnt[19]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[19]~63_combout\ = (cnt(19) & (!\cnt[18]~62\)) # (!cnt(19) & ((\cnt[18]~62\) # (GND)))
-- \cnt[19]~64\ = CARRY((!\cnt[18]~62\) # (!cnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(19),
	datad => VCC,
	cin => \cnt[18]~62\,
	combout => \cnt[19]~63_combout\,
	cout => \cnt[19]~64\);

-- Location: FF_X12_Y29_N15
\cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[19]~63_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(19));

-- Location: LCCOMB_X12_Y29_N16
\cnt[20]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[20]~65_combout\ = (cnt(20) & (\cnt[19]~64\ $ (GND))) # (!cnt(20) & (!\cnt[19]~64\ & VCC))
-- \cnt[20]~66\ = CARRY((cnt(20) & !\cnt[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(20),
	datad => VCC,
	cin => \cnt[19]~64\,
	combout => \cnt[20]~65_combout\,
	cout => \cnt[20]~66\);

-- Location: FF_X12_Y29_N17
\cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[20]~65_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(20));

-- Location: LCCOMB_X12_Y29_N18
\cnt[21]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[21]~67_combout\ = (cnt(21) & (!\cnt[20]~66\)) # (!cnt(21) & ((\cnt[20]~66\) # (GND)))
-- \cnt[21]~68\ = CARRY((!\cnt[20]~66\) # (!cnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(21),
	datad => VCC,
	cin => \cnt[20]~66\,
	combout => \cnt[21]~67_combout\,
	cout => \cnt[21]~68\);

-- Location: FF_X12_Y29_N19
\cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[21]~67_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(21));

-- Location: LCCOMB_X12_Y29_N20
\cnt[22]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[22]~69_combout\ = (cnt(22) & (\cnt[21]~68\ $ (GND))) # (!cnt(22) & (!\cnt[21]~68\ & VCC))
-- \cnt[22]~70\ = CARRY((cnt(22) & !\cnt[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(22),
	datad => VCC,
	cin => \cnt[21]~68\,
	combout => \cnt[22]~69_combout\,
	cout => \cnt[22]~70\);

-- Location: FF_X12_Y29_N21
\cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[22]~69_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(22));

-- Location: LCCOMB_X12_Y29_N22
\cnt[23]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[23]~71_combout\ = (cnt(23) & (!\cnt[22]~70\)) # (!cnt(23) & ((\cnt[22]~70\) # (GND)))
-- \cnt[23]~72\ = CARRY((!\cnt[22]~70\) # (!cnt(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(23),
	datad => VCC,
	cin => \cnt[22]~70\,
	combout => \cnt[23]~71_combout\,
	cout => \cnt[23]~72\);

-- Location: FF_X12_Y29_N23
\cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[23]~71_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(23));

-- Location: LCCOMB_X12_Y29_N24
\cnt[24]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cnt[24]~73_combout\ = \cnt[23]~72\ $ (!cnt(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt(24),
	cin => \cnt[23]~72\,
	combout => \cnt[24]~73_combout\);

-- Location: FF_X12_Y29_N25
\cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[24]~73_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(24));

-- Location: LCCOMB_X12_Y29_N30
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (cnt(18) & (cnt(20) & (cnt(19) & cnt(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(18),
	datab => cnt(20),
	datac => cnt(19),
	datad => cnt(21),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X12_Y29_N26
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!cnt(17) & !cnt(16))) # (!cnt(22))) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(17),
	datab => cnt(16),
	datac => \Equal0~0_combout\,
	datad => cnt(22),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X12_Y30_N4
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!cnt(7) & (!cnt(8) & (!cnt(9) & !cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(7),
	datab => cnt(8),
	datac => cnt(9),
	datad => cnt(10),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X12_Y29_N28
\Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!cnt(17) & (!cnt(23) & !cnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(17),
	datac => cnt(23),
	datad => cnt(15),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X12_Y30_N2
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (cnt(11) & (cnt(12) & (cnt(13) & cnt(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(11),
	datab => cnt(12),
	datac => cnt(13),
	datad => cnt(14),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X12_Y30_N0
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\Equal0~4_combout\ & (((!cnt(6) & \Equal0~1_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datab => \Equal0~1_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~2_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y30_N6
\LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (cnt(24) & (!\LessThan0~0_combout\ & ((cnt(23)) # (!\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(23),
	datab => cnt(24),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: FF_X12_Y30_N9
\cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \cnt[0]~25_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	sclr => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(0));

-- Location: LCCOMB_X13_Y30_N2
\Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!cnt(3) & (!cnt(1) & (!cnt(4) & !cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(1),
	datac => cnt(4),
	datad => cnt(2),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X13_Y30_N12
\Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (cnt(16) & (cnt(6) & (cnt(24) & !cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(16),
	datab => cnt(6),
	datac => cnt(24),
	datad => cnt(5),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X13_Y30_N18
\Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!cnt(0) & (\Equal0~5_combout\ & (\Equal0~4_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => \Equal0~5_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X13_Y30_N28
\Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~0_combout\ & (cnt(22) & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => cnt(22),
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X13_Y30_N22
\led_controller~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \led_controller~0_combout\ = \led_controller~q\ $ (((\Equal0~7_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \led_controller~q\,
	datad => \Equal0~3_combout\,
	combout => \led_controller~0_combout\);

-- Location: FF_X13_Y30_N23
led_controller : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \led_controller~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_controller~q\);

-- Location: IOIBUF_X14_Y31_N1
\key[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\key[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: LCCOMB_X13_Y30_N26
\Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\key[0]~input_o\ & ((\key[1]~input_o\ & ((\led[0]~reg0_q\))) # (!\key[1]~input_o\ & (!\led_controller~q\)))) # (!\key[0]~input_o\ & ((\key[1]~input_o\ & (\led_controller~q\)) # (!\key[1]~input_o\ & ((\led[0]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_controller~q\,
	datab => \key[0]~input_o\,
	datac => \led[0]~reg0_q\,
	datad => \key[1]~input_o\,
	combout => \Selector1~0_combout\);

-- Location: FF_X13_Y30_N27
\led[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[0]~reg0_q\);

-- Location: LCCOMB_X13_Y30_N20
\led[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \led[1]~0_combout\ = (\led_controller~q\ & ((\led[1]~reg0_q\) # (\key[0]~input_o\ $ (\key[1]~input_o\)))) # (!\led_controller~q\ & (\led[1]~reg0_q\ & (\key[0]~input_o\ $ (!\key[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_controller~q\,
	datab => \key[0]~input_o\,
	datac => \led[1]~reg0_q\,
	datad => \key[1]~input_o\,
	combout => \led[1]~0_combout\);

-- Location: FF_X13_Y30_N21
\led[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \led[1]~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[1]~reg0_q\);

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;
END structure;


