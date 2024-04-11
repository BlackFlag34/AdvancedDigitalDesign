library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2 is
	Generic( n : positive :=1);
	Port(
		sel 	: in  std_logic;
		input_0 : in  std_logic_vector(n-1 downto 0);
		input_1 : in  std_logic_vector(n-1 downto 0);
		output  : out std_logic_vector(n-1 downto 0));
end MUX_2;

architecture Behavioral of MUX_2 is

begin
	with sel select
		output <= input_0 when '0',
				  input_1 when '1',
	    (others => '0') when others;

end Behavioral;
