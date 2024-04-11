library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_3 is
	Generic( n : positive :=1);
	Port(
		sel 	: in  std_logic_vector(  1 downto 0);
		input_0 : in  std_logic_vector(n-1 downto 0);
		input_1 : in  std_logic_vector(n-1 downto 0);
		input_2 : in  std_logic_vector(n-1 downto 0);
		output  : out std_logic_vector(n-1 downto 0));
end MUX_3;

architecture Behavioral of MUX_3 is

begin
	with sel select
		output <= input_0 when "00",
				  input_1 when "01",
				  input_2 when "10",
	    (others => '0') when others;

end Behavioral;
