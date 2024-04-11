library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Control_Unit is
    Port ( LSR_out : in std_logic_vector(31 downto 0);
           clock : in std_logic;
           reset : in std_logic;
           counter : in std_logic_vector(4 downto 0);
           done_flag : out std_logic;
           product_move : out std_logic;
           LSR_load, LSL_load, LSR_shift, LSL_shift, start : out std_logic);
end Control_Unit;

architecture structure of Control_Unit is
type state is (loading, multiplying, done);
signal current_state, next_state: state;

begin
    product_move <= LSR_out(0);
    FSM : process (clock, reset)
        begin
        current_state <= next_state;
        if(reset = '1') then
            next_state <= loading;
        elsif(counter = "11111") then 
            next_state <= done;
        elsif(rising_edge(clock)) then
            if (current_state = loading) then
                LSR_load <= '1';
                LSL_load <= '1';
                LSR_shift <= '0';
                LSL_shift <= '0';
                start <= '1';
                next_state <= multiplying;
            elsif (current_state = multiplying) then 
                LSR_load <= '0';
                LSL_load <= '0';
                LSR_shift <= '1';
                LSL_shift <= '1';
                start <= '0';
--                if(LSR_out(0) = '1') then
--                    product_move <= '1';
--                else    
--                    product_move <= '0';
--                end if;
                next_state <= multiplying;
            elsif (current_state = done) then
                done_flag <= '1';
                next_state <= done;
            end if;
        end if;
    end process FSM;                


end structure;
