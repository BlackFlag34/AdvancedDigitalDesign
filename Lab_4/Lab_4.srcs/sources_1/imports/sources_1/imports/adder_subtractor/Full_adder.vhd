library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Full_adder is
    Port( A, B, Cin: in std_logic;
          s, Cout: out std_logic
     );
end Full_adder;

architecture stucture of Full_adder is
    signal w: std_logic;
begin
    w <= A XOR B;
    s <= w XOR Cin;
    Cout <= (A and B) or (w and Cin);
end stucture;
