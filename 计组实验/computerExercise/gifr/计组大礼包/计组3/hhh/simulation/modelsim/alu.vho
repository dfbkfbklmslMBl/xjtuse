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

-- DATE "10/25/2023 09:37:53"

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

ENTITY 	alu IS
    PORT (
	CN4 : OUT std_logic;
	M : IN std_logic;
	CN : IN std_logic;
	A : OUT std_logic_vector(7 DOWNTO 0);
	A0_B1 : IN std_logic;
	\IN\ : IN std_logic_vector(7 DOWNTO 0);
	B : OUT std_logic_vector(7 DOWNTO 0);
	S : OUT std_logic_vector(3 DOWNTO 0);
	Sclk : IN std_logic;
	F : OUT std_logic_vector(7 DOWNTO 0);
	A0_B2 : IN std_logic
	);
END alu;

-- Design Ports Information
-- CN4	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[7]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[6]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[5]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[4]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0_B2	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CN	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[7]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0_B1	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[6]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[5]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[4]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[3]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[2]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[1]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN[0]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sclk	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CN4 : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_CN : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A0_B1 : std_logic;
SIGNAL \ww_IN\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sclk : std_logic;
SIGNAL ww_F : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A0_B2 : std_logic;
SIGNAL \A0_B2~input_o\ : std_logic;
SIGNAL \CN4~output_o\ : std_logic;
SIGNAL \A[7]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \B[7]~output_o\ : std_logic;
SIGNAL \B[6]~output_o\ : std_logic;
SIGNAL \B[5]~output_o\ : std_logic;
SIGNAL \B[4]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \F[7]~output_o\ : std_logic;
SIGNAL \F[6]~output_o\ : std_logic;
SIGNAL \F[5]~output_o\ : std_logic;
SIGNAL \F[4]~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \Sclk~input_o\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \CN~input_o\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \IN[7]~input_o\ : std_logic;
SIGNAL \A0_B1~input_o\ : std_logic;
SIGNAL \inst1|19~combout\ : std_logic;
SIGNAL \inst2|19~combout\ : std_logic;
SIGNAL \IN[6]~input_o\ : std_logic;
SIGNAL \inst2|18~combout\ : std_logic;
SIGNAL \inst1|18~combout\ : std_logic;
SIGNAL \IN[5]~input_o\ : std_logic;
SIGNAL \inst1|17~combout\ : std_logic;
SIGNAL \inst2|17~combout\ : std_logic;
SIGNAL \IN[4]~input_o\ : std_logic;
SIGNAL \inst2|16~combout\ : std_logic;
SIGNAL \inst1|16~combout\ : std_logic;
SIGNAL \IN[3]~input_o\ : std_logic;
SIGNAL \inst1|15~combout\ : std_logic;
SIGNAL \inst2|15~combout\ : std_logic;
SIGNAL \IN[2]~input_o\ : std_logic;
SIGNAL \inst1|14~combout\ : std_logic;
SIGNAL \inst2|14~combout\ : std_logic;
SIGNAL \IN[1]~input_o\ : std_logic;
SIGNAL \inst2|13~combout\ : std_logic;
SIGNAL \inst1|13~combout\ : std_logic;
SIGNAL \IN[0]~input_o\ : std_logic;
SIGNAL \inst1|12~combout\ : std_logic;
SIGNAL \inst2|12~combout\ : std_logic;
SIGNAL \inst|F9~14_combout\ : std_logic;
SIGNAL \inst|Add17~1\ : std_logic;
SIGNAL \inst|Add17~3\ : std_logic;
SIGNAL \inst|Add17~5\ : std_logic;
SIGNAL \inst|Add17~7\ : std_logic;
SIGNAL \inst|Add17~9\ : std_logic;
SIGNAL \inst|Add17~11\ : std_logic;
SIGNAL \inst|Add17~13\ : std_logic;
SIGNAL \inst|Add17~15\ : std_logic;
SIGNAL \inst|Add17~16_combout\ : std_logic;
SIGNAL \inst|Mux0~18_combout\ : std_logic;
SIGNAL \inst|Add22~1\ : std_logic;
SIGNAL \inst|Add22~3\ : std_logic;
SIGNAL \inst|Add22~5\ : std_logic;
SIGNAL \inst|Add22~7\ : std_logic;
SIGNAL \inst|Add22~9\ : std_logic;
SIGNAL \inst|Add22~11\ : std_logic;
SIGNAL \inst|Add22~13\ : std_logic;
SIGNAL \inst|Add22~15\ : std_logic;
SIGNAL \inst|Add22~16_combout\ : std_logic;
SIGNAL \inst|F9~15_combout\ : std_logic;
SIGNAL \inst|Add10~1\ : std_logic;
SIGNAL \inst|Add10~3\ : std_logic;
SIGNAL \inst|Add10~5\ : std_logic;
SIGNAL \inst|Add10~7\ : std_logic;
SIGNAL \inst|Add10~9\ : std_logic;
SIGNAL \inst|Add10~11\ : std_logic;
SIGNAL \inst|Add10~13\ : std_logic;
SIGNAL \inst|Add10~15\ : std_logic;
SIGNAL \inst|Add10~16_combout\ : std_logic;
SIGNAL \inst|Mux0~15_combout\ : std_logic;
SIGNAL \inst|Mux0~16_combout\ : std_logic;
SIGNAL \inst|Add8~1_cout\ : std_logic;
SIGNAL \inst|Add8~3\ : std_logic;
SIGNAL \inst|Add8~5\ : std_logic;
SIGNAL \inst|Add8~7\ : std_logic;
SIGNAL \inst|Add8~9\ : std_logic;
SIGNAL \inst|Add8~11\ : std_logic;
SIGNAL \inst|Add8~13\ : std_logic;
SIGNAL \inst|Add8~15\ : std_logic;
SIGNAL \inst|Add8~17\ : std_logic;
SIGNAL \inst|Add8~18_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~13\ : std_logic;
SIGNAL \inst|Add2~15\ : std_logic;
SIGNAL \inst|Add2~16_combout\ : std_logic;
SIGNAL \inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst|Mux0~3_combout\ : std_logic;
SIGNAL \inst|F9~0_combout\ : std_logic;
SIGNAL \inst|F9~1_combout\ : std_logic;
SIGNAL \inst|F9~2_combout\ : std_logic;
SIGNAL \inst|F9~3_combout\ : std_logic;
SIGNAL \inst|F9~4_combout\ : std_logic;
SIGNAL \inst|F9~5_combout\ : std_logic;
SIGNAL \inst|F9~7_combout\ : std_logic;
SIGNAL \inst|F9~6_combout\ : std_logic;
SIGNAL \inst|F9~9_combout\ : std_logic;
SIGNAL \inst|F9~8_combout\ : std_logic;
SIGNAL \inst|F9~10_combout\ : std_logic;
SIGNAL \inst|F9~11_combout\ : std_logic;
SIGNAL \inst|F9~12_combout\ : std_logic;
SIGNAL \inst|F9~13_combout\ : std_logic;
SIGNAL \inst|Add15~1_cout\ : std_logic;
SIGNAL \inst|Add15~3\ : std_logic;
SIGNAL \inst|Add15~5\ : std_logic;
SIGNAL \inst|Add15~7\ : std_logic;
SIGNAL \inst|Add15~9\ : std_logic;
SIGNAL \inst|Add15~11\ : std_logic;
SIGNAL \inst|Add15~13\ : std_logic;
SIGNAL \inst|Add15~15\ : std_logic;
SIGNAL \inst|Add15~17\ : std_logic;
SIGNAL \inst|Add15~18_combout\ : std_logic;
SIGNAL \inst|Add20~1_cout\ : std_logic;
SIGNAL \inst|Add20~3\ : std_logic;
SIGNAL \inst|Add20~5\ : std_logic;
SIGNAL \inst|Add20~7\ : std_logic;
SIGNAL \inst|Add20~9\ : std_logic;
SIGNAL \inst|Add20~11\ : std_logic;
SIGNAL \inst|Add20~13\ : std_logic;
SIGNAL \inst|Add20~15\ : std_logic;
SIGNAL \inst|Add20~17\ : std_logic;
SIGNAL \inst|Add20~18_combout\ : std_logic;
SIGNAL \inst|Mux0~4_combout\ : std_logic;
SIGNAL \inst|Mux0~5_combout\ : std_logic;
SIGNAL \inst|Add11~1_cout\ : std_logic;
SIGNAL \inst|Add11~3\ : std_logic;
SIGNAL \inst|Add11~5\ : std_logic;
SIGNAL \inst|Add11~7\ : std_logic;
SIGNAL \inst|Add11~9\ : std_logic;
SIGNAL \inst|Add11~11\ : std_logic;
SIGNAL \inst|Add11~13\ : std_logic;
SIGNAL \inst|Add11~15\ : std_logic;
SIGNAL \inst|Add11~17\ : std_logic;
SIGNAL \inst|Add11~18_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Mux0~10_combout\ : std_logic;
SIGNAL \inst|Mux0~11_combout\ : std_logic;
SIGNAL \inst|F9~16_combout\ : std_logic;
SIGNAL \inst|F9~18_combout\ : std_logic;
SIGNAL \inst|F9~20_combout\ : std_logic;
SIGNAL \inst|F9~22_combout\ : std_logic;
SIGNAL \inst|F9~24_combout\ : std_logic;
SIGNAL \inst|F9~26_combout\ : std_logic;
SIGNAL \inst|F9~28_combout\ : std_logic;
SIGNAL \inst|F9~30_combout\ : std_logic;
SIGNAL \inst|Add4~1_cout\ : std_logic;
SIGNAL \inst|Add4~3\ : std_logic;
SIGNAL \inst|Add4~5\ : std_logic;
SIGNAL \inst|Add4~7\ : std_logic;
SIGNAL \inst|Add4~9\ : std_logic;
SIGNAL \inst|Add4~11\ : std_logic;
SIGNAL \inst|Add4~13\ : std_logic;
SIGNAL \inst|Add4~15\ : std_logic;
SIGNAL \inst|Add4~17\ : std_logic;
SIGNAL \inst|Add4~18_combout\ : std_logic;
SIGNAL \inst|Mux0~12_combout\ : std_logic;
SIGNAL \inst|Mux0~13_combout\ : std_logic;
SIGNAL \inst|F9~17_combout\ : std_logic;
SIGNAL \inst|F9~19_combout\ : std_logic;
SIGNAL \inst|F9~21_combout\ : std_logic;
SIGNAL \inst|F9~23_combout\ : std_logic;
SIGNAL \inst|F9~25_combout\ : std_logic;
SIGNAL \inst|F9~27_combout\ : std_logic;
SIGNAL \inst|F9~29_combout\ : std_logic;
SIGNAL \inst|F9~31_combout\ : std_logic;
SIGNAL \inst|Add18~1_cout\ : std_logic;
SIGNAL \inst|Add18~3\ : std_logic;
SIGNAL \inst|Add18~5\ : std_logic;
SIGNAL \inst|Add18~7\ : std_logic;
SIGNAL \inst|Add18~9\ : std_logic;
SIGNAL \inst|Add18~11\ : std_logic;
SIGNAL \inst|Add18~13\ : std_logic;
SIGNAL \inst|Add18~15\ : std_logic;
SIGNAL \inst|Add18~17\ : std_logic;
SIGNAL \inst|Add18~18_combout\ : std_logic;
SIGNAL \inst|Add13~1_cout\ : std_logic;
SIGNAL \inst|Add13~3\ : std_logic;
SIGNAL \inst|Add13~5\ : std_logic;
SIGNAL \inst|Add13~7\ : std_logic;
SIGNAL \inst|Add13~9\ : std_logic;
SIGNAL \inst|Add13~11\ : std_logic;
SIGNAL \inst|Add13~13\ : std_logic;
SIGNAL \inst|Add13~15\ : std_logic;
SIGNAL \inst|Add13~17\ : std_logic;
SIGNAL \inst|Add13~18_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~15\ : std_logic;
SIGNAL \inst|Add1~16_combout\ : std_logic;
SIGNAL \inst|Mux0~6_combout\ : std_logic;
SIGNAL \inst|Mux0~7_combout\ : std_logic;
SIGNAL \inst|Mux0~8_combout\ : std_logic;
SIGNAL \inst|Add6~1_cout\ : std_logic;
SIGNAL \inst|Add6~3\ : std_logic;
SIGNAL \inst|Add6~5\ : std_logic;
SIGNAL \inst|Add6~7\ : std_logic;
SIGNAL \inst|Add6~9\ : std_logic;
SIGNAL \inst|Add6~11\ : std_logic;
SIGNAL \inst|Add6~13\ : std_logic;
SIGNAL \inst|Add6~15\ : std_logic;
SIGNAL \inst|Add6~17\ : std_logic;
SIGNAL \inst|Add6~18_combout\ : std_logic;
SIGNAL \inst|Mux0~9_combout\ : std_logic;
SIGNAL \inst|Mux0~14_combout\ : std_logic;
SIGNAL \inst|Mux0~17_combout\ : std_logic;
SIGNAL \inst|Add8~16_combout\ : std_logic;
SIGNAL \inst|Add10~14_combout\ : std_logic;
SIGNAL \inst|Mux1~21_combout\ : std_logic;
SIGNAL \inst|Mux1~22_combout\ : std_logic;
SIGNAL \inst|Add4~16_combout\ : std_logic;
SIGNAL \inst|Mux1~23_combout\ : std_logic;
SIGNAL \inst|Add6~16_combout\ : std_logic;
SIGNAL \inst|Mux1~24_combout\ : std_logic;
SIGNAL \inst|Mux1~25_combout\ : std_logic;
SIGNAL \inst|Add18~16_combout\ : std_logic;
SIGNAL \inst|Mux1~13_combout\ : std_logic;
SIGNAL \inst|Mux1~17_combout\ : std_logic;
SIGNAL \inst|Mux1~16_combout\ : std_logic;
SIGNAL \inst|Add20~16_combout\ : std_logic;
SIGNAL \inst|Mux1~14_combout\ : std_logic;
SIGNAL \inst|Add22~14_combout\ : std_logic;
SIGNAL \inst|Mux1~15_combout\ : std_logic;
SIGNAL \inst|Mux1~18_combout\ : std_logic;
SIGNAL \inst|Mux1~19_combout\ : std_logic;
SIGNAL \inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst|Add13~16_combout\ : std_logic;
SIGNAL \inst|Add11~16_combout\ : std_logic;
SIGNAL \inst|Mux1~10_combout\ : std_logic;
SIGNAL \inst|F9~33_combout\ : std_logic;
SIGNAL \inst|Mux1~11_combout\ : std_logic;
SIGNAL \inst|Mux1~9_combout\ : std_logic;
SIGNAL \inst|Mux1~6_combout\ : std_logic;
SIGNAL \inst|Mux1~3_combout\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Mux1~4_combout\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|Mux1~5_combout\ : std_logic;
SIGNAL \inst|Mux1~7_combout\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|F9~32_combout\ : std_logic;
SIGNAL \inst|Mux1~8_combout\ : std_logic;
SIGNAL \inst|Mux1~12_combout\ : std_logic;
SIGNAL \inst|Add17~14_combout\ : std_logic;
SIGNAL \inst|Add15~16_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|Mux1~20_combout\ : std_logic;
SIGNAL \inst|Mux1~26_combout\ : std_logic;
SIGNAL \inst|Add4~14_combout\ : std_logic;
SIGNAL \inst|Mux2~16_combout\ : std_logic;
SIGNAL \inst|Add6~14_combout\ : std_logic;
SIGNAL \inst|Mux2~17_combout\ : std_logic;
SIGNAL \inst|Add8~14_combout\ : std_logic;
SIGNAL \inst|Add10~12_combout\ : std_logic;
SIGNAL \inst|Mux2~14_combout\ : std_logic;
SIGNAL \inst|Mux2~15_combout\ : std_logic;
SIGNAL \inst|Mux2~18_combout\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|Mux2~2_combout\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst|Mux2~3_combout\ : std_logic;
SIGNAL \inst|Add15~14_combout\ : std_logic;
SIGNAL \inst|Mux2~4_combout\ : std_logic;
SIGNAL \inst|Add17~12_combout\ : std_logic;
SIGNAL \inst|Mux2~5_combout\ : std_logic;
SIGNAL \inst|F9~34_combout\ : std_logic;
SIGNAL \inst|Add13~14_combout\ : std_logic;
SIGNAL \inst|Add11~14_combout\ : std_logic;
SIGNAL \inst|Mux2~6_combout\ : std_logic;
SIGNAL \inst|Mux2~7_combout\ : std_logic;
SIGNAL \inst|Mux2~8_combout\ : std_logic;
SIGNAL \inst|Add18~14_combout\ : std_logic;
SIGNAL \inst|Add22~12_combout\ : std_logic;
SIGNAL \inst|Add20~14_combout\ : std_logic;
SIGNAL \inst|Mux2~9_combout\ : std_logic;
SIGNAL \inst|Mux2~10_combout\ : std_logic;
SIGNAL \inst|Mux2~11_combout\ : std_logic;
SIGNAL \inst|Mux2~12_combout\ : std_logic;
SIGNAL \inst|Mux2~13_combout\ : std_logic;
SIGNAL \inst|Mux2~19_combout\ : std_logic;
SIGNAL \inst|Add4~12_combout\ : std_logic;
SIGNAL \inst|Mux3~16_combout\ : std_logic;
SIGNAL \inst|Add6~12_combout\ : std_logic;
SIGNAL \inst|Mux3~17_combout\ : std_logic;
SIGNAL \inst|Add10~10_combout\ : std_logic;
SIGNAL \inst|Add8~12_combout\ : std_logic;
SIGNAL \inst|Mux3~14_combout\ : std_logic;
SIGNAL \inst|Mux3~15_combout\ : std_logic;
SIGNAL \inst|Mux3~18_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Mux3~2_combout\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Mux3~3_combout\ : std_logic;
SIGNAL \inst|Mux3~4_combout\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Mux3~5_combout\ : std_logic;
SIGNAL \inst|Add13~12_combout\ : std_logic;
SIGNAL \inst|F9~35_combout\ : std_logic;
SIGNAL \inst|Add11~12_combout\ : std_logic;
SIGNAL \inst|Mux3~6_combout\ : std_logic;
SIGNAL \inst|Mux3~7_combout\ : std_logic;
SIGNAL \inst|Mux3~8_combout\ : std_logic;
SIGNAL \inst|Add22~10_combout\ : std_logic;
SIGNAL \inst|Add20~12_combout\ : std_logic;
SIGNAL \inst|Mux3~9_combout\ : std_logic;
SIGNAL \inst|Mux3~10_combout\ : std_logic;
SIGNAL \inst|Mux3~11_combout\ : std_logic;
SIGNAL \inst|Add18~12_combout\ : std_logic;
SIGNAL \inst|Mux3~12_combout\ : std_logic;
SIGNAL \inst|Add17~10_combout\ : std_logic;
SIGNAL \inst|Add15~12_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Mux3~13_combout\ : std_logic;
SIGNAL \inst|Mux3~19_combout\ : std_logic;
SIGNAL \inst|Add17~8_combout\ : std_logic;
SIGNAL \inst|Add15~10_combout\ : std_logic;
SIGNAL \inst|Mux4~4_combout\ : std_logic;
SIGNAL \inst|Mux4~5_combout\ : std_logic;
SIGNAL \inst|Add13~10_combout\ : std_logic;
SIGNAL \inst|F9~36_combout\ : std_logic;
SIGNAL \inst|Add11~10_combout\ : std_logic;
SIGNAL \inst|Mux4~6_combout\ : std_logic;
SIGNAL \inst|Mux4~7_combout\ : std_logic;
SIGNAL \inst|Mux4~8_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Mux4~1_combout\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Mux4~2_combout\ : std_logic;
SIGNAL \inst|Mux4~3_combout\ : std_logic;
SIGNAL \inst|Add20~10_combout\ : std_logic;
SIGNAL \inst|Add22~8_combout\ : std_logic;
SIGNAL \inst|Mux4~9_combout\ : std_logic;
SIGNAL \inst|Mux4~10_combout\ : std_logic;
SIGNAL \inst|Mux4~11_combout\ : std_logic;
SIGNAL \inst|Add18~10_combout\ : std_logic;
SIGNAL \inst|Mux4~12_combout\ : std_logic;
SIGNAL \inst|Mux4~13_combout\ : std_logic;
SIGNAL \inst|Add6~10_combout\ : std_logic;
SIGNAL \inst|Add4~10_combout\ : std_logic;
SIGNAL \inst|Mux4~16_combout\ : std_logic;
SIGNAL \inst|Mux4~17_combout\ : std_logic;
SIGNAL \inst|Add10~8_combout\ : std_logic;
SIGNAL \inst|Add8~10_combout\ : std_logic;
SIGNAL \inst|Mux4~14_combout\ : std_logic;
SIGNAL \inst|Mux4~15_combout\ : std_logic;
SIGNAL \inst|Mux4~18_combout\ : std_logic;
SIGNAL \inst|Mux4~19_combout\ : std_logic;
SIGNAL \inst|Add4~8_combout\ : std_logic;
SIGNAL \inst|Mux5~16_combout\ : std_logic;
SIGNAL \inst|Add6~8_combout\ : std_logic;
SIGNAL \inst|Mux5~17_combout\ : std_logic;
SIGNAL \inst|Add10~6_combout\ : std_logic;
SIGNAL \inst|Add8~8_combout\ : std_logic;
SIGNAL \inst|Mux5~14_combout\ : std_logic;
SIGNAL \inst|Mux5~15_combout\ : std_logic;
SIGNAL \inst|Mux5~18_combout\ : std_logic;
SIGNAL \inst|Add15~8_combout\ : std_logic;
SIGNAL \inst|Add17~6_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Mux5~1_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Mux5~2_combout\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Mux5~3_combout\ : std_logic;
SIGNAL \inst|Mux5~4_combout\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Mux5~5_combout\ : std_logic;
SIGNAL \inst|Add11~8_combout\ : std_logic;
SIGNAL \inst|Mux5~6_combout\ : std_logic;
SIGNAL \inst|F9~37_combout\ : std_logic;
SIGNAL \inst|Add13~8_combout\ : std_logic;
SIGNAL \inst|Mux5~7_combout\ : std_logic;
SIGNAL \inst|Mux5~8_combout\ : std_logic;
SIGNAL \inst|Add22~6_combout\ : std_logic;
SIGNAL \inst|Add20~8_combout\ : std_logic;
SIGNAL \inst|Mux5~9_combout\ : std_logic;
SIGNAL \inst|Mux5~10_combout\ : std_logic;
SIGNAL \inst|Mux5~11_combout\ : std_logic;
SIGNAL \inst|Add18~8_combout\ : std_logic;
SIGNAL \inst|Mux5~12_combout\ : std_logic;
SIGNAL \inst|Mux5~13_combout\ : std_logic;
SIGNAL \inst|Mux5~19_combout\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux6~1_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Mux6~2_combout\ : std_logic;
SIGNAL \inst|Mux6~3_combout\ : std_logic;
SIGNAL \inst|Add22~4_combout\ : std_logic;
SIGNAL \inst|Add20~6_combout\ : std_logic;
SIGNAL \inst|Mux6~9_combout\ : std_logic;
SIGNAL \inst|Mux6~10_combout\ : std_logic;
SIGNAL \inst|Mux6~11_combout\ : std_logic;
SIGNAL \inst|Add18~6_combout\ : std_logic;
SIGNAL \inst|Mux6~12_combout\ : std_logic;
SIGNAL \inst|Add13~6_combout\ : std_logic;
SIGNAL \inst|F9~38_combout\ : std_logic;
SIGNAL \inst|Add11~6_combout\ : std_logic;
SIGNAL \inst|Mux6~6_combout\ : std_logic;
SIGNAL \inst|Mux6~7_combout\ : std_logic;
SIGNAL \inst|Add15~6_combout\ : std_logic;
SIGNAL \inst|Add17~4_combout\ : std_logic;
SIGNAL \inst|Mux6~4_combout\ : std_logic;
SIGNAL \inst|Mux6~5_combout\ : std_logic;
SIGNAL \inst|Mux6~8_combout\ : std_logic;
SIGNAL \inst|Mux6~13_combout\ : std_logic;
SIGNAL \inst|Add4~6_combout\ : std_logic;
SIGNAL \inst|Mux6~16_combout\ : std_logic;
SIGNAL \inst|Add6~6_combout\ : std_logic;
SIGNAL \inst|Mux6~17_combout\ : std_logic;
SIGNAL \inst|Add10~4_combout\ : std_logic;
SIGNAL \inst|Add8~6_combout\ : std_logic;
SIGNAL \inst|Mux6~14_combout\ : std_logic;
SIGNAL \inst|Mux6~15_combout\ : std_logic;
SIGNAL \inst|Mux6~18_combout\ : std_logic;
SIGNAL \inst|Mux6~19_combout\ : std_logic;
SIGNAL \inst|Add15~4_combout\ : std_logic;
SIGNAL \inst|Add17~2_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|Mux7~1_combout\ : std_logic;
SIGNAL \inst|Add20~4_combout\ : std_logic;
SIGNAL \inst|Add22~2_combout\ : std_logic;
SIGNAL \inst|Mux7~9_combout\ : std_logic;
SIGNAL \inst|Mux7~10_combout\ : std_logic;
SIGNAL \inst|Mux7~11_combout\ : std_logic;
SIGNAL \inst|Add18~4_combout\ : std_logic;
SIGNAL \inst|Mux7~12_combout\ : std_logic;
SIGNAL \inst|F9~39_combout\ : std_logic;
SIGNAL \inst|Add13~4_combout\ : std_logic;
SIGNAL \inst|Add11~4_combout\ : std_logic;
SIGNAL \inst|Mux7~6_combout\ : std_logic;
SIGNAL \inst|Mux7~7_combout\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Mux7~2_combout\ : std_logic;
SIGNAL \inst|Mux7~3_combout\ : std_logic;
SIGNAL \inst|Mux7~4_combout\ : std_logic;
SIGNAL \inst|Mux7~5_combout\ : std_logic;
SIGNAL \inst|Mux7~8_combout\ : std_logic;
SIGNAL \inst|Mux7~13_combout\ : std_logic;
SIGNAL \inst|Add6~4_combout\ : std_logic;
SIGNAL \inst|Add4~4_combout\ : std_logic;
SIGNAL \inst|Mux7~16_combout\ : std_logic;
SIGNAL \inst|Mux7~17_combout\ : std_logic;
SIGNAL \inst|Add10~2_combout\ : std_logic;
SIGNAL \inst|Add8~4_combout\ : std_logic;
SIGNAL \inst|Mux7~14_combout\ : std_logic;
SIGNAL \inst|Mux7~15_combout\ : std_logic;
SIGNAL \inst|Mux7~18_combout\ : std_logic;
SIGNAL \inst|Mux7~19_combout\ : std_logic;
SIGNAL \inst|Add20~2_combout\ : std_logic;
SIGNAL \inst|Add22~0_combout\ : std_logic;
SIGNAL \inst|Mux8~9_combout\ : std_logic;
SIGNAL \inst|Mux8~10_combout\ : std_logic;
SIGNAL \inst|Mux8~11_combout\ : std_logic;
SIGNAL \inst|Add18~2_combout\ : std_logic;
SIGNAL \inst|Mux8~12_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Mux8~2_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Mux8~1_combout\ : std_logic;
SIGNAL \inst|Mux8~3_combout\ : std_logic;
SIGNAL \inst|Add17~0_combout\ : std_logic;
SIGNAL \inst|Add15~2_combout\ : std_logic;
SIGNAL \inst|Mux8~4_combout\ : std_logic;
SIGNAL \inst|Mux8~5_combout\ : std_logic;
SIGNAL \inst|Add13~2_combout\ : std_logic;
SIGNAL \inst|F9~40_combout\ : std_logic;
SIGNAL \inst|Add11~2_combout\ : std_logic;
SIGNAL \inst|Mux8~6_combout\ : std_logic;
SIGNAL \inst|Mux8~7_combout\ : std_logic;
SIGNAL \inst|Mux8~8_combout\ : std_logic;
SIGNAL \inst|Mux8~13_combout\ : std_logic;
SIGNAL \inst|Add10~0_combout\ : std_logic;
SIGNAL \inst|Add8~2_combout\ : std_logic;
SIGNAL \inst|Mux8~14_combout\ : std_logic;
SIGNAL \inst|Mux8~15_combout\ : std_logic;
SIGNAL \inst|Add6~2_combout\ : std_logic;
SIGNAL \inst|Add4~2_combout\ : std_logic;
SIGNAL \inst|Mux8~16_combout\ : std_logic;
SIGNAL \inst|Mux8~17_combout\ : std_logic;
SIGNAL \inst|Mux8~18_combout\ : std_logic;
SIGNAL \inst|Mux8~19_combout\ : std_logic;
SIGNAL \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);

BEGIN

CN4 <= ww_CN4;
ww_M <= M;
ww_CN <= CN;
A <= ww_A;
ww_A0_B1 <= A0_B1;
\ww_IN\ <= \IN\;
B <= ww_B;
S <= ww_S;
ww_Sclk <= Sclk;
F <= ww_F;
ww_A0_B2 <= A0_B2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X11_Y24_N16
\CN4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux0~17_combout\,
	devoe => ww_devoe,
	o => \CN4~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\A[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|19~combout\,
	devoe => ww_devoe,
	o => \A[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\A[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|18~combout\,
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\A[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|17~combout\,
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\A[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|16~combout\,
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\A[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|15~combout\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\A[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|14~combout\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\A[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|13~combout\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\A[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|12~combout\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|19~combout\,
	devoe => ww_devoe,
	o => \B[7]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|18~combout\,
	devoe => ww_devoe,
	o => \B[6]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|17~combout\,
	devoe => ww_devoe,
	o => \B[5]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|16~combout\,
	devoe => ww_devoe,
	o => \B[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|15~combout\,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|14~combout\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|13~combout\,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|12~combout\,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\F[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux1~26_combout\,
	devoe => ww_devoe,
	o => \F[7]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\F[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux2~19_combout\,
	devoe => ww_devoe,
	o => \F[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\F[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux3~19_combout\,
	devoe => ww_devoe,
	o => \F[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\F[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux4~19_combout\,
	devoe => ww_devoe,
	o => \F[4]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\F[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux5~19_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\F[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux6~19_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\F[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux7~19_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X34_Y18_N23
\F[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux8~19_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOIBUF_X34_Y3_N22
\Sclk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sclk,
	o => \Sclk~input_o\);

-- Location: LCCOMB_X31_Y3_N8
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X31_Y3_N9
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~input_o\,
	d => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X31_Y3_N10
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X31_Y3_N11
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~input_o\,
	d => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: IOIBUF_X34_Y9_N15
\M~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\CN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CN,
	o => \CN~input_o\);

-- Location: LCCOMB_X31_Y3_N12
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X31_Y3_N13
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~input_o\,
	d => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X31_Y3_N14
\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) $ (\inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	cin => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\);

-- Location: FF_X31_Y3_N15
\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Sclk~input_o\,
	d => \inst7|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: IOIBUF_X1_Y0_N15
\IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(7),
	o => \IN[7]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\A0_B1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0_B1,
	o => \A0_B1~input_o\);

-- Location: LCCOMB_X25_Y1_N4
\inst1|19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|19~combout\ = (\A0_B1~input_o\ & ((\inst1|19~combout\))) # (!\A0_B1~input_o\ & (\IN[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN[7]~input_o\,
	datac => \inst1|19~combout\,
	datad => \A0_B1~input_o\,
	combout => \inst1|19~combout\);

-- Location: LCCOMB_X25_Y1_N6
\inst2|19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|19~combout\ = (\A0_B1~input_o\ & ((\IN[7]~input_o\))) # (!\A0_B1~input_o\ & (\inst2|19~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|19~combout\,
	datab => \IN[7]~input_o\,
	datad => \A0_B1~input_o\,
	combout => \inst2|19~combout\);

-- Location: IOIBUF_X3_Y0_N1
\IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(6),
	o => \IN[6]~input_o\);

-- Location: LCCOMB_X24_Y2_N30
\inst2|18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|18~combout\ = (\A0_B1~input_o\ & (\IN[6]~input_o\)) # (!\A0_B1~input_o\ & ((\inst2|18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN[6]~input_o\,
	datac => \inst2|18~combout\,
	datad => \A0_B1~input_o\,
	combout => \inst2|18~combout\);

-- Location: LCCOMB_X24_Y2_N20
\inst1|18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|18~combout\ = (\A0_B1~input_o\ & (\inst1|18~combout\)) # (!\A0_B1~input_o\ & ((\IN[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|18~combout\,
	datac => \IN[6]~input_o\,
	datad => \A0_B1~input_o\,
	combout => \inst1|18~combout\);

-- Location: IOIBUF_X34_Y9_N22
\IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(5),
	o => \IN[5]~input_o\);

-- Location: LCCOMB_X24_Y2_N28
\inst1|17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|17~combout\ = (\A0_B1~input_o\ & ((\inst1|17~combout\))) # (!\A0_B1~input_o\ & (\IN[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN[5]~input_o\,
	datab => \inst1|17~combout\,
	datad => \A0_B1~input_o\,
	combout => \inst1|17~combout\);

-- Location: LCCOMB_X24_Y2_N26
\inst2|17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|17~combout\ = (\A0_B1~input_o\ & (\IN[5]~input_o\)) # (!\A0_B1~input_o\ & ((\inst2|17~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN[5]~input_o\,
	datac => \inst2|17~combout\,
	datad => \A0_B1~input_o\,
	combout => \inst2|17~combout\);

-- Location: IOIBUF_X34_Y4_N15
\IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(4),
	o => \IN[4]~input_o\);

-- Location: LCCOMB_X26_Y1_N10
\inst2|16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|16~combout\ = (\A0_B1~input_o\ & (\IN[4]~input_o\)) # (!\A0_B1~input_o\ & ((\inst2|16~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN[4]~input_o\,
	datac => \A0_B1~input_o\,
	datad => \inst2|16~combout\,
	combout => \inst2|16~combout\);

-- Location: LCCOMB_X26_Y1_N8
\inst1|16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|16~combout\ = (\A0_B1~input_o\ & ((\inst1|16~combout\))) # (!\A0_B1~input_o\ & (\IN[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN[4]~input_o\,
	datac => \inst1|16~combout\,
	datad => \A0_B1~input_o\,
	combout => \inst1|16~combout\);

-- Location: IOIBUF_X34_Y2_N15
\IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(3),
	o => \IN[3]~input_o\);

-- Location: LCCOMB_X26_Y3_N16
\inst1|15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|15~combout\ = (\A0_B1~input_o\ & ((\inst1|15~combout\))) # (!\A0_B1~input_o\ & (\IN[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN[3]~input_o\,
	datac => \A0_B1~input_o\,
	datad => \inst1|15~combout\,
	combout => \inst1|15~combout\);

-- Location: LCCOMB_X26_Y3_N6
\inst2|15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|15~combout\ = (\A0_B1~input_o\ & (\IN[3]~input_o\)) # (!\A0_B1~input_o\ & ((\inst2|15~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN[3]~input_o\,
	datac => \A0_B1~input_o\,
	datad => \inst2|15~combout\,
	combout => \inst2|15~combout\);

-- Location: IOIBUF_X32_Y0_N22
\IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(2),
	o => \IN[2]~input_o\);

-- Location: LCCOMB_X26_Y1_N16
\inst1|14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|14~combout\ = (\A0_B1~input_o\ & ((\inst1|14~combout\))) # (!\A0_B1~input_o\ & (\IN[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN[2]~input_o\,
	datac => \A0_B1~input_o\,
	datad => \inst1|14~combout\,
	combout => \inst1|14~combout\);

-- Location: LCCOMB_X26_Y1_N18
\inst2|14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|14~combout\ = (\A0_B1~input_o\ & (\IN[2]~input_o\)) # (!\A0_B1~input_o\ & ((\inst2|14~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN[2]~input_o\,
	datac => \A0_B1~input_o\,
	datad => \inst2|14~combout\,
	combout => \inst2|14~combout\);

-- Location: IOIBUF_X28_Y0_N22
\IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(1),
	o => \IN[1]~input_o\);

-- Location: LCCOMB_X24_Y1_N12
\inst2|13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|13~combout\ = (\A0_B1~input_o\ & ((\IN[1]~input_o\))) # (!\A0_B1~input_o\ & (\inst2|13~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|13~combout\,
	datac => \IN[1]~input_o\,
	datad => \A0_B1~input_o\,
	combout => \inst2|13~combout\);

-- Location: LCCOMB_X24_Y1_N14
\inst1|13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|13~combout\ = (\A0_B1~input_o\ & ((\inst1|13~combout\))) # (!\A0_B1~input_o\ & (\IN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN[1]~input_o\,
	datac => \inst1|13~combout\,
	datad => \A0_B1~input_o\,
	combout => \inst1|13~combout\);

-- Location: IOIBUF_X23_Y0_N8
\IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_IN\(0),
	o => \IN[0]~input_o\);

-- Location: LCCOMB_X24_Y1_N30
\inst1|12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|12~combout\ = (\A0_B1~input_o\ & ((\inst1|12~combout\))) # (!\A0_B1~input_o\ & (\IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IN[0]~input_o\,
	datac => \inst1|12~combout\,
	datad => \A0_B1~input_o\,
	combout => \inst1|12~combout\);

-- Location: LCCOMB_X24_Y1_N28
\inst2|12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|12~combout\ = (\A0_B1~input_o\ & ((\IN[0]~input_o\))) # (!\A0_B1~input_o\ & (\inst2|12~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|12~combout\,
	datac => \IN[0]~input_o\,
	datad => \A0_B1~input_o\,
	combout => \inst2|12~combout\);

-- Location: LCCOMB_X30_Y1_N24
\inst|F9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~14_combout\ = (\inst1|12~combout\ & \inst2|12~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|12~combout\,
	datad => \inst2|12~combout\,
	combout => \inst|F9~14_combout\);

-- Location: LCCOMB_X28_Y3_N0
\inst|Add17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add17~0_combout\ = (\CN~input_o\ & (\inst|F9~14_combout\ $ (VCC))) # (!\CN~input_o\ & ((\inst|F9~14_combout\) # (GND)))
-- \inst|Add17~1\ = CARRY((\inst|F9~14_combout\) # (!\CN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CN~input_o\,
	datab => \inst|F9~14_combout\,
	datad => VCC,
	combout => \inst|Add17~0_combout\,
	cout => \inst|Add17~1\);

-- Location: LCCOMB_X28_Y3_N2
\inst|Add17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add17~2_combout\ = (\inst2|13~combout\ & ((\inst1|13~combout\ & (\inst|Add17~1\ & VCC)) # (!\inst1|13~combout\ & (!\inst|Add17~1\)))) # (!\inst2|13~combout\ & (((!\inst|Add17~1\))))
-- \inst|Add17~3\ = CARRY((!\inst|Add17~1\ & ((!\inst1|13~combout\) # (!\inst2|13~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|13~combout\,
	datab => \inst1|13~combout\,
	datad => VCC,
	cin => \inst|Add17~1\,
	combout => \inst|Add17~2_combout\,
	cout => \inst|Add17~3\);

-- Location: LCCOMB_X28_Y3_N4
\inst|Add17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add17~4_combout\ = (\inst|Add17~3\ & ((((\inst1|14~combout\ & \inst2|14~combout\))))) # (!\inst|Add17~3\ & (((\inst1|14~combout\ & \inst2|14~combout\)) # (GND)))
-- \inst|Add17~5\ = CARRY(((\inst1|14~combout\ & \inst2|14~combout\)) # (!\inst|Add17~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|14~combout\,
	datab => \inst2|14~combout\,
	datad => VCC,
	cin => \inst|Add17~3\,
	combout => \inst|Add17~4_combout\,
	cout => \inst|Add17~5\);

-- Location: LCCOMB_X28_Y3_N6
\inst|Add17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add17~6_combout\ = (\inst1|15~combout\ & ((\inst2|15~combout\ & (\inst|Add17~5\ & VCC)) # (!\inst2|15~combout\ & (!\inst|Add17~5\)))) # (!\inst1|15~combout\ & (((!\inst|Add17~5\))))
-- \inst|Add17~7\ = CARRY((!\inst|Add17~5\ & ((!\inst2|15~combout\) # (!\inst1|15~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|15~combout\,
	datab => \inst2|15~combout\,
	datad => VCC,
	cin => \inst|Add17~5\,
	combout => \inst|Add17~6_combout\,
	cout => \inst|Add17~7\);

-- Location: LCCOMB_X28_Y3_N8
\inst|Add17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add17~8_combout\ = (\inst|Add17~7\ & ((((\inst2|16~combout\ & \inst1|16~combout\))))) # (!\inst|Add17~7\ & (((\inst2|16~combout\ & \inst1|16~combout\)) # (GND)))
-- \inst|Add17~9\ = CARRY(((\inst2|16~combout\ & \inst1|16~combout\)) # (!\inst|Add17~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|16~combout\,
	datab => \inst1|16~combout\,
	datad => VCC,
	cin => \inst|Add17~7\,
	combout => \inst|Add17~8_combout\,
	cout => \inst|Add17~9\);

-- Location: LCCOMB_X28_Y3_N10
\inst|Add17~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add17~10_combout\ = (\inst1|17~combout\ & ((\inst2|17~combout\ & (\inst|Add17~9\ & VCC)) # (!\inst2|17~combout\ & (!\inst|Add17~9\)))) # (!\inst1|17~combout\ & (((!\inst|Add17~9\))))
-- \inst|Add17~11\ = CARRY((!\inst|Add17~9\ & ((!\inst2|17~combout\) # (!\inst1|17~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|17~combout\,
	datab => \inst2|17~combout\,
	datad => VCC,
	cin => \inst|Add17~9\,
	combout => \inst|Add17~10_combout\,
	cout => \inst|Add17~11\);

-- Location: LCCOMB_X28_Y3_N12
\inst|Add17~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add17~12_combout\ = (\inst|Add17~11\ & ((((\inst2|18~combout\ & \inst1|18~combout\))))) # (!\inst|Add17~11\ & (((\inst2|18~combout\ & \inst1|18~combout\)) # (GND)))
-- \inst|Add17~13\ = CARRY(((\inst2|18~combout\ & \inst1|18~combout\)) # (!\inst|Add17~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|18~combout\,
	datab => \inst1|18~combout\,
	datad => VCC,
	cin => \inst|Add17~11\,
	combout => \inst|Add17~12_combout\,
	cout => \inst|Add17~13\);

-- Location: LCCOMB_X28_Y3_N14
\inst|Add17~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add17~14_combout\ = (\inst1|19~combout\ & ((\inst2|19~combout\ & (\inst|Add17~13\ & VCC)) # (!\inst2|19~combout\ & (!\inst|Add17~13\)))) # (!\inst1|19~combout\ & (((!\inst|Add17~13\))))
-- \inst|Add17~15\ = CARRY((!\inst|Add17~13\ & ((!\inst2|19~combout\) # (!\inst1|19~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|19~combout\,
	datab => \inst2|19~combout\,
	datad => VCC,
	cin => \inst|Add17~13\,
	combout => \inst|Add17~14_combout\,
	cout => \inst|Add17~15\);

-- Location: LCCOMB_X28_Y3_N16
\inst|Add17~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add17~16_combout\ = \inst|Add17~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add17~15\,
	combout => \inst|Add17~16_combout\);

-- Location: LCCOMB_X28_Y3_N18
\inst|Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~18_combout\ = (!\M~input_o\ & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst|Add17~16_combout\))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\CN~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CN~input_o\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \M~input_o\,
	datad => \inst|Add17~16_combout\,
	combout => \inst|Mux0~18_combout\);

-- Location: LCCOMB_X31_Y2_N4
\inst|Add22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add22~0_combout\ = (\CN~input_o\ & (\inst1|12~combout\ $ (VCC))) # (!\CN~input_o\ & ((\inst1|12~combout\) # (GND)))
-- \inst|Add22~1\ = CARRY((\inst1|12~combout\) # (!\CN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CN~input_o\,
	datab => \inst1|12~combout\,
	datad => VCC,
	combout => \inst|Add22~0_combout\,
	cout => \inst|Add22~1\);

-- Location: LCCOMB_X31_Y2_N6
\inst|Add22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add22~2_combout\ = (\inst1|13~combout\ & (\inst|Add22~1\ & VCC)) # (!\inst1|13~combout\ & (!\inst|Add22~1\))
-- \inst|Add22~3\ = CARRY((!\inst1|13~combout\ & !\inst|Add22~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|13~combout\,
	datad => VCC,
	cin => \inst|Add22~1\,
	combout => \inst|Add22~2_combout\,
	cout => \inst|Add22~3\);

-- Location: LCCOMB_X31_Y2_N8
\inst|Add22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add22~4_combout\ = (\inst1|14~combout\ & ((GND) # (!\inst|Add22~3\))) # (!\inst1|14~combout\ & (\inst|Add22~3\ $ (GND)))
-- \inst|Add22~5\ = CARRY((\inst1|14~combout\) # (!\inst|Add22~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|14~combout\,
	datad => VCC,
	cin => \inst|Add22~3\,
	combout => \inst|Add22~4_combout\,
	cout => \inst|Add22~5\);

-- Location: LCCOMB_X31_Y2_N10
\inst|Add22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add22~6_combout\ = (\inst1|15~combout\ & (\inst|Add22~5\ & VCC)) # (!\inst1|15~combout\ & (!\inst|Add22~5\))
-- \inst|Add22~7\ = CARRY((!\inst1|15~combout\ & !\inst|Add22~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|15~combout\,
	datad => VCC,
	cin => \inst|Add22~5\,
	combout => \inst|Add22~6_combout\,
	cout => \inst|Add22~7\);

-- Location: LCCOMB_X31_Y2_N12
\inst|Add22~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add22~8_combout\ = (\inst1|16~combout\ & ((GND) # (!\inst|Add22~7\))) # (!\inst1|16~combout\ & (\inst|Add22~7\ $ (GND)))
-- \inst|Add22~9\ = CARRY((\inst1|16~combout\) # (!\inst|Add22~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|16~combout\,
	datad => VCC,
	cin => \inst|Add22~7\,
	combout => \inst|Add22~8_combout\,
	cout => \inst|Add22~9\);

-- Location: LCCOMB_X31_Y2_N14
\inst|Add22~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add22~10_combout\ = (\inst1|17~combout\ & (\inst|Add22~9\ & VCC)) # (!\inst1|17~combout\ & (!\inst|Add22~9\))
-- \inst|Add22~11\ = CARRY((!\inst1|17~combout\ & !\inst|Add22~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|17~combout\,
	datad => VCC,
	cin => \inst|Add22~9\,
	combout => \inst|Add22~10_combout\,
	cout => \inst|Add22~11\);

-- Location: LCCOMB_X31_Y2_N16
\inst|Add22~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add22~12_combout\ = (\inst1|18~combout\ & ((GND) # (!\inst|Add22~11\))) # (!\inst1|18~combout\ & (\inst|Add22~11\ $ (GND)))
-- \inst|Add22~13\ = CARRY((\inst1|18~combout\) # (!\inst|Add22~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|18~combout\,
	datad => VCC,
	cin => \inst|Add22~11\,
	combout => \inst|Add22~12_combout\,
	cout => \inst|Add22~13\);

-- Location: LCCOMB_X31_Y2_N18
\inst|Add22~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add22~14_combout\ = (\inst1|19~combout\ & (\inst|Add22~13\ & VCC)) # (!\inst1|19~combout\ & (!\inst|Add22~13\))
-- \inst|Add22~15\ = CARRY((!\inst1|19~combout\ & !\inst|Add22~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|19~combout\,
	datad => VCC,
	cin => \inst|Add22~13\,
	combout => \inst|Add22~14_combout\,
	cout => \inst|Add22~15\);

-- Location: LCCOMB_X31_Y2_N20
\inst|Add22~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add22~16_combout\ = \inst|Add22~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add22~15\,
	combout => \inst|Add22~16_combout\);

-- Location: LCCOMB_X30_Y1_N30
\inst|F9~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~15_combout\ = (!\inst1|12~combout\ & \inst2|12~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|12~combout\,
	datad => \inst2|12~combout\,
	combout => \inst|F9~15_combout\);

-- Location: LCCOMB_X25_Y1_N8
\inst|Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~0_combout\ = (\CN~input_o\ & (\inst|F9~15_combout\ $ (GND))) # (!\CN~input_o\ & ((GND) # (!\inst|F9~15_combout\)))
-- \inst|Add10~1\ = CARRY((!\inst|F9~15_combout\) # (!\CN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CN~input_o\,
	datab => \inst|F9~15_combout\,
	datad => VCC,
	combout => \inst|Add10~0_combout\,
	cout => \inst|Add10~1\);

-- Location: LCCOMB_X25_Y1_N10
\inst|Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~2_combout\ = (\inst|Add10~1\ & (((\inst1|13~combout\) # (!\inst2|13~combout\)))) # (!\inst|Add10~1\ & (!\inst1|13~combout\ & (\inst2|13~combout\)))
-- \inst|Add10~3\ = CARRY((!\inst1|13~combout\ & (\inst2|13~combout\ & !\inst|Add10~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|13~combout\,
	datab => \inst2|13~combout\,
	datad => VCC,
	cin => \inst|Add10~1\,
	combout => \inst|Add10~2_combout\,
	cout => \inst|Add10~3\);

-- Location: LCCOMB_X25_Y1_N12
\inst|Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~4_combout\ = (\inst|Add10~3\ & ((((\inst1|14~combout\) # (!\inst2|14~combout\))))) # (!\inst|Add10~3\ & (((\inst1|14~combout\) # (GND)) # (!\inst2|14~combout\)))
-- \inst|Add10~5\ = CARRY(((\inst1|14~combout\) # (!\inst|Add10~3\)) # (!\inst2|14~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|14~combout\,
	datab => \inst1|14~combout\,
	datad => VCC,
	cin => \inst|Add10~3\,
	combout => \inst|Add10~4_combout\,
	cout => \inst|Add10~5\);

-- Location: LCCOMB_X25_Y1_N14
\inst|Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~6_combout\ = (\inst|Add10~5\ & (((\inst1|15~combout\) # (!\inst2|15~combout\)))) # (!\inst|Add10~5\ & (!\inst1|15~combout\ & (\inst2|15~combout\)))
-- \inst|Add10~7\ = CARRY((!\inst1|15~combout\ & (\inst2|15~combout\ & !\inst|Add10~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|15~combout\,
	datab => \inst2|15~combout\,
	datad => VCC,
	cin => \inst|Add10~5\,
	combout => \inst|Add10~6_combout\,
	cout => \inst|Add10~7\);

-- Location: LCCOMB_X25_Y1_N16
\inst|Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~8_combout\ = (\inst|Add10~7\ & ((((\inst1|16~combout\) # (!\inst2|16~combout\))))) # (!\inst|Add10~7\ & ((\inst1|16~combout\) # ((GND) # (!\inst2|16~combout\))))
-- \inst|Add10~9\ = CARRY((\inst1|16~combout\) # ((!\inst|Add10~7\) # (!\inst2|16~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|16~combout\,
	datab => \inst2|16~combout\,
	datad => VCC,
	cin => \inst|Add10~7\,
	combout => \inst|Add10~8_combout\,
	cout => \inst|Add10~9\);

-- Location: LCCOMB_X25_Y1_N18
\inst|Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~10_combout\ = (\inst|Add10~9\ & (((\inst1|17~combout\) # (!\inst2|17~combout\)))) # (!\inst|Add10~9\ & (\inst2|17~combout\ & (!\inst1|17~combout\)))
-- \inst|Add10~11\ = CARRY((\inst2|17~combout\ & (!\inst1|17~combout\ & !\inst|Add10~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|17~combout\,
	datab => \inst1|17~combout\,
	datad => VCC,
	cin => \inst|Add10~9\,
	combout => \inst|Add10~10_combout\,
	cout => \inst|Add10~11\);

-- Location: LCCOMB_X25_Y1_N20
\inst|Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~12_combout\ = (\inst|Add10~11\ & ((((\inst1|18~combout\) # (!\inst2|18~combout\))))) # (!\inst|Add10~11\ & (((\inst1|18~combout\) # (GND)) # (!\inst2|18~combout\)))
-- \inst|Add10~13\ = CARRY(((\inst1|18~combout\) # (!\inst|Add10~11\)) # (!\inst2|18~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|18~combout\,
	datab => \inst1|18~combout\,
	datad => VCC,
	cin => \inst|Add10~11\,
	combout => \inst|Add10~12_combout\,
	cout => \inst|Add10~13\);

-- Location: LCCOMB_X25_Y1_N22
\inst|Add10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~14_combout\ = (\inst|Add10~13\ & (((\inst1|19~combout\) # (!\inst2|19~combout\)))) # (!\inst|Add10~13\ & (\inst2|19~combout\ & (!\inst1|19~combout\)))
-- \inst|Add10~15\ = CARRY((\inst2|19~combout\ & (!\inst1|19~combout\ & !\inst|Add10~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|19~combout\,
	datab => \inst1|19~combout\,
	datad => VCC,
	cin => \inst|Add10~13\,
	combout => \inst|Add10~14_combout\,
	cout => \inst|Add10~15\);

-- Location: LCCOMB_X25_Y1_N24
\inst|Add10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add10~16_combout\ = !\inst|Add10~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add10~15\,
	combout => \inst|Add10~16_combout\);

-- Location: LCCOMB_X31_Y3_N30
\inst|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~15_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\inst|Add22~16_combout\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst|Add10~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add22~16_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst|Add10~16_combout\,
	combout => \inst|Mux0~15_combout\);

-- Location: LCCOMB_X31_Y3_N4
\inst|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~16_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\M~input_o\ & ((\inst|Mux0~15_combout\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (((\inst|Mux0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \inst|Mux0~18_combout\,
	datac => \inst|Mux0~15_combout\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst|Mux0~16_combout\);

-- Location: LCCOMB_X29_Y1_N8
\inst|Add8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~1_cout\ = CARRY(!\CN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CN~input_o\,
	datad => VCC,
	cout => \inst|Add8~1_cout\);

-- Location: LCCOMB_X29_Y1_N10
\inst|Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~2_combout\ = (\inst2|12~combout\ & ((\inst1|12~combout\ & (!\inst|Add8~1_cout\)) # (!\inst1|12~combout\ & ((\inst|Add8~1_cout\) # (GND))))) # (!\inst2|12~combout\ & ((\inst1|12~combout\ & (\inst|Add8~1_cout\ & VCC)) # (!\inst1|12~combout\ & 
-- (!\inst|Add8~1_cout\))))
-- \inst|Add8~3\ = CARRY((\inst2|12~combout\ & ((!\inst|Add8~1_cout\) # (!\inst1|12~combout\))) # (!\inst2|12~combout\ & (!\inst1|12~combout\ & !\inst|Add8~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|12~combout\,
	datab => \inst1|12~combout\,
	datad => VCC,
	cin => \inst|Add8~1_cout\,
	combout => \inst|Add8~2_combout\,
	cout => \inst|Add8~3\);

-- Location: LCCOMB_X29_Y1_N12
\inst|Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~4_combout\ = ((\inst2|13~combout\ $ (\inst1|13~combout\ $ (\inst|Add8~3\)))) # (GND)
-- \inst|Add8~5\ = CARRY((\inst2|13~combout\ & (\inst1|13~combout\ & !\inst|Add8~3\)) # (!\inst2|13~combout\ & ((\inst1|13~combout\) # (!\inst|Add8~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|13~combout\,
	datab => \inst1|13~combout\,
	datad => VCC,
	cin => \inst|Add8~3\,
	combout => \inst|Add8~4_combout\,
	cout => \inst|Add8~5\);

-- Location: LCCOMB_X29_Y1_N14
\inst|Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~6_combout\ = (\inst1|14~combout\ & ((\inst2|14~combout\ & (!\inst|Add8~5\)) # (!\inst2|14~combout\ & (\inst|Add8~5\ & VCC)))) # (!\inst1|14~combout\ & ((\inst2|14~combout\ & ((\inst|Add8~5\) # (GND))) # (!\inst2|14~combout\ & 
-- (!\inst|Add8~5\))))
-- \inst|Add8~7\ = CARRY((\inst1|14~combout\ & (\inst2|14~combout\ & !\inst|Add8~5\)) # (!\inst1|14~combout\ & ((\inst2|14~combout\) # (!\inst|Add8~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|14~combout\,
	datab => \inst2|14~combout\,
	datad => VCC,
	cin => \inst|Add8~5\,
	combout => \inst|Add8~6_combout\,
	cout => \inst|Add8~7\);

-- Location: LCCOMB_X29_Y1_N16
\inst|Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~8_combout\ = ((\inst2|15~combout\ $ (\inst1|15~combout\ $ (\inst|Add8~7\)))) # (GND)
-- \inst|Add8~9\ = CARRY((\inst2|15~combout\ & (\inst1|15~combout\ & !\inst|Add8~7\)) # (!\inst2|15~combout\ & ((\inst1|15~combout\) # (!\inst|Add8~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|15~combout\,
	datab => \inst1|15~combout\,
	datad => VCC,
	cin => \inst|Add8~7\,
	combout => \inst|Add8~8_combout\,
	cout => \inst|Add8~9\);

-- Location: LCCOMB_X29_Y1_N18
\inst|Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~10_combout\ = (\inst1|16~combout\ & ((\inst2|16~combout\ & (!\inst|Add8~9\)) # (!\inst2|16~combout\ & (\inst|Add8~9\ & VCC)))) # (!\inst1|16~combout\ & ((\inst2|16~combout\ & ((\inst|Add8~9\) # (GND))) # (!\inst2|16~combout\ & 
-- (!\inst|Add8~9\))))
-- \inst|Add8~11\ = CARRY((\inst1|16~combout\ & (\inst2|16~combout\ & !\inst|Add8~9\)) # (!\inst1|16~combout\ & ((\inst2|16~combout\) # (!\inst|Add8~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|16~combout\,
	datab => \inst2|16~combout\,
	datad => VCC,
	cin => \inst|Add8~9\,
	combout => \inst|Add8~10_combout\,
	cout => \inst|Add8~11\);

-- Location: LCCOMB_X29_Y1_N20
\inst|Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~12_combout\ = ((\inst2|17~combout\ $ (\inst1|17~combout\ $ (\inst|Add8~11\)))) # (GND)
-- \inst|Add8~13\ = CARRY((\inst2|17~combout\ & (\inst1|17~combout\ & !\inst|Add8~11\)) # (!\inst2|17~combout\ & ((\inst1|17~combout\) # (!\inst|Add8~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|17~combout\,
	datab => \inst1|17~combout\,
	datad => VCC,
	cin => \inst|Add8~11\,
	combout => \inst|Add8~12_combout\,
	cout => \inst|Add8~13\);

-- Location: LCCOMB_X29_Y1_N22
\inst|Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~14_combout\ = (\inst2|18~combout\ & ((\inst1|18~combout\ & (!\inst|Add8~13\)) # (!\inst1|18~combout\ & ((\inst|Add8~13\) # (GND))))) # (!\inst2|18~combout\ & ((\inst1|18~combout\ & (\inst|Add8~13\ & VCC)) # (!\inst1|18~combout\ & 
-- (!\inst|Add8~13\))))
-- \inst|Add8~15\ = CARRY((\inst2|18~combout\ & ((!\inst|Add8~13\) # (!\inst1|18~combout\))) # (!\inst2|18~combout\ & (!\inst1|18~combout\ & !\inst|Add8~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|18~combout\,
	datab => \inst1|18~combout\,
	datad => VCC,
	cin => \inst|Add8~13\,
	combout => \inst|Add8~14_combout\,
	cout => \inst|Add8~15\);

-- Location: LCCOMB_X29_Y1_N24
\inst|Add8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~16_combout\ = ((\inst1|19~combout\ $ (\inst2|19~combout\ $ (\inst|Add8~15\)))) # (GND)
-- \inst|Add8~17\ = CARRY((\inst1|19~combout\ & ((!\inst|Add8~15\) # (!\inst2|19~combout\))) # (!\inst1|19~combout\ & (!\inst2|19~combout\ & !\inst|Add8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|19~combout\,
	datab => \inst2|19~combout\,
	datad => VCC,
	cin => \inst|Add8~15\,
	combout => \inst|Add8~16_combout\,
	cout => \inst|Add8~17\);

-- Location: LCCOMB_X29_Y1_N26
\inst|Add8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add8~18_combout\ = !\inst|Add8~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add8~17\,
	combout => \inst|Add8~18_combout\);

-- Location: LCCOMB_X24_Y3_N4
\inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\inst|F9~15_combout\ & (\CN~input_o\ & VCC)) # (!\inst|F9~15_combout\ & (\CN~input_o\ $ (VCC)))
-- \inst|Add2~1\ = CARRY((!\inst|F9~15_combout\ & \CN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~15_combout\,
	datab => \CN~input_o\,
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X24_Y3_N6
\inst|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst1|13~combout\ & (((!\inst|Add2~1\)))) # (!\inst1|13~combout\ & ((\inst2|13~combout\ & ((\inst|Add2~1\) # (GND))) # (!\inst2|13~combout\ & (!\inst|Add2~1\))))
-- \inst|Add2~3\ = CARRY(((!\inst1|13~combout\ & \inst2|13~combout\)) # (!\inst|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|13~combout\,
	datab => \inst2|13~combout\,
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X24_Y3_N8
\inst|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|Add2~3\ & (((\inst1|14~combout\) # (!\inst2|14~combout\)))) # (!\inst|Add2~3\ & ((((\inst1|14~combout\) # (!\inst2|14~combout\)))))
-- \inst|Add2~5\ = CARRY((!\inst|Add2~3\ & ((\inst1|14~combout\) # (!\inst2|14~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|14~combout\,
	datab => \inst1|14~combout\,
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X24_Y3_N10
\inst|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst2|15~combout\ & ((\inst1|15~combout\ & (!\inst|Add2~5\)) # (!\inst1|15~combout\ & ((\inst|Add2~5\) # (GND))))) # (!\inst2|15~combout\ & (((!\inst|Add2~5\))))
-- \inst|Add2~7\ = CARRY(((\inst2|15~combout\ & !\inst1|15~combout\)) # (!\inst|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|15~combout\,
	datab => \inst1|15~combout\,
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X24_Y3_N12
\inst|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|Add2~7\ & (((\inst1|16~combout\) # (!\inst2|16~combout\)))) # (!\inst|Add2~7\ & ((((\inst1|16~combout\) # (!\inst2|16~combout\)))))
-- \inst|Add2~9\ = CARRY((!\inst|Add2~7\ & ((\inst1|16~combout\) # (!\inst2|16~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|16~combout\,
	datab => \inst1|16~combout\,
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X24_Y3_N14
\inst|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst1|17~combout\ & (((!\inst|Add2~9\)))) # (!\inst1|17~combout\ & ((\inst2|17~combout\ & ((\inst|Add2~9\) # (GND))) # (!\inst2|17~combout\ & (!\inst|Add2~9\))))
-- \inst|Add2~11\ = CARRY(((!\inst1|17~combout\ & \inst2|17~combout\)) # (!\inst|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|17~combout\,
	datab => \inst2|17~combout\,
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: LCCOMB_X24_Y3_N16
\inst|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = (\inst|Add2~11\ & (((\inst1|18~combout\) # (!\inst2|18~combout\)))) # (!\inst|Add2~11\ & ((((\inst1|18~combout\) # (!\inst2|18~combout\)))))
-- \inst|Add2~13\ = CARRY((!\inst|Add2~11\ & ((\inst1|18~combout\) # (!\inst2|18~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|18~combout\,
	datab => \inst1|18~combout\,
	datad => VCC,
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\,
	cout => \inst|Add2~13\);

-- Location: LCCOMB_X24_Y3_N18
\inst|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = (\inst1|19~combout\ & (((!\inst|Add2~13\)))) # (!\inst1|19~combout\ & ((\inst2|19~combout\ & ((\inst|Add2~13\) # (GND))) # (!\inst2|19~combout\ & (!\inst|Add2~13\))))
-- \inst|Add2~15\ = CARRY(((!\inst1|19~combout\ & \inst2|19~combout\)) # (!\inst|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|19~combout\,
	datab => \inst2|19~combout\,
	datad => VCC,
	cin => \inst|Add2~13\,
	combout => \inst|Add2~14_combout\,
	cout => \inst|Add2~15\);

-- Location: LCCOMB_X24_Y3_N20
\inst|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~16_combout\ = \inst|Add2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add2~15\,
	combout => \inst|Add2~16_combout\);

-- Location: LCCOMB_X31_Y3_N16
\inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~2_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\M~input_o\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\M~input_o\ & \inst|Add2~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \M~input_o\,
	datad => \inst|Add2~16_combout\,
	combout => \inst|Mux0~2_combout\);

-- Location: LCCOMB_X31_Y3_N26
\inst|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~3_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # ((\inst|Add8~18_combout\ & !\inst|Mux0~2_combout\)))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (((!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & \inst|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst|Add8~18_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst|Mux0~2_combout\,
	combout => \inst|Mux0~3_combout\);

-- Location: LCCOMB_X25_Y1_N0
\inst|F9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~0_combout\ = (\inst2|19~combout\ & \inst1|19~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|19~combout\,
	datac => \inst1|19~combout\,
	combout => \inst|F9~0_combout\);

-- Location: LCCOMB_X29_Y1_N4
\inst|F9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~1_combout\ = (\inst2|19~combout\ & !\inst1|19~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|19~combout\,
	datad => \inst1|19~combout\,
	combout => \inst|F9~1_combout\);

-- Location: LCCOMB_X28_Y3_N30
\inst|F9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~2_combout\ = (\inst2|18~combout\ & \inst1|18~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|18~combout\,
	datac => \inst1|18~combout\,
	combout => \inst|F9~2_combout\);

-- Location: LCCOMB_X30_Y3_N28
\inst|F9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~3_combout\ = (\inst2|18~combout\ & !\inst1|18~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|18~combout\,
	datad => \inst1|18~combout\,
	combout => \inst|F9~3_combout\);

-- Location: LCCOMB_X29_Y4_N0
\inst|F9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~4_combout\ = (\inst1|17~combout\ & \inst2|17~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|17~combout\,
	datac => \inst2|17~combout\,
	combout => \inst|F9~4_combout\);

-- Location: LCCOMB_X26_Y2_N0
\inst|F9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~5_combout\ = (\inst2|17~combout\ & !\inst1|17~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|17~combout\,
	datad => \inst1|17~combout\,
	combout => \inst|F9~5_combout\);

-- Location: LCCOMB_X24_Y3_N28
\inst|F9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~7_combout\ = (!\inst1|16~combout\ & \inst2|16~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|16~combout\,
	datac => \inst2|16~combout\,
	combout => \inst|F9~7_combout\);

-- Location: LCCOMB_X29_Y4_N2
\inst|F9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~6_combout\ = (\inst2|16~combout\ & \inst1|16~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|16~combout\,
	datad => \inst1|16~combout\,
	combout => \inst|F9~6_combout\);

-- Location: LCCOMB_X26_Y3_N20
\inst|F9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~9_combout\ = (!\inst1|15~combout\ & \inst2|15~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|15~combout\,
	datad => \inst2|15~combout\,
	combout => \inst|F9~9_combout\);

-- Location: LCCOMB_X29_Y4_N28
\inst|F9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~8_combout\ = (\inst1|15~combout\ & \inst2|15~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|15~combout\,
	datac => \inst2|15~combout\,
	combout => \inst|F9~8_combout\);

-- Location: LCCOMB_X29_Y4_N30
\inst|F9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~10_combout\ = (\inst1|14~combout\ & \inst2|14~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|14~combout\,
	datad => \inst2|14~combout\,
	combout => \inst|F9~10_combout\);

-- Location: LCCOMB_X28_Y1_N0
\inst|F9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~11_combout\ = (\inst2|14~combout\ & !\inst1|14~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|14~combout\,
	datad => \inst1|14~combout\,
	combout => \inst|F9~11_combout\);

-- Location: LCCOMB_X29_Y4_N4
\inst|F9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~12_combout\ = (\inst1|13~combout\ & \inst2|13~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|13~combout\,
	datad => \inst2|13~combout\,
	combout => \inst|F9~12_combout\);

-- Location: LCCOMB_X28_Y4_N24
\inst|F9~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~13_combout\ = (\inst2|13~combout\ & !\inst1|13~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|13~combout\,
	datad => \inst1|13~combout\,
	combout => \inst|F9~13_combout\);

-- Location: LCCOMB_X29_Y3_N4
\inst|Add15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add15~1_cout\ = CARRY(\CN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CN~input_o\,
	datad => VCC,
	cout => \inst|Add15~1_cout\);

-- Location: LCCOMB_X29_Y3_N6
\inst|Add15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add15~2_combout\ = (\inst|F9~14_combout\ & ((\inst|F9~15_combout\ & (!\inst|Add15~1_cout\)) # (!\inst|F9~15_combout\ & (\inst|Add15~1_cout\ & VCC)))) # (!\inst|F9~14_combout\ & ((\inst|F9~15_combout\ & ((\inst|Add15~1_cout\) # (GND))) # 
-- (!\inst|F9~15_combout\ & (!\inst|Add15~1_cout\))))
-- \inst|Add15~3\ = CARRY((\inst|F9~14_combout\ & (\inst|F9~15_combout\ & !\inst|Add15~1_cout\)) # (!\inst|F9~14_combout\ & ((\inst|F9~15_combout\) # (!\inst|Add15~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~14_combout\,
	datab => \inst|F9~15_combout\,
	datad => VCC,
	cin => \inst|Add15~1_cout\,
	combout => \inst|Add15~2_combout\,
	cout => \inst|Add15~3\);

-- Location: LCCOMB_X29_Y3_N8
\inst|Add15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add15~4_combout\ = ((\inst|F9~12_combout\ $ (\inst|F9~13_combout\ $ (\inst|Add15~3\)))) # (GND)
-- \inst|Add15~5\ = CARRY((\inst|F9~12_combout\ & ((!\inst|Add15~3\) # (!\inst|F9~13_combout\))) # (!\inst|F9~12_combout\ & (!\inst|F9~13_combout\ & !\inst|Add15~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~12_combout\,
	datab => \inst|F9~13_combout\,
	datad => VCC,
	cin => \inst|Add15~3\,
	combout => \inst|Add15~4_combout\,
	cout => \inst|Add15~5\);

-- Location: LCCOMB_X29_Y3_N10
\inst|Add15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add15~6_combout\ = (\inst|F9~10_combout\ & ((\inst|F9~11_combout\ & (!\inst|Add15~5\)) # (!\inst|F9~11_combout\ & (\inst|Add15~5\ & VCC)))) # (!\inst|F9~10_combout\ & ((\inst|F9~11_combout\ & ((\inst|Add15~5\) # (GND))) # (!\inst|F9~11_combout\ & 
-- (!\inst|Add15~5\))))
-- \inst|Add15~7\ = CARRY((\inst|F9~10_combout\ & (\inst|F9~11_combout\ & !\inst|Add15~5\)) # (!\inst|F9~10_combout\ & ((\inst|F9~11_combout\) # (!\inst|Add15~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~10_combout\,
	datab => \inst|F9~11_combout\,
	datad => VCC,
	cin => \inst|Add15~5\,
	combout => \inst|Add15~6_combout\,
	cout => \inst|Add15~7\);

-- Location: LCCOMB_X29_Y3_N12
\inst|Add15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add15~8_combout\ = ((\inst|F9~9_combout\ $ (\inst|F9~8_combout\ $ (\inst|Add15~7\)))) # (GND)
-- \inst|Add15~9\ = CARRY((\inst|F9~9_combout\ & (\inst|F9~8_combout\ & !\inst|Add15~7\)) # (!\inst|F9~9_combout\ & ((\inst|F9~8_combout\) # (!\inst|Add15~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~9_combout\,
	datab => \inst|F9~8_combout\,
	datad => VCC,
	cin => \inst|Add15~7\,
	combout => \inst|Add15~8_combout\,
	cout => \inst|Add15~9\);

-- Location: LCCOMB_X29_Y3_N14
\inst|Add15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add15~10_combout\ = (\inst|F9~7_combout\ & ((\inst|F9~6_combout\ & (!\inst|Add15~9\)) # (!\inst|F9~6_combout\ & ((\inst|Add15~9\) # (GND))))) # (!\inst|F9~7_combout\ & ((\inst|F9~6_combout\ & (\inst|Add15~9\ & VCC)) # (!\inst|F9~6_combout\ & 
-- (!\inst|Add15~9\))))
-- \inst|Add15~11\ = CARRY((\inst|F9~7_combout\ & ((!\inst|Add15~9\) # (!\inst|F9~6_combout\))) # (!\inst|F9~7_combout\ & (!\inst|F9~6_combout\ & !\inst|Add15~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~7_combout\,
	datab => \inst|F9~6_combout\,
	datad => VCC,
	cin => \inst|Add15~9\,
	combout => \inst|Add15~10_combout\,
	cout => \inst|Add15~11\);

-- Location: LCCOMB_X29_Y3_N16
\inst|Add15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add15~12_combout\ = ((\inst|F9~4_combout\ $ (\inst|F9~5_combout\ $ (\inst|Add15~11\)))) # (GND)
-- \inst|Add15~13\ = CARRY((\inst|F9~4_combout\ & ((!\inst|Add15~11\) # (!\inst|F9~5_combout\))) # (!\inst|F9~4_combout\ & (!\inst|F9~5_combout\ & !\inst|Add15~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~4_combout\,
	datab => \inst|F9~5_combout\,
	datad => VCC,
	cin => \inst|Add15~11\,
	combout => \inst|Add15~12_combout\,
	cout => \inst|Add15~13\);

-- Location: LCCOMB_X29_Y3_N18
\inst|Add15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add15~14_combout\ = (\inst|F9~2_combout\ & ((\inst|F9~3_combout\ & (!\inst|Add15~13\)) # (!\inst|F9~3_combout\ & (\inst|Add15~13\ & VCC)))) # (!\inst|F9~2_combout\ & ((\inst|F9~3_combout\ & ((\inst|Add15~13\) # (GND))) # (!\inst|F9~3_combout\ & 
-- (!\inst|Add15~13\))))
-- \inst|Add15~15\ = CARRY((\inst|F9~2_combout\ & (\inst|F9~3_combout\ & !\inst|Add15~13\)) # (!\inst|F9~2_combout\ & ((\inst|F9~3_combout\) # (!\inst|Add15~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~2_combout\,
	datab => \inst|F9~3_combout\,
	datad => VCC,
	cin => \inst|Add15~13\,
	combout => \inst|Add15~14_combout\,
	cout => \inst|Add15~15\);

-- Location: LCCOMB_X29_Y3_N20
\inst|Add15~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add15~16_combout\ = ((\inst|F9~0_combout\ $ (\inst|F9~1_combout\ $ (\inst|Add15~15\)))) # (GND)
-- \inst|Add15~17\ = CARRY((\inst|F9~0_combout\ & ((!\inst|Add15~15\) # (!\inst|F9~1_combout\))) # (!\inst|F9~0_combout\ & (!\inst|F9~1_combout\ & !\inst|Add15~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~0_combout\,
	datab => \inst|F9~1_combout\,
	datad => VCC,
	cin => \inst|Add15~15\,
	combout => \inst|Add15~16_combout\,
	cout => \inst|Add15~17\);

-- Location: LCCOMB_X29_Y3_N22
\inst|Add15~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add15~18_combout\ = !\inst|Add15~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add15~17\,
	combout => \inst|Add15~18_combout\);

-- Location: LCCOMB_X30_Y2_N8
\inst|Add20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add20~1_cout\ = CARRY(\CN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CN~input_o\,
	datad => VCC,
	cout => \inst|Add20~1_cout\);

-- Location: LCCOMB_X30_Y2_N10
\inst|Add20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add20~2_combout\ = (\inst1|12~combout\ & ((\inst|F9~15_combout\ & (!\inst|Add20~1_cout\)) # (!\inst|F9~15_combout\ & (\inst|Add20~1_cout\ & VCC)))) # (!\inst1|12~combout\ & ((\inst|F9~15_combout\ & ((\inst|Add20~1_cout\) # (GND))) # 
-- (!\inst|F9~15_combout\ & (!\inst|Add20~1_cout\))))
-- \inst|Add20~3\ = CARRY((\inst1|12~combout\ & (\inst|F9~15_combout\ & !\inst|Add20~1_cout\)) # (!\inst1|12~combout\ & ((\inst|F9~15_combout\) # (!\inst|Add20~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|12~combout\,
	datab => \inst|F9~15_combout\,
	datad => VCC,
	cin => \inst|Add20~1_cout\,
	combout => \inst|Add20~2_combout\,
	cout => \inst|Add20~3\);

-- Location: LCCOMB_X30_Y2_N12
\inst|Add20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add20~4_combout\ = ((\inst1|13~combout\ $ (\inst|F9~13_combout\ $ (\inst|Add20~3\)))) # (GND)
-- \inst|Add20~5\ = CARRY((\inst1|13~combout\ & ((!\inst|Add20~3\) # (!\inst|F9~13_combout\))) # (!\inst1|13~combout\ & (!\inst|F9~13_combout\ & !\inst|Add20~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|13~combout\,
	datab => \inst|F9~13_combout\,
	datad => VCC,
	cin => \inst|Add20~3\,
	combout => \inst|Add20~4_combout\,
	cout => \inst|Add20~5\);

-- Location: LCCOMB_X30_Y2_N14
\inst|Add20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add20~6_combout\ = (\inst1|14~combout\ & ((\inst|F9~11_combout\ & (!\inst|Add20~5\)) # (!\inst|F9~11_combout\ & (\inst|Add20~5\ & VCC)))) # (!\inst1|14~combout\ & ((\inst|F9~11_combout\ & ((\inst|Add20~5\) # (GND))) # (!\inst|F9~11_combout\ & 
-- (!\inst|Add20~5\))))
-- \inst|Add20~7\ = CARRY((\inst1|14~combout\ & (\inst|F9~11_combout\ & !\inst|Add20~5\)) # (!\inst1|14~combout\ & ((\inst|F9~11_combout\) # (!\inst|Add20~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|14~combout\,
	datab => \inst|F9~11_combout\,
	datad => VCC,
	cin => \inst|Add20~5\,
	combout => \inst|Add20~6_combout\,
	cout => \inst|Add20~7\);

-- Location: LCCOMB_X30_Y2_N16
\inst|Add20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add20~8_combout\ = ((\inst|F9~9_combout\ $ (\inst1|15~combout\ $ (\inst|Add20~7\)))) # (GND)
-- \inst|Add20~9\ = CARRY((\inst|F9~9_combout\ & (\inst1|15~combout\ & !\inst|Add20~7\)) # (!\inst|F9~9_combout\ & ((\inst1|15~combout\) # (!\inst|Add20~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~9_combout\,
	datab => \inst1|15~combout\,
	datad => VCC,
	cin => \inst|Add20~7\,
	combout => \inst|Add20~8_combout\,
	cout => \inst|Add20~9\);

-- Location: LCCOMB_X30_Y2_N18
\inst|Add20~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add20~10_combout\ = (\inst1|16~combout\ & ((\inst|F9~7_combout\ & (!\inst|Add20~9\)) # (!\inst|F9~7_combout\ & (\inst|Add20~9\ & VCC)))) # (!\inst1|16~combout\ & ((\inst|F9~7_combout\ & ((\inst|Add20~9\) # (GND))) # (!\inst|F9~7_combout\ & 
-- (!\inst|Add20~9\))))
-- \inst|Add20~11\ = CARRY((\inst1|16~combout\ & (\inst|F9~7_combout\ & !\inst|Add20~9\)) # (!\inst1|16~combout\ & ((\inst|F9~7_combout\) # (!\inst|Add20~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|16~combout\,
	datab => \inst|F9~7_combout\,
	datad => VCC,
	cin => \inst|Add20~9\,
	combout => \inst|Add20~10_combout\,
	cout => \inst|Add20~11\);

-- Location: LCCOMB_X30_Y2_N20
\inst|Add20~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add20~12_combout\ = ((\inst1|17~combout\ $ (\inst|F9~5_combout\ $ (\inst|Add20~11\)))) # (GND)
-- \inst|Add20~13\ = CARRY((\inst1|17~combout\ & ((!\inst|Add20~11\) # (!\inst|F9~5_combout\))) # (!\inst1|17~combout\ & (!\inst|F9~5_combout\ & !\inst|Add20~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|17~combout\,
	datab => \inst|F9~5_combout\,
	datad => VCC,
	cin => \inst|Add20~11\,
	combout => \inst|Add20~12_combout\,
	cout => \inst|Add20~13\);

-- Location: LCCOMB_X30_Y2_N22
\inst|Add20~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add20~14_combout\ = (\inst1|18~combout\ & ((\inst|F9~3_combout\ & (!\inst|Add20~13\)) # (!\inst|F9~3_combout\ & (\inst|Add20~13\ & VCC)))) # (!\inst1|18~combout\ & ((\inst|F9~3_combout\ & ((\inst|Add20~13\) # (GND))) # (!\inst|F9~3_combout\ & 
-- (!\inst|Add20~13\))))
-- \inst|Add20~15\ = CARRY((\inst1|18~combout\ & (\inst|F9~3_combout\ & !\inst|Add20~13\)) # (!\inst1|18~combout\ & ((\inst|F9~3_combout\) # (!\inst|Add20~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|18~combout\,
	datab => \inst|F9~3_combout\,
	datad => VCC,
	cin => \inst|Add20~13\,
	combout => \inst|Add20~14_combout\,
	cout => \inst|Add20~15\);

-- Location: LCCOMB_X30_Y2_N24
\inst|Add20~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add20~16_combout\ = ((\inst1|19~combout\ $ (\inst|F9~1_combout\ $ (\inst|Add20~15\)))) # (GND)
-- \inst|Add20~17\ = CARRY((\inst1|19~combout\ & ((!\inst|Add20~15\) # (!\inst|F9~1_combout\))) # (!\inst1|19~combout\ & (!\inst|F9~1_combout\ & !\inst|Add20~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|19~combout\,
	datab => \inst|F9~1_combout\,
	datad => VCC,
	cin => \inst|Add20~15\,
	combout => \inst|Add20~16_combout\,
	cout => \inst|Add20~17\);

-- Location: LCCOMB_X30_Y2_N26
\inst|Add20~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add20~18_combout\ = !\inst|Add20~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add20~17\,
	combout => \inst|Add20~18_combout\);

-- Location: LCCOMB_X31_Y3_N28
\inst|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~4_combout\ = (\inst|Mux0~3_combout\ & (!\M~input_o\ & \inst|Add20~18_combout\)) # (!\inst|Mux0~3_combout\ & (\M~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~3_combout\,
	datac => \M~input_o\,
	datad => \inst|Add20~18_combout\,
	combout => \inst|Mux0~4_combout\);

-- Location: LCCOMB_X31_Y3_N22
\inst|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~5_combout\ = (\inst|Mux0~3_combout\ & (((\inst|Mux0~4_combout\) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))) # (!\inst|Mux0~3_combout\ & (\inst|Add15~18_combout\ & 
-- (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & !\inst|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~3_combout\,
	datab => \inst|Add15~18_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst|Mux0~4_combout\,
	combout => \inst|Mux0~5_combout\);

-- Location: LCCOMB_X29_Y4_N8
\inst|Add11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add11~1_cout\ = CARRY(\CN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CN~input_o\,
	datad => VCC,
	cout => \inst|Add11~1_cout\);

-- Location: LCCOMB_X29_Y4_N10
\inst|Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add11~2_combout\ = (\inst1|12~combout\ & ((\inst|F9~14_combout\ & (\inst|Add11~1_cout\ & VCC)) # (!\inst|F9~14_combout\ & (!\inst|Add11~1_cout\)))) # (!\inst1|12~combout\ & ((\inst|F9~14_combout\ & (!\inst|Add11~1_cout\)) # (!\inst|F9~14_combout\ & 
-- ((\inst|Add11~1_cout\) # (GND)))))
-- \inst|Add11~3\ = CARRY((\inst1|12~combout\ & (!\inst|F9~14_combout\ & !\inst|Add11~1_cout\)) # (!\inst1|12~combout\ & ((!\inst|Add11~1_cout\) # (!\inst|F9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|12~combout\,
	datab => \inst|F9~14_combout\,
	datad => VCC,
	cin => \inst|Add11~1_cout\,
	combout => \inst|Add11~2_combout\,
	cout => \inst|Add11~3\);

-- Location: LCCOMB_X29_Y4_N12
\inst|Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add11~4_combout\ = ((\inst1|13~combout\ $ (\inst|F9~12_combout\ $ (!\inst|Add11~3\)))) # (GND)
-- \inst|Add11~5\ = CARRY((\inst1|13~combout\ & ((\inst|F9~12_combout\) # (!\inst|Add11~3\))) # (!\inst1|13~combout\ & (\inst|F9~12_combout\ & !\inst|Add11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|13~combout\,
	datab => \inst|F9~12_combout\,
	datad => VCC,
	cin => \inst|Add11~3\,
	combout => \inst|Add11~4_combout\,
	cout => \inst|Add11~5\);

-- Location: LCCOMB_X29_Y4_N14
\inst|Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add11~6_combout\ = (\inst1|14~combout\ & ((\inst|F9~10_combout\ & (\inst|Add11~5\ & VCC)) # (!\inst|F9~10_combout\ & (!\inst|Add11~5\)))) # (!\inst1|14~combout\ & ((\inst|F9~10_combout\ & (!\inst|Add11~5\)) # (!\inst|F9~10_combout\ & 
-- ((\inst|Add11~5\) # (GND)))))
-- \inst|Add11~7\ = CARRY((\inst1|14~combout\ & (!\inst|F9~10_combout\ & !\inst|Add11~5\)) # (!\inst1|14~combout\ & ((!\inst|Add11~5\) # (!\inst|F9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|14~combout\,
	datab => \inst|F9~10_combout\,
	datad => VCC,
	cin => \inst|Add11~5\,
	combout => \inst|Add11~6_combout\,
	cout => \inst|Add11~7\);

-- Location: LCCOMB_X29_Y4_N16
\inst|Add11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add11~8_combout\ = ((\inst1|15~combout\ $ (\inst|F9~8_combout\ $ (!\inst|Add11~7\)))) # (GND)
-- \inst|Add11~9\ = CARRY((\inst1|15~combout\ & ((\inst|F9~8_combout\) # (!\inst|Add11~7\))) # (!\inst1|15~combout\ & (\inst|F9~8_combout\ & !\inst|Add11~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|15~combout\,
	datab => \inst|F9~8_combout\,
	datad => VCC,
	cin => \inst|Add11~7\,
	combout => \inst|Add11~8_combout\,
	cout => \inst|Add11~9\);

-- Location: LCCOMB_X29_Y4_N18
\inst|Add11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add11~10_combout\ = (\inst1|16~combout\ & ((\inst|F9~6_combout\ & (\inst|Add11~9\ & VCC)) # (!\inst|F9~6_combout\ & (!\inst|Add11~9\)))) # (!\inst1|16~combout\ & ((\inst|F9~6_combout\ & (!\inst|Add11~9\)) # (!\inst|F9~6_combout\ & ((\inst|Add11~9\) 
-- # (GND)))))
-- \inst|Add11~11\ = CARRY((\inst1|16~combout\ & (!\inst|F9~6_combout\ & !\inst|Add11~9\)) # (!\inst1|16~combout\ & ((!\inst|Add11~9\) # (!\inst|F9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|16~combout\,
	datab => \inst|F9~6_combout\,
	datad => VCC,
	cin => \inst|Add11~9\,
	combout => \inst|Add11~10_combout\,
	cout => \inst|Add11~11\);

-- Location: LCCOMB_X29_Y4_N20
\inst|Add11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add11~12_combout\ = ((\inst|F9~4_combout\ $ (\inst1|17~combout\ $ (!\inst|Add11~11\)))) # (GND)
-- \inst|Add11~13\ = CARRY((\inst|F9~4_combout\ & ((\inst1|17~combout\) # (!\inst|Add11~11\))) # (!\inst|F9~4_combout\ & (\inst1|17~combout\ & !\inst|Add11~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~4_combout\,
	datab => \inst1|17~combout\,
	datad => VCC,
	cin => \inst|Add11~11\,
	combout => \inst|Add11~12_combout\,
	cout => \inst|Add11~13\);

-- Location: LCCOMB_X29_Y4_N22
\inst|Add11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add11~14_combout\ = (\inst1|18~combout\ & ((\inst|F9~2_combout\ & (\inst|Add11~13\ & VCC)) # (!\inst|F9~2_combout\ & (!\inst|Add11~13\)))) # (!\inst1|18~combout\ & ((\inst|F9~2_combout\ & (!\inst|Add11~13\)) # (!\inst|F9~2_combout\ & 
-- ((\inst|Add11~13\) # (GND)))))
-- \inst|Add11~15\ = CARRY((\inst1|18~combout\ & (!\inst|F9~2_combout\ & !\inst|Add11~13\)) # (!\inst1|18~combout\ & ((!\inst|Add11~13\) # (!\inst|F9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|18~combout\,
	datab => \inst|F9~2_combout\,
	datad => VCC,
	cin => \inst|Add11~13\,
	combout => \inst|Add11~14_combout\,
	cout => \inst|Add11~15\);

-- Location: LCCOMB_X29_Y4_N24
\inst|Add11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add11~16_combout\ = ((\inst1|19~combout\ $ (\inst|F9~0_combout\ $ (!\inst|Add11~15\)))) # (GND)
-- \inst|Add11~17\ = CARRY((\inst1|19~combout\ & ((\inst|F9~0_combout\) # (!\inst|Add11~15\))) # (!\inst1|19~combout\ & (\inst|F9~0_combout\ & !\inst|Add11~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|19~combout\,
	datab => \inst|F9~0_combout\,
	datad => VCC,
	cin => \inst|Add11~15\,
	combout => \inst|Add11~16_combout\,
	cout => \inst|Add11~17\);

-- Location: LCCOMB_X29_Y4_N26
\inst|Add11~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add11~18_combout\ = \inst|Add11~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add11~17\,
	combout => \inst|Add11~18_combout\);

-- Location: LCCOMB_X24_Y4_N10
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\CN~input_o\ & (\inst1|12~combout\ $ (VCC))) # (!\CN~input_o\ & (\inst1|12~combout\ & VCC))
-- \inst|Add0~1\ = CARRY((\CN~input_o\ & \inst1|12~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CN~input_o\,
	datab => \inst1|12~combout\,
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X24_Y4_N12
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst1|13~combout\ & (!\inst|Add0~1\)) # (!\inst1|13~combout\ & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst1|13~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|13~combout\,
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X24_Y4_N14
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst1|14~combout\ & (\inst|Add0~3\ $ (GND))) # (!\inst1|14~combout\ & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst1|14~combout\ & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|14~combout\,
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X24_Y4_N16
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst1|15~combout\ & (!\inst|Add0~5\)) # (!\inst1|15~combout\ & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst1|15~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|15~combout\,
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X24_Y4_N18
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst1|16~combout\ & (\inst|Add0~7\ $ (GND))) # (!\inst1|16~combout\ & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst1|16~combout\ & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|16~combout\,
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X24_Y4_N20
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst1|17~combout\ & (!\inst|Add0~9\)) # (!\inst1|17~combout\ & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst1|17~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|17~combout\,
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X24_Y4_N22
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst1|18~combout\ & (\inst|Add0~11\ $ (GND))) # (!\inst1|18~combout\ & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst1|18~combout\ & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|18~combout\,
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X24_Y4_N24
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst1|19~combout\ & (!\inst|Add0~13\)) # (!\inst1|19~combout\ & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst1|19~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|19~combout\,
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X24_Y4_N26
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = !\inst|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\);

-- Location: LCCOMB_X29_Y2_N12
\inst|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~10_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\M~input_o\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\M~input_o\ & !\inst|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \M~input_o\,
	datad => \inst|Add0~16_combout\,
	combout => \inst|Mux0~10_combout\);

-- Location: LCCOMB_X29_Y2_N6
\inst|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~11_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) # ((\inst|Add11~18_combout\) # (\inst|Mux0~10_combout\)))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((!\inst|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst|Add11~18_combout\,
	datad => \inst|Mux0~10_combout\,
	combout => \inst|Mux0~11_combout\);

-- Location: LCCOMB_X28_Y2_N24
\inst|F9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~16_combout\ = (\inst1|19~combout\ & !\inst2|19~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|19~combout\,
	datac => \inst2|19~combout\,
	combout => \inst|F9~16_combout\);

-- Location: LCCOMB_X26_Y2_N18
\inst|F9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~18_combout\ = (!\inst2|18~combout\ & \inst1|18~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|18~combout\,
	datac => \inst1|18~combout\,
	combout => \inst|F9~18_combout\);

-- Location: LCCOMB_X28_Y3_N20
\inst|F9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~20_combout\ = (\inst1|17~combout\ & !\inst2|17~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|17~combout\,
	datac => \inst2|17~combout\,
	combout => \inst|F9~20_combout\);

-- Location: LCCOMB_X26_Y1_N28
\inst|F9~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~22_combout\ = (!\inst2|16~combout\ & \inst1|16~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|16~combout\,
	datac => \inst1|16~combout\,
	combout => \inst|F9~22_combout\);

-- Location: LCCOMB_X26_Y3_N30
\inst|F9~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~24_combout\ = (\inst1|15~combout\ & !\inst2|15~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|15~combout\,
	datad => \inst2|15~combout\,
	combout => \inst|F9~24_combout\);

-- Location: LCCOMB_X26_Y1_N24
\inst|F9~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~26_combout\ = (\inst1|14~combout\ & !\inst2|14~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|14~combout\,
	datad => \inst2|14~combout\,
	combout => \inst|F9~26_combout\);

-- Location: LCCOMB_X24_Y1_N0
\inst|F9~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~28_combout\ = (!\inst2|13~combout\ & \inst1|13~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|13~combout\,
	datac => \inst1|13~combout\,
	combout => \inst|F9~28_combout\);

-- Location: LCCOMB_X28_Y2_N26
\inst|F9~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~30_combout\ = (\inst1|12~combout\ & !\inst2|12~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|12~combout\,
	datad => \inst2|12~combout\,
	combout => \inst|F9~30_combout\);

-- Location: LCCOMB_X28_Y2_N2
\inst|Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~1_cout\ = CARRY(\CN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CN~input_o\,
	datad => VCC,
	cout => \inst|Add4~1_cout\);

-- Location: LCCOMB_X28_Y2_N4
\inst|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~2_combout\ = (\inst1|12~combout\ & ((\inst|F9~30_combout\ & (\inst|Add4~1_cout\ & VCC)) # (!\inst|F9~30_combout\ & (!\inst|Add4~1_cout\)))) # (!\inst1|12~combout\ & ((\inst|F9~30_combout\ & (!\inst|Add4~1_cout\)) # (!\inst|F9~30_combout\ & 
-- ((\inst|Add4~1_cout\) # (GND)))))
-- \inst|Add4~3\ = CARRY((\inst1|12~combout\ & (!\inst|F9~30_combout\ & !\inst|Add4~1_cout\)) # (!\inst1|12~combout\ & ((!\inst|Add4~1_cout\) # (!\inst|F9~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|12~combout\,
	datab => \inst|F9~30_combout\,
	datad => VCC,
	cin => \inst|Add4~1_cout\,
	combout => \inst|Add4~2_combout\,
	cout => \inst|Add4~3\);

-- Location: LCCOMB_X28_Y2_N6
\inst|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~4_combout\ = ((\inst1|13~combout\ $ (\inst|F9~28_combout\ $ (!\inst|Add4~3\)))) # (GND)
-- \inst|Add4~5\ = CARRY((\inst1|13~combout\ & ((\inst|F9~28_combout\) # (!\inst|Add4~3\))) # (!\inst1|13~combout\ & (\inst|F9~28_combout\ & !\inst|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|13~combout\,
	datab => \inst|F9~28_combout\,
	datad => VCC,
	cin => \inst|Add4~3\,
	combout => \inst|Add4~4_combout\,
	cout => \inst|Add4~5\);

-- Location: LCCOMB_X28_Y2_N8
\inst|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~6_combout\ = (\inst|F9~26_combout\ & ((\inst1|14~combout\ & (\inst|Add4~5\ & VCC)) # (!\inst1|14~combout\ & (!\inst|Add4~5\)))) # (!\inst|F9~26_combout\ & ((\inst1|14~combout\ & (!\inst|Add4~5\)) # (!\inst1|14~combout\ & ((\inst|Add4~5\) # 
-- (GND)))))
-- \inst|Add4~7\ = CARRY((\inst|F9~26_combout\ & (!\inst1|14~combout\ & !\inst|Add4~5\)) # (!\inst|F9~26_combout\ & ((!\inst|Add4~5\) # (!\inst1|14~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~26_combout\,
	datab => \inst1|14~combout\,
	datad => VCC,
	cin => \inst|Add4~5\,
	combout => \inst|Add4~6_combout\,
	cout => \inst|Add4~7\);

-- Location: LCCOMB_X28_Y2_N10
\inst|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~8_combout\ = ((\inst|F9~24_combout\ $ (\inst1|15~combout\ $ (!\inst|Add4~7\)))) # (GND)
-- \inst|Add4~9\ = CARRY((\inst|F9~24_combout\ & ((\inst1|15~combout\) # (!\inst|Add4~7\))) # (!\inst|F9~24_combout\ & (\inst1|15~combout\ & !\inst|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~24_combout\,
	datab => \inst1|15~combout\,
	datad => VCC,
	cin => \inst|Add4~7\,
	combout => \inst|Add4~8_combout\,
	cout => \inst|Add4~9\);

-- Location: LCCOMB_X28_Y2_N12
\inst|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~10_combout\ = (\inst1|16~combout\ & ((\inst|F9~22_combout\ & (\inst|Add4~9\ & VCC)) # (!\inst|F9~22_combout\ & (!\inst|Add4~9\)))) # (!\inst1|16~combout\ & ((\inst|F9~22_combout\ & (!\inst|Add4~9\)) # (!\inst|F9~22_combout\ & ((\inst|Add4~9\) # 
-- (GND)))))
-- \inst|Add4~11\ = CARRY((\inst1|16~combout\ & (!\inst|F9~22_combout\ & !\inst|Add4~9\)) # (!\inst1|16~combout\ & ((!\inst|Add4~9\) # (!\inst|F9~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|16~combout\,
	datab => \inst|F9~22_combout\,
	datad => VCC,
	cin => \inst|Add4~9\,
	combout => \inst|Add4~10_combout\,
	cout => \inst|Add4~11\);

-- Location: LCCOMB_X28_Y2_N14
\inst|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~12_combout\ = ((\inst|F9~20_combout\ $ (\inst1|17~combout\ $ (!\inst|Add4~11\)))) # (GND)
-- \inst|Add4~13\ = CARRY((\inst|F9~20_combout\ & ((\inst1|17~combout\) # (!\inst|Add4~11\))) # (!\inst|F9~20_combout\ & (\inst1|17~combout\ & !\inst|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~20_combout\,
	datab => \inst1|17~combout\,
	datad => VCC,
	cin => \inst|Add4~11\,
	combout => \inst|Add4~12_combout\,
	cout => \inst|Add4~13\);

-- Location: LCCOMB_X28_Y2_N16
\inst|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~14_combout\ = (\inst1|18~combout\ & ((\inst|F9~18_combout\ & (\inst|Add4~13\ & VCC)) # (!\inst|F9~18_combout\ & (!\inst|Add4~13\)))) # (!\inst1|18~combout\ & ((\inst|F9~18_combout\ & (!\inst|Add4~13\)) # (!\inst|F9~18_combout\ & 
-- ((\inst|Add4~13\) # (GND)))))
-- \inst|Add4~15\ = CARRY((\inst1|18~combout\ & (!\inst|F9~18_combout\ & !\inst|Add4~13\)) # (!\inst1|18~combout\ & ((!\inst|Add4~13\) # (!\inst|F9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|18~combout\,
	datab => \inst|F9~18_combout\,
	datad => VCC,
	cin => \inst|Add4~13\,
	combout => \inst|Add4~14_combout\,
	cout => \inst|Add4~15\);

-- Location: LCCOMB_X28_Y2_N18
\inst|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~16_combout\ = ((\inst1|19~combout\ $ (\inst|F9~16_combout\ $ (!\inst|Add4~15\)))) # (GND)
-- \inst|Add4~17\ = CARRY((\inst1|19~combout\ & ((\inst|F9~16_combout\) # (!\inst|Add4~15\))) # (!\inst1|19~combout\ & (\inst|F9~16_combout\ & !\inst|Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|19~combout\,
	datab => \inst|F9~16_combout\,
	datad => VCC,
	cin => \inst|Add4~15\,
	combout => \inst|Add4~16_combout\,
	cout => \inst|Add4~17\);

-- Location: LCCOMB_X28_Y2_N20
\inst|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~18_combout\ = \inst|Add4~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add4~17\,
	combout => \inst|Add4~18_combout\);

-- Location: LCCOMB_X28_Y2_N28
\inst|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~12_combout\ = (\inst|Mux0~11_combout\ & ((\inst1|19~combout\))) # (!\inst|Mux0~11_combout\ & (\inst|Add4~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~11_combout\,
	datab => \inst|Add4~18_combout\,
	datac => \inst1|19~combout\,
	combout => \inst|Mux0~12_combout\);

-- Location: LCCOMB_X28_Y2_N30
\inst|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~13_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\M~input_o\ & (!\inst|Mux0~11_combout\)) # (!\M~input_o\ & ((\inst|Mux0~12_combout\))))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (\inst|Mux0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~11_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \M~input_o\,
	datad => \inst|Mux0~12_combout\,
	combout => \inst|Mux0~13_combout\);

-- Location: LCCOMB_X25_Y4_N0
\inst|F9~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~17_combout\ = (\inst1|19~combout\) # (\inst2|19~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|19~combout\,
	datac => \inst2|19~combout\,
	combout => \inst|F9~17_combout\);

-- Location: LCCOMB_X26_Y2_N24
\inst|F9~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~19_combout\ = (\inst2|18~combout\) # (\inst1|18~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|18~combout\,
	datac => \inst1|18~combout\,
	combout => \inst|F9~19_combout\);

-- Location: LCCOMB_X26_Y2_N26
\inst|F9~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~21_combout\ = (\inst2|17~combout\) # (\inst1|17~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|17~combout\,
	datad => \inst1|17~combout\,
	combout => \inst|F9~21_combout\);

-- Location: LCCOMB_X26_Y1_N2
\inst|F9~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~23_combout\ = (\inst2|16~combout\) # (\inst1|16~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|16~combout\,
	datac => \inst1|16~combout\,
	combout => \inst|F9~23_combout\);

-- Location: LCCOMB_X29_Y1_N6
\inst|F9~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~25_combout\ = (\inst2|15~combout\) # (\inst1|15~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|15~combout\,
	datac => \inst1|15~combout\,
	combout => \inst|F9~25_combout\);

-- Location: LCCOMB_X26_Y1_N6
\inst|F9~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~27_combout\ = (\inst1|14~combout\) # (\inst2|14~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|14~combout\,
	datad => \inst2|14~combout\,
	combout => \inst|F9~27_combout\);

-- Location: LCCOMB_X28_Y4_N2
\inst|F9~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~29_combout\ = (\inst2|13~combout\) # (\inst1|13~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|13~combout\,
	datad => \inst1|13~combout\,
	combout => \inst|F9~29_combout\);

-- Location: LCCOMB_X30_Y1_N4
\inst|F9~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~31_combout\ = (\inst1|12~combout\) # (\inst2|12~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|12~combout\,
	datad => \inst2|12~combout\,
	combout => \inst|F9~31_combout\);

-- Location: LCCOMB_X30_Y3_N2
\inst|Add18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add18~1_cout\ = CARRY(\CN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CN~input_o\,
	datad => VCC,
	cout => \inst|Add18~1_cout\);

-- Location: LCCOMB_X30_Y3_N4
\inst|Add18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add18~2_combout\ = (\inst1|12~combout\ & ((\inst|F9~31_combout\ & (\inst|Add18~1_cout\ & VCC)) # (!\inst|F9~31_combout\ & (!\inst|Add18~1_cout\)))) # (!\inst1|12~combout\ & ((\inst|F9~31_combout\ & (!\inst|Add18~1_cout\)) # (!\inst|F9~31_combout\ & 
-- ((\inst|Add18~1_cout\) # (GND)))))
-- \inst|Add18~3\ = CARRY((\inst1|12~combout\ & (!\inst|F9~31_combout\ & !\inst|Add18~1_cout\)) # (!\inst1|12~combout\ & ((!\inst|Add18~1_cout\) # (!\inst|F9~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|12~combout\,
	datab => \inst|F9~31_combout\,
	datad => VCC,
	cin => \inst|Add18~1_cout\,
	combout => \inst|Add18~2_combout\,
	cout => \inst|Add18~3\);

-- Location: LCCOMB_X30_Y3_N6
\inst|Add18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add18~4_combout\ = ((\inst|F9~29_combout\ $ (\inst1|13~combout\ $ (!\inst|Add18~3\)))) # (GND)
-- \inst|Add18~5\ = CARRY((\inst|F9~29_combout\ & ((\inst1|13~combout\) # (!\inst|Add18~3\))) # (!\inst|F9~29_combout\ & (\inst1|13~combout\ & !\inst|Add18~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~29_combout\,
	datab => \inst1|13~combout\,
	datad => VCC,
	cin => \inst|Add18~3\,
	combout => \inst|Add18~4_combout\,
	cout => \inst|Add18~5\);

-- Location: LCCOMB_X30_Y3_N8
\inst|Add18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add18~6_combout\ = (\inst1|14~combout\ & ((\inst|F9~27_combout\ & (\inst|Add18~5\ & VCC)) # (!\inst|F9~27_combout\ & (!\inst|Add18~5\)))) # (!\inst1|14~combout\ & ((\inst|F9~27_combout\ & (!\inst|Add18~5\)) # (!\inst|F9~27_combout\ & 
-- ((\inst|Add18~5\) # (GND)))))
-- \inst|Add18~7\ = CARRY((\inst1|14~combout\ & (!\inst|F9~27_combout\ & !\inst|Add18~5\)) # (!\inst1|14~combout\ & ((!\inst|Add18~5\) # (!\inst|F9~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|14~combout\,
	datab => \inst|F9~27_combout\,
	datad => VCC,
	cin => \inst|Add18~5\,
	combout => \inst|Add18~6_combout\,
	cout => \inst|Add18~7\);

-- Location: LCCOMB_X30_Y3_N10
\inst|Add18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add18~8_combout\ = ((\inst|F9~25_combout\ $ (\inst1|15~combout\ $ (!\inst|Add18~7\)))) # (GND)
-- \inst|Add18~9\ = CARRY((\inst|F9~25_combout\ & ((\inst1|15~combout\) # (!\inst|Add18~7\))) # (!\inst|F9~25_combout\ & (\inst1|15~combout\ & !\inst|Add18~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~25_combout\,
	datab => \inst1|15~combout\,
	datad => VCC,
	cin => \inst|Add18~7\,
	combout => \inst|Add18~8_combout\,
	cout => \inst|Add18~9\);

-- Location: LCCOMB_X30_Y3_N12
\inst|Add18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add18~10_combout\ = (\inst1|16~combout\ & ((\inst|F9~23_combout\ & (\inst|Add18~9\ & VCC)) # (!\inst|F9~23_combout\ & (!\inst|Add18~9\)))) # (!\inst1|16~combout\ & ((\inst|F9~23_combout\ & (!\inst|Add18~9\)) # (!\inst|F9~23_combout\ & 
-- ((\inst|Add18~9\) # (GND)))))
-- \inst|Add18~11\ = CARRY((\inst1|16~combout\ & (!\inst|F9~23_combout\ & !\inst|Add18~9\)) # (!\inst1|16~combout\ & ((!\inst|Add18~9\) # (!\inst|F9~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|16~combout\,
	datab => \inst|F9~23_combout\,
	datad => VCC,
	cin => \inst|Add18~9\,
	combout => \inst|Add18~10_combout\,
	cout => \inst|Add18~11\);

-- Location: LCCOMB_X30_Y3_N14
\inst|Add18~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add18~12_combout\ = ((\inst1|17~combout\ $ (\inst|F9~21_combout\ $ (!\inst|Add18~11\)))) # (GND)
-- \inst|Add18~13\ = CARRY((\inst1|17~combout\ & ((\inst|F9~21_combout\) # (!\inst|Add18~11\))) # (!\inst1|17~combout\ & (\inst|F9~21_combout\ & !\inst|Add18~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|17~combout\,
	datab => \inst|F9~21_combout\,
	datad => VCC,
	cin => \inst|Add18~11\,
	combout => \inst|Add18~12_combout\,
	cout => \inst|Add18~13\);

-- Location: LCCOMB_X30_Y3_N16
\inst|Add18~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add18~14_combout\ = (\inst|F9~19_combout\ & ((\inst1|18~combout\ & (\inst|Add18~13\ & VCC)) # (!\inst1|18~combout\ & (!\inst|Add18~13\)))) # (!\inst|F9~19_combout\ & ((\inst1|18~combout\ & (!\inst|Add18~13\)) # (!\inst1|18~combout\ & 
-- ((\inst|Add18~13\) # (GND)))))
-- \inst|Add18~15\ = CARRY((\inst|F9~19_combout\ & (!\inst1|18~combout\ & !\inst|Add18~13\)) # (!\inst|F9~19_combout\ & ((!\inst|Add18~13\) # (!\inst1|18~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~19_combout\,
	datab => \inst1|18~combout\,
	datad => VCC,
	cin => \inst|Add18~13\,
	combout => \inst|Add18~14_combout\,
	cout => \inst|Add18~15\);

-- Location: LCCOMB_X30_Y3_N18
\inst|Add18~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add18~16_combout\ = ((\inst|F9~17_combout\ $ (\inst1|19~combout\ $ (!\inst|Add18~15\)))) # (GND)
-- \inst|Add18~17\ = CARRY((\inst|F9~17_combout\ & ((\inst1|19~combout\) # (!\inst|Add18~15\))) # (!\inst|F9~17_combout\ & (\inst1|19~combout\ & !\inst|Add18~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~17_combout\,
	datab => \inst1|19~combout\,
	datad => VCC,
	cin => \inst|Add18~15\,
	combout => \inst|Add18~16_combout\,
	cout => \inst|Add18~17\);

-- Location: LCCOMB_X30_Y3_N20
\inst|Add18~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add18~18_combout\ = \inst|Add18~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add18~17\,
	combout => \inst|Add18~18_combout\);

-- Location: LCCOMB_X24_Y2_N0
\inst|Add13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add13~1_cout\ = CARRY(\CN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CN~input_o\,
	datad => VCC,
	cout => \inst|Add13~1_cout\);

-- Location: LCCOMB_X24_Y2_N2
\inst|Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add13~2_combout\ = (\inst2|12~combout\ & ((\inst1|12~combout\ & (\inst|Add13~1_cout\ & VCC)) # (!\inst1|12~combout\ & (!\inst|Add13~1_cout\)))) # (!\inst2|12~combout\ & ((\inst1|12~combout\ & (!\inst|Add13~1_cout\)) # (!\inst1|12~combout\ & 
-- ((\inst|Add13~1_cout\) # (GND)))))
-- \inst|Add13~3\ = CARRY((\inst2|12~combout\ & (!\inst1|12~combout\ & !\inst|Add13~1_cout\)) # (!\inst2|12~combout\ & ((!\inst|Add13~1_cout\) # (!\inst1|12~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|12~combout\,
	datab => \inst1|12~combout\,
	datad => VCC,
	cin => \inst|Add13~1_cout\,
	combout => \inst|Add13~2_combout\,
	cout => \inst|Add13~3\);

-- Location: LCCOMB_X24_Y2_N4
\inst|Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add13~4_combout\ = ((\inst2|13~combout\ $ (\inst1|13~combout\ $ (!\inst|Add13~3\)))) # (GND)
-- \inst|Add13~5\ = CARRY((\inst2|13~combout\ & ((\inst1|13~combout\) # (!\inst|Add13~3\))) # (!\inst2|13~combout\ & (\inst1|13~combout\ & !\inst|Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|13~combout\,
	datab => \inst1|13~combout\,
	datad => VCC,
	cin => \inst|Add13~3\,
	combout => \inst|Add13~4_combout\,
	cout => \inst|Add13~5\);

-- Location: LCCOMB_X24_Y2_N6
\inst|Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add13~6_combout\ = (\inst2|14~combout\ & ((\inst1|14~combout\ & (\inst|Add13~5\ & VCC)) # (!\inst1|14~combout\ & (!\inst|Add13~5\)))) # (!\inst2|14~combout\ & ((\inst1|14~combout\ & (!\inst|Add13~5\)) # (!\inst1|14~combout\ & ((\inst|Add13~5\) # 
-- (GND)))))
-- \inst|Add13~7\ = CARRY((\inst2|14~combout\ & (!\inst1|14~combout\ & !\inst|Add13~5\)) # (!\inst2|14~combout\ & ((!\inst|Add13~5\) # (!\inst1|14~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|14~combout\,
	datab => \inst1|14~combout\,
	datad => VCC,
	cin => \inst|Add13~5\,
	combout => \inst|Add13~6_combout\,
	cout => \inst|Add13~7\);

-- Location: LCCOMB_X24_Y2_N8
\inst|Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add13~8_combout\ = ((\inst1|15~combout\ $ (\inst2|15~combout\ $ (!\inst|Add13~7\)))) # (GND)
-- \inst|Add13~9\ = CARRY((\inst1|15~combout\ & ((\inst2|15~combout\) # (!\inst|Add13~7\))) # (!\inst1|15~combout\ & (\inst2|15~combout\ & !\inst|Add13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|15~combout\,
	datab => \inst2|15~combout\,
	datad => VCC,
	cin => \inst|Add13~7\,
	combout => \inst|Add13~8_combout\,
	cout => \inst|Add13~9\);

-- Location: LCCOMB_X24_Y2_N10
\inst|Add13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add13~10_combout\ = (\inst2|16~combout\ & ((\inst1|16~combout\ & (\inst|Add13~9\ & VCC)) # (!\inst1|16~combout\ & (!\inst|Add13~9\)))) # (!\inst2|16~combout\ & ((\inst1|16~combout\ & (!\inst|Add13~9\)) # (!\inst1|16~combout\ & ((\inst|Add13~9\) # 
-- (GND)))))
-- \inst|Add13~11\ = CARRY((\inst2|16~combout\ & (!\inst1|16~combout\ & !\inst|Add13~9\)) # (!\inst2|16~combout\ & ((!\inst|Add13~9\) # (!\inst1|16~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|16~combout\,
	datab => \inst1|16~combout\,
	datad => VCC,
	cin => \inst|Add13~9\,
	combout => \inst|Add13~10_combout\,
	cout => \inst|Add13~11\);

-- Location: LCCOMB_X24_Y2_N12
\inst|Add13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add13~12_combout\ = ((\inst2|17~combout\ $ (\inst1|17~combout\ $ (!\inst|Add13~11\)))) # (GND)
-- \inst|Add13~13\ = CARRY((\inst2|17~combout\ & ((\inst1|17~combout\) # (!\inst|Add13~11\))) # (!\inst2|17~combout\ & (\inst1|17~combout\ & !\inst|Add13~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|17~combout\,
	datab => \inst1|17~combout\,
	datad => VCC,
	cin => \inst|Add13~11\,
	combout => \inst|Add13~12_combout\,
	cout => \inst|Add13~13\);

-- Location: LCCOMB_X24_Y2_N14
\inst|Add13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add13~14_combout\ = (\inst2|18~combout\ & ((\inst1|18~combout\ & (\inst|Add13~13\ & VCC)) # (!\inst1|18~combout\ & (!\inst|Add13~13\)))) # (!\inst2|18~combout\ & ((\inst1|18~combout\ & (!\inst|Add13~13\)) # (!\inst1|18~combout\ & ((\inst|Add13~13\) 
-- # (GND)))))
-- \inst|Add13~15\ = CARRY((\inst2|18~combout\ & (!\inst1|18~combout\ & !\inst|Add13~13\)) # (!\inst2|18~combout\ & ((!\inst|Add13~13\) # (!\inst1|18~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|18~combout\,
	datab => \inst1|18~combout\,
	datad => VCC,
	cin => \inst|Add13~13\,
	combout => \inst|Add13~14_combout\,
	cout => \inst|Add13~15\);

-- Location: LCCOMB_X24_Y2_N16
\inst|Add13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add13~16_combout\ = ((\inst2|19~combout\ $ (\inst1|19~combout\ $ (!\inst|Add13~15\)))) # (GND)
-- \inst|Add13~17\ = CARRY((\inst2|19~combout\ & ((\inst1|19~combout\) # (!\inst|Add13~15\))) # (!\inst2|19~combout\ & (\inst1|19~combout\ & !\inst|Add13~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|19~combout\,
	datab => \inst1|19~combout\,
	datad => VCC,
	cin => \inst|Add13~15\,
	combout => \inst|Add13~16_combout\,
	cout => \inst|Add13~17\);

-- Location: LCCOMB_X24_Y2_N18
\inst|Add13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add13~18_combout\ = \inst|Add13~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add13~17\,
	combout => \inst|Add13~18_combout\);

-- Location: LCCOMB_X25_Y4_N2
\inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = (\CN~input_o\ & (\inst|F9~31_combout\ $ (VCC))) # (!\CN~input_o\ & (\inst|F9~31_combout\ & VCC))
-- \inst|Add1~1\ = CARRY((\CN~input_o\ & \inst|F9~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CN~input_o\,
	datab => \inst|F9~31_combout\,
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X25_Y4_N4
\inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst1|13~combout\ & (((!\inst|Add1~1\)))) # (!\inst1|13~combout\ & ((\inst2|13~combout\ & (!\inst|Add1~1\)) # (!\inst2|13~combout\ & ((\inst|Add1~1\) # (GND)))))
-- \inst|Add1~3\ = CARRY(((!\inst1|13~combout\ & !\inst2|13~combout\)) # (!\inst|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|13~combout\,
	datab => \inst2|13~combout\,
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X25_Y4_N6
\inst|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|Add1~3\ & (((\inst2|14~combout\) # (\inst1|14~combout\)))) # (!\inst|Add1~3\ & ((((\inst2|14~combout\) # (\inst1|14~combout\)))))
-- \inst|Add1~5\ = CARRY((!\inst|Add1~3\ & ((\inst2|14~combout\) # (\inst1|14~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|14~combout\,
	datab => \inst1|14~combout\,
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X25_Y4_N8
\inst|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst2|15~combout\ & (((!\inst|Add1~5\)))) # (!\inst2|15~combout\ & ((\inst1|15~combout\ & (!\inst|Add1~5\)) # (!\inst1|15~combout\ & ((\inst|Add1~5\) # (GND)))))
-- \inst|Add1~7\ = CARRY(((!\inst2|15~combout\ & !\inst1|15~combout\)) # (!\inst|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|15~combout\,
	datab => \inst1|15~combout\,
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X25_Y4_N10
\inst|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|Add1~7\ & (((\inst2|16~combout\) # (\inst1|16~combout\)))) # (!\inst|Add1~7\ & ((((\inst2|16~combout\) # (\inst1|16~combout\)))))
-- \inst|Add1~9\ = CARRY((!\inst|Add1~7\ & ((\inst2|16~combout\) # (\inst1|16~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|16~combout\,
	datab => \inst1|16~combout\,
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X25_Y4_N12
\inst|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst1|17~combout\ & (((!\inst|Add1~9\)))) # (!\inst1|17~combout\ & ((\inst2|17~combout\ & (!\inst|Add1~9\)) # (!\inst2|17~combout\ & ((\inst|Add1~9\) # (GND)))))
-- \inst|Add1~11\ = CARRY(((!\inst1|17~combout\ & !\inst2|17~combout\)) # (!\inst|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|17~combout\,
	datab => \inst2|17~combout\,
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X25_Y4_N14
\inst|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = (\inst|Add1~11\ & (((\inst2|18~combout\) # (\inst1|18~combout\)))) # (!\inst|Add1~11\ & ((((\inst2|18~combout\) # (\inst1|18~combout\)))))
-- \inst|Add1~13\ = CARRY((!\inst|Add1~11\ & ((\inst2|18~combout\) # (\inst1|18~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|18~combout\,
	datab => \inst1|18~combout\,
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: LCCOMB_X25_Y4_N16
\inst|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = (\inst1|19~combout\ & (((!\inst|Add1~13\)))) # (!\inst1|19~combout\ & ((\inst2|19~combout\ & (!\inst|Add1~13\)) # (!\inst2|19~combout\ & ((\inst|Add1~13\) # (GND)))))
-- \inst|Add1~15\ = CARRY(((!\inst1|19~combout\ & !\inst2|19~combout\)) # (!\inst|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|19~combout\,
	datab => \inst2|19~combout\,
	datad => VCC,
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\,
	cout => \inst|Add1~15\);

-- Location: LCCOMB_X25_Y4_N18
\inst|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~16_combout\ = !\inst|Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add1~15\,
	combout => \inst|Add1~16_combout\);

-- Location: LCCOMB_X31_Y3_N20
\inst|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~6_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\M~input_o\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\M~input_o\ & !\inst|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datac => \M~input_o\,
	datad => \inst|Add1~16_combout\,
	combout => \inst|Mux0~6_combout\);

-- Location: LCCOMB_X31_Y3_N18
\inst|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~7_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst|Add13~18_combout\) # (\inst|Mux0~6_combout\))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((!\inst|Mux0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst|Add13~18_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst|Mux0~6_combout\,
	combout => \inst|Mux0~7_combout\);

-- Location: LCCOMB_X31_Y3_N24
\inst|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~8_combout\ = (\M~input_o\ & ((!\inst|Mux0~7_combout\))) # (!\M~input_o\ & (!\inst|Add18~18_combout\ & \inst|Mux0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add18~18_combout\,
	datac => \M~input_o\,
	datad => \inst|Mux0~7_combout\,
	combout => \inst|Mux0~8_combout\);

-- Location: LCCOMB_X25_Y2_N10
\inst|Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~1_cout\ = CARRY(\CN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CN~input_o\,
	datad => VCC,
	cout => \inst|Add6~1_cout\);

-- Location: LCCOMB_X25_Y2_N12
\inst|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~2_combout\ = (\inst|F9~31_combout\ & ((\inst|F9~30_combout\ & (\inst|Add6~1_cout\ & VCC)) # (!\inst|F9~30_combout\ & (!\inst|Add6~1_cout\)))) # (!\inst|F9~31_combout\ & ((\inst|F9~30_combout\ & (!\inst|Add6~1_cout\)) # (!\inst|F9~30_combout\ & 
-- ((\inst|Add6~1_cout\) # (GND)))))
-- \inst|Add6~3\ = CARRY((\inst|F9~31_combout\ & (!\inst|F9~30_combout\ & !\inst|Add6~1_cout\)) # (!\inst|F9~31_combout\ & ((!\inst|Add6~1_cout\) # (!\inst|F9~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~31_combout\,
	datab => \inst|F9~30_combout\,
	datad => VCC,
	cin => \inst|Add6~1_cout\,
	combout => \inst|Add6~2_combout\,
	cout => \inst|Add6~3\);

-- Location: LCCOMB_X25_Y2_N14
\inst|Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~4_combout\ = ((\inst|F9~28_combout\ $ (\inst|F9~29_combout\ $ (!\inst|Add6~3\)))) # (GND)
-- \inst|Add6~5\ = CARRY((\inst|F9~28_combout\ & ((\inst|F9~29_combout\) # (!\inst|Add6~3\))) # (!\inst|F9~28_combout\ & (\inst|F9~29_combout\ & !\inst|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~28_combout\,
	datab => \inst|F9~29_combout\,
	datad => VCC,
	cin => \inst|Add6~3\,
	combout => \inst|Add6~4_combout\,
	cout => \inst|Add6~5\);

-- Location: LCCOMB_X25_Y2_N16
\inst|Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~6_combout\ = (\inst|F9~27_combout\ & ((\inst|F9~26_combout\ & (\inst|Add6~5\ & VCC)) # (!\inst|F9~26_combout\ & (!\inst|Add6~5\)))) # (!\inst|F9~27_combout\ & ((\inst|F9~26_combout\ & (!\inst|Add6~5\)) # (!\inst|F9~26_combout\ & 
-- ((\inst|Add6~5\) # (GND)))))
-- \inst|Add6~7\ = CARRY((\inst|F9~27_combout\ & (!\inst|F9~26_combout\ & !\inst|Add6~5\)) # (!\inst|F9~27_combout\ & ((!\inst|Add6~5\) # (!\inst|F9~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~27_combout\,
	datab => \inst|F9~26_combout\,
	datad => VCC,
	cin => \inst|Add6~5\,
	combout => \inst|Add6~6_combout\,
	cout => \inst|Add6~7\);

-- Location: LCCOMB_X25_Y2_N18
\inst|Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~8_combout\ = ((\inst|F9~24_combout\ $ (\inst|F9~25_combout\ $ (!\inst|Add6~7\)))) # (GND)
-- \inst|Add6~9\ = CARRY((\inst|F9~24_combout\ & ((\inst|F9~25_combout\) # (!\inst|Add6~7\))) # (!\inst|F9~24_combout\ & (\inst|F9~25_combout\ & !\inst|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~24_combout\,
	datab => \inst|F9~25_combout\,
	datad => VCC,
	cin => \inst|Add6~7\,
	combout => \inst|Add6~8_combout\,
	cout => \inst|Add6~9\);

-- Location: LCCOMB_X25_Y2_N20
\inst|Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~10_combout\ = (\inst|F9~23_combout\ & ((\inst|F9~22_combout\ & (\inst|Add6~9\ & VCC)) # (!\inst|F9~22_combout\ & (!\inst|Add6~9\)))) # (!\inst|F9~23_combout\ & ((\inst|F9~22_combout\ & (!\inst|Add6~9\)) # (!\inst|F9~22_combout\ & 
-- ((\inst|Add6~9\) # (GND)))))
-- \inst|Add6~11\ = CARRY((\inst|F9~23_combout\ & (!\inst|F9~22_combout\ & !\inst|Add6~9\)) # (!\inst|F9~23_combout\ & ((!\inst|Add6~9\) # (!\inst|F9~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~23_combout\,
	datab => \inst|F9~22_combout\,
	datad => VCC,
	cin => \inst|Add6~9\,
	combout => \inst|Add6~10_combout\,
	cout => \inst|Add6~11\);

-- Location: LCCOMB_X25_Y2_N22
\inst|Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~12_combout\ = ((\inst|F9~21_combout\ $ (\inst|F9~20_combout\ $ (!\inst|Add6~11\)))) # (GND)
-- \inst|Add6~13\ = CARRY((\inst|F9~21_combout\ & ((\inst|F9~20_combout\) # (!\inst|Add6~11\))) # (!\inst|F9~21_combout\ & (\inst|F9~20_combout\ & !\inst|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~21_combout\,
	datab => \inst|F9~20_combout\,
	datad => VCC,
	cin => \inst|Add6~11\,
	combout => \inst|Add6~12_combout\,
	cout => \inst|Add6~13\);

-- Location: LCCOMB_X25_Y2_N24
\inst|Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~14_combout\ = (\inst|F9~18_combout\ & ((\inst|F9~19_combout\ & (\inst|Add6~13\ & VCC)) # (!\inst|F9~19_combout\ & (!\inst|Add6~13\)))) # (!\inst|F9~18_combout\ & ((\inst|F9~19_combout\ & (!\inst|Add6~13\)) # (!\inst|F9~19_combout\ & 
-- ((\inst|Add6~13\) # (GND)))))
-- \inst|Add6~15\ = CARRY((\inst|F9~18_combout\ & (!\inst|F9~19_combout\ & !\inst|Add6~13\)) # (!\inst|F9~18_combout\ & ((!\inst|Add6~13\) # (!\inst|F9~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~18_combout\,
	datab => \inst|F9~19_combout\,
	datad => VCC,
	cin => \inst|Add6~13\,
	combout => \inst|Add6~14_combout\,
	cout => \inst|Add6~15\);

-- Location: LCCOMB_X25_Y2_N26
\inst|Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~16_combout\ = ((\inst|F9~17_combout\ $ (\inst|F9~16_combout\ $ (!\inst|Add6~15\)))) # (GND)
-- \inst|Add6~17\ = CARRY((\inst|F9~17_combout\ & ((\inst|F9~16_combout\) # (!\inst|Add6~15\))) # (!\inst|F9~17_combout\ & (\inst|F9~16_combout\ & !\inst|Add6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~17_combout\,
	datab => \inst|F9~16_combout\,
	datad => VCC,
	cin => \inst|Add6~15\,
	combout => \inst|Add6~16_combout\,
	cout => \inst|Add6~17\);

-- Location: LCCOMB_X25_Y2_N28
\inst|Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add6~18_combout\ = \inst|Add6~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add6~17\,
	combout => \inst|Add6~18_combout\);

-- Location: LCCOMB_X31_Y3_N6
\inst|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~9_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst|Mux0~8_combout\ & ((!\inst|Mux0~7_combout\))) # (!\inst|Mux0~8_combout\ & ((\inst|Add6~18_combout\) # (\inst|Mux0~7_combout\))))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (((\inst|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst|Mux0~8_combout\,
	datac => \inst|Add6~18_combout\,
	datad => \inst|Mux0~7_combout\,
	combout => \inst|Mux0~9_combout\);

-- Location: LCCOMB_X31_Y3_N0
\inst|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~14_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Mux0~9_combout\))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst|Mux0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|Mux0~13_combout\,
	datad => \inst|Mux0~9_combout\,
	combout => \inst|Mux0~14_combout\);

-- Location: LCCOMB_X31_Y3_N2
\inst|Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~17_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst|Mux0~14_combout\ & (\inst|Mux0~16_combout\)) # (!\inst|Mux0~14_combout\ & ((\inst|Mux0~5_combout\))))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (((\inst|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst|Mux0~16_combout\,
	datac => \inst|Mux0~5_combout\,
	datad => \inst|Mux0~14_combout\,
	combout => \inst|Mux0~17_combout\);

-- Location: LCCOMB_X26_Y1_N26
\inst|Mux1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~21_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Add10~14_combout\) # (\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst|Add8~16_combout\ & ((!\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add8~16_combout\,
	datab => \inst|Add10~14_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \M~input_o\,
	combout => \inst|Mux1~21_combout\);

-- Location: LCCOMB_X25_Y1_N26
\inst|Mux1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~22_combout\ = (\M~input_o\ & ((\inst2|19~combout\ & (!\inst1|19~combout\ & !\inst|Mux1~21_combout\)) # (!\inst2|19~combout\ & (\inst1|19~combout\)))) # (!\M~input_o\ & (((\inst|Mux1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|19~combout\,
	datab => \inst1|19~combout\,
	datac => \M~input_o\,
	datad => \inst|Mux1~21_combout\,
	combout => \inst|Mux1~22_combout\);

-- Location: LCCOMB_X25_Y1_N28
\inst|Mux1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~23_combout\ = (\M~input_o\ & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # ((!\inst|F9~0_combout\)))) # (!\M~input_o\ & (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Add4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|F9~0_combout\,
	datad => \inst|Add4~16_combout\,
	combout => \inst|Mux1~23_combout\);

-- Location: LCCOMB_X25_Y1_N2
\inst|Mux1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~24_combout\ = (\inst|Mux1~23_combout\ & (((!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst2|19~combout\))) # (!\inst|Mux1~23_combout\ & (((\inst|Add6~16_combout\ & 
-- \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~23_combout\,
	datab => \inst2|19~combout\,
	datac => \inst|Add6~16_combout\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|Mux1~24_combout\);

-- Location: LCCOMB_X26_Y4_N12
\inst|Mux1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~25_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst|Mux1~22_combout\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst|Mux1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~22_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst|Mux1~24_combout\,
	combout => \inst|Mux1~25_combout\);

-- Location: LCCOMB_X29_Y2_N22
\inst|Mux1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~13_combout\ = (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|Mux1~13_combout\);

-- Location: LCCOMB_X28_Y4_N22
\inst|Mux1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~17_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & !\M~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \M~input_o\,
	combout => \inst|Mux1~17_combout\);

-- Location: LCCOMB_X28_Y4_N20
\inst|Mux1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~16_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # ((!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & !\M~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \M~input_o\,
	combout => \inst|Mux1~16_combout\);

-- Location: LCCOMB_X30_Y2_N28
\inst|Mux1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~14_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\ & (\inst|F9~17_combout\)) # (!\M~input_o\ & 
-- ((\inst|Add20~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~17_combout\,
	datab => \inst|Add20~16_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \M~input_o\,
	combout => \inst|Mux1~14_combout\);

-- Location: LCCOMB_X31_Y2_N24
\inst|Mux1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~15_combout\ = (\inst|Mux1~14_combout\ & ((\inst1|19~combout\) # ((!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\inst|Mux1~14_combout\ & (((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- \inst|Add22~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|19~combout\,
	datab => \inst|Mux1~14_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|Add22~14_combout\,
	combout => \inst|Mux1~15_combout\);

-- Location: LCCOMB_X30_Y2_N6
\inst|Mux1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~18_combout\ = (\inst|Mux1~17_combout\ & (((\inst|Mux1~15_combout\)) # (!\inst|Mux1~16_combout\))) # (!\inst|Mux1~17_combout\ & (\inst|Mux1~16_combout\ & (\inst1|18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~17_combout\,
	datab => \inst|Mux1~16_combout\,
	datac => \inst1|18~combout\,
	datad => \inst|Mux1~15_combout\,
	combout => \inst|Mux1~18_combout\);

-- Location: LCCOMB_X29_Y2_N16
\inst|Mux1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~19_combout\ = (\inst|Mux1~13_combout\ & ((\inst|Mux1~18_combout\ & ((\inst|Add18~16_combout\))) # (!\inst|Mux1~18_combout\ & (!\inst|F9~1_combout\)))) # (!\inst|Mux1~13_combout\ & (((\inst|Mux1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~1_combout\,
	datab => \inst|Add18~16_combout\,
	datac => \inst|Mux1~13_combout\,
	datad => \inst|Mux1~18_combout\,
	combout => \inst|Mux1~19_combout\);

-- Location: LCCOMB_X29_Y2_N24
\inst|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~2_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst|Mux1~2_combout\);

-- Location: LCCOMB_X25_Y2_N4
\inst|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~10_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\M~input_o\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\ & ((!\inst|F9~16_combout\))) # (!\M~input_o\ & 
-- (\inst|Add11~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \M~input_o\,
	datac => \inst|Add11~16_combout\,
	datad => \inst|F9~16_combout\,
	combout => \inst|Mux1~10_combout\);

-- Location: LCCOMB_X25_Y2_N30
\inst|F9~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~33_combout\ = \inst2|19~combout\ $ (\inst1|19~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|19~combout\,
	datac => \inst1|19~combout\,
	combout => \inst|F9~33_combout\);

-- Location: LCCOMB_X25_Y2_N8
\inst|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~11_combout\ = (\inst|Mux1~10_combout\ & (((!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (!\inst|F9~33_combout\)))) # (!\inst|Mux1~10_combout\ & (\inst|Add13~16_combout\ & 
-- ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add13~16_combout\,
	datab => \inst|Mux1~10_combout\,
	datac => \inst|F9~33_combout\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|Mux1~11_combout\);

-- Location: LCCOMB_X23_Y2_N24
\inst|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~9_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst|Mux1~9_combout\);

-- Location: LCCOMB_X26_Y1_N4
\inst|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~6_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|Mux1~6_combout\);

-- Location: LCCOMB_X30_Y1_N10
\inst|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~3_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (!\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \M~input_o\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|Mux1~3_combout\);

-- Location: LCCOMB_X25_Y4_N20
\inst|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~4_combout\ = (\M~input_o\ & (((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (!\inst1|19~combout\)))) # (!\M~input_o\ & (\inst|Add0~14_combout\ & ((!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \inst|Add0~14_combout\,
	datac => \inst1|19~combout\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|Mux1~4_combout\);

-- Location: LCCOMB_X25_Y4_N22
\inst|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~5_combout\ = (\inst|Mux1~4_combout\ & (((!\inst|F9~17_combout\) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\inst|Mux1~4_combout\ & (\inst|Add1~14_combout\ & 
-- (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~4_combout\,
	datab => \inst|Add1~14_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|F9~17_combout\,
	combout => \inst|Mux1~5_combout\);

-- Location: LCCOMB_X25_Y4_N28
\inst|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~7_combout\ = (\inst|Mux1~6_combout\ & ((\inst|Mux1~3_combout\) # ((\inst|Mux1~5_combout\)))) # (!\inst|Mux1~6_combout\ & (!\inst|Mux1~3_combout\ & ((\inst|F9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~6_combout\,
	datab => \inst|Mux1~3_combout\,
	datac => \inst|Mux1~5_combout\,
	datad => \inst|F9~1_combout\,
	combout => \inst|Mux1~7_combout\);

-- Location: LCCOMB_X24_Y3_N26
\inst|F9~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~32_combout\ = (!\M~input_o\ & \CN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \M~input_o\,
	datad => \CN~input_o\,
	combout => \inst|F9~32_combout\);

-- Location: LCCOMB_X24_Y3_N22
\inst|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~8_combout\ = (\inst|Mux1~7_combout\ & (((\inst|F9~32_combout\) # (!\inst|Mux1~3_combout\)))) # (!\inst|Mux1~7_combout\ & (\inst|Add2~14_combout\ & ((\inst|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~7_combout\,
	datab => \inst|Add2~14_combout\,
	datac => \inst|F9~32_combout\,
	datad => \inst|Mux1~3_combout\,
	combout => \inst|Mux1~8_combout\);

-- Location: LCCOMB_X23_Y2_N30
\inst|Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~12_combout\ = (\inst|Mux1~9_combout\ & (((\inst|Mux1~8_combout\) # (\inst|Mux1~2_combout\)))) # (!\inst|Mux1~9_combout\ & (\inst|Mux1~11_combout\ & ((!\inst|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~11_combout\,
	datab => \inst|Mux1~9_combout\,
	datac => \inst|Mux1~8_combout\,
	datad => \inst|Mux1~2_combout\,
	combout => \inst|Mux1~12_combout\);

-- Location: LCCOMB_X29_Y3_N0
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\M~input_o\ & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # ((\inst2|19~combout\)))) # (!\M~input_o\ & (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Add15~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst2|19~combout\,
	datad => \inst|Add15~16_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y3_N30
\inst|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Mux1~0_combout\ & ((\inst|F9~0_combout\))) # (!\inst|Mux1~0_combout\ & (\inst|Add17~14_combout\)))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add17~14_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|F9~0_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \inst|Mux1~1_combout\);

-- Location: LCCOMB_X23_Y2_N12
\inst|Mux1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~20_combout\ = (\inst|Mux1~2_combout\ & ((\inst|Mux1~12_combout\ & (\inst|Mux1~19_combout\)) # (!\inst|Mux1~12_combout\ & ((\inst|Mux1~1_combout\))))) # (!\inst|Mux1~2_combout\ & (((\inst|Mux1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~19_combout\,
	datab => \inst|Mux1~2_combout\,
	datac => \inst|Mux1~12_combout\,
	datad => \inst|Mux1~1_combout\,
	combout => \inst|Mux1~20_combout\);

-- Location: LCCOMB_X26_Y4_N22
\inst|Mux1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~26_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst|Mux1~20_combout\))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) 
-- & (\inst|Mux1~25_combout\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (((\inst|Mux1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~25_combout\,
	datab => \inst|Mux1~20_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst|Mux1~26_combout\);

-- Location: LCCOMB_X26_Y2_N30
\inst|Mux2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~16_combout\ = (\M~input_o\ & (((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (!\inst|F9~2_combout\)))) # (!\M~input_o\ & (\inst|Add4~14_combout\ & ((!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~14_combout\,
	datab => \inst|F9~2_combout\,
	datac => \M~input_o\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|Mux2~16_combout\);

-- Location: LCCOMB_X26_Y2_N16
\inst|Mux2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~17_combout\ = (\inst|Mux2~16_combout\ & (((!\inst2|18~combout\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) # (!\inst|Mux2~16_combout\ & (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- ((\inst|Add6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~16_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst2|18~combout\,
	datad => \inst|Add6~14_combout\,
	combout => \inst|Mux2~17_combout\);

-- Location: LCCOMB_X26_Y3_N28
\inst|Mux2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~14_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\) # (\inst|Add10~12_combout\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst|Add8~14_combout\ & (!\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|Add8~14_combout\,
	datac => \M~input_o\,
	datad => \inst|Add10~12_combout\,
	combout => \inst|Mux2~14_combout\);

-- Location: LCCOMB_X26_Y2_N20
\inst|Mux2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~15_combout\ = (\M~input_o\ & ((\inst1|18~combout\ & (!\inst2|18~combout\)) # (!\inst1|18~combout\ & (\inst2|18~combout\ & !\inst|Mux2~14_combout\)))) # (!\M~input_o\ & (((\inst|Mux2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|18~combout\,
	datab => \inst2|18~combout\,
	datac => \M~input_o\,
	datad => \inst|Mux2~14_combout\,
	combout => \inst|Mux2~15_combout\);

-- Location: LCCOMB_X26_Y2_N10
\inst|Mux2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~18_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst|Mux2~15_combout\))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst|Mux2~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux2~17_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst|Mux2~15_combout\,
	combout => \inst|Mux2~18_combout\);

-- Location: LCCOMB_X25_Y3_N6
\inst|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~2_combout\ = (\inst|Mux1~3_combout\ & (((\inst|Mux1~6_combout\) # (\inst|Add2~12_combout\)))) # (!\inst|Mux1~3_combout\ & (\inst|F9~3_combout\ & (!\inst|Mux1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~3_combout\,
	datab => \inst|F9~3_combout\,
	datac => \inst|Mux1~6_combout\,
	datad => \inst|Add2~12_combout\,
	combout => \inst|Mux2~2_combout\);

-- Location: LCCOMB_X24_Y4_N0
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\ & ((!\inst1|18~combout\))) # (!\M~input_o\ & 
-- (\inst|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~12_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst1|18~combout\,
	datad => \M~input_o\,
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X25_Y3_N0
\inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = (\inst|Mux2~0_combout\ & (((!\inst|F9~19_combout\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) # (!\inst|Mux2~0_combout\ & (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- ((\inst|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~0_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|F9~19_combout\,
	datad => \inst|Add1~12_combout\,
	combout => \inst|Mux2~1_combout\);

-- Location: LCCOMB_X25_Y3_N28
\inst|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~3_combout\ = (\inst|Mux2~2_combout\ & (((\inst|F9~32_combout\) # (!\inst|Mux1~6_combout\)))) # (!\inst|Mux2~2_combout\ & (\inst|Mux2~1_combout\ & (\inst|Mux1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~2_combout\,
	datab => \inst|Mux2~1_combout\,
	datac => \inst|Mux1~6_combout\,
	datad => \inst|F9~32_combout\,
	combout => \inst|Mux2~3_combout\);

-- Location: LCCOMB_X28_Y3_N22
\inst|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~4_combout\ = (\M~input_o\ & ((\inst2|18~combout\) # ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\M~input_o\ & (((\inst|Add15~14_combout\ & !\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|18~combout\,
	datab => \inst|Add15~14_combout\,
	datac => \M~input_o\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|Mux2~4_combout\);

-- Location: LCCOMB_X28_Y3_N28
\inst|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~5_combout\ = (\inst|Mux2~4_combout\ & (((\inst|F9~2_combout\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) # (!\inst|Mux2~4_combout\ & (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- ((\inst|Add17~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~4_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|F9~2_combout\,
	datad => \inst|Add17~12_combout\,
	combout => \inst|Mux2~5_combout\);

-- Location: LCCOMB_X26_Y2_N6
\inst|F9~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~34_combout\ = \inst2|18~combout\ $ (\inst1|18~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|18~combout\,
	datac => \inst1|18~combout\,
	combout => \inst|F9~34_combout\);

-- Location: LCCOMB_X26_Y2_N8
\inst|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~6_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\ & ((!\inst|F9~18_combout\))) # (!\M~input_o\ & 
-- (\inst|Add11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add11~14_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \M~input_o\,
	datad => \inst|F9~18_combout\,
	combout => \inst|Mux2~6_combout\);

-- Location: LCCOMB_X23_Y2_N14
\inst|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~7_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Mux2~6_combout\ & (!\inst|F9~34_combout\)) # (!\inst|Mux2~6_combout\ & ((\inst|Add13~14_combout\))))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|F9~34_combout\,
	datac => \inst|Add13~14_combout\,
	datad => \inst|Mux2~6_combout\,
	combout => \inst|Mux2~7_combout\);

-- Location: LCCOMB_X23_Y2_N4
\inst|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~8_combout\ = (\inst|Mux1~9_combout\ & (((\inst|Mux1~2_combout\)))) # (!\inst|Mux1~9_combout\ & ((\inst|Mux1~2_combout\ & (\inst|Mux2~5_combout\)) # (!\inst|Mux1~2_combout\ & ((\inst|Mux2~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~5_combout\,
	datab => \inst|Mux1~9_combout\,
	datac => \inst|Mux2~7_combout\,
	datad => \inst|Mux1~2_combout\,
	combout => \inst|Mux2~8_combout\);

-- Location: LCCOMB_X30_Y2_N0
\inst|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~9_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\ & ((\inst|F9~19_combout\))) # (!\M~input_o\ & 
-- (\inst|Add20~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add20~14_combout\,
	datab => \inst|F9~19_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \M~input_o\,
	combout => \inst|Mux2~9_combout\);

-- Location: LCCOMB_X30_Y2_N30
\inst|Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~10_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Mux2~9_combout\ & (\inst1|18~combout\)) # (!\inst|Mux2~9_combout\ & ((\inst|Add22~12_combout\))))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Mux2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|18~combout\,
	datab => \inst|Add22~12_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|Mux2~9_combout\,
	combout => \inst|Mux2~10_combout\);

-- Location: LCCOMB_X30_Y3_N22
\inst|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~11_combout\ = (\inst|Mux1~16_combout\ & ((\inst|Mux1~17_combout\ & ((\inst|Mux2~10_combout\))) # (!\inst|Mux1~17_combout\ & (\inst1|17~combout\)))) # (!\inst|Mux1~16_combout\ & (((\inst|Mux1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|17~combout\,
	datab => \inst|Mux1~16_combout\,
	datac => \inst|Mux2~10_combout\,
	datad => \inst|Mux1~17_combout\,
	combout => \inst|Mux2~11_combout\);

-- Location: LCCOMB_X30_Y3_N0
\inst|Mux2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~12_combout\ = (\inst|Mux1~13_combout\ & ((\inst|Mux2~11_combout\ & (\inst|Add18~14_combout\)) # (!\inst|Mux2~11_combout\ & ((!\inst|F9~3_combout\))))) # (!\inst|Mux1~13_combout\ & (((\inst|Mux2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~13_combout\,
	datab => \inst|Add18~14_combout\,
	datac => \inst|Mux2~11_combout\,
	datad => \inst|F9~3_combout\,
	combout => \inst|Mux2~12_combout\);

-- Location: LCCOMB_X23_Y2_N22
\inst|Mux2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~13_combout\ = (\inst|Mux1~9_combout\ & ((\inst|Mux2~8_combout\ & ((\inst|Mux2~12_combout\))) # (!\inst|Mux2~8_combout\ & (\inst|Mux2~3_combout\)))) # (!\inst|Mux1~9_combout\ & (((\inst|Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~3_combout\,
	datab => \inst|Mux1~9_combout\,
	datac => \inst|Mux2~8_combout\,
	datad => \inst|Mux2~12_combout\,
	combout => \inst|Mux2~13_combout\);

-- Location: LCCOMB_X23_Y2_N8
\inst|Mux2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~19_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst|Mux2~13_combout\))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) 
-- & (\inst|Mux2~18_combout\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (((\inst|Mux2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~18_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst|Mux2~13_combout\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst|Mux2~19_combout\);

-- Location: LCCOMB_X26_Y2_N22
\inst|Mux3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~16_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\ & ((!\inst|F9~4_combout\))) # (!\M~input_o\ & 
-- (\inst|Add4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~12_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \M~input_o\,
	datad => \inst|F9~4_combout\,
	combout => \inst|Mux3~16_combout\);

-- Location: LCCOMB_X26_Y2_N12
\inst|Mux3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~17_combout\ = (\inst|Mux3~16_combout\ & (((!\inst2|17~combout\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) # (!\inst|Mux3~16_combout\ & (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- ((\inst|Add6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~16_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst2|17~combout\,
	datad => \inst|Add6~12_combout\,
	combout => \inst|Mux3~17_combout\);

-- Location: LCCOMB_X26_Y1_N0
\inst|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~14_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Add10~10_combout\) # ((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Add8~12_combout\ & !\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add10~10_combout\,
	datab => \inst|Add8~12_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \M~input_o\,
	combout => \inst|Mux3~14_combout\);

-- Location: LCCOMB_X26_Y2_N4
\inst|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~15_combout\ = (\M~input_o\ & ((\inst1|17~combout\ & (!\inst2|17~combout\)) # (!\inst1|17~combout\ & (\inst2|17~combout\ & !\inst|Mux3~14_combout\)))) # (!\M~input_o\ & (((\inst|Mux3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \inst1|17~combout\,
	datac => \inst2|17~combout\,
	datad => \inst|Mux3~14_combout\,
	combout => \inst|Mux3~15_combout\);

-- Location: LCCOMB_X26_Y2_N14
\inst|Mux3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~18_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst|Mux3~15_combout\))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst|Mux3~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~17_combout\,
	datab => \inst|Mux3~15_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst|Mux3~18_combout\);

-- Location: LCCOMB_X24_Y4_N30
\inst|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~2_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\ & (!\inst1|17~combout\)) # (!\M~input_o\ & 
-- ((\inst|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|17~combout\,
	datab => \inst|Add0~10_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \M~input_o\,
	combout => \inst|Mux3~2_combout\);

-- Location: LCCOMB_X24_Y4_N8
\inst|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~3_combout\ = (\inst|Mux3~2_combout\ & (((!\inst|F9~21_combout\) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\inst|Mux3~2_combout\ & (\inst|Add1~10_combout\ & 
-- (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~2_combout\,
	datab => \inst|Add1~10_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|F9~21_combout\,
	combout => \inst|Mux3~3_combout\);

-- Location: LCCOMB_X25_Y3_N2
\inst|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~4_combout\ = (\inst|Mux1~3_combout\ & (\inst|Mux1~6_combout\)) # (!\inst|Mux1~3_combout\ & ((\inst|Mux1~6_combout\ & (\inst|Mux3~3_combout\)) # (!\inst|Mux1~6_combout\ & ((\inst|F9~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~3_combout\,
	datab => \inst|Mux1~6_combout\,
	datac => \inst|Mux3~3_combout\,
	datad => \inst|F9~5_combout\,
	combout => \inst|Mux3~4_combout\);

-- Location: LCCOMB_X25_Y3_N12
\inst|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~5_combout\ = (\inst|Mux1~3_combout\ & ((\inst|Mux3~4_combout\ & ((\inst|F9~32_combout\))) # (!\inst|Mux3~4_combout\ & (\inst|Add2~10_combout\)))) # (!\inst|Mux1~3_combout\ & (\inst|Mux3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~3_combout\,
	datab => \inst|Mux3~4_combout\,
	datac => \inst|Add2~10_combout\,
	datad => \inst|F9~32_combout\,
	combout => \inst|Mux3~5_combout\);

-- Location: LCCOMB_X29_Y1_N0
\inst|F9~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~35_combout\ = \inst2|17~combout\ $ (\inst1|17~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|17~combout\,
	datad => \inst1|17~combout\,
	combout => \inst|F9~35_combout\);

-- Location: LCCOMB_X29_Y2_N14
\inst|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~6_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\ & ((!\inst|F9~20_combout\))) # (!\M~input_o\ & 
-- (\inst|Add11~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|Add11~12_combout\,
	datac => \M~input_o\,
	datad => \inst|F9~20_combout\,
	combout => \inst|Mux3~6_combout\);

-- Location: LCCOMB_X29_Y2_N20
\inst|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~7_combout\ = (\inst|Mux3~6_combout\ & (((!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (!\inst|F9~35_combout\)))) # (!\inst|Mux3~6_combout\ & (\inst|Add13~12_combout\ & 
-- ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add13~12_combout\,
	datab => \inst|F9~35_combout\,
	datac => \inst|Mux3~6_combout\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|Mux3~7_combout\);

-- Location: LCCOMB_X29_Y2_N10
\inst|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~8_combout\ = (\inst|Mux1~9_combout\ & ((\inst|Mux3~5_combout\) # ((\inst|Mux1~2_combout\)))) # (!\inst|Mux1~9_combout\ & (((\inst|Mux3~7_combout\ & !\inst|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~5_combout\,
	datab => \inst|Mux3~7_combout\,
	datac => \inst|Mux1~9_combout\,
	datad => \inst|Mux1~2_combout\,
	combout => \inst|Mux3~8_combout\);

-- Location: LCCOMB_X30_Y2_N4
\inst|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~9_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\ & (\inst|F9~21_combout\)) # (!\M~input_o\ & 
-- ((\inst|Add20~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~21_combout\,
	datab => \inst|Add20~12_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \M~input_o\,
	combout => \inst|Mux3~9_combout\);

-- Location: LCCOMB_X31_Y2_N30
\inst|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~10_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Mux3~9_combout\ & ((\inst1|17~combout\))) # (!\inst|Mux3~9_combout\ & (\inst|Add22~10_combout\)))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|Add22~10_combout\,
	datac => \inst1|17~combout\,
	datad => \inst|Mux3~9_combout\,
	combout => \inst|Mux3~10_combout\);

-- Location: LCCOMB_X31_Y2_N22
\inst|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~11_combout\ = (\inst|Mux1~16_combout\ & ((\inst|Mux1~17_combout\ & (\inst|Mux3~10_combout\)) # (!\inst|Mux1~17_combout\ & ((\inst1|16~combout\))))) # (!\inst|Mux1~16_combout\ & (\inst|Mux1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~16_combout\,
	datab => \inst|Mux1~17_combout\,
	datac => \inst|Mux3~10_combout\,
	datad => \inst1|16~combout\,
	combout => \inst|Mux3~11_combout\);

-- Location: LCCOMB_X29_Y2_N4
\inst|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~12_combout\ = (\inst|Mux1~13_combout\ & ((\inst|Mux3~11_combout\ & (\inst|Add18~12_combout\)) # (!\inst|Mux3~11_combout\ & ((!\inst|F9~5_combout\))))) # (!\inst|Mux1~13_combout\ & (\inst|Mux3~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~13_combout\,
	datab => \inst|Mux3~11_combout\,
	datac => \inst|Add18~12_combout\,
	datad => \inst|F9~5_combout\,
	combout => \inst|Mux3~12_combout\);

-- Location: LCCOMB_X28_Y3_N26
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\M~input_o\ & ((\inst2|17~combout\) # ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\M~input_o\ & (((\inst|Add15~12_combout\ & !\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|17~combout\,
	datab => \inst|Add15~12_combout\,
	datac => \M~input_o\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X29_Y3_N28
\inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Mux3~0_combout\ & ((\inst|F9~4_combout\))) # (!\inst|Mux3~0_combout\ & (\inst|Add17~10_combout\)))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add17~10_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|Mux3~0_combout\,
	datad => \inst|F9~4_combout\,
	combout => \inst|Mux3~1_combout\);

-- Location: LCCOMB_X29_Y2_N2
\inst|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~13_combout\ = (\inst|Mux3~8_combout\ & (((\inst|Mux3~12_combout\)) # (!\inst|Mux1~2_combout\))) # (!\inst|Mux3~8_combout\ & (\inst|Mux1~2_combout\ & ((\inst|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~8_combout\,
	datab => \inst|Mux1~2_combout\,
	datac => \inst|Mux3~12_combout\,
	datad => \inst|Mux3~1_combout\,
	combout => \inst|Mux3~13_combout\);

-- Location: LCCOMB_X29_Y2_N8
\inst|Mux3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~19_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst|Mux3~13_combout\))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) 
-- & (\inst|Mux3~18_combout\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (((\inst|Mux3~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~18_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => \inst|Mux3~13_combout\,
	combout => \inst|Mux3~19_combout\);

-- Location: LCCOMB_X29_Y3_N26
\inst|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~4_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Add17~8_combout\) # ((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Add15~10_combout\ & !\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add17~8_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|Add15~10_combout\,
	datad => \M~input_o\,
	combout => \inst|Mux4~4_combout\);

-- Location: LCCOMB_X30_Y3_N30
\inst|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~5_combout\ = (\M~input_o\ & (\inst2|16~combout\ & ((\inst1|16~combout\) # (!\inst|Mux4~4_combout\)))) # (!\M~input_o\ & (\inst|Mux4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~4_combout\,
	datab => \inst2|16~combout\,
	datac => \M~input_o\,
	datad => \inst1|16~combout\,
	combout => \inst|Mux4~5_combout\);

-- Location: LCCOMB_X24_Y2_N24
\inst|F9~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~36_combout\ = \inst1|16~combout\ $ (\inst2|16~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|16~combout\,
	datac => \inst2|16~combout\,
	combout => \inst|F9~36_combout\);

-- Location: LCCOMB_X25_Y2_N6
\inst|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~6_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\ & (!\inst|F9~22_combout\)) # (!\M~input_o\ & 
-- ((\inst|Add11~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|F9~22_combout\,
	datac => \inst|Add11~10_combout\,
	datad => \M~input_o\,
	combout => \inst|Mux4~6_combout\);

-- Location: LCCOMB_X24_Y2_N22
\inst|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~7_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Mux4~6_combout\ & ((!\inst|F9~36_combout\))) # (!\inst|Mux4~6_combout\ & (\inst|Add13~10_combout\)))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add13~10_combout\,
	datab => \inst|F9~36_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|Mux4~6_combout\,
	combout => \inst|Mux4~7_combout\);

-- Location: LCCOMB_X23_Y2_N26
\inst|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~8_combout\ = (\inst|Mux1~9_combout\ & (((\inst|Mux1~2_combout\)))) # (!\inst|Mux1~9_combout\ & ((\inst|Mux1~2_combout\ & (\inst|Mux4~5_combout\)) # (!\inst|Mux1~2_combout\ & ((\inst|Mux4~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~5_combout\,
	datab => \inst|Mux1~9_combout\,
	datac => \inst|Mux4~7_combout\,
	datad => \inst|Mux1~2_combout\,
	combout => \inst|Mux4~8_combout\);

-- Location: LCCOMB_X24_Y4_N6
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\M~input_o\ & (((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst1|16~combout\))) # (!\M~input_o\ & (((!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \inst1|16~combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|Add0~8_combout\,
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y4_N4
\inst|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~1_combout\ = (\inst|Mux4~0_combout\ & (((!\inst|F9~23_combout\) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\inst|Mux4~0_combout\ & (\inst|Add1~8_combout\ & 
-- (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~0_combout\,
	datab => \inst|Add1~8_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|F9~23_combout\,
	combout => \inst|Mux4~1_combout\);

-- Location: LCCOMB_X24_Y3_N24
\inst|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~2_combout\ = (\inst|Mux1~6_combout\ & (((\inst|Mux1~3_combout\)))) # (!\inst|Mux1~6_combout\ & ((\inst|Mux1~3_combout\ & ((\inst|Add2~8_combout\))) # (!\inst|Mux1~3_combout\ & (\inst|F9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~6_combout\,
	datab => \inst|F9~7_combout\,
	datac => \inst|Add2~8_combout\,
	datad => \inst|Mux1~3_combout\,
	combout => \inst|Mux4~2_combout\);

-- Location: LCCOMB_X24_Y3_N2
\inst|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~3_combout\ = (\inst|Mux4~2_combout\ & (((\inst|F9~32_combout\) # (!\inst|Mux1~6_combout\)))) # (!\inst|Mux4~2_combout\ & (\inst|Mux4~1_combout\ & ((\inst|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~1_combout\,
	datab => \inst|Mux4~2_combout\,
	datac => \inst|F9~32_combout\,
	datad => \inst|Mux1~6_combout\,
	combout => \inst|Mux4~3_combout\);

-- Location: LCCOMB_X26_Y1_N14
\inst|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~9_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Add22~8_combout\) # (\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst|Add20~10_combout\ & ((!\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add20~10_combout\,
	datab => \inst|Add22~8_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \M~input_o\,
	combout => \inst|Mux4~9_combout\);

-- Location: LCCOMB_X26_Y1_N20
\inst|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~10_combout\ = (\M~input_o\ & ((\inst1|16~combout\) # ((\inst2|16~combout\ & !\inst|Mux4~9_combout\)))) # (!\M~input_o\ & (((\inst|Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|16~combout\,
	datab => \inst1|16~combout\,
	datac => \inst|Mux4~9_combout\,
	datad => \M~input_o\,
	combout => \inst|Mux4~10_combout\);

-- Location: LCCOMB_X28_Y1_N6
\inst|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~11_combout\ = (\inst|Mux1~17_combout\ & ((\inst|Mux4~10_combout\) # ((!\inst|Mux1~16_combout\)))) # (!\inst|Mux1~17_combout\ & (((\inst1|15~combout\ & \inst|Mux1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~10_combout\,
	datab => \inst1|15~combout\,
	datac => \inst|Mux1~17_combout\,
	datad => \inst|Mux1~16_combout\,
	combout => \inst|Mux4~11_combout\);

-- Location: LCCOMB_X23_Y2_N20
\inst|Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~12_combout\ = (\inst|Mux1~13_combout\ & ((\inst|Mux4~11_combout\ & ((\inst|Add18~10_combout\))) # (!\inst|Mux4~11_combout\ & (!\inst|F9~7_combout\)))) # (!\inst|Mux1~13_combout\ & (\inst|Mux4~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~13_combout\,
	datab => \inst|Mux4~11_combout\,
	datac => \inst|F9~7_combout\,
	datad => \inst|Add18~10_combout\,
	combout => \inst|Mux4~12_combout\);

-- Location: LCCOMB_X23_Y2_N10
\inst|Mux4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~13_combout\ = (\inst|Mux4~8_combout\ & (((\inst|Mux4~12_combout\)) # (!\inst|Mux1~9_combout\))) # (!\inst|Mux4~8_combout\ & (\inst|Mux1~9_combout\ & (\inst|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~8_combout\,
	datab => \inst|Mux1~9_combout\,
	datac => \inst|Mux4~3_combout\,
	datad => \inst|Mux4~12_combout\,
	combout => \inst|Mux4~13_combout\);

-- Location: LCCOMB_X28_Y1_N8
\inst|Mux4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~16_combout\ = (\M~input_o\ & (((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst|F9~6_combout\))) # (!\M~input_o\ & (((!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst|Add4~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~6_combout\,
	datab => \M~input_o\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|Add4~10_combout\,
	combout => \inst|Mux4~16_combout\);

-- Location: LCCOMB_X25_Y1_N30
\inst|Mux4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~17_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Mux4~16_combout\ & ((!\inst2|16~combout\))) # (!\inst|Mux4~16_combout\ & (\inst|Add6~10_combout\)))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Mux4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add6~10_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst2|16~combout\,
	datad => \inst|Mux4~16_combout\,
	combout => \inst|Mux4~17_combout\);

-- Location: LCCOMB_X26_Y1_N22
\inst|Mux4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~14_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\) # ((\inst|Add10~8_combout\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\M~input_o\ & ((\inst|Add8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \M~input_o\,
	datac => \inst|Add10~8_combout\,
	datad => \inst|Add8~10_combout\,
	combout => \inst|Mux4~14_combout\);

-- Location: LCCOMB_X26_Y1_N12
\inst|Mux4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~15_combout\ = (\M~input_o\ & ((\inst2|16~combout\ & (!\inst1|16~combout\ & !\inst|Mux4~14_combout\)) # (!\inst2|16~combout\ & (\inst1|16~combout\)))) # (!\M~input_o\ & (((\inst|Mux4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|16~combout\,
	datab => \inst1|16~combout\,
	datac => \inst|Mux4~14_combout\,
	datad => \M~input_o\,
	combout => \inst|Mux4~15_combout\);

-- Location: LCCOMB_X26_Y1_N30
\inst|Mux4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~18_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst|Mux4~15_combout\))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst|Mux4~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux4~17_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst|Mux4~15_combout\,
	combout => \inst|Mux4~18_combout\);

-- Location: LCCOMB_X23_Y2_N0
\inst|Mux4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~19_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\inst|Mux4~13_combout\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- ((\inst|Mux4~18_combout\))))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst|Mux4~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~13_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst|Mux4~18_combout\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst|Mux4~19_combout\);

-- Location: LCCOMB_X28_Y2_N0
\inst|Mux5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~16_combout\ = (\M~input_o\ & (((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst|F9~8_combout\))) # (!\M~input_o\ & (((!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst|Add4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \inst|F9~8_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|Add4~8_combout\,
	combout => \inst|Mux5~16_combout\);

-- Location: LCCOMB_X26_Y2_N28
\inst|Mux5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~17_combout\ = (\inst|Mux5~16_combout\ & (((!\inst2|15~combout\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) # (!\inst|Mux5~16_combout\ & (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- ((\inst|Add6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~16_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst2|15~combout\,
	datad => \inst|Add6~8_combout\,
	combout => \inst|Mux5~17_combout\);

-- Location: LCCOMB_X28_Y1_N26
\inst|Mux5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~14_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Add10~6_combout\) # ((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Add8~8_combout\ & !\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add10~6_combout\,
	datab => \inst|Add8~8_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \M~input_o\,
	combout => \inst|Mux5~14_combout\);

-- Location: LCCOMB_X26_Y3_N0
\inst|Mux5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~15_combout\ = (\M~input_o\ & ((\inst2|15~combout\ & (!\inst1|15~combout\ & !\inst|Mux5~14_combout\)) # (!\inst2|15~combout\ & (\inst1|15~combout\)))) # (!\M~input_o\ & (((\inst|Mux5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|15~combout\,
	datab => \inst1|15~combout\,
	datac => \M~input_o\,
	datad => \inst|Mux5~14_combout\,
	combout => \inst|Mux5~15_combout\);

-- Location: LCCOMB_X26_Y4_N4
\inst|Mux5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~18_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst|Mux5~15_combout\))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst|Mux5~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~17_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst|Mux5~15_combout\,
	combout => \inst|Mux5~18_combout\);

-- Location: LCCOMB_X26_Y3_N2
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\) # (\inst|Add17~6_combout\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst|Add15~8_combout\ & (!\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|Add15~8_combout\,
	datac => \M~input_o\,
	datad => \inst|Add17~6_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y3_N12
\inst|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~1_combout\ = (\M~input_o\ & (\inst2|15~combout\ & ((\inst1|15~combout\) # (!\inst|Mux5~0_combout\)))) # (!\M~input_o\ & (((\inst|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|15~combout\,
	datab => \inst1|15~combout\,
	datac => \M~input_o\,
	datad => \inst|Mux5~0_combout\,
	combout => \inst|Mux5~1_combout\);

-- Location: LCCOMB_X25_Y3_N26
\inst|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~2_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\ & (!\inst1|15~combout\)) # (!\M~input_o\ & 
-- ((\inst|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|15~combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \M~input_o\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|Mux5~2_combout\);

-- Location: LCCOMB_X25_Y3_N8
\inst|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~3_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Mux5~2_combout\ & (!\inst|F9~25_combout\)) # (!\inst|Mux5~2_combout\ & ((\inst|Add1~6_combout\))))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~25_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|Mux5~2_combout\,
	datad => \inst|Add1~6_combout\,
	combout => \inst|Mux5~3_combout\);

-- Location: LCCOMB_X25_Y3_N30
\inst|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~4_combout\ = (\inst|Mux1~6_combout\ & (((\inst|Mux5~3_combout\) # (\inst|Mux1~3_combout\)))) # (!\inst|Mux1~6_combout\ & (\inst|F9~9_combout\ & ((!\inst|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~9_combout\,
	datab => \inst|Mux1~6_combout\,
	datac => \inst|Mux5~3_combout\,
	datad => \inst|Mux1~3_combout\,
	combout => \inst|Mux5~4_combout\);

-- Location: LCCOMB_X25_Y3_N16
\inst|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~5_combout\ = (\inst|Mux1~3_combout\ & ((\inst|Mux5~4_combout\ & (\inst|F9~32_combout\)) # (!\inst|Mux5~4_combout\ & ((\inst|Add2~6_combout\))))) # (!\inst|Mux1~3_combout\ & (((\inst|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~3_combout\,
	datab => \inst|F9~32_combout\,
	datac => \inst|Mux5~4_combout\,
	datad => \inst|Add2~6_combout\,
	combout => \inst|Mux5~5_combout\);

-- Location: LCCOMB_X26_Y3_N14
\inst|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~6_combout\ = (\M~input_o\ & (((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst|F9~24_combout\))) # (!\M~input_o\ & (((!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst|Add11~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~24_combout\,
	datab => \M~input_o\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|Add11~8_combout\,
	combout => \inst|Mux5~6_combout\);

-- Location: LCCOMB_X26_Y3_N4
\inst|F9~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~37_combout\ = \inst1|15~combout\ $ (\inst2|15~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|15~combout\,
	datad => \inst2|15~combout\,
	combout => \inst|F9~37_combout\);

-- Location: LCCOMB_X26_Y3_N18
\inst|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~7_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Mux5~6_combout\ & (!\inst|F9~37_combout\)) # (!\inst|Mux5~6_combout\ & ((\inst|Add13~8_combout\))))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst|Mux5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|Mux5~6_combout\,
	datac => \inst|F9~37_combout\,
	datad => \inst|Add13~8_combout\,
	combout => \inst|Mux5~7_combout\);

-- Location: LCCOMB_X26_Y3_N24
\inst|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~8_combout\ = (\inst|Mux1~9_combout\ & ((\inst|Mux5~5_combout\) # ((\inst|Mux1~2_combout\)))) # (!\inst|Mux1~9_combout\ & (((\inst|Mux5~7_combout\ & !\inst|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~5_combout\,
	datab => \inst|Mux5~7_combout\,
	datac => \inst|Mux1~9_combout\,
	datad => \inst|Mux1~2_combout\,
	combout => \inst|Mux5~8_combout\);

-- Location: LCCOMB_X26_Y3_N10
\inst|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~9_combout\ = (\M~input_o\ & (((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\M~input_o\ & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst|Add22~6_combout\)) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Add20~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add22~6_combout\,
	datab => \M~input_o\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|Add20~8_combout\,
	combout => \inst|Mux5~9_combout\);

-- Location: LCCOMB_X26_Y3_N8
\inst|Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~10_combout\ = (\M~input_o\ & ((\inst1|15~combout\) # ((\inst2|15~combout\ & !\inst|Mux5~9_combout\)))) # (!\M~input_o\ & (((\inst|Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|15~combout\,
	datab => \inst1|15~combout\,
	datac => \M~input_o\,
	datad => \inst|Mux5~9_combout\,
	combout => \inst|Mux5~10_combout\);

-- Location: LCCOMB_X30_Y3_N24
\inst|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~11_combout\ = (\inst|Mux1~17_combout\ & ((\inst|Mux5~10_combout\) # ((!\inst|Mux1~16_combout\)))) # (!\inst|Mux1~17_combout\ & (((\inst1|14~combout\ & \inst|Mux1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~10_combout\,
	datab => \inst|Mux1~17_combout\,
	datac => \inst1|14~combout\,
	datad => \inst|Mux1~16_combout\,
	combout => \inst|Mux5~11_combout\);

-- Location: LCCOMB_X30_Y3_N26
\inst|Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~12_combout\ = (\inst|Mux1~13_combout\ & ((\inst|Mux5~11_combout\ & ((\inst|Add18~8_combout\))) # (!\inst|Mux5~11_combout\ & (!\inst|F9~9_combout\)))) # (!\inst|Mux1~13_combout\ & (\inst|Mux5~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~13_combout\,
	datab => \inst|Mux5~11_combout\,
	datac => \inst|F9~9_combout\,
	datad => \inst|Add18~8_combout\,
	combout => \inst|Mux5~12_combout\);

-- Location: LCCOMB_X26_Y3_N26
\inst|Mux5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~13_combout\ = (\inst|Mux5~8_combout\ & (((\inst|Mux5~12_combout\) # (!\inst|Mux1~2_combout\)))) # (!\inst|Mux5~8_combout\ & (\inst|Mux5~1_combout\ & ((\inst|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux5~1_combout\,
	datab => \inst|Mux5~8_combout\,
	datac => \inst|Mux5~12_combout\,
	datad => \inst|Mux1~2_combout\,
	combout => \inst|Mux5~13_combout\);

-- Location: LCCOMB_X26_Y4_N26
\inst|Mux5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~19_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (((\inst|Mux5~13_combout\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst|Mux5~18_combout\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst|Mux5~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst|Mux5~18_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst|Mux5~13_combout\,
	combout => \inst|Mux5~19_combout\);

-- Location: LCCOMB_X25_Y4_N30
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\M~input_o\ & (((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst1|14~combout\))) # (!\M~input_o\ & (((\inst|Add0~4_combout\ & !\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \inst1|14~combout\,
	datac => \inst|Add0~4_combout\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X25_Y3_N10
\inst|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~1_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Mux6~0_combout\ & ((!\inst|F9~27_combout\))) # (!\inst|Mux6~0_combout\ & (\inst|Add1~4_combout\)))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~4_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|Mux6~0_combout\,
	datad => \inst|F9~27_combout\,
	combout => \inst|Mux6~1_combout\);

-- Location: LCCOMB_X25_Y3_N24
\inst|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~2_combout\ = (\inst|Mux1~6_combout\ & (((\inst|Mux1~3_combout\)))) # (!\inst|Mux1~6_combout\ & ((\inst|Mux1~3_combout\ & (\inst|Add2~4_combout\)) # (!\inst|Mux1~3_combout\ & ((\inst|F9~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~4_combout\,
	datab => \inst|F9~11_combout\,
	datac => \inst|Mux1~6_combout\,
	datad => \inst|Mux1~3_combout\,
	combout => \inst|Mux6~2_combout\);

-- Location: LCCOMB_X25_Y3_N18
\inst|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~3_combout\ = (\inst|Mux6~2_combout\ & (((\inst|F9~32_combout\) # (!\inst|Mux1~6_combout\)))) # (!\inst|Mux6~2_combout\ & (\inst|Mux6~1_combout\ & (\inst|Mux1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~1_combout\,
	datab => \inst|Mux6~2_combout\,
	datac => \inst|Mux1~6_combout\,
	datad => \inst|F9~32_combout\,
	combout => \inst|Mux6~3_combout\);

-- Location: LCCOMB_X31_Y2_N0
\inst|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~9_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\) # ((\inst|Add22~4_combout\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\M~input_o\ & ((\inst|Add20~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \M~input_o\,
	datac => \inst|Add22~4_combout\,
	datad => \inst|Add20~6_combout\,
	combout => \inst|Mux6~9_combout\);

-- Location: LCCOMB_X31_Y2_N2
\inst|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~10_combout\ = (\M~input_o\ & ((\inst1|14~combout\) # ((!\inst|Mux6~9_combout\ & \inst2|14~combout\)))) # (!\M~input_o\ & (\inst|Mux6~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~9_combout\,
	datab => \inst1|14~combout\,
	datac => \inst2|14~combout\,
	datad => \M~input_o\,
	combout => \inst|Mux6~10_combout\);

-- Location: LCCOMB_X31_Y2_N28
\inst|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~11_combout\ = (\inst|Mux1~16_combout\ & ((\inst|Mux1~17_combout\ & ((\inst|Mux6~10_combout\))) # (!\inst|Mux1~17_combout\ & (\inst1|13~combout\)))) # (!\inst|Mux1~16_combout\ & (\inst|Mux1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~16_combout\,
	datab => \inst|Mux1~17_combout\,
	datac => \inst1|13~combout\,
	datad => \inst|Mux6~10_combout\,
	combout => \inst|Mux6~11_combout\);

-- Location: LCCOMB_X28_Y1_N18
\inst|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~12_combout\ = (\inst|Mux6~11_combout\ & (((\inst|Add18~6_combout\)) # (!\inst|Mux1~13_combout\))) # (!\inst|Mux6~11_combout\ & (\inst|Mux1~13_combout\ & ((!\inst|F9~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~11_combout\,
	datab => \inst|Mux1~13_combout\,
	datac => \inst|Add18~6_combout\,
	datad => \inst|F9~11_combout\,
	combout => \inst|Mux6~12_combout\);

-- Location: LCCOMB_X28_Y1_N20
\inst|F9~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~38_combout\ = \inst2|14~combout\ $ (\inst1|14~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|14~combout\,
	datad => \inst1|14~combout\,
	combout => \inst|F9~38_combout\);

-- Location: LCCOMB_X28_Y1_N2
\inst|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~6_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\M~input_o\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\ & ((!\inst|F9~26_combout\))) # (!\M~input_o\ & 
-- (\inst|Add11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \M~input_o\,
	datac => \inst|Add11~6_combout\,
	datad => \inst|F9~26_combout\,
	combout => \inst|Mux6~6_combout\);

-- Location: LCCOMB_X28_Y1_N10
\inst|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~7_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Mux6~6_combout\ & ((!\inst|F9~38_combout\))) # (!\inst|Mux6~6_combout\ & (\inst|Add13~6_combout\)))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add13~6_combout\,
	datab => \inst|F9~38_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|Mux6~6_combout\,
	combout => \inst|Mux6~7_combout\);

-- Location: LCCOMB_X29_Y3_N24
\inst|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~4_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Add17~4_combout\) # (\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst|Add15~6_combout\ & ((!\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add15~6_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst|Add17~4_combout\,
	datad => \M~input_o\,
	combout => \inst|Mux6~4_combout\);

-- Location: LCCOMB_X28_Y1_N12
\inst|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~5_combout\ = (\M~input_o\ & (\inst2|14~combout\ & ((\inst1|14~combout\) # (!\inst|Mux6~4_combout\)))) # (!\M~input_o\ & (((\inst|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|14~combout\,
	datab => \M~input_o\,
	datac => \inst2|14~combout\,
	datad => \inst|Mux6~4_combout\,
	combout => \inst|Mux6~5_combout\);

-- Location: LCCOMB_X28_Y1_N28
\inst|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~8_combout\ = (\inst|Mux1~2_combout\ & (((\inst|Mux1~9_combout\) # (\inst|Mux6~5_combout\)))) # (!\inst|Mux1~2_combout\ & (\inst|Mux6~7_combout\ & (!\inst|Mux1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~7_combout\,
	datab => \inst|Mux1~2_combout\,
	datac => \inst|Mux1~9_combout\,
	datad => \inst|Mux6~5_combout\,
	combout => \inst|Mux6~8_combout\);

-- Location: LCCOMB_X28_Y1_N4
\inst|Mux6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~13_combout\ = (\inst|Mux1~9_combout\ & ((\inst|Mux6~8_combout\ & ((\inst|Mux6~12_combout\))) # (!\inst|Mux6~8_combout\ & (\inst|Mux6~3_combout\)))) # (!\inst|Mux1~9_combout\ & (((\inst|Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~3_combout\,
	datab => \inst|Mux6~12_combout\,
	datac => \inst|Mux1~9_combout\,
	datad => \inst|Mux6~8_combout\,
	combout => \inst|Mux6~13_combout\);

-- Location: LCCOMB_X28_Y3_N24
\inst|Mux6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~16_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\ & ((!\inst|F9~10_combout\))) # (!\M~input_o\ & 
-- (\inst|Add4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add4~6_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \M~input_o\,
	datad => \inst|F9~10_combout\,
	combout => \inst|Mux6~16_combout\);

-- Location: LCCOMB_X26_Y3_N22
\inst|Mux6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~17_combout\ = (\inst|Mux6~16_combout\ & (((!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst2|14~combout\))) # (!\inst|Mux6~16_combout\ & (((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- \inst|Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~16_combout\,
	datab => \inst2|14~combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|Add6~6_combout\,
	combout => \inst|Mux6~17_combout\);

-- Location: LCCOMB_X28_Y1_N22
\inst|Mux6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~14_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Add10~4_combout\) # ((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Add8~6_combout\ & !\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|Add10~4_combout\,
	datac => \inst|Add8~6_combout\,
	datad => \M~input_o\,
	combout => \inst|Mux6~14_combout\);

-- Location: LCCOMB_X28_Y1_N16
\inst|Mux6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~15_combout\ = (\M~input_o\ & ((\inst1|14~combout\ & (!\inst2|14~combout\)) # (!\inst1|14~combout\ & (\inst2|14~combout\ & !\inst|Mux6~14_combout\)))) # (!\M~input_o\ & (((\inst|Mux6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|14~combout\,
	datab => \inst2|14~combout\,
	datac => \inst|Mux6~14_combout\,
	datad => \M~input_o\,
	combout => \inst|Mux6~15_combout\);

-- Location: LCCOMB_X26_Y4_N0
\inst|Mux6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~18_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst|Mux6~15_combout\))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst|Mux6~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux6~17_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst|Mux6~15_combout\,
	combout => \inst|Mux6~18_combout\);

-- Location: LCCOMB_X26_Y4_N6
\inst|Mux6~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~19_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\inst|Mux6~13_combout\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- ((\inst|Mux6~18_combout\))))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst|Mux6~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~13_combout\,
	datab => \inst|Mux6~18_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst|Mux6~19_combout\);

-- Location: LCCOMB_X28_Y4_N8
\inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\) # (\inst|Add17~2_combout\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst|Add15~4_combout\ & (!\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add15~4_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \M~input_o\,
	datad => \inst|Add17~2_combout\,
	combout => \inst|Mux7~0_combout\);

-- Location: LCCOMB_X28_Y4_N10
\inst|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~1_combout\ = (\M~input_o\ & (\inst2|13~combout\ & ((\inst1|13~combout\) # (!\inst|Mux7~0_combout\)))) # (!\M~input_o\ & (((\inst|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|13~combout\,
	datab => \inst|Mux7~0_combout\,
	datac => \M~input_o\,
	datad => \inst1|13~combout\,
	combout => \inst|Mux7~1_combout\);

-- Location: LCCOMB_X30_Y2_N2
\inst|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~9_combout\ = (\M~input_o\ & (((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\M~input_o\ & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Add22~2_combout\))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst|Add20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add20~4_combout\,
	datab => \M~input_o\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|Add22~2_combout\,
	combout => \inst|Mux7~9_combout\);

-- Location: LCCOMB_X28_Y4_N28
\inst|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~10_combout\ = (\M~input_o\ & ((\inst1|13~combout\) # ((\inst2|13~combout\ & !\inst|Mux7~9_combout\)))) # (!\M~input_o\ & (((\inst|Mux7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|13~combout\,
	datab => \inst|Mux7~9_combout\,
	datac => \M~input_o\,
	datad => \inst1|13~combout\,
	combout => \inst|Mux7~10_combout\);

-- Location: LCCOMB_X28_Y4_N6
\inst|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~11_combout\ = (\inst|Mux1~17_combout\ & ((\inst|Mux7~10_combout\) # ((!\inst|Mux1~16_combout\)))) # (!\inst|Mux1~17_combout\ & (((\inst1|12~combout\ & \inst|Mux1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~17_combout\,
	datab => \inst|Mux7~10_combout\,
	datac => \inst1|12~combout\,
	datad => \inst|Mux1~16_combout\,
	combout => \inst|Mux7~11_combout\);

-- Location: LCCOMB_X28_Y4_N4
\inst|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~12_combout\ = (\inst|Mux7~11_combout\ & (((\inst|Add18~4_combout\) # (!\inst|Mux1~13_combout\)))) # (!\inst|Mux7~11_combout\ & (!\inst|F9~13_combout\ & (\inst|Mux1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~11_combout\,
	datab => \inst|F9~13_combout\,
	datac => \inst|Mux1~13_combout\,
	datad => \inst|Add18~4_combout\,
	combout => \inst|Mux7~12_combout\);

-- Location: LCCOMB_X25_Y2_N0
\inst|F9~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~39_combout\ = \inst1|13~combout\ $ (\inst2|13~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|13~combout\,
	datad => \inst2|13~combout\,
	combout => \inst|F9~39_combout\);

-- Location: LCCOMB_X26_Y2_N2
\inst|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~6_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\ & (!\inst|F9~28_combout\)) # (!\M~input_o\ & 
-- ((\inst|Add11~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~28_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \M~input_o\,
	datad => \inst|Add11~4_combout\,
	combout => \inst|Mux7~6_combout\);

-- Location: LCCOMB_X25_Y2_N2
\inst|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~7_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Mux7~6_combout\ & (!\inst|F9~39_combout\)) # (!\inst|Mux7~6_combout\ & ((\inst|Add13~4_combout\))))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|F9~39_combout\,
	datac => \inst|Add13~4_combout\,
	datad => \inst|Mux7~6_combout\,
	combout => \inst|Mux7~7_combout\);

-- Location: LCCOMB_X24_Y4_N28
\inst|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~2_combout\ = (\M~input_o\ & (((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (!\inst1|13~combout\)))) # (!\M~input_o\ & (\inst|Add0~2_combout\ & (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \M~input_o\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst1|13~combout\,
	combout => \inst|Mux7~2_combout\);

-- Location: LCCOMB_X28_Y4_N0
\inst|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~3_combout\ = (\inst|Mux7~2_combout\ & (((!\inst|F9~29_combout\) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\inst|Mux7~2_combout\ & (\inst|Add1~2_combout\ & 
-- (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~2_combout\,
	datab => \inst|Mux7~2_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|F9~29_combout\,
	combout => \inst|Mux7~3_combout\);

-- Location: LCCOMB_X28_Y4_N30
\inst|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~4_combout\ = (\inst|Mux1~3_combout\ & (((\inst|Mux1~6_combout\)))) # (!\inst|Mux1~3_combout\ & ((\inst|Mux1~6_combout\ & (\inst|Mux7~3_combout\)) # (!\inst|Mux1~6_combout\ & ((\inst|F9~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~3_combout\,
	datab => \inst|Mux7~3_combout\,
	datac => \inst|Mux1~6_combout\,
	datad => \inst|F9~13_combout\,
	combout => \inst|Mux7~4_combout\);

-- Location: LCCOMB_X25_Y3_N20
\inst|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~5_combout\ = (\inst|Mux1~3_combout\ & ((\inst|Mux7~4_combout\ & ((\inst|F9~32_combout\))) # (!\inst|Mux7~4_combout\ & (\inst|Add2~2_combout\)))) # (!\inst|Mux1~3_combout\ & (((\inst|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~3_combout\,
	datab => \inst|Add2~2_combout\,
	datac => \inst|Mux7~4_combout\,
	datad => \inst|F9~32_combout\,
	combout => \inst|Mux7~5_combout\);

-- Location: LCCOMB_X25_Y3_N14
\inst|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~8_combout\ = (\inst|Mux1~9_combout\ & (((\inst|Mux7~5_combout\) # (\inst|Mux1~2_combout\)))) # (!\inst|Mux1~9_combout\ & (\inst|Mux7~7_combout\ & ((!\inst|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~7_combout\,
	datab => \inst|Mux7~5_combout\,
	datac => \inst|Mux1~9_combout\,
	datad => \inst|Mux1~2_combout\,
	combout => \inst|Mux7~8_combout\);

-- Location: LCCOMB_X28_Y4_N14
\inst|Mux7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~13_combout\ = (\inst|Mux7~8_combout\ & (((\inst|Mux7~12_combout\) # (!\inst|Mux1~2_combout\)))) # (!\inst|Mux7~8_combout\ & (\inst|Mux7~1_combout\ & ((\inst|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~1_combout\,
	datab => \inst|Mux7~12_combout\,
	datac => \inst|Mux7~8_combout\,
	datad => \inst|Mux1~2_combout\,
	combout => \inst|Mux7~13_combout\);

-- Location: LCCOMB_X28_Y4_N12
\inst|Mux7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~16_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\ & (!\inst|F9~12_combout\)) # (!\M~input_o\ & 
-- ((\inst|Add4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~12_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \M~input_o\,
	datad => \inst|Add4~4_combout\,
	combout => \inst|Mux7~16_combout\);

-- Location: LCCOMB_X25_Y4_N24
\inst|Mux7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~17_combout\ = (\inst|Mux7~16_combout\ & (((!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (!\inst2|13~combout\)))) # (!\inst|Mux7~16_combout\ & (\inst|Add6~4_combout\ & 
-- ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add6~4_combout\,
	datab => \inst|Mux7~16_combout\,
	datac => \inst2|13~combout\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|Mux7~17_combout\);

-- Location: LCCOMB_X28_Y4_N16
\inst|Mux7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~14_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Add10~2_combout\) # ((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((!\M~input_o\ & \inst|Add8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add10~2_combout\,
	datab => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \M~input_o\,
	datad => \inst|Add8~4_combout\,
	combout => \inst|Mux7~14_combout\);

-- Location: LCCOMB_X28_Y4_N18
\inst|Mux7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~15_combout\ = (\M~input_o\ & ((\inst2|13~combout\ & (!\inst|Mux7~14_combout\ & !\inst1|13~combout\)) # (!\inst2|13~combout\ & ((\inst1|13~combout\))))) # (!\M~input_o\ & (((\inst|Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|13~combout\,
	datab => \inst|Mux7~14_combout\,
	datac => \M~input_o\,
	datad => \inst1|13~combout\,
	combout => \inst|Mux7~15_combout\);

-- Location: LCCOMB_X26_Y4_N28
\inst|Mux7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~18_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst|Mux7~15_combout\))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst|Mux7~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux7~17_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst|Mux7~15_combout\,
	combout => \inst|Mux7~18_combout\);

-- Location: LCCOMB_X26_Y4_N18
\inst|Mux7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~19_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\inst|Mux7~13_combout\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- ((\inst|Mux7~18_combout\))))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst|Mux7~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux7~13_combout\,
	datab => \inst|Mux7~18_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst|Mux7~19_combout\);

-- Location: LCCOMB_X30_Y1_N20
\inst|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~9_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\) # (\inst|Add22~0_combout\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst|Add20~2_combout\ & (!\M~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|Add20~2_combout\,
	datac => \M~input_o\,
	datad => \inst|Add22~0_combout\,
	combout => \inst|Mux8~9_combout\);

-- Location: LCCOMB_X30_Y1_N14
\inst|Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~10_combout\ = (\M~input_o\ & ((\inst1|12~combout\) # ((\inst2|12~combout\ & !\inst|Mux8~9_combout\)))) # (!\M~input_o\ & (((\inst|Mux8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \inst2|12~combout\,
	datac => \inst1|12~combout\,
	datad => \inst|Mux8~9_combout\,
	combout => \inst|Mux8~10_combout\);

-- Location: LCCOMB_X31_Y2_N26
\inst|Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~11_combout\ = (\inst|Mux1~16_combout\ & ((\inst|Mux1~17_combout\ & ((\inst|Mux8~10_combout\))) # (!\inst|Mux1~17_combout\ & (\CN~input_o\)))) # (!\inst|Mux1~16_combout\ & (!\inst|Mux1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~16_combout\,
	datab => \inst|Mux1~17_combout\,
	datac => \CN~input_o\,
	datad => \inst|Mux8~10_combout\,
	combout => \inst|Mux8~11_combout\);

-- Location: LCCOMB_X29_Y2_N30
\inst|Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~12_combout\ = (\inst|Mux8~11_combout\ & (((!\inst|Mux1~13_combout\)) # (!\inst|F9~15_combout\))) # (!\inst|Mux8~11_combout\ & (((\inst|Mux1~13_combout\ & \inst|Add18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux8~11_combout\,
	datab => \inst|F9~15_combout\,
	datac => \inst|Mux1~13_combout\,
	datad => \inst|Add18~2_combout\,
	combout => \inst|Mux8~12_combout\);

-- Location: LCCOMB_X24_Y3_N0
\inst|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~2_combout\ = (\inst|Mux1~3_combout\ & (((\inst|Add2~0_combout\) # (\inst|Mux1~6_combout\)))) # (!\inst|Mux1~3_combout\ & (\inst|F9~15_combout\ & ((!\inst|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~15_combout\,
	datab => \inst|Mux1~3_combout\,
	datac => \inst|Add2~0_combout\,
	datad => \inst|Mux1~6_combout\,
	combout => \inst|Mux8~2_combout\);

-- Location: LCCOMB_X24_Y4_N2
\inst|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\ & ((!\inst1|12~combout\))) # (!\M~input_o\ & 
-- (\inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \inst1|12~combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \M~input_o\,
	combout => \inst|Mux8~0_combout\);

-- Location: LCCOMB_X25_Y4_N26
\inst|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~1_combout\ = (\inst|Mux8~0_combout\ & (((!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # (!\inst|F9~31_combout\)))) # (!\inst|Mux8~0_combout\ & (\inst|Add1~0_combout\ & 
-- ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux8~0_combout\,
	datab => \inst|Add1~0_combout\,
	datac => \inst|F9~31_combout\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|Mux8~1_combout\);

-- Location: LCCOMB_X24_Y3_N30
\inst|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~3_combout\ = (\inst|Mux8~2_combout\ & ((\inst|F9~32_combout\) # ((!\inst|Mux1~6_combout\)))) # (!\inst|Mux8~2_combout\ & (((\inst|Mux8~1_combout\ & \inst|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~32_combout\,
	datab => \inst|Mux8~2_combout\,
	datac => \inst|Mux8~1_combout\,
	datad => \inst|Mux1~6_combout\,
	combout => \inst|Mux8~3_combout\);

-- Location: LCCOMB_X30_Y1_N12
\inst|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~4_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Add17~0_combout\) # ((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((!\M~input_o\ & \inst|Add15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|Add17~0_combout\,
	datac => \M~input_o\,
	datad => \inst|Add15~2_combout\,
	combout => \inst|Mux8~4_combout\);

-- Location: LCCOMB_X30_Y1_N26
\inst|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~5_combout\ = (\M~input_o\ & (\inst2|12~combout\ & ((\inst1|12~combout\) # (!\inst|Mux8~4_combout\)))) # (!\M~input_o\ & (\inst|Mux8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux8~4_combout\,
	datab => \inst1|12~combout\,
	datac => \M~input_o\,
	datad => \inst2|12~combout\,
	combout => \inst|Mux8~5_combout\);

-- Location: LCCOMB_X29_Y1_N30
\inst|F9~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|F9~40_combout\ = \inst1|12~combout\ $ (\inst2|12~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|12~combout\,
	datac => \inst2|12~combout\,
	combout => \inst|F9~40_combout\);

-- Location: LCCOMB_X29_Y2_N26
\inst|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~6_combout\ = (\M~input_o\ & (((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\inst|F9~30_combout\))) # (!\M~input_o\ & (((\inst|Add11~2_combout\ & !\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F9~30_combout\,
	datab => \inst|Add11~2_combout\,
	datac => \M~input_o\,
	datad => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst|Mux8~6_combout\);

-- Location: LCCOMB_X28_Y2_N22
\inst|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~7_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Mux8~6_combout\ & ((!\inst|F9~40_combout\))) # (!\inst|Mux8~6_combout\ & (\inst|Add13~2_combout\)))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add13~2_combout\,
	datab => \inst|F9~40_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst|Mux8~6_combout\,
	combout => \inst|Mux8~7_combout\);

-- Location: LCCOMB_X29_Y2_N0
\inst|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~8_combout\ = (\inst|Mux1~9_combout\ & (\inst|Mux1~2_combout\)) # (!\inst|Mux1~9_combout\ & ((\inst|Mux1~2_combout\ & (\inst|Mux8~5_combout\)) # (!\inst|Mux1~2_combout\ & ((\inst|Mux8~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~9_combout\,
	datab => \inst|Mux1~2_combout\,
	datac => \inst|Mux8~5_combout\,
	datad => \inst|Mux8~7_combout\,
	combout => \inst|Mux8~8_combout\);

-- Location: LCCOMB_X29_Y2_N28
\inst|Mux8~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~13_combout\ = (\inst|Mux1~9_combout\ & ((\inst|Mux8~8_combout\ & (\inst|Mux8~12_combout\)) # (!\inst|Mux8~8_combout\ & ((\inst|Mux8~3_combout\))))) # (!\inst|Mux1~9_combout\ & (((\inst|Mux8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux8~12_combout\,
	datab => \inst|Mux8~3_combout\,
	datac => \inst|Mux1~9_combout\,
	datad => \inst|Mux8~8_combout\,
	combout => \inst|Mux8~13_combout\);

-- Location: LCCOMB_X30_Y1_N28
\inst|Mux8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~14_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Add10~0_combout\) # ((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((!\M~input_o\ & \inst|Add8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|Add10~0_combout\,
	datac => \M~input_o\,
	datad => \inst|Add8~2_combout\,
	combout => \inst|Mux8~14_combout\);

-- Location: LCCOMB_X30_Y1_N6
\inst|Mux8~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~15_combout\ = (\M~input_o\ & ((\inst2|12~combout\ & (!\inst1|12~combout\ & !\inst|Mux8~14_combout\)) # (!\inst2|12~combout\ & (\inst1|12~combout\)))) # (!\M~input_o\ & (((\inst|Mux8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M~input_o\,
	datab => \inst2|12~combout\,
	datac => \inst1|12~combout\,
	datad => \inst|Mux8~14_combout\,
	combout => \inst|Mux8~15_combout\);

-- Location: LCCOMB_X30_Y1_N8
\inst|Mux8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~16_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\M~input_o\)))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\M~input_o\ & ((!\inst|F9~14_combout\))) # (!\M~input_o\ & 
-- (\inst|Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|Add4~2_combout\,
	datac => \M~input_o\,
	datad => \inst|F9~14_combout\,
	combout => \inst|Mux8~16_combout\);

-- Location: LCCOMB_X30_Y1_N18
\inst|Mux8~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~17_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst|Mux8~16_combout\ & ((!\inst2|12~combout\))) # (!\inst|Mux8~16_combout\ & (\inst|Add6~2_combout\)))) # 
-- (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (((\inst|Mux8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \inst|Add6~2_combout\,
	datac => \inst|Mux8~16_combout\,
	datad => \inst2|12~combout\,
	combout => \inst|Mux8~17_combout\);

-- Location: LCCOMB_X30_Y1_N0
\inst|Mux8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~18_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\inst|Mux8~15_combout\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst|Mux8~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux8~15_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst|Mux8~17_combout\,
	combout => \inst|Mux8~18_combout\);

-- Location: LCCOMB_X29_Y2_N18
\inst|Mux8~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~19_combout\ = (\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\inst|Mux8~13_combout\)) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- ((\inst|Mux8~18_combout\))) # (!\inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst|Mux8~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst|Mux8~13_combout\,
	datac => \inst7|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst|Mux8~18_combout\,
	combout => \inst|Mux8~19_combout\);

-- Location: IOIBUF_X0_Y23_N8
\A0_B2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0_B2,
	o => \A0_B2~input_o\);

ww_CN4 <= \CN4~output_o\;

ww_A(7) <= \A[7]~output_o\;

ww_A(6) <= \A[6]~output_o\;

ww_A(5) <= \A[5]~output_o\;

ww_A(4) <= \A[4]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(0) <= \A[0]~output_o\;

ww_B(7) <= \B[7]~output_o\;

ww_B(6) <= \B[6]~output_o\;

ww_B(5) <= \B[5]~output_o\;

ww_B(4) <= \B[4]~output_o\;

ww_B(3) <= \B[3]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(0) <= \S[0]~output_o\;

ww_F(7) <= \F[7]~output_o\;

ww_F(6) <= \F[6]~output_o\;

ww_F(5) <= \F[5]~output_o\;

ww_F(4) <= \F[4]~output_o\;

ww_F(3) <= \F[3]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(0) <= \F[0]~output_o\;
END structure;


