library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ACC_tb is
end ACC_tb;

architecture test of ACC_tb is

    component ACC is
	  port(	clk: in std_logic;											-- 时钟信号
			  rst: in std_logic;											-- 重置信号
			  a_in: in std_logic;												-- 寄存器AX输入信号
			  a_out: in std_logic;												-- 寄存器AX输出信号
			  b_in: in std_logic;												-- 寄存器BX输入信号
			  b_out: in std_logic;												-- 寄存器BX输入信号
			  xchg: in std_logic;											-- 寄存器交换信号
			  acc_in: in std_logic_vector(15 downto 0);				-- 寄存器共用输入接口
			  acc_out: out std_logic_vector(15 downto 0):="ZZZZZZZZZZZZZZZZ";			-- 寄存器共用输出接口
			  acc_a: out std_logic_vector(15 downto 0);				-- 寄存器AX实时内容接口
			  acc_b: out std_logic_vector(15 downto 0));				-- 寄存器BX实时内容接口
    end component;

    signal clk, rst, a_in, a_out, b_in, b_out, xchg: std_logic := 'Z';
    signal acc_in, acc_out, acc_a, acc_b: std_logic_vector(15 downto
    0) := "ZZZZZZZZZZZZZZZZ";
begin
    u0:ACC port map(clk, rst, a_in, a_out, b_in, b_out, xchg, 
                    acc_in, acc_out, acc_a, acc_b);

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
        wait for 2 ns;
        rst <= '0';
        wait;
    end process;

    process
    begin
        wait for 2 ns;
        a_in <= '1';
        wait for 2 ns;
        a_in <= '0';
        wait;
    end process;

    process
    begin
        wait for 4 ns;
        b_in <= '1';
        wait for 2 ns;
        b_in <= '0';
        wait;
    end process;

    process
    begin
        wait for 6 ns;
        a_out <= '1';
        wait for 2 ns;
        a_out <= '0';
        wait;
    end process;

    process
    begin
        wait for 8 ns;
        b_out <= '1';
        wait for 2 ns;
        a_out <= '0';
    end process;

    process
    begin
        wait for 10 ns;
        xchg <= '1';
        wait for 2 ns;
        xchg <= '0';
        wait;
    end process;

    process
    begin
        wait for 2 ns;
        acc_in <= "1111111100000000";
        wait for 2 ns;
        acc_in <= "0000000011111111";
        wait;
    end process;

end architecture;
