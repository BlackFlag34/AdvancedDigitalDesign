library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_Logical is
    Port (  A, B : in std_logic_vector(31 downto 0);
            ALUOp: in std_logic_vector(1 downto 0);
            R: out std_logic_vector(31 downto 0));
end ALU_Logical;

architecture structure of ALU_Logical is
    signal AND_Op, OR_Op, XOR_Op, NOR_Op : std_logic_vector(31 downto 0);
begin
    AND_Op <= A and B;
    OR_Op  <= A or  B;
    XOR_Op <= A xor B;
    NOR_Op <= A nor B;
    with ALUOp select 
        R <= AND_Op when "00",
             OR_Op  when "01",
             XOR_Op when "10",
             NOR_Op when "11",
             AND_Op when others;
end structure;
