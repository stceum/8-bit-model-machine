-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/14/2020 08:50:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          model_machine
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY model_machine_vhd_vec_tst IS
END model_machine_vhd_vec_tst;
ARCHITECTURE model_machine_arch OF model_machine_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ax : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL bx : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL in_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL test : STD_LOGIC;
SIGNAL test_bus : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL test_t : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL wr_addr : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL wr_data : STD_LOGIC;
COMPONENT model_machine
	PORT (
	ax : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	bx : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	clk : IN STD_LOGIC;
	in_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	rst : IN STD_LOGIC;
	test : OUT STD_LOGIC;
	test_bus : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	test_t : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	wr_addr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	wr_data : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : model_machine
	PORT MAP (
-- list connections between master ports and signals
	ax => ax,
	bx => bx,
	clk => clk,
	in_data => in_data,
	rst => rst,
	test => test,
	test_bus => test_bus,
	test_t => test_t,
	wr_addr => wr_addr,
	wr_data => wr_data
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

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- wr_data
t_prcs_wr_data: PROCESS
BEGIN
	wr_data <= '0';
	WAIT FOR 80000 ps;
	wr_data <= '1';
WAIT;
END PROCESS t_prcs_wr_data;
-- wr_addr[3]
t_prcs_wr_addr_3: PROCESS
BEGIN
	wr_addr(3) <= '0';
WAIT;
END PROCESS t_prcs_wr_addr_3;
-- wr_addr[2]
t_prcs_wr_addr_2: PROCESS
BEGIN
	wr_addr(2) <= '0';
WAIT;
END PROCESS t_prcs_wr_addr_2;
-- wr_addr[1]
t_prcs_wr_addr_1: PROCESS
BEGIN
	wr_addr(1) <= '0';
	WAIT FOR 40000 ps;
	wr_addr(1) <= '1';
	WAIT FOR 40000 ps;
	wr_addr(1) <= '0';
WAIT;
END PROCESS t_prcs_wr_addr_1;
-- wr_addr[0]
t_prcs_wr_addr_0: PROCESS
BEGIN
	wr_addr(0) <= '0';
	WAIT FOR 20000 ps;
	wr_addr(0) <= '1';
	WAIT FOR 20000 ps;
	wr_addr(0) <= '0';
	WAIT FOR 20000 ps;
	wr_addr(0) <= '1';
	WAIT FOR 20000 ps;
	wr_addr(0) <= '0';
WAIT;
END PROCESS t_prcs_wr_addr_0;

-- in_data[7]
t_prcs_in_data_7: PROCESS
BEGIN
	in_data(7) <= '0';
	WAIT FOR 60000 ps;
	in_data(7) <= '1';
	WAIT FOR 20000 ps;
	in_data(7) <= '0';
WAIT;
END PROCESS t_prcs_in_data_7;

-- in_data[6]
t_prcs_in_data_6: PROCESS
BEGIN
	in_data(6) <= '0';
	WAIT FOR 20000 ps;
	in_data(6) <= '1';
	WAIT FOR 20000 ps;
	in_data(6) <= '0';
WAIT;
END PROCESS t_prcs_in_data_6;

-- in_data[5]
t_prcs_in_data_5: PROCESS
BEGIN
	in_data(5) <= '0';
	WAIT FOR 60000 ps;
	in_data(5) <= '1';
	WAIT FOR 20000 ps;
	in_data(5) <= '0';
WAIT;
END PROCESS t_prcs_in_data_5;

-- in_data[4]
t_prcs_in_data_4: PROCESS
BEGIN
	in_data(4) <= '0';
	WAIT FOR 20000 ps;
	in_data(4) <= '1';
	WAIT FOR 20000 ps;
	in_data(4) <= '0';
WAIT;
END PROCESS t_prcs_in_data_4;

-- in_data[3]
t_prcs_in_data_3: PROCESS
BEGIN
	in_data(3) <= '0';
	WAIT FOR 60000 ps;
	in_data(3) <= '1';
	WAIT FOR 20000 ps;
	in_data(3) <= '0';
WAIT;
END PROCESS t_prcs_in_data_3;

-- in_data[2]
t_prcs_in_data_2: PROCESS
BEGIN
	in_data(2) <= '0';
	WAIT FOR 20000 ps;
	in_data(2) <= '1';
	WAIT FOR 40000 ps;
	in_data(2) <= '0';
WAIT;
END PROCESS t_prcs_in_data_2;

-- in_data[1]
t_prcs_in_data_1: PROCESS
BEGIN
	in_data(1) <= '1';
	WAIT FOR 20000 ps;
	in_data(1) <= '0';
	WAIT FOR 40000 ps;
	in_data(1) <= '1';
	WAIT FOR 20000 ps;
	in_data(1) <= '0';
WAIT;
END PROCESS t_prcs_in_data_1;

-- in_data[0]
t_prcs_in_data_0: PROCESS
BEGIN
	in_data(0) <= '1';
	WAIT FOR 60000 ps;
	in_data(0) <= '0';
WAIT;
END PROCESS t_prcs_in_data_0;
END model_machine_arch;
