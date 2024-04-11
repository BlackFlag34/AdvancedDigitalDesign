library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--use IEEE.NUMERIC_STD.ALL;


entity ALU_Shift is
    Port ( A : in std_logic_vector(31 downto 0);
           SHAMT : in std_logic_vector(4 downto 0);
           ALUOp : in std_logic_vector(1 downto 0);
           R : out std_logic_vector(31 downto 0));
end ALU_Shift;

architecture structure of ALU_Shift is
    signal Fill : std_logic_vector(15 downto 0);
    signal R_0, R_1, R_2, R_3, R_4, L_0, L_1, L_2, L_3, L_4 : std_logic_vector(31 downto 0);
begin
    L_0 <= A(30 downto 0)& '0' when (SHAMT(0) = '1') else A;
    L_1 <= L_0(29 downto 0)& "00" when (SHAMT(1) = '1') else L_0;
    L_2 <= L_1(27 downto 0)& "0000" when (SHAMT(2) = '1') else L_1;
    L_3 <= L_2(23 downto 0)& "00000000" when (SHAMT(3) = '1') else L_2;
    L_4 <= L_3(15 downto 0)& "0000000000000000" when (SHAMT(4) = '1') else L_3;
    
    Fill <= (others => ALUOp(0) and A(31));
    
    R_0 <= Fill(0) & A(31 downto 1) when (SHAMT(0) = '1') else A;
    R_1 <= Fill(1 downto 0) & R_0(31 downto 2) when (SHAMT(1) = '1') else R_0;
    R_2 <= Fill(3 downto 0) & R_1(31 downto 4) when (SHAMT(2) = '1') else R_1;
    R_3 <= Fill(7 downto 0) & R_2(31 downto 8) when (SHAMT(3) = '1') else R_2;
    R_4 <= Fill(15 downto 0) & R_3(31 downto 16) when (SHAMT(4) = '1') else R_3;
    R <= R_4 when ALUOp(1) = '1' else L_4;
end structure;
