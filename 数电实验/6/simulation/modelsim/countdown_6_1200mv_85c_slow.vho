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

-- DATE "06/01/2024 11:24:32"

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

ENTITY 	countdown IS
    PORT (
	clk : IN std_logic;
	led_out : OUT std_logic_vector(7 DOWNTO 0);
	sw_in : IN std_logic_vector(4 DOWNTO 0)
	);
END countdown;

-- Design Ports Information
-- led_out[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[5]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[6]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_in[4]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_in[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_in[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_in[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_in[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF countdown IS
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
SIGNAL ww_led_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sw_in : std_logic_vector(4 DOWNTO 0);
SIGNAL \sw_in[4]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tick~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tg1|ticks[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led_out[0]~output_o\ : std_logic;
SIGNAL \led_out[1]~output_o\ : std_logic;
SIGNAL \led_out[2]~output_o\ : std_logic;
SIGNAL \led_out[3]~output_o\ : std_logic;
SIGNAL \led_out[4]~output_o\ : std_logic;
SIGNAL \led_out[5]~output_o\ : std_logic;
SIGNAL \led_out[6]~output_o\ : std_logic;
SIGNAL \led_out[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \tg1|high~0_combout\ : std_logic;
SIGNAL \sw_in[4]~input_o\ : std_logic;
SIGNAL \sw_in[4]~inputclkctrl_outclk\ : std_logic;
SIGNAL \tg1|Add0~0_combout\ : std_logic;
SIGNAL \tg1|Add0~1\ : std_logic;
SIGNAL \tg1|Add0~2_combout\ : std_logic;
SIGNAL \tg1|Add0~3\ : std_logic;
SIGNAL \tg1|Add0~4_combout\ : std_logic;
SIGNAL \tg1|Add0~5\ : std_logic;
SIGNAL \tg1|Add0~6_combout\ : std_logic;
SIGNAL \tg1|counter~7_combout\ : std_logic;
SIGNAL \tg1|Add0~7\ : std_logic;
SIGNAL \tg1|Add0~8_combout\ : std_logic;
SIGNAL \tg1|Add0~9\ : std_logic;
SIGNAL \tg1|Add0~10_combout\ : std_logic;
SIGNAL \tg1|counter~6_combout\ : std_logic;
SIGNAL \tg1|Add0~11\ : std_logic;
SIGNAL \tg1|Add0~12_combout\ : std_logic;
SIGNAL \tg1|counter~5_combout\ : std_logic;
SIGNAL \tg1|Add0~13\ : std_logic;
SIGNAL \tg1|Add0~14_combout\ : std_logic;
SIGNAL \tg1|Add0~15\ : std_logic;
SIGNAL \tg1|Add0~16_combout\ : std_logic;
SIGNAL \tg1|counter~4_combout\ : std_logic;
SIGNAL \tg1|Add0~17\ : std_logic;
SIGNAL \tg1|Add0~18_combout\ : std_logic;
SIGNAL \tg1|Add0~19\ : std_logic;
SIGNAL \tg1|Add0~20_combout\ : std_logic;
SIGNAL \tg1|Add0~21\ : std_logic;
SIGNAL \tg1|Add0~22_combout\ : std_logic;
SIGNAL \tg1|counter~3_combout\ : std_logic;
SIGNAL \tg1|Add0~23\ : std_logic;
SIGNAL \tg1|Add0~24_combout\ : std_logic;
SIGNAL \tg1|counter[12]~feeder_combout\ : std_logic;
SIGNAL \tg1|Add0~25\ : std_logic;
SIGNAL \tg1|Add0~26_combout\ : std_logic;
SIGNAL \tg1|counter[13]~feeder_combout\ : std_logic;
SIGNAL \tg1|Add0~27\ : std_logic;
SIGNAL \tg1|Add0~28_combout\ : std_logic;
SIGNAL \tg1|Add0~29\ : std_logic;
SIGNAL \tg1|Add0~30_combout\ : std_logic;
SIGNAL \tg1|counter~2_combout\ : std_logic;
SIGNAL \tg1|Equal0~5_combout\ : std_logic;
SIGNAL \tg1|Equal0~7_combout\ : std_logic;
SIGNAL \tg1|Equal0~8_combout\ : std_logic;
SIGNAL \tg1|Equal0~9_combout\ : std_logic;
SIGNAL \tg1|Equal0~6_combout\ : std_logic;
SIGNAL \tg1|Add0~31\ : std_logic;
SIGNAL \tg1|Add0~32_combout\ : std_logic;
SIGNAL \tg1|counter~1_combout\ : std_logic;
SIGNAL \tg1|Add0~33\ : std_logic;
SIGNAL \tg1|Add0~34_combout\ : std_logic;
SIGNAL \tg1|Add0~35\ : std_logic;
SIGNAL \tg1|Add0~36_combout\ : std_logic;
SIGNAL \tg1|Add0~37\ : std_logic;
SIGNAL \tg1|Add0~38_combout\ : std_logic;
SIGNAL \tg1|counter~0_combout\ : std_logic;
SIGNAL \tg1|Add0~39\ : std_logic;
SIGNAL \tg1|Add0~40_combout\ : std_logic;
SIGNAL \tg1|Add0~41\ : std_logic;
SIGNAL \tg1|Add0~42_combout\ : std_logic;
SIGNAL \tg1|Add0~43\ : std_logic;
SIGNAL \tg1|Add0~44_combout\ : std_logic;
SIGNAL \tg1|Add0~45\ : std_logic;
SIGNAL \tg1|Add0~46_combout\ : std_logic;
SIGNAL \tg1|Add0~47\ : std_logic;
SIGNAL \tg1|Add0~48_combout\ : std_logic;
SIGNAL \tg1|Add0~49\ : std_logic;
SIGNAL \tg1|Add0~50_combout\ : std_logic;
SIGNAL \tg1|Add0~51\ : std_logic;
SIGNAL \tg1|Add0~52_combout\ : std_logic;
SIGNAL \tg1|Add0~53\ : std_logic;
SIGNAL \tg1|Add0~54_combout\ : std_logic;
SIGNAL \tg1|Equal0~1_combout\ : std_logic;
SIGNAL \tg1|Add0~55\ : std_logic;
SIGNAL \tg1|Add0~56_combout\ : std_logic;
SIGNAL \tg1|Add0~57\ : std_logic;
SIGNAL \tg1|Add0~58_combout\ : std_logic;
SIGNAL \tg1|Add0~59\ : std_logic;
SIGNAL \tg1|Add0~60_combout\ : std_logic;
SIGNAL \tg1|Add0~61\ : std_logic;
SIGNAL \tg1|Add0~62_combout\ : std_logic;
SIGNAL \tg1|Equal0~0_combout\ : std_logic;
SIGNAL \tg1|Equal0~2_combout\ : std_logic;
SIGNAL \tg1|Equal0~3_combout\ : std_logic;
SIGNAL \tg1|Equal0~4_combout\ : std_logic;
SIGNAL \tg1|Equal0~10_combout\ : std_logic;
SIGNAL \tg1|high~q\ : std_logic;
SIGNAL \tg1|current[3]~0_combout\ : std_logic;
SIGNAL \tg1|current[3]~feeder_combout\ : std_logic;
SIGNAL \tg1|current[0]~2_combout\ : std_logic;
SIGNAL \tg1|current[1]~1_combout\ : std_logic;
SIGNAL \tg1|ticks~0_combout\ : std_logic;
SIGNAL \tg1|ticks~1_combout\ : std_logic;
SIGNAL \tg1|ticks~2_combout\ : std_logic;
SIGNAL \tg1|ticks~3_combout\ : std_logic;
SIGNAL \tick~combout\ : std_logic;
SIGNAL \tick~clkctrl_outclk\ : std_logic;
SIGNAL \tg1|ticks[0]~clkctrl_outclk\ : std_logic;
SIGNAL \sw_in[3]~input_o\ : std_logic;
SIGNAL \swlpd_decrease|output_counter~4_combout\ : std_logic;
SIGNAL \swlpd_decrease|pressed_time[0]~8_combout\ : std_logic;
SIGNAL \swlpd_decrease|pressed_time[0]~9\ : std_logic;
SIGNAL \swlpd_decrease|pressed_time[1]~10_combout\ : std_logic;
SIGNAL \swlpd_decrease|pressed_time[1]~11\ : std_logic;
SIGNAL \swlpd_decrease|pressed_time[2]~12_combout\ : std_logic;
SIGNAL \swlpd_decrease|pressed_time[2]~13\ : std_logic;
SIGNAL \swlpd_decrease|pressed_time[3]~14_combout\ : std_logic;
SIGNAL \swlpd_decrease|pressed_time[3]~15\ : std_logic;
SIGNAL \swlpd_decrease|pressed_time[4]~17_combout\ : std_logic;
SIGNAL \swlpd_decrease|pressed_time[4]~18\ : std_logic;
SIGNAL \swlpd_decrease|pressed_time[5]~19_combout\ : std_logic;
SIGNAL \swlpd_decrease|pressed_time[5]~20\ : std_logic;
SIGNAL \swlpd_decrease|pressed_time[6]~21_combout\ : std_logic;
SIGNAL \swlpd_decrease|pressed_time[6]~22\ : std_logic;
SIGNAL \swlpd_decrease|pressed_time[7]~23_combout\ : std_logic;
SIGNAL \swlpd_decrease|Equal0~1_combout\ : std_logic;
SIGNAL \swlpd_decrease|pressed_time[0]~16_combout\ : std_logic;
SIGNAL \swlpd_decrease|Equal0~0_combout\ : std_logic;
SIGNAL \swlpd_decrease|pressed~1_combout\ : std_logic;
SIGNAL \swlpd_decrease|output_counter~3_combout\ : std_logic;
SIGNAL \swlpd_decrease|Add0~0_combout\ : std_logic;
SIGNAL \swlpd_decrease|output_counter~0_combout\ : std_logic;
SIGNAL \swlpd_decrease|output_counter~1_combout\ : std_logic;
SIGNAL \swlpd_decrease|output_counter~2_combout\ : std_logic;
SIGNAL \swlpd_decrease|Equal1~0_combout\ : std_logic;
SIGNAL \swlpd_decrease|pressed~0_combout\ : std_logic;
SIGNAL \swlpd_decrease|pressed~q\ : std_logic;
SIGNAL \settime[0]~12_combout\ : std_logic;
SIGNAL \currtime[0]~8_combout\ : std_logic;
SIGNAL \blink_currtime[0]~17_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \swpd_decrease|last~0_combout\ : std_logic;
SIGNAL \swpd_decrease|last~q\ : std_logic;
SIGNAL \swpd_decrease|pressed~0_combout\ : std_logic;
SIGNAL \swpd_decrease|pressed~q\ : std_logic;
SIGNAL \sw_in[2]~input_o\ : std_logic;
SIGNAL \swpd_increase|last~0_combout\ : std_logic;
SIGNAL \swpd_increase|last~q\ : std_logic;
SIGNAL \swpd_increase|pressed~0_combout\ : std_logic;
SIGNAL \swpd_increase|pressed~q\ : std_logic;
SIGNAL \blink_currtime[7]~14_combout\ : std_logic;
SIGNAL \sw_in[1]~input_o\ : std_logic;
SIGNAL \swpd_stopwatch|last~0_combout\ : std_logic;
SIGNAL \swpd_stopwatch|last~q\ : std_logic;
SIGNAL \swpd_stopwatch|pressed~0_combout\ : std_logic;
SIGNAL \swpd_stopwatch|pressed~q\ : std_logic;
SIGNAL \sw_in[0]~input_o\ : std_logic;
SIGNAL \swpd_start|last~0_combout\ : std_logic;
SIGNAL \swpd_start|last~q\ : std_logic;
SIGNAL \swpd_start|pressed~0_combout\ : std_logic;
SIGNAL \swpd_start|pressed~q\ : std_logic;
SIGNAL \blink_currtime[7]~13_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \blink_nextstate.ST_SETTIME~0_combout\ : std_logic;
SIGNAL \blink_nextstate.ST_SETTIME~1_combout\ : std_logic;
SIGNAL \blink_currtime[7]~16_combout\ : std_logic;
SIGNAL \paused~0_combout\ : std_logic;
SIGNAL \paused~1_combout\ : std_logic;
SIGNAL \paused~q\ : std_logic;
SIGNAL \currtick[0]~8_combout\ : std_logic;
SIGNAL \currtick[1]~14\ : std_logic;
SIGNAL \currtick[2]~15_combout\ : std_logic;
SIGNAL \state.ST_COUNT~_wirecell_combout\ : std_logic;
SIGNAL \currtick[7]~11_combout\ : std_logic;
SIGNAL \Selector44~14_combout\ : std_logic;
SIGNAL \settime[1]~19\ : std_logic;
SIGNAL \settime[2]~20_combout\ : std_logic;
SIGNAL \countup~0_combout\ : std_logic;
SIGNAL \countup~1_combout\ : std_logic;
SIGNAL \countup~q\ : std_logic;
SIGNAL \currtime[0]~9\ : std_logic;
SIGNAL \currtime[1]~12_combout\ : std_logic;
SIGNAL \blink_nextstate.ST_SETTIME~2_combout\ : std_logic;
SIGNAL \blink_nextstate.ST_SETTIME~3_combout\ : std_logic;
SIGNAL \currtime[7]~11_combout\ : std_logic;
SIGNAL \currtime[1]~13\ : std_logic;
SIGNAL \currtime[2]~14_combout\ : std_logic;
SIGNAL \settime[4]~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \swlpd_increase|output_counter~4_combout\ : std_logic;
SIGNAL \swlpd_increase|pressed_time[0]~8_combout\ : std_logic;
SIGNAL \swlpd_increase|pressed_time[2]~13\ : std_logic;
SIGNAL \swlpd_increase|pressed_time[3]~14_combout\ : std_logic;
SIGNAL \swlpd_increase|pressed_time[3]~15\ : std_logic;
SIGNAL \swlpd_increase|pressed_time[4]~17_combout\ : std_logic;
SIGNAL \swlpd_increase|pressed_time[4]~18\ : std_logic;
SIGNAL \swlpd_increase|pressed_time[5]~19_combout\ : std_logic;
SIGNAL \swlpd_increase|pressed_time[5]~20\ : std_logic;
SIGNAL \swlpd_increase|pressed_time[6]~21_combout\ : std_logic;
SIGNAL \swlpd_increase|pressed_time[6]~22\ : std_logic;
SIGNAL \swlpd_increase|pressed_time[7]~23_combout\ : std_logic;
SIGNAL \swlpd_increase|Equal0~1_combout\ : std_logic;
SIGNAL \swlpd_increase|pressed_time[4]~16_combout\ : std_logic;
SIGNAL \swlpd_increase|pressed_time[0]~9\ : std_logic;
SIGNAL \swlpd_increase|pressed_time[1]~10_combout\ : std_logic;
SIGNAL \swlpd_increase|pressed_time[1]~11\ : std_logic;
SIGNAL \swlpd_increase|pressed_time[2]~12_combout\ : std_logic;
SIGNAL \swlpd_increase|Equal0~0_combout\ : std_logic;
SIGNAL \swlpd_increase|pressed~1_combout\ : std_logic;
SIGNAL \swlpd_increase|output_counter~3_combout\ : std_logic;
SIGNAL \swlpd_increase|Add0~0_combout\ : std_logic;
SIGNAL \swlpd_increase|output_counter~0_combout\ : std_logic;
SIGNAL \swlpd_increase|output_counter~1_combout\ : std_logic;
SIGNAL \swlpd_increase|output_counter~2_combout\ : std_logic;
SIGNAL \swlpd_increase|Equal1~0_combout\ : std_logic;
SIGNAL \swlpd_increase|pressed~0_combout\ : std_logic;
SIGNAL \swlpd_increase|pressed~q\ : std_logic;
SIGNAL \settime[4]~16_combout\ : std_logic;
SIGNAL \settime_blink[3]~0_combout\ : std_logic;
SIGNAL \settime[4]~17_combout\ : std_logic;
SIGNAL \settime[2]~21\ : std_logic;
SIGNAL \settime[3]~22_combout\ : std_logic;
SIGNAL \currtime[2]~15\ : std_logic;
SIGNAL \currtime[3]~16_combout\ : std_logic;
SIGNAL \settime[3]~23\ : std_logic;
SIGNAL \settime[4]~24_combout\ : std_logic;
SIGNAL \currtime[3]~17\ : std_logic;
SIGNAL \currtime[4]~18_combout\ : std_logic;
SIGNAL \settime[4]~25\ : std_logic;
SIGNAL \settime[5]~26_combout\ : std_logic;
SIGNAL \currtime[4]~19\ : std_logic;
SIGNAL \currtime[5]~20_combout\ : std_logic;
SIGNAL \settime[5]~27\ : std_logic;
SIGNAL \settime[6]~28_combout\ : std_logic;
SIGNAL \currtime[5]~21\ : std_logic;
SIGNAL \currtime[6]~22_combout\ : std_logic;
SIGNAL \settime[6]~29\ : std_logic;
SIGNAL \settime[7]~30_combout\ : std_logic;
SIGNAL \currtime[6]~23\ : std_logic;
SIGNAL \currtime[7]~24_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Selector44~16_combout\ : std_logic;
SIGNAL \Selector44~15_combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \Selector44~12_combout\ : std_logic;
SIGNAL \Selector44~3_combout\ : std_logic;
SIGNAL \Selector44~7_combout\ : std_logic;
SIGNAL \Selector44~2_combout\ : std_logic;
SIGNAL \Selector44~11_combout\ : std_logic;
SIGNAL \Selector44~13_combout\ : std_logic;
SIGNAL \blink_nextstate.ST_COUNT~2_combout\ : std_logic;
SIGNAL \blink_nextstate.ST_SETTIME~4_combout\ : std_logic;
SIGNAL \blink_nextstate.ST_COUNT~4_combout\ : std_logic;
SIGNAL \blink_nextstate.ST_SETTIME~5_combout\ : std_logic;
SIGNAL \blink_nextstate.ST_SETTIME~6_combout\ : std_logic;
SIGNAL \blink_nextstate.ST_SETTIME~7_combout\ : std_logic;
SIGNAL \blink_nextstate.ST_COUNT~3_combout\ : std_logic;
SIGNAL \blink_nextstate.ST_COUNT~q\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector43~1_combout\ : std_logic;
SIGNAL \state.ST_SETTIME~q\ : std_logic;
SIGNAL \Selector44~8_combout\ : std_logic;
SIGNAL \currtick[7]~12_combout\ : std_logic;
SIGNAL \currtick[2]~16\ : std_logic;
SIGNAL \currtick[3]~17_combout\ : std_logic;
SIGNAL \currtick[3]~18\ : std_logic;
SIGNAL \currtick[4]~19_combout\ : std_logic;
SIGNAL \currtick[4]~20\ : std_logic;
SIGNAL \currtick[5]~21_combout\ : std_logic;
SIGNAL \currtick[5]~22\ : std_logic;
SIGNAL \currtick[6]~23_combout\ : std_logic;
SIGNAL \currtick[6]~24\ : std_logic;
SIGNAL \currtick[7]~25_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \currtick[1]~10_combout\ : std_logic;
SIGNAL \currtick[0]~9\ : std_logic;
SIGNAL \currtick[1]~13_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \settime[4]~10_combout\ : std_logic;
SIGNAL \Selector44~9_combout\ : std_logic;
SIGNAL \settime[4]~15_combout\ : std_logic;
SIGNAL \blink_settick[2]~0_combout\ : std_logic;
SIGNAL \blink_settick[2]~1_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~21_combout\ : std_logic;
SIGNAL \blink_currtick[2]~2_combout\ : std_logic;
SIGNAL \blink_currtime[7]~10_combout\ : std_logic;
SIGNAL \blink_currtime[7]~11_combout\ : std_logic;
SIGNAL \blink_currtime[7]~12_combout\ : std_logic;
SIGNAL \blink_currtick[2]~3_combout\ : std_logic;
SIGNAL \blink_currtick[2]~4_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \blink_nextstate.ST_SETTIME~0_wirecell_combout\ : std_logic;
SIGNAL \blink_currtick[1]~6_combout\ : std_logic;
SIGNAL \blink_currtick[1]~7_combout\ : std_logic;
SIGNAL \blink_currtick[1]~8_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~19_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \blink_currtick[2]~0_combout\ : std_logic;
SIGNAL \blink_currtick[2]~1_combout\ : std_logic;
SIGNAL \blink_currtick[2]~5_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add7~17_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \blink_currtime[7]~8_combout\ : std_logic;
SIGNAL \blink_currtime[7]~9_combout\ : std_logic;
SIGNAL \blink_currtime[7]~15_combout\ : std_logic;
SIGNAL \blink_currtime[0]~18\ : std_logic;
SIGNAL \blink_currtime[1]~19_combout\ : std_logic;
SIGNAL \blink_currtime[7]~13_wirecell_combout\ : std_logic;
SIGNAL \blink_currtime[1]~20\ : std_logic;
SIGNAL \blink_currtime[2]~21_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \blink_currtime[2]~22\ : std_logic;
SIGNAL \blink_currtime[3]~23_combout\ : std_logic;
SIGNAL \Selector29~0_wirecell_combout\ : std_logic;
SIGNAL \blink_currtime[3]~24\ : std_logic;
SIGNAL \blink_currtime[4]~25_combout\ : std_logic;
SIGNAL \blink_currtime[4]~26\ : std_logic;
SIGNAL \blink_currtime[5]~27_combout\ : std_logic;
SIGNAL \blink_currtime[5]~28\ : std_logic;
SIGNAL \blink_currtime[6]~29_combout\ : std_logic;
SIGNAL \blink_currtime[6]~30\ : std_logic;
SIGNAL \blink_currtime[7]~31_combout\ : std_logic;
SIGNAL \Selector44~5_combout\ : std_logic;
SIGNAL \Selector44~4_combout\ : std_logic;
SIGNAL \Selector44~6_combout\ : std_logic;
SIGNAL \Selector44~10_combout\ : std_logic;
SIGNAL \state.ST_COUNT~0_combout\ : std_logic;
SIGNAL \state.ST_COUNT~1_combout\ : std_logic;
SIGNAL \state.ST_COUNT~q\ : std_logic;
SIGNAL \currtime[1]~10_combout\ : std_logic;
SIGNAL \settime[0]~13\ : std_logic;
SIGNAL \settime[1]~18_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \settime[4]~32_combout\ : std_logic;
SIGNAL \Selector45~1_combout\ : std_logic;
SIGNAL \settime[4]~11_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector45~2_combout\ : std_logic;
SIGNAL \state.ST_BLINK~q\ : std_logic;
SIGNAL \blink_state~0_combout\ : std_logic;
SIGNAL \blink_state~q\ : std_logic;
SIGNAL \settime_blink~1_combout\ : std_logic;
SIGNAL \settime_blink~5_combout\ : std_logic;
SIGNAL \settime_blink~4_combout\ : std_logic;
SIGNAL \settime_blink~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \settime_blink~2_combout\ : std_logic;
SIGNAL \Selector78~1_combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \Selector78~2_combout\ : std_logic;
SIGNAL \display[2]~0_combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \Selector77~1_combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \Selector76~1_combout\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \Selector75~1_combout\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \Selector74~1_combout\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \Selector73~1_combout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \Selector72~1_combout\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \Selector71~1_combout\ : std_logic;
SIGNAL \swlpd_decrease|output_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \swlpd_decrease|pressed_time\ : std_logic_vector(7 DOWNTO 0);
SIGNAL settime_blink : std_logic_vector(3 DOWNTO 0);
SIGNAL settime : std_logic_vector(7 DOWNTO 0);
SIGNAL display : std_logic_vector(7 DOWNTO 0);
SIGNAL currtime : std_logic_vector(7 DOWNTO 0);
SIGNAL currtick : std_logic_vector(7 DOWNTO 0);
SIGNAL blink_settick : std_logic_vector(7 DOWNTO 0);
SIGNAL blink_currtime : std_logic_vector(7 DOWNTO 0);
SIGNAL blink_currtick : std_logic_vector(7 DOWNTO 0);
SIGNAL \tg1|ticks\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tg1|current\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tg1|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \swlpd_increase|pressed_time\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \swlpd_increase|output_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_state.ST_COUNT~q\ : std_logic;
SIGNAL \ALT_INV_state.ST_BLINK~q\ : std_logic;
SIGNAL ALT_INV_display : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
led_out <= ww_led_out;
ww_sw_in <= sw_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sw_in[4]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sw_in[4]~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\tick~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \tick~combout\);

\tg1|ticks[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \tg1|ticks\(0));
\ALT_INV_state.ST_COUNT~q\ <= NOT \state.ST_COUNT~q\;
\ALT_INV_state.ST_BLINK~q\ <= NOT \state.ST_BLINK~q\;
ALT_INV_display(7) <= NOT display(7);
ALT_INV_display(6) <= NOT display(6);
ALT_INV_display(5) <= NOT display(5);
ALT_INV_display(4) <= NOT display(4);
ALT_INV_display(3) <= NOT display(3);
ALT_INV_display(2) <= NOT display(2);
ALT_INV_display(1) <= NOT display(1);
ALT_INV_display(0) <= NOT display(0);

-- Location: IOOBUF_X33_Y25_N9
\led_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_display(0),
	devoe => ww_devoe,
	o => \led_out[0]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\led_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_display(1),
	devoe => ww_devoe,
	o => \led_out[1]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\led_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_display(2),
	devoe => ww_devoe,
	o => \led_out[2]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\led_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_display(3),
	devoe => ww_devoe,
	o => \led_out[3]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\led_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_display(4),
	devoe => ww_devoe,
	o => \led_out[4]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\led_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_display(5),
	devoe => ww_devoe,
	o => \led_out[5]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\led_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_display(6),
	devoe => ww_devoe,
	o => \led_out[6]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\led_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_display(7),
	devoe => ww_devoe,
	o => \led_out[7]~output_o\);

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

-- Location: LCCOMB_X21_Y22_N2
\tg1|high~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|high~0_combout\ = !\tg1|high~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tg1|high~q\,
	combout => \tg1|high~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\sw_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_in(4),
	o => \sw_in[4]~input_o\);

-- Location: CLKCTRL_G19
\sw_in[4]~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sw_in[4]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sw_in[4]~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y22_N0
\tg1|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~0_combout\ = \tg1|counter\(0) $ (VCC)
-- \tg1|Add0~1\ = CARRY(\tg1|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(0),
	datad => VCC,
	combout => \tg1|Add0~0_combout\,
	cout => \tg1|Add0~1\);

-- Location: FF_X19_Y22_N1
\tg1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~0_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(0));

-- Location: LCCOMB_X19_Y22_N2
\tg1|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~2_combout\ = (\tg1|counter\(1) & (!\tg1|Add0~1\)) # (!\tg1|counter\(1) & ((\tg1|Add0~1\) # (GND)))
-- \tg1|Add0~3\ = CARRY((!\tg1|Add0~1\) # (!\tg1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(1),
	datad => VCC,
	cin => \tg1|Add0~1\,
	combout => \tg1|Add0~2_combout\,
	cout => \tg1|Add0~3\);

-- Location: FF_X19_Y22_N3
\tg1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~2_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(1));

-- Location: LCCOMB_X19_Y22_N4
\tg1|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~4_combout\ = (\tg1|counter\(2) & (\tg1|Add0~3\ $ (GND))) # (!\tg1|counter\(2) & (!\tg1|Add0~3\ & VCC))
-- \tg1|Add0~5\ = CARRY((\tg1|counter\(2) & !\tg1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(2),
	datad => VCC,
	cin => \tg1|Add0~3\,
	combout => \tg1|Add0~4_combout\,
	cout => \tg1|Add0~5\);

-- Location: FF_X19_Y22_N5
\tg1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~4_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(2));

-- Location: LCCOMB_X19_Y22_N6
\tg1|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~6_combout\ = (\tg1|counter\(3) & (!\tg1|Add0~5\)) # (!\tg1|counter\(3) & ((\tg1|Add0~5\) # (GND)))
-- \tg1|Add0~7\ = CARRY((!\tg1|Add0~5\) # (!\tg1|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(3),
	datad => VCC,
	cin => \tg1|Add0~5\,
	combout => \tg1|Add0~6_combout\,
	cout => \tg1|Add0~7\);

-- Location: LCCOMB_X20_Y22_N20
\tg1|counter~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|counter~7_combout\ = (!\tg1|Equal0~10_combout\ & \tg1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tg1|Equal0~10_combout\,
	datac => \tg1|Add0~6_combout\,
	combout => \tg1|counter~7_combout\);

-- Location: FF_X20_Y22_N21
\tg1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|counter~7_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(3));

-- Location: LCCOMB_X19_Y22_N8
\tg1|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~8_combout\ = (\tg1|counter\(4) & (\tg1|Add0~7\ $ (GND))) # (!\tg1|counter\(4) & (!\tg1|Add0~7\ & VCC))
-- \tg1|Add0~9\ = CARRY((\tg1|counter\(4) & !\tg1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(4),
	datad => VCC,
	cin => \tg1|Add0~7\,
	combout => \tg1|Add0~8_combout\,
	cout => \tg1|Add0~9\);

-- Location: FF_X19_Y22_N9
\tg1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~8_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(4));

-- Location: LCCOMB_X19_Y22_N10
\tg1|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~10_combout\ = (\tg1|counter\(5) & (!\tg1|Add0~9\)) # (!\tg1|counter\(5) & ((\tg1|Add0~9\) # (GND)))
-- \tg1|Add0~11\ = CARRY((!\tg1|Add0~9\) # (!\tg1|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(5),
	datad => VCC,
	cin => \tg1|Add0~9\,
	combout => \tg1|Add0~10_combout\,
	cout => \tg1|Add0~11\);

-- Location: LCCOMB_X20_Y22_N18
\tg1|counter~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|counter~6_combout\ = (!\tg1|Equal0~10_combout\ & \tg1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tg1|Equal0~10_combout\,
	datad => \tg1|Add0~10_combout\,
	combout => \tg1|counter~6_combout\);

-- Location: FF_X20_Y22_N19
\tg1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|counter~6_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(5));

-- Location: LCCOMB_X19_Y22_N12
\tg1|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~12_combout\ = (\tg1|counter\(6) & (\tg1|Add0~11\ $ (GND))) # (!\tg1|counter\(6) & (!\tg1|Add0~11\ & VCC))
-- \tg1|Add0~13\ = CARRY((\tg1|counter\(6) & !\tg1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(6),
	datad => VCC,
	cin => \tg1|Add0~11\,
	combout => \tg1|Add0~12_combout\,
	cout => \tg1|Add0~13\);

-- Location: LCCOMB_X20_Y22_N12
\tg1|counter~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|counter~5_combout\ = (!\tg1|Equal0~10_combout\ & \tg1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tg1|Equal0~10_combout\,
	datad => \tg1|Add0~12_combout\,
	combout => \tg1|counter~5_combout\);

-- Location: FF_X20_Y22_N13
\tg1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|counter~5_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(6));

-- Location: LCCOMB_X19_Y22_N14
\tg1|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~14_combout\ = (\tg1|counter\(7) & (!\tg1|Add0~13\)) # (!\tg1|counter\(7) & ((\tg1|Add0~13\) # (GND)))
-- \tg1|Add0~15\ = CARRY((!\tg1|Add0~13\) # (!\tg1|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(7),
	datad => VCC,
	cin => \tg1|Add0~13\,
	combout => \tg1|Add0~14_combout\,
	cout => \tg1|Add0~15\);

-- Location: FF_X19_Y22_N15
\tg1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~14_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(7));

-- Location: LCCOMB_X19_Y22_N16
\tg1|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~16_combout\ = (\tg1|counter\(8) & (\tg1|Add0~15\ $ (GND))) # (!\tg1|counter\(8) & (!\tg1|Add0~15\ & VCC))
-- \tg1|Add0~17\ = CARRY((\tg1|counter\(8) & !\tg1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(8),
	datad => VCC,
	cin => \tg1|Add0~15\,
	combout => \tg1|Add0~16_combout\,
	cout => \tg1|Add0~17\);

-- Location: LCCOMB_X18_Y22_N14
\tg1|counter~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|counter~4_combout\ = (!\tg1|Equal0~10_combout\ & \tg1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tg1|Equal0~10_combout\,
	datad => \tg1|Add0~16_combout\,
	combout => \tg1|counter~4_combout\);

-- Location: FF_X18_Y22_N15
\tg1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|counter~4_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(8));

-- Location: LCCOMB_X19_Y22_N18
\tg1|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~18_combout\ = (\tg1|counter\(9) & (!\tg1|Add0~17\)) # (!\tg1|counter\(9) & ((\tg1|Add0~17\) # (GND)))
-- \tg1|Add0~19\ = CARRY((!\tg1|Add0~17\) # (!\tg1|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(9),
	datad => VCC,
	cin => \tg1|Add0~17\,
	combout => \tg1|Add0~18_combout\,
	cout => \tg1|Add0~19\);

-- Location: FF_X19_Y22_N19
\tg1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~18_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(9));

-- Location: LCCOMB_X19_Y22_N20
\tg1|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~20_combout\ = (\tg1|counter\(10) & (\tg1|Add0~19\ $ (GND))) # (!\tg1|counter\(10) & (!\tg1|Add0~19\ & VCC))
-- \tg1|Add0~21\ = CARRY((\tg1|counter\(10) & !\tg1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(10),
	datad => VCC,
	cin => \tg1|Add0~19\,
	combout => \tg1|Add0~20_combout\,
	cout => \tg1|Add0~21\);

-- Location: FF_X19_Y22_N21
\tg1|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~20_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(10));

-- Location: LCCOMB_X19_Y22_N22
\tg1|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~22_combout\ = (\tg1|counter\(11) & (!\tg1|Add0~21\)) # (!\tg1|counter\(11) & ((\tg1|Add0~21\) # (GND)))
-- \tg1|Add0~23\ = CARRY((!\tg1|Add0~21\) # (!\tg1|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(11),
	datad => VCC,
	cin => \tg1|Add0~21\,
	combout => \tg1|Add0~22_combout\,
	cout => \tg1|Add0~23\);

-- Location: LCCOMB_X18_Y22_N12
\tg1|counter~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|counter~3_combout\ = (!\tg1|Equal0~10_combout\ & \tg1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tg1|Equal0~10_combout\,
	datad => \tg1|Add0~22_combout\,
	combout => \tg1|counter~3_combout\);

-- Location: FF_X18_Y22_N13
\tg1|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|counter~3_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(11));

-- Location: LCCOMB_X19_Y22_N24
\tg1|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~24_combout\ = (\tg1|counter\(12) & (\tg1|Add0~23\ $ (GND))) # (!\tg1|counter\(12) & (!\tg1|Add0~23\ & VCC))
-- \tg1|Add0~25\ = CARRY((\tg1|counter\(12) & !\tg1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(12),
	datad => VCC,
	cin => \tg1|Add0~23\,
	combout => \tg1|Add0~24_combout\,
	cout => \tg1|Add0~25\);

-- Location: LCCOMB_X18_Y22_N8
\tg1|counter[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|counter[12]~feeder_combout\ = \tg1|Add0~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tg1|Add0~24_combout\,
	combout => \tg1|counter[12]~feeder_combout\);

-- Location: FF_X18_Y22_N9
\tg1|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|counter[12]~feeder_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(12));

-- Location: LCCOMB_X19_Y22_N26
\tg1|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~26_combout\ = (\tg1|counter\(13) & (!\tg1|Add0~25\)) # (!\tg1|counter\(13) & ((\tg1|Add0~25\) # (GND)))
-- \tg1|Add0~27\ = CARRY((!\tg1|Add0~25\) # (!\tg1|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(13),
	datad => VCC,
	cin => \tg1|Add0~25\,
	combout => \tg1|Add0~26_combout\,
	cout => \tg1|Add0~27\);

-- Location: LCCOMB_X18_Y22_N6
\tg1|counter[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|counter[13]~feeder_combout\ = \tg1|Add0~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tg1|Add0~26_combout\,
	combout => \tg1|counter[13]~feeder_combout\);

-- Location: FF_X18_Y22_N7
\tg1|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|counter[13]~feeder_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(13));

-- Location: LCCOMB_X19_Y22_N28
\tg1|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~28_combout\ = (\tg1|counter\(14) & (\tg1|Add0~27\ $ (GND))) # (!\tg1|counter\(14) & (!\tg1|Add0~27\ & VCC))
-- \tg1|Add0~29\ = CARRY((\tg1|counter\(14) & !\tg1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(14),
	datad => VCC,
	cin => \tg1|Add0~27\,
	combout => \tg1|Add0~28_combout\,
	cout => \tg1|Add0~29\);

-- Location: FF_X19_Y22_N29
\tg1|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~28_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(14));

-- Location: LCCOMB_X19_Y22_N30
\tg1|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~30_combout\ = (\tg1|counter\(15) & (!\tg1|Add0~29\)) # (!\tg1|counter\(15) & ((\tg1|Add0~29\) # (GND)))
-- \tg1|Add0~31\ = CARRY((!\tg1|Add0~29\) # (!\tg1|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(15),
	datad => VCC,
	cin => \tg1|Add0~29\,
	combout => \tg1|Add0~30_combout\,
	cout => \tg1|Add0~31\);

-- Location: LCCOMB_X18_Y22_N16
\tg1|counter~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|counter~2_combout\ = (\tg1|Add0~30_combout\ & !\tg1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tg1|Add0~30_combout\,
	datad => \tg1|Equal0~10_combout\,
	combout => \tg1|counter~2_combout\);

-- Location: FF_X18_Y22_N17
\tg1|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|counter~2_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(15));

-- Location: LCCOMB_X18_Y22_N18
\tg1|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Equal0~5_combout\ = (!\tg1|counter\(13) & (\tg1|counter\(15) & (!\tg1|counter\(12) & !\tg1|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(13),
	datab => \tg1|counter\(15),
	datac => \tg1|counter\(12),
	datad => \tg1|counter\(14),
	combout => \tg1|Equal0~5_combout\);

-- Location: LCCOMB_X20_Y22_N30
\tg1|Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Equal0~7_combout\ = (\tg1|counter\(6) & (\tg1|counter\(5) & (!\tg1|counter\(4) & !\tg1|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(6),
	datab => \tg1|counter\(5),
	datac => \tg1|counter\(4),
	datad => \tg1|counter\(7),
	combout => \tg1|Equal0~7_combout\);

-- Location: LCCOMB_X20_Y22_N24
\tg1|Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Equal0~8_combout\ = (\tg1|counter\(0) & (!\tg1|counter\(3) & (\tg1|counter\(2) & \tg1|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(0),
	datab => \tg1|counter\(3),
	datac => \tg1|counter\(2),
	datad => \tg1|counter\(1),
	combout => \tg1|Equal0~8_combout\);

-- Location: LCCOMB_X20_Y22_N8
\tg1|Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Equal0~9_combout\ = (\tg1|Equal0~7_combout\ & \tg1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tg1|Equal0~7_combout\,
	datad => \tg1|Equal0~8_combout\,
	combout => \tg1|Equal0~9_combout\);

-- Location: LCCOMB_X18_Y22_N28
\tg1|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Equal0~6_combout\ = (\tg1|counter\(11) & (\tg1|counter\(8) & (!\tg1|counter\(10) & !\tg1|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(11),
	datab => \tg1|counter\(8),
	datac => \tg1|counter\(10),
	datad => \tg1|counter\(9),
	combout => \tg1|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y21_N0
\tg1|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~32_combout\ = (\tg1|counter\(16) & (\tg1|Add0~31\ $ (GND))) # (!\tg1|counter\(16) & (!\tg1|Add0~31\ & VCC))
-- \tg1|Add0~33\ = CARRY((\tg1|counter\(16) & !\tg1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(16),
	datad => VCC,
	cin => \tg1|Add0~31\,
	combout => \tg1|Add0~32_combout\,
	cout => \tg1|Add0~33\);

-- Location: LCCOMB_X20_Y22_N16
\tg1|counter~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|counter~1_combout\ = (!\tg1|Equal0~10_combout\ & \tg1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tg1|Equal0~10_combout\,
	datad => \tg1|Add0~32_combout\,
	combout => \tg1|counter~1_combout\);

-- Location: FF_X20_Y22_N17
\tg1|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|counter~1_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(16));

-- Location: LCCOMB_X19_Y21_N2
\tg1|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~34_combout\ = (\tg1|counter\(17) & (!\tg1|Add0~33\)) # (!\tg1|counter\(17) & ((\tg1|Add0~33\) # (GND)))
-- \tg1|Add0~35\ = CARRY((!\tg1|Add0~33\) # (!\tg1|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(17),
	datad => VCC,
	cin => \tg1|Add0~33\,
	combout => \tg1|Add0~34_combout\,
	cout => \tg1|Add0~35\);

-- Location: FF_X19_Y21_N3
\tg1|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~34_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(17));

-- Location: LCCOMB_X19_Y21_N4
\tg1|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~36_combout\ = (\tg1|counter\(18) & (\tg1|Add0~35\ $ (GND))) # (!\tg1|counter\(18) & (!\tg1|Add0~35\ & VCC))
-- \tg1|Add0~37\ = CARRY((\tg1|counter\(18) & !\tg1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(18),
	datad => VCC,
	cin => \tg1|Add0~35\,
	combout => \tg1|Add0~36_combout\,
	cout => \tg1|Add0~37\);

-- Location: FF_X19_Y21_N5
\tg1|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~36_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(18));

-- Location: LCCOMB_X19_Y21_N6
\tg1|Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~38_combout\ = (\tg1|counter\(19) & (!\tg1|Add0~37\)) # (!\tg1|counter\(19) & ((\tg1|Add0~37\) # (GND)))
-- \tg1|Add0~39\ = CARRY((!\tg1|Add0~37\) # (!\tg1|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(19),
	datad => VCC,
	cin => \tg1|Add0~37\,
	combout => \tg1|Add0~38_combout\,
	cout => \tg1|Add0~39\);

-- Location: LCCOMB_X20_Y21_N0
\tg1|counter~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|counter~0_combout\ = (\tg1|Add0~38_combout\ & !\tg1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tg1|Add0~38_combout\,
	datad => \tg1|Equal0~10_combout\,
	combout => \tg1|counter~0_combout\);

-- Location: FF_X20_Y21_N1
\tg1|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|counter~0_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(19));

-- Location: LCCOMB_X19_Y21_N8
\tg1|Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~40_combout\ = (\tg1|counter\(20) & (\tg1|Add0~39\ $ (GND))) # (!\tg1|counter\(20) & (!\tg1|Add0~39\ & VCC))
-- \tg1|Add0~41\ = CARRY((\tg1|counter\(20) & !\tg1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(20),
	datad => VCC,
	cin => \tg1|Add0~39\,
	combout => \tg1|Add0~40_combout\,
	cout => \tg1|Add0~41\);

-- Location: FF_X19_Y21_N9
\tg1|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~40_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(20));

-- Location: LCCOMB_X19_Y21_N10
\tg1|Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~42_combout\ = (\tg1|counter\(21) & (!\tg1|Add0~41\)) # (!\tg1|counter\(21) & ((\tg1|Add0~41\) # (GND)))
-- \tg1|Add0~43\ = CARRY((!\tg1|Add0~41\) # (!\tg1|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(21),
	datad => VCC,
	cin => \tg1|Add0~41\,
	combout => \tg1|Add0~42_combout\,
	cout => \tg1|Add0~43\);

-- Location: FF_X19_Y21_N11
\tg1|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~42_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(21));

-- Location: LCCOMB_X19_Y21_N12
\tg1|Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~44_combout\ = (\tg1|counter\(22) & (\tg1|Add0~43\ $ (GND))) # (!\tg1|counter\(22) & (!\tg1|Add0~43\ & VCC))
-- \tg1|Add0~45\ = CARRY((\tg1|counter\(22) & !\tg1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(22),
	datad => VCC,
	cin => \tg1|Add0~43\,
	combout => \tg1|Add0~44_combout\,
	cout => \tg1|Add0~45\);

-- Location: FF_X19_Y21_N13
\tg1|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~44_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(22));

-- Location: LCCOMB_X19_Y21_N14
\tg1|Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~46_combout\ = (\tg1|counter\(23) & (!\tg1|Add0~45\)) # (!\tg1|counter\(23) & ((\tg1|Add0~45\) # (GND)))
-- \tg1|Add0~47\ = CARRY((!\tg1|Add0~45\) # (!\tg1|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(23),
	datad => VCC,
	cin => \tg1|Add0~45\,
	combout => \tg1|Add0~46_combout\,
	cout => \tg1|Add0~47\);

-- Location: FF_X19_Y21_N15
\tg1|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~46_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(23));

-- Location: LCCOMB_X19_Y21_N16
\tg1|Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~48_combout\ = (\tg1|counter\(24) & (\tg1|Add0~47\ $ (GND))) # (!\tg1|counter\(24) & (!\tg1|Add0~47\ & VCC))
-- \tg1|Add0~49\ = CARRY((\tg1|counter\(24) & !\tg1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(24),
	datad => VCC,
	cin => \tg1|Add0~47\,
	combout => \tg1|Add0~48_combout\,
	cout => \tg1|Add0~49\);

-- Location: FF_X19_Y21_N17
\tg1|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~48_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(24));

-- Location: LCCOMB_X19_Y21_N18
\tg1|Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~50_combout\ = (\tg1|counter\(25) & (!\tg1|Add0~49\)) # (!\tg1|counter\(25) & ((\tg1|Add0~49\) # (GND)))
-- \tg1|Add0~51\ = CARRY((!\tg1|Add0~49\) # (!\tg1|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(25),
	datad => VCC,
	cin => \tg1|Add0~49\,
	combout => \tg1|Add0~50_combout\,
	cout => \tg1|Add0~51\);

-- Location: FF_X19_Y21_N19
\tg1|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~50_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(25));

-- Location: LCCOMB_X19_Y21_N20
\tg1|Add0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~52_combout\ = (\tg1|counter\(26) & (\tg1|Add0~51\ $ (GND))) # (!\tg1|counter\(26) & (!\tg1|Add0~51\ & VCC))
-- \tg1|Add0~53\ = CARRY((\tg1|counter\(26) & !\tg1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(26),
	datad => VCC,
	cin => \tg1|Add0~51\,
	combout => \tg1|Add0~52_combout\,
	cout => \tg1|Add0~53\);

-- Location: FF_X19_Y21_N21
\tg1|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~52_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(26));

-- Location: LCCOMB_X19_Y21_N22
\tg1|Add0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~54_combout\ = (\tg1|counter\(27) & (!\tg1|Add0~53\)) # (!\tg1|counter\(27) & ((\tg1|Add0~53\) # (GND)))
-- \tg1|Add0~55\ = CARRY((!\tg1|Add0~53\) # (!\tg1|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(27),
	datad => VCC,
	cin => \tg1|Add0~53\,
	combout => \tg1|Add0~54_combout\,
	cout => \tg1|Add0~55\);

-- Location: FF_X19_Y21_N23
\tg1|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~54_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(27));

-- Location: LCCOMB_X20_Y22_N26
\tg1|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Equal0~1_combout\ = (!\tg1|counter\(25) & (!\tg1|counter\(24) & (!\tg1|counter\(27) & !\tg1|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(25),
	datab => \tg1|counter\(24),
	datac => \tg1|counter\(27),
	datad => \tg1|counter\(26),
	combout => \tg1|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y21_N24
\tg1|Add0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~56_combout\ = (\tg1|counter\(28) & (\tg1|Add0~55\ $ (GND))) # (!\tg1|counter\(28) & (!\tg1|Add0~55\ & VCC))
-- \tg1|Add0~57\ = CARRY((\tg1|counter\(28) & !\tg1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(28),
	datad => VCC,
	cin => \tg1|Add0~55\,
	combout => \tg1|Add0~56_combout\,
	cout => \tg1|Add0~57\);

-- Location: FF_X19_Y21_N25
\tg1|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~56_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(28));

-- Location: LCCOMB_X19_Y21_N26
\tg1|Add0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~58_combout\ = (\tg1|counter\(29) & (!\tg1|Add0~57\)) # (!\tg1|counter\(29) & ((\tg1|Add0~57\) # (GND)))
-- \tg1|Add0~59\ = CARRY((!\tg1|Add0~57\) # (!\tg1|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(29),
	datad => VCC,
	cin => \tg1|Add0~57\,
	combout => \tg1|Add0~58_combout\,
	cout => \tg1|Add0~59\);

-- Location: FF_X19_Y21_N27
\tg1|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~58_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(29));

-- Location: LCCOMB_X19_Y21_N28
\tg1|Add0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~60_combout\ = (\tg1|counter\(30) & (\tg1|Add0~59\ $ (GND))) # (!\tg1|counter\(30) & (!\tg1|Add0~59\ & VCC))
-- \tg1|Add0~61\ = CARRY((\tg1|counter\(30) & !\tg1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tg1|counter\(30),
	datad => VCC,
	cin => \tg1|Add0~59\,
	combout => \tg1|Add0~60_combout\,
	cout => \tg1|Add0~61\);

-- Location: FF_X19_Y21_N29
\tg1|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~60_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(30));

-- Location: LCCOMB_X19_Y21_N30
\tg1|Add0~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Add0~62_combout\ = \tg1|counter\(31) $ (\tg1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(31),
	cin => \tg1|Add0~61\,
	combout => \tg1|Add0~62_combout\);

-- Location: FF_X19_Y21_N31
\tg1|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|Add0~62_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|counter\(31));

-- Location: LCCOMB_X20_Y22_N2
\tg1|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Equal0~0_combout\ = (!\tg1|counter\(29) & (!\tg1|counter\(28) & (!\tg1|counter\(31) & !\tg1|counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(29),
	datab => \tg1|counter\(28),
	datac => \tg1|counter\(31),
	datad => \tg1|counter\(30),
	combout => \tg1|Equal0~0_combout\);

-- Location: LCCOMB_X20_Y22_N22
\tg1|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Equal0~2_combout\ = (!\tg1|counter\(23) & (!\tg1|counter\(22) & (!\tg1|counter\(21) & !\tg1|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(23),
	datab => \tg1|counter\(22),
	datac => \tg1|counter\(21),
	datad => \tg1|counter\(20),
	combout => \tg1|Equal0~2_combout\);

-- Location: LCCOMB_X20_Y22_N28
\tg1|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Equal0~3_combout\ = (\tg1|counter\(19) & (\tg1|counter\(16) & (!\tg1|counter\(18) & !\tg1|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|counter\(19),
	datab => \tg1|counter\(16),
	datac => \tg1|counter\(18),
	datad => \tg1|counter\(17),
	combout => \tg1|Equal0~3_combout\);

-- Location: LCCOMB_X20_Y22_N6
\tg1|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Equal0~4_combout\ = (\tg1|Equal0~1_combout\ & (\tg1|Equal0~0_combout\ & (\tg1|Equal0~2_combout\ & \tg1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|Equal0~1_combout\,
	datab => \tg1|Equal0~0_combout\,
	datac => \tg1|Equal0~2_combout\,
	datad => \tg1|Equal0~3_combout\,
	combout => \tg1|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y22_N14
\tg1|Equal0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|Equal0~10_combout\ = (\tg1|Equal0~5_combout\ & (\tg1|Equal0~9_combout\ & (\tg1|Equal0~6_combout\ & \tg1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|Equal0~5_combout\,
	datab => \tg1|Equal0~9_combout\,
	datac => \tg1|Equal0~6_combout\,
	datad => \tg1|Equal0~4_combout\,
	combout => \tg1|Equal0~10_combout\);

-- Location: FF_X21_Y22_N3
\tg1|high\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|high~0_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \tg1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|high~q\);

-- Location: LCCOMB_X21_Y22_N8
\tg1|current[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|current[3]~0_combout\ = (\tg1|high~q\ & \tg1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tg1|high~q\,
	datad => \tg1|Equal0~10_combout\,
	combout => \tg1|current[3]~0_combout\);

-- Location: FF_X21_Y22_N9
\tg1|current[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tg1|current\(1),
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \tg1|current[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|current\(2));

-- Location: LCCOMB_X21_Y22_N28
\tg1|current[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|current[3]~feeder_combout\ = \tg1|current\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tg1|current\(2),
	combout => \tg1|current[3]~feeder_combout\);

-- Location: FF_X21_Y22_N29
\tg1|current[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|current[3]~feeder_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \tg1|current[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|current\(3));

-- Location: LCCOMB_X21_Y22_N0
\tg1|current[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|current[0]~2_combout\ = !\tg1|current\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tg1|current\(3),
	combout => \tg1|current[0]~2_combout\);

-- Location: FF_X21_Y22_N1
\tg1|current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|current[0]~2_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \tg1|current[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|current\(0));

-- Location: LCCOMB_X21_Y22_N14
\tg1|current[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|current[1]~1_combout\ = !\tg1|current\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tg1|current\(0),
	combout => \tg1|current[1]~1_combout\);

-- Location: FF_X21_Y22_N15
\tg1|current[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|current[1]~1_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \tg1|current[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|current\(1));

-- Location: LCCOMB_X22_Y22_N18
\tg1|ticks~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|ticks~0_combout\ = (!\tg1|high~q\ & \tg1|current\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|high~q\,
	datad => \tg1|current\(1),
	combout => \tg1|ticks~0_combout\);

-- Location: FF_X22_Y22_N19
\tg1|ticks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tg1|ticks~0_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \tg1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|ticks\(1));

-- Location: LCCOMB_X20_Y22_N4
\tg1|ticks~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|ticks~1_combout\ = (\tg1|current\(2) & !\tg1|high~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tg1|current\(2),
	datad => \tg1|high~q\,
	combout => \tg1|ticks~1_combout\);

-- Location: FF_X20_Y22_N5
\tg1|ticks[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \tg1|ticks~1_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \tg1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|ticks\(2));

-- Location: LCCOMB_X21_Y22_N10
\tg1|ticks~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|ticks~2_combout\ = (\tg1|current\(3) & !\tg1|high~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tg1|current\(3),
	datad => \tg1|high~q\,
	combout => \tg1|ticks~2_combout\);

-- Location: FF_X20_Y22_N1
\tg1|ticks[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \tg1|ticks~2_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \tg1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|ticks\(3));

-- Location: LCCOMB_X21_Y22_N4
\tg1|ticks~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \tg1|ticks~3_combout\ = (!\tg1|current\(0) & !\tg1|high~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tg1|current\(0),
	datad => \tg1|high~q\,
	combout => \tg1|ticks~3_combout\);

-- Location: FF_X21_Y22_N5
\tg1|ticks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tg1|ticks~3_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \tg1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tg1|ticks\(0));

-- Location: LCCOMB_X20_Y22_N0
tick : cycloneiv_lcell_comb
-- Equation(s):
-- \tick~combout\ = LCELL((\tg1|ticks\(1)) # ((\tg1|ticks\(2)) # ((\tg1|ticks\(3)) # (\tg1|ticks\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tg1|ticks\(1),
	datab => \tg1|ticks\(2),
	datac => \tg1|ticks\(3),
	datad => \tg1|ticks\(0),
	combout => \tick~combout\);

-- Location: CLKCTRL_G11
\tick~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tick~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tick~clkctrl_outclk\);

-- Location: CLKCTRL_G12
\tg1|ticks[0]~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \tg1|ticks[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \tg1|ticks[0]~clkctrl_outclk\);

-- Location: IOIBUF_X33_Y24_N1
\sw_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_in(3),
	o => \sw_in[3]~input_o\);

-- Location: LCCOMB_X22_Y23_N20
\swlpd_decrease|output_counter~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|output_counter~4_combout\ = (!\sw_in[3]~input_o\ & (!\swlpd_decrease|output_counter\(0) & \swlpd_decrease|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_in[3]~input_o\,
	datac => \swlpd_decrease|output_counter\(0),
	datad => \swlpd_decrease|Equal1~0_combout\,
	combout => \swlpd_decrease|output_counter~4_combout\);

-- Location: LCCOMB_X24_Y23_N12
\swlpd_decrease|pressed_time[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|pressed_time[0]~8_combout\ = \swlpd_decrease|pressed_time\(0) $ (VCC)
-- \swlpd_decrease|pressed_time[0]~9\ = CARRY(\swlpd_decrease|pressed_time\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_decrease|pressed_time\(0),
	datad => VCC,
	combout => \swlpd_decrease|pressed_time[0]~8_combout\,
	cout => \swlpd_decrease|pressed_time[0]~9\);

-- Location: LCCOMB_X24_Y23_N14
\swlpd_decrease|pressed_time[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|pressed_time[1]~10_combout\ = (\swlpd_decrease|pressed_time\(1) & (!\swlpd_decrease|pressed_time[0]~9\)) # (!\swlpd_decrease|pressed_time\(1) & ((\swlpd_decrease|pressed_time[0]~9\) # (GND)))
-- \swlpd_decrease|pressed_time[1]~11\ = CARRY((!\swlpd_decrease|pressed_time[0]~9\) # (!\swlpd_decrease|pressed_time\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \swlpd_decrease|pressed_time\(1),
	datad => VCC,
	cin => \swlpd_decrease|pressed_time[0]~9\,
	combout => \swlpd_decrease|pressed_time[1]~10_combout\,
	cout => \swlpd_decrease|pressed_time[1]~11\);

-- Location: FF_X24_Y23_N15
\swlpd_decrease|pressed_time[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_decrease|pressed_time[1]~10_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \sw_in[3]~input_o\,
	ena => \swlpd_decrease|pressed_time[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_decrease|pressed_time\(1));

-- Location: LCCOMB_X24_Y23_N16
\swlpd_decrease|pressed_time[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|pressed_time[2]~12_combout\ = (\swlpd_decrease|pressed_time\(2) & (\swlpd_decrease|pressed_time[1]~11\ $ (GND))) # (!\swlpd_decrease|pressed_time\(2) & (!\swlpd_decrease|pressed_time[1]~11\ & VCC))
-- \swlpd_decrease|pressed_time[2]~13\ = CARRY((\swlpd_decrease|pressed_time\(2) & !\swlpd_decrease|pressed_time[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \swlpd_decrease|pressed_time\(2),
	datad => VCC,
	cin => \swlpd_decrease|pressed_time[1]~11\,
	combout => \swlpd_decrease|pressed_time[2]~12_combout\,
	cout => \swlpd_decrease|pressed_time[2]~13\);

-- Location: FF_X24_Y23_N17
\swlpd_decrease|pressed_time[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_decrease|pressed_time[2]~12_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \sw_in[3]~input_o\,
	ena => \swlpd_decrease|pressed_time[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_decrease|pressed_time\(2));

-- Location: LCCOMB_X24_Y23_N18
\swlpd_decrease|pressed_time[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|pressed_time[3]~14_combout\ = (\swlpd_decrease|pressed_time\(3) & (!\swlpd_decrease|pressed_time[2]~13\)) # (!\swlpd_decrease|pressed_time\(3) & ((\swlpd_decrease|pressed_time[2]~13\) # (GND)))
-- \swlpd_decrease|pressed_time[3]~15\ = CARRY((!\swlpd_decrease|pressed_time[2]~13\) # (!\swlpd_decrease|pressed_time\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \swlpd_decrease|pressed_time\(3),
	datad => VCC,
	cin => \swlpd_decrease|pressed_time[2]~13\,
	combout => \swlpd_decrease|pressed_time[3]~14_combout\,
	cout => \swlpd_decrease|pressed_time[3]~15\);

-- Location: FF_X24_Y23_N19
\swlpd_decrease|pressed_time[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_decrease|pressed_time[3]~14_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \sw_in[3]~input_o\,
	ena => \swlpd_decrease|pressed_time[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_decrease|pressed_time\(3));

-- Location: LCCOMB_X24_Y23_N20
\swlpd_decrease|pressed_time[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|pressed_time[4]~17_combout\ = (\swlpd_decrease|pressed_time\(4) & (\swlpd_decrease|pressed_time[3]~15\ $ (GND))) # (!\swlpd_decrease|pressed_time\(4) & (!\swlpd_decrease|pressed_time[3]~15\ & VCC))
-- \swlpd_decrease|pressed_time[4]~18\ = CARRY((\swlpd_decrease|pressed_time\(4) & !\swlpd_decrease|pressed_time[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \swlpd_decrease|pressed_time\(4),
	datad => VCC,
	cin => \swlpd_decrease|pressed_time[3]~15\,
	combout => \swlpd_decrease|pressed_time[4]~17_combout\,
	cout => \swlpd_decrease|pressed_time[4]~18\);

-- Location: FF_X24_Y23_N21
\swlpd_decrease|pressed_time[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_decrease|pressed_time[4]~17_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \sw_in[3]~input_o\,
	ena => \swlpd_decrease|pressed_time[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_decrease|pressed_time\(4));

-- Location: LCCOMB_X24_Y23_N22
\swlpd_decrease|pressed_time[5]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|pressed_time[5]~19_combout\ = (\swlpd_decrease|pressed_time\(5) & (!\swlpd_decrease|pressed_time[4]~18\)) # (!\swlpd_decrease|pressed_time\(5) & ((\swlpd_decrease|pressed_time[4]~18\) # (GND)))
-- \swlpd_decrease|pressed_time[5]~20\ = CARRY((!\swlpd_decrease|pressed_time[4]~18\) # (!\swlpd_decrease|pressed_time\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_decrease|pressed_time\(5),
	datad => VCC,
	cin => \swlpd_decrease|pressed_time[4]~18\,
	combout => \swlpd_decrease|pressed_time[5]~19_combout\,
	cout => \swlpd_decrease|pressed_time[5]~20\);

-- Location: FF_X24_Y23_N23
\swlpd_decrease|pressed_time[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_decrease|pressed_time[5]~19_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \sw_in[3]~input_o\,
	ena => \swlpd_decrease|pressed_time[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_decrease|pressed_time\(5));

-- Location: LCCOMB_X24_Y23_N24
\swlpd_decrease|pressed_time[6]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|pressed_time[6]~21_combout\ = (\swlpd_decrease|pressed_time\(6) & (\swlpd_decrease|pressed_time[5]~20\ $ (GND))) # (!\swlpd_decrease|pressed_time\(6) & (!\swlpd_decrease|pressed_time[5]~20\ & VCC))
-- \swlpd_decrease|pressed_time[6]~22\ = CARRY((\swlpd_decrease|pressed_time\(6) & !\swlpd_decrease|pressed_time[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \swlpd_decrease|pressed_time\(6),
	datad => VCC,
	cin => \swlpd_decrease|pressed_time[5]~20\,
	combout => \swlpd_decrease|pressed_time[6]~21_combout\,
	cout => \swlpd_decrease|pressed_time[6]~22\);

-- Location: FF_X24_Y23_N25
\swlpd_decrease|pressed_time[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_decrease|pressed_time[6]~21_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \sw_in[3]~input_o\,
	ena => \swlpd_decrease|pressed_time[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_decrease|pressed_time\(6));

-- Location: LCCOMB_X24_Y23_N26
\swlpd_decrease|pressed_time[7]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|pressed_time[7]~23_combout\ = \swlpd_decrease|pressed_time\(7) $ (\swlpd_decrease|pressed_time[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_decrease|pressed_time\(7),
	cin => \swlpd_decrease|pressed_time[6]~22\,
	combout => \swlpd_decrease|pressed_time[7]~23_combout\);

-- Location: FF_X24_Y23_N27
\swlpd_decrease|pressed_time[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_decrease|pressed_time[7]~23_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \sw_in[3]~input_o\,
	ena => \swlpd_decrease|pressed_time[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_decrease|pressed_time\(7));

-- Location: LCCOMB_X24_Y23_N6
\swlpd_decrease|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|Equal0~1_combout\ = (!\swlpd_decrease|pressed_time\(7) & (!\swlpd_decrease|pressed_time\(6) & (\swlpd_decrease|pressed_time\(5) & !\swlpd_decrease|pressed_time\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_decrease|pressed_time\(7),
	datab => \swlpd_decrease|pressed_time\(6),
	datac => \swlpd_decrease|pressed_time\(5),
	datad => \swlpd_decrease|pressed_time\(4),
	combout => \swlpd_decrease|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y23_N0
\swlpd_decrease|pressed_time[0]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|pressed_time[0]~16_combout\ = ((\sw_in[3]~input_o\) # (!\swlpd_decrease|Equal0~0_combout\)) # (!\swlpd_decrease|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_decrease|Equal0~1_combout\,
	datac => \swlpd_decrease|Equal0~0_combout\,
	datad => \sw_in[3]~input_o\,
	combout => \swlpd_decrease|pressed_time[0]~16_combout\);

-- Location: FF_X24_Y23_N13
\swlpd_decrease|pressed_time[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_decrease|pressed_time[0]~8_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \sw_in[3]~input_o\,
	ena => \swlpd_decrease|pressed_time[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_decrease|pressed_time\(0));

-- Location: LCCOMB_X24_Y23_N4
\swlpd_decrease|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|Equal0~0_combout\ = (!\swlpd_decrease|pressed_time\(0) & (!\swlpd_decrease|pressed_time\(2) & (!\swlpd_decrease|pressed_time\(1) & \swlpd_decrease|pressed_time\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_decrease|pressed_time\(0),
	datab => \swlpd_decrease|pressed_time\(2),
	datac => \swlpd_decrease|pressed_time\(1),
	datad => \swlpd_decrease|pressed_time\(3),
	combout => \swlpd_decrease|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y23_N26
\swlpd_decrease|pressed~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|pressed~1_combout\ = (\sw_in[3]~input_o\) # ((\swlpd_decrease|Equal0~0_combout\ & \swlpd_decrease|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_decrease|Equal0~0_combout\,
	datac => \sw_in[3]~input_o\,
	datad => \swlpd_decrease|Equal0~1_combout\,
	combout => \swlpd_decrease|pressed~1_combout\);

-- Location: FF_X22_Y23_N21
\swlpd_decrease|output_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_decrease|output_counter~4_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \swlpd_decrease|pressed~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_decrease|output_counter\(0));

-- Location: LCCOMB_X22_Y23_N22
\swlpd_decrease|output_counter~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|output_counter~3_combout\ = (!\sw_in[3]~input_o\ & (\swlpd_decrease|Equal1~0_combout\ & (\swlpd_decrease|output_counter\(0) $ (\swlpd_decrease|output_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_in[3]~input_o\,
	datab => \swlpd_decrease|output_counter\(0),
	datac => \swlpd_decrease|output_counter\(1),
	datad => \swlpd_decrease|Equal1~0_combout\,
	combout => \swlpd_decrease|output_counter~3_combout\);

-- Location: FF_X22_Y23_N23
\swlpd_decrease|output_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_decrease|output_counter~3_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \swlpd_decrease|pressed~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_decrease|output_counter\(1));

-- Location: LCCOMB_X22_Y23_N16
\swlpd_decrease|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|Add0~0_combout\ = \swlpd_decrease|output_counter\(3) $ (((!\swlpd_decrease|output_counter\(2) & (\swlpd_decrease|output_counter\(0) & \swlpd_decrease|output_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_decrease|output_counter\(2),
	datab => \swlpd_decrease|output_counter\(0),
	datac => \swlpd_decrease|output_counter\(1),
	datad => \swlpd_decrease|output_counter\(3),
	combout => \swlpd_decrease|Add0~0_combout\);

-- Location: LCCOMB_X22_Y23_N2
\swlpd_decrease|output_counter~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|output_counter~0_combout\ = (\swlpd_decrease|Equal1~0_combout\ & (!\sw_in[3]~input_o\ & \swlpd_decrease|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_decrease|Equal1~0_combout\,
	datac => \sw_in[3]~input_o\,
	datad => \swlpd_decrease|Add0~0_combout\,
	combout => \swlpd_decrease|output_counter~0_combout\);

-- Location: FF_X22_Y23_N3
\swlpd_decrease|output_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_decrease|output_counter~0_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \swlpd_decrease|pressed~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_decrease|output_counter\(3));

-- Location: LCCOMB_X22_Y23_N18
\swlpd_decrease|output_counter~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|output_counter~1_combout\ = (\swlpd_decrease|output_counter\(0) & (\swlpd_decrease|output_counter\(2) $ ((!\swlpd_decrease|output_counter\(1))))) # (!\swlpd_decrease|output_counter\(0) & (!\swlpd_decrease|output_counter\(2) & 
-- ((\swlpd_decrease|output_counter\(1)) # (\swlpd_decrease|output_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_decrease|output_counter\(2),
	datab => \swlpd_decrease|output_counter\(0),
	datac => \swlpd_decrease|output_counter\(1),
	datad => \swlpd_decrease|output_counter\(3),
	combout => \swlpd_decrease|output_counter~1_combout\);

-- Location: LCCOMB_X22_Y23_N12
\swlpd_decrease|output_counter~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|output_counter~2_combout\ = (!\sw_in[3]~input_o\ & !\swlpd_decrease|output_counter~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw_in[3]~input_o\,
	datad => \swlpd_decrease|output_counter~1_combout\,
	combout => \swlpd_decrease|output_counter~2_combout\);

-- Location: FF_X22_Y23_N13
\swlpd_decrease|output_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_decrease|output_counter~2_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \swlpd_decrease|pressed~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_decrease|output_counter\(2));

-- Location: LCCOMB_X22_Y23_N10
\swlpd_decrease|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|Equal1~0_combout\ = (\swlpd_decrease|output_counter\(2)) # ((\swlpd_decrease|output_counter\(0)) # ((\swlpd_decrease|output_counter\(1)) # (\swlpd_decrease|output_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_decrease|output_counter\(2),
	datab => \swlpd_decrease|output_counter\(0),
	datac => \swlpd_decrease|output_counter\(1),
	datad => \swlpd_decrease|output_counter\(3),
	combout => \swlpd_decrease|Equal1~0_combout\);

-- Location: LCCOMB_X22_Y23_N0
\swlpd_decrease|pressed~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_decrease|pressed~0_combout\ = (!\sw_in[3]~input_o\ & !\swlpd_decrease|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw_in[3]~input_o\,
	datad => \swlpd_decrease|Equal1~0_combout\,
	combout => \swlpd_decrease|pressed~0_combout\);

-- Location: FF_X22_Y23_N1
\swlpd_decrease|pressed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_decrease|pressed~0_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \swlpd_decrease|pressed~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_decrease|pressed~q\);

-- Location: LCCOMB_X23_Y21_N8
\settime[0]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime[0]~12_combout\ = settime(0) $ (VCC)
-- \settime[0]~13\ = CARRY(settime(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => settime(0),
	datad => VCC,
	combout => \settime[0]~12_combout\,
	cout => \settime[0]~13\);

-- Location: LCCOMB_X24_Y20_N14
\currtime[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtime[0]~8_combout\ = currtime(0) $ (VCC)
-- \currtime[0]~9\ = CARRY(currtime(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => currtime(0),
	datad => VCC,
	combout => \currtime[0]~8_combout\,
	cout => \currtime[0]~9\);

-- Location: LCCOMB_X25_Y22_N14
\blink_currtime[0]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[0]~17_combout\ = blink_currtime(0) $ (VCC)
-- \blink_currtime[0]~18\ = CARRY(blink_currtime(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => blink_currtime(0),
	datad => VCC,
	combout => \blink_currtime[0]~17_combout\,
	cout => \blink_currtime[0]~18\);

-- Location: LCCOMB_X24_Y20_N10
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

-- Location: LCCOMB_X23_Y23_N12
\swpd_decrease|last~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swpd_decrease|last~0_combout\ = !\sw_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw_in[3]~input_o\,
	combout => \swpd_decrease|last~0_combout\);

-- Location: FF_X23_Y23_N13
\swpd_decrease|last\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swpd_decrease|last~0_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swpd_decrease|last~q\);

-- Location: LCCOMB_X23_Y23_N30
\swpd_decrease|pressed~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swpd_decrease|pressed~0_combout\ = (!\swpd_decrease|last~q\ & !\sw_in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swpd_decrease|last~q\,
	datac => \sw_in[3]~input_o\,
	combout => \swpd_decrease|pressed~0_combout\);

-- Location: FF_X23_Y23_N31
\swpd_decrease|pressed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swpd_decrease|pressed~0_combout\,
	ena => \sw_in[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swpd_decrease|pressed~q\);

-- Location: IOIBUF_X33_Y24_N8
\sw_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_in(2),
	o => \sw_in[2]~input_o\);

-- Location: LCCOMB_X23_Y23_N22
\swpd_increase|last~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swpd_increase|last~0_combout\ = !\sw_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw_in[2]~input_o\,
	combout => \swpd_increase|last~0_combout\);

-- Location: FF_X23_Y23_N23
\swpd_increase|last\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swpd_increase|last~0_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swpd_increase|last~q\);

-- Location: LCCOMB_X23_Y23_N28
\swpd_increase|pressed~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swpd_increase|pressed~0_combout\ = (!\swpd_increase|last~q\ & !\sw_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \swpd_increase|last~q\,
	datad => \sw_in[2]~input_o\,
	combout => \swpd_increase|pressed~0_combout\);

-- Location: FF_X23_Y23_N29
\swpd_increase|pressed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swpd_increase|pressed~0_combout\,
	ena => \sw_in[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swpd_increase|pressed~q\);

-- Location: LCCOMB_X22_Y22_N16
\blink_currtime[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[7]~14_combout\ = (!\state.ST_BLINK~q\ & (((!\swpd_decrease|pressed~q\ & !\swpd_increase|pressed~q\)) # (!\state.ST_COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swpd_decrease|pressed~q\,
	datab => \state.ST_BLINK~q\,
	datac => \swpd_increase|pressed~q\,
	datad => \state.ST_COUNT~q\,
	combout => \blink_currtime[7]~14_combout\);

-- Location: IOIBUF_X24_Y31_N1
\sw_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_in(1),
	o => \sw_in[1]~input_o\);

-- Location: LCCOMB_X23_Y23_N20
\swpd_stopwatch|last~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swpd_stopwatch|last~0_combout\ = !\sw_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw_in[1]~input_o\,
	combout => \swpd_stopwatch|last~0_combout\);

-- Location: FF_X23_Y23_N21
\swpd_stopwatch|last\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swpd_stopwatch|last~0_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swpd_stopwatch|last~q\);

-- Location: LCCOMB_X23_Y23_N18
\swpd_stopwatch|pressed~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swpd_stopwatch|pressed~0_combout\ = (!\swpd_stopwatch|last~q\ & !\sw_in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \swpd_stopwatch|last~q\,
	datad => \sw_in[1]~input_o\,
	combout => \swpd_stopwatch|pressed~0_combout\);

-- Location: FF_X23_Y23_N19
\swpd_stopwatch|pressed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swpd_stopwatch|pressed~0_combout\,
	ena => \sw_in[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swpd_stopwatch|pressed~q\);

-- Location: IOIBUF_X20_Y31_N8
\sw_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_in(0),
	o => \sw_in[0]~input_o\);

-- Location: LCCOMB_X23_Y23_N14
\swpd_start|last~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swpd_start|last~0_combout\ = !\sw_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw_in[0]~input_o\,
	combout => \swpd_start|last~0_combout\);

-- Location: FF_X23_Y23_N15
\swpd_start|last\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swpd_start|last~0_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swpd_start|last~q\);

-- Location: LCCOMB_X23_Y23_N8
\swpd_start|pressed~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swpd_start|pressed~0_combout\ = (!\sw_in[0]~input_o\ & !\swpd_start|last~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_in[0]~input_o\,
	datac => \swpd_start|last~q\,
	combout => \swpd_start|pressed~0_combout\);

-- Location: FF_X23_Y23_N9
\swpd_start|pressed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swpd_start|pressed~0_combout\,
	ena => \sw_in[4]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swpd_start|pressed~q\);

-- Location: LCCOMB_X23_Y20_N26
\blink_currtime[7]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[7]~13_combout\ = (!\swpd_start|pressed~q\ & ((\state.ST_COUNT~q\) # (!\swpd_stopwatch|pressed~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_COUNT~q\,
	datab => \swpd_stopwatch|pressed~q\,
	datac => \swpd_start|pressed~q\,
	combout => \blink_currtime[7]~13_combout\);

-- Location: LCCOMB_X22_Y22_N10
\Selector29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\swpd_start|pressed~q\) # (((\swpd_increase|pressed~q\) # (\swpd_decrease|pressed~q\)) # (!\state.ST_COUNT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swpd_start|pressed~q\,
	datab => \state.ST_COUNT~q\,
	datac => \swpd_increase|pressed~q\,
	datad => \swpd_decrease|pressed~q\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X23_Y22_N26
\blink_nextstate.ST_SETTIME~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_nextstate.ST_SETTIME~0_combout\ = (!\swpd_decrease|pressed~q\ & (!\swpd_increase|pressed~q\ & !\swpd_start|pressed~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swpd_decrease|pressed~q\,
	datac => \swpd_increase|pressed~q\,
	datad => \swpd_start|pressed~q\,
	combout => \blink_nextstate.ST_SETTIME~0_combout\);

-- Location: LCCOMB_X23_Y23_N24
\blink_nextstate.ST_SETTIME~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_nextstate.ST_SETTIME~1_combout\ = (\swpd_start|pressed~q\) # (\swpd_stopwatch|pressed~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \swpd_start|pressed~q\,
	datad => \swpd_stopwatch|pressed~q\,
	combout => \blink_nextstate.ST_SETTIME~1_combout\);

-- Location: LCCOMB_X22_Y22_N4
\blink_currtime[7]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[7]~16_combout\ = (\sw_in[4]~input_o\ & \tg1|ticks\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_in[4]~input_o\,
	datac => \tg1|ticks\(1),
	combout => \blink_currtime[7]~16_combout\);

-- Location: LCCOMB_X22_Y22_N8
\paused~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \paused~0_combout\ = (!\state.ST_BLINK~q\ & (\blink_currtime[7]~16_combout\ & ((\blink_nextstate.ST_SETTIME~1_combout\) # (\state.ST_COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink_nextstate.ST_SETTIME~1_combout\,
	datab => \state.ST_BLINK~q\,
	datac => \state.ST_COUNT~q\,
	datad => \blink_currtime[7]~16_combout\,
	combout => \paused~0_combout\);

-- Location: LCCOMB_X23_Y22_N0
\paused~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \paused~1_combout\ = (\paused~0_combout\ & (\state.ST_COUNT~q\ & (\paused~q\ $ (\swpd_start|pressed~q\)))) # (!\paused~0_combout\ & (((\paused~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \paused~0_combout\,
	datab => \state.ST_COUNT~q\,
	datac => \paused~q\,
	datad => \swpd_start|pressed~q\,
	combout => \paused~1_combout\);

-- Location: FF_X23_Y22_N1
paused : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \paused~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \paused~q\);

-- Location: LCCOMB_X22_Y20_N4
\currtick[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtick[0]~8_combout\ = currtick(0) $ (VCC)
-- \currtick[0]~9\ = CARRY(currtick(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currtick(0),
	datad => VCC,
	combout => \currtick[0]~8_combout\,
	cout => \currtick[0]~9\);

-- Location: LCCOMB_X22_Y20_N6
\currtick[1]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtick[1]~13_combout\ = (currtick(1) & (\currtick[0]~9\ & VCC)) # (!currtick(1) & (!\currtick[0]~9\))
-- \currtick[1]~14\ = CARRY((!currtick(1) & !\currtick[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => currtick(1),
	datad => VCC,
	cin => \currtick[0]~9\,
	combout => \currtick[1]~13_combout\,
	cout => \currtick[1]~14\);

-- Location: LCCOMB_X22_Y20_N8
\currtick[2]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtick[2]~15_combout\ = (currtick(2) & ((GND) # (!\currtick[1]~14\))) # (!currtick(2) & (\currtick[1]~14\ $ (GND)))
-- \currtick[2]~16\ = CARRY((currtick(2)) # (!\currtick[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => currtick(2),
	datad => VCC,
	cin => \currtick[1]~14\,
	combout => \currtick[2]~15_combout\,
	cout => \currtick[2]~16\);

-- Location: LCCOMB_X22_Y22_N6
\state.ST_COUNT~_wirecell\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.ST_COUNT~_wirecell_combout\ = !\state.ST_COUNT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.ST_COUNT~q\,
	combout => \state.ST_COUNT~_wirecell_combout\);

-- Location: LCCOMB_X22_Y22_N24
\currtick[7]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtick[7]~11_combout\ = (!\paused~q\ & (\tg1|ticks\(1) & (\state.ST_COUNT~q\ & \blink_nextstate.ST_SETTIME~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \paused~q\,
	datab => \tg1|ticks\(1),
	datac => \state.ST_COUNT~q\,
	datad => \blink_nextstate.ST_SETTIME~0_combout\,
	combout => \currtick[7]~11_combout\);

-- Location: LCCOMB_X22_Y22_N12
\Selector44~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~14_combout\ = (\state.ST_COUNT~q\ & (!\blink_nextstate.ST_SETTIME~0_combout\ & \tg1|ticks\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ST_COUNT~q\,
	datac => \blink_nextstate.ST_SETTIME~0_combout\,
	datad => \tg1|ticks\(1),
	combout => \Selector44~14_combout\);

-- Location: LCCOMB_X23_Y21_N10
\settime[1]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime[1]~18_combout\ = (\settime[4]~32_combout\ & ((settime(1) & (!\settime[0]~13\)) # (!settime(1) & ((\settime[0]~13\) # (GND))))) # (!\settime[4]~32_combout\ & ((settime(1) & (\settime[0]~13\ & VCC)) # (!settime(1) & (!\settime[0]~13\))))
-- \settime[1]~19\ = CARRY((\settime[4]~32_combout\ & ((!\settime[0]~13\) # (!settime(1)))) # (!\settime[4]~32_combout\ & (!settime(1) & !\settime[0]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \settime[4]~32_combout\,
	datab => settime(1),
	datad => VCC,
	cin => \settime[0]~13\,
	combout => \settime[1]~18_combout\,
	cout => \settime[1]~19\);

-- Location: LCCOMB_X23_Y21_N12
\settime[2]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime[2]~20_combout\ = ((\settime[4]~32_combout\ $ (settime(2) $ (\settime[1]~19\)))) # (GND)
-- \settime[2]~21\ = CARRY((\settime[4]~32_combout\ & (settime(2) & !\settime[1]~19\)) # (!\settime[4]~32_combout\ & ((settime(2)) # (!\settime[1]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \settime[4]~32_combout\,
	datab => settime(2),
	datad => VCC,
	cin => \settime[1]~19\,
	combout => \settime[2]~20_combout\,
	cout => \settime[2]~21\);

-- Location: LCCOMB_X23_Y20_N12
\countup~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \countup~0_combout\ = (!\swpd_start|pressed~q\ & \countup~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \swpd_start|pressed~q\,
	datac => \countup~q\,
	combout => \countup~0_combout\);

-- Location: LCCOMB_X23_Y20_N8
\countup~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \countup~1_combout\ = (\sw_in[4]~input_o\ & (!\state.ST_SETTIME~q\ & \tg1|ticks\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw_in[4]~input_o\,
	datac => \state.ST_SETTIME~q\,
	datad => \tg1|ticks\(1),
	combout => \countup~1_combout\);

-- Location: FF_X23_Y20_N13
countup : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \countup~0_combout\,
	asdata => VCC,
	sload => \swpd_stopwatch|pressed~q\,
	ena => \countup~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \countup~q\);

-- Location: LCCOMB_X24_Y20_N16
\currtime[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtime[1]~12_combout\ = (\countup~q\ & ((currtime(1) & (!\currtime[0]~9\)) # (!currtime(1) & ((\currtime[0]~9\) # (GND))))) # (!\countup~q\ & ((currtime(1) & (\currtime[0]~9\ & VCC)) # (!currtime(1) & (!\currtime[0]~9\))))
-- \currtime[1]~13\ = CARRY((\countup~q\ & ((!\currtime[0]~9\) # (!currtime(1)))) # (!\countup~q\ & (!currtime(1) & !\currtime[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \countup~q\,
	datab => currtime(1),
	datad => VCC,
	cin => \currtime[0]~9\,
	combout => \currtime[1]~12_combout\,
	cout => \currtime[1]~13\);

-- Location: LCCOMB_X23_Y20_N0
\blink_nextstate.ST_SETTIME~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_nextstate.ST_SETTIME~2_combout\ = (!\paused~q\ & (\blink_nextstate.ST_SETTIME~0_combout\ & \tg1|ticks\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \paused~q\,
	datac => \blink_nextstate.ST_SETTIME~0_combout\,
	datad => \tg1|ticks\(1),
	combout => \blink_nextstate.ST_SETTIME~2_combout\);

-- Location: LCCOMB_X23_Y20_N14
\blink_nextstate.ST_SETTIME~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_nextstate.ST_SETTIME~3_combout\ = (!\Equal2~1_combout\ & (\state.ST_COUNT~q\ & (!\Equal2~0_combout\ & \blink_nextstate.ST_SETTIME~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \state.ST_COUNT~q\,
	datac => \Equal2~0_combout\,
	datad => \blink_nextstate.ST_SETTIME~2_combout\,
	combout => \blink_nextstate.ST_SETTIME~3_combout\);

-- Location: LCCOMB_X24_Y20_N2
\currtime[7]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtime[7]~11_combout\ = (\sw_in[4]~input_o\ & ((\Selector44~8_combout\) # (\blink_nextstate.ST_SETTIME~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw_in[4]~input_o\,
	datac => \Selector44~8_combout\,
	datad => \blink_nextstate.ST_SETTIME~3_combout\,
	combout => \currtime[7]~11_combout\);

-- Location: FF_X24_Y20_N17
\currtime[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \currtime[1]~12_combout\,
	asdata => settime(1),
	sclr => \currtime[1]~10_combout\,
	sload => \ALT_INV_state.ST_COUNT~q\,
	ena => \currtime[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currtime(1));

-- Location: LCCOMB_X24_Y20_N18
\currtime[2]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtime[2]~14_combout\ = ((\countup~q\ $ (currtime(2) $ (\currtime[1]~13\)))) # (GND)
-- \currtime[2]~15\ = CARRY((\countup~q\ & (currtime(2) & !\currtime[1]~13\)) # (!\countup~q\ & ((currtime(2)) # (!\currtime[1]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \countup~q\,
	datab => currtime(2),
	datad => VCC,
	cin => \currtime[1]~13\,
	combout => \currtime[2]~14_combout\,
	cout => \currtime[2]~15\);

-- Location: FF_X24_Y20_N19
\currtime[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \currtime[2]~14_combout\,
	asdata => settime(2),
	sclr => \currtime[1]~10_combout\,
	sload => \ALT_INV_state.ST_COUNT~q\,
	ena => \currtime[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currtime(2));

-- Location: LCCOMB_X23_Y21_N2
\settime[4]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime[4]~14_combout\ = (\state.ST_COUNT~q\ & (((!\swpd_increase|pressed~q\ & !\swpd_decrease|pressed~q\)) # (!\countup~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swpd_increase|pressed~q\,
	datab => \state.ST_COUNT~q\,
	datac => \swpd_decrease|pressed~q\,
	datad => \countup~0_combout\,
	combout => \settime[4]~14_combout\);

-- Location: LCCOMB_X23_Y21_N30
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (((!settime(6)) # (!settime(5))) # (!settime(4))) # (!settime(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => settime(7),
	datab => settime(4),
	datac => settime(5),
	datad => settime(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X23_Y21_N4
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (((!settime(2)) # (!settime(3))) # (!settime(0))) # (!settime(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => settime(1),
	datab => settime(0),
	datac => settime(3),
	datad => settime(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X24_Y24_N22
\swlpd_increase|output_counter~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|output_counter~4_combout\ = (\swlpd_increase|Equal1~0_combout\ & (!\swlpd_increase|output_counter\(0) & !\sw_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \swlpd_increase|Equal1~0_combout\,
	datac => \swlpd_increase|output_counter\(0),
	datad => \sw_in[2]~input_o\,
	combout => \swlpd_increase|output_counter~4_combout\);

-- Location: LCCOMB_X23_Y24_N8
\swlpd_increase|pressed_time[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|pressed_time[0]~8_combout\ = \swlpd_increase|pressed_time\(0) $ (VCC)
-- \swlpd_increase|pressed_time[0]~9\ = CARRY(\swlpd_increase|pressed_time\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \swlpd_increase|pressed_time\(0),
	datad => VCC,
	combout => \swlpd_increase|pressed_time[0]~8_combout\,
	cout => \swlpd_increase|pressed_time[0]~9\);

-- Location: LCCOMB_X23_Y24_N12
\swlpd_increase|pressed_time[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|pressed_time[2]~12_combout\ = (\swlpd_increase|pressed_time\(2) & (\swlpd_increase|pressed_time[1]~11\ $ (GND))) # (!\swlpd_increase|pressed_time\(2) & (!\swlpd_increase|pressed_time[1]~11\ & VCC))
-- \swlpd_increase|pressed_time[2]~13\ = CARRY((\swlpd_increase|pressed_time\(2) & !\swlpd_increase|pressed_time[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_increase|pressed_time\(2),
	datad => VCC,
	cin => \swlpd_increase|pressed_time[1]~11\,
	combout => \swlpd_increase|pressed_time[2]~12_combout\,
	cout => \swlpd_increase|pressed_time[2]~13\);

-- Location: LCCOMB_X23_Y24_N14
\swlpd_increase|pressed_time[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|pressed_time[3]~14_combout\ = (\swlpd_increase|pressed_time\(3) & (!\swlpd_increase|pressed_time[2]~13\)) # (!\swlpd_increase|pressed_time\(3) & ((\swlpd_increase|pressed_time[2]~13\) # (GND)))
-- \swlpd_increase|pressed_time[3]~15\ = CARRY((!\swlpd_increase|pressed_time[2]~13\) # (!\swlpd_increase|pressed_time\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \swlpd_increase|pressed_time\(3),
	datad => VCC,
	cin => \swlpd_increase|pressed_time[2]~13\,
	combout => \swlpd_increase|pressed_time[3]~14_combout\,
	cout => \swlpd_increase|pressed_time[3]~15\);

-- Location: FF_X23_Y24_N15
\swlpd_increase|pressed_time[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_increase|pressed_time[3]~14_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \sw_in[2]~input_o\,
	ena => \swlpd_increase|pressed_time[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_increase|pressed_time\(3));

-- Location: LCCOMB_X23_Y24_N16
\swlpd_increase|pressed_time[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|pressed_time[4]~17_combout\ = (\swlpd_increase|pressed_time\(4) & (\swlpd_increase|pressed_time[3]~15\ $ (GND))) # (!\swlpd_increase|pressed_time\(4) & (!\swlpd_increase|pressed_time[3]~15\ & VCC))
-- \swlpd_increase|pressed_time[4]~18\ = CARRY((\swlpd_increase|pressed_time\(4) & !\swlpd_increase|pressed_time[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \swlpd_increase|pressed_time\(4),
	datad => VCC,
	cin => \swlpd_increase|pressed_time[3]~15\,
	combout => \swlpd_increase|pressed_time[4]~17_combout\,
	cout => \swlpd_increase|pressed_time[4]~18\);

-- Location: FF_X23_Y24_N17
\swlpd_increase|pressed_time[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_increase|pressed_time[4]~17_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \sw_in[2]~input_o\,
	ena => \swlpd_increase|pressed_time[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_increase|pressed_time\(4));

-- Location: LCCOMB_X23_Y24_N18
\swlpd_increase|pressed_time[5]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|pressed_time[5]~19_combout\ = (\swlpd_increase|pressed_time\(5) & (!\swlpd_increase|pressed_time[4]~18\)) # (!\swlpd_increase|pressed_time\(5) & ((\swlpd_increase|pressed_time[4]~18\) # (GND)))
-- \swlpd_increase|pressed_time[5]~20\ = CARRY((!\swlpd_increase|pressed_time[4]~18\) # (!\swlpd_increase|pressed_time\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \swlpd_increase|pressed_time\(5),
	datad => VCC,
	cin => \swlpd_increase|pressed_time[4]~18\,
	combout => \swlpd_increase|pressed_time[5]~19_combout\,
	cout => \swlpd_increase|pressed_time[5]~20\);

-- Location: FF_X23_Y24_N19
\swlpd_increase|pressed_time[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_increase|pressed_time[5]~19_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \sw_in[2]~input_o\,
	ena => \swlpd_increase|pressed_time[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_increase|pressed_time\(5));

-- Location: LCCOMB_X23_Y24_N20
\swlpd_increase|pressed_time[6]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|pressed_time[6]~21_combout\ = (\swlpd_increase|pressed_time\(6) & (\swlpd_increase|pressed_time[5]~20\ $ (GND))) # (!\swlpd_increase|pressed_time\(6) & (!\swlpd_increase|pressed_time[5]~20\ & VCC))
-- \swlpd_increase|pressed_time[6]~22\ = CARRY((\swlpd_increase|pressed_time\(6) & !\swlpd_increase|pressed_time[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \swlpd_increase|pressed_time\(6),
	datad => VCC,
	cin => \swlpd_increase|pressed_time[5]~20\,
	combout => \swlpd_increase|pressed_time[6]~21_combout\,
	cout => \swlpd_increase|pressed_time[6]~22\);

-- Location: FF_X23_Y24_N21
\swlpd_increase|pressed_time[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_increase|pressed_time[6]~21_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \sw_in[2]~input_o\,
	ena => \swlpd_increase|pressed_time[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_increase|pressed_time\(6));

-- Location: LCCOMB_X23_Y24_N22
\swlpd_increase|pressed_time[7]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|pressed_time[7]~23_combout\ = \swlpd_increase|pressed_time\(7) $ (\swlpd_increase|pressed_time[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_increase|pressed_time\(7),
	cin => \swlpd_increase|pressed_time[6]~22\,
	combout => \swlpd_increase|pressed_time[7]~23_combout\);

-- Location: FF_X23_Y24_N23
\swlpd_increase|pressed_time[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_increase|pressed_time[7]~23_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \sw_in[2]~input_o\,
	ena => \swlpd_increase|pressed_time[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_increase|pressed_time\(7));

-- Location: LCCOMB_X23_Y24_N24
\swlpd_increase|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|Equal0~1_combout\ = (!\swlpd_increase|pressed_time\(6) & (!\swlpd_increase|pressed_time\(4) & (!\swlpd_increase|pressed_time\(7) & \swlpd_increase|pressed_time\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_increase|pressed_time\(6),
	datab => \swlpd_increase|pressed_time\(4),
	datac => \swlpd_increase|pressed_time\(7),
	datad => \swlpd_increase|pressed_time\(5),
	combout => \swlpd_increase|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y24_N0
\swlpd_increase|pressed_time[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|pressed_time[4]~16_combout\ = ((\sw_in[2]~input_o\) # (!\swlpd_increase|Equal0~1_combout\)) # (!\swlpd_increase|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_increase|Equal0~0_combout\,
	datac => \sw_in[2]~input_o\,
	datad => \swlpd_increase|Equal0~1_combout\,
	combout => \swlpd_increase|pressed_time[4]~16_combout\);

-- Location: FF_X23_Y24_N9
\swlpd_increase|pressed_time[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_increase|pressed_time[0]~8_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \sw_in[2]~input_o\,
	ena => \swlpd_increase|pressed_time[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_increase|pressed_time\(0));

-- Location: LCCOMB_X23_Y24_N10
\swlpd_increase|pressed_time[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|pressed_time[1]~10_combout\ = (\swlpd_increase|pressed_time\(1) & (!\swlpd_increase|pressed_time[0]~9\)) # (!\swlpd_increase|pressed_time\(1) & ((\swlpd_increase|pressed_time[0]~9\) # (GND)))
-- \swlpd_increase|pressed_time[1]~11\ = CARRY((!\swlpd_increase|pressed_time[0]~9\) # (!\swlpd_increase|pressed_time\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_increase|pressed_time\(1),
	datad => VCC,
	cin => \swlpd_increase|pressed_time[0]~9\,
	combout => \swlpd_increase|pressed_time[1]~10_combout\,
	cout => \swlpd_increase|pressed_time[1]~11\);

-- Location: FF_X23_Y24_N11
\swlpd_increase|pressed_time[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_increase|pressed_time[1]~10_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \sw_in[2]~input_o\,
	ena => \swlpd_increase|pressed_time[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_increase|pressed_time\(1));

-- Location: FF_X23_Y24_N13
\swlpd_increase|pressed_time[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_increase|pressed_time[2]~12_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \sw_in[2]~input_o\,
	ena => \swlpd_increase|pressed_time[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_increase|pressed_time\(2));

-- Location: LCCOMB_X23_Y24_N26
\swlpd_increase|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|Equal0~0_combout\ = (!\swlpd_increase|pressed_time\(2) & (!\swlpd_increase|pressed_time\(0) & (\swlpd_increase|pressed_time\(3) & !\swlpd_increase|pressed_time\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_increase|pressed_time\(2),
	datab => \swlpd_increase|pressed_time\(0),
	datac => \swlpd_increase|pressed_time\(3),
	datad => \swlpd_increase|pressed_time\(1),
	combout => \swlpd_increase|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y24_N6
\swlpd_increase|pressed~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|pressed~1_combout\ = (\sw_in[2]~input_o\) # ((\swlpd_increase|Equal0~0_combout\ & \swlpd_increase|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_in[2]~input_o\,
	datac => \swlpd_increase|Equal0~0_combout\,
	datad => \swlpd_increase|Equal0~1_combout\,
	combout => \swlpd_increase|pressed~1_combout\);

-- Location: FF_X24_Y24_N23
\swlpd_increase|output_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_increase|output_counter~4_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \swlpd_increase|pressed~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_increase|output_counter\(0));

-- Location: LCCOMB_X24_Y24_N28
\swlpd_increase|output_counter~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|output_counter~3_combout\ = (\swlpd_increase|Equal1~0_combout\ & (!\sw_in[2]~input_o\ & (\swlpd_increase|output_counter\(0) $ (\swlpd_increase|output_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_increase|output_counter\(0),
	datab => \swlpd_increase|Equal1~0_combout\,
	datac => \swlpd_increase|output_counter\(1),
	datad => \sw_in[2]~input_o\,
	combout => \swlpd_increase|output_counter~3_combout\);

-- Location: FF_X24_Y24_N29
\swlpd_increase|output_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_increase|output_counter~3_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \swlpd_increase|pressed~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_increase|output_counter\(1));

-- Location: LCCOMB_X24_Y24_N26
\swlpd_increase|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|Add0~0_combout\ = \swlpd_increase|output_counter\(3) $ (((!\swlpd_increase|output_counter\(2) & (\swlpd_increase|output_counter\(1) & \swlpd_increase|output_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_increase|output_counter\(2),
	datab => \swlpd_increase|output_counter\(1),
	datac => \swlpd_increase|output_counter\(0),
	datad => \swlpd_increase|output_counter\(3),
	combout => \swlpd_increase|Add0~0_combout\);

-- Location: LCCOMB_X24_Y24_N0
\swlpd_increase|output_counter~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|output_counter~0_combout\ = (\swlpd_increase|Equal1~0_combout\ & (\swlpd_increase|Add0~0_combout\ & !\sw_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \swlpd_increase|Equal1~0_combout\,
	datac => \swlpd_increase|Add0~0_combout\,
	datad => \sw_in[2]~input_o\,
	combout => \swlpd_increase|output_counter~0_combout\);

-- Location: FF_X24_Y24_N1
\swlpd_increase|output_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_increase|output_counter~0_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \swlpd_increase|pressed~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_increase|output_counter\(3));

-- Location: LCCOMB_X24_Y24_N12
\swlpd_increase|output_counter~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|output_counter~1_combout\ = (\swlpd_increase|output_counter\(1) & (\swlpd_increase|output_counter\(2) $ ((!\swlpd_increase|output_counter\(0))))) # (!\swlpd_increase|output_counter\(1) & (!\swlpd_increase|output_counter\(2) & 
-- ((\swlpd_increase|output_counter\(0)) # (\swlpd_increase|output_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_increase|output_counter\(2),
	datab => \swlpd_increase|output_counter\(1),
	datac => \swlpd_increase|output_counter\(0),
	datad => \swlpd_increase|output_counter\(3),
	combout => \swlpd_increase|output_counter~1_combout\);

-- Location: LCCOMB_X24_Y24_N10
\swlpd_increase|output_counter~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|output_counter~2_combout\ = (!\swlpd_increase|output_counter~1_combout\ & !\sw_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_increase|output_counter~1_combout\,
	datad => \sw_in[2]~input_o\,
	combout => \swlpd_increase|output_counter~2_combout\);

-- Location: FF_X24_Y24_N11
\swlpd_increase|output_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_increase|output_counter~2_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \swlpd_increase|pressed~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_increase|output_counter\(2));

-- Location: LCCOMB_X24_Y24_N20
\swlpd_increase|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|Equal1~0_combout\ = (\swlpd_increase|output_counter\(2)) # ((\swlpd_increase|output_counter\(1)) # ((\swlpd_increase|output_counter\(0)) # (\swlpd_increase|output_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_increase|output_counter\(2),
	datab => \swlpd_increase|output_counter\(1),
	datac => \swlpd_increase|output_counter\(0),
	datad => \swlpd_increase|output_counter\(3),
	combout => \swlpd_increase|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y24_N28
\swlpd_increase|pressed~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \swlpd_increase|pressed~0_combout\ = (!\sw_in[2]~input_o\ & !\swlpd_increase|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_in[2]~input_o\,
	datac => \swlpd_increase|Equal1~0_combout\,
	combout => \swlpd_increase|pressed~0_combout\);

-- Location: FF_X23_Y24_N29
\swlpd_increase|pressed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tg1|ticks[0]~clkctrl_outclk\,
	d => \swlpd_increase|pressed~0_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \swlpd_increase|pressed~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \swlpd_increase|pressed~q\);

-- Location: LCCOMB_X22_Y21_N28
\settime[4]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime[4]~16_combout\ = (\swpd_increase|pressed~q\ & (!\Equal0~1_combout\ & (!\Equal0~0_combout\))) # (!\swpd_increase|pressed~q\ & (((!\Equal0~1_combout\ & !\Equal0~0_combout\)) # (!\swlpd_increase|pressed~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swpd_increase|pressed~q\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \swlpd_increase|pressed~q\,
	combout => \settime[4]~16_combout\);

-- Location: LCCOMB_X22_Y22_N30
\settime_blink[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime_blink[3]~0_combout\ = (!\state.ST_SETTIME~q\ & \tg1|ticks\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_SETTIME~q\,
	datac => \tg1|ticks\(1),
	combout => \settime_blink[3]~0_combout\);

-- Location: LCCOMB_X23_Y21_N28
\settime[4]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime[4]~17_combout\ = ((\settime_blink[3]~0_combout\ & ((!\settime[4]~16_combout\) # (!\settime[4]~32_combout\)))) # (!\settime[4]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \settime[4]~32_combout\,
	datab => \settime[4]~16_combout\,
	datac => \settime_blink[3]~0_combout\,
	datad => \settime[4]~15_combout\,
	combout => \settime[4]~17_combout\);

-- Location: FF_X23_Y21_N13
\settime[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \settime[2]~20_combout\,
	asdata => currtime(2),
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \settime[4]~14_combout\,
	sload => \state.ST_COUNT~q\,
	ena => \settime[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => settime(2));

-- Location: LCCOMB_X23_Y21_N14
\settime[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime[3]~22_combout\ = (\settime[4]~32_combout\ & ((settime(3) & (!\settime[2]~21\)) # (!settime(3) & ((\settime[2]~21\) # (GND))))) # (!\settime[4]~32_combout\ & ((settime(3) & (\settime[2]~21\ & VCC)) # (!settime(3) & (!\settime[2]~21\))))
-- \settime[3]~23\ = CARRY((\settime[4]~32_combout\ & ((!\settime[2]~21\) # (!settime(3)))) # (!\settime[4]~32_combout\ & (!settime(3) & !\settime[2]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \settime[4]~32_combout\,
	datab => settime(3),
	datad => VCC,
	cin => \settime[2]~21\,
	combout => \settime[3]~22_combout\,
	cout => \settime[3]~23\);

-- Location: LCCOMB_X24_Y20_N20
\currtime[3]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtime[3]~16_combout\ = (\countup~q\ & ((currtime(3) & (!\currtime[2]~15\)) # (!currtime(3) & ((\currtime[2]~15\) # (GND))))) # (!\countup~q\ & ((currtime(3) & (\currtime[2]~15\ & VCC)) # (!currtime(3) & (!\currtime[2]~15\))))
-- \currtime[3]~17\ = CARRY((\countup~q\ & ((!\currtime[2]~15\) # (!currtime(3)))) # (!\countup~q\ & (!currtime(3) & !\currtime[2]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \countup~q\,
	datab => currtime(3),
	datad => VCC,
	cin => \currtime[2]~15\,
	combout => \currtime[3]~16_combout\,
	cout => \currtime[3]~17\);

-- Location: FF_X24_Y20_N21
\currtime[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \currtime[3]~16_combout\,
	asdata => settime(3),
	sclr => \currtime[1]~10_combout\,
	sload => \ALT_INV_state.ST_COUNT~q\,
	ena => \currtime[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currtime(3));

-- Location: FF_X23_Y21_N15
\settime[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \settime[3]~22_combout\,
	asdata => currtime(3),
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \settime[4]~14_combout\,
	sload => \state.ST_COUNT~q\,
	ena => \settime[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => settime(3));

-- Location: LCCOMB_X23_Y21_N16
\settime[4]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime[4]~24_combout\ = ((\settime[4]~32_combout\ $ (settime(4) $ (\settime[3]~23\)))) # (GND)
-- \settime[4]~25\ = CARRY((\settime[4]~32_combout\ & (settime(4) & !\settime[3]~23\)) # (!\settime[4]~32_combout\ & ((settime(4)) # (!\settime[3]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \settime[4]~32_combout\,
	datab => settime(4),
	datad => VCC,
	cin => \settime[3]~23\,
	combout => \settime[4]~24_combout\,
	cout => \settime[4]~25\);

-- Location: LCCOMB_X24_Y20_N22
\currtime[4]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtime[4]~18_combout\ = ((currtime(4) $ (\countup~q\ $ (\currtime[3]~17\)))) # (GND)
-- \currtime[4]~19\ = CARRY((currtime(4) & ((!\currtime[3]~17\) # (!\countup~q\))) # (!currtime(4) & (!\countup~q\ & !\currtime[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => currtime(4),
	datab => \countup~q\,
	datad => VCC,
	cin => \currtime[3]~17\,
	combout => \currtime[4]~18_combout\,
	cout => \currtime[4]~19\);

-- Location: FF_X24_Y20_N23
\currtime[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \currtime[4]~18_combout\,
	asdata => settime(4),
	sclr => \currtime[1]~10_combout\,
	sload => \ALT_INV_state.ST_COUNT~q\,
	ena => \currtime[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currtime(4));

-- Location: FF_X23_Y21_N17
\settime[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \settime[4]~24_combout\,
	asdata => currtime(4),
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \settime[4]~14_combout\,
	sload => \state.ST_COUNT~q\,
	ena => \settime[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => settime(4));

-- Location: LCCOMB_X23_Y21_N18
\settime[5]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime[5]~26_combout\ = (\settime[4]~32_combout\ & ((settime(5) & (!\settime[4]~25\)) # (!settime(5) & ((\settime[4]~25\) # (GND))))) # (!\settime[4]~32_combout\ & ((settime(5) & (\settime[4]~25\ & VCC)) # (!settime(5) & (!\settime[4]~25\))))
-- \settime[5]~27\ = CARRY((\settime[4]~32_combout\ & ((!\settime[4]~25\) # (!settime(5)))) # (!\settime[4]~32_combout\ & (!settime(5) & !\settime[4]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \settime[4]~32_combout\,
	datab => settime(5),
	datad => VCC,
	cin => \settime[4]~25\,
	combout => \settime[5]~26_combout\,
	cout => \settime[5]~27\);

-- Location: LCCOMB_X24_Y20_N24
\currtime[5]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtime[5]~20_combout\ = (\countup~q\ & ((currtime(5) & (!\currtime[4]~19\)) # (!currtime(5) & ((\currtime[4]~19\) # (GND))))) # (!\countup~q\ & ((currtime(5) & (\currtime[4]~19\ & VCC)) # (!currtime(5) & (!\currtime[4]~19\))))
-- \currtime[5]~21\ = CARRY((\countup~q\ & ((!\currtime[4]~19\) # (!currtime(5)))) # (!\countup~q\ & (!currtime(5) & !\currtime[4]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \countup~q\,
	datab => currtime(5),
	datad => VCC,
	cin => \currtime[4]~19\,
	combout => \currtime[5]~20_combout\,
	cout => \currtime[5]~21\);

-- Location: FF_X24_Y20_N25
\currtime[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \currtime[5]~20_combout\,
	asdata => settime(5),
	sclr => \currtime[1]~10_combout\,
	sload => \ALT_INV_state.ST_COUNT~q\,
	ena => \currtime[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currtime(5));

-- Location: FF_X23_Y21_N19
\settime[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \settime[5]~26_combout\,
	asdata => currtime(5),
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \settime[4]~14_combout\,
	sload => \state.ST_COUNT~q\,
	ena => \settime[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => settime(5));

-- Location: LCCOMB_X23_Y21_N20
\settime[6]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime[6]~28_combout\ = ((\settime[4]~32_combout\ $ (settime(6) $ (\settime[5]~27\)))) # (GND)
-- \settime[6]~29\ = CARRY((\settime[4]~32_combout\ & (settime(6) & !\settime[5]~27\)) # (!\settime[4]~32_combout\ & ((settime(6)) # (!\settime[5]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \settime[4]~32_combout\,
	datab => settime(6),
	datad => VCC,
	cin => \settime[5]~27\,
	combout => \settime[6]~28_combout\,
	cout => \settime[6]~29\);

-- Location: LCCOMB_X24_Y20_N26
\currtime[6]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtime[6]~22_combout\ = ((currtime(6) $ (\countup~q\ $ (\currtime[5]~21\)))) # (GND)
-- \currtime[6]~23\ = CARRY((currtime(6) & ((!\currtime[5]~21\) # (!\countup~q\))) # (!currtime(6) & (!\countup~q\ & !\currtime[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => currtime(6),
	datab => \countup~q\,
	datad => VCC,
	cin => \currtime[5]~21\,
	combout => \currtime[6]~22_combout\,
	cout => \currtime[6]~23\);

-- Location: FF_X24_Y20_N27
\currtime[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \currtime[6]~22_combout\,
	asdata => settime(6),
	sclr => \currtime[1]~10_combout\,
	sload => \ALT_INV_state.ST_COUNT~q\,
	ena => \currtime[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currtime(6));

-- Location: FF_X23_Y21_N21
\settime[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \settime[6]~28_combout\,
	asdata => currtime(6),
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \settime[4]~14_combout\,
	sload => \state.ST_COUNT~q\,
	ena => \settime[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => settime(6));

-- Location: LCCOMB_X23_Y21_N22
\settime[7]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime[7]~30_combout\ = settime(7) $ (\settime[6]~29\ $ (!\settime[4]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => settime(7),
	datad => \settime[4]~32_combout\,
	cin => \settime[6]~29\,
	combout => \settime[7]~30_combout\);

-- Location: LCCOMB_X24_Y20_N28
\currtime[7]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtime[7]~24_combout\ = \countup~q\ $ (\currtime[6]~23\ $ (!currtime(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \countup~q\,
	datad => currtime(7),
	cin => \currtime[6]~23\,
	combout => \currtime[7]~24_combout\);

-- Location: FF_X24_Y20_N29
\currtime[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \currtime[7]~24_combout\,
	asdata => settime(7),
	sclr => \currtime[1]~10_combout\,
	sload => \ALT_INV_state.ST_COUNT~q\,
	ena => \currtime[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currtime(7));

-- Location: FF_X23_Y21_N23
\settime[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \settime[7]~30_combout\,
	asdata => currtime(7),
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \settime[4]~14_combout\,
	sload => \state.ST_COUNT~q\,
	ena => \settime[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => settime(7));

-- Location: LCCOMB_X23_Y21_N6
\Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!settime(7) & (!settime(4) & (!settime(5) & !settime(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => settime(7),
	datab => settime(4),
	datac => settime(5),
	datad => settime(6),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X23_Y21_N26
\Selector44~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~16_combout\ = (\Equal1~1_combout\ & (\Equal1~0_combout\ & ((\swpd_decrease|pressed~q\) # (\swlpd_decrease|pressed~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \swpd_decrease|pressed~q\,
	datad => \swlpd_decrease|pressed~q\,
	combout => \Selector44~16_combout\);

-- Location: LCCOMB_X22_Y22_N28
\Selector44~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~15_combout\ = (\Selector44~14_combout\) # ((\settime_blink[3]~0_combout\ & ((\Selector44~16_combout\) # (\blink_nextstate.ST_SETTIME~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~14_combout\,
	datab => \Selector44~16_combout\,
	datac => \blink_nextstate.ST_SETTIME~1_combout\,
	datad => \settime_blink[3]~0_combout\,
	combout => \Selector44~15_combout\);

-- Location: LCCOMB_X22_Y21_N4
\always0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (\swpd_decrease|pressed~q\) # (\swlpd_decrease|pressed~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \swpd_decrease|pressed~q\,
	datad => \swlpd_decrease|pressed~q\,
	combout => \always0~0_combout\);

-- Location: LCCOMB_X22_Y21_N10
\Selector44~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~12_combout\ = (!\blink_nextstate.ST_SETTIME~1_combout\ & (((!\always0~0_combout\) # (!\Equal1~0_combout\)) # (!\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \always0~0_combout\,
	datad => \blink_nextstate.ST_SETTIME~1_combout\,
	combout => \Selector44~12_combout\);

-- Location: LCCOMB_X24_Y20_N12
\Selector44~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~3_combout\ = (!currtime(4) & (!currtime(5) & (!currtime(6) & !currtime(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currtime(4),
	datab => currtime(5),
	datac => currtime(6),
	datad => currtime(7),
	combout => \Selector44~3_combout\);

-- Location: LCCOMB_X23_Y21_N0
\Selector44~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~7_combout\ = (\Equal0~1_combout\) # ((\Equal0~0_combout\) # ((!\swpd_increase|pressed~q\ & !\swlpd_increase|pressed~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \swpd_increase|pressed~q\,
	datad => \swlpd_increase|pressed~q\,
	combout => \Selector44~7_combout\);

-- Location: LCCOMB_X23_Y22_N10
\Selector44~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~2_combout\ = (!\countup~q\ & (!currtime(1) & (!currtime(2) & !currtime(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \countup~q\,
	datab => currtime(1),
	datac => currtime(2),
	datad => currtime(3),
	combout => \Selector44~2_combout\);

-- Location: LCCOMB_X23_Y20_N24
\Selector44~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~11_combout\ = (\state.ST_COUNT~q\ & (((!\Selector44~2_combout\)) # (!\Selector44~3_combout\))) # (!\state.ST_COUNT~q\ & (((\Selector44~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~3_combout\,
	datab => \state.ST_COUNT~q\,
	datac => \Selector44~7_combout\,
	datad => \Selector44~2_combout\,
	combout => \Selector44~11_combout\);

-- Location: LCCOMB_X23_Y20_N10
\Selector44~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~13_combout\ = (\Selector44~11_combout\) # ((!\blink_nextstate.ST_SETTIME~3_combout\ & ((!\settime_blink[3]~0_combout\) # (!\Selector44~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~12_combout\,
	datab => \settime_blink[3]~0_combout\,
	datac => \blink_nextstate.ST_SETTIME~3_combout\,
	datad => \Selector44~11_combout\,
	combout => \Selector44~13_combout\);

-- Location: LCCOMB_X24_Y20_N8
\blink_nextstate.ST_COUNT~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_nextstate.ST_COUNT~2_combout\ = (\swpd_start|pressed~q\ & \state.ST_COUNT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \swpd_start|pressed~q\,
	datad => \state.ST_COUNT~q\,
	combout => \blink_nextstate.ST_COUNT~2_combout\);

-- Location: LCCOMB_X23_Y20_N18
\blink_nextstate.ST_SETTIME~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_nextstate.ST_SETTIME~4_combout\ = (\state.ST_COUNT~q\ & ((\Equal2~1_combout\) # ((\Equal2~0_combout\) # (!\blink_nextstate.ST_SETTIME~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \state.ST_COUNT~q\,
	datac => \Equal2~0_combout\,
	datad => \blink_nextstate.ST_SETTIME~2_combout\,
	combout => \blink_nextstate.ST_SETTIME~4_combout\);

-- Location: LCCOMB_X23_Y20_N2
\blink_nextstate.ST_COUNT~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_nextstate.ST_COUNT~4_combout\ = (!\state.ST_SETTIME~q\ & (!\blink_nextstate.ST_SETTIME~4_combout\ & ((\swpd_start|pressed~q\) # (\swpd_stopwatch|pressed~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_SETTIME~q\,
	datab => \swpd_start|pressed~q\,
	datac => \swpd_stopwatch|pressed~q\,
	datad => \blink_nextstate.ST_SETTIME~4_combout\,
	combout => \blink_nextstate.ST_COUNT~4_combout\);

-- Location: LCCOMB_X23_Y20_N4
\blink_nextstate.ST_SETTIME~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_nextstate.ST_SETTIME~5_combout\ = ((!\swpd_decrease|pressed~q\ & (!\swpd_start|pressed~q\ & !\swpd_increase|pressed~q\))) # (!\tg1|ticks\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swpd_decrease|pressed~q\,
	datab => \swpd_start|pressed~q\,
	datac => \swpd_increase|pressed~q\,
	datad => \tg1|ticks\(1),
	combout => \blink_nextstate.ST_SETTIME~5_combout\);

-- Location: LCCOMB_X23_Y20_N30
\blink_nextstate.ST_SETTIME~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_nextstate.ST_SETTIME~6_combout\ = (\settime_blink[3]~0_combout\ & (\Selector44~12_combout\ & ((\blink_nextstate.ST_SETTIME~5_combout\) # (!\blink_nextstate.ST_SETTIME~4_combout\)))) # (!\settime_blink[3]~0_combout\ & 
-- ((\blink_nextstate.ST_SETTIME~5_combout\) # ((!\blink_nextstate.ST_SETTIME~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \settime_blink[3]~0_combout\,
	datab => \blink_nextstate.ST_SETTIME~5_combout\,
	datac => \Selector44~12_combout\,
	datad => \blink_nextstate.ST_SETTIME~4_combout\,
	combout => \blink_nextstate.ST_SETTIME~6_combout\);

-- Location: LCCOMB_X23_Y20_N28
\blink_nextstate.ST_SETTIME~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_nextstate.ST_SETTIME~7_combout\ = ((\blink_nextstate.ST_SETTIME~6_combout\ & \Selector44~13_combout\)) # (!\sw_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw_in[4]~input_o\,
	datac => \blink_nextstate.ST_SETTIME~6_combout\,
	datad => \Selector44~13_combout\,
	combout => \blink_nextstate.ST_SETTIME~7_combout\);

-- Location: LCCOMB_X23_Y20_N20
\blink_nextstate.ST_COUNT~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_nextstate.ST_COUNT~3_combout\ = (\blink_nextstate.ST_SETTIME~7_combout\ & (((\blink_nextstate.ST_COUNT~q\)))) # (!\blink_nextstate.ST_SETTIME~7_combout\ & ((\blink_nextstate.ST_COUNT~2_combout\) # ((\blink_nextstate.ST_COUNT~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink_nextstate.ST_COUNT~2_combout\,
	datab => \blink_nextstate.ST_COUNT~4_combout\,
	datac => \blink_nextstate.ST_COUNT~q\,
	datad => \blink_nextstate.ST_SETTIME~7_combout\,
	combout => \blink_nextstate.ST_COUNT~3_combout\);

-- Location: FF_X23_Y20_N21
\blink_nextstate.ST_COUNT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \blink_nextstate.ST_COUNT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink_nextstate.ST_COUNT~q\);

-- Location: LCCOMB_X22_Y20_N0
\Selector43~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\Selector44~10_combout\ & (\blink_nextstate.ST_COUNT~q\)) # (!\Selector44~10_combout\ & ((\state.ST_SETTIME~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink_nextstate.ST_COUNT~q\,
	datac => \state.ST_SETTIME~q\,
	datad => \Selector44~10_combout\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X22_Y20_N30
\Selector43~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector43~1_combout\ = (\Selector43~0_combout\) # ((!\Selector44~10_combout\ & ((\Selector44~15_combout\) # (!\Selector44~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~10_combout\,
	datab => \Selector44~15_combout\,
	datac => \Selector44~13_combout\,
	datad => \Selector43~0_combout\,
	combout => \Selector43~1_combout\);

-- Location: FF_X22_Y20_N31
\state.ST_SETTIME\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \Selector43~1_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ST_SETTIME~q\);

-- Location: LCCOMB_X23_Y20_N16
\Selector44~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~8_combout\ = (!\state.ST_SETTIME~q\ & (\tg1|ticks\(1) & ((\swpd_start|pressed~q\) # (\swpd_stopwatch|pressed~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_SETTIME~q\,
	datab => \swpd_start|pressed~q\,
	datac => \swpd_stopwatch|pressed~q\,
	datad => \tg1|ticks\(1),
	combout => \Selector44~8_combout\);

-- Location: LCCOMB_X22_Y20_N28
\currtick[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtick[7]~12_combout\ = (\sw_in[4]~input_o\ & ((\Selector44~8_combout\) # ((!\settime[4]~10_combout\ & \currtick[7]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \settime[4]~10_combout\,
	datab => \sw_in[4]~input_o\,
	datac => \currtick[7]~11_combout\,
	datad => \Selector44~8_combout\,
	combout => \currtick[7]~12_combout\);

-- Location: FF_X22_Y20_N9
\currtick[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \currtick[2]~15_combout\,
	asdata => \state.ST_COUNT~_wirecell_combout\,
	sload => \currtick[1]~10_combout\,
	ena => \currtick[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currtick(2));

-- Location: LCCOMB_X22_Y20_N10
\currtick[3]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtick[3]~17_combout\ = (currtick(3) & (\currtick[2]~16\ & VCC)) # (!currtick(3) & (!\currtick[2]~16\))
-- \currtick[3]~18\ = CARRY((!currtick(3) & !\currtick[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => currtick(3),
	datad => VCC,
	cin => \currtick[2]~16\,
	combout => \currtick[3]~17_combout\,
	cout => \currtick[3]~18\);

-- Location: FF_X22_Y20_N11
\currtick[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \currtick[3]~17_combout\,
	asdata => \~GND~combout\,
	sload => \currtick[1]~10_combout\,
	ena => \currtick[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currtick(3));

-- Location: LCCOMB_X22_Y20_N12
\currtick[4]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtick[4]~19_combout\ = (currtick(4) & ((GND) # (!\currtick[3]~18\))) # (!currtick(4) & (\currtick[3]~18\ $ (GND)))
-- \currtick[4]~20\ = CARRY((currtick(4)) # (!\currtick[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => currtick(4),
	datad => VCC,
	cin => \currtick[3]~18\,
	combout => \currtick[4]~19_combout\,
	cout => \currtick[4]~20\);

-- Location: FF_X22_Y20_N13
\currtick[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \currtick[4]~19_combout\,
	asdata => VCC,
	sload => \currtick[1]~10_combout\,
	ena => \currtick[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currtick(4));

-- Location: LCCOMB_X22_Y20_N14
\currtick[5]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtick[5]~21_combout\ = (currtick(5) & (\currtick[4]~20\ & VCC)) # (!currtick(5) & (!\currtick[4]~20\))
-- \currtick[5]~22\ = CARRY((!currtick(5) & !\currtick[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => currtick(5),
	datad => VCC,
	cin => \currtick[4]~20\,
	combout => \currtick[5]~21_combout\,
	cout => \currtick[5]~22\);

-- Location: FF_X22_Y20_N15
\currtick[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \currtick[5]~21_combout\,
	asdata => \~GND~combout\,
	sload => \currtick[1]~10_combout\,
	ena => \currtick[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currtick(5));

-- Location: LCCOMB_X22_Y20_N16
\currtick[6]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtick[6]~23_combout\ = (currtick(6) & ((GND) # (!\currtick[5]~22\))) # (!currtick(6) & (\currtick[5]~22\ $ (GND)))
-- \currtick[6]~24\ = CARRY((currtick(6)) # (!\currtick[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => currtick(6),
	datad => VCC,
	cin => \currtick[5]~22\,
	combout => \currtick[6]~23_combout\,
	cout => \currtick[6]~24\);

-- Location: FF_X22_Y20_N17
\currtick[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \currtick[6]~23_combout\,
	asdata => \~GND~combout\,
	sload => \currtick[1]~10_combout\,
	ena => \currtick[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currtick(6));

-- Location: LCCOMB_X22_Y20_N18
\currtick[7]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtick[7]~25_combout\ = \currtick[6]~24\ $ (!currtick(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => currtick(7),
	cin => \currtick[6]~24\,
	combout => \currtick[7]~25_combout\);

-- Location: FF_X22_Y20_N19
\currtick[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \currtick[7]~25_combout\,
	asdata => \~GND~combout\,
	sload => \currtick[1]~10_combout\,
	ena => \currtick[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currtick(7));

-- Location: LCCOMB_X22_Y20_N2
\Equal2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (currtick(4)) # ((currtick(7)) # ((currtick(5)) # (currtick(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currtick(4),
	datab => currtick(7),
	datac => currtick(5),
	datad => currtick(6),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X22_Y20_N22
\currtick[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtick[1]~10_combout\ = ((!\Equal2~1_combout\ & !\Equal2~0_combout\)) # (!\state.ST_COUNT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_COUNT~q\,
	datab => \Equal2~1_combout\,
	datad => \Equal2~0_combout\,
	combout => \currtick[1]~10_combout\);

-- Location: FF_X22_Y20_N5
\currtick[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \currtick[0]~8_combout\,
	asdata => \state.ST_COUNT~q\,
	sload => \currtick[1]~10_combout\,
	ena => \currtick[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currtick(0));

-- Location: FF_X22_Y20_N7
\currtick[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \currtick[1]~13_combout\,
	asdata => \state.ST_COUNT~q\,
	sload => \currtick[1]~10_combout\,
	ena => \currtick[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currtick(1));

-- Location: LCCOMB_X22_Y20_N24
\Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (currtick(1)) # ((currtick(0)) # ((currtick(2)) # (currtick(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currtick(1),
	datab => currtick(0),
	datac => currtick(2),
	datad => currtick(3),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X23_Y22_N8
\settime[4]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime[4]~10_combout\ = (!\Equal2~0_combout\ & (!\Equal2~1_combout\ & (\Selector44~3_combout\ & \Selector44~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal2~1_combout\,
	datac => \Selector44~3_combout\,
	datad => \Selector44~2_combout\,
	combout => \settime[4]~10_combout\);

-- Location: LCCOMB_X22_Y22_N14
\Selector44~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~9_combout\ = (\state.ST_COUNT~q\ & \tg1|ticks\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.ST_COUNT~q\,
	datad => \tg1|ticks\(1),
	combout => \Selector44~9_combout\);

-- Location: LCCOMB_X23_Y22_N16
\settime[4]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime[4]~15_combout\ = ((\blink_nextstate.ST_SETTIME~0_combout\ & ((\paused~q\) # (!\settime[4]~10_combout\)))) # (!\Selector44~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink_nextstate.ST_SETTIME~0_combout\,
	datab => \paused~q\,
	datac => \settime[4]~10_combout\,
	datad => \Selector44~9_combout\,
	combout => \settime[4]~15_combout\);

-- Location: LCCOMB_X22_Y21_N2
\blink_settick[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_settick[2]~0_combout\ = (!\state.ST_SETTIME~q\ & (\tg1|ticks\(1) & ((!\Selector44~12_combout\) # (!\Selector44~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_SETTIME~q\,
	datab => \Selector44~7_combout\,
	datac => \tg1|ticks\(1),
	datad => \Selector44~12_combout\,
	combout => \blink_settick[2]~0_combout\);

-- Location: LCCOMB_X23_Y22_N18
\blink_settick[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_settick[2]~1_combout\ = (\sw_in[4]~input_o\ & ((\blink_settick[2]~0_combout\) # (!\settime[4]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_in[4]~input_o\,
	datab => \settime[4]~15_combout\,
	datad => \blink_settick[2]~0_combout\,
	combout => \blink_settick[2]~1_combout\);

-- Location: FF_X23_Y22_N5
\blink_settick[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	asdata => \blink_nextstate.ST_SETTIME~0_combout\,
	sclr => \ALT_INV_state.ST_COUNT~q\,
	sload => VCC,
	ena => \blink_settick[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_settick(2));

-- Location: LCCOMB_X24_Y22_N8
\Add7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = blink_currtick(0) $ (VCC)
-- \Add7~1\ = CARRY(blink_currtick(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => blink_currtick(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X24_Y22_N26
\Add7~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~21_combout\ = (\Add7~0_combout\ & ((!\Equal5~1_combout\) # (!\Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~0_combout\,
	datac => \Equal5~0_combout\,
	datad => \Equal5~1_combout\,
	combout => \Add7~21_combout\);

-- Location: LCCOMB_X22_Y22_N26
\blink_currtick[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtick[2]~2_combout\ = (\state.ST_COUNT~q\ & ((\swpd_decrease|pressed~q\) # (\swpd_increase|pressed~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swpd_decrease|pressed~q\,
	datac => \state.ST_COUNT~q\,
	datad => \swpd_increase|pressed~q\,
	combout => \blink_currtick[2]~2_combout\);

-- Location: LCCOMB_X23_Y22_N20
\blink_currtime[7]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[7]~10_combout\ = (\paused~q\) # ((\Equal2~0_combout\) # (!\Selector44~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \paused~q\,
	datac => \Equal2~0_combout\,
	datad => \Selector44~2_combout\,
	combout => \blink_currtime[7]~10_combout\);

-- Location: LCCOMB_X23_Y22_N2
\blink_currtime[7]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[7]~11_combout\ = (\state.ST_COUNT~q\ & ((\Equal2~1_combout\) # ((\blink_currtime[7]~10_combout\) # (!\Selector44~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_COUNT~q\,
	datab => \Equal2~1_combout\,
	datac => \Selector44~3_combout\,
	datad => \blink_currtime[7]~10_combout\,
	combout => \blink_currtime[7]~11_combout\);

-- Location: LCCOMB_X23_Y22_N12
\blink_currtime[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[7]~12_combout\ = (\blink_currtime[7]~11_combout\) # ((!\state.ST_COUNT~q\ & (\Selector44~7_combout\ & !\Selector44~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_COUNT~q\,
	datab => \Selector44~7_combout\,
	datac => \Selector44~16_combout\,
	datad => \blink_currtime[7]~11_combout\,
	combout => \blink_currtime[7]~12_combout\);

-- Location: LCCOMB_X23_Y22_N24
\blink_currtick[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtick[2]~3_combout\ = (!\currtime[1]~10_combout\ & (!\swpd_start|pressed~q\ & (!\blink_currtick[2]~2_combout\ & \blink_currtime[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currtime[1]~10_combout\,
	datab => \swpd_start|pressed~q\,
	datac => \blink_currtick[2]~2_combout\,
	datad => \blink_currtime[7]~12_combout\,
	combout => \blink_currtick[2]~3_combout\);

-- Location: LCCOMB_X23_Y22_N6
\blink_currtick[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtick[2]~4_combout\ = (\blink_currtime[7]~16_combout\ & ((\state.ST_BLINK~q\ & (!\Selector44~6_combout\)) # (!\state.ST_BLINK~q\ & ((!\blink_currtick[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_BLINK~q\,
	datab => \blink_currtime[7]~16_combout\,
	datac => \Selector44~6_combout\,
	datad => \blink_currtick[2]~3_combout\,
	combout => \blink_currtick[2]~4_combout\);

-- Location: FF_X24_Y22_N27
\blink_currtick[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \Add7~21_combout\,
	sclr => \ALT_INV_state.ST_BLINK~q\,
	ena => \blink_currtick[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_currtick(0));

-- Location: LCCOMB_X24_Y22_N10
\Add7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (blink_currtick(1) & (\Add7~1\ & VCC)) # (!blink_currtick(1) & (!\Add7~1\))
-- \Add7~3\ = CARRY((!blink_currtick(1) & !\Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink_currtick(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X22_Y22_N20
\blink_nextstate.ST_SETTIME~0_wirecell\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_nextstate.ST_SETTIME~0_wirecell_combout\ = !\blink_nextstate.ST_SETTIME~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \blink_nextstate.ST_SETTIME~0_combout\,
	combout => \blink_nextstate.ST_SETTIME~0_wirecell_combout\);

-- Location: FF_X22_Y22_N21
\blink_settick[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \blink_nextstate.ST_SETTIME~0_wirecell_combout\,
	asdata => VCC,
	sload => \ALT_INV_state.ST_COUNT~q\,
	ena => \blink_settick[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_settick(1));

-- Location: LCCOMB_X23_Y22_N28
\blink_currtick[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtick[1]~6_combout\ = (\Equal5~1_combout\ & ((\Equal5~0_combout\ & ((blink_settick(1)))) # (!\Equal5~0_combout\ & (\Add7~2_combout\)))) # (!\Equal5~1_combout\ & (\Add7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datab => \Equal5~1_combout\,
	datac => \Equal5~0_combout\,
	datad => blink_settick(1),
	combout => \blink_currtick[1]~6_combout\);

-- Location: LCCOMB_X25_Y22_N0
\blink_currtick[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtick[1]~7_combout\ = (\state.ST_BLINK~q\ & (\blink_currtick[1]~6_combout\)) # (!\state.ST_BLINK~q\ & ((\Selector29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ST_BLINK~q\,
	datac => \blink_currtick[1]~6_combout\,
	datad => \Selector29~0_combout\,
	combout => \blink_currtick[1]~7_combout\);

-- Location: LCCOMB_X25_Y22_N2
\blink_currtick[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtick[1]~8_combout\ = (\blink_currtick[2]~4_combout\ & (\blink_currtick[1]~7_combout\)) # (!\blink_currtick[2]~4_combout\ & ((blink_currtick(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \blink_currtick[1]~7_combout\,
	datac => blink_currtick(1),
	datad => \blink_currtick[2]~4_combout\,
	combout => \blink_currtick[1]~8_combout\);

-- Location: FF_X25_Y22_N3
\blink_currtick[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \blink_currtick[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_currtick(1));

-- Location: LCCOMB_X24_Y22_N12
\Add7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (blink_currtick(2) & ((GND) # (!\Add7~3\))) # (!blink_currtick(2) & (\Add7~3\ $ (GND)))
-- \Add7~5\ = CARRY((blink_currtick(2)) # (!\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink_currtick(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X24_Y22_N14
\Add7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (blink_currtick(3) & (\Add7~5\ & VCC)) # (!blink_currtick(3) & (!\Add7~5\))
-- \Add7~7\ = CARRY((!blink_currtick(3) & !\Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink_currtick(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X24_Y22_N0
\Add7~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (\Add7~6_combout\ & ((!\Equal5~1_combout\) # (!\Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~6_combout\,
	datac => \Equal5~0_combout\,
	datad => \Equal5~1_combout\,
	combout => \Add7~20_combout\);

-- Location: FF_X24_Y22_N1
\blink_currtick[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \Add7~20_combout\,
	sclr => \ALT_INV_state.ST_BLINK~q\,
	ena => \blink_currtick[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_currtick(3));

-- Location: LCCOMB_X24_Y22_N16
\Add7~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (blink_currtick(4) & ((GND) # (!\Add7~7\))) # (!blink_currtick(4) & (\Add7~7\ $ (GND)))
-- \Add7~9\ = CARRY((blink_currtick(4)) # (!\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink_currtick(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X24_Y22_N2
\Add7~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~19_combout\ = (\Add7~8_combout\ & ((!\Equal5~0_combout\) # (!\Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~1_combout\,
	datac => \Equal5~0_combout\,
	datad => \Add7~8_combout\,
	combout => \Add7~19_combout\);

-- Location: FF_X24_Y22_N3
\blink_currtick[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \Add7~19_combout\,
	sclr => \ALT_INV_state.ST_BLINK~q\,
	ena => \blink_currtick[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_currtick(4));

-- Location: LCCOMB_X24_Y22_N18
\Add7~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (blink_currtick(5) & (\Add7~9\ & VCC)) # (!blink_currtick(5) & (!\Add7~9\))
-- \Add7~11\ = CARRY((!blink_currtick(5) & !\Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink_currtick(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X24_Y22_N4
\Add7~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (\Add7~10_combout\ & ((!\Equal5~0_combout\) # (!\Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~1_combout\,
	datac => \Equal5~0_combout\,
	datad => \Add7~10_combout\,
	combout => \Add7~18_combout\);

-- Location: FF_X24_Y22_N5
\blink_currtick[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \Add7~18_combout\,
	sclr => \ALT_INV_state.ST_BLINK~q\,
	ena => \blink_currtick[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_currtick(5));

-- Location: LCCOMB_X24_Y22_N24
\Equal5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!blink_currtick(0) & (!blink_currtick(4) & (!blink_currtick(5) & !blink_currtick(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => blink_currtick(0),
	datab => blink_currtick(4),
	datac => blink_currtick(5),
	datad => blink_currtick(3),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X26_Y22_N4
\blink_currtick[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtick[2]~0_combout\ = (\Equal5~0_combout\ & ((\Equal5~1_combout\ & (blink_settick(2))) # (!\Equal5~1_combout\ & ((\Add7~4_combout\))))) # (!\Equal5~0_combout\ & (((\Add7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => blink_settick(2),
	datac => \Equal5~1_combout\,
	datad => \Add7~4_combout\,
	combout => \blink_currtick[2]~0_combout\);

-- Location: LCCOMB_X25_Y22_N10
\blink_currtick[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtick[2]~1_combout\ = (\state.ST_BLINK~q\ & ((\blink_currtick[2]~0_combout\))) # (!\state.ST_BLINK~q\ & (!\Selector29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ST_BLINK~q\,
	datac => \Selector29~0_combout\,
	datad => \blink_currtick[2]~0_combout\,
	combout => \blink_currtick[2]~1_combout\);

-- Location: LCCOMB_X25_Y22_N12
\blink_currtick[2]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtick[2]~5_combout\ = (\blink_currtick[2]~4_combout\ & (\blink_currtick[2]~1_combout\)) # (!\blink_currtick[2]~4_combout\ & ((blink_currtick(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink_currtick[2]~1_combout\,
	datac => blink_currtick(2),
	datad => \blink_currtick[2]~4_combout\,
	combout => \blink_currtick[2]~5_combout\);

-- Location: FF_X25_Y22_N13
\blink_currtick[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \blink_currtick[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_currtick(2));

-- Location: LCCOMB_X24_Y22_N20
\Add7~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (blink_currtick(6) & ((GND) # (!\Add7~11\))) # (!blink_currtick(6) & (\Add7~11\ $ (GND)))
-- \Add7~13\ = CARRY((blink_currtick(6)) # (!\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink_currtick(6),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X24_Y22_N6
\Add7~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~17_combout\ = (\Add7~12_combout\ & ((!\Equal5~0_combout\) # (!\Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~1_combout\,
	datac => \Equal5~0_combout\,
	datad => \Add7~12_combout\,
	combout => \Add7~17_combout\);

-- Location: FF_X24_Y22_N7
\blink_currtick[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \Add7~17_combout\,
	sclr => \ALT_INV_state.ST_BLINK~q\,
	ena => \blink_currtick[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_currtick(6));

-- Location: LCCOMB_X24_Y22_N22
\Add7~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = \Add7~13\ $ (!blink_currtick(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => blink_currtick(7),
	cin => \Add7~13\,
	combout => \Add7~14_combout\);

-- Location: LCCOMB_X24_Y22_N28
\Add7~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (\Add7~14_combout\ & ((!\Equal5~0_combout\) # (!\Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~14_combout\,
	datab => \Equal5~1_combout\,
	datac => \Equal5~0_combout\,
	combout => \Add7~16_combout\);

-- Location: FF_X24_Y22_N29
\blink_currtick[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \Add7~16_combout\,
	sclr => \ALT_INV_state.ST_BLINK~q\,
	ena => \blink_currtick[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_currtick(7));

-- Location: LCCOMB_X25_Y22_N8
\Equal5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!blink_currtick(2) & (!blink_currtick(1) & (!blink_currtick(6) & !blink_currtick(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => blink_currtick(2),
	datab => blink_currtick(1),
	datac => blink_currtick(6),
	datad => blink_currtick(7),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X23_Y22_N4
\blink_currtime[7]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[7]~8_combout\ = (\sw_in[4]~input_o\ & ((\Equal5~1_combout\) # (!\state.ST_BLINK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_BLINK~q\,
	datab => \sw_in[4]~input_o\,
	datad => \Equal5~1_combout\,
	combout => \blink_currtime[7]~8_combout\);

-- Location: LCCOMB_X23_Y22_N14
\blink_currtime[7]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[7]~9_combout\ = (\blink_currtime[7]~8_combout\ & (\tg1|ticks\(1) & ((\Equal5~0_combout\) # (!\state.ST_BLINK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_BLINK~q\,
	datab => \Equal5~0_combout\,
	datac => \blink_currtime[7]~8_combout\,
	datad => \tg1|ticks\(1),
	combout => \blink_currtime[7]~9_combout\);

-- Location: LCCOMB_X23_Y22_N22
\blink_currtime[7]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[7]~15_combout\ = (\blink_currtime[7]~9_combout\ & (((!\blink_currtime[7]~12_combout\) # (!\blink_currtime[7]~13_combout\)) # (!\blink_currtime[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blink_currtime[7]~14_combout\,
	datab => \blink_currtime[7]~13_combout\,
	datac => \blink_currtime[7]~9_combout\,
	datad => \blink_currtime[7]~12_combout\,
	combout => \blink_currtime[7]~15_combout\);

-- Location: FF_X25_Y22_N15
\blink_currtime[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \blink_currtime[0]~17_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.ST_BLINK~q\,
	ena => \blink_currtime[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_currtime(0));

-- Location: LCCOMB_X25_Y22_N16
\blink_currtime[1]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[1]~19_combout\ = (blink_currtime(1) & (\blink_currtime[0]~18\ & VCC)) # (!blink_currtime(1) & (!\blink_currtime[0]~18\))
-- \blink_currtime[1]~20\ = CARRY((!blink_currtime(1) & !\blink_currtime[0]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink_currtime(1),
	datad => VCC,
	cin => \blink_currtime[0]~18\,
	combout => \blink_currtime[1]~19_combout\,
	cout => \blink_currtime[1]~20\);

-- Location: LCCOMB_X26_Y22_N10
\blink_currtime[7]~13_wirecell\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[7]~13_wirecell_combout\ = !\blink_currtime[7]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \blink_currtime[7]~13_combout\,
	combout => \blink_currtime[7]~13_wirecell_combout\);

-- Location: FF_X25_Y22_N17
\blink_currtime[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \blink_currtime[1]~19_combout\,
	asdata => \blink_currtime[7]~13_wirecell_combout\,
	sload => \ALT_INV_state.ST_BLINK~q\,
	ena => \blink_currtime[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_currtime(1));

-- Location: LCCOMB_X25_Y22_N18
\blink_currtime[2]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[2]~21_combout\ = (blink_currtime(2) & ((GND) # (!\blink_currtime[1]~20\))) # (!blink_currtime(2) & (\blink_currtime[1]~20\ $ (GND)))
-- \blink_currtime[2]~22\ = CARRY((blink_currtime(2)) # (!\blink_currtime[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink_currtime(2),
	datad => VCC,
	cin => \blink_currtime[1]~20\,
	combout => \blink_currtime[2]~21_combout\,
	cout => \blink_currtime[2]~22\);

-- Location: LCCOMB_X22_Y22_N22
\Selector30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\blink_currtime[7]~13_combout\ & ((\swpd_increase|pressed~q\) # ((\swpd_decrease|pressed~q\) # (!\state.ST_COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swpd_increase|pressed~q\,
	datab => \swpd_decrease|pressed~q\,
	datac => \blink_currtime[7]~13_combout\,
	datad => \state.ST_COUNT~q\,
	combout => \Selector30~0_combout\);

-- Location: FF_X25_Y22_N19
\blink_currtime[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \blink_currtime[2]~21_combout\,
	asdata => \Selector30~0_combout\,
	sload => \ALT_INV_state.ST_BLINK~q\,
	ena => \blink_currtime[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_currtime(2));

-- Location: LCCOMB_X25_Y22_N20
\blink_currtime[3]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[3]~23_combout\ = (blink_currtime(3) & (\blink_currtime[2]~22\ & VCC)) # (!blink_currtime(3) & (!\blink_currtime[2]~22\))
-- \blink_currtime[3]~24\ = CARRY((!blink_currtime(3) & !\blink_currtime[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink_currtime(3),
	datad => VCC,
	cin => \blink_currtime[2]~22\,
	combout => \blink_currtime[3]~23_combout\,
	cout => \blink_currtime[3]~24\);

-- Location: LCCOMB_X25_Y22_N30
\Selector29~0_wirecell\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector29~0_wirecell_combout\ = !\Selector29~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector29~0_combout\,
	combout => \Selector29~0_wirecell_combout\);

-- Location: FF_X25_Y22_N21
\blink_currtime[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \blink_currtime[3]~23_combout\,
	asdata => \Selector29~0_wirecell_combout\,
	sload => \ALT_INV_state.ST_BLINK~q\,
	ena => \blink_currtime[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_currtime(3));

-- Location: LCCOMB_X25_Y22_N22
\blink_currtime[4]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[4]~25_combout\ = (blink_currtime(4) & ((GND) # (!\blink_currtime[3]~24\))) # (!blink_currtime(4) & (\blink_currtime[3]~24\ $ (GND)))
-- \blink_currtime[4]~26\ = CARRY((blink_currtime(4)) # (!\blink_currtime[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink_currtime(4),
	datad => VCC,
	cin => \blink_currtime[3]~24\,
	combout => \blink_currtime[4]~25_combout\,
	cout => \blink_currtime[4]~26\);

-- Location: FF_X25_Y22_N23
\blink_currtime[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \blink_currtime[4]~25_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.ST_BLINK~q\,
	ena => \blink_currtime[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_currtime(4));

-- Location: LCCOMB_X25_Y22_N24
\blink_currtime[5]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[5]~27_combout\ = (blink_currtime(5) & (\blink_currtime[4]~26\ & VCC)) # (!blink_currtime(5) & (!\blink_currtime[4]~26\))
-- \blink_currtime[5]~28\ = CARRY((!blink_currtime(5) & !\blink_currtime[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink_currtime(5),
	datad => VCC,
	cin => \blink_currtime[4]~26\,
	combout => \blink_currtime[5]~27_combout\,
	cout => \blink_currtime[5]~28\);

-- Location: FF_X25_Y22_N25
\blink_currtime[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \blink_currtime[5]~27_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.ST_BLINK~q\,
	ena => \blink_currtime[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_currtime(5));

-- Location: LCCOMB_X25_Y22_N26
\blink_currtime[6]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[6]~29_combout\ = (blink_currtime(6) & ((GND) # (!\blink_currtime[5]~28\))) # (!blink_currtime(6) & (\blink_currtime[5]~28\ $ (GND)))
-- \blink_currtime[6]~30\ = CARRY((blink_currtime(6)) # (!\blink_currtime[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink_currtime(6),
	datad => VCC,
	cin => \blink_currtime[5]~28\,
	combout => \blink_currtime[6]~29_combout\,
	cout => \blink_currtime[6]~30\);

-- Location: FF_X25_Y22_N27
\blink_currtime[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \blink_currtime[6]~29_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.ST_BLINK~q\,
	ena => \blink_currtime[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_currtime(6));

-- Location: LCCOMB_X25_Y22_N28
\blink_currtime[7]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_currtime[7]~31_combout\ = \blink_currtime[6]~30\ $ (!blink_currtime(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => blink_currtime(7),
	cin => \blink_currtime[6]~30\,
	combout => \blink_currtime[7]~31_combout\);

-- Location: FF_X25_Y22_N29
\blink_currtime[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \blink_currtime[7]~31_combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_state.ST_BLINK~q\,
	ena => \blink_currtime[7]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink_currtime(7));

-- Location: LCCOMB_X25_Y22_N4
\Selector44~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~5_combout\ = (!blink_currtime(6) & (!blink_currtime(7) & (!blink_currtime(4) & !blink_currtime(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => blink_currtime(6),
	datab => blink_currtime(7),
	datac => blink_currtime(4),
	datad => blink_currtime(5),
	combout => \Selector44~5_combout\);

-- Location: LCCOMB_X25_Y22_N6
\Selector44~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~4_combout\ = (!blink_currtime(2) & (!blink_currtime(1) & (blink_currtime(0) & !blink_currtime(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => blink_currtime(2),
	datab => blink_currtime(1),
	datac => blink_currtime(0),
	datad => blink_currtime(3),
	combout => \Selector44~4_combout\);

-- Location: LCCOMB_X24_Y22_N30
\Selector44~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~6_combout\ = (\Selector44~5_combout\ & (\Equal5~1_combout\ & (\Equal5~0_combout\ & \Selector44~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~5_combout\,
	datab => \Equal5~1_combout\,
	datac => \Equal5~0_combout\,
	datad => \Selector44~4_combout\,
	combout => \Selector44~6_combout\);

-- Location: LCCOMB_X23_Y20_N6
\Selector44~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector44~10_combout\ = (\tg1|ticks\(1) & (\state.ST_BLINK~q\ & \Selector44~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tg1|ticks\(1),
	datac => \state.ST_BLINK~q\,
	datad => \Selector44~6_combout\,
	combout => \Selector44~10_combout\);

-- Location: LCCOMB_X22_Y20_N20
\state.ST_COUNT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.ST_COUNT~0_combout\ = (!\Selector44~10_combout\ & (\state.ST_COUNT~q\ & !\Selector44~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~10_combout\,
	datac => \state.ST_COUNT~q\,
	datad => \Selector44~15_combout\,
	combout => \state.ST_COUNT~0_combout\);

-- Location: LCCOMB_X22_Y20_N26
\state.ST_COUNT~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.ST_COUNT~1_combout\ = (\Selector44~10_combout\ & ((\blink_nextstate.ST_COUNT~q\) # ((\Selector44~13_combout\ & \state.ST_COUNT~0_combout\)))) # (!\Selector44~10_combout\ & (((\Selector44~13_combout\ & \state.ST_COUNT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~10_combout\,
	datab => \blink_nextstate.ST_COUNT~q\,
	datac => \Selector44~13_combout\,
	datad => \state.ST_COUNT~0_combout\,
	combout => \state.ST_COUNT~1_combout\);

-- Location: FF_X22_Y20_N27
\state.ST_COUNT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \state.ST_COUNT~1_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ST_COUNT~q\);

-- Location: LCCOMB_X23_Y20_N22
\currtime[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \currtime[1]~10_combout\ = (!\state.ST_COUNT~q\ & \swpd_stopwatch|pressed~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.ST_COUNT~q\,
	datad => \swpd_stopwatch|pressed~q\,
	combout => \currtime[1]~10_combout\);

-- Location: FF_X24_Y20_N15
\currtime[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \currtime[0]~8_combout\,
	asdata => settime(0),
	sclr => \currtime[1]~10_combout\,
	sload => \ALT_INV_state.ST_COUNT~q\,
	ena => \currtime[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => currtime(0));

-- Location: FF_X23_Y21_N9
\settime[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \settime[0]~12_combout\,
	asdata => currtime(0),
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \settime[4]~14_combout\,
	sload => \state.ST_COUNT~q\,
	ena => \settime[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => settime(0));

-- Location: FF_X23_Y21_N11
\settime[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \settime[1]~18_combout\,
	asdata => currtime(1),
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	sclr => \settime[4]~14_combout\,
	sload => \state.ST_COUNT~q\,
	ena => \settime[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => settime(1));

-- Location: LCCOMB_X23_Y21_N24
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!settime(1) & (!settime(0) & (!settime(3) & !settime(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => settime(1),
	datab => settime(0),
	datac => settime(3),
	datad => settime(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X22_Y21_N8
\settime[4]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime[4]~32_combout\ = (\swlpd_decrease|pressed~q\ & (\Equal1~0_combout\ & ((\Equal1~1_combout\)))) # (!\swlpd_decrease|pressed~q\ & (((\Equal1~0_combout\ & \Equal1~1_combout\)) # (!\swpd_decrease|pressed~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swlpd_decrease|pressed~q\,
	datab => \Equal1~0_combout\,
	datac => \swpd_decrease|pressed~q\,
	datad => \Equal1~1_combout\,
	combout => \settime[4]~32_combout\);

-- Location: LCCOMB_X22_Y21_N22
\Selector45~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector45~1_combout\ = (\blink_nextstate.ST_SETTIME~1_combout\) # ((\settime[4]~32_combout\ & ((\always0~0_combout\) # (!\Selector44~7_combout\))) # (!\settime[4]~32_combout\ & (\always0~0_combout\ & !\Selector44~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \settime[4]~32_combout\,
	datab => \always0~0_combout\,
	datac => \Selector44~7_combout\,
	datad => \blink_nextstate.ST_SETTIME~1_combout\,
	combout => \Selector45~1_combout\);

-- Location: LCCOMB_X23_Y22_N30
\settime[4]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime[4]~11_combout\ = (\blink_nextstate.ST_SETTIME~0_combout\ & ((\paused~q\) # (!\settime[4]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \paused~q\,
	datac => \blink_nextstate.ST_SETTIME~0_combout\,
	datad => \settime[4]~10_combout\,
	combout => \settime[4]~11_combout\);

-- Location: LCCOMB_X22_Y21_N18
\Selector45~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\state.ST_BLINK~q\ & (((!\Selector44~6_combout\)))) # (!\state.ST_BLINK~q\ & (\state.ST_COUNT~q\ & (!\settime[4]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_COUNT~q\,
	datab => \state.ST_BLINK~q\,
	datac => \settime[4]~11_combout\,
	datad => \Selector44~6_combout\,
	combout => \Selector45~0_combout\);

-- Location: LCCOMB_X22_Y21_N0
\Selector45~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector45~2_combout\ = (\Selector45~0_combout\) # ((\Selector45~1_combout\ & (!\state.ST_COUNT~q\ & !\state.ST_BLINK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~1_combout\,
	datab => \state.ST_COUNT~q\,
	datac => \state.ST_BLINK~q\,
	datad => \Selector45~0_combout\,
	combout => \Selector45~2_combout\);

-- Location: FF_X22_Y21_N1
\state.ST_BLINK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \Selector45~2_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \tg1|ticks\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ST_BLINK~q\);

-- Location: LCCOMB_X24_Y21_N14
\blink_state~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \blink_state~0_combout\ = (\blink_state~q\ & ((!\blink_currtime[7]~15_combout\))) # (!\blink_state~q\ & (\state.ST_BLINK~q\ & \blink_currtime[7]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_BLINK~q\,
	datac => \blink_state~q\,
	datad => \blink_currtime[7]~15_combout\,
	combout => \blink_state~0_combout\);

-- Location: FF_X24_Y21_N15
blink_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \blink_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blink_state~q\);

-- Location: LCCOMB_X22_Y21_N12
\settime_blink~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime_blink~1_combout\ = (!\swpd_increase|pressed~q\ & (!\swlpd_increase|pressed~q\ & (!\swpd_decrease|pressed~q\ & !\swlpd_decrease|pressed~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \swpd_increase|pressed~q\,
	datab => \swlpd_increase|pressed~q\,
	datac => \swpd_decrease|pressed~q\,
	datad => \swlpd_decrease|pressed~q\,
	combout => \settime_blink~1_combout\);

-- Location: LCCOMB_X22_Y21_N24
\settime_blink~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime_blink~5_combout\ = (!settime_blink(0) & \settime_blink~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => settime_blink(0),
	datad => \settime_blink~1_combout\,
	combout => \settime_blink~5_combout\);

-- Location: FF_X22_Y21_N25
\settime_blink[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \settime_blink~5_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \settime_blink[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => settime_blink(0));

-- Location: LCCOMB_X22_Y21_N30
\settime_blink~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime_blink~4_combout\ = (\settime_blink~1_combout\ & (settime_blink(1) $ (settime_blink(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \settime_blink~1_combout\,
	datac => settime_blink(1),
	datad => settime_blink(0),
	combout => \settime_blink~4_combout\);

-- Location: FF_X22_Y21_N31
\settime_blink[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \settime_blink~4_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \settime_blink[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => settime_blink(1));

-- Location: LCCOMB_X22_Y21_N16
\settime_blink~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime_blink~3_combout\ = (\settime_blink~1_combout\ & (settime_blink(2) $ (((settime_blink(1) & settime_blink(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \settime_blink~1_combout\,
	datab => settime_blink(1),
	datac => settime_blink(2),
	datad => settime_blink(0),
	combout => \settime_blink~3_combout\);

-- Location: FF_X22_Y21_N17
\settime_blink[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \settime_blink~3_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \settime_blink[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => settime_blink(2));

-- Location: LCCOMB_X22_Y21_N14
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = settime_blink(3) $ (((settime_blink(2) & (settime_blink(1) & settime_blink(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => settime_blink(3),
	datab => settime_blink(2),
	datac => settime_blink(1),
	datad => settime_blink(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X22_Y21_N26
\settime_blink~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \settime_blink~2_combout\ = (\Add0~0_combout\ & \settime_blink~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \settime_blink~1_combout\,
	combout => \settime_blink~2_combout\);

-- Location: FF_X22_Y21_N27
\settime_blink[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \settime_blink~2_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \settime_blink[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => settime_blink(3));

-- Location: LCCOMB_X22_Y21_N20
\Selector78~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector78~1_combout\ = (\state.ST_BLINK~q\) # ((settime_blink(3) & !\state.ST_SETTIME~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => settime_blink(3),
	datac => \state.ST_SETTIME~q\,
	datad => \state.ST_BLINK~q\,
	combout => \Selector78~1_combout\);

-- Location: LCCOMB_X24_Y21_N16
\Selector78~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\state.ST_COUNT~q\ & ((currtime(0)))) # (!\state.ST_COUNT~q\ & (settime(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => settime(0),
	datac => \state.ST_COUNT~q\,
	datad => currtime(0),
	combout => \Selector78~0_combout\);

-- Location: LCCOMB_X24_Y21_N12
\Selector78~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector78~2_combout\ = (\state.ST_BLINK~q\ & (((!\Selector78~1_combout\ & \Selector78~0_combout\)) # (!\blink_state~q\))) # (!\state.ST_BLINK~q\ & (((!\Selector78~1_combout\ & \Selector78~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_BLINK~q\,
	datab => \blink_state~q\,
	datac => \Selector78~1_combout\,
	datad => \Selector78~0_combout\,
	combout => \Selector78~2_combout\);

-- Location: LCCOMB_X24_Y21_N4
\display[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \display[2]~0_combout\ = (\state.ST_BLINK~q\ & (\tg1|ticks\(1))) # (!\state.ST_BLINK~q\ & ((\tg1|ticks\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tg1|ticks\(1),
	datac => \tg1|ticks\(2),
	datad => \state.ST_BLINK~q\,
	combout => \display[2]~0_combout\);

-- Location: FF_X24_Y21_N13
\display[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \Selector78~2_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \display[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display(0));

-- Location: LCCOMB_X24_Y21_N2
\Selector77~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\state.ST_COUNT~q\ & ((currtime(1)))) # (!\state.ST_COUNT~q\ & (settime(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => settime(1),
	datac => currtime(1),
	datad => \state.ST_COUNT~q\,
	combout => \Selector77~0_combout\);

-- Location: LCCOMB_X24_Y21_N26
\Selector77~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector77~1_combout\ = (\state.ST_BLINK~q\ & (((!\Selector78~1_combout\ & \Selector77~0_combout\)) # (!\blink_state~q\))) # (!\state.ST_BLINK~q\ & (((!\Selector78~1_combout\ & \Selector77~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_BLINK~q\,
	datab => \blink_state~q\,
	datac => \Selector78~1_combout\,
	datad => \Selector77~0_combout\,
	combout => \Selector77~1_combout\);

-- Location: FF_X24_Y21_N27
\display[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \Selector77~1_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \display[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display(1));

-- Location: LCCOMB_X24_Y21_N28
\Selector76~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\state.ST_COUNT~q\ & ((currtime(2)))) # (!\state.ST_COUNT~q\ & (settime(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => settime(2),
	datac => currtime(2),
	datad => \state.ST_COUNT~q\,
	combout => \Selector76~0_combout\);

-- Location: LCCOMB_X24_Y21_N8
\Selector76~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector76~1_combout\ = (\state.ST_BLINK~q\ & (((!\Selector78~1_combout\ & \Selector76~0_combout\)) # (!\blink_state~q\))) # (!\state.ST_BLINK~q\ & (((!\Selector78~1_combout\ & \Selector76~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_BLINK~q\,
	datab => \blink_state~q\,
	datac => \Selector78~1_combout\,
	datad => \Selector76~0_combout\,
	combout => \Selector76~1_combout\);

-- Location: FF_X24_Y21_N9
\display[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \Selector76~1_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \display[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display(2));

-- Location: LCCOMB_X24_Y20_N0
\Selector75~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\state.ST_COUNT~q\ & (currtime(3))) # (!\state.ST_COUNT~q\ & ((settime(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => currtime(3),
	datac => settime(3),
	datad => \state.ST_COUNT~q\,
	combout => \Selector75~0_combout\);

-- Location: LCCOMB_X24_Y21_N6
\Selector75~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector75~1_combout\ = (\state.ST_BLINK~q\ & (((!\Selector78~1_combout\ & \Selector75~0_combout\)) # (!\blink_state~q\))) # (!\state.ST_BLINK~q\ & (((!\Selector78~1_combout\ & \Selector75~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_BLINK~q\,
	datab => \blink_state~q\,
	datac => \Selector78~1_combout\,
	datad => \Selector75~0_combout\,
	combout => \Selector75~1_combout\);

-- Location: FF_X24_Y21_N7
\display[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \Selector75~1_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \display[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display(3));

-- Location: LCCOMB_X24_Y20_N6
\Selector74~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\state.ST_COUNT~q\ & (currtime(4))) # (!\state.ST_COUNT~q\ & ((settime(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => currtime(4),
	datac => settime(4),
	datad => \state.ST_COUNT~q\,
	combout => \Selector74~0_combout\);

-- Location: LCCOMB_X24_Y21_N24
\Selector74~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector74~1_combout\ = (\state.ST_BLINK~q\ & (((!\Selector78~1_combout\ & \Selector74~0_combout\)) # (!\blink_state~q\))) # (!\state.ST_BLINK~q\ & (((!\Selector78~1_combout\ & \Selector74~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_BLINK~q\,
	datab => \blink_state~q\,
	datac => \Selector78~1_combout\,
	datad => \Selector74~0_combout\,
	combout => \Selector74~1_combout\);

-- Location: FF_X24_Y21_N25
\display[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \Selector74~1_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \display[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display(4));

-- Location: LCCOMB_X24_Y21_N18
\Selector73~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\state.ST_COUNT~q\ & ((currtime(5)))) # (!\state.ST_COUNT~q\ & (settime(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => settime(5),
	datac => currtime(5),
	datad => \state.ST_COUNT~q\,
	combout => \Selector73~0_combout\);

-- Location: LCCOMB_X24_Y21_N22
\Selector73~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector73~1_combout\ = (\state.ST_BLINK~q\ & (((!\Selector78~1_combout\ & \Selector73~0_combout\)) # (!\blink_state~q\))) # (!\state.ST_BLINK~q\ & (((!\Selector78~1_combout\ & \Selector73~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_BLINK~q\,
	datab => \blink_state~q\,
	datac => \Selector78~1_combout\,
	datad => \Selector73~0_combout\,
	combout => \Selector73~1_combout\);

-- Location: FF_X24_Y21_N23
\display[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \Selector73~1_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \display[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display(5));

-- Location: LCCOMB_X24_Y21_N20
\Selector72~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\state.ST_COUNT~q\ & ((currtime(6)))) # (!\state.ST_COUNT~q\ & (settime(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => settime(6),
	datac => currtime(6),
	datad => \state.ST_COUNT~q\,
	combout => \Selector72~0_combout\);

-- Location: LCCOMB_X24_Y21_N0
\Selector72~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector72~1_combout\ = (\state.ST_BLINK~q\ & (((!\Selector78~1_combout\ & \Selector72~0_combout\)) # (!\blink_state~q\))) # (!\state.ST_BLINK~q\ & (((!\Selector78~1_combout\ & \Selector72~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_BLINK~q\,
	datab => \blink_state~q\,
	datac => \Selector78~1_combout\,
	datad => \Selector72~0_combout\,
	combout => \Selector72~1_combout\);

-- Location: FF_X24_Y21_N1
\display[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \Selector72~1_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \display[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display(6));

-- Location: LCCOMB_X24_Y21_N10
\Selector71~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\state.ST_COUNT~q\ & ((currtime(7)))) # (!\state.ST_COUNT~q\ & (settime(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => settime(7),
	datac => currtime(7),
	datad => \state.ST_COUNT~q\,
	combout => \Selector71~0_combout\);

-- Location: LCCOMB_X24_Y21_N30
\Selector71~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector71~1_combout\ = (\state.ST_BLINK~q\ & (((!\Selector78~1_combout\ & \Selector71~0_combout\)) # (!\blink_state~q\))) # (!\state.ST_BLINK~q\ & (((!\Selector78~1_combout\ & \Selector71~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ST_BLINK~q\,
	datab => \blink_state~q\,
	datac => \Selector78~1_combout\,
	datad => \Selector71~0_combout\,
	combout => \Selector71~1_combout\);

-- Location: FF_X24_Y21_N31
\display[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tick~clkctrl_outclk\,
	d => \Selector71~1_combout\,
	clrn => \sw_in[4]~inputclkctrl_outclk\,
	ena => \display[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => display(7));

ww_led_out(0) <= \led_out[0]~output_o\;

ww_led_out(1) <= \led_out[1]~output_o\;

ww_led_out(2) <= \led_out[2]~output_o\;

ww_led_out(3) <= \led_out[3]~output_o\;

ww_led_out(4) <= \led_out[4]~output_o\;

ww_led_out(5) <= \led_out[5]~output_o\;

ww_led_out(6) <= \led_out[6]~output_o\;

ww_led_out(7) <= \led_out[7]~output_o\;
END structure;


