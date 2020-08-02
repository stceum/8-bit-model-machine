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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "07/21/2020 00:43:54"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	model_machine IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	wr_data : IN std_logic;
	wr_addr : IN std_logic_vector(3 DOWNTO 0);
	in_data : IN std_logic_vector(15 DOWNTO 0);
	test_ram : OUT std_logic_vector(15 DOWNTO 0);
	test_pc : OUT std_logic_vector(3 DOWNTO 0);
	test_t : OUT std_logic_vector(7 DOWNTO 0);
	test_bus : OUT std_logic_vector(15 DOWNTO 0);
	test_ir : OUT std_logic_vector(15 DOWNTO 0);
	ax : OUT std_logic_vector(15 DOWNTO 0);
	bx : OUT std_logic_vector(15 DOWNTO 0)
	);
END model_machine;

-- Design Ports Information
-- test_ram[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ram[1]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ram[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ram[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ram[4]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ram[5]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ram[6]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ram[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ram[8]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ram[9]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ram[10]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ram[11]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ram[12]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ram[13]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ram[14]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ram[15]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_pc[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_pc[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_pc[2]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_pc[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_t[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_t[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_t[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_t[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_t[4]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_t[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_t[6]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_t[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[2]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[3]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[4]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[6]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[7]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[8]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[9]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[10]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[11]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[12]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[13]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[14]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[15]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ir[0]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ir[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ir[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ir[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ir[4]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ir[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ir[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ir[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ir[8]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ir[9]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ir[10]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ir[11]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ir[12]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ir[13]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ir[14]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_ir[15]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[0]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[1]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[3]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[4]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[5]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[6]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[7]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[8]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[9]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[10]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[11]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[12]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[13]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[14]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[15]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[4]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[7]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[8]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[9]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[10]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[11]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[12]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[13]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[14]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[15]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_addr[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_addr[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_addr[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_addr[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[4]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[8]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[9]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[10]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[11]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[12]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[13]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[14]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[15]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF model_machine IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_wr_data : std_logic;
SIGNAL ww_wr_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_in_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_test_ram : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_test_pc : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_test_t : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_test_bus : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_test_ir : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ax : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_bx : std_logic_vector(15 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \test_ram[0]~output_o\ : std_logic;
SIGNAL \test_ram[1]~output_o\ : std_logic;
SIGNAL \test_ram[2]~output_o\ : std_logic;
SIGNAL \test_ram[3]~output_o\ : std_logic;
SIGNAL \test_ram[4]~output_o\ : std_logic;
SIGNAL \test_ram[5]~output_o\ : std_logic;
SIGNAL \test_ram[6]~output_o\ : std_logic;
SIGNAL \test_ram[7]~output_o\ : std_logic;
SIGNAL \test_ram[8]~output_o\ : std_logic;
SIGNAL \test_ram[9]~output_o\ : std_logic;
SIGNAL \test_ram[10]~output_o\ : std_logic;
SIGNAL \test_ram[11]~output_o\ : std_logic;
SIGNAL \test_ram[12]~output_o\ : std_logic;
SIGNAL \test_ram[13]~output_o\ : std_logic;
SIGNAL \test_ram[14]~output_o\ : std_logic;
SIGNAL \test_ram[15]~output_o\ : std_logic;
SIGNAL \test_bus[0]~output_o\ : std_logic;
SIGNAL \test_bus[1]~output_o\ : std_logic;
SIGNAL \test_bus[2]~output_o\ : std_logic;
SIGNAL \test_bus[3]~output_o\ : std_logic;
SIGNAL \test_bus[4]~output_o\ : std_logic;
SIGNAL \test_bus[5]~output_o\ : std_logic;
SIGNAL \test_bus[6]~output_o\ : std_logic;
SIGNAL \test_bus[7]~output_o\ : std_logic;
SIGNAL \test_bus[8]~output_o\ : std_logic;
SIGNAL \test_bus[9]~output_o\ : std_logic;
SIGNAL \test_bus[10]~output_o\ : std_logic;
SIGNAL \test_bus[11]~output_o\ : std_logic;
SIGNAL \test_bus[12]~output_o\ : std_logic;
SIGNAL \test_bus[13]~output_o\ : std_logic;
SIGNAL \test_bus[14]~output_o\ : std_logic;
SIGNAL \test_bus[15]~output_o\ : std_logic;
SIGNAL \test_ir[0]~output_o\ : std_logic;
SIGNAL \test_ir[1]~output_o\ : std_logic;
SIGNAL \test_ir[2]~output_o\ : std_logic;
SIGNAL \test_ir[3]~output_o\ : std_logic;
SIGNAL \test_ir[4]~output_o\ : std_logic;
SIGNAL \test_ir[5]~output_o\ : std_logic;
SIGNAL \test_ir[6]~output_o\ : std_logic;
SIGNAL \test_ir[7]~output_o\ : std_logic;
SIGNAL \test_ir[8]~output_o\ : std_logic;
SIGNAL \test_ir[9]~output_o\ : std_logic;
SIGNAL \test_ir[10]~output_o\ : std_logic;
SIGNAL \test_ir[11]~output_o\ : std_logic;
SIGNAL \test_ir[12]~output_o\ : std_logic;
SIGNAL \test_ir[13]~output_o\ : std_logic;
SIGNAL \test_ir[14]~output_o\ : std_logic;
SIGNAL \test_ir[15]~output_o\ : std_logic;
SIGNAL \test_pc[0]~output_o\ : std_logic;
SIGNAL \test_pc[1]~output_o\ : std_logic;
SIGNAL \test_pc[2]~output_o\ : std_logic;
SIGNAL \test_pc[3]~output_o\ : std_logic;
SIGNAL \test_t[0]~output_o\ : std_logic;
SIGNAL \test_t[1]~output_o\ : std_logic;
SIGNAL \test_t[2]~output_o\ : std_logic;
SIGNAL \test_t[3]~output_o\ : std_logic;
SIGNAL \test_t[4]~output_o\ : std_logic;
SIGNAL \test_t[5]~output_o\ : std_logic;
SIGNAL \test_t[6]~output_o\ : std_logic;
SIGNAL \test_t[7]~output_o\ : std_logic;
SIGNAL \ax[0]~output_o\ : std_logic;
SIGNAL \ax[1]~output_o\ : std_logic;
SIGNAL \ax[2]~output_o\ : std_logic;
SIGNAL \ax[3]~output_o\ : std_logic;
SIGNAL \ax[4]~output_o\ : std_logic;
SIGNAL \ax[5]~output_o\ : std_logic;
SIGNAL \ax[6]~output_o\ : std_logic;
SIGNAL \ax[7]~output_o\ : std_logic;
SIGNAL \ax[8]~output_o\ : std_logic;
SIGNAL \ax[9]~output_o\ : std_logic;
SIGNAL \ax[10]~output_o\ : std_logic;
SIGNAL \ax[11]~output_o\ : std_logic;
SIGNAL \ax[12]~output_o\ : std_logic;
SIGNAL \ax[13]~output_o\ : std_logic;
SIGNAL \ax[14]~output_o\ : std_logic;
SIGNAL \ax[15]~output_o\ : std_logic;
SIGNAL \bx[0]~output_o\ : std_logic;
SIGNAL \bx[1]~output_o\ : std_logic;
SIGNAL \bx[2]~output_o\ : std_logic;
SIGNAL \bx[3]~output_o\ : std_logic;
SIGNAL \bx[4]~output_o\ : std_logic;
SIGNAL \bx[5]~output_o\ : std_logic;
SIGNAL \bx[6]~output_o\ : std_logic;
SIGNAL \bx[7]~output_o\ : std_logic;
SIGNAL \bx[8]~output_o\ : std_logic;
SIGNAL \bx[9]~output_o\ : std_logic;
SIGNAL \bx[10]~output_o\ : std_logic;
SIGNAL \bx[11]~output_o\ : std_logic;
SIGNAL \bx[12]~output_o\ : std_logic;
SIGNAL \bx[13]~output_o\ : std_logic;
SIGNAL \bx[14]~output_o\ : std_logic;
SIGNAL \bx[15]~output_o\ : std_logic;
SIGNAL \wr_data~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \in_data[2]~input_o\ : std_logic;
SIGNAL \wr_addr[2]~input_o\ : std_logic;
SIGNAL \u1|tmp[2]~3_combout\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \u9|temp[5]~feeder_combout\ : std_logic;
SIGNAL \u9|temp[6]~feeder_combout\ : std_logic;
SIGNAL \u9|temp[7]~1_combout\ : std_logic;
SIGNAL \u9|temp[0]~0_combout\ : std_logic;
SIGNAL \u9|temp[1]~feeder_combout\ : std_logic;
SIGNAL \u9|temp[2]~feeder_combout\ : std_logic;
SIGNAL \in_data[9]~input_o\ : std_logic;
SIGNAL \u4|mem~254_q\ : std_logic;
SIGNAL \u1|tmp[3]~4_combout\ : std_logic;
SIGNAL \wr_addr[3]~input_o\ : std_logic;
SIGNAL \u3|res[3]~2_combout\ : std_logic;
SIGNAL \u4|mem~447_combout\ : std_logic;
SIGNAL \u4|mem~448_combout\ : std_logic;
SIGNAL \u4|mem~126_q\ : std_logic;
SIGNAL \u4|mem~437_combout\ : std_logic;
SIGNAL \u4|mem~438_combout\ : std_logic;
SIGNAL \u4|mem~190_q\ : std_logic;
SIGNAL \u4|mem~453_combout\ : std_logic;
SIGNAL \u4|mem~454_combout\ : std_logic;
SIGNAL \u4|mem~62_q\ : std_logic;
SIGNAL \u4|mem~367_combout\ : std_logic;
SIGNAL \u4|mem~368_combout\ : std_logic;
SIGNAL \u4|mem~443_combout\ : std_logic;
SIGNAL \u4|mem~444_combout\ : std_logic;
SIGNAL \u4|mem~206_q\ : std_logic;
SIGNAL \u4|mem~467_combout\ : std_logic;
SIGNAL \u4|mem~468_combout\ : std_logic;
SIGNAL \u4|mem~270_q\ : std_logic;
SIGNAL \u4|mem~142feeder_combout\ : std_logic;
SIGNAL \u4|mem~451_combout\ : std_logic;
SIGNAL \u4|mem~452_combout\ : std_logic;
SIGNAL \u4|mem~142_q\ : std_logic;
SIGNAL \u4|mem~459_combout\ : std_logic;
SIGNAL \u4|mem~460_combout\ : std_logic;
SIGNAL \u4|mem~78_q\ : std_logic;
SIGNAL \u4|mem~374_combout\ : std_logic;
SIGNAL \u4|mem~375_combout\ : std_logic;
SIGNAL \u4|mem~449_combout\ : std_logic;
SIGNAL \u4|mem~450_combout\ : std_logic;
SIGNAL \u4|mem~94_q\ : std_logic;
SIGNAL \u4|mem~465_combout\ : std_logic;
SIGNAL \u4|mem~466_combout\ : std_logic;
SIGNAL \u4|mem~222_q\ : std_logic;
SIGNAL \u4|mem~441_combout\ : std_logic;
SIGNAL \u4|mem~442_combout\ : std_logic;
SIGNAL \u4|mem~158_q\ : std_logic;
SIGNAL \u4|mem~457_combout\ : std_logic;
SIGNAL \u4|mem~458_combout\ : std_logic;
SIGNAL \u4|mem~30_q\ : std_logic;
SIGNAL \u4|mem~371_combout\ : std_logic;
SIGNAL \u4|mem~372_combout\ : std_logic;
SIGNAL \u4|mem~439_combout\ : std_logic;
SIGNAL \u4|mem~440_combout\ : std_logic;
SIGNAL \u4|mem~174_q\ : std_logic;
SIGNAL \u4|mem~461_combout\ : std_logic;
SIGNAL \u4|mem~462_combout\ : std_logic;
SIGNAL \u4|mem~238_q\ : std_logic;
SIGNAL \u4|mem~445_combout\ : std_logic;
SIGNAL \u4|mem~446_combout\ : std_logic;
SIGNAL \u4|mem~110_q\ : std_logic;
SIGNAL \u4|mem~455_combout\ : std_logic;
SIGNAL \u4|mem~456_combout\ : std_logic;
SIGNAL \u4|mem~46_q\ : std_logic;
SIGNAL \u4|mem~369_combout\ : std_logic;
SIGNAL \u4|mem~370_combout\ : std_logic;
SIGNAL \u4|mem~373_combout\ : std_logic;
SIGNAL \u4|mem~376_combout\ : std_logic;
SIGNAL \u4|ram_out[9]~25_combout\ : std_logic;
SIGNAL \u10|m_to_dr~0_combout\ : std_logic;
SIGNAL \in_data[14]~input_o\ : std_logic;
SIGNAL \u4|mem~115feeder_combout\ : std_logic;
SIGNAL \u4|mem~115_q\ : std_logic;
SIGNAL \u4|mem~99_q\ : std_logic;
SIGNAL \u4|mem~417_combout\ : std_logic;
SIGNAL \u4|mem~147feeder_combout\ : std_logic;
SIGNAL \u4|mem~147_q\ : std_logic;
SIGNAL \u4|mem~131_q\ : std_logic;
SIGNAL \u4|mem~418_combout\ : std_logic;
SIGNAL \u4|mem~243_q\ : std_logic;
SIGNAL \u4|mem~227_q\ : std_logic;
SIGNAL \u4|mem~424_combout\ : std_logic;
SIGNAL \u4|mem~275_q\ : std_logic;
SIGNAL \u4|mem~259feeder_combout\ : std_logic;
SIGNAL \u4|mem~259_q\ : std_logic;
SIGNAL \u4|mem~425_combout\ : std_logic;
SIGNAL \u4|mem~179feeder_combout\ : std_logic;
SIGNAL \u4|mem~179_q\ : std_logic;
SIGNAL \u4|mem~211_q\ : std_logic;
SIGNAL \u4|mem~163_q\ : std_logic;
SIGNAL \u4|mem~195_q\ : std_logic;
SIGNAL \u4|mem~419_combout\ : std_logic;
SIGNAL \u4|mem~420_combout\ : std_logic;
SIGNAL \u4|mem~51_q\ : std_logic;
SIGNAL \u4|mem~83_q\ : std_logic;
SIGNAL \u4|mem~35_q\ : std_logic;
SIGNAL \u4|mem~67_q\ : std_logic;
SIGNAL \u4|mem~421_combout\ : std_logic;
SIGNAL \u4|mem~422_combout\ : std_logic;
SIGNAL \u4|mem~423_combout\ : std_logic;
SIGNAL \u4|mem~426_combout\ : std_logic;
SIGNAL \u4|ram_out[14]~30_combout\ : std_logic;
SIGNAL \u8|tmp~9_combout\ : std_logic;
SIGNAL \u8|tmp[0]~1_combout\ : std_logic;
SIGNAL \u10|alu_shl~0_combout\ : std_logic;
SIGNAL \u7|temp[13]~6_combout\ : std_logic;
SIGNAL \u6|temp_b~44_combout\ : std_logic;
SIGNAL \u6|temp_b[0]~32_combout\ : std_logic;
SIGNAL \u7|temp~5_combout\ : std_logic;
SIGNAL \u10|bus_to_a~3_combout\ : std_logic;
SIGNAL \in_data[4]~input_o\ : std_logic;
SIGNAL \u4|mem~153_q\ : std_logic;
SIGNAL \u4|mem~169feeder_combout\ : std_logic;
SIGNAL \u4|mem~169_q\ : std_logic;
SIGNAL \u4|mem~317_combout\ : std_logic;
SIGNAL \u4|mem~201feeder_combout\ : std_logic;
SIGNAL \u4|mem~201_q\ : std_logic;
SIGNAL \u4|mem~185_q\ : std_logic;
SIGNAL \u4|mem~318_combout\ : std_logic;
SIGNAL \u4|mem~233feeder_combout\ : std_logic;
SIGNAL \u4|mem~233_q\ : std_logic;
SIGNAL \u4|mem~265_q\ : std_logic;
SIGNAL \u4|mem~249feeder_combout\ : std_logic;
SIGNAL \u4|mem~249_q\ : std_logic;
SIGNAL \u4|mem~217_q\ : std_logic;
SIGNAL \u4|mem~324_combout\ : std_logic;
SIGNAL \u4|mem~325_combout\ : std_logic;
SIGNAL \u4|mem~105_q\ : std_logic;
SIGNAL \u4|mem~137_q\ : std_logic;
SIGNAL \u4|mem~121feeder_combout\ : std_logic;
SIGNAL \u4|mem~121_q\ : std_logic;
SIGNAL \u4|mem~89_q\ : std_logic;
SIGNAL \u4|mem~319_combout\ : std_logic;
SIGNAL \u4|mem~320_combout\ : std_logic;
SIGNAL \u4|mem~57feeder_combout\ : std_logic;
SIGNAL \u4|mem~57_q\ : std_logic;
SIGNAL \u4|mem~73_q\ : std_logic;
SIGNAL \u4|mem~25_q\ : std_logic;
SIGNAL \u4|mem~41feeder_combout\ : std_logic;
SIGNAL \u4|mem~41_q\ : std_logic;
SIGNAL \u4|mem~321_combout\ : std_logic;
SIGNAL \u4|mem~322_combout\ : std_logic;
SIGNAL \u4|mem~323_combout\ : std_logic;
SIGNAL \u4|mem~326_combout\ : std_logic;
SIGNAL \u4|ram_out[4]~20_combout\ : std_logic;
SIGNAL \in_data[5]~input_o\ : std_logic;
SIGNAL \u4|mem~250feeder_combout\ : std_logic;
SIGNAL \u4|mem~250_q\ : std_logic;
SIGNAL \u4|mem~122_q\ : std_logic;
SIGNAL \u4|mem~186feeder_combout\ : std_logic;
SIGNAL \u4|mem~186_q\ : std_logic;
SIGNAL \u4|mem~58_q\ : std_logic;
SIGNAL \u4|mem~327_combout\ : std_logic;
SIGNAL \u4|mem~328_combout\ : std_logic;
SIGNAL \u4|mem~170feeder_combout\ : std_logic;
SIGNAL \u4|mem~170_q\ : std_logic;
SIGNAL \u4|mem~234_q\ : std_logic;
SIGNAL \u4|mem~106_q\ : std_logic;
SIGNAL \u4|mem~42_q\ : std_logic;
SIGNAL \u4|mem~329_combout\ : std_logic;
SIGNAL \u4|mem~330_combout\ : std_logic;
SIGNAL \u4|mem~90_q\ : std_logic;
SIGNAL \u4|mem~154feeder_combout\ : std_logic;
SIGNAL \u4|mem~154_q\ : std_logic;
SIGNAL \u4|mem~26_q\ : std_logic;
SIGNAL \u4|mem~331_combout\ : std_logic;
SIGNAL \u4|mem~218_q\ : std_logic;
SIGNAL \u4|mem~332_combout\ : std_logic;
SIGNAL \u4|mem~333_combout\ : std_logic;
SIGNAL \u4|mem~202_q\ : std_logic;
SIGNAL \u4|mem~266_q\ : std_logic;
SIGNAL \u4|mem~138_q\ : std_logic;
SIGNAL \u4|mem~74_q\ : std_logic;
SIGNAL \u4|mem~334_combout\ : std_logic;
SIGNAL \u4|mem~335_combout\ : std_logic;
SIGNAL \u4|mem~336_combout\ : std_logic;
SIGNAL \u4|ram_out[5]~21_combout\ : std_logic;
SIGNAL \in_data[15]~input_o\ : std_logic;
SIGNAL \u4|mem~244feeder_combout\ : std_logic;
SIGNAL \u4|mem~244_q\ : std_logic;
SIGNAL \u4|mem~116_q\ : std_logic;
SIGNAL \u4|mem~180feeder_combout\ : std_logic;
SIGNAL \u4|mem~180_q\ : std_logic;
SIGNAL \u4|mem~52_q\ : std_logic;
SIGNAL \u4|mem~427_combout\ : std_logic;
SIGNAL \u4|mem~428_combout\ : std_logic;
SIGNAL \u4|mem~148feeder_combout\ : std_logic;
SIGNAL \u4|mem~148_q\ : std_logic;
SIGNAL \u4|mem~276_q\ : std_logic;
SIGNAL \u4|mem~212_q\ : std_logic;
SIGNAL \u4|mem~84_q\ : std_logic;
SIGNAL \u4|mem~434_combout\ : std_logic;
SIGNAL \u4|mem~435_combout\ : std_logic;
SIGNAL \u4|mem~100_q\ : std_logic;
SIGNAL \u4|mem~36_q\ : std_logic;
SIGNAL \u4|mem~431_combout\ : std_logic;
SIGNAL \u4|mem~164_q\ : std_logic;
SIGNAL \u4|mem~228_q\ : std_logic;
SIGNAL \u4|mem~432_combout\ : std_logic;
SIGNAL \u4|mem~196feeder_combout\ : std_logic;
SIGNAL \u4|mem~196_q\ : std_logic;
SIGNAL \u4|mem~260_q\ : std_logic;
SIGNAL \u4|mem~132feeder_combout\ : std_logic;
SIGNAL \u4|mem~132_q\ : std_logic;
SIGNAL \u4|mem~68_q\ : std_logic;
SIGNAL \u4|mem~429_combout\ : std_logic;
SIGNAL \u4|mem~430_combout\ : std_logic;
SIGNAL \u4|mem~433_combout\ : std_logic;
SIGNAL \u4|mem~436_combout\ : std_logic;
SIGNAL \u4|ram_out[15]~31_combout\ : std_logic;
SIGNAL \in_data[12]~input_o\ : std_logic;
SIGNAL \u4|mem~113_q\ : std_logic;
SIGNAL \u4|mem~145_q\ : std_logic;
SIGNAL \u4|mem~129_q\ : std_logic;
SIGNAL \u4|mem~97_q\ : std_logic;
SIGNAL \u4|mem~399_combout\ : std_logic;
SIGNAL \u4|mem~400_combout\ : std_logic;
SIGNAL \u4|mem~65_q\ : std_logic;
SIGNAL \u4|mem~81_q\ : std_logic;
SIGNAL \u4|mem~49_q\ : std_logic;
SIGNAL \u4|mem~33_q\ : std_logic;
SIGNAL \u4|mem~401_combout\ : std_logic;
SIGNAL \u4|mem~402_combout\ : std_logic;
SIGNAL \u4|mem~403_combout\ : std_logic;
SIGNAL \u4|mem~257_q\ : std_logic;
SIGNAL \u4|mem~225_q\ : std_logic;
SIGNAL \u4|mem~404_combout\ : std_logic;
SIGNAL \u4|mem~273_q\ : std_logic;
SIGNAL \u4|mem~241feeder_combout\ : std_logic;
SIGNAL \u4|mem~241_q\ : std_logic;
SIGNAL \u4|mem~405_combout\ : std_logic;
SIGNAL \u4|mem~209feeder_combout\ : std_logic;
SIGNAL \u4|mem~209_q\ : std_logic;
SIGNAL \u4|mem~193_q\ : std_logic;
SIGNAL \u4|mem~177feeder_combout\ : std_logic;
SIGNAL \u4|mem~177_q\ : std_logic;
SIGNAL \u4|mem~161_q\ : std_logic;
SIGNAL \u4|mem~397_combout\ : std_logic;
SIGNAL \u4|mem~398_combout\ : std_logic;
SIGNAL \u4|mem~406_combout\ : std_logic;
SIGNAL \u4|ram_out[12]~28_combout\ : std_logic;
SIGNAL \in_data[13]~input_o\ : std_logic;
SIGNAL \u4|mem~210_q\ : std_logic;
SIGNAL \u4|mem~274_q\ : std_logic;
SIGNAL \u4|mem~146feeder_combout\ : std_logic;
SIGNAL \u4|mem~146_q\ : std_logic;
SIGNAL \u4|mem~82_q\ : std_logic;
SIGNAL \u4|mem~414_combout\ : std_logic;
SIGNAL \u4|mem~415_combout\ : std_logic;
SIGNAL \u4|mem~258feeder_combout\ : std_logic;
SIGNAL \u4|mem~258_q\ : std_logic;
SIGNAL \u4|mem~130_q\ : std_logic;
SIGNAL \u4|mem~194feeder_combout\ : std_logic;
SIGNAL \u4|mem~194_q\ : std_logic;
SIGNAL \u4|mem~66_q\ : std_logic;
SIGNAL \u4|mem~407_combout\ : std_logic;
SIGNAL \u4|mem~408_combout\ : std_logic;
SIGNAL \u4|mem~98_q\ : std_logic;
SIGNAL \u4|mem~226_q\ : std_logic;
SIGNAL \u4|mem~162_q\ : std_logic;
SIGNAL \u4|mem~34_q\ : std_logic;
SIGNAL \u4|mem~411_combout\ : std_logic;
SIGNAL \u4|mem~412_combout\ : std_logic;
SIGNAL \u4|mem~178feeder_combout\ : std_logic;
SIGNAL \u4|mem~178_q\ : std_logic;
SIGNAL \u4|mem~242_q\ : std_logic;
SIGNAL \u4|mem~114_q\ : std_logic;
SIGNAL \u4|mem~50_q\ : std_logic;
SIGNAL \u4|mem~409_combout\ : std_logic;
SIGNAL \u4|mem~410_combout\ : std_logic;
SIGNAL \u4|mem~413_combout\ : std_logic;
SIGNAL \u4|mem~416_combout\ : std_logic;
SIGNAL \u4|ram_out[13]~29_combout\ : std_logic;
SIGNAL \u0|Equal0~3_combout\ : std_logic;
SIGNAL \in_data[7]~input_o\ : std_logic;
SIGNAL \u4|mem~204feeder_combout\ : std_logic;
SIGNAL \u4|mem~204_q\ : std_logic;
SIGNAL \u4|mem~76_q\ : std_logic;
SIGNAL \u4|mem~354_combout\ : std_logic;
SIGNAL \u4|mem~268_q\ : std_logic;
SIGNAL \u4|mem~140feeder_combout\ : std_logic;
SIGNAL \u4|mem~140_q\ : std_logic;
SIGNAL \u4|mem~355_combout\ : std_logic;
SIGNAL \u4|mem~172feeder_combout\ : std_logic;
SIGNAL \u4|mem~172_q\ : std_logic;
SIGNAL \u4|mem~44_q\ : std_logic;
SIGNAL \u4|mem~347_combout\ : std_logic;
SIGNAL \u4|mem~236feeder_combout\ : std_logic;
SIGNAL \u4|mem~236_q\ : std_logic;
SIGNAL \u4|mem~108_q\ : std_logic;
SIGNAL \u4|mem~348_combout\ : std_logic;
SIGNAL \u4|mem~188_q\ : std_logic;
SIGNAL \u4|mem~252_q\ : std_logic;
SIGNAL \u4|mem~124_q\ : std_logic;
SIGNAL \u4|mem~60_q\ : std_logic;
SIGNAL \u4|mem~349_combout\ : std_logic;
SIGNAL \u4|mem~350_combout\ : std_logic;
SIGNAL \u4|mem~156feeder_combout\ : std_logic;
SIGNAL \u4|mem~156_q\ : std_logic;
SIGNAL \u4|mem~220_q\ : std_logic;
SIGNAL \u4|mem~92_q\ : std_logic;
SIGNAL \u4|mem~28_q\ : std_logic;
SIGNAL \u4|mem~351_combout\ : std_logic;
SIGNAL \u4|mem~352_combout\ : std_logic;
SIGNAL \u4|mem~353_combout\ : std_logic;
SIGNAL \u4|mem~356_combout\ : std_logic;
SIGNAL \u4|ram_out[7]~23_combout\ : std_logic;
SIGNAL \u0|Equal0~1_combout\ : std_logic;
SIGNAL \in_data[8]~input_o\ : std_logic;
SIGNAL \u4|mem~237_q\ : std_logic;
SIGNAL \u4|mem~269_q\ : std_logic;
SIGNAL \u4|mem~221_q\ : std_logic;
SIGNAL \u4|mem~253_q\ : std_logic;
SIGNAL \u4|mem~364_combout\ : std_logic;
SIGNAL \u4|mem~365_combout\ : std_logic;
SIGNAL \u4|mem~205feeder_combout\ : std_logic;
SIGNAL \u4|mem~205_q\ : std_logic;
SIGNAL \u4|mem~189_q\ : std_logic;
SIGNAL \u4|mem~157_q\ : std_logic;
SIGNAL \u4|mem~173_q\ : std_logic;
SIGNAL \u4|mem~357_combout\ : std_logic;
SIGNAL \u4|mem~358_combout\ : std_logic;
SIGNAL \u4|mem~109feeder_combout\ : std_logic;
SIGNAL \u4|mem~109_q\ : std_logic;
SIGNAL \u4|mem~141_q\ : std_logic;
SIGNAL \u4|mem~125_q\ : std_logic;
SIGNAL \u4|mem~93_q\ : std_logic;
SIGNAL \u4|mem~359_combout\ : std_logic;
SIGNAL \u4|mem~360_combout\ : std_logic;
SIGNAL \u4|mem~61_q\ : std_logic;
SIGNAL \u4|mem~77_q\ : std_logic;
SIGNAL \u4|mem~45_q\ : std_logic;
SIGNAL \u4|mem~29_q\ : std_logic;
SIGNAL \u4|mem~361_combout\ : std_logic;
SIGNAL \u4|mem~362_combout\ : std_logic;
SIGNAL \u4|mem~363_combout\ : std_logic;
SIGNAL \u4|mem~366_combout\ : std_logic;
SIGNAL \u4|ram_out[8]~24_combout\ : std_logic;
SIGNAL \in_data[11]~input_o\ : std_logic;
SIGNAL \u4|mem~240_q\ : std_logic;
SIGNAL \u4|mem~112_q\ : std_logic;
SIGNAL \u4|mem~176_q\ : std_logic;
SIGNAL \u4|mem~48_q\ : std_logic;
SIGNAL \u4|mem~387_combout\ : std_logic;
SIGNAL \u4|mem~388_combout\ : std_logic;
SIGNAL \u4|mem~192_q\ : std_logic;
SIGNAL \u4|mem~256_q\ : std_logic;
SIGNAL \u4|mem~128feeder_combout\ : std_logic;
SIGNAL \u4|mem~128_q\ : std_logic;
SIGNAL \u4|mem~64_q\ : std_logic;
SIGNAL \u4|mem~389_combout\ : std_logic;
SIGNAL \u4|mem~390_combout\ : std_logic;
SIGNAL \u4|mem~160_q\ : std_logic;
SIGNAL \u4|mem~224_q\ : std_logic;
SIGNAL \u4|mem~96_q\ : std_logic;
SIGNAL \u4|mem~32_q\ : std_logic;
SIGNAL \u4|mem~391_combout\ : std_logic;
SIGNAL \u4|mem~392_combout\ : std_logic;
SIGNAL \u4|mem~393_combout\ : std_logic;
SIGNAL \u4|mem~208_q\ : std_logic;
SIGNAL \u4|mem~80_q\ : std_logic;
SIGNAL \u4|mem~394_combout\ : std_logic;
SIGNAL \u4|mem~272_q\ : std_logic;
SIGNAL \u4|mem~144feeder_combout\ : std_logic;
SIGNAL \u4|mem~144_q\ : std_logic;
SIGNAL \u4|mem~395_combout\ : std_logic;
SIGNAL \u4|mem~396_combout\ : std_logic;
SIGNAL \u4|ram_out[11]~27_combout\ : std_logic;
SIGNAL \in_data[10]~input_o\ : std_logic;
SIGNAL \u4|mem~143feeder_combout\ : std_logic;
SIGNAL \u4|mem~143_q\ : std_logic;
SIGNAL \u4|mem~111feeder_combout\ : std_logic;
SIGNAL \u4|mem~111_q\ : std_logic;
SIGNAL \u4|mem~95_q\ : std_logic;
SIGNAL \u4|mem~377_combout\ : std_logic;
SIGNAL \u4|mem~127_q\ : std_logic;
SIGNAL \u4|mem~378_combout\ : std_logic;
SIGNAL \u4|mem~47feeder_combout\ : std_logic;
SIGNAL \u4|mem~47_q\ : std_logic;
SIGNAL \u4|mem~79_q\ : std_logic;
SIGNAL \u4|mem~63_q\ : std_logic;
SIGNAL \u4|mem~31_q\ : std_logic;
SIGNAL \u4|mem~381_combout\ : std_logic;
SIGNAL \u4|mem~382_combout\ : std_logic;
SIGNAL \u4|mem~175feeder_combout\ : std_logic;
SIGNAL \u4|mem~175_q\ : std_logic;
SIGNAL \u4|mem~207_q\ : std_logic;
SIGNAL \u4|mem~191feeder_combout\ : std_logic;
SIGNAL \u4|mem~191_q\ : std_logic;
SIGNAL \u4|mem~159_q\ : std_logic;
SIGNAL \u4|mem~379_combout\ : std_logic;
SIGNAL \u4|mem~380_combout\ : std_logic;
SIGNAL \u4|mem~383_combout\ : std_logic;
SIGNAL \u4|mem~255feeder_combout\ : std_logic;
SIGNAL \u4|mem~255_q\ : std_logic;
SIGNAL \u4|mem~271_q\ : std_logic;
SIGNAL \u4|mem~239feeder_combout\ : std_logic;
SIGNAL \u4|mem~239_q\ : std_logic;
SIGNAL \u4|mem~223_q\ : std_logic;
SIGNAL \u4|mem~384_combout\ : std_logic;
SIGNAL \u4|mem~385_combout\ : std_logic;
SIGNAL \u4|mem~386_combout\ : std_logic;
SIGNAL \u4|ram_out[10]~26_combout\ : std_logic;
SIGNAL \u0|Equal0~2_combout\ : std_logic;
SIGNAL \u4|ram_out[0]~16_combout\ : std_logic;
SIGNAL \in_data[3]~input_o\ : std_logic;
SIGNAL \u4|mem~136_q\ : std_logic;
SIGNAL \u4|mem~264_q\ : std_logic;
SIGNAL \u4|mem~200_q\ : std_logic;
SIGNAL \u4|mem~72_q\ : std_logic;
SIGNAL \u4|mem~314_combout\ : std_logic;
SIGNAL \u4|mem~315_combout\ : std_logic;
SIGNAL \u4|mem~232_q\ : std_logic;
SIGNAL \u4|mem~168_q\ : std_logic;
SIGNAL \u4|mem~40_q\ : std_logic;
SIGNAL \u4|mem~307_combout\ : std_logic;
SIGNAL \u4|mem~104_q\ : std_logic;
SIGNAL \u4|mem~308_combout\ : std_logic;
SIGNAL \u4|mem~152feeder_combout\ : std_logic;
SIGNAL \u4|mem~152_q\ : std_logic;
SIGNAL \u4|mem~216_q\ : std_logic;
SIGNAL \u4|mem~88_q\ : std_logic;
SIGNAL \u4|mem~24_q\ : std_logic;
SIGNAL \u4|mem~311_combout\ : std_logic;
SIGNAL \u4|mem~312_combout\ : std_logic;
SIGNAL \u4|mem~184feeder_combout\ : std_logic;
SIGNAL \u4|mem~184_q\ : std_logic;
SIGNAL \u4|mem~248_q\ : std_logic;
SIGNAL \u4|mem~120_q\ : std_logic;
SIGNAL \u4|mem~56_q\ : std_logic;
SIGNAL \u4|mem~309_combout\ : std_logic;
SIGNAL \u4|mem~310_combout\ : std_logic;
SIGNAL \u4|mem~313_combout\ : std_logic;
SIGNAL \u4|mem~316_combout\ : std_logic;
SIGNAL \u4|ram_out[3]~19_combout\ : std_logic;
SIGNAL \in_data[1]~input_o\ : std_logic;
SIGNAL \u4|mem~246_q\ : std_logic;
SIGNAL \u4|mem~118_q\ : std_logic;
SIGNAL \u4|mem~182_q\ : std_logic;
SIGNAL \u4|mem~54_q\ : std_logic;
SIGNAL \u4|mem~287_combout\ : std_logic;
SIGNAL \u4|mem~288_combout\ : std_logic;
SIGNAL \u4|mem~134_q\ : std_logic;
SIGNAL \u4|mem~70_q\ : std_logic;
SIGNAL \u4|mem~294_combout\ : std_logic;
SIGNAL \u4|mem~198_q\ : std_logic;
SIGNAL \u4|mem~262_q\ : std_logic;
SIGNAL \u4|mem~295_combout\ : std_logic;
SIGNAL \u4|mem~86feeder_combout\ : std_logic;
SIGNAL \u4|mem~86_q\ : std_logic;
SIGNAL \u4|mem~214_q\ : std_logic;
SIGNAL \u4|mem~150_q\ : std_logic;
SIGNAL \u4|mem~22_q\ : std_logic;
SIGNAL \u4|mem~291_combout\ : std_logic;
SIGNAL \u4|mem~292_combout\ : std_logic;
SIGNAL \u4|mem~166_q\ : std_logic;
SIGNAL \u4|mem~230_q\ : std_logic;
SIGNAL \u4|mem~102feeder_combout\ : std_logic;
SIGNAL \u4|mem~102_q\ : std_logic;
SIGNAL \u4|mem~38_q\ : std_logic;
SIGNAL \u4|mem~289_combout\ : std_logic;
SIGNAL \u4|mem~290_combout\ : std_logic;
SIGNAL \u4|mem~293_combout\ : std_logic;
SIGNAL \u4|mem~296_combout\ : std_logic;
SIGNAL \u4|ram_out[1]~17_combout\ : std_logic;
SIGNAL \u0|Equal0~0_combout\ : std_logic;
SIGNAL \u0|Equal0~4_combout\ : std_logic;
SIGNAL \u6|temp_a~38_combout\ : std_logic;
SIGNAL \u6|temp_a[12]~32_combout\ : std_logic;
SIGNAL \u6|temp_b~38_combout\ : std_logic;
SIGNAL \u8|Equal6~0_combout\ : std_logic;
SIGNAL \u8|Equal6~1_combout\ : std_logic;
SIGNAL \u10|a_to_bus~0_combout\ : std_logic;
SIGNAL \u0|saves[5]~29_combout\ : std_logic;
SIGNAL \u7|temp~25_combout\ : std_logic;
SIGNAL \u10|alu_and~combout\ : std_logic;
SIGNAL \u8|Equal7~2_combout\ : std_logic;
SIGNAL \u10|alu_shr~0_combout\ : std_logic;
SIGNAL \u7|temp[13]~12_combout\ : std_logic;
SIGNAL \u7|Add0~17_combout\ : std_logic;
SIGNAL \u6|temp_b~37_combout\ : std_logic;
SIGNAL \u6|temp_a~37_combout\ : std_logic;
SIGNAL \u7|Add0~14_combout\ : std_logic;
SIGNAL \u7|Add0~11_combout\ : std_logic;
SIGNAL \u0|ibus_out[3]~20_combout\ : std_logic;
SIGNAL \u6|temp_b~36_combout\ : std_logic;
SIGNAL \u6|temp_a~36_combout\ : std_logic;
SIGNAL \u7|Add0~8_combout\ : std_logic;
SIGNAL \u0|ibus_out[2]~19_combout\ : std_logic;
SIGNAL \u6|temp_b~35_combout\ : std_logic;
SIGNAL \u6|temp_a~35_combout\ : std_logic;
SIGNAL \u7|Add0~5_combout\ : std_logic;
SIGNAL \u0|saves[0]~0_combout\ : std_logic;
SIGNAL \u7|temp~7_combout\ : std_logic;
SIGNAL \u7|Add0~0_combout\ : std_logic;
SIGNAL \u7|Add0~2_cout\ : std_logic;
SIGNAL \u7|Add0~3_combout\ : std_logic;
SIGNAL \u7|temp~58_combout\ : std_logic;
SIGNAL \u7|temp~9_combout\ : std_logic;
SIGNAL \u7|temp~10_combout\ : std_logic;
SIGNAL \u0|saves[0]~14_combout\ : std_logic;
SIGNAL \u0|ibus_out[0]~17_combout\ : std_logic;
SIGNAL \u6|temp_b~33_combout\ : std_logic;
SIGNAL \u6|temp_a~33_combout\ : std_logic;
SIGNAL \u7|Add0~4\ : std_logic;
SIGNAL \u7|Add0~7\ : std_logic;
SIGNAL \u7|Add0~10\ : std_logic;
SIGNAL \u7|Add0~13\ : std_logic;
SIGNAL \u7|Add0~16\ : std_logic;
SIGNAL \u7|Add0~18_combout\ : std_logic;
SIGNAL \u7|temp~26_combout\ : std_logic;
SIGNAL \u7|temp~27_combout\ : std_logic;
SIGNAL \u7|temp[13]~4_combout\ : std_logic;
SIGNAL \u7|temp~8_combout\ : std_logic;
SIGNAL \u7|temp[13]~15_combout\ : std_logic;
SIGNAL \u0|saves[5]~30_combout\ : std_logic;
SIGNAL \u0|ibus_out[5]~22_combout\ : std_logic;
SIGNAL \u7|Add0~15_combout\ : std_logic;
SIGNAL \u7|temp~22_combout\ : std_logic;
SIGNAL \u7|temp~23_combout\ : std_logic;
SIGNAL \u7|temp~24_combout\ : std_logic;
SIGNAL \u0|saves[4]~27_combout\ : std_logic;
SIGNAL \u0|saves[4]~28_combout\ : std_logic;
SIGNAL \u0|ibus_out[4]~21_combout\ : std_logic;
SIGNAL \u7|temp~19_combout\ : std_logic;
SIGNAL \u7|Add0~12_combout\ : std_logic;
SIGNAL \u7|temp~20_combout\ : std_logic;
SIGNAL \u7|temp~21_combout\ : std_logic;
SIGNAL \u0|saves[3]~25_combout\ : std_logic;
SIGNAL \u0|saves[3]~26_combout\ : std_logic;
SIGNAL \u8|tmp~2_combout\ : std_logic;
SIGNAL \u8|Equal8~0_combout\ : std_logic;
SIGNAL \u8|Equal8~1_combout\ : std_logic;
SIGNAL \u10|bus_to_a~5_combout\ : std_logic;
SIGNAL \u8|Equal0~5_combout\ : std_logic;
SIGNAL \u10|bus_to_a~2_combout\ : std_logic;
SIGNAL \u10|bus_to_a~4_combout\ : std_logic;
SIGNAL \u6|temp_a~44_combout\ : std_logic;
SIGNAL \u0|saves[11]~41_combout\ : std_logic;
SIGNAL \u7|temp~43_combout\ : std_logic;
SIGNAL \u6|temp_b~46_combout\ : std_logic;
SIGNAL \u6|temp_a~46_combout\ : std_logic;
SIGNAL \u7|temp~49_combout\ : std_logic;
SIGNAL \u7|temp~50_combout\ : std_logic;
SIGNAL \u0|ibus_out[14]~31_combout\ : std_logic;
SIGNAL \u7|Add0~41_combout\ : std_logic;
SIGNAL \u6|temp_b~45_combout\ : std_logic;
SIGNAL \u6|temp_a~45_combout\ : std_logic;
SIGNAL \u7|Add0~38_combout\ : std_logic;
SIGNAL \u7|Add0~35_combout\ : std_logic;
SIGNAL \u7|Add0~32_combout\ : std_logic;
SIGNAL \u0|ibus_out[10]~27_combout\ : std_logic;
SIGNAL \u6|temp_b~43_combout\ : std_logic;
SIGNAL \u6|temp_a~43_combout\ : std_logic;
SIGNAL \u7|Add0~29_combout\ : std_logic;
SIGNAL \u6|temp_b~42_combout\ : std_logic;
SIGNAL \u6|temp_a~42_combout\ : std_logic;
SIGNAL \u6|temp_b~41_combout\ : std_logic;
SIGNAL \u6|temp_a~41_combout\ : std_logic;
SIGNAL \u7|Add0~26_combout\ : std_logic;
SIGNAL \u7|Add0~23_combout\ : std_logic;
SIGNAL \u0|ibus_out[7]~24_combout\ : std_logic;
SIGNAL \u6|temp_b~40_combout\ : std_logic;
SIGNAL \u6|temp_a~40_combout\ : std_logic;
SIGNAL \u7|Add0~20_combout\ : std_logic;
SIGNAL \u6|temp_a~39_combout\ : std_logic;
SIGNAL \u7|Add0~19\ : std_logic;
SIGNAL \u7|Add0~22\ : std_logic;
SIGNAL \u7|Add0~25\ : std_logic;
SIGNAL \u7|Add0~28\ : std_logic;
SIGNAL \u7|Add0~31\ : std_logic;
SIGNAL \u7|Add0~34\ : std_logic;
SIGNAL \u7|Add0~37\ : std_logic;
SIGNAL \u7|Add0~40\ : std_logic;
SIGNAL \u7|Add0~42_combout\ : std_logic;
SIGNAL \u7|temp~51_combout\ : std_logic;
SIGNAL \u0|saves[13]~45_combout\ : std_logic;
SIGNAL \u0|saves[13]~46_combout\ : std_logic;
SIGNAL \u0|ibus_out[13]~30_combout\ : std_logic;
SIGNAL \u7|temp~46_combout\ : std_logic;
SIGNAL \u7|temp~47_combout\ : std_logic;
SIGNAL \u7|Add0~39_combout\ : std_logic;
SIGNAL \u7|temp~48_combout\ : std_logic;
SIGNAL \u0|saves[12]~43_combout\ : std_logic;
SIGNAL \u0|saves[12]~44_combout\ : std_logic;
SIGNAL \u0|ibus_out[12]~29_combout\ : std_logic;
SIGNAL \u7|Add0~36_combout\ : std_logic;
SIGNAL \u7|temp~44_combout\ : std_logic;
SIGNAL \u7|temp~45_combout\ : std_logic;
SIGNAL \u0|saves[11]~42_combout\ : std_logic;
SIGNAL \u0|ibus_out[11]~28_combout\ : std_logic;
SIGNAL \u7|temp~40_combout\ : std_logic;
SIGNAL \u7|temp~41_combout\ : std_logic;
SIGNAL \u7|Add0~33_combout\ : std_logic;
SIGNAL \u7|temp~42_combout\ : std_logic;
SIGNAL \u0|saves[10]~39_combout\ : std_logic;
SIGNAL \u0|saves[10]~40_combout\ : std_logic;
SIGNAL \u8|tmp~10_combout\ : std_logic;
SIGNAL \u8|tmp~11_combout\ : std_logic;
SIGNAL \u8|tmp~8_combout\ : std_logic;
SIGNAL \u8|Equal0~1_combout\ : std_logic;
SIGNAL \u8|Equal7~0_combout\ : std_logic;
SIGNAL \u8|Equal7~1_combout\ : std_logic;
SIGNAL \u10|acc_xchg~combout\ : std_logic;
SIGNAL \u6|temp_a~47_combout\ : std_logic;
SIGNAL \u6|temp_b~47_combout\ : std_logic;
SIGNAL \u0|saves[14]~47_combout\ : std_logic;
SIGNAL \u0|saves[14]~48_combout\ : std_logic;
SIGNAL \u8|tmp~14_combout\ : std_logic;
SIGNAL \u8|tmp~12_combout\ : std_logic;
SIGNAL \u8|tmp~13_combout\ : std_logic;
SIGNAL \u8|tmp~15_combout\ : std_logic;
SIGNAL \u8|Equal0~2_combout\ : std_logic;
SIGNAL \u8|Equal0~4_combout\ : std_logic;
SIGNAL \u8|Equal5~0_combout\ : std_logic;
SIGNAL \u8|Equal4~0_combout\ : std_logic;
SIGNAL \u8|Equal0~3_combout\ : std_logic;
SIGNAL \u8|Equal3~0_combout\ : std_logic;
SIGNAL \u10|m_to_dr~1_combout\ : std_logic;
SIGNAL \u10|m_to_dr~2_combout\ : std_logic;
SIGNAL \u7|temp~37_combout\ : std_logic;
SIGNAL \u7|Add0~30_combout\ : std_logic;
SIGNAL \u7|temp~38_combout\ : std_logic;
SIGNAL \u7|temp~39_combout\ : std_logic;
SIGNAL \u0|saves[9]~37_combout\ : std_logic;
SIGNAL \u0|saves[9]~38_combout\ : std_logic;
SIGNAL \u0|ibus_out[9]~26_combout\ : std_logic;
SIGNAL \u7|temp~34_combout\ : std_logic;
SIGNAL \u7|temp~35_combout\ : std_logic;
SIGNAL \u7|Add0~27_combout\ : std_logic;
SIGNAL \u7|temp~36_combout\ : std_logic;
SIGNAL \u0|saves[8]~35_combout\ : std_logic;
SIGNAL \u0|saves[8]~36_combout\ : std_logic;
SIGNAL \u0|ibus_out[8]~25_combout\ : std_logic;
SIGNAL \u7|temp~31_combout\ : std_logic;
SIGNAL \u7|Add0~24_combout\ : std_logic;
SIGNAL \u7|temp~32_combout\ : std_logic;
SIGNAL \u7|temp~33_combout\ : std_logic;
SIGNAL \u0|saves[7]~33_combout\ : std_logic;
SIGNAL \u0|saves[7]~34_combout\ : std_logic;
SIGNAL \u8|tmp~7_combout\ : std_logic;
SIGNAL \u8|tmp~4_combout\ : std_logic;
SIGNAL \u8|tmp~6_combout\ : std_logic;
SIGNAL \u8|tmp~5_combout\ : std_logic;
SIGNAL \u8|Equal0~0_combout\ : std_logic;
SIGNAL \u8|Equal1~0_combout\ : std_logic;
SIGNAL \u8|Equal1~1_combout\ : std_logic;
SIGNAL \u10|bus_to_b~0_combout\ : std_logic;
SIGNAL \u10|bus_to_b~1_combout\ : std_logic;
SIGNAL \u0|ibus_out[1]~18_combout\ : std_logic;
SIGNAL \u6|temp_b~34_combout\ : std_logic;
SIGNAL \u6|temp_a~34_combout\ : std_logic;
SIGNAL \u7|temp~11_combout\ : std_logic;
SIGNAL \u7|Add0~6_combout\ : std_logic;
SIGNAL \u7|temp~13_combout\ : std_logic;
SIGNAL \u7|temp~14_combout\ : std_logic;
SIGNAL \u0|saves[1]~21_combout\ : std_logic;
SIGNAL \u0|saves[1]~22_combout\ : std_logic;
SIGNAL \u8|tmp~16_combout\ : std_logic;
SIGNAL \u10|pc_to_mar~0_combout\ : std_logic;
SIGNAL \u10|pc_to_mar~1_combout\ : std_logic;
SIGNAL \u10|pc_to_mar~2_combout\ : std_logic;
SIGNAL \u3|res[2]~3_combout\ : std_logic;
SIGNAL \u4|mem~463_combout\ : std_logic;
SIGNAL \u4|mem~464_combout\ : std_logic;
SIGNAL \u4|mem~247_q\ : std_logic;
SIGNAL \u4|mem~263_q\ : std_logic;
SIGNAL \u4|mem~231_q\ : std_logic;
SIGNAL \u4|mem~215_q\ : std_logic;
SIGNAL \u4|mem~304_combout\ : std_logic;
SIGNAL \u4|mem~305_combout\ : std_logic;
SIGNAL \u4|mem~135_q\ : std_logic;
SIGNAL \u4|mem~103_q\ : std_logic;
SIGNAL \u4|mem~87_q\ : std_logic;
SIGNAL \u4|mem~297_combout\ : std_logic;
SIGNAL \u4|mem~119_q\ : std_logic;
SIGNAL \u4|mem~298_combout\ : std_logic;
SIGNAL \u4|mem~39_q\ : std_logic;
SIGNAL \u4|mem~71_q\ : std_logic;
SIGNAL \u4|mem~55_q\ : std_logic;
SIGNAL \u4|mem~23_q\ : std_logic;
SIGNAL \u4|mem~301_combout\ : std_logic;
SIGNAL \u4|mem~302_combout\ : std_logic;
SIGNAL \u4|mem~167_q\ : std_logic;
SIGNAL \u4|mem~199_q\ : std_logic;
SIGNAL \u4|mem~151_q\ : std_logic;
SIGNAL \u4|mem~183feeder_combout\ : std_logic;
SIGNAL \u4|mem~183_q\ : std_logic;
SIGNAL \u4|mem~299_combout\ : std_logic;
SIGNAL \u4|mem~300_combout\ : std_logic;
SIGNAL \u4|mem~303_combout\ : std_logic;
SIGNAL \u4|mem~306_combout\ : std_logic;
SIGNAL \u4|ram_out[2]~18_combout\ : std_logic;
SIGNAL \u7|Add0~9_combout\ : std_logic;
SIGNAL \u7|temp~16_combout\ : std_logic;
SIGNAL \u7|temp~17_combout\ : std_logic;
SIGNAL \u7|temp~18_combout\ : std_logic;
SIGNAL \u0|saves[2]~23_combout\ : std_logic;
SIGNAL \u0|saves[2]~24_combout\ : std_logic;
SIGNAL \u8|tmp~3_combout\ : std_logic;
SIGNAL \u8|Equal11~0_combout\ : std_logic;
SIGNAL \u10|pc_sfincs~0_combout\ : std_logic;
SIGNAL \u10|pc_sfincs~1_combout\ : std_logic;
SIGNAL \u10|pc_sfincs~2_combout\ : std_logic;
SIGNAL \u1|tmp[0]~0_combout\ : std_logic;
SIGNAL \wr_addr[0]~input_o\ : std_logic;
SIGNAL \u3|res[0]~1_combout\ : std_logic;
SIGNAL \in_data[6]~input_o\ : std_logic;
SIGNAL \u4|mem~107_q\ : std_logic;
SIGNAL \u4|mem~91_q\ : std_logic;
SIGNAL \u4|mem~337_combout\ : std_logic;
SIGNAL \u4|mem~139_q\ : std_logic;
SIGNAL \u4|mem~123_q\ : std_logic;
SIGNAL \u4|mem~338_combout\ : std_logic;
SIGNAL \u4|mem~251_q\ : std_logic;
SIGNAL \u4|mem~267_q\ : std_logic;
SIGNAL \u4|mem~235feeder_combout\ : std_logic;
SIGNAL \u4|mem~235_q\ : std_logic;
SIGNAL \u4|mem~219_q\ : std_logic;
SIGNAL \u4|mem~344_combout\ : std_logic;
SIGNAL \u4|mem~345_combout\ : std_logic;
SIGNAL \u4|mem~43_q\ : std_logic;
SIGNAL \u4|mem~75_q\ : std_logic;
SIGNAL \u4|mem~27_q\ : std_logic;
SIGNAL \u4|mem~59feeder_combout\ : std_logic;
SIGNAL \u4|mem~59_q\ : std_logic;
SIGNAL \u4|mem~341_combout\ : std_logic;
SIGNAL \u4|mem~342_combout\ : std_logic;
SIGNAL \u4|mem~171feeder_combout\ : std_logic;
SIGNAL \u4|mem~171_q\ : std_logic;
SIGNAL \u4|mem~203_q\ : std_logic;
SIGNAL \u4|mem~155_q\ : std_logic;
SIGNAL \u4|mem~187_q\ : std_logic;
SIGNAL \u4|mem~339_combout\ : std_logic;
SIGNAL \u4|mem~340_combout\ : std_logic;
SIGNAL \u4|mem~343_combout\ : std_logic;
SIGNAL \u4|mem~346_combout\ : std_logic;
SIGNAL \u4|ram_out[6]~22_combout\ : std_logic;
SIGNAL \u7|temp~28_combout\ : std_logic;
SIGNAL \u7|temp~29_combout\ : std_logic;
SIGNAL \u7|Add0~21_combout\ : std_logic;
SIGNAL \u7|temp~30_combout\ : std_logic;
SIGNAL \u0|saves[6]~31_combout\ : std_logic;
SIGNAL \u0|saves[6]~32_combout\ : std_logic;
SIGNAL \u0|ibus_out[6]~23_combout\ : std_logic;
SIGNAL \u6|temp_b~39_combout\ : std_logic;
SIGNAL \u0|saves[0]~8_combout\ : std_logic;
SIGNAL \u0|saves[0]~7_combout\ : std_logic;
SIGNAL \u0|saves[0]~9_combout\ : std_logic;
SIGNAL \u0|saves[0]~5_combout\ : std_logic;
SIGNAL \u0|saves[0]~4_combout\ : std_logic;
SIGNAL \u0|saves[0]~6_combout\ : std_logic;
SIGNAL \u0|saves[0]~11_combout\ : std_logic;
SIGNAL \u0|saves[0]~10_combout\ : std_logic;
SIGNAL \u0|saves[0]~12_combout\ : std_logic;
SIGNAL \u6|temp_a~48_combout\ : std_logic;
SIGNAL \u6|temp_b~48_combout\ : std_logic;
SIGNAL \u0|saves[0]~2_combout\ : std_logic;
SIGNAL \u0|saves[0]~1_combout\ : std_logic;
SIGNAL \u0|saves[0]~3_combout\ : std_logic;
SIGNAL \u0|saves[0]~13_combout\ : std_logic;
SIGNAL \u7|temp~59_combout\ : std_logic;
SIGNAL \u7|temp~55_combout\ : std_logic;
SIGNAL \u7|Add0~47_combout\ : std_logic;
SIGNAL \u7|Add0~44_combout\ : std_logic;
SIGNAL \u7|Add0~43\ : std_logic;
SIGNAL \u7|Add0~46\ : std_logic;
SIGNAL \u7|Add0~48_combout\ : std_logic;
SIGNAL \u7|temp~56_combout\ : std_logic;
SIGNAL \u7|temp~57_combout\ : std_logic;
SIGNAL \u0|saves[15]~49_combout\ : std_logic;
SIGNAL \u0|saves[15]~50_combout\ : std_logic;
SIGNAL \u0|ibus_out[15]~32_combout\ : std_logic;
SIGNAL \u7|temp~52_combout\ : std_logic;
SIGNAL \u7|temp~53_combout\ : std_logic;
SIGNAL \u7|Add0~45_combout\ : std_logic;
SIGNAL \u7|temp~54_combout\ : std_logic;
SIGNAL \u0|saves[15]~19_combout\ : std_logic;
SIGNAL \u0|saves[15]~18_combout\ : std_logic;
SIGNAL \u0|saves[15]~16_combout\ : std_logic;
SIGNAL \u0|saves[15]~15_combout\ : std_logic;
SIGNAL \u0|saves[15]~17_combout\ : std_logic;
SIGNAL \u0|saves[15]~20_combout\ : std_logic;
SIGNAL \u8|tmp~0_combout\ : std_logic;
SIGNAL \u1|tmp[1]~1_combout\ : std_logic;
SIGNAL \u1|tmp[1]~2_combout\ : std_logic;
SIGNAL \wr_addr[1]~input_o\ : std_logic;
SIGNAL \u3|res[1]~0_combout\ : std_logic;
SIGNAL \in_data[0]~input_o\ : std_logic;
SIGNAL \u4|mem~197_q\ : std_logic;
SIGNAL \u4|mem~181_q\ : std_logic;
SIGNAL \u4|mem~165feeder_combout\ : std_logic;
SIGNAL \u4|mem~165_q\ : std_logic;
SIGNAL \u4|mem~149_q\ : std_logic;
SIGNAL \u4|mem~277_combout\ : std_logic;
SIGNAL \u4|mem~278_combout\ : std_logic;
SIGNAL \u4|mem~229feeder_combout\ : std_logic;
SIGNAL \u4|mem~229_q\ : std_logic;
SIGNAL \u4|mem~261_q\ : std_logic;
SIGNAL \u4|mem~245feeder_combout\ : std_logic;
SIGNAL \u4|mem~245_q\ : std_logic;
SIGNAL \u4|mem~213_q\ : std_logic;
SIGNAL \u4|mem~284_combout\ : std_logic;
SIGNAL \u4|mem~285_combout\ : std_logic;
SIGNAL \u4|mem~53_q\ : std_logic;
SIGNAL \u4|mem~69_q\ : std_logic;
SIGNAL \u4|mem~21_q\ : std_logic;
SIGNAL \u4|mem~37_q\ : std_logic;
SIGNAL \u4|mem~281_combout\ : std_logic;
SIGNAL \u4|mem~282_combout\ : std_logic;
SIGNAL \u4|mem~101_q\ : std_logic;
SIGNAL \u4|mem~133_q\ : std_logic;
SIGNAL \u4|mem~117_q\ : std_logic;
SIGNAL \u4|mem~85_q\ : std_logic;
SIGNAL \u4|mem~279_combout\ : std_logic;
SIGNAL \u4|mem~280_combout\ : std_logic;
SIGNAL \u4|mem~283_combout\ : std_logic;
SIGNAL \u4|mem~286_combout\ : std_logic;
SIGNAL \u0|ibus_out[0]~16_combout\ : std_logic;
SIGNAL \u1|tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u9|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u6|temp_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u6|temp_b\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|temp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u2|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u8|tmp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u7|temp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \u9|ALT_INV_temp\ : std_logic_vector(7 DOWNTO 7);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_wr_data <= wr_data;
ww_wr_addr <= wr_addr;
ww_in_data <= in_data;
test_ram <= ww_test_ram;
test_pc <= ww_test_pc;
test_t <= ww_test_t;
test_bus <= ww_test_bus;
test_ir <= ww_test_ir;
ax <= ww_ax;
bx <= ww_bx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\u9|ALT_INV_temp\(7) <= NOT \u9|temp\(7);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N16
\test_ram[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|mem~286_combout\,
	oe => \wr_data~input_o\,
	devoe => ww_devoe,
	o => \test_ram[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\test_ram[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|mem~296_combout\,
	oe => \wr_data~input_o\,
	devoe => ww_devoe,
	o => \test_ram[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\test_ram[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|mem~306_combout\,
	oe => \wr_data~input_o\,
	devoe => ww_devoe,
	o => \test_ram[2]~output_o\);

-- Location: IOOBUF_X9_Y24_N16
\test_ram[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|mem~316_combout\,
	oe => \wr_data~input_o\,
	devoe => ww_devoe,
	o => \test_ram[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\test_ram[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|mem~326_combout\,
	oe => \wr_data~input_o\,
	devoe => ww_devoe,
	o => \test_ram[4]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\test_ram[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|mem~336_combout\,
	oe => \wr_data~input_o\,
	devoe => ww_devoe,
	o => \test_ram[5]~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\test_ram[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|mem~346_combout\,
	oe => \wr_data~input_o\,
	devoe => ww_devoe,
	o => \test_ram[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\test_ram[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|mem~356_combout\,
	oe => \wr_data~input_o\,
	devoe => ww_devoe,
	o => \test_ram[7]~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\test_ram[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|mem~366_combout\,
	oe => \wr_data~input_o\,
	devoe => ww_devoe,
	o => \test_ram[8]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\test_ram[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|mem~376_combout\,
	oe => \wr_data~input_o\,
	devoe => ww_devoe,
	o => \test_ram[9]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\test_ram[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|mem~386_combout\,
	oe => \wr_data~input_o\,
	devoe => ww_devoe,
	o => \test_ram[10]~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\test_ram[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|mem~396_combout\,
	oe => \wr_data~input_o\,
	devoe => ww_devoe,
	o => \test_ram[11]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\test_ram[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|mem~406_combout\,
	oe => \wr_data~input_o\,
	devoe => ww_devoe,
	o => \test_ram[12]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\test_ram[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|mem~416_combout\,
	oe => \wr_data~input_o\,
	devoe => ww_devoe,
	o => \test_ram[13]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\test_ram[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|mem~426_combout\,
	oe => \wr_data~input_o\,
	devoe => ww_devoe,
	o => \test_ram[14]~output_o\);

-- Location: IOOBUF_X13_Y24_N2
\test_ram[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|mem~436_combout\,
	oe => \wr_data~input_o\,
	devoe => ww_devoe,
	o => \test_ram[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\test_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[0]~14_combout\,
	oe => \u0|saves[15]~20_combout\,
	devoe => ww_devoe,
	o => \test_bus[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\test_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[1]~22_combout\,
	oe => \u0|saves[15]~20_combout\,
	devoe => ww_devoe,
	o => \test_bus[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\test_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[2]~24_combout\,
	oe => \u0|saves[15]~20_combout\,
	devoe => ww_devoe,
	o => \test_bus[2]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\test_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[3]~26_combout\,
	oe => \u0|saves[15]~20_combout\,
	devoe => ww_devoe,
	o => \test_bus[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\test_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[4]~28_combout\,
	oe => \u0|saves[15]~20_combout\,
	devoe => ww_devoe,
	o => \test_bus[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\test_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[5]~30_combout\,
	oe => \u0|saves[15]~20_combout\,
	devoe => ww_devoe,
	o => \test_bus[5]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\test_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[6]~32_combout\,
	oe => \u0|saves[15]~20_combout\,
	devoe => ww_devoe,
	o => \test_bus[6]~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\test_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[7]~34_combout\,
	oe => \u0|saves[15]~20_combout\,
	devoe => ww_devoe,
	o => \test_bus[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\test_bus[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[8]~36_combout\,
	oe => \u0|saves[15]~20_combout\,
	devoe => ww_devoe,
	o => \test_bus[8]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\test_bus[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[9]~38_combout\,
	oe => \u0|saves[15]~20_combout\,
	devoe => ww_devoe,
	o => \test_bus[9]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\test_bus[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[10]~40_combout\,
	oe => \u0|saves[15]~20_combout\,
	devoe => ww_devoe,
	o => \test_bus[10]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\test_bus[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[11]~42_combout\,
	oe => \u0|saves[15]~20_combout\,
	devoe => ww_devoe,
	o => \test_bus[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\test_bus[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[12]~44_combout\,
	oe => \u0|saves[15]~20_combout\,
	devoe => ww_devoe,
	o => \test_bus[12]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\test_bus[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[13]~46_combout\,
	oe => \u0|saves[15]~20_combout\,
	devoe => ww_devoe,
	o => \test_bus[13]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\test_bus[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[14]~48_combout\,
	oe => \u0|saves[15]~20_combout\,
	devoe => ww_devoe,
	o => \test_bus[14]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\test_bus[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[15]~50_combout\,
	oe => \u0|saves[15]~20_combout\,
	devoe => ww_devoe,
	o => \test_bus[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\test_ir[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[0]~14_combout\,
	oe => \u0|ibus_out[0]~16_combout\,
	devoe => ww_devoe,
	o => \test_ir[0]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\test_ir[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[1]~22_combout\,
	oe => \u0|ibus_out[0]~16_combout\,
	devoe => ww_devoe,
	o => \test_ir[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\test_ir[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[2]~24_combout\,
	oe => \u0|ibus_out[0]~16_combout\,
	devoe => ww_devoe,
	o => \test_ir[2]~output_o\);

-- Location: IOOBUF_X34_Y3_N16
\test_ir[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[3]~26_combout\,
	oe => \u0|ibus_out[0]~16_combout\,
	devoe => ww_devoe,
	o => \test_ir[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\test_ir[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[4]~28_combout\,
	oe => \u0|ibus_out[0]~16_combout\,
	devoe => ww_devoe,
	o => \test_ir[4]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\test_ir[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[5]~30_combout\,
	oe => \u0|ibus_out[0]~16_combout\,
	devoe => ww_devoe,
	o => \test_ir[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\test_ir[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[6]~32_combout\,
	oe => \u0|ibus_out[0]~16_combout\,
	devoe => ww_devoe,
	o => \test_ir[6]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\test_ir[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[7]~34_combout\,
	oe => \u0|ibus_out[0]~16_combout\,
	devoe => ww_devoe,
	o => \test_ir[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\test_ir[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[8]~36_combout\,
	oe => \u0|ibus_out[0]~16_combout\,
	devoe => ww_devoe,
	o => \test_ir[8]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\test_ir[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[9]~38_combout\,
	oe => \u0|ibus_out[0]~16_combout\,
	devoe => ww_devoe,
	o => \test_ir[9]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\test_ir[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[10]~40_combout\,
	oe => \u0|ibus_out[0]~16_combout\,
	devoe => ww_devoe,
	o => \test_ir[10]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\test_ir[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[11]~42_combout\,
	oe => \u0|ibus_out[0]~16_combout\,
	devoe => ww_devoe,
	o => \test_ir[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\test_ir[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[12]~44_combout\,
	oe => \u0|ibus_out[0]~16_combout\,
	devoe => ww_devoe,
	o => \test_ir[12]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\test_ir[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[13]~46_combout\,
	oe => \u0|ibus_out[0]~16_combout\,
	devoe => ww_devoe,
	o => \test_ir[13]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\test_ir[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[14]~48_combout\,
	oe => \u0|ibus_out[0]~16_combout\,
	devoe => ww_devoe,
	o => \test_ir[14]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\test_ir[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|saves[15]~50_combout\,
	oe => \u0|ibus_out[0]~16_combout\,
	devoe => ww_devoe,
	o => \test_ir[15]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\test_pc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|tmp\(0),
	devoe => ww_devoe,
	o => \test_pc[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N9
\test_pc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|tmp\(1),
	devoe => ww_devoe,
	o => \test_pc[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\test_pc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|tmp\(2),
	devoe => ww_devoe,
	o => \test_pc[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\test_pc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|tmp\(3),
	devoe => ww_devoe,
	o => \test_pc[3]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\test_t[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|temp\(0),
	devoe => ww_devoe,
	o => \test_t[0]~output_o\);

-- Location: IOOBUF_X34_Y10_N2
\test_t[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|temp\(1),
	devoe => ww_devoe,
	o => \test_t[1]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\test_t[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|temp\(2),
	devoe => ww_devoe,
	o => \test_t[2]~output_o\);

-- Location: IOOBUF_X34_Y11_N2
\test_t[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|temp\(3),
	devoe => ww_devoe,
	o => \test_t[3]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\test_t[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|temp\(4),
	devoe => ww_devoe,
	o => \test_t[4]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\test_t[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|temp\(5),
	devoe => ww_devoe,
	o => \test_t[5]~output_o\);

-- Location: IOOBUF_X34_Y19_N9
\test_t[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|temp\(6),
	devoe => ww_devoe,
	o => \test_t[6]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\test_t[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u9|ALT_INV_temp\(7),
	devoe => ww_devoe,
	o => \test_t[7]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\ax[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_a\(0),
	devoe => ww_devoe,
	o => \ax[0]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\ax[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_a\(1),
	devoe => ww_devoe,
	o => \ax[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\ax[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_a\(2),
	devoe => ww_devoe,
	o => \ax[2]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\ax[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_a\(3),
	devoe => ww_devoe,
	o => \ax[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\ax[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_a\(4),
	devoe => ww_devoe,
	o => \ax[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\ax[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_a\(5),
	devoe => ww_devoe,
	o => \ax[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\ax[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_a\(6),
	devoe => ww_devoe,
	o => \ax[6]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\ax[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_a\(7),
	devoe => ww_devoe,
	o => \ax[7]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\ax[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_a\(8),
	devoe => ww_devoe,
	o => \ax[8]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\ax[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_a\(9),
	devoe => ww_devoe,
	o => \ax[9]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\ax[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_a\(10),
	devoe => ww_devoe,
	o => \ax[10]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\ax[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_a\(11),
	devoe => ww_devoe,
	o => \ax[11]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\ax[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_a\(12),
	devoe => ww_devoe,
	o => \ax[12]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\ax[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_a\(13),
	devoe => ww_devoe,
	o => \ax[13]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\ax[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_a\(14),
	devoe => ww_devoe,
	o => \ax[14]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\ax[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_a\(15),
	devoe => ww_devoe,
	o => \ax[15]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\bx[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_b\(0),
	devoe => ww_devoe,
	o => \bx[0]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\bx[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_b\(1),
	devoe => ww_devoe,
	o => \bx[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\bx[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_b\(2),
	devoe => ww_devoe,
	o => \bx[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\bx[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_b\(3),
	devoe => ww_devoe,
	o => \bx[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\bx[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_b\(4),
	devoe => ww_devoe,
	o => \bx[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\bx[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_b\(5),
	devoe => ww_devoe,
	o => \bx[5]~output_o\);

-- Location: IOOBUF_X32_Y24_N23
\bx[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_b\(6),
	devoe => ww_devoe,
	o => \bx[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\bx[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_b\(7),
	devoe => ww_devoe,
	o => \bx[7]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\bx[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_b\(8),
	devoe => ww_devoe,
	o => \bx[8]~output_o\);

-- Location: IOOBUF_X34_Y6_N16
\bx[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_b\(9),
	devoe => ww_devoe,
	o => \bx[9]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\bx[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_b\(10),
	devoe => ww_devoe,
	o => \bx[10]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\bx[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_b\(11),
	devoe => ww_devoe,
	o => \bx[11]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\bx[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_b\(12),
	devoe => ww_devoe,
	o => \bx[12]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\bx[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_b\(13),
	devoe => ww_devoe,
	o => \bx[13]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\bx[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_b\(14),
	devoe => ww_devoe,
	o => \bx[14]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\bx[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u6|temp_b\(15),
	devoe => ww_devoe,
	o => \bx[15]~output_o\);

-- Location: IOIBUF_X7_Y24_N15
\wr_data~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data,
	o => \wr_data~input_o\);

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

-- Location: IOIBUF_X0_Y11_N15
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\in_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(2),
	o => \in_data[2]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\wr_addr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_addr(2),
	o => \wr_addr[2]~input_o\);

-- Location: LCCOMB_X25_Y16_N18
\u1|tmp[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|tmp[2]~3_combout\ = \u1|tmp\(2) $ (((\u1|tmp\(1) & \u1|tmp[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|tmp\(1),
	datac => \u1|tmp\(2),
	datad => \u1|tmp[1]~1_combout\,
	combout => \u1|tmp[2]~3_combout\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X25_Y16_N19
\u1|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|tmp[2]~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|tmp\(2));

-- Location: FF_X23_Y7_N1
\u9|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u9|temp\(3),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9|temp\(4));

-- Location: LCCOMB_X26_Y8_N16
\u9|temp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|temp[5]~feeder_combout\ = \u9|temp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u9|temp\(4),
	combout => \u9|temp[5]~feeder_combout\);

-- Location: FF_X26_Y8_N17
\u9|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u9|temp[5]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9|temp\(5));

-- Location: LCCOMB_X32_Y18_N6
\u9|temp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|temp[6]~feeder_combout\ = \u9|temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u9|temp\(5),
	combout => \u9|temp[6]~feeder_combout\);

-- Location: FF_X32_Y18_N7
\u9|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u9|temp[6]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9|temp\(6));

-- Location: LCCOMB_X32_Y18_N0
\u9|temp[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|temp[7]~1_combout\ = !\u9|temp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u9|temp\(6),
	combout => \u9|temp[7]~1_combout\);

-- Location: FF_X32_Y18_N1
\u9|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u9|temp[7]~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9|temp\(7));

-- Location: LCCOMB_X32_Y18_N4
\u9|temp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|temp[0]~0_combout\ = !\u9|temp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u9|temp\(7),
	combout => \u9|temp[0]~0_combout\);

-- Location: FF_X32_Y18_N5
\u9|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u9|temp[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9|temp\(0));

-- Location: LCCOMB_X25_Y16_N16
\u9|temp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|temp[1]~feeder_combout\ = \u9|temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u9|temp\(0),
	combout => \u9|temp[1]~feeder_combout\);

-- Location: FF_X25_Y16_N17
\u9|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u9|temp[1]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9|temp\(1));

-- Location: LCCOMB_X25_Y16_N10
\u9|temp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|temp[2]~feeder_combout\ = \u9|temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u9|temp\(1),
	combout => \u9|temp[2]~feeder_combout\);

-- Location: FF_X25_Y16_N11
\u9|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u9|temp[2]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9|temp\(2));

-- Location: FF_X23_Y8_N21
\u9|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u9|temp\(2),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9|temp\(3));

-- Location: IOIBUF_X25_Y24_N15
\in_data[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(9),
	o => \in_data[9]~input_o\);

-- Location: FF_X21_Y20_N11
\u4|mem~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[9]~input_o\,
	sload => VCC,
	ena => \u4|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~254_q\);

-- Location: LCCOMB_X25_Y16_N26
\u1|tmp[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|tmp[3]~4_combout\ = \u1|tmp\(3) $ (((\u1|tmp\(1) & (\u1|tmp\(2) & \u1|tmp[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|tmp\(1),
	datab => \u1|tmp\(2),
	datac => \u1|tmp\(3),
	datad => \u1|tmp[1]~1_combout\,
	combout => \u1|tmp[3]~4_combout\);

-- Location: FF_X25_Y16_N27
\u1|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|tmp[3]~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|tmp\(3));

-- Location: FF_X25_Y16_N21
\u2|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u1|tmp\(3),
	sload => VCC,
	ena => \u10|pc_to_mar~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|temp\(3));

-- Location: IOIBUF_X28_Y24_N15
\wr_addr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_addr(3),
	o => \wr_addr[3]~input_o\);

-- Location: LCCOMB_X25_Y16_N20
\u3|res[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|res[3]~2_combout\ = (\wr_data~input_o\ & (\u2|temp\(3))) # (!\wr_data~input_o\ & ((\wr_addr[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_data~input_o\,
	datac => \u2|temp\(3),
	datad => \wr_addr[3]~input_o\,
	combout => \u3|res[3]~2_combout\);

-- Location: LCCOMB_X19_Y19_N20
\u4|mem~447\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~447_combout\ = (!\u3|res[3]~2_combout\ & (!\u3|res[0]~1_combout\ & (\u3|res[1]~0_combout\ & \u3|res[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[3]~2_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u3|res[1]~0_combout\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~447_combout\);

-- Location: LCCOMB_X19_Y19_N22
\u4|mem~448\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~448_combout\ = (!\wr_data~input_o\ & \u4|mem~447_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~447_combout\,
	combout => \u4|mem~448_combout\);

-- Location: FF_X22_Y20_N7
\u4|mem~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[9]~input_o\,
	sload => VCC,
	ena => \u4|mem~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~126_q\);

-- Location: LCCOMB_X21_Y19_N18
\u4|mem~437\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~437_combout\ = (!\u3|res[0]~1_combout\ & (\u3|res[3]~2_combout\ & (\u3|res[1]~0_combout\ & !\u3|res[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u3|res[3]~2_combout\,
	datac => \u3|res[1]~0_combout\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~437_combout\);

-- Location: LCCOMB_X21_Y19_N0
\u4|mem~438\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~438_combout\ = (!\wr_data~input_o\ & \u4|mem~437_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr_data~input_o\,
	datad => \u4|mem~437_combout\,
	combout => \u4|mem~438_combout\);

-- Location: FF_X21_Y20_N29
\u4|mem~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[9]~input_o\,
	sload => VCC,
	ena => \u4|mem~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~190_q\);

-- Location: LCCOMB_X26_Y20_N12
\u4|mem~453\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~453_combout\ = (!\u3|res[0]~1_combout\ & (!\u3|res[3]~2_combout\ & (\u3|res[1]~0_combout\ & !\u3|res[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u3|res[3]~2_combout\,
	datac => \u3|res[1]~0_combout\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~453_combout\);

-- Location: LCCOMB_X26_Y20_N10
\u4|mem~454\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~454_combout\ = (!\wr_data~input_o\ & \u4|mem~453_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_data~input_o\,
	datad => \u4|mem~453_combout\,
	combout => \u4|mem~454_combout\);

-- Location: FF_X26_Y20_N25
\u4|mem~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[9]~input_o\,
	sload => VCC,
	ena => \u4|mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~62_q\);

-- Location: LCCOMB_X26_Y20_N24
\u4|mem~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~367_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~190_q\) # ((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~62_q\ & !\u3|res[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~190_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~62_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~367_combout\);

-- Location: LCCOMB_X22_Y20_N6
\u4|mem~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~368_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~367_combout\ & (\u4|mem~254_q\)) # (!\u4|mem~367_combout\ & ((\u4|mem~126_q\))))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~367_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~254_q\,
	datab => \u3|res[2]~3_combout\,
	datac => \u4|mem~126_q\,
	datad => \u4|mem~367_combout\,
	combout => \u4|mem~368_combout\);

-- Location: LCCOMB_X19_Y19_N0
\u4|mem~443\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~443_combout\ = (\u3|res[3]~2_combout\ & (\u3|res[0]~1_combout\ & (\u3|res[1]~0_combout\ & !\u3|res[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[3]~2_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u3|res[1]~0_combout\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~443_combout\);

-- Location: LCCOMB_X19_Y19_N2
\u4|mem~444\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~444_combout\ = (!\wr_data~input_o\ & \u4|mem~443_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~443_combout\,
	combout => \u4|mem~444_combout\);

-- Location: FF_X24_Y20_N27
\u4|mem~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[9]~input_o\,
	sload => VCC,
	ena => \u4|mem~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~206_q\);

-- Location: LCCOMB_X19_Y20_N18
\u4|mem~467\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~467_combout\ = (\u3|res[0]~1_combout\ & (\u3|res[2]~3_combout\ & (\u3|res[3]~2_combout\ & \u3|res[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u3|res[2]~3_combout\,
	datac => \u3|res[3]~2_combout\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~467_combout\);

-- Location: LCCOMB_X19_Y20_N28
\u4|mem~468\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~468_combout\ = (!\wr_data~input_o\ & \u4|mem~467_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~467_combout\,
	combout => \u4|mem~468_combout\);

-- Location: FF_X24_Y20_N17
\u4|mem~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[9]~input_o\,
	sload => VCC,
	ena => \u4|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~270_q\);

-- Location: LCCOMB_X23_Y18_N0
\u4|mem~142feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~142feeder_combout\ = \in_data[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[9]~input_o\,
	combout => \u4|mem~142feeder_combout\);

-- Location: LCCOMB_X19_Y19_N24
\u4|mem~451\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~451_combout\ = (!\u3|res[3]~2_combout\ & (\u3|res[0]~1_combout\ & (\u3|res[1]~0_combout\ & \u3|res[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[3]~2_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u3|res[1]~0_combout\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~451_combout\);

-- Location: LCCOMB_X19_Y19_N30
\u4|mem~452\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~452_combout\ = (!\wr_data~input_o\ & \u4|mem~451_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~451_combout\,
	combout => \u4|mem~452_combout\);

-- Location: FF_X23_Y18_N1
\u4|mem~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~142feeder_combout\,
	ena => \u4|mem~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~142_q\);

-- Location: LCCOMB_X19_Y20_N6
\u4|mem~459\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~459_combout\ = (\u3|res[0]~1_combout\ & (!\u3|res[2]~3_combout\ & (!\u3|res[3]~2_combout\ & \u3|res[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u3|res[2]~3_combout\,
	datac => \u3|res[3]~2_combout\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~459_combout\);

-- Location: LCCOMB_X19_Y20_N24
\u4|mem~460\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~460_combout\ = (!\wr_data~input_o\ & \u4|mem~459_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~459_combout\,
	combout => \u4|mem~460_combout\);

-- Location: FF_X25_Y19_N1
\u4|mem~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[9]~input_o\,
	sload => VCC,
	ena => \u4|mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~78_q\);

-- Location: LCCOMB_X25_Y19_N0
\u4|mem~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~374_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~142_q\) # ((\u3|res[3]~2_combout\)))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~78_q\ & !\u3|res[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~142_q\,
	datac => \u4|mem~78_q\,
	datad => \u3|res[3]~2_combout\,
	combout => \u4|mem~374_combout\);

-- Location: LCCOMB_X24_Y20_N16
\u4|mem~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~375_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~374_combout\ & ((\u4|mem~270_q\))) # (!\u4|mem~374_combout\ & (\u4|mem~206_q\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~374_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~206_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~270_q\,
	datad => \u4|mem~374_combout\,
	combout => \u4|mem~375_combout\);

-- Location: LCCOMB_X19_Y19_N16
\u4|mem~449\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~449_combout\ = (!\u3|res[3]~2_combout\ & (!\u3|res[0]~1_combout\ & (!\u3|res[1]~0_combout\ & \u3|res[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[3]~2_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u3|res[1]~0_combout\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~449_combout\);

-- Location: LCCOMB_X19_Y19_N10
\u4|mem~450\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~450_combout\ = (!\wr_data~input_o\ & \u4|mem~449_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~449_combout\,
	combout => \u4|mem~450_combout\);

-- Location: FF_X22_Y20_N25
\u4|mem~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[9]~input_o\,
	sload => VCC,
	ena => \u4|mem~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~94_q\);

-- Location: LCCOMB_X19_Y20_N2
\u4|mem~465\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~465_combout\ = (!\u3|res[0]~1_combout\ & (\u3|res[2]~3_combout\ & (\u3|res[3]~2_combout\ & !\u3|res[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u3|res[2]~3_combout\,
	datac => \u3|res[3]~2_combout\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~465_combout\);

-- Location: LCCOMB_X19_Y20_N8
\u4|mem~466\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~466_combout\ = (!\wr_data~input_o\ & \u4|mem~465_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~465_combout\,
	combout => \u4|mem~466_combout\);

-- Location: FF_X25_Y20_N5
\u4|mem~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[9]~input_o\,
	sload => VCC,
	ena => \u4|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~222_q\);

-- Location: LCCOMB_X19_Y19_N8
\u4|mem~441\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~441_combout\ = (\u3|res[3]~2_combout\ & (!\u3|res[0]~1_combout\ & (!\u3|res[1]~0_combout\ & !\u3|res[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[3]~2_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u3|res[1]~0_combout\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~441_combout\);

-- Location: LCCOMB_X19_Y19_N18
\u4|mem~442\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~442_combout\ = (!\wr_data~input_o\ & \u4|mem~441_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_data~input_o\,
	datac => \u4|mem~441_combout\,
	combout => \u4|mem~442_combout\);

-- Location: FF_X23_Y20_N25
\u4|mem~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[9]~input_o\,
	sload => VCC,
	ena => \u4|mem~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~158_q\);

-- Location: LCCOMB_X26_Y20_N8
\u4|mem~457\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~457_combout\ = (!\u3|res[0]~1_combout\ & (!\u3|res[3]~2_combout\ & (!\u3|res[1]~0_combout\ & !\u3|res[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u3|res[3]~2_combout\,
	datac => \u3|res[1]~0_combout\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~457_combout\);

-- Location: LCCOMB_X26_Y20_N30
\u4|mem~458\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~458_combout\ = (\u4|mem~457_combout\ & !\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|mem~457_combout\,
	datad => \wr_data~input_o\,
	combout => \u4|mem~458_combout\);

-- Location: FF_X23_Y20_N19
\u4|mem~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[9]~input_o\,
	sload => VCC,
	ena => \u4|mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~30_q\);

-- Location: LCCOMB_X23_Y20_N18
\u4|mem~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~371_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~158_q\) # ((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~30_q\ & !\u3|res[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~158_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~30_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~371_combout\);

-- Location: LCCOMB_X25_Y20_N4
\u4|mem~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~372_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~371_combout\ & ((\u4|mem~222_q\))) # (!\u4|mem~371_combout\ & (\u4|mem~94_q\)))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~371_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~94_q\,
	datac => \u4|mem~222_q\,
	datad => \u4|mem~371_combout\,
	combout => \u4|mem~372_combout\);

-- Location: LCCOMB_X21_Y19_N10
\u4|mem~439\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~439_combout\ = (\u3|res[0]~1_combout\ & (\u3|res[3]~2_combout\ & (!\u3|res[1]~0_combout\ & !\u3|res[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u3|res[3]~2_combout\,
	datac => \u3|res[1]~0_combout\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~439_combout\);

-- Location: LCCOMB_X21_Y19_N4
\u4|mem~440\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~440_combout\ = (!\wr_data~input_o\ & \u4|mem~439_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr_data~input_o\,
	datad => \u4|mem~439_combout\,
	combout => \u4|mem~440_combout\);

-- Location: FF_X25_Y21_N29
\u4|mem~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[9]~input_o\,
	sload => VCC,
	ena => \u4|mem~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~174_q\);

-- Location: LCCOMB_X26_Y20_N0
\u4|mem~461\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~461_combout\ = (\u3|res[0]~1_combout\ & (\u3|res[3]~2_combout\ & (!\u3|res[1]~0_combout\ & \u3|res[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u3|res[3]~2_combout\,
	datac => \u3|res[1]~0_combout\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~461_combout\);

-- Location: LCCOMB_X26_Y20_N6
\u4|mem~462\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~462_combout\ = (!\wr_data~input_o\ & \u4|mem~461_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_data~input_o\,
	datad => \u4|mem~461_combout\,
	combout => \u4|mem~462_combout\);

-- Location: FF_X25_Y21_N3
\u4|mem~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[9]~input_o\,
	sload => VCC,
	ena => \u4|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~238_q\);

-- Location: LCCOMB_X19_Y19_N12
\u4|mem~445\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~445_combout\ = (!\u3|res[3]~2_combout\ & (\u3|res[0]~1_combout\ & (!\u3|res[1]~0_combout\ & \u3|res[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[3]~2_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u3|res[1]~0_combout\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~445_combout\);

-- Location: LCCOMB_X19_Y19_N26
\u4|mem~446\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~446_combout\ = (!\wr_data~input_o\ & \u4|mem~445_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~445_combout\,
	combout => \u4|mem~446_combout\);

-- Location: FF_X24_Y21_N5
\u4|mem~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[9]~input_o\,
	sload => VCC,
	ena => \u4|mem~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~110_q\);

-- Location: LCCOMB_X19_Y20_N10
\u4|mem~455\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~455_combout\ = (\u3|res[0]~1_combout\ & (!\u3|res[2]~3_combout\ & (!\u3|res[3]~2_combout\ & !\u3|res[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u3|res[2]~3_combout\,
	datac => \u3|res[3]~2_combout\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~455_combout\);

-- Location: LCCOMB_X19_Y20_N16
\u4|mem~456\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~456_combout\ = (!\wr_data~input_o\ & \u4|mem~455_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~455_combout\,
	combout => \u4|mem~456_combout\);

-- Location: FF_X24_Y21_N3
\u4|mem~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[9]~input_o\,
	sload => VCC,
	ena => \u4|mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~46_q\);

-- Location: LCCOMB_X24_Y21_N2
\u4|mem~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~369_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~110_q\) # ((\u3|res[3]~2_combout\)))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~46_q\ & !\u3|res[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~110_q\,
	datac => \u4|mem~46_q\,
	datad => \u3|res[3]~2_combout\,
	combout => \u4|mem~369_combout\);

-- Location: LCCOMB_X25_Y21_N2
\u4|mem~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~370_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~369_combout\ & ((\u4|mem~238_q\))) # (!\u4|mem~369_combout\ & (\u4|mem~174_q\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~369_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[3]~2_combout\,
	datab => \u4|mem~174_q\,
	datac => \u4|mem~238_q\,
	datad => \u4|mem~369_combout\,
	combout => \u4|mem~370_combout\);

-- Location: LCCOMB_X25_Y20_N10
\u4|mem~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~373_combout\ = (\u3|res[1]~0_combout\ & (\u3|res[0]~1_combout\)) # (!\u3|res[1]~0_combout\ & ((\u3|res[0]~1_combout\ & ((\u4|mem~370_combout\))) # (!\u3|res[0]~1_combout\ & (\u4|mem~372_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~372_combout\,
	datad => \u4|mem~370_combout\,
	combout => \u4|mem~373_combout\);

-- Location: LCCOMB_X25_Y20_N20
\u4|mem~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~376_combout\ = (\u3|res[1]~0_combout\ & ((\u4|mem~373_combout\ & ((\u4|mem~375_combout\))) # (!\u4|mem~373_combout\ & (\u4|mem~368_combout\)))) # (!\u3|res[1]~0_combout\ & (((\u4|mem~373_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u4|mem~368_combout\,
	datac => \u4|mem~375_combout\,
	datad => \u4|mem~373_combout\,
	combout => \u4|mem~376_combout\);

-- Location: LCCOMB_X21_Y8_N20
\u4|ram_out[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|ram_out[9]~25_combout\ = (\u4|mem~376_combout\) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~376_combout\,
	combout => \u4|ram_out[9]~25_combout\);

-- Location: LCCOMB_X25_Y16_N8
\u10|m_to_dr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|m_to_dr~0_combout\ = (\u9|temp\(1)) # ((\u9|temp\(4) & (\u8|Equal11~0_combout\ & !\u8|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(4),
	datab => \u9|temp\(1),
	datac => \u8|Equal11~0_combout\,
	datad => \u8|tmp\(0),
	combout => \u10|m_to_dr~0_combout\);

-- Location: IOIBUF_X25_Y24_N22
\in_data[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(14),
	o => \in_data[14]~input_o\);

-- Location: LCCOMB_X21_Y18_N24
\u4|mem~115feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~115feeder_combout\ = \in_data[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[14]~input_o\,
	combout => \u4|mem~115feeder_combout\);

-- Location: FF_X21_Y18_N25
\u4|mem~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~115feeder_combout\,
	ena => \u4|mem~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~115_q\);

-- Location: FF_X22_Y18_N11
\u4|mem~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[14]~input_o\,
	sload => VCC,
	ena => \u4|mem~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~99_q\);

-- Location: LCCOMB_X22_Y18_N10
\u4|mem~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~417_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~115_q\) # ((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~99_q\ & !\u3|res[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u4|mem~115_q\,
	datac => \u4|mem~99_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~417_combout\);

-- Location: LCCOMB_X21_Y18_N2
\u4|mem~147feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~147feeder_combout\ = \in_data[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[14]~input_o\,
	combout => \u4|mem~147feeder_combout\);

-- Location: FF_X21_Y18_N3
\u4|mem~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~147feeder_combout\,
	ena => \u4|mem~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~147_q\);

-- Location: FF_X22_Y18_N1
\u4|mem~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[14]~input_o\,
	sload => VCC,
	ena => \u4|mem~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~131_q\);

-- Location: LCCOMB_X22_Y18_N0
\u4|mem~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~418_combout\ = (\u4|mem~417_combout\ & ((\u4|mem~147_q\) # ((!\u3|res[1]~0_combout\)))) # (!\u4|mem~417_combout\ & (((\u4|mem~131_q\ & \u3|res[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~417_combout\,
	datab => \u4|mem~147_q\,
	datac => \u4|mem~131_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~418_combout\);

-- Location: FF_X23_Y21_N31
\u4|mem~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[14]~input_o\,
	sload => VCC,
	ena => \u4|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~243_q\);

-- Location: FF_X22_Y19_N5
\u4|mem~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[14]~input_o\,
	sload => VCC,
	ena => \u4|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~227_q\);

-- Location: LCCOMB_X22_Y19_N4
\u4|mem~424\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~424_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~243_q\) # ((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~227_q\ & !\u3|res[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~243_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~227_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~424_combout\);

-- Location: FF_X23_Y19_N17
\u4|mem~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[14]~input_o\,
	sload => VCC,
	ena => \u4|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~275_q\);

-- Location: LCCOMB_X21_Y20_N20
\u4|mem~259feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~259feeder_combout\ = \in_data[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[14]~input_o\,
	combout => \u4|mem~259feeder_combout\);

-- Location: FF_X21_Y20_N21
\u4|mem~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~259feeder_combout\,
	ena => \u4|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~259_q\);

-- Location: LCCOMB_X23_Y19_N16
\u4|mem~425\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~425_combout\ = (\u3|res[1]~0_combout\ & ((\u4|mem~424_combout\ & (\u4|mem~275_q\)) # (!\u4|mem~424_combout\ & ((\u4|mem~259_q\))))) # (!\u3|res[1]~0_combout\ & (\u4|mem~424_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u4|mem~424_combout\,
	datac => \u4|mem~275_q\,
	datad => \u4|mem~259_q\,
	combout => \u4|mem~425_combout\);

-- Location: LCCOMB_X25_Y21_N18
\u4|mem~179feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~179feeder_combout\ = \in_data[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[14]~input_o\,
	combout => \u4|mem~179feeder_combout\);

-- Location: FF_X25_Y21_N19
\u4|mem~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~179feeder_combout\,
	ena => \u4|mem~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~179_q\);

-- Location: FF_X25_Y19_N11
\u4|mem~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[14]~input_o\,
	sload => VCC,
	ena => \u4|mem~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~211_q\);

-- Location: FF_X26_Y19_N27
\u4|mem~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[14]~input_o\,
	sload => VCC,
	ena => \u4|mem~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~163_q\);

-- Location: FF_X24_Y19_N21
\u4|mem~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[14]~input_o\,
	sload => VCC,
	ena => \u4|mem~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~195_q\);

-- Location: LCCOMB_X26_Y19_N26
\u4|mem~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~419_combout\ = (\u3|res[0]~1_combout\ & (\u3|res[1]~0_combout\)) # (!\u3|res[0]~1_combout\ & ((\u3|res[1]~0_combout\ & ((\u4|mem~195_q\))) # (!\u3|res[1]~0_combout\ & (\u4|mem~163_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u3|res[1]~0_combout\,
	datac => \u4|mem~163_q\,
	datad => \u4|mem~195_q\,
	combout => \u4|mem~419_combout\);

-- Location: LCCOMB_X25_Y19_N10
\u4|mem~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~420_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~419_combout\ & ((\u4|mem~211_q\))) # (!\u4|mem~419_combout\ & (\u4|mem~179_q\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~419_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~179_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~211_q\,
	datad => \u4|mem~419_combout\,
	combout => \u4|mem~420_combout\);

-- Location: FF_X24_Y21_N9
\u4|mem~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[14]~input_o\,
	sload => VCC,
	ena => \u4|mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~51_q\);

-- Location: FF_X25_Y19_N5
\u4|mem~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[14]~input_o\,
	sload => VCC,
	ena => \u4|mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~83_q\);

-- Location: FF_X26_Y20_N29
\u4|mem~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[14]~input_o\,
	sload => VCC,
	ena => \u4|mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~35_q\);

-- Location: FF_X26_Y20_N19
\u4|mem~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[14]~input_o\,
	sload => VCC,
	ena => \u4|mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~67_q\);

-- Location: LCCOMB_X26_Y20_N28
\u4|mem~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~421_combout\ = (\u3|res[0]~1_combout\ & (\u3|res[1]~0_combout\)) # (!\u3|res[0]~1_combout\ & ((\u3|res[1]~0_combout\ & ((\u4|mem~67_q\))) # (!\u3|res[1]~0_combout\ & (\u4|mem~35_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u3|res[1]~0_combout\,
	datac => \u4|mem~35_q\,
	datad => \u4|mem~67_q\,
	combout => \u4|mem~421_combout\);

-- Location: LCCOMB_X25_Y19_N4
\u4|mem~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~422_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~421_combout\ & ((\u4|mem~83_q\))) # (!\u4|mem~421_combout\ & (\u4|mem~51_q\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~421_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~51_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~83_q\,
	datad => \u4|mem~421_combout\,
	combout => \u4|mem~422_combout\);

-- Location: LCCOMB_X24_Y19_N10
\u4|mem~423\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~423_combout\ = (\u3|res[3]~2_combout\ & ((\u3|res[2]~3_combout\) # ((\u4|mem~420_combout\)))) # (!\u3|res[3]~2_combout\ & (!\u3|res[2]~3_combout\ & ((\u4|mem~422_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[3]~2_combout\,
	datab => \u3|res[2]~3_combout\,
	datac => \u4|mem~420_combout\,
	datad => \u4|mem~422_combout\,
	combout => \u4|mem~423_combout\);

-- Location: LCCOMB_X24_Y19_N8
\u4|mem~426\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~426_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~423_combout\ & ((\u4|mem~425_combout\))) # (!\u4|mem~423_combout\ & (\u4|mem~418_combout\)))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~423_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~418_combout\,
	datab => \u3|res[2]~3_combout\,
	datac => \u4|mem~425_combout\,
	datad => \u4|mem~423_combout\,
	combout => \u4|mem~426_combout\);

-- Location: LCCOMB_X21_Y8_N28
\u4|ram_out[14]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|ram_out[14]~30_combout\ = (\u4|mem~426_combout\) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr_data~input_o\,
	datad => \u4|mem~426_combout\,
	combout => \u4|ram_out[14]~30_combout\);

-- Location: FF_X21_Y8_N29
\u5|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|ram_out[14]~30_combout\,
	ena => \u10|m_to_dr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|temp\(14));

-- Location: LCCOMB_X24_Y8_N26
\u8|tmp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~9_combout\ = (!\rst~input_o\ & ((\u0|saves[9]~38_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[9]~38_combout\,
	combout => \u8|tmp~9_combout\);

-- Location: LCCOMB_X25_Y8_N22
\u8|tmp[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp[0]~1_combout\ = (\rst~input_o\) # (\u9|temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \u9|temp\(1),
	combout => \u8|tmp[0]~1_combout\);

-- Location: FF_X24_Y8_N27
\u8|tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|tmp~9_combout\,
	ena => \u8|tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(9));

-- Location: LCCOMB_X25_Y8_N6
\u10|alu_shl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|alu_shl~0_combout\ = ((\u8|tmp\(1) $ (!\u8|tmp\(0))) # (!\u8|Equal7~1_combout\)) # (!\u9|temp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(3),
	datab => \u8|tmp\(1),
	datac => \u8|tmp\(0),
	datad => \u8|Equal7~1_combout\,
	combout => \u10|alu_shl~0_combout\);

-- Location: LCCOMB_X25_Y8_N20
\u7|temp[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp[13]~6_combout\ = (\u10|alu_shl~0_combout\ & (((\u8|tmp\(0)) # (!\u8|Equal11~0_combout\)) # (!\u9|temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(4),
	datab => \u8|tmp\(0),
	datac => \u8|Equal11~0_combout\,
	datad => \u10|alu_shl~0_combout\,
	combout => \u7|temp[13]~6_combout\);

-- Location: LCCOMB_X24_Y5_N4
\u6|temp_b~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~44_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_a\(11))) # (!\u10|acc_xchg~combout\ & (((\u0|ibus_out[11]~28_combout\ & \u10|bus_to_b~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(11),
	datab => \u10|acc_xchg~combout\,
	datac => \u0|ibus_out[11]~28_combout\,
	datad => \u10|bus_to_b~1_combout\,
	combout => \u6|temp_b~44_combout\);

-- Location: LCCOMB_X24_Y5_N16
\u6|temp_b[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b[0]~32_combout\ = (\rst~input_o\) # ((\u10|acc_xchg~combout\) # (\u10|bus_to_b~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \u10|acc_xchg~combout\,
	datad => \u10|bus_to_b~1_combout\,
	combout => \u6|temp_b[0]~32_combout\);

-- Location: FF_X24_Y5_N5
\u6|temp_b[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~44_combout\,
	ena => \u6|temp_b[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(11));

-- Location: LCCOMB_X26_Y8_N10
\u7|temp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~5_combout\ = ((\u8|tmp\(0) $ (!\u8|tmp\(1))) # (!\u8|Equal0~4_combout\)) # (!\u8|tmp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(2),
	datab => \u8|tmp\(0),
	datac => \u8|tmp\(1),
	datad => \u8|Equal0~4_combout\,
	combout => \u7|temp~5_combout\);

-- Location: LCCOMB_X26_Y8_N26
\u10|bus_to_a~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|bus_to_a~3_combout\ = (\u9|temp\(5) & (((!\u8|tmp\(0) & \u8|Equal11~0_combout\)) # (!\u7|temp~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(0),
	datab => \u9|temp\(5),
	datac => \u8|Equal11~0_combout\,
	datad => \u7|temp~5_combout\,
	combout => \u10|bus_to_a~3_combout\);

-- Location: IOIBUF_X23_Y24_N22
\in_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(4),
	o => \in_data[4]~input_o\);

-- Location: FF_X22_Y19_N23
\u4|mem~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \u4|mem~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~153_q\);

-- Location: LCCOMB_X23_Y21_N8
\u4|mem~169feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~169feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \u4|mem~169feeder_combout\);

-- Location: FF_X23_Y21_N9
\u4|mem~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~169feeder_combout\,
	ena => \u4|mem~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~169_q\);

-- Location: LCCOMB_X22_Y19_N22
\u4|mem~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~317_combout\ = (\u3|res[0]~1_combout\ & ((\u3|res[1]~0_combout\) # ((\u4|mem~169_q\)))) # (!\u3|res[0]~1_combout\ & (!\u3|res[1]~0_combout\ & (\u4|mem~153_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u3|res[1]~0_combout\,
	datac => \u4|mem~153_q\,
	datad => \u4|mem~169_q\,
	combout => \u4|mem~317_combout\);

-- Location: LCCOMB_X25_Y19_N28
\u4|mem~201feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~201feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \u4|mem~201feeder_combout\);

-- Location: FF_X25_Y19_N29
\u4|mem~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~201feeder_combout\,
	ena => \u4|mem~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~201_q\);

-- Location: FF_X24_Y19_N13
\u4|mem~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \u4|mem~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~185_q\);

-- Location: LCCOMB_X24_Y19_N12
\u4|mem~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~318_combout\ = (\u4|mem~317_combout\ & ((\u4|mem~201_q\) # ((!\u3|res[1]~0_combout\)))) # (!\u4|mem~317_combout\ & (((\u4|mem~185_q\ & \u3|res[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~317_combout\,
	datab => \u4|mem~201_q\,
	datac => \u4|mem~185_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~318_combout\);

-- Location: LCCOMB_X23_Y21_N18
\u4|mem~233feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~233feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \u4|mem~233feeder_combout\);

-- Location: FF_X23_Y21_N19
\u4|mem~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~233feeder_combout\,
	ena => \u4|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~233_q\);

-- Location: FF_X23_Y19_N31
\u4|mem~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \u4|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~265_q\);

-- Location: LCCOMB_X25_Y20_N18
\u4|mem~249feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~249feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \u4|mem~249feeder_combout\);

-- Location: FF_X25_Y20_N19
\u4|mem~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~249feeder_combout\,
	ena => \u4|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~249_q\);

-- Location: FF_X24_Y19_N27
\u4|mem~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \u4|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~217_q\);

-- Location: LCCOMB_X24_Y19_N26
\u4|mem~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~324_combout\ = (\u3|res[0]~1_combout\ & (((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & ((\u3|res[1]~0_combout\ & (\u4|mem~249_q\)) # (!\u3|res[1]~0_combout\ & ((\u4|mem~217_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u4|mem~249_q\,
	datac => \u4|mem~217_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~324_combout\);

-- Location: LCCOMB_X23_Y19_N30
\u4|mem~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~325_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~324_combout\ & ((\u4|mem~265_q\))) # (!\u4|mem~324_combout\ & (\u4|mem~233_q\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~233_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~265_q\,
	datad => \u4|mem~324_combout\,
	combout => \u4|mem~325_combout\);

-- Location: FF_X23_Y18_N25
\u4|mem~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \u4|mem~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~105_q\);

-- Location: FF_X23_Y18_N15
\u4|mem~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \u4|mem~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~137_q\);

-- Location: LCCOMB_X22_Y18_N20
\u4|mem~121feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~121feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \u4|mem~121feeder_combout\);

-- Location: FF_X22_Y18_N21
\u4|mem~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~121feeder_combout\,
	ena => \u4|mem~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~121_q\);

-- Location: FF_X22_Y18_N31
\u4|mem~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \u4|mem~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~89_q\);

-- Location: LCCOMB_X22_Y18_N30
\u4|mem~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~319_combout\ = (\u3|res[0]~1_combout\ & (((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & ((\u3|res[1]~0_combout\ & (\u4|mem~121_q\)) # (!\u3|res[1]~0_combout\ & ((\u4|mem~89_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u4|mem~121_q\,
	datac => \u4|mem~89_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~319_combout\);

-- Location: LCCOMB_X23_Y18_N14
\u4|mem~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~320_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~319_combout\ & ((\u4|mem~137_q\))) # (!\u4|mem~319_combout\ & (\u4|mem~105_q\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u4|mem~105_q\,
	datac => \u4|mem~137_q\,
	datad => \u4|mem~319_combout\,
	combout => \u4|mem~320_combout\);

-- Location: LCCOMB_X24_Y18_N14
\u4|mem~57feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~57feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \u4|mem~57feeder_combout\);

-- Location: FF_X24_Y18_N15
\u4|mem~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~57feeder_combout\,
	ena => \u4|mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~57_q\);

-- Location: FF_X24_Y18_N17
\u4|mem~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \u4|mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~73_q\);

-- Location: FF_X25_Y18_N27
\u4|mem~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[4]~input_o\,
	sload => VCC,
	ena => \u4|mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~25_q\);

-- Location: LCCOMB_X25_Y18_N16
\u4|mem~41feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~41feeder_combout\ = \in_data[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[4]~input_o\,
	combout => \u4|mem~41feeder_combout\);

-- Location: FF_X25_Y18_N17
\u4|mem~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~41feeder_combout\,
	ena => \u4|mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~41_q\);

-- Location: LCCOMB_X25_Y18_N26
\u4|mem~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~321_combout\ = (\u3|res[1]~0_combout\ & (\u3|res[0]~1_combout\)) # (!\u3|res[1]~0_combout\ & ((\u3|res[0]~1_combout\ & ((\u4|mem~41_q\))) # (!\u3|res[0]~1_combout\ & (\u4|mem~25_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~25_q\,
	datad => \u4|mem~41_q\,
	combout => \u4|mem~321_combout\);

-- Location: LCCOMB_X24_Y18_N16
\u4|mem~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~322_combout\ = (\u3|res[1]~0_combout\ & ((\u4|mem~321_combout\ & ((\u4|mem~73_q\))) # (!\u4|mem~321_combout\ & (\u4|mem~57_q\)))) # (!\u3|res[1]~0_combout\ & (((\u4|mem~321_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u4|mem~57_q\,
	datac => \u4|mem~73_q\,
	datad => \u4|mem~321_combout\,
	combout => \u4|mem~322_combout\);

-- Location: LCCOMB_X24_Y18_N22
\u4|mem~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~323_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~320_combout\) # ((\u3|res[3]~2_combout\)))) # (!\u3|res[2]~3_combout\ & (((!\u3|res[3]~2_combout\ & \u4|mem~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~320_combout\,
	datab => \u3|res[2]~3_combout\,
	datac => \u3|res[3]~2_combout\,
	datad => \u4|mem~322_combout\,
	combout => \u4|mem~323_combout\);

-- Location: LCCOMB_X24_Y19_N4
\u4|mem~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~326_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~323_combout\ & ((\u4|mem~325_combout\))) # (!\u4|mem~323_combout\ & (\u4|mem~318_combout\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~323_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~318_combout\,
	datab => \u4|mem~325_combout\,
	datac => \u3|res[3]~2_combout\,
	datad => \u4|mem~323_combout\,
	combout => \u4|mem~326_combout\);

-- Location: LCCOMB_X21_Y8_N0
\u4|ram_out[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|ram_out[4]~20_combout\ = (\u4|mem~326_combout\) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr_data~input_o\,
	datac => \u4|mem~326_combout\,
	combout => \u4|ram_out[4]~20_combout\);

-- Location: FF_X21_Y8_N1
\u5|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|ram_out[4]~20_combout\,
	ena => \u10|m_to_dr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|temp\(4));

-- Location: IOIBUF_X5_Y24_N22
\in_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(5),
	o => \in_data[5]~input_o\);

-- Location: LCCOMB_X21_Y20_N14
\u4|mem~250feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~250feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \u4|mem~250feeder_combout\);

-- Location: FF_X21_Y20_N15
\u4|mem~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~250feeder_combout\,
	ena => \u4|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~250_q\);

-- Location: FF_X22_Y20_N9
\u4|mem~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \u4|mem~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~122_q\);

-- Location: LCCOMB_X21_Y20_N4
\u4|mem~186feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~186feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \u4|mem~186feeder_combout\);

-- Location: FF_X21_Y20_N5
\u4|mem~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~186feeder_combout\,
	ena => \u4|mem~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~186_q\);

-- Location: FF_X26_Y20_N5
\u4|mem~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \u4|mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~58_q\);

-- Location: LCCOMB_X26_Y20_N4
\u4|mem~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~327_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~186_q\) # ((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~58_q\ & !\u3|res[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~186_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~58_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~327_combout\);

-- Location: LCCOMB_X22_Y20_N8
\u4|mem~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~328_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~327_combout\ & (\u4|mem~250_q\)) # (!\u4|mem~327_combout\ & ((\u4|mem~122_q\))))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~327_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~250_q\,
	datab => \u3|res[2]~3_combout\,
	datac => \u4|mem~122_q\,
	datad => \u4|mem~327_combout\,
	combout => \u4|mem~328_combout\);

-- Location: LCCOMB_X25_Y21_N24
\u4|mem~170feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~170feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \u4|mem~170feeder_combout\);

-- Location: FF_X25_Y21_N25
\u4|mem~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~170feeder_combout\,
	ena => \u4|mem~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~170_q\);

-- Location: FF_X25_Y21_N31
\u4|mem~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \u4|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~234_q\);

-- Location: FF_X24_Y21_N25
\u4|mem~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \u4|mem~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~106_q\);

-- Location: FF_X24_Y21_N31
\u4|mem~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \u4|mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~42_q\);

-- Location: LCCOMB_X24_Y21_N30
\u4|mem~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~329_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~106_q\) # ((\u3|res[3]~2_combout\)))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~42_q\ & !\u3|res[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~106_q\,
	datac => \u4|mem~42_q\,
	datad => \u3|res[3]~2_combout\,
	combout => \u4|mem~329_combout\);

-- Location: LCCOMB_X25_Y21_N30
\u4|mem~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~330_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~329_combout\ & ((\u4|mem~234_q\))) # (!\u4|mem~329_combout\ & (\u4|mem~170_q\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~329_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~170_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~234_q\,
	datad => \u4|mem~329_combout\,
	combout => \u4|mem~330_combout\);

-- Location: FF_X19_Y20_N27
\u4|mem~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \u4|mem~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~90_q\);

-- Location: LCCOMB_X23_Y20_N12
\u4|mem~154feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~154feeder_combout\ = \in_data[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[5]~input_o\,
	combout => \u4|mem~154feeder_combout\);

-- Location: FF_X23_Y20_N13
\u4|mem~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~154feeder_combout\,
	ena => \u4|mem~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~154_q\);

-- Location: FF_X23_Y20_N27
\u4|mem~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \u4|mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~26_q\);

-- Location: LCCOMB_X23_Y20_N26
\u4|mem~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~331_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~154_q\) # ((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~26_q\ & !\u3|res[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~154_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~26_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~331_combout\);

-- Location: FF_X19_Y20_N1
\u4|mem~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \u4|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~218_q\);

-- Location: LCCOMB_X19_Y20_N0
\u4|mem~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~332_combout\ = (\u4|mem~331_combout\ & (((\u4|mem~218_q\) # (!\u3|res[2]~3_combout\)))) # (!\u4|mem~331_combout\ & (\u4|mem~90_q\ & ((\u3|res[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~90_q\,
	datab => \u4|mem~331_combout\,
	datac => \u4|mem~218_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~332_combout\);

-- Location: LCCOMB_X19_Y20_N22
\u4|mem~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~333_combout\ = (\u3|res[0]~1_combout\ & ((\u3|res[1]~0_combout\) # ((\u4|mem~330_combout\)))) # (!\u3|res[0]~1_combout\ & (!\u3|res[1]~0_combout\ & ((\u4|mem~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u3|res[1]~0_combout\,
	datac => \u4|mem~330_combout\,
	datad => \u4|mem~332_combout\,
	combout => \u4|mem~333_combout\);

-- Location: FF_X23_Y19_N21
\u4|mem~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \u4|mem~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~202_q\);

-- Location: FF_X23_Y19_N15
\u4|mem~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \u4|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~266_q\);

-- Location: FF_X23_Y18_N13
\u4|mem~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \u4|mem~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~138_q\);

-- Location: FF_X24_Y18_N1
\u4|mem~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[5]~input_o\,
	sload => VCC,
	ena => \u4|mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~74_q\);

-- Location: LCCOMB_X24_Y18_N0
\u4|mem~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~334_combout\ = (\u3|res[3]~2_combout\ & (((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & ((\u3|res[2]~3_combout\ & (\u4|mem~138_q\)) # (!\u3|res[2]~3_combout\ & ((\u4|mem~74_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~138_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~74_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~334_combout\);

-- Location: LCCOMB_X23_Y19_N14
\u4|mem~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~335_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~334_combout\ & ((\u4|mem~266_q\))) # (!\u4|mem~334_combout\ & (\u4|mem~202_q\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~334_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[3]~2_combout\,
	datab => \u4|mem~202_q\,
	datac => \u4|mem~266_q\,
	datad => \u4|mem~334_combout\,
	combout => \u4|mem~335_combout\);

-- Location: LCCOMB_X19_Y20_N20
\u4|mem~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~336_combout\ = (\u3|res[1]~0_combout\ & ((\u4|mem~333_combout\ & ((\u4|mem~335_combout\))) # (!\u4|mem~333_combout\ & (\u4|mem~328_combout\)))) # (!\u3|res[1]~0_combout\ & (((\u4|mem~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~328_combout\,
	datab => \u3|res[1]~0_combout\,
	datac => \u4|mem~333_combout\,
	datad => \u4|mem~335_combout\,
	combout => \u4|mem~336_combout\);

-- Location: LCCOMB_X21_Y8_N10
\u4|ram_out[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|ram_out[5]~21_combout\ = (\u4|mem~336_combout\) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~336_combout\,
	combout => \u4|ram_out[5]~21_combout\);

-- Location: FF_X21_Y8_N11
\u5|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|ram_out[5]~21_combout\,
	ena => \u10|m_to_dr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|temp\(5));

-- Location: IOIBUF_X25_Y24_N1
\in_data[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(15),
	o => \in_data[15]~input_o\);

-- Location: LCCOMB_X25_Y21_N14
\u4|mem~244feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~244feeder_combout\ = \in_data[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[15]~input_o\,
	combout => \u4|mem~244feeder_combout\);

-- Location: FF_X25_Y21_N15
\u4|mem~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~244feeder_combout\,
	ena => \u4|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~244_q\);

-- Location: FF_X26_Y21_N5
\u4|mem~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[15]~input_o\,
	sload => VCC,
	ena => \u4|mem~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~116_q\);

-- Location: LCCOMB_X25_Y21_N16
\u4|mem~180feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~180feeder_combout\ = \in_data[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[15]~input_o\,
	combout => \u4|mem~180feeder_combout\);

-- Location: FF_X25_Y21_N17
\u4|mem~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~180feeder_combout\,
	ena => \u4|mem~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~180_q\);

-- Location: FF_X26_Y21_N19
\u4|mem~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[15]~input_o\,
	sload => VCC,
	ena => \u4|mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~52_q\);

-- Location: LCCOMB_X26_Y21_N18
\u4|mem~427\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~427_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~180_q\) # ((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~52_q\ & !\u3|res[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~180_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~52_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~427_combout\);

-- Location: LCCOMB_X26_Y21_N4
\u4|mem~428\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~428_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~427_combout\ & (\u4|mem~244_q\)) # (!\u4|mem~427_combout\ & ((\u4|mem~116_q\))))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~244_q\,
	datab => \u3|res[2]~3_combout\,
	datac => \u4|mem~116_q\,
	datad => \u4|mem~427_combout\,
	combout => \u4|mem~428_combout\);

-- Location: LCCOMB_X23_Y18_N10
\u4|mem~148feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~148feeder_combout\ = \in_data[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[15]~input_o\,
	combout => \u4|mem~148feeder_combout\);

-- Location: FF_X23_Y18_N11
\u4|mem~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~148feeder_combout\,
	ena => \u4|mem~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~148_q\);

-- Location: FF_X23_Y19_N19
\u4|mem~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[15]~input_o\,
	sload => VCC,
	ena => \u4|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~276_q\);

-- Location: FF_X25_Y19_N3
\u4|mem~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[15]~input_o\,
	sload => VCC,
	ena => \u4|mem~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~212_q\);

-- Location: FF_X25_Y19_N13
\u4|mem~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[15]~input_o\,
	sload => VCC,
	ena => \u4|mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~84_q\);

-- Location: LCCOMB_X25_Y19_N12
\u4|mem~434\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~434_combout\ = (\u3|res[2]~3_combout\ & (((\u3|res[3]~2_combout\)))) # (!\u3|res[2]~3_combout\ & ((\u3|res[3]~2_combout\ & (\u4|mem~212_q\)) # (!\u3|res[3]~2_combout\ & ((\u4|mem~84_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~212_q\,
	datac => \u4|mem~84_q\,
	datad => \u3|res[3]~2_combout\,
	combout => \u4|mem~434_combout\);

-- Location: LCCOMB_X23_Y19_N18
\u4|mem~435\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~435_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~434_combout\ & ((\u4|mem~276_q\))) # (!\u4|mem~434_combout\ & (\u4|mem~148_q\)))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~434_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~148_q\,
	datac => \u4|mem~276_q\,
	datad => \u4|mem~434_combout\,
	combout => \u4|mem~435_combout\);

-- Location: FF_X21_Y19_N31
\u4|mem~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[15]~input_o\,
	sload => VCC,
	ena => \u4|mem~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~100_q\);

-- Location: FF_X21_Y19_N13
\u4|mem~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[15]~input_o\,
	sload => VCC,
	ena => \u4|mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~36_q\);

-- Location: LCCOMB_X21_Y19_N12
\u4|mem~431\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~431_combout\ = (\u3|res[3]~2_combout\ & (((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & ((\u3|res[2]~3_combout\ & (\u4|mem~100_q\)) # (!\u3|res[2]~3_combout\ & ((\u4|mem~36_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~100_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~36_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~431_combout\);

-- Location: FF_X19_Y19_N5
\u4|mem~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[15]~input_o\,
	sload => VCC,
	ena => \u4|mem~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~164_q\);

-- Location: FF_X19_Y19_N7
\u4|mem~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[15]~input_o\,
	sload => VCC,
	ena => \u4|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~228_q\);

-- Location: LCCOMB_X19_Y19_N6
\u4|mem~432\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~432_combout\ = (\u4|mem~431_combout\ & (((\u4|mem~228_q\) # (!\u3|res[3]~2_combout\)))) # (!\u4|mem~431_combout\ & (\u4|mem~164_q\ & ((\u3|res[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~431_combout\,
	datab => \u4|mem~164_q\,
	datac => \u4|mem~228_q\,
	datad => \u3|res[3]~2_combout\,
	combout => \u4|mem~432_combout\);

-- Location: LCCOMB_X21_Y20_N18
\u4|mem~196feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~196feeder_combout\ = \in_data[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[15]~input_o\,
	combout => \u4|mem~196feeder_combout\);

-- Location: FF_X21_Y20_N19
\u4|mem~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~196feeder_combout\,
	ena => \u4|mem~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~196_q\);

-- Location: FF_X21_Y20_N9
\u4|mem~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[15]~input_o\,
	sload => VCC,
	ena => \u4|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~260_q\);

-- Location: LCCOMB_X22_Y20_N2
\u4|mem~132feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~132feeder_combout\ = \in_data[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[15]~input_o\,
	combout => \u4|mem~132feeder_combout\);

-- Location: FF_X22_Y20_N3
\u4|mem~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~132feeder_combout\,
	ena => \u4|mem~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~132_q\);

-- Location: FF_X26_Y20_N3
\u4|mem~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[15]~input_o\,
	sload => VCC,
	ena => \u4|mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~68_q\);

-- Location: LCCOMB_X26_Y20_N2
\u4|mem~429\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~429_combout\ = (\u3|res[3]~2_combout\ & (((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & ((\u3|res[2]~3_combout\ & (\u4|mem~132_q\)) # (!\u3|res[2]~3_combout\ & ((\u4|mem~68_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~132_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~68_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~429_combout\);

-- Location: LCCOMB_X21_Y20_N8
\u4|mem~430\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~430_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~429_combout\ & ((\u4|mem~260_q\))) # (!\u4|mem~429_combout\ & (\u4|mem~196_q\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~429_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[3]~2_combout\,
	datab => \u4|mem~196_q\,
	datac => \u4|mem~260_q\,
	datad => \u4|mem~429_combout\,
	combout => \u4|mem~430_combout\);

-- Location: LCCOMB_X19_Y19_N28
\u4|mem~433\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~433_combout\ = (\u3|res[1]~0_combout\ & (((\u3|res[0]~1_combout\) # (\u4|mem~430_combout\)))) # (!\u3|res[1]~0_combout\ & (\u4|mem~432_combout\ & (!\u3|res[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~432_combout\,
	datab => \u3|res[1]~0_combout\,
	datac => \u3|res[0]~1_combout\,
	datad => \u4|mem~430_combout\,
	combout => \u4|mem~433_combout\);

-- Location: LCCOMB_X19_Y19_N14
\u4|mem~436\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~436_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~433_combout\ & ((\u4|mem~435_combout\))) # (!\u4|mem~433_combout\ & (\u4|mem~428_combout\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~433_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~428_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~435_combout\,
	datad => \u4|mem~433_combout\,
	combout => \u4|mem~436_combout\);

-- Location: LCCOMB_X21_Y8_N22
\u4|ram_out[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|ram_out[15]~31_combout\ = (\u4|mem~436_combout\) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~436_combout\,
	combout => \u4|ram_out[15]~31_combout\);

-- Location: FF_X21_Y8_N23
\u5|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|ram_out[15]~31_combout\,
	ena => \u10|m_to_dr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|temp\(15));

-- Location: IOIBUF_X23_Y24_N1
\in_data[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(12),
	o => \in_data[12]~input_o\);

-- Location: FF_X21_Y18_N13
\u4|mem~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[12]~input_o\,
	sload => VCC,
	ena => \u4|mem~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~113_q\);

-- Location: FF_X21_Y18_N11
\u4|mem~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[12]~input_o\,
	sload => VCC,
	ena => \u4|mem~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~145_q\);

-- Location: FF_X22_Y18_N13
\u4|mem~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[12]~input_o\,
	sload => VCC,
	ena => \u4|mem~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~129_q\);

-- Location: FF_X22_Y18_N27
\u4|mem~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[12]~input_o\,
	sload => VCC,
	ena => \u4|mem~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~97_q\);

-- Location: LCCOMB_X22_Y18_N26
\u4|mem~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~399_combout\ = (\u3|res[0]~1_combout\ & (((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & ((\u3|res[1]~0_combout\ & (\u4|mem~129_q\)) # (!\u3|res[1]~0_combout\ & ((\u4|mem~97_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~129_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~97_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~399_combout\);

-- Location: LCCOMB_X21_Y18_N10
\u4|mem~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~400_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~399_combout\ & ((\u4|mem~145_q\))) # (!\u4|mem~399_combout\ & (\u4|mem~113_q\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~399_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~113_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~145_q\,
	datad => \u4|mem~399_combout\,
	combout => \u4|mem~400_combout\);

-- Location: FF_X24_Y18_N21
\u4|mem~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[12]~input_o\,
	sload => VCC,
	ena => \u4|mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~65_q\);

-- Location: FF_X25_Y19_N9
\u4|mem~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[12]~input_o\,
	sload => VCC,
	ena => \u4|mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~81_q\);

-- Location: FF_X25_Y18_N11
\u4|mem~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[12]~input_o\,
	sload => VCC,
	ena => \u4|mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~49_q\);

-- Location: FF_X25_Y18_N1
\u4|mem~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[12]~input_o\,
	sload => VCC,
	ena => \u4|mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~33_q\);

-- Location: LCCOMB_X25_Y18_N0
\u4|mem~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~401_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~49_q\) # ((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~33_q\ & !\u3|res[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~49_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~33_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~401_combout\);

-- Location: LCCOMB_X25_Y19_N8
\u4|mem~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~402_combout\ = (\u3|res[1]~0_combout\ & ((\u4|mem~401_combout\ & ((\u4|mem~81_q\))) # (!\u4|mem~401_combout\ & (\u4|mem~65_q\)))) # (!\u3|res[1]~0_combout\ & (((\u4|mem~401_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~65_q\,
	datab => \u3|res[1]~0_combout\,
	datac => \u4|mem~81_q\,
	datad => \u4|mem~401_combout\,
	combout => \u4|mem~402_combout\);

-- Location: LCCOMB_X21_Y19_N26
\u4|mem~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~403_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~400_combout\) # ((\u3|res[3]~2_combout\)))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~402_combout\ & !\u3|res[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~400_combout\,
	datab => \u3|res[2]~3_combout\,
	datac => \u4|mem~402_combout\,
	datad => \u3|res[3]~2_combout\,
	combout => \u4|mem~403_combout\);

-- Location: FF_X21_Y20_N13
\u4|mem~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[12]~input_o\,
	sload => VCC,
	ena => \u4|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~257_q\);

-- Location: FF_X22_Y19_N11
\u4|mem~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[12]~input_o\,
	sload => VCC,
	ena => \u4|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~225_q\);

-- Location: LCCOMB_X22_Y19_N10
\u4|mem~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~404_combout\ = (\u3|res[0]~1_combout\ & (((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & ((\u3|res[1]~0_combout\ & (\u4|mem~257_q\)) # (!\u3|res[1]~0_combout\ & ((\u4|mem~225_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~257_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~225_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~404_combout\);

-- Location: FF_X23_Y19_N7
\u4|mem~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[12]~input_o\,
	sload => VCC,
	ena => \u4|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~273_q\);

-- Location: LCCOMB_X23_Y21_N12
\u4|mem~241feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~241feeder_combout\ = \in_data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[12]~input_o\,
	combout => \u4|mem~241feeder_combout\);

-- Location: FF_X23_Y21_N13
\u4|mem~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~241feeder_combout\,
	ena => \u4|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~241_q\);

-- Location: LCCOMB_X23_Y19_N6
\u4|mem~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~405_combout\ = (\u4|mem~404_combout\ & (((\u4|mem~273_q\)) # (!\u3|res[0]~1_combout\))) # (!\u4|mem~404_combout\ & (\u3|res[0]~1_combout\ & ((\u4|mem~241_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~404_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~273_q\,
	datad => \u4|mem~241_q\,
	combout => \u4|mem~405_combout\);

-- Location: LCCOMB_X24_Y20_N0
\u4|mem~209feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~209feeder_combout\ = \in_data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[12]~input_o\,
	combout => \u4|mem~209feeder_combout\);

-- Location: FF_X24_Y20_N1
\u4|mem~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~209feeder_combout\,
	ena => \u4|mem~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~209_q\);

-- Location: FF_X21_Y20_N31
\u4|mem~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[12]~input_o\,
	sload => VCC,
	ena => \u4|mem~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~193_q\);

-- Location: LCCOMB_X23_Y21_N22
\u4|mem~177feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~177feeder_combout\ = \in_data[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[12]~input_o\,
	combout => \u4|mem~177feeder_combout\);

-- Location: FF_X23_Y21_N23
\u4|mem~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~177feeder_combout\,
	ena => \u4|mem~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~177_q\);

-- Location: FF_X22_Y19_N1
\u4|mem~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[12]~input_o\,
	sload => VCC,
	ena => \u4|mem~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~161_q\);

-- Location: LCCOMB_X22_Y19_N0
\u4|mem~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~397_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~177_q\) # ((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~161_q\ & !\u3|res[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~177_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~161_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~397_combout\);

-- Location: LCCOMB_X21_Y20_N30
\u4|mem~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~398_combout\ = (\u3|res[1]~0_combout\ & ((\u4|mem~397_combout\ & (\u4|mem~209_q\)) # (!\u4|mem~397_combout\ & ((\u4|mem~193_q\))))) # (!\u3|res[1]~0_combout\ & (((\u4|mem~397_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u4|mem~209_q\,
	datac => \u4|mem~193_q\,
	datad => \u4|mem~397_combout\,
	combout => \u4|mem~398_combout\);

-- Location: LCCOMB_X21_Y19_N8
\u4|mem~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~406_combout\ = (\u4|mem~403_combout\ & ((\u4|mem~405_combout\) # ((!\u3|res[3]~2_combout\)))) # (!\u4|mem~403_combout\ & (((\u4|mem~398_combout\ & \u3|res[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~403_combout\,
	datab => \u4|mem~405_combout\,
	datac => \u4|mem~398_combout\,
	datad => \u3|res[3]~2_combout\,
	combout => \u4|mem~406_combout\);

-- Location: LCCOMB_X21_Y8_N24
\u4|ram_out[12]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|ram_out[12]~28_combout\ = (\u4|mem~406_combout\) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~406_combout\,
	combout => \u4|ram_out[12]~28_combout\);

-- Location: FF_X21_Y8_N25
\u5|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|ram_out[12]~28_combout\,
	ena => \u10|m_to_dr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|temp\(12));

-- Location: IOIBUF_X21_Y24_N8
\in_data[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(13),
	o => \in_data[13]~input_o\);

-- Location: FF_X23_Y19_N5
\u4|mem~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[13]~input_o\,
	sload => VCC,
	ena => \u4|mem~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~210_q\);

-- Location: FF_X23_Y19_N3
\u4|mem~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[13]~input_o\,
	sload => VCC,
	ena => \u4|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~274_q\);

-- Location: LCCOMB_X23_Y18_N8
\u4|mem~146feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~146feeder_combout\ = \in_data[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[13]~input_o\,
	combout => \u4|mem~146feeder_combout\);

-- Location: FF_X23_Y18_N9
\u4|mem~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~146feeder_combout\,
	ena => \u4|mem~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~146_q\);

-- Location: FF_X24_Y18_N3
\u4|mem~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[13]~input_o\,
	sload => VCC,
	ena => \u4|mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~82_q\);

-- Location: LCCOMB_X24_Y18_N2
\u4|mem~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~414_combout\ = (\u3|res[3]~2_combout\ & (((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & ((\u3|res[2]~3_combout\ & (\u4|mem~146_q\)) # (!\u3|res[2]~3_combout\ & ((\u4|mem~82_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~146_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~82_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~414_combout\);

-- Location: LCCOMB_X23_Y19_N2
\u4|mem~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~415_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~414_combout\ & ((\u4|mem~274_q\))) # (!\u4|mem~414_combout\ & (\u4|mem~210_q\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~414_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[3]~2_combout\,
	datab => \u4|mem~210_q\,
	datac => \u4|mem~274_q\,
	datad => \u4|mem~414_combout\,
	combout => \u4|mem~415_combout\);

-- Location: LCCOMB_X21_Y20_N26
\u4|mem~258feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~258feeder_combout\ = \in_data[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[13]~input_o\,
	combout => \u4|mem~258feeder_combout\);

-- Location: FF_X21_Y20_N27
\u4|mem~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~258feeder_combout\,
	ena => \u4|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~258_q\);

-- Location: FF_X22_Y20_N21
\u4|mem~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[13]~input_o\,
	sload => VCC,
	ena => \u4|mem~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~130_q\);

-- Location: LCCOMB_X26_Y19_N0
\u4|mem~194feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~194feeder_combout\ = \in_data[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[13]~input_o\,
	combout => \u4|mem~194feeder_combout\);

-- Location: FF_X26_Y19_N1
\u4|mem~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~194feeder_combout\,
	ena => \u4|mem~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~194_q\);

-- Location: FF_X26_Y20_N21
\u4|mem~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[13]~input_o\,
	sload => VCC,
	ena => \u4|mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~66_q\);

-- Location: LCCOMB_X26_Y20_N20
\u4|mem~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~407_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~194_q\) # ((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~66_q\ & !\u3|res[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~194_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~66_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~407_combout\);

-- Location: LCCOMB_X22_Y20_N20
\u4|mem~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~408_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~407_combout\ & (\u4|mem~258_q\)) # (!\u4|mem~407_combout\ & ((\u4|mem~130_q\))))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~258_q\,
	datab => \u3|res[2]~3_combout\,
	datac => \u4|mem~130_q\,
	datad => \u4|mem~407_combout\,
	combout => \u4|mem~408_combout\);

-- Location: FF_X21_Y19_N7
\u4|mem~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[13]~input_o\,
	sload => VCC,
	ena => \u4|mem~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~98_q\);

-- Location: FF_X22_Y19_N31
\u4|mem~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[13]~input_o\,
	sload => VCC,
	ena => \u4|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~226_q\);

-- Location: FF_X22_Y19_N21
\u4|mem~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[13]~input_o\,
	sload => VCC,
	ena => \u4|mem~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~162_q\);

-- Location: FF_X21_Y19_N25
\u4|mem~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[13]~input_o\,
	sload => VCC,
	ena => \u4|mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~34_q\);

-- Location: LCCOMB_X21_Y19_N24
\u4|mem~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~411_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~162_q\) # ((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~34_q\ & !\u3|res[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~162_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~34_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~411_combout\);

-- Location: LCCOMB_X22_Y19_N30
\u4|mem~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~412_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~411_combout\ & ((\u4|mem~226_q\))) # (!\u4|mem~411_combout\ & (\u4|mem~98_q\)))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~411_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~98_q\,
	datac => \u4|mem~226_q\,
	datad => \u4|mem~411_combout\,
	combout => \u4|mem~412_combout\);

-- Location: LCCOMB_X25_Y21_N10
\u4|mem~178feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~178feeder_combout\ = \in_data[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[13]~input_o\,
	combout => \u4|mem~178feeder_combout\);

-- Location: FF_X25_Y21_N11
\u4|mem~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~178feeder_combout\,
	ena => \u4|mem~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~178_q\);

-- Location: FF_X25_Y21_N5
\u4|mem~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[13]~input_o\,
	sload => VCC,
	ena => \u4|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~242_q\);

-- Location: FF_X24_Y21_N17
\u4|mem~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[13]~input_o\,
	sload => VCC,
	ena => \u4|mem~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~114_q\);

-- Location: FF_X24_Y21_N23
\u4|mem~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[13]~input_o\,
	sload => VCC,
	ena => \u4|mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~50_q\);

-- Location: LCCOMB_X24_Y21_N22
\u4|mem~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~409_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~114_q\) # ((\u3|res[3]~2_combout\)))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~50_q\ & !\u3|res[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~114_q\,
	datac => \u4|mem~50_q\,
	datad => \u3|res[3]~2_combout\,
	combout => \u4|mem~409_combout\);

-- Location: LCCOMB_X25_Y21_N4
\u4|mem~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~410_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~409_combout\ & ((\u4|mem~242_q\))) # (!\u4|mem~409_combout\ & (\u4|mem~178_q\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~409_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~178_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~242_q\,
	datad => \u4|mem~409_combout\,
	combout => \u4|mem~410_combout\);

-- Location: LCCOMB_X22_Y19_N28
\u4|mem~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~413_combout\ = (\u3|res[1]~0_combout\ & (((\u3|res[0]~1_combout\)))) # (!\u3|res[1]~0_combout\ & ((\u3|res[0]~1_combout\ & ((\u4|mem~410_combout\))) # (!\u3|res[0]~1_combout\ & (\u4|mem~412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~412_combout\,
	datab => \u3|res[1]~0_combout\,
	datac => \u3|res[0]~1_combout\,
	datad => \u4|mem~410_combout\,
	combout => \u4|mem~413_combout\);

-- Location: LCCOMB_X22_Y19_N26
\u4|mem~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~416_combout\ = (\u3|res[1]~0_combout\ & ((\u4|mem~413_combout\ & (\u4|mem~415_combout\)) # (!\u4|mem~413_combout\ & ((\u4|mem~408_combout\))))) # (!\u3|res[1]~0_combout\ & (((\u4|mem~413_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~415_combout\,
	datab => \u3|res[1]~0_combout\,
	datac => \u4|mem~408_combout\,
	datad => \u4|mem~413_combout\,
	combout => \u4|mem~416_combout\);

-- Location: LCCOMB_X21_Y8_N14
\u4|ram_out[13]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|ram_out[13]~29_combout\ = (\u4|mem~416_combout\) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~416_combout\,
	combout => \u4|ram_out[13]~29_combout\);

-- Location: FF_X21_Y8_N15
\u5|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|ram_out[13]~29_combout\,
	ena => \u10|m_to_dr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|temp\(13));

-- Location: LCCOMB_X21_Y8_N12
\u0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~3_combout\ = (!\u5|temp\(15) & (!\u5|temp\(12) & (!\u5|temp\(13) & !\u5|temp\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|temp\(15),
	datab => \u5|temp\(12),
	datac => \u5|temp\(13),
	datad => \u5|temp\(14),
	combout => \u0|Equal0~3_combout\);

-- Location: IOIBUF_X28_Y24_N1
\in_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(7),
	o => \in_data[7]~input_o\);

-- Location: LCCOMB_X25_Y19_N20
\u4|mem~204feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~204feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \u4|mem~204feeder_combout\);

-- Location: FF_X25_Y19_N21
\u4|mem~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~204feeder_combout\,
	ena => \u4|mem~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~204_q\);

-- Location: FF_X25_Y19_N19
\u4|mem~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \u4|mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~76_q\);

-- Location: LCCOMB_X25_Y19_N18
\u4|mem~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~354_combout\ = (\u3|res[2]~3_combout\ & (((\u3|res[3]~2_combout\)))) # (!\u3|res[2]~3_combout\ & ((\u3|res[3]~2_combout\ & (\u4|mem~204_q\)) # (!\u3|res[3]~2_combout\ & ((\u4|mem~76_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~204_q\,
	datac => \u4|mem~76_q\,
	datad => \u3|res[3]~2_combout\,
	combout => \u4|mem~354_combout\);

-- Location: FF_X24_Y20_N13
\u4|mem~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \u4|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~268_q\);

-- Location: LCCOMB_X23_Y18_N26
\u4|mem~140feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~140feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \u4|mem~140feeder_combout\);

-- Location: FF_X23_Y18_N27
\u4|mem~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~140feeder_combout\,
	ena => \u4|mem~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~140_q\);

-- Location: LCCOMB_X24_Y20_N12
\u4|mem~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~355_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~354_combout\ & (\u4|mem~268_q\)) # (!\u4|mem~354_combout\ & ((\u4|mem~140_q\))))) # (!\u3|res[2]~3_combout\ & (\u4|mem~354_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~354_combout\,
	datac => \u4|mem~268_q\,
	datad => \u4|mem~140_q\,
	combout => \u4|mem~355_combout\);

-- Location: LCCOMB_X23_Y21_N14
\u4|mem~172feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~172feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \u4|mem~172feeder_combout\);

-- Location: FF_X23_Y21_N15
\u4|mem~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~172feeder_combout\,
	ena => \u4|mem~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~172_q\);

-- Location: FF_X24_Y21_N7
\u4|mem~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \u4|mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~44_q\);

-- Location: LCCOMB_X24_Y21_N6
\u4|mem~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~347_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~172_q\) # ((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~44_q\ & !\u3|res[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~172_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~44_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~347_combout\);

-- Location: LCCOMB_X23_Y21_N24
\u4|mem~236feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~236feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \u4|mem~236feeder_combout\);

-- Location: FF_X23_Y21_N25
\u4|mem~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~236feeder_combout\,
	ena => \u4|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~236_q\);

-- Location: FF_X24_Y21_N21
\u4|mem~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \u4|mem~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~108_q\);

-- Location: LCCOMB_X24_Y21_N20
\u4|mem~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~348_combout\ = (\u4|mem~347_combout\ & ((\u4|mem~236_q\) # ((!\u3|res[2]~3_combout\)))) # (!\u4|mem~347_combout\ & (((\u4|mem~108_q\ & \u3|res[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~347_combout\,
	datab => \u4|mem~236_q\,
	datac => \u4|mem~108_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~348_combout\);

-- Location: FF_X26_Y19_N13
\u4|mem~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \u4|mem~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~188_q\);

-- Location: FF_X25_Y20_N15
\u4|mem~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \u4|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~252_q\);

-- Location: FF_X22_Y20_N19
\u4|mem~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \u4|mem~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~124_q\);

-- Location: FF_X26_Y20_N23
\u4|mem~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \u4|mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~60_q\);

-- Location: LCCOMB_X26_Y20_N22
\u4|mem~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~349_combout\ = (\u3|res[3]~2_combout\ & (((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & ((\u3|res[2]~3_combout\ & (\u4|mem~124_q\)) # (!\u3|res[2]~3_combout\ & ((\u4|mem~60_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~124_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~60_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~349_combout\);

-- Location: LCCOMB_X25_Y20_N14
\u4|mem~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~350_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~349_combout\ & ((\u4|mem~252_q\))) # (!\u4|mem~349_combout\ & (\u4|mem~188_q\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~349_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~188_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~252_q\,
	datad => \u4|mem~349_combout\,
	combout => \u4|mem~350_combout\);

-- Location: LCCOMB_X23_Y20_N4
\u4|mem~156feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~156feeder_combout\ = \in_data[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[7]~input_o\,
	combout => \u4|mem~156feeder_combout\);

-- Location: FF_X23_Y20_N5
\u4|mem~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~156feeder_combout\,
	ena => \u4|mem~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~156_q\);

-- Location: FF_X25_Y20_N1
\u4|mem~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \u4|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~220_q\);

-- Location: FF_X22_Y20_N1
\u4|mem~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \u4|mem~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~92_q\);

-- Location: FF_X23_Y20_N15
\u4|mem~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[7]~input_o\,
	sload => VCC,
	ena => \u4|mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~28_q\);

-- Location: LCCOMB_X23_Y20_N14
\u4|mem~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~351_combout\ = (\u3|res[3]~2_combout\ & (((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & ((\u3|res[2]~3_combout\ & (\u4|mem~92_q\)) # (!\u3|res[2]~3_combout\ & ((\u4|mem~28_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~92_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~28_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~351_combout\);

-- Location: LCCOMB_X25_Y20_N0
\u4|mem~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~352_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~351_combout\ & ((\u4|mem~220_q\))) # (!\u4|mem~351_combout\ & (\u4|mem~156_q\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~351_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~156_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~220_q\,
	datad => \u4|mem~351_combout\,
	combout => \u4|mem~352_combout\);

-- Location: LCCOMB_X25_Y20_N22
\u4|mem~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~353_combout\ = (\u3|res[1]~0_combout\ & ((\u3|res[0]~1_combout\) # ((\u4|mem~350_combout\)))) # (!\u3|res[1]~0_combout\ & (!\u3|res[0]~1_combout\ & ((\u4|mem~352_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~350_combout\,
	datad => \u4|mem~352_combout\,
	combout => \u4|mem~353_combout\);

-- Location: LCCOMB_X24_Y20_N2
\u4|mem~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~356_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~353_combout\ & (\u4|mem~355_combout\)) # (!\u4|mem~353_combout\ & ((\u4|mem~348_combout\))))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~353_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~355_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~348_combout\,
	datad => \u4|mem~353_combout\,
	combout => \u4|mem~356_combout\);

-- Location: LCCOMB_X21_Y8_N18
\u4|ram_out[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|ram_out[7]~23_combout\ = (\u4|mem~356_combout\) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~356_combout\,
	combout => \u4|ram_out[7]~23_combout\);

-- Location: FF_X21_Y8_N19
\u5|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|ram_out[7]~23_combout\,
	ena => \u10|m_to_dr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|temp\(7));

-- Location: LCCOMB_X21_Y8_N16
\u0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~1_combout\ = (!\u5|temp\(5) & (!\u5|temp\(7) & (!\u5|temp\(6) & !\u5|temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|temp\(5),
	datab => \u5|temp\(7),
	datac => \u5|temp\(6),
	datad => \u5|temp\(4),
	combout => \u0|Equal0~1_combout\);

-- Location: IOIBUF_X25_Y24_N8
\in_data[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(8),
	o => \in_data[8]~input_o\);

-- Location: FF_X23_Y21_N7
\u4|mem~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[8]~input_o\,
	sload => VCC,
	ena => \u4|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~237_q\);

-- Location: FF_X24_Y20_N5
\u4|mem~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[8]~input_o\,
	sload => VCC,
	ena => \u4|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~269_q\);

-- Location: FF_X25_Y20_N7
\u4|mem~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[8]~input_o\,
	sload => VCC,
	ena => \u4|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~221_q\);

-- Location: FF_X25_Y20_N13
\u4|mem~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[8]~input_o\,
	sload => VCC,
	ena => \u4|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~253_q\);

-- Location: LCCOMB_X25_Y20_N6
\u4|mem~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~364_combout\ = (\u3|res[1]~0_combout\ & ((\u3|res[0]~1_combout\) # ((\u4|mem~253_q\)))) # (!\u3|res[1]~0_combout\ & (!\u3|res[0]~1_combout\ & (\u4|mem~221_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~221_q\,
	datad => \u4|mem~253_q\,
	combout => \u4|mem~364_combout\);

-- Location: LCCOMB_X24_Y20_N4
\u4|mem~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~365_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~364_combout\ & ((\u4|mem~269_q\))) # (!\u4|mem~364_combout\ & (\u4|mem~237_q\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~364_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~237_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~269_q\,
	datad => \u4|mem~364_combout\,
	combout => \u4|mem~365_combout\);

-- Location: LCCOMB_X23_Y19_N28
\u4|mem~205feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~205feeder_combout\ = \in_data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[8]~input_o\,
	combout => \u4|mem~205feeder_combout\);

-- Location: FF_X23_Y19_N29
\u4|mem~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~205feeder_combout\,
	ena => \u4|mem~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~205_q\);

-- Location: FF_X26_Y19_N19
\u4|mem~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[8]~input_o\,
	sload => VCC,
	ena => \u4|mem~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~189_q\);

-- Location: FF_X26_Y19_N21
\u4|mem~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[8]~input_o\,
	sload => VCC,
	ena => \u4|mem~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~157_q\);

-- Location: FF_X25_Y21_N23
\u4|mem~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[8]~input_o\,
	sload => VCC,
	ena => \u4|mem~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~173_q\);

-- Location: LCCOMB_X26_Y19_N20
\u4|mem~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~357_combout\ = (\u3|res[0]~1_combout\ & ((\u3|res[1]~0_combout\) # ((\u4|mem~173_q\)))) # (!\u3|res[0]~1_combout\ & (!\u3|res[1]~0_combout\ & (\u4|mem~157_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u3|res[1]~0_combout\,
	datac => \u4|mem~157_q\,
	datad => \u4|mem~173_q\,
	combout => \u4|mem~357_combout\);

-- Location: LCCOMB_X26_Y19_N18
\u4|mem~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~358_combout\ = (\u3|res[1]~0_combout\ & ((\u4|mem~357_combout\ & (\u4|mem~205_q\)) # (!\u4|mem~357_combout\ & ((\u4|mem~189_q\))))) # (!\u3|res[1]~0_combout\ & (((\u4|mem~357_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~205_q\,
	datab => \u3|res[1]~0_combout\,
	datac => \u4|mem~189_q\,
	datad => \u4|mem~357_combout\,
	combout => \u4|mem~358_combout\);

-- Location: LCCOMB_X23_Y18_N20
\u4|mem~109feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~109feeder_combout\ = \in_data[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[8]~input_o\,
	combout => \u4|mem~109feeder_combout\);

-- Location: FF_X23_Y18_N21
\u4|mem~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~109feeder_combout\,
	ena => \u4|mem~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~109_q\);

-- Location: FF_X23_Y18_N7
\u4|mem~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[8]~input_o\,
	sload => VCC,
	ena => \u4|mem~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~141_q\);

-- Location: FF_X22_Y18_N9
\u4|mem~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[8]~input_o\,
	sload => VCC,
	ena => \u4|mem~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~125_q\);

-- Location: FF_X22_Y18_N23
\u4|mem~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[8]~input_o\,
	sload => VCC,
	ena => \u4|mem~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~93_q\);

-- Location: LCCOMB_X22_Y18_N22
\u4|mem~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~359_combout\ = (\u3|res[0]~1_combout\ & (((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & ((\u3|res[1]~0_combout\ & (\u4|mem~125_q\)) # (!\u3|res[1]~0_combout\ & ((\u4|mem~93_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u4|mem~125_q\,
	datac => \u4|mem~93_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~359_combout\);

-- Location: LCCOMB_X23_Y18_N6
\u4|mem~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~360_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~359_combout\ & ((\u4|mem~141_q\))) # (!\u4|mem~359_combout\ & (\u4|mem~109_q\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~359_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u4|mem~109_q\,
	datac => \u4|mem~141_q\,
	datad => \u4|mem~359_combout\,
	combout => \u4|mem~360_combout\);

-- Location: FF_X24_Y18_N9
\u4|mem~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[8]~input_o\,
	sload => VCC,
	ena => \u4|mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~61_q\);

-- Location: FF_X24_Y18_N7
\u4|mem~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[8]~input_o\,
	sload => VCC,
	ena => \u4|mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~77_q\);

-- Location: FF_X25_Y18_N9
\u4|mem~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[8]~input_o\,
	sload => VCC,
	ena => \u4|mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~45_q\);

-- Location: FF_X25_Y18_N15
\u4|mem~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[8]~input_o\,
	sload => VCC,
	ena => \u4|mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~29_q\);

-- Location: LCCOMB_X25_Y18_N14
\u4|mem~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~361_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~45_q\) # ((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~29_q\ & !\u3|res[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u4|mem~45_q\,
	datac => \u4|mem~29_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~361_combout\);

-- Location: LCCOMB_X24_Y18_N6
\u4|mem~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~362_combout\ = (\u3|res[1]~0_combout\ & ((\u4|mem~361_combout\ & ((\u4|mem~77_q\))) # (!\u4|mem~361_combout\ & (\u4|mem~61_q\)))) # (!\u3|res[1]~0_combout\ & (((\u4|mem~361_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u4|mem~61_q\,
	datac => \u4|mem~77_q\,
	datad => \u4|mem~361_combout\,
	combout => \u4|mem~362_combout\);

-- Location: LCCOMB_X23_Y20_N0
\u4|mem~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~363_combout\ = (\u3|res[3]~2_combout\ & (\u3|res[2]~3_combout\)) # (!\u3|res[3]~2_combout\ & ((\u3|res[2]~3_combout\ & (\u4|mem~360_combout\)) # (!\u3|res[2]~3_combout\ & ((\u4|mem~362_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[3]~2_combout\,
	datab => \u3|res[2]~3_combout\,
	datac => \u4|mem~360_combout\,
	datad => \u4|mem~362_combout\,
	combout => \u4|mem~363_combout\);

-- Location: LCCOMB_X23_Y20_N10
\u4|mem~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~366_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~363_combout\ & (\u4|mem~365_combout\)) # (!\u4|mem~363_combout\ & ((\u4|mem~358_combout\))))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~363_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~365_combout\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~358_combout\,
	datad => \u4|mem~363_combout\,
	combout => \u4|mem~366_combout\);

-- Location: LCCOMB_X21_Y8_N6
\u4|ram_out[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|ram_out[8]~24_combout\ = (\u4|mem~366_combout\) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~366_combout\,
	combout => \u4|ram_out[8]~24_combout\);

-- Location: FF_X21_Y8_N7
\u5|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|ram_out[8]~24_combout\,
	ena => \u10|m_to_dr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|temp\(8));

-- Location: IOIBUF_X23_Y24_N15
\in_data[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(11),
	o => \in_data[11]~input_o\);

-- Location: FF_X23_Y21_N17
\u4|mem~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[11]~input_o\,
	sload => VCC,
	ena => \u4|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~240_q\);

-- Location: FF_X24_Y21_N29
\u4|mem~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[11]~input_o\,
	sload => VCC,
	ena => \u4|mem~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~112_q\);

-- Location: FF_X23_Y21_N11
\u4|mem~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[11]~input_o\,
	sload => VCC,
	ena => \u4|mem~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~176_q\);

-- Location: FF_X24_Y21_N11
\u4|mem~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[11]~input_o\,
	sload => VCC,
	ena => \u4|mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~48_q\);

-- Location: LCCOMB_X24_Y21_N10
\u4|mem~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~387_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~176_q\) # ((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~48_q\ & !\u3|res[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~176_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~48_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~387_combout\);

-- Location: LCCOMB_X24_Y21_N28
\u4|mem~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~388_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~387_combout\ & (\u4|mem~240_q\)) # (!\u4|mem~387_combout\ & ((\u4|mem~112_q\))))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~240_q\,
	datac => \u4|mem~112_q\,
	datad => \u4|mem~387_combout\,
	combout => \u4|mem~388_combout\);

-- Location: FF_X21_Y20_N3
\u4|mem~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[11]~input_o\,
	sload => VCC,
	ena => \u4|mem~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~192_q\);

-- Location: FF_X21_Y20_N1
\u4|mem~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[11]~input_o\,
	sload => VCC,
	ena => \u4|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~256_q\);

-- Location: LCCOMB_X22_Y20_N26
\u4|mem~128feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~128feeder_combout\ = \in_data[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[11]~input_o\,
	combout => \u4|mem~128feeder_combout\);

-- Location: FF_X22_Y20_N27
\u4|mem~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~128feeder_combout\,
	ena => \u4|mem~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~128_q\);

-- Location: FF_X26_Y20_N15
\u4|mem~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[11]~input_o\,
	sload => VCC,
	ena => \u4|mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~64_q\);

-- Location: LCCOMB_X26_Y20_N14
\u4|mem~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~389_combout\ = (\u3|res[3]~2_combout\ & (((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & ((\u3|res[2]~3_combout\ & (\u4|mem~128_q\)) # (!\u3|res[2]~3_combout\ & ((\u4|mem~64_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~128_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~64_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~389_combout\);

-- Location: LCCOMB_X21_Y20_N0
\u4|mem~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~390_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~389_combout\ & ((\u4|mem~256_q\))) # (!\u4|mem~389_combout\ & (\u4|mem~192_q\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~389_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[3]~2_combout\,
	datab => \u4|mem~192_q\,
	datac => \u4|mem~256_q\,
	datad => \u4|mem~389_combout\,
	combout => \u4|mem~390_combout\);

-- Location: FF_X22_Y19_N13
\u4|mem~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[11]~input_o\,
	sload => VCC,
	ena => \u4|mem~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~160_q\);

-- Location: FF_X22_Y19_N7
\u4|mem~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[11]~input_o\,
	sload => VCC,
	ena => \u4|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~224_q\);

-- Location: FF_X21_Y19_N23
\u4|mem~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[11]~input_o\,
	sload => VCC,
	ena => \u4|mem~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~96_q\);

-- Location: FF_X21_Y19_N29
\u4|mem~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[11]~input_o\,
	sload => VCC,
	ena => \u4|mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~32_q\);

-- Location: LCCOMB_X21_Y19_N28
\u4|mem~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~391_combout\ = (\u3|res[3]~2_combout\ & (((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & ((\u3|res[2]~3_combout\ & (\u4|mem~96_q\)) # (!\u3|res[2]~3_combout\ & ((\u4|mem~32_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~96_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~32_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~391_combout\);

-- Location: LCCOMB_X22_Y19_N6
\u4|mem~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~392_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~391_combout\ & ((\u4|mem~224_q\))) # (!\u4|mem~391_combout\ & (\u4|mem~160_q\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~391_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~160_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~224_q\,
	datad => \u4|mem~391_combout\,
	combout => \u4|mem~392_combout\);

-- Location: LCCOMB_X24_Y20_N30
\u4|mem~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~393_combout\ = (\u3|res[1]~0_combout\ & ((\u3|res[0]~1_combout\) # ((\u4|mem~390_combout\)))) # (!\u3|res[1]~0_combout\ & (!\u3|res[0]~1_combout\ & ((\u4|mem~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~390_combout\,
	datad => \u4|mem~392_combout\,
	combout => \u4|mem~393_combout\);

-- Location: FF_X25_Y19_N25
\u4|mem~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[11]~input_o\,
	sload => VCC,
	ena => \u4|mem~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~208_q\);

-- Location: FF_X25_Y19_N7
\u4|mem~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[11]~input_o\,
	sload => VCC,
	ena => \u4|mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~80_q\);

-- Location: LCCOMB_X25_Y19_N6
\u4|mem~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~394_combout\ = (\u3|res[2]~3_combout\ & (((\u3|res[3]~2_combout\)))) # (!\u3|res[2]~3_combout\ & ((\u3|res[3]~2_combout\ & (\u4|mem~208_q\)) # (!\u3|res[3]~2_combout\ & ((\u4|mem~80_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~208_q\,
	datac => \u4|mem~80_q\,
	datad => \u3|res[3]~2_combout\,
	combout => \u4|mem~394_combout\);

-- Location: FF_X24_Y20_N25
\u4|mem~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[11]~input_o\,
	sload => VCC,
	ena => \u4|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~272_q\);

-- Location: LCCOMB_X23_Y18_N22
\u4|mem~144feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~144feeder_combout\ = \in_data[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[11]~input_o\,
	combout => \u4|mem~144feeder_combout\);

-- Location: FF_X23_Y18_N23
\u4|mem~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~144feeder_combout\,
	ena => \u4|mem~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~144_q\);

-- Location: LCCOMB_X24_Y20_N24
\u4|mem~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~395_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~394_combout\ & (\u4|mem~272_q\)) # (!\u4|mem~394_combout\ & ((\u4|mem~144_q\))))) # (!\u3|res[2]~3_combout\ & (\u4|mem~394_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~394_combout\,
	datac => \u4|mem~272_q\,
	datad => \u4|mem~144_q\,
	combout => \u4|mem~395_combout\);

-- Location: LCCOMB_X24_Y20_N14
\u4|mem~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~396_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~393_combout\ & ((\u4|mem~395_combout\))) # (!\u4|mem~393_combout\ & (\u4|mem~388_combout\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~393_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~388_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~393_combout\,
	datad => \u4|mem~395_combout\,
	combout => \u4|mem~396_combout\);

-- Location: LCCOMB_X21_Y8_N4
\u4|ram_out[11]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|ram_out[11]~27_combout\ = (\u4|mem~396_combout\) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~396_combout\,
	combout => \u4|ram_out[11]~27_combout\);

-- Location: FF_X21_Y8_N5
\u5|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|ram_out[11]~27_combout\,
	ena => \u10|m_to_dr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|temp\(11));

-- Location: IOIBUF_X21_Y24_N15
\in_data[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(10),
	o => \in_data[10]~input_o\);

-- Location: LCCOMB_X21_Y18_N22
\u4|mem~143feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~143feeder_combout\ = \in_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[10]~input_o\,
	combout => \u4|mem~143feeder_combout\);

-- Location: FF_X21_Y18_N23
\u4|mem~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~143feeder_combout\,
	ena => \u4|mem~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~143_q\);

-- Location: LCCOMB_X21_Y18_N20
\u4|mem~111feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~111feeder_combout\ = \in_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[10]~input_o\,
	combout => \u4|mem~111feeder_combout\);

-- Location: FF_X21_Y18_N21
\u4|mem~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~111feeder_combout\,
	ena => \u4|mem~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~111_q\);

-- Location: FF_X22_Y18_N3
\u4|mem~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[10]~input_o\,
	sload => VCC,
	ena => \u4|mem~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~95_q\);

-- Location: LCCOMB_X22_Y18_N2
\u4|mem~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~377_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~111_q\) # ((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~95_q\ & !\u3|res[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u4|mem~111_q\,
	datac => \u4|mem~95_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~377_combout\);

-- Location: FF_X22_Y18_N17
\u4|mem~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[10]~input_o\,
	sload => VCC,
	ena => \u4|mem~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~127_q\);

-- Location: LCCOMB_X22_Y18_N16
\u4|mem~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~378_combout\ = (\u4|mem~377_combout\ & ((\u4|mem~143_q\) # ((!\u3|res[1]~0_combout\)))) # (!\u4|mem~377_combout\ & (((\u4|mem~127_q\ & \u3|res[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~143_q\,
	datab => \u4|mem~377_combout\,
	datac => \u4|mem~127_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~378_combout\);

-- Location: LCCOMB_X25_Y18_N28
\u4|mem~47feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~47feeder_combout\ = \in_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[10]~input_o\,
	combout => \u4|mem~47feeder_combout\);

-- Location: FF_X25_Y18_N29
\u4|mem~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~47feeder_combout\,
	ena => \u4|mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~47_q\);

-- Location: FF_X25_Y19_N15
\u4|mem~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[10]~input_o\,
	sload => VCC,
	ena => \u4|mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~79_q\);

-- Location: FF_X26_Y18_N19
\u4|mem~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[10]~input_o\,
	sload => VCC,
	ena => \u4|mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~63_q\);

-- Location: FF_X26_Y18_N1
\u4|mem~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[10]~input_o\,
	sload => VCC,
	ena => \u4|mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~31_q\);

-- Location: LCCOMB_X26_Y18_N0
\u4|mem~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~381_combout\ = (\u3|res[0]~1_combout\ & (((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & ((\u3|res[1]~0_combout\ & (\u4|mem~63_q\)) # (!\u3|res[1]~0_combout\ & ((\u4|mem~31_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u4|mem~63_q\,
	datac => \u4|mem~31_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~381_combout\);

-- Location: LCCOMB_X25_Y19_N14
\u4|mem~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~382_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~381_combout\ & ((\u4|mem~79_q\))) # (!\u4|mem~381_combout\ & (\u4|mem~47_q\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~381_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~47_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~79_q\,
	datad => \u4|mem~381_combout\,
	combout => \u4|mem~382_combout\);

-- Location: LCCOMB_X25_Y21_N8
\u4|mem~175feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~175feeder_combout\ = \in_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[10]~input_o\,
	combout => \u4|mem~175feeder_combout\);

-- Location: FF_X25_Y21_N9
\u4|mem~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~175feeder_combout\,
	ena => \u4|mem~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~175_q\);

-- Location: FF_X23_Y19_N23
\u4|mem~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[10]~input_o\,
	sload => VCC,
	ena => \u4|mem~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~207_q\);

-- Location: LCCOMB_X26_Y19_N10
\u4|mem~191feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~191feeder_combout\ = \in_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[10]~input_o\,
	combout => \u4|mem~191feeder_combout\);

-- Location: FF_X26_Y19_N11
\u4|mem~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~191feeder_combout\,
	ena => \u4|mem~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~191_q\);

-- Location: FF_X22_Y19_N15
\u4|mem~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[10]~input_o\,
	sload => VCC,
	ena => \u4|mem~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~159_q\);

-- Location: LCCOMB_X22_Y19_N14
\u4|mem~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~379_combout\ = (\u3|res[0]~1_combout\ & (((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & ((\u3|res[1]~0_combout\ & (\u4|mem~191_q\)) # (!\u3|res[1]~0_combout\ & ((\u4|mem~159_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~191_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~159_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~379_combout\);

-- Location: LCCOMB_X23_Y19_N22
\u4|mem~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~380_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~379_combout\ & ((\u4|mem~207_q\))) # (!\u4|mem~379_combout\ & (\u4|mem~175_q\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~379_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~175_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~207_q\,
	datad => \u4|mem~379_combout\,
	combout => \u4|mem~380_combout\);

-- Location: LCCOMB_X21_Y19_N16
\u4|mem~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~383_combout\ = (\u3|res[2]~3_combout\ & (((\u3|res[3]~2_combout\)))) # (!\u3|res[2]~3_combout\ & ((\u3|res[3]~2_combout\ & ((\u4|mem~380_combout\))) # (!\u3|res[3]~2_combout\ & (\u4|mem~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~382_combout\,
	datab => \u3|res[2]~3_combout\,
	datac => \u4|mem~380_combout\,
	datad => \u3|res[3]~2_combout\,
	combout => \u4|mem~383_combout\);

-- Location: LCCOMB_X21_Y20_N24
\u4|mem~255feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~255feeder_combout\ = \in_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[10]~input_o\,
	combout => \u4|mem~255feeder_combout\);

-- Location: FF_X21_Y20_N25
\u4|mem~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~255feeder_combout\,
	ena => \u4|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~255_q\);

-- Location: FF_X23_Y19_N25
\u4|mem~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[10]~input_o\,
	sload => VCC,
	ena => \u4|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~271_q\);

-- Location: LCCOMB_X23_Y21_N4
\u4|mem~239feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~239feeder_combout\ = \in_data[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[10]~input_o\,
	combout => \u4|mem~239feeder_combout\);

-- Location: FF_X23_Y21_N5
\u4|mem~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~239feeder_combout\,
	ena => \u4|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~239_q\);

-- Location: FF_X22_Y19_N9
\u4|mem~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[10]~input_o\,
	sload => VCC,
	ena => \u4|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~223_q\);

-- Location: LCCOMB_X22_Y19_N8
\u4|mem~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~384_combout\ = (\u3|res[1]~0_combout\ & (((\u3|res[0]~1_combout\)))) # (!\u3|res[1]~0_combout\ & ((\u3|res[0]~1_combout\ & (\u4|mem~239_q\)) # (!\u3|res[0]~1_combout\ & ((\u4|mem~223_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~239_q\,
	datab => \u3|res[1]~0_combout\,
	datac => \u4|mem~223_q\,
	datad => \u3|res[0]~1_combout\,
	combout => \u4|mem~384_combout\);

-- Location: LCCOMB_X23_Y19_N24
\u4|mem~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~385_combout\ = (\u3|res[1]~0_combout\ & ((\u4|mem~384_combout\ & ((\u4|mem~271_q\))) # (!\u4|mem~384_combout\ & (\u4|mem~255_q\)))) # (!\u3|res[1]~0_combout\ & (((\u4|mem~384_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u4|mem~255_q\,
	datac => \u4|mem~271_q\,
	datad => \u4|mem~384_combout\,
	combout => \u4|mem~385_combout\);

-- Location: LCCOMB_X22_Y19_N2
\u4|mem~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~386_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~383_combout\ & ((\u4|mem~385_combout\))) # (!\u4|mem~383_combout\ & (\u4|mem~378_combout\)))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~383_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~378_combout\,
	datac => \u4|mem~383_combout\,
	datad => \u4|mem~385_combout\,
	combout => \u4|mem~386_combout\);

-- Location: LCCOMB_X21_Y8_N2
\u4|ram_out[10]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|ram_out[10]~26_combout\ = (\u4|mem~386_combout\) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~386_combout\,
	combout => \u4|ram_out[10]~26_combout\);

-- Location: FF_X21_Y8_N3
\u5|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|ram_out[10]~26_combout\,
	ena => \u10|m_to_dr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|temp\(10));

-- Location: LCCOMB_X21_Y8_N30
\u0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~2_combout\ = (!\u5|temp\(8) & (!\u5|temp\(9) & (!\u5|temp\(11) & !\u5|temp\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|temp\(8),
	datab => \u5|temp\(9),
	datac => \u5|temp\(11),
	datad => \u5|temp\(10),
	combout => \u0|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y7_N14
\u4|ram_out[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|ram_out[0]~16_combout\ = (\u4|mem~286_combout\) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr_data~input_o\,
	datac => \u4|mem~286_combout\,
	combout => \u4|ram_out[0]~16_combout\);

-- Location: FF_X22_Y7_N15
\u5|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|ram_out[0]~16_combout\,
	ena => \u10|m_to_dr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|temp\(0));

-- Location: IOIBUF_X34_Y19_N15
\in_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(3),
	o => \in_data[3]~input_o\);

-- Location: FF_X23_Y18_N31
\u4|mem~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \u4|mem~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~136_q\);

-- Location: FF_X23_Y19_N13
\u4|mem~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \u4|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~264_q\);

-- Location: FF_X25_Y19_N17
\u4|mem~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \u4|mem~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~200_q\);

-- Location: FF_X25_Y19_N23
\u4|mem~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \u4|mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~72_q\);

-- Location: LCCOMB_X25_Y19_N22
\u4|mem~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~314_combout\ = (\u3|res[2]~3_combout\ & (((\u3|res[3]~2_combout\)))) # (!\u3|res[2]~3_combout\ & ((\u3|res[3]~2_combout\ & (\u4|mem~200_q\)) # (!\u3|res[3]~2_combout\ & ((\u4|mem~72_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~200_q\,
	datac => \u4|mem~72_q\,
	datad => \u3|res[3]~2_combout\,
	combout => \u4|mem~314_combout\);

-- Location: LCCOMB_X23_Y19_N12
\u4|mem~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~315_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~314_combout\ & ((\u4|mem~264_q\))) # (!\u4|mem~314_combout\ & (\u4|mem~136_q\)))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~136_q\,
	datac => \u4|mem~264_q\,
	datad => \u4|mem~314_combout\,
	combout => \u4|mem~315_combout\);

-- Location: FF_X23_Y21_N3
\u4|mem~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \u4|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~232_q\);

-- Location: FF_X23_Y21_N21
\u4|mem~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \u4|mem~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~168_q\);

-- Location: FF_X24_Y21_N19
\u4|mem~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \u4|mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~40_q\);

-- Location: LCCOMB_X24_Y21_N18
\u4|mem~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~307_combout\ = (\u3|res[2]~3_combout\ & (((\u3|res[3]~2_combout\)))) # (!\u3|res[2]~3_combout\ & ((\u3|res[3]~2_combout\ & (\u4|mem~168_q\)) # (!\u3|res[3]~2_combout\ & ((\u4|mem~40_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~168_q\,
	datac => \u4|mem~40_q\,
	datad => \u3|res[3]~2_combout\,
	combout => \u4|mem~307_combout\);

-- Location: FF_X24_Y21_N1
\u4|mem~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \u4|mem~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~104_q\);

-- Location: LCCOMB_X24_Y21_N0
\u4|mem~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~308_combout\ = (\u4|mem~307_combout\ & ((\u4|mem~232_q\) # ((!\u3|res[2]~3_combout\)))) # (!\u4|mem~307_combout\ & (((\u4|mem~104_q\ & \u3|res[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~232_q\,
	datab => \u4|mem~307_combout\,
	datac => \u4|mem~104_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~308_combout\);

-- Location: LCCOMB_X22_Y19_N16
\u4|mem~152feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~152feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \u4|mem~152feeder_combout\);

-- Location: FF_X22_Y19_N17
\u4|mem~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~152feeder_combout\,
	ena => \u4|mem~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~152_q\);

-- Location: FF_X24_Y19_N31
\u4|mem~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \u4|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~216_q\);

-- Location: FF_X22_Y20_N15
\u4|mem~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \u4|mem~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~88_q\);

-- Location: FF_X23_Y20_N31
\u4|mem~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \u4|mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~24_q\);

-- Location: LCCOMB_X23_Y20_N30
\u4|mem~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~311_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~88_q\) # ((\u3|res[3]~2_combout\)))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~24_q\ & !\u3|res[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~88_q\,
	datab => \u3|res[2]~3_combout\,
	datac => \u4|mem~24_q\,
	datad => \u3|res[3]~2_combout\,
	combout => \u4|mem~311_combout\);

-- Location: LCCOMB_X24_Y19_N30
\u4|mem~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~312_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~311_combout\ & ((\u4|mem~216_q\))) # (!\u4|mem~311_combout\ & (\u4|mem~152_q\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~311_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[3]~2_combout\,
	datab => \u4|mem~152_q\,
	datac => \u4|mem~216_q\,
	datad => \u4|mem~311_combout\,
	combout => \u4|mem~312_combout\);

-- Location: LCCOMB_X28_Y20_N12
\u4|mem~184feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~184feeder_combout\ = \in_data[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[3]~input_o\,
	combout => \u4|mem~184feeder_combout\);

-- Location: FF_X28_Y20_N13
\u4|mem~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~184feeder_combout\,
	ena => \u4|mem~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~184_q\);

-- Location: FF_X25_Y20_N29
\u4|mem~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \u4|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~248_q\);

-- Location: FF_X22_Y20_N13
\u4|mem~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \u4|mem~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~120_q\);

-- Location: FF_X26_Y20_N27
\u4|mem~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[3]~input_o\,
	sload => VCC,
	ena => \u4|mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~56_q\);

-- Location: LCCOMB_X26_Y20_N26
\u4|mem~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~309_combout\ = (\u3|res[3]~2_combout\ & (((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & ((\u3|res[2]~3_combout\ & (\u4|mem~120_q\)) # (!\u3|res[2]~3_combout\ & ((\u4|mem~56_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~120_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~56_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~309_combout\);

-- Location: LCCOMB_X25_Y20_N28
\u4|mem~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~310_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~309_combout\ & ((\u4|mem~248_q\))) # (!\u4|mem~309_combout\ & (\u4|mem~184_q\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~309_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~184_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~248_q\,
	datad => \u4|mem~309_combout\,
	combout => \u4|mem~310_combout\);

-- Location: LCCOMB_X24_Y19_N24
\u4|mem~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~313_combout\ = (\u3|res[1]~0_combout\ & (((\u3|res[0]~1_combout\) # (\u4|mem~310_combout\)))) # (!\u3|res[1]~0_combout\ & (\u4|mem~312_combout\ & (!\u3|res[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~312_combout\,
	datab => \u3|res[1]~0_combout\,
	datac => \u3|res[0]~1_combout\,
	datad => \u4|mem~310_combout\,
	combout => \u4|mem~313_combout\);

-- Location: LCCOMB_X24_Y19_N22
\u4|mem~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~316_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~313_combout\ & (\u4|mem~315_combout\)) # (!\u4|mem~313_combout\ & ((\u4|mem~308_combout\))))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~315_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~308_combout\,
	datad => \u4|mem~313_combout\,
	combout => \u4|mem~316_combout\);

-- Location: LCCOMB_X22_Y7_N4
\u4|ram_out[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|ram_out[3]~19_combout\ = (\u4|mem~316_combout\) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr_data~input_o\,
	datad => \u4|mem~316_combout\,
	combout => \u4|ram_out[3]~19_combout\);

-- Location: FF_X22_Y7_N5
\u5|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|ram_out[3]~19_combout\,
	ena => \u10|m_to_dr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|temp\(3));

-- Location: IOIBUF_X34_Y19_N1
\in_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(1),
	o => \in_data[1]~input_o\);

-- Location: FF_X25_Y20_N25
\u4|mem~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \u4|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~246_q\);

-- Location: FF_X22_Y20_N29
\u4|mem~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \u4|mem~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~118_q\);

-- Location: FF_X24_Y19_N1
\u4|mem~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \u4|mem~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~182_q\);

-- Location: FF_X26_Y20_N17
\u4|mem~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \u4|mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~54_q\);

-- Location: LCCOMB_X26_Y20_N16
\u4|mem~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~287_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~182_q\) # ((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~54_q\ & !\u3|res[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~182_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~54_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~287_combout\);

-- Location: LCCOMB_X22_Y20_N28
\u4|mem~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~288_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~287_combout\ & (\u4|mem~246_q\)) # (!\u4|mem~287_combout\ & ((\u4|mem~118_q\))))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~246_q\,
	datab => \u3|res[2]~3_combout\,
	datac => \u4|mem~118_q\,
	datad => \u4|mem~287_combout\,
	combout => \u4|mem~288_combout\);

-- Location: FF_X23_Y18_N17
\u4|mem~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \u4|mem~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~134_q\);

-- Location: FF_X24_Y18_N25
\u4|mem~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \u4|mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~70_q\);

-- Location: LCCOMB_X24_Y18_N24
\u4|mem~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~294_combout\ = (\u3|res[3]~2_combout\ & (((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & ((\u3|res[2]~3_combout\ & (\u4|mem~134_q\)) # (!\u3|res[2]~3_combout\ & ((\u4|mem~70_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~134_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~70_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~294_combout\);

-- Location: FF_X24_Y20_N29
\u4|mem~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \u4|mem~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~198_q\);

-- Location: FF_X24_Y20_N23
\u4|mem~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \u4|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~262_q\);

-- Location: LCCOMB_X24_Y20_N22
\u4|mem~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~295_combout\ = (\u4|mem~294_combout\ & (((\u4|mem~262_q\) # (!\u3|res[3]~2_combout\)))) # (!\u4|mem~294_combout\ & (\u4|mem~198_q\ & ((\u3|res[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~294_combout\,
	datab => \u4|mem~198_q\,
	datac => \u4|mem~262_q\,
	datad => \u3|res[3]~2_combout\,
	combout => \u4|mem~295_combout\);

-- Location: LCCOMB_X22_Y20_N22
\u4|mem~86feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~86feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \u4|mem~86feeder_combout\);

-- Location: FF_X22_Y20_N23
\u4|mem~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~86feeder_combout\,
	ena => \u4|mem~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~86_q\);

-- Location: FF_X25_Y20_N31
\u4|mem~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \u4|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~214_q\);

-- Location: FF_X23_Y20_N23
\u4|mem~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \u4|mem~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~150_q\);

-- Location: FF_X23_Y20_N9
\u4|mem~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \u4|mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~22_q\);

-- Location: LCCOMB_X23_Y20_N8
\u4|mem~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~291_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~150_q\) # ((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~22_q\ & !\u3|res[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~150_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~22_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~291_combout\);

-- Location: LCCOMB_X25_Y20_N30
\u4|mem~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~292_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~291_combout\ & ((\u4|mem~214_q\))) # (!\u4|mem~291_combout\ & (\u4|mem~86_q\)))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[2]~3_combout\,
	datab => \u4|mem~86_q\,
	datac => \u4|mem~214_q\,
	datad => \u4|mem~291_combout\,
	combout => \u4|mem~292_combout\);

-- Location: FF_X25_Y21_N13
\u4|mem~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \u4|mem~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~166_q\);

-- Location: FF_X25_Y21_N7
\u4|mem~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \u4|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~230_q\);

-- Location: LCCOMB_X24_Y21_N12
\u4|mem~102feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~102feeder_combout\ = \in_data[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[1]~input_o\,
	combout => \u4|mem~102feeder_combout\);

-- Location: FF_X24_Y21_N13
\u4|mem~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~102feeder_combout\,
	ena => \u4|mem~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~102_q\);

-- Location: FF_X24_Y21_N15
\u4|mem~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[1]~input_o\,
	sload => VCC,
	ena => \u4|mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~38_q\);

-- Location: LCCOMB_X24_Y21_N14
\u4|mem~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~289_combout\ = (\u3|res[3]~2_combout\ & (((\u3|res[2]~3_combout\)))) # (!\u3|res[3]~2_combout\ & ((\u3|res[2]~3_combout\ & (\u4|mem~102_q\)) # (!\u3|res[2]~3_combout\ & ((\u4|mem~38_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~102_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~38_q\,
	datad => \u3|res[2]~3_combout\,
	combout => \u4|mem~289_combout\);

-- Location: LCCOMB_X25_Y21_N6
\u4|mem~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~290_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~289_combout\ & ((\u4|mem~230_q\))) # (!\u4|mem~289_combout\ & (\u4|mem~166_q\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~289_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~166_q\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~230_q\,
	datad => \u4|mem~289_combout\,
	combout => \u4|mem~290_combout\);

-- Location: LCCOMB_X25_Y18_N12
\u4|mem~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~293_combout\ = (\u3|res[1]~0_combout\ & (\u3|res[0]~1_combout\)) # (!\u3|res[1]~0_combout\ & ((\u3|res[0]~1_combout\ & ((\u4|mem~290_combout\))) # (!\u3|res[0]~1_combout\ & (\u4|mem~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~292_combout\,
	datad => \u4|mem~290_combout\,
	combout => \u4|mem~293_combout\);

-- Location: LCCOMB_X25_Y18_N2
\u4|mem~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~296_combout\ = (\u3|res[1]~0_combout\ & ((\u4|mem~293_combout\ & ((\u4|mem~295_combout\))) # (!\u4|mem~293_combout\ & (\u4|mem~288_combout\)))) # (!\u3|res[1]~0_combout\ & (((\u4|mem~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u4|mem~288_combout\,
	datac => \u4|mem~295_combout\,
	datad => \u4|mem~293_combout\,
	combout => \u4|mem~296_combout\);

-- Location: LCCOMB_X22_Y7_N0
\u4|ram_out[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|ram_out[1]~17_combout\ = (\u4|mem~296_combout\) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr_data~input_o\,
	datad => \u4|mem~296_combout\,
	combout => \u4|ram_out[1]~17_combout\);

-- Location: FF_X22_Y7_N1
\u5|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|ram_out[1]~17_combout\,
	ena => \u10|m_to_dr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|temp\(1));

-- Location: LCCOMB_X22_Y7_N10
\u0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~0_combout\ = (!\u5|temp\(2) & (!\u5|temp\(0) & (!\u5|temp\(3) & !\u5|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|temp\(2),
	datab => \u5|temp\(0),
	datac => \u5|temp\(3),
	datad => \u5|temp\(1),
	combout => \u0|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y8_N26
\u0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Equal0~4_combout\ = (\u0|Equal0~3_combout\ & (\u0|Equal0~1_combout\ & (\u0|Equal0~2_combout\ & \u0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~3_combout\,
	datab => \u0|Equal0~1_combout\,
	datac => \u0|Equal0~2_combout\,
	datad => \u0|Equal0~0_combout\,
	combout => \u0|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y5_N2
\u6|temp_a~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~38_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_b\(5))) # (!\u10|acc_xchg~combout\ & (((\u0|ibus_out[5]~22_combout\ & \u10|bus_to_a~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(5),
	datab => \u10|acc_xchg~combout\,
	datac => \u0|ibus_out[5]~22_combout\,
	datad => \u10|bus_to_a~4_combout\,
	combout => \u6|temp_a~38_combout\);

-- Location: LCCOMB_X24_Y5_N24
\u6|temp_a[12]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a[12]~32_combout\ = (\rst~input_o\) # ((\u10|acc_xchg~combout\) # (\u10|bus_to_a~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \u10|acc_xchg~combout\,
	datad => \u10|bus_to_a~4_combout\,
	combout => \u6|temp_a[12]~32_combout\);

-- Location: FF_X23_Y5_N3
\u6|temp_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~38_combout\,
	ena => \u6|temp_a[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(5));

-- Location: LCCOMB_X23_Y5_N10
\u6|temp_b~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~38_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_a\(5))) # (!\u10|acc_xchg~combout\ & (((\u0|ibus_out[5]~22_combout\ & \u10|bus_to_b~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \u6|temp_a\(5),
	datac => \u0|ibus_out[5]~22_combout\,
	datad => \u10|bus_to_b~1_combout\,
	combout => \u6|temp_b~38_combout\);

-- Location: FF_X23_Y5_N11
\u6|temp_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~38_combout\,
	ena => \u6|temp_b[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(5));

-- Location: LCCOMB_X24_Y8_N10
\u8|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal6~0_combout\ = (!\u8|tmp\(3) & (\u8|tmp\(0) & (\u8|tmp\(2) & \u8|tmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(3),
	datab => \u8|tmp\(0),
	datac => \u8|tmp\(2),
	datad => \u8|tmp\(1),
	combout => \u8|Equal6~0_combout\);

-- Location: LCCOMB_X23_Y8_N28
\u8|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal6~1_combout\ = (\u8|Equal0~0_combout\ & (\u8|Equal0~2_combout\ & (\u8|Equal6~0_combout\ & \u8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~0_combout\,
	datab => \u8|Equal0~2_combout\,
	datac => \u8|Equal6~0_combout\,
	datad => \u8|Equal0~1_combout\,
	combout => \u8|Equal6~1_combout\);

-- Location: LCCOMB_X23_Y8_N20
\u10|a_to_bus~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|a_to_bus~0_combout\ = (\u9|temp\(3) & ((\u8|Equal8~1_combout\) # ((\u8|Equal1~1_combout\) # (\u8|Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal8~1_combout\,
	datab => \u8|Equal1~1_combout\,
	datac => \u9|temp\(3),
	datad => \u8|Equal6~1_combout\,
	combout => \u10|a_to_bus~0_combout\);

-- Location: LCCOMB_X22_Y8_N28
\u0|saves[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[5]~29_combout\ = (\u0|Equal0~4_combout\ & ((\u10|a_to_bus~0_combout\ & ((\u6|temp_a\(5)))) # (!\u10|a_to_bus~0_combout\ & (\u6|temp_b\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~4_combout\,
	datab => \u6|temp_b\(5),
	datac => \u10|a_to_bus~0_combout\,
	datad => \u6|temp_a\(5),
	combout => \u0|saves[5]~29_combout\);

-- Location: LCCOMB_X23_Y4_N20
\u7|temp~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~25_combout\ = (\u6|temp_a\(5) & ((\u0|saves[5]~30_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|saves[5]~30_combout\,
	datac => \u6|temp_a\(5),
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|temp~25_combout\);

-- Location: LCCOMB_X25_Y8_N24
\u10|alu_and\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|alu_and~combout\ = (\u9|temp\(4) & (!\u8|tmp\(0) & \u8|Equal11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(4),
	datab => \u8|tmp\(0),
	datac => \u8|Equal11~0_combout\,
	combout => \u10|alu_and~combout\);

-- Location: LCCOMB_X25_Y8_N8
\u8|Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal7~2_combout\ = (!\u8|tmp\(1) & (!\u8|tmp\(0) & \u8|Equal7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(1),
	datac => \u8|tmp\(0),
	datad => \u8|Equal7~1_combout\,
	combout => \u8|Equal7~2_combout\);

-- Location: LCCOMB_X25_Y8_N26
\u10|alu_shr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|alu_shr~0_combout\ = (\u9|temp\(3) & ((\u8|Equal7~2_combout\) # (\u8|Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(3),
	datac => \u8|Equal7~2_combout\,
	datad => \u8|Equal6~1_combout\,
	combout => \u10|alu_shr~0_combout\);

-- Location: LCCOMB_X25_Y8_N10
\u7|temp[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp[13]~12_combout\ = (\u10|alu_and~combout\) # ((\u10|alu_shr~0_combout\ & \u7|temp[13]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|alu_and~combout\,
	datac => \u10|alu_shr~0_combout\,
	datad => \u7|temp[13]~6_combout\,
	combout => \u7|temp[13]~12_combout\);

-- Location: LCCOMB_X22_Y8_N14
\u7|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~17_combout\ = (\u8|Equal5~0_combout\ & (\u9|temp\(4) $ (((\u0|saves[5]~30_combout\) # (!\u0|saves[15]~20_combout\))))) # (!\u8|Equal5~0_combout\ & (((\u0|saves[5]~30_combout\) # (!\u0|saves[15]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal5~0_combout\,
	datab => \u9|temp\(4),
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[5]~30_combout\,
	combout => \u7|Add0~17_combout\);

-- Location: LCCOMB_X24_Y7_N24
\u6|temp_b~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~37_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_a\(4))) # (!\u10|acc_xchg~combout\ & (((\u10|bus_to_b~1_combout\ & \u0|ibus_out[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(4),
	datab => \u10|acc_xchg~combout\,
	datac => \u10|bus_to_b~1_combout\,
	datad => \u0|ibus_out[4]~21_combout\,
	combout => \u6|temp_b~37_combout\);

-- Location: FF_X24_Y7_N25
\u6|temp_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~37_combout\,
	ena => \u6|temp_b[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(4));

-- Location: LCCOMB_X24_Y7_N6
\u6|temp_a~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~37_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_b\(4))) # (!\u10|acc_xchg~combout\ & (((\u10|bus_to_a~4_combout\ & \u0|ibus_out[4]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(4),
	datab => \u10|bus_to_a~4_combout\,
	datac => \u10|acc_xchg~combout\,
	datad => \u0|ibus_out[4]~21_combout\,
	combout => \u6|temp_a~37_combout\);

-- Location: FF_X24_Y7_N7
\u6|temp_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~37_combout\,
	ena => \u6|temp_a[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(4));

-- Location: LCCOMB_X23_Y7_N2
\u7|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~14_combout\ = (\u9|temp\(4) & (\u8|Equal5~0_combout\ $ (((\u0|saves[4]~28_combout\) # (!\u0|saves[15]~20_combout\))))) # (!\u9|temp\(4) & (((\u0|saves[4]~28_combout\) # (!\u0|saves[15]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(4),
	datab => \u8|Equal5~0_combout\,
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[4]~28_combout\,
	combout => \u7|Add0~14_combout\);

-- Location: LCCOMB_X24_Y7_N20
\u7|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~11_combout\ = (\u8|Equal5~0_combout\ & (\u9|temp\(4) $ (((\u0|saves[3]~26_combout\) # (!\u0|saves[15]~20_combout\))))) # (!\u8|Equal5~0_combout\ & (((\u0|saves[3]~26_combout\) # (!\u0|saves[15]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal5~0_combout\,
	datab => \u9|temp\(4),
	datac => \u0|saves[3]~26_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|Add0~11_combout\);

-- Location: LCCOMB_X24_Y7_N10
\u0|ibus_out[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ibus_out[3]~20_combout\ = (\u0|saves[3]~26_combout\) # (!\u0|saves[15]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|saves[3]~26_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u0|ibus_out[3]~20_combout\);

-- Location: LCCOMB_X24_Y7_N18
\u6|temp_b~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~36_combout\ = (\u10|acc_xchg~combout\ & (((\u6|temp_a\(3))))) # (!\u10|acc_xchg~combout\ & (\u10|bus_to_b~1_combout\ & ((\u0|ibus_out[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|bus_to_b~1_combout\,
	datab => \u6|temp_a\(3),
	datac => \u10|acc_xchg~combout\,
	datad => \u0|ibus_out[3]~20_combout\,
	combout => \u6|temp_b~36_combout\);

-- Location: FF_X24_Y7_N19
\u6|temp_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~36_combout\,
	ena => \u6|temp_b[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(3));

-- Location: LCCOMB_X24_Y7_N8
\u6|temp_a~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~36_combout\ = (\u10|acc_xchg~combout\ & (((\u6|temp_b\(3))))) # (!\u10|acc_xchg~combout\ & (\u0|ibus_out[3]~20_combout\ & ((\u10|bus_to_a~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ibus_out[3]~20_combout\,
	datab => \u6|temp_b\(3),
	datac => \u10|acc_xchg~combout\,
	datad => \u10|bus_to_a~4_combout\,
	combout => \u6|temp_a~36_combout\);

-- Location: FF_X24_Y7_N9
\u6|temp_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~36_combout\,
	ena => \u6|temp_a[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(3));

-- Location: LCCOMB_X23_Y7_N12
\u7|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~8_combout\ = (\u9|temp\(4) & (\u8|Equal5~0_combout\ $ (((\u0|saves[2]~24_combout\) # (!\u0|saves[15]~20_combout\))))) # (!\u9|temp\(4) & (((\u0|saves[2]~24_combout\) # (!\u0|saves[15]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(4),
	datab => \u8|Equal5~0_combout\,
	datac => \u0|saves[2]~24_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|Add0~8_combout\);

-- Location: LCCOMB_X21_Y7_N14
\u0|ibus_out[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ibus_out[2]~19_combout\ = (\u0|saves[2]~24_combout\) # (!\u0|saves[15]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|saves[2]~24_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u0|ibus_out[2]~19_combout\);

-- Location: LCCOMB_X22_Y7_N24
\u6|temp_b~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~35_combout\ = (\u10|acc_xchg~combout\ & (((\u6|temp_a\(2))))) # (!\u10|acc_xchg~combout\ & (\u0|ibus_out[2]~19_combout\ & ((\u10|bus_to_b~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ibus_out[2]~19_combout\,
	datab => \u6|temp_a\(2),
	datac => \u10|acc_xchg~combout\,
	datad => \u10|bus_to_b~1_combout\,
	combout => \u6|temp_b~35_combout\);

-- Location: FF_X22_Y7_N25
\u6|temp_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~35_combout\,
	ena => \u6|temp_b[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(2));

-- Location: LCCOMB_X24_Y7_N2
\u6|temp_a~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~35_combout\ = (\u10|acc_xchg~combout\ & (((\u6|temp_b\(2))))) # (!\u10|acc_xchg~combout\ & (\u0|ibus_out[2]~19_combout\ & ((\u10|bus_to_a~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ibus_out[2]~19_combout\,
	datab => \u6|temp_b\(2),
	datac => \u10|acc_xchg~combout\,
	datad => \u10|bus_to_a~4_combout\,
	combout => \u6|temp_a~35_combout\);

-- Location: FF_X24_Y7_N3
\u6|temp_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~35_combout\,
	ena => \u6|temp_a[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(2));

-- Location: LCCOMB_X22_Y7_N16
\u7|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~5_combout\ = (\u9|temp\(4) & (\u8|Equal5~0_combout\ $ (((\u0|saves[1]~22_combout\) # (!\u0|saves[15]~20_combout\))))) # (!\u9|temp\(4) & (((\u0|saves[1]~22_combout\) # (!\u0|saves[15]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(4),
	datab => \u8|Equal5~0_combout\,
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[1]~22_combout\,
	combout => \u7|Add0~5_combout\);

-- Location: LCCOMB_X22_Y7_N12
\u0|saves[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[0]~0_combout\ = (\u0|Equal0~4_combout\ & ((\u10|a_to_bus~0_combout\ & (\u6|temp_a\(0))) # (!\u10|a_to_bus~0_combout\ & ((\u6|temp_b\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(0),
	datab => \u6|temp_b\(0),
	datac => \u0|Equal0~4_combout\,
	datad => \u10|a_to_bus~0_combout\,
	combout => \u0|saves[0]~0_combout\);

-- Location: LCCOMB_X25_Y8_N30
\u7|temp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~7_combout\ = (\u9|temp\(4) & (!\u8|tmp\(0) & (\u8|Equal11~0_combout\ & \u6|temp_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(4),
	datab => \u8|tmp\(0),
	datac => \u8|Equal11~0_combout\,
	datad => \u6|temp_a\(0),
	combout => \u7|temp~7_combout\);

-- Location: LCCOMB_X23_Y7_N0
\u7|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~0_combout\ = (\u0|saves[0]~14_combout\ & (((!\u9|temp\(4))) # (!\u8|Equal5~0_combout\))) # (!\u0|saves[0]~14_combout\ & (\u0|saves[15]~20_combout\ $ (((!\u9|temp\(4)) # (!\u8|Equal5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[0]~14_combout\,
	datab => \u8|Equal5~0_combout\,
	datac => \u9|temp\(4),
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|Add0~0_combout\);

-- Location: LCCOMB_X23_Y7_N16
\u7|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~2_cout\ = CARRY((\u9|temp\(4) & \u8|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(4),
	datab => \u8|Equal5~0_combout\,
	datad => VCC,
	cout => \u7|Add0~2_cout\);

-- Location: LCCOMB_X23_Y7_N18
\u7|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~3_combout\ = (\u6|temp_a\(0) & ((\u7|Add0~0_combout\ & (\u7|Add0~2_cout\ & VCC)) # (!\u7|Add0~0_combout\ & (!\u7|Add0~2_cout\)))) # (!\u6|temp_a\(0) & ((\u7|Add0~0_combout\ & (!\u7|Add0~2_cout\)) # (!\u7|Add0~0_combout\ & ((\u7|Add0~2_cout\) # 
-- (GND)))))
-- \u7|Add0~4\ = CARRY((\u6|temp_a\(0) & (!\u7|Add0~0_combout\ & !\u7|Add0~2_cout\)) # (!\u6|temp_a\(0) & ((!\u7|Add0~2_cout\) # (!\u7|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(0),
	datab => \u7|Add0~0_combout\,
	datad => VCC,
	cin => \u7|Add0~2_cout\,
	combout => \u7|Add0~3_combout\,
	cout => \u7|Add0~4\);

-- Location: LCCOMB_X21_Y7_N4
\u7|temp~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~58_combout\ = (\u7|temp~5_combout\ & (\u7|temp\(0))) # (!\u7|temp~5_combout\ & ((\u9|temp\(4) & ((\u7|Add0~3_combout\))) # (!\u9|temp\(4) & (\u7|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(0),
	datab => \u7|temp~5_combout\,
	datac => \u9|temp\(4),
	datad => \u7|Add0~3_combout\,
	combout => \u7|temp~58_combout\);

-- Location: LCCOMB_X21_Y7_N18
\u7|temp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~9_combout\ = (\u10|alu_shr~0_combout\ & ((\u0|saves[1]~22_combout\) # ((!\u0|saves[15]~20_combout\)))) # (!\u10|alu_shr~0_combout\ & (((\u7|temp~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[1]~22_combout\,
	datab => \u10|alu_shr~0_combout\,
	datac => \u7|temp~58_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|temp~9_combout\);

-- Location: LCCOMB_X21_Y7_N12
\u7|temp~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~10_combout\ = (\u7|temp~7_combout\ & ((\u0|ibus_out[0]~17_combout\) # ((\u7|temp[13]~6_combout\ & \u7|temp~9_combout\)))) # (!\u7|temp~7_combout\ & (((\u7|temp[13]~6_combout\ & \u7|temp~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp~7_combout\,
	datab => \u0|ibus_out[0]~17_combout\,
	datac => \u7|temp[13]~6_combout\,
	datad => \u7|temp~9_combout\,
	combout => \u7|temp~10_combout\);

-- Location: FF_X21_Y7_N13
\u7|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(0));

-- Location: LCCOMB_X23_Y7_N10
\u0|saves[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[0]~14_combout\ = (\u0|saves[0]~0_combout\) # ((\u5|temp\(0)) # ((\u7|temp\(0) & \u0|saves[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[0]~0_combout\,
	datab => \u7|temp\(0),
	datac => \u5|temp\(0),
	datad => \u0|saves[0]~13_combout\,
	combout => \u0|saves[0]~14_combout\);

-- Location: LCCOMB_X22_Y7_N26
\u0|ibus_out[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ibus_out[0]~17_combout\ = (\u0|saves[0]~14_combout\) # (!\u0|saves[15]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[0]~14_combout\,
	combout => \u0|ibus_out[0]~17_combout\);

-- Location: LCCOMB_X23_Y5_N24
\u6|temp_b~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~33_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_a\(0))) # (!\u10|acc_xchg~combout\ & (((\u0|ibus_out[0]~17_combout\ & \u10|bus_to_b~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \u6|temp_a\(0),
	datac => \u0|ibus_out[0]~17_combout\,
	datad => \u10|bus_to_b~1_combout\,
	combout => \u6|temp_b~33_combout\);

-- Location: FF_X23_Y5_N25
\u6|temp_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~33_combout\,
	ena => \u6|temp_b[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(0));

-- Location: LCCOMB_X23_Y5_N12
\u6|temp_a~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~33_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_b\(0))) # (!\u10|acc_xchg~combout\ & (((\u0|ibus_out[0]~17_combout\ & \u10|bus_to_a~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \u6|temp_b\(0),
	datac => \u0|ibus_out[0]~17_combout\,
	datad => \u10|bus_to_a~4_combout\,
	combout => \u6|temp_a~33_combout\);

-- Location: FF_X23_Y5_N13
\u6|temp_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~33_combout\,
	ena => \u6|temp_a[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(0));

-- Location: LCCOMB_X23_Y7_N20
\u7|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~6_combout\ = ((\u7|Add0~5_combout\ $ (\u6|temp_a\(1) $ (!\u7|Add0~4\)))) # (GND)
-- \u7|Add0~7\ = CARRY((\u7|Add0~5_combout\ & ((\u6|temp_a\(1)) # (!\u7|Add0~4\))) # (!\u7|Add0~5_combout\ & (\u6|temp_a\(1) & !\u7|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Add0~5_combout\,
	datab => \u6|temp_a\(1),
	datad => VCC,
	cin => \u7|Add0~4\,
	combout => \u7|Add0~6_combout\,
	cout => \u7|Add0~7\);

-- Location: LCCOMB_X23_Y7_N22
\u7|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~9_combout\ = (\u7|Add0~8_combout\ & ((\u6|temp_a\(2) & (\u7|Add0~7\ & VCC)) # (!\u6|temp_a\(2) & (!\u7|Add0~7\)))) # (!\u7|Add0~8_combout\ & ((\u6|temp_a\(2) & (!\u7|Add0~7\)) # (!\u6|temp_a\(2) & ((\u7|Add0~7\) # (GND)))))
-- \u7|Add0~10\ = CARRY((\u7|Add0~8_combout\ & (!\u6|temp_a\(2) & !\u7|Add0~7\)) # (!\u7|Add0~8_combout\ & ((!\u7|Add0~7\) # (!\u6|temp_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Add0~8_combout\,
	datab => \u6|temp_a\(2),
	datad => VCC,
	cin => \u7|Add0~7\,
	combout => \u7|Add0~9_combout\,
	cout => \u7|Add0~10\);

-- Location: LCCOMB_X23_Y7_N24
\u7|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~12_combout\ = ((\u7|Add0~11_combout\ $ (\u6|temp_a\(3) $ (!\u7|Add0~10\)))) # (GND)
-- \u7|Add0~13\ = CARRY((\u7|Add0~11_combout\ & ((\u6|temp_a\(3)) # (!\u7|Add0~10\))) # (!\u7|Add0~11_combout\ & (\u6|temp_a\(3) & !\u7|Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Add0~11_combout\,
	datab => \u6|temp_a\(3),
	datad => VCC,
	cin => \u7|Add0~10\,
	combout => \u7|Add0~12_combout\,
	cout => \u7|Add0~13\);

-- Location: LCCOMB_X23_Y7_N26
\u7|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~15_combout\ = (\u6|temp_a\(4) & ((\u7|Add0~14_combout\ & (\u7|Add0~13\ & VCC)) # (!\u7|Add0~14_combout\ & (!\u7|Add0~13\)))) # (!\u6|temp_a\(4) & ((\u7|Add0~14_combout\ & (!\u7|Add0~13\)) # (!\u7|Add0~14_combout\ & ((\u7|Add0~13\) # (GND)))))
-- \u7|Add0~16\ = CARRY((\u6|temp_a\(4) & (!\u7|Add0~14_combout\ & !\u7|Add0~13\)) # (!\u6|temp_a\(4) & ((!\u7|Add0~13\) # (!\u7|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(4),
	datab => \u7|Add0~14_combout\,
	datad => VCC,
	cin => \u7|Add0~13\,
	combout => \u7|Add0~15_combout\,
	cout => \u7|Add0~16\);

-- Location: LCCOMB_X23_Y7_N28
\u7|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~18_combout\ = ((\u6|temp_a\(5) $ (\u7|Add0~17_combout\ $ (!\u7|Add0~16\)))) # (GND)
-- \u7|Add0~19\ = CARRY((\u6|temp_a\(5) & ((\u7|Add0~17_combout\) # (!\u7|Add0~16\))) # (!\u6|temp_a\(5) & (\u7|Add0~17_combout\ & !\u7|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(5),
	datab => \u7|Add0~17_combout\,
	datad => VCC,
	cin => \u7|Add0~16\,
	combout => \u7|Add0~18_combout\,
	cout => \u7|Add0~19\);

-- Location: LCCOMB_X23_Y4_N18
\u7|temp~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~26_combout\ = (\u7|temp[13]~6_combout\ & (((\u7|temp[13]~12_combout\) # (\u7|Add0~18_combout\)))) # (!\u7|temp[13]~6_combout\ & (\u0|ibus_out[4]~21_combout\ & (!\u7|temp[13]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ibus_out[4]~21_combout\,
	datab => \u7|temp[13]~6_combout\,
	datac => \u7|temp[13]~12_combout\,
	datad => \u7|Add0~18_combout\,
	combout => \u7|temp~26_combout\);

-- Location: LCCOMB_X23_Y4_N16
\u7|temp~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~27_combout\ = (\u7|temp[13]~12_combout\ & ((\u7|temp~26_combout\ & (\u0|ibus_out[6]~23_combout\)) # (!\u7|temp~26_combout\ & ((\u7|temp~25_combout\))))) # (!\u7|temp[13]~12_combout\ & (((\u7|temp~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ibus_out[6]~23_combout\,
	datab => \u7|temp~25_combout\,
	datac => \u7|temp[13]~12_combout\,
	datad => \u7|temp~26_combout\,
	combout => \u7|temp~27_combout\);

-- Location: LCCOMB_X25_Y8_N12
\u7|temp[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp[13]~4_combout\ = (!\u8|Equal6~1_combout\ & (((\u8|tmp\(1) & \u8|tmp\(0))) # (!\u8|Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(1),
	datab => \u8|Equal6~1_combout\,
	datac => \u8|tmp\(0),
	datad => \u8|Equal7~1_combout\,
	combout => \u7|temp[13]~4_combout\);

-- Location: LCCOMB_X21_Y7_N28
\u7|temp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~8_combout\ = (\u7|temp~5_combout\) # (!\u9|temp\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u9|temp\(4),
	datad => \u7|temp~5_combout\,
	combout => \u7|temp~8_combout\);

-- Location: LCCOMB_X22_Y7_N18
\u7|temp[13]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp[13]~15_combout\ = \u10|alu_and~combout\ $ ((((!\u7|temp[13]~4_combout\ & \u9|temp\(3))) # (!\u7|temp~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[13]~4_combout\,
	datab => \u7|temp~8_combout\,
	datac => \u9|temp\(3),
	datad => \u10|alu_and~combout\,
	combout => \u7|temp[13]~15_combout\);

-- Location: FF_X23_Y4_N17
\u7|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~27_combout\,
	ena => \u7|temp[13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(5));

-- Location: LCCOMB_X22_Y8_N18
\u0|saves[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[5]~30_combout\ = (\u5|temp\(5)) # ((\u0|saves[5]~29_combout\) # ((\u7|temp\(5) & \u0|saves[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|temp\(5),
	datab => \u0|saves[5]~29_combout\,
	datac => \u7|temp\(5),
	datad => \u0|saves[0]~13_combout\,
	combout => \u0|saves[5]~30_combout\);

-- Location: LCCOMB_X22_Y8_N20
\u0|ibus_out[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ibus_out[5]~22_combout\ = (\u0|saves[5]~30_combout\) # (!\u0|saves[15]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[5]~30_combout\,
	combout => \u0|ibus_out[5]~22_combout\);

-- Location: LCCOMB_X25_Y7_N26
\u7|temp~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~22_combout\ = (\u6|temp_a\(4) & ((\u0|saves[4]~28_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|temp_a\(4),
	datac => \u0|saves[4]~28_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|temp~22_combout\);

-- Location: LCCOMB_X24_Y7_N26
\u7|temp~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~23_combout\ = (\u7|temp[13]~6_combout\ & (((\u7|temp[13]~12_combout\)))) # (!\u7|temp[13]~6_combout\ & ((\u7|temp[13]~12_combout\ & ((\u7|temp~22_combout\))) # (!\u7|temp[13]~12_combout\ & (\u0|ibus_out[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ibus_out[3]~20_combout\,
	datab => \u7|temp[13]~6_combout\,
	datac => \u7|temp[13]~12_combout\,
	datad => \u7|temp~22_combout\,
	combout => \u7|temp~23_combout\);

-- Location: LCCOMB_X23_Y7_N4
\u7|temp~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~24_combout\ = (\u7|temp[13]~6_combout\ & ((\u7|temp~23_combout\ & (\u0|ibus_out[5]~22_combout\)) # (!\u7|temp~23_combout\ & ((\u7|Add0~15_combout\))))) # (!\u7|temp[13]~6_combout\ & (((\u7|temp~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[13]~6_combout\,
	datab => \u0|ibus_out[5]~22_combout\,
	datac => \u7|Add0~15_combout\,
	datad => \u7|temp~23_combout\,
	combout => \u7|temp~24_combout\);

-- Location: FF_X23_Y7_N5
\u7|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~24_combout\,
	ena => \u7|temp[13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(4));

-- Location: LCCOMB_X24_Y7_N22
\u0|saves[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[4]~27_combout\ = (\u0|Equal0~4_combout\ & ((\u10|a_to_bus~0_combout\ & (\u6|temp_a\(4))) # (!\u10|a_to_bus~0_combout\ & ((\u6|temp_b\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(4),
	datab => \u6|temp_b\(4),
	datac => \u0|Equal0~4_combout\,
	datad => \u10|a_to_bus~0_combout\,
	combout => \u0|saves[4]~27_combout\);

-- Location: LCCOMB_X24_Y7_N16
\u0|saves[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[4]~28_combout\ = (\u5|temp\(4)) # ((\u0|saves[4]~27_combout\) # ((\u7|temp\(4) & \u0|saves[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|temp\(4),
	datab => \u7|temp\(4),
	datac => \u0|saves[0]~13_combout\,
	datad => \u0|saves[4]~27_combout\,
	combout => \u0|saves[4]~28_combout\);

-- Location: LCCOMB_X23_Y4_N28
\u0|ibus_out[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ibus_out[4]~21_combout\ = (\u0|saves[4]~28_combout\) # (!\u0|saves[15]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|saves[4]~28_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u0|ibus_out[4]~21_combout\);

-- Location: LCCOMB_X25_Y7_N8
\u7|temp~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~19_combout\ = (\u6|temp_a\(3) & ((\u0|saves[3]~26_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[15]~20_combout\,
	datab => \u0|saves[3]~26_combout\,
	datac => \u6|temp_a\(3),
	combout => \u7|temp~19_combout\);

-- Location: LCCOMB_X21_Y7_N10
\u7|temp~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~20_combout\ = (\u7|temp[13]~12_combout\ & (((\u7|temp[13]~6_combout\)))) # (!\u7|temp[13]~12_combout\ & ((\u7|temp[13]~6_combout\ & ((\u7|Add0~12_combout\))) # (!\u7|temp[13]~6_combout\ & (\u0|ibus_out[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[13]~12_combout\,
	datab => \u0|ibus_out[2]~19_combout\,
	datac => \u7|temp[13]~6_combout\,
	datad => \u7|Add0~12_combout\,
	combout => \u7|temp~20_combout\);

-- Location: LCCOMB_X21_Y7_N30
\u7|temp~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~21_combout\ = (\u7|temp[13]~12_combout\ & ((\u7|temp~20_combout\ & (\u0|ibus_out[4]~21_combout\)) # (!\u7|temp~20_combout\ & ((\u7|temp~19_combout\))))) # (!\u7|temp[13]~12_combout\ & (((\u7|temp~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ibus_out[4]~21_combout\,
	datab => \u7|temp[13]~12_combout\,
	datac => \u7|temp~19_combout\,
	datad => \u7|temp~20_combout\,
	combout => \u7|temp~21_combout\);

-- Location: FF_X21_Y7_N31
\u7|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~21_combout\,
	ena => \u7|temp[13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(3));

-- Location: LCCOMB_X24_Y7_N30
\u0|saves[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[3]~25_combout\ = (\u0|Equal0~4_combout\ & ((\u10|a_to_bus~0_combout\ & (\u6|temp_a\(3))) # (!\u10|a_to_bus~0_combout\ & ((\u6|temp_b\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(3),
	datab => \u6|temp_b\(3),
	datac => \u0|Equal0~4_combout\,
	datad => \u10|a_to_bus~0_combout\,
	combout => \u0|saves[3]~25_combout\);

-- Location: LCCOMB_X24_Y7_N4
\u0|saves[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[3]~26_combout\ = (\u5|temp\(3)) # ((\u0|saves[3]~25_combout\) # ((\u7|temp\(3) & \u0|saves[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(3),
	datab => \u5|temp\(3),
	datac => \u0|saves[0]~13_combout\,
	datad => \u0|saves[3]~25_combout\,
	combout => \u0|saves[3]~26_combout\);

-- Location: LCCOMB_X24_Y8_N30
\u8|tmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~2_combout\ = (!\rst~input_o\ & ((\u0|saves[3]~26_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[3]~26_combout\,
	combout => \u8|tmp~2_combout\);

-- Location: FF_X24_Y8_N31
\u8|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|tmp~2_combout\,
	ena => \u8|tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(3));

-- Location: LCCOMB_X24_Y8_N0
\u8|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal8~0_combout\ = (\u8|tmp\(3) & (\u8|tmp\(0) & (!\u8|tmp\(2) & !\u8|tmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(3),
	datab => \u8|tmp\(0),
	datac => \u8|tmp\(2),
	datad => \u8|tmp\(1),
	combout => \u8|Equal8~0_combout\);

-- Location: LCCOMB_X23_Y8_N2
\u8|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal8~1_combout\ = (\u8|Equal0~0_combout\ & (\u8|Equal0~2_combout\ & (\u8|Equal8~0_combout\ & \u8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~0_combout\,
	datab => \u8|Equal0~2_combout\,
	datac => \u8|Equal8~0_combout\,
	datad => \u8|Equal0~1_combout\,
	combout => \u8|Equal8~1_combout\);

-- Location: LCCOMB_X26_Y8_N22
\u10|bus_to_a~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|bus_to_a~5_combout\ = (\u8|Equal8~1_combout\) # ((\u8|tmp\(1) & (\u8|tmp\(0) & \u8|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(1),
	datab => \u8|tmp\(0),
	datac => \u8|Equal8~1_combout\,
	datad => \u8|Equal0~4_combout\,
	combout => \u10|bus_to_a~5_combout\);

-- Location: LCCOMB_X26_Y8_N12
\u8|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal0~5_combout\ = (\u8|tmp\(0) & \u8|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u8|tmp\(0),
	datad => \u8|Equal0~4_combout\,
	combout => \u8|Equal0~5_combout\);

-- Location: LCCOMB_X26_Y8_N28
\u10|bus_to_a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|bus_to_a~2_combout\ = (!\u8|tmp\(2) & (\u9|temp\(3) & (!\u8|tmp\(1) & \u8|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(2),
	datab => \u9|temp\(3),
	datac => \u8|tmp\(1),
	datad => \u8|Equal0~5_combout\,
	combout => \u10|bus_to_a~2_combout\);

-- Location: LCCOMB_X26_Y8_N0
\u10|bus_to_a~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|bus_to_a~4_combout\ = (\u10|bus_to_a~3_combout\) # ((\u10|bus_to_a~2_combout\) # ((\u9|temp\(4) & \u10|bus_to_a~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|bus_to_a~3_combout\,
	datab => \u9|temp\(4),
	datac => \u10|bus_to_a~5_combout\,
	datad => \u10|bus_to_a~2_combout\,
	combout => \u10|bus_to_a~4_combout\);

-- Location: LCCOMB_X24_Y5_N12
\u6|temp_a~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~44_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_b\(11))) # (!\u10|acc_xchg~combout\ & (((\u0|ibus_out[11]~28_combout\ & \u10|bus_to_a~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(11),
	datab => \u10|acc_xchg~combout\,
	datac => \u0|ibus_out[11]~28_combout\,
	datad => \u10|bus_to_a~4_combout\,
	combout => \u6|temp_a~44_combout\);

-- Location: FF_X24_Y5_N13
\u6|temp_a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~44_combout\,
	ena => \u6|temp_a[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(11));

-- Location: LCCOMB_X22_Y6_N26
\u0|saves[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[11]~41_combout\ = (\u0|Equal0~4_combout\ & ((\u10|a_to_bus~0_combout\ & (\u6|temp_a\(11))) # (!\u10|a_to_bus~0_combout\ & ((\u6|temp_b\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(11),
	datab => \u0|Equal0~4_combout\,
	datac => \u10|a_to_bus~0_combout\,
	datad => \u6|temp_b\(11),
	combout => \u0|saves[11]~41_combout\);

-- Location: LCCOMB_X22_Y6_N14
\u7|temp~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~43_combout\ = (\u6|temp_a\(11) & ((\u0|saves[11]~42_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(11),
	datac => \u0|saves[11]~42_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|temp~43_combout\);

-- Location: LCCOMB_X23_Y5_N0
\u6|temp_b~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~46_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_a\(13))) # (!\u10|acc_xchg~combout\ & (((\u0|ibus_out[13]~30_combout\ & \u10|bus_to_b~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \u6|temp_a\(13),
	datac => \u0|ibus_out[13]~30_combout\,
	datad => \u10|bus_to_b~1_combout\,
	combout => \u6|temp_b~46_combout\);

-- Location: FF_X23_Y5_N1
\u6|temp_b[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~46_combout\,
	ena => \u6|temp_b[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(13));

-- Location: LCCOMB_X23_Y5_N18
\u6|temp_a~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~46_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_b\(13))) # (!\u10|acc_xchg~combout\ & (((\u0|ibus_out[13]~30_combout\ & \u10|bus_to_a~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \u6|temp_b\(13),
	datac => \u0|ibus_out[13]~30_combout\,
	datad => \u10|bus_to_a~4_combout\,
	combout => \u6|temp_a~46_combout\);

-- Location: FF_X23_Y5_N19
\u6|temp_a[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~46_combout\,
	ena => \u6|temp_a[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(13));

-- Location: LCCOMB_X24_Y6_N12
\u7|temp~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~49_combout\ = (\u6|temp_a\(13) & ((\u0|saves[13]~46_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[13]~46_combout\,
	datab => \u6|temp_a\(13),
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|temp~49_combout\);

-- Location: LCCOMB_X24_Y6_N10
\u7|temp~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~50_combout\ = (\u7|temp[13]~6_combout\ & (((\u7|temp[13]~12_combout\)))) # (!\u7|temp[13]~6_combout\ & ((\u7|temp[13]~12_combout\ & (\u7|temp~49_combout\)) # (!\u7|temp[13]~12_combout\ & ((\u0|ibus_out[12]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp~49_combout\,
	datab => \u7|temp[13]~6_combout\,
	datac => \u0|ibus_out[12]~29_combout\,
	datad => \u7|temp[13]~12_combout\,
	combout => \u7|temp~50_combout\);

-- Location: LCCOMB_X22_Y8_N0
\u0|ibus_out[14]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ibus_out[14]~31_combout\ = (\u0|saves[14]~48_combout\) # (!\u0|saves[15]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[14]~48_combout\,
	combout => \u0|ibus_out[14]~31_combout\);

-- Location: LCCOMB_X22_Y6_N2
\u7|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~41_combout\ = (\u0|saves[13]~46_combout\ & (((!\u8|Equal5~0_combout\)) # (!\u9|temp\(4)))) # (!\u0|saves[13]~46_combout\ & (\u0|saves[15]~20_combout\ $ (((!\u8|Equal5~0_combout\) # (!\u9|temp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[13]~46_combout\,
	datab => \u9|temp\(4),
	datac => \u8|Equal5~0_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|Add0~41_combout\);

-- Location: LCCOMB_X24_Y5_N14
\u6|temp_b~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~45_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_a\(12))) # (!\u10|acc_xchg~combout\ & (((\u0|ibus_out[12]~29_combout\ & \u10|bus_to_b~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \u6|temp_a\(12),
	datac => \u0|ibus_out[12]~29_combout\,
	datad => \u10|bus_to_b~1_combout\,
	combout => \u6|temp_b~45_combout\);

-- Location: FF_X24_Y5_N15
\u6|temp_b[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~45_combout\,
	ena => \u6|temp_b[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(12));

-- Location: LCCOMB_X24_Y5_N18
\u6|temp_a~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~45_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_b\(12))) # (!\u10|acc_xchg~combout\ & (((\u0|ibus_out[12]~29_combout\ & \u10|bus_to_a~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(12),
	datab => \u10|acc_xchg~combout\,
	datac => \u0|ibus_out[12]~29_combout\,
	datad => \u10|bus_to_a~4_combout\,
	combout => \u6|temp_a~45_combout\);

-- Location: FF_X24_Y5_N19
\u6|temp_a[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~45_combout\,
	ena => \u6|temp_a[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(12));

-- Location: LCCOMB_X22_Y6_N22
\u7|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~38_combout\ = (\u8|Equal5~0_combout\ & (\u9|temp\(4) $ (((\u0|saves[12]~44_combout\) # (!\u0|saves[15]~20_combout\))))) # (!\u8|Equal5~0_combout\ & (((\u0|saves[12]~44_combout\) # (!\u0|saves[15]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal5~0_combout\,
	datab => \u9|temp\(4),
	datac => \u0|saves[12]~44_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|Add0~38_combout\);

-- Location: LCCOMB_X22_Y6_N28
\u7|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~35_combout\ = (\u8|Equal5~0_combout\ & (\u9|temp\(4) $ (((\u0|saves[11]~42_combout\) # (!\u0|saves[15]~20_combout\))))) # (!\u8|Equal5~0_combout\ & (((\u0|saves[11]~42_combout\) # (!\u0|saves[15]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal5~0_combout\,
	datab => \u9|temp\(4),
	datac => \u0|saves[11]~42_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|Add0~35_combout\);

-- Location: LCCOMB_X22_Y5_N2
\u7|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~32_combout\ = (\u8|Equal5~0_combout\ & (\u9|temp\(4) $ (((\u0|saves[10]~40_combout\) # (!\u0|saves[15]~20_combout\))))) # (!\u8|Equal5~0_combout\ & (((\u0|saves[10]~40_combout\) # (!\u0|saves[15]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal5~0_combout\,
	datab => \u9|temp\(4),
	datac => \u0|saves[10]~40_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|Add0~32_combout\);

-- Location: LCCOMB_X22_Y5_N26
\u0|ibus_out[10]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ibus_out[10]~27_combout\ = (\u0|saves[10]~40_combout\) # (!\u0|saves[15]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|saves[10]~40_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u0|ibus_out[10]~27_combout\);

-- Location: LCCOMB_X24_Y5_N6
\u6|temp_b~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~43_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_a\(10))) # (!\u10|acc_xchg~combout\ & (((\u0|ibus_out[10]~27_combout\ & \u10|bus_to_b~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(10),
	datab => \u10|acc_xchg~combout\,
	datac => \u0|ibus_out[10]~27_combout\,
	datad => \u10|bus_to_b~1_combout\,
	combout => \u6|temp_b~43_combout\);

-- Location: FF_X24_Y5_N7
\u6|temp_b[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~43_combout\,
	ena => \u6|temp_b[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(10));

-- Location: LCCOMB_X24_Y5_N26
\u6|temp_a~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~43_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_b\(10))) # (!\u10|acc_xchg~combout\ & (((\u10|bus_to_a~4_combout\ & \u0|ibus_out[10]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(10),
	datab => \u10|bus_to_a~4_combout\,
	datac => \u0|ibus_out[10]~27_combout\,
	datad => \u10|acc_xchg~combout\,
	combout => \u6|temp_a~43_combout\);

-- Location: FF_X24_Y5_N27
\u6|temp_a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~43_combout\,
	ena => \u6|temp_a[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(10));

-- Location: LCCOMB_X22_Y6_N16
\u7|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~29_combout\ = (\u8|Equal5~0_combout\ & (\u9|temp\(4) $ (((\u0|saves[9]~38_combout\) # (!\u0|saves[15]~20_combout\))))) # (!\u8|Equal5~0_combout\ & (((\u0|saves[9]~38_combout\) # (!\u0|saves[15]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal5~0_combout\,
	datab => \u9|temp\(4),
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[9]~38_combout\,
	combout => \u7|Add0~29_combout\);

-- Location: LCCOMB_X24_Y5_N28
\u6|temp_b~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~42_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_a\(9))) # (!\u10|acc_xchg~combout\ & (((\u0|ibus_out[9]~26_combout\ & \u10|bus_to_b~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(9),
	datab => \u10|acc_xchg~combout\,
	datac => \u0|ibus_out[9]~26_combout\,
	datad => \u10|bus_to_b~1_combout\,
	combout => \u6|temp_b~42_combout\);

-- Location: FF_X24_Y5_N29
\u6|temp_b[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~42_combout\,
	ena => \u6|temp_b[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(9));

-- Location: LCCOMB_X24_Y5_N0
\u6|temp_a~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~42_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_b\(9))) # (!\u10|acc_xchg~combout\ & (((\u0|ibus_out[9]~26_combout\ & \u10|bus_to_a~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(9),
	datab => \u10|acc_xchg~combout\,
	datac => \u0|ibus_out[9]~26_combout\,
	datad => \u10|bus_to_a~4_combout\,
	combout => \u6|temp_a~42_combout\);

-- Location: FF_X24_Y5_N1
\u6|temp_a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~42_combout\,
	ena => \u6|temp_a[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(9));

-- Location: LCCOMB_X22_Y5_N18
\u6|temp_b~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~41_combout\ = (\u10|acc_xchg~combout\ & (((\u6|temp_a\(8))))) # (!\u10|acc_xchg~combout\ & (\u0|ibus_out[8]~25_combout\ & ((\u10|bus_to_b~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \u0|ibus_out[8]~25_combout\,
	datac => \u6|temp_a\(8),
	datad => \u10|bus_to_b~1_combout\,
	combout => \u6|temp_b~41_combout\);

-- Location: FF_X22_Y5_N19
\u6|temp_b[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~41_combout\,
	ena => \u6|temp_b[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(8));

-- Location: LCCOMB_X23_Y5_N8
\u6|temp_a~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~41_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_b\(8))) # (!\u10|acc_xchg~combout\ & (((\u0|ibus_out[8]~25_combout\ & \u10|bus_to_a~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \u6|temp_b\(8),
	datac => \u0|ibus_out[8]~25_combout\,
	datad => \u10|bus_to_a~4_combout\,
	combout => \u6|temp_a~41_combout\);

-- Location: FF_X23_Y5_N9
\u6|temp_a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~41_combout\,
	ena => \u6|temp_a[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(8));

-- Location: LCCOMB_X22_Y5_N0
\u7|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~26_combout\ = (\u8|Equal5~0_combout\ & (\u9|temp\(4) $ (((\u0|saves[8]~36_combout\) # (!\u0|saves[15]~20_combout\))))) # (!\u8|Equal5~0_combout\ & (((\u0|saves[8]~36_combout\) # (!\u0|saves[15]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal5~0_combout\,
	datab => \u9|temp\(4),
	datac => \u0|saves[8]~36_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|Add0~26_combout\);

-- Location: LCCOMB_X22_Y8_N22
\u7|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~23_combout\ = (\u8|Equal5~0_combout\ & (\u9|temp\(4) $ (((\u0|saves[7]~34_combout\) # (!\u0|saves[15]~20_combout\))))) # (!\u8|Equal5~0_combout\ & (((\u0|saves[7]~34_combout\) # (!\u0|saves[15]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal5~0_combout\,
	datab => \u9|temp\(4),
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[7]~34_combout\,
	combout => \u7|Add0~23_combout\);

-- Location: LCCOMB_X23_Y4_N26
\u0|ibus_out[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ibus_out[7]~24_combout\ = (\u0|saves[7]~34_combout\) # (!\u0|saves[15]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|saves[7]~34_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u0|ibus_out[7]~24_combout\);

-- Location: LCCOMB_X22_Y5_N12
\u6|temp_b~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~40_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_a\(7))) # (!\u10|acc_xchg~combout\ & (((\u0|ibus_out[7]~24_combout\ & \u10|bus_to_b~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \u6|temp_a\(7),
	datac => \u0|ibus_out[7]~24_combout\,
	datad => \u10|bus_to_b~1_combout\,
	combout => \u6|temp_b~40_combout\);

-- Location: FF_X22_Y5_N13
\u6|temp_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~40_combout\,
	ena => \u6|temp_b[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(7));

-- Location: LCCOMB_X23_Y5_N22
\u6|temp_a~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~40_combout\ = (\u10|acc_xchg~combout\ & (((\u6|temp_b\(7))))) # (!\u10|acc_xchg~combout\ & (\u0|ibus_out[7]~24_combout\ & ((\u10|bus_to_a~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ibus_out[7]~24_combout\,
	datab => \u6|temp_b\(7),
	datac => \u10|acc_xchg~combout\,
	datad => \u10|bus_to_a~4_combout\,
	combout => \u6|temp_a~40_combout\);

-- Location: FF_X23_Y5_N23
\u6|temp_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~40_combout\,
	ena => \u6|temp_a[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(7));

-- Location: LCCOMB_X22_Y8_N4
\u7|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~20_combout\ = (\u8|Equal5~0_combout\ & (\u9|temp\(4) $ (((\u0|saves[6]~32_combout\) # (!\u0|saves[15]~20_combout\))))) # (!\u8|Equal5~0_combout\ & (((\u0|saves[6]~32_combout\) # (!\u0|saves[15]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal5~0_combout\,
	datab => \u9|temp\(4),
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[6]~32_combout\,
	combout => \u7|Add0~20_combout\);

-- Location: LCCOMB_X23_Y5_N20
\u6|temp_a~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~39_combout\ = (\u10|acc_xchg~combout\ & (((\u6|temp_b\(6))))) # (!\u10|acc_xchg~combout\ & (\u10|bus_to_a~4_combout\ & (\u0|ibus_out[6]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \u10|bus_to_a~4_combout\,
	datac => \u0|ibus_out[6]~23_combout\,
	datad => \u6|temp_b\(6),
	combout => \u6|temp_a~39_combout\);

-- Location: FF_X23_Y5_N21
\u6|temp_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~39_combout\,
	ena => \u6|temp_a[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(6));

-- Location: LCCOMB_X23_Y7_N30
\u7|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~21_combout\ = (\u7|Add0~20_combout\ & ((\u6|temp_a\(6) & (\u7|Add0~19\ & VCC)) # (!\u6|temp_a\(6) & (!\u7|Add0~19\)))) # (!\u7|Add0~20_combout\ & ((\u6|temp_a\(6) & (!\u7|Add0~19\)) # (!\u6|temp_a\(6) & ((\u7|Add0~19\) # (GND)))))
-- \u7|Add0~22\ = CARRY((\u7|Add0~20_combout\ & (!\u6|temp_a\(6) & !\u7|Add0~19\)) # (!\u7|Add0~20_combout\ & ((!\u7|Add0~19\) # (!\u6|temp_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Add0~20_combout\,
	datab => \u6|temp_a\(6),
	datad => VCC,
	cin => \u7|Add0~19\,
	combout => \u7|Add0~21_combout\,
	cout => \u7|Add0~22\);

-- Location: LCCOMB_X23_Y6_N0
\u7|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~24_combout\ = ((\u7|Add0~23_combout\ $ (\u6|temp_a\(7) $ (!\u7|Add0~22\)))) # (GND)
-- \u7|Add0~25\ = CARRY((\u7|Add0~23_combout\ & ((\u6|temp_a\(7)) # (!\u7|Add0~22\))) # (!\u7|Add0~23_combout\ & (\u6|temp_a\(7) & !\u7|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Add0~23_combout\,
	datab => \u6|temp_a\(7),
	datad => VCC,
	cin => \u7|Add0~22\,
	combout => \u7|Add0~24_combout\,
	cout => \u7|Add0~25\);

-- Location: LCCOMB_X23_Y6_N2
\u7|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~27_combout\ = (\u6|temp_a\(8) & ((\u7|Add0~26_combout\ & (\u7|Add0~25\ & VCC)) # (!\u7|Add0~26_combout\ & (!\u7|Add0~25\)))) # (!\u6|temp_a\(8) & ((\u7|Add0~26_combout\ & (!\u7|Add0~25\)) # (!\u7|Add0~26_combout\ & ((\u7|Add0~25\) # (GND)))))
-- \u7|Add0~28\ = CARRY((\u6|temp_a\(8) & (!\u7|Add0~26_combout\ & !\u7|Add0~25\)) # (!\u6|temp_a\(8) & ((!\u7|Add0~25\) # (!\u7|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(8),
	datab => \u7|Add0~26_combout\,
	datad => VCC,
	cin => \u7|Add0~25\,
	combout => \u7|Add0~27_combout\,
	cout => \u7|Add0~28\);

-- Location: LCCOMB_X23_Y6_N4
\u7|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~30_combout\ = ((\u7|Add0~29_combout\ $ (\u6|temp_a\(9) $ (!\u7|Add0~28\)))) # (GND)
-- \u7|Add0~31\ = CARRY((\u7|Add0~29_combout\ & ((\u6|temp_a\(9)) # (!\u7|Add0~28\))) # (!\u7|Add0~29_combout\ & (\u6|temp_a\(9) & !\u7|Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Add0~29_combout\,
	datab => \u6|temp_a\(9),
	datad => VCC,
	cin => \u7|Add0~28\,
	combout => \u7|Add0~30_combout\,
	cout => \u7|Add0~31\);

-- Location: LCCOMB_X23_Y6_N6
\u7|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~33_combout\ = (\u7|Add0~32_combout\ & ((\u6|temp_a\(10) & (\u7|Add0~31\ & VCC)) # (!\u6|temp_a\(10) & (!\u7|Add0~31\)))) # (!\u7|Add0~32_combout\ & ((\u6|temp_a\(10) & (!\u7|Add0~31\)) # (!\u6|temp_a\(10) & ((\u7|Add0~31\) # (GND)))))
-- \u7|Add0~34\ = CARRY((\u7|Add0~32_combout\ & (!\u6|temp_a\(10) & !\u7|Add0~31\)) # (!\u7|Add0~32_combout\ & ((!\u7|Add0~31\) # (!\u6|temp_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Add0~32_combout\,
	datab => \u6|temp_a\(10),
	datad => VCC,
	cin => \u7|Add0~31\,
	combout => \u7|Add0~33_combout\,
	cout => \u7|Add0~34\);

-- Location: LCCOMB_X23_Y6_N8
\u7|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~36_combout\ = ((\u6|temp_a\(11) $ (\u7|Add0~35_combout\ $ (!\u7|Add0~34\)))) # (GND)
-- \u7|Add0~37\ = CARRY((\u6|temp_a\(11) & ((\u7|Add0~35_combout\) # (!\u7|Add0~34\))) # (!\u6|temp_a\(11) & (\u7|Add0~35_combout\ & !\u7|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(11),
	datab => \u7|Add0~35_combout\,
	datad => VCC,
	cin => \u7|Add0~34\,
	combout => \u7|Add0~36_combout\,
	cout => \u7|Add0~37\);

-- Location: LCCOMB_X23_Y6_N10
\u7|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~39_combout\ = (\u6|temp_a\(12) & ((\u7|Add0~38_combout\ & (\u7|Add0~37\ & VCC)) # (!\u7|Add0~38_combout\ & (!\u7|Add0~37\)))) # (!\u6|temp_a\(12) & ((\u7|Add0~38_combout\ & (!\u7|Add0~37\)) # (!\u7|Add0~38_combout\ & ((\u7|Add0~37\) # (GND)))))
-- \u7|Add0~40\ = CARRY((\u6|temp_a\(12) & (!\u7|Add0~38_combout\ & !\u7|Add0~37\)) # (!\u6|temp_a\(12) & ((!\u7|Add0~37\) # (!\u7|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(12),
	datab => \u7|Add0~38_combout\,
	datad => VCC,
	cin => \u7|Add0~37\,
	combout => \u7|Add0~39_combout\,
	cout => \u7|Add0~40\);

-- Location: LCCOMB_X23_Y6_N12
\u7|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~42_combout\ = ((\u7|Add0~41_combout\ $ (\u6|temp_a\(13) $ (!\u7|Add0~40\)))) # (GND)
-- \u7|Add0~43\ = CARRY((\u7|Add0~41_combout\ & ((\u6|temp_a\(13)) # (!\u7|Add0~40\))) # (!\u7|Add0~41_combout\ & (\u6|temp_a\(13) & !\u7|Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Add0~41_combout\,
	datab => \u6|temp_a\(13),
	datad => VCC,
	cin => \u7|Add0~40\,
	combout => \u7|Add0~42_combout\,
	cout => \u7|Add0~43\);

-- Location: LCCOMB_X23_Y6_N30
\u7|temp~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~51_combout\ = (\u7|temp[13]~6_combout\ & ((\u7|temp~50_combout\ & (\u0|ibus_out[14]~31_combout\)) # (!\u7|temp~50_combout\ & ((\u7|Add0~42_combout\))))) # (!\u7|temp[13]~6_combout\ & (\u7|temp~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[13]~6_combout\,
	datab => \u7|temp~50_combout\,
	datac => \u0|ibus_out[14]~31_combout\,
	datad => \u7|Add0~42_combout\,
	combout => \u7|temp~51_combout\);

-- Location: FF_X23_Y6_N31
\u7|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~51_combout\,
	ena => \u7|temp[13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(13));

-- Location: LCCOMB_X22_Y6_N10
\u0|saves[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[13]~45_combout\ = (\u0|Equal0~4_combout\ & ((\u10|a_to_bus~0_combout\ & (\u6|temp_a\(13))) # (!\u10|a_to_bus~0_combout\ & ((\u6|temp_b\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(13),
	datab => \u6|temp_b\(13),
	datac => \u10|a_to_bus~0_combout\,
	datad => \u0|Equal0~4_combout\,
	combout => \u0|saves[13]~45_combout\);

-- Location: LCCOMB_X22_Y6_N12
\u0|saves[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[13]~46_combout\ = (\u5|temp\(13)) # ((\u0|saves[13]~45_combout\) # ((\u7|temp\(13) & \u0|saves[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(13),
	datab => \u5|temp\(13),
	datac => \u0|saves[0]~13_combout\,
	datad => \u0|saves[13]~45_combout\,
	combout => \u0|saves[13]~46_combout\);

-- Location: LCCOMB_X24_Y6_N26
\u0|ibus_out[13]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ibus_out[13]~30_combout\ = (\u0|saves[13]~46_combout\) # (!\u0|saves[15]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|saves[13]~46_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u0|ibus_out[13]~30_combout\);

-- Location: LCCOMB_X22_Y6_N0
\u7|temp~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~46_combout\ = (\u6|temp_a\(12) & ((\u0|saves[12]~44_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(12),
	datac => \u0|saves[12]~44_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|temp~46_combout\);

-- Location: LCCOMB_X24_Y6_N2
\u7|temp~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~47_combout\ = (\u7|temp[13]~6_combout\ & (((\u7|temp[13]~12_combout\)))) # (!\u7|temp[13]~6_combout\ & ((\u7|temp[13]~12_combout\ & (\u7|temp~46_combout\)) # (!\u7|temp[13]~12_combout\ & ((\u0|ibus_out[11]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp~46_combout\,
	datab => \u0|ibus_out[11]~28_combout\,
	datac => \u7|temp[13]~6_combout\,
	datad => \u7|temp[13]~12_combout\,
	combout => \u7|temp~47_combout\);

-- Location: LCCOMB_X23_Y6_N20
\u7|temp~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~48_combout\ = (\u7|temp[13]~6_combout\ & ((\u7|temp~47_combout\ & (\u0|ibus_out[13]~30_combout\)) # (!\u7|temp~47_combout\ & ((\u7|Add0~39_combout\))))) # (!\u7|temp[13]~6_combout\ & (((\u7|temp~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[13]~6_combout\,
	datab => \u0|ibus_out[13]~30_combout\,
	datac => \u7|temp~47_combout\,
	datad => \u7|Add0~39_combout\,
	combout => \u7|temp~48_combout\);

-- Location: FF_X23_Y6_N21
\u7|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~48_combout\,
	ena => \u7|temp[13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(12));

-- Location: LCCOMB_X22_Y6_N18
\u0|saves[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[12]~43_combout\ = (\u0|Equal0~4_combout\ & ((\u10|a_to_bus~0_combout\ & (\u6|temp_a\(12))) # (!\u10|a_to_bus~0_combout\ & ((\u6|temp_b\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(12),
	datab => \u6|temp_b\(12),
	datac => \u10|a_to_bus~0_combout\,
	datad => \u0|Equal0~4_combout\,
	combout => \u0|saves[12]~43_combout\);

-- Location: LCCOMB_X22_Y6_N8
\u0|saves[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[12]~44_combout\ = (\u5|temp\(12)) # ((\u0|saves[12]~43_combout\) # ((\u7|temp\(12) & \u0|saves[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(12),
	datab => \u5|temp\(12),
	datac => \u0|saves[0]~13_combout\,
	datad => \u0|saves[12]~43_combout\,
	combout => \u0|saves[12]~44_combout\);

-- Location: LCCOMB_X22_Y6_N30
\u0|ibus_out[12]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ibus_out[12]~29_combout\ = (\u0|saves[12]~44_combout\) # (!\u0|saves[15]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|saves[12]~44_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u0|ibus_out[12]~29_combout\);

-- Location: LCCOMB_X23_Y6_N18
\u7|temp~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~44_combout\ = (\u7|temp[13]~6_combout\ & ((\u7|temp[13]~12_combout\) # ((\u7|Add0~36_combout\)))) # (!\u7|temp[13]~6_combout\ & (!\u7|temp[13]~12_combout\ & ((\u0|ibus_out[10]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[13]~6_combout\,
	datab => \u7|temp[13]~12_combout\,
	datac => \u7|Add0~36_combout\,
	datad => \u0|ibus_out[10]~27_combout\,
	combout => \u7|temp~44_combout\);

-- Location: LCCOMB_X23_Y6_N22
\u7|temp~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~45_combout\ = (\u7|temp[13]~12_combout\ & ((\u7|temp~44_combout\ & ((\u0|ibus_out[12]~29_combout\))) # (!\u7|temp~44_combout\ & (\u7|temp~43_combout\)))) # (!\u7|temp[13]~12_combout\ & (((\u7|temp~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp~43_combout\,
	datab => \u0|ibus_out[12]~29_combout\,
	datac => \u7|temp[13]~12_combout\,
	datad => \u7|temp~44_combout\,
	combout => \u7|temp~45_combout\);

-- Location: FF_X23_Y6_N23
\u7|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~45_combout\,
	ena => \u7|temp[13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(11));

-- Location: LCCOMB_X22_Y6_N4
\u0|saves[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[11]~42_combout\ = (\u0|saves[11]~41_combout\) # ((\u5|temp\(11)) # ((\u7|temp\(11) & \u0|saves[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[11]~41_combout\,
	datab => \u7|temp\(11),
	datac => \u0|saves[0]~13_combout\,
	datad => \u5|temp\(11),
	combout => \u0|saves[11]~42_combout\);

-- Location: LCCOMB_X24_Y6_N24
\u0|ibus_out[11]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ibus_out[11]~28_combout\ = (\u0|saves[11]~42_combout\) # (!\u0|saves[15]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|saves[11]~42_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u0|ibus_out[11]~28_combout\);

-- Location: LCCOMB_X24_Y5_N22
\u7|temp~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~40_combout\ = (\u6|temp_a\(10) & ((\u0|saves[10]~40_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(10),
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[10]~40_combout\,
	combout => \u7|temp~40_combout\);

-- Location: LCCOMB_X24_Y5_N8
\u7|temp~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~41_combout\ = (\u7|temp[13]~6_combout\ & (((\u7|temp[13]~12_combout\)))) # (!\u7|temp[13]~6_combout\ & ((\u7|temp[13]~12_combout\ & (\u7|temp~40_combout\)) # (!\u7|temp[13]~12_combout\ & ((\u0|ibus_out[9]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp~40_combout\,
	datab => \u7|temp[13]~6_combout\,
	datac => \u0|ibus_out[9]~26_combout\,
	datad => \u7|temp[13]~12_combout\,
	combout => \u7|temp~41_combout\);

-- Location: LCCOMB_X23_Y6_N28
\u7|temp~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~42_combout\ = (\u7|temp[13]~6_combout\ & ((\u7|temp~41_combout\ & (\u0|ibus_out[11]~28_combout\)) # (!\u7|temp~41_combout\ & ((\u7|Add0~33_combout\))))) # (!\u7|temp[13]~6_combout\ & (((\u7|temp~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[13]~6_combout\,
	datab => \u0|ibus_out[11]~28_combout\,
	datac => \u7|temp~41_combout\,
	datad => \u7|Add0~33_combout\,
	combout => \u7|temp~42_combout\);

-- Location: FF_X23_Y6_N29
\u7|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~42_combout\,
	ena => \u7|temp[13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(10));

-- Location: LCCOMB_X22_Y5_N24
\u0|saves[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[10]~39_combout\ = (\u0|Equal0~4_combout\ & ((\u10|a_to_bus~0_combout\ & ((\u6|temp_a\(10)))) # (!\u10|a_to_bus~0_combout\ & (\u6|temp_b\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(10),
	datab => \u10|a_to_bus~0_combout\,
	datac => \u6|temp_a\(10),
	datad => \u0|Equal0~4_combout\,
	combout => \u0|saves[10]~39_combout\);

-- Location: LCCOMB_X22_Y5_N30
\u0|saves[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[10]~40_combout\ = (\u0|saves[10]~39_combout\) # ((\u5|temp\(10)) # ((\u7|temp\(10) & \u0|saves[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(10),
	datab => \u0|saves[10]~39_combout\,
	datac => \u5|temp\(10),
	datad => \u0|saves[0]~13_combout\,
	combout => \u0|saves[10]~40_combout\);

-- Location: LCCOMB_X24_Y8_N28
\u8|tmp~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~10_combout\ = (!\rst~input_o\ & ((\u0|saves[10]~40_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[10]~40_combout\,
	combout => \u8|tmp~10_combout\);

-- Location: FF_X24_Y8_N29
\u8|tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|tmp~10_combout\,
	ena => \u8|tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(10));

-- Location: LCCOMB_X25_Y8_N0
\u8|tmp~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~11_combout\ = (!\rst~input_o\ & ((\u0|saves[11]~42_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \u0|saves[11]~42_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u8|tmp~11_combout\);

-- Location: FF_X23_Y8_N1
\u8|tmp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u8|tmp~11_combout\,
	sload => VCC,
	ena => \u8|tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(11));

-- Location: LCCOMB_X22_Y5_N16
\u8|tmp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~8_combout\ = (!\rst~input_o\ & ((\u0|saves[8]~36_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datac => \u0|saves[8]~36_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u8|tmp~8_combout\);

-- Location: FF_X22_Y5_N17
\u8|tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|tmp~8_combout\,
	ena => \u8|tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(8));

-- Location: LCCOMB_X23_Y8_N0
\u8|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal0~1_combout\ = (!\u8|tmp\(9) & (!\u8|tmp\(10) & (!\u8|tmp\(11) & !\u8|tmp\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(9),
	datab => \u8|tmp\(10),
	datac => \u8|tmp\(11),
	datad => \u8|tmp\(8),
	combout => \u8|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y8_N16
\u8|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal7~0_combout\ = (\u8|tmp\(3) & !\u8|tmp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8|tmp\(3),
	datad => \u8|tmp\(2),
	combout => \u8|Equal7~0_combout\);

-- Location: LCCOMB_X25_Y8_N18
\u8|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal7~1_combout\ = (\u8|Equal0~1_combout\ & (\u8|Equal0~0_combout\ & (\u8|Equal0~2_combout\ & \u8|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~1_combout\,
	datab => \u8|Equal0~0_combout\,
	datac => \u8|Equal0~2_combout\,
	datad => \u8|Equal7~0_combout\,
	combout => \u8|Equal7~1_combout\);

-- Location: LCCOMB_X24_Y8_N2
\u10|acc_xchg\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|acc_xchg~combout\ = (\u9|temp\(3) & (\u8|tmp\(0) & (\u8|tmp\(1) & \u8|Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(3),
	datab => \u8|tmp\(0),
	datac => \u8|tmp\(1),
	datad => \u8|Equal7~1_combout\,
	combout => \u10|acc_xchg~combout\);

-- Location: LCCOMB_X23_Y5_N16
\u6|temp_a~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~47_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_b\(14))) # (!\u10|acc_xchg~combout\ & (((\u0|ibus_out[14]~31_combout\ & \u10|bus_to_a~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \u6|temp_b\(14),
	datac => \u0|ibus_out[14]~31_combout\,
	datad => \u10|bus_to_a~4_combout\,
	combout => \u6|temp_a~47_combout\);

-- Location: FF_X23_Y5_N17
\u6|temp_a[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~47_combout\,
	ena => \u6|temp_a[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(14));

-- Location: LCCOMB_X23_Y5_N30
\u6|temp_b~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~47_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_a\(14))) # (!\u10|acc_xchg~combout\ & (((\u0|ibus_out[14]~31_combout\ & \u10|bus_to_b~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \u6|temp_a\(14),
	datac => \u0|ibus_out[14]~31_combout\,
	datad => \u10|bus_to_b~1_combout\,
	combout => \u6|temp_b~47_combout\);

-- Location: FF_X23_Y5_N31
\u6|temp_b[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~47_combout\,
	ena => \u6|temp_b[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(14));

-- Location: LCCOMB_X22_Y5_N8
\u0|saves[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[14]~47_combout\ = (\u0|Equal0~4_combout\ & ((\u10|a_to_bus~0_combout\ & ((\u6|temp_a\(14)))) # (!\u10|a_to_bus~0_combout\ & (\u6|temp_b\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(14),
	datab => \u0|Equal0~4_combout\,
	datac => \u10|a_to_bus~0_combout\,
	datad => \u6|temp_a\(14),
	combout => \u0|saves[14]~47_combout\);

-- Location: LCCOMB_X22_Y5_N22
\u0|saves[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[14]~48_combout\ = (\u5|temp\(14)) # ((\u0|saves[14]~47_combout\) # ((\u7|temp\(14) & \u0|saves[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(14),
	datab => \u5|temp\(14),
	datac => \u0|saves[14]~47_combout\,
	datad => \u0|saves[0]~13_combout\,
	combout => \u0|saves[14]~48_combout\);

-- Location: LCCOMB_X23_Y8_N22
\u8|tmp~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~14_combout\ = (!\rst~input_o\ & ((\u0|saves[14]~48_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[15]~20_combout\,
	datab => \rst~input_o\,
	datad => \u0|saves[14]~48_combout\,
	combout => \u8|tmp~14_combout\);

-- Location: FF_X23_Y8_N23
\u8|tmp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|tmp~14_combout\,
	ena => \u8|tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(14));

-- Location: LCCOMB_X23_Y8_N18
\u8|tmp~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~12_combout\ = (!\rst~input_o\ & ((\u0|saves[12]~44_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[15]~20_combout\,
	datab => \rst~input_o\,
	datad => \u0|saves[12]~44_combout\,
	combout => \u8|tmp~12_combout\);

-- Location: FF_X23_Y8_N19
\u8|tmp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|tmp~12_combout\,
	ena => \u8|tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(12));

-- Location: LCCOMB_X24_Y8_N20
\u8|tmp~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~13_combout\ = (!\rst~input_o\ & ((\u0|saves[13]~46_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[15]~20_combout\,
	datab => \rst~input_o\,
	datac => \u0|saves[13]~46_combout\,
	combout => \u8|tmp~13_combout\);

-- Location: FF_X23_Y8_N25
\u8|tmp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u8|tmp~13_combout\,
	sload => VCC,
	ena => \u8|tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(13));

-- Location: LCCOMB_X24_Y8_N22
\u8|tmp~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~15_combout\ = (!\rst~input_o\ & ((\u0|saves[15]~50_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[15]~50_combout\,
	combout => \u8|tmp~15_combout\);

-- Location: FF_X24_Y8_N23
\u8|tmp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|tmp~15_combout\,
	ena => \u8|tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(15));

-- Location: LCCOMB_X23_Y8_N24
\u8|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal0~2_combout\ = (!\u8|tmp\(14) & (!\u8|tmp\(12) & (!\u8|tmp\(13) & !\u8|tmp\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(14),
	datab => \u8|tmp\(12),
	datac => \u8|tmp\(13),
	datad => \u8|tmp\(15),
	combout => \u8|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y8_N2
\u8|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal0~4_combout\ = (\u8|Equal0~2_combout\ & (!\u8|tmp\(3) & (\u8|Equal0~0_combout\ & \u8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~2_combout\,
	datab => \u8|tmp\(3),
	datac => \u8|Equal0~0_combout\,
	datad => \u8|Equal0~1_combout\,
	combout => \u8|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y8_N30
\u8|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal5~0_combout\ = (\u8|tmp\(2) & (!\u8|tmp\(0) & (\u8|tmp\(1) & \u8|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(2),
	datab => \u8|tmp\(0),
	datac => \u8|tmp\(1),
	datad => \u8|Equal0~4_combout\,
	combout => \u8|Equal5~0_combout\);

-- Location: LCCOMB_X26_Y8_N14
\u8|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal4~0_combout\ = (!\u8|tmp\(1) & \u8|tmp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u8|tmp\(1),
	datad => \u8|tmp\(2),
	combout => \u8|Equal4~0_combout\);

-- Location: LCCOMB_X26_Y8_N6
\u8|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal0~3_combout\ = (\u8|Equal0~2_combout\ & (\u8|Equal0~0_combout\ & \u8|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~2_combout\,
	datac => \u8|Equal0~0_combout\,
	datad => \u8|Equal0~1_combout\,
	combout => \u8|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y8_N20
\u8|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal3~0_combout\ = (!\u8|tmp\(3) & (!\u8|tmp\(0) & (\u8|Equal4~0_combout\ & \u8|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(3),
	datab => \u8|tmp\(0),
	datac => \u8|Equal4~0_combout\,
	datad => \u8|Equal0~3_combout\,
	combout => \u8|Equal3~0_combout\);

-- Location: LCCOMB_X26_Y8_N24
\u10|m_to_dr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|m_to_dr~1_combout\ = (!\u8|Equal3~0_combout\ & ((\u8|tmp\(1) $ (!\u8|tmp\(2))) # (!\u8|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~5_combout\,
	datab => \u8|tmp\(1),
	datac => \u8|tmp\(2),
	datad => \u8|Equal3~0_combout\,
	combout => \u10|m_to_dr~1_combout\);

-- Location: LCCOMB_X25_Y16_N2
\u10|m_to_dr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|m_to_dr~2_combout\ = (\u10|m_to_dr~0_combout\) # ((\u9|temp\(4) & ((\u8|Equal5~0_combout\) # (!\u10|m_to_dr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(4),
	datab => \u10|m_to_dr~0_combout\,
	datac => \u8|Equal5~0_combout\,
	datad => \u10|m_to_dr~1_combout\,
	combout => \u10|m_to_dr~2_combout\);

-- Location: FF_X21_Y8_N21
\u5|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|ram_out[9]~25_combout\,
	ena => \u10|m_to_dr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|temp\(9));

-- Location: LCCOMB_X21_Y6_N24
\u7|temp~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~37_combout\ = (\u6|temp_a\(9) & ((\u0|saves[9]~38_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(9),
	datac => \u0|saves[9]~38_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|temp~37_combout\);

-- Location: LCCOMB_X23_Y6_N24
\u7|temp~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~38_combout\ = (\u7|temp[13]~6_combout\ & ((\u7|temp[13]~12_combout\) # ((\u7|Add0~30_combout\)))) # (!\u7|temp[13]~6_combout\ & (!\u7|temp[13]~12_combout\ & ((\u0|ibus_out[8]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[13]~6_combout\,
	datab => \u7|temp[13]~12_combout\,
	datac => \u7|Add0~30_combout\,
	datad => \u0|ibus_out[8]~25_combout\,
	combout => \u7|temp~38_combout\);

-- Location: LCCOMB_X23_Y6_N26
\u7|temp~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~39_combout\ = (\u7|temp[13]~12_combout\ & ((\u7|temp~38_combout\ & ((\u0|ibus_out[10]~27_combout\))) # (!\u7|temp~38_combout\ & (\u7|temp~37_combout\)))) # (!\u7|temp[13]~12_combout\ & (((\u7|temp~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp~37_combout\,
	datab => \u0|ibus_out[10]~27_combout\,
	datac => \u7|temp[13]~12_combout\,
	datad => \u7|temp~38_combout\,
	combout => \u7|temp~39_combout\);

-- Location: FF_X23_Y6_N27
\u7|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~39_combout\,
	ena => \u7|temp[13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(9));

-- Location: LCCOMB_X22_Y6_N6
\u0|saves[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[9]~37_combout\ = (\u0|Equal0~4_combout\ & ((\u10|a_to_bus~0_combout\ & (\u6|temp_a\(9))) # (!\u10|a_to_bus~0_combout\ & ((\u6|temp_b\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(9),
	datab => \u6|temp_b\(9),
	datac => \u10|a_to_bus~0_combout\,
	datad => \u0|Equal0~4_combout\,
	combout => \u0|saves[9]~37_combout\);

-- Location: LCCOMB_X22_Y6_N20
\u0|saves[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[9]~38_combout\ = (\u5|temp\(9)) # ((\u0|saves[9]~37_combout\) # ((\u7|temp\(9) & \u0|saves[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|temp\(9),
	datab => \u7|temp\(9),
	datac => \u0|saves[0]~13_combout\,
	datad => \u0|saves[9]~37_combout\,
	combout => \u0|saves[9]~38_combout\);

-- Location: LCCOMB_X24_Y5_N30
\u0|ibus_out[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ibus_out[9]~26_combout\ = (\u0|saves[9]~38_combout\) # (!\u0|saves[15]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[9]~38_combout\,
	combout => \u0|ibus_out[9]~26_combout\);

-- Location: LCCOMB_X23_Y4_N12
\u7|temp~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~34_combout\ = (\u6|temp_a\(8) & ((\u0|saves[8]~36_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(8),
	datab => \u0|saves[8]~36_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|temp~34_combout\);

-- Location: LCCOMB_X23_Y4_N22
\u7|temp~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~35_combout\ = (\u7|temp[13]~6_combout\ & (((\u7|temp[13]~12_combout\)))) # (!\u7|temp[13]~6_combout\ & ((\u7|temp[13]~12_combout\ & ((\u7|temp~34_combout\))) # (!\u7|temp[13]~12_combout\ & (\u0|ibus_out[7]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ibus_out[7]~24_combout\,
	datab => \u7|temp[13]~6_combout\,
	datac => \u7|temp[13]~12_combout\,
	datad => \u7|temp~34_combout\,
	combout => \u7|temp~35_combout\);

-- Location: LCCOMB_X23_Y4_N10
\u7|temp~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~36_combout\ = (\u7|temp[13]~6_combout\ & ((\u7|temp~35_combout\ & (\u0|ibus_out[9]~26_combout\)) # (!\u7|temp~35_combout\ & ((\u7|Add0~27_combout\))))) # (!\u7|temp[13]~6_combout\ & (((\u7|temp~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ibus_out[9]~26_combout\,
	datab => \u7|temp[13]~6_combout\,
	datac => \u7|temp~35_combout\,
	datad => \u7|Add0~27_combout\,
	combout => \u7|temp~36_combout\);

-- Location: FF_X23_Y4_N11
\u7|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~36_combout\,
	ena => \u7|temp[13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(8));

-- Location: LCCOMB_X22_Y5_N4
\u0|saves[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[8]~35_combout\ = (\u0|Equal0~4_combout\ & ((\u10|a_to_bus~0_combout\ & ((\u6|temp_a\(8)))) # (!\u10|a_to_bus~0_combout\ & (\u6|temp_b\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(8),
	datab => \u0|Equal0~4_combout\,
	datac => \u6|temp_a\(8),
	datad => \u10|a_to_bus~0_combout\,
	combout => \u0|saves[8]~35_combout\);

-- Location: LCCOMB_X22_Y5_N14
\u0|saves[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[8]~36_combout\ = (\u5|temp\(8)) # ((\u0|saves[8]~35_combout\) # ((\u7|temp\(8) & \u0|saves[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(8),
	datab => \u5|temp\(8),
	datac => \u0|saves[8]~35_combout\,
	datad => \u0|saves[0]~13_combout\,
	combout => \u0|saves[8]~36_combout\);

-- Location: LCCOMB_X22_Y5_N20
\u0|ibus_out[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ibus_out[8]~25_combout\ = (\u0|saves[8]~36_combout\) # (!\u0|saves[15]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|saves[8]~36_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u0|ibus_out[8]~25_combout\);

-- Location: LCCOMB_X24_Y6_N14
\u7|temp~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~31_combout\ = (\u6|temp_a\(7) & ((\u0|saves[7]~34_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[15]~20_combout\,
	datab => \u6|temp_a\(7),
	datad => \u0|saves[7]~34_combout\,
	combout => \u7|temp~31_combout\);

-- Location: LCCOMB_X24_Y6_N16
\u7|temp~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~32_combout\ = (\u7|temp[13]~6_combout\ & (((\u7|Add0~24_combout\) # (\u7|temp[13]~12_combout\)))) # (!\u7|temp[13]~6_combout\ & (\u0|ibus_out[6]~23_combout\ & ((!\u7|temp[13]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ibus_out[6]~23_combout\,
	datab => \u7|temp[13]~6_combout\,
	datac => \u7|Add0~24_combout\,
	datad => \u7|temp[13]~12_combout\,
	combout => \u7|temp~32_combout\);

-- Location: LCCOMB_X24_Y6_N0
\u7|temp~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~33_combout\ = (\u7|temp[13]~12_combout\ & ((\u7|temp~32_combout\ & (\u0|ibus_out[8]~25_combout\)) # (!\u7|temp~32_combout\ & ((\u7|temp~31_combout\))))) # (!\u7|temp[13]~12_combout\ & (((\u7|temp~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ibus_out[8]~25_combout\,
	datab => \u7|temp[13]~12_combout\,
	datac => \u7|temp~31_combout\,
	datad => \u7|temp~32_combout\,
	combout => \u7|temp~33_combout\);

-- Location: FF_X24_Y6_N1
\u7|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~33_combout\,
	ena => \u7|temp[13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(7));

-- Location: LCCOMB_X22_Y8_N24
\u0|saves[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[7]~33_combout\ = (\u0|Equal0~4_combout\ & ((\u10|a_to_bus~0_combout\ & (\u6|temp_a\(7))) # (!\u10|a_to_bus~0_combout\ & ((\u6|temp_b\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~4_combout\,
	datab => \u6|temp_a\(7),
	datac => \u10|a_to_bus~0_combout\,
	datad => \u6|temp_b\(7),
	combout => \u0|saves[7]~33_combout\);

-- Location: LCCOMB_X22_Y8_N6
\u0|saves[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[7]~34_combout\ = (\u0|saves[7]~33_combout\) # ((\u5|temp\(7)) # ((\u7|temp\(7) & \u0|saves[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(7),
	datab => \u0|saves[7]~33_combout\,
	datac => \u5|temp\(7),
	datad => \u0|saves[0]~13_combout\,
	combout => \u0|saves[7]~34_combout\);

-- Location: LCCOMB_X23_Y8_N12
\u8|tmp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~7_combout\ = (!\rst~input_o\ & ((\u0|saves[7]~34_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[7]~34_combout\,
	datab => \rst~input_o\,
	datac => \u0|saves[15]~20_combout\,
	combout => \u8|tmp~7_combout\);

-- Location: FF_X23_Y8_N13
\u8|tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|tmp~7_combout\,
	ena => \u8|tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(7));

-- Location: LCCOMB_X23_Y8_N14
\u8|tmp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~4_combout\ = (!\rst~input_o\ & ((\u0|saves[4]~28_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[4]~28_combout\,
	datab => \rst~input_o\,
	datac => \u0|saves[15]~20_combout\,
	combout => \u8|tmp~4_combout\);

-- Location: FF_X23_Y8_N15
\u8|tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|tmp~4_combout\,
	ena => \u8|tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(4));

-- Location: LCCOMB_X24_Y8_N12
\u8|tmp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~6_combout\ = (!\rst~input_o\ & ((\u0|saves[6]~32_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[6]~32_combout\,
	combout => \u8|tmp~6_combout\);

-- Location: FF_X24_Y8_N13
\u8|tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|tmp~6_combout\,
	ena => \u8|tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(6));

-- Location: LCCOMB_X24_Y8_N6
\u8|tmp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~5_combout\ = (!\rst~input_o\ & ((\u0|saves[5]~30_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[5]~30_combout\,
	combout => \u8|tmp~5_combout\);

-- Location: FF_X24_Y8_N7
\u8|tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|tmp~5_combout\,
	ena => \u8|tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(5));

-- Location: LCCOMB_X23_Y8_N30
\u8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal0~0_combout\ = (!\u8|tmp\(7) & (!\u8|tmp\(4) & (!\u8|tmp\(6) & !\u8|tmp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(7),
	datab => \u8|tmp\(4),
	datac => \u8|tmp\(6),
	datad => \u8|tmp\(5),
	combout => \u8|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y8_N14
\u8|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal1~0_combout\ = (!\u8|tmp\(3) & (!\u8|tmp\(0) & (!\u8|tmp\(2) & \u8|tmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(3),
	datab => \u8|tmp\(0),
	datac => \u8|tmp\(2),
	datad => \u8|tmp\(1),
	combout => \u8|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y8_N16
\u8|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal1~1_combout\ = (\u8|Equal0~0_combout\ & (\u8|Equal0~2_combout\ & (\u8|Equal1~0_combout\ & \u8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~0_combout\,
	datab => \u8|Equal0~2_combout\,
	datac => \u8|Equal1~0_combout\,
	datad => \u8|Equal0~1_combout\,
	combout => \u8|Equal1~1_combout\);

-- Location: LCCOMB_X25_Y8_N2
\u10|bus_to_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|bus_to_b~0_combout\ = (\u8|Equal3~0_combout\) # ((!\u8|tmp\(0) & \u8|Equal7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8|tmp\(0),
	datac => \u8|Equal3~0_combout\,
	datad => \u8|Equal7~1_combout\,
	combout => \u10|bus_to_b~0_combout\);

-- Location: LCCOMB_X25_Y8_N28
\u10|bus_to_b~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|bus_to_b~1_combout\ = (\u9|temp\(3) & ((\u8|Equal1~1_combout\) # ((\u9|temp\(4) & \u10|bus_to_b~0_combout\)))) # (!\u9|temp\(3) & (((\u9|temp\(4) & \u10|bus_to_b~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(3),
	datab => \u8|Equal1~1_combout\,
	datac => \u9|temp\(4),
	datad => \u10|bus_to_b~0_combout\,
	combout => \u10|bus_to_b~1_combout\);

-- Location: LCCOMB_X22_Y7_N28
\u0|ibus_out[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ibus_out[1]~18_combout\ = (\u0|saves[1]~22_combout\) # (!\u0|saves[15]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[1]~22_combout\,
	combout => \u0|ibus_out[1]~18_combout\);

-- Location: LCCOMB_X24_Y7_N12
\u6|temp_b~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~34_combout\ = (\u10|acc_xchg~combout\ & (((\u6|temp_a\(1))))) # (!\u10|acc_xchg~combout\ & (\u10|bus_to_b~1_combout\ & ((\u0|ibus_out[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|bus_to_b~1_combout\,
	datab => \u6|temp_a\(1),
	datac => \u10|acc_xchg~combout\,
	datad => \u0|ibus_out[1]~18_combout\,
	combout => \u6|temp_b~34_combout\);

-- Location: FF_X24_Y7_N13
\u6|temp_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~34_combout\,
	ena => \u6|temp_b[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(1));

-- Location: LCCOMB_X24_Y7_N28
\u6|temp_a~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~34_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_b\(1))) # (!\u10|acc_xchg~combout\ & (((\u10|bus_to_a~4_combout\ & \u0|ibus_out[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(1),
	datab => \u10|bus_to_a~4_combout\,
	datac => \u10|acc_xchg~combout\,
	datad => \u0|ibus_out[1]~18_combout\,
	combout => \u6|temp_a~34_combout\);

-- Location: FF_X24_Y7_N29
\u6|temp_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~34_combout\,
	ena => \u6|temp_a[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(1));

-- Location: LCCOMB_X22_Y7_N30
\u7|temp~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~11_combout\ = (\u6|temp_a\(1) & ((\u0|saves[1]~22_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(1),
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[1]~22_combout\,
	combout => \u7|temp~11_combout\);

-- Location: LCCOMB_X21_Y7_N16
\u7|temp~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~13_combout\ = (\u7|temp[13]~12_combout\ & (((\u7|temp[13]~6_combout\)))) # (!\u7|temp[13]~12_combout\ & ((\u7|temp[13]~6_combout\ & ((\u7|Add0~6_combout\))) # (!\u7|temp[13]~6_combout\ & (\u0|ibus_out[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[13]~12_combout\,
	datab => \u0|ibus_out[0]~17_combout\,
	datac => \u7|temp[13]~6_combout\,
	datad => \u7|Add0~6_combout\,
	combout => \u7|temp~13_combout\);

-- Location: LCCOMB_X21_Y7_N22
\u7|temp~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~14_combout\ = (\u7|temp[13]~12_combout\ & ((\u7|temp~13_combout\ & ((\u0|ibus_out[2]~19_combout\))) # (!\u7|temp~13_combout\ & (\u7|temp~11_combout\)))) # (!\u7|temp[13]~12_combout\ & (((\u7|temp~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp~11_combout\,
	datab => \u7|temp[13]~12_combout\,
	datac => \u0|ibus_out[2]~19_combout\,
	datad => \u7|temp~13_combout\,
	combout => \u7|temp~14_combout\);

-- Location: FF_X21_Y7_N23
\u7|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~14_combout\,
	ena => \u7|temp[13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(1));

-- Location: LCCOMB_X22_Y7_N8
\u0|saves[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[1]~21_combout\ = (\u0|Equal0~4_combout\ & ((\u10|a_to_bus~0_combout\ & (\u6|temp_a\(1))) # (!\u10|a_to_bus~0_combout\ & ((\u6|temp_b\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(1),
	datab => \u6|temp_b\(1),
	datac => \u0|Equal0~4_combout\,
	datad => \u10|a_to_bus~0_combout\,
	combout => \u0|saves[1]~21_combout\);

-- Location: LCCOMB_X22_Y7_N6
\u0|saves[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[1]~22_combout\ = (\u5|temp\(1)) # ((\u0|saves[1]~21_combout\) # ((\u7|temp\(1) & \u0|saves[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(1),
	datab => \u5|temp\(1),
	datac => \u0|saves[1]~21_combout\,
	datad => \u0|saves[0]~13_combout\,
	combout => \u0|saves[1]~22_combout\);

-- Location: LCCOMB_X24_Y8_N24
\u8|tmp~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~16_combout\ = (!\rst~input_o\ & ((\u0|saves[1]~22_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[1]~22_combout\,
	combout => \u8|tmp~16_combout\);

-- Location: FF_X24_Y8_N25
\u8|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|tmp~16_combout\,
	ena => \u8|tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(1));

-- Location: LCCOMB_X26_Y8_N18
\u10|pc_to_mar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|pc_to_mar~0_combout\ = (!\u8|Equal3~0_combout\ & (((\u8|tmp\(2)) # (!\u8|Equal0~5_combout\)) # (!\u8|tmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(1),
	datab => \u8|Equal3~0_combout\,
	datac => \u8|tmp\(2),
	datad => \u8|Equal0~5_combout\,
	combout => \u10|pc_to_mar~0_combout\);

-- Location: LCCOMB_X25_Y16_N4
\u10|pc_to_mar~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|pc_to_mar~1_combout\ = (((!\u8|tmp\(0) & \u8|Equal11~0_combout\)) # (!\u7|temp~5_combout\)) # (!\u10|pc_to_mar~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(0),
	datab => \u8|Equal11~0_combout\,
	datac => \u10|pc_to_mar~0_combout\,
	datad => \u7|temp~5_combout\,
	combout => \u10|pc_to_mar~1_combout\);

-- Location: LCCOMB_X25_Y16_N22
\u10|pc_to_mar~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|pc_to_mar~2_combout\ = (\u9|temp\(0)) # ((\u9|temp\(3) & \u10|pc_to_mar~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(3),
	datac => \u10|pc_to_mar~1_combout\,
	datad => \u9|temp\(0),
	combout => \u10|pc_to_mar~2_combout\);

-- Location: FF_X25_Y16_N31
\u2|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u1|tmp\(2),
	sload => VCC,
	ena => \u10|pc_to_mar~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|temp\(2));

-- Location: LCCOMB_X25_Y16_N30
\u3|res[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|res[2]~3_combout\ = (\wr_data~input_o\ & ((\u2|temp\(2)))) # (!\wr_data~input_o\ & (\wr_addr[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_addr[2]~input_o\,
	datac => \u2|temp\(2),
	datad => \wr_data~input_o\,
	combout => \u3|res[2]~3_combout\);

-- Location: LCCOMB_X19_Y20_N30
\u4|mem~463\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~463_combout\ = (!\u3|res[0]~1_combout\ & (\u3|res[2]~3_combout\ & (\u3|res[3]~2_combout\ & \u3|res[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u3|res[2]~3_combout\,
	datac => \u3|res[3]~2_combout\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~463_combout\);

-- Location: LCCOMB_X19_Y20_N4
\u4|mem~464\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~464_combout\ = (\u4|mem~463_combout\ & !\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~463_combout\,
	datac => \wr_data~input_o\,
	combout => \u4|mem~464_combout\);

-- Location: FF_X25_Y20_N17
\u4|mem~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \u4|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~247_q\);

-- Location: FF_X24_Y20_N7
\u4|mem~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \u4|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~263_q\);

-- Location: FF_X25_Y21_N27
\u4|mem~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \u4|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~231_q\);

-- Location: FF_X25_Y20_N27
\u4|mem~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \u4|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~215_q\);

-- Location: LCCOMB_X25_Y20_N26
\u4|mem~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~304_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~231_q\) # ((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~215_q\ & !\u3|res[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~231_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~215_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~304_combout\);

-- Location: LCCOMB_X24_Y20_N6
\u4|mem~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~305_combout\ = (\u3|res[1]~0_combout\ & ((\u4|mem~304_combout\ & ((\u4|mem~263_q\))) # (!\u4|mem~304_combout\ & (\u4|mem~247_q\)))) # (!\u3|res[1]~0_combout\ & (((\u4|mem~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u4|mem~247_q\,
	datac => \u4|mem~263_q\,
	datad => \u4|mem~304_combout\,
	combout => \u4|mem~305_combout\);

-- Location: FF_X23_Y18_N5
\u4|mem~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \u4|mem~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~135_q\);

-- Location: FF_X23_Y18_N19
\u4|mem~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \u4|mem~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~103_q\);

-- Location: FF_X22_Y18_N19
\u4|mem~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \u4|mem~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~87_q\);

-- Location: LCCOMB_X22_Y18_N18
\u4|mem~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~297_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~103_q\) # ((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~87_q\ & !\u3|res[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u4|mem~103_q\,
	datac => \u4|mem~87_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~297_combout\);

-- Location: FF_X22_Y18_N25
\u4|mem~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \u4|mem~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~119_q\);

-- Location: LCCOMB_X22_Y18_N24
\u4|mem~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~298_combout\ = (\u4|mem~297_combout\ & ((\u4|mem~135_q\) # ((!\u3|res[1]~0_combout\)))) # (!\u4|mem~297_combout\ & (((\u4|mem~119_q\ & \u3|res[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~135_q\,
	datab => \u4|mem~297_combout\,
	datac => \u4|mem~119_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~298_combout\);

-- Location: FF_X25_Y18_N21
\u4|mem~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \u4|mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~39_q\);

-- Location: FF_X24_Y18_N13
\u4|mem~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \u4|mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~71_q\);

-- Location: FF_X24_Y18_N11
\u4|mem~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \u4|mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~55_q\);

-- Location: FF_X25_Y18_N7
\u4|mem~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \u4|mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~23_q\);

-- Location: LCCOMB_X25_Y18_N6
\u4|mem~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~301_combout\ = (\u3|res[0]~1_combout\ & (((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & ((\u3|res[1]~0_combout\ & (\u4|mem~55_q\)) # (!\u3|res[1]~0_combout\ & ((\u4|mem~23_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~55_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~23_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~301_combout\);

-- Location: LCCOMB_X24_Y18_N12
\u4|mem~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~302_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~301_combout\ & ((\u4|mem~71_q\))) # (!\u4|mem~301_combout\ & (\u4|mem~39_q\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~39_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~71_q\,
	datad => \u4|mem~301_combout\,
	combout => \u4|mem~302_combout\);

-- Location: FF_X25_Y21_N21
\u4|mem~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \u4|mem~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~167_q\);

-- Location: FF_X24_Y20_N21
\u4|mem~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \u4|mem~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~199_q\);

-- Location: FF_X26_Y19_N23
\u4|mem~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[2]~input_o\,
	sload => VCC,
	ena => \u4|mem~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~151_q\);

-- Location: LCCOMB_X26_Y19_N24
\u4|mem~183feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~183feeder_combout\ = \in_data[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[2]~input_o\,
	combout => \u4|mem~183feeder_combout\);

-- Location: FF_X26_Y19_N25
\u4|mem~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~183feeder_combout\,
	ena => \u4|mem~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~183_q\);

-- Location: LCCOMB_X26_Y19_N22
\u4|mem~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~299_combout\ = (\u3|res[0]~1_combout\ & (\u3|res[1]~0_combout\)) # (!\u3|res[0]~1_combout\ & ((\u3|res[1]~0_combout\ & ((\u4|mem~183_q\))) # (!\u3|res[1]~0_combout\ & (\u4|mem~151_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u3|res[1]~0_combout\,
	datac => \u4|mem~151_q\,
	datad => \u4|mem~183_q\,
	combout => \u4|mem~299_combout\);

-- Location: LCCOMB_X24_Y20_N20
\u4|mem~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~300_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~299_combout\ & ((\u4|mem~199_q\))) # (!\u4|mem~299_combout\ & (\u4|mem~167_q\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~167_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~199_q\,
	datad => \u4|mem~299_combout\,
	combout => \u4|mem~300_combout\);

-- Location: LCCOMB_X23_Y20_N6
\u4|mem~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~303_combout\ = (\u3|res[2]~3_combout\ & (((\u3|res[3]~2_combout\)))) # (!\u3|res[2]~3_combout\ & ((\u3|res[3]~2_combout\ & ((\u4|mem~300_combout\))) # (!\u3|res[3]~2_combout\ & (\u4|mem~302_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~302_combout\,
	datab => \u3|res[2]~3_combout\,
	datac => \u4|mem~300_combout\,
	datad => \u3|res[3]~2_combout\,
	combout => \u4|mem~303_combout\);

-- Location: LCCOMB_X23_Y20_N20
\u4|mem~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~306_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~303_combout\ & (\u4|mem~305_combout\)) # (!\u4|mem~303_combout\ & ((\u4|mem~298_combout\))))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~305_combout\,
	datab => \u3|res[2]~3_combout\,
	datac => \u4|mem~298_combout\,
	datad => \u4|mem~303_combout\,
	combout => \u4|mem~306_combout\);

-- Location: LCCOMB_X22_Y7_N22
\u4|ram_out[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|ram_out[2]~18_combout\ = (\u4|mem~306_combout\) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr_data~input_o\,
	datad => \u4|mem~306_combout\,
	combout => \u4|ram_out[2]~18_combout\);

-- Location: FF_X22_Y7_N23
\u5|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|ram_out[2]~18_combout\,
	ena => \u10|m_to_dr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|temp\(2));

-- Location: LCCOMB_X21_Y7_N2
\u7|temp~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~16_combout\ = (\u6|temp_a\(2) & ((\u0|saves[2]~24_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|temp_a\(2),
	datac => \u0|saves[2]~24_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|temp~16_combout\);

-- Location: LCCOMB_X21_Y7_N0
\u7|temp~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~17_combout\ = (\u7|temp[13]~6_combout\ & (((\u7|temp[13]~12_combout\)))) # (!\u7|temp[13]~6_combout\ & ((\u7|temp[13]~12_combout\ & ((\u7|temp~16_combout\))) # (!\u7|temp[13]~12_combout\ & (\u0|ibus_out[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[13]~6_combout\,
	datab => \u0|ibus_out[1]~18_combout\,
	datac => \u7|temp[13]~12_combout\,
	datad => \u7|temp~16_combout\,
	combout => \u7|temp~17_combout\);

-- Location: LCCOMB_X21_Y7_N8
\u7|temp~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~18_combout\ = (\u7|temp[13]~6_combout\ & ((\u7|temp~17_combout\ & (\u0|ibus_out[3]~20_combout\)) # (!\u7|temp~17_combout\ & ((\u7|Add0~9_combout\))))) # (!\u7|temp[13]~6_combout\ & (((\u7|temp~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[13]~6_combout\,
	datab => \u0|ibus_out[3]~20_combout\,
	datac => \u7|Add0~9_combout\,
	datad => \u7|temp~17_combout\,
	combout => \u7|temp~18_combout\);

-- Location: FF_X21_Y7_N9
\u7|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~18_combout\,
	ena => \u7|temp[13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(2));

-- Location: LCCOMB_X22_Y7_N20
\u0|saves[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[2]~23_combout\ = (\u0|Equal0~4_combout\ & ((\u10|a_to_bus~0_combout\ & ((\u6|temp_a\(2)))) # (!\u10|a_to_bus~0_combout\ & (\u6|temp_b\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(2),
	datab => \u6|temp_a\(2),
	datac => \u0|Equal0~4_combout\,
	datad => \u10|a_to_bus~0_combout\,
	combout => \u0|saves[2]~23_combout\);

-- Location: LCCOMB_X23_Y7_N14
\u0|saves[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[2]~24_combout\ = (\u5|temp\(2)) # ((\u0|saves[2]~23_combout\) # ((\u7|temp\(2) & \u0|saves[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|temp\(2),
	datab => \u7|temp\(2),
	datac => \u0|saves[2]~23_combout\,
	datad => \u0|saves[0]~13_combout\,
	combout => \u0|saves[2]~24_combout\);

-- Location: LCCOMB_X24_Y8_N8
\u8|tmp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~3_combout\ = (!\rst~input_o\ & ((\u0|saves[2]~24_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[15]~20_combout\,
	datab => \rst~input_o\,
	datac => \u0|saves[2]~24_combout\,
	combout => \u8|tmp~3_combout\);

-- Location: FF_X24_Y8_N9
\u8|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|tmp~3_combout\,
	ena => \u8|tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(2));

-- Location: LCCOMB_X26_Y8_N8
\u8|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal11~0_combout\ = (\u8|tmp\(2) & (!\u8|tmp\(1) & (\u8|tmp\(3) & \u8|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(2),
	datab => \u8|tmp\(1),
	datac => \u8|tmp\(3),
	datad => \u8|Equal0~3_combout\,
	combout => \u8|Equal11~0_combout\);

-- Location: LCCOMB_X26_Y8_N4
\u10|pc_sfincs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|pc_sfincs~0_combout\ = (!\u8|tmp\(2) & (\u8|Equal0~4_combout\ & (\u8|tmp\(1) $ (\u8|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(2),
	datab => \u8|tmp\(1),
	datac => \u8|tmp\(0),
	datad => \u8|Equal0~4_combout\,
	combout => \u10|pc_sfincs~0_combout\);

-- Location: LCCOMB_X25_Y12_N12
\u10|pc_sfincs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|pc_sfincs~1_combout\ = (\u9|temp\(4) & ((\u10|pc_sfincs~0_combout\) # (!\u7|temp[13]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(4),
	datac => \u7|temp[13]~4_combout\,
	datad => \u10|pc_sfincs~0_combout\,
	combout => \u10|pc_sfincs~1_combout\);

-- Location: LCCOMB_X25_Y16_N24
\u10|pc_sfincs~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|pc_sfincs~2_combout\ = (\u9|temp\(2)) # ((\u10|pc_sfincs~1_combout\) # ((\u9|temp\(5) & \u10|pc_to_mar~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(2),
	datab => \u9|temp\(5),
	datac => \u10|pc_to_mar~1_combout\,
	datad => \u10|pc_sfincs~1_combout\,
	combout => \u10|pc_sfincs~2_combout\);

-- Location: LCCOMB_X25_Y16_N6
\u1|tmp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|tmp[0]~0_combout\ = \u1|tmp\(0) $ (((\u10|pc_sfincs~2_combout\ & ((!\u8|Equal11~0_combout\) # (!\u8|tmp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(0),
	datab => \u8|Equal11~0_combout\,
	datac => \u1|tmp\(0),
	datad => \u10|pc_sfincs~2_combout\,
	combout => \u1|tmp[0]~0_combout\);

-- Location: FF_X25_Y16_N7
\u1|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|tmp[0]~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|tmp\(0));

-- Location: FF_X25_Y16_N15
\u2|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u1|tmp\(0),
	sload => VCC,
	ena => \u10|pc_to_mar~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|temp\(0));

-- Location: IOIBUF_X34_Y17_N22
\wr_addr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_addr(0),
	o => \wr_addr[0]~input_o\);

-- Location: LCCOMB_X25_Y16_N14
\u3|res[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|res[0]~1_combout\ = (\wr_data~input_o\ & (\u2|temp\(0))) # (!\wr_data~input_o\ & ((\wr_addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_data~input_o\,
	datac => \u2|temp\(0),
	datad => \wr_addr[0]~input_o\,
	combout => \u3|res[0]~1_combout\);

-- Location: IOIBUF_X21_Y24_N1
\in_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(6),
	o => \in_data[6]~input_o\);

-- Location: FF_X21_Y18_N29
\u4|mem~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \u4|mem~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~107_q\);

-- Location: FF_X22_Y18_N7
\u4|mem~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \u4|mem~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~91_q\);

-- Location: LCCOMB_X22_Y18_N6
\u4|mem~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~337_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~107_q\) # ((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~91_q\ & !\u3|res[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u4|mem~107_q\,
	datac => \u4|mem~91_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~337_combout\);

-- Location: FF_X21_Y18_N19
\u4|mem~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \u4|mem~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~139_q\);

-- Location: FF_X22_Y18_N5
\u4|mem~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \u4|mem~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~123_q\);

-- Location: LCCOMB_X22_Y18_N4
\u4|mem~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~338_combout\ = (\u4|mem~337_combout\ & ((\u4|mem~139_q\) # ((!\u3|res[1]~0_combout\)))) # (!\u4|mem~337_combout\ & (((\u4|mem~123_q\ & \u3|res[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~337_combout\,
	datab => \u4|mem~139_q\,
	datac => \u4|mem~123_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~338_combout\);

-- Location: FF_X25_Y20_N9
\u4|mem~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \u4|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~251_q\);

-- Location: FF_X23_Y19_N9
\u4|mem~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \u4|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~267_q\);

-- Location: LCCOMB_X23_Y21_N28
\u4|mem~235feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~235feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \u4|mem~235feeder_combout\);

-- Location: FF_X23_Y21_N29
\u4|mem~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~235feeder_combout\,
	ena => \u4|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~235_q\);

-- Location: FF_X22_Y19_N25
\u4|mem~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \u4|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~219_q\);

-- Location: LCCOMB_X22_Y19_N24
\u4|mem~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~344_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~235_q\) # ((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~219_q\ & !\u3|res[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u4|mem~235_q\,
	datac => \u4|mem~219_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~344_combout\);

-- Location: LCCOMB_X23_Y19_N8
\u4|mem~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~345_combout\ = (\u3|res[1]~0_combout\ & ((\u4|mem~344_combout\ & ((\u4|mem~267_q\))) # (!\u4|mem~344_combout\ & (\u4|mem~251_q\)))) # (!\u3|res[1]~0_combout\ & (((\u4|mem~344_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u4|mem~251_q\,
	datac => \u4|mem~267_q\,
	datad => \u4|mem~344_combout\,
	combout => \u4|mem~345_combout\);

-- Location: FF_X25_Y18_N5
\u4|mem~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \u4|mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~43_q\);

-- Location: FF_X24_Y18_N27
\u4|mem~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \u4|mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~75_q\);

-- Location: FF_X25_Y18_N19
\u4|mem~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \u4|mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~27_q\);

-- Location: LCCOMB_X26_Y18_N24
\u4|mem~59feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~59feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \u4|mem~59feeder_combout\);

-- Location: FF_X26_Y18_N25
\u4|mem~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~59feeder_combout\,
	ena => \u4|mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~59_q\);

-- Location: LCCOMB_X25_Y18_N18
\u4|mem~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~341_combout\ = (\u3|res[1]~0_combout\ & ((\u3|res[0]~1_combout\) # ((\u4|mem~59_q\)))) # (!\u3|res[1]~0_combout\ & (!\u3|res[0]~1_combout\ & (\u4|mem~27_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~27_q\,
	datad => \u4|mem~59_q\,
	combout => \u4|mem~341_combout\);

-- Location: LCCOMB_X24_Y18_N26
\u4|mem~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~342_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~341_combout\ & ((\u4|mem~75_q\))) # (!\u4|mem~341_combout\ & (\u4|mem~43_q\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~341_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~43_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~75_q\,
	datad => \u4|mem~341_combout\,
	combout => \u4|mem~342_combout\);

-- Location: LCCOMB_X25_Y21_N0
\u4|mem~171feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~171feeder_combout\ = \in_data[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[6]~input_o\,
	combout => \u4|mem~171feeder_combout\);

-- Location: FF_X25_Y21_N1
\u4|mem~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~171feeder_combout\,
	ena => \u4|mem~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~171_q\);

-- Location: FF_X25_Y19_N27
\u4|mem~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \u4|mem~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~203_q\);

-- Location: FF_X26_Y19_N7
\u4|mem~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \u4|mem~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~155_q\);

-- Location: FF_X26_Y19_N29
\u4|mem~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[6]~input_o\,
	sload => VCC,
	ena => \u4|mem~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~187_q\);

-- Location: LCCOMB_X26_Y19_N6
\u4|mem~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~339_combout\ = (\u3|res[0]~1_combout\ & (\u3|res[1]~0_combout\)) # (!\u3|res[0]~1_combout\ & ((\u3|res[1]~0_combout\ & ((\u4|mem~187_q\))) # (!\u3|res[1]~0_combout\ & (\u4|mem~155_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u3|res[1]~0_combout\,
	datac => \u4|mem~155_q\,
	datad => \u4|mem~187_q\,
	combout => \u4|mem~339_combout\);

-- Location: LCCOMB_X25_Y19_N26
\u4|mem~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~340_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~339_combout\ & ((\u4|mem~203_q\))) # (!\u4|mem~339_combout\ & (\u4|mem~171_q\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u4|mem~171_q\,
	datac => \u4|mem~203_q\,
	datad => \u4|mem~339_combout\,
	combout => \u4|mem~340_combout\);

-- Location: LCCOMB_X24_Y19_N18
\u4|mem~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~343_combout\ = (\u3|res[3]~2_combout\ & ((\u3|res[2]~3_combout\) # ((\u4|mem~340_combout\)))) # (!\u3|res[3]~2_combout\ & (!\u3|res[2]~3_combout\ & (\u4|mem~342_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[3]~2_combout\,
	datab => \u3|res[2]~3_combout\,
	datac => \u4|mem~342_combout\,
	datad => \u4|mem~340_combout\,
	combout => \u4|mem~343_combout\);

-- Location: LCCOMB_X23_Y19_N10
\u4|mem~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~346_combout\ = (\u3|res[2]~3_combout\ & ((\u4|mem~343_combout\ & ((\u4|mem~345_combout\))) # (!\u4|mem~343_combout\ & (\u4|mem~338_combout\)))) # (!\u3|res[2]~3_combout\ & (((\u4|mem~343_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~338_combout\,
	datab => \u4|mem~345_combout\,
	datac => \u3|res[2]~3_combout\,
	datad => \u4|mem~343_combout\,
	combout => \u4|mem~346_combout\);

-- Location: LCCOMB_X21_Y8_N8
\u4|ram_out[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|ram_out[6]~22_combout\ = (\u4|mem~346_combout\) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \wr_data~input_o\,
	datad => \u4|mem~346_combout\,
	combout => \u4|ram_out[6]~22_combout\);

-- Location: FF_X21_Y8_N9
\u5|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|ram_out[6]~22_combout\,
	ena => \u10|m_to_dr~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u5|temp\(6));

-- Location: LCCOMB_X22_Y8_N26
\u7|temp~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~28_combout\ = (\u6|temp_a\(6) & ((\u0|saves[6]~32_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(6),
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[6]~32_combout\,
	combout => \u7|temp~28_combout\);

-- Location: LCCOMB_X22_Y8_N12
\u7|temp~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~29_combout\ = (\u7|temp[13]~12_combout\ & ((\u7|temp~28_combout\) # ((\u7|temp[13]~6_combout\)))) # (!\u7|temp[13]~12_combout\ & (((!\u7|temp[13]~6_combout\ & \u0|ibus_out[5]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp~28_combout\,
	datab => \u7|temp[13]~12_combout\,
	datac => \u7|temp[13]~6_combout\,
	datad => \u0|ibus_out[5]~22_combout\,
	combout => \u7|temp~29_combout\);

-- Location: LCCOMB_X23_Y7_N6
\u7|temp~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~30_combout\ = (\u7|temp~29_combout\ & ((\u0|ibus_out[7]~24_combout\) # ((!\u7|temp[13]~6_combout\)))) # (!\u7|temp~29_combout\ & (((\u7|Add0~21_combout\ & \u7|temp[13]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ibus_out[7]~24_combout\,
	datab => \u7|temp~29_combout\,
	datac => \u7|Add0~21_combout\,
	datad => \u7|temp[13]~6_combout\,
	combout => \u7|temp~30_combout\);

-- Location: FF_X23_Y7_N7
\u7|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~30_combout\,
	ena => \u7|temp[13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(6));

-- Location: LCCOMB_X22_Y8_N8
\u0|saves[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[6]~31_combout\ = (\u0|Equal0~4_combout\ & ((\u10|a_to_bus~0_combout\ & ((\u6|temp_a\(6)))) # (!\u10|a_to_bus~0_combout\ & (\u6|temp_b\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~4_combout\,
	datab => \u6|temp_b\(6),
	datac => \u10|a_to_bus~0_combout\,
	datad => \u6|temp_a\(6),
	combout => \u0|saves[6]~31_combout\);

-- Location: LCCOMB_X22_Y8_N2
\u0|saves[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[6]~32_combout\ = (\u5|temp\(6)) # ((\u0|saves[6]~31_combout\) # ((\u7|temp\(6) & \u0|saves[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|temp\(6),
	datab => \u7|temp\(6),
	datac => \u0|saves[6]~31_combout\,
	datad => \u0|saves[0]~13_combout\,
	combout => \u0|saves[6]~32_combout\);

-- Location: LCCOMB_X22_Y8_N10
\u0|ibus_out[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ibus_out[6]~23_combout\ = (\u0|saves[6]~32_combout\) # (!\u0|saves[15]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[6]~32_combout\,
	combout => \u0|ibus_out[6]~23_combout\);

-- Location: LCCOMB_X22_Y8_N16
\u6|temp_b~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~39_combout\ = (\u10|acc_xchg~combout\ & (((\u6|temp_a\(6))))) # (!\u10|acc_xchg~combout\ & (\u0|ibus_out[6]~23_combout\ & ((\u10|bus_to_b~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ibus_out[6]~23_combout\,
	datab => \u10|acc_xchg~combout\,
	datac => \u6|temp_a\(6),
	datad => \u10|bus_to_b~1_combout\,
	combout => \u6|temp_b~39_combout\);

-- Location: FF_X22_Y8_N17
\u6|temp_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~39_combout\,
	ena => \u6|temp_b[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(6));

-- Location: LCCOMB_X22_Y5_N10
\u0|saves[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[0]~8_combout\ = (!\u6|temp_b\(8) & (!\u6|temp_b\(5) & !\u6|temp_b\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|temp_b\(8),
	datac => \u6|temp_b\(5),
	datad => \u6|temp_b\(7),
	combout => \u0|saves[0]~8_combout\);

-- Location: LCCOMB_X23_Y5_N6
\u0|saves[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[0]~7_combout\ = (!\u6|temp_a\(7) & (!\u6|temp_a\(6) & (!\u6|temp_a\(8) & !\u6|temp_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(7),
	datab => \u6|temp_a\(6),
	datac => \u6|temp_a\(8),
	datad => \u6|temp_a\(5),
	combout => \u0|saves[0]~7_combout\);

-- Location: LCCOMB_X23_Y8_N10
\u0|saves[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[0]~9_combout\ = (\u10|a_to_bus~0_combout\ & (((\u0|saves[0]~7_combout\)))) # (!\u10|a_to_bus~0_combout\ & (!\u6|temp_b\(6) & (\u0|saves[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(6),
	datab => \u0|saves[0]~8_combout\,
	datac => \u0|saves[0]~7_combout\,
	datad => \u10|a_to_bus~0_combout\,
	combout => \u0|saves[0]~9_combout\);

-- Location: LCCOMB_X24_Y5_N2
\u0|saves[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[0]~5_combout\ = (!\u6|temp_b\(10) & (!\u6|temp_b\(11) & !\u6|temp_b\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(10),
	datac => \u6|temp_b\(11),
	datad => \u6|temp_b\(9),
	combout => \u0|saves[0]~5_combout\);

-- Location: LCCOMB_X24_Y5_N20
\u0|saves[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[0]~4_combout\ = (!\u6|temp_a\(11) & (!\u6|temp_a\(9) & (!\u6|temp_a\(10) & !\u6|temp_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(11),
	datab => \u6|temp_a\(9),
	datac => \u6|temp_a\(10),
	datad => \u6|temp_a\(12),
	combout => \u0|saves[0]~4_combout\);

-- Location: LCCOMB_X23_Y8_N8
\u0|saves[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[0]~6_combout\ = (\u10|a_to_bus~0_combout\ & (((\u0|saves[0]~4_combout\)))) # (!\u10|a_to_bus~0_combout\ & (\u0|saves[0]~5_combout\ & ((!\u6|temp_b\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[0]~5_combout\,
	datab => \u0|saves[0]~4_combout\,
	datac => \u6|temp_b\(12),
	datad => \u10|a_to_bus~0_combout\,
	combout => \u0|saves[0]~6_combout\);

-- Location: LCCOMB_X24_Y7_N0
\u0|saves[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[0]~11_combout\ = (!\u6|temp_b\(1) & (!\u6|temp_b\(4) & !\u6|temp_b\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(1),
	datab => \u6|temp_b\(4),
	datad => \u6|temp_b\(3),
	combout => \u0|saves[0]~11_combout\);

-- Location: LCCOMB_X24_Y7_N14
\u0|saves[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[0]~10_combout\ = (!\u6|temp_a\(4) & (!\u6|temp_a\(1) & (!\u6|temp_a\(3) & !\u6|temp_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(4),
	datab => \u6|temp_a\(1),
	datac => \u6|temp_a\(3),
	datad => \u6|temp_a\(2),
	combout => \u0|saves[0]~10_combout\);

-- Location: LCCOMB_X23_Y8_N4
\u0|saves[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[0]~12_combout\ = (\u10|a_to_bus~0_combout\ & (((\u0|saves[0]~10_combout\)))) # (!\u10|a_to_bus~0_combout\ & (\u0|saves[0]~11_combout\ & (!\u6|temp_b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[0]~11_combout\,
	datab => \u6|temp_b\(2),
	datac => \u0|saves[0]~10_combout\,
	datad => \u10|a_to_bus~0_combout\,
	combout => \u0|saves[0]~12_combout\);

-- Location: LCCOMB_X23_Y5_N14
\u6|temp_a~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~48_combout\ = (\u10|acc_xchg~combout\ & (((\u6|temp_b\(15))))) # (!\u10|acc_xchg~combout\ & (\u10|bus_to_a~4_combout\ & ((\u0|ibus_out[15]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \u10|bus_to_a~4_combout\,
	datac => \u6|temp_b\(15),
	datad => \u0|ibus_out[15]~32_combout\,
	combout => \u6|temp_a~48_combout\);

-- Location: FF_X23_Y5_N15
\u6|temp_a[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~48_combout\,
	ena => \u6|temp_a[12]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(15));

-- Location: LCCOMB_X23_Y5_N4
\u6|temp_b~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~48_combout\ = (\u10|acc_xchg~combout\ & (((\u6|temp_a\(15))))) # (!\u10|acc_xchg~combout\ & (\u10|bus_to_b~1_combout\ & ((\u0|ibus_out[15]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \u10|bus_to_b~1_combout\,
	datac => \u6|temp_a\(15),
	datad => \u0|ibus_out[15]~32_combout\,
	combout => \u6|temp_b~48_combout\);

-- Location: FF_X23_Y5_N5
\u6|temp_b[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~48_combout\,
	ena => \u6|temp_b[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(15));

-- Location: LCCOMB_X23_Y5_N28
\u0|saves[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[0]~2_combout\ = (!\u6|temp_b\(14) & (!\u6|temp_b\(13) & (!\u6|temp_b\(15) & !\u6|temp_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(14),
	datab => \u6|temp_b\(13),
	datac => \u6|temp_b\(15),
	datad => \u6|temp_b\(0),
	combout => \u0|saves[0]~2_combout\);

-- Location: LCCOMB_X23_Y5_N26
\u0|saves[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[0]~1_combout\ = (!\u6|temp_a\(0) & (!\u6|temp_a\(13) & (!\u6|temp_a\(15) & !\u6|temp_a\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(0),
	datab => \u6|temp_a\(13),
	datac => \u6|temp_a\(15),
	datad => \u6|temp_a\(14),
	combout => \u0|saves[0]~1_combout\);

-- Location: LCCOMB_X23_Y8_N6
\u0|saves[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[0]~3_combout\ = (\u0|Equal0~4_combout\ & ((\u10|a_to_bus~0_combout\ & ((\u0|saves[0]~1_combout\))) # (!\u10|a_to_bus~0_combout\ & (\u0|saves[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[0]~2_combout\,
	datab => \u10|a_to_bus~0_combout\,
	datac => \u0|saves[0]~1_combout\,
	datad => \u0|Equal0~4_combout\,
	combout => \u0|saves[0]~3_combout\);

-- Location: LCCOMB_X23_Y8_N26
\u0|saves[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[0]~13_combout\ = (\u0|saves[0]~9_combout\ & (\u0|saves[0]~6_combout\ & (\u0|saves[0]~12_combout\ & \u0|saves[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[0]~9_combout\,
	datab => \u0|saves[0]~6_combout\,
	datac => \u0|saves[0]~12_combout\,
	datad => \u0|saves[0]~3_combout\,
	combout => \u0|saves[0]~13_combout\);

-- Location: LCCOMB_X24_Y6_N6
\u7|temp~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~59_combout\ = (!\u10|alu_and~combout\ & (!\u10|alu_shl~0_combout\ & ((\u0|saves[14]~48_combout\) # (!\u0|saves[15]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[15]~20_combout\,
	datab => \u10|alu_and~combout\,
	datac => \u10|alu_shl~0_combout\,
	datad => \u0|saves[14]~48_combout\,
	combout => \u7|temp~59_combout\);

-- Location: LCCOMB_X24_Y6_N22
\u7|temp~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~55_combout\ = (\u6|temp_a\(15) & (\u10|alu_and~combout\ & ((\u0|saves[15]~50_combout\) # (!\u0|saves[15]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(15),
	datab => \u0|saves[15]~20_combout\,
	datac => \u10|alu_and~combout\,
	datad => \u0|saves[15]~50_combout\,
	combout => \u7|temp~55_combout\);

-- Location: LCCOMB_X24_Y8_N18
\u7|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~47_combout\ = (\u9|temp\(4) & (\u8|Equal5~0_combout\ $ (((\u0|saves[15]~50_combout\) # (!\u0|saves[15]~20_combout\))))) # (!\u9|temp\(4) & (((\u0|saves[15]~50_combout\) # (!\u0|saves[15]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(4),
	datab => \u8|Equal5~0_combout\,
	datac => \u0|saves[15]~20_combout\,
	datad => \u0|saves[15]~50_combout\,
	combout => \u7|Add0~47_combout\);

-- Location: LCCOMB_X22_Y5_N28
\u7|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~44_combout\ = (\u8|Equal5~0_combout\ & (\u9|temp\(4) $ (((\u0|saves[14]~48_combout\) # (!\u0|saves[15]~20_combout\))))) # (!\u8|Equal5~0_combout\ & (((\u0|saves[14]~48_combout\) # (!\u0|saves[15]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal5~0_combout\,
	datab => \u9|temp\(4),
	datac => \u0|saves[14]~48_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|Add0~44_combout\);

-- Location: LCCOMB_X23_Y6_N14
\u7|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~45_combout\ = (\u6|temp_a\(14) & ((\u7|Add0~44_combout\ & (\u7|Add0~43\ & VCC)) # (!\u7|Add0~44_combout\ & (!\u7|Add0~43\)))) # (!\u6|temp_a\(14) & ((\u7|Add0~44_combout\ & (!\u7|Add0~43\)) # (!\u7|Add0~44_combout\ & ((\u7|Add0~43\) # (GND)))))
-- \u7|Add0~46\ = CARRY((\u6|temp_a\(14) & (!\u7|Add0~44_combout\ & !\u7|Add0~43\)) # (!\u6|temp_a\(14) & ((!\u7|Add0~43\) # (!\u7|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(14),
	datab => \u7|Add0~44_combout\,
	datad => VCC,
	cin => \u7|Add0~43\,
	combout => \u7|Add0~45_combout\,
	cout => \u7|Add0~46\);

-- Location: LCCOMB_X23_Y6_N16
\u7|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~48_combout\ = \u6|temp_a\(15) $ (\u7|Add0~47_combout\ $ (!\u7|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(15),
	datab => \u7|Add0~47_combout\,
	cin => \u7|Add0~46\,
	combout => \u7|Add0~48_combout\);

-- Location: LCCOMB_X24_Y6_N20
\u7|temp~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~56_combout\ = (\u7|temp[13]~6_combout\ & ((\u7|temp~8_combout\ & (\u7|temp\(15))) # (!\u7|temp~8_combout\ & ((\u7|Add0~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(15),
	datab => \u7|temp[13]~6_combout\,
	datac => \u7|Add0~48_combout\,
	datad => \u7|temp~8_combout\,
	combout => \u7|temp~56_combout\);

-- Location: LCCOMB_X24_Y6_N8
\u7|temp~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~57_combout\ = (\u7|temp~59_combout\) # ((\u7|temp~55_combout\) # ((!\u10|alu_shr~0_combout\ & \u7|temp~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp~59_combout\,
	datab => \u10|alu_shr~0_combout\,
	datac => \u7|temp~55_combout\,
	datad => \u7|temp~56_combout\,
	combout => \u7|temp~57_combout\);

-- Location: FF_X24_Y6_N9
\u7|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(15));

-- Location: LCCOMB_X25_Y8_N14
\u0|saves[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[15]~49_combout\ = (\u0|Equal0~4_combout\ & ((\u10|a_to_bus~0_combout\ & ((\u6|temp_a\(15)))) # (!\u10|a_to_bus~0_combout\ & (\u6|temp_b\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(15),
	datab => \u6|temp_a\(15),
	datac => \u10|a_to_bus~0_combout\,
	datad => \u0|Equal0~4_combout\,
	combout => \u0|saves[15]~49_combout\);

-- Location: LCCOMB_X24_Y8_N16
\u0|saves[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[15]~50_combout\ = (\u0|saves[15]~49_combout\) # ((\u5|temp\(15)) # ((\u0|saves[0]~13_combout\ & \u7|temp\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[0]~13_combout\,
	datab => \u7|temp\(15),
	datac => \u0|saves[15]~49_combout\,
	datad => \u5|temp\(15),
	combout => \u0|saves[15]~50_combout\);

-- Location: LCCOMB_X24_Y6_N28
\u0|ibus_out[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ibus_out[15]~32_combout\ = (\u0|saves[15]~50_combout\) # (!\u0|saves[15]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[15]~20_combout\,
	datad => \u0|saves[15]~50_combout\,
	combout => \u0|ibus_out[15]~32_combout\);

-- Location: LCCOMB_X22_Y5_N6
\u7|temp~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~52_combout\ = (\u6|temp_a\(14) & ((\u0|saves[14]~48_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|temp_a\(14),
	datac => \u0|saves[14]~48_combout\,
	datad => \u0|saves[15]~20_combout\,
	combout => \u7|temp~52_combout\);

-- Location: LCCOMB_X24_Y6_N4
\u7|temp~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~53_combout\ = (\u7|temp[13]~12_combout\ & (((\u7|temp[13]~6_combout\) # (\u7|temp~52_combout\)))) # (!\u7|temp[13]~12_combout\ & (\u0|ibus_out[13]~30_combout\ & (!\u7|temp[13]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ibus_out[13]~30_combout\,
	datab => \u7|temp[13]~12_combout\,
	datac => \u7|temp[13]~6_combout\,
	datad => \u7|temp~52_combout\,
	combout => \u7|temp~53_combout\);

-- Location: LCCOMB_X24_Y6_N30
\u7|temp~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~54_combout\ = (\u7|temp[13]~6_combout\ & ((\u7|temp~53_combout\ & (\u0|ibus_out[15]~32_combout\)) # (!\u7|temp~53_combout\ & ((\u7|Add0~45_combout\))))) # (!\u7|temp[13]~6_combout\ & (((\u7|temp~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ibus_out[15]~32_combout\,
	datab => \u7|temp[13]~6_combout\,
	datac => \u7|temp~53_combout\,
	datad => \u7|Add0~45_combout\,
	combout => \u7|temp~54_combout\);

-- Location: FF_X24_Y6_N31
\u7|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~54_combout\,
	ena => \u7|temp[13]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(14));

-- Location: LCCOMB_X24_Y6_N18
\u0|saves[15]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[15]~19_combout\ = (\u7|temp\(14)) # ((\u7|temp\(15)) # ((\u7|temp\(12)) # (\u7|temp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(14),
	datab => \u7|temp\(15),
	datac => \u7|temp\(12),
	datad => \u7|temp\(13),
	combout => \u0|saves[15]~19_combout\);

-- Location: LCCOMB_X22_Y6_N24
\u0|saves[15]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[15]~18_combout\ = (\u7|temp\(8)) # ((\u7|temp\(10)) # ((\u7|temp\(11)) # (\u7|temp\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(8),
	datab => \u7|temp\(10),
	datac => \u7|temp\(11),
	datad => \u7|temp\(9),
	combout => \u0|saves[15]~18_combout\);

-- Location: LCCOMB_X23_Y7_N8
\u0|saves[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[15]~16_combout\ = (\u7|temp\(6)) # ((\u7|temp\(4)) # ((\u7|temp\(5)) # (\u7|temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(6),
	datab => \u7|temp\(4),
	datac => \u7|temp\(5),
	datad => \u7|temp\(7),
	combout => \u0|saves[15]~16_combout\);

-- Location: LCCOMB_X21_Y7_N24
\u0|saves[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[15]~15_combout\ = (\u7|temp\(3)) # ((\u7|temp\(2)) # ((\u7|temp\(1)) # (\u7|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(3),
	datab => \u7|temp\(2),
	datac => \u7|temp\(1),
	datad => \u7|temp\(0),
	combout => \u0|saves[15]~15_combout\);

-- Location: LCCOMB_X22_Y7_N2
\u0|saves[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[15]~17_combout\ = (\u0|saves[15]~16_combout\) # (\u0|saves[15]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|saves[15]~16_combout\,
	datad => \u0|saves[15]~15_combout\,
	combout => \u0|saves[15]~17_combout\);

-- Location: LCCOMB_X22_Y8_N30
\u0|saves[15]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|saves[15]~20_combout\ = (\u0|saves[15]~19_combout\) # ((\u0|saves[15]~18_combout\) # ((\u0|saves[15]~17_combout\) # (!\u0|saves[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[15]~19_combout\,
	datab => \u0|saves[15]~18_combout\,
	datac => \u0|saves[15]~17_combout\,
	datad => \u0|saves[0]~13_combout\,
	combout => \u0|saves[15]~20_combout\);

-- Location: LCCOMB_X24_Y8_N4
\u8|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~0_combout\ = (!\rst~input_o\ & ((\u0|saves[0]~14_combout\) # (!\u0|saves[15]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|saves[15]~20_combout\,
	datab => \rst~input_o\,
	datac => \u0|saves[0]~14_combout\,
	combout => \u8|tmp~0_combout\);

-- Location: FF_X24_Y8_N5
\u8|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|tmp~0_combout\,
	ena => \u8|tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(0));

-- Location: LCCOMB_X25_Y16_N28
\u1|tmp[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|tmp[1]~1_combout\ = (\u1|tmp\(0) & (\u10|pc_sfincs~2_combout\ & ((!\u8|Equal11~0_combout\) # (!\u8|tmp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(0),
	datab => \u1|tmp\(0),
	datac => \u8|Equal11~0_combout\,
	datad => \u10|pc_sfincs~2_combout\,
	combout => \u1|tmp[1]~1_combout\);

-- Location: LCCOMB_X25_Y16_N0
\u1|tmp[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|tmp[1]~2_combout\ = \u1|tmp\(1) $ (\u1|tmp[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|tmp\(1),
	datad => \u1|tmp[1]~1_combout\,
	combout => \u1|tmp[1]~2_combout\);

-- Location: FF_X25_Y16_N1
\u1|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|tmp[1]~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|tmp\(1));

-- Location: FF_X25_Y16_N13
\u2|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u1|tmp\(1),
	sload => VCC,
	ena => \u10|pc_to_mar~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|temp\(1));

-- Location: IOIBUF_X34_Y17_N1
\wr_addr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_addr(1),
	o => \wr_addr[1]~input_o\);

-- Location: LCCOMB_X25_Y16_N12
\u3|res[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|res[1]~0_combout\ = (\wr_data~input_o\ & (\u2|temp\(1))) # (!\wr_data~input_o\ & ((\wr_addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_data~input_o\,
	datac => \u2|temp\(1),
	datad => \wr_addr[1]~input_o\,
	combout => \u3|res[1]~0_combout\);

-- Location: IOIBUF_X18_Y24_N22
\in_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(0),
	o => \in_data[0]~input_o\);

-- Location: FF_X24_Y20_N9
\u4|mem~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \u4|mem~444_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~197_q\);

-- Location: FF_X21_Y20_N17
\u4|mem~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \u4|mem~438_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~181_q\);

-- Location: LCCOMB_X23_Y21_N0
\u4|mem~165feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~165feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \u4|mem~165feeder_combout\);

-- Location: FF_X23_Y21_N1
\u4|mem~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~165feeder_combout\,
	ena => \u4|mem~440_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~165_q\);

-- Location: FF_X23_Y20_N29
\u4|mem~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \u4|mem~442_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~149_q\);

-- Location: LCCOMB_X23_Y20_N28
\u4|mem~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~277_combout\ = (\u3|res[1]~0_combout\ & (((\u3|res[0]~1_combout\)))) # (!\u3|res[1]~0_combout\ & ((\u3|res[0]~1_combout\ & (\u4|mem~165_q\)) # (!\u3|res[0]~1_combout\ & ((\u4|mem~149_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u4|mem~165_q\,
	datac => \u4|mem~149_q\,
	datad => \u3|res[0]~1_combout\,
	combout => \u4|mem~277_combout\);

-- Location: LCCOMB_X21_Y20_N16
\u4|mem~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~278_combout\ = (\u3|res[1]~0_combout\ & ((\u4|mem~277_combout\ & (\u4|mem~197_q\)) # (!\u4|mem~277_combout\ & ((\u4|mem~181_q\))))) # (!\u3|res[1]~0_combout\ & (((\u4|mem~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u4|mem~197_q\,
	datac => \u4|mem~181_q\,
	datad => \u4|mem~277_combout\,
	combout => \u4|mem~278_combout\);

-- Location: LCCOMB_X23_Y21_N26
\u4|mem~229feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~229feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \u4|mem~229feeder_combout\);

-- Location: FF_X23_Y21_N27
\u4|mem~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~229feeder_combout\,
	ena => \u4|mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~229_q\);

-- Location: FF_X24_Y20_N11
\u4|mem~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \u4|mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~261_q\);

-- Location: LCCOMB_X21_Y20_N22
\u4|mem~245feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~245feeder_combout\ = \in_data[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in_data[0]~input_o\,
	combout => \u4|mem~245feeder_combout\);

-- Location: FF_X21_Y20_N23
\u4|mem~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u4|mem~245feeder_combout\,
	ena => \u4|mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~245_q\);

-- Location: FF_X19_Y20_N13
\u4|mem~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \u4|mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~213_q\);

-- Location: LCCOMB_X19_Y20_N12
\u4|mem~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~284_combout\ = (\u3|res[0]~1_combout\ & (((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & ((\u3|res[1]~0_combout\ & (\u4|mem~245_q\)) # (!\u3|res[1]~0_combout\ & ((\u4|mem~213_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u4|mem~245_q\,
	datac => \u4|mem~213_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~284_combout\);

-- Location: LCCOMB_X24_Y20_N10
\u4|mem~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~285_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~284_combout\ & ((\u4|mem~261_q\))) # (!\u4|mem~284_combout\ & (\u4|mem~229_q\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~229_q\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~261_q\,
	datad => \u4|mem~284_combout\,
	combout => \u4|mem~285_combout\);

-- Location: FF_X24_Y18_N29
\u4|mem~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \u4|mem~454_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~53_q\);

-- Location: FF_X24_Y18_N19
\u4|mem~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \u4|mem~460_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~69_q\);

-- Location: FF_X25_Y18_N23
\u4|mem~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \u4|mem~458_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~21_q\);

-- Location: FF_X25_Y18_N25
\u4|mem~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \u4|mem~456_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~37_q\);

-- Location: LCCOMB_X25_Y18_N22
\u4|mem~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~281_combout\ = (\u3|res[1]~0_combout\ & (\u3|res[0]~1_combout\)) # (!\u3|res[1]~0_combout\ & ((\u3|res[0]~1_combout\ & ((\u4|mem~37_q\))) # (!\u3|res[0]~1_combout\ & (\u4|mem~21_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u3|res[0]~1_combout\,
	datac => \u4|mem~21_q\,
	datad => \u4|mem~37_q\,
	combout => \u4|mem~281_combout\);

-- Location: LCCOMB_X24_Y18_N18
\u4|mem~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~282_combout\ = (\u3|res[1]~0_combout\ & ((\u4|mem~281_combout\ & ((\u4|mem~69_q\))) # (!\u4|mem~281_combout\ & (\u4|mem~53_q\)))) # (!\u3|res[1]~0_combout\ & (((\u4|mem~281_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[1]~0_combout\,
	datab => \u4|mem~53_q\,
	datac => \u4|mem~69_q\,
	datad => \u4|mem~281_combout\,
	combout => \u4|mem~282_combout\);

-- Location: FF_X23_Y18_N29
\u4|mem~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \u4|mem~446_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~101_q\);

-- Location: FF_X23_Y18_N3
\u4|mem~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \u4|mem~452_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~133_q\);

-- Location: FF_X22_Y18_N29
\u4|mem~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \u4|mem~448_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~117_q\);

-- Location: FF_X22_Y18_N15
\u4|mem~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in_data[0]~input_o\,
	sload => VCC,
	ena => \u4|mem~450_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u4|mem~85_q\);

-- Location: LCCOMB_X22_Y18_N14
\u4|mem~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~279_combout\ = (\u3|res[0]~1_combout\ & (((\u3|res[1]~0_combout\)))) # (!\u3|res[0]~1_combout\ & ((\u3|res[1]~0_combout\ & (\u4|mem~117_q\)) # (!\u3|res[1]~0_combout\ & ((\u4|mem~85_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u4|mem~117_q\,
	datac => \u4|mem~85_q\,
	datad => \u3|res[1]~0_combout\,
	combout => \u4|mem~279_combout\);

-- Location: LCCOMB_X23_Y18_N2
\u4|mem~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~280_combout\ = (\u3|res[0]~1_combout\ & ((\u4|mem~279_combout\ & ((\u4|mem~133_q\))) # (!\u4|mem~279_combout\ & (\u4|mem~101_q\)))) # (!\u3|res[0]~1_combout\ & (((\u4|mem~279_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[0]~1_combout\,
	datab => \u4|mem~101_q\,
	datac => \u4|mem~133_q\,
	datad => \u4|mem~279_combout\,
	combout => \u4|mem~280_combout\);

-- Location: LCCOMB_X23_Y20_N2
\u4|mem~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~283_combout\ = (\u3|res[3]~2_combout\ & (\u3|res[2]~3_combout\)) # (!\u3|res[3]~2_combout\ & ((\u3|res[2]~3_combout\ & ((\u4|mem~280_combout\))) # (!\u3|res[2]~3_combout\ & (\u4|mem~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|res[3]~2_combout\,
	datab => \u3|res[2]~3_combout\,
	datac => \u4|mem~282_combout\,
	datad => \u4|mem~280_combout\,
	combout => \u4|mem~283_combout\);

-- Location: LCCOMB_X23_Y20_N16
\u4|mem~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \u4|mem~286_combout\ = (\u3|res[3]~2_combout\ & ((\u4|mem~283_combout\ & ((\u4|mem~285_combout\))) # (!\u4|mem~283_combout\ & (\u4|mem~278_combout\)))) # (!\u3|res[3]~2_combout\ & (((\u4|mem~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|mem~278_combout\,
	datab => \u3|res[3]~2_combout\,
	datac => \u4|mem~285_combout\,
	datad => \u4|mem~283_combout\,
	combout => \u4|mem~286_combout\);

-- Location: LCCOMB_X25_Y8_N4
\u0|ibus_out[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ibus_out[0]~16_combout\ = (\u0|saves[15]~20_combout\ & \u9|temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|saves[15]~20_combout\,
	datad => \u9|temp\(1),
	combout => \u0|ibus_out[0]~16_combout\);

ww_test_ram(0) <= \test_ram[0]~output_o\;

ww_test_ram(1) <= \test_ram[1]~output_o\;

ww_test_ram(2) <= \test_ram[2]~output_o\;

ww_test_ram(3) <= \test_ram[3]~output_o\;

ww_test_ram(4) <= \test_ram[4]~output_o\;

ww_test_ram(5) <= \test_ram[5]~output_o\;

ww_test_ram(6) <= \test_ram[6]~output_o\;

ww_test_ram(7) <= \test_ram[7]~output_o\;

ww_test_ram(8) <= \test_ram[8]~output_o\;

ww_test_ram(9) <= \test_ram[9]~output_o\;

ww_test_ram(10) <= \test_ram[10]~output_o\;

ww_test_ram(11) <= \test_ram[11]~output_o\;

ww_test_ram(12) <= \test_ram[12]~output_o\;

ww_test_ram(13) <= \test_ram[13]~output_o\;

ww_test_ram(14) <= \test_ram[14]~output_o\;

ww_test_ram(15) <= \test_ram[15]~output_o\;

ww_test_pc(0) <= \test_pc[0]~output_o\;

ww_test_pc(1) <= \test_pc[1]~output_o\;

ww_test_pc(2) <= \test_pc[2]~output_o\;

ww_test_pc(3) <= \test_pc[3]~output_o\;

ww_test_t(0) <= \test_t[0]~output_o\;

ww_test_t(1) <= \test_t[1]~output_o\;

ww_test_t(2) <= \test_t[2]~output_o\;

ww_test_t(3) <= \test_t[3]~output_o\;

ww_test_t(4) <= \test_t[4]~output_o\;

ww_test_t(5) <= \test_t[5]~output_o\;

ww_test_t(6) <= \test_t[6]~output_o\;

ww_test_t(7) <= \test_t[7]~output_o\;

ww_test_bus(0) <= \test_bus[0]~output_o\;

ww_test_bus(1) <= \test_bus[1]~output_o\;

ww_test_bus(2) <= \test_bus[2]~output_o\;

ww_test_bus(3) <= \test_bus[3]~output_o\;

ww_test_bus(4) <= \test_bus[4]~output_o\;

ww_test_bus(5) <= \test_bus[5]~output_o\;

ww_test_bus(6) <= \test_bus[6]~output_o\;

ww_test_bus(7) <= \test_bus[7]~output_o\;

ww_test_bus(8) <= \test_bus[8]~output_o\;

ww_test_bus(9) <= \test_bus[9]~output_o\;

ww_test_bus(10) <= \test_bus[10]~output_o\;

ww_test_bus(11) <= \test_bus[11]~output_o\;

ww_test_bus(12) <= \test_bus[12]~output_o\;

ww_test_bus(13) <= \test_bus[13]~output_o\;

ww_test_bus(14) <= \test_bus[14]~output_o\;

ww_test_bus(15) <= \test_bus[15]~output_o\;

ww_test_ir(0) <= \test_ir[0]~output_o\;

ww_test_ir(1) <= \test_ir[1]~output_o\;

ww_test_ir(2) <= \test_ir[2]~output_o\;

ww_test_ir(3) <= \test_ir[3]~output_o\;

ww_test_ir(4) <= \test_ir[4]~output_o\;

ww_test_ir(5) <= \test_ir[5]~output_o\;

ww_test_ir(6) <= \test_ir[6]~output_o\;

ww_test_ir(7) <= \test_ir[7]~output_o\;

ww_test_ir(8) <= \test_ir[8]~output_o\;

ww_test_ir(9) <= \test_ir[9]~output_o\;

ww_test_ir(10) <= \test_ir[10]~output_o\;

ww_test_ir(11) <= \test_ir[11]~output_o\;

ww_test_ir(12) <= \test_ir[12]~output_o\;

ww_test_ir(13) <= \test_ir[13]~output_o\;

ww_test_ir(14) <= \test_ir[14]~output_o\;

ww_test_ir(15) <= \test_ir[15]~output_o\;

ww_ax(0) <= \ax[0]~output_o\;

ww_ax(1) <= \ax[1]~output_o\;

ww_ax(2) <= \ax[2]~output_o\;

ww_ax(3) <= \ax[3]~output_o\;

ww_ax(4) <= \ax[4]~output_o\;

ww_ax(5) <= \ax[5]~output_o\;

ww_ax(6) <= \ax[6]~output_o\;

ww_ax(7) <= \ax[7]~output_o\;

ww_ax(8) <= \ax[8]~output_o\;

ww_ax(9) <= \ax[9]~output_o\;

ww_ax(10) <= \ax[10]~output_o\;

ww_ax(11) <= \ax[11]~output_o\;

ww_ax(12) <= \ax[12]~output_o\;

ww_ax(13) <= \ax[13]~output_o\;

ww_ax(14) <= \ax[14]~output_o\;

ww_ax(15) <= \ax[15]~output_o\;

ww_bx(0) <= \bx[0]~output_o\;

ww_bx(1) <= \bx[1]~output_o\;

ww_bx(2) <= \bx[2]~output_o\;

ww_bx(3) <= \bx[3]~output_o\;

ww_bx(4) <= \bx[4]~output_o\;

ww_bx(5) <= \bx[5]~output_o\;

ww_bx(6) <= \bx[6]~output_o\;

ww_bx(7) <= \bx[7]~output_o\;

ww_bx(8) <= \bx[8]~output_o\;

ww_bx(9) <= \bx[9]~output_o\;

ww_bx(10) <= \bx[10]~output_o\;

ww_bx(11) <= \bx[11]~output_o\;

ww_bx(12) <= \bx[12]~output_o\;

ww_bx(13) <= \bx[13]~output_o\;

ww_bx(14) <= \bx[14]~output_o\;

ww_bx(15) <= \bx[15]~output_o\;
END structure;


