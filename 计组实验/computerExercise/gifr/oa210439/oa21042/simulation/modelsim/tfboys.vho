-- Copyright (C) 1991-2009 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

-- DATE "09/20/2023 11:14:49"

-- 
-- Device: Altera EP1K100QC208-3 Package PQFP208
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE, flex10ke;
USE IEEE.std_logic_1164.all;
USE flex10ke.flex10ke_components.all;

ENTITY 	tfboys IS
    PORT (
	T1 : OUT std_logic;
	RST1 : IN std_logic;
	CLK1 : IN std_logic;
	T2 : OUT std_logic;
	T3 : OUT std_logic;
	T4 : OUT std_logic
	);
END tfboys;

ARCHITECTURE structure OF tfboys IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_T1 : std_logic;
SIGNAL ww_RST1 : std_logic;
SIGNAL ww_CLK1 : std_logic;
SIGNAL ww_T2 : std_logic;
SIGNAL ww_T3 : std_logic;
SIGNAL ww_T4 : std_logic;
SIGNAL \RST1~dataout\ : std_logic;
SIGNAL \inst2~regout\ : std_logic;
SIGNAL \inst3~regout\ : std_logic;
SIGNAL \inst4~regout\ : std_logic;
SIGNAL \CLK1~dataout\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \inst1~regout\ : std_logic;
SIGNAL \inst~regout\ : std_logic;
SIGNAL \ALT_INV_RST1~dataout\ : std_logic;

BEGIN

T1 <= ww_T1;
ww_RST1 <= RST1;
ww_CLK1 <= CLK1;
T2 <= ww_T2;
T3 <= ww_T3;
T4 <= ww_T4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_RST1~dataout\ <= NOT \RST1~dataout\;

\RST1~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_RST1,
	dataout => \RST1~dataout\);

inst2 : flex10ke_lcell
-- Equation(s):
-- \inst2~regout\ = DFFEA(\inst1~regout\, GLOBAL(\inst8~combout\), GLOBAL(\RST1~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst1~regout\,
	aclr => \ALT_INV_RST1~dataout\,
	clk => \inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2~regout\);

inst3 : flex10ke_lcell
-- Equation(s):
-- \inst3~regout\ = DFFEA(\inst2~regout\, GLOBAL(\inst8~combout\), GLOBAL(\RST1~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst2~regout\,
	aclr => \ALT_INV_RST1~dataout\,
	clk => \inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3~regout\);

inst4 : flex10ke_lcell
-- Equation(s):
-- \inst4~regout\ = DFFEA(\inst3~regout\, GLOBAL(\inst8~combout\), GLOBAL(\RST1~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst3~regout\,
	aclr => \ALT_INV_RST1~dataout\,
	clk => \inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4~regout\);

\CLK1~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "from_pin",
	operation_mode => "input",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	ena => VCC,
	padio => ww_CLK1,
	dataout => \CLK1~dataout\);

inst8 : flex10ke_lcell
-- Equation(s):
-- \inst8~combout\ = \inst4~regout\ # \CLK1~dataout\

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datac => \inst4~regout\,
	datad => \CLK1~dataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst8~combout\);

inst1 : flex10ke_lcell
-- Equation(s):
-- \inst1~regout\ = DFFEA(\inst~regout\, GLOBAL(\inst8~combout\), GLOBAL(\RST1~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	datad => \inst~regout\,
	aclr => \ALT_INV_RST1~dataout\,
	clk => \inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1~regout\);

inst : flex10ke_lcell
-- Equation(s):
-- \inst~regout\ = DFFEA(!\inst~regout\ & !\inst1~regout\ & !\inst2~regout\ & !\inst3~regout\, GLOBAL(\inst8~combout\), GLOBAL(\RST1~dataout\), , , , )

-- pragma translate_off
GENERIC MAP (
	clock_enable_mode => "false",
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_only",
	packed_mode => "false")
-- pragma translate_on
PORT MAP (
	dataa => \inst~regout\,
	datab => \inst1~regout\,
	datac => \inst2~regout\,
	datad => \inst3~regout\,
	aclr => \ALT_INV_RST1~dataout\,
	clk => \inst8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst~regout\);

\T1~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_T1);

\T2~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_T2);

\T3~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_T3);

\T4~I\ : flex10ke_io
-- pragma translate_off
GENERIC MAP (
	feedback_mode => "none",
	operation_mode => "output",
	reg_source_mode => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	ena => VCC,
	padio => ww_T4);
END structure;


