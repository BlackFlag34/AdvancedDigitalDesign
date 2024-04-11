// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Sep 19 15:55:48 2023
// Host        : The_Ghost_TWO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Lab_1_adderSub_Full_Adder_Subtracto_0_0_sim_netlist.v
// Design      : Lab_1_adderSub_Full_Adder_Subtracto_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Lab_1_adderSub_Full_Adder_Subtracto_0_0,Full_Adder_Subtractor_32bit,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Full_Adder_Subtractor_32bit,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    k,
    s,
    Cout);
  input [31:0]A;
  input [31:0]B;
  input k;
  output [31:0]s;
  output Cout;

  wire [31:0]A;
  wire [31:0]B;
  wire Cout;
  wire Cout00_out__13;
  wire Cout00_out__18;
  wire Cout00_out__23;
  wire Cout00_out__28;
  wire Cout00_out__3;
  wire Cout00_out__8;
  wire Cout0__13;
  wire Cout0__18;
  wire Cout0__23;
  wire Cout0__28;
  wire Cout0__3;
  wire Cout0__8;
  wire \U0/B11_out ;
  wire \U0/B13_out ;
  wire \U0/B15_out ;
  wire \U0/B19_out ;
  wire \U0/B21_out ;
  wire \U0/B23_out ;
  wire \U0/B25_out ;
  wire \U0/B29_out ;
  wire \U0/B31_out ;
  wire \U0/B33_out ;
  wire \U0/B35_out ;
  wire \U0/B39_out ;
  wire \U0/B3_out ;
  wire \U0/B41_out ;
  wire \U0/B43_out ;
  wire \U0/B45_out ;
  wire \U0/B49_out ;
  wire \U0/B51_out ;
  wire \U0/B53_out ;
  wire \U0/B55_out ;
  wire \U0/B57_out ;
  wire \U0/B59_out ;
  wire \U0/B5_out ;
  wire \U0/B61_out ;
  wire \U0/B9_out ;
  wire \U0/F_rest[14].F/w__0 ;
  wire \U0/F_rest[19].F/w__0 ;
  wire \U0/F_rest[24].F/w__0 ;
  wire \U0/F_rest[29].F/w__0 ;
  wire \U0/F_rest[30].F/w__0 ;
  wire \U0/F_rest[31].F/w__0 ;
  wire \U0/F_rest[4].F/w__0 ;
  wire \U0/F_rest[9].F/w__0 ;
  wire \U0/carry_1 ;
  wire \U0/carry_10 ;
  wire \U0/carry_11 ;
  wire \U0/carry_12 ;
  wire \U0/carry_13 ;
  wire \U0/carry_14 ;
  wire \U0/carry_15 ;
  wire \U0/carry_16 ;
  wire \U0/carry_17 ;
  wire \U0/carry_18 ;
  wire \U0/carry_19 ;
  wire \U0/carry_20 ;
  wire \U0/carry_21 ;
  wire \U0/carry_22 ;
  wire \U0/carry_23 ;
  wire \U0/carry_24 ;
  wire \U0/carry_25 ;
  wire \U0/carry_26 ;
  wire \U0/carry_27 ;
  wire \U0/carry_28 ;
  wire \U0/carry_3 ;
  wire \U0/carry_5 ;
  wire \U0/carry_6 ;
  wire \U0/carry_7 ;
  wire \U0/carry_8 ;
  wire \U0/carry_9 ;
  wire k;
  wire [31:0]s;

  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    Cout_INST_0
       (.I0(Cout00_out__28),
        .I1(Cout0__28),
        .I2(\U0/B59_out ),
        .I3(A[30]),
        .I4(\U0/B61_out ),
        .I5(A[31]),
        .O(Cout));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h28)) 
    Cout_INST_0_i_1
       (.I0(A[29]),
        .I1(B[29]),
        .I2(k),
        .O(Cout00_out__28));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    Cout_INST_0_i_2
       (.I0(\U0/F_rest[29].F/w__0 ),
        .I1(A[28]),
        .I2(\U0/B55_out ),
        .I3(A[27]),
        .I4(\U0/B53_out ),
        .I5(\U0/carry_26 ),
        .O(Cout0__28));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    Cout_INST_0_i_3
       (.I0(k),
        .I1(B[31]),
        .O(\U0/B61_out ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Cout_INST_0_i_4
       (.I0(B[29]),
        .I1(k),
        .I2(A[29]),
        .O(\U0/F_rest[29].F/w__0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    Cout_INST_0_i_5
       (.I0(k),
        .I1(B[27]),
        .O(\U0/B53_out ));
  LUT2 #(
    .INIT(4'h6)) 
    \s[0]_INST_0 
       (.I0(A[0]),
        .I1(B[0]),
        .O(s[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \s[10]_INST_0 
       (.I0(\U0/carry_9 ),
        .I1(A[10]),
        .I2(k),
        .I3(B[10]),
        .O(s[10]));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \s[11]_INST_0 
       (.I0(A[10]),
        .I1(B[10]),
        .I2(\U0/carry_9 ),
        .I3(A[11]),
        .I4(k),
        .I5(B[11]),
        .O(s[11]));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[11]_INST_0_i_1 
       (.I0(\U0/carry_7 ),
        .I1(B[8]),
        .I2(k),
        .I3(A[8]),
        .I4(B[9]),
        .I5(A[9]),
        .O(\U0/carry_9 ));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \s[12]_INST_0 
       (.I0(A[11]),
        .I1(B[11]),
        .I2(\U0/carry_10 ),
        .I3(A[12]),
        .I4(k),
        .I5(B[12]),
        .O(s[12]));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[12]_INST_0_i_1 
       (.I0(\U0/carry_8 ),
        .I1(B[9]),
        .I2(k),
        .I3(A[9]),
        .I4(B[10]),
        .I5(A[10]),
        .O(\U0/carry_10 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[12]_INST_0_i_10 
       (.I0(k),
        .I1(B[2]),
        .O(\U0/B3_out ));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[12]_INST_0_i_2 
       (.I0(\U0/carry_6 ),
        .I1(B[7]),
        .I2(k),
        .I3(A[7]),
        .I4(B[8]),
        .I5(A[8]),
        .O(\U0/carry_8 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \s[12]_INST_0_i_3 
       (.I0(Cout00_out__3),
        .I1(Cout0__3),
        .I2(\U0/B9_out ),
        .I3(A[5]),
        .I4(\U0/B11_out ),
        .I5(A[6]),
        .O(\U0/carry_6 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \s[12]_INST_0_i_4 
       (.I0(A[4]),
        .I1(B[4]),
        .I2(k),
        .O(Cout00_out__3));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \s[12]_INST_0_i_5 
       (.I0(\U0/F_rest[4].F/w__0 ),
        .I1(A[3]),
        .I2(\U0/B5_out ),
        .I3(A[2]),
        .I4(\U0/B3_out ),
        .I5(\U0/carry_1 ),
        .O(Cout0__3));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[12]_INST_0_i_6 
       (.I0(k),
        .I1(B[5]),
        .O(\U0/B9_out ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[12]_INST_0_i_7 
       (.I0(k),
        .I1(B[6]),
        .O(\U0/B11_out ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s[12]_INST_0_i_8 
       (.I0(B[4]),
        .I1(k),
        .I2(A[4]),
        .O(\U0/F_rest[4].F/w__0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[12]_INST_0_i_9 
       (.I0(k),
        .I1(B[3]),
        .O(\U0/B5_out ));
  LUT4 #(
    .INIT(16'h6996)) 
    \s[13]_INST_0 
       (.I0(\U0/carry_12 ),
        .I1(A[13]),
        .I2(k),
        .I3(B[13]),
        .O(s[13]));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \s[14]_INST_0 
       (.I0(A[13]),
        .I1(B[13]),
        .I2(\U0/carry_12 ),
        .I3(A[14]),
        .I4(k),
        .I5(B[14]),
        .O(s[14]));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[14]_INST_0_i_1 
       (.I0(\U0/carry_10 ),
        .I1(B[11]),
        .I2(k),
        .I3(A[11]),
        .I4(B[12]),
        .I5(A[12]),
        .O(\U0/carry_12 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \s[15]_INST_0 
       (.I0(\U0/carry_14 ),
        .I1(A[15]),
        .I2(k),
        .I3(B[15]),
        .O(s[15]));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \s[16]_INST_0 
       (.I0(A[15]),
        .I1(B[15]),
        .I2(\U0/carry_14 ),
        .I3(A[16]),
        .I4(k),
        .I5(B[16]),
        .O(s[16]));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[16]_INST_0_i_1 
       (.I0(\U0/carry_12 ),
        .I1(B[13]),
        .I2(k),
        .I3(A[13]),
        .I4(B[14]),
        .I5(A[14]),
        .O(\U0/carry_14 ));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \s[17]_INST_0 
       (.I0(A[16]),
        .I1(B[16]),
        .I2(\U0/carry_15 ),
        .I3(A[17]),
        .I4(k),
        .I5(B[17]),
        .O(s[17]));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[17]_INST_0_i_1 
       (.I0(\U0/carry_13 ),
        .I1(B[14]),
        .I2(k),
        .I3(A[14]),
        .I4(B[15]),
        .I5(A[15]),
        .O(\U0/carry_15 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[17]_INST_0_i_10 
       (.I0(k),
        .I1(B[7]),
        .O(\U0/B13_out ));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[17]_INST_0_i_2 
       (.I0(\U0/carry_11 ),
        .I1(B[12]),
        .I2(k),
        .I3(A[12]),
        .I4(B[13]),
        .I5(A[13]),
        .O(\U0/carry_13 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \s[17]_INST_0_i_3 
       (.I0(Cout00_out__8),
        .I1(Cout0__8),
        .I2(\U0/B19_out ),
        .I3(A[10]),
        .I4(\U0/B21_out ),
        .I5(A[11]),
        .O(\U0/carry_11 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \s[17]_INST_0_i_4 
       (.I0(A[9]),
        .I1(B[9]),
        .I2(k),
        .O(Cout00_out__8));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \s[17]_INST_0_i_5 
       (.I0(\U0/F_rest[9].F/w__0 ),
        .I1(A[8]),
        .I2(\U0/B15_out ),
        .I3(A[7]),
        .I4(\U0/B13_out ),
        .I5(\U0/carry_6 ),
        .O(Cout0__8));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[17]_INST_0_i_6 
       (.I0(k),
        .I1(B[10]),
        .O(\U0/B19_out ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[17]_INST_0_i_7 
       (.I0(k),
        .I1(B[11]),
        .O(\U0/B21_out ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s[17]_INST_0_i_8 
       (.I0(B[9]),
        .I1(k),
        .I2(A[9]),
        .O(\U0/F_rest[9].F/w__0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[17]_INST_0_i_9 
       (.I0(k),
        .I1(B[8]),
        .O(\U0/B15_out ));
  LUT4 #(
    .INIT(16'h6996)) 
    \s[18]_INST_0 
       (.I0(\U0/carry_17 ),
        .I1(A[18]),
        .I2(k),
        .I3(B[18]),
        .O(s[18]));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \s[19]_INST_0 
       (.I0(A[18]),
        .I1(B[18]),
        .I2(\U0/carry_17 ),
        .I3(A[19]),
        .I4(k),
        .I5(B[19]),
        .O(s[19]));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[19]_INST_0_i_1 
       (.I0(\U0/carry_15 ),
        .I1(B[16]),
        .I2(k),
        .I3(A[16]),
        .I4(B[17]),
        .I5(A[17]),
        .O(\U0/carry_17 ));
  LUT5 #(
    .INIT(32'h4B87B478)) 
    \s[1]_INST_0 
       (.I0(A[0]),
        .I1(B[0]),
        .I2(A[1]),
        .I3(k),
        .I4(B[1]),
        .O(s[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \s[20]_INST_0 
       (.I0(\U0/carry_19 ),
        .I1(A[20]),
        .I2(k),
        .I3(B[20]),
        .O(s[20]));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \s[21]_INST_0 
       (.I0(A[20]),
        .I1(B[20]),
        .I2(\U0/carry_19 ),
        .I3(A[21]),
        .I4(k),
        .I5(B[21]),
        .O(s[21]));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[21]_INST_0_i_1 
       (.I0(\U0/carry_17 ),
        .I1(B[18]),
        .I2(k),
        .I3(A[18]),
        .I4(B[19]),
        .I5(A[19]),
        .O(\U0/carry_19 ));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \s[22]_INST_0 
       (.I0(A[21]),
        .I1(B[21]),
        .I2(\U0/carry_20 ),
        .I3(A[22]),
        .I4(k),
        .I5(B[22]),
        .O(s[22]));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[22]_INST_0_i_1 
       (.I0(\U0/carry_18 ),
        .I1(B[19]),
        .I2(k),
        .I3(A[19]),
        .I4(B[20]),
        .I5(A[20]),
        .O(\U0/carry_20 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[22]_INST_0_i_10 
       (.I0(k),
        .I1(B[12]),
        .O(\U0/B23_out ));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[22]_INST_0_i_2 
       (.I0(\U0/carry_16 ),
        .I1(B[17]),
        .I2(k),
        .I3(A[17]),
        .I4(B[18]),
        .I5(A[18]),
        .O(\U0/carry_18 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \s[22]_INST_0_i_3 
       (.I0(Cout00_out__13),
        .I1(Cout0__13),
        .I2(\U0/B29_out ),
        .I3(A[15]),
        .I4(\U0/B31_out ),
        .I5(A[16]),
        .O(\U0/carry_16 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \s[22]_INST_0_i_4 
       (.I0(A[14]),
        .I1(B[14]),
        .I2(k),
        .O(Cout00_out__13));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \s[22]_INST_0_i_5 
       (.I0(\U0/F_rest[14].F/w__0 ),
        .I1(A[13]),
        .I2(\U0/B25_out ),
        .I3(A[12]),
        .I4(\U0/B23_out ),
        .I5(\U0/carry_11 ),
        .O(Cout0__13));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[22]_INST_0_i_6 
       (.I0(k),
        .I1(B[15]),
        .O(\U0/B29_out ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[22]_INST_0_i_7 
       (.I0(k),
        .I1(B[16]),
        .O(\U0/B31_out ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s[22]_INST_0_i_8 
       (.I0(B[14]),
        .I1(k),
        .I2(A[14]),
        .O(\U0/F_rest[14].F/w__0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[22]_INST_0_i_9 
       (.I0(k),
        .I1(B[13]),
        .O(\U0/B25_out ));
  LUT4 #(
    .INIT(16'h6996)) 
    \s[23]_INST_0 
       (.I0(\U0/carry_22 ),
        .I1(A[23]),
        .I2(k),
        .I3(B[23]),
        .O(s[23]));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \s[24]_INST_0 
       (.I0(A[23]),
        .I1(B[23]),
        .I2(\U0/carry_22 ),
        .I3(A[24]),
        .I4(k),
        .I5(B[24]),
        .O(s[24]));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[24]_INST_0_i_1 
       (.I0(\U0/carry_20 ),
        .I1(B[21]),
        .I2(k),
        .I3(A[21]),
        .I4(B[22]),
        .I5(A[22]),
        .O(\U0/carry_22 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \s[25]_INST_0 
       (.I0(\U0/carry_24 ),
        .I1(A[25]),
        .I2(k),
        .I3(B[25]),
        .O(s[25]));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \s[26]_INST_0 
       (.I0(A[25]),
        .I1(B[25]),
        .I2(\U0/carry_24 ),
        .I3(A[26]),
        .I4(k),
        .I5(B[26]),
        .O(s[26]));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[26]_INST_0_i_1 
       (.I0(\U0/carry_22 ),
        .I1(B[23]),
        .I2(k),
        .I3(A[23]),
        .I4(B[24]),
        .I5(A[24]),
        .O(\U0/carry_24 ));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \s[27]_INST_0 
       (.I0(A[26]),
        .I1(B[26]),
        .I2(\U0/carry_25 ),
        .I3(A[27]),
        .I4(k),
        .I5(B[27]),
        .O(s[27]));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[27]_INST_0_i_1 
       (.I0(\U0/carry_23 ),
        .I1(B[24]),
        .I2(k),
        .I3(A[24]),
        .I4(B[25]),
        .I5(A[25]),
        .O(\U0/carry_25 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[27]_INST_0_i_10 
       (.I0(k),
        .I1(B[17]),
        .O(\U0/B33_out ));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[27]_INST_0_i_2 
       (.I0(\U0/carry_21 ),
        .I1(B[22]),
        .I2(k),
        .I3(A[22]),
        .I4(B[23]),
        .I5(A[23]),
        .O(\U0/carry_23 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \s[27]_INST_0_i_3 
       (.I0(Cout00_out__18),
        .I1(Cout0__18),
        .I2(\U0/B39_out ),
        .I3(A[20]),
        .I4(\U0/B41_out ),
        .I5(A[21]),
        .O(\U0/carry_21 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \s[27]_INST_0_i_4 
       (.I0(A[19]),
        .I1(B[19]),
        .I2(k),
        .O(Cout00_out__18));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \s[27]_INST_0_i_5 
       (.I0(\U0/F_rest[19].F/w__0 ),
        .I1(A[18]),
        .I2(\U0/B35_out ),
        .I3(A[17]),
        .I4(\U0/B33_out ),
        .I5(\U0/carry_16 ),
        .O(Cout0__18));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[27]_INST_0_i_6 
       (.I0(k),
        .I1(B[20]),
        .O(\U0/B39_out ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[27]_INST_0_i_7 
       (.I0(k),
        .I1(B[21]),
        .O(\U0/B41_out ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s[27]_INST_0_i_8 
       (.I0(B[19]),
        .I1(k),
        .I2(A[19]),
        .O(\U0/F_rest[19].F/w__0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[27]_INST_0_i_9 
       (.I0(k),
        .I1(B[18]),
        .O(\U0/B35_out ));
  LUT4 #(
    .INIT(16'h6996)) 
    \s[28]_INST_0 
       (.I0(\U0/carry_27 ),
        .I1(A[28]),
        .I2(k),
        .I3(B[28]),
        .O(s[28]));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \s[29]_INST_0 
       (.I0(A[28]),
        .I1(B[28]),
        .I2(\U0/carry_27 ),
        .I3(A[29]),
        .I4(k),
        .I5(B[29]),
        .O(s[29]));
  LUT4 #(
    .INIT(16'h6996)) 
    \s[2]_INST_0 
       (.I0(\U0/carry_1 ),
        .I1(A[2]),
        .I2(k),
        .I3(B[2]),
        .O(s[2]));
  LUT6 #(
    .INIT(64'h11171777EEE8E888)) 
    \s[30]_INST_0 
       (.I0(A[29]),
        .I1(\U0/B57_out ),
        .I2(A[28]),
        .I3(\U0/B55_out ),
        .I4(\U0/carry_27 ),
        .I5(\U0/F_rest[30].F/w__0 ),
        .O(s[30]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[30]_INST_0_i_1 
       (.I0(k),
        .I1(B[28]),
        .O(\U0/B55_out ));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[30]_INST_0_i_2 
       (.I0(\U0/carry_25 ),
        .I1(B[26]),
        .I2(k),
        .I3(A[26]),
        .I4(B[27]),
        .I5(A[27]),
        .O(\U0/carry_27 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s[30]_INST_0_i_3 
       (.I0(B[30]),
        .I1(k),
        .I2(A[30]),
        .O(\U0/F_rest[30].F/w__0 ));
  LUT6 #(
    .INIT(64'h11171777EEE8E888)) 
    \s[31]_INST_0 
       (.I0(A[30]),
        .I1(\U0/B59_out ),
        .I2(A[29]),
        .I3(\U0/B57_out ),
        .I4(\U0/carry_28 ),
        .I5(\U0/F_rest[31].F/w__0 ),
        .O(s[31]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[31]_INST_0_i_1 
       (.I0(k),
        .I1(B[30]),
        .O(\U0/B59_out ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s[31]_INST_0_i_10 
       (.I0(B[24]),
        .I1(k),
        .I2(A[24]),
        .O(\U0/F_rest[24].F/w__0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[31]_INST_0_i_11 
       (.I0(k),
        .I1(B[23]),
        .O(\U0/B45_out ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[31]_INST_0_i_12 
       (.I0(k),
        .I1(B[22]),
        .O(\U0/B43_out ));
  LUT2 #(
    .INIT(4'h6)) 
    \s[31]_INST_0_i_2 
       (.I0(k),
        .I1(B[29]),
        .O(\U0/B57_out ));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[31]_INST_0_i_3 
       (.I0(\U0/carry_26 ),
        .I1(B[27]),
        .I2(k),
        .I3(A[27]),
        .I4(B[28]),
        .I5(A[28]),
        .O(\U0/carry_28 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \s[31]_INST_0_i_4 
       (.I0(B[31]),
        .I1(k),
        .I2(A[31]),
        .O(\U0/F_rest[31].F/w__0 ));
  LUT6 #(
    .INIT(64'hFFFFFEE0FEE00000)) 
    \s[31]_INST_0_i_5 
       (.I0(Cout00_out__23),
        .I1(Cout0__23),
        .I2(\U0/B49_out ),
        .I3(A[25]),
        .I4(\U0/B51_out ),
        .I5(A[26]),
        .O(\U0/carry_26 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \s[31]_INST_0_i_6 
       (.I0(A[24]),
        .I1(B[24]),
        .I2(k),
        .O(Cout00_out__23));
  LUT6 #(
    .INIT(64'hA8A8A880A8808080)) 
    \s[31]_INST_0_i_7 
       (.I0(\U0/F_rest[24].F/w__0 ),
        .I1(A[23]),
        .I2(\U0/B45_out ),
        .I3(A[22]),
        .I4(\U0/B43_out ),
        .I5(\U0/carry_21 ),
        .O(Cout0__23));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[31]_INST_0_i_8 
       (.I0(k),
        .I1(B[25]),
        .O(\U0/B49_out ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s[31]_INST_0_i_9 
       (.I0(k),
        .I1(B[26]),
        .O(\U0/B51_out ));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \s[3]_INST_0 
       (.I0(A[2]),
        .I1(B[2]),
        .I2(\U0/carry_1 ),
        .I3(A[3]),
        .I4(k),
        .I5(B[3]),
        .O(s[3]));
  LUT5 #(
    .INIT(32'hF7EA40A2)) 
    \s[3]_INST_0_i_1 
       (.I0(k),
        .I1(B[0]),
        .I2(A[0]),
        .I3(B[1]),
        .I4(A[1]),
        .O(\U0/carry_1 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \s[4]_INST_0 
       (.I0(\U0/carry_3 ),
        .I1(A[4]),
        .I2(k),
        .I3(B[4]),
        .O(s[4]));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \s[5]_INST_0 
       (.I0(A[4]),
        .I1(B[4]),
        .I2(\U0/carry_3 ),
        .I3(A[5]),
        .I4(k),
        .I5(B[5]),
        .O(s[5]));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[5]_INST_0_i_1 
       (.I0(\U0/carry_1 ),
        .I1(B[2]),
        .I2(k),
        .I3(A[2]),
        .I4(B[3]),
        .I5(A[3]),
        .O(\U0/carry_3 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \s[6]_INST_0 
       (.I0(\U0/carry_5 ),
        .I1(A[6]),
        .I2(k),
        .I3(B[6]),
        .O(s[6]));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \s[7]_INST_0 
       (.I0(A[6]),
        .I1(B[6]),
        .I2(\U0/carry_5 ),
        .I3(A[7]),
        .I4(k),
        .I5(B[7]),
        .O(s[7]));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[7]_INST_0_i_1 
       (.I0(\U0/carry_3 ),
        .I1(B[4]),
        .I2(k),
        .I3(A[4]),
        .I4(B[5]),
        .I5(A[5]),
        .O(\U0/carry_5 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \s[8]_INST_0 
       (.I0(\U0/carry_7 ),
        .I1(A[8]),
        .I2(k),
        .I3(B[8]),
        .O(s[8]));
  LUT6 #(
    .INIT(64'h4DB2E817B24D17E8)) 
    \s[9]_INST_0 
       (.I0(A[8]),
        .I1(B[8]),
        .I2(\U0/carry_7 ),
        .I3(A[9]),
        .I4(k),
        .I5(B[9]),
        .O(s[9]));
  LUT6 #(
    .INIT(64'hBF2FFEF80E08B020)) 
    \s[9]_INST_0_i_1 
       (.I0(\U0/carry_5 ),
        .I1(B[6]),
        .I2(k),
        .I3(A[6]),
        .I4(B[7]),
        .I5(A[7]),
        .O(\U0/carry_7 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
