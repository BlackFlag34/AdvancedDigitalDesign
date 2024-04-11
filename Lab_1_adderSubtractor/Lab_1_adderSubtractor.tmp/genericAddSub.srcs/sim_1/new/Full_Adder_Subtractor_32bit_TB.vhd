library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Full_Adder_Subtractor_32bit_TB is
end Full_Adder_Subtractor_32bit_TB;

architecture sim of Full_Adder_Subtractor_32bit_TB is
    component Full_Adder_Subtractor_32bit is
        generic( n: positive := 32);
        Port ( A, B: in std_logic_vector(n-1 downto 0);
           k: in std_logic;
           s: out std_logic_vector(n-1 downto 0);
           Cout: out std_logic );
    end component;
    constant n : positive := 32;
    signal A, B, S : std_logic_vector( n-1 downto 0);
    signal k, Cout : std_logic;
    
   
begin
    DUT: Full_Adder_Subtractor_32bit 
        Generic map ( n => n)
        port map ( a => a, b => b, s => s, k => k, Cout => Cout );
    process
    begin
    A <= std_logic_vector(to_unsigned(2**n-1, n));
    B <= std_logic_vector(to_unsigned(2**n-1, n));
    k <= '1';
    wait for 10 ns;
    assert( s = std_logic_vector(to_unsigned(0,n))) report "difference failed";
        wait;
    end process;
end sim;
