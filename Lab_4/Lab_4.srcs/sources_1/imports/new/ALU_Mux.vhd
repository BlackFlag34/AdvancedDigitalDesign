library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--use IEEE.NUMERIC_STD.ALL;

entity ALU_Mux is
    Port ( LogicalR, ArithR, CompR, ShiftR : in std_logic_vector(31 downto 0);
           Mux_Op : in std_logic_vector(1 downto 0);
           R : out std_logic_vector(31 downto 0));
end ALU_Mux;

architecture structure of ALU_Mux is

begin
    with Mux_Op select 
        R <= LogicalR when "00",
             ArithR when "01",
             CompR when "10",
             ShiftR when "11",
             LogicalR when others;
end structure;
