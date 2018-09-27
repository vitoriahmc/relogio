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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "09/27/2018 10:53:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          fluxodedados
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fluxodedados_vhd_vec_tst IS
END fluxodedados_vhd_vec_tst;
ARCHITECTURE fluxodedados_arch OF fluxodedados_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL EnUS : STD_LOGIC;
SIGNAL mux : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL mux5x1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL ResUS : STD_LOGIC;
SIGNAL TESTE_ULA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ula_func : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL US_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Z : STD_LOGIC;
COMPONENT fluxodedados
	PORT (
	clk : IN STD_LOGIC;
	EnUS : IN STD_LOGIC;
	mux : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	mux5x1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	ResUS : IN STD_LOGIC;
	TESTE_ULA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	ula_func : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	US_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fluxodedados
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	EnUS => EnUS,
	mux => mux,
	mux5x1 => mux5x1,
	ResUS => ResUS,
	TESTE_ULA => TESTE_ULA,
	ula_func => ula_func,
	US_out => US_out,
	Z => Z
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- EnUS
t_prcs_EnUS: PROCESS
BEGIN
	EnUS <= '1';
	WAIT FOR 160000 ps;
	EnUS <= '0';
WAIT;
END PROCESS t_prcs_EnUS;
-- mux[2]
t_prcs_mux_2: PROCESS
BEGIN
	mux(2) <= '0';
WAIT;
END PROCESS t_prcs_mux_2;
-- mux[1]
t_prcs_mux_1: PROCESS
BEGIN
	mux(1) <= '0';
WAIT;
END PROCESS t_prcs_mux_1;
-- mux[0]
t_prcs_mux_0: PROCESS
BEGIN
	mux(0) <= '0';
WAIT;
END PROCESS t_prcs_mux_0;
-- mux5x1[2]
t_prcs_mux5x1_2: PROCESS
BEGIN
	mux5x1(2) <= '0';
WAIT;
END PROCESS t_prcs_mux5x1_2;
-- mux5x1[1]
t_prcs_mux5x1_1: PROCESS
BEGIN
	mux5x1(1) <= '0';
WAIT;
END PROCESS t_prcs_mux5x1_1;
-- mux5x1[0]
t_prcs_mux5x1_0: PROCESS
BEGIN
	mux5x1(0) <= '1';
	WAIT FOR 190000 ps;
	mux5x1(0) <= '0';
WAIT;
END PROCESS t_prcs_mux5x1_0;

-- ResUS
t_prcs_ResUS: PROCESS
BEGIN
	ResUS <= '0';
WAIT;
END PROCESS t_prcs_ResUS;
-- ula_func[2]
t_prcs_ula_func_2: PROCESS
BEGIN
	ula_func(2) <= '0';
	WAIT FOR 190000 ps;
	ula_func(2) <= '1';
	WAIT FOR 800000 ps;
	ula_func(2) <= '0';
WAIT;
END PROCESS t_prcs_ula_func_2;
-- ula_func[1]
t_prcs_ula_func_1: PROCESS
BEGIN
	ula_func(1) <= '0';
WAIT;
END PROCESS t_prcs_ula_func_1;
-- ula_func[0]
t_prcs_ula_func_0: PROCESS
BEGIN
	ula_func(0) <= '0';
WAIT;
END PROCESS t_prcs_ula_func_0;
END fluxodedados_arch;
