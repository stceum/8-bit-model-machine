library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity PC_tb is
end PC_tb;

architecture test of PC_tb is

component PC is
	port( clk:in std_logic;--clock
			rst:in std_logic;--reset
			cnt:in std_logic;--count
			adr:out std_logic_vector(3 downto 0)--address
	);
end component;

signal clk,rst,cnt: std_logic;
signal adr: std_logic_vector(3 downto 0);

begin
	tst:PC port map(clk, rst, cnt, adr);

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
		cnt <= '0';
		wait for 1 ns;
		cnt <= '1';
		wait;
	end process;

end test;
