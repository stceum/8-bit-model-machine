library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity COUNTER_tb is
end COUNTER_tb;

architecture test of COUNTER_tb is

component COUNTER is
	port(	clk: in std_logic;								-- 时钟信号
			rst: in std_logic;								-- 重置信号
			t: out std_logic_vector(7 downto 0));		-- 每个节拍周期包含8个节拍
end component;

signal clk, rst: std_logic;
signal t: std_logic_vector(7 downto 0) := "10000000"; 

begin
    u0: COUNTER port map(clk, rst, t);

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

end test;
