library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity CTRL_tb is
end entity;

architecture test of CTRL_tb is

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
    
    signal clk, b_to_a, a_to_b, dr_to_a, dr_to_b, add, sub, a_shr,
    b_shr, a_shl, b_shl, xchg, and_op, halt, bus_to_a, bus_to_b,
    bus_to_ir, b_to_bus, a_to_bus, dr_to_bus, alu_add, alu_sub,
    alu_shr, alu_shl, pc_sfincs, pc_to_mar, m_to_dr, acc_xchg,
    alu_and, alu_out: std_logic := '0';
    signal t: std_logic_vector(7 downto 0) := "ZZZZZZZZ";


begin
    u0:CTRL port map(clk, t, b_to_a, a_to_b, dr_to_a, dr_to_b, add, 
    sub, a_shr, b_shr, a_shl, b_shl, xchg, and_op, halt, bus_to_a, 
    bus_to_b, bus_to_ir, b_to_bus, a_to_bus, dr_to_bus, alu_add, 
    alu_sub, alu_shr, alu_shl, pc_sfincs, pc_to_mar, m_to_dr, 
    acc_xchg, alu_and, alu_out );

    process
    begin
        clk <= '1';
        wait for 1 ns;
        clk <= '0';
        wait for 1 ns;
    end process;

    process
    begin
        t <= "10000000";
        wait for 2 ns;
        t <= "00000001";
        wait for 2 ns;
        t <= "00000010";
        wait for 2 ns;
        t <= "00000100";
        wait for 2 ns;
        t <= "00001000";
        wait for 2 ns;
        t <= "00010000";
        wait for 2 ns;
        t <= "00100000";
        wait for 2 ns;
        t <= "01000000";
        wait for 2 ns;
    end process;

    process
    begin
        b_to_a <= '1';
        wait for 16 ns;
        b_to_a <= '0';
        wait;
    end process;

    process
    begin
        wait for 16 ns;
        a_to_b <= '1';
        wait for 16 ns;
        a_to_b <= '0';
        wait;
    end process;
end test;
