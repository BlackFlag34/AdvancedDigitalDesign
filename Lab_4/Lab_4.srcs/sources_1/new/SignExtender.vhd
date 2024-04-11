library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SignExtender is
	Generic( n1 : positive :=16;
			 n2 : positive :=32);
	Port(
		input : in  std_logic_vector(n1-1 downto 0);
		output: out std_logic_vector(n2-1 downto 0);
		signed_flag: in std_logic);
end SignExtender;

architecture structure of SignExtender is
signal filler : std_logic_vector(n2-1 downto n1);
begin
	filler <= (others => (input(n1-1) and signed_flag));
	output <= filler & input;


end structure;