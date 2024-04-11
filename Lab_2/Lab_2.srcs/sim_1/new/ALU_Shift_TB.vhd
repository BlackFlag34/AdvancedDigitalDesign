library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_Shift_TB is
end ALU_Shift_TB;

architecture sim of ALU_Shift_TB is
    component ALU_Shift is
    Port ( A : in std_logic_vector(31 downto 0);
           SHAMT : in std_logic_vector(4 downto 0);
           ALUOp : in std_logic_vector(1 downto 0);
           R : out std_logic_vector(31 downto 0));
    end component;
    
    signal A, R : std_logic_vector(31 downto 0);
    signal SHAMT : std_logic_vector(4 downto 0);
    signal ALUOp : std_logic_vector(1 downto 0);
    
begin
    TB : ALU_Shift port map( A => A, SHAMT =>  SHAMT,  ALUOp => ALUOp, R => R);
    process
    begin

        A <= X"FEDCBA98";
        SHAMT <= "00100";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"EDCBA980") report "LSL 1 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"0FEDCBA9") report "LSR 1 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFEDCBA9") report "ASR 1 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "00101";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"DB975300") report "LSL 2 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"07F6E5D4") report "LSR 2 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFF6E5D4") report "ASR 2 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "00110";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"B72EA600") report "LSL 3 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"03FB72EA") report "LSR 3 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFB72EA") report "ASR 3 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "00001";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"FDB97530") report "LSL 4 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"7F6E5D4C") report "LSR 4 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FF6E5D4C") report "ASR 4 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "00111";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"6E5D4C00") report "LSL 5 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"01FDB975") report "LSR 5 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFDB975") report "ASR 5 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "01000";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"DCBA9800") report "LSL 6 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"00FEDCBA") report "LSR 6 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFEDCBA") report "ASR 6 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "01100";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"CBA98000") report "LSL 7 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"000FEDCB") report "LSR 7 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFEDCB") report "ASR 7 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "01101";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"97530000") report "LSL 8 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"0007F6E5") report "LSR 8 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFF6E5") report "ASR 8 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "01110";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"2EA60000") report "LSL 9 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"0003FB72") report "LSR 9 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFB72") report "ASR 9 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "01111";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"5D4C0000") report "LSL 10 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"0001FDB9") report "LSR 10 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFDB9") report "ASR 10 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "10000";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"BA980000") report "LSL 11 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"0000FEDC") report "LSR 11 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFEDC") report "ASR 11 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "10010";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"EA600000") report "LSL 12 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"00003FB7") report "LSR 12 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFB7") report "ASR 12 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "10011";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"D4C00000") report "LSL 13 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"00001FDB") report "LSR 13 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFDB") report "ASR 13 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "10101";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"53000000") report "LSL 14 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"000007F6") report "LSR 14 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFF6") report "ASR 14 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "10110";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"A6000000") report "LSL 15 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"000003FB") report "LSR 15 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFFB") report "ASR 15 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "11000";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"98000000") report "LSL 16 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"000000FE") report "LSR 16 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFFE") report "ASR 16 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "11001";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"30000000") report "LSL 17 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"0000007F") report "LSR 17 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFFF") report "ASR 17 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "11011";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"C0000000") report "LSL 18 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"0000001F") report "LSR 18 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFFF") report "ASR 18 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "11100";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"80000000") report "LSL 19 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"0000000F") report "LSR 19 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFFF") report "ASR 19 case failed";
----New Test Case-------------------------------------------------------
        A <= X"FEDCBA98";
        SHAMT <= "11101";
        ALUOp <= "00";
        wait for 10 ns;
        assert(R = X"00000000") report "LSL 20 case failed";
        
        ALUOp <= "10";
        wait for 10 ns;
        assert(R = X"00000007") report "LSR 20 case failed";
        
        ALUOp <= "11";
        wait for 10 ns;
        assert(R = X"FFFFFFFF") report "ASR 20 case failed";



        report "Simulation Finished";
        wait;
    end process;

end sim;
