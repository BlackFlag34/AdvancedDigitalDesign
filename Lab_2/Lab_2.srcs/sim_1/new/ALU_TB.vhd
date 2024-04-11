library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_TB is
end ALU_TB;

architecture sim of ALU_TB is

    component ALU is
        Port ( A, B : in std_logic_vector(31 downto 0);
           SHAMT: in std_logic_vector(4 downto 0);
           ALUOp: in std_logic_vector(3 downto 0);
           Overflow, Zero : out std_logic;
           R   : out std_logic_vector(31 downto 0));
    end component;

    signal A, B : std_logic_vector(31 downto 0);
    signal SHAMT: std_logic_vector(4 downto 0);
    signal ALUOp: std_logic_vector(3 downto 0);
    signal Overflow, Zero : std_logic;
    signal R    : std_logic_vector(31 downto 0);
begin

ALU_Part : ALU port map( A => A, B => B, SHAMT => SHAMT, ALUOp => ALUOp,
      Overflow => Overflow, Zero => Zero, R => R);
      
process 
begin

-- AND test
    A <= X"5555_AAAA";
    B <= X"AAAA_5555";
    ALUOp <= "0000";
    wait for 10 ns;
    assert(R = X"0000_0000") report "AND test failed";
 -- OR test
    ALUOp <= "0001";
    wait for 10 ns;
    assert(R = X"FFFF_FFFF") report "OR test failed";
-- XOR test
        B <= X"FFFF_FFFF";
        ALUOp <= "0010";
        wait for 10 ns;
        assert(R = X"AAAA_5555") report "XOR test failed";
-- NOR test
        B <= X"0000_0000";
        ALUOp <= "0011";
        wait for 10 ns;
        assert(R = X"AAAA_5555") report "NOR test failed";
 
 --Shift left test
         A <= X"FEDCBA98";
        SHAMT <= "01101";
        ALUOp <= "1100";
        wait for 10 ns;
        assert(R = X"97530000") report "LSL test failed";
 -- LSR test       
        ALUOp <= "1110";
        wait for 10 ns;
        assert(R = X"0007F6E5") report "LSR test failed";
-- ASR test        
        ALUOp <= "1111";
        wait for 10 ns;
        assert(R = X"FFFFF6E5") report "ASR test failed";
       
--add signed test 
        A <= std_logic_vector(to_signed(6546, 32));
        B <= std_logic_vector(to_signed(632, 32));
        ALUOp <= "0100";
        wait for 10 ns;
        assert((R = std_logic_vector(to_signed(7178, 32))) and
          Overflow = '0' and Zero = '0') report "add signed test failed";
--add unsigned test 
        A <= std_logic_vector(to_unsigned(6546, 32));
        B <= std_logic_vector(to_unsigned(632, 32));
        ALUOp <= "0101";
        wait for 10 ns;
        assert((R = std_logic_vector(to_unsigned(7178, 32))) and
          Overflow = '0' and Zero = '0') report "add unsigned test failed";
--subtract signed test 
        A <= std_logic_vector(to_signed(6546, 32));
        B <= std_logic_vector(to_signed(632, 32));
        ALUOp <= "0110";
        wait for 10 ns;
        assert((R = std_logic_vector(to_signed(5914, 32))) and
          Overflow = '0' and Zero = '0') report "subtract signed test failed";
--subtract unsigned test 
        A <= std_logic_vector(to_unsigned(6546, 32));
        B <= std_logic_vector(to_unsigned(632, 32));
        ALUOp <= "0111";
        wait for 10 ns;
        assert((R = std_logic_vector(to_unsigned(5914, 32))) and
          Overflow = '0' and Zero = '0') report "subtract unsigned test failed";
          
--SLT test
        A <= std_logic_vector(to_signed(6546, 32));
        B <= std_logic_vector(to_signed(632, 32));
        ALUOp <= "1010";
        wait for 10 ns;
        assert(R = X"0000_0000") report "SLT test failed";
        A <= std_logic_vector(to_signed(-6546, 32));
        B <= std_logic_vector(to_signed(632, 32));
        wait for 10 ns;
        assert(R = X"0000_0001") report "SLT test failed";

--USLT test
        A <= std_logic_vector(to_unsigned(6546, 32));
        B <= std_logic_vector(to_unsigned(632, 32));
        ALUOp <= "1010";
        wait for 10 ns;
        assert(R = X"0000_0000") report "USLT test failed";
        A <= std_logic_vector(to_unsigned(65, 32));
        B <= std_logic_vector(to_unsigned(632, 32));
        wait for 10 ns;
        assert(R = X"0000_0001") report "USLT test failed";

report "Simulation Finished";
wait;
end process;

end sim;
