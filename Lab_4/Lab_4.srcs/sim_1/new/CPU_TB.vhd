library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CPU_TB is
	Port ( Reset : in std_logic;
		   Clock : in std_logic);
end CPU_TB;


architecture struct of CPU_TB is

component Mips_CPU is
	Port (
		Reset : in std_logic;
		Clock : in std_logic;
		MemoryDataIn : in std_logic_vector(31 downto 0);
		MemoryAddress : out std_logic_vector(31 downto 0);
		MemoryDataOut : out std_logic_vector(31 downto 0);
		MemWrite : out std_logic);
end component;

component CPU_memory IS
   PORT( 
      Clk      : IN     std_logic;
      MemWrite : IN     std_logic;
      addr     : IN     std_logic_vector (31 DOWNTO 0);
      dataIn   : IN     std_logic_vector (31 DOWNTO 0);
      MemWait  : OUT    std_logic;
      dataOut  : OUT    std_logic_vector (31 DOWNTO 0)
   );
END component;
signal MemoryDataIn  : std_logic_vector(31 downto 0);
signal MemoryAddress : std_logic_vector(31 downto 0);
signal MemoryDataOut : std_logic_vector(31 downto 0);
signal MemWrite 	 : std_logic;
signal MemWait 		 : std_logic;

begin
U_1: CPU_memory port map( Clk => clock, MemWrite => MemWrite,
		addr => MemoryAddress, dataIn => MemoryDataOut, MemWait => MemWait,
		dataOut => MemoryDataIn);
U_0: Mips_CPU port map( Reset => Reset, Clock => Clock, MemoryDataIn => MemoryDataIn,
		MemoryAddress => MemoryAddress, MemoryDataOut => MemoryDataOut, MemWrite => MemWrite);

end struct;
