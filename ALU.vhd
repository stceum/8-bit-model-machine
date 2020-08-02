library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
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
end ALU;

architecture ALU_arch of ALU is
signal temp: std_logic_vector(15 downto 0) := "0000000000000000";
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(add = '1') then
				temp <= std_logic_vector(unsigned(acc_a) + unsigned(dr));
			end if;
			if(sub = '1') then
				temp <= std_logic_vector(unsigned(acc_a) - unsigned(dr));
			end if;
			if(shr = '1') then
				temp <= '0' & dr(15 downto 1);
			end if;
			if(shl = '1') then
				temp <= dr(14 downto 0) & '0';
			end if;
			if(and_op = '1') then
				temp <= acc_a and dr;
			end if;
		end if;
	end process;
	alu_out <= temp when eout = '1' else "ZZZZZZZZZZZZZZZZ";		-- 默认高阻态
end ALU_arch;