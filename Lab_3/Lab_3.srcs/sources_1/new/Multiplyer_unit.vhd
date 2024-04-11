library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Multiplyer_unit is
    Port (  A   : in std_logic_vector(31 downto 0);
            B   : in std_logic_vector(31 downto 0);
            clk : in std_logic;
            rst : in std_logic;
            done: out std_logic;
            R   : out std_logic_vector(63 downto 0));
end Multiplyer_unit;

architecture Behavioral of Multiplyer_unit is

component LSL_Resgister_AsyncReset is
    Generic (n : positive := 32 );
    Port ( load     : in std_logic;
           shift    : in std_logic;
           reset    : in std_logic;
           clock    : in std_logic;
           input    : in std_logic_vector(n-1 downto 0);
           output   : out std_logic_vector(n-1 downto 0));
end component;

component LSR_Register_AsyncReset is
    Generic (n : positive := 32 );
    Port ( load     : in std_logic;
           shift    : in std_logic;
           reset    : in std_logic;
           clock    : in std_logic;
           input    : in std_logic_vector(n-1 downto 0);
           output   : out std_logic_vector(n-1 downto 0));
end component;

component Register_AsyncReset is
    Generic ( n : positive := 64 );
    Port ( load     : in std_logic;
           reset    : in std_logic;
           clock    : in std_logic;
           input    : in std_logic_vector(n-1 downto 0);
           output   : out std_logic_vector(n-1 downto 0));
end component;

component Control_Unit is
    Port ( LSR_out : in std_logic_vector(31 downto 0);
           clock : in std_logic;
           reset : in std_logic;
           counter : in std_logic_vector(4 downto 0);
           done_flag : out std_logic;
           product_move : out std_logic;
           LSR_load, LSL_load, LSR_shift, LSL_shift, start : out std_logic);
end component;

component Generic_bit_counter is
    Port ( reset, clock : in std_logic;
           counter : out std_logic_vector(4 downto 0));
end component;

component adder is
	generic (
		WIDTH : positive := 8
	);
	port (
		A     : in  std_logic_vector(WIDTH-1 downto 0);
		B     : in  std_logic_vector(WIDTH-1 downto 0);
		S     : out std_logic_vector(WIDTH-1 downto 0)
	);
end component;

signal LSR_load, LSL_load, LSR_shift, LSL_shift, product_move : std_logic;
signal multiplicand_out : std_logic_vector(63 downto 0);
signal product_out : std_logic_vector(63 downto 0);
signal product_in : std_logic_vector(63 downto 0);
signal multiplier_out : std_logic_vector(31 downto 0);
signal counter : std_logic_vector(4 downto 0);
signal expanded_A : std_logic_vector(63 downto 0);
signal start, count_start: std_logic;

begin
    expanded_A <= X"0000_0000" & A;
    Multiplicand: LSL_Resgister_AsyncReset generic map(64)
        port map(load => LSL_load, 
        shift => LSL_shift, 
        reset => rst,
        clock => clk, 
        input => expanded_A, 
        output => multiplicand_out);
        
    Multiplier: LSR_Register_AsyncReset generic map(32) port map(
        load => LSR_load, 
        shift => LSR_shift, 
        reset => rst,
        clock => clk, 
        input => B, 
        output => multiplier_out);
           
    Accumulator: adder generic map (64) port map( 
        A => multiplicand_out, 
        B => product_out, 
        S => product_in);
        
    Product: Register_AsyncReset generic map(64) port map( 
        load => product_move, 
        reset => rst, 
        clock => clk,
        input => product_in, 
        output => product_out );
          
    Controller: Control_Unit port map(
         LSR_out => multiplier_out, 
         clock => clk,
         reset => rst, 
         counter => counter, 
         done_flag => done, 
         product_move => product_move, 
         LSR_load => LSR_load, 
         LSL_load => LSL_load,
         LSR_shift => LSR_shift, 
         LSL_shift => LSL_shift,
         start => start);
         
    count_start <= (start or rst);
    Counter_unit: Generic_bit_counter port map( 
        reset => count_start, 
        clock => clk, 
        counter => counter);
        
    R <= product_out;
end Behavioral;
