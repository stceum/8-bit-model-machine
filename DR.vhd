library ieee;
use ieee.std_logic_1164.all;

entity DR is
	port(	clk: in std_logic;									-- 时钟信号
			dr_in_sig: in std_logic;									-- 数据寄存器寄存信号
			dr_out_sig: in std_logic;									-- 数据寄存器取出信号
			dr_in: in std_logic_vector(15 downto 0);		-- 读取数据端口
			dr_out: out std_logic_vector(15 downto 0):="ZZZZZZZZZZZZZZZZ"
			);	-- 输出数据端口，连接数据总线
end DR;

architecture DR_arch of DR is
signal temp: std_logic_vector(15 downto 0) := "ZZZZZZZZZZZZZZZZ";
begin
	process(clk, dr_in_sig)
	begin
		if(rising_edge(clk)) then
			if(dr_in_sig = '1') then									-- idr信号激活时读取数据
				temp <= dr_in;
			end if;
		end if;
	end process;
	dr_out <= temp when dr_out_sig = '1' else "ZZZZZZZZZZZZZZZZ";		-- 默认输出，当edr激活时输出高阻态
end DR_arch;
