library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity DR_tb is
end DR_tb;

architecture test of DR_tb is
    
    component DR is
  	port(	clk: in std_logic;									-- 时钟信号
  			dr_in_sig: in std_logic;									-- 数据寄存器寄存信号
  			dr_out_sig: in std_logic;									-- 数据寄存器取出信号
  			dr_in: in std_logic_vector(15 downto 0);		-- 读取数据端口
  			dr_out: out std_logic_vector(15 downto 0):="ZZZZZZZZZZZZZZZZ"
  			);	-- 输出数据端口，连接数据总线
    end component;

    signal clk, dr_in_sig, dr_out_sig: std_logic := '0';
    signal dr_in, dr_out : std_logic_vector(15 downto 0) :=
    "ZZZZZZZZZZZZZZZZ";

begin
    u0:DR port map(clk, dr_in_sig, dr_out_sig, dr_in, dr_out);

    process
    begin
        clk <= '0';
        wait for 1 ns;
        clk <= '1';
        wait for 1 ns;
    end process;

    process
    begin
        dr_in_sig <= '1';
        wait for 2 ns;
        dr_in_sig <= '0';
        wait for 2 ns;
    end process;

    process
    begin
        dr_out_sig <= '0';
        wait for 2 ns;
        dr_out_sig <= '1';
        wait for 2 ns;
    end process;

    process
    begin
        dr_in <= "1111111100000000";
        wait for 4 ns;
        dr_in <= "0000000011111111";
        wait for 4 ns;
    end process;

end architecture;
