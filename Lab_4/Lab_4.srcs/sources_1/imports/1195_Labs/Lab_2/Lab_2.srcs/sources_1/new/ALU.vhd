library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity ALU is
    Port ( A, B : in std_logic_vector(31 downto 0);
           SHAMT: in std_logic_vector(4 downto 0);
           ALUOp: in std_logic_vector(3 downto 0);
           Overflow, Zero : out std_logic;
           R   : out std_logic_vector(31 downto 0));
end ALU;

architecture structure of ALU is
    component ALU_Comp is
         Port ( A_31, B_31, S_31, CO : in std_logic;
           ALUOp : in std_logic_vector(1 downto 0);
           R : out std_logic_vector(31 downto 0));
    end component;
    
    component ALU_Logical is
         Port (  A, B : in std_logic_vector(31 downto 0);
            ALUOp: in std_logic_vector(1 downto 0);
            R: out std_logic_vector(31 downto 0));
    end component;
    
    component ALU_Mux is 
         Port ( LogicalR, ArithR, CompR, ShiftR : in std_logic_vector(31 downto 0);
           Mux_Op : in std_logic_vector(1 downto 0);
           R : out std_logic_vector(31 downto 0));
    end component;
    
    component ALU_Shift is 
         Port ( A : in std_logic_vector(31 downto 0);
           SHAMT : in std_logic_vector(4 downto 0);
           ALUOp : in std_logic_vector(1 downto 0);
           R : out std_logic_vector(31 downto 0));
    end component;
    
    component Arith_Unit is 
         GENERIC (n : positive := 32);
         PORT( A    : IN     std_logic_vector (n-1 DOWNTO 0);
               B    : IN     std_logic_vector (n-1 DOWNTO 0);
               C_op : IN     std_logic_vector (1 DOWNTO 0);
               CO   : OUT    std_logic;
               OFL  : OUT    std_logic;
               S    : OUT    std_logic_vector (n-1 DOWNTO 0);
               Z    : OUT    std_logic);
    end component;
    
    signal LogicalR, ArithR, CompR, ShiftR : std_logic_vector(31 downto 0);
    signal CarryOut : std_logic;

begin
    LOGIC: ALU_Logical port map( A => A, B => B, ALUOp => ALUOp(1 downto 0), R => LogicalR);
    COMPARE: ALU_Comp port map( A_31 => A(31), B_31 => B(31), S_31 => ArithR(31),
         CO => CarryOut, ALUOp => ALUOp(1 downto 0), R => CompR);
    MUXER: ALU_Mux port map ( LogicalR => LogicalR, ArithR => ArithR,
         CompR => CompR, ShiftR => ShiftR, Mux_Op => ALUOp(3 downto 2), R => R);  
    --switched A for B bc of CPU MIPS instruction
    SHIFTER: ALU_Shift port map( A => B, SHAMT => SHAMT, ALUOp => ALUOp(1 downto 0), R => ShiftR);
    ARITH: Arith_Unit generic map (n => 32) port map (A => A, B => B, C_op => ALUOp(1 downto 0),
         CO => CarryOut, OFL => Overflow, Z => Zero, S => ArithR);

end structure;
