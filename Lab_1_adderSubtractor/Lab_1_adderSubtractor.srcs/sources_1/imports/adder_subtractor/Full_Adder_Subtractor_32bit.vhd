library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder_Subtractor_32bit is
Generic ( n : positive := 32 );
    Port ( A, B: in std_logic_vector(n-1 downto 0);
           k: in std_logic;
           s: out std_logic_vector(n-1 downto 0);
           Cout: out std_logic );
end Full_Adder_Subtractor_32bit;

architecture internals of Full_Adder_Subtractor_32bit is
signal carry, W : std_logic_vector(n-1 downto 0);

    component Full_adder
        Port (A, B, Cin: in std_logic;
              s, Cout: out std_logic
        );
    end component;
begin
 F0 : Full_adder port map( A => A(0), B => W(0), Cin =>k,
        s=> s(0), Cout=> carry(0) );
 F_rest: For i in 1 to n-1 generate
        F: Full_adder port map( A => A(i), B => W(i),
            Cin => carry(i-1), s => s(i), Cout => carry(i));
        end generate;
 W1 : FOR i in 0 to n-1 generate
        W(i) <= B(i) xor k;
      end generate;
 Cout <= carry(n-1);
end internals;
