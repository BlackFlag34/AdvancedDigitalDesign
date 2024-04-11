-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Oct 12 09:13:31 2023
-- Host        : The_Ghost_TWO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/tyqca/OneDrive/School/Labs/1195_Labs/Lab_3/Lab_3.srcs/sources_1/bd/lab_3/ip/lab_3_Multiplyer_unit_0_1/lab_3_Multiplyer_unit_0_1_sim_netlist.vhdl
-- Design      : lab_3_Multiplyer_unit_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_Control_Unit is
  port (
    load : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_Control_Unit : entity is "Control_Unit";
end lab_3_Multiplyer_unit_0_1_Control_Unit;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_Control_Unit is
  signal \FSM_onehot_next_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal LSR_load_i_1_n_0 : STD_LOGIC;
  signal LSR_shift_i_1_n_0 : STD_LOGIC;
  signal \^load\ : STD_LOGIC;
  signal shift : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_next_state_reg[0]\ : label is "iSTATE:100,iSTATE0:001,iSTATE1:010,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_next_state_reg[1]\ : label is "iSTATE:100,iSTATE0:001,iSTATE1:010,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of LSR_load_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of LSR_shift_i_1 : label is "soft_lutpair0";
begin
  load <= \^load\;
\FSM_onehot_next_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_next_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_next_state_reg_n_0_[0]\,
      O => \FSM_onehot_next_state[1]_i_1_n_0\
    );
\FSM_onehot_next_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => \FSM_onehot_next_state_reg_n_0_[0]\
    );
\FSM_onehot_next_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \FSM_onehot_next_state[1]_i_1_n_0\,
      Q => \FSM_onehot_next_state_reg_n_0_[1]\
    );
LSR_load_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFA2"
    )
        port map (
      I0 => \^load\,
      I1 => \FSM_onehot_next_state_reg_n_0_[1]\,
      I2 => rst,
      I3 => \FSM_onehot_next_state_reg_n_0_[0]\,
      O => LSR_load_i_1_n_0
    );
LSR_load_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => LSR_load_i_1_n_0,
      Q => \^load\,
      R => '0'
    );
LSR_shift_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0AE"
    )
        port map (
      I0 => shift,
      I1 => \FSM_onehot_next_state_reg_n_0_[1]\,
      I2 => rst,
      I3 => \FSM_onehot_next_state_reg_n_0_[0]\,
      O => LSR_shift_i_1_n_0
    );
LSR_shift_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => LSR_shift_i_1_n_0,
      Q => shift,
      R => '0'
    );
\current[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^load\,
      I1 => shift,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_Generic_bit_counter is
  port (
    done : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_Generic_bit_counter : entity is "Generic_bit_counter";
end lab_3_Multiplyer_unit_0_1_Generic_bit_counter;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_Generic_bit_counter is
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \done__0_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of done_reg : label is "LDP";
begin
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => p_0_in(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => p_0_in(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => \counter[2]_i_1_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(3),
      O => p_0_in(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      I4 => \counter_reg__0\(4),
      O => p_0_in(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => p_0_in(0),
      Q => \counter_reg__0\(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => p_0_in(1),
      Q => \counter_reg__0\(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \counter[2]_i_1_n_0\,
      Q => \counter_reg__0\(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => p_0_in(3),
      Q => \counter_reg__0\(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => p_0_in(4),
      Q => \counter_reg__0\(4)
    );
\done__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \counter_reg__0\(3),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(0),
      I3 => \counter_reg__0\(4),
      I4 => \counter_reg__0\(2),
      O => \done__0_n_0\
    );
done_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => '0',
      G => rst,
      GE => '1',
      PRE => \done__0_n_0\,
      Q => done
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_LSL_Resgister_AsyncReset is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 62 downto 0 );
    \current_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_reg[19]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_reg[27]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_reg[31]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_reg[35]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_reg[39]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_reg[43]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_reg[47]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_reg[51]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_reg[55]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_reg[59]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \current_reg[63]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    R : in STD_LOGIC_VECTOR ( 63 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    load : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_LSL_Resgister_AsyncReset : entity is "LSL_Resgister_AsyncReset";
end lab_3_Multiplyer_unit_0_1_LSL_Resgister_AsyncReset;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_LSL_Resgister_AsyncReset is
  signal \^q\ : STD_LOGIC_VECTOR ( 62 downto 0 );
  signal current : STD_LOGIC_VECTOR ( 63 to 63 );
  signal p_1_in : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \current[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \current[11]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \current[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \current[13]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \current[14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \current[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \current[16]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \current[17]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \current[18]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \current[19]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \current[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \current[20]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \current[21]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \current[22]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \current[23]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \current[24]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \current[25]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \current[26]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \current[27]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \current[28]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \current[29]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \current[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \current[30]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \current[31]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \current[32]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \current[33]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \current[34]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \current[35]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \current[36]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \current[37]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \current[38]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \current[39]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \current[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \current[40]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \current[41]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \current[42]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \current[43]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \current[44]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \current[45]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \current[46]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \current[47]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \current[48]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \current[49]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \current[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \current[50]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \current[51]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \current[52]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \current[53]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \current[54]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \current[55]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \current[56]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \current[57]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \current[58]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \current[59]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \current[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \current[60]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \current[61]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \current[62]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \current[63]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \current[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \current[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \current[8]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \current[9]_i_1\ : label is "soft_lutpair8";
begin
  Q(62 downto 0) <= \^q\(62 downto 0);
\S_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(7),
      I1 => R(7),
      O => \current_reg[7]_0\(3)
    );
\S_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(6),
      I1 => R(6),
      O => \current_reg[7]_0\(2)
    );
\S_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(5),
      I1 => R(5),
      O => \current_reg[7]_0\(1)
    );
\S_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(4),
      I1 => R(4),
      O => \current_reg[7]_0\(0)
    );
\S_carry__10_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(47),
      I1 => R(47),
      O => \current_reg[47]_0\(3)
    );
\S_carry__10_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(46),
      I1 => R(46),
      O => \current_reg[47]_0\(2)
    );
\S_carry__10_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(45),
      I1 => R(45),
      O => \current_reg[47]_0\(1)
    );
\S_carry__10_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(44),
      I1 => R(44),
      O => \current_reg[47]_0\(0)
    );
\S_carry__11_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(51),
      I1 => R(51),
      O => \current_reg[51]_0\(3)
    );
\S_carry__11_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(50),
      I1 => R(50),
      O => \current_reg[51]_0\(2)
    );
\S_carry__11_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(49),
      I1 => R(49),
      O => \current_reg[51]_0\(1)
    );
\S_carry__11_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(48),
      I1 => R(48),
      O => \current_reg[51]_0\(0)
    );
\S_carry__12_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(55),
      I1 => R(55),
      O => \current_reg[55]_0\(3)
    );
\S_carry__12_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(54),
      I1 => R(54),
      O => \current_reg[55]_0\(2)
    );
\S_carry__12_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(53),
      I1 => R(53),
      O => \current_reg[55]_0\(1)
    );
\S_carry__12_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(52),
      I1 => R(52),
      O => \current_reg[55]_0\(0)
    );
\S_carry__13_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(59),
      I1 => R(59),
      O => \current_reg[59]_0\(3)
    );
\S_carry__13_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(58),
      I1 => R(58),
      O => \current_reg[59]_0\(2)
    );
\S_carry__13_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(57),
      I1 => R(57),
      O => \current_reg[59]_0\(1)
    );
\S_carry__13_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(56),
      I1 => R(56),
      O => \current_reg[59]_0\(0)
    );
\S_carry__14_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => current(63),
      I1 => R(63),
      O => \current_reg[63]_0\(3)
    );
\S_carry__14_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(62),
      I1 => R(62),
      O => \current_reg[63]_0\(2)
    );
\S_carry__14_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(61),
      I1 => R(61),
      O => \current_reg[63]_0\(1)
    );
\S_carry__14_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(60),
      I1 => R(60),
      O => \current_reg[63]_0\(0)
    );
\S_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(11),
      I1 => R(11),
      O => \current_reg[11]_0\(3)
    );
\S_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(10),
      I1 => R(10),
      O => \current_reg[11]_0\(2)
    );
\S_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(9),
      I1 => R(9),
      O => \current_reg[11]_0\(1)
    );
\S_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(8),
      I1 => R(8),
      O => \current_reg[11]_0\(0)
    );
\S_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(15),
      I1 => R(15),
      O => \current_reg[15]_0\(3)
    );
\S_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(14),
      I1 => R(14),
      O => \current_reg[15]_0\(2)
    );
\S_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(13),
      I1 => R(13),
      O => \current_reg[15]_0\(1)
    );
\S_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(12),
      I1 => R(12),
      O => \current_reg[15]_0\(0)
    );
\S_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(19),
      I1 => R(19),
      O => \current_reg[19]_0\(3)
    );
\S_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(18),
      I1 => R(18),
      O => \current_reg[19]_0\(2)
    );
\S_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(17),
      I1 => R(17),
      O => \current_reg[19]_0\(1)
    );
\S_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(16),
      I1 => R(16),
      O => \current_reg[19]_0\(0)
    );
\S_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(23),
      I1 => R(23),
      O => \current_reg[23]_0\(3)
    );
\S_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(22),
      I1 => R(22),
      O => \current_reg[23]_0\(2)
    );
\S_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(21),
      I1 => R(21),
      O => \current_reg[23]_0\(1)
    );
\S_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(20),
      I1 => R(20),
      O => \current_reg[23]_0\(0)
    );
\S_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(27),
      I1 => R(27),
      O => \current_reg[27]_0\(3)
    );
\S_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(26),
      I1 => R(26),
      O => \current_reg[27]_0\(2)
    );
\S_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(25),
      I1 => R(25),
      O => \current_reg[27]_0\(1)
    );
\S_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(24),
      I1 => R(24),
      O => \current_reg[27]_0\(0)
    );
\S_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(31),
      I1 => R(31),
      O => \current_reg[31]_0\(3)
    );
\S_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(30),
      I1 => R(30),
      O => \current_reg[31]_0\(2)
    );
\S_carry__6_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(29),
      I1 => R(29),
      O => \current_reg[31]_0\(1)
    );
\S_carry__6_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(28),
      I1 => R(28),
      O => \current_reg[31]_0\(0)
    );
\S_carry__7_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(35),
      I1 => R(35),
      O => \current_reg[35]_0\(3)
    );
\S_carry__7_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(34),
      I1 => R(34),
      O => \current_reg[35]_0\(2)
    );
\S_carry__7_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(33),
      I1 => R(33),
      O => \current_reg[35]_0\(1)
    );
\S_carry__7_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(32),
      I1 => R(32),
      O => \current_reg[35]_0\(0)
    );
\S_carry__8_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(39),
      I1 => R(39),
      O => \current_reg[39]_0\(3)
    );
\S_carry__8_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(38),
      I1 => R(38),
      O => \current_reg[39]_0\(2)
    );
\S_carry__8_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(37),
      I1 => R(37),
      O => \current_reg[39]_0\(1)
    );
\S_carry__8_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(36),
      I1 => R(36),
      O => \current_reg[39]_0\(0)
    );
\S_carry__9_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(43),
      I1 => R(43),
      O => \current_reg[43]_0\(3)
    );
\S_carry__9_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(42),
      I1 => R(42),
      O => \current_reg[43]_0\(2)
    );
\S_carry__9_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(41),
      I1 => R(41),
      O => \current_reg[43]_0\(1)
    );
\S_carry__9_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(40),
      I1 => R(40),
      O => \current_reg[43]_0\(0)
    );
S_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => R(3),
      O => S(3)
    );
S_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => R(2),
      O => S(2)
    );
S_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(1),
      I1 => R(1),
      O => S(1)
    );
S_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => R(0),
      O => S(0)
    );
\current[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => load,
      I1 => A(0),
      O => p_1_in(0)
    );
\current[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(10),
      I1 => load,
      I2 => \^q\(9),
      O => p_1_in(10)
    );
\current[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(11),
      I1 => load,
      I2 => \^q\(10),
      O => p_1_in(11)
    );
\current[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(12),
      I1 => load,
      I2 => \^q\(11),
      O => p_1_in(12)
    );
\current[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(13),
      I1 => load,
      I2 => \^q\(12),
      O => p_1_in(13)
    );
\current[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(14),
      I1 => load,
      I2 => \^q\(13),
      O => p_1_in(14)
    );
\current[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(15),
      I1 => load,
      I2 => \^q\(14),
      O => p_1_in(15)
    );
\current[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(16),
      I1 => load,
      I2 => \^q\(15),
      O => p_1_in(16)
    );
\current[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(17),
      I1 => load,
      I2 => \^q\(16),
      O => p_1_in(17)
    );
\current[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(18),
      I1 => load,
      I2 => \^q\(17),
      O => p_1_in(18)
    );
\current[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(19),
      I1 => load,
      I2 => \^q\(18),
      O => p_1_in(19)
    );
\current[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(1),
      I1 => load,
      I2 => \^q\(0),
      O => p_1_in(1)
    );
\current[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(20),
      I1 => load,
      I2 => \^q\(19),
      O => p_1_in(20)
    );
\current[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(21),
      I1 => load,
      I2 => \^q\(20),
      O => p_1_in(21)
    );
\current[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(22),
      I1 => load,
      I2 => \^q\(21),
      O => p_1_in(22)
    );
\current[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(23),
      I1 => load,
      I2 => \^q\(22),
      O => p_1_in(23)
    );
\current[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(24),
      I1 => load,
      I2 => \^q\(23),
      O => p_1_in(24)
    );
\current[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(25),
      I1 => load,
      I2 => \^q\(24),
      O => p_1_in(25)
    );
\current[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(26),
      I1 => load,
      I2 => \^q\(25),
      O => p_1_in(26)
    );
\current[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(27),
      I1 => load,
      I2 => \^q\(26),
      O => p_1_in(27)
    );
\current[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(28),
      I1 => load,
      I2 => \^q\(27),
      O => p_1_in(28)
    );
\current[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(29),
      I1 => load,
      I2 => \^q\(28),
      O => p_1_in(29)
    );
\current[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(2),
      I1 => load,
      I2 => \^q\(1),
      O => p_1_in(2)
    );
\current[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(30),
      I1 => load,
      I2 => \^q\(29),
      O => p_1_in(30)
    );
\current[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(31),
      I1 => load,
      I2 => \^q\(30),
      O => p_1_in(31)
    );
\current[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(31),
      I1 => load,
      O => p_1_in(32)
    );
\current[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(32),
      I1 => load,
      O => p_1_in(33)
    );
\current[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(33),
      I1 => load,
      O => p_1_in(34)
    );
\current[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(34),
      I1 => load,
      O => p_1_in(35)
    );
\current[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(35),
      I1 => load,
      O => p_1_in(36)
    );
\current[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(36),
      I1 => load,
      O => p_1_in(37)
    );
\current[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(37),
      I1 => load,
      O => p_1_in(38)
    );
\current[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(38),
      I1 => load,
      O => p_1_in(39)
    );
\current[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(3),
      I1 => load,
      I2 => \^q\(2),
      O => p_1_in(3)
    );
\current[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(39),
      I1 => load,
      O => p_1_in(40)
    );
\current[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(40),
      I1 => load,
      O => p_1_in(41)
    );
\current[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(41),
      I1 => load,
      O => p_1_in(42)
    );
\current[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(42),
      I1 => load,
      O => p_1_in(43)
    );
\current[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(43),
      I1 => load,
      O => p_1_in(44)
    );
\current[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(44),
      I1 => load,
      O => p_1_in(45)
    );
\current[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(45),
      I1 => load,
      O => p_1_in(46)
    );
\current[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(46),
      I1 => load,
      O => p_1_in(47)
    );
\current[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(47),
      I1 => load,
      O => p_1_in(48)
    );
\current[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(48),
      I1 => load,
      O => p_1_in(49)
    );
\current[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(4),
      I1 => load,
      I2 => \^q\(3),
      O => p_1_in(4)
    );
\current[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(49),
      I1 => load,
      O => p_1_in(50)
    );
\current[51]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(50),
      I1 => load,
      O => p_1_in(51)
    );
\current[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(51),
      I1 => load,
      O => p_1_in(52)
    );
\current[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(52),
      I1 => load,
      O => p_1_in(53)
    );
\current[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(53),
      I1 => load,
      O => p_1_in(54)
    );
\current[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(54),
      I1 => load,
      O => p_1_in(55)
    );
\current[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(55),
      I1 => load,
      O => p_1_in(56)
    );
\current[57]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(56),
      I1 => load,
      O => p_1_in(57)
    );
\current[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(57),
      I1 => load,
      O => p_1_in(58)
    );
\current[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(58),
      I1 => load,
      O => p_1_in(59)
    );
\current[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(5),
      I1 => load,
      I2 => \^q\(4),
      O => p_1_in(5)
    );
\current[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(59),
      I1 => load,
      O => p_1_in(60)
    );
\current[61]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(60),
      I1 => load,
      O => p_1_in(61)
    );
\current[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(61),
      I1 => load,
      O => p_1_in(62)
    );
\current[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(62),
      I1 => load,
      O => p_1_in(63)
    );
\current[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(6),
      I1 => load,
      I2 => \^q\(5),
      O => p_1_in(6)
    );
\current[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(7),
      I1 => load,
      I2 => \^q\(6),
      O => p_1_in(7)
    );
\current[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(8),
      I1 => load,
      I2 => \^q\(7),
      O => p_1_in(8)
    );
\current[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => A(9),
      I1 => load,
      I2 => \^q\(8),
      O => p_1_in(9)
    );
\current_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(0),
      Q => \^q\(0)
    );
\current_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(10),
      Q => \^q\(10)
    );
\current_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(11),
      Q => \^q\(11)
    );
\current_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(12),
      Q => \^q\(12)
    );
\current_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(13),
      Q => \^q\(13)
    );
\current_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(14),
      Q => \^q\(14)
    );
\current_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(15),
      Q => \^q\(15)
    );
\current_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(16),
      Q => \^q\(16)
    );
\current_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(17),
      Q => \^q\(17)
    );
\current_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(18),
      Q => \^q\(18)
    );
\current_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(19),
      Q => \^q\(19)
    );
\current_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(1),
      Q => \^q\(1)
    );
\current_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(20),
      Q => \^q\(20)
    );
\current_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(21),
      Q => \^q\(21)
    );
\current_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(22),
      Q => \^q\(22)
    );
\current_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(23),
      Q => \^q\(23)
    );
\current_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(24),
      Q => \^q\(24)
    );
\current_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(25),
      Q => \^q\(25)
    );
\current_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(26),
      Q => \^q\(26)
    );
\current_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(27),
      Q => \^q\(27)
    );
\current_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(28),
      Q => \^q\(28)
    );
\current_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(29),
      Q => \^q\(29)
    );
\current_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(2),
      Q => \^q\(2)
    );
\current_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(30),
      Q => \^q\(30)
    );
\current_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(31),
      Q => \^q\(31)
    );
\current_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(32),
      Q => \^q\(32)
    );
\current_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(33),
      Q => \^q\(33)
    );
\current_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(34),
      Q => \^q\(34)
    );
\current_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(35),
      Q => \^q\(35)
    );
\current_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(36),
      Q => \^q\(36)
    );
\current_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(37),
      Q => \^q\(37)
    );
\current_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(38),
      Q => \^q\(38)
    );
\current_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(39),
      Q => \^q\(39)
    );
\current_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(3),
      Q => \^q\(3)
    );
\current_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(40),
      Q => \^q\(40)
    );
\current_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(41),
      Q => \^q\(41)
    );
\current_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(42),
      Q => \^q\(42)
    );
\current_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(43),
      Q => \^q\(43)
    );
\current_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(44),
      Q => \^q\(44)
    );
\current_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(45),
      Q => \^q\(45)
    );
\current_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(46),
      Q => \^q\(46)
    );
\current_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(47),
      Q => \^q\(47)
    );
\current_reg[48]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(48),
      Q => \^q\(48)
    );
\current_reg[49]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(49),
      Q => \^q\(49)
    );
\current_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(4),
      Q => \^q\(4)
    );
\current_reg[50]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(50),
      Q => \^q\(50)
    );
\current_reg[51]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(51),
      Q => \^q\(51)
    );
\current_reg[52]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(52),
      Q => \^q\(52)
    );
\current_reg[53]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(53),
      Q => \^q\(53)
    );
\current_reg[54]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(54),
      Q => \^q\(54)
    );
\current_reg[55]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(55),
      Q => \^q\(55)
    );
\current_reg[56]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(56),
      Q => \^q\(56)
    );
\current_reg[57]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(57),
      Q => \^q\(57)
    );
\current_reg[58]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(58),
      Q => \^q\(58)
    );
\current_reg[59]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(59),
      Q => \^q\(59)
    );
\current_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(5),
      Q => \^q\(5)
    );
\current_reg[60]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(60),
      Q => \^q\(60)
    );
\current_reg[61]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(61),
      Q => \^q\(61)
    );
\current_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(62),
      Q => \^q\(62)
    );
\current_reg[63]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(63),
      Q => current(63)
    );
\current_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(6),
      Q => \^q\(6)
    );
\current_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(7),
      Q => \^q\(7)
    );
\current_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(8),
      Q => \^q\(8)
    );
\current_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => p_1_in(9),
      Q => \^q\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_LSR_Register_AsyncReset is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    load : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_LSR_Register_AsyncReset : entity is "LSR_Register_AsyncReset";
end lab_3_Multiplyer_unit_0_1_LSR_Register_AsyncReset;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_LSR_Register_AsyncReset is
  signal \current[0]_i_1_n_0\ : STD_LOGIC;
  signal \current[10]_i_1_n_0\ : STD_LOGIC;
  signal \current[11]_i_1_n_0\ : STD_LOGIC;
  signal \current[12]_i_1_n_0\ : STD_LOGIC;
  signal \current[13]_i_1_n_0\ : STD_LOGIC;
  signal \current[14]_i_1_n_0\ : STD_LOGIC;
  signal \current[15]_i_1_n_0\ : STD_LOGIC;
  signal \current[16]_i_1_n_0\ : STD_LOGIC;
  signal \current[17]_i_1_n_0\ : STD_LOGIC;
  signal \current[18]_i_1_n_0\ : STD_LOGIC;
  signal \current[19]_i_1_n_0\ : STD_LOGIC;
  signal \current[1]_i_1_n_0\ : STD_LOGIC;
  signal \current[20]_i_1_n_0\ : STD_LOGIC;
  signal \current[21]_i_1_n_0\ : STD_LOGIC;
  signal \current[22]_i_1_n_0\ : STD_LOGIC;
  signal \current[23]_i_1_n_0\ : STD_LOGIC;
  signal \current[24]_i_1_n_0\ : STD_LOGIC;
  signal \current[25]_i_1_n_0\ : STD_LOGIC;
  signal \current[26]_i_1_n_0\ : STD_LOGIC;
  signal \current[27]_i_1_n_0\ : STD_LOGIC;
  signal \current[28]_i_1_n_0\ : STD_LOGIC;
  signal \current[29]_i_1_n_0\ : STD_LOGIC;
  signal \current[2]_i_1_n_0\ : STD_LOGIC;
  signal \current[30]_i_1_n_0\ : STD_LOGIC;
  signal \current[31]_i_2_n_0\ : STD_LOGIC;
  signal \current[3]_i_1_n_0\ : STD_LOGIC;
  signal \current[4]_i_1_n_0\ : STD_LOGIC;
  signal \current[5]_i_1_n_0\ : STD_LOGIC;
  signal \current[6]_i_1_n_0\ : STD_LOGIC;
  signal \current[7]_i_1_n_0\ : STD_LOGIC;
  signal \current[8]_i_1_n_0\ : STD_LOGIC;
  signal \current[9]_i_1_n_0\ : STD_LOGIC;
  signal \current_reg_n_0_[10]\ : STD_LOGIC;
  signal \current_reg_n_0_[11]\ : STD_LOGIC;
  signal \current_reg_n_0_[12]\ : STD_LOGIC;
  signal \current_reg_n_0_[13]\ : STD_LOGIC;
  signal \current_reg_n_0_[14]\ : STD_LOGIC;
  signal \current_reg_n_0_[15]\ : STD_LOGIC;
  signal \current_reg_n_0_[16]\ : STD_LOGIC;
  signal \current_reg_n_0_[17]\ : STD_LOGIC;
  signal \current_reg_n_0_[18]\ : STD_LOGIC;
  signal \current_reg_n_0_[19]\ : STD_LOGIC;
  signal \current_reg_n_0_[1]\ : STD_LOGIC;
  signal \current_reg_n_0_[20]\ : STD_LOGIC;
  signal \current_reg_n_0_[21]\ : STD_LOGIC;
  signal \current_reg_n_0_[22]\ : STD_LOGIC;
  signal \current_reg_n_0_[23]\ : STD_LOGIC;
  signal \current_reg_n_0_[24]\ : STD_LOGIC;
  signal \current_reg_n_0_[25]\ : STD_LOGIC;
  signal \current_reg_n_0_[26]\ : STD_LOGIC;
  signal \current_reg_n_0_[27]\ : STD_LOGIC;
  signal \current_reg_n_0_[28]\ : STD_LOGIC;
  signal \current_reg_n_0_[29]\ : STD_LOGIC;
  signal \current_reg_n_0_[2]\ : STD_LOGIC;
  signal \current_reg_n_0_[30]\ : STD_LOGIC;
  signal \current_reg_n_0_[31]\ : STD_LOGIC;
  signal \current_reg_n_0_[3]\ : STD_LOGIC;
  signal \current_reg_n_0_[4]\ : STD_LOGIC;
  signal \current_reg_n_0_[5]\ : STD_LOGIC;
  signal \current_reg_n_0_[6]\ : STD_LOGIC;
  signal \current_reg_n_0_[7]\ : STD_LOGIC;
  signal \current_reg_n_0_[8]\ : STD_LOGIC;
  signal \current_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \current[10]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \current[11]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \current[12]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \current[13]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \current[14]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \current[15]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \current[16]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \current[17]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \current[18]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \current[19]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \current[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \current[20]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \current[21]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \current[22]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \current[23]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \current[24]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \current[25]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \current[26]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \current[27]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \current[28]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \current[29]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \current[2]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \current[30]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \current[31]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \current[3]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \current[4]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \current[5]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \current[6]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \current[7]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \current[8]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \current[9]_i_1\ : label is "soft_lutpair39";
begin
\current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(0),
      I1 => load,
      I2 => \current_reg_n_0_[1]\,
      O => \current[0]_i_1_n_0\
    );
\current[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(10),
      I1 => load,
      I2 => \current_reg_n_0_[11]\,
      O => \current[10]_i_1_n_0\
    );
\current[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(11),
      I1 => load,
      I2 => \current_reg_n_0_[12]\,
      O => \current[11]_i_1_n_0\
    );
\current[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(12),
      I1 => load,
      I2 => \current_reg_n_0_[13]\,
      O => \current[12]_i_1_n_0\
    );
\current[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(13),
      I1 => load,
      I2 => \current_reg_n_0_[14]\,
      O => \current[13]_i_1_n_0\
    );
\current[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(14),
      I1 => load,
      I2 => \current_reg_n_0_[15]\,
      O => \current[14]_i_1_n_0\
    );
\current[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(15),
      I1 => load,
      I2 => \current_reg_n_0_[16]\,
      O => \current[15]_i_1_n_0\
    );
\current[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(16),
      I1 => load,
      I2 => \current_reg_n_0_[17]\,
      O => \current[16]_i_1_n_0\
    );
\current[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(17),
      I1 => load,
      I2 => \current_reg_n_0_[18]\,
      O => \current[17]_i_1_n_0\
    );
\current[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(18),
      I1 => load,
      I2 => \current_reg_n_0_[19]\,
      O => \current[18]_i_1_n_0\
    );
\current[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(19),
      I1 => load,
      I2 => \current_reg_n_0_[20]\,
      O => \current[19]_i_1_n_0\
    );
\current[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(1),
      I1 => load,
      I2 => \current_reg_n_0_[2]\,
      O => \current[1]_i_1_n_0\
    );
\current[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(20),
      I1 => load,
      I2 => \current_reg_n_0_[21]\,
      O => \current[20]_i_1_n_0\
    );
\current[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(21),
      I1 => load,
      I2 => \current_reg_n_0_[22]\,
      O => \current[21]_i_1_n_0\
    );
\current[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(22),
      I1 => load,
      I2 => \current_reg_n_0_[23]\,
      O => \current[22]_i_1_n_0\
    );
\current[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(23),
      I1 => load,
      I2 => \current_reg_n_0_[24]\,
      O => \current[23]_i_1_n_0\
    );
\current[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(24),
      I1 => load,
      I2 => \current_reg_n_0_[25]\,
      O => \current[24]_i_1_n_0\
    );
\current[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(25),
      I1 => load,
      I2 => \current_reg_n_0_[26]\,
      O => \current[25]_i_1_n_0\
    );
\current[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(26),
      I1 => load,
      I2 => \current_reg_n_0_[27]\,
      O => \current[26]_i_1_n_0\
    );
\current[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(27),
      I1 => load,
      I2 => \current_reg_n_0_[28]\,
      O => \current[27]_i_1_n_0\
    );
\current[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(28),
      I1 => load,
      I2 => \current_reg_n_0_[29]\,
      O => \current[28]_i_1_n_0\
    );
\current[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(29),
      I1 => load,
      I2 => \current_reg_n_0_[30]\,
      O => \current[29]_i_1_n_0\
    );
\current[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(2),
      I1 => load,
      I2 => \current_reg_n_0_[3]\,
      O => \current[2]_i_1_n_0\
    );
\current[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(30),
      I1 => load,
      I2 => \current_reg_n_0_[31]\,
      O => \current[30]_i_1_n_0\
    );
\current[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => load,
      I1 => B(31),
      O => \current[31]_i_2_n_0\
    );
\current[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(3),
      I1 => load,
      I2 => \current_reg_n_0_[4]\,
      O => \current[3]_i_1_n_0\
    );
\current[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(4),
      I1 => load,
      I2 => \current_reg_n_0_[5]\,
      O => \current[4]_i_1_n_0\
    );
\current[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(5),
      I1 => load,
      I2 => \current_reg_n_0_[6]\,
      O => \current[5]_i_1_n_0\
    );
\current[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(6),
      I1 => load,
      I2 => \current_reg_n_0_[7]\,
      O => \current[6]_i_1_n_0\
    );
\current[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(7),
      I1 => load,
      I2 => \current_reg_n_0_[8]\,
      O => \current[7]_i_1_n_0\
    );
\current[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(8),
      I1 => load,
      I2 => \current_reg_n_0_[9]\,
      O => \current[8]_i_1_n_0\
    );
\current[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => B(9),
      I1 => load,
      I2 => \current_reg_n_0_[10]\,
      O => \current[9]_i_1_n_0\
    );
\current_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[0]_i_1_n_0\,
      Q => Q(0)
    );
\current_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[10]_i_1_n_0\,
      Q => \current_reg_n_0_[10]\
    );
\current_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[11]_i_1_n_0\,
      Q => \current_reg_n_0_[11]\
    );
\current_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[12]_i_1_n_0\,
      Q => \current_reg_n_0_[12]\
    );
\current_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[13]_i_1_n_0\,
      Q => \current_reg_n_0_[13]\
    );
\current_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[14]_i_1_n_0\,
      Q => \current_reg_n_0_[14]\
    );
\current_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[15]_i_1_n_0\,
      Q => \current_reg_n_0_[15]\
    );
\current_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[16]_i_1_n_0\,
      Q => \current_reg_n_0_[16]\
    );
\current_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[17]_i_1_n_0\,
      Q => \current_reg_n_0_[17]\
    );
\current_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[18]_i_1_n_0\,
      Q => \current_reg_n_0_[18]\
    );
\current_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[19]_i_1_n_0\,
      Q => \current_reg_n_0_[19]\
    );
\current_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[1]_i_1_n_0\,
      Q => \current_reg_n_0_[1]\
    );
\current_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[20]_i_1_n_0\,
      Q => \current_reg_n_0_[20]\
    );
\current_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[21]_i_1_n_0\,
      Q => \current_reg_n_0_[21]\
    );
\current_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[22]_i_1_n_0\,
      Q => \current_reg_n_0_[22]\
    );
\current_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[23]_i_1_n_0\,
      Q => \current_reg_n_0_[23]\
    );
\current_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[24]_i_1_n_0\,
      Q => \current_reg_n_0_[24]\
    );
\current_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[25]_i_1_n_0\,
      Q => \current_reg_n_0_[25]\
    );
\current_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[26]_i_1_n_0\,
      Q => \current_reg_n_0_[26]\
    );
\current_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[27]_i_1_n_0\,
      Q => \current_reg_n_0_[27]\
    );
\current_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[28]_i_1_n_0\,
      Q => \current_reg_n_0_[28]\
    );
\current_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[29]_i_1_n_0\,
      Q => \current_reg_n_0_[29]\
    );
\current_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[2]_i_1_n_0\,
      Q => \current_reg_n_0_[2]\
    );
\current_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[30]_i_1_n_0\,
      Q => \current_reg_n_0_[30]\
    );
\current_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[31]_i_2_n_0\,
      Q => \current_reg_n_0_[31]\
    );
\current_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[3]_i_1_n_0\,
      Q => \current_reg_n_0_[3]\
    );
\current_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[4]_i_1_n_0\,
      Q => \current_reg_n_0_[4]\
    );
\current_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[5]_i_1_n_0\,
      Q => \current_reg_n_0_[5]\
    );
\current_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[6]_i_1_n_0\,
      Q => \current_reg_n_0_[6]\
    );
\current_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[7]_i_1_n_0\,
      Q => \current_reg_n_0_[7]\
    );
\current_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[8]_i_1_n_0\,
      Q => \current_reg_n_0_[8]\
    );
\current_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => rst,
      D => \current[9]_i_1_n_0\,
      Q => \current_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_adder is
  port (
    O3 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 62 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_reg_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_reg_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_reg_4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_reg_5 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_reg_6 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_reg_7 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_reg_8 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_reg_9 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_reg_10 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_reg_11 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_reg_12 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_reg_13 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_adder : entity is "adder";
end lab_3_Multiplyer_unit_0_1_adder;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_adder is
  signal \S_carry__0_n_0\ : STD_LOGIC;
  signal \S_carry__0_n_1\ : STD_LOGIC;
  signal \S_carry__0_n_2\ : STD_LOGIC;
  signal \S_carry__0_n_3\ : STD_LOGIC;
  signal \S_carry__10_n_0\ : STD_LOGIC;
  signal \S_carry__10_n_1\ : STD_LOGIC;
  signal \S_carry__10_n_2\ : STD_LOGIC;
  signal \S_carry__10_n_3\ : STD_LOGIC;
  signal \S_carry__11_n_0\ : STD_LOGIC;
  signal \S_carry__11_n_1\ : STD_LOGIC;
  signal \S_carry__11_n_2\ : STD_LOGIC;
  signal \S_carry__11_n_3\ : STD_LOGIC;
  signal \S_carry__12_n_0\ : STD_LOGIC;
  signal \S_carry__12_n_1\ : STD_LOGIC;
  signal \S_carry__12_n_2\ : STD_LOGIC;
  signal \S_carry__12_n_3\ : STD_LOGIC;
  signal \S_carry__13_n_0\ : STD_LOGIC;
  signal \S_carry__13_n_1\ : STD_LOGIC;
  signal \S_carry__13_n_2\ : STD_LOGIC;
  signal \S_carry__13_n_3\ : STD_LOGIC;
  signal \S_carry__14_n_1\ : STD_LOGIC;
  signal \S_carry__14_n_2\ : STD_LOGIC;
  signal \S_carry__14_n_3\ : STD_LOGIC;
  signal \S_carry__1_n_0\ : STD_LOGIC;
  signal \S_carry__1_n_1\ : STD_LOGIC;
  signal \S_carry__1_n_2\ : STD_LOGIC;
  signal \S_carry__1_n_3\ : STD_LOGIC;
  signal \S_carry__2_n_0\ : STD_LOGIC;
  signal \S_carry__2_n_1\ : STD_LOGIC;
  signal \S_carry__2_n_2\ : STD_LOGIC;
  signal \S_carry__2_n_3\ : STD_LOGIC;
  signal \S_carry__3_n_0\ : STD_LOGIC;
  signal \S_carry__3_n_1\ : STD_LOGIC;
  signal \S_carry__3_n_2\ : STD_LOGIC;
  signal \S_carry__3_n_3\ : STD_LOGIC;
  signal \S_carry__4_n_0\ : STD_LOGIC;
  signal \S_carry__4_n_1\ : STD_LOGIC;
  signal \S_carry__4_n_2\ : STD_LOGIC;
  signal \S_carry__4_n_3\ : STD_LOGIC;
  signal \S_carry__5_n_0\ : STD_LOGIC;
  signal \S_carry__5_n_1\ : STD_LOGIC;
  signal \S_carry__5_n_2\ : STD_LOGIC;
  signal \S_carry__5_n_3\ : STD_LOGIC;
  signal \S_carry__6_n_0\ : STD_LOGIC;
  signal \S_carry__6_n_1\ : STD_LOGIC;
  signal \S_carry__6_n_2\ : STD_LOGIC;
  signal \S_carry__6_n_3\ : STD_LOGIC;
  signal \S_carry__7_n_0\ : STD_LOGIC;
  signal \S_carry__7_n_1\ : STD_LOGIC;
  signal \S_carry__7_n_2\ : STD_LOGIC;
  signal \S_carry__7_n_3\ : STD_LOGIC;
  signal \S_carry__8_n_0\ : STD_LOGIC;
  signal \S_carry__8_n_1\ : STD_LOGIC;
  signal \S_carry__8_n_2\ : STD_LOGIC;
  signal \S_carry__8_n_3\ : STD_LOGIC;
  signal \S_carry__9_n_0\ : STD_LOGIC;
  signal \S_carry__9_n_1\ : STD_LOGIC;
  signal \S_carry__9_n_2\ : STD_LOGIC;
  signal \S_carry__9_n_3\ : STD_LOGIC;
  signal S_carry_n_0 : STD_LOGIC;
  signal S_carry_n_1 : STD_LOGIC;
  signal S_carry_n_2 : STD_LOGIC;
  signal S_carry_n_3 : STD_LOGIC;
  signal \NLW_S_carry__14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
S_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => S_carry_n_0,
      CO(2) => S_carry_n_1,
      CO(1) => S_carry_n_2,
      CO(0) => S_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => Q(3 downto 0),
      O(3 downto 0) => O3(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\S_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => S_carry_n_0,
      CO(3) => \S_carry__0_n_0\,
      CO(2) => \S_carry__0_n_1\,
      CO(1) => \S_carry__0_n_2\,
      CO(0) => \S_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3 downto 0) => O3(7 downto 4),
      S(3 downto 0) => Q_reg(3 downto 0)
    );
\S_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_carry__0_n_0\,
      CO(3) => \S_carry__1_n_0\,
      CO(2) => \S_carry__1_n_1\,
      CO(1) => \S_carry__1_n_2\,
      CO(0) => \S_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(11 downto 8),
      O(3 downto 0) => O3(11 downto 8),
      S(3 downto 0) => Q_reg_0(3 downto 0)
    );
\S_carry__10\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_carry__9_n_0\,
      CO(3) => \S_carry__10_n_0\,
      CO(2) => \S_carry__10_n_1\,
      CO(1) => \S_carry__10_n_2\,
      CO(0) => \S_carry__10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(47 downto 44),
      O(3 downto 0) => O3(47 downto 44),
      S(3 downto 0) => Q_reg_9(3 downto 0)
    );
\S_carry__11\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_carry__10_n_0\,
      CO(3) => \S_carry__11_n_0\,
      CO(2) => \S_carry__11_n_1\,
      CO(1) => \S_carry__11_n_2\,
      CO(0) => \S_carry__11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(51 downto 48),
      O(3 downto 0) => O3(51 downto 48),
      S(3 downto 0) => Q_reg_10(3 downto 0)
    );
\S_carry__12\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_carry__11_n_0\,
      CO(3) => \S_carry__12_n_0\,
      CO(2) => \S_carry__12_n_1\,
      CO(1) => \S_carry__12_n_2\,
      CO(0) => \S_carry__12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(55 downto 52),
      O(3 downto 0) => O3(55 downto 52),
      S(3 downto 0) => Q_reg_11(3 downto 0)
    );
\S_carry__13\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_carry__12_n_0\,
      CO(3) => \S_carry__13_n_0\,
      CO(2) => \S_carry__13_n_1\,
      CO(1) => \S_carry__13_n_2\,
      CO(0) => \S_carry__13_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(59 downto 56),
      O(3 downto 0) => O3(59 downto 56),
      S(3 downto 0) => Q_reg_12(3 downto 0)
    );
\S_carry__14\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_carry__13_n_0\,
      CO(3) => \NLW_S_carry__14_CO_UNCONNECTED\(3),
      CO(2) => \S_carry__14_n_1\,
      CO(1) => \S_carry__14_n_2\,
      CO(0) => \S_carry__14_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => Q(62 downto 60),
      O(3 downto 0) => O3(63 downto 60),
      S(3 downto 0) => Q_reg_13(3 downto 0)
    );
\S_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_carry__1_n_0\,
      CO(3) => \S_carry__2_n_0\,
      CO(2) => \S_carry__2_n_1\,
      CO(1) => \S_carry__2_n_2\,
      CO(0) => \S_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(15 downto 12),
      O(3 downto 0) => O3(15 downto 12),
      S(3 downto 0) => Q_reg_1(3 downto 0)
    );
\S_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_carry__2_n_0\,
      CO(3) => \S_carry__3_n_0\,
      CO(2) => \S_carry__3_n_1\,
      CO(1) => \S_carry__3_n_2\,
      CO(0) => \S_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(19 downto 16),
      O(3 downto 0) => O3(19 downto 16),
      S(3 downto 0) => Q_reg_2(3 downto 0)
    );
\S_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_carry__3_n_0\,
      CO(3) => \S_carry__4_n_0\,
      CO(2) => \S_carry__4_n_1\,
      CO(1) => \S_carry__4_n_2\,
      CO(0) => \S_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(23 downto 20),
      O(3 downto 0) => O3(23 downto 20),
      S(3 downto 0) => Q_reg_3(3 downto 0)
    );
\S_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_carry__4_n_0\,
      CO(3) => \S_carry__5_n_0\,
      CO(2) => \S_carry__5_n_1\,
      CO(1) => \S_carry__5_n_2\,
      CO(0) => \S_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(27 downto 24),
      O(3 downto 0) => O3(27 downto 24),
      S(3 downto 0) => Q_reg_4(3 downto 0)
    );
\S_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_carry__5_n_0\,
      CO(3) => \S_carry__6_n_0\,
      CO(2) => \S_carry__6_n_1\,
      CO(1) => \S_carry__6_n_2\,
      CO(0) => \S_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(31 downto 28),
      O(3 downto 0) => O3(31 downto 28),
      S(3 downto 0) => Q_reg_5(3 downto 0)
    );
\S_carry__7\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_carry__6_n_0\,
      CO(3) => \S_carry__7_n_0\,
      CO(2) => \S_carry__7_n_1\,
      CO(1) => \S_carry__7_n_2\,
      CO(0) => \S_carry__7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(35 downto 32),
      O(3 downto 0) => O3(35 downto 32),
      S(3 downto 0) => Q_reg_6(3 downto 0)
    );
\S_carry__8\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_carry__7_n_0\,
      CO(3) => \S_carry__8_n_0\,
      CO(2) => \S_carry__8_n_1\,
      CO(1) => \S_carry__8_n_2\,
      CO(0) => \S_carry__8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(39 downto 36),
      O(3 downto 0) => O3(39 downto 36),
      S(3 downto 0) => Q_reg_7(3 downto 0)
    );
\S_carry__9\: unisim.vcomponents.CARRY4
     port map (
      CI => \S_carry__8_n_0\,
      CO(3) => \S_carry__9_n_0\,
      CO(2) => \S_carry__9_n_1\,
      CO(1) => \S_carry__9_n_2\,
      CO(0) => \S_carry__9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(43 downto 40),
      O(3 downto 0) => O3(43 downto 40),
      S(3 downto 0) => Q_reg_8(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_0 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_0 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_0;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_0 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_1 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_1 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_1;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_1 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_10 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_10 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_10;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_10 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_11 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_11 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_11;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_11 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_12 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_12 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_12;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_12 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_13 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_13 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_13;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_13 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_14 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_14 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_14;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_14 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_15 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_15 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_15;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_15 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_16 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_16 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_16;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_16 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_17 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_17 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_17;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_17 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_18 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_18 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_18;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_18 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_19 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_19 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_19;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_19 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_2 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_2 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_2;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_2 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_20 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_20 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_20;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_20 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_21 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_21 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_21;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_21 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_22 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_22 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_22;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_22 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_23 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_23 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_23;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_23 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_24 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_24 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_24;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_24 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_25 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_25 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_25;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_25 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_26 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_26 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_26;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_26 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_27 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_27 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_27;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_27 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_28 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_28 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_28;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_28 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_29 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_29 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_29;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_29 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_3 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_3 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_3;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_3 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_30 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_30 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_30;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_30 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_31 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_31 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_31;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_31 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_32 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_32 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_32;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_32 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_33 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_33 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_33;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_33 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_34 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_34 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_34;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_34 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_35 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_35 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_35;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_35 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_36 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_36 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_36;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_36 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_37 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_37 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_37;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_37 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_38 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_38 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_38;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_38 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_39 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_39 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_39;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_39 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_4 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_4 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_4;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_4 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_40 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_40 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_40;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_40 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_41 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_41 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_41;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_41 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_42 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_42 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_42;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_42 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_43 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_43 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_43;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_43 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_44 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_44 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_44;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_44 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_45 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_45 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_45;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_45 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_46 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_46 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_46;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_46 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_47 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_47 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_47;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_47 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_48 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_48 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_48;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_48 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_49 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_49 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_49;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_49 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_5 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_5 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_5;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_5 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_50 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_50 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_50;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_50 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_51 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_51 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_51;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_51 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_52 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_52 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_52;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_52 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_53 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_53 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_53;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_53 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_54 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_54 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_54;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_54 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_55 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_55 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_55;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_55 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_56 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_56 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_56;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_56 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_57 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_57 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_57;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_57 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_58 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_58 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_58;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_58 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_59 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_59 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_59;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_59 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_6 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_6 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_6;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_6 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_60 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_60 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_60;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_60 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_61 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_61 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_61;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_61 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_62 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_62 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_62;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_62 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_7 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_7 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_7;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_7 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_8 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_8 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_8;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_8 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_flipflop_9 is
  port (
    R : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_flipflop_9 : entity is "flipflop";
end lab_3_Multiplyer_unit_0_1_flipflop_9;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_flipflop_9 is
begin
Q_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => Q(0),
      CLR => rst,
      D => O3(0),
      Q => R(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_Register_AsyncReset is
  port (
    R : out STD_LOGIC_VECTOR ( 63 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_Register_AsyncReset : entity is "Register_AsyncReset";
end lab_3_Multiplyer_unit_0_1_Register_AsyncReset;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_Register_AsyncReset is
begin
\L1[0].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop
     port map (
      O3(0) => O3(0),
      Q(0) => Q(0),
      R(0) => R(0),
      clk => clk,
      rst => rst
    );
\L1[10].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_0
     port map (
      O3(0) => O3(10),
      Q(0) => Q(0),
      R(0) => R(10),
      clk => clk,
      rst => rst
    );
\L1[11].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_1
     port map (
      O3(0) => O3(11),
      Q(0) => Q(0),
      R(0) => R(11),
      clk => clk,
      rst => rst
    );
\L1[12].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_2
     port map (
      O3(0) => O3(12),
      Q(0) => Q(0),
      R(0) => R(12),
      clk => clk,
      rst => rst
    );
\L1[13].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_3
     port map (
      O3(0) => O3(13),
      Q(0) => Q(0),
      R(0) => R(13),
      clk => clk,
      rst => rst
    );
\L1[14].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_4
     port map (
      O3(0) => O3(14),
      Q(0) => Q(0),
      R(0) => R(14),
      clk => clk,
      rst => rst
    );
\L1[15].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_5
     port map (
      O3(0) => O3(15),
      Q(0) => Q(0),
      R(0) => R(15),
      clk => clk,
      rst => rst
    );
\L1[16].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_6
     port map (
      O3(0) => O3(16),
      Q(0) => Q(0),
      R(0) => R(16),
      clk => clk,
      rst => rst
    );
\L1[17].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_7
     port map (
      O3(0) => O3(17),
      Q(0) => Q(0),
      R(0) => R(17),
      clk => clk,
      rst => rst
    );
\L1[18].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_8
     port map (
      O3(0) => O3(18),
      Q(0) => Q(0),
      R(0) => R(18),
      clk => clk,
      rst => rst
    );
\L1[19].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_9
     port map (
      O3(0) => O3(19),
      Q(0) => Q(0),
      R(0) => R(19),
      clk => clk,
      rst => rst
    );
\L1[1].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_10
     port map (
      O3(0) => O3(1),
      Q(0) => Q(0),
      R(0) => R(1),
      clk => clk,
      rst => rst
    );
\L1[20].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_11
     port map (
      O3(0) => O3(20),
      Q(0) => Q(0),
      R(0) => R(20),
      clk => clk,
      rst => rst
    );
\L1[21].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_12
     port map (
      O3(0) => O3(21),
      Q(0) => Q(0),
      R(0) => R(21),
      clk => clk,
      rst => rst
    );
\L1[22].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_13
     port map (
      O3(0) => O3(22),
      Q(0) => Q(0),
      R(0) => R(22),
      clk => clk,
      rst => rst
    );
\L1[23].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_14
     port map (
      O3(0) => O3(23),
      Q(0) => Q(0),
      R(0) => R(23),
      clk => clk,
      rst => rst
    );
\L1[24].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_15
     port map (
      O3(0) => O3(24),
      Q(0) => Q(0),
      R(0) => R(24),
      clk => clk,
      rst => rst
    );
\L1[25].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_16
     port map (
      O3(0) => O3(25),
      Q(0) => Q(0),
      R(0) => R(25),
      clk => clk,
      rst => rst
    );
\L1[26].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_17
     port map (
      O3(0) => O3(26),
      Q(0) => Q(0),
      R(0) => R(26),
      clk => clk,
      rst => rst
    );
\L1[27].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_18
     port map (
      O3(0) => O3(27),
      Q(0) => Q(0),
      R(0) => R(27),
      clk => clk,
      rst => rst
    );
\L1[28].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_19
     port map (
      O3(0) => O3(28),
      Q(0) => Q(0),
      R(0) => R(28),
      clk => clk,
      rst => rst
    );
\L1[29].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_20
     port map (
      O3(0) => O3(29),
      Q(0) => Q(0),
      R(0) => R(29),
      clk => clk,
      rst => rst
    );
\L1[2].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_21
     port map (
      O3(0) => O3(2),
      Q(0) => Q(0),
      R(0) => R(2),
      clk => clk,
      rst => rst
    );
\L1[30].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_22
     port map (
      O3(0) => O3(30),
      Q(0) => Q(0),
      R(0) => R(30),
      clk => clk,
      rst => rst
    );
\L1[31].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_23
     port map (
      O3(0) => O3(31),
      Q(0) => Q(0),
      R(0) => R(31),
      clk => clk,
      rst => rst
    );
\L1[32].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_24
     port map (
      O3(0) => O3(32),
      Q(0) => Q(0),
      R(0) => R(32),
      clk => clk,
      rst => rst
    );
\L1[33].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_25
     port map (
      O3(0) => O3(33),
      Q(0) => Q(0),
      R(0) => R(33),
      clk => clk,
      rst => rst
    );
\L1[34].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_26
     port map (
      O3(0) => O3(34),
      Q(0) => Q(0),
      R(0) => R(34),
      clk => clk,
      rst => rst
    );
\L1[35].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_27
     port map (
      O3(0) => O3(35),
      Q(0) => Q(0),
      R(0) => R(35),
      clk => clk,
      rst => rst
    );
\L1[36].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_28
     port map (
      O3(0) => O3(36),
      Q(0) => Q(0),
      R(0) => R(36),
      clk => clk,
      rst => rst
    );
\L1[37].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_29
     port map (
      O3(0) => O3(37),
      Q(0) => Q(0),
      R(0) => R(37),
      clk => clk,
      rst => rst
    );
\L1[38].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_30
     port map (
      O3(0) => O3(38),
      Q(0) => Q(0),
      R(0) => R(38),
      clk => clk,
      rst => rst
    );
\L1[39].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_31
     port map (
      O3(0) => O3(39),
      Q(0) => Q(0),
      R(0) => R(39),
      clk => clk,
      rst => rst
    );
\L1[3].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_32
     port map (
      O3(0) => O3(3),
      Q(0) => Q(0),
      R(0) => R(3),
      clk => clk,
      rst => rst
    );
\L1[40].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_33
     port map (
      O3(0) => O3(40),
      Q(0) => Q(0),
      R(0) => R(40),
      clk => clk,
      rst => rst
    );
\L1[41].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_34
     port map (
      O3(0) => O3(41),
      Q(0) => Q(0),
      R(0) => R(41),
      clk => clk,
      rst => rst
    );
\L1[42].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_35
     port map (
      O3(0) => O3(42),
      Q(0) => Q(0),
      R(0) => R(42),
      clk => clk,
      rst => rst
    );
\L1[43].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_36
     port map (
      O3(0) => O3(43),
      Q(0) => Q(0),
      R(0) => R(43),
      clk => clk,
      rst => rst
    );
\L1[44].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_37
     port map (
      O3(0) => O3(44),
      Q(0) => Q(0),
      R(0) => R(44),
      clk => clk,
      rst => rst
    );
\L1[45].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_38
     port map (
      O3(0) => O3(45),
      Q(0) => Q(0),
      R(0) => R(45),
      clk => clk,
      rst => rst
    );
\L1[46].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_39
     port map (
      O3(0) => O3(46),
      Q(0) => Q(0),
      R(0) => R(46),
      clk => clk,
      rst => rst
    );
\L1[47].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_40
     port map (
      O3(0) => O3(47),
      Q(0) => Q(0),
      R(0) => R(47),
      clk => clk,
      rst => rst
    );
\L1[48].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_41
     port map (
      O3(0) => O3(48),
      Q(0) => Q(0),
      R(0) => R(48),
      clk => clk,
      rst => rst
    );
\L1[49].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_42
     port map (
      O3(0) => O3(49),
      Q(0) => Q(0),
      R(0) => R(49),
      clk => clk,
      rst => rst
    );
\L1[4].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_43
     port map (
      O3(0) => O3(4),
      Q(0) => Q(0),
      R(0) => R(4),
      clk => clk,
      rst => rst
    );
\L1[50].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_44
     port map (
      O3(0) => O3(50),
      Q(0) => Q(0),
      R(0) => R(50),
      clk => clk,
      rst => rst
    );
\L1[51].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_45
     port map (
      O3(0) => O3(51),
      Q(0) => Q(0),
      R(0) => R(51),
      clk => clk,
      rst => rst
    );
\L1[52].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_46
     port map (
      O3(0) => O3(52),
      Q(0) => Q(0),
      R(0) => R(52),
      clk => clk,
      rst => rst
    );
\L1[53].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_47
     port map (
      O3(0) => O3(53),
      Q(0) => Q(0),
      R(0) => R(53),
      clk => clk,
      rst => rst
    );
\L1[54].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_48
     port map (
      O3(0) => O3(54),
      Q(0) => Q(0),
      R(0) => R(54),
      clk => clk,
      rst => rst
    );
\L1[55].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_49
     port map (
      O3(0) => O3(55),
      Q(0) => Q(0),
      R(0) => R(55),
      clk => clk,
      rst => rst
    );
\L1[56].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_50
     port map (
      O3(0) => O3(56),
      Q(0) => Q(0),
      R(0) => R(56),
      clk => clk,
      rst => rst
    );
\L1[57].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_51
     port map (
      O3(0) => O3(57),
      Q(0) => Q(0),
      R(0) => R(57),
      clk => clk,
      rst => rst
    );
\L1[58].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_52
     port map (
      O3(0) => O3(58),
      Q(0) => Q(0),
      R(0) => R(58),
      clk => clk,
      rst => rst
    );
\L1[59].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_53
     port map (
      O3(0) => O3(59),
      Q(0) => Q(0),
      R(0) => R(59),
      clk => clk,
      rst => rst
    );
\L1[5].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_54
     port map (
      O3(0) => O3(5),
      Q(0) => Q(0),
      R(0) => R(5),
      clk => clk,
      rst => rst
    );
\L1[60].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_55
     port map (
      O3(0) => O3(60),
      Q(0) => Q(0),
      R(0) => R(60),
      clk => clk,
      rst => rst
    );
\L1[61].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_56
     port map (
      O3(0) => O3(61),
      Q(0) => Q(0),
      R(0) => R(61),
      clk => clk,
      rst => rst
    );
\L1[62].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_57
     port map (
      O3(0) => O3(62),
      Q(0) => Q(0),
      R(0) => R(62),
      clk => clk,
      rst => rst
    );
\L1[63].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_58
     port map (
      O3(0) => O3(63),
      Q(0) => Q(0),
      R(0) => R(63),
      clk => clk,
      rst => rst
    );
\L1[6].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_59
     port map (
      O3(0) => O3(6),
      Q(0) => Q(0),
      R(0) => R(6),
      clk => clk,
      rst => rst
    );
\L1[7].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_60
     port map (
      O3(0) => O3(7),
      Q(0) => Q(0),
      R(0) => R(7),
      clk => clk,
      rst => rst
    );
\L1[8].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_61
     port map (
      O3(0) => O3(8),
      Q(0) => Q(0),
      R(0) => R(8),
      clk => clk,
      rst => rst
    );
\L1[9].FF\: entity work.lab_3_Multiplyer_unit_0_1_flipflop_62
     port map (
      O3(0) => O3(9),
      Q(0) => Q(0),
      R(0) => R(9),
      clk => clk,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1_Multiplyer_unit is
  port (
    done : out STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    A : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of lab_3_Multiplyer_unit_0_1_Multiplyer_unit : entity is "Multiplyer_unit";
end lab_3_Multiplyer_unit_0_1_Multiplyer_unit;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1_Multiplyer_unit is
  signal Accumulator_n_0 : STD_LOGIC;
  signal Accumulator_n_1 : STD_LOGIC;
  signal Accumulator_n_10 : STD_LOGIC;
  signal Accumulator_n_11 : STD_LOGIC;
  signal Accumulator_n_12 : STD_LOGIC;
  signal Accumulator_n_13 : STD_LOGIC;
  signal Accumulator_n_14 : STD_LOGIC;
  signal Accumulator_n_15 : STD_LOGIC;
  signal Accumulator_n_16 : STD_LOGIC;
  signal Accumulator_n_17 : STD_LOGIC;
  signal Accumulator_n_18 : STD_LOGIC;
  signal Accumulator_n_19 : STD_LOGIC;
  signal Accumulator_n_2 : STD_LOGIC;
  signal Accumulator_n_20 : STD_LOGIC;
  signal Accumulator_n_21 : STD_LOGIC;
  signal Accumulator_n_22 : STD_LOGIC;
  signal Accumulator_n_23 : STD_LOGIC;
  signal Accumulator_n_24 : STD_LOGIC;
  signal Accumulator_n_25 : STD_LOGIC;
  signal Accumulator_n_26 : STD_LOGIC;
  signal Accumulator_n_27 : STD_LOGIC;
  signal Accumulator_n_28 : STD_LOGIC;
  signal Accumulator_n_29 : STD_LOGIC;
  signal Accumulator_n_3 : STD_LOGIC;
  signal Accumulator_n_30 : STD_LOGIC;
  signal Accumulator_n_31 : STD_LOGIC;
  signal Accumulator_n_32 : STD_LOGIC;
  signal Accumulator_n_33 : STD_LOGIC;
  signal Accumulator_n_34 : STD_LOGIC;
  signal Accumulator_n_35 : STD_LOGIC;
  signal Accumulator_n_36 : STD_LOGIC;
  signal Accumulator_n_37 : STD_LOGIC;
  signal Accumulator_n_38 : STD_LOGIC;
  signal Accumulator_n_39 : STD_LOGIC;
  signal Accumulator_n_4 : STD_LOGIC;
  signal Accumulator_n_40 : STD_LOGIC;
  signal Accumulator_n_41 : STD_LOGIC;
  signal Accumulator_n_42 : STD_LOGIC;
  signal Accumulator_n_43 : STD_LOGIC;
  signal Accumulator_n_44 : STD_LOGIC;
  signal Accumulator_n_45 : STD_LOGIC;
  signal Accumulator_n_46 : STD_LOGIC;
  signal Accumulator_n_47 : STD_LOGIC;
  signal Accumulator_n_48 : STD_LOGIC;
  signal Accumulator_n_49 : STD_LOGIC;
  signal Accumulator_n_5 : STD_LOGIC;
  signal Accumulator_n_50 : STD_LOGIC;
  signal Accumulator_n_51 : STD_LOGIC;
  signal Accumulator_n_52 : STD_LOGIC;
  signal Accumulator_n_53 : STD_LOGIC;
  signal Accumulator_n_54 : STD_LOGIC;
  signal Accumulator_n_55 : STD_LOGIC;
  signal Accumulator_n_56 : STD_LOGIC;
  signal Accumulator_n_57 : STD_LOGIC;
  signal Accumulator_n_58 : STD_LOGIC;
  signal Accumulator_n_59 : STD_LOGIC;
  signal Accumulator_n_6 : STD_LOGIC;
  signal Accumulator_n_60 : STD_LOGIC;
  signal Accumulator_n_61 : STD_LOGIC;
  signal Accumulator_n_63 : STD_LOGIC;
  signal Accumulator_n_7 : STD_LOGIC;
  signal Accumulator_n_8 : STD_LOGIC;
  signal Accumulator_n_9 : STD_LOGIC;
  signal Controller_n_1 : STD_LOGIC;
  signal D : STD_LOGIC;
  signal Multiplicand_n_0 : STD_LOGIC;
  signal Multiplicand_n_1 : STD_LOGIC;
  signal Multiplicand_n_100 : STD_LOGIC;
  signal Multiplicand_n_101 : STD_LOGIC;
  signal Multiplicand_n_102 : STD_LOGIC;
  signal Multiplicand_n_103 : STD_LOGIC;
  signal Multiplicand_n_104 : STD_LOGIC;
  signal Multiplicand_n_105 : STD_LOGIC;
  signal Multiplicand_n_106 : STD_LOGIC;
  signal Multiplicand_n_107 : STD_LOGIC;
  signal Multiplicand_n_108 : STD_LOGIC;
  signal Multiplicand_n_109 : STD_LOGIC;
  signal Multiplicand_n_110 : STD_LOGIC;
  signal Multiplicand_n_111 : STD_LOGIC;
  signal Multiplicand_n_112 : STD_LOGIC;
  signal Multiplicand_n_113 : STD_LOGIC;
  signal Multiplicand_n_114 : STD_LOGIC;
  signal Multiplicand_n_115 : STD_LOGIC;
  signal Multiplicand_n_116 : STD_LOGIC;
  signal Multiplicand_n_117 : STD_LOGIC;
  signal Multiplicand_n_118 : STD_LOGIC;
  signal Multiplicand_n_119 : STD_LOGIC;
  signal Multiplicand_n_120 : STD_LOGIC;
  signal Multiplicand_n_121 : STD_LOGIC;
  signal Multiplicand_n_122 : STD_LOGIC;
  signal Multiplicand_n_123 : STD_LOGIC;
  signal Multiplicand_n_124 : STD_LOGIC;
  signal Multiplicand_n_125 : STD_LOGIC;
  signal Multiplicand_n_126 : STD_LOGIC;
  signal Multiplicand_n_2 : STD_LOGIC;
  signal Multiplicand_n_3 : STD_LOGIC;
  signal Multiplicand_n_67 : STD_LOGIC;
  signal Multiplicand_n_68 : STD_LOGIC;
  signal Multiplicand_n_69 : STD_LOGIC;
  signal Multiplicand_n_70 : STD_LOGIC;
  signal Multiplicand_n_71 : STD_LOGIC;
  signal Multiplicand_n_72 : STD_LOGIC;
  signal Multiplicand_n_73 : STD_LOGIC;
  signal Multiplicand_n_74 : STD_LOGIC;
  signal Multiplicand_n_75 : STD_LOGIC;
  signal Multiplicand_n_76 : STD_LOGIC;
  signal Multiplicand_n_77 : STD_LOGIC;
  signal Multiplicand_n_78 : STD_LOGIC;
  signal Multiplicand_n_79 : STD_LOGIC;
  signal Multiplicand_n_80 : STD_LOGIC;
  signal Multiplicand_n_81 : STD_LOGIC;
  signal Multiplicand_n_82 : STD_LOGIC;
  signal Multiplicand_n_83 : STD_LOGIC;
  signal Multiplicand_n_84 : STD_LOGIC;
  signal Multiplicand_n_85 : STD_LOGIC;
  signal Multiplicand_n_86 : STD_LOGIC;
  signal Multiplicand_n_87 : STD_LOGIC;
  signal Multiplicand_n_88 : STD_LOGIC;
  signal Multiplicand_n_89 : STD_LOGIC;
  signal Multiplicand_n_90 : STD_LOGIC;
  signal Multiplicand_n_91 : STD_LOGIC;
  signal Multiplicand_n_92 : STD_LOGIC;
  signal Multiplicand_n_93 : STD_LOGIC;
  signal Multiplicand_n_94 : STD_LOGIC;
  signal Multiplicand_n_95 : STD_LOGIC;
  signal Multiplicand_n_96 : STD_LOGIC;
  signal Multiplicand_n_97 : STD_LOGIC;
  signal Multiplicand_n_98 : STD_LOGIC;
  signal Multiplicand_n_99 : STD_LOGIC;
  signal Multiplier_n_0 : STD_LOGIC;
  signal \^r\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal current : STD_LOGIC_VECTOR ( 62 downto 0 );
  signal load : STD_LOGIC;
begin
  R(63 downto 0) <= \^r\(63 downto 0);
Accumulator: entity work.lab_3_Multiplyer_unit_0_1_adder
     port map (
      O3(63) => Accumulator_n_0,
      O3(62) => Accumulator_n_1,
      O3(61) => Accumulator_n_2,
      O3(60) => Accumulator_n_3,
      O3(59) => Accumulator_n_4,
      O3(58) => Accumulator_n_5,
      O3(57) => Accumulator_n_6,
      O3(56) => Accumulator_n_7,
      O3(55) => Accumulator_n_8,
      O3(54) => Accumulator_n_9,
      O3(53) => Accumulator_n_10,
      O3(52) => Accumulator_n_11,
      O3(51) => Accumulator_n_12,
      O3(50) => Accumulator_n_13,
      O3(49) => Accumulator_n_14,
      O3(48) => Accumulator_n_15,
      O3(47) => Accumulator_n_16,
      O3(46) => Accumulator_n_17,
      O3(45) => Accumulator_n_18,
      O3(44) => Accumulator_n_19,
      O3(43) => Accumulator_n_20,
      O3(42) => Accumulator_n_21,
      O3(41) => Accumulator_n_22,
      O3(40) => Accumulator_n_23,
      O3(39) => Accumulator_n_24,
      O3(38) => Accumulator_n_25,
      O3(37) => Accumulator_n_26,
      O3(36) => Accumulator_n_27,
      O3(35) => Accumulator_n_28,
      O3(34) => Accumulator_n_29,
      O3(33) => Accumulator_n_30,
      O3(32) => Accumulator_n_31,
      O3(31) => Accumulator_n_32,
      O3(30) => Accumulator_n_33,
      O3(29) => Accumulator_n_34,
      O3(28) => Accumulator_n_35,
      O3(27) => Accumulator_n_36,
      O3(26) => Accumulator_n_37,
      O3(25) => Accumulator_n_38,
      O3(24) => Accumulator_n_39,
      O3(23) => Accumulator_n_40,
      O3(22) => Accumulator_n_41,
      O3(21) => Accumulator_n_42,
      O3(20) => Accumulator_n_43,
      O3(19) => Accumulator_n_44,
      O3(18) => Accumulator_n_45,
      O3(17) => Accumulator_n_46,
      O3(16) => Accumulator_n_47,
      O3(15) => Accumulator_n_48,
      O3(14) => Accumulator_n_49,
      O3(13) => Accumulator_n_50,
      O3(12) => Accumulator_n_51,
      O3(11) => Accumulator_n_52,
      O3(10) => Accumulator_n_53,
      O3(9) => Accumulator_n_54,
      O3(8) => Accumulator_n_55,
      O3(7) => Accumulator_n_56,
      O3(6) => Accumulator_n_57,
      O3(5) => Accumulator_n_58,
      O3(4) => Accumulator_n_59,
      O3(3) => Accumulator_n_60,
      O3(2) => Accumulator_n_61,
      O3(1) => D,
      O3(0) => Accumulator_n_63,
      Q(62 downto 0) => current(62 downto 0),
      Q_reg(3) => Multiplicand_n_67,
      Q_reg(2) => Multiplicand_n_68,
      Q_reg(1) => Multiplicand_n_69,
      Q_reg(0) => Multiplicand_n_70,
      Q_reg_0(3) => Multiplicand_n_71,
      Q_reg_0(2) => Multiplicand_n_72,
      Q_reg_0(1) => Multiplicand_n_73,
      Q_reg_0(0) => Multiplicand_n_74,
      Q_reg_1(3) => Multiplicand_n_75,
      Q_reg_1(2) => Multiplicand_n_76,
      Q_reg_1(1) => Multiplicand_n_77,
      Q_reg_1(0) => Multiplicand_n_78,
      Q_reg_10(3) => Multiplicand_n_111,
      Q_reg_10(2) => Multiplicand_n_112,
      Q_reg_10(1) => Multiplicand_n_113,
      Q_reg_10(0) => Multiplicand_n_114,
      Q_reg_11(3) => Multiplicand_n_115,
      Q_reg_11(2) => Multiplicand_n_116,
      Q_reg_11(1) => Multiplicand_n_117,
      Q_reg_11(0) => Multiplicand_n_118,
      Q_reg_12(3) => Multiplicand_n_119,
      Q_reg_12(2) => Multiplicand_n_120,
      Q_reg_12(1) => Multiplicand_n_121,
      Q_reg_12(0) => Multiplicand_n_122,
      Q_reg_13(3) => Multiplicand_n_123,
      Q_reg_13(2) => Multiplicand_n_124,
      Q_reg_13(1) => Multiplicand_n_125,
      Q_reg_13(0) => Multiplicand_n_126,
      Q_reg_2(3) => Multiplicand_n_79,
      Q_reg_2(2) => Multiplicand_n_80,
      Q_reg_2(1) => Multiplicand_n_81,
      Q_reg_2(0) => Multiplicand_n_82,
      Q_reg_3(3) => Multiplicand_n_83,
      Q_reg_3(2) => Multiplicand_n_84,
      Q_reg_3(1) => Multiplicand_n_85,
      Q_reg_3(0) => Multiplicand_n_86,
      Q_reg_4(3) => Multiplicand_n_87,
      Q_reg_4(2) => Multiplicand_n_88,
      Q_reg_4(1) => Multiplicand_n_89,
      Q_reg_4(0) => Multiplicand_n_90,
      Q_reg_5(3) => Multiplicand_n_91,
      Q_reg_5(2) => Multiplicand_n_92,
      Q_reg_5(1) => Multiplicand_n_93,
      Q_reg_5(0) => Multiplicand_n_94,
      Q_reg_6(3) => Multiplicand_n_95,
      Q_reg_6(2) => Multiplicand_n_96,
      Q_reg_6(1) => Multiplicand_n_97,
      Q_reg_6(0) => Multiplicand_n_98,
      Q_reg_7(3) => Multiplicand_n_99,
      Q_reg_7(2) => Multiplicand_n_100,
      Q_reg_7(1) => Multiplicand_n_101,
      Q_reg_7(0) => Multiplicand_n_102,
      Q_reg_8(3) => Multiplicand_n_103,
      Q_reg_8(2) => Multiplicand_n_104,
      Q_reg_8(1) => Multiplicand_n_105,
      Q_reg_8(0) => Multiplicand_n_106,
      Q_reg_9(3) => Multiplicand_n_107,
      Q_reg_9(2) => Multiplicand_n_108,
      Q_reg_9(1) => Multiplicand_n_109,
      Q_reg_9(0) => Multiplicand_n_110,
      S(3) => Multiplicand_n_0,
      S(2) => Multiplicand_n_1,
      S(1) => Multiplicand_n_2,
      S(0) => Multiplicand_n_3
    );
Controller: entity work.lab_3_Multiplyer_unit_0_1_Control_Unit
     port map (
      E(0) => Controller_n_1,
      clk => clk,
      load => load,
      rst => rst
    );
Counter: entity work.lab_3_Multiplyer_unit_0_1_Generic_bit_counter
     port map (
      clk => clk,
      done => done,
      rst => rst
    );
Multiplicand: entity work.lab_3_Multiplyer_unit_0_1_LSL_Resgister_AsyncReset
     port map (
      A(31 downto 0) => A(31 downto 0),
      E(0) => Controller_n_1,
      Q(62 downto 0) => current(62 downto 0),
      R(63 downto 0) => \^r\(63 downto 0),
      S(3) => Multiplicand_n_0,
      S(2) => Multiplicand_n_1,
      S(1) => Multiplicand_n_2,
      S(0) => Multiplicand_n_3,
      clk => clk,
      \current_reg[11]_0\(3) => Multiplicand_n_71,
      \current_reg[11]_0\(2) => Multiplicand_n_72,
      \current_reg[11]_0\(1) => Multiplicand_n_73,
      \current_reg[11]_0\(0) => Multiplicand_n_74,
      \current_reg[15]_0\(3) => Multiplicand_n_75,
      \current_reg[15]_0\(2) => Multiplicand_n_76,
      \current_reg[15]_0\(1) => Multiplicand_n_77,
      \current_reg[15]_0\(0) => Multiplicand_n_78,
      \current_reg[19]_0\(3) => Multiplicand_n_79,
      \current_reg[19]_0\(2) => Multiplicand_n_80,
      \current_reg[19]_0\(1) => Multiplicand_n_81,
      \current_reg[19]_0\(0) => Multiplicand_n_82,
      \current_reg[23]_0\(3) => Multiplicand_n_83,
      \current_reg[23]_0\(2) => Multiplicand_n_84,
      \current_reg[23]_0\(1) => Multiplicand_n_85,
      \current_reg[23]_0\(0) => Multiplicand_n_86,
      \current_reg[27]_0\(3) => Multiplicand_n_87,
      \current_reg[27]_0\(2) => Multiplicand_n_88,
      \current_reg[27]_0\(1) => Multiplicand_n_89,
      \current_reg[27]_0\(0) => Multiplicand_n_90,
      \current_reg[31]_0\(3) => Multiplicand_n_91,
      \current_reg[31]_0\(2) => Multiplicand_n_92,
      \current_reg[31]_0\(1) => Multiplicand_n_93,
      \current_reg[31]_0\(0) => Multiplicand_n_94,
      \current_reg[35]_0\(3) => Multiplicand_n_95,
      \current_reg[35]_0\(2) => Multiplicand_n_96,
      \current_reg[35]_0\(1) => Multiplicand_n_97,
      \current_reg[35]_0\(0) => Multiplicand_n_98,
      \current_reg[39]_0\(3) => Multiplicand_n_99,
      \current_reg[39]_0\(2) => Multiplicand_n_100,
      \current_reg[39]_0\(1) => Multiplicand_n_101,
      \current_reg[39]_0\(0) => Multiplicand_n_102,
      \current_reg[43]_0\(3) => Multiplicand_n_103,
      \current_reg[43]_0\(2) => Multiplicand_n_104,
      \current_reg[43]_0\(1) => Multiplicand_n_105,
      \current_reg[43]_0\(0) => Multiplicand_n_106,
      \current_reg[47]_0\(3) => Multiplicand_n_107,
      \current_reg[47]_0\(2) => Multiplicand_n_108,
      \current_reg[47]_0\(1) => Multiplicand_n_109,
      \current_reg[47]_0\(0) => Multiplicand_n_110,
      \current_reg[51]_0\(3) => Multiplicand_n_111,
      \current_reg[51]_0\(2) => Multiplicand_n_112,
      \current_reg[51]_0\(1) => Multiplicand_n_113,
      \current_reg[51]_0\(0) => Multiplicand_n_114,
      \current_reg[55]_0\(3) => Multiplicand_n_115,
      \current_reg[55]_0\(2) => Multiplicand_n_116,
      \current_reg[55]_0\(1) => Multiplicand_n_117,
      \current_reg[55]_0\(0) => Multiplicand_n_118,
      \current_reg[59]_0\(3) => Multiplicand_n_119,
      \current_reg[59]_0\(2) => Multiplicand_n_120,
      \current_reg[59]_0\(1) => Multiplicand_n_121,
      \current_reg[59]_0\(0) => Multiplicand_n_122,
      \current_reg[63]_0\(3) => Multiplicand_n_123,
      \current_reg[63]_0\(2) => Multiplicand_n_124,
      \current_reg[63]_0\(1) => Multiplicand_n_125,
      \current_reg[63]_0\(0) => Multiplicand_n_126,
      \current_reg[7]_0\(3) => Multiplicand_n_67,
      \current_reg[7]_0\(2) => Multiplicand_n_68,
      \current_reg[7]_0\(1) => Multiplicand_n_69,
      \current_reg[7]_0\(0) => Multiplicand_n_70,
      load => load,
      rst => rst
    );
Multiplier: entity work.lab_3_Multiplyer_unit_0_1_LSR_Register_AsyncReset
     port map (
      B(31 downto 0) => B(31 downto 0),
      E(0) => Controller_n_1,
      Q(0) => Multiplier_n_0,
      clk => clk,
      load => load,
      rst => rst
    );
Product: entity work.lab_3_Multiplyer_unit_0_1_Register_AsyncReset
     port map (
      O3(63) => Accumulator_n_0,
      O3(62) => Accumulator_n_1,
      O3(61) => Accumulator_n_2,
      O3(60) => Accumulator_n_3,
      O3(59) => Accumulator_n_4,
      O3(58) => Accumulator_n_5,
      O3(57) => Accumulator_n_6,
      O3(56) => Accumulator_n_7,
      O3(55) => Accumulator_n_8,
      O3(54) => Accumulator_n_9,
      O3(53) => Accumulator_n_10,
      O3(52) => Accumulator_n_11,
      O3(51) => Accumulator_n_12,
      O3(50) => Accumulator_n_13,
      O3(49) => Accumulator_n_14,
      O3(48) => Accumulator_n_15,
      O3(47) => Accumulator_n_16,
      O3(46) => Accumulator_n_17,
      O3(45) => Accumulator_n_18,
      O3(44) => Accumulator_n_19,
      O3(43) => Accumulator_n_20,
      O3(42) => Accumulator_n_21,
      O3(41) => Accumulator_n_22,
      O3(40) => Accumulator_n_23,
      O3(39) => Accumulator_n_24,
      O3(38) => Accumulator_n_25,
      O3(37) => Accumulator_n_26,
      O3(36) => Accumulator_n_27,
      O3(35) => Accumulator_n_28,
      O3(34) => Accumulator_n_29,
      O3(33) => Accumulator_n_30,
      O3(32) => Accumulator_n_31,
      O3(31) => Accumulator_n_32,
      O3(30) => Accumulator_n_33,
      O3(29) => Accumulator_n_34,
      O3(28) => Accumulator_n_35,
      O3(27) => Accumulator_n_36,
      O3(26) => Accumulator_n_37,
      O3(25) => Accumulator_n_38,
      O3(24) => Accumulator_n_39,
      O3(23) => Accumulator_n_40,
      O3(22) => Accumulator_n_41,
      O3(21) => Accumulator_n_42,
      O3(20) => Accumulator_n_43,
      O3(19) => Accumulator_n_44,
      O3(18) => Accumulator_n_45,
      O3(17) => Accumulator_n_46,
      O3(16) => Accumulator_n_47,
      O3(15) => Accumulator_n_48,
      O3(14) => Accumulator_n_49,
      O3(13) => Accumulator_n_50,
      O3(12) => Accumulator_n_51,
      O3(11) => Accumulator_n_52,
      O3(10) => Accumulator_n_53,
      O3(9) => Accumulator_n_54,
      O3(8) => Accumulator_n_55,
      O3(7) => Accumulator_n_56,
      O3(6) => Accumulator_n_57,
      O3(5) => Accumulator_n_58,
      O3(4) => Accumulator_n_59,
      O3(3) => Accumulator_n_60,
      O3(2) => Accumulator_n_61,
      O3(1) => D,
      O3(0) => Accumulator_n_63,
      Q(0) => Multiplier_n_0,
      R(63 downto 0) => \^r\(63 downto 0),
      clk => clk,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lab_3_Multiplyer_unit_0_1 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    done : out STD_LOGIC;
    R : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of lab_3_Multiplyer_unit_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of lab_3_Multiplyer_unit_0_1 : entity is "lab_3_Multiplyer_unit_0_1,Multiplyer_unit,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of lab_3_Multiplyer_unit_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of lab_3_Multiplyer_unit_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of lab_3_Multiplyer_unit_0_1 : entity is "Multiplyer_unit,Vivado 2018.3";
end lab_3_Multiplyer_unit_0_1;

architecture STRUCTURE of lab_3_Multiplyer_unit_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN lab_3_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.lab_3_Multiplyer_unit_0_1_Multiplyer_unit
     port map (
      A(31 downto 0) => A(31 downto 0),
      B(31 downto 0) => B(31 downto 0),
      R(63 downto 0) => R(63 downto 0),
      clk => clk,
      done => done,
      rst => rst
    );
end STRUCTURE;
