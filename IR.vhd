library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity IR is
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
		and_op:		out std_logic;
		halt:		out std_logic
	);
end IR;

architecture IR_arch of IR is
signal tmp: std_logic_vector(15 downto 0) := "0000000000000000";

begin
	
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(rst='1') then
				tmp <= "0000000000000000";
			elsif(ir_swi='1') then
				tmp <= ir_in;
			end if;
		end if;
	end process;
	
	process(clk, tmp)
	begin
		if(tmp="0000000000000001") then
			b_to_a <= '1';
		else
			b_to_a <= '0';
		end if;
		if(tmp="0000000000000010") then
			a_to_b <= '1';
		else
			a_to_b <= '0';
		end if;
		if(tmp="0000000000000011") then
			dr_to_a <= '1';
		else
			dr_to_a <= '0';
		end if;
		if(tmp="0000000000000100") then
			dr_to_b <= '1';
		else
			dr_to_b <= '0';
		end if;
		if(tmp="0000000000000101") then
			add <= '1';
		else
			add <= '0';
		end if;
		if(tmp="0000000000000110") then
			sub <= '1';
		else
			sub <= '0';
		end if;
		if(tmp="0000000000000111") then
			a_shr <= '1';
		else
			a_shr <= '0';
		end if;
		if(tmp="0000000000001000") then
			b_shr <= '1';
		else
			b_shr <= '0';
		end if;
		if(tmp="0000000000001001") then
			a_shl <= '1';
		else
			a_shl <= '0';
		end if;
		if(tmp="0000000000001010") then
			b_shl <= '1';
		else
			b_shl <= '0';
		end if;
		if(tmp="0000000000001011") then
			xchg <= '1';
		else
			xchg <= '0';
		end if;
		if(tmp="0000000000001100") then
			and_op <= '1';
		else
			and_op <= '0';
		end if;
		if(tmp="0000000000001101") then
			halt <= '1';
		else
			halt <= '0';
		end if;
	end process;

end IR_arch;