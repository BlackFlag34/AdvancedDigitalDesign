library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Register_File is
    Port ( read_register_1 : in  std_logic_vector(4 downto 0); --used
           read_register_2 : in  std_logic_vector(4 downto 0); --used
           write_register  : in  std_logic_vector(4 downto 0); --used
           write_data      : in  std_logic_vector(31 downto 0); --used
           read_data_1     : out std_logic_vector(31 downto 0); --used
           read_data_2     : out std_logic_vector(31 downto 0); --used
           RegWrite		   : in  std_logic; --used
           clock           : in  std_logic; --used
           reset           : in  std_logic); --used
end Register_File;

architecture Behavioral of Register_File is
component Register_AsyncReset is
    Generic ( n : positive := 64 );
    Port ( load     : in  std_logic;
           reset    : in  std_logic;
           clock    : in  std_logic;
           input    : in  std_logic_vector(n-1 downto 0);
           output   : out std_logic_vector(n-1 downto 0));
end component;
signal Enable_bus : std_logic_vector(31 downto 0);
type outputChannel is array(31 downto 0) of std_logic_vector(31 downto 0);
signal output_to_mux  : outputChannel;

begin
	--get all the registers needed
	L1 : for i in 0 to 31 generate 
		reg : Register_AsyncReset generic map( n => 32)
			port map ( load => Enable_bus(i),
			 reset => reset, clock => clock, 
				input => write_data, output => output_to_mux(i));
		end generate;
	with write_register select 
		Enable_bus <= ("0000000000000000000000000000000" &  RegWrite) 	   when "00000",
				      ("000000000000000000000000000000" &  RegWrite & "0") when "00001",
				      ("00000000000000000000000000000" &  RegWrite & "00") when "00010",
				      ("0000000000000000000000000000" &  RegWrite & "000") when "00011",
				      ("000000000000000000000000000" &  RegWrite & "0000") when "00100",
				      ("00000000000000000000000000" &  RegWrite & "00000") when "00101",
				      ("0000000000000000000000000" &  RegWrite & "000000") when "00110",
				      ("000000000000000000000000" &  RegWrite & "0000000") when "00111",
				      ("00000000000000000000000" &  RegWrite & "00000000") when "01000",
				      ("0000000000000000000000" &  RegWrite & "000000000") when "01001",
				      ("000000000000000000000" &  RegWrite & "0000000000") when "01010",
				      ("00000000000000000000" &  RegWrite & "00000000000") when "01011",
				      ("0000000000000000000" &  RegWrite & "000000000000") when "01100",
				      ("000000000000000000" &  RegWrite & "0000000000000") when "01101",
				      ("00000000000000000" &  RegWrite & "00000000000000") when "01110",
				      ("0000000000000000" &  RegWrite & "000000000000000") when "01111",
				      ("000000000000000" &  RegWrite & "0000000000000000") when "10000",
				      ("00000000000000" &  RegWrite & "00000000000000000") when "10001",
				      ("0000000000000" &  RegWrite & "000000000000000000") when "10010",
				      ("000000000000" &  RegWrite & "0000000000000000000") when "10011",
				      ("00000000000" &  RegWrite & "00000000000000000000") when "10100",
				      ("0000000000" &  RegWrite & "000000000000000000000") when "10101",
				      ("000000000" &  RegWrite & "0000000000000000000000") when "10110",
				      ("00000000" &  RegWrite & "00000000000000000000000") when "10111",
				      ("0000000" &  RegWrite & "000000000000000000000000") when "11000",
				      ("000000" &  RegWrite & "0000000000000000000000000") when "11001",
				      ("00000" &  RegWrite & "00000000000000000000000000") when "11010",
				      ("0000" &  RegWrite & "000000000000000000000000000") when "11011",
				      ("000" &  RegWrite & "0000000000000000000000000000") when "11100",
				      ("00" &  RegWrite & "00000000000000000000000000000") when "11101",
				      ("0" &  RegWrite & "000000000000000000000000000000") when "11110",
				      (      RegWrite & "0000000000000000000000000000000") when "11111",
				      ("00000000000000000000000000000000")	               when others;
				      
	with read_register_1 select
		read_data_1 <= output_to_mux(0)  when "00000",
					   output_to_mux(1)  when "00001",
					   output_to_mux(2)  when "00010",
					   output_to_mux(3)  when "00011",
					   output_to_mux(4)  when "00100",
					   output_to_mux(5)  when "00101",
					   output_to_mux(6)  when "00110",
					   output_to_mux(7)  when "00111",
					   output_to_mux(8)  when "01000",
					   output_to_mux(9)  when "01001",
					   output_to_mux(10) when "01010",
					   output_to_mux(11) when "01011",
					   output_to_mux(12) when "01100",
					   output_to_mux(13) when "01101",
					   output_to_mux(14) when "01110",
					   output_to_mux(15) when "01111",
					   output_to_mux(16) when "10000",
					   output_to_mux(17) when "10001",
					   output_to_mux(18) when "10010",
					   output_to_mux(19) when "10011",
					   output_to_mux(20) when "10100",
					   output_to_mux(21) when "10101",
					   output_to_mux(22) when "10110",
					   output_to_mux(23) when "10111",
					   output_to_mux(24) when "11000",
					   output_to_mux(25) when "11001",
					   output_to_mux(26) when "11010",
					   output_to_mux(27) when "11011",
					   output_to_mux(28) when "11100",
					   output_to_mux(29) when "11101",
					   output_to_mux(30) when "11110",
					   output_to_mux(31) when "11111",
					   X"0000_0000"      when others;
					   
	with read_register_2 select
		read_data_2 <= output_to_mux(0)  when "00000",
					   output_to_mux(1)  when "00001",
					   output_to_mux(2)  when "00010",
					   output_to_mux(3)  when "00011",
					   output_to_mux(4)  when "00100",
					   output_to_mux(5)  when "00101",
					   output_to_mux(6)  when "00110",
					   output_to_mux(7)  when "00111",
					   output_to_mux(8)  when "01000",
					   output_to_mux(9)  when "01001",
					   output_to_mux(10) when "01010",
					   output_to_mux(11) when "01011",
					   output_to_mux(12) when "01100",
					   output_to_mux(13) when "01101",
					   output_to_mux(14) when "01110",
					   output_to_mux(15) when "01111",
					   output_to_mux(16) when "10000",
					   output_to_mux(17) when "10001",
					   output_to_mux(18) when "10010",
					   output_to_mux(19) when "10011",
					   output_to_mux(20) when "10100",
					   output_to_mux(21) when "10101",
					   output_to_mux(22) when "10110",
					   output_to_mux(23) when "10111",
					   output_to_mux(24) when "11000",
					   output_to_mux(25) when "11001",
					   output_to_mux(26) when "11010",
					   output_to_mux(27) when "11011",
					   output_to_mux(28) when "11100",
					   output_to_mux(29) when "11101",
					   output_to_mux(30) when "11110",
					   output_to_mux(31) when "11111",
					   X"0000_0000"      when others;
					   
					   
					   
					   

end Behavioral;
