-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Sep 19 15:55:48 2023
-- Host        : The_Ghost_TWO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/tyqca/OneDrive/School/Labs/1195_Labs/Lab_1_adderSubtractor/Lab_1_adderSubtractor.srcs/sources_1/bd/Lab_1_adderSub/ip/Lab_1_adderSub_Full_Adder_Subtracto_0_0/Lab_1_adderSub_Full_Adder_Subtracto_0_0_sim_netlist.vhdl
-- Design      : Lab_1_adderSub_Full_Adder_Subtracto_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lab_1_adderSub_Full_Adder_Subtracto_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    k : in STD_LOGIC;
    s : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Cout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Lab_1_adderSub_Full_Adder_Subtracto_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Lab_1_adderSub_Full_Adder_Subtracto_0_0 : entity is "Lab_1_adderSub_Full_Adder_Subtracto_0_0,Full_Adder_Subtractor_32bit,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Lab_1_adderSub_Full_Adder_Subtracto_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Lab_1_adderSub_Full_Adder_Subtracto_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Lab_1_adderSub_Full_Adder_Subtracto_0_0 : entity is "Full_Adder_Subtractor_32bit,Vivado 2018.3";
end Lab_1_adderSub_Full_Adder_Subtracto_0_0;

architecture STRUCTURE of Lab_1_adderSub_Full_Adder_Subtracto_0_0 is
  signal \Cout00_out__13\ : STD_LOGIC;
  signal \Cout00_out__18\ : STD_LOGIC;
  signal \Cout00_out__23\ : STD_LOGIC;
  signal \Cout00_out__28\ : STD_LOGIC;
  signal \Cout00_out__3\ : STD_LOGIC;
  signal \Cout00_out__8\ : STD_LOGIC;
  signal \Cout0__13\ : STD_LOGIC;
  signal \Cout0__18\ : STD_LOGIC;
  signal \Cout0__23\ : STD_LOGIC;
  signal \Cout0__28\ : STD_LOGIC;
  signal \Cout0__3\ : STD_LOGIC;
  signal \Cout0__8\ : STD_LOGIC;
  signal \U0/B11_out\ : STD_LOGIC;
  signal \U0/B13_out\ : STD_LOGIC;
  signal \U0/B15_out\ : STD_LOGIC;
  signal \U0/B19_out\ : STD_LOGIC;
  signal \U0/B21_out\ : STD_LOGIC;
  signal \U0/B23_out\ : STD_LOGIC;
  signal \U0/B25_out\ : STD_LOGIC;
  signal \U0/B29_out\ : STD_LOGIC;
  signal \U0/B31_out\ : STD_LOGIC;
  signal \U0/B33_out\ : STD_LOGIC;
  signal \U0/B35_out\ : STD_LOGIC;
  signal \U0/B39_out\ : STD_LOGIC;
  signal \U0/B3_out\ : STD_LOGIC;
  signal \U0/B41_out\ : STD_LOGIC;
  signal \U0/B43_out\ : STD_LOGIC;
  signal \U0/B45_out\ : STD_LOGIC;
  signal \U0/B49_out\ : STD_LOGIC;
  signal \U0/B51_out\ : STD_LOGIC;
  signal \U0/B53_out\ : STD_LOGIC;
  signal \U0/B55_out\ : STD_LOGIC;
  signal \U0/B57_out\ : STD_LOGIC;
  signal \U0/B59_out\ : STD_LOGIC;
  signal \U0/B5_out\ : STD_LOGIC;
  signal \U0/B61_out\ : STD_LOGIC;
  signal \U0/B9_out\ : STD_LOGIC;
  signal \U0/F_rest[14].F/w__0\ : STD_LOGIC;
  signal \U0/F_rest[19].F/w__0\ : STD_LOGIC;
  signal \U0/F_rest[24].F/w__0\ : STD_LOGIC;
  signal \U0/F_rest[29].F/w__0\ : STD_LOGIC;
  signal \U0/F_rest[30].F/w__0\ : STD_LOGIC;
  signal \U0/F_rest[31].F/w__0\ : STD_LOGIC;
  signal \U0/F_rest[4].F/w__0\ : STD_LOGIC;
  signal \U0/F_rest[9].F/w__0\ : STD_LOGIC;
  signal \U0/carry_1\ : STD_LOGIC;
  signal \U0/carry_10\ : STD_LOGIC;
  signal \U0/carry_11\ : STD_LOGIC;
  signal \U0/carry_12\ : STD_LOGIC;
  signal \U0/carry_13\ : STD_LOGIC;
  signal \U0/carry_14\ : STD_LOGIC;
  signal \U0/carry_15\ : STD_LOGIC;
  signal \U0/carry_16\ : STD_LOGIC;
  signal \U0/carry_17\ : STD_LOGIC;
  signal \U0/carry_18\ : STD_LOGIC;
  signal \U0/carry_19\ : STD_LOGIC;
  signal \U0/carry_20\ : STD_LOGIC;
  signal \U0/carry_21\ : STD_LOGIC;
  signal \U0/carry_22\ : STD_LOGIC;
  signal \U0/carry_23\ : STD_LOGIC;
  signal \U0/carry_24\ : STD_LOGIC;
  signal \U0/carry_25\ : STD_LOGIC;
  signal \U0/carry_26\ : STD_LOGIC;
  signal \U0/carry_27\ : STD_LOGIC;
  signal \U0/carry_28\ : STD_LOGIC;
  signal \U0/carry_3\ : STD_LOGIC;
  signal \U0/carry_5\ : STD_LOGIC;
  signal \U0/carry_6\ : STD_LOGIC;
  signal \U0/carry_7\ : STD_LOGIC;
  signal \U0/carry_8\ : STD_LOGIC;
  signal \U0/carry_9\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cout_INST_0_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of Cout_INST_0_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of Cout_INST_0_i_4 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of Cout_INST_0_i_5 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s[12]_INST_0_i_10\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s[12]_INST_0_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s[12]_INST_0_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s[12]_INST_0_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s[12]_INST_0_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \s[12]_INST_0_i_9\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s[17]_INST_0_i_10\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s[17]_INST_0_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s[17]_INST_0_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s[17]_INST_0_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s[17]_INST_0_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s[17]_INST_0_i_9\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s[22]_INST_0_i_10\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s[22]_INST_0_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s[22]_INST_0_i_6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s[22]_INST_0_i_7\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s[22]_INST_0_i_8\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s[22]_INST_0_i_9\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s[27]_INST_0_i_10\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s[27]_INST_0_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s[27]_INST_0_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s[27]_INST_0_i_7\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s[27]_INST_0_i_8\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s[27]_INST_0_i_9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s[30]_INST_0_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s[30]_INST_0_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s[31]_INST_0_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s[31]_INST_0_i_10\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s[31]_INST_0_i_11\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s[31]_INST_0_i_12\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s[31]_INST_0_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s[31]_INST_0_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s[31]_INST_0_i_8\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s[31]_INST_0_i_9\ : label is "soft_lutpair17";
begin
Cout_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \Cout00_out__28\,
      I1 => \Cout0__28\,
      I2 => \U0/B59_out\,
      I3 => A(30),
      I4 => \U0/B61_out\,
      I5 => A(31),
      O => Cout
    );
Cout_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(29),
      I1 => B(29),
      I2 => k,
      O => \Cout00_out__28\
    );
Cout_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \U0/F_rest[29].F/w__0\,
      I1 => A(28),
      I2 => \U0/B55_out\,
      I3 => A(27),
      I4 => \U0/B53_out\,
      I5 => \U0/carry_26\,
      O => \Cout0__28\
    );
Cout_INST_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(31),
      O => \U0/B61_out\
    );
Cout_INST_0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(29),
      I1 => k,
      I2 => A(29),
      O => \U0/F_rest[29].F/w__0\
    );
Cout_INST_0_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(27),
      O => \U0/B53_out\
    );
\s[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      O => s(0)
    );
\s[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/carry_9\,
      I1 => A(10),
      I2 => k,
      I3 => B(10),
      O => s(10)
    );
\s[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      I2 => \U0/carry_9\,
      I3 => A(11),
      I4 => k,
      I5 => B(11),
      O => s(11)
    );
\s[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_7\,
      I1 => B(8),
      I2 => k,
      I3 => A(8),
      I4 => B(9),
      I5 => A(9),
      O => \U0/carry_9\
    );
\s[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      I2 => \U0/carry_10\,
      I3 => A(12),
      I4 => k,
      I5 => B(12),
      O => s(12)
    );
\s[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_8\,
      I1 => B(9),
      I2 => k,
      I3 => A(9),
      I4 => B(10),
      I5 => A(10),
      O => \U0/carry_10\
    );
\s[12]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(2),
      O => \U0/B3_out\
    );
\s[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_6\,
      I1 => B(7),
      I2 => k,
      I3 => A(7),
      I4 => B(8),
      I5 => A(8),
      O => \U0/carry_8\
    );
\s[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \Cout00_out__3\,
      I1 => \Cout0__3\,
      I2 => \U0/B9_out\,
      I3 => A(5),
      I4 => \U0/B11_out\,
      I5 => A(6),
      O => \U0/carry_6\
    );
\s[12]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      I2 => k,
      O => \Cout00_out__3\
    );
\s[12]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \U0/F_rest[4].F/w__0\,
      I1 => A(3),
      I2 => \U0/B5_out\,
      I3 => A(2),
      I4 => \U0/B3_out\,
      I5 => \U0/carry_1\,
      O => \Cout0__3\
    );
\s[12]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(5),
      O => \U0/B9_out\
    );
\s[12]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(6),
      O => \U0/B11_out\
    );
\s[12]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(4),
      I1 => k,
      I2 => A(4),
      O => \U0/F_rest[4].F/w__0\
    );
\s[12]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(3),
      O => \U0/B5_out\
    );
\s[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/carry_12\,
      I1 => A(13),
      I2 => k,
      I3 => B(13),
      O => s(13)
    );
\s[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(13),
      I1 => B(13),
      I2 => \U0/carry_12\,
      I3 => A(14),
      I4 => k,
      I5 => B(14),
      O => s(14)
    );
\s[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_10\,
      I1 => B(11),
      I2 => k,
      I3 => A(11),
      I4 => B(12),
      I5 => A(12),
      O => \U0/carry_12\
    );
\s[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/carry_14\,
      I1 => A(15),
      I2 => k,
      I3 => B(15),
      O => s(15)
    );
\s[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(15),
      I1 => B(15),
      I2 => \U0/carry_14\,
      I3 => A(16),
      I4 => k,
      I5 => B(16),
      O => s(16)
    );
\s[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_12\,
      I1 => B(13),
      I2 => k,
      I3 => A(13),
      I4 => B(14),
      I5 => A(14),
      O => \U0/carry_14\
    );
\s[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(16),
      I1 => B(16),
      I2 => \U0/carry_15\,
      I3 => A(17),
      I4 => k,
      I5 => B(17),
      O => s(17)
    );
\s[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_13\,
      I1 => B(14),
      I2 => k,
      I3 => A(14),
      I4 => B(15),
      I5 => A(15),
      O => \U0/carry_15\
    );
\s[17]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(7),
      O => \U0/B13_out\
    );
\s[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_11\,
      I1 => B(12),
      I2 => k,
      I3 => A(12),
      I4 => B(13),
      I5 => A(13),
      O => \U0/carry_13\
    );
\s[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \Cout00_out__8\,
      I1 => \Cout0__8\,
      I2 => \U0/B19_out\,
      I3 => A(10),
      I4 => \U0/B21_out\,
      I5 => A(11),
      O => \U0/carry_11\
    );
\s[17]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      I2 => k,
      O => \Cout00_out__8\
    );
\s[17]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \U0/F_rest[9].F/w__0\,
      I1 => A(8),
      I2 => \U0/B15_out\,
      I3 => A(7),
      I4 => \U0/B13_out\,
      I5 => \U0/carry_6\,
      O => \Cout0__8\
    );
\s[17]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(10),
      O => \U0/B19_out\
    );
\s[17]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(11),
      O => \U0/B21_out\
    );
\s[17]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(9),
      I1 => k,
      I2 => A(9),
      O => \U0/F_rest[9].F/w__0\
    );
\s[17]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(8),
      O => \U0/B15_out\
    );
\s[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/carry_17\,
      I1 => A(18),
      I2 => k,
      I3 => B(18),
      O => s(18)
    );
\s[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(18),
      I1 => B(18),
      I2 => \U0/carry_17\,
      I3 => A(19),
      I4 => k,
      I5 => B(19),
      O => s(19)
    );
\s[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_15\,
      I1 => B(16),
      I2 => k,
      I3 => A(16),
      I4 => B(17),
      I5 => A(17),
      O => \U0/carry_17\
    );
\s[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B87B478"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      I2 => A(1),
      I3 => k,
      I4 => B(1),
      O => s(1)
    );
\s[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/carry_19\,
      I1 => A(20),
      I2 => k,
      I3 => B(20),
      O => s(20)
    );
\s[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(20),
      I1 => B(20),
      I2 => \U0/carry_19\,
      I3 => A(21),
      I4 => k,
      I5 => B(21),
      O => s(21)
    );
\s[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_17\,
      I1 => B(18),
      I2 => k,
      I3 => A(18),
      I4 => B(19),
      I5 => A(19),
      O => \U0/carry_19\
    );
\s[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(21),
      I1 => B(21),
      I2 => \U0/carry_20\,
      I3 => A(22),
      I4 => k,
      I5 => B(22),
      O => s(22)
    );
\s[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_18\,
      I1 => B(19),
      I2 => k,
      I3 => A(19),
      I4 => B(20),
      I5 => A(20),
      O => \U0/carry_20\
    );
\s[22]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(12),
      O => \U0/B23_out\
    );
\s[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_16\,
      I1 => B(17),
      I2 => k,
      I3 => A(17),
      I4 => B(18),
      I5 => A(18),
      O => \U0/carry_18\
    );
\s[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \Cout00_out__13\,
      I1 => \Cout0__13\,
      I2 => \U0/B29_out\,
      I3 => A(15),
      I4 => \U0/B31_out\,
      I5 => A(16),
      O => \U0/carry_16\
    );
\s[22]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      I2 => k,
      O => \Cout00_out__13\
    );
\s[22]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \U0/F_rest[14].F/w__0\,
      I1 => A(13),
      I2 => \U0/B25_out\,
      I3 => A(12),
      I4 => \U0/B23_out\,
      I5 => \U0/carry_11\,
      O => \Cout0__13\
    );
\s[22]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(15),
      O => \U0/B29_out\
    );
\s[22]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(16),
      O => \U0/B31_out\
    );
\s[22]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(14),
      I1 => k,
      I2 => A(14),
      O => \U0/F_rest[14].F/w__0\
    );
\s[22]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(13),
      O => \U0/B25_out\
    );
\s[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/carry_22\,
      I1 => A(23),
      I2 => k,
      I3 => B(23),
      O => s(23)
    );
\s[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(23),
      I1 => B(23),
      I2 => \U0/carry_22\,
      I3 => A(24),
      I4 => k,
      I5 => B(24),
      O => s(24)
    );
\s[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_20\,
      I1 => B(21),
      I2 => k,
      I3 => A(21),
      I4 => B(22),
      I5 => A(22),
      O => \U0/carry_22\
    );
\s[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/carry_24\,
      I1 => A(25),
      I2 => k,
      I3 => B(25),
      O => s(25)
    );
\s[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(25),
      I1 => B(25),
      I2 => \U0/carry_24\,
      I3 => A(26),
      I4 => k,
      I5 => B(26),
      O => s(26)
    );
\s[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_22\,
      I1 => B(23),
      I2 => k,
      I3 => A(23),
      I4 => B(24),
      I5 => A(24),
      O => \U0/carry_24\
    );
\s[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(26),
      I1 => B(26),
      I2 => \U0/carry_25\,
      I3 => A(27),
      I4 => k,
      I5 => B(27),
      O => s(27)
    );
\s[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_23\,
      I1 => B(24),
      I2 => k,
      I3 => A(24),
      I4 => B(25),
      I5 => A(25),
      O => \U0/carry_25\
    );
\s[27]_INST_0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(17),
      O => \U0/B33_out\
    );
\s[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_21\,
      I1 => B(22),
      I2 => k,
      I3 => A(22),
      I4 => B(23),
      I5 => A(23),
      O => \U0/carry_23\
    );
\s[27]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \Cout00_out__18\,
      I1 => \Cout0__18\,
      I2 => \U0/B39_out\,
      I3 => A(20),
      I4 => \U0/B41_out\,
      I5 => A(21),
      O => \U0/carry_21\
    );
\s[27]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(19),
      I1 => B(19),
      I2 => k,
      O => \Cout00_out__18\
    );
\s[27]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \U0/F_rest[19].F/w__0\,
      I1 => A(18),
      I2 => \U0/B35_out\,
      I3 => A(17),
      I4 => \U0/B33_out\,
      I5 => \U0/carry_16\,
      O => \Cout0__18\
    );
\s[27]_INST_0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(20),
      O => \U0/B39_out\
    );
\s[27]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(21),
      O => \U0/B41_out\
    );
\s[27]_INST_0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(19),
      I1 => k,
      I2 => A(19),
      O => \U0/F_rest[19].F/w__0\
    );
\s[27]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(18),
      O => \U0/B35_out\
    );
\s[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/carry_27\,
      I1 => A(28),
      I2 => k,
      I3 => B(28),
      O => s(28)
    );
\s[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(28),
      I1 => B(28),
      I2 => \U0/carry_27\,
      I3 => A(29),
      I4 => k,
      I5 => B(29),
      O => s(29)
    );
\s[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/carry_1\,
      I1 => A(2),
      I2 => k,
      I3 => B(2),
      O => s(2)
    );
\s[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11171777EEE8E888"
    )
        port map (
      I0 => A(29),
      I1 => \U0/B57_out\,
      I2 => A(28),
      I3 => \U0/B55_out\,
      I4 => \U0/carry_27\,
      I5 => \U0/F_rest[30].F/w__0\,
      O => s(30)
    );
\s[30]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(28),
      O => \U0/B55_out\
    );
\s[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_25\,
      I1 => B(26),
      I2 => k,
      I3 => A(26),
      I4 => B(27),
      I5 => A(27),
      O => \U0/carry_27\
    );
\s[30]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(30),
      I1 => k,
      I2 => A(30),
      O => \U0/F_rest[30].F/w__0\
    );
\s[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11171777EEE8E888"
    )
        port map (
      I0 => A(30),
      I1 => \U0/B59_out\,
      I2 => A(29),
      I3 => \U0/B57_out\,
      I4 => \U0/carry_28\,
      I5 => \U0/F_rest[31].F/w__0\,
      O => s(31)
    );
\s[31]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(30),
      O => \U0/B59_out\
    );
\s[31]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(24),
      I1 => k,
      I2 => A(24),
      O => \U0/F_rest[24].F/w__0\
    );
\s[31]_INST_0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(23),
      O => \U0/B45_out\
    );
\s[31]_INST_0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(22),
      O => \U0/B43_out\
    );
\s[31]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(29),
      O => \U0/B57_out\
    );
\s[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_26\,
      I1 => B(27),
      I2 => k,
      I3 => A(27),
      I4 => B(28),
      I5 => A(28),
      O => \U0/carry_28\
    );
\s[31]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => B(31),
      I1 => k,
      I2 => A(31),
      O => \U0/F_rest[31].F/w__0\
    );
\s[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEE0FEE00000"
    )
        port map (
      I0 => \Cout00_out__23\,
      I1 => \Cout0__23\,
      I2 => \U0/B49_out\,
      I3 => A(25),
      I4 => \U0/B51_out\,
      I5 => A(26),
      O => \U0/carry_26\
    );
\s[31]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => A(24),
      I1 => B(24),
      I2 => k,
      O => \Cout00_out__23\
    );
\s[31]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A880A8808080"
    )
        port map (
      I0 => \U0/F_rest[24].F/w__0\,
      I1 => A(23),
      I2 => \U0/B45_out\,
      I3 => A(22),
      I4 => \U0/B43_out\,
      I5 => \U0/carry_21\,
      O => \Cout0__23\
    );
\s[31]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(25),
      O => \U0/B49_out\
    );
\s[31]_INST_0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => k,
      I1 => B(26),
      O => \U0/B51_out\
    );
\s[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      I2 => \U0/carry_1\,
      I3 => A(3),
      I4 => k,
      I5 => B(3),
      O => s(3)
    );
\s[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7EA40A2"
    )
        port map (
      I0 => k,
      I1 => B(0),
      I2 => A(0),
      I3 => B(1),
      I4 => A(1),
      O => \U0/carry_1\
    );
\s[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/carry_3\,
      I1 => A(4),
      I2 => k,
      I3 => B(4),
      O => s(4)
    );
\s[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      I2 => \U0/carry_3\,
      I3 => A(5),
      I4 => k,
      I5 => B(5),
      O => s(5)
    );
\s[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_1\,
      I1 => B(2),
      I2 => k,
      I3 => A(2),
      I4 => B(3),
      I5 => A(3),
      O => \U0/carry_3\
    );
\s[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/carry_5\,
      I1 => A(6),
      I2 => k,
      I3 => B(6),
      O => s(6)
    );
\s[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(6),
      I1 => B(6),
      I2 => \U0/carry_5\,
      I3 => A(7),
      I4 => k,
      I5 => B(7),
      O => s(7)
    );
\s[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_3\,
      I1 => B(4),
      I2 => k,
      I3 => A(4),
      I4 => B(5),
      I5 => A(5),
      O => \U0/carry_5\
    );
\s[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \U0/carry_7\,
      I1 => A(8),
      I2 => k,
      I3 => B(8),
      O => s(8)
    );
\s[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4DB2E817B24D17E8"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      I2 => \U0/carry_7\,
      I3 => A(9),
      I4 => k,
      I5 => B(9),
      O => s(9)
    );
\s[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF2FFEF80E08B020"
    )
        port map (
      I0 => \U0/carry_5\,
      I1 => B(6),
      I2 => k,
      I3 => A(6),
      I4 => B(7),
      I5 => A(7),
      O => \U0/carry_7\
    );
end STRUCTURE;
