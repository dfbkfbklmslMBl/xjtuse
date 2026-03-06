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

-- DATE "03/13/2025 16:56:22"

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

ENTITY 	seven IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	game_buttons : IN std_logic_vector(3 DOWNTO 0);
	led_display : BUFFER std_logic_vector(7 DOWNTO 0);
	game_score : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END seven;

-- Design Ports Information
-- led_display[0]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_display[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_display[2]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_display[3]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_display[4]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_display[5]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_display[6]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_display[7]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- game_score[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- game_score[1]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- game_score[2]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- game_score[3]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- game_score[4]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- game_score[5]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- game_score[6]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- game_score[7]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- game_buttons[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- game_buttons[2]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- game_buttons[1]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- game_buttons[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF seven IS
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
SIGNAL ww_game_buttons : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_led_display : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_game_score : std_logic_vector(7 DOWNTO 0);
SIGNAL \top_inst|clock_gen_inst|clk_game~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led_display[0]~output_o\ : std_logic;
SIGNAL \led_display[1]~output_o\ : std_logic;
SIGNAL \led_display[2]~output_o\ : std_logic;
SIGNAL \led_display[3]~output_o\ : std_logic;
SIGNAL \led_display[4]~output_o\ : std_logic;
SIGNAL \led_display[5]~output_o\ : std_logic;
SIGNAL \led_display[6]~output_o\ : std_logic;
SIGNAL \led_display[7]~output_o\ : std_logic;
SIGNAL \game_score[0]~output_o\ : std_logic;
SIGNAL \game_score[1]~output_o\ : std_logic;
SIGNAL \game_score[2]~output_o\ : std_logic;
SIGNAL \game_score[3]~output_o\ : std_logic;
SIGNAL \game_score[4]~output_o\ : std_logic;
SIGNAL \game_score[5]~output_o\ : std_logic;
SIGNAL \game_score[6]~output_o\ : std_logic;
SIGNAL \game_score[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[0]~93_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[1]~31_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[1]~32\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[2]~33_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[2]~34\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[3]~35_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[3]~36\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[4]~37_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[4]~38\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[5]~39_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[5]~40\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[6]~41_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[6]~42\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[7]~43_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[7]~44\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[8]~45_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[8]~46\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[9]~47_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[9]~48\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[10]~49_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[10]~50\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[11]~51_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[11]~52\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[12]~53_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[12]~54\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[13]~55_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[13]~56\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[14]~57_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[14]~58\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[15]~59_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[15]~60\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[16]~61_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[16]~62\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[17]~63_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[17]~64\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[18]~65_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[18]~66\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[19]~67_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[19]~68\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[20]~69_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[20]~70\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[21]~71_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[21]~feeder_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[21]~72\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[22]~73_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[22]~74\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[23]~75_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[23]~76\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[24]~77_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[24]~78\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[25]~79_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[25]~80\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[26]~81_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[26]~82\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[27]~83_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[27]~84\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[28]~85_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[28]~86\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[29]~87_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[29]~88\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[30]~89_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[30]~90\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter[31]~91_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[8]~1\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[9]~3\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[10]~5\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[11]~7\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[12]~9\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[13]~11\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[14]~13\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[15]~15\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[16]~17\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[17]~19\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[18]~21\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[19]~23\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[20]~25\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[21]~27\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[22]~29\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[23]~31\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[24]~33\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[25]~35\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[26]~37\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[742]~386_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[14]~12_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[742]~387_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[13]~10_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[741]~389_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[741]~388_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[12]~8_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[740]~391_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[740]~390_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[739]~392_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[11]~6_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[739]~393_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[738]~394_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[10]~4_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[738]~395_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[737]~396_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[9]~2_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[737]~397_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[736]~398_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[8]~0_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[736]~399_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[735]~401_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[735]~400_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[8]~1\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[9]~3\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[10]~5\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[11]~7\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[12]~9\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[13]~11\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[14]~13\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[15]~14_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[754]~362_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[26]~36_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[754]~363_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[753]~364_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[25]~34_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[753]~365_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[24]~32_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[752]~367_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[752]~366_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[751]~368_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[23]~30_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[751]~369_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[750]~370_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[22]~28_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[750]~371_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[749]~372_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[21]~26_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[749]~373_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[748]~374_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[20]~24_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[748]~375_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[747]~376_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[19]~22_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[747]~377_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[18]~20_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[746]~379_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[746]~378_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[17]~18_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[745]~381_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[745]~380_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[744]~382_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[16]~16_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[744]~383_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[743]~384_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[15]~14_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[743]~385_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[15]~15\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[16]~17\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[17]~19\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[18]~21\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[19]~23\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[20]~25\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[21]~27\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[22]~29\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[23]~31\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[24]~33\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[25]~35\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[26]~37\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[27]~39_cout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~608_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[26]~36_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[782]~402_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[782]~597_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~598_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[25]~34_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~403_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~599_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[24]~32_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~404_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[23]~30_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~405_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~600_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[22]~28_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~406_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~601_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[21]~26_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~407_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~602_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~603_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[20]~24_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~408_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[19]~22_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~409_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~604_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~605_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[18]~20_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~410_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~606_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[17]~18_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~411_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[16]~16_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~412_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~607_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~413_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~609_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[14]~12_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~414_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[13]~10_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~415_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~610_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~611_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[12]~8_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~416_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~612_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[11]~6_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~417_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[10]~4_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~418_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~613_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~614_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[9]~2_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~419_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[764]~420_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[8]~0_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[764]~421_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[763]~423_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[763]~422_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[8]~1\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[9]~3\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[10]~5\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[11]~7\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[12]~9\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[13]~11\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[14]~13\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[15]~15\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[16]~17\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[17]~19\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[18]~21\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[19]~23\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[20]~25\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[21]~27\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[22]~29\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[23]~31\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[24]~33\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[25]~35\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[26]~37\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[27]~39_cout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~544_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[16]~16_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~434_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[15]~14_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~435_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~545_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~546_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[14]~12_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~436_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~547_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[13]~10_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~437_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[12]~8_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~438_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~548_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[11]~6_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~439_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~549_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[10]~4_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~440_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~550_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[9]~2_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~441_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~615_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[8]~0_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[792]~442_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[792]~616_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[733]~443_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[733]~444_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[6]~42_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~617_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~618_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[8]~1\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[9]~3\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[10]~5\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[11]~7\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[12]~9\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[13]~11\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[14]~13\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[15]~15\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[16]~17\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[17]~18_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[810]~534_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[26]~36_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[810]~424_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[25]~34_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~425_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~535_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[24]~32_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~426_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~536_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~537_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[23]~30_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~427_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~538_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[22]~28_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~428_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~539_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[21]~26_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~429_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~540_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[20]~24_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~430_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[19]~22_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~431_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~541_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~542_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[18]~20_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~432_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~543_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[17]~18_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~433_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[17]~19\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[18]~21\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[19]~23\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[20]~25\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[21]~27\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[22]~29\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[23]~31\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[24]~33\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[25]~35\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[26]~37\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[27]~39_cout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~560_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[838]~551_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[26]~36_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[838]~445_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[25]~34_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~446_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~552_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[24]~32_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~447_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~553_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~554_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[23]~30_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~448_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~555_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[22]~28_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~449_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[21]~26_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~450_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~556_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~557_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[20]~24_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~451_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~558_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[19]~22_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~452_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~559_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[18]~20_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~453_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~454_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~561_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[16]~16_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~455_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~562_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[15]~14_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~456_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~563_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[14]~12_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~457_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[13]~10_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~458_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~564_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~565_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[12]~8_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~459_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~566_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[11]~6_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~460_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[10]~4_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~461_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~567_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~626_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[9]~2_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~462_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~463_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[8]~0_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~464_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[732]~467_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[732]~466_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[5]~44_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[761]~468_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[761]~465_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[6]~42_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[790]~619_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~569_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~568_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[8]~1\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[9]~3\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[10]~5\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[11]~7\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[12]~9\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[13]~11\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[14]~13\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[15]~15\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[16]~17\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[17]~19\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[18]~21\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[19]~23\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[20]~25\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[21]~27\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[22]~29\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[23]~31\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[24]~33\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[25]~35\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[26]~37\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[27]~39_cout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~578_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~579_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[26]~36_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[866]~469_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[866]~573_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[25]~34_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~470_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~570_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~571_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[24]~32_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~471_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[23]~30_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~472_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~572_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[22]~28_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~473_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~574_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[21]~26_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~474_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~575_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[20]~24_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~475_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~576_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~577_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[19]~22_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~476_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[18]~20_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~477_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[17]~18_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~478_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~580_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[16]~16_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~479_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[15]~14_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~480_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~581_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[14]~12_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~481_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~582_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[13]~10_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~482_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~583_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~584_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[12]~8_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~483_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~585_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[11]~6_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~484_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~586_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[10]~4_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~485_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[9]~2_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~486_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~587_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[8]~0_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~488_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~487_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[731]~491_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[731]~490_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[4]~46_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[789]~620_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[760]~492_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[760]~489_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[5]~44_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[789]~493_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[6]~42_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[818]~588_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[847]~589_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[818]~494_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[7]~42_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[847]~495_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[8]~1\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[9]~3\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[10]~5\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[11]~7\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[12]~9\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[13]~11\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[14]~13\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[15]~15\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[16]~17\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[17]~19\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[18]~21\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[19]~23\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[20]~25\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[21]~27\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[22]~29\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[23]~31\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[24]~33\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[25]~35\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[26]~37\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[27]~39_cout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~74_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~73_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~75_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~72_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~76_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~77_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~78_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~105_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~97_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~104_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~98_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[784]~503_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[784]~504_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[1]~46_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[842]~625_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[756]~498_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[756]~497_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[1]~46_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[785]~499_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[785]~496_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[2]~44_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[814]~621_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[843]~596_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~102_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[730]~527_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[730]~526_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[3]~52_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[788]~624_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[759]~528_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[759]~525_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[4]~52_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[817]~592_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[788]~529_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[5]~52_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[817]~530_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[6]~54_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~101_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~95_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~96_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~99_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[729]~512_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[729]~513_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[2]~48_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[787]~622_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[758]~511_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[758]~514_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[3]~48_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[816]~590_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[787]~515_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[4]~48_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[845]~594_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[757]~518_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[728]~520_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[728]~519_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[1]~50_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[757]~521_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[2]~50_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[786]~623_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[815]~591_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[786]~522_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[3]~50_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[844]~595_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~94_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[846]~593_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~92_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~93_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[17]~18_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[12]~8_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[20]~24_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[19]~22_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~83_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[21]~26_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[18]~20_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[22]~28_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[23]~30_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~84_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[15]~14_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[14]~12_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[13]~10_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[16]~16_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~82_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~85_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[26]~36_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[813]~502_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[813]~505_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[2]~46_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[814]~500_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[3]~44_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[841]~507_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[815]~523_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[4]~52_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[844]~524_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[816]~516_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[5]~50_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[845]~517_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[812]~509_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[812]~508_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[1]~48_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[841]~510_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~79_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~103_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[25]~34_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[24]~32_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~80_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~81_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[8]~0_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[846]~531_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[7]~42_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[6]~44_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~87_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[11]~6_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[10]~4_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[9]~2_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~86_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[842]~506_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[3]~50_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[5]~46_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[843]~501_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[4]~48_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~88_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[840]~533_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[840]~532_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[1]~54_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[2]~52_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~89_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~90_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~91_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|Equal1~100_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_game~0_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_game~q\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[0]~8_combout\ : std_logic;
SIGNAL \game_buttons[0]~input_o\ : std_logic;
SIGNAL \game_buttons[3]~input_o\ : std_logic;
SIGNAL \game_buttons[2]~input_o\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[0]~9\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[1]~10_combout\ : std_logic;
SIGNAL \game_buttons[1]~input_o\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[2]~13\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[3]~14_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[3]~15\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[4]~21_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[4]~22\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[5]~23_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[5]~24\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[6]~25_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[6]~26\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[7]~27_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[6]~16_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[6]~17_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[6]~18_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[6]~19_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[6]~20_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[1]~11\ : std_logic;
SIGNAL \top_inst|game_controller_inst|player_pos[2]~12_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|obstacle_pos[0]~8_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|obstacle_pos[3]~15\ : std_logic;
SIGNAL \top_inst|game_controller_inst|obstacle_pos[4]~18_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|Selector1~2_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|Selector2~0_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|game_state.PAUSED~q\ : std_logic;
SIGNAL \top_inst|game_controller_inst|game_state.IDLE~0_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|game_state.IDLE~q\ : std_logic;
SIGNAL \top_inst|game_controller_inst|obstacle_pos[7]~17_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|obstacle_pos[4]~19\ : std_logic;
SIGNAL \top_inst|game_controller_inst|obstacle_pos[5]~20_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|obstacle_pos[5]~21\ : std_logic;
SIGNAL \top_inst|game_controller_inst|obstacle_pos[6]~22_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|obstacle_pos[6]~23\ : std_logic;
SIGNAL \top_inst|game_controller_inst|obstacle_pos[7]~24_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|ShiftLeft1~0_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|ShiftLeft1~1_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|obstacle_pos[7]~16_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|obstacle_pos[0]~9\ : std_logic;
SIGNAL \top_inst|game_controller_inst|obstacle_pos[1]~10_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|obstacle_pos[1]~11\ : std_logic;
SIGNAL \top_inst|game_controller_inst|obstacle_pos[2]~12_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|obstacle_pos[2]~13\ : std_logic;
SIGNAL \top_inst|game_controller_inst|obstacle_pos[3]~14_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|Equal1~1_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|Equal1~2_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|Equal1~3_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|Equal1~0_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|Equal1~4_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|Selector1~1_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|game_state.PLAYING~q\ : std_logic;
SIGNAL \top_inst|game_controller_inst|Selector1~0_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|Selector3~0_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|game_state.GAME_OVER~q\ : std_logic;
SIGNAL \top_inst|game_controller_inst|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|game_display~0_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|game_display~1_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|ShiftLeft1~2_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|game_display~2_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|game_display~3_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|ShiftLeft1~3_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|game_display~4_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|ShiftLeft1~4_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|game_display~5_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|game_display~6_combout\ : std_logic;
SIGNAL \top_inst|game_controller_inst|game_display~7_combout\ : std_logic;
SIGNAL \top_inst|clock_gen_inst|clk_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \top_inst|game_controller_inst|player_pos\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \top_inst|game_controller_inst|obstacle_pos\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \top_inst|game_controller_inst|game_display\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_game_buttons <= game_buttons;
led_display <= ww_led_display;
game_score <= ww_game_score;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\top_inst|clock_gen_inst|clk_game~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \top_inst|clock_gen_inst|clk_game~q\);

\rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst_n~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X9_Y24_N9
\led_display[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_inst|game_controller_inst|game_display\(0),
	devoe => ww_devoe,
	o => \led_display[0]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\led_display[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_inst|game_controller_inst|game_display\(1),
	devoe => ww_devoe,
	o => \led_display[1]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\led_display[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_inst|game_controller_inst|game_display\(2),
	devoe => ww_devoe,
	o => \led_display[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\led_display[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_inst|game_controller_inst|game_display\(3),
	devoe => ww_devoe,
	o => \led_display[3]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\led_display[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_inst|game_controller_inst|game_display\(4),
	devoe => ww_devoe,
	o => \led_display[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\led_display[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_inst|game_controller_inst|game_display\(5),
	devoe => ww_devoe,
	o => \led_display[5]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\led_display[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_inst|game_controller_inst|game_display\(6),
	devoe => ww_devoe,
	o => \led_display[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\led_display[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \top_inst|game_controller_inst|game_display\(7),
	devoe => ww_devoe,
	o => \led_display[7]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\game_score[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \game_score[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\game_score[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \game_score[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\game_score[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \game_score[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\game_score[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \game_score[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\game_score[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \game_score[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\game_score[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \game_score[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\game_score[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \game_score[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\game_score[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \game_score[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: LCCOMB_X11_Y9_N16
\top_inst|clock_gen_inst|clk_counter[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[0]~93_combout\ = !\top_inst|clock_gen_inst|clk_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(0),
	combout => \top_inst|clock_gen_inst|clk_counter[0]~93_combout\);

-- Location: IOIBUF_X0_Y11_N15
\rst_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: CLKCTRL_G4
\rst_n~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: FF_X11_Y9_N17
\top_inst|clock_gen_inst|clk_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \top_inst|clock_gen_inst|clk_counter[0]~93_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(0));

-- Location: LCCOMB_X12_Y9_N2
\top_inst|clock_gen_inst|clk_counter[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[1]~31_combout\ = (\top_inst|clock_gen_inst|clk_counter\(0) & (\top_inst|clock_gen_inst|clk_counter\(1) $ (VCC))) # (!\top_inst|clock_gen_inst|clk_counter\(0) & (\top_inst|clock_gen_inst|clk_counter\(1) & VCC))
-- \top_inst|clock_gen_inst|clk_counter[1]~32\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(0) & \top_inst|clock_gen_inst|clk_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(0),
	datab => \top_inst|clock_gen_inst|clk_counter\(1),
	datad => VCC,
	combout => \top_inst|clock_gen_inst|clk_counter[1]~31_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[1]~32\);

-- Location: FF_X12_Y9_N3
\top_inst|clock_gen_inst|clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \top_inst|clock_gen_inst|clk_counter[1]~31_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(1));

-- Location: LCCOMB_X12_Y9_N4
\top_inst|clock_gen_inst|clk_counter[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[2]~33_combout\ = (\top_inst|clock_gen_inst|clk_counter\(2) & (!\top_inst|clock_gen_inst|clk_counter[1]~32\)) # (!\top_inst|clock_gen_inst|clk_counter\(2) & ((\top_inst|clock_gen_inst|clk_counter[1]~32\) # (GND)))
-- \top_inst|clock_gen_inst|clk_counter[2]~34\ = CARRY((!\top_inst|clock_gen_inst|clk_counter[1]~32\) # (!\top_inst|clock_gen_inst|clk_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(2),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[1]~32\,
	combout => \top_inst|clock_gen_inst|clk_counter[2]~33_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[2]~34\);

-- Location: FF_X12_Y9_N5
\top_inst|clock_gen_inst|clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \top_inst|clock_gen_inst|clk_counter[2]~33_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(2));

-- Location: LCCOMB_X12_Y9_N6
\top_inst|clock_gen_inst|clk_counter[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[3]~35_combout\ = (\top_inst|clock_gen_inst|clk_counter\(3) & (\top_inst|clock_gen_inst|clk_counter[2]~34\ $ (GND))) # (!\top_inst|clock_gen_inst|clk_counter\(3) & (!\top_inst|clock_gen_inst|clk_counter[2]~34\ & VCC))
-- \top_inst|clock_gen_inst|clk_counter[3]~36\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(3) & !\top_inst|clock_gen_inst|clk_counter[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(3),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[2]~34\,
	combout => \top_inst|clock_gen_inst|clk_counter[3]~35_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[3]~36\);

-- Location: FF_X12_Y9_N7
\top_inst|clock_gen_inst|clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \top_inst|clock_gen_inst|clk_counter[3]~35_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(3));

-- Location: LCCOMB_X12_Y9_N8
\top_inst|clock_gen_inst|clk_counter[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[4]~37_combout\ = (\top_inst|clock_gen_inst|clk_counter\(4) & (!\top_inst|clock_gen_inst|clk_counter[3]~36\)) # (!\top_inst|clock_gen_inst|clk_counter\(4) & ((\top_inst|clock_gen_inst|clk_counter[3]~36\) # (GND)))
-- \top_inst|clock_gen_inst|clk_counter[4]~38\ = CARRY((!\top_inst|clock_gen_inst|clk_counter[3]~36\) # (!\top_inst|clock_gen_inst|clk_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(4),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[3]~36\,
	combout => \top_inst|clock_gen_inst|clk_counter[4]~37_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[4]~38\);

-- Location: FF_X12_Y9_N9
\top_inst|clock_gen_inst|clk_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \top_inst|clock_gen_inst|clk_counter[4]~37_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(4));

-- Location: LCCOMB_X12_Y9_N10
\top_inst|clock_gen_inst|clk_counter[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[5]~39_combout\ = (\top_inst|clock_gen_inst|clk_counter\(5) & (\top_inst|clock_gen_inst|clk_counter[4]~38\ $ (GND))) # (!\top_inst|clock_gen_inst|clk_counter\(5) & (!\top_inst|clock_gen_inst|clk_counter[4]~38\ & VCC))
-- \top_inst|clock_gen_inst|clk_counter[5]~40\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(5) & !\top_inst|clock_gen_inst|clk_counter[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(5),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[4]~38\,
	combout => \top_inst|clock_gen_inst|clk_counter[5]~39_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[5]~40\);

-- Location: FF_X12_Y9_N11
\top_inst|clock_gen_inst|clk_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \top_inst|clock_gen_inst|clk_counter[5]~39_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(5));

-- Location: LCCOMB_X12_Y9_N12
\top_inst|clock_gen_inst|clk_counter[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[6]~41_combout\ = (\top_inst|clock_gen_inst|clk_counter\(6) & (!\top_inst|clock_gen_inst|clk_counter[5]~40\)) # (!\top_inst|clock_gen_inst|clk_counter\(6) & ((\top_inst|clock_gen_inst|clk_counter[5]~40\) # (GND)))
-- \top_inst|clock_gen_inst|clk_counter[6]~42\ = CARRY((!\top_inst|clock_gen_inst|clk_counter[5]~40\) # (!\top_inst|clock_gen_inst|clk_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(6),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[5]~40\,
	combout => \top_inst|clock_gen_inst|clk_counter[6]~41_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[6]~42\);

-- Location: FF_X12_Y9_N13
\top_inst|clock_gen_inst|clk_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \top_inst|clock_gen_inst|clk_counter[6]~41_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(6));

-- Location: LCCOMB_X12_Y9_N14
\top_inst|clock_gen_inst|clk_counter[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[7]~43_combout\ = (\top_inst|clock_gen_inst|clk_counter\(7) & (\top_inst|clock_gen_inst|clk_counter[6]~42\ $ (GND))) # (!\top_inst|clock_gen_inst|clk_counter\(7) & (!\top_inst|clock_gen_inst|clk_counter[6]~42\ & VCC))
-- \top_inst|clock_gen_inst|clk_counter[7]~44\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(7) & !\top_inst|clock_gen_inst|clk_counter[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(7),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[6]~42\,
	combout => \top_inst|clock_gen_inst|clk_counter[7]~43_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[7]~44\);

-- Location: FF_X12_Y9_N15
\top_inst|clock_gen_inst|clk_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \top_inst|clock_gen_inst|clk_counter[7]~43_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(7));

-- Location: LCCOMB_X12_Y9_N16
\top_inst|clock_gen_inst|clk_counter[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[8]~45_combout\ = (\top_inst|clock_gen_inst|clk_counter\(8) & (!\top_inst|clock_gen_inst|clk_counter[7]~44\)) # (!\top_inst|clock_gen_inst|clk_counter\(8) & ((\top_inst|clock_gen_inst|clk_counter[7]~44\) # (GND)))
-- \top_inst|clock_gen_inst|clk_counter[8]~46\ = CARRY((!\top_inst|clock_gen_inst|clk_counter[7]~44\) # (!\top_inst|clock_gen_inst|clk_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(8),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[7]~44\,
	combout => \top_inst|clock_gen_inst|clk_counter[8]~45_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[8]~46\);

-- Location: FF_X12_Y9_N17
\top_inst|clock_gen_inst|clk_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \top_inst|clock_gen_inst|clk_counter[8]~45_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(8));

-- Location: LCCOMB_X12_Y9_N18
\top_inst|clock_gen_inst|clk_counter[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[9]~47_combout\ = (\top_inst|clock_gen_inst|clk_counter\(9) & (\top_inst|clock_gen_inst|clk_counter[8]~46\ $ (GND))) # (!\top_inst|clock_gen_inst|clk_counter\(9) & (!\top_inst|clock_gen_inst|clk_counter[8]~46\ & VCC))
-- \top_inst|clock_gen_inst|clk_counter[9]~48\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(9) & !\top_inst|clock_gen_inst|clk_counter[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(9),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[8]~46\,
	combout => \top_inst|clock_gen_inst|clk_counter[9]~47_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[9]~48\);

-- Location: FF_X12_Y9_N19
\top_inst|clock_gen_inst|clk_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \top_inst|clock_gen_inst|clk_counter[9]~47_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(9));

-- Location: LCCOMB_X12_Y9_N20
\top_inst|clock_gen_inst|clk_counter[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[10]~49_combout\ = (\top_inst|clock_gen_inst|clk_counter\(10) & (!\top_inst|clock_gen_inst|clk_counter[9]~48\)) # (!\top_inst|clock_gen_inst|clk_counter\(10) & ((\top_inst|clock_gen_inst|clk_counter[9]~48\) # (GND)))
-- \top_inst|clock_gen_inst|clk_counter[10]~50\ = CARRY((!\top_inst|clock_gen_inst|clk_counter[9]~48\) # (!\top_inst|clock_gen_inst|clk_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(10),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[9]~48\,
	combout => \top_inst|clock_gen_inst|clk_counter[10]~49_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[10]~50\);

-- Location: FF_X12_Y9_N21
\top_inst|clock_gen_inst|clk_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \top_inst|clock_gen_inst|clk_counter[10]~49_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(10));

-- Location: LCCOMB_X12_Y9_N22
\top_inst|clock_gen_inst|clk_counter[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[11]~51_combout\ = (\top_inst|clock_gen_inst|clk_counter\(11) & (\top_inst|clock_gen_inst|clk_counter[10]~50\ $ (GND))) # (!\top_inst|clock_gen_inst|clk_counter\(11) & (!\top_inst|clock_gen_inst|clk_counter[10]~50\ & 
-- VCC))
-- \top_inst|clock_gen_inst|clk_counter[11]~52\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(11) & !\top_inst|clock_gen_inst|clk_counter[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(11),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[10]~50\,
	combout => \top_inst|clock_gen_inst|clk_counter[11]~51_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[11]~52\);

-- Location: FF_X12_Y9_N23
\top_inst|clock_gen_inst|clk_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \top_inst|clock_gen_inst|clk_counter[11]~51_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(11));

-- Location: LCCOMB_X12_Y9_N24
\top_inst|clock_gen_inst|clk_counter[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[12]~53_combout\ = (\top_inst|clock_gen_inst|clk_counter\(12) & (!\top_inst|clock_gen_inst|clk_counter[11]~52\)) # (!\top_inst|clock_gen_inst|clk_counter\(12) & ((\top_inst|clock_gen_inst|clk_counter[11]~52\) # (GND)))
-- \top_inst|clock_gen_inst|clk_counter[12]~54\ = CARRY((!\top_inst|clock_gen_inst|clk_counter[11]~52\) # (!\top_inst|clock_gen_inst|clk_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(12),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[11]~52\,
	combout => \top_inst|clock_gen_inst|clk_counter[12]~53_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[12]~54\);

-- Location: FF_X12_Y9_N1
\top_inst|clock_gen_inst|clk_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \top_inst|clock_gen_inst|clk_counter[12]~53_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(12));

-- Location: LCCOMB_X12_Y9_N26
\top_inst|clock_gen_inst|clk_counter[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[13]~55_combout\ = (\top_inst|clock_gen_inst|clk_counter\(13) & (\top_inst|clock_gen_inst|clk_counter[12]~54\ $ (GND))) # (!\top_inst|clock_gen_inst|clk_counter\(13) & (!\top_inst|clock_gen_inst|clk_counter[12]~54\ & 
-- VCC))
-- \top_inst|clock_gen_inst|clk_counter[13]~56\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(13) & !\top_inst|clock_gen_inst|clk_counter[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(13),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[12]~54\,
	combout => \top_inst|clock_gen_inst|clk_counter[13]~55_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[13]~56\);

-- Location: FF_X13_Y9_N7
\top_inst|clock_gen_inst|clk_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \top_inst|clock_gen_inst|clk_counter[13]~55_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(13));

-- Location: LCCOMB_X12_Y9_N28
\top_inst|clock_gen_inst|clk_counter[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[14]~57_combout\ = (\top_inst|clock_gen_inst|clk_counter\(14) & (!\top_inst|clock_gen_inst|clk_counter[13]~56\)) # (!\top_inst|clock_gen_inst|clk_counter\(14) & ((\top_inst|clock_gen_inst|clk_counter[13]~56\) # (GND)))
-- \top_inst|clock_gen_inst|clk_counter[14]~58\ = CARRY((!\top_inst|clock_gen_inst|clk_counter[13]~56\) # (!\top_inst|clock_gen_inst|clk_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(14),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[13]~56\,
	combout => \top_inst|clock_gen_inst|clk_counter[14]~57_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[14]~58\);

-- Location: FF_X13_Y9_N1
\top_inst|clock_gen_inst|clk_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \top_inst|clock_gen_inst|clk_counter[14]~57_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(14));

-- Location: LCCOMB_X12_Y9_N30
\top_inst|clock_gen_inst|clk_counter[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[15]~59_combout\ = (\top_inst|clock_gen_inst|clk_counter\(15) & (\top_inst|clock_gen_inst|clk_counter[14]~58\ $ (GND))) # (!\top_inst|clock_gen_inst|clk_counter\(15) & (!\top_inst|clock_gen_inst|clk_counter[14]~58\ & 
-- VCC))
-- \top_inst|clock_gen_inst|clk_counter[15]~60\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(15) & !\top_inst|clock_gen_inst|clk_counter[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(15),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[14]~58\,
	combout => \top_inst|clock_gen_inst|clk_counter[15]~59_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[15]~60\);

-- Location: FF_X13_Y9_N3
\top_inst|clock_gen_inst|clk_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \top_inst|clock_gen_inst|clk_counter[15]~59_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(15));

-- Location: LCCOMB_X12_Y8_N0
\top_inst|clock_gen_inst|clk_counter[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[16]~61_combout\ = (\top_inst|clock_gen_inst|clk_counter\(16) & (!\top_inst|clock_gen_inst|clk_counter[15]~60\)) # (!\top_inst|clock_gen_inst|clk_counter\(16) & ((\top_inst|clock_gen_inst|clk_counter[15]~60\) # (GND)))
-- \top_inst|clock_gen_inst|clk_counter[16]~62\ = CARRY((!\top_inst|clock_gen_inst|clk_counter[15]~60\) # (!\top_inst|clock_gen_inst|clk_counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(16),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[15]~60\,
	combout => \top_inst|clock_gen_inst|clk_counter[16]~61_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[16]~62\);

-- Location: FF_X13_Y9_N9
\top_inst|clock_gen_inst|clk_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \top_inst|clock_gen_inst|clk_counter[16]~61_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(16));

-- Location: LCCOMB_X12_Y8_N2
\top_inst|clock_gen_inst|clk_counter[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[17]~63_combout\ = (\top_inst|clock_gen_inst|clk_counter\(17) & (\top_inst|clock_gen_inst|clk_counter[16]~62\ $ (GND))) # (!\top_inst|clock_gen_inst|clk_counter\(17) & (!\top_inst|clock_gen_inst|clk_counter[16]~62\ & 
-- VCC))
-- \top_inst|clock_gen_inst|clk_counter[17]~64\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(17) & !\top_inst|clock_gen_inst|clk_counter[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(17),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[16]~62\,
	combout => \top_inst|clock_gen_inst|clk_counter[17]~63_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[17]~64\);

-- Location: FF_X13_Y9_N11
\top_inst|clock_gen_inst|clk_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \top_inst|clock_gen_inst|clk_counter[17]~63_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(17));

-- Location: LCCOMB_X12_Y8_N4
\top_inst|clock_gen_inst|clk_counter[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[18]~65_combout\ = (\top_inst|clock_gen_inst|clk_counter\(18) & (!\top_inst|clock_gen_inst|clk_counter[17]~64\)) # (!\top_inst|clock_gen_inst|clk_counter\(18) & ((\top_inst|clock_gen_inst|clk_counter[17]~64\) # (GND)))
-- \top_inst|clock_gen_inst|clk_counter[18]~66\ = CARRY((!\top_inst|clock_gen_inst|clk_counter[17]~64\) # (!\top_inst|clock_gen_inst|clk_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(18),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[17]~64\,
	combout => \top_inst|clock_gen_inst|clk_counter[18]~65_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[18]~66\);

-- Location: FF_X13_Y9_N5
\top_inst|clock_gen_inst|clk_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \top_inst|clock_gen_inst|clk_counter[18]~65_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(18));

-- Location: LCCOMB_X12_Y8_N6
\top_inst|clock_gen_inst|clk_counter[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[19]~67_combout\ = (\top_inst|clock_gen_inst|clk_counter\(19) & (\top_inst|clock_gen_inst|clk_counter[18]~66\ $ (GND))) # (!\top_inst|clock_gen_inst|clk_counter\(19) & (!\top_inst|clock_gen_inst|clk_counter[18]~66\ & 
-- VCC))
-- \top_inst|clock_gen_inst|clk_counter[19]~68\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(19) & !\top_inst|clock_gen_inst|clk_counter[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(19),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[18]~66\,
	combout => \top_inst|clock_gen_inst|clk_counter[19]~67_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[19]~68\);

-- Location: FF_X13_Y9_N25
\top_inst|clock_gen_inst|clk_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \top_inst|clock_gen_inst|clk_counter[19]~67_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(19));

-- Location: LCCOMB_X12_Y8_N8
\top_inst|clock_gen_inst|clk_counter[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[20]~69_combout\ = (\top_inst|clock_gen_inst|clk_counter\(20) & (!\top_inst|clock_gen_inst|clk_counter[19]~68\)) # (!\top_inst|clock_gen_inst|clk_counter\(20) & ((\top_inst|clock_gen_inst|clk_counter[19]~68\) # (GND)))
-- \top_inst|clock_gen_inst|clk_counter[20]~70\ = CARRY((!\top_inst|clock_gen_inst|clk_counter[19]~68\) # (!\top_inst|clock_gen_inst|clk_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(20),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[19]~68\,
	combout => \top_inst|clock_gen_inst|clk_counter[20]~69_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[20]~70\);

-- Location: FF_X12_Y8_N9
\top_inst|clock_gen_inst|clk_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \top_inst|clock_gen_inst|clk_counter[20]~69_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(20));

-- Location: LCCOMB_X12_Y8_N10
\top_inst|clock_gen_inst|clk_counter[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[21]~71_combout\ = (\top_inst|clock_gen_inst|clk_counter\(21) & (\top_inst|clock_gen_inst|clk_counter[20]~70\ $ (GND))) # (!\top_inst|clock_gen_inst|clk_counter\(21) & (!\top_inst|clock_gen_inst|clk_counter[20]~70\ & 
-- VCC))
-- \top_inst|clock_gen_inst|clk_counter[21]~72\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(21) & !\top_inst|clock_gen_inst|clk_counter[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(21),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[20]~70\,
	combout => \top_inst|clock_gen_inst|clk_counter[21]~71_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[21]~72\);

-- Location: LCCOMB_X14_Y11_N0
\top_inst|clock_gen_inst|clk_counter[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[21]~feeder_combout\ = \top_inst|clock_gen_inst|clk_counter[21]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \top_inst|clock_gen_inst|clk_counter[21]~71_combout\,
	combout => \top_inst|clock_gen_inst|clk_counter[21]~feeder_combout\);

-- Location: FF_X14_Y11_N1
\top_inst|clock_gen_inst|clk_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \top_inst|clock_gen_inst|clk_counter[21]~feeder_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(21));

-- Location: LCCOMB_X12_Y8_N12
\top_inst|clock_gen_inst|clk_counter[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[22]~73_combout\ = (\top_inst|clock_gen_inst|clk_counter\(22) & (!\top_inst|clock_gen_inst|clk_counter[21]~72\)) # (!\top_inst|clock_gen_inst|clk_counter\(22) & ((\top_inst|clock_gen_inst|clk_counter[21]~72\) # (GND)))
-- \top_inst|clock_gen_inst|clk_counter[22]~74\ = CARRY((!\top_inst|clock_gen_inst|clk_counter[21]~72\) # (!\top_inst|clock_gen_inst|clk_counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(22),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[21]~72\,
	combout => \top_inst|clock_gen_inst|clk_counter[22]~73_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[22]~74\);

-- Location: FF_X12_Y8_N13
\top_inst|clock_gen_inst|clk_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \top_inst|clock_gen_inst|clk_counter[22]~73_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(22));

-- Location: LCCOMB_X12_Y8_N14
\top_inst|clock_gen_inst|clk_counter[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[23]~75_combout\ = (\top_inst|clock_gen_inst|clk_counter\(23) & (\top_inst|clock_gen_inst|clk_counter[22]~74\ $ (GND))) # (!\top_inst|clock_gen_inst|clk_counter\(23) & (!\top_inst|clock_gen_inst|clk_counter[22]~74\ & 
-- VCC))
-- \top_inst|clock_gen_inst|clk_counter[23]~76\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(23) & !\top_inst|clock_gen_inst|clk_counter[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(23),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[22]~74\,
	combout => \top_inst|clock_gen_inst|clk_counter[23]~75_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[23]~76\);

-- Location: FF_X13_Y8_N1
\top_inst|clock_gen_inst|clk_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \top_inst|clock_gen_inst|clk_counter[23]~75_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(23));

-- Location: LCCOMB_X12_Y8_N16
\top_inst|clock_gen_inst|clk_counter[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[24]~77_combout\ = (\top_inst|clock_gen_inst|clk_counter\(24) & (!\top_inst|clock_gen_inst|clk_counter[23]~76\)) # (!\top_inst|clock_gen_inst|clk_counter\(24) & ((\top_inst|clock_gen_inst|clk_counter[23]~76\) # (GND)))
-- \top_inst|clock_gen_inst|clk_counter[24]~78\ = CARRY((!\top_inst|clock_gen_inst|clk_counter[23]~76\) # (!\top_inst|clock_gen_inst|clk_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(24),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[23]~76\,
	combout => \top_inst|clock_gen_inst|clk_counter[24]~77_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[24]~78\);

-- Location: FF_X13_Y8_N11
\top_inst|clock_gen_inst|clk_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \top_inst|clock_gen_inst|clk_counter[24]~77_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(24));

-- Location: LCCOMB_X12_Y8_N18
\top_inst|clock_gen_inst|clk_counter[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[25]~79_combout\ = (\top_inst|clock_gen_inst|clk_counter\(25) & (\top_inst|clock_gen_inst|clk_counter[24]~78\ $ (GND))) # (!\top_inst|clock_gen_inst|clk_counter\(25) & (!\top_inst|clock_gen_inst|clk_counter[24]~78\ & 
-- VCC))
-- \top_inst|clock_gen_inst|clk_counter[25]~80\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(25) & !\top_inst|clock_gen_inst|clk_counter[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(25),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[24]~78\,
	combout => \top_inst|clock_gen_inst|clk_counter[25]~79_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[25]~80\);

-- Location: FF_X13_Y8_N27
\top_inst|clock_gen_inst|clk_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \top_inst|clock_gen_inst|clk_counter[25]~79_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(25));

-- Location: LCCOMB_X12_Y8_N20
\top_inst|clock_gen_inst|clk_counter[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[26]~81_combout\ = (\top_inst|clock_gen_inst|clk_counter\(26) & (!\top_inst|clock_gen_inst|clk_counter[25]~80\)) # (!\top_inst|clock_gen_inst|clk_counter\(26) & ((\top_inst|clock_gen_inst|clk_counter[25]~80\) # (GND)))
-- \top_inst|clock_gen_inst|clk_counter[26]~82\ = CARRY((!\top_inst|clock_gen_inst|clk_counter[25]~80\) # (!\top_inst|clock_gen_inst|clk_counter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(26),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[25]~80\,
	combout => \top_inst|clock_gen_inst|clk_counter[26]~81_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[26]~82\);

-- Location: FF_X13_Y8_N21
\top_inst|clock_gen_inst|clk_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \top_inst|clock_gen_inst|clk_counter[26]~81_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(26));

-- Location: LCCOMB_X12_Y8_N22
\top_inst|clock_gen_inst|clk_counter[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[27]~83_combout\ = (\top_inst|clock_gen_inst|clk_counter\(27) & (\top_inst|clock_gen_inst|clk_counter[26]~82\ $ (GND))) # (!\top_inst|clock_gen_inst|clk_counter\(27) & (!\top_inst|clock_gen_inst|clk_counter[26]~82\ & 
-- VCC))
-- \top_inst|clock_gen_inst|clk_counter[27]~84\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(27) & !\top_inst|clock_gen_inst|clk_counter[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(27),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[26]~82\,
	combout => \top_inst|clock_gen_inst|clk_counter[27]~83_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[27]~84\);

-- Location: FF_X12_Y8_N23
\top_inst|clock_gen_inst|clk_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \top_inst|clock_gen_inst|clk_counter[27]~83_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(27));

-- Location: LCCOMB_X12_Y8_N24
\top_inst|clock_gen_inst|clk_counter[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[28]~85_combout\ = (\top_inst|clock_gen_inst|clk_counter\(28) & (!\top_inst|clock_gen_inst|clk_counter[27]~84\)) # (!\top_inst|clock_gen_inst|clk_counter\(28) & ((\top_inst|clock_gen_inst|clk_counter[27]~84\) # (GND)))
-- \top_inst|clock_gen_inst|clk_counter[28]~86\ = CARRY((!\top_inst|clock_gen_inst|clk_counter[27]~84\) # (!\top_inst|clock_gen_inst|clk_counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(28),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[27]~84\,
	combout => \top_inst|clock_gen_inst|clk_counter[28]~85_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[28]~86\);

-- Location: FF_X13_Y8_N31
\top_inst|clock_gen_inst|clk_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \top_inst|clock_gen_inst|clk_counter[28]~85_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(28));

-- Location: LCCOMB_X12_Y8_N26
\top_inst|clock_gen_inst|clk_counter[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[29]~87_combout\ = (\top_inst|clock_gen_inst|clk_counter\(29) & (\top_inst|clock_gen_inst|clk_counter[28]~86\ $ (GND))) # (!\top_inst|clock_gen_inst|clk_counter\(29) & (!\top_inst|clock_gen_inst|clk_counter[28]~86\ & 
-- VCC))
-- \top_inst|clock_gen_inst|clk_counter[29]~88\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(29) & !\top_inst|clock_gen_inst|clk_counter[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(29),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[28]~86\,
	combout => \top_inst|clock_gen_inst|clk_counter[29]~87_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[29]~88\);

-- Location: FF_X13_Y8_N29
\top_inst|clock_gen_inst|clk_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \top_inst|clock_gen_inst|clk_counter[29]~87_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(29));

-- Location: LCCOMB_X12_Y8_N28
\top_inst|clock_gen_inst|clk_counter[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[30]~89_combout\ = (\top_inst|clock_gen_inst|clk_counter\(30) & (!\top_inst|clock_gen_inst|clk_counter[29]~88\)) # (!\top_inst|clock_gen_inst|clk_counter\(30) & ((\top_inst|clock_gen_inst|clk_counter[29]~88\) # (GND)))
-- \top_inst|clock_gen_inst|clk_counter[30]~90\ = CARRY((!\top_inst|clock_gen_inst|clk_counter[29]~88\) # (!\top_inst|clock_gen_inst|clk_counter\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(30),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|clk_counter[29]~88\,
	combout => \top_inst|clock_gen_inst|clk_counter[30]~89_combout\,
	cout => \top_inst|clock_gen_inst|clk_counter[30]~90\);

-- Location: FF_X13_Y8_N23
\top_inst|clock_gen_inst|clk_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \top_inst|clock_gen_inst|clk_counter[30]~89_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(30));

-- Location: LCCOMB_X12_Y8_N30
\top_inst|clock_gen_inst|clk_counter[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_counter[31]~91_combout\ = \top_inst|clock_gen_inst|clk_counter[30]~90\ $ (!\top_inst|clock_gen_inst|clk_counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \top_inst|clock_gen_inst|clk_counter\(31),
	cin => \top_inst|clock_gen_inst|clk_counter[30]~90\,
	combout => \top_inst|clock_gen_inst|clk_counter[31]~91_combout\);

-- Location: FF_X13_Y8_N25
\top_inst|clock_gen_inst|clk_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \top_inst|clock_gen_inst|clk_counter[31]~91_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_counter\(31));

-- Location: LCCOMB_X13_Y9_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[8]~0_combout\ = \top_inst|clock_gen_inst|clk_counter\(13) $ (VCC)
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[8]~1\ = CARRY(\top_inst|clock_gen_inst|clk_counter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(13),
	datad => VCC,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[8]~0_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[8]~1\);

-- Location: LCCOMB_X13_Y9_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[9]~2_combout\ = (\top_inst|clock_gen_inst|clk_counter\(14) & (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[8]~1\ & VCC)) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(14) & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[8]~1\))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[9]~3\ = CARRY((!\top_inst|clock_gen_inst|clk_counter\(14) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[8]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(14),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[8]~1\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[9]~2_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[9]~3\);

-- Location: LCCOMB_X13_Y9_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[10]~4_combout\ = (\top_inst|clock_gen_inst|clk_counter\(15) & ((GND) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[9]~3\))) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(15) & (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[9]~3\ $ (GND)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[10]~5\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(15)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[9]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(15),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[9]~3\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[10]~4_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[10]~5\);

-- Location: LCCOMB_X13_Y9_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[11]~6_combout\ = (\top_inst|clock_gen_inst|clk_counter\(16) & (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[10]~5\ & VCC)) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(16) & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[10]~5\))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[11]~7\ = CARRY((!\top_inst|clock_gen_inst|clk_counter\(16) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[10]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(16),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[10]~5\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[11]~6_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[11]~7\);

-- Location: LCCOMB_X13_Y9_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[12]~8_combout\ = (\top_inst|clock_gen_inst|clk_counter\(17) & ((GND) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[11]~7\))) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(17) & (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[11]~7\ $ (GND)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[12]~9\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(17)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[11]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(17),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[11]~7\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[12]~8_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[12]~9\);

-- Location: LCCOMB_X13_Y9_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[13]~10_combout\ = (\top_inst|clock_gen_inst|clk_counter\(18) & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[12]~9\)) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(18) & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[12]~9\) # (GND)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[13]~11\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[12]~9\) # (!\top_inst|clock_gen_inst|clk_counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(18),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[12]~9\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[13]~10_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[13]~11\);

-- Location: LCCOMB_X13_Y9_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[14]~12_combout\ = (\top_inst|clock_gen_inst|clk_counter\(19) & (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[13]~11\ $ (GND))) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(19) & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[13]~11\ & VCC))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[14]~13\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(19) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[13]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(19),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[13]~11\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[14]~12_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[14]~13\);

-- Location: LCCOMB_X13_Y9_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[15]~14_combout\ = (\top_inst|clock_gen_inst|clk_counter\(20) & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[14]~13\)) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(20) & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[14]~13\) # (GND)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[15]~15\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[14]~13\) # (!\top_inst|clock_gen_inst|clk_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(20),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[14]~13\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[15]~14_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[15]~15\);

-- Location: LCCOMB_X13_Y9_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[16]~16_combout\ = (\top_inst|clock_gen_inst|clk_counter\(21) & (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[15]~15\ $ (GND))) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(21) & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[15]~15\ & VCC))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[16]~17\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(21) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[15]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(21),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[15]~15\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[16]~16_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[16]~17\);

-- Location: LCCOMB_X13_Y9_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[17]~18_combout\ = (\top_inst|clock_gen_inst|clk_counter\(22) & (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[16]~17\ & VCC)) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(22) & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[16]~17\))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[17]~19\ = CARRY((!\top_inst|clock_gen_inst|clk_counter\(22) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[16]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(22),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[16]~17\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[17]~18_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[17]~19\);

-- Location: LCCOMB_X13_Y8_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[18]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[18]~20_combout\ = (\top_inst|clock_gen_inst|clk_counter\(23) & (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[17]~19\ $ (GND))) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(23) & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[17]~19\ & VCC))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[18]~21\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(23) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[17]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(23),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[17]~19\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[18]~20_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[18]~21\);

-- Location: LCCOMB_X13_Y8_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[19]~22_combout\ = (\top_inst|clock_gen_inst|clk_counter\(24) & (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[18]~21\ & VCC)) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(24) & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[18]~21\))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[19]~23\ = CARRY((!\top_inst|clock_gen_inst|clk_counter\(24) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[18]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(24),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[18]~21\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[19]~22_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[19]~23\);

-- Location: LCCOMB_X13_Y8_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[20]~24_combout\ = (\top_inst|clock_gen_inst|clk_counter\(25) & (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[19]~23\ $ (GND))) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(25) & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[19]~23\ & VCC))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[20]~25\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(25) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[19]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(25),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[19]~23\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[20]~24_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[20]~25\);

-- Location: LCCOMB_X13_Y8_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[21]~26_combout\ = (\top_inst|clock_gen_inst|clk_counter\(26) & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[20]~25\)) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(26) & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[20]~25\) # (GND)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[21]~27\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[20]~25\) # (!\top_inst|clock_gen_inst|clk_counter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(26),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[20]~25\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[21]~26_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[21]~27\);

-- Location: LCCOMB_X13_Y8_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[22]~28_combout\ = (\top_inst|clock_gen_inst|clk_counter\(27) & (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[21]~27\ $ (GND))) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(27) & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[21]~27\ & VCC))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[22]~29\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(27) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[21]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(27),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[21]~27\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[22]~28_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[22]~29\);

-- Location: LCCOMB_X13_Y8_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[23]~30_combout\ = (\top_inst|clock_gen_inst|clk_counter\(28) & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[22]~29\)) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(28) & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[22]~29\) # (GND)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[23]~31\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[22]~29\) # (!\top_inst|clock_gen_inst|clk_counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(28),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[22]~29\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[23]~30_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[23]~31\);

-- Location: LCCOMB_X13_Y8_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[24]~32_combout\ = (\top_inst|clock_gen_inst|clk_counter\(29) & (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[23]~31\ $ (GND))) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(29) & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[23]~31\ & VCC))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[24]~33\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(29) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[23]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(29),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[23]~31\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[24]~32_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[24]~33\);

-- Location: LCCOMB_X13_Y8_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[25]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[25]~34_combout\ = (\top_inst|clock_gen_inst|clk_counter\(30) & (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[24]~33\ & VCC)) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(30) & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[24]~33\))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[25]~35\ = CARRY((!\top_inst|clock_gen_inst|clk_counter\(30) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[24]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(30),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[24]~33\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[25]~34_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[25]~35\);

-- Location: LCCOMB_X13_Y8_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[26]~36_combout\ = (\top_inst|clock_gen_inst|clk_counter\(31) & (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[25]~35\ $ (GND))) # 
-- (!\top_inst|clock_gen_inst|clk_counter\(31) & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[25]~35\ & VCC))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[26]~37\ = CARRY((\top_inst|clock_gen_inst|clk_counter\(31) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[25]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(31),
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[25]~35\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[26]~36_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[26]~37\);

-- Location: LCCOMB_X13_Y8_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ = !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[26]~37\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[26]~37\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\);

-- Location: LCCOMB_X14_Y11_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[742]~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[742]~386_combout\ = (\top_inst|clock_gen_inst|clk_counter\(19) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(19),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[742]~386_combout\);

-- Location: LCCOMB_X13_Y9_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[742]~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[742]~387_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[14]~12_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[14]~12_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[742]~387_combout\);

-- Location: LCCOMB_X13_Y9_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[741]~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[741]~389_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[13]~10_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[13]~10_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[741]~389_combout\);

-- Location: LCCOMB_X14_Y9_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[741]~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[741]~388_combout\ = (\top_inst|clock_gen_inst|clk_counter\(18) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(18),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[741]~388_combout\);

-- Location: LCCOMB_X13_Y9_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[740]~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[740]~391_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[12]~8_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[12]~8_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[740]~391_combout\);

-- Location: LCCOMB_X14_Y9_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[740]~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[740]~390_combout\ = (\top_inst|clock_gen_inst|clk_counter\(17) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(17),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[740]~390_combout\);

-- Location: LCCOMB_X12_Y11_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[739]~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[739]~392_combout\ = (\top_inst|clock_gen_inst|clk_counter\(16) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(16),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[739]~392_combout\);

-- Location: LCCOMB_X13_Y9_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[739]~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[739]~393_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[11]~6_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[11]~6_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[739]~393_combout\);

-- Location: LCCOMB_X14_Y11_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[738]~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[738]~394_combout\ = (\top_inst|clock_gen_inst|clk_counter\(15) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(15),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[738]~394_combout\);

-- Location: LCCOMB_X14_Y11_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[738]~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[738]~395_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[10]~4_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[10]~4_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[738]~395_combout\);

-- Location: LCCOMB_X12_Y11_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[737]~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[737]~396_combout\ = (\top_inst|clock_gen_inst|clk_counter\(14) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(14),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[737]~396_combout\);

-- Location: LCCOMB_X14_Y11_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[737]~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[737]~397_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[9]~2_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[9]~2_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[737]~397_combout\);

-- Location: LCCOMB_X14_Y11_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[736]~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[736]~398_combout\ = (\top_inst|clock_gen_inst|clk_counter\(13) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(13),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[736]~398_combout\);

-- Location: LCCOMB_X13_Y11_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[736]~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[736]~399_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[8]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[8]~0_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[736]~399_combout\);

-- Location: LCCOMB_X12_Y11_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[735]~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[735]~401_combout\ = (\top_inst|clock_gen_inst|clk_counter\(12) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(12),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[735]~401_combout\);

-- Location: LCCOMB_X12_Y9_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[735]~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[735]~400_combout\ = (\top_inst|clock_gen_inst|clk_counter\(12) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(12),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[735]~400_combout\);

-- Location: LCCOMB_X13_Y11_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[8]~0_combout\ = (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[735]~401_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[735]~400_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[8]~1\ = CARRY((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[735]~401_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[735]~400_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[735]~401_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[735]~400_combout\,
	datad => VCC,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[8]~0_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[8]~1\);

-- Location: LCCOMB_X13_Y11_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[9]~2_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[8]~1\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[736]~398_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[736]~399_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[8]~1\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[736]~398_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[736]~399_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[9]~3\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[736]~398_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[736]~399_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[8]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[736]~398_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[736]~399_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[8]~1\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[9]~2_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[9]~3\);

-- Location: LCCOMB_X13_Y11_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[10]~4_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[9]~3\ & 
-- ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[737]~396_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[737]~397_combout\))))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[9]~3\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[737]~396_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[737]~397_combout\) # (GND))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[10]~5\ = CARRY((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[737]~396_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[737]~397_combout\) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[9]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[737]~396_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[737]~397_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[9]~3\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[10]~4_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[10]~5\);

-- Location: LCCOMB_X13_Y11_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[11]~6_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[10]~5\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[738]~394_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[738]~395_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[10]~5\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[738]~394_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[738]~395_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[11]~7\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[738]~394_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[738]~395_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[10]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[738]~394_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[738]~395_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[10]~5\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[11]~6_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[11]~7\);

-- Location: LCCOMB_X13_Y11_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[12]~8_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[11]~7\ & 
-- ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[739]~392_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[739]~393_combout\))))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[11]~7\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[739]~392_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[739]~393_combout\) # (GND))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[12]~9\ = CARRY((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[739]~392_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[739]~393_combout\) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[11]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[739]~392_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[739]~393_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[11]~7\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[12]~8_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[12]~9\);

-- Location: LCCOMB_X13_Y11_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[13]~10_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[740]~391_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[12]~9\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[740]~391_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[740]~390_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[12]~9\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[740]~390_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[12]~9\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[13]~11\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[740]~391_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[740]~390_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[12]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[740]~391_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[740]~390_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[12]~9\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[13]~10_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[13]~11\);

-- Location: LCCOMB_X13_Y11_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[14]~12_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[13]~11\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[741]~389_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[741]~388_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[13]~11\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[741]~389_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[741]~388_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[14]~13\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[13]~11\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[741]~389_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[741]~388_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[741]~389_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[741]~388_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[13]~11\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[14]~12_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[14]~13\);

-- Location: LCCOMB_X13_Y11_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[15]~14_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[742]~386_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[14]~13\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[742]~386_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[742]~387_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[14]~13\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[742]~387_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[14]~13\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[15]~15\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[742]~386_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[742]~387_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[14]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[742]~386_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[742]~387_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[14]~13\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[15]~14_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[15]~15\);

-- Location: LCCOMB_X13_Y10_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[754]~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[754]~362_combout\ = (\top_inst|clock_gen_inst|clk_counter\(31) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(31),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[754]~362_combout\);

-- Location: LCCOMB_X13_Y10_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[754]~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[754]~363_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[26]~36_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[26]~36_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[754]~363_combout\);

-- Location: LCCOMB_X13_Y10_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[753]~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[753]~364_combout\ = (\top_inst|clock_gen_inst|clk_counter\(30) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(30),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[753]~364_combout\);

-- Location: LCCOMB_X13_Y8_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[753]~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[753]~365_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[25]~34_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[25]~34_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[753]~365_combout\);

-- Location: LCCOMB_X13_Y8_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[752]~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[752]~367_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[24]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[24]~32_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[752]~367_combout\);

-- Location: LCCOMB_X13_Y8_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[752]~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[752]~366_combout\ = (\top_inst|clock_gen_inst|clk_counter\(29) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(29),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[752]~366_combout\);

-- Location: LCCOMB_X12_Y10_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[751]~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[751]~368_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & \top_inst|clock_gen_inst|clk_counter\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(28),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[751]~368_combout\);

-- Location: LCCOMB_X13_Y8_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[751]~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[751]~369_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[23]~30_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[23]~30_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[751]~369_combout\);

-- Location: LCCOMB_X12_Y10_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[750]~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[750]~370_combout\ = (\top_inst|clock_gen_inst|clk_counter\(27) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(27),
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[750]~370_combout\);

-- Location: LCCOMB_X13_Y8_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[750]~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[750]~371_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[22]~28_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[22]~28_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[750]~371_combout\);

-- Location: LCCOMB_X12_Y10_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[749]~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[749]~372_combout\ = (\top_inst|clock_gen_inst|clk_counter\(26) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(26),
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[749]~372_combout\);

-- Location: LCCOMB_X14_Y10_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[749]~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[749]~373_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[21]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[21]~26_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[749]~373_combout\);

-- Location: LCCOMB_X14_Y8_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[748]~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[748]~374_combout\ = (\top_inst|clock_gen_inst|clk_counter\(25) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(25),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[748]~374_combout\);

-- Location: LCCOMB_X13_Y8_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[748]~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[748]~375_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[20]~24_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[20]~24_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[748]~375_combout\);

-- Location: LCCOMB_X12_Y10_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[747]~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[747]~376_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & \top_inst|clock_gen_inst|clk_counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(24),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[747]~376_combout\);

-- Location: LCCOMB_X14_Y10_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[747]~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[747]~377_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[19]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[19]~22_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[747]~377_combout\);

-- Location: LCCOMB_X14_Y8_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[746]~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[746]~379_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[18]~20_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[18]~20_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[746]~379_combout\);

-- Location: LCCOMB_X12_Y10_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[746]~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[746]~378_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & \top_inst|clock_gen_inst|clk_counter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(23),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[746]~378_combout\);

-- Location: LCCOMB_X14_Y10_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[745]~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[745]~381_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[17]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[17]~18_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[745]~381_combout\);

-- Location: LCCOMB_X12_Y10_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[745]~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[745]~380_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & \top_inst|clock_gen_inst|clk_counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(22),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[745]~380_combout\);

-- Location: LCCOMB_X14_Y11_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[744]~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[744]~382_combout\ = (\top_inst|clock_gen_inst|clk_counter\(21) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(21),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[744]~382_combout\);

-- Location: LCCOMB_X13_Y9_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[744]~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[744]~383_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[16]~16_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[16]~16_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[744]~383_combout\);

-- Location: LCCOMB_X12_Y11_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[743]~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[743]~384_combout\ = (\top_inst|clock_gen_inst|clk_counter\(20) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(20),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[743]~384_combout\);

-- Location: LCCOMB_X13_Y9_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[743]~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[743]~385_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[15]~14_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[15]~14_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[743]~385_combout\);

-- Location: LCCOMB_X13_Y11_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[16]~16_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[15]~15\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[743]~384_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[743]~385_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[15]~15\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[743]~384_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[743]~385_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[16]~17\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[15]~15\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[743]~384_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[743]~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[743]~384_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[743]~385_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[15]~15\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[16]~16_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[16]~17\);

-- Location: LCCOMB_X13_Y11_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[17]~18_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[16]~17\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[744]~382_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[744]~383_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[16]~17\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[744]~382_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[744]~383_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[17]~19\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[744]~382_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[744]~383_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[16]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[744]~382_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[744]~383_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[16]~17\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[17]~18_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[17]~19\);

-- Location: LCCOMB_X13_Y10_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[18]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[18]~20_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[17]~19\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[745]~381_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[745]~380_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[17]~19\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[745]~381_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[745]~380_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[18]~21\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[17]~19\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[745]~381_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[745]~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[745]~381_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[745]~380_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[17]~19\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[18]~20_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[18]~21\);

-- Location: LCCOMB_X13_Y10_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[19]~22_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[18]~21\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[746]~379_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[746]~378_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[18]~21\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[746]~379_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[746]~378_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[19]~23\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[746]~379_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[746]~378_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[18]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[746]~379_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[746]~378_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[18]~21\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[19]~22_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[19]~23\);

-- Location: LCCOMB_X13_Y10_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[20]~24_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[19]~23\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[747]~376_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[747]~377_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[19]~23\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[747]~376_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[747]~377_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[20]~25\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[19]~23\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[747]~376_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[747]~377_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[747]~376_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[747]~377_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[19]~23\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[20]~24_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[20]~25\);

-- Location: LCCOMB_X13_Y10_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[21]~26_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[748]~374_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[20]~25\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[748]~374_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[748]~375_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[20]~25\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[748]~375_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[20]~25\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[21]~27\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[748]~374_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[748]~375_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[20]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[748]~374_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[748]~375_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[20]~25\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[21]~26_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[21]~27\);

-- Location: LCCOMB_X13_Y10_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[22]~28_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[21]~27\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[749]~372_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[749]~373_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[21]~27\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[749]~372_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[749]~373_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[22]~29\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[21]~27\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[749]~372_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[749]~373_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[749]~372_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[749]~373_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[21]~27\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[22]~28_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[22]~29\);

-- Location: LCCOMB_X13_Y10_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[23]~30_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[750]~370_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[22]~29\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[750]~370_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[750]~371_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[22]~29\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[750]~371_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[22]~29\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[23]~31\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[750]~370_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[750]~371_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[22]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[750]~370_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[750]~371_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[22]~29\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[23]~30_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[23]~31\);

-- Location: LCCOMB_X13_Y10_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[24]~32_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[23]~31\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[751]~368_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[751]~369_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[23]~31\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[751]~368_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[751]~369_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[24]~33\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[23]~31\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[751]~368_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[751]~369_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[751]~368_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[751]~369_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[23]~31\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[24]~32_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[24]~33\);

-- Location: LCCOMB_X13_Y10_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[25]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[25]~34_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[24]~33\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[752]~367_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[752]~366_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[24]~33\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[752]~367_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[752]~366_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[25]~35\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[752]~367_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[752]~366_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[24]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[752]~367_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[752]~366_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[24]~33\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[25]~34_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[25]~35\);

-- Location: LCCOMB_X13_Y10_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[26]~36_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[25]~35\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[753]~364_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[753]~365_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[25]~35\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[753]~364_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[753]~365_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[26]~37\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[25]~35\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[753]~364_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[753]~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[753]~364_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[753]~365_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[25]~35\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[26]~36_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[26]~37\);

-- Location: LCCOMB_X13_Y10_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[27]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[27]~39_cout\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[754]~362_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[754]~363_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[26]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[754]~362_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[754]~363_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[26]~37\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[27]~39_cout\);

-- Location: LCCOMB_X13_Y10_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ = \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[27]~39_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[27]~39_cout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\);

-- Location: LCCOMB_X18_Y11_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~608\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~608_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & (\top_inst|clock_gen_inst|clk_counter\(19))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[14]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datab => \top_inst|clock_gen_inst|clk_counter\(19),
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[14]~12_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~608_combout\);

-- Location: LCCOMB_X17_Y10_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[782]~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[782]~402_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[26]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[26]~36_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[782]~402_combout\);

-- Location: LCCOMB_X17_Y10_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[782]~597\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[782]~597_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & ((\top_inst|clock_gen_inst|clk_counter\(30)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[25]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[25]~34_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(30),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[782]~597_combout\);

-- Location: LCCOMB_X17_Y10_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~598\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~598_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & ((\top_inst|clock_gen_inst|clk_counter\(29)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[24]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[24]~32_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(29),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~598_combout\);

-- Location: LCCOMB_X13_Y10_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~403_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[25]~34_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[25]~34_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~403_combout\);

-- Location: LCCOMB_X16_Y10_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~599\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~599_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & (\top_inst|clock_gen_inst|clk_counter\(28))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[23]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(28),
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[23]~30_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~599_combout\);

-- Location: LCCOMB_X13_Y10_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~404_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[24]~32_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[24]~32_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~404_combout\);

-- Location: LCCOMB_X16_Y10_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~405_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[23]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[23]~30_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~405_combout\);

-- Location: LCCOMB_X16_Y10_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~600\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~600_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & ((\top_inst|clock_gen_inst|clk_counter\(27)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[22]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[22]~28_combout\,
	datab => \top_inst|clock_gen_inst|clk_counter\(27),
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~600_combout\);

-- Location: LCCOMB_X16_Y10_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~406_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[22]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[22]~28_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~406_combout\);

-- Location: LCCOMB_X16_Y10_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~601\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~601_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & (\top_inst|clock_gen_inst|clk_counter\(26))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[21]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(26),
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[21]~26_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~601_combout\);

-- Location: LCCOMB_X16_Y10_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~407_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[21]~26_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[21]~26_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~407_combout\);

-- Location: LCCOMB_X14_Y9_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~602\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~602_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & (\top_inst|clock_gen_inst|clk_counter\(25))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[20]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(25),
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[20]~24_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~602_combout\);

-- Location: LCCOMB_X16_Y10_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~603\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~603_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & (\top_inst|clock_gen_inst|clk_counter\(24))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[19]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(24),
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[19]~22_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~603_combout\);

-- Location: LCCOMB_X16_Y10_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~408_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[20]~24_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[20]~24_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~408_combout\);

-- Location: LCCOMB_X14_Y10_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~409_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[19]~22_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[19]~22_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~409_combout\);

-- Location: LCCOMB_X14_Y8_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~604\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~604_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & ((\top_inst|clock_gen_inst|clk_counter\(23)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[18]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[18]~20_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datac => \top_inst|clock_gen_inst|clk_counter\(23),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~604_combout\);

-- Location: LCCOMB_X16_Y9_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~605\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~605_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & (\top_inst|clock_gen_inst|clk_counter\(22))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[17]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datab => \top_inst|clock_gen_inst|clk_counter\(22),
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[17]~18_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~605_combout\);

-- Location: LCCOMB_X16_Y10_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~410_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[18]~20_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[18]~20_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~410_combout\);

-- Location: LCCOMB_X16_Y9_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~606\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~606_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & (\top_inst|clock_gen_inst|clk_counter\(21))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[16]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datab => \top_inst|clock_gen_inst|clk_counter\(21),
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[16]~16_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~606_combout\);

-- Location: LCCOMB_X13_Y11_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~411_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[17]~18_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[17]~18_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~411_combout\);

-- Location: LCCOMB_X13_Y11_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~412_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[16]~16_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[16]~16_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~412_combout\);

-- Location: LCCOMB_X18_Y11_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~607\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~607_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & (\top_inst|clock_gen_inst|clk_counter\(20))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[15]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datab => \top_inst|clock_gen_inst|clk_counter\(20),
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[15]~14_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~607_combout\);

-- Location: LCCOMB_X13_Y11_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~413_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[15]~14_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[15]~14_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~413_combout\);

-- Location: LCCOMB_X18_Y11_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~609\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~609_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & (\top_inst|clock_gen_inst|clk_counter\(18))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[13]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datab => \top_inst|clock_gen_inst|clk_counter\(18),
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[13]~10_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~609_combout\);

-- Location: LCCOMB_X17_Y11_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~414_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[14]~12_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[14]~12_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~414_combout\);

-- Location: LCCOMB_X17_Y11_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~415_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[13]~10_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[13]~10_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~415_combout\);

-- Location: LCCOMB_X14_Y10_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~610\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~610_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & ((\top_inst|clock_gen_inst|clk_counter\(17)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[12]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[12]~8_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datac => \top_inst|clock_gen_inst|clk_counter\(17),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~610_combout\);

-- Location: LCCOMB_X14_Y10_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~611\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~611_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & ((\top_inst|clock_gen_inst|clk_counter\(16)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[11]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[11]~6_combout\,
	datab => \top_inst|clock_gen_inst|clk_counter\(16),
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~611_combout\);

-- Location: LCCOMB_X17_Y11_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~416_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[12]~8_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[12]~8_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~416_combout\);

-- Location: LCCOMB_X14_Y10_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~612\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~612_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & ((\top_inst|clock_gen_inst|clk_counter\(15)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[10]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[10]~4_combout\,
	datab => \top_inst|clock_gen_inst|clk_counter\(15),
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~612_combout\);

-- Location: LCCOMB_X13_Y11_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~417_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[11]~6_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[11]~6_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~417_combout\);

-- Location: LCCOMB_X16_Y11_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~418_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[10]~4_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[10]~4_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~418_combout\);

-- Location: LCCOMB_X14_Y9_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~613\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~613_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & ((\top_inst|clock_gen_inst|clk_counter\(14)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[9]~2_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datac => \top_inst|clock_gen_inst|clk_counter\(14),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~613_combout\);

-- Location: LCCOMB_X14_Y11_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~614\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~614_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & (\top_inst|clock_gen_inst|clk_counter\(13))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[8]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(13),
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[8]~0_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~614_combout\);

-- Location: LCCOMB_X13_Y11_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~419_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[9]~2_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[9]~2_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~419_combout\);

-- Location: LCCOMB_X16_Y11_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[764]~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[764]~420_combout\ = (\top_inst|clock_gen_inst|clk_counter\(12) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(12),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[764]~420_combout\);

-- Location: LCCOMB_X16_Y11_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[764]~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[764]~421_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[8]~0_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[8]~0_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[764]~421_combout\);

-- Location: LCCOMB_X16_Y11_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[763]~423\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[763]~423_combout\ = (\top_inst|clock_gen_inst|clk_counter\(11) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(11),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[763]~423_combout\);

-- Location: LCCOMB_X18_Y11_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[763]~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[763]~422_combout\ = (\top_inst|clock_gen_inst|clk_counter\(11) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(11),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[763]~422_combout\);

-- Location: LCCOMB_X17_Y11_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[8]~0_combout\ = (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[763]~423_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[763]~422_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[8]~1\ = CARRY((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[763]~423_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[763]~422_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[763]~423_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[763]~422_combout\,
	datad => VCC,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[8]~0_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[8]~1\);

-- Location: LCCOMB_X17_Y11_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[9]~2_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[8]~1\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[764]~420_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[764]~421_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[8]~1\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[764]~420_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[764]~421_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[9]~3\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[764]~420_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[764]~421_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[8]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[764]~420_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[764]~421_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[8]~1\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[9]~2_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[9]~3\);

-- Location: LCCOMB_X17_Y11_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[10]~4_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[9]~3\ & 
-- ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~614_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~419_combout\))))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[9]~3\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~614_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~419_combout\) # (GND))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[10]~5\ = CARRY((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~614_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~419_combout\) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[9]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~614_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~419_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[9]~3\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[10]~4_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[10]~5\);

-- Location: LCCOMB_X17_Y11_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[11]~6_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[10]~5\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~418_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~613_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[10]~5\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~418_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~613_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[11]~7\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~418_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~613_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[10]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~418_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~613_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[10]~5\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[11]~6_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[11]~7\);

-- Location: LCCOMB_X17_Y11_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[12]~8_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[11]~7\ & 
-- ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~612_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~417_combout\))))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[11]~7\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~612_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~417_combout\) # (GND))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[12]~9\ = CARRY((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~612_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~417_combout\) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[11]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~612_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~417_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[11]~7\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[12]~8_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[12]~9\);

-- Location: LCCOMB_X17_Y11_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[13]~10_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~611_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[12]~9\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~611_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~416_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[12]~9\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~416_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[12]~9\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[13]~11\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~611_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~416_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[12]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~611_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~416_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[12]~9\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[13]~10_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[13]~11\);

-- Location: LCCOMB_X17_Y11_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[14]~12_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[13]~11\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~415_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~610_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[13]~11\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~415_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~610_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[14]~13\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[13]~11\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~415_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~610_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~415_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~610_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[13]~11\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[14]~12_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[14]~13\);

-- Location: LCCOMB_X17_Y11_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[15]~14_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~609_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[14]~13\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~609_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~414_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[14]~13\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~414_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[14]~13\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[15]~15\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~609_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~414_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[14]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~609_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~414_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[14]~13\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[15]~14_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[15]~15\);

-- Location: LCCOMB_X17_Y11_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[16]~16_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[15]~15\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~413_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~608_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[15]~15\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~413_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~608_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[16]~17\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[15]~15\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~413_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~608_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~413_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~608_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[15]~15\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[16]~16_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[16]~17\);

-- Location: LCCOMB_X17_Y11_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[17]~18_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[16]~17\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~412_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~607_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[16]~17\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~412_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~607_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[17]~19\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~412_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~607_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[16]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~412_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~607_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[16]~17\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[17]~18_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[17]~19\);

-- Location: LCCOMB_X17_Y10_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[18]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[18]~20_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[17]~19\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~606_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~411_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[17]~19\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~606_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~411_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[18]~21\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[17]~19\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~606_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~411_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~606_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~411_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[17]~19\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[18]~20_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[18]~21\);

-- Location: LCCOMB_X17_Y10_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[19]~22_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[18]~21\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~605_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~410_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[18]~21\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~605_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~410_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[19]~23\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~605_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~410_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[18]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~605_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~410_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[18]~21\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[19]~22_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[19]~23\);

-- Location: LCCOMB_X17_Y10_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[20]~24_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[19]~23\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~409_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~604_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[19]~23\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~409_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~604_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[20]~25\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[19]~23\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~409_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~604_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~409_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~604_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[19]~23\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[20]~24_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[20]~25\);

-- Location: LCCOMB_X17_Y10_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[21]~26_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~603_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[20]~25\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~603_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~408_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[20]~25\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~408_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[20]~25\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[21]~27\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~603_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~408_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[20]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~603_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~408_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[20]~25\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[21]~26_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[21]~27\);

-- Location: LCCOMB_X17_Y10_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[22]~28_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[21]~27\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~407_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~602_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[21]~27\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~407_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~602_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[22]~29\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[21]~27\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~407_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~602_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~407_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~602_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[21]~27\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[22]~28_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[22]~29\);

-- Location: LCCOMB_X17_Y10_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[23]~30_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~406_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[22]~29\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~406_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~601_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[22]~29\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~601_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[22]~29\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[23]~31\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~406_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~601_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[22]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~406_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~601_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[22]~29\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[23]~30_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[23]~31\);

-- Location: LCCOMB_X17_Y10_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[24]~32_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[23]~31\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~405_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~600_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[23]~31\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~405_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~600_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[24]~33\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[23]~31\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~405_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~600_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~405_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~600_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[23]~31\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[24]~32_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[24]~33\);

-- Location: LCCOMB_X17_Y10_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[25]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[25]~34_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[24]~33\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~599_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~404_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[24]~33\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~599_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~404_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[25]~35\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~599_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~404_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[24]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~599_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~404_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[24]~33\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[25]~34_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[25]~35\);

-- Location: LCCOMB_X17_Y10_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[26]~36_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[25]~35\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~598_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~403_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[25]~35\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~598_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~403_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[26]~37\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[25]~35\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~598_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~403_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~598_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~403_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[25]~35\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[26]~36_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[26]~37\);

-- Location: LCCOMB_X17_Y10_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[27]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[27]~39_cout\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[782]~402_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[782]~597_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[26]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[782]~402_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[782]~597_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[26]~37\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[27]~39_cout\);

-- Location: LCCOMB_X17_Y10_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ = \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[27]~39_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[27]~39_cout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\);

-- Location: LCCOMB_X18_Y11_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~544\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~544_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~608_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[15]~14_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[15]~14_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[771]~608_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~544_combout\);

-- Location: LCCOMB_X18_Y10_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~434\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~434_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[16]~16_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[16]~16_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~434_combout\);

-- Location: LCCOMB_X18_Y10_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~435\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~435_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[15]~14_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[15]~14_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~435_combout\);

-- Location: LCCOMB_X18_Y11_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~545\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~545_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~609_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[14]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[770]~609_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[14]~12_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~545_combout\);

-- Location: LCCOMB_X14_Y10_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~546\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~546_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~610_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[13]~10_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[13]~10_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[769]~610_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~546_combout\);

-- Location: LCCOMB_X18_Y10_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~436\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~436_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[14]~12_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[14]~12_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~436_combout\);

-- Location: LCCOMB_X14_Y10_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~547\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~547_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~611_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[12]~8_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[12]~8_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[768]~611_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~547_combout\);

-- Location: LCCOMB_X17_Y11_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~437\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~437_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[13]~10_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[13]~10_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~437_combout\);

-- Location: LCCOMB_X18_Y10_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~438\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~438_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[12]~8_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[12]~8_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~438_combout\);

-- Location: LCCOMB_X14_Y10_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~548\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~548_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~612_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[11]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[767]~612_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[11]~6_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~548_combout\);

-- Location: LCCOMB_X18_Y10_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~439\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~439_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[11]~6_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[11]~6_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~439_combout\);

-- Location: LCCOMB_X14_Y9_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~549\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~549_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~613_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[10]~4_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[10]~4_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[766]~613_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~549_combout\);

-- Location: LCCOMB_X17_Y11_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~440\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~440_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[10]~4_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[10]~4_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~440_combout\);

-- Location: LCCOMB_X19_Y11_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~550\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~550_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~614_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[9]~2_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[9]~2_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[765]~614_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~550_combout\);

-- Location: LCCOMB_X16_Y10_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~441\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~441_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[9]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[9]~2_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~441_combout\);

-- Location: LCCOMB_X17_Y9_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~615\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~615_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & ((\top_inst|clock_gen_inst|clk_counter\(12)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[8]~0_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(12),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~615_combout\);

-- Location: LCCOMB_X18_Y11_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[792]~442\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[792]~442_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[8]~0_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[8]~0_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[792]~442_combout\);

-- Location: LCCOMB_X16_Y10_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[792]~616\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[792]~616_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & \top_inst|clock_gen_inst|clk_counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(11),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[792]~616_combout\);

-- Location: LCCOMB_X16_Y8_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[733]~443\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[733]~443_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & \top_inst|clock_gen_inst|clk_counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(10),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[733]~443_combout\);

-- Location: LCCOMB_X16_Y8_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[733]~444\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[733]~444_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & \top_inst|clock_gen_inst|clk_counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(10),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[733]~444_combout\);

-- Location: LCCOMB_X16_Y8_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[6]~42_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[733]~443_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[733]~444_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[733]~443_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[733]~444_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[6]~42_combout\);

-- Location: LCCOMB_X18_Y8_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~617\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~617_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & (\top_inst|clock_gen_inst|clk_counter\(10))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[6]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(10),
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[6]~42_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~617_combout\);

-- Location: LCCOMB_X18_Y8_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~618\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~618_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & (\top_inst|clock_gen_inst|clk_counter\(10))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[6]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(10),
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[6]~42_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~618_combout\);

-- Location: LCCOMB_X18_Y10_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[8]~0_combout\ = (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~617_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~618_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[8]~1\ = CARRY((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~617_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~618_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~617_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~618_combout\,
	datad => VCC,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[8]~0_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[8]~1\);

-- Location: LCCOMB_X18_Y10_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[9]~2_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[8]~1\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[792]~442_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[792]~616_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[8]~1\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[792]~442_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[792]~616_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[9]~3\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[792]~442_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[792]~616_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[8]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[792]~442_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[792]~616_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[8]~1\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[9]~2_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[9]~3\);

-- Location: LCCOMB_X18_Y10_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[10]~4_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[9]~3\ & 
-- ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~441_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~615_combout\))))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[9]~3\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~441_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~615_combout\) # (GND))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[10]~5\ = CARRY((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~441_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~615_combout\) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[9]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~441_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~615_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[9]~3\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[10]~4_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[10]~5\);

-- Location: LCCOMB_X18_Y10_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[11]~6_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[10]~5\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~440_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~550_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[10]~5\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~440_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~550_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[11]~7\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~440_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~550_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[10]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~440_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~550_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[10]~5\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[11]~6_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[11]~7\);

-- Location: LCCOMB_X18_Y10_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[12]~8_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[11]~7\ & 
-- ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~439_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~549_combout\))))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[11]~7\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~439_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~549_combout\) # (GND))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[12]~9\ = CARRY((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~439_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~549_combout\) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[11]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~439_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~549_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[11]~7\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[12]~8_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[12]~9\);

-- Location: LCCOMB_X18_Y10_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[13]~10_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~438_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[12]~9\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~438_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~548_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[12]~9\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~548_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[12]~9\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[13]~11\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~438_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~548_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[12]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~438_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~548_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[12]~9\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[13]~10_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[13]~11\);

-- Location: LCCOMB_X18_Y10_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[14]~12_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[13]~11\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~547_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~437_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[13]~11\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~547_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~437_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[14]~13\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[13]~11\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~547_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~437_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~547_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~437_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[13]~11\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[14]~12_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[14]~13\);

-- Location: LCCOMB_X18_Y10_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[15]~14_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~546_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[14]~13\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~546_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~436_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[14]~13\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~436_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[14]~13\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[15]~15\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~546_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~436_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[14]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~546_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~436_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[14]~13\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[15]~14_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[15]~15\);

-- Location: LCCOMB_X18_Y10_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[16]~16_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[15]~15\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~435_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~545_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[15]~15\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~435_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~545_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[16]~17\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[15]~15\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~435_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~545_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~435_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~545_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[15]~15\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[16]~16_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[16]~17\);

-- Location: LCCOMB_X18_Y10_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[17]~18_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[16]~17\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~544_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~434_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[16]~17\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~544_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~434_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[17]~19\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~544_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~434_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[16]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~544_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~434_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[16]~17\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[17]~18_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[17]~19\);

-- Location: LCCOMB_X18_Y9_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[810]~534\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[810]~534_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~598_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[25]~34_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[25]~34_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[781]~598_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[810]~534_combout\);

-- Location: LCCOMB_X18_Y9_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[810]~424\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[810]~424_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[26]~36_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[26]~36_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[810]~424_combout\);

-- Location: LCCOMB_X17_Y10_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~425\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~425_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[25]~34_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[25]~34_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~425_combout\);

-- Location: LCCOMB_X17_Y9_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~535\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~535_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~599_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[24]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[780]~599_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[24]~32_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~535_combout\);

-- Location: LCCOMB_X17_Y9_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~426\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~426_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[24]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[24]~32_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~426_combout\);

-- Location: LCCOMB_X16_Y10_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~536\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~536_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~600_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[23]~30_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[23]~30_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[779]~600_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~536_combout\);

-- Location: LCCOMB_X17_Y9_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~537\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~537_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~601_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[22]~28_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[22]~28_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[778]~601_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~537_combout\);

-- Location: LCCOMB_X17_Y9_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~427\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~427_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[23]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[23]~30_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~427_combout\);

-- Location: LCCOMB_X14_Y9_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~538\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~538_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~602_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[21]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[777]~602_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[21]~26_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~538_combout\);

-- Location: LCCOMB_X17_Y9_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~428\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~428_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[22]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[22]~28_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~428_combout\);

-- Location: LCCOMB_X16_Y10_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~539\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~539_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~603_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[20]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[20]~24_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[776]~603_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~539_combout\);

-- Location: LCCOMB_X17_Y9_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~429\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~429_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[21]~26_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[21]~26_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~429_combout\);

-- Location: LCCOMB_X14_Y8_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~540\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~540_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~604_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[19]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[775]~604_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[19]~22_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~540_combout\);

-- Location: LCCOMB_X17_Y9_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~430\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~430_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[20]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[20]~24_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~430_combout\);

-- Location: LCCOMB_X17_Y9_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~431\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~431_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[19]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[19]~22_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~431_combout\);

-- Location: LCCOMB_X16_Y9_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~541\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~541_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~605_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[18]~20_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[774]~605_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[18]~20_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~541_combout\);

-- Location: LCCOMB_X16_Y9_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~542\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~542_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~606_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[17]~18_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[17]~18_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[773]~606_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~542_combout\);

-- Location: LCCOMB_X17_Y10_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~432\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~432_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[18]~20_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[18]~20_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~432_combout\);

-- Location: LCCOMB_X18_Y11_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~543\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~543_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~607_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[772]~607_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[16]~16_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~543_combout\);

-- Location: LCCOMB_X17_Y11_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~433\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~433_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[17]~18_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[17]~18_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~433_combout\);

-- Location: LCCOMB_X18_Y9_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[18]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[18]~20_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[17]~19\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~543_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~433_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[17]~19\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~543_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~433_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[18]~21\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[17]~19\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~543_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~433_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~543_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~433_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[17]~19\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[18]~20_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[18]~21\);

-- Location: LCCOMB_X18_Y9_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[19]~22_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[18]~21\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~542_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~432_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[18]~21\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~542_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~432_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[19]~23\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~542_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~432_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[18]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~542_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~432_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[18]~21\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[19]~22_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[19]~23\);

-- Location: LCCOMB_X18_Y9_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[20]~24_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[19]~23\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~431_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~541_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[19]~23\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~431_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~541_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[20]~25\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[19]~23\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~431_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~541_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~431_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~541_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[19]~23\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[20]~24_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[20]~25\);

-- Location: LCCOMB_X18_Y9_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[21]~26_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~540_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[20]~25\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~540_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~430_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[20]~25\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~430_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[20]~25\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[21]~27\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~540_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~430_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[20]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~540_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~430_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[20]~25\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[21]~26_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[21]~27\);

-- Location: LCCOMB_X18_Y9_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[22]~28_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[21]~27\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~539_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~429_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[21]~27\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~539_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~429_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[22]~29\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[21]~27\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~539_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~429_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~539_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~429_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[21]~27\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[22]~28_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[22]~29\);

-- Location: LCCOMB_X18_Y9_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[23]~30_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~538_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[22]~29\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~538_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~428_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[22]~29\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~428_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[22]~29\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[23]~31\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~538_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~428_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[22]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~538_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~428_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[22]~29\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[23]~30_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[23]~31\);

-- Location: LCCOMB_X18_Y9_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[24]~32_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[23]~31\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~537_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~427_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[23]~31\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~537_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~427_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[24]~33\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[23]~31\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~537_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~537_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~427_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[23]~31\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[24]~32_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[24]~33\);

-- Location: LCCOMB_X18_Y9_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[25]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[25]~34_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[24]~33\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~426_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~536_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[24]~33\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~426_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~536_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[25]~35\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~426_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~536_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[24]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~426_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~536_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[24]~33\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[25]~34_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[25]~35\);

-- Location: LCCOMB_X18_Y9_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[26]~36_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[25]~35\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~425_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~535_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[25]~35\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~425_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~535_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[26]~37\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[25]~35\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~425_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~535_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~425_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~535_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[25]~35\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[26]~36_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[26]~37\);

-- Location: LCCOMB_X18_Y9_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[27]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[27]~39_cout\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[810]~534_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[810]~424_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[26]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[810]~534_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[810]~424_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[26]~37\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[27]~39_cout\);

-- Location: LCCOMB_X18_Y9_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ = \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[27]~39_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[27]~39_cout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\);

-- Location: LCCOMB_X18_Y11_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~560\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~560_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~544_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[16]~16_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[800]~544_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[16]~16_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~560_combout\);

-- Location: LCCOMB_X19_Y9_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[838]~551\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[838]~551_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~535_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[25]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[25]~34_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[809]~535_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[838]~551_combout\);

-- Location: LCCOMB_X19_Y9_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[838]~445\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[838]~445_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[26]~36_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[26]~36_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[838]~445_combout\);

-- Location: LCCOMB_X18_Y9_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~446\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~446_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[25]~34_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[25]~34_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~446_combout\);

-- Location: LCCOMB_X16_Y9_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~552\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~552_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~536_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[24]~32_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[24]~32_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[808]~536_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~552_combout\);

-- Location: LCCOMB_X18_Y9_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~447\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~447_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[24]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[24]~32_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~447_combout\);

-- Location: LCCOMB_X17_Y9_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~553\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~553_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~537_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[23]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[23]~30_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[807]~537_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~553_combout\);

-- Location: LCCOMB_X14_Y9_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~554\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~554_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~538_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[22]~28_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[806]~538_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[22]~28_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~554_combout\);

-- Location: LCCOMB_X21_Y9_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~448\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~448_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[23]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[23]~30_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~448_combout\);

-- Location: LCCOMB_X16_Y10_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~555\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~555_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~539_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[21]~26_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[21]~26_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[805]~539_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~555_combout\);

-- Location: LCCOMB_X14_Y9_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~449\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~449_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[22]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[22]~28_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~449_combout\);

-- Location: LCCOMB_X21_Y9_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~450\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~450_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[21]~26_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[21]~26_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~450_combout\);

-- Location: LCCOMB_X21_Y9_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~556\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~556_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~540_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[20]~24_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[20]~24_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[804]~540_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~556_combout\);

-- Location: LCCOMB_X16_Y9_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~557\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~557_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~541_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[19]~22_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[19]~22_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[803]~541_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~557_combout\);

-- Location: LCCOMB_X18_Y9_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~451\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~451_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[20]~24_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[20]~24_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~451_combout\);

-- Location: LCCOMB_X16_Y9_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~558\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~558_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~542_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[18]~20_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[18]~20_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[802]~542_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~558_combout\);

-- Location: LCCOMB_X17_Y9_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~452\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~452_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[19]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[19]~22_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~452_combout\);

-- Location: LCCOMB_X18_Y11_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~559\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~559_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~543_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[801]~543_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[17]~18_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~559_combout\);

-- Location: LCCOMB_X17_Y9_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~453\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~453_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[18]~20_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[18]~20_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~453_combout\);

-- Location: LCCOMB_X18_Y10_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~454\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~454_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[17]~18_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[17]~18_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~454_combout\);

-- Location: LCCOMB_X18_Y11_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~561\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~561_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~545_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[15]~14_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[799]~545_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[15]~14_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~561_combout\);

-- Location: LCCOMB_X19_Y10_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~455\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~455_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[16]~16_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[16]~16_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~455_combout\);

-- Location: LCCOMB_X14_Y10_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~562\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~562_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~546_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[14]~12_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[14]~12_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[798]~546_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~562_combout\);

-- Location: LCCOMB_X19_Y10_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~456\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~456_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[15]~14_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[15]~14_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~456_combout\);

-- Location: LCCOMB_X14_Y10_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~563\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~563_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~547_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[13]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[797]~547_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[13]~10_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~563_combout\);

-- Location: LCCOMB_X19_Y10_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~457\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~457_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[14]~12_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[14]~12_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~457_combout\);

-- Location: LCCOMB_X19_Y10_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~458\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~458_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[13]~10_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[13]~10_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~458_combout\);

-- Location: LCCOMB_X14_Y10_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~564\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~564_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~548_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[12]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[796]~548_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[12]~8_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~564_combout\);

-- Location: LCCOMB_X14_Y9_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~565\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~565_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~549_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[11]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[11]~6_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[795]~549_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~565_combout\);

-- Location: LCCOMB_X19_Y11_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~459\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~459_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[12]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[12]~8_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~459_combout\);

-- Location: LCCOMB_X19_Y11_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~566\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~566_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~550_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[10]~4_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[10]~4_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[794]~550_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~566_combout\);

-- Location: LCCOMB_X23_Y10_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~460\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~460_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[11]~6_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[11]~6_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~460_combout\);

-- Location: LCCOMB_X19_Y8_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~461\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~461_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[10]~4_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[10]~4_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~461_combout\);

-- Location: LCCOMB_X17_Y9_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~567\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~567_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~615_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[9]~2_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[793]~615_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~567_combout\);

-- Location: LCCOMB_X19_Y11_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~626\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~626_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & (\top_inst|clock_gen_inst|clk_counter\(11))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[8]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(11),
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[8]~0_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~626_combout\);

-- Location: LCCOMB_X19_Y11_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~462\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~462_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[9]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[9]~2_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~462_combout\);

-- Location: LCCOMB_X18_Y8_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~463\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~463_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~617_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~618_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~617_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[791]~618_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~463_combout\);

-- Location: LCCOMB_X19_Y8_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~464\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~464_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[8]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[8]~0_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~464_combout\);

-- Location: LCCOMB_X17_Y8_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[732]~467\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[732]~467_combout\ = (\top_inst|clock_gen_inst|clk_counter\(9) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(9),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[732]~467_combout\);

-- Location: LCCOMB_X17_Y8_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[732]~466\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[732]~466_combout\ = (\top_inst|clock_gen_inst|clk_counter\(9) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(9),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[732]~466_combout\);

-- Location: LCCOMB_X17_Y8_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[5]~44_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[732]~467_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[732]~466_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[732]~467_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[732]~466_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[5]~44_combout\);

-- Location: LCCOMB_X19_Y8_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[761]~468\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[761]~468_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[5]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[5]~44_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[761]~468_combout\);

-- Location: LCCOMB_X18_Y8_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[761]~465\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[761]~465_combout\ = (\top_inst|clock_gen_inst|clk_counter\(9) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(9),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[761]~465_combout\);

-- Location: LCCOMB_X19_Y8_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[6]~42_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[761]~468_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[761]~465_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[761]~468_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[761]~465_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[6]~42_combout\);

-- Location: LCCOMB_X18_Y8_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[790]~619\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[790]~619_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & (\top_inst|clock_gen_inst|clk_counter\(9))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[5]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|clk_counter\(9),
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[5]~44_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[790]~619_combout\);

-- Location: LCCOMB_X18_Y8_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~569\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~569_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[790]~619_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[6]~42_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[6]~42_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[790]~619_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~569_combout\);

-- Location: LCCOMB_X18_Y8_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~568\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~568_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[790]~619_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[6]~42_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[6]~42_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[790]~619_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~568_combout\);

-- Location: LCCOMB_X19_Y10_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[8]~0_combout\ = (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~569_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~568_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[8]~1\ = CARRY((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~569_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~568_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~569_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~568_combout\,
	datad => VCC,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[8]~0_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[8]~1\);

-- Location: LCCOMB_X19_Y10_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[9]~2_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[8]~1\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~463_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~464_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[8]~1\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~463_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~464_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[9]~3\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~463_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~464_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[8]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~463_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~464_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[8]~1\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[9]~2_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[9]~3\);

-- Location: LCCOMB_X19_Y10_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[10]~4_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[9]~3\ & 
-- ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~626_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~462_combout\))))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[9]~3\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~626_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~462_combout\) # (GND))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[10]~5\ = CARRY((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~626_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~462_combout\) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[9]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~626_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~462_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[9]~3\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[10]~4_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[10]~5\);

-- Location: LCCOMB_X19_Y10_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[11]~6_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[10]~5\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~461_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~567_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[10]~5\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~461_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~567_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[11]~7\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~461_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~567_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[10]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~461_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~567_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[10]~5\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[11]~6_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[11]~7\);

-- Location: LCCOMB_X19_Y10_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[12]~8_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[11]~7\ & 
-- ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~566_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~460_combout\))))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[11]~7\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~566_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~460_combout\) # (GND))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[12]~9\ = CARRY((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~566_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~460_combout\) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[11]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~566_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~460_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[11]~7\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[12]~8_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[12]~9\);

-- Location: LCCOMB_X19_Y10_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[13]~10_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~565_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[12]~9\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~565_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~459_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[12]~9\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~459_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[12]~9\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[13]~11\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~565_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~459_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[12]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~565_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~459_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[12]~9\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[13]~10_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[13]~11\);

-- Location: LCCOMB_X19_Y10_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[14]~12_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[13]~11\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~458_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~564_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[13]~11\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~458_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~564_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[14]~13\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[13]~11\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~458_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~564_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~458_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~564_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[13]~11\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[14]~12_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[14]~13\);

-- Location: LCCOMB_X19_Y10_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[15]~14_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~563_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[14]~13\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~563_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~457_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[14]~13\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~457_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[14]~13\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[15]~15\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~563_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~457_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[14]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~563_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~457_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[14]~13\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[15]~14_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[15]~15\);

-- Location: LCCOMB_X19_Y10_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[16]~16_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[15]~15\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~562_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~456_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[15]~15\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~562_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~456_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[16]~17\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[15]~15\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~562_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~456_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~562_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~456_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[15]~15\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[16]~16_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[16]~17\);

-- Location: LCCOMB_X19_Y10_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[17]~18_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[16]~17\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~561_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~455_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[16]~17\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~561_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~455_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[17]~19\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~561_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~455_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[16]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~561_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~455_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[16]~17\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[17]~18_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[17]~19\);

-- Location: LCCOMB_X19_Y9_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[18]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[18]~20_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[17]~19\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~560_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~454_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[17]~19\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~560_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~454_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[18]~21\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[17]~19\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~560_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~454_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~560_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~454_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[17]~19\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[18]~20_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[18]~21\);

-- Location: LCCOMB_X19_Y9_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[19]~22_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[18]~21\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~559_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~453_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[18]~21\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~559_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~453_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[19]~23\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~559_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~453_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[18]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~559_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~453_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[18]~21\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[19]~22_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[19]~23\);

-- Location: LCCOMB_X19_Y9_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[20]~24_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[19]~23\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~558_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~452_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[19]~23\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~558_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~452_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[20]~25\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[19]~23\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~558_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~452_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~558_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~452_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[19]~23\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[20]~24_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[20]~25\);

-- Location: LCCOMB_X19_Y9_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[21]~26_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~557_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[20]~25\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~557_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~451_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[20]~25\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~451_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[20]~25\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[21]~27\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~557_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~451_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[20]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~557_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~451_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[20]~25\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[21]~26_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[21]~27\);

-- Location: LCCOMB_X19_Y9_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[22]~28_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[21]~27\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~450_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~556_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[21]~27\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~450_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~556_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[22]~29\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[21]~27\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~450_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~556_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~450_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~556_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[21]~27\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[22]~28_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[22]~29\);

-- Location: LCCOMB_X19_Y9_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[23]~30_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~555_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[22]~29\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~555_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~449_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[22]~29\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~449_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[22]~29\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[23]~31\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~555_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~449_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[22]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~555_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~449_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[22]~29\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[23]~30_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[23]~31\);

-- Location: LCCOMB_X19_Y9_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[24]~32_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[23]~31\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~554_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~448_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[23]~31\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~554_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~448_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[24]~33\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[23]~31\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~554_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~448_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~554_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~448_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[23]~31\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[24]~32_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[24]~33\);

-- Location: LCCOMB_X19_Y9_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[25]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[25]~34_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[24]~33\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~447_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~553_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[24]~33\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~447_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~553_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[25]~35\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~447_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~553_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[24]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~447_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~553_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[24]~33\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[25]~34_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[25]~35\);

-- Location: LCCOMB_X19_Y9_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[26]~36_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[25]~35\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~446_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~552_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[25]~35\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~446_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~552_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[26]~37\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[25]~35\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~446_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~552_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~446_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~552_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[25]~35\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[26]~36_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[26]~37\);

-- Location: LCCOMB_X19_Y9_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[27]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[27]~39_cout\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[838]~551_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[838]~445_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[26]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[838]~551_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[838]~445_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[26]~37\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[27]~39_cout\);

-- Location: LCCOMB_X19_Y9_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ = \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[27]~39_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[27]~39_cout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\);

-- Location: LCCOMB_X18_Y11_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~578\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~578_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~560_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[17]~18_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[17]~18_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[829]~560_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~578_combout\);

-- Location: LCCOMB_X22_Y11_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~579\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~579_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~561_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[16]~16_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[828]~561_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[16]~16_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~579_combout\);

-- Location: LCCOMB_X23_Y9_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[866]~469\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[866]~469_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[26]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[26]~36_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[866]~469_combout\);

-- Location: LCCOMB_X21_Y10_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[866]~573\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[866]~573_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~552_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[25]~34_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[25]~34_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[837]~552_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[866]~573_combout\);

-- Location: LCCOMB_X19_Y9_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~470\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~470_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[25]~34_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[25]~34_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~470_combout\);

-- Location: LCCOMB_X17_Y9_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~570\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~570_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~553_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[24]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[836]~553_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[24]~32_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~570_combout\);

-- Location: LCCOMB_X21_Y9_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~571\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~571_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~554_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[23]~30_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[23]~30_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[835]~554_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~571_combout\);

-- Location: LCCOMB_X19_Y9_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~471\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~471_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[24]~32_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[24]~32_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~471_combout\);

-- Location: LCCOMB_X21_Y10_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~472\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~472_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[23]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[23]~30_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~472_combout\);

-- Location: LCCOMB_X19_Y11_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~572\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~572_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~555_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[22]~28_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[22]~28_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[834]~555_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~572_combout\);

-- Location: LCCOMB_X22_Y9_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~473\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~473_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[22]~28_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[22]~28_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~473_combout\);

-- Location: LCCOMB_X21_Y9_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~574\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~574_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~556_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[21]~26_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[21]~26_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[833]~556_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~574_combout\);

-- Location: LCCOMB_X21_Y8_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~474\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~474_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[21]~26_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[21]~26_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~474_combout\);

-- Location: LCCOMB_X16_Y9_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~575\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~575_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~557_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[20]~24_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[20]~24_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[832]~557_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~575_combout\);

-- Location: LCCOMB_X23_Y9_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~475\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~475_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[20]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[20]~24_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~475_combout\);

-- Location: LCCOMB_X16_Y9_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~576\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~576_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~558_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[19]~22_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[19]~22_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[831]~558_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~576_combout\);

-- Location: LCCOMB_X18_Y11_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~577\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~577_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~559_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[18]~20_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[18]~20_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[830]~559_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~577_combout\);

-- Location: LCCOMB_X23_Y9_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~476\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~476_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[19]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[19]~22_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~476_combout\);

-- Location: LCCOMB_X19_Y9_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~477\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~477_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[18]~20_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[18]~20_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~477_combout\);

-- Location: LCCOMB_X23_Y10_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~478\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~478_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[17]~18_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[17]~18_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~478_combout\);

-- Location: LCCOMB_X14_Y10_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~580\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~580_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~562_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[15]~14_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[15]~14_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[827]~562_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~580_combout\);

-- Location: LCCOMB_X19_Y10_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~479\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~479_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[16]~16_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[16]~16_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~479_combout\);

-- Location: LCCOMB_X19_Y10_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~480\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~480_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[15]~14_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[15]~14_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~480_combout\);

-- Location: LCCOMB_X14_Y10_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~581\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~581_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~563_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[14]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[826]~563_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[14]~12_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~581_combout\);

-- Location: LCCOMB_X21_Y10_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~481\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~481_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[14]~12_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[14]~12_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~481_combout\);

-- Location: LCCOMB_X14_Y10_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~582\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~582_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~564_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[13]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[825]~564_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[13]~10_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~582_combout\);

-- Location: LCCOMB_X21_Y10_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~482\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~482_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[13]~10_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[13]~10_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~482_combout\);

-- Location: LCCOMB_X14_Y9_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~583\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~583_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~565_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[12]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[824]~565_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[12]~8_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~583_combout\);

-- Location: LCCOMB_X19_Y11_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~584\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~584_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~566_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[11]~6_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[11]~6_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[823]~566_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~584_combout\);

-- Location: LCCOMB_X22_Y10_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~483\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~483_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[12]~8_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[12]~8_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~483_combout\);

-- Location: LCCOMB_X17_Y9_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~585\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~585_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~567_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[10]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[822]~567_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[10]~4_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~585_combout\);

-- Location: LCCOMB_X21_Y10_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~484\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~484_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[11]~6_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[11]~6_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~484_combout\);

-- Location: LCCOMB_X19_Y11_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~586\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~586_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~626_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[821]~626_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[9]~2_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~586_combout\);

-- Location: LCCOMB_X21_Y10_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~485\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~485_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[10]~4_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[10]~4_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~485_combout\);

-- Location: LCCOMB_X21_Y10_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~486\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~486_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[9]~2_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[9]~2_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~486_combout\);

-- Location: LCCOMB_X18_Y8_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~587\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~587_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~463_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[8]~0_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[820]~463_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~587_combout\);

-- Location: LCCOMB_X21_Y10_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~488\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~488_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[8]~0_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[8]~0_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~488_combout\);

-- Location: LCCOMB_X18_Y8_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~487\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~487_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~568_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~569_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~568_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[819]~569_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~487_combout\);

-- Location: LCCOMB_X17_Y8_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[731]~491\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[731]~491_combout\ = (\top_inst|clock_gen_inst|clk_counter\(8) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(8),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[731]~491_combout\);

-- Location: LCCOMB_X17_Y8_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[731]~490\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[731]~490_combout\ = (\top_inst|clock_gen_inst|clk_counter\(8) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(8),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[731]~490_combout\);

-- Location: LCCOMB_X17_Y8_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[4]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[4]~46_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[731]~491_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[731]~490_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[731]~491_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[731]~490_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[4]~46_combout\);

-- Location: LCCOMB_X17_Y8_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[789]~620\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[789]~620_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & ((\top_inst|clock_gen_inst|clk_counter\(8)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[4]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[4]~46_combout\,
	datac => \top_inst|clock_gen_inst|clk_counter\(8),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[789]~620_combout\);

-- Location: LCCOMB_X17_Y8_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[760]~492\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[760]~492_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[4]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[4]~46_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[760]~492_combout\);

-- Location: LCCOMB_X17_Y8_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[760]~489\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[760]~489_combout\ = (\top_inst|clock_gen_inst|clk_counter\(8) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(8),
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[760]~489_combout\);

-- Location: LCCOMB_X17_Y8_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[5]~44_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[760]~492_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[760]~489_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[760]~492_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[760]~489_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[5]~44_combout\);

-- Location: LCCOMB_X17_Y8_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[789]~493\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[789]~493_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[5]~44_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[5]~44_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[789]~493_combout\);

-- Location: LCCOMB_X17_Y8_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[6]~42_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[789]~620_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[789]~493_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[789]~620_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[789]~493_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[6]~42_combout\);

-- Location: LCCOMB_X18_Y8_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[818]~588\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[818]~588_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[789]~620_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[5]~44_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[5]~44_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[789]~620_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[818]~588_combout\);

-- Location: LCCOMB_X18_Y8_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[847]~589\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[847]~589_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[818]~588_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[6]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[6]~42_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[818]~588_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[847]~589_combout\);

-- Location: LCCOMB_X18_Y8_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[818]~494\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[818]~494_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[6]~42_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[6]~42_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[818]~494_combout\);

-- Location: LCCOMB_X18_Y8_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[7]~42_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[818]~588_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[818]~494_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[818]~588_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[818]~494_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[7]~42_combout\);

-- Location: LCCOMB_X18_Y8_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[847]~495\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[847]~495_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[7]~42_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[7]~42_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[847]~495_combout\);

-- Location: LCCOMB_X22_Y10_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[8]~0_combout\ = (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[847]~589_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[847]~495_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[8]~1\ = CARRY((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[847]~589_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[847]~495_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[847]~589_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[847]~495_combout\,
	datad => VCC,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[8]~0_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[8]~1\);

-- Location: LCCOMB_X22_Y10_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[9]~2_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[8]~1\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~488_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~487_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[8]~1\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~488_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~487_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[9]~3\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~488_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~487_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[8]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~488_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~487_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[8]~1\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[9]~2_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[9]~3\);

-- Location: LCCOMB_X22_Y10_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[10]~4_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[9]~3\ & 
-- ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~486_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~587_combout\))))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[9]~3\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~486_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~587_combout\) # (GND))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[10]~5\ = CARRY((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~486_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~587_combout\) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[9]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~486_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~587_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[9]~3\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[10]~4_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[10]~5\);

-- Location: LCCOMB_X22_Y10_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[11]~6_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[10]~5\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~586_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~485_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[10]~5\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~586_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~485_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[11]~7\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~586_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~485_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[10]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~586_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~485_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[10]~5\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[11]~6_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[11]~7\);

-- Location: LCCOMB_X22_Y10_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[12]~8_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[11]~7\ & 
-- ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~585_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~484_combout\))))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[11]~7\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~585_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~484_combout\) # (GND))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[12]~9\ = CARRY((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~585_combout\) # 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~484_combout\) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[11]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~585_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~484_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[11]~7\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[12]~8_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[12]~9\);

-- Location: LCCOMB_X22_Y10_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[13]~10_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~584_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[12]~9\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~584_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~483_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[12]~9\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~483_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[12]~9\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[13]~11\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~584_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~483_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[12]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~584_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~483_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[12]~9\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[13]~10_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[13]~11\);

-- Location: LCCOMB_X22_Y10_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[14]~12_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[13]~11\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~482_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~583_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[13]~11\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~482_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~583_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[14]~13\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[13]~11\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~482_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~583_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~482_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~583_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[13]~11\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[14]~12_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[14]~13\);

-- Location: LCCOMB_X22_Y10_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[15]~14_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~481_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[14]~13\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~481_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~582_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[14]~13\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~582_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[14]~13\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[15]~15\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~481_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~582_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[14]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~481_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~582_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[14]~13\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[15]~14_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[15]~15\);

-- Location: LCCOMB_X22_Y10_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[16]~16_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[15]~15\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~480_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~581_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[15]~15\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~480_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~581_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[16]~17\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[15]~15\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~480_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~581_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~480_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~581_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[15]~15\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[16]~16_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[16]~17\);

-- Location: LCCOMB_X22_Y10_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[17]~18_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[16]~17\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~580_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~479_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[16]~17\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~580_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~479_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[17]~19\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~580_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~479_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[16]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~580_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~479_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[16]~17\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[17]~18_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[17]~19\);

-- Location: LCCOMB_X22_Y9_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[18]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[18]~20_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[17]~19\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~478_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~579_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[17]~19\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~478_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~579_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[18]~21\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[17]~19\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~478_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~579_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~478_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~579_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[17]~19\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[18]~20_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[18]~21\);

-- Location: LCCOMB_X22_Y9_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[19]~22_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[18]~21\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~578_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~477_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[18]~21\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~578_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~477_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[19]~23\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~578_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~477_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[18]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~578_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~477_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[18]~21\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[19]~22_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[19]~23\);

-- Location: LCCOMB_X22_Y9_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[20]~24_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[19]~23\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~577_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~476_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[19]~23\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~577_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~476_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[20]~25\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[19]~23\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~577_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~476_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~577_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~476_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[19]~23\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[20]~24_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[20]~25\);

-- Location: LCCOMB_X22_Y9_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[21]~26_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~475_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[20]~25\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~475_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~576_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[20]~25\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~576_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[20]~25\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[21]~27\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~475_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~576_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[20]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~475_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~576_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[20]~25\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[21]~26_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[21]~27\);

-- Location: LCCOMB_X22_Y9_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[22]~28_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[21]~27\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~474_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~575_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[21]~27\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~474_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~575_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[22]~29\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[21]~27\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~474_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~575_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~474_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~575_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[21]~27\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[22]~28_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[22]~29\);

-- Location: LCCOMB_X22_Y9_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[23]~30_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~473_combout\ & 
-- (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[22]~29\)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~473_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~574_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[22]~29\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~574_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[22]~29\) # (GND)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[23]~31\ = CARRY(((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~473_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~574_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[22]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~473_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~574_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[22]~29\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[23]~30_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[23]~31\);

-- Location: LCCOMB_X22_Y9_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[24]~32_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[23]~31\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~472_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~572_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[23]~31\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~472_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~572_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[24]~33\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[23]~31\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~472_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~572_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~472_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~572_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[23]~31\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[24]~32_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[24]~33\);

-- Location: LCCOMB_X22_Y9_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[25]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[25]~34_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[24]~33\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~571_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~471_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[24]~33\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~571_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~471_combout\)))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[25]~35\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~571_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~471_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[24]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~571_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~471_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[24]~33\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[25]~34_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[25]~35\);

-- Location: LCCOMB_X22_Y9_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[26]~36_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[25]~35\ & 
-- (((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~470_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~570_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[25]~35\ & ((((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~470_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~570_combout\)))))
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[26]~37\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[25]~35\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~470_combout\) # (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~570_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~470_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~570_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[25]~35\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[26]~36_combout\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[26]~37\);

-- Location: LCCOMB_X22_Y9_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[27]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[27]~39_cout\ = CARRY((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[866]~469_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[866]~573_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[26]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[866]~469_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[866]~573_combout\,
	datad => VCC,
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[26]~37\,
	cout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[27]~39_cout\);

-- Location: LCCOMB_X22_Y9_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\ = \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[27]~39_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[27]~39_cout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\);

-- Location: LCCOMB_X21_Y9_N12
\top_inst|clock_gen_inst|Equal1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~74_combout\ = ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~578_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~579_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~577_combout\))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~578_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[857]~579_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~577_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~74_combout\);

-- Location: LCCOMB_X21_Y9_N20
\top_inst|clock_gen_inst|Equal1~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~73_combout\ = ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~575_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~574_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~576_combout\))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[861]~575_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[862]~574_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[860]~576_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~73_combout\);

-- Location: LCCOMB_X21_Y9_N14
\top_inst|clock_gen_inst|Equal1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~75_combout\ = ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~581_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~582_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~580_combout\))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~581_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~582_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[856]~580_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~75_combout\);

-- Location: LCCOMB_X21_Y9_N28
\top_inst|clock_gen_inst|Equal1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~72_combout\ = ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~570_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~572_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~571_combout\))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[865]~570_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~572_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[864]~571_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~72_combout\);

-- Location: LCCOMB_X21_Y9_N22
\top_inst|clock_gen_inst|Equal1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~76_combout\ = (\top_inst|clock_gen_inst|Equal1~74_combout\ & (\top_inst|clock_gen_inst|Equal1~73_combout\ & (\top_inst|clock_gen_inst|Equal1~75_combout\ & \top_inst|clock_gen_inst|Equal1~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Equal1~74_combout\,
	datab => \top_inst|clock_gen_inst|Equal1~73_combout\,
	datac => \top_inst|clock_gen_inst|Equal1~75_combout\,
	datad => \top_inst|clock_gen_inst|Equal1~72_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~76_combout\);

-- Location: LCCOMB_X21_Y9_N0
\top_inst|clock_gen_inst|Equal1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~77_combout\ = ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~586_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~585_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~584_combout\))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~586_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~585_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[852]~584_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~77_combout\);

-- Location: LCCOMB_X21_Y9_N4
\top_inst|clock_gen_inst|Equal1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~78_combout\ = (\top_inst|clock_gen_inst|Equal1~77_combout\ & ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~583_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~583_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Equal1~77_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~78_combout\);

-- Location: LCCOMB_X21_Y10_N10
\top_inst|clock_gen_inst|Equal1~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~105_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[20]~24_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[16]~16_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[17]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[20]~24_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[16]~16_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[17]~18_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~105_combout\);

-- Location: LCCOMB_X21_Y10_N18
\top_inst|clock_gen_inst|Equal1~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~97_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~477_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~476_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~481_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~480_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[858]~477_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[859]~476_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[854]~481_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[855]~480_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~97_combout\);

-- Location: LCCOMB_X21_Y10_N28
\top_inst|clock_gen_inst|Equal1~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~104_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[22]~28_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[24]~32_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[25]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[22]~28_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[24]~32_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[25]~34_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~104_combout\);

-- Location: LCCOMB_X21_Y10_N4
\top_inst|clock_gen_inst|Equal1~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~98_combout\ = (\top_inst|clock_gen_inst|Equal1~105_combout\ & (\top_inst|clock_gen_inst|Equal1~97_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~472_combout\ & 
-- \top_inst|clock_gen_inst|Equal1~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Equal1~105_combout\,
	datab => \top_inst|clock_gen_inst|Equal1~97_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[863]~472_combout\,
	datad => \top_inst|clock_gen_inst|Equal1~104_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~98_combout\);

-- Location: LCCOMB_X21_Y11_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[784]~503\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[784]~503_combout\ = (\top_inst|clock_gen_inst|clk_counter\(3) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(3),
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[784]~503_combout\);

-- Location: LCCOMB_X21_Y11_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[784]~504\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[784]~504_combout\ = (\top_inst|clock_gen_inst|clk_counter\(3) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(3),
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[784]~504_combout\);

-- Location: LCCOMB_X21_Y11_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[1]~46_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[784]~503_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[784]~504_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[784]~503_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[784]~504_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[1]~46_combout\);

-- Location: LCCOMB_X21_Y11_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[842]~625\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[842]~625_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & ((\top_inst|clock_gen_inst|clk_counter\(3)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[1]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[1]~46_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|clk_counter\(3),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[842]~625_combout\);

-- Location: LCCOMB_X23_Y11_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[756]~498\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[756]~498_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & \top_inst|clock_gen_inst|clk_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(4),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[756]~498_combout\);

-- Location: LCCOMB_X23_Y11_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[756]~497\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[756]~497_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & \top_inst|clock_gen_inst|clk_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(4),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[756]~497_combout\);

-- Location: LCCOMB_X23_Y11_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[1]~46_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[756]~498_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[756]~497_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[756]~498_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[756]~497_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[1]~46_combout\);

-- Location: LCCOMB_X23_Y11_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[785]~499\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[785]~499_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[1]~46_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[1]~46_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[785]~499_combout\);

-- Location: LCCOMB_X23_Y11_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[785]~496\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[785]~496_combout\ = (\top_inst|clock_gen_inst|clk_counter\(4) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(4),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[785]~496_combout\);

-- Location: LCCOMB_X23_Y11_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[2]~44_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[785]~499_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[785]~496_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[785]~499_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[785]~496_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[2]~44_combout\);

-- Location: LCCOMB_X21_Y11_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[814]~621\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[814]~621_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & (\top_inst|clock_gen_inst|clk_counter\(4))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[1]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(4),
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[1]~46_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[814]~621_combout\);

-- Location: LCCOMB_X21_Y11_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[843]~596\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[843]~596_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[814]~621_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[2]~44_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[2]~44_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[814]~621_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[843]~596_combout\);

-- Location: LCCOMB_X21_Y11_N30
\top_inst|clock_gen_inst|Equal1~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~102_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[842]~625_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[843]~596_combout\) # 
-- ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[21]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[842]~625_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[843]~596_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[21]~26_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~102_combout\);

-- Location: LCCOMB_X21_Y8_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[730]~527\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[730]~527_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & \top_inst|clock_gen_inst|clk_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(7),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[730]~527_combout\);

-- Location: LCCOMB_X21_Y8_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[730]~526\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[730]~526_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & \top_inst|clock_gen_inst|clk_counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(7),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[730]~526_combout\);

-- Location: LCCOMB_X21_Y8_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[3]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[3]~52_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[730]~527_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[730]~526_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[730]~527_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[730]~526_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[3]~52_combout\);

-- Location: LCCOMB_X21_Y8_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[788]~624\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[788]~624_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & (\top_inst|clock_gen_inst|clk_counter\(7))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[3]~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(7),
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[3]~52_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[788]~624_combout\);

-- Location: LCCOMB_X21_Y8_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[759]~528\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[759]~528_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[3]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[3]~52_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[759]~528_combout\);

-- Location: LCCOMB_X21_Y8_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[759]~525\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[759]~525_combout\ = (\top_inst|clock_gen_inst|clk_counter\(7) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|clk_counter\(7),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[759]~525_combout\);

-- Location: LCCOMB_X21_Y8_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[4]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[4]~52_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[759]~528_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[759]~525_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[759]~528_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[759]~525_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[4]~52_combout\);

-- Location: LCCOMB_X21_Y8_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[817]~592\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[817]~592_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[788]~624_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[4]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[788]~624_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[4]~52_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[817]~592_combout\);

-- Location: LCCOMB_X21_Y8_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[788]~529\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[788]~529_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[4]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[4]~52_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[788]~529_combout\);

-- Location: LCCOMB_X21_Y8_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[5]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[5]~52_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[788]~624_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[788]~529_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[788]~624_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[788]~529_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[5]~52_combout\);

-- Location: LCCOMB_X21_Y8_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[817]~530\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[817]~530_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[5]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[5]~52_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[817]~530_combout\);

-- Location: LCCOMB_X21_Y8_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[6]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[6]~54_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[817]~592_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[817]~530_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[817]~592_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[817]~530_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[6]~54_combout\);

-- Location: LCCOMB_X21_Y10_N2
\top_inst|clock_gen_inst|Equal1~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~101_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[12]~8_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[7]~42_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[6]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[12]~8_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[7]~42_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[6]~54_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~101_combout\);

-- Location: LCCOMB_X21_Y10_N22
\top_inst|clock_gen_inst|Equal1~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~95_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~482_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~488_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~486_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~485_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[853]~482_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~488_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~486_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[850]~485_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~95_combout\);

-- Location: LCCOMB_X21_Y10_N24
\top_inst|clock_gen_inst|Equal1~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~96_combout\ = ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~484_combout\ & (\top_inst|clock_gen_inst|Equal1~101_combout\ & \top_inst|clock_gen_inst|Equal1~95_combout\))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[851]~484_combout\,
	datab => \top_inst|clock_gen_inst|Equal1~101_combout\,
	datac => \top_inst|clock_gen_inst|Equal1~95_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~96_combout\);

-- Location: LCCOMB_X21_Y10_N30
\top_inst|clock_gen_inst|Equal1~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~99_combout\ = (\top_inst|clock_gen_inst|Equal1~96_combout\ & (((\top_inst|clock_gen_inst|Equal1~98_combout\ & !\top_inst|clock_gen_inst|Equal1~102_combout\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Equal1~98_combout\,
	datac => \top_inst|clock_gen_inst|Equal1~102_combout\,
	datad => \top_inst|clock_gen_inst|Equal1~96_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~99_combout\);

-- Location: LCCOMB_X14_Y8_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[729]~512\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[729]~512_combout\ = (\top_inst|clock_gen_inst|clk_counter\(6) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(6),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[729]~512_combout\);

-- Location: LCCOMB_X14_Y8_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[729]~513\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[729]~513_combout\ = (\top_inst|clock_gen_inst|clk_counter\(6) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(6),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[729]~513_combout\);

-- Location: LCCOMB_X14_Y8_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[2]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[2]~48_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[729]~512_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[729]~513_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[729]~512_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[729]~513_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[2]~48_combout\);

-- Location: LCCOMB_X14_Y8_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[787]~622\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[787]~622_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & ((\top_inst|clock_gen_inst|clk_counter\(6)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[2]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[2]~48_combout\,
	datac => \top_inst|clock_gen_inst|clk_counter\(6),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[787]~622_combout\);

-- Location: LCCOMB_X14_Y8_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[758]~511\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[758]~511_combout\ = (\top_inst|clock_gen_inst|clk_counter\(6) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(6),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[758]~511_combout\);

-- Location: LCCOMB_X14_Y8_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[758]~514\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[758]~514_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[2]~48_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[2]~48_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[758]~514_combout\);

-- Location: LCCOMB_X14_Y8_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[3]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[3]~48_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[758]~511_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[758]~514_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[758]~511_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[758]~514_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[3]~48_combout\);

-- Location: LCCOMB_X14_Y9_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[816]~590\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[816]~590_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[787]~622_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[3]~48_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[787]~622_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[3]~48_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[816]~590_combout\);

-- Location: LCCOMB_X14_Y9_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[787]~515\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[787]~515_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[3]~48_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[3]~48_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[787]~515_combout\);

-- Location: LCCOMB_X14_Y9_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[4]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[4]~48_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[787]~515_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[787]~622_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[787]~515_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[787]~622_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[4]~48_combout\);

-- Location: LCCOMB_X23_Y9_N6
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[845]~594\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[845]~594_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[816]~590_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[4]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[816]~590_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[4]~48_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[845]~594_combout\);

-- Location: LCCOMB_X19_Y8_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[757]~518\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[757]~518_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & \top_inst|clock_gen_inst|clk_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(5),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[757]~518_combout\);

-- Location: LCCOMB_X17_Y9_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[728]~520\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[728]~520_combout\ = (\top_inst|clock_gen_inst|clk_counter\(5) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(5),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[728]~520_combout\);

-- Location: LCCOMB_X19_Y8_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[728]~519\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[728]~519_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\ & \top_inst|clock_gen_inst|clk_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_26_result_int[27]~38_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(5),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[728]~519_combout\);

-- Location: LCCOMB_X19_Y8_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[1]~50_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[728]~520_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[728]~519_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[728]~520_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[728]~519_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[1]~50_combout\);

-- Location: LCCOMB_X19_Y8_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[757]~521\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[757]~521_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[1]~50_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[1]~50_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[757]~521_combout\);

-- Location: LCCOMB_X19_Y8_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[2]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[2]~50_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[757]~518_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[757]~521_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[757]~518_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[757]~521_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[2]~50_combout\);

-- Location: LCCOMB_X19_Y8_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[786]~623\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[786]~623_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & ((\top_inst|clock_gen_inst|clk_counter\(5)))) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\ & 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[1]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_27_result_int[1]~50_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(5),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[786]~623_combout\);

-- Location: LCCOMB_X19_Y8_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[815]~591\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[815]~591_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[786]~623_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[2]~50_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[2]~50_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[786]~623_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[815]~591_combout\);

-- Location: LCCOMB_X19_Y8_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[786]~522\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[786]~522_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[2]~50_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[2]~50_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_28_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[786]~522_combout\);

-- Location: LCCOMB_X19_Y8_N10
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[3]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[3]~50_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[786]~522_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[786]~623_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[786]~522_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[786]~623_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[3]~50_combout\);

-- Location: LCCOMB_X23_Y9_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[844]~595\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[844]~595_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[815]~591_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[3]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[815]~591_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[3]~50_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[844]~595_combout\);

-- Location: LCCOMB_X23_Y9_N16
\top_inst|clock_gen_inst|Equal1~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~94_combout\ = ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[845]~594_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[844]~595_combout\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[845]~594_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[844]~595_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~94_combout\);

-- Location: LCCOMB_X21_Y8_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[846]~593\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[846]~593_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[817]~592_combout\) # ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[5]~52_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[817]~592_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[5]~52_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[846]~593_combout\);

-- Location: LCCOMB_X18_Y8_N16
\top_inst|clock_gen_inst|Equal1~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~92_combout\ = ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~587_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~487_combout\)) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[849]~587_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[848]~487_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~92_combout\);

-- Location: LCCOMB_X18_Y8_N6
\top_inst|clock_gen_inst|Equal1~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~93_combout\ = (\top_inst|clock_gen_inst|Equal1~92_combout\ & (((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[846]~593_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[847]~589_combout\)) # (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[846]~593_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[847]~589_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Equal1~92_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~93_combout\);

-- Location: LCCOMB_X22_Y9_N24
\top_inst|clock_gen_inst|Equal1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~83_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[17]~18_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[12]~8_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[20]~24_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[19]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[17]~18_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[12]~8_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[20]~24_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[19]~22_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~83_combout\);

-- Location: LCCOMB_X22_Y9_N22
\top_inst|clock_gen_inst|Equal1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~84_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[21]~26_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[18]~20_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[22]~28_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[23]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[21]~26_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[18]~20_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[22]~28_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[23]~30_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~84_combout\);

-- Location: LCCOMB_X22_Y10_N2
\top_inst|clock_gen_inst|Equal1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~82_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[15]~14_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[14]~12_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[13]~10_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[16]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[15]~14_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[14]~12_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[13]~10_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[16]~16_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~82_combout\);

-- Location: LCCOMB_X21_Y9_N26
\top_inst|clock_gen_inst|Equal1~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~85_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\) # ((\top_inst|clock_gen_inst|Equal1~83_combout\ & (\top_inst|clock_gen_inst|Equal1~84_combout\ & 
-- \top_inst|clock_gen_inst|Equal1~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\,
	datab => \top_inst|clock_gen_inst|Equal1~83_combout\,
	datac => \top_inst|clock_gen_inst|Equal1~84_combout\,
	datad => \top_inst|clock_gen_inst|Equal1~82_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~85_combout\);

-- Location: LCCOMB_X21_Y11_N22
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[813]~502\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[813]~502_combout\ = (\top_inst|clock_gen_inst|clk_counter\(3) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|clk_counter\(3),
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[813]~502_combout\);

-- Location: LCCOMB_X21_Y11_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[813]~505\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[813]~505_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[1]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[1]~46_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[813]~505_combout\);

-- Location: LCCOMB_X21_Y11_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[2]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[2]~46_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[813]~502_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[813]~505_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[813]~502_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[813]~505_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[2]~46_combout\);

-- Location: LCCOMB_X21_Y11_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[814]~500\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[814]~500_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[2]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[2]~44_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[814]~500_combout\);

-- Location: LCCOMB_X21_Y11_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[3]~44_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[814]~500_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[814]~621_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[814]~500_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[814]~621_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[3]~44_combout\);

-- Location: LCCOMB_X23_Y9_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[841]~507\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[841]~507_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & \top_inst|clock_gen_inst|clk_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(2),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[841]~507_combout\);

-- Location: LCCOMB_X19_Y8_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[815]~523\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[815]~523_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[3]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[3]~50_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[815]~523_combout\);

-- Location: LCCOMB_X19_Y8_N16
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[4]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[4]~52_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[815]~523_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[815]~591_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[815]~523_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[815]~591_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[4]~52_combout\);

-- Location: LCCOMB_X23_Y9_N0
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[844]~524\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[844]~524_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[4]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[4]~52_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[844]~524_combout\);

-- Location: LCCOMB_X14_Y9_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[816]~516\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[816]~516_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[4]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[4]~48_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[816]~516_combout\);

-- Location: LCCOMB_X14_Y9_N18
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[5]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[5]~50_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[816]~590_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[816]~516_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[816]~590_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[816]~516_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[5]~50_combout\);

-- Location: LCCOMB_X23_Y9_N14
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[845]~517\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[845]~517_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\ & 
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[5]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[5]~50_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[845]~517_combout\);

-- Location: LCCOMB_X23_Y9_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[812]~509\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[812]~509_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & \top_inst|clock_gen_inst|clk_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(2),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[812]~509_combout\);

-- Location: LCCOMB_X24_Y9_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[812]~508\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[812]~508_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\ & \top_inst|clock_gen_inst|clk_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_29_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|clk_counter\(2),
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[812]~508_combout\);

-- Location: LCCOMB_X23_Y9_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[1]~48_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[812]~509_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[812]~508_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[812]~509_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[812]~508_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[1]~48_combout\);

-- Location: LCCOMB_X23_Y9_N20
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[841]~510\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[841]~510_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[1]~48_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[1]~48_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[841]~510_combout\);

-- Location: LCCOMB_X23_Y9_N18
\top_inst|clock_gen_inst|Equal1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~79_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[841]~507_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[844]~524_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[845]~517_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[841]~510_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[841]~507_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[844]~524_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[845]~517_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[841]~510_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~79_combout\);

-- Location: LCCOMB_X23_Y9_N10
\top_inst|clock_gen_inst|Equal1~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~103_combout\ = (\top_inst|clock_gen_inst|Equal1~79_combout\ & ((\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\) # 
-- ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[2]~46_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[3]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[2]~46_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[3]~44_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	datad => \top_inst|clock_gen_inst|Equal1~79_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~103_combout\);

-- Location: LCCOMB_X22_Y9_N28
\top_inst|clock_gen_inst|Equal1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~80_combout\ = (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[25]~34_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[24]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[25]~34_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[24]~32_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~80_combout\);

-- Location: LCCOMB_X22_Y9_N30
\top_inst|clock_gen_inst|Equal1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~81_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\ & (((\top_inst|clock_gen_inst|Equal1~103_combout\)))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[26]~36_combout\ & ((\top_inst|clock_gen_inst|Equal1~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[26]~36_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\,
	datac => \top_inst|clock_gen_inst|Equal1~103_combout\,
	datad => \top_inst|clock_gen_inst|Equal1~80_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~81_combout\);

-- Location: LCCOMB_X21_Y8_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[846]~531\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[846]~531_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[6]~54_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[6]~54_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[846]~531_combout\);

-- Location: LCCOMB_X21_Y8_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[7]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[7]~42_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[846]~531_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[846]~593_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[846]~531_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[846]~593_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[7]~42_combout\);

-- Location: LCCOMB_X23_Y9_N30
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[6]~44_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[845]~517_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[845]~594_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[845]~517_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[845]~594_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[6]~44_combout\);

-- Location: LCCOMB_X22_Y10_N10
\top_inst|clock_gen_inst|Equal1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~87_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[8]~0_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[7]~42_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[6]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[8]~0_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[7]~42_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[6]~44_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~87_combout\);

-- Location: LCCOMB_X22_Y10_N8
\top_inst|clock_gen_inst|Equal1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~86_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[11]~6_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[10]~4_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[9]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[11]~6_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[10]~4_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[9]~2_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~86_combout\);

-- Location: LCCOMB_X21_Y11_N26
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[842]~506\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[842]~506_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[2]~46_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[2]~46_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[842]~506_combout\);

-- Location: LCCOMB_X21_Y11_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[3]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[3]~50_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[842]~506_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[842]~625_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[842]~506_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[842]~625_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[3]~50_combout\);

-- Location: LCCOMB_X23_Y10_N28
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[5]~46_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[844]~595_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[844]~524_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[844]~595_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[844]~524_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[5]~46_combout\);

-- Location: LCCOMB_X21_Y11_N12
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[843]~501\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[843]~501_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[3]~44_combout\ & 
-- !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[3]~44_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[843]~501_combout\);

-- Location: LCCOMB_X21_Y11_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[4]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[4]~48_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[843]~596_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[843]~501_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[843]~596_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[843]~501_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[4]~48_combout\);

-- Location: LCCOMB_X22_Y10_N4
\top_inst|clock_gen_inst|Equal1~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~88_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\) # ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[3]~50_combout\ & 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[5]~46_combout\ & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[4]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[3]~50_combout\,
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[5]~46_combout\,
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[4]~48_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~88_combout\);

-- Location: LCCOMB_X24_Y10_N8
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[840]~533\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[840]~533_combout\ = (\top_inst|clock_gen_inst|clk_counter\(1) & !\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(1),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[840]~533_combout\);

-- Location: LCCOMB_X24_Y10_N2
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[840]~532\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[840]~532_combout\ = (\top_inst|clock_gen_inst|clk_counter\(1) & \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|clk_counter\(1),
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_30_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[840]~532_combout\);

-- Location: LCCOMB_X24_Y10_N4
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[1]~54_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[840]~533_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[840]~532_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[840]~533_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[840]~532_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[1]~54_combout\);

-- Location: LCCOMB_X23_Y9_N24
\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[2]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[2]~52_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[841]~510_combout\) # 
-- (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[841]~507_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[841]~510_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|StageOut[841]~507_combout\,
	combout => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[2]~52_combout\);

-- Location: LCCOMB_X23_Y10_N18
\top_inst|clock_gen_inst|Equal1~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~89_combout\ = (\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\ & (((!\top_inst|clock_gen_inst|clk_counter\(1))))) # 
-- (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\ & (!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[1]~54_combout\ & 
-- ((!\top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[2]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[1]~54_combout\,
	datab => \top_inst|clock_gen_inst|clk_counter\(1),
	datac => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[2]~52_combout\,
	datad => \top_inst|clock_gen_inst|Mod1|auto_generated|divider|divider|add_sub_31_result_int[28]~40_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~89_combout\);

-- Location: LCCOMB_X22_Y10_N6
\top_inst|clock_gen_inst|Equal1~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~90_combout\ = (\top_inst|clock_gen_inst|Equal1~87_combout\ & (\top_inst|clock_gen_inst|Equal1~86_combout\ & (\top_inst|clock_gen_inst|Equal1~88_combout\ & \top_inst|clock_gen_inst|Equal1~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Equal1~87_combout\,
	datab => \top_inst|clock_gen_inst|Equal1~86_combout\,
	datac => \top_inst|clock_gen_inst|Equal1~88_combout\,
	datad => \top_inst|clock_gen_inst|Equal1~89_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~90_combout\);

-- Location: LCCOMB_X21_Y9_N10
\top_inst|clock_gen_inst|Equal1~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~91_combout\ = (\top_inst|clock_gen_inst|Equal1~85_combout\ & (!\top_inst|clock_gen_inst|clk_counter\(0) & (\top_inst|clock_gen_inst|Equal1~81_combout\ & \top_inst|clock_gen_inst|Equal1~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Equal1~85_combout\,
	datab => \top_inst|clock_gen_inst|clk_counter\(0),
	datac => \top_inst|clock_gen_inst|Equal1~81_combout\,
	datad => \top_inst|clock_gen_inst|Equal1~90_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~91_combout\);

-- Location: LCCOMB_X21_Y9_N18
\top_inst|clock_gen_inst|Equal1~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|Equal1~100_combout\ = (\top_inst|clock_gen_inst|Equal1~99_combout\ & (\top_inst|clock_gen_inst|Equal1~94_combout\ & (\top_inst|clock_gen_inst|Equal1~93_combout\ & \top_inst|clock_gen_inst|Equal1~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Equal1~99_combout\,
	datab => \top_inst|clock_gen_inst|Equal1~94_combout\,
	datac => \top_inst|clock_gen_inst|Equal1~93_combout\,
	datad => \top_inst|clock_gen_inst|Equal1~91_combout\,
	combout => \top_inst|clock_gen_inst|Equal1~100_combout\);

-- Location: LCCOMB_X21_Y9_N8
\top_inst|clock_gen_inst|clk_game~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|clock_gen_inst|clk_game~0_combout\ = \top_inst|clock_gen_inst|clk_game~q\ $ (((\top_inst|clock_gen_inst|Equal1~76_combout\ & (\top_inst|clock_gen_inst|Equal1~78_combout\ & \top_inst|clock_gen_inst|Equal1~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|clock_gen_inst|Equal1~76_combout\,
	datab => \top_inst|clock_gen_inst|clk_game~q\,
	datac => \top_inst|clock_gen_inst|Equal1~78_combout\,
	datad => \top_inst|clock_gen_inst|Equal1~100_combout\,
	combout => \top_inst|clock_gen_inst|clk_game~0_combout\);

-- Location: FF_X21_Y9_N31
\top_inst|clock_gen_inst|clk_game\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \top_inst|clock_gen_inst|clk_game~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|clock_gen_inst|clk_game~q\);

-- Location: CLKCTRL_G9
\top_inst|clock_gen_inst|clk_game~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \top_inst|clock_gen_inst|clk_game~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y23_N12
\top_inst|game_controller_inst|player_pos[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|player_pos[0]~8_combout\ = \top_inst|game_controller_inst|player_pos\(0) $ (VCC)
-- \top_inst|game_controller_inst|player_pos[0]~9\ = CARRY(\top_inst|game_controller_inst|player_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|player_pos\(0),
	datad => VCC,
	combout => \top_inst|game_controller_inst|player_pos[0]~8_combout\,
	cout => \top_inst|game_controller_inst|player_pos[0]~9\);

-- Location: IOIBUF_X16_Y24_N15
\game_buttons[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_game_buttons(0),
	o => \game_buttons[0]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\game_buttons[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_game_buttons(3),
	o => \game_buttons[3]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\game_buttons[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_game_buttons(2),
	o => \game_buttons[2]~input_o\);

-- Location: LCCOMB_X13_Y23_N14
\top_inst|game_controller_inst|player_pos[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|player_pos[1]~10_combout\ = (\game_buttons[2]~input_o\ & ((\top_inst|game_controller_inst|player_pos\(1) & (!\top_inst|game_controller_inst|player_pos[0]~9\)) # (!\top_inst|game_controller_inst|player_pos\(1) & 
-- ((\top_inst|game_controller_inst|player_pos[0]~9\) # (GND))))) # (!\game_buttons[2]~input_o\ & ((\top_inst|game_controller_inst|player_pos\(1) & (\top_inst|game_controller_inst|player_pos[0]~9\ & VCC)) # (!\top_inst|game_controller_inst|player_pos\(1) & 
-- (!\top_inst|game_controller_inst|player_pos[0]~9\))))
-- \top_inst|game_controller_inst|player_pos[1]~11\ = CARRY((\game_buttons[2]~input_o\ & ((!\top_inst|game_controller_inst|player_pos[0]~9\) # (!\top_inst|game_controller_inst|player_pos\(1)))) # (!\game_buttons[2]~input_o\ & 
-- (!\top_inst|game_controller_inst|player_pos\(1) & !\top_inst|game_controller_inst|player_pos[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_buttons[2]~input_o\,
	datab => \top_inst|game_controller_inst|player_pos\(1),
	datad => VCC,
	cin => \top_inst|game_controller_inst|player_pos[0]~9\,
	combout => \top_inst|game_controller_inst|player_pos[1]~10_combout\,
	cout => \top_inst|game_controller_inst|player_pos[1]~11\);

-- Location: IOIBUF_X16_Y24_N8
\game_buttons[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_game_buttons(1),
	o => \game_buttons[1]~input_o\);

-- Location: LCCOMB_X13_Y23_N16
\top_inst|game_controller_inst|player_pos[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|player_pos[2]~12_combout\ = ((\game_buttons[2]~input_o\ $ (\top_inst|game_controller_inst|player_pos\(2) $ (\top_inst|game_controller_inst|player_pos[1]~11\)))) # (GND)
-- \top_inst|game_controller_inst|player_pos[2]~13\ = CARRY((\game_buttons[2]~input_o\ & (\top_inst|game_controller_inst|player_pos\(2) & !\top_inst|game_controller_inst|player_pos[1]~11\)) # (!\game_buttons[2]~input_o\ & 
-- ((\top_inst|game_controller_inst|player_pos\(2)) # (!\top_inst|game_controller_inst|player_pos[1]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_buttons[2]~input_o\,
	datab => \top_inst|game_controller_inst|player_pos\(2),
	datad => VCC,
	cin => \top_inst|game_controller_inst|player_pos[1]~11\,
	combout => \top_inst|game_controller_inst|player_pos[2]~12_combout\,
	cout => \top_inst|game_controller_inst|player_pos[2]~13\);

-- Location: LCCOMB_X13_Y23_N18
\top_inst|game_controller_inst|player_pos[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|player_pos[3]~14_combout\ = (\game_buttons[2]~input_o\ & ((\top_inst|game_controller_inst|player_pos\(3) & (!\top_inst|game_controller_inst|player_pos[2]~13\)) # (!\top_inst|game_controller_inst|player_pos\(3) & 
-- ((\top_inst|game_controller_inst|player_pos[2]~13\) # (GND))))) # (!\game_buttons[2]~input_o\ & ((\top_inst|game_controller_inst|player_pos\(3) & (\top_inst|game_controller_inst|player_pos[2]~13\ & VCC)) # (!\top_inst|game_controller_inst|player_pos\(3) & 
-- (!\top_inst|game_controller_inst|player_pos[2]~13\))))
-- \top_inst|game_controller_inst|player_pos[3]~15\ = CARRY((\game_buttons[2]~input_o\ & ((!\top_inst|game_controller_inst|player_pos[2]~13\) # (!\top_inst|game_controller_inst|player_pos\(3)))) # (!\game_buttons[2]~input_o\ & 
-- (!\top_inst|game_controller_inst|player_pos\(3) & !\top_inst|game_controller_inst|player_pos[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_buttons[2]~input_o\,
	datab => \top_inst|game_controller_inst|player_pos\(3),
	datad => VCC,
	cin => \top_inst|game_controller_inst|player_pos[2]~13\,
	combout => \top_inst|game_controller_inst|player_pos[3]~14_combout\,
	cout => \top_inst|game_controller_inst|player_pos[3]~15\);

-- Location: FF_X13_Y23_N19
\top_inst|game_controller_inst|player_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|player_pos[3]~14_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \top_inst|game_controller_inst|game_state.GAME_OVER~q\,
	ena => \top_inst|game_controller_inst|player_pos[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|player_pos\(3));

-- Location: LCCOMB_X13_Y23_N20
\top_inst|game_controller_inst|player_pos[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|player_pos[4]~21_combout\ = ((\game_buttons[2]~input_o\ $ (\top_inst|game_controller_inst|player_pos\(4) $ (\top_inst|game_controller_inst|player_pos[3]~15\)))) # (GND)
-- \top_inst|game_controller_inst|player_pos[4]~22\ = CARRY((\game_buttons[2]~input_o\ & (\top_inst|game_controller_inst|player_pos\(4) & !\top_inst|game_controller_inst|player_pos[3]~15\)) # (!\game_buttons[2]~input_o\ & 
-- ((\top_inst|game_controller_inst|player_pos\(4)) # (!\top_inst|game_controller_inst|player_pos[3]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_buttons[2]~input_o\,
	datab => \top_inst|game_controller_inst|player_pos\(4),
	datad => VCC,
	cin => \top_inst|game_controller_inst|player_pos[3]~15\,
	combout => \top_inst|game_controller_inst|player_pos[4]~21_combout\,
	cout => \top_inst|game_controller_inst|player_pos[4]~22\);

-- Location: FF_X13_Y23_N21
\top_inst|game_controller_inst|player_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|player_pos[4]~21_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \top_inst|game_controller_inst|game_state.GAME_OVER~q\,
	ena => \top_inst|game_controller_inst|player_pos[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|player_pos\(4));

-- Location: LCCOMB_X13_Y23_N22
\top_inst|game_controller_inst|player_pos[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|player_pos[5]~23_combout\ = (\top_inst|game_controller_inst|player_pos\(5) & ((\game_buttons[2]~input_o\ & (!\top_inst|game_controller_inst|player_pos[4]~22\)) # (!\game_buttons[2]~input_o\ & 
-- (\top_inst|game_controller_inst|player_pos[4]~22\ & VCC)))) # (!\top_inst|game_controller_inst|player_pos\(5) & ((\game_buttons[2]~input_o\ & ((\top_inst|game_controller_inst|player_pos[4]~22\) # (GND))) # (!\game_buttons[2]~input_o\ & 
-- (!\top_inst|game_controller_inst|player_pos[4]~22\))))
-- \top_inst|game_controller_inst|player_pos[5]~24\ = CARRY((\top_inst|game_controller_inst|player_pos\(5) & (\game_buttons[2]~input_o\ & !\top_inst|game_controller_inst|player_pos[4]~22\)) # (!\top_inst|game_controller_inst|player_pos\(5) & 
-- ((\game_buttons[2]~input_o\) # (!\top_inst|game_controller_inst|player_pos[4]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|player_pos\(5),
	datab => \game_buttons[2]~input_o\,
	datad => VCC,
	cin => \top_inst|game_controller_inst|player_pos[4]~22\,
	combout => \top_inst|game_controller_inst|player_pos[5]~23_combout\,
	cout => \top_inst|game_controller_inst|player_pos[5]~24\);

-- Location: FF_X13_Y23_N23
\top_inst|game_controller_inst|player_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|player_pos[5]~23_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \top_inst|game_controller_inst|game_state.GAME_OVER~q\,
	ena => \top_inst|game_controller_inst|player_pos[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|player_pos\(5));

-- Location: LCCOMB_X13_Y23_N24
\top_inst|game_controller_inst|player_pos[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|player_pos[6]~25_combout\ = ((\game_buttons[2]~input_o\ $ (\top_inst|game_controller_inst|player_pos\(6) $ (\top_inst|game_controller_inst|player_pos[5]~24\)))) # (GND)
-- \top_inst|game_controller_inst|player_pos[6]~26\ = CARRY((\game_buttons[2]~input_o\ & (\top_inst|game_controller_inst|player_pos\(6) & !\top_inst|game_controller_inst|player_pos[5]~24\)) # (!\game_buttons[2]~input_o\ & 
-- ((\top_inst|game_controller_inst|player_pos\(6)) # (!\top_inst|game_controller_inst|player_pos[5]~24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_buttons[2]~input_o\,
	datab => \top_inst|game_controller_inst|player_pos\(6),
	datad => VCC,
	cin => \top_inst|game_controller_inst|player_pos[5]~24\,
	combout => \top_inst|game_controller_inst|player_pos[6]~25_combout\,
	cout => \top_inst|game_controller_inst|player_pos[6]~26\);

-- Location: FF_X13_Y23_N25
\top_inst|game_controller_inst|player_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|player_pos[6]~25_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \top_inst|game_controller_inst|game_state.GAME_OVER~q\,
	ena => \top_inst|game_controller_inst|player_pos[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|player_pos\(6));

-- Location: LCCOMB_X13_Y23_N8
\top_inst|game_controller_inst|ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|ShiftLeft0~0_combout\ = (!\top_inst|game_controller_inst|player_pos\(5) & (!\top_inst|game_controller_inst|player_pos\(6) & (!\top_inst|game_controller_inst|player_pos\(4) & !\top_inst|game_controller_inst|player_pos\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|player_pos\(5),
	datab => \top_inst|game_controller_inst|player_pos\(6),
	datac => \top_inst|game_controller_inst|player_pos\(4),
	datad => \top_inst|game_controller_inst|player_pos\(3),
	combout => \top_inst|game_controller_inst|ShiftLeft0~0_combout\);

-- Location: LCCOMB_X13_Y23_N26
\top_inst|game_controller_inst|player_pos[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|player_pos[7]~27_combout\ = \game_buttons[2]~input_o\ $ (\top_inst|game_controller_inst|player_pos[6]~26\ $ (!\top_inst|game_controller_inst|player_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \game_buttons[2]~input_o\,
	datad => \top_inst|game_controller_inst|player_pos\(7),
	cin => \top_inst|game_controller_inst|player_pos[6]~26\,
	combout => \top_inst|game_controller_inst|player_pos[7]~27_combout\);

-- Location: FF_X13_Y23_N27
\top_inst|game_controller_inst|player_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|player_pos[7]~27_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \top_inst|game_controller_inst|game_state.GAME_OVER~q\,
	ena => \top_inst|game_controller_inst|player_pos[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|player_pos\(7));

-- Location: LCCOMB_X13_Y23_N0
\top_inst|game_controller_inst|player_pos[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|player_pos[6]~16_combout\ = (\top_inst|game_controller_inst|player_pos\(7)) # ((\top_inst|game_controller_inst|player_pos\(2)) # ((\top_inst|game_controller_inst|player_pos\(1)) # 
-- (\top_inst|game_controller_inst|player_pos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|player_pos\(7),
	datab => \top_inst|game_controller_inst|player_pos\(2),
	datac => \top_inst|game_controller_inst|player_pos\(1),
	datad => \top_inst|game_controller_inst|player_pos\(0),
	combout => \top_inst|game_controller_inst|player_pos[6]~16_combout\);

-- Location: LCCOMB_X13_Y23_N30
\top_inst|game_controller_inst|player_pos[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|player_pos[6]~17_combout\ = (!\game_buttons[2]~input_o\ & (((\top_inst|game_controller_inst|ShiftLeft0~0_combout\ & !\top_inst|game_controller_inst|player_pos[6]~16_combout\)) # (!\game_buttons[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_buttons[1]~input_o\,
	datab => \game_buttons[2]~input_o\,
	datac => \top_inst|game_controller_inst|ShiftLeft0~0_combout\,
	datad => \top_inst|game_controller_inst|player_pos[6]~16_combout\,
	combout => \top_inst|game_controller_inst|player_pos[6]~17_combout\);

-- Location: LCCOMB_X13_Y23_N10
\top_inst|game_controller_inst|ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|ShiftLeft0~4_combout\ = (\top_inst|game_controller_inst|player_pos\(1) & \top_inst|game_controller_inst|player_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|game_controller_inst|player_pos\(1),
	datad => \top_inst|game_controller_inst|player_pos\(0),
	combout => \top_inst|game_controller_inst|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X13_Y23_N28
\top_inst|game_controller_inst|player_pos[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|player_pos[6]~18_combout\ = (\top_inst|game_controller_inst|player_pos\(7)) # (((\top_inst|game_controller_inst|player_pos\(2) & \top_inst|game_controller_inst|ShiftLeft0~4_combout\)) # 
-- (!\top_inst|game_controller_inst|ShiftLeft0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|player_pos\(7),
	datab => \top_inst|game_controller_inst|player_pos\(2),
	datac => \top_inst|game_controller_inst|ShiftLeft0~0_combout\,
	datad => \top_inst|game_controller_inst|ShiftLeft0~4_combout\,
	combout => \top_inst|game_controller_inst|player_pos[6]~18_combout\);

-- Location: LCCOMB_X13_Y23_N2
\top_inst|game_controller_inst|player_pos[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|player_pos[6]~19_combout\ = ((\game_buttons[2]~input_o\ & \top_inst|game_controller_inst|player_pos[6]~18_combout\)) # (!\top_inst|game_controller_inst|game_state.PLAYING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_buttons[2]~input_o\,
	datab => \top_inst|game_controller_inst|game_state.PLAYING~q\,
	datad => \top_inst|game_controller_inst|player_pos[6]~18_combout\,
	combout => \top_inst|game_controller_inst|player_pos[6]~19_combout\);

-- Location: LCCOMB_X13_Y23_N4
\top_inst|game_controller_inst|player_pos[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|player_pos[6]~20_combout\ = (\game_buttons[0]~input_o\ & ((\top_inst|game_controller_inst|game_state.GAME_OVER~q\) # ((!\top_inst|game_controller_inst|player_pos[6]~17_combout\ & 
-- !\top_inst|game_controller_inst|player_pos[6]~19_combout\)))) # (!\game_buttons[0]~input_o\ & (((!\top_inst|game_controller_inst|player_pos[6]~17_combout\ & !\top_inst|game_controller_inst|player_pos[6]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_buttons[0]~input_o\,
	datab => \top_inst|game_controller_inst|game_state.GAME_OVER~q\,
	datac => \top_inst|game_controller_inst|player_pos[6]~17_combout\,
	datad => \top_inst|game_controller_inst|player_pos[6]~19_combout\,
	combout => \top_inst|game_controller_inst|player_pos[6]~20_combout\);

-- Location: FF_X13_Y23_N15
\top_inst|game_controller_inst|player_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|player_pos[1]~10_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \top_inst|game_controller_inst|game_state.GAME_OVER~q\,
	ena => \top_inst|game_controller_inst|player_pos[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|player_pos\(1));

-- Location: FF_X13_Y23_N17
\top_inst|game_controller_inst|player_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|player_pos[2]~12_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \top_inst|game_controller_inst|game_state.GAME_OVER~q\,
	ena => \top_inst|game_controller_inst|player_pos[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|player_pos\(2));

-- Location: LCCOMB_X12_Y23_N12
\top_inst|game_controller_inst|obstacle_pos[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|obstacle_pos[0]~8_combout\ = \top_inst|game_controller_inst|obstacle_pos\(0) $ (VCC)
-- \top_inst|game_controller_inst|obstacle_pos[0]~9\ = CARRY(\top_inst|game_controller_inst|obstacle_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|obstacle_pos\(0),
	datad => VCC,
	combout => \top_inst|game_controller_inst|obstacle_pos[0]~8_combout\,
	cout => \top_inst|game_controller_inst|obstacle_pos[0]~9\);

-- Location: LCCOMB_X12_Y23_N18
\top_inst|game_controller_inst|obstacle_pos[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|obstacle_pos[3]~14_combout\ = (\top_inst|game_controller_inst|obstacle_pos\(3) & (\top_inst|game_controller_inst|obstacle_pos[2]~13\ & VCC)) # (!\top_inst|game_controller_inst|obstacle_pos\(3) & 
-- (!\top_inst|game_controller_inst|obstacle_pos[2]~13\))
-- \top_inst|game_controller_inst|obstacle_pos[3]~15\ = CARRY((!\top_inst|game_controller_inst|obstacle_pos\(3) & !\top_inst|game_controller_inst|obstacle_pos[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|game_controller_inst|obstacle_pos\(3),
	datad => VCC,
	cin => \top_inst|game_controller_inst|obstacle_pos[2]~13\,
	combout => \top_inst|game_controller_inst|obstacle_pos[3]~14_combout\,
	cout => \top_inst|game_controller_inst|obstacle_pos[3]~15\);

-- Location: LCCOMB_X12_Y23_N20
\top_inst|game_controller_inst|obstacle_pos[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|obstacle_pos[4]~18_combout\ = (\top_inst|game_controller_inst|obstacle_pos\(4) & ((GND) # (!\top_inst|game_controller_inst|obstacle_pos[3]~15\))) # (!\top_inst|game_controller_inst|obstacle_pos\(4) & 
-- (\top_inst|game_controller_inst|obstacle_pos[3]~15\ $ (GND)))
-- \top_inst|game_controller_inst|obstacle_pos[4]~19\ = CARRY((\top_inst|game_controller_inst|obstacle_pos\(4)) # (!\top_inst|game_controller_inst|obstacle_pos[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|game_controller_inst|obstacle_pos\(4),
	datad => VCC,
	cin => \top_inst|game_controller_inst|obstacle_pos[3]~15\,
	combout => \top_inst|game_controller_inst|obstacle_pos[4]~18_combout\,
	cout => \top_inst|game_controller_inst|obstacle_pos[4]~19\);

-- Location: LCCOMB_X12_Y23_N4
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X14_Y23_N6
\top_inst|game_controller_inst|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|Selector1~2_combout\ = (\top_inst|game_controller_inst|game_state.PLAYING~q\ & ((\game_buttons[3]~input_o\) # (\top_inst|game_controller_inst|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_buttons[3]~input_o\,
	datac => \top_inst|game_controller_inst|game_state.PLAYING~q\,
	datad => \top_inst|game_controller_inst|Equal1~4_combout\,
	combout => \top_inst|game_controller_inst|Selector1~2_combout\);

-- Location: LCCOMB_X14_Y23_N16
\top_inst|game_controller_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|Selector2~0_combout\ = (\top_inst|game_controller_inst|Selector1~2_combout\ & (((\game_buttons[3]~input_o\)))) # (!\top_inst|game_controller_inst|Selector1~2_combout\ & (!\top_inst|game_controller_inst|Selector1~0_combout\ & 
-- ((\top_inst|game_controller_inst|game_state.PAUSED~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|Selector1~0_combout\,
	datab => \game_buttons[3]~input_o\,
	datac => \top_inst|game_controller_inst|game_state.PAUSED~q\,
	datad => \top_inst|game_controller_inst|Selector1~2_combout\,
	combout => \top_inst|game_controller_inst|Selector2~0_combout\);

-- Location: FF_X14_Y23_N17
\top_inst|game_controller_inst|game_state.PAUSED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|Selector2~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|game_state.PAUSED~q\);

-- Location: LCCOMB_X14_Y23_N10
\top_inst|game_controller_inst|game_state.IDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|game_state.IDLE~0_combout\ = (\top_inst|game_controller_inst|Selector1~0_combout\) # ((\top_inst|game_controller_inst|game_state.IDLE~q\) # (\top_inst|game_controller_inst|Selector1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|Selector1~0_combout\,
	datac => \top_inst|game_controller_inst|game_state.IDLE~q\,
	datad => \top_inst|game_controller_inst|Selector1~2_combout\,
	combout => \top_inst|game_controller_inst|game_state.IDLE~0_combout\);

-- Location: FF_X14_Y23_N11
\top_inst|game_controller_inst|game_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|game_state.IDLE~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|game_state.IDLE~q\);

-- Location: LCCOMB_X14_Y23_N24
\top_inst|game_controller_inst|obstacle_pos[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|obstacle_pos[7]~17_combout\ = (!\top_inst|game_controller_inst|game_state.PAUSED~q\ & (\top_inst|game_controller_inst|game_state.IDLE~q\ & ((\game_buttons[0]~input_o\) # 
-- (!\top_inst|game_controller_inst|game_state.GAME_OVER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_buttons[0]~input_o\,
	datab => \top_inst|game_controller_inst|game_state.PAUSED~q\,
	datac => \top_inst|game_controller_inst|game_state.GAME_OVER~q\,
	datad => \top_inst|game_controller_inst|game_state.IDLE~q\,
	combout => \top_inst|game_controller_inst|obstacle_pos[7]~17_combout\);

-- Location: FF_X12_Y23_N21
\top_inst|game_controller_inst|obstacle_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|obstacle_pos[4]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \top_inst|game_controller_inst|obstacle_pos[7]~16_combout\,
	ena => \top_inst|game_controller_inst|obstacle_pos[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|obstacle_pos\(4));

-- Location: LCCOMB_X12_Y23_N22
\top_inst|game_controller_inst|obstacle_pos[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|obstacle_pos[5]~20_combout\ = (\top_inst|game_controller_inst|obstacle_pos\(5) & (\top_inst|game_controller_inst|obstacle_pos[4]~19\ & VCC)) # (!\top_inst|game_controller_inst|obstacle_pos\(5) & 
-- (!\top_inst|game_controller_inst|obstacle_pos[4]~19\))
-- \top_inst|game_controller_inst|obstacle_pos[5]~21\ = CARRY((!\top_inst|game_controller_inst|obstacle_pos\(5) & !\top_inst|game_controller_inst|obstacle_pos[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|obstacle_pos\(5),
	datad => VCC,
	cin => \top_inst|game_controller_inst|obstacle_pos[4]~19\,
	combout => \top_inst|game_controller_inst|obstacle_pos[5]~20_combout\,
	cout => \top_inst|game_controller_inst|obstacle_pos[5]~21\);

-- Location: FF_X12_Y23_N23
\top_inst|game_controller_inst|obstacle_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|obstacle_pos[5]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \top_inst|game_controller_inst|obstacle_pos[7]~16_combout\,
	ena => \top_inst|game_controller_inst|obstacle_pos[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|obstacle_pos\(5));

-- Location: LCCOMB_X12_Y23_N24
\top_inst|game_controller_inst|obstacle_pos[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|obstacle_pos[6]~22_combout\ = (\top_inst|game_controller_inst|obstacle_pos\(6) & ((GND) # (!\top_inst|game_controller_inst|obstacle_pos[5]~21\))) # (!\top_inst|game_controller_inst|obstacle_pos\(6) & 
-- (\top_inst|game_controller_inst|obstacle_pos[5]~21\ $ (GND)))
-- \top_inst|game_controller_inst|obstacle_pos[6]~23\ = CARRY((\top_inst|game_controller_inst|obstacle_pos\(6)) # (!\top_inst|game_controller_inst|obstacle_pos[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|game_controller_inst|obstacle_pos\(6),
	datad => VCC,
	cin => \top_inst|game_controller_inst|obstacle_pos[5]~21\,
	combout => \top_inst|game_controller_inst|obstacle_pos[6]~22_combout\,
	cout => \top_inst|game_controller_inst|obstacle_pos[6]~23\);

-- Location: FF_X12_Y23_N25
\top_inst|game_controller_inst|obstacle_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|obstacle_pos[6]~22_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \top_inst|game_controller_inst|obstacle_pos[7]~16_combout\,
	ena => \top_inst|game_controller_inst|obstacle_pos[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|obstacle_pos\(6));

-- Location: LCCOMB_X12_Y23_N26
\top_inst|game_controller_inst|obstacle_pos[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|obstacle_pos[7]~24_combout\ = \top_inst|game_controller_inst|obstacle_pos\(7) $ (!\top_inst|game_controller_inst|obstacle_pos[6]~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|obstacle_pos\(7),
	cin => \top_inst|game_controller_inst|obstacle_pos[6]~23\,
	combout => \top_inst|game_controller_inst|obstacle_pos[7]~24_combout\);

-- Location: FF_X12_Y23_N27
\top_inst|game_controller_inst|obstacle_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|obstacle_pos[7]~24_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \top_inst|game_controller_inst|obstacle_pos[7]~16_combout\,
	ena => \top_inst|game_controller_inst|obstacle_pos[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|obstacle_pos\(7));

-- Location: LCCOMB_X12_Y23_N28
\top_inst|game_controller_inst|ShiftLeft1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|ShiftLeft1~0_combout\ = (!\top_inst|game_controller_inst|obstacle_pos\(5) & (!\top_inst|game_controller_inst|obstacle_pos\(4) & (!\top_inst|game_controller_inst|obstacle_pos\(3) & 
-- !\top_inst|game_controller_inst|obstacle_pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|obstacle_pos\(5),
	datab => \top_inst|game_controller_inst|obstacle_pos\(4),
	datac => \top_inst|game_controller_inst|obstacle_pos\(3),
	datad => \top_inst|game_controller_inst|obstacle_pos\(6),
	combout => \top_inst|game_controller_inst|ShiftLeft1~0_combout\);

-- Location: LCCOMB_X12_Y23_N10
\top_inst|game_controller_inst|ShiftLeft1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|ShiftLeft1~1_combout\ = (!\top_inst|game_controller_inst|obstacle_pos\(7) & (!\top_inst|game_controller_inst|obstacle_pos\(2) & (!\top_inst|game_controller_inst|obstacle_pos\(1) & 
-- \top_inst|game_controller_inst|ShiftLeft1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|obstacle_pos\(7),
	datab => \top_inst|game_controller_inst|obstacle_pos\(2),
	datac => \top_inst|game_controller_inst|obstacle_pos\(1),
	datad => \top_inst|game_controller_inst|ShiftLeft1~0_combout\,
	combout => \top_inst|game_controller_inst|ShiftLeft1~1_combout\);

-- Location: LCCOMB_X12_Y23_N0
\top_inst|game_controller_inst|obstacle_pos[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|obstacle_pos[7]~16_combout\ = (\top_inst|game_controller_inst|game_state.GAME_OVER~q\) # ((!\top_inst|game_controller_inst|obstacle_pos\(0) & \top_inst|game_controller_inst|ShiftLeft1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|obstacle_pos\(0),
	datac => \top_inst|game_controller_inst|game_state.GAME_OVER~q\,
	datad => \top_inst|game_controller_inst|ShiftLeft1~1_combout\,
	combout => \top_inst|game_controller_inst|obstacle_pos[7]~16_combout\);

-- Location: FF_X12_Y23_N13
\top_inst|game_controller_inst|obstacle_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|obstacle_pos[0]~8_combout\,
	asdata => VCC,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \top_inst|game_controller_inst|obstacle_pos[7]~16_combout\,
	ena => \top_inst|game_controller_inst|obstacle_pos[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|obstacle_pos\(0));

-- Location: LCCOMB_X12_Y23_N14
\top_inst|game_controller_inst|obstacle_pos[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|obstacle_pos[1]~10_combout\ = (\top_inst|game_controller_inst|obstacle_pos\(1) & (\top_inst|game_controller_inst|obstacle_pos[0]~9\ & VCC)) # (!\top_inst|game_controller_inst|obstacle_pos\(1) & 
-- (!\top_inst|game_controller_inst|obstacle_pos[0]~9\))
-- \top_inst|game_controller_inst|obstacle_pos[1]~11\ = CARRY((!\top_inst|game_controller_inst|obstacle_pos\(1) & !\top_inst|game_controller_inst|obstacle_pos[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|game_controller_inst|obstacle_pos\(1),
	datad => VCC,
	cin => \top_inst|game_controller_inst|obstacle_pos[0]~9\,
	combout => \top_inst|game_controller_inst|obstacle_pos[1]~10_combout\,
	cout => \top_inst|game_controller_inst|obstacle_pos[1]~11\);

-- Location: FF_X12_Y23_N15
\top_inst|game_controller_inst|obstacle_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|obstacle_pos[1]~10_combout\,
	asdata => VCC,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \top_inst|game_controller_inst|obstacle_pos[7]~16_combout\,
	ena => \top_inst|game_controller_inst|obstacle_pos[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|obstacle_pos\(1));

-- Location: LCCOMB_X12_Y23_N16
\top_inst|game_controller_inst|obstacle_pos[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|obstacle_pos[2]~12_combout\ = (\top_inst|game_controller_inst|obstacle_pos\(2) & ((GND) # (!\top_inst|game_controller_inst|obstacle_pos[1]~11\))) # (!\top_inst|game_controller_inst|obstacle_pos\(2) & 
-- (\top_inst|game_controller_inst|obstacle_pos[1]~11\ $ (GND)))
-- \top_inst|game_controller_inst|obstacle_pos[2]~13\ = CARRY((\top_inst|game_controller_inst|obstacle_pos\(2)) # (!\top_inst|game_controller_inst|obstacle_pos[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|game_controller_inst|obstacle_pos\(2),
	datad => VCC,
	cin => \top_inst|game_controller_inst|obstacle_pos[1]~11\,
	combout => \top_inst|game_controller_inst|obstacle_pos[2]~12_combout\,
	cout => \top_inst|game_controller_inst|obstacle_pos[2]~13\);

-- Location: FF_X12_Y23_N17
\top_inst|game_controller_inst|obstacle_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|obstacle_pos[2]~12_combout\,
	asdata => VCC,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \top_inst|game_controller_inst|obstacle_pos[7]~16_combout\,
	ena => \top_inst|game_controller_inst|obstacle_pos[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|obstacle_pos\(2));

-- Location: FF_X12_Y23_N19
\top_inst|game_controller_inst|obstacle_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|obstacle_pos[3]~14_combout\,
	asdata => \~GND~combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sload => \top_inst|game_controller_inst|obstacle_pos[7]~16_combout\,
	ena => \top_inst|game_controller_inst|obstacle_pos[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|obstacle_pos\(3));

-- Location: LCCOMB_X14_Y23_N12
\top_inst|game_controller_inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|Equal1~1_combout\ = (\top_inst|game_controller_inst|player_pos\(2) & (\top_inst|game_controller_inst|obstacle_pos\(2) & (\top_inst|game_controller_inst|player_pos\(3) $ (!\top_inst|game_controller_inst|obstacle_pos\(3))))) # 
-- (!\top_inst|game_controller_inst|player_pos\(2) & (!\top_inst|game_controller_inst|obstacle_pos\(2) & (\top_inst|game_controller_inst|player_pos\(3) $ (!\top_inst|game_controller_inst|obstacle_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|player_pos\(2),
	datab => \top_inst|game_controller_inst|player_pos\(3),
	datac => \top_inst|game_controller_inst|obstacle_pos\(3),
	datad => \top_inst|game_controller_inst|obstacle_pos\(2),
	combout => \top_inst|game_controller_inst|Equal1~1_combout\);

-- Location: LCCOMB_X13_Y23_N6
\top_inst|game_controller_inst|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|Equal1~2_combout\ = (\top_inst|game_controller_inst|player_pos\(5) & (\top_inst|game_controller_inst|obstacle_pos\(5) & (\top_inst|game_controller_inst|player_pos\(4) $ (!\top_inst|game_controller_inst|obstacle_pos\(4))))) # 
-- (!\top_inst|game_controller_inst|player_pos\(5) & (!\top_inst|game_controller_inst|obstacle_pos\(5) & (\top_inst|game_controller_inst|player_pos\(4) $ (!\top_inst|game_controller_inst|obstacle_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|player_pos\(5),
	datab => \top_inst|game_controller_inst|obstacle_pos\(5),
	datac => \top_inst|game_controller_inst|player_pos\(4),
	datad => \top_inst|game_controller_inst|obstacle_pos\(4),
	combout => \top_inst|game_controller_inst|Equal1~2_combout\);

-- Location: LCCOMB_X14_Y23_N30
\top_inst|game_controller_inst|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|Equal1~3_combout\ = (\top_inst|game_controller_inst|player_pos\(7) & (\top_inst|game_controller_inst|obstacle_pos\(7) & (\top_inst|game_controller_inst|player_pos\(6) $ (!\top_inst|game_controller_inst|obstacle_pos\(6))))) # 
-- (!\top_inst|game_controller_inst|player_pos\(7) & (!\top_inst|game_controller_inst|obstacle_pos\(7) & (\top_inst|game_controller_inst|player_pos\(6) $ (!\top_inst|game_controller_inst|obstacle_pos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|player_pos\(7),
	datab => \top_inst|game_controller_inst|player_pos\(6),
	datac => \top_inst|game_controller_inst|obstacle_pos\(7),
	datad => \top_inst|game_controller_inst|obstacle_pos\(6),
	combout => \top_inst|game_controller_inst|Equal1~3_combout\);

-- Location: LCCOMB_X12_Y23_N6
\top_inst|game_controller_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|Equal1~0_combout\ = (\top_inst|game_controller_inst|obstacle_pos\(0) & (\top_inst|game_controller_inst|player_pos\(0) & (\top_inst|game_controller_inst|obstacle_pos\(1) $ (!\top_inst|game_controller_inst|player_pos\(1))))) # 
-- (!\top_inst|game_controller_inst|obstacle_pos\(0) & (!\top_inst|game_controller_inst|player_pos\(0) & (\top_inst|game_controller_inst|obstacle_pos\(1) $ (!\top_inst|game_controller_inst|player_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|obstacle_pos\(0),
	datab => \top_inst|game_controller_inst|obstacle_pos\(1),
	datac => \top_inst|game_controller_inst|player_pos\(0),
	datad => \top_inst|game_controller_inst|player_pos\(1),
	combout => \top_inst|game_controller_inst|Equal1~0_combout\);

-- Location: LCCOMB_X14_Y23_N28
\top_inst|game_controller_inst|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|Equal1~4_combout\ = (\top_inst|game_controller_inst|Equal1~1_combout\ & (\top_inst|game_controller_inst|Equal1~2_combout\ & (\top_inst|game_controller_inst|Equal1~3_combout\ & 
-- \top_inst|game_controller_inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|Equal1~1_combout\,
	datab => \top_inst|game_controller_inst|Equal1~2_combout\,
	datac => \top_inst|game_controller_inst|Equal1~3_combout\,
	datad => \top_inst|game_controller_inst|Equal1~0_combout\,
	combout => \top_inst|game_controller_inst|Equal1~4_combout\);

-- Location: LCCOMB_X14_Y23_N20
\top_inst|game_controller_inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|Selector1~1_combout\ = (\top_inst|game_controller_inst|Selector1~0_combout\) # ((!\game_buttons[3]~input_o\ & (\top_inst|game_controller_inst|game_state.PLAYING~q\ & !\top_inst|game_controller_inst|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|Selector1~0_combout\,
	datab => \game_buttons[3]~input_o\,
	datac => \top_inst|game_controller_inst|game_state.PLAYING~q\,
	datad => \top_inst|game_controller_inst|Equal1~4_combout\,
	combout => \top_inst|game_controller_inst|Selector1~1_combout\);

-- Location: FF_X14_Y23_N21
\top_inst|game_controller_inst|game_state.PLAYING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|Selector1~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|game_state.PLAYING~q\);

-- Location: LCCOMB_X14_Y23_N22
\top_inst|game_controller_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|Selector1~0_combout\ = (!\top_inst|game_controller_inst|game_state.PLAYING~q\ & ((\top_inst|game_controller_inst|game_state.PAUSED~q\ & ((\game_buttons[3]~input_o\))) # (!\top_inst|game_controller_inst|game_state.PAUSED~q\ & 
-- (\game_buttons[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_buttons[0]~input_o\,
	datab => \game_buttons[3]~input_o\,
	datac => \top_inst|game_controller_inst|game_state.PLAYING~q\,
	datad => \top_inst|game_controller_inst|game_state.PAUSED~q\,
	combout => \top_inst|game_controller_inst|Selector1~0_combout\);

-- Location: LCCOMB_X14_Y23_N26
\top_inst|game_controller_inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|Selector3~0_combout\ = (\top_inst|game_controller_inst|Selector1~2_combout\ & (((!\game_buttons[3]~input_o\)))) # (!\top_inst|game_controller_inst|Selector1~2_combout\ & (!\top_inst|game_controller_inst|Selector1~0_combout\ 
-- & ((\top_inst|game_controller_inst|game_state.GAME_OVER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|Selector1~0_combout\,
	datab => \game_buttons[3]~input_o\,
	datac => \top_inst|game_controller_inst|game_state.GAME_OVER~q\,
	datad => \top_inst|game_controller_inst|Selector1~2_combout\,
	combout => \top_inst|game_controller_inst|Selector3~0_combout\);

-- Location: FF_X14_Y23_N27
\top_inst|game_controller_inst|game_state.GAME_OVER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|Selector3~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|game_state.GAME_OVER~q\);

-- Location: FF_X13_Y23_N13
\top_inst|game_controller_inst|player_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|player_pos[0]~8_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	sclr => \top_inst|game_controller_inst|game_state.GAME_OVER~q\,
	ena => \top_inst|game_controller_inst|player_pos[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|player_pos\(0));

-- Location: LCCOMB_X11_Y23_N28
\top_inst|game_controller_inst|ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|ShiftLeft0~1_combout\ = (!\top_inst|game_controller_inst|player_pos\(7) & (!\top_inst|game_controller_inst|player_pos\(1) & (\top_inst|game_controller_inst|ShiftLeft0~0_combout\ & 
-- !\top_inst|game_controller_inst|player_pos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|player_pos\(7),
	datab => \top_inst|game_controller_inst|player_pos\(1),
	datac => \top_inst|game_controller_inst|ShiftLeft0~0_combout\,
	datad => \top_inst|game_controller_inst|player_pos\(2),
	combout => \top_inst|game_controller_inst|ShiftLeft0~1_combout\);

-- Location: LCCOMB_X11_Y23_N0
\top_inst|game_controller_inst|game_display~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|game_display~0_combout\ = (\top_inst|game_controller_inst|player_pos\(0) & (!\top_inst|game_controller_inst|obstacle_pos\(0) & (\top_inst|game_controller_inst|ShiftLeft1~1_combout\))) # 
-- (!\top_inst|game_controller_inst|player_pos\(0) & ((\top_inst|game_controller_inst|ShiftLeft0~1_combout\) # ((!\top_inst|game_controller_inst|obstacle_pos\(0) & \top_inst|game_controller_inst|ShiftLeft1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|player_pos\(0),
	datab => \top_inst|game_controller_inst|obstacle_pos\(0),
	datac => \top_inst|game_controller_inst|ShiftLeft1~1_combout\,
	datad => \top_inst|game_controller_inst|ShiftLeft0~1_combout\,
	combout => \top_inst|game_controller_inst|game_display~0_combout\);

-- Location: FF_X11_Y23_N1
\top_inst|game_controller_inst|game_display[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|game_display~0_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \top_inst|game_controller_inst|game_state.PLAYING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|game_display\(0));

-- Location: LCCOMB_X11_Y23_N22
\top_inst|game_controller_inst|game_display~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|game_display~1_combout\ = (\top_inst|game_controller_inst|player_pos\(0) & ((\top_inst|game_controller_inst|ShiftLeft0~1_combout\) # ((\top_inst|game_controller_inst|obstacle_pos\(0) & 
-- \top_inst|game_controller_inst|ShiftLeft1~1_combout\)))) # (!\top_inst|game_controller_inst|player_pos\(0) & (\top_inst|game_controller_inst|obstacle_pos\(0) & (\top_inst|game_controller_inst|ShiftLeft1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|player_pos\(0),
	datab => \top_inst|game_controller_inst|obstacle_pos\(0),
	datac => \top_inst|game_controller_inst|ShiftLeft1~1_combout\,
	datad => \top_inst|game_controller_inst|ShiftLeft0~1_combout\,
	combout => \top_inst|game_controller_inst|game_display~1_combout\);

-- Location: FF_X11_Y23_N23
\top_inst|game_controller_inst|game_display[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|game_display~1_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \top_inst|game_controller_inst|game_state.PLAYING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|game_display\(1));

-- Location: LCCOMB_X11_Y23_N10
\top_inst|game_controller_inst|ShiftLeft1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|ShiftLeft1~2_combout\ = (!\top_inst|game_controller_inst|obstacle_pos\(7) & (!\top_inst|game_controller_inst|obstacle_pos\(2) & (\top_inst|game_controller_inst|obstacle_pos\(1) & 
-- \top_inst|game_controller_inst|ShiftLeft1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|obstacle_pos\(7),
	datab => \top_inst|game_controller_inst|obstacle_pos\(2),
	datac => \top_inst|game_controller_inst|obstacle_pos\(1),
	datad => \top_inst|game_controller_inst|ShiftLeft1~0_combout\,
	combout => \top_inst|game_controller_inst|ShiftLeft1~2_combout\);

-- Location: LCCOMB_X11_Y23_N20
\top_inst|game_controller_inst|ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|ShiftLeft0~3_combout\ = (\top_inst|game_controller_inst|player_pos\(1) & !\top_inst|game_controller_inst|player_pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|game_controller_inst|player_pos\(1),
	datac => \top_inst|game_controller_inst|player_pos\(0),
	combout => \top_inst|game_controller_inst|ShiftLeft0~3_combout\);

-- Location: LCCOMB_X11_Y23_N2
\top_inst|game_controller_inst|ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|ShiftLeft0~2_combout\ = (\top_inst|game_controller_inst|ShiftLeft0~0_combout\ & (!\top_inst|game_controller_inst|player_pos\(7) & !\top_inst|game_controller_inst|player_pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|game_controller_inst|ShiftLeft0~0_combout\,
	datac => \top_inst|game_controller_inst|player_pos\(7),
	datad => \top_inst|game_controller_inst|player_pos\(2),
	combout => \top_inst|game_controller_inst|ShiftLeft0~2_combout\);

-- Location: LCCOMB_X11_Y23_N16
\top_inst|game_controller_inst|game_display~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|game_display~2_combout\ = (\top_inst|game_controller_inst|ShiftLeft1~2_combout\ & (((\top_inst|game_controller_inst|ShiftLeft0~3_combout\ & \top_inst|game_controller_inst|ShiftLeft0~2_combout\)) # 
-- (!\top_inst|game_controller_inst|obstacle_pos\(0)))) # (!\top_inst|game_controller_inst|ShiftLeft1~2_combout\ & (\top_inst|game_controller_inst|ShiftLeft0~3_combout\ & ((\top_inst|game_controller_inst|ShiftLeft0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|ShiftLeft1~2_combout\,
	datab => \top_inst|game_controller_inst|ShiftLeft0~3_combout\,
	datac => \top_inst|game_controller_inst|obstacle_pos\(0),
	datad => \top_inst|game_controller_inst|ShiftLeft0~2_combout\,
	combout => \top_inst|game_controller_inst|game_display~2_combout\);

-- Location: FF_X11_Y23_N17
\top_inst|game_controller_inst|game_display[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|game_display~2_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \top_inst|game_controller_inst|game_state.PLAYING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|game_display\(2));

-- Location: LCCOMB_X11_Y23_N30
\top_inst|game_controller_inst|game_display~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|game_display~3_combout\ = (\top_inst|game_controller_inst|ShiftLeft1~2_combout\ & ((\top_inst|game_controller_inst|obstacle_pos\(0)) # ((\top_inst|game_controller_inst|ShiftLeft0~4_combout\ & 
-- \top_inst|game_controller_inst|ShiftLeft0~2_combout\)))) # (!\top_inst|game_controller_inst|ShiftLeft1~2_combout\ & (((\top_inst|game_controller_inst|ShiftLeft0~4_combout\ & \top_inst|game_controller_inst|ShiftLeft0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|ShiftLeft1~2_combout\,
	datab => \top_inst|game_controller_inst|obstacle_pos\(0),
	datac => \top_inst|game_controller_inst|ShiftLeft0~4_combout\,
	datad => \top_inst|game_controller_inst|ShiftLeft0~2_combout\,
	combout => \top_inst|game_controller_inst|game_display~3_combout\);

-- Location: FF_X11_Y23_N31
\top_inst|game_controller_inst|game_display[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|game_display~3_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \top_inst|game_controller_inst|game_state.PLAYING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|game_display\(3));

-- Location: LCCOMB_X11_Y23_N12
\top_inst|game_controller_inst|ShiftLeft1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|ShiftLeft1~3_combout\ = (!\top_inst|game_controller_inst|obstacle_pos\(7) & (\top_inst|game_controller_inst|obstacle_pos\(2) & (!\top_inst|game_controller_inst|obstacle_pos\(0) & 
-- \top_inst|game_controller_inst|ShiftLeft1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|obstacle_pos\(7),
	datab => \top_inst|game_controller_inst|obstacle_pos\(2),
	datac => \top_inst|game_controller_inst|obstacle_pos\(0),
	datad => \top_inst|game_controller_inst|ShiftLeft1~0_combout\,
	combout => \top_inst|game_controller_inst|ShiftLeft1~3_combout\);

-- Location: LCCOMB_X11_Y23_N6
\top_inst|game_controller_inst|ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|ShiftLeft0~5_combout\ = (!\top_inst|game_controller_inst|player_pos\(7) & (!\top_inst|game_controller_inst|player_pos\(0) & (\top_inst|game_controller_inst|ShiftLeft0~0_combout\ & 
-- \top_inst|game_controller_inst|player_pos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|player_pos\(7),
	datab => \top_inst|game_controller_inst|player_pos\(0),
	datac => \top_inst|game_controller_inst|ShiftLeft0~0_combout\,
	datad => \top_inst|game_controller_inst|player_pos\(2),
	combout => \top_inst|game_controller_inst|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X11_Y23_N24
\top_inst|game_controller_inst|game_display~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|game_display~4_combout\ = (\top_inst|game_controller_inst|ShiftLeft1~3_combout\ & (((!\top_inst|game_controller_inst|player_pos\(1) & \top_inst|game_controller_inst|ShiftLeft0~5_combout\)) # 
-- (!\top_inst|game_controller_inst|obstacle_pos\(1)))) # (!\top_inst|game_controller_inst|ShiftLeft1~3_combout\ & (!\top_inst|game_controller_inst|player_pos\(1) & ((\top_inst|game_controller_inst|ShiftLeft0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|ShiftLeft1~3_combout\,
	datab => \top_inst|game_controller_inst|player_pos\(1),
	datac => \top_inst|game_controller_inst|obstacle_pos\(1),
	datad => \top_inst|game_controller_inst|ShiftLeft0~5_combout\,
	combout => \top_inst|game_controller_inst|game_display~4_combout\);

-- Location: FF_X11_Y23_N25
\top_inst|game_controller_inst|game_display[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|game_display~4_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \top_inst|game_controller_inst|game_state.PLAYING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|game_display\(4));

-- Location: LCCOMB_X11_Y23_N8
\top_inst|game_controller_inst|ShiftLeft1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|ShiftLeft1~4_combout\ = (!\top_inst|game_controller_inst|obstacle_pos\(7) & (\top_inst|game_controller_inst|obstacle_pos\(2) & (\top_inst|game_controller_inst|obstacle_pos\(0) & 
-- \top_inst|game_controller_inst|ShiftLeft1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|obstacle_pos\(7),
	datab => \top_inst|game_controller_inst|obstacle_pos\(2),
	datac => \top_inst|game_controller_inst|obstacle_pos\(0),
	datad => \top_inst|game_controller_inst|ShiftLeft1~0_combout\,
	combout => \top_inst|game_controller_inst|ShiftLeft1~4_combout\);

-- Location: LCCOMB_X11_Y23_N18
\top_inst|game_controller_inst|ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|ShiftLeft0~6_combout\ = (!\top_inst|game_controller_inst|player_pos\(7) & (\top_inst|game_controller_inst|player_pos\(0) & (\top_inst|game_controller_inst|ShiftLeft0~0_combout\ & 
-- \top_inst|game_controller_inst|player_pos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|player_pos\(7),
	datab => \top_inst|game_controller_inst|player_pos\(0),
	datac => \top_inst|game_controller_inst|ShiftLeft0~0_combout\,
	datad => \top_inst|game_controller_inst|player_pos\(2),
	combout => \top_inst|game_controller_inst|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X11_Y23_N26
\top_inst|game_controller_inst|game_display~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|game_display~5_combout\ = (\top_inst|game_controller_inst|player_pos\(1) & (!\top_inst|game_controller_inst|obstacle_pos\(1) & (\top_inst|game_controller_inst|ShiftLeft1~4_combout\))) # 
-- (!\top_inst|game_controller_inst|player_pos\(1) & ((\top_inst|game_controller_inst|ShiftLeft0~6_combout\) # ((!\top_inst|game_controller_inst|obstacle_pos\(1) & \top_inst|game_controller_inst|ShiftLeft1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|player_pos\(1),
	datab => \top_inst|game_controller_inst|obstacle_pos\(1),
	datac => \top_inst|game_controller_inst|ShiftLeft1~4_combout\,
	datad => \top_inst|game_controller_inst|ShiftLeft0~6_combout\,
	combout => \top_inst|game_controller_inst|game_display~5_combout\);

-- Location: FF_X11_Y23_N27
\top_inst|game_controller_inst|game_display[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|game_display~5_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \top_inst|game_controller_inst|game_state.PLAYING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|game_display\(5));

-- Location: LCCOMB_X11_Y23_N4
\top_inst|game_controller_inst|game_display~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|game_display~6_combout\ = (\top_inst|game_controller_inst|ShiftLeft1~3_combout\ & ((\top_inst|game_controller_inst|obstacle_pos\(1)) # ((\top_inst|game_controller_inst|player_pos\(1) & 
-- \top_inst|game_controller_inst|ShiftLeft0~5_combout\)))) # (!\top_inst|game_controller_inst|ShiftLeft1~3_combout\ & (\top_inst|game_controller_inst|player_pos\(1) & ((\top_inst|game_controller_inst|ShiftLeft0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|ShiftLeft1~3_combout\,
	datab => \top_inst|game_controller_inst|player_pos\(1),
	datac => \top_inst|game_controller_inst|obstacle_pos\(1),
	datad => \top_inst|game_controller_inst|ShiftLeft0~5_combout\,
	combout => \top_inst|game_controller_inst|game_display~6_combout\);

-- Location: FF_X11_Y23_N5
\top_inst|game_controller_inst|game_display[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|game_display~6_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \top_inst|game_controller_inst|game_state.PLAYING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|game_display\(6));

-- Location: LCCOMB_X11_Y23_N14
\top_inst|game_controller_inst|game_display~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \top_inst|game_controller_inst|game_display~7_combout\ = (\top_inst|game_controller_inst|player_pos\(1) & ((\top_inst|game_controller_inst|ShiftLeft0~6_combout\) # ((\top_inst|game_controller_inst|obstacle_pos\(1) & 
-- \top_inst|game_controller_inst|ShiftLeft1~4_combout\)))) # (!\top_inst|game_controller_inst|player_pos\(1) & (\top_inst|game_controller_inst|obstacle_pos\(1) & (\top_inst|game_controller_inst|ShiftLeft1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|game_controller_inst|player_pos\(1),
	datab => \top_inst|game_controller_inst|obstacle_pos\(1),
	datac => \top_inst|game_controller_inst|ShiftLeft1~4_combout\,
	datad => \top_inst|game_controller_inst|ShiftLeft0~6_combout\,
	combout => \top_inst|game_controller_inst|game_display~7_combout\);

-- Location: FF_X11_Y23_N15
\top_inst|game_controller_inst|game_display[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \top_inst|clock_gen_inst|clk_game~clkctrl_outclk\,
	d => \top_inst|game_controller_inst|game_display~7_combout\,
	clrn => \rst_n~inputclkctrl_outclk\,
	ena => \top_inst|game_controller_inst|game_state.PLAYING~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|game_controller_inst|game_display\(7));

ww_led_display(0) <= \led_display[0]~output_o\;

ww_led_display(1) <= \led_display[1]~output_o\;

ww_led_display(2) <= \led_display[2]~output_o\;

ww_led_display(3) <= \led_display[3]~output_o\;

ww_led_display(4) <= \led_display[4]~output_o\;

ww_led_display(5) <= \led_display[5]~output_o\;

ww_led_display(6) <= \led_display[6]~output_o\;

ww_led_display(7) <= \led_display[7]~output_o\;

ww_game_score(0) <= \game_score[0]~output_o\;

ww_game_score(1) <= \game_score[1]~output_o\;

ww_game_score(2) <= \game_score[2]~output_o\;

ww_game_score(3) <= \game_score[3]~output_o\;

ww_game_score(4) <= \game_score[4]~output_o\;

ww_game_score(5) <= \game_score[5]~output_o\;

ww_game_score(6) <= \game_score[6]~output_o\;

ww_game_score(7) <= \game_score[7]~output_o\;
END structure;


