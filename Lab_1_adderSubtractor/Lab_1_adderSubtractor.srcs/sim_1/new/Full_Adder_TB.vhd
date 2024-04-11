library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Full_Adder_TB is
end Full_Adder_TB;

architecture sim of Full_Adder_TB is
    component Full_Adder_Subtractor_32bit is
    Generic ( n : positive := 32 );
        Port ( A, B: in std_logic_vector(n-1 downto 0);
           k: in std_logic;
           s: out std_logic_vector(n-1 downto 0);
           Cout: out std_logic );
    end component;
    constant n : positive := 32;
    signal A, B, s : std_logic_vector(n-1 downto 0);
    signal k, Cout: std_logic;
begin
    DUT : Full_Adder_Subtractor_32bit 
    generic map ( n => n)
    port map( A => A, B => B, k => k, s => s, Cout => Cout);
    process
    begin
        A <= X"0000_0000";
        B <= X"0000_0000";
        k <= '1';
        wait for 10 ns;
        assert((S = X"0000_0000") and (Cout = '1')) report "1 Subtract Failed";
        
        A <= X"0000_0000";
        B <= X"0000_0000";
        k <= '0';
        wait for 10 ns;
        assert((S = X"0000_0000") and (Cout = '0')) report "1 Add Failed";
        
        A <= X"ffff_ffff";
        B <= X"0000_0000";
        k <= '1';
        wait for 10 ns;
        assert((S = X"FFFF_FFFF") and (Cout = '1')) report "2 Subtract Failed";
        
        A <= X"FFFF_FFFe";
        B <= X"0000_0001";
        k <= '0';
        wait for 10 ns;
        assert((S = X"FFFF_FFFF") and (Cout = '0')) report "2 Add Failed";
        
        A <= X"ffff_ffff";
        B <= X"ffff_ffff";
        k <= '1';
        wait for 10 ns;
        assert((S = X"0000_0000") and (Cout = '1')) report "3 Subtract Failed";
        
        A <= X"ffff_ffff";
        B <= X"0000_0001";
        k <= '1';
        wait for 10 ns;
        assert((S = X"FFFF_FFFE") AND (Cout = '1')) report "4 Subtract Failed";
        
        A <= X"0000_0000";
        B <= X"0000_0001";
        k <= '1';
        wait for 10 ns;
        assert((S = X"FFFF_FFFF") AND (Cout = '0')) report "5 Subtract Failed";
        
        A <= X"FFFF_FFFF";
        B <= X"0000_0001";
        k <= '0';
        wait for 10 ns;
        assert((S = X"0000_0000") AND (Cout = '1')) report "3 Add Failed";
        
        A <= std_logic_vector(to_unsigned(436242, 32));
        B <= std_logic_vector(to_unsigned(234524, 32));
        k <= '1';
        wait for 10 ns;
        assert((S = std_logic_vector(to_unsigned(201718, 32))) AND (Cout = '1')) report "Subtract Failed";
        
        A <= std_logic_vector(to_unsigned(436242, 32));
        B <= std_logic_vector(to_unsigned(234524, 32));
        k <= '0';
        wait for 10 ns;
        assert((S = std_logic_vector(to_unsigned(670766, 32))) AND (Cout = '0')) report "Add Failed";
        
        A <= std_logic_vector(to_unsigned(837245, 32));
        B <= std_logic_vector(to_unsigned(2064943, 32));
        k <= '1';
        wait for 10 ns;
        assert((S = std_logic_vector(to_signed(-1227698, 32))) AND (Cout = '0')) report "Subtract Failed";
        
        A <= std_logic_vector(to_unsigned(837245, 32));
        B <= std_logic_vector(to_unsigned(2064943, 32));
        k <= '0';
        wait for 10 ns;
        assert((S = std_logic_vector(to_unsigned(2902188, 32))) AND (Cout = '0')) report "Add Failed";
        
        report "simulation Finished";
        wait;
    end process;

end sim;
