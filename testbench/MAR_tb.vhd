library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity MAR_tb is
end MAR_tb;

architecture test of MAR_tb is
    component MAR is
	  port(	clk: in std_logic;										-- 时钟信号
			  mar_get: in std_logic;										-- 地址寄存器寄存信号
			  mar_in: in std_logic_vector(3 downto 0);			-- 从程序计数器读取地址端口
			  mar_out: out std_logic_vector(3 downto 0));		-- 输出地址端口，连接地址总线
    end component;

signal clk, mar_get: std_logic := 'Z';
signal mar_in, mar_out: std_logic_vector(3 downto 0) := "ZZZZ";

begin
	 u0:MAR port map(clk, mar_get, mar_in, mar_out);

    process
    begin
        clk <= '1';
        wait for 1 ns;
        clk <= '0';
        wait for 1 ns;
    end process;

    process
    begin
        mar_get <= '1';
        wait for 2 ns;
        mar_get <= '0';
        wait for 2 ns;
    end process;

    process
    begin
        mar_in <= "0000";
        wait for 2 ns;
        mar_in <= "0001";
        wait for 2 ns;
        mar_in <= "0010";
        wait for 2 ns;
        mar_in <= "0011";
        wait for 2 ns;
        mar_in <= "0100";
        wait for 2 ns;
    end process;

end test;
