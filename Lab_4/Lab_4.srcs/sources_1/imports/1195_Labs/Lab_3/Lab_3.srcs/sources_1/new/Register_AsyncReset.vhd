library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register_AsyncReset is
    Generic ( n : positive := 64 );
    Port ( load     : in std_logic;
           reset    : in std_logic;
           clock    : in std_logic;
           input    : in std_logic_vector(n-1 downto 0);
           output   : out std_logic_vector(n-1 downto 0));
end Register_AsyncReset;

architecture structure of Register_AsyncReset is

component flipflop IS
   PORT( 
      CLK, D, EN, RST : IN     std_logic;
      Q   : OUT    std_logic
);
end component;

begin
    L1 : For i in 0 to n-1 generate
        FF: flipflop port map(CLK => clock, D => input(i), EN => load,
         RST => reset, Q => output(i));
        end generate;
end structure;
