library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity RAM_tb is
end RAM_tb;

architecture test of RAM_tb is

component RAM is
	port(	clk: in std_logic;										-- 时钟信号
			wr: in std_logic;											-- 写入信号
			addr: in std_logic_vector(3 downto 0);				-- 要读写的地址
			ram_in: in std_logic_vector(15 downto 0);			-- 输入的数据
			ram_out: out std_logic_vector(15 downto 0));		-- 输出的数据
end component;

signal clk,wr: std_logic:='Z';
signal addr: std_logic_vector(3 downto 0):="ZZZZ";
signal ram_in, ram_out: std_logic_vector(15 downto 0):="ZZZZZZZZZZZZZZZZ";

begin
    u0: RAM port map(clk, wr, addr, ram_in, ram_out);

    process
    begin
        clk <= '0';
        wait for 1 ns;
        clk <= '1';
        wait for 1 ns;
    end process;

    process
    begin
        wr <= '0';
        wait for 8 ns;
        wr <= '1';
        wait;
    end process;

    process
    begin
        addr <= "0010";
        wait for 2 ns;
        addr <= "0011";
        wait for 2 ns;
        addr <= "0100";
        wait for 2 ns;
        addr <= "0101";
        wait for 2 ns;
        addr <= "0101";
        wait for 2 ns;
        addr <= "0100";
        wait for 2 ns;
        addr <= "0011";
        wait for 2 ns;
        addr <= "0010";
        wait for 2 ns;
        wait;
    end process;

    process
    begin
        ram_in <= "1110000000000000";
        wait for 2 ns;
        ram_in <= "0001110000000000";
        wait for 2 ns;
        ram_in <= "0000001110000000";
        wait for 2 ns;
        ram_in <= "0000000001110000";
        wait;
    end process;

end test;
