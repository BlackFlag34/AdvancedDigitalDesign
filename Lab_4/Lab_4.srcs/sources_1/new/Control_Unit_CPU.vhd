library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Control_Unit_CPU is
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
		A_EN, B_EN, ALU_out_EN, signed_flag : out std_logic;
		MDR_EN, Shamt_sel, HI_EN, LO_EN, mult_EN : out std_logic); 
end Control_Unit_CPU;

architecture structure of Control_Unit_CPU is
type state is (Resetting, Instruction_fetch, Instruction_decode, 
	Memory_address_compute, Memory_acess_load, Memory_load_done, 
	Memory_acess_save, R_type_exe, R_type_done, Branch_exe, 
	Jump_done, I_type_exe, I_type_done, CLO_exe, Multiply_exe, Move);
signal current_state: state;
begin

	FSM : process (clock, reset)
		begin
		if(reset = '1') then
			current_state <= Resetting;
		elsif( rising_edge(clock)) then
			case current_state is
				when Resetting => current_state <= Instruction_fetch;
				when Instruction_fetch => current_state <= Instruction_decode;
				
				when I_type_exe => current_state <= I_type_done;
				when I_type_done => current_state <= Instruction_fetch;
				
				when R_type_exe => current_state <= R_type_done;
				when R_type_done => current_state <= Instruction_fetch;
				
				when Memory_address_compute => 
					case Op is 
						when "101011" => current_state <= Memory_acess_save;
						when "100011" => current_state <= Memory_acess_load;
						when "001111" => current_state <= Instruction_fetch;
						when "100001" => current_state <= Memory_acess_load;
						when others => 
					end case;
				when Memory_acess_load => current_state <= Memory_load_done;
				when Memory_load_done => current_state <= Instruction_fetch;
				when Memory_acess_save => current_state <= Instruction_fetch;
				
				when Branch_exe => current_state <= Instruction_fetch;
				when Jump_done => current_state <= Instruction_fetch;
				when CLO_exe => current_state <= Instruction_fetch;
				
				when Multiply_exe => 
					if(mult_done = '1') then 
						current_state <= Instruction_fetch;
					else 
						current_state <= Multiply_exe;
					end if;
				when Move => current_state <= Instruction_fetch;
------------------------------------------------------------------------------------------				
				when Instruction_decode  => 
--not done
					case Op is
-- LH = 100001, LUI = 001111, LW = 100011, SW = 101011
						when "101011" => current_state <= Memory_address_compute;
						when "100011" => current_state <= Memory_address_compute;
						when "001111" => current_state <= Memory_address_compute;
						when "100001" => current_state <= Memory_address_compute;
-- ADDI = 001000, ORI = 001101, SLTI = 001010
						when "001000" => current_state <= I_type_exe;
						when "001101" => current_state <= I_type_exe;
						when "001010" => current_state <= I_type_exe;
-- ADDU = 100001, AND = 100100, SUB = 100010, SRA = 000011, SLLV = 000100, 
--		SLL = 000000, JR = 001000
						when "000000" => 
							case special_OP is 
								when "010000" => --MFHI
									current_state <= Move;
								when "010010" => --MFLO
									current_state <= Move;
								when "011001" => --MULTU
									current_state <= Multiply_exe;
								when others => current_state <= R_type_exe;
							end case;
-- J = 000010 	
						when "000010" => current_state <= Jump_done;
-- BNE = 000101
						when "000101" => current_state <= Branch_exe; 
-- CLO = 011100
						when "011100" => current_state <= CLO_exe;
						when others => 
					end case;
				when others => 
			end case;
		end if;
		
		end process FSM;
		
	Signal_handling : process (current_state)
		begin
--		if( rising_edge(clock)) then
			case  current_state is
			when Resetting =>
				ALUOp <= "0000";
			--enables
				PCWriteCond <= '0';
			 	A_EN <= '0';
				B_EN <= '0';
				ALU_out_EN <= '0';
				MDR_EN <= '0';
				PCWrite <= '0';
				RegWrite <= '0';
				IRWrite	<= '0';
				MemWrite <= '0';
				mult_EN <= '1';
				HI_EN <= '0';
				LO_EN <= '0';
			--MUXs
				PCSource <= "00";
				ALUSrcB <= "00";
				ALUSrcA <= '0';
				RegDst <= '0';
				Mem_to_Reg <= "000";
				IorD <= '0';
				Shamt_sel <= '0';
				signed_flag <= '1';
--------------------------------------------------------------------------------------------------				
			when Instruction_fetch =>
				PCWrite <= '1'; --important
				IorD <= '0'; --important
				MemWrite <= '0';
				IRWrite	<= '1'; --important
				PCSource <= "00"; -- important
				ALUOp <= "0101"; --important
				ALUSrcB <= "01"; --important
				ALUSrcA <= '0'; --important
				RegWrite <= '0';
				A_EN <= '0';
				B_EN <= '0';
				ALU_out_EN <= '0';
				MDR_EN <= '0';
				mult_EN <= '1';
				HI_EN <= '0';
				LO_EN <= '0';
--------------------------------------------------------------------------------------------------				
			when Instruction_decode =>
				PCWriteCond <= '0';
				ALUOp <= "0101";
			--enables
			 	A_EN <= '1';
				B_EN <= '1';
				ALU_out_EN <= '1';
				MDR_EN <= '0';
				PCWrite <= '0';
				RegWrite <= '0';
				IRWrite	<= '0';
				MemWrite <= '0';
				signed_flag <= '1';
				mult_EN <= '1';
				HI_EN <= '0';
				LO_EN <= '0';
			--MUXs
				PCSource <= "00";
				ALUSrcB <= "11";
				ALUSrcA <= '0';
--------------------------------------------------------------------------------------------------				
			when I_type_exe =>
				PCWriteCond <= '0';
			--enables
			 	A_EN <= '0';
				B_EN <= '0';
				ALU_out_EN <= '1';
				MDR_EN <= '0';
				PCWrite <= '0';
				RegWrite <= '0';
				IRWrite	<= '0';
				MemWrite <= '0';
				mult_EN <= '1';
				HI_EN <= '0';
				LO_EN <= '0';
			--MUXs
				PCSource <= "00";
				ALUSrcB <= "10";
				ALUSrcA <= '1';
				case Op is
					when "001000" => --add
						ALUOp <= "0100";
						signed_flag <= '1';
					when "001101" => --or
						ALUOp <= "0001";
						signed_flag <= '0';
					when "001010" => --slt
						ALUOp <= "1010";
						signed_flag <= '1';
					when others => 
				end case;	
--------------------------------------------------------------------------------------------------				
			when I_type_done => 
				PCWriteCond <= '0';
			--enables
			 	A_EN <= '0';
				B_EN <= '0';
				ALU_out_EN <= '0';
				MDR_EN <= '0';
				PCWrite <= '0';
				RegWrite <= '1';
				IRWrite	<= '0';
				MemWrite <= '0';
				mult_EN <= '1';
				HI_EN <= '0';
				LO_EN <= '0';
			--MUXs
				RegDst <= '0'; --important
				Mem_to_Reg <= "000"; --important
--------------------------------------------------------------------------------------------------				
			when R_type_exe =>
				PCWriteCond <= '0';
			--enables
			 	A_EN <= '0';
				B_EN <= '0';
				ALU_out_EN <= '1';
				MDR_EN <= '0';
				PCWrite <= '0';
				RegWrite <= '0';
				IRWrite	<= '0';
				MemWrite <= '0';
				mult_EN <= '1';
				HI_EN <= '0';
				LO_EN <= '0';
			--MUXs
				ALUSrcB <= "00";
				ALUSrcA <= '1';
				case special_OP is
					when "100001" => --ADDU
						ALUOp <= "0101";
						PCWrite <= '0';
					when "100100" => --AND
						ALUOp <= "0000";
						PCWrite <= '0';
					when "100010" => --SUB
						ALUOp <= "0110";
						PCWrite <= '0';
					when "000011" => --SRA
						ALUOp <= "1111";
						Shamt_sel <= '0';
						PCWrite <= '0';
					when "000100" => --SLLV
						ALUOp <= "1100";
						Shamt_sel <= '1';
						PCWrite <= '0';
					when "000000" => --SLL
						ALUOp <= "1100";
						Shamt_sel <= '0';
						PCWrite <= '0';
					when "001000" => --JR
						PCSource <= "11";
						PCWrite <= '1';
					when others => 
				end case;	
--------------------------------------------------------------------------------------------------	
			when R_type_done => 
				PCWriteCond <= '0';
			--enables
			 	A_EN <= '0';
				B_EN <= '0';
				ALU_out_EN <= '0';
				MDR_EN <= '0';
				PCWrite <= '0';
				if(special_OP  = "001000")then --JR
					RegWrite <= '0';
					signed_flag <= '1';
				else
					RegWrite <= '1';
				end if;
				IRWrite	<= '0';
				MemWrite <= '0';
				mult_EN <= '1';
				HI_EN <= '0';
				LO_EN <= '0';
			--MUXs
				RegDst <= '1'; --important
				Mem_to_Reg <= "000"; --important
--------------------------------------------------------------------------------------------------
			when Branch_exe =>
				PCWriteCond <= '1';
				ALUOp <= "0110";
			--enables
			 	A_EN <= '0';
				B_EN <= '0';
				ALU_out_EN <= '0';
				MDR_EN <= '0';
				PCWrite <= '0';
				RegWrite <= '0';
				IRWrite	<= '0';
				MemWrite <= '0';
				mult_EN <= '1';
				HI_EN <= '0';
				LO_EN <= '0';
			--MUXs
				PCSource <= "01";
				ALUSrcB <= "00";
				ALUSrcA <= '1';
--------------------------------------------------------------------------------------------------				
			when Jump_done =>
			--enables
				PCWriteCond <= '0';
			 	A_EN <= '0';
				B_EN <= '0';
				ALU_out_EN <= '0';
				MDR_EN <= '0';
				PCWrite <= '1';
				RegWrite <= '0';
				IRWrite	<= '0';
				MemWrite <= '0';
				mult_EN <= '1';
				HI_EN <= '0';
				LO_EN <= '0';
			--MUXs
				PCSource <= "10";
--------------------------------------------------------------------------------------------------				
			when Memory_address_compute =>
				ALUOp <= "0100";
			--enables
				PCWriteCond <= '0';
			 	A_EN <= '0';
				B_EN <= '0';
				ALU_out_EN <= '1';
				MDR_EN <= '0';
				PCWrite <= '0';
				IRWrite	<= '0';
				MemWrite <= '0';
				mult_EN <= '1';
				HI_EN <= '0';
				LO_EN <= '0';
				if (Op = "001111") then
					RegWrite <= '1';
					Mem_to_Reg <= "011";
				else
					RegWrite <= '0';
				end if;
			--MUXs
				ALUSrcB <= "10";
				ALUSrcA <= '1';
--------------------------------------------------------------------------------------------------				
			when Memory_acess_load =>
			--enables
				PCWriteCond <= '0';
			 	A_EN <= '1';
				B_EN <= '0';
				ALU_out_EN <= '0';
				MDR_EN <= '1';
				PCWrite <= '0';
				RegWrite <= '0';
				IRWrite	<= '0';
				MemWrite <= '0';
				mult_EN <= '1';
				HI_EN <= '0';
				LO_EN <= '0';
			--MUXs
				IorD <= '1';
--------------------------------------------------------------------------------------------------				
			when Memory_acess_save =>
			--enables
				PCWriteCond <= '0';
			 	A_EN <= '0';
				B_EN <= '0';
				ALU_out_EN <= '0';
				MDR_EN <= '0';
				PCWrite <= '0';
				RegWrite <= '0';
				IRWrite	<= '0';
				MemWrite <= '1';
				mult_EN <= '1';
				HI_EN <= '0';
				LO_EN <= '0';
			--MUXs
				IorD <= '1';
--------------------------------------------------------------------------------------------------				
			when Memory_load_done =>
			--enables
				PCWriteCond <= '0';
			 	A_EN <= '0';
				B_EN <= '0';
				ALU_out_EN <= '0';
				MDR_EN <= '0';
				PCWrite <= '0';
				RegWrite <= '1';
				IRWrite	<= '0';
				MemWrite <= '0';
				mult_EN <= '1';
				HI_EN <= '0';
				LO_EN <= '0';
			--MUXs
				RegDst <= '0';
				if (Op = "100001") then
					Mem_to_Reg <= "010";
				else
					Mem_to_Reg <= "001";
				end if;
--------------------------------------------------------------------------------------------------				
			when CLO_exe =>
			--enables
				PCWriteCond <= '0';
			 	A_EN <= '0';
				B_EN <= '0';
				ALU_out_EN <= '0';
				MDR_EN <= '0';
				PCWrite <= '0';
				RegWrite <= '1';
				IRWrite	<= '0';
				MemWrite <= '0';
				mult_EN <= '1';
				HI_EN <= '0';
				LO_EN <= '0';
			--MUXs
				RegDst <= '1';
				Mem_to_Reg <= "100";
--------------------------------------------------------------------------------------------------				
			when Multiply_exe =>
			--enables
				PCWriteCond <= '0';
			 	A_EN <= '0';
				B_EN <= '0';
				ALU_out_EN <= '0';
				MDR_EN <= '0';
				PCWrite <= '0';
				RegWrite <= '0';
				IRWrite	<= '0';
				MemWrite <= '0';
				mult_EN <= '0';
				HI_EN <= '1';
				LO_EN <= '1';
--------------------------------------------------------------------------------------------------				
			when Move =>
			--enables
				PCWriteCond <= '0';
			 	A_EN <= '0';
				B_EN <= '0';
				ALU_out_EN <= '0';
				MDR_EN <= '0';
				PCWrite <= '0';
				RegWrite <= '1';
				IRWrite	<= '0';
				MemWrite <= '0';
				mult_EN <= '1';
			--MUXs
				RegDst <= '1';
				case special_OP is 
					when "010000" => --MFHI
						Mem_to_Reg <= "110";
					when others => Mem_to_Reg <= "101"; --MFLO
				end case; 
--------------------------------------------------------------------------------------------------				


--------------------------------------------------------------------------------------------------				
			when others =>
			end case;
--		end if;
		
		end process Signal_handling;


end structure;