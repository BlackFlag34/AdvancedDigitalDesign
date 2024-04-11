library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LSL_Resgister_AsyncReset is
    Generic (n : positive := 32 );
    Port ( load     : in std_logic;
           shift    : in std_logic;
           reset    : in std_logic;
           clock    : in std_logic;
           input    : in std_logic_vector(n-1 downto 0);
           output   : out std_logic_vector(n-1 downto 0));
end LSL_Resgister_AsyncReset;

architecture structural of LSL_Resgister_AsyncReset is

begin
    shifting_logic : process(clock, reset)
    variable past, current : std_logic_vector(n-1 downto 0);
     begin
        if(reset = '1') then
           current := (others => '0');
        elsif(Rising_edge(clock)) then
           if(load = '1') then
              current := input;
           elsif(shift = '1') then
              current(0) := '0';
              current(n-1 downto 1) := past(n-2 downto 0);
           end if;
        end if;
        past := current;
        output <= current;
     end process shifting_logic;

end structural;
