library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity model_machine is
port(	clk: in std_logic;
		rst: in std_logic;
		wr_data: in std_logic;
		wr_addr: in std_logic_vector(3 downto 0);
		in_data: in std_logic_vector(15 downto 0);
		---------debug
--		test_rst: out std_logic;
		test_ram: out std_logic_vector(15 downto 0);
		test_pc: out std_logic_vector(3 downto 0);
		test_t: out std_logic_vector(7 downto 0);
		test_bus: out std_logic_vector(15 downto 0):="ZZZZZZZZZZZZZZZZ";
		test_ir: out std_logic_vector(15 downto 0);
--		b_to_a2, a_to_b2, dr_to_a2, dr_to_b2, add2, sub2, a_shr2, b_shr2, a_shl2, b_shl2, xchg2, halt2: out std_logic;
		---------
		ax: out std_logic_vector(15 downto 0);
		bx: out std_logic_vector(15 downto 0));
end model_machine;

architecture mod_mach_arch of model_machine is 

component PC is
	port( clk:in std_logic;--clock
			rst:in std_logic;--reset
			cnt:in std_logic;--count
			adr:out std_logic_vector(3 downto 0)--address
	);
end component;

component MAR is
	port(	clk: in std_logic;										-- 时钟信号
			mar_get: in std_logic;										-- 地址寄存器寄存信号
			mar_in: in std_logic_vector(3 downto 0);			-- 从程序计数器读取地址端口
			mar_out: out std_logic_vector(3 downto 0));		-- 输出地址端口，连接地址总线
end component;

component RAM_MUX is
	port(	sel: in std_logic;								-- 选择信号
			addr1: in std_logic_vector(3 downto 0);	-- 写入地址
			addr2: in std_logic_vector(3 downto 0);	-- 读取地址
			res: out std_logic_vector(3 downto 0));	-- 结果
end component;

component RAM is
	port(	clk: in std_logic;										-- 时钟信号
			wr: in std_logic;											-- 写入信号
			addr: in std_logic_vector(3 downto 0);				-- 要读写的地址
			ram_in: in std_logic_vector(15 downto 0);			-- 输入的数据
			ram_out: out std_logic_vector(15 downto 0));		-- 输出的数据
end component;

component DR is
	port(	clk: in std_logic;									-- 时钟信号
			dr_in_sig: in std_logic;									-- 数据寄存器寄存信号
			dr_out_sig: in std_logic;									-- 数据寄存器取出信号
			dr_in: in std_logic_vector(15 downto 0);		-- 读取数据端口
			dr_out: out std_logic_vector(15 downto 0));	-- 输出数据端口，连接数据总线
end component;

component IR is
port( clk:		in std_logic;
		rst:		in std_logic;--reset
		ir_swi:	in std_logic;--switch
		ir_in:	in std_logic_vector(15 downto 0);--input
		--a: 		AX
		--b:		BX
		b_to_a:	out std_logic;
		a_to_b:	out std_logic;
		dr_to_a:	out std_logic;
		dr_to_b:	out std_logic;
		add:		out std_logic;
		sub:		out std_logic;
		a_shr:	out std_logic;
		b_shr:	out std_logic;
		a_shl:	out std_logic;
		b_shl:	out std_logic;
		xchg:		out std_logic;
		and_op:    out std_logic;
		halt:		out std_logic
	);
end component;

component COUNTER is
	port(	clk: in std_logic;								-- 时钟信号
			rst: in std_logic;								-- 重置信号
			t: out std_logic_vector(7 downto 0));		-- 每个节拍周期包含8个节拍
end component;

component CTRL is
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
end component;

component ACC is
	port(	clk: in std_logic;											-- 时钟信号
			rst: in std_logic;											-- 重置信号
			a_in: in std_logic;												-- 寄存器AX输入信号
			a_out: in std_logic;												-- 寄存器AX输出信号
			b_in: in std_logic;												-- 寄存器BX输入信号
			b_out: in std_logic;												-- 寄存器BX输入信号
			xchg: in std_logic;											-- 寄存器交换信号
			acc_in: in std_logic_vector(15 downto 0);				-- 寄存器共用输入接口
			acc_out: out std_logic_vector(15 downto 0);			-- 寄存器共用输出接口
			acc_a: out std_logic_vector(15 downto 0);				-- 寄存器AX实时内容接口
			acc_b: out std_logic_vector(15 downto 0));				-- 寄存器BX实时内容接口
end component;

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
			alu_out: out std_logic_vector(15 downto 0));			-- 计算结果
end component;

component IBUS is
port(	clk: in std_logic;
		ibus_dr_in: in std_logic_vector(15 downto 0);
		ibus_acc_in: in std_logic_vector(15 downto 0);
		ibus_alu_in: in std_logic_vector(15 downto 0);
		ibus_out:out std_logic_vector(15 downto 0)
);
end component;

signal reset: std_logic := '1';
signal ibus_dr_in, ibus_acc_in, ibus_alu_in, ibus_out: std_logic_vector(15 downto 0) := "ZZZZZZZZZZZZZZZZ";
signal PC_o, MAR_o, RAM_M_o: std_logic_vector(3 downto 0) := "ZZZZ";
signal DR_O, RAM_o, ACC_a, ACC_b, ACC_in, ACC_out, ALU_i, ALU_o, IR_i: std_logic_vector(15 downto 0) := "ZZZZZZZZZZZZZZZZ";
signal t: std_logic_vector(7 downto 0) := "00000001";

signal b_to_a: std_logic := '0';
signal a_to_b: std_logic := '0';
signal dr_to_a: std_logic := '0';
signal dr_to_b: std_logic := '0';
signal add: std_logic := '0';
signal sub: std_logic := '0';
signal a_shr: std_logic := '0';
signal b_shr: std_logic := '0';
signal a_shl: std_logic := '0';
signal b_shl: std_logic := '0';
signal xchg: std_logic := '0';
signal and_op: std_logic := '0';
signal halt: std_logic := '0';

signal bus_to_a: std_logic := '0';
signal bus_to_b: std_logic := '0';
signal bus_to_ir: std_logic := '0';
signal b_to_bus: std_logic := '0';
signal a_to_bus: std_logic := '0';
signal dr_to_bus: std_logic := '0';
signal alu_add: std_logic := '0';
signal alu_sub: std_logic := '0';
signal alu_shr: std_logic := '0';
signal alu_shl: std_logic := '0';
signal alu_and: std_logic := '0';
signal pc_sfincs: std_logic := '0';--self increasing
signal pc_to_mar: std_logic := '0';
signal m_to_dr: std_logic := '0';
signal acc_xchg: std_logic := '0';
signal alu_out: std_logic := '0';

begin
u0:IBUS port map(clk, ibus_dr_in, ibus_acc_in, ibus_alu_in, ibus_out);
u1: PC port map(clk, reset, pc_sfincs, PC_o);
u2: MAR port map(clk, pc_to_mar, PC_o, MAR_o);
u3: RAM_MUX port map(wr_data, wr_addr, MAR_o, RAM_M_o);
u4: RAM port map(clk, wr_data, RAM_M_o, in_data, RAM_o);
u5: DR port map(clk, m_to_dr, dr_to_bus, RAM_o, DR_O);
u6: ACC port map(clk, reset, bus_to_a, a_to_bus, bus_to_b, b_to_bus, acc_xchg, ACC_in, ACC_out,  ACC_a, ACC_b);
u7: ALU port map(clk, alu_add, alu_sub, alu_shr, alu_shl, alu_and, alu_out, ACC_a, ALU_i, ALU_o);
u8: IR port map(clk, reset, bus_to_ir, IR_i, b_to_a, a_to_b, dr_to_a, dr_to_b, add, sub, a_shr, b_shr, a_shl, b_shl, xchg, and_op, halt);
u9: COUNTER port map(clk, reset, t);
u10:CTRL port map(clk, t,  b_to_a, a_to_b, dr_to_a, dr_to_b, add, sub, a_shr, b_shr, a_shl, b_shl, xchg, and_op, halt, 
									bus_to_a, bus_to_b, bus_to_ir, b_to_bus, a_to_bus, dr_to_bus, alu_add, 
									alu_sub, alu_shr, alu_shl, pc_sfincs, pc_to_mar, m_to_dr, acc_xchg, alu_and, alu_out);

ibus_dr_in <= DR_O;
ACC_in <= ibus_out;
ibus_acc_in <= ACC_out;
ALU_i <= ibus_out;
ibus_alu_in <= ALU_o;
IR_i <= ibus_out;
--process(clk)
--	begin
--		if(rst = '1') then
--			reset <= '1';
--		else
--			if(wr_data = '0') then
--				reset <= '1';
--			else
--				reset <= '0';
--			end if;
--		end if;
--end process;
reset <= rst;
ax <= ACC_a;
bx <= ACC_b;
--debug
test_ram <= RAM_o;
test_ir <= ibus_out when bus_to_ir = '1' else "ZZZZZZZZZZZZZZZZ";
test_pc <= PC_o;
test_bus <= ibus_out;
test_t <= t;
----------

end mod_mach_arch;