-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "09/27/2018 12:45:55"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	relogio_descomp IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	TESTE_PALAVRA : OUT std_logic_vector(11 DOWNTO 0);
	TESTE_US : OUT std_logic_vector(3 DOWNTO 0)
	);
END relogio_descomp;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE_PALAVRA[0]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE_PALAVRA[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE_PALAVRA[2]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE_PALAVRA[3]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE_PALAVRA[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE_PALAVRA[5]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE_PALAVRA[6]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE_PALAVRA[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE_PALAVRA[8]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE_PALAVRA[9]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE_PALAVRA[10]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE_PALAVRA[11]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE_US[0]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE_US[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE_US[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TESTE_US[3]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF relogio_descomp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_TESTE_PALAVRA : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_TESTE_US : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \TESTE_PALAVRA[0]~output_o\ : std_logic;
SIGNAL \TESTE_PALAVRA[1]~output_o\ : std_logic;
SIGNAL \TESTE_PALAVRA[2]~output_o\ : std_logic;
SIGNAL \TESTE_PALAVRA[3]~output_o\ : std_logic;
SIGNAL \TESTE_PALAVRA[4]~output_o\ : std_logic;
SIGNAL \TESTE_PALAVRA[5]~output_o\ : std_logic;
SIGNAL \TESTE_PALAVRA[6]~output_o\ : std_logic;
SIGNAL \TESTE_PALAVRA[7]~output_o\ : std_logic;
SIGNAL \TESTE_PALAVRA[8]~output_o\ : std_logic;
SIGNAL \TESTE_PALAVRA[9]~output_o\ : std_logic;
SIGNAL \TESTE_PALAVRA[10]~output_o\ : std_logic;
SIGNAL \TESTE_PALAVRA[11]~output_o\ : std_logic;
SIGNAL \TESTE_US[0]~output_o\ : std_logic;
SIGNAL \TESTE_US[1]~output_o\ : std_logic;
SIGNAL \TESTE_US[2]~output_o\ : std_logic;
SIGNAL \TESTE_US[3]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \prescaler|prescaler_counter[0]~24_combout\ : std_logic;
SIGNAL \prescaler|LessThan0~8_combout\ : std_logic;
SIGNAL \prescaler|LessThan0~9_combout\ : std_logic;
SIGNAL \prescaler|LessThan0~3_combout\ : std_logic;
SIGNAL \prescaler|LessThan0~4_combout\ : std_logic;
SIGNAL \prescaler|LessThan0~5_combout\ : std_logic;
SIGNAL \prescaler|LessThan0~2_combout\ : std_logic;
SIGNAL \prescaler|LessThan0~6_combout\ : std_logic;
SIGNAL \prescaler|LessThan0~7_combout\ : std_logic;
SIGNAL \prescaler|LessThan0~11_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[0]~25\ : std_logic;
SIGNAL \prescaler|prescaler_counter[1]~26_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[1]~27\ : std_logic;
SIGNAL \prescaler|prescaler_counter[2]~28_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[2]~29\ : std_logic;
SIGNAL \prescaler|prescaler_counter[3]~30_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[3]~31\ : std_logic;
SIGNAL \prescaler|prescaler_counter[4]~32_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[4]~33\ : std_logic;
SIGNAL \prescaler|prescaler_counter[5]~34_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[5]~35\ : std_logic;
SIGNAL \prescaler|prescaler_counter[6]~36_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[6]~37\ : std_logic;
SIGNAL \prescaler|prescaler_counter[7]~38_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[7]~39\ : std_logic;
SIGNAL \prescaler|prescaler_counter[8]~40_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[8]~41\ : std_logic;
SIGNAL \prescaler|prescaler_counter[9]~42_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[9]~43\ : std_logic;
SIGNAL \prescaler|prescaler_counter[10]~44_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[10]~45\ : std_logic;
SIGNAL \prescaler|prescaler_counter[11]~46_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[11]~47\ : std_logic;
SIGNAL \prescaler|prescaler_counter[12]~48_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[12]~49\ : std_logic;
SIGNAL \prescaler|prescaler_counter[13]~50_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[13]~51\ : std_logic;
SIGNAL \prescaler|prescaler_counter[14]~52_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[14]~53\ : std_logic;
SIGNAL \prescaler|prescaler_counter[15]~54_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[15]~55\ : std_logic;
SIGNAL \prescaler|prescaler_counter[16]~56_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[16]~57\ : std_logic;
SIGNAL \prescaler|prescaler_counter[17]~58_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[17]~59\ : std_logic;
SIGNAL \prescaler|prescaler_counter[18]~60_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[18]~61\ : std_logic;
SIGNAL \prescaler|prescaler_counter[19]~62_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[19]~63\ : std_logic;
SIGNAL \prescaler|prescaler_counter[20]~64_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[20]~65\ : std_logic;
SIGNAL \prescaler|prescaler_counter[21]~66_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[21]~67\ : std_logic;
SIGNAL \prescaler|prescaler_counter[22]~68_combout\ : std_logic;
SIGNAL \prescaler|prescaler_counter[22]~69\ : std_logic;
SIGNAL \prescaler|prescaler_counter[23]~70_combout\ : std_logic;
SIGNAL \prescaler|LessThan0~10_combout\ : std_logic;
SIGNAL \prescaler|newClock~0_combout\ : std_logic;
SIGNAL \prescaler|newClock~feeder_combout\ : std_logic;
SIGNAL \prescaler|newClock~q\ : std_logic;
SIGNAL \sequenciador|fstate.ComparaUSCom9~0_combout\ : std_logic;
SIGNAL \sequenciador|fstate.ComparaUSCom9~q\ : std_logic;
SIGNAL \prescaler|prescaler_counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \sequenciador|ALT_INV_fstate.ComparaUSCom9~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
TESTE_PALAVRA <= ww_TESTE_PALAVRA;
TESTE_US <= ww_TESTE_US;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\sequenciador|ALT_INV_fstate.ComparaUSCom9~q\ <= NOT \sequenciador|fstate.ComparaUSCom9~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\TESTE_PALAVRA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TESTE_PALAVRA[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\TESTE_PALAVRA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TESTE_PALAVRA[1]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\TESTE_PALAVRA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TESTE_PALAVRA[2]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\TESTE_PALAVRA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sequenciador|ALT_INV_fstate.ComparaUSCom9~q\,
	devoe => ww_devoe,
	o => \TESTE_PALAVRA[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\TESTE_PALAVRA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TESTE_PALAVRA[4]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\TESTE_PALAVRA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TESTE_PALAVRA[5]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\TESTE_PALAVRA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TESTE_PALAVRA[6]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\TESTE_PALAVRA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TESTE_PALAVRA[7]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\TESTE_PALAVRA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TESTE_PALAVRA[8]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\TESTE_PALAVRA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TESTE_PALAVRA[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\TESTE_PALAVRA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TESTE_PALAVRA[10]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\TESTE_PALAVRA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sequenciador|fstate.ComparaUSCom9~q\,
	devoe => ww_devoe,
	o => \TESTE_PALAVRA[11]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\TESTE_US[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TESTE_US[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\TESTE_US[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TESTE_US[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\TESTE_US[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TESTE_US[2]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\TESTE_US[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \TESTE_US[3]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y4_N8
\prescaler|prescaler_counter[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[0]~24_combout\ = \prescaler|prescaler_counter\(0) $ (VCC)
-- \prescaler|prescaler_counter[0]~25\ = CARRY(\prescaler|prescaler_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|prescaler_counter\(0),
	datad => VCC,
	combout => \prescaler|prescaler_counter[0]~24_combout\,
	cout => \prescaler|prescaler_counter[0]~25\);

-- Location: LCCOMB_X1_Y3_N28
\prescaler|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|LessThan0~8_combout\ = (\prescaler|prescaler_counter\(18) & (\prescaler|prescaler_counter\(20) & (\prescaler|prescaler_counter\(19) & \prescaler|prescaler_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(18),
	datab => \prescaler|prescaler_counter\(20),
	datac => \prescaler|prescaler_counter\(19),
	datad => \prescaler|prescaler_counter\(17),
	combout => \prescaler|LessThan0~8_combout\);

-- Location: LCCOMB_X2_Y4_N26
\prescaler|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|LessThan0~9_combout\ = (\prescaler|prescaler_counter\(23) & (\prescaler|LessThan0~8_combout\ & \prescaler|prescaler_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|prescaler_counter\(23),
	datac => \prescaler|LessThan0~8_combout\,
	datad => \prescaler|prescaler_counter\(21),
	combout => \prescaler|LessThan0~9_combout\);

-- Location: LCCOMB_X1_Y4_N4
\prescaler|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|LessThan0~3_combout\ = (\prescaler|prescaler_counter\(5) & ((\prescaler|prescaler_counter\(2)) # ((\prescaler|prescaler_counter\(0)) # (\prescaler|prescaler_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(2),
	datab => \prescaler|prescaler_counter\(5),
	datac => \prescaler|prescaler_counter\(0),
	datad => \prescaler|prescaler_counter\(1),
	combout => \prescaler|LessThan0~3_combout\);

-- Location: LCCOMB_X1_Y4_N6
\prescaler|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|LessThan0~4_combout\ = (\prescaler|prescaler_counter\(6)) # ((\prescaler|prescaler_counter\(5) & ((\prescaler|prescaler_counter\(3)) # (\prescaler|prescaler_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(5),
	datab => \prescaler|prescaler_counter\(6),
	datac => \prescaler|prescaler_counter\(3),
	datad => \prescaler|prescaler_counter\(4),
	combout => \prescaler|LessThan0~4_combout\);

-- Location: LCCOMB_X1_Y4_N0
\prescaler|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|LessThan0~5_combout\ = (\prescaler|prescaler_counter\(7)) # ((\prescaler|prescaler_counter\(8)) # ((\prescaler|prescaler_counter\(9)) # (\prescaler|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(7),
	datab => \prescaler|prescaler_counter\(8),
	datac => \prescaler|prescaler_counter\(9),
	datad => \prescaler|LessThan0~4_combout\,
	combout => \prescaler|LessThan0~5_combout\);

-- Location: LCCOMB_X2_Y4_N2
\prescaler|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|LessThan0~2_combout\ = (\prescaler|prescaler_counter\(13) & (\prescaler|prescaler_counter\(11) & (\prescaler|prescaler_counter\(12) & \prescaler|prescaler_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(13),
	datab => \prescaler|prescaler_counter\(11),
	datac => \prescaler|prescaler_counter\(12),
	datad => \prescaler|prescaler_counter\(10),
	combout => \prescaler|LessThan0~2_combout\);

-- Location: LCCOMB_X2_Y4_N20
\prescaler|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|LessThan0~6_combout\ = (\prescaler|prescaler_counter\(15) & (\prescaler|LessThan0~2_combout\ & ((\prescaler|LessThan0~3_combout\) # (\prescaler|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(15),
	datab => \prescaler|LessThan0~3_combout\,
	datac => \prescaler|LessThan0~5_combout\,
	datad => \prescaler|LessThan0~2_combout\,
	combout => \prescaler|LessThan0~6_combout\);

-- Location: LCCOMB_X2_Y4_N28
\prescaler|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|LessThan0~7_combout\ = (\prescaler|prescaler_counter\(16)) # ((\prescaler|LessThan0~6_combout\) # ((\prescaler|prescaler_counter\(14) & \prescaler|prescaler_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(14),
	datab => \prescaler|prescaler_counter\(15),
	datac => \prescaler|prescaler_counter\(16),
	datad => \prescaler|LessThan0~6_combout\,
	combout => \prescaler|LessThan0~7_combout\);

-- Location: LCCOMB_X2_Y4_N30
\prescaler|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|LessThan0~11_combout\ = (\prescaler|prescaler_counter\(22) & ((\prescaler|prescaler_counter\(23)) # ((\prescaler|LessThan0~9_combout\ & \prescaler|LessThan0~7_combout\)))) # (!\prescaler|prescaler_counter\(22) & 
-- (((\prescaler|LessThan0~9_combout\ & \prescaler|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(22),
	datab => \prescaler|prescaler_counter\(23),
	datac => \prescaler|LessThan0~9_combout\,
	datad => \prescaler|LessThan0~7_combout\,
	combout => \prescaler|LessThan0~11_combout\);

-- Location: FF_X1_Y4_N9
\prescaler|prescaler_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[0]~24_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(0));

-- Location: LCCOMB_X1_Y4_N10
\prescaler|prescaler_counter[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[1]~26_combout\ = (\prescaler|prescaler_counter\(1) & (!\prescaler|prescaler_counter[0]~25\)) # (!\prescaler|prescaler_counter\(1) & ((\prescaler|prescaler_counter[0]~25\) # (GND)))
-- \prescaler|prescaler_counter[1]~27\ = CARRY((!\prescaler|prescaler_counter[0]~25\) # (!\prescaler|prescaler_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(1),
	datad => VCC,
	cin => \prescaler|prescaler_counter[0]~25\,
	combout => \prescaler|prescaler_counter[1]~26_combout\,
	cout => \prescaler|prescaler_counter[1]~27\);

-- Location: FF_X1_Y4_N11
\prescaler|prescaler_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[1]~26_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(1));

-- Location: LCCOMB_X1_Y4_N12
\prescaler|prescaler_counter[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[2]~28_combout\ = (\prescaler|prescaler_counter\(2) & (\prescaler|prescaler_counter[1]~27\ $ (GND))) # (!\prescaler|prescaler_counter\(2) & (!\prescaler|prescaler_counter[1]~27\ & VCC))
-- \prescaler|prescaler_counter[2]~29\ = CARRY((\prescaler|prescaler_counter\(2) & !\prescaler|prescaler_counter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(2),
	datad => VCC,
	cin => \prescaler|prescaler_counter[1]~27\,
	combout => \prescaler|prescaler_counter[2]~28_combout\,
	cout => \prescaler|prescaler_counter[2]~29\);

-- Location: FF_X1_Y4_N13
\prescaler|prescaler_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[2]~28_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(2));

-- Location: LCCOMB_X1_Y4_N14
\prescaler|prescaler_counter[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[3]~30_combout\ = (\prescaler|prescaler_counter\(3) & (!\prescaler|prescaler_counter[2]~29\)) # (!\prescaler|prescaler_counter\(3) & ((\prescaler|prescaler_counter[2]~29\) # (GND)))
-- \prescaler|prescaler_counter[3]~31\ = CARRY((!\prescaler|prescaler_counter[2]~29\) # (!\prescaler|prescaler_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|prescaler_counter\(3),
	datad => VCC,
	cin => \prescaler|prescaler_counter[2]~29\,
	combout => \prescaler|prescaler_counter[3]~30_combout\,
	cout => \prescaler|prescaler_counter[3]~31\);

-- Location: FF_X1_Y4_N15
\prescaler|prescaler_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[3]~30_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(3));

-- Location: LCCOMB_X1_Y4_N16
\prescaler|prescaler_counter[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[4]~32_combout\ = (\prescaler|prescaler_counter\(4) & (\prescaler|prescaler_counter[3]~31\ $ (GND))) # (!\prescaler|prescaler_counter\(4) & (!\prescaler|prescaler_counter[3]~31\ & VCC))
-- \prescaler|prescaler_counter[4]~33\ = CARRY((\prescaler|prescaler_counter\(4) & !\prescaler|prescaler_counter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|prescaler_counter\(4),
	datad => VCC,
	cin => \prescaler|prescaler_counter[3]~31\,
	combout => \prescaler|prescaler_counter[4]~32_combout\,
	cout => \prescaler|prescaler_counter[4]~33\);

-- Location: FF_X1_Y4_N17
\prescaler|prescaler_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[4]~32_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(4));

-- Location: LCCOMB_X1_Y4_N18
\prescaler|prescaler_counter[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[5]~34_combout\ = (\prescaler|prescaler_counter\(5) & (!\prescaler|prescaler_counter[4]~33\)) # (!\prescaler|prescaler_counter\(5) & ((\prescaler|prescaler_counter[4]~33\) # (GND)))
-- \prescaler|prescaler_counter[5]~35\ = CARRY((!\prescaler|prescaler_counter[4]~33\) # (!\prescaler|prescaler_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|prescaler_counter\(5),
	datad => VCC,
	cin => \prescaler|prescaler_counter[4]~33\,
	combout => \prescaler|prescaler_counter[5]~34_combout\,
	cout => \prescaler|prescaler_counter[5]~35\);

-- Location: FF_X1_Y4_N19
\prescaler|prescaler_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[5]~34_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(5));

-- Location: LCCOMB_X1_Y4_N20
\prescaler|prescaler_counter[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[6]~36_combout\ = (\prescaler|prescaler_counter\(6) & (\prescaler|prescaler_counter[5]~35\ $ (GND))) # (!\prescaler|prescaler_counter\(6) & (!\prescaler|prescaler_counter[5]~35\ & VCC))
-- \prescaler|prescaler_counter[6]~37\ = CARRY((\prescaler|prescaler_counter\(6) & !\prescaler|prescaler_counter[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|prescaler_counter\(6),
	datad => VCC,
	cin => \prescaler|prescaler_counter[5]~35\,
	combout => \prescaler|prescaler_counter[6]~36_combout\,
	cout => \prescaler|prescaler_counter[6]~37\);

-- Location: FF_X1_Y4_N21
\prescaler|prescaler_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[6]~36_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(6));

-- Location: LCCOMB_X1_Y4_N22
\prescaler|prescaler_counter[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[7]~38_combout\ = (\prescaler|prescaler_counter\(7) & (!\prescaler|prescaler_counter[6]~37\)) # (!\prescaler|prescaler_counter\(7) & ((\prescaler|prescaler_counter[6]~37\) # (GND)))
-- \prescaler|prescaler_counter[7]~39\ = CARRY((!\prescaler|prescaler_counter[6]~37\) # (!\prescaler|prescaler_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(7),
	datad => VCC,
	cin => \prescaler|prescaler_counter[6]~37\,
	combout => \prescaler|prescaler_counter[7]~38_combout\,
	cout => \prescaler|prescaler_counter[7]~39\);

-- Location: FF_X1_Y4_N23
\prescaler|prescaler_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[7]~38_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(7));

-- Location: LCCOMB_X1_Y4_N24
\prescaler|prescaler_counter[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[8]~40_combout\ = (\prescaler|prescaler_counter\(8) & (\prescaler|prescaler_counter[7]~39\ $ (GND))) # (!\prescaler|prescaler_counter\(8) & (!\prescaler|prescaler_counter[7]~39\ & VCC))
-- \prescaler|prescaler_counter[8]~41\ = CARRY((\prescaler|prescaler_counter\(8) & !\prescaler|prescaler_counter[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|prescaler_counter\(8),
	datad => VCC,
	cin => \prescaler|prescaler_counter[7]~39\,
	combout => \prescaler|prescaler_counter[8]~40_combout\,
	cout => \prescaler|prescaler_counter[8]~41\);

-- Location: FF_X1_Y4_N25
\prescaler|prescaler_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[8]~40_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(8));

-- Location: LCCOMB_X1_Y4_N26
\prescaler|prescaler_counter[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[9]~42_combout\ = (\prescaler|prescaler_counter\(9) & (!\prescaler|prescaler_counter[8]~41\)) # (!\prescaler|prescaler_counter\(9) & ((\prescaler|prescaler_counter[8]~41\) # (GND)))
-- \prescaler|prescaler_counter[9]~43\ = CARRY((!\prescaler|prescaler_counter[8]~41\) # (!\prescaler|prescaler_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(9),
	datad => VCC,
	cin => \prescaler|prescaler_counter[8]~41\,
	combout => \prescaler|prescaler_counter[9]~42_combout\,
	cout => \prescaler|prescaler_counter[9]~43\);

-- Location: FF_X1_Y4_N27
\prescaler|prescaler_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[9]~42_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(9));

-- Location: LCCOMB_X1_Y4_N28
\prescaler|prescaler_counter[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[10]~44_combout\ = (\prescaler|prescaler_counter\(10) & (\prescaler|prescaler_counter[9]~43\ $ (GND))) # (!\prescaler|prescaler_counter\(10) & (!\prescaler|prescaler_counter[9]~43\ & VCC))
-- \prescaler|prescaler_counter[10]~45\ = CARRY((\prescaler|prescaler_counter\(10) & !\prescaler|prescaler_counter[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|prescaler_counter\(10),
	datad => VCC,
	cin => \prescaler|prescaler_counter[9]~43\,
	combout => \prescaler|prescaler_counter[10]~44_combout\,
	cout => \prescaler|prescaler_counter[10]~45\);

-- Location: FF_X1_Y4_N29
\prescaler|prescaler_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[10]~44_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(10));

-- Location: LCCOMB_X1_Y4_N30
\prescaler|prescaler_counter[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[11]~46_combout\ = (\prescaler|prescaler_counter\(11) & (!\prescaler|prescaler_counter[10]~45\)) # (!\prescaler|prescaler_counter\(11) & ((\prescaler|prescaler_counter[10]~45\) # (GND)))
-- \prescaler|prescaler_counter[11]~47\ = CARRY((!\prescaler|prescaler_counter[10]~45\) # (!\prescaler|prescaler_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(11),
	datad => VCC,
	cin => \prescaler|prescaler_counter[10]~45\,
	combout => \prescaler|prescaler_counter[11]~46_combout\,
	cout => \prescaler|prescaler_counter[11]~47\);

-- Location: FF_X1_Y4_N31
\prescaler|prescaler_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[11]~46_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(11));

-- Location: LCCOMB_X1_Y3_N0
\prescaler|prescaler_counter[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[12]~48_combout\ = (\prescaler|prescaler_counter\(12) & (\prescaler|prescaler_counter[11]~47\ $ (GND))) # (!\prescaler|prescaler_counter\(12) & (!\prescaler|prescaler_counter[11]~47\ & VCC))
-- \prescaler|prescaler_counter[12]~49\ = CARRY((\prescaler|prescaler_counter\(12) & !\prescaler|prescaler_counter[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(12),
	datad => VCC,
	cin => \prescaler|prescaler_counter[11]~47\,
	combout => \prescaler|prescaler_counter[12]~48_combout\,
	cout => \prescaler|prescaler_counter[12]~49\);

-- Location: FF_X2_Y4_N23
\prescaler|prescaler_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \prescaler|prescaler_counter[12]~48_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(12));

-- Location: LCCOMB_X1_Y3_N2
\prescaler|prescaler_counter[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[13]~50_combout\ = (\prescaler|prescaler_counter\(13) & (!\prescaler|prescaler_counter[12]~49\)) # (!\prescaler|prescaler_counter\(13) & ((\prescaler|prescaler_counter[12]~49\) # (GND)))
-- \prescaler|prescaler_counter[13]~51\ = CARRY((!\prescaler|prescaler_counter[12]~49\) # (!\prescaler|prescaler_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(13),
	datad => VCC,
	cin => \prescaler|prescaler_counter[12]~49\,
	combout => \prescaler|prescaler_counter[13]~50_combout\,
	cout => \prescaler|prescaler_counter[13]~51\);

-- Location: FF_X2_Y4_N7
\prescaler|prescaler_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \prescaler|prescaler_counter[13]~50_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(13));

-- Location: LCCOMB_X1_Y3_N4
\prescaler|prescaler_counter[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[14]~52_combout\ = (\prescaler|prescaler_counter\(14) & (\prescaler|prescaler_counter[13]~51\ $ (GND))) # (!\prescaler|prescaler_counter\(14) & (!\prescaler|prescaler_counter[13]~51\ & VCC))
-- \prescaler|prescaler_counter[14]~53\ = CARRY((\prescaler|prescaler_counter\(14) & !\prescaler|prescaler_counter[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(14),
	datad => VCC,
	cin => \prescaler|prescaler_counter[13]~51\,
	combout => \prescaler|prescaler_counter[14]~52_combout\,
	cout => \prescaler|prescaler_counter[14]~53\);

-- Location: FF_X2_Y4_N11
\prescaler|prescaler_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \prescaler|prescaler_counter[14]~52_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(14));

-- Location: LCCOMB_X1_Y3_N6
\prescaler|prescaler_counter[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[15]~54_combout\ = (\prescaler|prescaler_counter\(15) & (!\prescaler|prescaler_counter[14]~53\)) # (!\prescaler|prescaler_counter\(15) & ((\prescaler|prescaler_counter[14]~53\) # (GND)))
-- \prescaler|prescaler_counter[15]~55\ = CARRY((!\prescaler|prescaler_counter[14]~53\) # (!\prescaler|prescaler_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(15),
	datad => VCC,
	cin => \prescaler|prescaler_counter[14]~53\,
	combout => \prescaler|prescaler_counter[15]~54_combout\,
	cout => \prescaler|prescaler_counter[15]~55\);

-- Location: FF_X2_Y4_N19
\prescaler|prescaler_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \prescaler|prescaler_counter[15]~54_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(15));

-- Location: LCCOMB_X1_Y3_N8
\prescaler|prescaler_counter[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[16]~56_combout\ = (\prescaler|prescaler_counter\(16) & (\prescaler|prescaler_counter[15]~55\ $ (GND))) # (!\prescaler|prescaler_counter\(16) & (!\prescaler|prescaler_counter[15]~55\ & VCC))
-- \prescaler|prescaler_counter[16]~57\ = CARRY((\prescaler|prescaler_counter\(16) & !\prescaler|prescaler_counter[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|prescaler_counter\(16),
	datad => VCC,
	cin => \prescaler|prescaler_counter[15]~55\,
	combout => \prescaler|prescaler_counter[16]~56_combout\,
	cout => \prescaler|prescaler_counter[16]~57\);

-- Location: FF_X2_Y4_N25
\prescaler|prescaler_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \prescaler|prescaler_counter[16]~56_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(16));

-- Location: LCCOMB_X1_Y3_N10
\prescaler|prescaler_counter[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[17]~58_combout\ = (\prescaler|prescaler_counter\(17) & (!\prescaler|prescaler_counter[16]~57\)) # (!\prescaler|prescaler_counter\(17) & ((\prescaler|prescaler_counter[16]~57\) # (GND)))
-- \prescaler|prescaler_counter[17]~59\ = CARRY((!\prescaler|prescaler_counter[16]~57\) # (!\prescaler|prescaler_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(17),
	datad => VCC,
	cin => \prescaler|prescaler_counter[16]~57\,
	combout => \prescaler|prescaler_counter[17]~58_combout\,
	cout => \prescaler|prescaler_counter[17]~59\);

-- Location: FF_X1_Y3_N11
\prescaler|prescaler_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[17]~58_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(17));

-- Location: LCCOMB_X1_Y3_N12
\prescaler|prescaler_counter[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[18]~60_combout\ = (\prescaler|prescaler_counter\(18) & (\prescaler|prescaler_counter[17]~59\ $ (GND))) # (!\prescaler|prescaler_counter\(18) & (!\prescaler|prescaler_counter[17]~59\ & VCC))
-- \prescaler|prescaler_counter[18]~61\ = CARRY((\prescaler|prescaler_counter\(18) & !\prescaler|prescaler_counter[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(18),
	datad => VCC,
	cin => \prescaler|prescaler_counter[17]~59\,
	combout => \prescaler|prescaler_counter[18]~60_combout\,
	cout => \prescaler|prescaler_counter[18]~61\);

-- Location: FF_X1_Y3_N13
\prescaler|prescaler_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[18]~60_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(18));

-- Location: LCCOMB_X1_Y3_N14
\prescaler|prescaler_counter[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[19]~62_combout\ = (\prescaler|prescaler_counter\(19) & (!\prescaler|prescaler_counter[18]~61\)) # (!\prescaler|prescaler_counter\(19) & ((\prescaler|prescaler_counter[18]~61\) # (GND)))
-- \prescaler|prescaler_counter[19]~63\ = CARRY((!\prescaler|prescaler_counter[18]~61\) # (!\prescaler|prescaler_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|prescaler_counter\(19),
	datad => VCC,
	cin => \prescaler|prescaler_counter[18]~61\,
	combout => \prescaler|prescaler_counter[19]~62_combout\,
	cout => \prescaler|prescaler_counter[19]~63\);

-- Location: FF_X1_Y3_N15
\prescaler|prescaler_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[19]~62_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(19));

-- Location: LCCOMB_X1_Y3_N16
\prescaler|prescaler_counter[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[20]~64_combout\ = (\prescaler|prescaler_counter\(20) & (\prescaler|prescaler_counter[19]~63\ $ (GND))) # (!\prescaler|prescaler_counter\(20) & (!\prescaler|prescaler_counter[19]~63\ & VCC))
-- \prescaler|prescaler_counter[20]~65\ = CARRY((\prescaler|prescaler_counter\(20) & !\prescaler|prescaler_counter[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|prescaler_counter\(20),
	datad => VCC,
	cin => \prescaler|prescaler_counter[19]~63\,
	combout => \prescaler|prescaler_counter[20]~64_combout\,
	cout => \prescaler|prescaler_counter[20]~65\);

-- Location: FF_X1_Y3_N17
\prescaler|prescaler_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[20]~64_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(20));

-- Location: LCCOMB_X1_Y3_N18
\prescaler|prescaler_counter[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[21]~66_combout\ = (\prescaler|prescaler_counter\(21) & (!\prescaler|prescaler_counter[20]~65\)) # (!\prescaler|prescaler_counter\(21) & ((\prescaler|prescaler_counter[20]~65\) # (GND)))
-- \prescaler|prescaler_counter[21]~67\ = CARRY((!\prescaler|prescaler_counter[20]~65\) # (!\prescaler|prescaler_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|prescaler_counter\(21),
	datad => VCC,
	cin => \prescaler|prescaler_counter[20]~65\,
	combout => \prescaler|prescaler_counter[21]~66_combout\,
	cout => \prescaler|prescaler_counter[21]~67\);

-- Location: FF_X1_Y3_N19
\prescaler|prescaler_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[21]~66_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(21));

-- Location: LCCOMB_X1_Y3_N20
\prescaler|prescaler_counter[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[22]~68_combout\ = (\prescaler|prescaler_counter\(22) & (\prescaler|prescaler_counter[21]~67\ $ (GND))) # (!\prescaler|prescaler_counter\(22) & (!\prescaler|prescaler_counter[21]~67\ & VCC))
-- \prescaler|prescaler_counter[22]~69\ = CARRY((\prescaler|prescaler_counter\(22) & !\prescaler|prescaler_counter[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|prescaler_counter\(22),
	datad => VCC,
	cin => \prescaler|prescaler_counter[21]~67\,
	combout => \prescaler|prescaler_counter[22]~68_combout\,
	cout => \prescaler|prescaler_counter[22]~69\);

-- Location: FF_X1_Y3_N21
\prescaler|prescaler_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[22]~68_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(22));

-- Location: LCCOMB_X1_Y3_N22
\prescaler|prescaler_counter[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|prescaler_counter[23]~70_combout\ = \prescaler|prescaler_counter\(23) $ (\prescaler|prescaler_counter[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|prescaler_counter\(23),
	cin => \prescaler|prescaler_counter[22]~69\,
	combout => \prescaler|prescaler_counter[23]~70_combout\);

-- Location: FF_X1_Y3_N23
\prescaler|prescaler_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|prescaler_counter[23]~70_combout\,
	sclr => \prescaler|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|prescaler_counter\(23));

-- Location: LCCOMB_X2_Y4_N12
\prescaler|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|LessThan0~10_combout\ = (\prescaler|prescaler_counter\(23) & \prescaler|prescaler_counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prescaler|prescaler_counter\(23),
	datad => \prescaler|prescaler_counter\(22),
	combout => \prescaler|LessThan0~10_combout\);

-- Location: LCCOMB_X2_Y4_N4
\prescaler|newClock~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|newClock~0_combout\ = \prescaler|newClock~q\ $ (((\prescaler|LessThan0~10_combout\) # ((\prescaler|LessThan0~9_combout\ & \prescaler|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prescaler|LessThan0~10_combout\,
	datab => \prescaler|newClock~q\,
	datac => \prescaler|LessThan0~9_combout\,
	datad => \prescaler|LessThan0~7_combout\,
	combout => \prescaler|newClock~0_combout\);

-- Location: LCCOMB_X2_Y4_N14
\prescaler|newClock~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler|newClock~feeder_combout\ = \prescaler|newClock~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \prescaler|newClock~0_combout\,
	combout => \prescaler|newClock~feeder_combout\);

-- Location: FF_X2_Y4_N15
\prescaler|newClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \prescaler|newClock~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prescaler|newClock~q\);

-- Location: LCCOMB_X2_Y4_N16
\sequenciador|fstate.ComparaUSCom9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sequenciador|fstate.ComparaUSCom9~0_combout\ = !\sequenciador|fstate.ComparaUSCom9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sequenciador|fstate.ComparaUSCom9~q\,
	combout => \sequenciador|fstate.ComparaUSCom9~0_combout\);

-- Location: FF_X2_Y4_N17
\sequenciador|fstate.ComparaUSCom9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \prescaler|newClock~q\,
	d => \sequenciador|fstate.ComparaUSCom9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sequenciador|fstate.ComparaUSCom9~q\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_TESTE_PALAVRA(0) <= \TESTE_PALAVRA[0]~output_o\;

ww_TESTE_PALAVRA(1) <= \TESTE_PALAVRA[1]~output_o\;

ww_TESTE_PALAVRA(2) <= \TESTE_PALAVRA[2]~output_o\;

ww_TESTE_PALAVRA(3) <= \TESTE_PALAVRA[3]~output_o\;

ww_TESTE_PALAVRA(4) <= \TESTE_PALAVRA[4]~output_o\;

ww_TESTE_PALAVRA(5) <= \TESTE_PALAVRA[5]~output_o\;

ww_TESTE_PALAVRA(6) <= \TESTE_PALAVRA[6]~output_o\;

ww_TESTE_PALAVRA(7) <= \TESTE_PALAVRA[7]~output_o\;

ww_TESTE_PALAVRA(8) <= \TESTE_PALAVRA[8]~output_o\;

ww_TESTE_PALAVRA(9) <= \TESTE_PALAVRA[9]~output_o\;

ww_TESTE_PALAVRA(10) <= \TESTE_PALAVRA[10]~output_o\;

ww_TESTE_PALAVRA(11) <= \TESTE_PALAVRA[11]~output_o\;

ww_TESTE_US(0) <= \TESTE_US[0]~output_o\;

ww_TESTE_US(1) <= \TESTE_US[1]~output_o\;

ww_TESTE_US(2) <= \TESTE_US[2]~output_o\;

ww_TESTE_US(3) <= \TESTE_US[3]~output_o\;
END structure;


