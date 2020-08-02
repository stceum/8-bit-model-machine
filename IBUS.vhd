library ieee;
use ieee.std_logic_1164.all;

entity IBUS is
port(	clk: in std_logic;
		ibus_dr_in: in std_logic_vector(15 downto 0);
		ibus_acc_in: in std_logic_vector(15 downto 0);
		ibus_alu_in: in std_logic_vector(15 downto 0);
		ibus_out:out std_logic_vector(15 downto 0) := "ZZZZZZZZZZZZZZZZ"
);
end IBUS;

architecture IBUS_arch of IBUS is
signal saves: std_logic_vector(15 downto 0):="ZZZZZZZZZZZZZZZZ";
begin
	process(clk)
	begin
		if(not (ibus_dr_in = "ZZZZZZZZZZZZZZZZ")) then
			saves <= ibus_dr_in;
		elsif(not (ibus_acc_in = "ZZZZZZZZZZZZZZZZ")) then
			saves <= ibus_acc_in;
		elsif(not (ibus_alu_in = "ZZZZZZZZZZZZZZZZ")) then
			saves <= ibus_alu_in;
		else
			saves <= "ZZZZZZZZZZZZZZZZ";
		end if;
	end process;
	
ibus_out <= saves;
end IBUS_arch;