library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LSL_set is
	Generic( width : positive := 32;
			 shift : positive := 2);
	Port( input : in  std_logic_vector(width-1 downto 0);
		  output: out std_logic_vector(width-1 downto 0));
end LSL_set;

architecture struct of LSL_set is
signal filler : std_logic_vector(shift-1 downto 0);
begin
	filler <= (others => '0');
	output <= input((width - (shift +1)) downto 0) & filler;

end struct;
