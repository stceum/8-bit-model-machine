library ieee;
use ieee.std_logic_1164.all;

entity CTRL is
	port(	clk: in std_logic;
			t: in std_logic_vector(7 downto 0);
			
			b_to_a: in std_logic;
			a_to_b: in std_logic;
			dr_to_a: in std_logic;
			dr_to_b: in std_logic;
			add: in std_logic;
			sub: in std_logic;
			a_shr: in std_logic;
			b_shr: in std_logic;
			a_shl: in std_logic;
			b_shl: in std_logic;
			xchg: in std_logic;
			and_op: in std_logic;
			halt: in std_logic;
			
			bus_to_a: out std_logic;
			bus_to_b: out std_logic;
			bus_to_ir: out std_logic;
			b_to_bus: out std_logic;
			a_to_bus: out std_logic;
			dr_to_bus: out std_logic;
			alu_add: out std_logic;
			alu_sub: out std_logic;
			alu_shr: out std_logic;
			alu_shl: out std_logic;
			pc_sfincs: out std_logic;--self increasing
			pc_to_mar: out std_logic;
			m_to_dr: out std_logic;
			acc_xchg: out std_logic;
			alu_and: out std_logic;
			alu_out: out std_logic);
end CTRL;

architecture CTRL_arch of CTRL is
begin
--	process(t)
--	begin
--		if(halt = '1') then				-- 停机
--			pc_sfincs <= '0';
--		else						-- 确定一个节拍周期中各个节拍应发出的信号，控制其它单元进行运算
			pc_to_mar <= t(0) or (t(3) and dr_to_a) or (t(3) and dr_to_b) or (t(3) and add) or (t(3) and sub) or (t(3) and and_op);
			m_to_dr <= t(1) or (t(4) and dr_to_a) or (t(4) and dr_to_b) or (t(4) and add) or (t(4) and sub) or (t(4) and and_op);
			dr_to_bus <= t(1) or (t(4) and dr_to_a) or (t(4) and dr_to_b) or (t(4) and add) or (t(4) and sub) or (t(4) and and_op);
			bus_to_ir <= t(1);
			pc_sfincs <= (t(2) or (t(4) and b_to_a) or (t(4) and a_to_b) or (t(5) and dr_to_a) or (t(5) and dr_to_b) or 
							(t(5) and add) or (t(5) and sub) or (t(4) and a_shr) or (t(4) and b_shr) or (t(4) and a_shl) 
							or (t(4) and b_shl) or (t(5) and and_op)) and (not halt);
			b_to_bus <= (t(3) and b_to_a) or (t(3) and b_shr) or (t(3) and b_shl);
			a_to_bus <= (t(3) and a_to_b) or (t(3) and a_shr) or (t(3) and a_shl);
			bus_to_a <= (t(3) and b_to_a) or (t(4) and dr_to_a) or (t(4) and a_shr) or (t(4) and a_shl) or 
																	(t(5) and add) or (t(5) and sub) or (t(5) and and_op);
			bus_to_b <= (t(3) and a_to_b) or (t(4) and dr_to_b) or (t(4) and b_shr) or (t(4) and b_shl);
			alu_add <= t(4) and add;
			alu_sub <= t(4) and sub;
			alu_shr <= (t(3) and a_shr) or (t(3) and b_shr);
			alu_shl <= (t(3) and a_shl) or (t(3) and b_shl);
			acc_xchg <= t(3) and xchg;
			alu_and <= t(4) and and_op;
			alu_out <= (t(5) and sub) or (t(5) and add) or (t(4) and a_shr) or 
						(t(4) and b_shr) or (t(4) and a_shl) or (t(4) and b_shl) or (t(5) and and_op);
--		end if;
--	end process;
end CTRL_arch;