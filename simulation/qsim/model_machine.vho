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

-- DATE "07/13/2020 19:45:52"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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
	in_data : IN std_logic_vector(7 DOWNTO 0);
	test_bus : BUFFER std_logic_vector(7 DOWNTO 0);
	test : BUFFER std_logic;
	ax : BUFFER std_logic_vector(7 DOWNTO 0);
	bx : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END model_machine;

-- Design Ports Information
-- test_bus[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[1]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[2]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[3]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[4]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[5]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[6]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test_bus[7]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- test	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[0]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[1]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[2]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[3]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[4]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[5]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[6]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ax[7]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[0]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[1]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[2]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[4]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[5]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[6]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bx[7]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_data	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[0]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_addr[0]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_addr[1]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_addr[2]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_addr[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[3]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[4]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[5]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[6]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_data[7]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_in_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_test_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_test : std_logic;
SIGNAL ww_ax : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_bx : std_logic_vector(7 DOWNTO 0);
SIGNAL \u4|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u4|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u8|Equal11~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \test_bus[0]~output_o\ : std_logic;
SIGNAL \test_bus[1]~output_o\ : std_logic;
SIGNAL \test_bus[2]~output_o\ : std_logic;
SIGNAL \test_bus[3]~output_o\ : std_logic;
SIGNAL \test_bus[4]~output_o\ : std_logic;
SIGNAL \test_bus[5]~output_o\ : std_logic;
SIGNAL \test_bus[6]~output_o\ : std_logic;
SIGNAL \test_bus[7]~output_o\ : std_logic;
SIGNAL \test~output_o\ : std_logic;
SIGNAL \ax[0]~output_o\ : std_logic;
SIGNAL \ax[1]~output_o\ : std_logic;
SIGNAL \ax[2]~output_o\ : std_logic;
SIGNAL \ax[3]~output_o\ : std_logic;
SIGNAL \ax[4]~output_o\ : std_logic;
SIGNAL \ax[5]~output_o\ : std_logic;
SIGNAL \ax[6]~output_o\ : std_logic;
SIGNAL \ax[7]~output_o\ : std_logic;
SIGNAL \bx[0]~output_o\ : std_logic;
SIGNAL \bx[1]~output_o\ : std_logic;
SIGNAL \bx[2]~output_o\ : std_logic;
SIGNAL \bx[3]~output_o\ : std_logic;
SIGNAL \bx[4]~output_o\ : std_logic;
SIGNAL \bx[5]~output_o\ : std_logic;
SIGNAL \bx[6]~output_o\ : std_logic;
SIGNAL \bx[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \wr_data~input_o\ : std_logic;
SIGNAL \reset~0_combout\ : std_logic;
SIGNAL \reset~0clkctrl_outclk\ : std_logic;
SIGNAL \u9|temp[0]~1_combout\ : std_logic;
SIGNAL \u9|temp[1]~0_combout\ : std_logic;
SIGNAL \u8|Equal4~0_combout\ : std_logic;
SIGNAL \u10|dr_to_bus~5_combout\ : std_logic;
SIGNAL \u10|alu_add~combout\ : std_logic;
SIGNAL \u10|alu_shl~0_combout\ : std_logic;
SIGNAL \u10|alu_shl~combout\ : std_logic;
SIGNAL \u8|Equal5~0_combout\ : std_logic;
SIGNAL \u8|Equal5~1_combout\ : std_logic;
SIGNAL \u10|dr_to_bus~4_combout\ : std_logic;
SIGNAL \u10|alu_sub~combout\ : std_logic;
SIGNAL \u7|temp[6]~8_combout\ : std_logic;
SIGNAL \u8|Equal1~0_combout\ : std_logic;
SIGNAL \u7|temp~22_combout\ : std_logic;
SIGNAL \u7|temp~19_combout\ : std_logic;
SIGNAL \u6|temp_a~6_combout\ : std_logic;
SIGNAL \u6|temp_a[0]~1_combout\ : std_logic;
SIGNAL \u6|temp_b~6_combout\ : std_logic;
SIGNAL \u6|temp_b[0]~1_combout\ : std_logic;
SIGNAL \u10|a_to_bus~0_combout\ : std_logic;
SIGNAL \u10|a_to_bus~1_combout\ : std_logic;
SIGNAL \u10|a_to_bus~combout\ : std_logic;
SIGNAL \u6|acc_out[5]~5_combout\ : std_logic;
SIGNAL \u7|Add0~17_combout\ : std_logic;
SIGNAL \u7|Add0~14_combout\ : std_logic;
SIGNAL \u7|temp~11_combout\ : std_logic;
SIGNAL \u6|temp_b~2_combout\ : std_logic;
SIGNAL \u6|temp_a~2_combout\ : std_logic;
SIGNAL \u6|acc_out[1]~1_combout\ : std_logic;
SIGNAL \u5|dr_out[1]~26_combout\ : std_logic;
SIGNAL \u7|Add0~8_combout\ : std_logic;
SIGNAL \u7|Add0~5_combout\ : std_logic;
SIGNAL \u7|Add0~0_combout\ : std_logic;
SIGNAL \u7|Add0~2_cout\ : std_logic;
SIGNAL \u7|Add0~4\ : std_logic;
SIGNAL \u7|Add0~7\ : std_logic;
SIGNAL \u7|Add0~9_combout\ : std_logic;
SIGNAL \u7|temp~12_combout\ : std_logic;
SIGNAL \in_data[0]~input_o\ : std_logic;
SIGNAL \u10|dr_to_bus~0_combout\ : std_logic;
SIGNAL \u10|dr_to_bus~1_combout\ : std_logic;
SIGNAL \u10|pc_to_mar~0_combout\ : std_logic;
SIGNAL \u10|pc_sfincs~0_combout\ : std_logic;
SIGNAL \u10|pc_sfincs~1_combout\ : std_logic;
SIGNAL \u10|alu_out~1_combout\ : std_logic;
SIGNAL \u10|pc_sfincs~2_combout\ : std_logic;
SIGNAL \u1|tmp[0]~0_combout\ : std_logic;
SIGNAL \u10|pc_to_mar~1_combout\ : std_logic;
SIGNAL \u10|pc_to_mar~combout\ : std_logic;
SIGNAL \wr_addr[0]~input_o\ : std_logic;
SIGNAL \u3|res[0]~0_combout\ : std_logic;
SIGNAL \wr_addr[1]~input_o\ : std_logic;
SIGNAL \u1|tmp[1]~1_combout\ : std_logic;
SIGNAL \u1|tmp[1]~2_combout\ : std_logic;
SIGNAL \u3|res[1]~1_combout\ : std_logic;
SIGNAL \wr_addr[2]~input_o\ : std_logic;
SIGNAL \u1|tmp[2]~3_combout\ : std_logic;
SIGNAL \u3|res[2]~2_combout\ : std_logic;
SIGNAL \u1|tmp[3]~4_combout\ : std_logic;
SIGNAL \wr_addr[3]~input_o\ : std_logic;
SIGNAL \u3|res[3]~3_combout\ : std_logic;
SIGNAL \in_data[1]~input_o\ : std_logic;
SIGNAL \in_data[2]~input_o\ : std_logic;
SIGNAL \in_data[3]~input_o\ : std_logic;
SIGNAL \in_data[4]~input_o\ : std_logic;
SIGNAL \in_data[5]~input_o\ : std_logic;
SIGNAL \in_data[6]~input_o\ : std_logic;
SIGNAL \in_data[7]~input_o\ : std_logic;
SIGNAL \u4|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \u10|alu_out~0_combout\ : std_logic;
SIGNAL \u10|alu_out~2_combout\ : std_logic;
SIGNAL \u10|alu_out~combout\ : std_logic;
SIGNAL \u5|dr_out[2]~13_combout\ : std_logic;
SIGNAL \u5|dr_out[2]~27_combout\ : std_logic;
SIGNAL \u7|Add0~10\ : std_logic;
SIGNAL \u7|Add0~12_combout\ : std_logic;
SIGNAL \u7|temp~13_combout\ : std_logic;
SIGNAL \u7|temp~14_combout\ : std_logic;
SIGNAL \u4|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \u5|dr_out[3]~15_combout\ : std_logic;
SIGNAL \u7|Add0~11_combout\ : std_logic;
SIGNAL \u7|Add0~13\ : std_logic;
SIGNAL \u7|Add0~16\ : std_logic;
SIGNAL \u7|Add0~18_combout\ : std_logic;
SIGNAL \u7|temp~17_combout\ : std_logic;
SIGNAL \u7|temp~18_combout\ : std_logic;
SIGNAL \u4|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \u5|dr_out[5]~19_combout\ : std_logic;
SIGNAL \u5|dr_out[5]~30_combout\ : std_logic;
SIGNAL \u7|Add0~20_combout\ : std_logic;
SIGNAL \u7|Add0~19\ : std_logic;
SIGNAL \u7|Add0~21_combout\ : std_logic;
SIGNAL \u7|temp~20_combout\ : std_logic;
SIGNAL \u4|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \u5|dr_out[6]~21_combout\ : std_logic;
SIGNAL \u5|dr_out[6]~31_combout\ : std_logic;
SIGNAL \u6|temp_b~7_combout\ : std_logic;
SIGNAL \u6|temp_a~7_combout\ : std_logic;
SIGNAL \u6|acc_out[6]~6_combout\ : std_logic;
SIGNAL \u7|temp~21_combout\ : std_logic;
SIGNAL \u7|temp~4_combout\ : std_logic;
SIGNAL \u7|temp~24_combout\ : std_logic;
SIGNAL \u7|Add0~23_combout\ : std_logic;
SIGNAL \u7|Add0~22\ : std_logic;
SIGNAL \u7|Add0~24_combout\ : std_logic;
SIGNAL \u7|temp~23_combout\ : std_logic;
SIGNAL \u4|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \u5|dr_out[7]~23_combout\ : std_logic;
SIGNAL \u5|dr_out[7]~32_combout\ : std_logic;
SIGNAL \u6|temp_b~8_combout\ : std_logic;
SIGNAL \u6|temp_a~8_combout\ : std_logic;
SIGNAL \u6|acc_out[7]~7_combout\ : std_logic;
SIGNAL \u8|tmp~4_combout\ : std_logic;
SIGNAL \u10|bus_to_ir~combout\ : std_logic;
SIGNAL \u8|tmp[1]~1_combout\ : std_logic;
SIGNAL \u8|tmp~3_combout\ : std_logic;
SIGNAL \u8|tmp~8_combout\ : std_logic;
SIGNAL \u8|Equal3~0_combout\ : std_logic;
SIGNAL \u8|Equal3~1_combout\ : std_logic;
SIGNAL \u10|bus_to_b~0_combout\ : std_logic;
SIGNAL \u10|bus_to_b~1_combout\ : std_logic;
SIGNAL \u10|bus_to_b~combout\ : std_logic;
SIGNAL \u6|temp_b~4_combout\ : std_logic;
SIGNAL \u6|temp_a~4_combout\ : std_logic;
SIGNAL \u6|acc_out[3]~3_combout\ : std_logic;
SIGNAL \u5|dr_out[3]~28_combout\ : std_logic;
SIGNAL \u7|temp~15_combout\ : std_logic;
SIGNAL \u7|Add0~15_combout\ : std_logic;
SIGNAL \u7|temp~16_combout\ : std_logic;
SIGNAL \u4|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \u5|dr_out[4]~17_combout\ : std_logic;
SIGNAL \u5|dr_out[4]~29_combout\ : std_logic;
SIGNAL \u6|temp_a~5_combout\ : std_logic;
SIGNAL \u6|temp_b~5_combout\ : std_logic;
SIGNAL \u6|acc_out[4]~4_combout\ : std_logic;
SIGNAL \u8|tmp~2_combout\ : std_logic;
SIGNAL \u8|Equal0~0_combout\ : std_logic;
SIGNAL \u8|Equal7~0_combout\ : std_logic;
SIGNAL \u10|alu_shr~0_combout\ : std_logic;
SIGNAL \u10|alu_shr~combout\ : std_logic;
SIGNAL \u7|temp~7_combout\ : std_logic;
SIGNAL \u5|dr_out[0]~25_combout\ : std_logic;
SIGNAL \u7|Add0~6_combout\ : std_logic;
SIGNAL \u7|temp~9_combout\ : std_logic;
SIGNAL \u7|temp~10_combout\ : std_logic;
SIGNAL \u4|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \u5|dr_out[1]~11_combout\ : std_logic;
SIGNAL \u8|tmp~6_combout\ : std_logic;
SIGNAL \u10|bus_to_a~1_combout\ : std_logic;
SIGNAL \u10|bus_to_a~0_combout\ : std_logic;
SIGNAL \u10|bus_to_a~2_combout\ : std_logic;
SIGNAL \u10|bus_to_a~combout\ : std_logic;
SIGNAL \u6|temp_a~3_combout\ : std_logic;
SIGNAL \u6|temp_b~3_combout\ : std_logic;
SIGNAL \u6|acc_out[2]~2_combout\ : std_logic;
SIGNAL \u8|tmp~5_combout\ : std_logic;
SIGNAL \u8|Equal0~1_combout\ : std_logic;
SIGNAL \u10|b_to_bus~0_combout\ : std_logic;
SIGNAL \u10|b_to_bus~combout\ : std_logic;
SIGNAL \u5|dr_out[0]~10_combout\ : std_logic;
SIGNAL \u8|tmp~0_combout\ : std_logic;
SIGNAL \u8|Equal11~0_combout\ : std_logic;
SIGNAL \u8|Equal11~0clkctrl_outclk\ : std_logic;
SIGNAL \u10|dr_to_bus~2_combout\ : std_logic;
SIGNAL \u10|dr_to_bus~3_combout\ : std_logic;
SIGNAL \u10|dr_to_bus~combout\ : std_logic;
SIGNAL \u7|Add0~3_combout\ : std_logic;
SIGNAL \u7|temp~5_combout\ : std_logic;
SIGNAL \u7|temp~6_combout\ : std_logic;
SIGNAL \u4|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \u5|dr_out[0]~8_combout\ : std_logic;
SIGNAL \u8|tmp~7_combout\ : std_logic;
SIGNAL \u8|Equal8~0_combout\ : std_logic;
SIGNAL \u10|acc_xchg~0_combout\ : std_logic;
SIGNAL \u10|acc_xchg~combout\ : std_logic;
SIGNAL \u6|temp_b~0_combout\ : std_logic;
SIGNAL \u6|temp_a~0_combout\ : std_logic;
SIGNAL \u6|acc_out[0]~0_combout\ : std_logic;
SIGNAL \u5|dr_out[0]~9_combout\ : std_logic;
SIGNAL \u5|dr_out[1]~12_combout\ : std_logic;
SIGNAL \u5|dr_out[2]~14_combout\ : std_logic;
SIGNAL \u5|dr_out[3]~16_combout\ : std_logic;
SIGNAL \u5|dr_out[4]~18_combout\ : std_logic;
SIGNAL \u5|dr_out[5]~20_combout\ : std_logic;
SIGNAL \u5|dr_out[6]~22_combout\ : std_logic;
SIGNAL \u5|dr_out[7]~24_combout\ : std_logic;
SIGNAL \u2|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u6|temp_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u6|temp_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u7|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u9|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u8|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_wr_data~input_o\ : std_logic;

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
test_bus <= ww_test_bus;
test <= ww_test;
ax <= ww_ax;
bx <= ww_bx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u4|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \in_data[7]~input_o\ & 
\in_data[6]~input_o\ & \in_data[5]~input_o\ & \in_data[4]~input_o\ & \in_data[3]~input_o\ & \in_data[2]~input_o\ & \in_data[1]~input_o\ & \in_data[0]~input_o\);

\u4|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u3|res[3]~3_combout\ & \u3|res[2]~2_combout\ & \u3|res[1]~1_combout\ & \u3|res[0]~0_combout\);

\u4|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\u3|res[3]~3_combout\ & \u3|res[2]~2_combout\ & \u3|res[1]~1_combout\ & \u3|res[0]~0_combout\);

\u4|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \u4|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\u4|mem_rtl_0|auto_generated|ram_block1a1\ <= \u4|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\u4|mem_rtl_0|auto_generated|ram_block1a2\ <= \u4|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\u4|mem_rtl_0|auto_generated|ram_block1a3\ <= \u4|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\u4|mem_rtl_0|auto_generated|ram_block1a4\ <= \u4|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\u4|mem_rtl_0|auto_generated|ram_block1a5\ <= \u4|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\u4|mem_rtl_0|auto_generated|ram_block1a6\ <= \u4|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\u4|mem_rtl_0|auto_generated|ram_block1a7\ <= \u4|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\u8|Equal11~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u8|Equal11~0_combout\);

\reset~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~0clkctrl_outclk\ <= NOT \reset~0clkctrl_outclk\;
\ALT_INV_wr_data~input_o\ <= NOT \wr_data~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N16
\test_bus[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|dr_out[0]~9_combout\,
	oe => \u5|dr_out[0]~10_combout\,
	devoe => ww_devoe,
	o => \test_bus[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\test_bus[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|dr_out[1]~12_combout\,
	oe => \u5|dr_out[0]~10_combout\,
	devoe => ww_devoe,
	o => \test_bus[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\test_bus[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|dr_out[2]~14_combout\,
	oe => \u5|dr_out[0]~10_combout\,
	devoe => ww_devoe,
	o => \test_bus[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\test_bus[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|dr_out[3]~16_combout\,
	oe => \u5|dr_out[0]~10_combout\,
	devoe => ww_devoe,
	o => \test_bus[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\test_bus[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|dr_out[4]~18_combout\,
	oe => \u5|dr_out[0]~10_combout\,
	devoe => ww_devoe,
	o => \test_bus[4]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\test_bus[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|dr_out[5]~20_combout\,
	oe => \u5|dr_out[0]~10_combout\,
	devoe => ww_devoe,
	o => \test_bus[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\test_bus[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|dr_out[6]~22_combout\,
	oe => \u5|dr_out[0]~10_combout\,
	devoe => ww_devoe,
	o => \test_bus[6]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\test_bus[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u5|dr_out[7]~24_combout\,
	oe => \u5|dr_out[0]~10_combout\,
	devoe => ww_devoe,
	o => \test_bus[7]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\test~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u10|bus_to_ir~combout\,
	devoe => ww_devoe,
	o => \test~output_o\);

-- Location: IOOBUF_X0_Y21_N9
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

-- Location: IOOBUF_X18_Y24_N23
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X18_Y24_N16
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

-- Location: IOOBUF_X34_Y18_N2
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

-- Location: IOOBUF_X34_Y20_N9
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

-- Location: IOOBUF_X16_Y24_N2
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X18_Y0_N16
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

-- Location: IOOBUF_X30_Y24_N23
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

-- Location: IOOBUF_X34_Y17_N2
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

-- Location: IOOBUF_X7_Y24_N2
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

-- Location: IOOBUF_X13_Y0_N2
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

-- Location: IOOBUF_X11_Y24_N16
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

-- Location: IOOBUF_X23_Y24_N16
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOIBUF_X16_Y24_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\wr_data~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_data,
	o => \wr_data~input_o\);

-- Location: LCCOMB_X17_Y20_N2
\reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset~0_combout\ = (\rst~input_o\) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \wr_data~input_o\,
	combout => \reset~0_combout\);

-- Location: CLKCTRL_G8
\reset~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~0clkctrl_outclk\);

-- Location: FF_X19_Y18_N7
\u9|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u9|temp\(4),
	clrn => \ALT_INV_reset~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9|temp\(5));

-- Location: FF_X17_Y18_N29
\u9|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u9|temp\(5),
	clrn => \ALT_INV_reset~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9|temp\(6));

-- Location: FF_X17_Y18_N3
\u9|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u9|temp\(6),
	clrn => \ALT_INV_reset~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9|temp\(7));

-- Location: LCCOMB_X17_Y18_N20
\u9|temp[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|temp[0]~1_combout\ = !\u9|temp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u9|temp\(7),
	combout => \u9|temp[0]~1_combout\);

-- Location: FF_X17_Y18_N7
\u9|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u9|temp[0]~1_combout\,
	clrn => \ALT_INV_reset~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9|temp\(0));

-- Location: LCCOMB_X17_Y18_N4
\u9|temp[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u9|temp[1]~0_combout\ = !\u9|temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u9|temp\(0),
	combout => \u9|temp[1]~0_combout\);

-- Location: FF_X17_Y18_N5
\u9|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u9|temp[1]~0_combout\,
	clrn => \ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9|temp\(1));

-- Location: FF_X17_Y18_N31
\u9|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u9|temp\(1),
	clrn => \ALT_INV_reset~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9|temp\(2));

-- Location: FF_X17_Y18_N21
\u9|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u9|temp\(2),
	clrn => \ALT_INV_reset~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9|temp\(3));

-- Location: FF_X19_Y18_N23
\u9|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \u9|temp\(3),
	clrn => \ALT_INV_reset~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u9|temp\(4));

-- Location: LCCOMB_X19_Y18_N10
\u8|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal4~0_combout\ = (\u8|tmp\(0) & (\u8|tmp\(2) & (!\u8|tmp\(3) & \u8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(0),
	datab => \u8|tmp\(2),
	datac => \u8|tmp\(3),
	datad => \u8|Equal0~0_combout\,
	combout => \u8|Equal4~0_combout\);

-- Location: LCCOMB_X19_Y20_N20
\u10|dr_to_bus~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|dr_to_bus~5_combout\ = (\u9|temp\(4) & (!\u8|tmp\(1) & \u8|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(4),
	datab => \u8|tmp\(1),
	datac => \u8|Equal4~0_combout\,
	combout => \u10|dr_to_bus~5_combout\);

-- Location: LCCOMB_X19_Y20_N30
\u10|alu_add\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|alu_add~combout\ = (GLOBAL(\u8|Equal11~0clkctrl_outclk\) & ((\u10|alu_add~combout\))) # (!GLOBAL(\u8|Equal11~0clkctrl_outclk\) & (\u10|dr_to_bus~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|dr_to_bus~5_combout\,
	datac => \u10|alu_add~combout\,
	datad => \u8|Equal11~0clkctrl_outclk\,
	combout => \u10|alu_add~combout\);

-- Location: LCCOMB_X19_Y18_N26
\u10|alu_shl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|alu_shl~0_combout\ = (\u9|temp\(3) & ((\u8|tmp\(1) & ((\u8|Equal7~0_combout\))) # (!\u8|tmp\(1) & (\u8|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(3),
	datab => \u8|tmp\(1),
	datac => \u8|Equal8~0_combout\,
	datad => \u8|Equal7~0_combout\,
	combout => \u10|alu_shl~0_combout\);

-- Location: LCCOMB_X16_Y18_N22
\u10|alu_shl\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|alu_shl~combout\ = (GLOBAL(\u8|Equal11~0clkctrl_outclk\) & ((\u10|alu_shl~combout\))) # (!GLOBAL(\u8|Equal11~0clkctrl_outclk\) & (\u10|alu_shl~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|alu_shl~0_combout\,
	datac => \u10|alu_shl~combout\,
	datad => \u8|Equal11~0clkctrl_outclk\,
	combout => \u10|alu_shl~combout\);

-- Location: LCCOMB_X18_Y18_N0
\u8|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal5~0_combout\ = (!\u8|tmp\(3) & \u8|tmp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u8|tmp\(3),
	datad => \u8|tmp\(1),
	combout => \u8|Equal5~0_combout\);

-- Location: LCCOMB_X18_Y18_N12
\u8|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal5~1_combout\ = (\u8|tmp\(2) & (!\u8|tmp\(0) & (\u8|Equal0~0_combout\ & \u8|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(2),
	datab => \u8|tmp\(0),
	datac => \u8|Equal0~0_combout\,
	datad => \u8|Equal5~0_combout\,
	combout => \u8|Equal5~1_combout\);

-- Location: LCCOMB_X19_Y20_N18
\u10|dr_to_bus~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|dr_to_bus~4_combout\ = (\u9|temp\(4) & \u8|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(4),
	datad => \u8|Equal5~1_combout\,
	combout => \u10|dr_to_bus~4_combout\);

-- Location: LCCOMB_X19_Y20_N4
\u10|alu_sub\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|alu_sub~combout\ = (GLOBAL(\u8|Equal11~0clkctrl_outclk\) & (\u10|alu_sub~combout\)) # (!GLOBAL(\u8|Equal11~0clkctrl_outclk\) & ((\u10|dr_to_bus~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|alu_sub~combout\,
	datac => \u10|dr_to_bus~4_combout\,
	datad => \u8|Equal11~0clkctrl_outclk\,
	combout => \u10|alu_sub~combout\);

-- Location: LCCOMB_X16_Y19_N8
\u7|temp[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp[6]~8_combout\ = (\u10|alu_shl~combout\) # ((!\u10|alu_shr~combout\ & ((\u10|alu_add~combout\) # (\u10|alu_sub~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|alu_add~combout\,
	datab => \u10|alu_shl~combout\,
	datac => \u10|alu_shr~combout\,
	datad => \u10|alu_sub~combout\,
	combout => \u7|temp[6]~8_combout\);

-- Location: LCCOMB_X18_Y18_N22
\u8|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal1~0_combout\ = (!\u8|tmp\(2) & (!\u8|tmp\(0) & (\u8|Equal0~0_combout\ & \u8|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(2),
	datab => \u8|tmp\(0),
	datac => \u8|Equal0~0_combout\,
	datad => \u8|Equal5~0_combout\,
	combout => \u8|Equal1~0_combout\);

-- Location: LCCOMB_X16_Y19_N12
\u7|temp~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~22_combout\ = (!\u10|alu_shl~combout\ & (!\u10|alu_shr~combout\ & ((\u10|alu_add~combout\) # (\u10|alu_sub~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|alu_add~combout\,
	datab => \u10|alu_shl~combout\,
	datac => \u10|alu_shr~combout\,
	datad => \u10|alu_sub~combout\,
	combout => \u7|temp~22_combout\);

-- Location: LCCOMB_X17_Y20_N8
\u7|temp~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~19_combout\ = (\u7|temp~7_combout\ & (\u7|temp\(6) & ((!\u7|temp[6]~8_combout\)))) # (!\u7|temp~7_combout\ & (((\u5|dr_out[7]~32_combout\) # (\u7|temp[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(6),
	datab => \u7|temp~7_combout\,
	datac => \u5|dr_out[7]~32_combout\,
	datad => \u7|temp[6]~8_combout\,
	combout => \u7|temp~19_combout\);

-- Location: LCCOMB_X17_Y20_N24
\u6|temp_a~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~6_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_b\(5))) # (!\u10|acc_xchg~combout\ & (((\u10|bus_to_a~combout\ & \u5|dr_out[5]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(5),
	datab => \u10|bus_to_a~combout\,
	datac => \u5|dr_out[5]~30_combout\,
	datad => \u10|acc_xchg~combout\,
	combout => \u6|temp_a~6_combout\);

-- Location: LCCOMB_X17_Y20_N4
\u6|temp_a[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a[0]~1_combout\ = (\u10|acc_xchg~combout\) # ((\rst~input_o\) # ((\u10|bus_to_a~combout\) # (!\wr_data~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \rst~input_o\,
	datac => \u10|bus_to_a~combout\,
	datad => \wr_data~input_o\,
	combout => \u6|temp_a[0]~1_combout\);

-- Location: FF_X17_Y20_N25
\u6|temp_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~6_combout\,
	ena => \u6|temp_a[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(5));

-- Location: LCCOMB_X18_Y20_N2
\u6|temp_b~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~6_combout\ = (\u10|acc_xchg~combout\ & (((\u6|temp_a\(5))))) # (!\u10|acc_xchg~combout\ & (\u10|bus_to_b~combout\ & ((\u5|dr_out[5]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|bus_to_b~combout\,
	datab => \u6|temp_a\(5),
	datac => \u10|acc_xchg~combout\,
	datad => \u5|dr_out[5]~30_combout\,
	combout => \u6|temp_b~6_combout\);

-- Location: LCCOMB_X17_Y20_N14
\u6|temp_b[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b[0]~1_combout\ = (\u10|acc_xchg~combout\) # ((\rst~input_o\) # ((\u10|bus_to_b~combout\) # (!\wr_data~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \rst~input_o\,
	datac => \u10|bus_to_b~combout\,
	datad => \wr_data~input_o\,
	combout => \u6|temp_b[0]~1_combout\);

-- Location: FF_X18_Y20_N3
\u6|temp_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~6_combout\,
	ena => \u6|temp_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(5));

-- Location: LCCOMB_X19_Y18_N18
\u10|a_to_bus~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|a_to_bus~0_combout\ = (\u8|Equal1~0_combout\) # ((\u8|tmp\(1) & ((\u8|Equal4~0_combout\))) # (!\u8|tmp\(1) & (\u8|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal8~0_combout\,
	datab => \u8|Equal4~0_combout\,
	datac => \u8|Equal1~0_combout\,
	datad => \u8|tmp\(1),
	combout => \u10|a_to_bus~0_combout\);

-- Location: LCCOMB_X19_Y18_N4
\u10|a_to_bus~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|a_to_bus~1_combout\ = (\u10|a_to_bus~0_combout\ & \u9|temp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|a_to_bus~0_combout\,
	datac => \u9|temp\(3),
	combout => \u10|a_to_bus~1_combout\);

-- Location: LCCOMB_X19_Y19_N0
\u10|a_to_bus\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|a_to_bus~combout\ = (GLOBAL(\u8|Equal11~0clkctrl_outclk\) & (\u10|a_to_bus~combout\)) # (!GLOBAL(\u8|Equal11~0clkctrl_outclk\) & ((\u10|a_to_bus~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|a_to_bus~combout\,
	datac => \u10|a_to_bus~1_combout\,
	datad => \u8|Equal11~0clkctrl_outclk\,
	combout => \u10|a_to_bus~combout\);

-- Location: LCCOMB_X19_Y19_N28
\u6|acc_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|acc_out[5]~5_combout\ = (\u10|a_to_bus~combout\ & (((\u6|temp_a\(5))))) # (!\u10|a_to_bus~combout\ & ((\u6|temp_b\(5)) # ((!\u10|b_to_bus~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(5),
	datab => \u6|temp_a\(5),
	datac => \u10|b_to_bus~combout\,
	datad => \u10|a_to_bus~combout\,
	combout => \u6|acc_out[5]~5_combout\);

-- Location: LCCOMB_X19_Y19_N12
\u7|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~17_combout\ = \u10|alu_sub~combout\ $ ((((\u6|acc_out[5]~5_combout\ & \u5|dr_out[5]~19_combout\)) # (!\u5|dr_out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|alu_sub~combout\,
	datab => \u6|acc_out[5]~5_combout\,
	datac => \u5|dr_out[5]~19_combout\,
	datad => \u5|dr_out[0]~10_combout\,
	combout => \u7|Add0~17_combout\);

-- Location: LCCOMB_X18_Y19_N6
\u7|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~14_combout\ = \u10|alu_sub~combout\ $ ((((\u6|acc_out[4]~4_combout\ & \u5|dr_out[4]~17_combout\)) # (!\u5|dr_out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|acc_out[4]~4_combout\,
	datab => \u10|alu_sub~combout\,
	datac => \u5|dr_out[0]~10_combout\,
	datad => \u5|dr_out[4]~17_combout\,
	combout => \u7|Add0~14_combout\);

-- Location: LCCOMB_X17_Y19_N0
\u7|temp~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~11_combout\ = (\u7|temp~7_combout\ & (\u7|temp\(2) & ((!\u7|temp[6]~8_combout\)))) # (!\u7|temp~7_combout\ & (((\u5|dr_out[3]~28_combout\) # (\u7|temp[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(2),
	datab => \u7|temp~7_combout\,
	datac => \u5|dr_out[3]~28_combout\,
	datad => \u7|temp[6]~8_combout\,
	combout => \u7|temp~11_combout\);

-- Location: LCCOMB_X18_Y20_N30
\u6|temp_b~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~2_combout\ = (\u10|acc_xchg~combout\ & (((\u6|temp_a\(1))))) # (!\u10|acc_xchg~combout\ & (\u10|bus_to_b~combout\ & ((\u5|dr_out[1]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|bus_to_b~combout\,
	datab => \u6|temp_a\(1),
	datac => \u10|acc_xchg~combout\,
	datad => \u5|dr_out[1]~26_combout\,
	combout => \u6|temp_b~2_combout\);

-- Location: FF_X18_Y20_N31
\u6|temp_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~2_combout\,
	ena => \u6|temp_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(1));

-- Location: LCCOMB_X18_Y20_N28
\u6|temp_a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~2_combout\ = (\u10|acc_xchg~combout\ & (((\u6|temp_b\(1))))) # (!\u10|acc_xchg~combout\ & (\u10|bus_to_a~combout\ & ((\u5|dr_out[1]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|bus_to_a~combout\,
	datab => \u10|acc_xchg~combout\,
	datac => \u6|temp_b\(1),
	datad => \u5|dr_out[1]~26_combout\,
	combout => \u6|temp_a~2_combout\);

-- Location: FF_X18_Y20_N29
\u6|temp_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~2_combout\,
	ena => \u6|temp_a[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(1));

-- Location: LCCOMB_X18_Y19_N22
\u6|acc_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|acc_out[1]~1_combout\ = (\u10|a_to_bus~combout\ & (\u6|temp_a\(1))) # (!\u10|a_to_bus~combout\ & (((\u6|temp_b\(1)) # (!\u10|b_to_bus~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(1),
	datab => \u6|temp_b\(1),
	datac => \u10|a_to_bus~combout\,
	datad => \u10|b_to_bus~combout\,
	combout => \u6|acc_out[1]~1_combout\);

-- Location: LCCOMB_X18_Y20_N10
\u5|dr_out[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[1]~26_combout\ = ((\u6|acc_out[1]~1_combout\ & \u5|dr_out[1]~11_combout\)) # (!\u5|dr_out[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|acc_out[1]~1_combout\,
	datac => \u5|dr_out[0]~10_combout\,
	datad => \u5|dr_out[1]~11_combout\,
	combout => \u5|dr_out[1]~26_combout\);

-- Location: LCCOMB_X19_Y19_N10
\u7|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~8_combout\ = \u10|alu_sub~combout\ $ ((((\u6|acc_out[2]~2_combout\ & \u5|dr_out[2]~13_combout\)) # (!\u5|dr_out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|acc_out[2]~2_combout\,
	datab => \u5|dr_out[0]~10_combout\,
	datac => \u10|alu_sub~combout\,
	datad => \u5|dr_out[2]~13_combout\,
	combout => \u7|Add0~8_combout\);

-- Location: LCCOMB_X18_Y19_N20
\u7|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~5_combout\ = \u10|alu_sub~combout\ $ ((((\u6|acc_out[1]~1_combout\ & \u5|dr_out[1]~11_combout\)) # (!\u5|dr_out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|acc_out[1]~1_combout\,
	datab => \u10|alu_sub~combout\,
	datac => \u5|dr_out[0]~10_combout\,
	datad => \u5|dr_out[1]~11_combout\,
	combout => \u7|Add0~5_combout\);

-- Location: LCCOMB_X19_Y19_N6
\u7|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~0_combout\ = \u10|alu_sub~combout\ $ ((((\u6|acc_out[0]~0_combout\ & \u5|dr_out[0]~8_combout\)) # (!\u5|dr_out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|alu_sub~combout\,
	datab => \u6|acc_out[0]~0_combout\,
	datac => \u5|dr_out[0]~10_combout\,
	datad => \u5|dr_out[0]~8_combout\,
	combout => \u7|Add0~0_combout\);

-- Location: LCCOMB_X17_Y19_N10
\u7|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~2_cout\ = CARRY(\u10|alu_sub~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|alu_sub~combout\,
	datad => VCC,
	cout => \u7|Add0~2_cout\);

-- Location: LCCOMB_X17_Y19_N12
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

-- Location: LCCOMB_X17_Y19_N14
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

-- Location: LCCOMB_X17_Y19_N16
\u7|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~9_combout\ = (\u6|temp_a\(2) & ((\u7|Add0~8_combout\ & (\u7|Add0~7\ & VCC)) # (!\u7|Add0~8_combout\ & (!\u7|Add0~7\)))) # (!\u6|temp_a\(2) & ((\u7|Add0~8_combout\ & (!\u7|Add0~7\)) # (!\u7|Add0~8_combout\ & ((\u7|Add0~7\) # (GND)))))
-- \u7|Add0~10\ = CARRY((\u6|temp_a\(2) & (!\u7|Add0~8_combout\ & !\u7|Add0~7\)) # (!\u6|temp_a\(2) & ((!\u7|Add0~7\) # (!\u7|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(2),
	datab => \u7|Add0~8_combout\,
	datad => VCC,
	cin => \u7|Add0~7\,
	combout => \u7|Add0~9_combout\,
	cout => \u7|Add0~10\);

-- Location: LCCOMB_X17_Y19_N30
\u7|temp~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~12_combout\ = (\u7|temp[6]~8_combout\ & ((\u7|temp~11_combout\ & (\u5|dr_out[1]~26_combout\)) # (!\u7|temp~11_combout\ & ((\u7|Add0~9_combout\))))) # (!\u7|temp[6]~8_combout\ & (\u7|temp~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[6]~8_combout\,
	datab => \u7|temp~11_combout\,
	datac => \u5|dr_out[1]~26_combout\,
	datad => \u7|Add0~9_combout\,
	combout => \u7|temp~12_combout\);

-- Location: FF_X17_Y19_N31
\u7|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(2));

-- Location: IOIBUF_X34_Y19_N15
\in_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(0),
	o => \in_data[0]~input_o\);

-- Location: LCCOMB_X18_Y18_N28
\u10|dr_to_bus~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|dr_to_bus~0_combout\ = (\u8|tmp\(3)) # (\u8|tmp\(1) $ (!\u8|tmp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8|tmp\(1),
	datac => \u8|tmp\(3),
	datad => \u8|tmp\(2),
	combout => \u10|dr_to_bus~0_combout\);

-- Location: LCCOMB_X18_Y18_N20
\u10|dr_to_bus~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|dr_to_bus~1_combout\ = ((\u10|dr_to_bus~0_combout\) # (\u8|tmp\(2) $ (!\u8|tmp\(0)))) # (!\u8|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~0_combout\,
	datab => \u8|tmp\(2),
	datac => \u8|tmp\(0),
	datad => \u10|dr_to_bus~0_combout\,
	combout => \u10|dr_to_bus~1_combout\);

-- Location: LCCOMB_X17_Y18_N28
\u10|pc_to_mar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|pc_to_mar~0_combout\ = (!\u8|Equal5~1_combout\ & ((\u8|tmp\(1)) # (!\u8|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(1),
	datab => \u8|Equal5~1_combout\,
	datad => \u8|Equal4~0_combout\,
	combout => \u10|pc_to_mar~0_combout\);

-- Location: LCCOMB_X17_Y18_N2
\u10|pc_sfincs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|pc_sfincs~0_combout\ = (\u9|temp\(5) & ((!\u10|pc_to_mar~0_combout\) # (!\u10|dr_to_bus~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|dr_to_bus~1_combout\,
	datab => \u9|temp\(5),
	datad => \u10|pc_to_mar~0_combout\,
	combout => \u10|pc_sfincs~0_combout\);

-- Location: LCCOMB_X17_Y18_N6
\u10|pc_sfincs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|pc_sfincs~1_combout\ = (\u8|Equal1~0_combout\) # ((!\u8|tmp\(1) & \u8|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(1),
	datab => \u8|Equal1~0_combout\,
	datad => \u8|Equal0~1_combout\,
	combout => \u10|pc_sfincs~1_combout\);

-- Location: LCCOMB_X19_Y18_N16
\u10|alu_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|alu_out~1_combout\ = (!\u8|Equal7~0_combout\ & ((\u8|tmp\(1) & (!\u8|Equal4~0_combout\)) # (!\u8|tmp\(1) & ((!\u8|Equal8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal4~0_combout\,
	datab => \u8|tmp\(1),
	datac => \u8|Equal7~0_combout\,
	datad => \u8|Equal8~0_combout\,
	combout => \u10|alu_out~1_combout\);

-- Location: LCCOMB_X17_Y18_N30
\u10|pc_sfincs~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|pc_sfincs~2_combout\ = (\u9|temp\(2)) # ((\u9|temp\(4) & ((\u10|pc_sfincs~1_combout\) # (!\u10|alu_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|pc_sfincs~1_combout\,
	datab => \u9|temp\(4),
	datac => \u9|temp\(2),
	datad => \u10|alu_out~1_combout\,
	combout => \u10|pc_sfincs~2_combout\);

-- Location: LCCOMB_X17_Y18_N22
\u1|tmp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|tmp[0]~0_combout\ = \u1|tmp\(0) $ (((!\u8|Equal11~0_combout\ & ((\u10|pc_sfincs~0_combout\) # (\u10|pc_sfincs~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|pc_sfincs~0_combout\,
	datab => \u10|pc_sfincs~2_combout\,
	datac => \u1|tmp\(0),
	datad => \u8|Equal11~0_combout\,
	combout => \u1|tmp[0]~0_combout\);

-- Location: FF_X17_Y18_N23
\u1|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|tmp[0]~0_combout\,
	clrn => \ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|tmp\(0));

-- Location: LCCOMB_X17_Y18_N10
\u10|pc_to_mar~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|pc_to_mar~1_combout\ = ((\u9|temp\(3) & ((!\u10|dr_to_bus~1_combout\) # (!\u10|pc_to_mar~0_combout\)))) # (!\u9|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(0),
	datab => \u10|pc_to_mar~0_combout\,
	datac => \u9|temp\(3),
	datad => \u10|dr_to_bus~1_combout\,
	combout => \u10|pc_to_mar~1_combout\);

-- Location: LCCOMB_X17_Y18_N18
\u10|pc_to_mar\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|pc_to_mar~combout\ = (GLOBAL(\u8|Equal11~0clkctrl_outclk\) & (\u10|pc_to_mar~combout\)) # (!GLOBAL(\u8|Equal11~0clkctrl_outclk\) & ((\u10|pc_to_mar~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|pc_to_mar~combout\,
	datab => \u10|pc_to_mar~1_combout\,
	datad => \u8|Equal11~0clkctrl_outclk\,
	combout => \u10|pc_to_mar~combout\);

-- Location: FF_X17_Y18_N25
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
	ena => \u10|pc_to_mar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|temp\(0));

-- Location: IOIBUF_X34_Y18_N15
\wr_addr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_addr(0),
	o => \wr_addr[0]~input_o\);

-- Location: LCCOMB_X17_Y18_N24
\u3|res[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|res[0]~0_combout\ = (\wr_data~input_o\ & (\u2|temp\(0))) # (!\wr_data~input_o\ & ((\wr_addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr_data~input_o\,
	datac => \u2|temp\(0),
	datad => \wr_addr[0]~input_o\,
	combout => \u3|res[0]~0_combout\);

-- Location: IOIBUF_X0_Y18_N15
\wr_addr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_addr(1),
	o => \wr_addr[1]~input_o\);

-- Location: LCCOMB_X17_Y18_N12
\u1|tmp[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|tmp[1]~1_combout\ = (!\u8|Equal11~0_combout\ & (\u1|tmp\(0) & ((\u10|pc_sfincs~2_combout\) # (\u10|pc_sfincs~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal11~0_combout\,
	datab => \u1|tmp\(0),
	datac => \u10|pc_sfincs~2_combout\,
	datad => \u10|pc_sfincs~0_combout\,
	combout => \u1|tmp[1]~1_combout\);

-- Location: LCCOMB_X17_Y18_N14
\u1|tmp[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|tmp[1]~2_combout\ = \u1|tmp[1]~1_combout\ $ (\u1|tmp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|tmp[1]~1_combout\,
	datac => \u1|tmp\(1),
	combout => \u1|tmp[1]~2_combout\);

-- Location: FF_X17_Y18_N15
\u1|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|tmp[1]~2_combout\,
	clrn => \ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|tmp\(1));

-- Location: FF_X17_Y18_N17
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
	ena => \u10|pc_to_mar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|temp\(1));

-- Location: LCCOMB_X17_Y18_N16
\u3|res[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|res[1]~1_combout\ = (\wr_data~input_o\ & ((\u2|temp\(1)))) # (!\wr_data~input_o\ & (\wr_addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_addr[1]~input_o\,
	datab => \wr_data~input_o\,
	datac => \u2|temp\(1),
	combout => \u3|res[1]~1_combout\);

-- Location: IOIBUF_X0_Y18_N22
\wr_addr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_addr(2),
	o => \wr_addr[2]~input_o\);

-- Location: LCCOMB_X17_Y18_N26
\u1|tmp[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|tmp[2]~3_combout\ = \u1|tmp\(2) $ (((\u1|tmp[1]~1_combout\ & \u1|tmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|tmp[1]~1_combout\,
	datab => \u1|tmp\(1),
	datac => \u1|tmp\(2),
	combout => \u1|tmp[2]~3_combout\);

-- Location: FF_X17_Y18_N27
\u1|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|tmp[2]~3_combout\,
	clrn => \ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|tmp\(2));

-- Location: FF_X17_Y18_N19
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
	ena => \u10|pc_to_mar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|temp\(2));

-- Location: LCCOMB_X16_Y18_N24
\u3|res[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|res[2]~2_combout\ = (\wr_data~input_o\ & ((\u2|temp\(2)))) # (!\wr_data~input_o\ & (\wr_addr[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr_data~input_o\,
	datac => \wr_addr[2]~input_o\,
	datad => \u2|temp\(2),
	combout => \u3|res[2]~2_combout\);

-- Location: LCCOMB_X17_Y18_N8
\u1|tmp[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|tmp[3]~4_combout\ = \u1|tmp\(3) $ (((\u1|tmp[1]~1_combout\ & (\u1|tmp\(1) & \u1|tmp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|tmp[1]~1_combout\,
	datab => \u1|tmp\(1),
	datac => \u1|tmp\(3),
	datad => \u1|tmp\(2),
	combout => \u1|tmp[3]~4_combout\);

-- Location: FF_X17_Y18_N9
\u1|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|tmp[3]~4_combout\,
	clrn => \ALT_INV_reset~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|tmp\(3));

-- Location: FF_X17_Y18_N1
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
	ena => \u10|pc_to_mar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|temp\(3));

-- Location: IOIBUF_X16_Y0_N22
\wr_addr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_addr(3),
	o => \wr_addr[3]~input_o\);

-- Location: LCCOMB_X16_Y18_N18
\u3|res[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|res[3]~3_combout\ = (\wr_data~input_o\ & (\u2|temp\(3))) # (!\wr_data~input_o\ & ((\wr_addr[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr_data~input_o\,
	datac => \u2|temp\(3),
	datad => \wr_addr[3]~input_o\,
	combout => \u3|res[3]~3_combout\);

-- Location: IOIBUF_X9_Y24_N8
\in_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(1),
	o => \in_data[1]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\in_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(2),
	o => \in_data[2]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\in_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(3),
	o => \in_data[3]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\in_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(4),
	o => \in_data[4]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\in_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(5),
	o => \in_data[5]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\in_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(6),
	o => \in_data[6]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\in_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_data(7),
	o => \in_data[7]~input_o\);

-- Location: M9K_X15_Y19_N0
\u4|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/model_machine.ram0_RAM_15119.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM:u4|altsyncram:mem_rtl_0|altsyncram_76i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_wr_data~input_o\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \ALT_INV_wr_data~input_o\,
	ena1 => \u10|dr_to_bus~combout\,
	portadatain => \u4|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u4|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u4|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u4|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X19_Y18_N6
\u10|alu_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|alu_out~0_combout\ = (\u9|temp\(5) & ((\u8|Equal5~1_combout\) # ((\u8|Equal4~0_combout\ & !\u8|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal5~1_combout\,
	datab => \u8|Equal4~0_combout\,
	datac => \u9|temp\(5),
	datad => \u8|tmp\(1),
	combout => \u10|alu_out~0_combout\);

-- Location: LCCOMB_X19_Y18_N8
\u10|alu_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|alu_out~2_combout\ = (\u10|alu_out~0_combout\) # ((\u9|temp\(4) & !\u10|alu_out~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|alu_out~0_combout\,
	datac => \u9|temp\(4),
	datad => \u10|alu_out~1_combout\,
	combout => \u10|alu_out~2_combout\);

-- Location: LCCOMB_X19_Y18_N0
\u10|alu_out\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|alu_out~combout\ = (GLOBAL(\u8|Equal11~0clkctrl_outclk\) & ((\u10|alu_out~combout\))) # (!GLOBAL(\u8|Equal11~0clkctrl_outclk\) & (\u10|alu_out~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|alu_out~2_combout\,
	datac => \u10|alu_out~combout\,
	datad => \u8|Equal11~0clkctrl_outclk\,
	combout => \u10|alu_out~combout\);

-- Location: LCCOMB_X19_Y19_N16
\u5|dr_out[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[2]~13_combout\ = (\u10|dr_to_bus~combout\ & (\u4|mem_rtl_0|auto_generated|ram_block1a2\ & ((\u7|temp\(2)) # (!\u10|alu_out~combout\)))) # (!\u10|dr_to_bus~combout\ & ((\u7|temp\(2)) # ((!\u10|alu_out~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|dr_to_bus~combout\,
	datab => \u7|temp\(2),
	datac => \u4|mem_rtl_0|auto_generated|ram_block1a2\,
	datad => \u10|alu_out~combout\,
	combout => \u5|dr_out[2]~13_combout\);

-- Location: LCCOMB_X18_Y19_N18
\u5|dr_out[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[2]~27_combout\ = ((\u6|acc_out[2]~2_combout\ & \u5|dr_out[2]~13_combout\)) # (!\u5|dr_out[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|acc_out[2]~2_combout\,
	datac => \u5|dr_out[0]~10_combout\,
	datad => \u5|dr_out[2]~13_combout\,
	combout => \u5|dr_out[2]~27_combout\);

-- Location: LCCOMB_X17_Y19_N18
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

-- Location: LCCOMB_X17_Y19_N2
\u7|temp~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~13_combout\ = (\u7|temp[6]~8_combout\ & (((\u7|Add0~12_combout\)) # (!\u7|temp~7_combout\))) # (!\u7|temp[6]~8_combout\ & (\u7|temp~7_combout\ & (\u7|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[6]~8_combout\,
	datab => \u7|temp~7_combout\,
	datac => \u7|temp\(3),
	datad => \u7|Add0~12_combout\,
	combout => \u7|temp~13_combout\);

-- Location: LCCOMB_X17_Y19_N4
\u7|temp~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~14_combout\ = (\u7|temp~7_combout\ & (((\u7|temp~13_combout\)))) # (!\u7|temp~7_combout\ & ((\u7|temp~13_combout\ & (\u5|dr_out[2]~27_combout\)) # (!\u7|temp~13_combout\ & ((\u5|dr_out[4]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp~7_combout\,
	datab => \u5|dr_out[2]~27_combout\,
	datac => \u5|dr_out[4]~29_combout\,
	datad => \u7|temp~13_combout\,
	combout => \u7|temp~14_combout\);

-- Location: FF_X17_Y19_N5
\u7|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(3));

-- Location: LCCOMB_X18_Y19_N10
\u5|dr_out[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[3]~15_combout\ = (\u7|temp\(3) & (((\u4|mem_rtl_0|auto_generated|ram_block1a3\)) # (!\u10|dr_to_bus~combout\))) # (!\u7|temp\(3) & (!\u10|alu_out~combout\ & ((\u4|mem_rtl_0|auto_generated|ram_block1a3\) # (!\u10|dr_to_bus~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(3),
	datab => \u10|dr_to_bus~combout\,
	datac => \u4|mem_rtl_0|auto_generated|ram_block1a3\,
	datad => \u10|alu_out~combout\,
	combout => \u5|dr_out[3]~15_combout\);

-- Location: LCCOMB_X18_Y19_N2
\u7|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~11_combout\ = \u10|alu_sub~combout\ $ ((((\u6|acc_out[3]~3_combout\ & \u5|dr_out[3]~15_combout\)) # (!\u5|dr_out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|alu_sub~combout\,
	datab => \u6|acc_out[3]~3_combout\,
	datac => \u5|dr_out[0]~10_combout\,
	datad => \u5|dr_out[3]~15_combout\,
	combout => \u7|Add0~11_combout\);

-- Location: LCCOMB_X17_Y19_N20
\u7|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~15_combout\ = (\u7|Add0~14_combout\ & ((\u6|temp_a\(4) & (\u7|Add0~13\ & VCC)) # (!\u6|temp_a\(4) & (!\u7|Add0~13\)))) # (!\u7|Add0~14_combout\ & ((\u6|temp_a\(4) & (!\u7|Add0~13\)) # (!\u6|temp_a\(4) & ((\u7|Add0~13\) # (GND)))))
-- \u7|Add0~16\ = CARRY((\u7|Add0~14_combout\ & (!\u6|temp_a\(4) & !\u7|Add0~13\)) # (!\u7|Add0~14_combout\ & ((!\u7|Add0~13\) # (!\u6|temp_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Add0~14_combout\,
	datab => \u6|temp_a\(4),
	datad => VCC,
	cin => \u7|Add0~13\,
	combout => \u7|Add0~15_combout\,
	cout => \u7|Add0~16\);

-- Location: LCCOMB_X17_Y19_N22
\u7|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~18_combout\ = ((\u7|Add0~17_combout\ $ (\u6|temp_a\(5) $ (!\u7|Add0~16\)))) # (GND)
-- \u7|Add0~19\ = CARRY((\u7|Add0~17_combout\ & ((\u6|temp_a\(5)) # (!\u7|Add0~16\))) # (!\u7|Add0~17_combout\ & (\u6|temp_a\(5) & !\u7|Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Add0~17_combout\,
	datab => \u6|temp_a\(5),
	datad => VCC,
	cin => \u7|Add0~16\,
	combout => \u7|Add0~18_combout\,
	cout => \u7|Add0~19\);

-- Location: LCCOMB_X16_Y19_N14
\u7|temp~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~17_combout\ = (\u7|temp[6]~8_combout\ & (((\u7|temp~7_combout\)))) # (!\u7|temp[6]~8_combout\ & ((\u7|temp~7_combout\ & ((\u7|temp\(5)))) # (!\u7|temp~7_combout\ & (\u5|dr_out[6]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|dr_out[6]~31_combout\,
	datab => \u7|temp\(5),
	datac => \u7|temp[6]~8_combout\,
	datad => \u7|temp~7_combout\,
	combout => \u7|temp~17_combout\);

-- Location: LCCOMB_X17_Y19_N6
\u7|temp~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~18_combout\ = (\u7|temp[6]~8_combout\ & ((\u7|temp~17_combout\ & ((\u7|Add0~18_combout\))) # (!\u7|temp~17_combout\ & (\u5|dr_out[4]~29_combout\)))) # (!\u7|temp[6]~8_combout\ & (((\u7|temp~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[6]~8_combout\,
	datab => \u5|dr_out[4]~29_combout\,
	datac => \u7|Add0~18_combout\,
	datad => \u7|temp~17_combout\,
	combout => \u7|temp~18_combout\);

-- Location: FF_X17_Y19_N7
\u7|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(5));

-- Location: LCCOMB_X19_Y19_N14
\u5|dr_out[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[5]~19_combout\ = (\u10|dr_to_bus~combout\ & (\u4|mem_rtl_0|auto_generated|ram_block1a5\ & ((\u7|temp\(5)) # (!\u10|alu_out~combout\)))) # (!\u10|dr_to_bus~combout\ & ((\u7|temp\(5)) # ((!\u10|alu_out~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|dr_to_bus~combout\,
	datab => \u7|temp\(5),
	datac => \u4|mem_rtl_0|auto_generated|ram_block1a5\,
	datad => \u10|alu_out~combout\,
	combout => \u5|dr_out[5]~19_combout\);

-- Location: LCCOMB_X19_Y19_N4
\u5|dr_out[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[5]~30_combout\ = ((\u5|dr_out[5]~19_combout\ & \u6|acc_out[5]~5_combout\)) # (!\u5|dr_out[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|dr_out[0]~10_combout\,
	datab => \u5|dr_out[5]~19_combout\,
	datad => \u6|acc_out[5]~5_combout\,
	combout => \u5|dr_out[5]~30_combout\);

-- Location: LCCOMB_X16_Y19_N16
\u7|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~20_combout\ = \u10|alu_sub~combout\ $ ((((\u6|acc_out[6]~6_combout\ & \u5|dr_out[6]~21_combout\)) # (!\u5|dr_out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|acc_out[6]~6_combout\,
	datab => \u10|alu_sub~combout\,
	datac => \u5|dr_out[0]~10_combout\,
	datad => \u5|dr_out[6]~21_combout\,
	combout => \u7|Add0~20_combout\);

-- Location: LCCOMB_X17_Y19_N24
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

-- Location: LCCOMB_X17_Y20_N26
\u7|temp~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~20_combout\ = (\u7|temp[6]~8_combout\ & ((\u7|temp~19_combout\ & (\u5|dr_out[5]~30_combout\)) # (!\u7|temp~19_combout\ & ((\u7|Add0~21_combout\))))) # (!\u7|temp[6]~8_combout\ & (\u7|temp~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[6]~8_combout\,
	datab => \u7|temp~19_combout\,
	datac => \u5|dr_out[5]~30_combout\,
	datad => \u7|Add0~21_combout\,
	combout => \u7|temp~20_combout\);

-- Location: FF_X17_Y20_N27
\u7|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(6));

-- Location: LCCOMB_X16_Y19_N24
\u5|dr_out[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[6]~21_combout\ = (\u7|temp\(6) & ((\u4|mem_rtl_0|auto_generated|ram_block1a6\) # ((!\u10|dr_to_bus~combout\)))) # (!\u7|temp\(6) & (!\u10|alu_out~combout\ & ((\u4|mem_rtl_0|auto_generated|ram_block1a6\) # (!\u10|dr_to_bus~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(6),
	datab => \u4|mem_rtl_0|auto_generated|ram_block1a6\,
	datac => \u10|dr_to_bus~combout\,
	datad => \u10|alu_out~combout\,
	combout => \u5|dr_out[6]~21_combout\);

-- Location: LCCOMB_X16_Y19_N26
\u5|dr_out[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[6]~31_combout\ = ((\u5|dr_out[6]~21_combout\ & \u6|acc_out[6]~6_combout\)) # (!\u5|dr_out[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|dr_out[6]~21_combout\,
	datac => \u5|dr_out[0]~10_combout\,
	datad => \u6|acc_out[6]~6_combout\,
	combout => \u5|dr_out[6]~31_combout\);

-- Location: LCCOMB_X18_Y20_N0
\u6|temp_b~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~7_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_a\(6))) # (!\u10|acc_xchg~combout\ & (((\u10|bus_to_b~combout\ & \u5|dr_out[6]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(6),
	datab => \u10|acc_xchg~combout\,
	datac => \u10|bus_to_b~combout\,
	datad => \u5|dr_out[6]~31_combout\,
	combout => \u6|temp_b~7_combout\);

-- Location: FF_X18_Y20_N1
\u6|temp_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~7_combout\,
	ena => \u6|temp_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(6));

-- Location: LCCOMB_X17_Y20_N10
\u6|temp_a~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~7_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_b\(6))) # (!\u10|acc_xchg~combout\ & (((\u10|bus_to_a~combout\ & \u5|dr_out[6]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(6),
	datab => \u10|bus_to_a~combout\,
	datac => \u5|dr_out[6]~31_combout\,
	datad => \u10|acc_xchg~combout\,
	combout => \u6|temp_a~7_combout\);

-- Location: FF_X17_Y20_N11
\u6|temp_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~7_combout\,
	ena => \u6|temp_a[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(6));

-- Location: LCCOMB_X16_Y19_N10
\u6|acc_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|acc_out[6]~6_combout\ = (\u10|a_to_bus~combout\ & (\u6|temp_a\(6))) # (!\u10|a_to_bus~combout\ & (((\u6|temp_b\(6)) # (!\u10|b_to_bus~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(6),
	datab => \u6|temp_b\(6),
	datac => \u10|b_to_bus~combout\,
	datad => \u10|a_to_bus~combout\,
	combout => \u6|acc_out[6]~6_combout\);

-- Location: LCCOMB_X16_Y19_N18
\u7|temp~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~21_combout\ = (\u10|alu_shl~combout\ & (((\u6|acc_out[6]~6_combout\ & \u5|dr_out[6]~21_combout\)) # (!\u5|dr_out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|acc_out[6]~6_combout\,
	datab => \u10|alu_shl~combout\,
	datac => \u5|dr_out[0]~10_combout\,
	datad => \u5|dr_out[6]~21_combout\,
	combout => \u7|temp~21_combout\);

-- Location: LCCOMB_X16_Y19_N20
\u7|temp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~4_combout\ = (\u10|alu_add~combout\) # (\u10|alu_sub~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|alu_add~combout\,
	datad => \u10|alu_sub~combout\,
	combout => \u7|temp~4_combout\);

-- Location: LCCOMB_X16_Y19_N30
\u7|temp~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~24_combout\ = (!\u10|alu_shr~combout\ & (\u7|temp\(7) & (!\u10|alu_shl~combout\ & !\u7|temp~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|alu_shr~combout\,
	datab => \u7|temp\(7),
	datac => \u10|alu_shl~combout\,
	datad => \u7|temp~4_combout\,
	combout => \u7|temp~24_combout\);

-- Location: LCCOMB_X18_Y20_N6
\u7|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~23_combout\ = \u10|alu_sub~combout\ $ ((((\u6|acc_out[7]~7_combout\ & \u5|dr_out[7]~23_combout\)) # (!\u5|dr_out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|alu_sub~combout\,
	datab => \u6|acc_out[7]~7_combout\,
	datac => \u5|dr_out[0]~10_combout\,
	datad => \u5|dr_out[7]~23_combout\,
	combout => \u7|Add0~23_combout\);

-- Location: LCCOMB_X17_Y19_N26
\u7|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|Add0~24_combout\ = \u6|temp_a\(7) $ (\u7|Add0~22\ $ (!\u7|Add0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(7),
	datad => \u7|Add0~23_combout\,
	cin => \u7|Add0~22\,
	combout => \u7|Add0~24_combout\);

-- Location: LCCOMB_X16_Y19_N4
\u7|temp~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~23_combout\ = (\u7|temp~21_combout\) # ((\u7|temp~24_combout\) # ((\u7|temp~22_combout\ & \u7|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp~22_combout\,
	datab => \u7|temp~21_combout\,
	datac => \u7|temp~24_combout\,
	datad => \u7|Add0~24_combout\,
	combout => \u7|temp~23_combout\);

-- Location: FF_X16_Y19_N5
\u7|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(7));

-- Location: LCCOMB_X18_Y20_N18
\u5|dr_out[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[7]~23_combout\ = (\u7|temp\(7) & (((\u4|mem_rtl_0|auto_generated|ram_block1a7\) # (!\u10|dr_to_bus~combout\)))) # (!\u7|temp\(7) & (!\u10|alu_out~combout\ & ((\u4|mem_rtl_0|auto_generated|ram_block1a7\) # (!\u10|dr_to_bus~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(7),
	datab => \u10|alu_out~combout\,
	datac => \u4|mem_rtl_0|auto_generated|ram_block1a7\,
	datad => \u10|dr_to_bus~combout\,
	combout => \u5|dr_out[7]~23_combout\);

-- Location: LCCOMB_X18_Y20_N12
\u5|dr_out[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[7]~32_combout\ = ((\u6|acc_out[7]~7_combout\ & \u5|dr_out[7]~23_combout\)) # (!\u5|dr_out[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|dr_out[0]~10_combout\,
	datac => \u6|acc_out[7]~7_combout\,
	datad => \u5|dr_out[7]~23_combout\,
	combout => \u5|dr_out[7]~32_combout\);

-- Location: LCCOMB_X18_Y20_N14
\u6|temp_b~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~8_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_a\(7))) # (!\u10|acc_xchg~combout\ & (((\u10|bus_to_b~combout\ & \u5|dr_out[7]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(7),
	datab => \u10|acc_xchg~combout\,
	datac => \u10|bus_to_b~combout\,
	datad => \u5|dr_out[7]~32_combout\,
	combout => \u6|temp_b~8_combout\);

-- Location: FF_X18_Y20_N15
\u6|temp_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~8_combout\,
	ena => \u6|temp_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(7));

-- Location: LCCOMB_X18_Y20_N26
\u6|temp_a~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~8_combout\ = (\u10|acc_xchg~combout\ & (((\u6|temp_b\(7))))) # (!\u10|acc_xchg~combout\ & (\u10|bus_to_a~combout\ & ((\u5|dr_out[7]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|bus_to_a~combout\,
	datab => \u10|acc_xchg~combout\,
	datac => \u6|temp_b\(7),
	datad => \u5|dr_out[7]~32_combout\,
	combout => \u6|temp_a~8_combout\);

-- Location: FF_X18_Y20_N27
\u6|temp_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~8_combout\,
	ena => \u6|temp_a[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(7));

-- Location: LCCOMB_X18_Y20_N4
\u6|acc_out[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|acc_out[7]~7_combout\ = (\u10|a_to_bus~combout\ & (\u6|temp_a\(7))) # (!\u10|a_to_bus~combout\ & (((\u6|temp_b\(7)) # (!\u10|b_to_bus~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(7),
	datab => \u6|temp_b\(7),
	datac => \u10|a_to_bus~combout\,
	datad => \u10|b_to_bus~combout\,
	combout => \u6|acc_out[7]~7_combout\);

-- Location: LCCOMB_X18_Y18_N2
\u8|tmp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~4_combout\ = (!\reset~0_combout\ & (((\u6|acc_out[7]~7_combout\ & \u5|dr_out[7]~23_combout\)) # (!\u5|dr_out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datab => \u6|acc_out[7]~7_combout\,
	datac => \u5|dr_out[0]~10_combout\,
	datad => \u5|dr_out[7]~23_combout\,
	combout => \u8|tmp~4_combout\);

-- Location: LCCOMB_X16_Y18_N4
\u10|bus_to_ir\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|bus_to_ir~combout\ = (GLOBAL(\u8|Equal11~0clkctrl_outclk\) & ((\u10|bus_to_ir~combout\))) # (!GLOBAL(\u8|Equal11~0clkctrl_outclk\) & (\u9|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u9|temp\(1),
	datac => \u10|bus_to_ir~combout\,
	datad => \u8|Equal11~0clkctrl_outclk\,
	combout => \u10|bus_to_ir~combout\);

-- Location: LCCOMB_X17_Y20_N16
\u8|tmp[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp[1]~1_combout\ = ((\rst~input_o\) # (\u10|bus_to_ir~combout\)) # (!\wr_data~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr_data~input_o\,
	datac => \rst~input_o\,
	datad => \u10|bus_to_ir~combout\,
	combout => \u8|tmp[1]~1_combout\);

-- Location: FF_X18_Y18_N3
\u8|tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \u8|tmp~4_combout\,
	ena => \u8|tmp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(7));

-- Location: LCCOMB_X18_Y18_N4
\u8|tmp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~3_combout\ = (!\reset~0_combout\ & (((\u5|dr_out[5]~19_combout\ & \u6|acc_out[5]~5_combout\)) # (!\u5|dr_out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datab => \u5|dr_out[5]~19_combout\,
	datac => \u5|dr_out[0]~10_combout\,
	datad => \u6|acc_out[5]~5_combout\,
	combout => \u8|tmp~3_combout\);

-- Location: FF_X18_Y18_N5
\u8|tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \u8|tmp~3_combout\,
	ena => \u8|tmp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(5));

-- Location: LCCOMB_X18_Y18_N14
\u8|tmp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~8_combout\ = (!\reset~0_combout\ & (((\u6|acc_out[6]~6_combout\ & \u5|dr_out[6]~21_combout\)) # (!\u5|dr_out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datab => \u6|acc_out[6]~6_combout\,
	datac => \u5|dr_out[0]~10_combout\,
	datad => \u5|dr_out[6]~21_combout\,
	combout => \u8|tmp~8_combout\);

-- Location: FF_X18_Y18_N15
\u8|tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \u8|tmp~8_combout\,
	ena => \u8|tmp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(6));

-- Location: LCCOMB_X18_Y18_N6
\u8|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal3~0_combout\ = (\u8|tmp\(2) & (!\u8|tmp\(0) & (!\u8|tmp\(6) & !\u8|tmp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(2),
	datab => \u8|tmp\(0),
	datac => \u8|tmp\(6),
	datad => \u8|tmp\(1),
	combout => \u8|Equal3~0_combout\);

-- Location: LCCOMB_X18_Y18_N24
\u8|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal3~1_combout\ = (!\u8|tmp\(4) & (!\u8|tmp\(7) & (!\u8|tmp\(5) & \u8|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(4),
	datab => \u8|tmp\(7),
	datac => \u8|tmp\(5),
	datad => \u8|Equal3~0_combout\,
	combout => \u8|Equal3~1_combout\);

-- Location: LCCOMB_X19_Y20_N14
\u10|bus_to_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|bus_to_b~0_combout\ = (\u8|Equal7~0_combout\) # ((!\u8|tmp\(3) & \u8|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(3),
	datac => \u8|Equal7~0_combout\,
	datad => \u8|Equal3~1_combout\,
	combout => \u10|bus_to_b~0_combout\);

-- Location: LCCOMB_X19_Y20_N8
\u10|bus_to_b~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|bus_to_b~1_combout\ = (\u9|temp\(4) & ((\u10|bus_to_b~0_combout\) # ((\u8|Equal1~0_combout\ & \u9|temp\(3))))) # (!\u9|temp\(4) & (\u8|Equal1~0_combout\ & ((\u9|temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(4),
	datab => \u8|Equal1~0_combout\,
	datac => \u10|bus_to_b~0_combout\,
	datad => \u9|temp\(3),
	combout => \u10|bus_to_b~1_combout\);

-- Location: LCCOMB_X19_Y20_N26
\u10|bus_to_b\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|bus_to_b~combout\ = (GLOBAL(\u8|Equal11~0clkctrl_outclk\) & (\u10|bus_to_b~combout\)) # (!GLOBAL(\u8|Equal11~0clkctrl_outclk\) & ((\u10|bus_to_b~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|bus_to_b~combout\,
	datac => \u10|bus_to_b~1_combout\,
	datad => \u8|Equal11~0clkctrl_outclk\,
	combout => \u10|bus_to_b~combout\);

-- Location: LCCOMB_X18_Y20_N22
\u6|temp_b~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~4_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_a\(3))) # (!\u10|acc_xchg~combout\ & (((\u10|bus_to_b~combout\ & \u5|dr_out[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(3),
	datab => \u10|acc_xchg~combout\,
	datac => \u10|bus_to_b~combout\,
	datad => \u5|dr_out[3]~28_combout\,
	combout => \u6|temp_b~4_combout\);

-- Location: FF_X18_Y20_N23
\u6|temp_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~4_combout\,
	ena => \u6|temp_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(3));

-- Location: LCCOMB_X17_Y20_N0
\u6|temp_a~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~4_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_b\(3))) # (!\u10|acc_xchg~combout\ & (((\u10|bus_to_a~combout\ & \u5|dr_out[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \u6|temp_b\(3),
	datac => \u10|bus_to_a~combout\,
	datad => \u5|dr_out[3]~28_combout\,
	combout => \u6|temp_a~4_combout\);

-- Location: FF_X17_Y20_N1
\u6|temp_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~4_combout\,
	ena => \u6|temp_a[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(3));

-- Location: LCCOMB_X18_Y19_N8
\u6|acc_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|acc_out[3]~3_combout\ = (\u10|a_to_bus~combout\ & (\u6|temp_a\(3))) # (!\u10|a_to_bus~combout\ & (((\u6|temp_b\(3)) # (!\u10|b_to_bus~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(3),
	datab => \u6|temp_b\(3),
	datac => \u10|a_to_bus~combout\,
	datad => \u10|b_to_bus~combout\,
	combout => \u6|acc_out[3]~3_combout\);

-- Location: LCCOMB_X18_Y19_N0
\u5|dr_out[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[3]~28_combout\ = ((\u6|acc_out[3]~3_combout\ & \u5|dr_out[3]~15_combout\)) # (!\u5|dr_out[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|dr_out[0]~10_combout\,
	datac => \u6|acc_out[3]~3_combout\,
	datad => \u5|dr_out[3]~15_combout\,
	combout => \u5|dr_out[3]~28_combout\);

-- Location: LCCOMB_X17_Y20_N22
\u7|temp~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~15_combout\ = (\u7|temp[6]~8_combout\ & (((!\u7|temp~7_combout\)))) # (!\u7|temp[6]~8_combout\ & ((\u7|temp~7_combout\ & (\u7|temp\(4))) # (!\u7|temp~7_combout\ & ((\u5|dr_out[5]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[6]~8_combout\,
	datab => \u7|temp\(4),
	datac => \u5|dr_out[5]~30_combout\,
	datad => \u7|temp~7_combout\,
	combout => \u7|temp~15_combout\);

-- Location: LCCOMB_X17_Y20_N28
\u7|temp~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~16_combout\ = (\u7|temp[6]~8_combout\ & ((\u7|temp~15_combout\ & (\u5|dr_out[3]~28_combout\)) # (!\u7|temp~15_combout\ & ((\u7|Add0~15_combout\))))) # (!\u7|temp[6]~8_combout\ & (((\u7|temp~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[6]~8_combout\,
	datab => \u5|dr_out[3]~28_combout\,
	datac => \u7|temp~15_combout\,
	datad => \u7|Add0~15_combout\,
	combout => \u7|temp~16_combout\);

-- Location: FF_X17_Y20_N29
\u7|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(4));

-- Location: LCCOMB_X18_Y19_N24
\u5|dr_out[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[4]~17_combout\ = (\u7|temp\(4) & ((\u4|mem_rtl_0|auto_generated|ram_block1a4\) # ((!\u10|dr_to_bus~combout\)))) # (!\u7|temp\(4) & (!\u10|alu_out~combout\ & ((\u4|mem_rtl_0|auto_generated|ram_block1a4\) # (!\u10|dr_to_bus~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(4),
	datab => \u4|mem_rtl_0|auto_generated|ram_block1a4\,
	datac => \u10|dr_to_bus~combout\,
	datad => \u10|alu_out~combout\,
	combout => \u5|dr_out[4]~17_combout\);

-- Location: LCCOMB_X18_Y19_N12
\u5|dr_out[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[4]~29_combout\ = ((\u6|acc_out[4]~4_combout\ & \u5|dr_out[4]~17_combout\)) # (!\u5|dr_out[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|acc_out[4]~4_combout\,
	datab => \u5|dr_out[4]~17_combout\,
	datac => \u5|dr_out[0]~10_combout\,
	combout => \u5|dr_out[4]~29_combout\);

-- Location: LCCOMB_X17_Y20_N18
\u6|temp_a~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~5_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_b\(4))) # (!\u10|acc_xchg~combout\ & (((\u10|bus_to_a~combout\ & \u5|dr_out[4]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \u6|temp_b\(4),
	datac => \u10|bus_to_a~combout\,
	datad => \u5|dr_out[4]~29_combout\,
	combout => \u6|temp_a~5_combout\);

-- Location: FF_X17_Y20_N19
\u6|temp_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~5_combout\,
	ena => \u6|temp_a[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(4));

-- Location: LCCOMB_X18_Y20_N8
\u6|temp_b~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~5_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_a\(4))) # (!\u10|acc_xchg~combout\ & (((\u10|bus_to_b~combout\ & \u5|dr_out[4]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(4),
	datab => \u10|acc_xchg~combout\,
	datac => \u10|bus_to_b~combout\,
	datad => \u5|dr_out[4]~29_combout\,
	combout => \u6|temp_b~5_combout\);

-- Location: FF_X18_Y20_N9
\u6|temp_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~5_combout\,
	ena => \u6|temp_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(4));

-- Location: LCCOMB_X19_Y19_N2
\u6|acc_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|acc_out[4]~4_combout\ = (\u10|a_to_bus~combout\ & (((\u6|temp_a\(4))))) # (!\u10|a_to_bus~combout\ & ((\u6|temp_b\(4)) # ((!\u10|b_to_bus~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(4),
	datab => \u6|temp_a\(4),
	datac => \u10|b_to_bus~combout\,
	datad => \u10|a_to_bus~combout\,
	combout => \u6|acc_out[4]~4_combout\);

-- Location: LCCOMB_X18_Y18_N26
\u8|tmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~2_combout\ = (!\reset~0_combout\ & (((\u6|acc_out[4]~4_combout\ & \u5|dr_out[4]~17_combout\)) # (!\u5|dr_out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|dr_out[0]~10_combout\,
	datab => \u6|acc_out[4]~4_combout\,
	datac => \reset~0_combout\,
	datad => \u5|dr_out[4]~17_combout\,
	combout => \u8|tmp~2_combout\);

-- Location: FF_X18_Y18_N27
\u8|tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \u8|tmp~2_combout\,
	ena => \u8|tmp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(4));

-- Location: LCCOMB_X18_Y18_N10
\u8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal0~0_combout\ = (!\u8|tmp\(4) & (!\u8|tmp\(6) & (!\u8|tmp\(5) & !\u8|tmp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(4),
	datab => \u8|tmp\(6),
	datac => \u8|tmp\(5),
	datad => \u8|tmp\(7),
	combout => \u8|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y18_N28
\u8|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal7~0_combout\ = (!\u8|tmp\(0) & (!\u8|tmp\(2) & (\u8|tmp\(3) & \u8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(0),
	datab => \u8|tmp\(2),
	datac => \u8|tmp\(3),
	datad => \u8|Equal0~0_combout\,
	combout => \u8|Equal7~0_combout\);

-- Location: LCCOMB_X19_Y20_N22
\u10|alu_shr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|alu_shr~0_combout\ = (\u9|temp\(3) & ((\u8|tmp\(1) & ((\u8|Equal4~0_combout\))) # (!\u8|tmp\(1) & (\u8|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal7~0_combout\,
	datab => \u8|tmp\(1),
	datac => \u8|Equal4~0_combout\,
	datad => \u9|temp\(3),
	combout => \u10|alu_shr~0_combout\);

-- Location: LCCOMB_X19_Y20_N28
\u10|alu_shr\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|alu_shr~combout\ = (GLOBAL(\u8|Equal11~0clkctrl_outclk\) & (\u10|alu_shr~combout\)) # (!GLOBAL(\u8|Equal11~0clkctrl_outclk\) & ((\u10|alu_shr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|alu_shr~combout\,
	datac => \u10|alu_shr~0_combout\,
	datad => \u8|Equal11~0clkctrl_outclk\,
	combout => \u10|alu_shr~combout\);

-- Location: LCCOMB_X17_Y20_N20
\u7|temp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~7_combout\ = (!\u10|alu_shr~combout\ & !\u10|alu_shl~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u10|alu_shr~combout\,
	datad => \u10|alu_shl~combout\,
	combout => \u7|temp~7_combout\);

-- Location: LCCOMB_X18_Y20_N20
\u5|dr_out[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[0]~25_combout\ = ((\u6|acc_out[0]~0_combout\ & \u5|dr_out[0]~8_combout\)) # (!\u5|dr_out[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|dr_out[0]~10_combout\,
	datac => \u6|acc_out[0]~0_combout\,
	datad => \u5|dr_out[0]~8_combout\,
	combout => \u5|dr_out[0]~25_combout\);

-- Location: LCCOMB_X17_Y19_N28
\u7|temp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~9_combout\ = (\u7|temp[6]~8_combout\ & (((\u7|Add0~6_combout\) # (!\u7|temp~7_combout\)))) # (!\u7|temp[6]~8_combout\ & (\u7|temp\(1) & ((\u7|temp~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp[6]~8_combout\,
	datab => \u7|temp\(1),
	datac => \u7|Add0~6_combout\,
	datad => \u7|temp~7_combout\,
	combout => \u7|temp~9_combout\);

-- Location: LCCOMB_X17_Y19_N8
\u7|temp~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~10_combout\ = (\u7|temp~7_combout\ & (((\u7|temp~9_combout\)))) # (!\u7|temp~7_combout\ & ((\u7|temp~9_combout\ & ((\u5|dr_out[0]~25_combout\))) # (!\u7|temp~9_combout\ & (\u5|dr_out[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp~7_combout\,
	datab => \u5|dr_out[2]~27_combout\,
	datac => \u5|dr_out[0]~25_combout\,
	datad => \u7|temp~9_combout\,
	combout => \u7|temp~10_combout\);

-- Location: FF_X17_Y19_N9
\u7|temp[1]\ : dffeas
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
	q => \u7|temp\(1));

-- Location: LCCOMB_X18_Y19_N16
\u5|dr_out[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[1]~11_combout\ = (\u7|temp\(1) & (((\u4|mem_rtl_0|auto_generated|ram_block1a1\)) # (!\u10|dr_to_bus~combout\))) # (!\u7|temp\(1) & (!\u10|alu_out~combout\ & ((\u4|mem_rtl_0|auto_generated|ram_block1a1\) # (!\u10|dr_to_bus~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|temp\(1),
	datab => \u10|dr_to_bus~combout\,
	datac => \u4|mem_rtl_0|auto_generated|ram_block1a1\,
	datad => \u10|alu_out~combout\,
	combout => \u5|dr_out[1]~11_combout\);

-- Location: LCCOMB_X18_Y18_N16
\u8|tmp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~6_combout\ = (!\reset~0_combout\ & (((\u5|dr_out[1]~11_combout\ & \u6|acc_out[1]~1_combout\)) # (!\u5|dr_out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datab => \u5|dr_out[1]~11_combout\,
	datac => \u5|dr_out[0]~10_combout\,
	datad => \u6|acc_out[1]~1_combout\,
	combout => \u8|tmp~6_combout\);

-- Location: FF_X18_Y18_N17
\u8|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \u8|tmp~6_combout\,
	ena => \u8|tmp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(1));

-- Location: LCCOMB_X19_Y18_N14
\u10|bus_to_a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|bus_to_a~1_combout\ = (\u8|tmp\(1) & (((\u8|Equal4~0_combout\) # (\u8|Equal0~1_combout\)))) # (!\u8|tmp\(1) & (\u8|Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal8~0_combout\,
	datab => \u8|tmp\(1),
	datac => \u8|Equal4~0_combout\,
	datad => \u8|Equal0~1_combout\,
	combout => \u10|bus_to_a~1_combout\);

-- Location: LCCOMB_X18_Y18_N30
\u10|bus_to_a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|bus_to_a~0_combout\ = (\u8|Equal0~1_combout\ & (\u9|temp\(3) & !\u8|tmp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~1_combout\,
	datac => \u9|temp\(3),
	datad => \u8|tmp\(1),
	combout => \u10|bus_to_a~0_combout\);

-- Location: LCCOMB_X19_Y18_N24
\u10|bus_to_a~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|bus_to_a~2_combout\ = (\u10|alu_out~0_combout\) # ((\u10|bus_to_a~0_combout\) # ((\u10|bus_to_a~1_combout\ & \u9|temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|bus_to_a~1_combout\,
	datab => \u10|alu_out~0_combout\,
	datac => \u9|temp\(4),
	datad => \u10|bus_to_a~0_combout\,
	combout => \u10|bus_to_a~2_combout\);

-- Location: LCCOMB_X19_Y18_N30
\u10|bus_to_a\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|bus_to_a~combout\ = (GLOBAL(\u8|Equal11~0clkctrl_outclk\) & ((\u10|bus_to_a~combout\))) # (!GLOBAL(\u8|Equal11~0clkctrl_outclk\) & (\u10|bus_to_a~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|bus_to_a~2_combout\,
	datac => \u10|bus_to_a~combout\,
	datad => \u8|Equal11~0clkctrl_outclk\,
	combout => \u10|bus_to_a~combout\);

-- Location: LCCOMB_X17_Y20_N30
\u6|temp_a~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~3_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_b\(2))) # (!\u10|acc_xchg~combout\ & (((\u10|bus_to_a~combout\ & \u5|dr_out[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|acc_xchg~combout\,
	datab => \u6|temp_b\(2),
	datac => \u10|bus_to_a~combout\,
	datad => \u5|dr_out[2]~27_combout\,
	combout => \u6|temp_a~3_combout\);

-- Location: FF_X17_Y20_N31
\u6|temp_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~3_combout\,
	ena => \u6|temp_a[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(2));

-- Location: LCCOMB_X18_Y20_N24
\u6|temp_b~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~3_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_a\(2))) # (!\u10|acc_xchg~combout\ & (((\u10|bus_to_b~combout\ & \u5|dr_out[2]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(2),
	datab => \u10|acc_xchg~combout\,
	datac => \u10|bus_to_b~combout\,
	datad => \u5|dr_out[2]~27_combout\,
	combout => \u6|temp_b~3_combout\);

-- Location: FF_X18_Y20_N25
\u6|temp_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~3_combout\,
	ena => \u6|temp_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(2));

-- Location: LCCOMB_X19_Y19_N30
\u6|acc_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|acc_out[2]~2_combout\ = (\u10|a_to_bus~combout\ & (((\u6|temp_a\(2))))) # (!\u10|a_to_bus~combout\ & ((\u6|temp_b\(2)) # ((!\u10|b_to_bus~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(2),
	datab => \u6|temp_a\(2),
	datac => \u10|b_to_bus~combout\,
	datad => \u10|a_to_bus~combout\,
	combout => \u6|acc_out[2]~2_combout\);

-- Location: LCCOMB_X19_Y18_N2
\u8|tmp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~5_combout\ = (!\reset~0_combout\ & (((\u6|acc_out[2]~2_combout\ & \u5|dr_out[2]~13_combout\)) # (!\u5|dr_out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|acc_out[2]~2_combout\,
	datab => \reset~0_combout\,
	datac => \u5|dr_out[2]~13_combout\,
	datad => \u5|dr_out[0]~10_combout\,
	combout => \u8|tmp~5_combout\);

-- Location: FF_X19_Y18_N3
\u8|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \u8|tmp~5_combout\,
	ena => \u8|tmp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(2));

-- Location: LCCOMB_X18_Y18_N8
\u8|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal0~1_combout\ = (!\u8|tmp\(3) & (!\u8|tmp\(2) & (\u8|tmp\(0) & \u8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(3),
	datab => \u8|tmp\(2),
	datac => \u8|tmp\(0),
	datad => \u8|Equal0~0_combout\,
	combout => \u8|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y18_N12
\u10|b_to_bus~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|b_to_bus~0_combout\ = (\u9|temp\(3) & ((\u8|Equal7~0_combout\) # ((\u8|Equal0~1_combout\ & !\u8|tmp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~1_combout\,
	datab => \u8|Equal7~0_combout\,
	datac => \u9|temp\(3),
	datad => \u8|tmp\(1),
	combout => \u10|b_to_bus~0_combout\);

-- Location: LCCOMB_X19_Y19_N26
\u10|b_to_bus\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|b_to_bus~combout\ = (GLOBAL(\u8|Equal11~0clkctrl_outclk\) & ((\u10|b_to_bus~combout\))) # (!GLOBAL(\u8|Equal11~0clkctrl_outclk\) & (\u10|b_to_bus~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|b_to_bus~0_combout\,
	datac => \u10|b_to_bus~combout\,
	datad => \u8|Equal11~0clkctrl_outclk\,
	combout => \u10|b_to_bus~combout\);

-- Location: LCCOMB_X19_Y19_N8
\u5|dr_out[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[0]~10_combout\ = (\u10|b_to_bus~combout\) # ((\u10|a_to_bus~combout\) # ((\u10|dr_to_bus~combout\) # (\u10|alu_out~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|b_to_bus~combout\,
	datab => \u10|a_to_bus~combout\,
	datac => \u10|dr_to_bus~combout\,
	datad => \u10|alu_out~combout\,
	combout => \u5|dr_out[0]~10_combout\);

-- Location: LCCOMB_X18_Y19_N30
\u8|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~0_combout\ = (!\reset~0_combout\ & (((\u6|acc_out[3]~3_combout\ & \u5|dr_out[3]~15_combout\)) # (!\u5|dr_out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|dr_out[0]~10_combout\,
	datab => \u6|acc_out[3]~3_combout\,
	datac => \u5|dr_out[3]~15_combout\,
	datad => \reset~0_combout\,
	combout => \u8|tmp~0_combout\);

-- Location: FF_X18_Y19_N31
\u8|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \u8|tmp~0_combout\,
	ena => \u8|tmp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(3));

-- Location: LCCOMB_X17_Y18_N0
\u8|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal11~0_combout\ = (\u8|tmp\(3) & \u8|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8|tmp\(3),
	datad => \u8|Equal3~1_combout\,
	combout => \u8|Equal11~0_combout\);

-- Location: CLKCTRL_G7
\u8|Equal11~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u8|Equal11~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u8|Equal11~0clkctrl_outclk\);

-- Location: LCCOMB_X19_Y18_N22
\u10|dr_to_bus~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|dr_to_bus~2_combout\ = (\u9|temp\(4) & (((\u8|Equal4~0_combout\ & !\u8|tmp\(1))) # (!\u10|dr_to_bus~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal4~0_combout\,
	datab => \u10|dr_to_bus~1_combout\,
	datac => \u9|temp\(4),
	datad => \u8|tmp\(1),
	combout => \u10|dr_to_bus~2_combout\);

-- Location: LCCOMB_X19_Y19_N20
\u10|dr_to_bus~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|dr_to_bus~3_combout\ = (\u9|temp\(1)) # ((\u10|dr_to_bus~2_combout\) # ((\u9|temp\(4) & \u8|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|temp\(1),
	datab => \u9|temp\(4),
	datac => \u10|dr_to_bus~2_combout\,
	datad => \u8|Equal5~1_combout\,
	combout => \u10|dr_to_bus~3_combout\);

-- Location: LCCOMB_X19_Y19_N22
\u10|dr_to_bus\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|dr_to_bus~combout\ = (GLOBAL(\u8|Equal11~0clkctrl_outclk\) & (\u10|dr_to_bus~combout\)) # (!GLOBAL(\u8|Equal11~0clkctrl_outclk\) & ((\u10|dr_to_bus~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|dr_to_bus~combout\,
	datac => \u8|Equal11~0clkctrl_outclk\,
	datad => \u10|dr_to_bus~3_combout\,
	combout => \u10|dr_to_bus~combout\);

-- Location: LCCOMB_X16_Y19_N6
\u7|temp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~5_combout\ = (!\u10|alu_shr~combout\ & ((\u7|temp~4_combout\ & ((\u7|Add0~3_combout\))) # (!\u7|temp~4_combout\ & (\u7|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|alu_shr~combout\,
	datab => \u7|temp\(0),
	datac => \u7|Add0~3_combout\,
	datad => \u7|temp~4_combout\,
	combout => \u7|temp~5_combout\);

-- Location: LCCOMB_X16_Y19_N28
\u7|temp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u7|temp~6_combout\ = (!\u10|alu_shl~combout\ & ((\u7|temp~5_combout\) # ((\u10|alu_shr~combout\ & \u5|dr_out[1]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|alu_shr~combout\,
	datab => \u10|alu_shl~combout\,
	datac => \u5|dr_out[1]~26_combout\,
	datad => \u7|temp~5_combout\,
	combout => \u7|temp~6_combout\);

-- Location: FF_X16_Y19_N29
\u7|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u7|temp~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u7|temp\(0));

-- Location: LCCOMB_X19_Y19_N18
\u5|dr_out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[0]~8_combout\ = (\u10|dr_to_bus~combout\ & (\u4|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((\u7|temp\(0)) # (!\u10|alu_out~combout\)))) # (!\u10|dr_to_bus~combout\ & ((\u7|temp\(0)) # ((!\u10|alu_out~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u10|dr_to_bus~combout\,
	datab => \u7|temp\(0),
	datac => \u4|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \u10|alu_out~combout\,
	combout => \u5|dr_out[0]~8_combout\);

-- Location: LCCOMB_X18_Y18_N18
\u8|tmp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|tmp~7_combout\ = (!\reset~0_combout\ & (((\u5|dr_out[0]~8_combout\ & \u6|acc_out[0]~0_combout\)) # (!\u5|dr_out[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~0_combout\,
	datab => \u5|dr_out[0]~8_combout\,
	datac => \u5|dr_out[0]~10_combout\,
	datad => \u6|acc_out[0]~0_combout\,
	combout => \u8|tmp~7_combout\);

-- Location: FF_X18_Y18_N19
\u8|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u8|tmp~7_combout\,
	ena => \u8|tmp[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u8|tmp\(0));

-- Location: LCCOMB_X19_Y18_N20
\u8|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u8|Equal8~0_combout\ = (\u8|tmp\(0) & (!\u8|tmp\(2) & (\u8|tmp\(3) & \u8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tmp\(0),
	datab => \u8|tmp\(2),
	datac => \u8|tmp\(3),
	datad => \u8|Equal0~0_combout\,
	combout => \u8|Equal8~0_combout\);

-- Location: LCCOMB_X19_Y20_N24
\u10|acc_xchg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|acc_xchg~0_combout\ = (\u8|Equal8~0_combout\ & (\u8|tmp\(1) & \u9|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8|Equal8~0_combout\,
	datac => \u8|tmp\(1),
	datad => \u9|temp\(3),
	combout => \u10|acc_xchg~0_combout\);

-- Location: LCCOMB_X19_Y20_N16
\u10|acc_xchg\ : cycloneive_lcell_comb
-- Equation(s):
-- \u10|acc_xchg~combout\ = (GLOBAL(\u8|Equal11~0clkctrl_outclk\) & (\u10|acc_xchg~combout\)) # (!GLOBAL(\u8|Equal11~0clkctrl_outclk\) & ((\u10|acc_xchg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u10|acc_xchg~combout\,
	datac => \u10|acc_xchg~0_combout\,
	datad => \u8|Equal11~0clkctrl_outclk\,
	combout => \u10|acc_xchg~combout\);

-- Location: LCCOMB_X18_Y20_N16
\u6|temp_b~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_b~0_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_a\(0))) # (!\u10|acc_xchg~combout\ & (((\u10|bus_to_b~combout\ & \u5|dr_out[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(0),
	datab => \u10|acc_xchg~combout\,
	datac => \u10|bus_to_b~combout\,
	datad => \u5|dr_out[0]~25_combout\,
	combout => \u6|temp_b~0_combout\);

-- Location: FF_X18_Y20_N17
\u6|temp_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_b~0_combout\,
	ena => \u6|temp_b[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_b\(0));

-- Location: LCCOMB_X17_Y20_N12
\u6|temp_a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|temp_a~0_combout\ = (\u10|acc_xchg~combout\ & (\u6|temp_b\(0))) # (!\u10|acc_xchg~combout\ & (((\u10|bus_to_a~combout\ & \u5|dr_out[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_b\(0),
	datab => \u10|bus_to_a~combout\,
	datac => \u5|dr_out[0]~25_combout\,
	datad => \u10|acc_xchg~combout\,
	combout => \u6|temp_a~0_combout\);

-- Location: FF_X17_Y20_N13
\u6|temp_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u6|temp_a~0_combout\,
	ena => \u6|temp_a[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u6|temp_a\(0));

-- Location: LCCOMB_X19_Y19_N24
\u6|acc_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u6|acc_out[0]~0_combout\ = (\u10|a_to_bus~combout\ & (\u6|temp_a\(0))) # (!\u10|a_to_bus~combout\ & (((\u6|temp_b\(0)) # (!\u10|b_to_bus~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|temp_a\(0),
	datab => \u6|temp_b\(0),
	datac => \u10|b_to_bus~combout\,
	datad => \u10|a_to_bus~combout\,
	combout => \u6|acc_out[0]~0_combout\);

-- Location: LCCOMB_X16_Y20_N4
\u5|dr_out[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[0]~9_combout\ = (\u6|acc_out[0]~0_combout\ & \u5|dr_out[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|acc_out[0]~0_combout\,
	datad => \u5|dr_out[0]~8_combout\,
	combout => \u5|dr_out[0]~9_combout\);

-- Location: LCCOMB_X18_Y19_N4
\u5|dr_out[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[1]~12_combout\ = (\u5|dr_out[1]~11_combout\ & \u6|acc_out[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|dr_out[1]~11_combout\,
	datad => \u6|acc_out[1]~1_combout\,
	combout => \u5|dr_out[1]~12_combout\);

-- Location: LCCOMB_X18_Y19_N14
\u5|dr_out[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[2]~14_combout\ = (\u5|dr_out[2]~13_combout\ & \u6|acc_out[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|dr_out[2]~13_combout\,
	datad => \u6|acc_out[2]~2_combout\,
	combout => \u5|dr_out[2]~14_combout\);

-- Location: LCCOMB_X18_Y19_N28
\u5|dr_out[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[3]~16_combout\ = (\u6|acc_out[3]~3_combout\ & \u5|dr_out[3]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6|acc_out[3]~3_combout\,
	datac => \u5|dr_out[3]~15_combout\,
	combout => \u5|dr_out[3]~16_combout\);

-- Location: LCCOMB_X18_Y19_N26
\u5|dr_out[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[4]~18_combout\ = (\u6|acc_out[4]~4_combout\ & \u5|dr_out[4]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|acc_out[4]~4_combout\,
	datad => \u5|dr_out[4]~17_combout\,
	combout => \u5|dr_out[4]~18_combout\);

-- Location: LCCOMB_X18_Y21_N0
\u5|dr_out[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[5]~20_combout\ = (\u5|dr_out[5]~19_combout\ & \u6|acc_out[5]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|dr_out[5]~19_combout\,
	datac => \u6|acc_out[5]~5_combout\,
	combout => \u5|dr_out[5]~20_combout\);

-- Location: LCCOMB_X16_Y19_N22
\u5|dr_out[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[6]~22_combout\ = (\u5|dr_out[6]~21_combout\ & \u6|acc_out[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|dr_out[6]~21_combout\,
	datad => \u6|acc_out[6]~6_combout\,
	combout => \u5|dr_out[6]~22_combout\);

-- Location: LCCOMB_X18_Y21_N6
\u5|dr_out[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \u5|dr_out[7]~24_combout\ = (\u5|dr_out[7]~23_combout\ & \u6|acc_out[7]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|dr_out[7]~23_combout\,
	datad => \u6|acc_out[7]~7_combout\,
	combout => \u5|dr_out[7]~24_combout\);

ww_test_bus(0) <= \test_bus[0]~output_o\;

ww_test_bus(1) <= \test_bus[1]~output_o\;

ww_test_bus(2) <= \test_bus[2]~output_o\;

ww_test_bus(3) <= \test_bus[3]~output_o\;

ww_test_bus(4) <= \test_bus[4]~output_o\;

ww_test_bus(5) <= \test_bus[5]~output_o\;

ww_test_bus(6) <= \test_bus[6]~output_o\;

ww_test_bus(7) <= \test_bus[7]~output_o\;

ww_test <= \test~output_o\;

ww_ax(0) <= \ax[0]~output_o\;

ww_ax(1) <= \ax[1]~output_o\;

ww_ax(2) <= \ax[2]~output_o\;

ww_ax(3) <= \ax[3]~output_o\;

ww_ax(4) <= \ax[4]~output_o\;

ww_ax(5) <= \ax[5]~output_o\;

ww_ax(6) <= \ax[6]~output_o\;

ww_ax(7) <= \ax[7]~output_o\;

ww_bx(0) <= \bx[0]~output_o\;

ww_bx(1) <= \bx[1]~output_o\;

ww_bx(2) <= \bx[2]~output_o\;

ww_bx(3) <= \bx[3]~output_o\;

ww_bx(4) <= \bx[4]~output_o\;

ww_bx(5) <= \bx[5]~output_o\;

ww_bx(6) <= \bx[6]~output_o\;

ww_bx(7) <= \bx[7]~output_o\;
END structure;


