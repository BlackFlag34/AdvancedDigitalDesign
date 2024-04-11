library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_Logical_TB is
end ALU_Logical_TB;

architecture sim of ALU_Logical_TB is
    component ALU_Logical is
        Port (  A, B : in std_logic_vector(31 downto 0);
            ALUOp: in std_logic_vector(1 downto 0);
            R: out std_logic_vector(31 downto 0));
        end component;
    signal A, B, R : std_logic_vector(31 downto 0);
    signal ALUOp : std_logic_vector(1 downto 0);
    
begin
    TB : ALU_Logical port map(A => A, B => B, ALUOp => ALUOp, R => R);
    process
    begin
    
-- AND test
        A <= X"cccc_dddd";
        B <= X"3333_2222";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"0000_0000") report "AND test failed";
            
-- OR test
        ALUOp <= "01";
        wait for 10 ns;
        assert(R = X"FFFF_FFFF") report "OR test failed";
        
-- XOR test
        B <= X"FFFF_FFFF";
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"3333_2222") report "XOR test failed";
        
-- NOR test
        B <= X"CFC0_D2D0";
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"3033_2022") report "NOR test failed";
        
    
        report "Simulation Finished";
        wait;
    end process;
end sim;
