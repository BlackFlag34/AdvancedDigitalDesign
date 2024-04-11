library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mips_CPU is
	Port (
		Reset : in std_logic;
		Clock : in std_logic;
		MemoryDataIn : in std_logic_vector(31 downto 0);
		MemoryAddress : out std_logic_vector(31 downto 0);
		MemoryDataOut : out std_logic_vector(31 downto 0);
		MemWrite : out std_logic);
		
end Mips_CPU;

architecture structure of Mips_CPU is

component Register_File is
    Port ( read_register_1 : in  std_logic_vector(4 downto 0); --used
           read_register_2 : in  std_logic_vector(4 downto 0); --used
           write_register  : in  std_logic_vector(4 downto 0); --used
           write_data      : in  std_logic_vector(31 downto 0); --used
           read_data_1     : out std_logic_vector(31 downto 0); --used
           read_data_2     : out std_logic_vector(31 downto 0); --used
           RegWrite		   : in  std_logic; --used
           clock           : in  std_logic; --used
           reset           : in  std_logic); --used
end component;
component Control_Unit_CPU is
	Port ( 
		PCWriteCond : out std_logic;
		PCWrite 	: out std_logic;
		IorD 		: out std_logic;
		MemWrite	: out std_logic;
		Mem_to_Reg	: out std_logic_vector(2 downto 0);
		IRWrite		: out std_logic;
		PCSource	: out std_logic_vector(1 downto 0);
		ALUOp 		: out std_logic_vector(3 downto 0);
		ALUSrcB		: out std_logic_vector(1 downto 0);
		ALUSrcA 	: out std_logic;
		RegWrite	: out std_logic;
		RegDst		: out std_logic;
		Op 			: in  std_logic_vector(5 downto 0);
		special_OP 	: in  std_logic_vector(5 downto 0);
		clock       : in  std_logic; 
		reset		: in  std_logic;
		mult_done 	: in  std_logic;
		A_EN, B_EN, ALU_out_EN, signed_flag: out std_logic;
		MDR_EN, Shamt_sel, HI_EN, LO_EN, mult_EN: out std_logic); 
end component;
component Register_AsyncReset is
    Generic ( n : positive := 64 );
    Port ( load     : in  std_logic;
           reset    : in  std_logic;
           clock    : in  std_logic;
           input    : in  std_logic_vector(n-1 downto 0);
           output   : out std_logic_vector(n-1 downto 0));
end component;
component ALU is
    Port ( A, B : in std_logic_vector(31 downto 0);
           SHAMT: in std_logic_vector(4 downto 0);
           ALUOp: in std_logic_vector(3 downto 0);
           Overflow, Zero : out std_logic;
           R   : out std_logic_vector(31 downto 0));
end component;
component MUX_2 is
	Generic( n : positive :=1);
	Port(
		sel 	: in  std_logic;
		input_0 : in  std_logic_vector(n-1 downto 0);
		input_1 : in  std_logic_vector(n-1 downto 0);
		output  : out std_logic_vector(n-1 downto 0));
end component;
component MUX_3 is
	Generic( n : positive :=1);
	Port(
		sel 	: in  std_logic_vector(  1 downto 0);
		input_0 : in  std_logic_vector(n-1 downto 0);
		input_1 : in  std_logic_vector(n-1 downto 0);
		input_2 : in  std_logic_vector(n-1 downto 0);
		output  : out std_logic_vector(n-1 downto 0));
end component;
component MUX_4 is
	Generic( n : positive :=1);
	Port(
		sel 	: in  std_logic_vector(  1 downto 0);
		input_0 : in  std_logic_vector(n-1 downto 0);
		input_1 : in  std_logic_vector(n-1 downto 0);
		input_2 : in  std_logic_vector(n-1 downto 0);
		input_3 : in  std_logic_vector(n-1 downto 0);
		output  : out std_logic_vector(n-1 downto 0));
end component;
component SignExtender is
	Generic( n1 : positive :=16;
			 n2 : positive :=32);
	Port(
 		input : in  std_logic_vector(n1-1 downto 0);
		output: out std_logic_vector(n2-1 downto 0);
		signed_flag: in std_logic);
end component;
component LSL_set is
	Generic( width : positive := 32;
			 shift : positive := 2);
	Port( input : in  std_logic_vector(width-1 downto 0);
		  output: out std_logic_vector(width-1 downto 0));
end component;
component CLO_unit is
	Port ( input : in std_logic_vector(31 downto 0);
		   output: out std_logic_vector(31 downto 0));
end component;
component MUX_7 is
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
end component;
component Multiplyer_unit is
    Port (  A   : in std_logic_vector(31 downto 0);
            B   : in std_logic_vector(31 downto 0);
            clk : in std_logic;
            rst : in std_logic;
            done: out std_logic;
            R   : out std_logic_vector(63 downto 0));
end component;

signal write_register : std_logic_vector(4 downto 0);
signal write_data, read_data_1, read_data_2 : std_logic_vector(31 downto 0);   
signal RegWrite, PCWriteCond, PCWrite, IorD : std_logic; 
signal Mem_to_reg : std_logic_vector(2 downto 0);
signal IRWrite, RegDst, ALUSrcA : std_logic;
signal PCSource	: std_logic_vector(1 downto 0);
signal ALUOp 		 : std_logic_vector(3 downto 0);
signal ALUSrcB		 : std_logic_vector(1 downto 0);
signal PC_input, PC_output : std_logic_vector(31 downto 0);
signal PC_write 	: std_logic;
signal ALU_A, ALU_B : std_logic_vector(31 downto 0);
signal Shamt : std_logic_vector(4 downto 0);
signal ALU_A_out, ALU_B_out : std_logic_vector(31 downto 0);
signal OF_temp, ALU_zero : std_logic;
signal ALU_Result, ALU_out_hold : std_logic_vector(31 downto 0);
signal IR_output : std_logic_vector(31 downto 0);
signal Shifted_PC: std_logic_vector(31 downto 0);
signal signExtend_output, signExtenedSL : std_logic_vector(31 downto 0);
signal Memory_data: std_logic_vector(31 downto 0);
signal A_EN, B_EN, ALU_out_EN, MDR_EN, Shamt_sel, signed_flag: std_logic; 
signal half_word, upperI : std_logic_vector(31 downto 0);
signal CLO_out, LO, HI : std_logic_vector(31 downto 0);
signal mult_done : std_logic;
signal product : std_logic_vector(63 downto 0);
signal HI_EN, LO_EN, mult_EN : std_logic;

begin
PC_write <= ((not ALU_zero) and PCWriteCond) or PCWrite;
Shifted_PC <= (PC_output(31 downto 28) & IR_output(25 downto 0) & "00");
MemoryDataOut <= ALU_B_out;

RF: Register_File port map(read_register_1 => IR_output(25 downto 21), 
  		read_register_2 => IR_output(20 downto 16), write_register => write_register, 
        write_data => write_data, read_data_1 => read_data_1, 
        read_data_2 => read_data_2, RegWrite => RegWrite,  
         clock => Clock, reset => Reset);
         
CU: Control_Unit_CPU port map(PCWriteCond => PCWriteCond, PCWrite => PCWrite,
		IorD => IorD, MemWrite => MemWrite, Mem_to_Reg => Mem_to_Reg, 
		IRWrite => IRWrite, PCSource => PCSource, ALUOp => ALUOp, 
		ALUSrcB => ALUSrcB, ALUSrcA => ALUSrcA, RegWrite => RegWrite, 
		RegDst => RegDst, Op => IR_output(31 downto 26),
		special_OP => IR_output(5 downto 0),
		clock => Clock, reset => Reset, A_EN => A_EN, B_EN => B_EN,
		ALU_out_EN => ALU_out_EN, MDR_EN => MDR_EN, Shamt_sel => Shamt_sel,
		signed_flag => signed_flag, mult_done => mult_done, mult_EN => mult_EN,
		HI_EN => HI_EN, LO_EN => LO_EN);	

ALU_map: ALU port map(A => ALU_A, B => ALU_B, SHAMT => Shamt,
     	ALUOp => ALUOp, Overflow => OF_temp, Zero => ALU_zero,
        R => ALU_Result);
        
A_reg: Register_AsyncReset generic map(n => 32)
    	port map(load => A_EN, reset => Reset, clock => Clock, 
    		input => read_data_1, output => ALU_A_out);
    		
B_reg: Register_AsyncReset generic map(n => 32)
    	port map(load => B_EN, reset => Reset, clock => Clock, 
    		input => read_data_2, output => ALU_B_out);
    		        
ALU_out: Register_AsyncReset generic map(n => 32) 
    	port map(load => ALU_out_EN, reset => Reset, clock => Clock, 
    		input => ALU_Result, output => ALU_out_hold);

PC: Register_AsyncReset generic map(n => 32)
    	port map(load => PC_write, reset => Reset, clock => Clock, 
    		input => PC_input, output => PC_output);

Instruction_register: Register_AsyncReset generic map(n => 32)
    	port map(load => IRWrite, reset => Reset, clock => Clock, 
    		input => MemoryDataIn, output => IR_output);

Address_Mux: MUX_2 generic map(n => 32)
	port map(sel => IorD, input_0 => PC_output, input_1 => ALU_out_hold, 
		output => MemoryAddress);

PC_Mux: MUX_4 generic map(n => 32)
	port map(sel => PCSource, input_0 => ALU_result, input_1 => ALU_out_hold, 
		input_2 => Shifted_PC, input_3 =>  ALU_A_out,
		output => PC_input);

A_Mux: MUX_2 generic map(n => 32)
	port map(sel => ALUSrcA, input_0 => PC_output, input_1 => ALU_A_out, 
		output => ALU_A);
		
B_Mux: MUX_4 generic map(n => 32)
	port map(sel => ALUSrcB, input_0 => ALU_B_out, input_1 => X"0000_0004", 
		input_2 => signExtend_output, input_3 => signExtenedSL,
		output => ALU_B);
		
extender: SignExtender generic map(n1 => 16, n2 => 32)
	port map(input => IR_output(15 downto 0), output => signExtend_output, 
	signed_flag => signed_flag);

ILSL: LSL_set generic map(width => 32, shift => 2)
	port map(input => signExtend_output, output => signExtenedSL);
	
Write_reg_Mux: MUX_2 generic map(n => 5)
	port map(sel => RegDst, input_0 => IR_output(20 downto 16),
		input_1 => IR_output(15 downto 11), 
		output => write_register);
		
Write_data_Mux: MUX_7 generic map(n => 32)
	port map(sel => Mem_to_Reg, input_0 => ALU_out_hold,
		input_1 => Memory_data, input_2 => half_word, input_3 => upperI,
		input_4 => CLO_out, input_5 => LO, input_6 => HI,
		output => write_data);
half_word <=(X"0000" & Memory_data(31 downto 16));
upperI <= (IR_output(15 downto 0) & X"0000");
	
Memory_data_reg: Register_AsyncReset generic map(n => 32)
    port map(load => MDR_EN, reset => Reset, clock => Clock, 
    	input => MemoryDataIn, output => Memory_data);
		
Shamt_mux: MUX_2 generic map(n => 5)
	port map(sel => Shamt_sel, input_0 => IR_output(10 downto 6),
		input_1 => ALU_A(4 downto 0), output => Shamt);
		
CLO: CLO_unit port map( input => ALU_A_out, output => CLO_out);

Mult: Multiplyer_unit port map(A => ALU_A_out, B => ALU_B_out, 
	clk => Clock, rst => mult_EN, done => mult_done, R => product);

HI_reg: Register_AsyncReset generic map(n => 32)
    	port map(load => HI_EN, reset => Reset, clock => Clock, 
    		input => product(63 downto 32), output => HI);
    		
LO_reg: Register_AsyncReset generic map(n => 32)
    	port map(load => LO_EN, reset => Reset, clock => Clock, 
    		input => product(31 downto 0), output => LO);
    		        
end structure;
