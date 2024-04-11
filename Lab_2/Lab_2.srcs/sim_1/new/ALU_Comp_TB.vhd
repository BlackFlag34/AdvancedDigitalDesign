library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_Comp_TB is
end ALU_Comp_TB;

architecture sim of ALU_Comp_TB is
component ALU_Comp is
    Port ( A_31, B_31, S_31, CO : in std_logic;
           ALUOp : in std_logic_vector(1 downto 0);
           R : out std_logic_vector(31 downto 0));
           end component;
signal A_31, B_31, S_31, CO : std_logic;
signal ALUOp :  std_logic_vector(1 downto 0);
signal R : std_logic_vector(31 downto 0);
begin
TB : ALU_Comp port map ( A_31 => A_31, B_31 => B_31, 
        S_31 => S_31, CO => CO, ALUOp => ALUOp, R => R);
process
begin 
-- null set check
    A_31 <= '0';
    B_31 <= '0';
    S_31 <= '0';
    CO   <= '0';
    ALUOp <= "00";
    wait for 10 ns;
    assert( R = X"0000_0000") report " Null check failed";
    
-- null set check 2
    A_31 <= '0';
    B_31 <= '0';
    S_31 <= '0';
    CO   <= '0';
    ALUOp <= "01";
    wait for 10 ns;
    assert( R = X"0000_0000") report " Null check 2 failed";
    
-- Carryout check
    A_31 <= '0';
    B_31 <= '0';
    S_31 <= '0';
    CO   <= '0';
    ALUOp <= "11";
    wait for 10 ns;
    assert( R = X"0000_0001") report " Carryout check failed";

-- Carryout check 2
    A_31 <= '0';
    B_31 <= '0';
    S_31 <= '0';
    CO   <= '1';
    ALUOp <= "11";
    wait for 10 ns;
    assert( R = X"0000_0000") report " Carryout check 2 failed";

-- A&B check
    A_31 <= '0';
    B_31 <= '1';
    S_31 <= '0';
    CO   <= '0';
    ALUOp <= "10";
    wait for 10 ns;
    assert( R = X"0000_0000") report " A&B check failed";

-- A&B check 2
    A_31 <= '1';
    B_31 <= '0';
    S_31 <= '0';
    CO   <= '0';
    ALUOp <= "10";
    wait for 10 ns;
    assert( R = X"0000_0001") report " A&B check 2 failed";

-- S check 
    A_31 <= '0';
    B_31 <= '0';
    S_31 <= '0';
    CO   <= '0';
    ALUOp <= "10";
    wait for 10 ns;
    assert( R = X"0000_0000") report " S check failed";

-- S check 2
    A_31 <= '0';
    B_31 <= '0';
    S_31 <= '1';
    CO   <= '0';
    ALUOp <= "10";
    wait for 10 ns;
    assert( R = X"0000_0001") report " S check 2 failed";

-- S check 3
    A_31 <= '1';
    B_31 <= '1';
    S_31 <= '0';
    CO   <= '0';
    ALUOp <= "10";
    wait for 10 ns;
    assert( R = X"0000_0000") report " S check 3 failed";

-- S check 4
    A_31 <= '1';
    B_31 <= '1';
    S_31 <= '1';
    CO   <= '0';
    ALUOp <= "10";
    wait for 10 ns;
    assert( R = X"0000_0001") report " S check 4 failed";
------------------------------------------------------------------------------------
-- null set check rand
    A_31 <= '0';
    B_31 <= '1';
    S_31 <= '1';
    CO   <= '0';
    ALUOp <= "00";
    wait for 10 ns;
    assert( R = X"0000_0000") report " Null check rand failed";
    
-- null set check 2 rand
    A_31 <= '1';
    B_31 <= '0';
    S_31 <= '0';
    CO   <= '0';
    ALUOp <= "01";
    wait for 10 ns;
    assert( R = X"0000_0000") report " Null check 2 rand failed";
    
-- Carryout check rand
    A_31 <= '0';
    B_31 <= '1';
    S_31 <= '0';
    CO   <= '0';
    ALUOp <= "11";
    wait for 10 ns;
    assert( R = X"0000_0001") report " Carryout check rand failed";

-- Carryout check 2 rand
    A_31 <= '1';
    B_31 <= '0';
    S_31 <= '1';
    CO   <= '1';
    ALUOp <= "11";
    wait for 10 ns;
    assert( R = X"0000_0000") report " Carryout check 2 rand failed";

-- A&B check rand
    A_31 <= '0';
    B_31 <= '1';
    S_31 <= '1';
    CO   <= '1';
    ALUOp <= "10";
    wait for 10 ns;
    assert( R = X"0000_0000") report " A&B check rand failed";

-- A&B check 2 rand
    A_31 <= '1';
    B_31 <= '0';
    S_31 <= '0';
    CO   <= '1';
    ALUOp <= "10";
    wait for 10 ns;
    assert( R = X"0000_0001") report " A&B check 2 rand failed";

-- S check 5
    A_31 <= '0';
    B_31 <= '0';
    S_31 <= '0';
    CO   <= '1';
    ALUOp <= "10";
    wait for 10 ns;
    assert( R = X"0000_0000") report " S check 5 failed";

-- S check 6
    A_31 <= '0';
    B_31 <= '0';
    S_31 <= '1';
    CO   <= '1';
    ALUOp <= "10";
    wait for 10 ns;
    assert( R = X"0000_0001") report " S check 6 failed";

-- S check 7
    A_31 <= '1';
    B_31 <= '1';
    S_31 <= '0';
    CO   <= '1';
    ALUOp <= "10";
    wait for 10 ns;
    assert( R = X"0000_0000") report " S check 7 failed";

-- S check 8
    A_31 <= '1';
    B_31 <= '1';
    S_31 <= '1';
    CO   <= '1';
    ALUOp <= "10";
    wait for 10 ns;
    assert( R = X"0000_0001") report " S check 8 failed";

    report "simulation Finished";
    wait;

end process;

end sim;
