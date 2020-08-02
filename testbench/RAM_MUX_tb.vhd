library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity RAM_MUX_tb is
end RAM_MUX_tb;

architecture test of RAM_MUX_tb is

    component RAM_MUX is
	  port(	sel: in std_logic;								-- 选择信号
			addr1: in std_logic_vector(3 downto 0);	-- 写入地址
			addr2: in std_logic_vector(3 downto 0);	-- 读取地址
			res: out std_logic_vector(3 downto 0));	-- 结果
    end component;

    signal sel: std_logic:='Z';
    signal addr1, addr2, res: std_logic_vector(3 downto 0) := "ZZZZ";

begin
    u0:RAM_MUX port map(sel, addr1, addr2, res);

    process
    begin
        sel <= '0';
        wait for 2 ns;
        sel <= '1';
        wait for 2 ns;
    end process;

    process
    begin
        addr1 <= "1010";
        wait for 2 ns;
        addr1 <= "0101";
        wait for 2 ns;
    end process;

    process
    begin
        addr2 <= "0011";
        wait for 2 ns;
        addr2 <= "1100";
        wait for 2 ns;
    end process;

end test;
