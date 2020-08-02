library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ALU_tb is
end ALU_tb;

architecture test of ALU_tb is

    component ALU is
  	port(	clk: in std_logic;											-- 时钟信号
  			add: in std_logic;
  			sub: in std_logic;
  			shr: in std_logic;											-- 将数据总线值右移
  			shl: in std_logic;											-- 将数据总线值左移
  			and_op: in std_logic;
  			eout: in std_logic;											-- 输出计算结果
  			acc_a: in std_logic_vector(15 downto 0);				-- 寄存器AX内容
  			dr: in std_logic_vector(15 downto 0);					-- 数据总线内容
  			alu_out: out std_logic_vector(15 downto 0):="ZZZZZZZZZZZZZZZZ"
  			);			-- 计算结果
    end component;

    signal clk, add, sub, shr, shl, and_op, eout: std_logic :='Z';
    signal acc_a, dr, alu_out: std_logic_vector(15 downto 0) :=
    "ZZZZZZZZZZZZZZZZ";

begin
    u0:ALU port map(clk, add, sub, shr, shl, and_op, eout, acc_a, dr,
    alu_out);
    
    process
    begin
        clk <= '0';
		    wait for 1 ns;
		    clk <= '1';
		    wait for 1 ns;
    end process;

    process
    begin
        acc_a <= "1111111100000000";
        wait;
    end process;

    process
    begin
        dr <= "0000000011111111";
        wait;
    end process;

    process
    begin
        add <= '1';
        wait for 2 ns;
        add <= '0';
        wait;
    end process;

    process
    begin
        wait for 2 ns;
        sub <= '1';
        wait for 2 ns;
        sub <= '0';
        wait;
    end process;

    process
    begin
        wait for 4 ns;
        shr <= '1';
        wait for 2 ns;
        shr <= '0';
        wait;
    end process;

    process
    begin
        wait for 6 ns;
        shl <= '1';
        wait for 2 ns;
        shl <= '0';
        wait;
    end process;

    process
    begin
        wait for 8 ns;
        and_op <= '1';
        wait for 2 ns;
        and_op <= '0';
        wait;
    end process;

    process
    begin
        eout <= '1';
        wait;
    end process;

end architecture;
