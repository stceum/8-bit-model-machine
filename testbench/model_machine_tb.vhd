library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity model_machine_tb is
end entity;

architecture test of model_machine_tb is

component model_machine is
port(	clk: in std_logic;
		rst: in std_logic;
		wr_data: in std_logic;
		wr_addr: in std_logic_vector(3 downto 0);
		in_data: in std_logic_vector(15 downto 0);
		------
		test_ram: out std_logic_vector(15 downto 0);
		test_pc: out std_logic_vector(3 downto 0);
		test_t: out std_logic_vector(7 downto 0);
		test_bus: out std_logic_vector(15 downto 0);
		test_ir: out std_logic_vector(15 downto 0);
		------
		ax: out std_logic_vector(15 downto 0);
		bx: out std_logic_vector(15 downto 0));
end component;

signal clk, rst, wr_data: std_logic;
signal wr_addr: std_logic_vector(3 downto 0);

signal test_pc: std_logic_vector(3 downto 0);
signal test_t: std_logic_vector(7 downto 0);
signal test_ir, test_ram, test_bus, in_data, ax, bx: std_logic_vector(15 downto 0);

begin 
	u1: model_machine port map(clk, rst, wr_data, wr_addr, in_data, 
										test_ram, test_pc, test_t, test_bus, test_ir, ax, bx);
	process
	begin
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
	end process;
	
	process
	begin
		rst <= '1';
		wait for 220 ns;
		rst <= '0';
		wait;
	end process;
	
	process
	begin
		wr_data <= '0';
		wait for 220 ns;
		wr_data <= '1';
		wait;
	end process;

	process
	begin
		wr_addr <= "0000";
		wait for 20 ns;
		wr_addr <= wr_addr + 1;
		wait for 20 ns;
		wr_addr <= wr_addr + 1;
		wait for 20 ns;
		wr_addr <= wr_addr + 1;
		wait for 20 ns;
		wr_addr <= wr_addr + 1;
		wait for 20 ns;
		wr_addr <= wr_addr + 1;
		wait for 20 ns;
		wr_addr <= wr_addr + 1;
		wait for 20 ns;
		wr_addr <= wr_addr + 1;
		wait for 20 ns;
		wr_addr <= wr_addr + 1;
		wait for 20 ns;
		wr_addr <= wr_addr + 1;
		wait for 20 ns;
		wr_addr <= wr_addr + 1;
		wait;
	end process;
	
--b to a 1
--a to b 10
--dr to a 11
--dr to b 100
--add 101
--sub 110
--a shr 111
--b shr 1000
--a shl 1001
--b shl 1010
--xchg  1011
--and op 1100
--halt 1101
	
--	process
--	begin
--		in_data <= "0000000000000011"; --ld->a
--		wait for 20 ns;
--		in_data <= "0101010101010101";
--		wait for 20 ns;
--		in_data <= "0000000000001100"; --and
--		wait for 20 ns;
--		in_data <= "1111111100000000";
--		wait for 20 ns;
--		in_data <= "0000000000000100"; --ld->b
--		wait for 20 ns;
--		in_data <= "0011100001110000";
--		wait for 20 ns;
--		in_data <= "0000000000001000"; --shr
--		wait for 20 ns;
--		in_data <= "0000000000001011"; --xchg
--		wait for 20 ns;
--		in_data <= "0000000000000101"; --add
--		wait for 20 ns;
--		in_data <= "1110001111000111";
--		wait for 20 ns;
--		in_data <= "0000000000001101"; --halt
--		wait;
--	end process;

	process
	begin
		in_data <= "0000000000000011"; --ld->a
		wait for 20 ns;
		in_data <= "0101010101010101";
		wait for 20 ns;
		in_data <= "0000000000001100"; --and
		wait for 20 ns;
		in_data <= "1111111100000000";
		wait for 20 ns;
		in_data <= "0000000000000101"; --add
		wait for 20 ns;
		in_data <= "1110001111000111";
		wait for 20 ns;
		in_data <= "0000000000000100"; --ld->b
		wait for 20 ns;
		in_data <= "0011100001110000";
		wait for 20 ns;
		in_data <= "0000000000001000"; --shr
		wait for 20 ns;
		in_data <= "0000000000001011"; --xchg
		wait for 20 ns;
		in_data <= "0000000000001101"; --halt
		wait;
	end process;
	
--	process
--	begin
--	end process;
end test;