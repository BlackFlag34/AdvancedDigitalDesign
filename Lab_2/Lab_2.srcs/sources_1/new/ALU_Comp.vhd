library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--use IEEE.NUMERIC_STD.ALL;

entity ALU_Comp is
    Port ( A_31, B_31, S_31, CO : in std_logic;
           ALUOp : in std_logic_vector(1 downto 0);
           R : out std_logic_vector(31 downto 0));
end ALU_Comp;

architecture structure of ALU_Comp is
    signal outputR : std_logic;
begin
    outputR <= ((S_31 and (A_31 XNOR B_31)) or (A_31 and not B_31)) when ALUOp = "10" 
                else (ALUOp(0) and ALUOp(1) and not CO);
    R <= X"0000000" & "000" & outputR;

end structure;
