library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity IR_tb is
end IR_tb;

architecture test of IR_tb is

component IR is
port( clk:		in std_logic;
		rst:		in std_logic;--reset
		ir_swi:	in std_logic;--switch
		ir_in:	in std_logic_vector(15 downto 0);--input
		--a: 		AX
		--b:		BX
		b_to_a:	out std_logic;
		a_to_b:	out std_logic;
		dr_to_a:	out std_logic;
		dr_to_b:	out std_logic;
		add:		out std_logic;
		sub:		out std_logic;
		a_shr:	out std_logic;
		b_shr:	out std_logic;
		a_shl:	out std_logic;
		b_shl:	out std_logic;
		xchg:		out std_logic;
		halt:		out std_logic
	);
end component;

signal clk, rst, ir_swi: std_logic;
signal ir_in: std_logic_vector(15 downto 0) := "0000000000000000";
signal b_to_a, a_to_b, dr_to_a, dr_to_b, add, sub, a_shr, b_shr, a_shl, b_shl, xchg, halt: std_logic;

begin
	tst: IR port map(clk, rst, ir_swi, ir_in, b_to_a, a_to_b, dr_to_a, dr_to_b, add, sub, a_shr, b_shr, a_shl, b_shl, xchg, halt);
	
	process
	begin
		clk <= '0';
		wait for 1 ns;
		clk <= '1';
		wait for 1 ns;
	end process;
	
	process
	begin
		rst <= '1';
		wait for 1 ns;
		rst <= '0';
		wait;
	end process;

	process
	begin
		ir_swi <= '1';
		wait;
	end process;
	
	process
	begin
		ir_in <= ir_in + 1;
		wait for 2 ns;
	end process;
end test;
