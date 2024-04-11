library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity Generic_bit_counter is
    Port ( reset, clock : in std_logic;
           counter : out std_logic_vector(4 downto 0));
end Generic_bit_counter;

architecture struct of Generic_bit_counter is
signal count : std_logic_vector(4 downto 0);
begin
counting: process (clock, reset)
    begin
    if(reset = '1') then 
        count <= "00000";
    elsif(rising_edge(clock)) then
        count <= count + 1;
    end if;
end process counting;
    counter <= count;
end struct;
