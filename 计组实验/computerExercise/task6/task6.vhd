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
-- CREATED		"Mon Dec 02 15:00:34 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY task6 IS 
	PORT
	(
		FC :  IN  STD_LOGIC;
		FZ :  IN  STD_LOGIC;
		T4 :  IN  STD_LOGIC;
		SWA :  IN  STD_LOGIC;
		SWB :  IN  STD_LOGIC;
		I :  IN  STD_LOGIC_VECTOR(7 DOWNTO 2);
		P :  IN  STD_LOGIC_VECTOR(4 DOWNTO 1);
		SE :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 1)
	);
END task6;

ARCHITECTURE bdf_type OF task6 IS 

SIGNAL	SE_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(6 DOWNTO 1);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_12 <= FZ OR FC;


SYNTHESIZED_WIRE_16 <= NOT(P(1));



SYNTHESIZED_WIRE_6 <= I(5) AND T4 AND SYNTHESIZED_WIRE_16;


SYNTHESIZED_WIRE_7 <= I(3) AND T4 AND SYNTHESIZED_WIRE_17;


SYNTHESIZED_WIRE_9 <= I(4) AND T4 AND SYNTHESIZED_WIRE_16;


SYNTHESIZED_WIRE_11 <= SYNTHESIZED_WIRE_18 AND T4 AND SWA;


SYNTHESIZED_WIRE_10 <= I(2) AND T4 AND SYNTHESIZED_WIRE_17;


SYNTHESIZED_WIRE_8 <= SYNTHESIZED_WIRE_18 AND T4 AND SWB;



SYNTHESIZED_WIRE_17 <= NOT(P(2));



SYNTHESIZED_WIRE_13 <= NOT(P(3));



SYNTHESIZED_WIRE_18 <= NOT(P(4));



SE_ALTERA_SYNTHESIZED(2) <= NOT(SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7 OR SYNTHESIZED_WIRE_8);


SE_ALTERA_SYNTHESIZED(1) <= NOT(SYNTHESIZED_WIRE_9 OR SYNTHESIZED_WIRE_10 OR SYNTHESIZED_WIRE_11);


SE_ALTERA_SYNTHESIZED(5) <= NOT(SYNTHESIZED_WIRE_12 AND T4 AND SYNTHESIZED_WIRE_13);


SE_ALTERA_SYNTHESIZED(4) <= NOT(I(7) AND T4 AND SYNTHESIZED_WIRE_16);


SE_ALTERA_SYNTHESIZED(3) <= NOT(I(6) AND T4 AND SYNTHESIZED_WIRE_16);

SE <= SE_ALTERA_SYNTHESIZED;

SE_ALTERA_SYNTHESIZED(6) <= '1';
END bdf_type;