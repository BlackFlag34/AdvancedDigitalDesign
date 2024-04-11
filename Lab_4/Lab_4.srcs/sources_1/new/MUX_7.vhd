library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_7 is
	Generic( n : positive :=1);
	Port(
		sel 	: in  std_logic_vector(2 downto 0);
		input_0 : in  std_logic_vector(n-1 downto 0);
		input_1 : in  std_logic_vector(n-1 downto 0);
		input_2 : in  std_logic_vector(n-1 downto 0);
		input_3 : in  std_logic_vector(n-1 downto 0);
		input_4 : in  std_logic_vector(n-1 downto 0);
		input_5 : in  std_logic_vector(n-1 downto 0);
		input_6 : in  std_logic_vector(n-1 downto 0);
		output  : out std_logic_vector(n-1 downto 0));
end MUX_7;

architecture Behavioral of MUX_7 is

begin
	with sel select
		output <= input_0 when "000",
				  input_1 when "001",
				  input_2 when "010",
				  input_3 when "011",
				  input_4 when "100",
				  input_5 when "101",
				  input_6 when "110",
	    (others => '0') when others;

end Behavioral;
