library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity PC is
	port( clk:in std_logic;--clock
			rst:in std_logic;--reset
			cnt:in std_logic;--count
			adr:out std_logic_vector(3 downto 0)--address
	);
end PC;

--Asynchronous reset
architecture PC_arch of PC is
signal tmp:std_logic_vector(3 downto 0) := "ZZZZ";
begin

	process(clk, rst)
	begin
		if(rst='1') then
			tmp <= "0000";
		elsif(rising_edge(clk) and cnt='1') then
			tmp <= std_logic_vector(unsigned(tmp) + 1);
		end if;
	end process;

adr <= tmp;
end PC_arch;
