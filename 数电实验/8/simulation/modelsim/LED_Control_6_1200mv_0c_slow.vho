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

-- DATE "06/01/2024 18:28:44"

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

ENTITY 	LED_Control IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	button1 : IN std_logic;
	button2 : IN std_logic;
	button3 : IN std_logic;
	button4 : IN std_logic;
	led : OUT std_logic
	);
END LED_Control;

-- Design Ports Information
-- button4	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button3	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button2	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button1	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LED_Control IS
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
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_button1 : std_logic;
SIGNAL ww_button2 : std_logic;
SIGNAL ww_button3 : std_logic;
SIGNAL ww_button4 : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \button4~input_o\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \button1~input_o\ : std_logic;
SIGNAL \button1_sync[0]~feeder_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \button1_sync[1]~feeder_combout\ : std_logic;
SIGNAL \button1_sync[2]~feeder_combout\ : std_logic;
SIGNAL \WideAnd0~0_combout\ : std_logic;
SIGNAL \button3~input_o\ : std_logic;
SIGNAL \button3_sync[0]~feeder_combout\ : std_logic;
SIGNAL \button3_sync[1]~feeder_combout\ : std_logic;
SIGNAL \button3_sync[2]~feeder_combout\ : std_logic;
SIGNAL \WideAnd2~0_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \button2~input_o\ : std_logic;
SIGNAL \button2_sync[0]~feeder_combout\ : std_logic;
SIGNAL \button2_sync[1]~feeder_combout\ : std_logic;
SIGNAL \button2_sync[2]~feeder_combout\ : std_logic;
SIGNAL \WideAnd1~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \current_state.BLINK_FAST~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \current_state.DOUBLE_BLINK~q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \timer[0]~32_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \always3~0_combout\ : std_logic;
SIGNAL \timer[18]~34_combout\ : std_logic;
SIGNAL \timer[0]~33\ : std_logic;
SIGNAL \timer[1]~35_combout\ : std_logic;
SIGNAL \timer[1]~36\ : std_logic;
SIGNAL \timer[2]~37_combout\ : std_logic;
SIGNAL \timer[2]~38\ : std_logic;
SIGNAL \timer[3]~39_combout\ : std_logic;
SIGNAL \timer[3]~40\ : std_logic;
SIGNAL \timer[4]~41_combout\ : std_logic;
SIGNAL \timer[4]~42\ : std_logic;
SIGNAL \timer[5]~43_combout\ : std_logic;
SIGNAL \timer[5]~44\ : std_logic;
SIGNAL \timer[6]~45_combout\ : std_logic;
SIGNAL \timer[6]~46\ : std_logic;
SIGNAL \timer[7]~47_combout\ : std_logic;
SIGNAL \timer[7]~48\ : std_logic;
SIGNAL \timer[8]~49_combout\ : std_logic;
SIGNAL \timer[8]~50\ : std_logic;
SIGNAL \timer[9]~51_combout\ : std_logic;
SIGNAL \timer[9]~52\ : std_logic;
SIGNAL \timer[10]~53_combout\ : std_logic;
SIGNAL \timer[10]~54\ : std_logic;
SIGNAL \timer[11]~55_combout\ : std_logic;
SIGNAL \timer[11]~56\ : std_logic;
SIGNAL \timer[12]~57_combout\ : std_logic;
SIGNAL \timer[12]~58\ : std_logic;
SIGNAL \timer[13]~59_combout\ : std_logic;
SIGNAL \timer[13]~feeder_combout\ : std_logic;
SIGNAL \timer[13]~60\ : std_logic;
SIGNAL \timer[14]~61_combout\ : std_logic;
SIGNAL \timer[14]~62\ : std_logic;
SIGNAL \timer[15]~63_combout\ : std_logic;
SIGNAL \timer[15]~64\ : std_logic;
SIGNAL \timer[16]~65_combout\ : std_logic;
SIGNAL \timer[16]~feeder_combout\ : std_logic;
SIGNAL \timer[16]~66\ : std_logic;
SIGNAL \timer[17]~67_combout\ : std_logic;
SIGNAL \timer[17]~feeder_combout\ : std_logic;
SIGNAL \timer[17]~68\ : std_logic;
SIGNAL \timer[18]~69_combout\ : std_logic;
SIGNAL \timer[18]~feeder_combout\ : std_logic;
SIGNAL \timer[18]~70\ : std_logic;
SIGNAL \timer[19]~71_combout\ : std_logic;
SIGNAL \timer[19]~feeder_combout\ : std_logic;
SIGNAL \timer[19]~72\ : std_logic;
SIGNAL \timer[20]~73_combout\ : std_logic;
SIGNAL \timer[20]~feeder_combout\ : std_logic;
SIGNAL \timer[20]~74\ : std_logic;
SIGNAL \timer[21]~75_combout\ : std_logic;
SIGNAL \timer[21]~feeder_combout\ : std_logic;
SIGNAL \timer[21]~76\ : std_logic;
SIGNAL \timer[22]~77_combout\ : std_logic;
SIGNAL \timer[22]~78\ : std_logic;
SIGNAL \timer[23]~79_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \timer[23]~80\ : std_logic;
SIGNAL \timer[24]~81_combout\ : std_logic;
SIGNAL \timer[24]~82\ : std_logic;
SIGNAL \timer[25]~83_combout\ : std_logic;
SIGNAL \timer[25]~84\ : std_logic;
SIGNAL \timer[26]~85_combout\ : std_logic;
SIGNAL \timer[26]~86\ : std_logic;
SIGNAL \timer[27]~87_combout\ : std_logic;
SIGNAL \timer[27]~88\ : std_logic;
SIGNAL \timer[28]~89_combout\ : std_logic;
SIGNAL \timer[28]~90\ : std_logic;
SIGNAL \timer[29]~91_combout\ : std_logic;
SIGNAL \timer[29]~92\ : std_logic;
SIGNAL \timer[30]~93_combout\ : std_logic;
SIGNAL \timer[30]~94\ : std_logic;
SIGNAL \timer[31]~95_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \current_state.OFF~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \current_state.ON~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \current_state.BLINK_SLOW~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \current_state.TIMING~q\ : std_logic;
SIGNAL \counter[0]~24_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \counter[0]~25\ : std_logic;
SIGNAL \counter[1]~26_combout\ : std_logic;
SIGNAL \counter[1]~27\ : std_logic;
SIGNAL \counter[2]~28_combout\ : std_logic;
SIGNAL \counter[2]~29\ : std_logic;
SIGNAL \counter[3]~30_combout\ : std_logic;
SIGNAL \counter[3]~31\ : std_logic;
SIGNAL \counter[4]~32_combout\ : std_logic;
SIGNAL \counter[4]~33\ : std_logic;
SIGNAL \counter[5]~34_combout\ : std_logic;
SIGNAL \counter[5]~35\ : std_logic;
SIGNAL \counter[6]~36_combout\ : std_logic;
SIGNAL \counter[6]~37\ : std_logic;
SIGNAL \counter[7]~38_combout\ : std_logic;
SIGNAL \counter[7]~39\ : std_logic;
SIGNAL \counter[8]~40_combout\ : std_logic;
SIGNAL \counter[8]~41\ : std_logic;
SIGNAL \counter[9]~42_combout\ : std_logic;
SIGNAL \counter[9]~43\ : std_logic;
SIGNAL \counter[10]~44_combout\ : std_logic;
SIGNAL \counter[10]~45\ : std_logic;
SIGNAL \counter[11]~46_combout\ : std_logic;
SIGNAL \counter[11]~47\ : std_logic;
SIGNAL \counter[12]~48_combout\ : std_logic;
SIGNAL \counter[12]~49\ : std_logic;
SIGNAL \counter[13]~50_combout\ : std_logic;
SIGNAL \counter[13]~51\ : std_logic;
SIGNAL \counter[14]~52_combout\ : std_logic;
SIGNAL \counter[14]~53\ : std_logic;
SIGNAL \counter[15]~54_combout\ : std_logic;
SIGNAL \counter[15]~55\ : std_logic;
SIGNAL \counter[16]~56_combout\ : std_logic;
SIGNAL \counter[16]~57\ : std_logic;
SIGNAL \counter[17]~58_combout\ : std_logic;
SIGNAL \counter[17]~59\ : std_logic;
SIGNAL \counter[18]~60_combout\ : std_logic;
SIGNAL \counter[18]~61\ : std_logic;
SIGNAL \counter[19]~62_combout\ : std_logic;
SIGNAL \counter[19]~63\ : std_logic;
SIGNAL \counter[20]~64_combout\ : std_logic;
SIGNAL \counter[20]~65\ : std_logic;
SIGNAL \counter[21]~66_combout\ : std_logic;
SIGNAL \counter[21]~67\ : std_logic;
SIGNAL \counter[22]~68_combout\ : std_logic;
SIGNAL \counter[22]~69\ : std_logic;
SIGNAL \counter[23]~70_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \led~reg0_q\ : std_logic;
SIGNAL timer : std_logic_vector(31 DOWNTO 0);
SIGNAL counter : std_logic_vector(23 DOWNTO 0);
SIGNAL button3_sync : std_logic_vector(3 DOWNTO 0);
SIGNAL button2_sync : std_logic_vector(3 DOWNTO 0);
SIGNAL button1_sync : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_button1 <= button1;
ww_button2 <= button2;
ww_button3 <= button3;
ww_button4 <= button4;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X22_Y31_N9
\led~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led~reg0_q\,
	devoe => ww_devoe,
	o => \led~output_o\);

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

-- Location: IOIBUF_X24_Y31_N8
\button1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button1,
	o => \button1~input_o\);

-- Location: LCCOMB_X24_Y23_N18
\button1_sync[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \button1_sync[0]~feeder_combout\ = \button1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \button1~input_o\,
	combout => \button1_sync[0]~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N22
\rst_n~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G19
\rst_n~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst_n~inputclkctrl_outclk\);

-- Location: FF_X24_Y23_N19
\button1_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \button1_sync[0]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button1_sync(0));

-- Location: LCCOMB_X24_Y23_N28
\button1_sync[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \button1_sync[1]~feeder_combout\ = button1_sync(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => button1_sync(0),
	combout => \button1_sync[1]~feeder_combout\);

-- Location: FF_X24_Y23_N29
\button1_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \button1_sync[1]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button1_sync(1));

-- Location: LCCOMB_X24_Y23_N26
\button1_sync[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \button1_sync[2]~feeder_combout\ = button1_sync(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => button1_sync(1),
	combout => \button1_sync[2]~feeder_combout\);

-- Location: FF_X24_Y23_N27
\button1_sync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \button1_sync[2]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button1_sync(2));

-- Location: FF_X24_Y23_N21
\button1_sync[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => button1_sync(2),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button1_sync(3));

-- Location: LCCOMB_X24_Y23_N20
\WideAnd0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideAnd0~0_combout\ = (button1_sync(2) & (button1_sync(0) & (button1_sync(3) & button1_sync(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => button1_sync(2),
	datab => button1_sync(0),
	datac => button1_sync(3),
	datad => button1_sync(1),
	combout => \WideAnd0~0_combout\);

-- Location: IOIBUF_X33_Y22_N1
\button3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button3,
	o => \button3~input_o\);

-- Location: LCCOMB_X23_Y21_N18
\button3_sync[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \button3_sync[0]~feeder_combout\ = \button3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \button3~input_o\,
	combout => \button3_sync[0]~feeder_combout\);

-- Location: FF_X23_Y21_N19
\button3_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \button3_sync[0]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button3_sync(0));

-- Location: LCCOMB_X23_Y21_N28
\button3_sync[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \button3_sync[1]~feeder_combout\ = button3_sync(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => button3_sync(0),
	combout => \button3_sync[1]~feeder_combout\);

-- Location: FF_X23_Y21_N29
\button3_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \button3_sync[1]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button3_sync(1));

-- Location: LCCOMB_X23_Y21_N26
\button3_sync[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \button3_sync[2]~feeder_combout\ = button3_sync(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => button3_sync(1),
	combout => \button3_sync[2]~feeder_combout\);

-- Location: FF_X23_Y21_N27
\button3_sync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \button3_sync[2]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button3_sync(2));

-- Location: FF_X23_Y21_N13
\button3_sync[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => button3_sync(2),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button3_sync(3));

-- Location: LCCOMB_X23_Y21_N12
\WideAnd2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideAnd2~0_combout\ = (((!button3_sync(1)) # (!button3_sync(3))) # (!button3_sync(0))) # (!button3_sync(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => button3_sync(2),
	datab => button3_sync(0),
	datac => button3_sync(3),
	datad => button3_sync(1),
	combout => \WideAnd2~0_combout\);

-- Location: LCCOMB_X23_Y23_N26
\Selector0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\WideAnd0~0_combout\ & (((\current_state.TIMING~q\)) # (!\Selector0~0_combout\))) # (!\WideAnd0~0_combout\ & (((!\current_state.OFF~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \current_state.TIMING~q\,
	datac => \WideAnd0~0_combout\,
	datad => \current_state.OFF~q\,
	combout => \Selector0~2_combout\);

-- Location: IOIBUF_X24_Y31_N1
\button2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button2,
	o => \button2~input_o\);

-- Location: LCCOMB_X24_Y23_N10
\button2_sync[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \button2_sync[0]~feeder_combout\ = \button2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \button2~input_o\,
	combout => \button2_sync[0]~feeder_combout\);

-- Location: FF_X24_Y23_N11
\button2_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \button2_sync[0]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button2_sync(0));

-- Location: LCCOMB_X24_Y23_N16
\button2_sync[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \button2_sync[1]~feeder_combout\ = button2_sync(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => button2_sync(0),
	combout => \button2_sync[1]~feeder_combout\);

-- Location: FF_X24_Y23_N17
\button2_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \button2_sync[1]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button2_sync(1));

-- Location: LCCOMB_X24_Y23_N22
\button2_sync[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \button2_sync[2]~feeder_combout\ = button2_sync(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => button2_sync(1),
	combout => \button2_sync[2]~feeder_combout\);

-- Location: FF_X24_Y23_N23
\button2_sync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \button2_sync[2]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button2_sync(2));

-- Location: FF_X24_Y23_N25
\button2_sync[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => button2_sync(2),
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => button2_sync(3));

-- Location: LCCOMB_X24_Y23_N24
\WideAnd1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideAnd1~0_combout\ = (button2_sync(2) & (button2_sync(1) & (button2_sync(3) & button2_sync(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => button2_sync(2),
	datab => button2_sync(1),
	datac => button2_sync(3),
	datad => button2_sync(0),
	combout => \WideAnd1~0_combout\);

-- Location: LCCOMB_X23_Y23_N2
\Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\WideAnd1~0_combout\ & (\current_state.BLINK_SLOW~q\)) # (!\WideAnd1~0_combout\ & (((\WideAnd2~0_combout\ & \current_state.BLINK_FAST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BLINK_SLOW~q\,
	datab => \WideAnd2~0_combout\,
	datac => \current_state.BLINK_FAST~q\,
	datad => \WideAnd1~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X23_Y23_N4
\Selector3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (!\WideAnd0~0_combout\ & \Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideAnd0~0_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: FF_X23_Y23_N5
\current_state.BLINK_FAST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BLINK_FAST~q\);

-- Location: LCCOMB_X23_Y23_N0
\Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\WideAnd1~0_combout\ & (((\current_state.BLINK_FAST~q\)))) # (!\WideAnd1~0_combout\ & (\current_state.DOUBLE_BLINK~q\ & ((\WideAnd2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.DOUBLE_BLINK~q\,
	datab => \WideAnd1~0_combout\,
	datac => \current_state.BLINK_FAST~q\,
	datad => \WideAnd2~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X23_Y23_N14
\Selector4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (!\WideAnd0~0_combout\ & \Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideAnd0~0_combout\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X23_Y23_N15
\current_state.DOUBLE_BLINK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.DOUBLE_BLINK~q\);

-- Location: LCCOMB_X24_Y23_N12
\Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\current_state.DOUBLE_BLINK~q\ & \WideAnd1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.DOUBLE_BLINK~q\,
	datad => \WideAnd1~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X25_Y22_N0
\timer[0]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[0]~32_combout\ = timer(0) $ (VCC)
-- \timer[0]~33\ = CARRY(timer(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer(0),
	datad => VCC,
	combout => \timer[0]~32_combout\,
	cout => \timer[0]~33\);

-- Location: LCCOMB_X26_Y22_N20
\~GND\ : cycloneiv_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X23_Y21_N0
\always3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always3~0_combout\ = (!\WideAnd2~0_combout\ & !\current_state.TIMING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideAnd2~0_combout\,
	datad => \current_state.TIMING~q\,
	combout => \always3~0_combout\);

-- Location: LCCOMB_X24_Y21_N0
\timer[18]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[18]~34_combout\ = (\current_state.TIMING~q\ & ((\LessThan0~10_combout\))) # (!\current_state.TIMING~q\ & (!\WideAnd2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideAnd2~0_combout\,
	datac => \current_state.TIMING~q\,
	datad => \LessThan0~10_combout\,
	combout => \timer[18]~34_combout\);

-- Location: FF_X25_Y22_N1
\timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[0]~32_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(0));

-- Location: LCCOMB_X25_Y22_N2
\timer[1]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[1]~35_combout\ = (timer(1) & (\timer[0]~33\ & VCC)) # (!timer(1) & (!\timer[0]~33\))
-- \timer[1]~36\ = CARRY((!timer(1) & !\timer[0]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(1),
	datad => VCC,
	cin => \timer[0]~33\,
	combout => \timer[1]~35_combout\,
	cout => \timer[1]~36\);

-- Location: FF_X25_Y22_N3
\timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[1]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(1));

-- Location: LCCOMB_X25_Y22_N4
\timer[2]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[2]~37_combout\ = (timer(2) & ((GND) # (!\timer[1]~36\))) # (!timer(2) & (\timer[1]~36\ $ (GND)))
-- \timer[2]~38\ = CARRY((timer(2)) # (!\timer[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(2),
	datad => VCC,
	cin => \timer[1]~36\,
	combout => \timer[2]~37_combout\,
	cout => \timer[2]~38\);

-- Location: FF_X25_Y22_N5
\timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[2]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(2));

-- Location: LCCOMB_X25_Y22_N6
\timer[3]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[3]~39_combout\ = (timer(3) & (\timer[2]~38\ & VCC)) # (!timer(3) & (!\timer[2]~38\))
-- \timer[3]~40\ = CARRY((!timer(3) & !\timer[2]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(3),
	datad => VCC,
	cin => \timer[2]~38\,
	combout => \timer[3]~39_combout\,
	cout => \timer[3]~40\);

-- Location: FF_X25_Y22_N7
\timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[3]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(3));

-- Location: LCCOMB_X25_Y22_N8
\timer[4]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[4]~41_combout\ = (timer(4) & ((GND) # (!\timer[3]~40\))) # (!timer(4) & (\timer[3]~40\ $ (GND)))
-- \timer[4]~42\ = CARRY((timer(4)) # (!\timer[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(4),
	datad => VCC,
	cin => \timer[3]~40\,
	combout => \timer[4]~41_combout\,
	cout => \timer[4]~42\);

-- Location: FF_X25_Y22_N9
\timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[4]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(4));

-- Location: LCCOMB_X25_Y22_N10
\timer[5]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[5]~43_combout\ = (timer(5) & (\timer[4]~42\ & VCC)) # (!timer(5) & (!\timer[4]~42\))
-- \timer[5]~44\ = CARRY((!timer(5) & !\timer[4]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(5),
	datad => VCC,
	cin => \timer[4]~42\,
	combout => \timer[5]~43_combout\,
	cout => \timer[5]~44\);

-- Location: FF_X25_Y22_N11
\timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[5]~43_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(5));

-- Location: LCCOMB_X25_Y22_N12
\timer[6]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[6]~45_combout\ = (timer(6) & ((GND) # (!\timer[5]~44\))) # (!timer(6) & (\timer[5]~44\ $ (GND)))
-- \timer[6]~46\ = CARRY((timer(6)) # (!\timer[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(6),
	datad => VCC,
	cin => \timer[5]~44\,
	combout => \timer[6]~45_combout\,
	cout => \timer[6]~46\);

-- Location: FF_X25_Y22_N13
\timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[6]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(6));

-- Location: LCCOMB_X25_Y22_N14
\timer[7]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[7]~47_combout\ = (timer(7) & (\timer[6]~46\ $ (GND))) # (!timer(7) & (!\timer[6]~46\ & VCC))
-- \timer[7]~48\ = CARRY((timer(7) & !\timer[6]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(7),
	datad => VCC,
	cin => \timer[6]~46\,
	combout => \timer[7]~47_combout\,
	cout => \timer[7]~48\);

-- Location: FF_X25_Y22_N15
\timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[7]~47_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(7));

-- Location: LCCOMB_X25_Y22_N16
\timer[8]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[8]~49_combout\ = (timer(8) & ((GND) # (!\timer[7]~48\))) # (!timer(8) & (\timer[7]~48\ $ (GND)))
-- \timer[8]~50\ = CARRY((timer(8)) # (!\timer[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(8),
	datad => VCC,
	cin => \timer[7]~48\,
	combout => \timer[8]~49_combout\,
	cout => \timer[8]~50\);

-- Location: FF_X25_Y22_N17
\timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[8]~49_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(8));

-- Location: LCCOMB_X25_Y22_N18
\timer[9]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[9]~51_combout\ = (timer(9) & (\timer[8]~50\ $ (GND))) # (!timer(9) & (!\timer[8]~50\ & VCC))
-- \timer[9]~52\ = CARRY((timer(9) & !\timer[8]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(9),
	datad => VCC,
	cin => \timer[8]~50\,
	combout => \timer[9]~51_combout\,
	cout => \timer[9]~52\);

-- Location: FF_X25_Y22_N19
\timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[9]~51_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(9));

-- Location: LCCOMB_X25_Y22_N20
\timer[10]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[10]~53_combout\ = (timer(10) & (!\timer[9]~52\)) # (!timer(10) & ((\timer[9]~52\) # (GND)))
-- \timer[10]~54\ = CARRY((!\timer[9]~52\) # (!timer(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(10),
	datad => VCC,
	cin => \timer[9]~52\,
	combout => \timer[10]~53_combout\,
	cout => \timer[10]~54\);

-- Location: FF_X25_Y22_N21
\timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[10]~53_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(10));

-- Location: LCCOMB_X25_Y22_N22
\timer[11]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[11]~55_combout\ = (timer(11) & (\timer[10]~54\ & VCC)) # (!timer(11) & (!\timer[10]~54\))
-- \timer[11]~56\ = CARRY((!timer(11) & !\timer[10]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(11),
	datad => VCC,
	cin => \timer[10]~54\,
	combout => \timer[11]~55_combout\,
	cout => \timer[11]~56\);

-- Location: FF_X25_Y22_N23
\timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[11]~55_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(11));

-- Location: LCCOMB_X25_Y22_N24
\timer[12]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[12]~57_combout\ = (timer(12) & (!\timer[11]~56\)) # (!timer(12) & ((\timer[11]~56\) # (GND)))
-- \timer[12]~58\ = CARRY((!\timer[11]~56\) # (!timer(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(12),
	datad => VCC,
	cin => \timer[11]~56\,
	combout => \timer[12]~57_combout\,
	cout => \timer[12]~58\);

-- Location: FF_X25_Y22_N25
\timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[12]~57_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(12));

-- Location: LCCOMB_X25_Y22_N26
\timer[13]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[13]~59_combout\ = (timer(13) & (\timer[12]~58\ & VCC)) # (!timer(13) & (!\timer[12]~58\))
-- \timer[13]~60\ = CARRY((!timer(13) & !\timer[12]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(13),
	datad => VCC,
	cin => \timer[12]~58\,
	combout => \timer[13]~59_combout\,
	cout => \timer[13]~60\);

-- Location: LCCOMB_X24_Y21_N24
\timer[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[13]~feeder_combout\ = \timer[13]~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \timer[13]~59_combout\,
	combout => \timer[13]~feeder_combout\);

-- Location: FF_X24_Y21_N25
\timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[13]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(13));

-- Location: LCCOMB_X25_Y22_N28
\timer[14]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[14]~61_combout\ = (timer(14) & ((GND) # (!\timer[13]~60\))) # (!timer(14) & (\timer[13]~60\ $ (GND)))
-- \timer[14]~62\ = CARRY((timer(14)) # (!\timer[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(14),
	datad => VCC,
	cin => \timer[13]~60\,
	combout => \timer[14]~61_combout\,
	cout => \timer[14]~62\);

-- Location: FF_X25_Y22_N29
\timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[14]~61_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(14));

-- Location: LCCOMB_X25_Y22_N30
\timer[15]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[15]~63_combout\ = (timer(15) & (\timer[14]~62\ $ (GND))) # (!timer(15) & (!\timer[14]~62\ & VCC))
-- \timer[15]~64\ = CARRY((timer(15) & !\timer[14]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(15),
	datad => VCC,
	cin => \timer[14]~62\,
	combout => \timer[15]~63_combout\,
	cout => \timer[15]~64\);

-- Location: FF_X25_Y22_N31
\timer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[15]~63_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(15));

-- Location: LCCOMB_X25_Y21_N0
\timer[16]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[16]~65_combout\ = (timer(16) & ((GND) # (!\timer[15]~64\))) # (!timer(16) & (\timer[15]~64\ $ (GND)))
-- \timer[16]~66\ = CARRY((timer(16)) # (!\timer[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(16),
	datad => VCC,
	cin => \timer[15]~64\,
	combout => \timer[16]~65_combout\,
	cout => \timer[16]~66\);

-- Location: LCCOMB_X26_Y21_N24
\timer[16]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[16]~feeder_combout\ = \timer[16]~65_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer[16]~65_combout\,
	combout => \timer[16]~feeder_combout\);

-- Location: FF_X26_Y21_N25
\timer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[16]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(16));

-- Location: LCCOMB_X25_Y21_N2
\timer[17]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[17]~67_combout\ = (timer(17) & (\timer[16]~66\ & VCC)) # (!timer(17) & (!\timer[16]~66\))
-- \timer[17]~68\ = CARRY((!timer(17) & !\timer[16]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(17),
	datad => VCC,
	cin => \timer[16]~66\,
	combout => \timer[17]~67_combout\,
	cout => \timer[17]~68\);

-- Location: LCCOMB_X26_Y21_N26
\timer[17]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[17]~feeder_combout\ = \timer[17]~67_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \timer[17]~67_combout\,
	combout => \timer[17]~feeder_combout\);

-- Location: FF_X26_Y21_N27
\timer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[17]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(17));

-- Location: LCCOMB_X25_Y21_N4
\timer[18]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[18]~69_combout\ = (timer(18) & ((GND) # (!\timer[17]~68\))) # (!timer(18) & (\timer[17]~68\ $ (GND)))
-- \timer[18]~70\ = CARRY((timer(18)) # (!\timer[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(18),
	datad => VCC,
	cin => \timer[17]~68\,
	combout => \timer[18]~69_combout\,
	cout => \timer[18]~70\);

-- Location: LCCOMB_X26_Y21_N8
\timer[18]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[18]~feeder_combout\ = \timer[18]~69_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer[18]~69_combout\,
	combout => \timer[18]~feeder_combout\);

-- Location: FF_X26_Y21_N9
\timer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[18]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(18));

-- Location: LCCOMB_X25_Y21_N6
\timer[19]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[19]~71_combout\ = (timer(19) & (\timer[18]~70\ $ (GND))) # (!timer(19) & (!\timer[18]~70\ & VCC))
-- \timer[19]~72\ = CARRY((timer(19) & !\timer[18]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(19),
	datad => VCC,
	cin => \timer[18]~70\,
	combout => \timer[19]~71_combout\,
	cout => \timer[19]~72\);

-- Location: LCCOMB_X26_Y21_N6
\timer[19]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[19]~feeder_combout\ = \timer[19]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \timer[19]~71_combout\,
	combout => \timer[19]~feeder_combout\);

-- Location: FF_X26_Y21_N7
\timer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[19]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(19));

-- Location: LCCOMB_X25_Y21_N8
\timer[20]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[20]~73_combout\ = (timer(20) & (!\timer[19]~72\)) # (!timer(20) & ((\timer[19]~72\) # (GND)))
-- \timer[20]~74\ = CARRY((!\timer[19]~72\) # (!timer(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(20),
	datad => VCC,
	cin => \timer[19]~72\,
	combout => \timer[20]~73_combout\,
	cout => \timer[20]~74\);

-- Location: LCCOMB_X26_Y21_N22
\timer[20]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[20]~feeder_combout\ = \timer[20]~73_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \timer[20]~73_combout\,
	combout => \timer[20]~feeder_combout\);

-- Location: FF_X26_Y21_N23
\timer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[20]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(20));

-- Location: LCCOMB_X25_Y21_N10
\timer[21]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[21]~75_combout\ = (timer(21) & (\timer[20]~74\ & VCC)) # (!timer(21) & (!\timer[20]~74\))
-- \timer[21]~76\ = CARRY((!timer(21) & !\timer[20]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(21),
	datad => VCC,
	cin => \timer[20]~74\,
	combout => \timer[21]~75_combout\,
	cout => \timer[21]~76\);

-- Location: LCCOMB_X26_Y21_N28
\timer[21]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[21]~feeder_combout\ = \timer[21]~75_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \timer[21]~75_combout\,
	combout => \timer[21]~feeder_combout\);

-- Location: FF_X26_Y21_N29
\timer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[21]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(21));

-- Location: LCCOMB_X25_Y21_N12
\timer[22]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[22]~77_combout\ = (timer(22) & ((GND) # (!\timer[21]~76\))) # (!timer(22) & (\timer[21]~76\ $ (GND)))
-- \timer[22]~78\ = CARRY((timer(22)) # (!\timer[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(22),
	datad => VCC,
	cin => \timer[21]~76\,
	combout => \timer[22]~77_combout\,
	cout => \timer[22]~78\);

-- Location: FF_X25_Y21_N13
\timer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[22]~77_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(22));

-- Location: LCCOMB_X25_Y21_N14
\timer[23]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[23]~79_combout\ = (timer(23) & (\timer[22]~78\ $ (GND))) # (!timer(23) & (!\timer[22]~78\ & VCC))
-- \timer[23]~80\ = CARRY((timer(23) & !\timer[22]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(23),
	datad => VCC,
	cin => \timer[22]~78\,
	combout => \timer[23]~79_combout\,
	cout => \timer[23]~80\);

-- Location: FF_X25_Y21_N15
\timer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[23]~79_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(23));

-- Location: LCCOMB_X26_Y21_N4
\LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (timer(17)) # ((timer(16)) # ((timer(18)) # (!timer(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(17),
	datab => timer(16),
	datac => timer(18),
	datad => timer(19),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X26_Y21_N30
\LessThan0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (timer(21)) # (!timer(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => timer(20),
	datad => timer(21),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X26_Y21_N12
\LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ((\LessThan0~5_combout\) # ((\LessThan0~6_combout\) # (timer(22)))) # (!timer(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(23),
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~6_combout\,
	datad => timer(22),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X25_Y21_N16
\timer[24]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[24]~81_combout\ = (timer(24) & ((GND) # (!\timer[23]~80\))) # (!timer(24) & (\timer[23]~80\ $ (GND)))
-- \timer[24]~82\ = CARRY((timer(24)) # (!\timer[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(24),
	datad => VCC,
	cin => \timer[23]~80\,
	combout => \timer[24]~81_combout\,
	cout => \timer[24]~82\);

-- Location: FF_X25_Y21_N17
\timer[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[24]~81_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(24));

-- Location: LCCOMB_X25_Y21_N18
\timer[25]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[25]~83_combout\ = (timer(25) & (\timer[24]~82\ & VCC)) # (!timer(25) & (!\timer[24]~82\))
-- \timer[25]~84\ = CARRY((!timer(25) & !\timer[24]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(25),
	datad => VCC,
	cin => \timer[24]~82\,
	combout => \timer[25]~83_combout\,
	cout => \timer[25]~84\);

-- Location: FF_X25_Y21_N19
\timer[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[25]~83_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(25));

-- Location: LCCOMB_X25_Y21_N20
\timer[26]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[26]~85_combout\ = (timer(26) & ((GND) # (!\timer[25]~84\))) # (!timer(26) & (\timer[25]~84\ $ (GND)))
-- \timer[26]~86\ = CARRY((timer(26)) # (!\timer[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(26),
	datad => VCC,
	cin => \timer[25]~84\,
	combout => \timer[26]~85_combout\,
	cout => \timer[26]~86\);

-- Location: FF_X25_Y21_N21
\timer[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[26]~85_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(26));

-- Location: LCCOMB_X25_Y21_N22
\timer[27]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[27]~87_combout\ = (timer(27) & (\timer[26]~86\ & VCC)) # (!timer(27) & (!\timer[26]~86\))
-- \timer[27]~88\ = CARRY((!timer(27) & !\timer[26]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(27),
	datad => VCC,
	cin => \timer[26]~86\,
	combout => \timer[27]~87_combout\,
	cout => \timer[27]~88\);

-- Location: FF_X25_Y21_N23
\timer[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[27]~87_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(27));

-- Location: LCCOMB_X25_Y21_N24
\timer[28]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[28]~89_combout\ = (timer(28) & ((GND) # (!\timer[27]~88\))) # (!timer(28) & (\timer[27]~88\ $ (GND)))
-- \timer[28]~90\ = CARRY((timer(28)) # (!\timer[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(28),
	datad => VCC,
	cin => \timer[27]~88\,
	combout => \timer[28]~89_combout\,
	cout => \timer[28]~90\);

-- Location: FF_X25_Y21_N25
\timer[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[28]~89_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(28));

-- Location: LCCOMB_X25_Y21_N26
\timer[29]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[29]~91_combout\ = (timer(29) & (\timer[28]~90\ & VCC)) # (!timer(29) & (!\timer[28]~90\))
-- \timer[29]~92\ = CARRY((!timer(29) & !\timer[28]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(29),
	datad => VCC,
	cin => \timer[28]~90\,
	combout => \timer[29]~91_combout\,
	cout => \timer[29]~92\);

-- Location: FF_X25_Y21_N27
\timer[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[29]~91_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(29));

-- Location: LCCOMB_X25_Y21_N28
\timer[30]~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[30]~93_combout\ = (timer(30) & ((GND) # (!\timer[29]~92\))) # (!timer(30) & (\timer[29]~92\ $ (GND)))
-- \timer[30]~94\ = CARRY((timer(30)) # (!\timer[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(30),
	datad => VCC,
	cin => \timer[29]~92\,
	combout => \timer[30]~93_combout\,
	cout => \timer[30]~94\);

-- Location: FF_X25_Y21_N29
\timer[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[30]~93_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(30));

-- Location: LCCOMB_X25_Y21_N30
\timer[31]~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer[31]~95_combout\ = timer(31) $ (!\timer[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(31),
	cin => \timer[30]~94\,
	combout => \timer[31]~95_combout\);

-- Location: FF_X25_Y21_N31
\timer[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[31]~95_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \always3~0_combout\,
	ena => \timer[18]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(31));

-- Location: LCCOMB_X24_Y21_N20
\LessThan0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (timer(28)) # ((timer(31)) # ((timer(30)) # (timer(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(28),
	datab => timer(31),
	datac => timer(30),
	datad => timer(29),
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X24_Y21_N30
\LessThan0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (timer(24)) # ((timer(27)) # ((timer(25)) # (timer(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(24),
	datab => timer(27),
	datac => timer(25),
	datad => timer(26),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X24_Y21_N26
\LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (timer(13)) # (((timer(14)) # (!timer(12))) # (!timer(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(13),
	datab => timer(15),
	datac => timer(14),
	datad => timer(12),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X24_Y21_N8
\LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((timer(11)) # (timer(8))) # (!timer(9))) # (!timer(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(10),
	datab => timer(9),
	datac => timer(11),
	datad => timer(8),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y21_N4
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (timer(0)) # ((timer(2)) # ((timer(1)) # (timer(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(0),
	datab => timer(2),
	datac => timer(1),
	datad => timer(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y21_N18
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (timer(4)) # (((timer(6)) # (timer(5))) # (!timer(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(4),
	datab => timer(7),
	datac => timer(6),
	datad => timer(5),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y21_N12
\LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~3_combout\) # ((\LessThan0~2_combout\) # ((\LessThan0~0_combout\) # (\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X24_Y21_N2
\LessThan0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (\LessThan0~7_combout\) # ((\LessThan0~9_combout\) # ((\LessThan0~8_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \LessThan0~9_combout\,
	datac => \LessThan0~8_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X23_Y23_N22
\Selector0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (!\Selector0~2_combout\ & (!\Selector0~1_combout\ & ((\LessThan0~10_combout\) # (!\current_state.TIMING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~2_combout\,
	datab => \current_state.TIMING~q\,
	datac => \Selector0~1_combout\,
	datad => \LessThan0~10_combout\,
	combout => \Selector0~3_combout\);

-- Location: FF_X23_Y23_N23
\current_state.OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.OFF~q\);

-- Location: LCCOMB_X23_Y23_N10
\Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\WideAnd2~0_combout\ & (!\WideAnd1~0_combout\ & (!\WideAnd0~0_combout\ & \current_state.ON~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideAnd2~0_combout\,
	datab => \WideAnd1~0_combout\,
	datac => \WideAnd0~0_combout\,
	datad => \current_state.ON~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X23_Y23_N18
\Selector1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\WideAnd0~0_combout\ & !\current_state.OFF~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideAnd0~0_combout\,
	datac => \current_state.OFF~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X23_Y23_N19
\current_state.ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.ON~q\);

-- Location: LCCOMB_X23_Y23_N24
\Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\WideAnd1~0_combout\ & (((\current_state.ON~q\)))) # (!\WideAnd1~0_combout\ & (\current_state.BLINK_SLOW~q\ & ((\WideAnd2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BLINK_SLOW~q\,
	datab => \current_state.ON~q\,
	datac => \WideAnd2~0_combout\,
	datad => \WideAnd1~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X23_Y23_N12
\Selector2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (!\WideAnd0~0_combout\ & \Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideAnd0~0_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X23_Y23_N13
\current_state.BLINK_SLOW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.BLINK_SLOW~q\);

-- Location: LCCOMB_X23_Y23_N30
\Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\current_state.BLINK_SLOW~q\ & (!\current_state.BLINK_FAST~q\ & (!\current_state.DOUBLE_BLINK~q\ & !\current_state.ON~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BLINK_SLOW~q\,
	datab => \current_state.BLINK_FAST~q\,
	datac => \current_state.DOUBLE_BLINK~q\,
	datad => \current_state.ON~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X23_Y23_N20
\Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\WideAnd2~0_combout\ & (!\Selector0~0_combout\ & !\WideAnd1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideAnd2~0_combout\,
	datac => \Selector0~0_combout\,
	datad => \WideAnd1~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X23_Y23_N28
\Selector5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (!\WideAnd0~0_combout\ & ((\Selector5~0_combout\) # ((\current_state.TIMING~q\ & \LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideAnd0~0_combout\,
	datab => \Selector5~0_combout\,
	datac => \current_state.TIMING~q\,
	datad => \LessThan0~10_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X23_Y23_N29
\current_state.TIMING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.TIMING~q\);

-- Location: LCCOMB_X22_Y23_N8
\counter[0]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[0]~24_combout\ = counter(0) $ (VCC)
-- \counter[0]~25\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \counter[0]~24_combout\,
	cout => \counter[0]~25\);

-- Location: LCCOMB_X23_Y23_N8
\WideOr4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (!\current_state.ON~q\ & (\current_state.OFF~q\ & !\current_state.TIMING~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.ON~q\,
	datac => \current_state.OFF~q\,
	datad => \current_state.TIMING~q\,
	combout => \WideOr4~0_combout\);

-- Location: FF_X22_Y23_N9
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~24_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X22_Y23_N10
\counter[1]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[1]~26_combout\ = (counter(1) & (!\counter[0]~25\)) # (!counter(1) & ((\counter[0]~25\) # (GND)))
-- \counter[1]~27\ = CARRY((!\counter[0]~25\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \counter[0]~25\,
	combout => \counter[1]~26_combout\,
	cout => \counter[1]~27\);

-- Location: FF_X22_Y23_N11
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~26_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X22_Y23_N12
\counter[2]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[2]~28_combout\ = (counter(2) & (\counter[1]~27\ $ (GND))) # (!counter(2) & (!\counter[1]~27\ & VCC))
-- \counter[2]~29\ = CARRY((counter(2) & !\counter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~27\,
	combout => \counter[2]~28_combout\,
	cout => \counter[2]~29\);

-- Location: FF_X22_Y23_N13
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~28_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X22_Y23_N14
\counter[3]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[3]~30_combout\ = (counter(3) & (!\counter[2]~29\)) # (!counter(3) & ((\counter[2]~29\) # (GND)))
-- \counter[3]~31\ = CARRY((!\counter[2]~29\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~29\,
	combout => \counter[3]~30_combout\,
	cout => \counter[3]~31\);

-- Location: FF_X22_Y23_N15
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~30_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X22_Y23_N16
\counter[4]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[4]~32_combout\ = (counter(4) & (\counter[3]~31\ $ (GND))) # (!counter(4) & (!\counter[3]~31\ & VCC))
-- \counter[4]~33\ = CARRY((counter(4) & !\counter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~31\,
	combout => \counter[4]~32_combout\,
	cout => \counter[4]~33\);

-- Location: FF_X22_Y23_N17
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~32_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X22_Y23_N18
\counter[5]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[5]~34_combout\ = (counter(5) & (!\counter[4]~33\)) # (!counter(5) & ((\counter[4]~33\) # (GND)))
-- \counter[5]~35\ = CARRY((!\counter[4]~33\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~33\,
	combout => \counter[5]~34_combout\,
	cout => \counter[5]~35\);

-- Location: FF_X22_Y23_N19
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~34_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X22_Y23_N20
\counter[6]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[6]~36_combout\ = (counter(6) & (\counter[5]~35\ $ (GND))) # (!counter(6) & (!\counter[5]~35\ & VCC))
-- \counter[6]~37\ = CARRY((counter(6) & !\counter[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~35\,
	combout => \counter[6]~36_combout\,
	cout => \counter[6]~37\);

-- Location: FF_X22_Y23_N21
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~36_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X22_Y23_N22
\counter[7]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[7]~38_combout\ = (counter(7) & (!\counter[6]~37\)) # (!counter(7) & ((\counter[6]~37\) # (GND)))
-- \counter[7]~39\ = CARRY((!\counter[6]~37\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datad => VCC,
	cin => \counter[6]~37\,
	combout => \counter[7]~38_combout\,
	cout => \counter[7]~39\);

-- Location: FF_X22_Y23_N23
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~38_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X22_Y23_N24
\counter[8]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[8]~40_combout\ = (counter(8) & (\counter[7]~39\ $ (GND))) # (!counter(8) & (!\counter[7]~39\ & VCC))
-- \counter[8]~41\ = CARRY((counter(8) & !\counter[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~39\,
	combout => \counter[8]~40_combout\,
	cout => \counter[8]~41\);

-- Location: FF_X22_Y23_N25
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[8]~40_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X22_Y23_N26
\counter[9]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[9]~42_combout\ = (counter(9) & (!\counter[8]~41\)) # (!counter(9) & ((\counter[8]~41\) # (GND)))
-- \counter[9]~43\ = CARRY((!\counter[8]~41\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \counter[8]~41\,
	combout => \counter[9]~42_combout\,
	cout => \counter[9]~43\);

-- Location: FF_X22_Y23_N27
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[9]~42_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X22_Y23_N28
\counter[10]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[10]~44_combout\ = (counter(10) & (\counter[9]~43\ $ (GND))) # (!counter(10) & (!\counter[9]~43\ & VCC))
-- \counter[10]~45\ = CARRY((counter(10) & !\counter[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~43\,
	combout => \counter[10]~44_combout\,
	cout => \counter[10]~45\);

-- Location: FF_X22_Y23_N29
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[10]~44_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X22_Y23_N30
\counter[11]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[11]~46_combout\ = (counter(11) & (!\counter[10]~45\)) # (!counter(11) & ((\counter[10]~45\) # (GND)))
-- \counter[11]~47\ = CARRY((!\counter[10]~45\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \counter[10]~45\,
	combout => \counter[11]~46_combout\,
	cout => \counter[11]~47\);

-- Location: FF_X22_Y23_N31
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[11]~46_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X22_Y22_N0
\counter[12]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[12]~48_combout\ = (counter(12) & (\counter[11]~47\ $ (GND))) # (!counter(12) & (!\counter[11]~47\ & VCC))
-- \counter[12]~49\ = CARRY((counter(12) & !\counter[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~47\,
	combout => \counter[12]~48_combout\,
	cout => \counter[12]~49\);

-- Location: FF_X22_Y22_N1
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[12]~48_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X22_Y22_N2
\counter[13]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[13]~50_combout\ = (counter(13) & (!\counter[12]~49\)) # (!counter(13) & ((\counter[12]~49\) # (GND)))
-- \counter[13]~51\ = CARRY((!\counter[12]~49\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \counter[12]~49\,
	combout => \counter[13]~50_combout\,
	cout => \counter[13]~51\);

-- Location: FF_X22_Y22_N3
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[13]~50_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X22_Y22_N4
\counter[14]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[14]~52_combout\ = (counter(14) & (\counter[13]~51\ $ (GND))) # (!counter(14) & (!\counter[13]~51\ & VCC))
-- \counter[14]~53\ = CARRY((counter(14) & !\counter[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~51\,
	combout => \counter[14]~52_combout\,
	cout => \counter[14]~53\);

-- Location: FF_X22_Y22_N5
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[14]~52_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X22_Y22_N6
\counter[15]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[15]~54_combout\ = (counter(15) & (!\counter[14]~53\)) # (!counter(15) & ((\counter[14]~53\) # (GND)))
-- \counter[15]~55\ = CARRY((!\counter[14]~53\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \counter[14]~53\,
	combout => \counter[15]~54_combout\,
	cout => \counter[15]~55\);

-- Location: FF_X22_Y22_N7
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[15]~54_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X22_Y22_N8
\counter[16]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[16]~56_combout\ = (counter(16) & (\counter[15]~55\ $ (GND))) # (!counter(16) & (!\counter[15]~55\ & VCC))
-- \counter[16]~57\ = CARRY((counter(16) & !\counter[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~55\,
	combout => \counter[16]~56_combout\,
	cout => \counter[16]~57\);

-- Location: FF_X22_Y22_N9
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[16]~56_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X22_Y22_N10
\counter[17]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[17]~58_combout\ = (counter(17) & (!\counter[16]~57\)) # (!counter(17) & ((\counter[16]~57\) # (GND)))
-- \counter[17]~59\ = CARRY((!\counter[16]~57\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \counter[16]~57\,
	combout => \counter[17]~58_combout\,
	cout => \counter[17]~59\);

-- Location: FF_X22_Y22_N11
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[17]~58_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X22_Y22_N12
\counter[18]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[18]~60_combout\ = (counter(18) & (\counter[17]~59\ $ (GND))) # (!counter(18) & (!\counter[17]~59\ & VCC))
-- \counter[18]~61\ = CARRY((counter(18) & !\counter[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \counter[17]~59\,
	combout => \counter[18]~60_combout\,
	cout => \counter[18]~61\);

-- Location: FF_X22_Y22_N13
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[18]~60_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X22_Y22_N14
\counter[19]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[19]~62_combout\ = (counter(19) & (!\counter[18]~61\)) # (!counter(19) & ((\counter[18]~61\) # (GND)))
-- \counter[19]~63\ = CARRY((!\counter[18]~61\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \counter[18]~61\,
	combout => \counter[19]~62_combout\,
	cout => \counter[19]~63\);

-- Location: FF_X22_Y22_N15
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[19]~62_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X22_Y22_N16
\counter[20]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[20]~64_combout\ = (counter(20) & (\counter[19]~63\ $ (GND))) # (!counter(20) & (!\counter[19]~63\ & VCC))
-- \counter[20]~65\ = CARRY((counter(20) & !\counter[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \counter[19]~63\,
	combout => \counter[20]~64_combout\,
	cout => \counter[20]~65\);

-- Location: FF_X22_Y22_N17
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[20]~64_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X22_Y22_N18
\counter[21]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[21]~66_combout\ = (counter(21) & (!\counter[20]~65\)) # (!counter(21) & ((\counter[20]~65\) # (GND)))
-- \counter[21]~67\ = CARRY((!\counter[20]~65\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \counter[20]~65\,
	combout => \counter[21]~66_combout\,
	cout => \counter[21]~67\);

-- Location: FF_X22_Y22_N19
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[21]~66_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X22_Y22_N20
\counter[22]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[22]~68_combout\ = (counter(22) & (\counter[21]~67\ $ (GND))) # (!counter(22) & (!\counter[21]~67\ & VCC))
-- \counter[22]~69\ = CARRY((counter(22) & !\counter[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \counter[21]~67\,
	combout => \counter[22]~68_combout\,
	cout => \counter[22]~69\);

-- Location: FF_X22_Y22_N21
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[22]~68_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X22_Y22_N22
\counter[23]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \counter[23]~70_combout\ = counter(23) $ (\counter[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	cin => \counter[22]~69\,
	combout => \counter[23]~70_combout\);

-- Location: FF_X22_Y22_N23
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[23]~70_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X23_Y23_N16
\Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (counter(21) & ((\current_state.BLINK_FAST~q\) # ((\current_state.DOUBLE_BLINK~q\ & counter(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datab => \current_state.DOUBLE_BLINK~q\,
	datac => \current_state.BLINK_FAST~q\,
	datad => counter(22),
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X23_Y23_N6
\Selector6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\current_state.ON~q\) # ((\Selector6~0_combout\) # ((\current_state.BLINK_SLOW~q\ & counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.BLINK_SLOW~q\,
	datab => \current_state.ON~q\,
	datac => counter(23),
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X24_Y21_N22
\Selector6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\Selector6~1_combout\) # ((\current_state.TIMING~q\ & (\LessThan0~10_combout\ & \led~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.TIMING~q\,
	datab => \LessThan0~10_combout\,
	datac => \led~reg0_q\,
	datad => \Selector6~1_combout\,
	combout => \Selector6~2_combout\);

-- Location: FF_X24_Y21_N23
\led~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led~reg0_q\);

-- Location: IOIBUF_X20_Y31_N1
\button4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button4,
	o => \button4~input_o\);

ww_led <= \led~output_o\;
END structure;


