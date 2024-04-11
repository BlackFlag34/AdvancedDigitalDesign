library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CLO_unit is
	Port ( input : in std_logic_vector(31 downto 0);
		   output: out std_logic_vector(31 downto 0));
end CLO_unit;

architecture structural of CLO_unit is
type leading_ones is array(31 downto 0) of unsigned(5 downto 0);
signal Sum  : leading_ones;
signal digit : leading_ones;
signal sign_extend : leading_ones;
begin
	Sum(0) <= "00000" & input(0);
	L1 : for i in 1 to 31 generate 
		sign_extend(i) <= (others  => input(i));
		digit(i) <= "00000" & input(i);
		Sum(i) <= ((Sum(i-1) and unsigned(sign_extend(i))) + digit(i));
		end generate;
	output <= X"000000" & "00" & std_logic_vector(Sum(31));
end structural;
