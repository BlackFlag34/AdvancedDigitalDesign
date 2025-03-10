-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Sep 28 13:19:00 2023
-- Host        : The_Ghost_TWO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/tyqca/OneDrive/School/Labs/1195_Labs/Lab_2/Lab_2.srcs/sources_1/bd/Lab_2/ip/Lab_2_axi_regmap_0_0/Lab_2_axi_regmap_0_0_sim_netlist.vhdl
-- Design      : Lab_2_axi_regmap_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lab_2_axi_regmap_0_0_mm_regmap is
  port (
    REG4_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    REG5_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \axi_araddr_reg[10]\ : out STD_LOGIC;
    REG0_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \slv_write_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    REG5_WR : out STD_LOGIC;
    REG4_WR : out STD_LOGIC;
    REG1_WR : out STD_LOGIC;
    REG0_WR : out STD_LOGIC;
    \slv_read_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    REG1_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    REG3_OUT : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 13 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \slv_read_reg[0]_0\ : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \slv_read_reg[0]_1\ : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    \slv_out[0][31]_i_3_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Lab_2_axi_regmap_0_0_mm_regmap : entity is "mm_regmap";
end Lab_2_axi_regmap_0_0_mm_regmap;

architecture STRUCTURE of Lab_2_axi_regmap_0_0_mm_regmap is
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^reg4_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^reg5_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^axi_araddr_reg[10]\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal \slv_out[0][31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_out[0][31]_i_4_n_0\ : STD_LOGIC;
  signal \slv_out[0][31]_i_5_n_0\ : STD_LOGIC;
  signal \slv_out[1][31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_out[2][4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_out[3][3]_i_1_n_0\ : STD_LOGIC;
  signal \slv_out[4][0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_out[5][0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_read[0]_i_2_n_0\ : STD_LOGIC;
  signal \slv_read[0]_i_3_n_0\ : STD_LOGIC;
  signal \slv_read[0]_i_4_n_0\ : STD_LOGIC;
  signal \slv_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \slv_write[4]_i_1_n_0\ : STD_LOGIC;
  signal \slv_write[5]_i_1_n_0\ : STD_LOGIC;
  signal write : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \slv_read[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_read[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_write[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_write[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_write[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \slv_write[5]_i_1\ : label is "soft_lutpair1";
begin
  D(3 downto 0) <= \^d\(3 downto 0);
  REG4_OUT(0) <= \^reg4_out\(0);
  REG5_OUT(0) <= \^reg5_out\(0);
  SR(0) <= \^sr\(0);
  \axi_araddr_reg[10]\ <= \^axi_araddr_reg[10]\;
\S_AXI_RDATA[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \slv_read[0]_i_4_n_0\,
      I1 => \slv_read_reg[0]_0\(8),
      I2 => \slv_read_reg[0]_0\(7),
      I3 => \slv_read_reg[0]_0\(6),
      I4 => \slv_read_reg[0]_0\(5),
      I5 => \slv_read[0]_i_2_n_0\,
      O => \^axi_araddr_reg[10]\
    );
\slv_out[0][31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \^sr\(0)
    );
\slv_out[0][31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      O => write
    );
\slv_out[0][31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \slv_out[0][31]_i_4_n_0\,
      I1 => Q(8),
      I2 => Q(7),
      I3 => Q(6),
      I4 => Q(5),
      I5 => \slv_out[0][31]_i_5_n_0\,
      O => \slv_out[0][31]_i_3_n_0\
    );
\slv_out[0][31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => Q(12),
      I1 => Q(11),
      I2 => Q(10),
      I3 => Q(9),
      O => \slv_out[0][31]_i_4_n_0\
    );
\slv_out[0][31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => Q(13),
      I1 => S_AXI_WVALID,
      I2 => \slv_out[0][31]_i_3_0\,
      I3 => Q(4),
      I4 => Q(3),
      O => \slv_out[0][31]_i_5_n_0\
    );
\slv_out[1][31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      O => \slv_out[1][31]_i_1_n_0\
    );
\slv_out[2][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \slv_out[0][31]_i_3_n_0\,
      O => \slv_out[2][4]_i_1_n_0\
    );
\slv_out[3][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \slv_out[0][31]_i_3_n_0\,
      O => \slv_out[3][3]_i_1_n_0\
    );
\slv_out[4][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFF00200000"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => Q(1),
      I2 => S_AXI_WDATA(0),
      I3 => Q(0),
      I4 => Q(2),
      I5 => \^reg4_out\(0),
      O => \slv_out[4][0]_i_1_n_0\
    );
\slv_out[5][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFF20000000"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => Q(1),
      I2 => S_AXI_WDATA(0),
      I3 => Q(2),
      I4 => Q(0),
      I5 => \^reg5_out\(0),
      O => \slv_out[5][0]_i_1_n_0\
    );
\slv_out_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(0),
      Q => REG0_OUT(0),
      R => \^sr\(0)
    );
\slv_out_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(10),
      Q => REG0_OUT(10),
      R => \^sr\(0)
    );
\slv_out_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(11),
      Q => REG0_OUT(11),
      R => \^sr\(0)
    );
\slv_out_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(12),
      Q => REG0_OUT(12),
      R => \^sr\(0)
    );
\slv_out_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(13),
      Q => REG0_OUT(13),
      R => \^sr\(0)
    );
\slv_out_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(14),
      Q => REG0_OUT(14),
      R => \^sr\(0)
    );
\slv_out_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(15),
      Q => REG0_OUT(15),
      R => \^sr\(0)
    );
\slv_out_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(16),
      Q => REG0_OUT(16),
      R => \^sr\(0)
    );
\slv_out_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(17),
      Q => REG0_OUT(17),
      R => \^sr\(0)
    );
\slv_out_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(18),
      Q => REG0_OUT(18),
      R => \^sr\(0)
    );
\slv_out_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(19),
      Q => REG0_OUT(19),
      R => \^sr\(0)
    );
\slv_out_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(1),
      Q => REG0_OUT(1),
      R => \^sr\(0)
    );
\slv_out_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(20),
      Q => REG0_OUT(20),
      R => \^sr\(0)
    );
\slv_out_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(21),
      Q => REG0_OUT(21),
      R => \^sr\(0)
    );
\slv_out_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(22),
      Q => REG0_OUT(22),
      R => \^sr\(0)
    );
\slv_out_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(23),
      Q => REG0_OUT(23),
      R => \^sr\(0)
    );
\slv_out_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(24),
      Q => REG0_OUT(24),
      R => \^sr\(0)
    );
\slv_out_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(25),
      Q => REG0_OUT(25),
      R => \^sr\(0)
    );
\slv_out_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(26),
      Q => REG0_OUT(26),
      R => \^sr\(0)
    );
\slv_out_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(27),
      Q => REG0_OUT(27),
      R => \^sr\(0)
    );
\slv_out_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(28),
      Q => REG0_OUT(28),
      R => \^sr\(0)
    );
\slv_out_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(29),
      Q => REG0_OUT(29),
      R => \^sr\(0)
    );
\slv_out_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(2),
      Q => REG0_OUT(2),
      R => \^sr\(0)
    );
\slv_out_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(30),
      Q => REG0_OUT(30),
      R => \^sr\(0)
    );
\slv_out_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(31),
      Q => REG0_OUT(31),
      R => \^sr\(0)
    );
\slv_out_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(3),
      Q => REG0_OUT(3),
      R => \^sr\(0)
    );
\slv_out_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(4),
      Q => REG0_OUT(4),
      R => \^sr\(0)
    );
\slv_out_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(5),
      Q => REG0_OUT(5),
      R => \^sr\(0)
    );
\slv_out_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(6),
      Q => REG0_OUT(6),
      R => \^sr\(0)
    );
\slv_out_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(7),
      Q => REG0_OUT(7),
      R => \^sr\(0)
    );
\slv_out_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(8),
      Q => REG0_OUT(8),
      R => \^sr\(0)
    );
\slv_out_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => write,
      D => S_AXI_WDATA(9),
      Q => REG0_OUT(9),
      R => \^sr\(0)
    );
\slv_out_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => REG1_OUT(0),
      R => \^sr\(0)
    );
\slv_out_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => REG1_OUT(10),
      R => \^sr\(0)
    );
\slv_out_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => REG1_OUT(11),
      R => \^sr\(0)
    );
\slv_out_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => REG1_OUT(12),
      R => \^sr\(0)
    );
\slv_out_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => REG1_OUT(13),
      R => \^sr\(0)
    );
\slv_out_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => REG1_OUT(14),
      R => \^sr\(0)
    );
\slv_out_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => REG1_OUT(15),
      R => \^sr\(0)
    );
\slv_out_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => REG1_OUT(16),
      R => \^sr\(0)
    );
\slv_out_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => REG1_OUT(17),
      R => \^sr\(0)
    );
\slv_out_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => REG1_OUT(18),
      R => \^sr\(0)
    );
\slv_out_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => REG1_OUT(19),
      R => \^sr\(0)
    );
\slv_out_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => REG1_OUT(1),
      R => \^sr\(0)
    );
\slv_out_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => REG1_OUT(20),
      R => \^sr\(0)
    );
\slv_out_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => REG1_OUT(21),
      R => \^sr\(0)
    );
\slv_out_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => REG1_OUT(22),
      R => \^sr\(0)
    );
\slv_out_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => REG1_OUT(23),
      R => \^sr\(0)
    );
\slv_out_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => REG1_OUT(24),
      R => \^sr\(0)
    );
\slv_out_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => REG1_OUT(25),
      R => \^sr\(0)
    );
\slv_out_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => REG1_OUT(26),
      R => \^sr\(0)
    );
\slv_out_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => REG1_OUT(27),
      R => \^sr\(0)
    );
\slv_out_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => REG1_OUT(28),
      R => \^sr\(0)
    );
\slv_out_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => REG1_OUT(29),
      R => \^sr\(0)
    );
\slv_out_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => REG1_OUT(2),
      R => \^sr\(0)
    );
\slv_out_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => REG1_OUT(30),
      R => \^sr\(0)
    );
\slv_out_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => REG1_OUT(31),
      R => \^sr\(0)
    );
\slv_out_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => REG1_OUT(3),
      R => \^sr\(0)
    );
\slv_out_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => REG1_OUT(4),
      R => \^sr\(0)
    );
\slv_out_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => REG1_OUT(5),
      R => \^sr\(0)
    );
\slv_out_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => REG1_OUT(6),
      R => \^sr\(0)
    );
\slv_out_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => REG1_OUT(7),
      R => \^sr\(0)
    );
\slv_out_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => REG1_OUT(8),
      R => \^sr\(0)
    );
\slv_out_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[1][31]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => REG1_OUT(9),
      R => \^sr\(0)
    );
\slv_out_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][4]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => REG2_OUT(0),
      R => \^sr\(0)
    );
\slv_out_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][4]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => REG2_OUT(1),
      R => \^sr\(0)
    );
\slv_out_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][4]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => REG2_OUT(2),
      R => \^sr\(0)
    );
\slv_out_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][4]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => REG2_OUT(3),
      R => \^sr\(0)
    );
\slv_out_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[2][4]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => REG2_OUT(4),
      R => \^sr\(0)
    );
\slv_out_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][3]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => REG3_OUT(0),
      R => \^sr\(0)
    );
\slv_out_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][3]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => REG3_OUT(1),
      R => \^sr\(0)
    );
\slv_out_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][3]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => REG3_OUT(2),
      R => \^sr\(0)
    );
\slv_out_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_out[3][3]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => REG3_OUT(3),
      R => \^sr\(0)
    );
\slv_out_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_out[4][0]_i_1_n_0\,
      Q => \^reg4_out\(0),
      R => \^sr\(0)
    );
\slv_out_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \slv_out[5][0]_i_1_n_0\,
      Q => \^reg5_out\(0),
      R => \^sr\(0)
    );
\slv_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \slv_read_reg[0]_0\(1),
      I1 => \slv_read[0]_i_2_n_0\,
      I2 => \slv_read[0]_i_3_n_0\,
      I3 => \slv_read[0]_i_4_n_0\,
      I4 => \slv_read_reg[0]_0\(2),
      I5 => \slv_read_reg[0]_0\(0),
      O => \^d\(0)
    );
\slv_read[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \slv_read_reg[0]_0\(13),
      I1 => \slv_read_reg[0]_1\,
      I2 => S_AXI_RREADY,
      I3 => \slv_read_reg[0]_0\(4),
      I4 => \slv_read_reg[0]_0\(3),
      O => \slv_read[0]_i_2_n_0\
    );
\slv_read[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \slv_read_reg[0]_0\(8),
      I1 => \slv_read_reg[0]_0\(7),
      I2 => \slv_read_reg[0]_0\(6),
      I3 => \slv_read_reg[0]_0\(5),
      O => \slv_read[0]_i_3_n_0\
    );
\slv_read[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \slv_read_reg[0]_0\(12),
      I1 => \slv_read_reg[0]_0\(11),
      I2 => \slv_read_reg[0]_0\(10),
      I3 => \slv_read_reg[0]_0\(9),
      O => \slv_read[0]_i_4_n_0\
    );
\slv_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \slv_read_reg[0]_0\(1),
      I1 => \slv_read[0]_i_2_n_0\,
      I2 => \slv_read[0]_i_3_n_0\,
      I3 => \slv_read[0]_i_4_n_0\,
      I4 => \slv_read_reg[0]_0\(2),
      I5 => \slv_read_reg[0]_0\(0),
      O => \^d\(1)
    );
\slv_read[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => \slv_read_reg[0]_0\(1),
      I1 => \slv_read[0]_i_2_n_0\,
      I2 => \slv_read[0]_i_3_n_0\,
      I3 => \slv_read[0]_i_4_n_0\,
      I4 => \slv_read_reg[0]_0\(2),
      I5 => \slv_read_reg[0]_0\(0),
      O => \^d\(2)
    );
\slv_read[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \slv_read_reg[0]_0\(1),
      I1 => \slv_read[0]_i_2_n_0\,
      I2 => \slv_read[0]_i_3_n_0\,
      I3 => \slv_read[0]_i_4_n_0\,
      I4 => \slv_read_reg[0]_0\(2),
      I5 => \slv_read_reg[0]_0\(0),
      O => \^d\(3)
    );
\slv_read[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \slv_read_reg[0]_0\(0),
      I1 => \slv_read_reg[0]_0\(2),
      I2 => \slv_read_reg[0]_0\(1),
      I3 => \^axi_araddr_reg[10]\,
      O => sel0(4)
    );
\slv_read[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \slv_read_reg[0]_0\(0),
      I1 => \slv_read_reg[0]_0\(2),
      I2 => \slv_read_reg[0]_0\(1),
      I3 => \^axi_araddr_reg[10]\,
      O => sel0(5)
    );
\slv_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \^d\(0),
      Q => \slv_read_reg[5]_0\(0),
      R => '0'
    );
\slv_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \^d\(1),
      Q => \slv_read_reg[5]_0\(1),
      R => '0'
    );
\slv_read_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \^d\(2),
      Q => \slv_read_reg[5]_0\(2),
      R => '0'
    );
\slv_read_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \^d\(3),
      Q => \slv_read_reg[5]_0\(3),
      R => '0'
    );
\slv_read_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => sel0(4),
      Q => \slv_read_reg[5]_0\(4),
      R => '0'
    );
\slv_read_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => sel0(5),
      Q => \slv_read_reg[5]_0\(5),
      R => '0'
    );
\slv_write[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      O => \slv_write[0]_i_1_n_0\
    );
\slv_write[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      O => \slv_write[1]_i_1_n_0\
    );
\slv_write[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(0),
      O => \slv_write[4]_i_1_n_0\
    );
\slv_write[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_out[0][31]_i_3_n_0\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      O => \slv_write[5]_i_1_n_0\
    );
\slv_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_write[0]_i_1_n_0\,
      Q => REG0_WR,
      R => '0'
    );
\slv_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_write[1]_i_1_n_0\,
      Q => REG1_WR,
      R => '0'
    );
\slv_write_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_out[2][4]_i_1_n_0\,
      Q => \slv_write_reg[3]_0\(0),
      R => '0'
    );
\slv_write_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_out[3][3]_i_1_n_0\,
      Q => \slv_write_reg[3]_0\(1),
      R => '0'
    );
\slv_write_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_write[4]_i_1_n_0\,
      Q => REG4_WR,
      R => '0'
    );
\slv_write_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => S_AXI_ARESETN,
      D => \slv_write[5]_i_1_n_0\,
      Q => REG5_WR,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lab_2_axi_regmap_0_0_axi_regmap is
  port (
    REG5_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    REG4_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_axi_wr_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_axi_wr_state_reg[2]_0\ : out STD_LOGIC;
    REG0_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    REG5_WR : out STD_LOGIC;
    REG4_WR : out STD_LOGIC;
    REG1_WR : out STD_LOGIC;
    REG0_WR : out STD_LOGIC;
    \slv_read_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    REG1_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    REG3_OUT : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_rd_state_reg_0 : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 13 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 13 downto 0 );
    REG3_IN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    REG0_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG5_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    REG4_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    REG1_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG2_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Lab_2_axi_regmap_0_0_axi_regmap : entity is "axi_regmap";
end Lab_2_axi_regmap_0_0_axi_regmap;

architecture STRUCTURE of Lab_2_axi_regmap_0_0_axi_regmap is
  signal \FSM_onehot_axi_wr_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_wr_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_wr_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_axi_wr_state_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_axi_wr_state_reg[2]_0\ : STD_LOGIC;
  signal MM_i_n_7 : STD_LOGIC;
  signal RESET : STD_LOGIC;
  signal \S_AXI_RDATA[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal axi_araddr_1 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \axi_awaddr[15]_i_1_n_0\ : STD_LOGIC;
  signal axi_awaddr_0 : STD_LOGIC;
  signal axi_rd_state_i_1_n_0 : STD_LOGIC;
  signal \^axi_rd_state_reg_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_wr_state_reg[0]\ : label is "addr:001,data:010,resp:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_wr_state_reg[1]\ : label is "addr:001,data:010,resp:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_wr_state_reg[2]\ : label is "addr:001,data:010,resp:100,";
begin
  \FSM_onehot_axi_wr_state_reg[1]_0\ <= \^fsm_onehot_axi_wr_state_reg[1]_0\;
  \FSM_onehot_axi_wr_state_reg[2]_0\ <= \^fsm_onehot_axi_wr_state_reg[2]_0\;
  axi_rd_state_reg_0 <= \^axi_rd_state_reg_0\;
\FSM_onehot_axi_wr_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F800FF77F800"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^fsm_onehot_axi_wr_state_reg[1]_0\,
      I2 => S_AXI_BREADY,
      I3 => \^fsm_onehot_axi_wr_state_reg[2]_0\,
      I4 => axi_awaddr_0,
      I5 => S_AXI_AWVALID,
      O => \FSM_onehot_axi_wr_state[0]_i_1_n_0\
    );
\FSM_onehot_axi_wr_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0444FCCC0444"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^fsm_onehot_axi_wr_state_reg[1]_0\,
      I2 => S_AXI_BREADY,
      I3 => \^fsm_onehot_axi_wr_state_reg[2]_0\,
      I4 => axi_awaddr_0,
      I5 => S_AXI_AWVALID,
      O => \FSM_onehot_axi_wr_state[1]_i_1_n_0\
    );
\FSM_onehot_axi_wr_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCF88CF88CF88"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => \^fsm_onehot_axi_wr_state_reg[1]_0\,
      I2 => S_AXI_BREADY,
      I3 => \^fsm_onehot_axi_wr_state_reg[2]_0\,
      I4 => axi_awaddr_0,
      I5 => S_AXI_AWVALID,
      O => \FSM_onehot_axi_wr_state[2]_i_1_n_0\
    );
\FSM_onehot_axi_wr_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_axi_wr_state[0]_i_1_n_0\,
      Q => axi_awaddr_0,
      S => RESET
    );
\FSM_onehot_axi_wr_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_axi_wr_state[1]_i_1_n_0\,
      Q => \^fsm_onehot_axi_wr_state_reg[1]_0\,
      R => RESET
    );
\FSM_onehot_axi_wr_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_axi_wr_state[2]_i_1_n_0\,
      Q => \^fsm_onehot_axi_wr_state_reg[2]_0\,
      R => RESET
    );
MM_i: entity work.Lab_2_axi_regmap_0_0_mm_regmap
     port map (
      D(3 downto 0) => sel0(3 downto 0),
      Q(13 downto 0) => axi_awaddr(15 downto 2),
      REG0_OUT(31 downto 0) => REG0_OUT(31 downto 0),
      REG0_WR => REG0_WR,
      REG1_OUT(31 downto 0) => REG1_OUT(31 downto 0),
      REG1_WR => REG1_WR,
      REG2_OUT(4 downto 0) => REG2_OUT(4 downto 0),
      REG3_OUT(3 downto 0) => REG3_OUT(3 downto 0),
      REG4_OUT(0) => REG4_OUT(0),
      REG4_WR => REG4_WR,
      REG5_OUT(0) => REG5_OUT(0),
      REG5_WR => REG5_WR,
      SR(0) => RESET,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      \axi_araddr_reg[10]\ => MM_i_n_7,
      \slv_out[0][31]_i_3_0\ => \^fsm_onehot_axi_wr_state_reg[1]_0\,
      \slv_read_reg[0]_0\(13 downto 0) => axi_araddr(15 downto 2),
      \slv_read_reg[0]_1\ => \^axi_rd_state_reg_0\,
      \slv_read_reg[5]_0\(5 downto 0) => \slv_read_reg[5]\(5 downto 0),
      \slv_write_reg[3]_0\(1 downto 0) => Q(1 downto 0)
    );
\S_AXI_RDATA[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF8FFF8"
    )
        port map (
      I0 => sel0(3),
      I1 => REG3_IN(0),
      I2 => \S_AXI_RDATA[0]_INST_0_i_1_n_0\,
      I3 => \S_AXI_RDATA[0]_INST_0_i_2_n_0\,
      I4 => sel0(0),
      I5 => REG0_IN(0),
      O => S_AXI_RDATA(0)
    );
\S_AXI_RDATA[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000C000000A000"
    )
        port map (
      I0 => REG2_IN(0),
      I1 => REG1_IN(0),
      I2 => axi_araddr(3),
      I3 => MM_i_n_7,
      I4 => axi_araddr(4),
      I5 => axi_araddr(2),
      O => \S_AXI_RDATA[0]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B80000000000"
    )
        port map (
      I0 => REG5_IN(0),
      I1 => axi_araddr(2),
      I2 => REG4_IN(0),
      I3 => axi_araddr(4),
      I4 => axi_araddr(3),
      I5 => MM_i_n_7,
      O => \S_AXI_RDATA[0]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(10),
      I1 => sel0(1),
      I2 => REG0_IN(10),
      I3 => sel0(0),
      O => S_AXI_RDATA(10)
    );
\S_AXI_RDATA[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(11),
      I1 => sel0(1),
      I2 => REG0_IN(11),
      I3 => sel0(0),
      O => S_AXI_RDATA(11)
    );
\S_AXI_RDATA[12]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(12),
      I1 => sel0(1),
      I2 => REG0_IN(12),
      I3 => sel0(0),
      O => S_AXI_RDATA(12)
    );
\S_AXI_RDATA[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(13),
      I1 => sel0(1),
      I2 => REG0_IN(13),
      I3 => sel0(0),
      O => S_AXI_RDATA(13)
    );
\S_AXI_RDATA[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(14),
      I1 => sel0(1),
      I2 => REG0_IN(14),
      I3 => sel0(0),
      O => S_AXI_RDATA(14)
    );
\S_AXI_RDATA[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(15),
      I1 => sel0(1),
      I2 => REG0_IN(15),
      I3 => sel0(0),
      O => S_AXI_RDATA(15)
    );
\S_AXI_RDATA[16]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(16),
      I1 => sel0(1),
      I2 => REG0_IN(16),
      I3 => sel0(0),
      O => S_AXI_RDATA(16)
    );
\S_AXI_RDATA[17]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(17),
      I1 => sel0(1),
      I2 => REG0_IN(17),
      I3 => sel0(0),
      O => S_AXI_RDATA(17)
    );
\S_AXI_RDATA[18]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(18),
      I1 => sel0(1),
      I2 => REG0_IN(18),
      I3 => sel0(0),
      O => S_AXI_RDATA(18)
    );
\S_AXI_RDATA[19]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(19),
      I1 => sel0(1),
      I2 => REG0_IN(19),
      I3 => sel0(0),
      O => S_AXI_RDATA(19)
    );
\S_AXI_RDATA[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => REG3_IN(1),
      I1 => axi_araddr(3),
      I2 => MM_i_n_7,
      I3 => axi_araddr(4),
      I4 => axi_araddr(2),
      I5 => \S_AXI_RDATA[1]_INST_0_i_1_n_0\,
      O => S_AXI_RDATA(1)
    );
\S_AXI_RDATA[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(1),
      I2 => sel0(1),
      I3 => REG1_IN(1),
      I4 => REG2_IN(1),
      I5 => sel0(2),
      O => \S_AXI_RDATA[1]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[20]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(20),
      I1 => sel0(1),
      I2 => REG0_IN(20),
      I3 => sel0(0),
      O => S_AXI_RDATA(20)
    );
\S_AXI_RDATA[21]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(21),
      I1 => sel0(1),
      I2 => REG0_IN(21),
      I3 => sel0(0),
      O => S_AXI_RDATA(21)
    );
\S_AXI_RDATA[22]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(22),
      I1 => sel0(1),
      I2 => REG0_IN(22),
      I3 => sel0(0),
      O => S_AXI_RDATA(22)
    );
\S_AXI_RDATA[23]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(23),
      I1 => sel0(1),
      I2 => REG0_IN(23),
      I3 => sel0(0),
      O => S_AXI_RDATA(23)
    );
\S_AXI_RDATA[24]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(24),
      I1 => sel0(1),
      I2 => REG0_IN(24),
      I3 => sel0(0),
      O => S_AXI_RDATA(24)
    );
\S_AXI_RDATA[25]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(25),
      I1 => sel0(1),
      I2 => REG0_IN(25),
      I3 => sel0(0),
      O => S_AXI_RDATA(25)
    );
\S_AXI_RDATA[26]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(26),
      I1 => sel0(1),
      I2 => REG0_IN(26),
      I3 => sel0(0),
      O => S_AXI_RDATA(26)
    );
\S_AXI_RDATA[27]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(27),
      I1 => sel0(1),
      I2 => REG0_IN(27),
      I3 => sel0(0),
      O => S_AXI_RDATA(27)
    );
\S_AXI_RDATA[28]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(28),
      I1 => sel0(1),
      I2 => REG0_IN(28),
      I3 => sel0(0),
      O => S_AXI_RDATA(28)
    );
\S_AXI_RDATA[29]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(29),
      I1 => sel0(1),
      I2 => REG0_IN(29),
      I3 => sel0(0),
      O => S_AXI_RDATA(29)
    );
\S_AXI_RDATA[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => REG3_IN(2),
      I1 => axi_araddr(3),
      I2 => MM_i_n_7,
      I3 => axi_araddr(4),
      I4 => axi_araddr(2),
      I5 => \S_AXI_RDATA[2]_INST_0_i_1_n_0\,
      O => S_AXI_RDATA(2)
    );
\S_AXI_RDATA[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(2),
      I2 => sel0(1),
      I3 => REG1_IN(2),
      I4 => REG2_IN(2),
      I5 => sel0(2),
      O => \S_AXI_RDATA[2]_INST_0_i_1_n_0\
    );
\S_AXI_RDATA[30]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(30),
      I1 => sel0(1),
      I2 => REG0_IN(30),
      I3 => sel0(0),
      O => S_AXI_RDATA(30)
    );
\S_AXI_RDATA[31]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(31),
      I1 => sel0(1),
      I2 => REG0_IN(31),
      I3 => sel0(0),
      O => S_AXI_RDATA(31)
    );
\S_AXI_RDATA[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => REG3_IN(3),
      I1 => axi_araddr(3),
      I2 => MM_i_n_7,
      I3 => axi_araddr(4),
      I4 => axi_araddr(2),
      I5 => \S_AXI_RDATA[3]_INST_0_i_2_n_0\,
      O => S_AXI_RDATA(3)
    );
\S_AXI_RDATA[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(3),
      I2 => sel0(1),
      I3 => REG1_IN(3),
      I4 => REG2_IN(3),
      I5 => sel0(2),
      O => \S_AXI_RDATA[3]_INST_0_i_2_n_0\
    );
\S_AXI_RDATA[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => sel0(0),
      I1 => REG0_IN(4),
      I2 => sel0(1),
      I3 => REG1_IN(4),
      I4 => REG2_IN(4),
      I5 => sel0(2),
      O => S_AXI_RDATA(4)
    );
\S_AXI_RDATA[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(5),
      I1 => sel0(1),
      I2 => REG0_IN(5),
      I3 => sel0(0),
      O => S_AXI_RDATA(5)
    );
\S_AXI_RDATA[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(6),
      I1 => sel0(1),
      I2 => REG0_IN(6),
      I3 => sel0(0),
      O => S_AXI_RDATA(6)
    );
\S_AXI_RDATA[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(7),
      I1 => sel0(1),
      I2 => REG0_IN(7),
      I3 => sel0(0),
      O => S_AXI_RDATA(7)
    );
\S_AXI_RDATA[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(8),
      I1 => sel0(1),
      I2 => REG0_IN(8),
      I3 => sel0(0),
      O => S_AXI_RDATA(8)
    );
\S_AXI_RDATA[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => REG1_IN(9),
      I1 => sel0(1),
      I2 => REG0_IN(9),
      I3 => sel0(0),
      O => S_AXI_RDATA(9)
    );
\axi_araddr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => \^axi_rd_state_reg_0\,
      O => axi_araddr_1
    );
\axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(8),
      Q => axi_araddr(10),
      R => '0'
    );
\axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(9),
      Q => axi_araddr(11),
      R => '0'
    );
\axi_araddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(10),
      Q => axi_araddr(12),
      R => '0'
    );
\axi_araddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(11),
      Q => axi_araddr(13),
      R => '0'
    );
\axi_araddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(12),
      Q => axi_araddr(14),
      R => '0'
    );
\axi_araddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(13),
      Q => axi_araddr(15),
      R => '0'
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(0),
      Q => axi_araddr(2),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(1),
      Q => axi_araddr(3),
      R => '0'
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(2),
      Q => axi_araddr(4),
      R => '0'
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(3),
      Q => axi_araddr(5),
      R => '0'
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(4),
      Q => axi_araddr(6),
      R => '0'
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(5),
      Q => axi_araddr(7),
      R => '0'
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(6),
      Q => axi_araddr(8),
      R => '0'
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_araddr_1,
      D => S_AXI_ARADDR(7),
      Q => axi_araddr(9),
      R => '0'
    );
\axi_awaddr[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => S_AXI_ARESETN,
      I1 => axi_awaddr_0,
      O => \axi_awaddr[15]_i_1_n_0\
    );
\axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(8),
      Q => axi_awaddr(10),
      R => '0'
    );
\axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(9),
      Q => axi_awaddr(11),
      R => '0'
    );
\axi_awaddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(10),
      Q => axi_awaddr(12),
      R => '0'
    );
\axi_awaddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(11),
      Q => axi_awaddr(13),
      R => '0'
    );
\axi_awaddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(12),
      Q => axi_awaddr(14),
      R => '0'
    );
\axi_awaddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(13),
      Q => axi_awaddr(15),
      R => '0'
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(0),
      Q => axi_awaddr(2),
      R => '0'
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(1),
      Q => axi_awaddr(3),
      R => '0'
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(2),
      Q => axi_awaddr(4),
      R => '0'
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(3),
      Q => axi_awaddr(5),
      R => '0'
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(4),
      Q => axi_awaddr(6),
      R => '0'
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(5),
      Q => axi_awaddr(7),
      R => '0'
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(6),
      Q => axi_awaddr(8),
      R => '0'
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_awaddr[15]_i_1_n_0\,
      D => S_AXI_AWADDR(7),
      Q => axi_awaddr(9),
      R => '0'
    );
axi_rd_state_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => S_AXI_RREADY,
      I2 => \^axi_rd_state_reg_0\,
      O => axi_rd_state_i_1_n_0
    );
axi_rd_state_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rd_state_i_1_n_0,
      Q => \^axi_rd_state_reg_0\,
      R => RESET
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lab_2_axi_regmap_0_0 is
  port (
    REG0_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG0_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG0_WR : out STD_LOGIC;
    REG0_RD : out STD_LOGIC;
    REG1_OUT : out STD_LOGIC_VECTOR ( 31 downto 0 );
    REG1_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    REG1_WR : out STD_LOGIC;
    REG1_RD : out STD_LOGIC;
    REG2_OUT : out STD_LOGIC_VECTOR ( 4 downto 0 );
    REG2_IN : in STD_LOGIC_VECTOR ( 4 downto 0 );
    REG2_WR : out STD_LOGIC;
    REG2_RD : out STD_LOGIC;
    REG3_OUT : out STD_LOGIC_VECTOR ( 3 downto 0 );
    REG3_IN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    REG3_WR : out STD_LOGIC;
    REG3_RD : out STD_LOGIC;
    REG4_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    REG4_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    REG4_WR : out STD_LOGIC;
    REG4_RD : out STD_LOGIC;
    REG5_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    REG5_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    REG5_WR : out STD_LOGIC;
    REG5_RD : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Lab_2_axi_regmap_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Lab_2_axi_regmap_0_0 : entity is "Lab_2_axi_regmap_0_0,axi_regmap,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Lab_2_axi_regmap_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Lab_2_axi_regmap_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of Lab_2_axi_regmap_0_0 : entity is "axi_regmap,Vivado 2018.3";
end Lab_2_axi_regmap_0_0;

architecture STRUCTURE of Lab_2_axi_regmap_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Lab_2_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_parameter of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_parameter of S_AXI_AWADDR : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 16, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Lab_2_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_ARREADY <= \<const1>\;
  S_AXI_AWREADY <= \<const1>\;
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.Lab_2_axi_regmap_0_0_axi_regmap
     port map (
      \FSM_onehot_axi_wr_state_reg[1]_0\ => S_AXI_WREADY,
      \FSM_onehot_axi_wr_state_reg[2]_0\ => S_AXI_BVALID,
      Q(1) => REG3_WR,
      Q(0) => REG2_WR,
      REG0_IN(31 downto 0) => REG0_IN(31 downto 0),
      REG0_OUT(31 downto 0) => REG0_OUT(31 downto 0),
      REG0_WR => REG0_WR,
      REG1_IN(31 downto 0) => REG1_IN(31 downto 0),
      REG1_OUT(31 downto 0) => REG1_OUT(31 downto 0),
      REG1_WR => REG1_WR,
      REG2_IN(4 downto 0) => REG2_IN(4 downto 0),
      REG2_OUT(4 downto 0) => REG2_OUT(4 downto 0),
      REG3_IN(3 downto 0) => REG3_IN(3 downto 0),
      REG3_OUT(3 downto 0) => REG3_OUT(3 downto 0),
      REG4_IN(0) => REG4_IN(0),
      REG4_OUT(0) => REG4_OUT(0),
      REG4_WR => REG4_WR,
      REG5_IN(0) => REG5_IN(0),
      REG5_OUT(0) => REG5_OUT(0),
      REG5_WR => REG5_WR,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(13 downto 0) => S_AXI_ARADDR(15 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(13 downto 0) => S_AXI_AWADDR(15 downto 2),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      axi_rd_state_reg_0 => S_AXI_RVALID,
      \slv_read_reg[5]\(5) => REG5_RD,
      \slv_read_reg[5]\(4) => REG4_RD,
      \slv_read_reg[5]\(3) => REG3_RD,
      \slv_read_reg[5]\(2) => REG2_RD,
      \slv_read_reg[5]\(1) => REG1_RD,
      \slv_read_reg[5]\(0) => REG0_RD
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
