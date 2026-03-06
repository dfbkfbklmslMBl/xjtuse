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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Full Version"
-- CREATED		"Thu Oct 03 21:50:20 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY exercise1 IS 
	PORT
	(
		CLK1 :  IN  STD_LOGIC;
		RST1 :  IN  STD_LOGIC;
		T1 :  OUT  STD_LOGIC;
		T2 :  OUT  STD_LOGIC;
		T3 :  OUT  STD_LOGIC;
		T4 :  OUT  STD_LOGIC
	);
END exercise1;

ARCHITECTURE bdf_type OF exercise1 IS 

SIGNAL	DFF_inst3 :  STD_LOGIC;
SIGNAL	DFF_inst :  STD_LOGIC;
SIGNAL	DFF_inst1 :  STD_LOGIC;
SIGNAL	DFF_inst2 :  STD_LOGIC;


BEGIN 
T1 <= DFF_inst;
T2 <= DFF_inst1;
T3 <= DFF_inst2;
T4 <= DFF_inst3;



PROCESS(CLK1,RST1)
BEGIN
IF (RST1 = '0') THEN
	DFF_inst <= '1';
ELSIF (RISING_EDGE(CLK1)) THEN
	DFF_inst <= DFF_inst3;
END IF;
END PROCESS;


PROCESS(CLK1,RST1)
BEGIN
IF (RST1 = '0') THEN
	DFF_inst1 <= '0';
ELSIF (RISING_EDGE(CLK1)) THEN
	DFF_inst1 <= DFF_inst;
END IF;
END PROCESS;


PROCESS(CLK1,RST1)
BEGIN
IF (RST1 = '0') THEN
	DFF_inst2 <= '0';
ELSIF (RISING_EDGE(CLK1)) THEN
	DFF_inst2 <= DFF_inst1;
END IF;
END PROCESS;


PROCESS(CLK1,RST1)
BEGIN
IF (RST1 = '0') THEN
	DFF_inst3 <= '0';
ELSIF (RISING_EDGE(CLK1)) THEN
	DFF_inst3 <= DFF_inst2;
END IF;
END PROCESS;


END bdf_type;