// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Dec  5 12:24:01 2019
// Host        : The_Ghost_TWO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_hw_conv_0_0_sim_netlist.v
// Design      : system_hw_conv_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv
   (ap_clk,
    ap_rst_n,
    sin_TDATA,
    sin_TVALID,
    sin_TREADY,
    sin_TKEEP,
    sin_TSTRB,
    sin_TUSER,
    sin_TLAST,
    sin_TID,
    sin_TDEST,
    sout_TDATA,
    sout_TVALID,
    sout_TREADY,
    sout_TKEEP,
    sout_TSTRB,
    sout_TUSER,
    sout_TLAST,
    sout_TID,
    sout_TDEST);
  input ap_clk;
  input ap_rst_n;
  input [7:0]sin_TDATA;
  input sin_TVALID;
  output sin_TREADY;
  input [0:0]sin_TKEEP;
  input [0:0]sin_TSTRB;
  input [0:0]sin_TUSER;
  input [0:0]sin_TLAST;
  input [0:0]sin_TID;
  input [0:0]sin_TDEST;
  output [7:0]sout_TDATA;
  output sout_TVALID;
  input sout_TREADY;
  output [0:0]sout_TKEEP;
  output [0:0]sout_TSTRB;
  output [0:0]sout_TUSER;
  output [0:0]sout_TLAST;
  output [0:0]sout_TID;
  output [0:0]sout_TDEST;

  wire \<const0> ;
  wire \<const1> ;
  wire \ap_CS_fsm[0]_i_2_n_2 ;
  wire \ap_CS_fsm[0]_i_3_n_2 ;
  wire \ap_CS_fsm[0]_i_4_n_2 ;
  wire \ap_CS_fsm[2]_i_2_n_2 ;
  wire ap_CS_fsm_pp0_stage0;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state6;
  wire [2:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1_n_2;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_2;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_i_1_n_2;
  wire ap_enable_reg_pp0_iter3_i_1_n_2;
  wire ap_enable_reg_pp0_iter3_reg_n_2;
  wire ap_rst_n;
  wire ce0;
  wire ce1;
  wire exitcond1_fu_251_p2;
  wire exitcond1_reg_6200;
  wire \exitcond1_reg_620[0]_i_2_n_2 ;
  wire \exitcond1_reg_620[0]_i_3_n_2 ;
  wire \exitcond1_reg_620_reg_n_2_[0] ;
  wire i_reg_226;
  wire i_reg_2260;
  wire \i_reg_226[0]_i_4_n_2 ;
  wire [18:18]i_reg_226_reg;
  wire \i_reg_226_reg[0]_i_3_n_2 ;
  wire \i_reg_226_reg[0]_i_3_n_3 ;
  wire \i_reg_226_reg[0]_i_3_n_4 ;
  wire \i_reg_226_reg[0]_i_3_n_5 ;
  wire \i_reg_226_reg[0]_i_3_n_6 ;
  wire \i_reg_226_reg[0]_i_3_n_7 ;
  wire \i_reg_226_reg[0]_i_3_n_8 ;
  wire \i_reg_226_reg[0]_i_3_n_9 ;
  wire \i_reg_226_reg[12]_i_1_n_2 ;
  wire \i_reg_226_reg[12]_i_1_n_3 ;
  wire \i_reg_226_reg[12]_i_1_n_4 ;
  wire \i_reg_226_reg[12]_i_1_n_5 ;
  wire \i_reg_226_reg[12]_i_1_n_6 ;
  wire \i_reg_226_reg[12]_i_1_n_7 ;
  wire \i_reg_226_reg[12]_i_1_n_8 ;
  wire \i_reg_226_reg[12]_i_1_n_9 ;
  wire \i_reg_226_reg[16]_i_1_n_4 ;
  wire \i_reg_226_reg[16]_i_1_n_5 ;
  wire \i_reg_226_reg[16]_i_1_n_7 ;
  wire \i_reg_226_reg[16]_i_1_n_8 ;
  wire \i_reg_226_reg[16]_i_1_n_9 ;
  wire \i_reg_226_reg[4]_i_1_n_2 ;
  wire \i_reg_226_reg[4]_i_1_n_3 ;
  wire \i_reg_226_reg[4]_i_1_n_4 ;
  wire \i_reg_226_reg[4]_i_1_n_5 ;
  wire \i_reg_226_reg[4]_i_1_n_6 ;
  wire \i_reg_226_reg[4]_i_1_n_7 ;
  wire \i_reg_226_reg[4]_i_1_n_8 ;
  wire \i_reg_226_reg[4]_i_1_n_9 ;
  wire \i_reg_226_reg[8]_i_1_n_2 ;
  wire \i_reg_226_reg[8]_i_1_n_3 ;
  wire \i_reg_226_reg[8]_i_1_n_4 ;
  wire \i_reg_226_reg[8]_i_1_n_5 ;
  wire \i_reg_226_reg[8]_i_1_n_6 ;
  wire \i_reg_226_reg[8]_i_1_n_7 ;
  wire \i_reg_226_reg[8]_i_1_n_8 ;
  wire \i_reg_226_reg[8]_i_1_n_9 ;
  wire [17:0]i_reg_226_reg__0;
  wire [7:0]kbuf_0_0_fu_106;
  wire [7:0]kbuf_0_1_fu_110;
  wire [7:0]kbuf_1_0_fu_118;
  wire [7:0]kbuf_1_0_s_fu_114;
  wire [7:0]kbuf_1_1_load_reg_664;
  wire kbuf_1_1_load_reg_6640;
  wire [7:0]kbuf_1_2_reg_669;
  wire [7:0]kbuf_2_0_fu_130;
  wire [7:0]kbuf_2_0_load_6_reg_658;
  wire [7:0]kbuf_2_0_s_fu_126;
  wire [7:0]kbuf_2_1_1_reg_613;
  wire [7:0]kbuf_2_1_fu_134;
  wire \kbuf_2_1_fu_134[7]_i_1_n_2 ;
  wire lbuf_0_addr_reg_6290;
  wire [7:0]lbuf_0_q0;
  wire lbuf_1_U_n_13;
  wire [8:0]lbuf_1_addr_reg_635;
  wire [7:0]lbuf_1_q0;
  wire [18:0]next_urem_fu_298_p2;
  wire \phi_urem_reg_237[0]_i_11_n_2 ;
  wire \phi_urem_reg_237[0]_i_1_n_2 ;
  wire \phi_urem_reg_237[0]_i_3_n_2 ;
  wire \phi_urem_reg_237[0]_i_4_n_2 ;
  wire \phi_urem_reg_237[0]_i_8_n_2 ;
  wire [8:0]phi_urem_reg_237_reg;
  wire \phi_urem_reg_237_reg[0]_i_10_n_2 ;
  wire \phi_urem_reg_237_reg[0]_i_10_n_3 ;
  wire \phi_urem_reg_237_reg[0]_i_10_n_4 ;
  wire \phi_urem_reg_237_reg[0]_i_10_n_5 ;
  wire \phi_urem_reg_237_reg[0]_i_12_n_2 ;
  wire \phi_urem_reg_237_reg[0]_i_12_n_3 ;
  wire \phi_urem_reg_237_reg[0]_i_12_n_4 ;
  wire \phi_urem_reg_237_reg[0]_i_12_n_5 ;
  wire \phi_urem_reg_237_reg[0]_i_2_n_2 ;
  wire \phi_urem_reg_237_reg[0]_i_2_n_3 ;
  wire \phi_urem_reg_237_reg[0]_i_2_n_4 ;
  wire \phi_urem_reg_237_reg[0]_i_2_n_5 ;
  wire \phi_urem_reg_237_reg[0]_i_2_n_6 ;
  wire \phi_urem_reg_237_reg[0]_i_2_n_7 ;
  wire \phi_urem_reg_237_reg[0]_i_2_n_8 ;
  wire \phi_urem_reg_237_reg[0]_i_2_n_9 ;
  wire \phi_urem_reg_237_reg[0]_i_5_n_2 ;
  wire \phi_urem_reg_237_reg[0]_i_5_n_3 ;
  wire \phi_urem_reg_237_reg[0]_i_5_n_4 ;
  wire \phi_urem_reg_237_reg[0]_i_5_n_5 ;
  wire \phi_urem_reg_237_reg[0]_i_7_n_2 ;
  wire \phi_urem_reg_237_reg[0]_i_7_n_3 ;
  wire \phi_urem_reg_237_reg[0]_i_7_n_4 ;
  wire \phi_urem_reg_237_reg[0]_i_7_n_5 ;
  wire \phi_urem_reg_237_reg[0]_i_9_n_5 ;
  wire \phi_urem_reg_237_reg[12]_i_1_n_2 ;
  wire \phi_urem_reg_237_reg[12]_i_1_n_3 ;
  wire \phi_urem_reg_237_reg[12]_i_1_n_4 ;
  wire \phi_urem_reg_237_reg[12]_i_1_n_5 ;
  wire \phi_urem_reg_237_reg[12]_i_1_n_6 ;
  wire \phi_urem_reg_237_reg[12]_i_1_n_7 ;
  wire \phi_urem_reg_237_reg[12]_i_1_n_8 ;
  wire \phi_urem_reg_237_reg[12]_i_1_n_9 ;
  wire \phi_urem_reg_237_reg[16]_i_1_n_4 ;
  wire \phi_urem_reg_237_reg[16]_i_1_n_5 ;
  wire \phi_urem_reg_237_reg[16]_i_1_n_7 ;
  wire \phi_urem_reg_237_reg[16]_i_1_n_8 ;
  wire \phi_urem_reg_237_reg[16]_i_1_n_9 ;
  wire \phi_urem_reg_237_reg[4]_i_1_n_2 ;
  wire \phi_urem_reg_237_reg[4]_i_1_n_3 ;
  wire \phi_urem_reg_237_reg[4]_i_1_n_4 ;
  wire \phi_urem_reg_237_reg[4]_i_1_n_5 ;
  wire \phi_urem_reg_237_reg[4]_i_1_n_6 ;
  wire \phi_urem_reg_237_reg[4]_i_1_n_7 ;
  wire \phi_urem_reg_237_reg[4]_i_1_n_8 ;
  wire \phi_urem_reg_237_reg[4]_i_1_n_9 ;
  wire \phi_urem_reg_237_reg[8]_i_1_n_2 ;
  wire \phi_urem_reg_237_reg[8]_i_1_n_3 ;
  wire \phi_urem_reg_237_reg[8]_i_1_n_4 ;
  wire \phi_urem_reg_237_reg[8]_i_1_n_5 ;
  wire \phi_urem_reg_237_reg[8]_i_1_n_6 ;
  wire \phi_urem_reg_237_reg[8]_i_1_n_7 ;
  wire \phi_urem_reg_237_reg[8]_i_1_n_8 ;
  wire \phi_urem_reg_237_reg[8]_i_1_n_9 ;
  wire [18:9]phi_urem_reg_237_reg__0;
  wire reset;
  wire [9:0]result_3_1_fu_420_p2;
  wire [9:0]result_3_1_reg_674;
  wire [7:0]sin_TDATA;
  wire sin_TREADY;
  wire sin_TVALID;
  wire sin_V_data_V_0_ack_in;
  wire [7:0]sin_V_data_V_0_data_out;
  wire sin_V_data_V_0_load_A;
  wire sin_V_data_V_0_load_B;
  wire [7:0]sin_V_data_V_0_payload_A;
  wire [7:0]sin_V_data_V_0_payload_B;
  wire sin_V_data_V_0_sel;
  wire sin_V_data_V_0_sel_rd_i_1_n_2;
  wire sin_V_data_V_0_sel_wr;
  wire sin_V_data_V_0_sel_wr_i_1_n_2;
  wire [1:1]sin_V_data_V_0_state;
  wire \sin_V_data_V_0_state[0]_i_1_n_2 ;
  wire \sin_V_data_V_0_state_reg_n_2_[0] ;
  wire [1:1]sin_V_dest_V_0_state;
  wire \sin_V_dest_V_0_state[0]_i_1_n_2 ;
  wire \sin_V_dest_V_0_state_reg_n_2_[0] ;
  wire [7:0]sout_TDATA;
  wire [0:0]sout_TLAST;
  wire sout_TREADY;
  wire sout_TVALID;
  wire sout_V_data_V_1_ack_in;
  wire sout_V_data_V_1_load_A;
  wire sout_V_data_V_1_load_B;
  wire [7:0]sout_V_data_V_1_payload_A;
  wire \sout_V_data_V_1_payload_A[0]_i_1_n_2 ;
  wire \sout_V_data_V_1_payload_A[1]_i_1_n_2 ;
  wire \sout_V_data_V_1_payload_A[2]_i_1_n_2 ;
  wire \sout_V_data_V_1_payload_A[3]_i_10_n_2 ;
  wire \sout_V_data_V_1_payload_A[3]_i_1_n_2 ;
  wire \sout_V_data_V_1_payload_A[3]_i_3_n_2 ;
  wire \sout_V_data_V_1_payload_A[3]_i_4_n_2 ;
  wire \sout_V_data_V_1_payload_A[3]_i_5_n_2 ;
  wire \sout_V_data_V_1_payload_A[3]_i_6_n_2 ;
  wire \sout_V_data_V_1_payload_A[3]_i_7_n_2 ;
  wire \sout_V_data_V_1_payload_A[3]_i_8_n_2 ;
  wire \sout_V_data_V_1_payload_A[3]_i_9_n_2 ;
  wire \sout_V_data_V_1_payload_A[4]_i_1_n_2 ;
  wire \sout_V_data_V_1_payload_A[5]_i_1_n_2 ;
  wire \sout_V_data_V_1_payload_A[6]_i_1_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_11_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_12_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_13_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_14_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_15_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_16_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_17_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_18_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_19_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_1_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_20_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_22_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_23_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_24_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_25_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_26_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_27_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_28_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_29_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_31_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_32_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_33_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_34_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_35_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_36_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_37_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_38_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_39_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_3_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_40_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_41_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_42_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_43_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_44_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_45_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_46_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_47_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_48_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_49_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_50_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_51_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_52_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_53_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_54_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_55_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_56_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_57_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_58_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_8_n_2 ;
  wire \sout_V_data_V_1_payload_A[7]_i_9_n_2 ;
  wire \sout_V_data_V_1_payload_A_reg[3]_i_2_n_2 ;
  wire \sout_V_data_V_1_payload_A_reg[3]_i_2_n_3 ;
  wire \sout_V_data_V_1_payload_A_reg[3]_i_2_n_4 ;
  wire \sout_V_data_V_1_payload_A_reg[3]_i_2_n_5 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_10_n_9 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_21_n_2 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_21_n_3 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_21_n_4 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_21_n_5 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_30_n_2 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_30_n_3 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_30_n_4 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_30_n_5 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_30_n_6 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_30_n_7 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_30_n_8 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_30_n_9 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_4_n_3 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_4_n_4 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_4_n_5 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_5_n_3 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_5_n_4 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_5_n_5 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_6_n_2 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_6_n_3 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_6_n_4 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_6_n_5 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_7_n_2 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_7_n_3 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_7_n_4 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_7_n_5 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_7_n_6 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_7_n_7 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_7_n_8 ;
  wire \sout_V_data_V_1_payload_A_reg[7]_i_7_n_9 ;
  wire [7:0]sout_V_data_V_1_payload_B;
  wire \sout_V_data_V_1_payload_B[7]_i_1_n_2 ;
  wire sout_V_data_V_1_sel;
  wire sout_V_data_V_1_sel_rd_i_1_n_2;
  wire sout_V_data_V_1_sel_wr;
  wire sout_V_data_V_1_sel_wr_i_1_n_2;
  wire \sout_V_data_V_1_state[0]_i_1_n_2 ;
  wire \sout_V_data_V_1_state[1]_i_1_n_2 ;
  wire \sout_V_data_V_1_state_reg_n_2_[0] ;
  wire \sout_V_dest_V_1_state[0]_i_1_n_2 ;
  wire \sout_V_dest_V_1_state[0]_i_2_n_2 ;
  wire \sout_V_dest_V_1_state[1]_i_1_n_2 ;
  wire \sout_V_dest_V_1_state_reg_n_2_[1] ;
  wire \sout_V_id_V_1_state[0]_i_1_n_2 ;
  wire \sout_V_id_V_1_state[1]_i_1_n_2 ;
  wire \sout_V_id_V_1_state_reg_n_2_[0] ;
  wire \sout_V_id_V_1_state_reg_n_2_[1] ;
  wire \sout_V_keep_V_1_state[0]_i_1_n_2 ;
  wire \sout_V_keep_V_1_state[1]_i_1_n_2 ;
  wire \sout_V_keep_V_1_state_reg_n_2_[0] ;
  wire \sout_V_keep_V_1_state_reg_n_2_[1] ;
  wire sout_V_last_V_1_ack_in;
  wire sout_V_last_V_1_payload_A;
  wire \sout_V_last_V_1_payload_A[0]_i_1_n_2 ;
  wire sout_V_last_V_1_payload_B;
  wire \sout_V_last_V_1_payload_B[0]_i_1_n_2 ;
  wire sout_V_last_V_1_sel;
  wire sout_V_last_V_1_sel_rd_i_1_n_2;
  wire sout_V_last_V_1_sel_wr;
  wire sout_V_last_V_1_sel_wr_i_1_n_2;
  wire [1:1]sout_V_last_V_1_state;
  wire \sout_V_last_V_1_state[0]_i_1_n_2 ;
  wire \sout_V_last_V_1_state_reg_n_2_[0] ;
  wire \sout_V_strb_V_1_state[0]_i_1_n_2 ;
  wire \sout_V_strb_V_1_state[1]_i_1_n_2 ;
  wire \sout_V_strb_V_1_state_reg_n_2_[0] ;
  wire \sout_V_strb_V_1_state_reg_n_2_[1] ;
  wire \sout_V_user_V_1_state[0]_i_1_n_2 ;
  wire \sout_V_user_V_1_state[1]_i_1_n_2 ;
  wire \sout_V_user_V_1_state_reg_n_2_[0] ;
  wire \sout_V_user_V_1_state_reg_n_2_[1] ;
  wire [7:0]tmp3_fu_453_p2;
  wire [7:0]tmp3_reg_684;
  wire \tmp3_reg_684[3]_i_2_n_2 ;
  wire \tmp3_reg_684[3]_i_3_n_2 ;
  wire \tmp3_reg_684[3]_i_4_n_2 ;
  wire \tmp3_reg_684[3]_i_5_n_2 ;
  wire \tmp3_reg_684[7]_i_2_n_2 ;
  wire \tmp3_reg_684[7]_i_3_n_2 ;
  wire \tmp3_reg_684[7]_i_4_n_2 ;
  wire \tmp3_reg_684[7]_i_5_n_2 ;
  wire \tmp3_reg_684_reg[3]_i_1_n_2 ;
  wire \tmp3_reg_684_reg[3]_i_1_n_3 ;
  wire \tmp3_reg_684_reg[3]_i_1_n_4 ;
  wire \tmp3_reg_684_reg[3]_i_1_n_5 ;
  wire \tmp3_reg_684_reg[7]_i_1_n_3 ;
  wire \tmp3_reg_684_reg[7]_i_1_n_4 ;
  wire \tmp3_reg_684_reg[7]_i_1_n_5 ;
  wire [9:0]tmp6_fu_447_p2;
  wire [9:0]tmp6_reg_679;
  wire [3:3]tmp_4_fu_500_p4;
  wire [2:0]tmp_4_fu_500_p4__0;
  wire [7:0]tmp_6_fu_533_p2;
  wire tmp_7_fu_286_p2;
  wire tmp_7_reg_644;
  wire \tmp_7_reg_644[0]_i_3_n_2 ;
  wire \tmp_7_reg_644[0]_i_4_n_2 ;
  wire \tmp_7_reg_644[0]_i_5_n_2 ;
  wire \tmp_7_reg_644[0]_i_6_n_2 ;
  wire tmp_7_reg_644_pp0_iter1_reg;
  wire tmp_7_reg_644_pp0_iter2_reg;
  wire \tmp_7_reg_644_pp0_iter2_reg[0]_i_1_n_2 ;
  wire \tmp_last_V_reg_648[0]_i_1_n_2 ;
  wire \tmp_last_V_reg_648[0]_i_2_n_2 ;
  wire tmp_last_V_reg_648_pp0_iter1_reg;
  wire \tmp_last_V_reg_648_reg_n_2_[0] ;
  wire we1;
  wire [3:2]\NLW_i_reg_226_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_reg_226_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_phi_urem_reg_237_reg[0]_i_9_CO_UNCONNECTED ;
  wire [3:2]\NLW_phi_urem_reg_237_reg[0]_i_9_O_UNCONNECTED ;
  wire [3:2]\NLW_phi_urem_reg_237_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_phi_urem_reg_237_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_sout_V_data_V_1_payload_A_reg[7]_i_10_CO_UNCONNECTED ;
  wire [3:1]\NLW_sout_V_data_V_1_payload_A_reg[7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_sout_V_data_V_1_payload_A_reg[7]_i_21_O_UNCONNECTED ;
  wire [3:3]\NLW_sout_V_data_V_1_payload_A_reg[7]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_sout_V_data_V_1_payload_A_reg[7]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_sout_V_data_V_1_payload_A_reg[7]_i_6_O_UNCONNECTED ;
  wire [3:3]\NLW_tmp3_reg_684_reg[7]_i_1_CO_UNCONNECTED ;

  assign sout_TDEST[0] = \<const0> ;
  assign sout_TID[0] = \<const0> ;
  assign sout_TKEEP[0] = \<const1> ;
  assign sout_TSTRB[0] = \<const0> ;
  assign sout_TUSER[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\ap_CS_fsm[0]_i_2_n_2 ),
        .I1(\ap_CS_fsm[0]_i_3_n_2 ),
        .I2(\ap_CS_fsm[0]_i_4_n_2 ),
        .I3(sout_TVALID),
        .I4(\sout_V_dest_V_1_state_reg_n_2_[1] ),
        .I5(\sout_V_data_V_1_state_reg_n_2_[0] ),
        .O(ap_NS_fsm[0]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(\sout_V_keep_V_1_state_reg_n_2_[1] ),
        .I1(sout_V_last_V_1_ack_in),
        .I2(\sout_V_user_V_1_state_reg_n_2_[0] ),
        .I3(\sout_V_last_V_1_state_reg_n_2_[0] ),
        .O(\ap_CS_fsm[0]_i_2_n_2 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \ap_CS_fsm[0]_i_3 
       (.I0(\sout_V_id_V_1_state_reg_n_2_[0] ),
        .I1(sout_V_data_V_1_ack_in),
        .I2(\sout_V_user_V_1_state_reg_n_2_[1] ),
        .I3(\sout_V_id_V_1_state_reg_n_2_[1] ),
        .O(\ap_CS_fsm[0]_i_3_n_2 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \ap_CS_fsm[0]_i_4 
       (.I0(\sout_V_strb_V_1_state_reg_n_2_[1] ),
        .I1(\sout_V_strb_V_1_state_reg_n_2_[0] ),
        .I2(ap_CS_fsm_state6),
        .I3(\sout_V_keep_V_1_state_reg_n_2_[0] ),
        .O(\ap_CS_fsm[0]_i_4_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_state1),
        .I1(\ap_CS_fsm[2]_i_2_n_2 ),
        .I2(ap_CS_fsm_state6),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_NS_fsm[0]),
        .I1(ap_CS_fsm_state6),
        .I2(\ap_CS_fsm[2]_i_2_n_2 ),
        .I3(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[2]));
  LUT6 #(
    .INIT(64'h0000000055550400)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(lbuf_1_U_n_13),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_enable_reg_pp0_iter3_reg_n_2),
        .I5(ap_enable_reg_pp0_iter2),
        .O(\ap_CS_fsm[2]_i_2_n_2 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_state1),
        .S(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(reset));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state6),
        .R(reset));
  LUT6 #(
    .INIT(64'hBFBFBF0000000000)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(lbuf_1_U_n_13),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(exitcond1_fu_251_p2),
        .I3(ap_CS_fsm_state1),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_rst_n),
        .O(ap_enable_reg_pp0_iter0_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1_n_2),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(lbuf_1_U_n_13),
        .I2(ap_enable_reg_pp0_iter1),
        .O(ap_enable_reg_pp0_iter1_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_2),
        .Q(ap_enable_reg_pp0_iter1),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF808)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(lbuf_1_U_n_13),
        .I3(ap_enable_reg_pp0_iter2),
        .O(ap_enable_reg_pp0_iter2_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1_n_2),
        .Q(ap_enable_reg_pp0_iter2),
        .R(reset));
  LUT5 #(
    .INIT(32'h4F400000)) 
    ap_enable_reg_pp0_iter3_i_1
       (.I0(ap_CS_fsm_state1),
        .I1(ap_enable_reg_pp0_iter3_reg_n_2),
        .I2(lbuf_1_U_n_13),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(ap_rst_n),
        .O(ap_enable_reg_pp0_iter3_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter3_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter3_i_1_n_2),
        .Q(ap_enable_reg_pp0_iter3_reg_n_2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \exitcond1_reg_620[0]_i_1 
       (.I0(\exitcond1_reg_620[0]_i_2_n_2 ),
        .I1(i_reg_226_reg__0[3]),
        .I2(i_reg_226_reg__0[4]),
        .I3(i_reg_226_reg__0[12]),
        .I4(i_reg_226_reg__0[0]),
        .I5(\exitcond1_reg_620[0]_i_3_n_2 ),
        .O(exitcond1_fu_251_p2));
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \exitcond1_reg_620[0]_i_2 
       (.I0(\tmp_7_reg_644[0]_i_4_n_2 ),
        .I1(i_reg_226_reg__0[9]),
        .I2(i_reg_226_reg),
        .I3(i_reg_226_reg__0[1]),
        .I4(\tmp_7_reg_644[0]_i_6_n_2 ),
        .O(\exitcond1_reg_620[0]_i_2_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \exitcond1_reg_620[0]_i_3 
       (.I0(i_reg_226_reg__0[2]),
        .I1(i_reg_226_reg__0[11]),
        .I2(i_reg_226_reg__0[17]),
        .I3(i_reg_226_reg__0[10]),
        .O(\exitcond1_reg_620[0]_i_3_n_2 ));
  FDRE \exitcond1_reg_620_reg[0] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(exitcond1_fu_251_p2),
        .Q(\exitcond1_reg_620_reg_n_2_[0] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \i_reg_226[0]_i_1 
       (.I0(ap_CS_fsm_state1),
        .I1(i_reg_2260),
        .O(i_reg_226));
  LUT4 #(
    .INIT(16'h0400)) 
    \i_reg_226[0]_i_2 
       (.I0(lbuf_1_U_n_13),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(exitcond1_fu_251_p2),
        .I3(ap_enable_reg_pp0_iter0),
        .O(i_reg_2260));
  LUT1 #(
    .INIT(2'h1)) 
    \i_reg_226[0]_i_4 
       (.I0(i_reg_226_reg__0[0]),
        .O(\i_reg_226[0]_i_4_n_2 ));
  FDRE \i_reg_226_reg[0] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[0]_i_3_n_9 ),
        .Q(i_reg_226_reg__0[0]),
        .R(i_reg_226));
  CARRY4 \i_reg_226_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\i_reg_226_reg[0]_i_3_n_2 ,\i_reg_226_reg[0]_i_3_n_3 ,\i_reg_226_reg[0]_i_3_n_4 ,\i_reg_226_reg[0]_i_3_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_reg_226_reg[0]_i_3_n_6 ,\i_reg_226_reg[0]_i_3_n_7 ,\i_reg_226_reg[0]_i_3_n_8 ,\i_reg_226_reg[0]_i_3_n_9 }),
        .S({i_reg_226_reg__0[3:1],\i_reg_226[0]_i_4_n_2 }));
  FDRE \i_reg_226_reg[10] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[8]_i_1_n_7 ),
        .Q(i_reg_226_reg__0[10]),
        .R(i_reg_226));
  FDRE \i_reg_226_reg[11] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[8]_i_1_n_6 ),
        .Q(i_reg_226_reg__0[11]),
        .R(i_reg_226));
  FDRE \i_reg_226_reg[12] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[12]_i_1_n_9 ),
        .Q(i_reg_226_reg__0[12]),
        .R(i_reg_226));
  CARRY4 \i_reg_226_reg[12]_i_1 
       (.CI(\i_reg_226_reg[8]_i_1_n_2 ),
        .CO({\i_reg_226_reg[12]_i_1_n_2 ,\i_reg_226_reg[12]_i_1_n_3 ,\i_reg_226_reg[12]_i_1_n_4 ,\i_reg_226_reg[12]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg_226_reg[12]_i_1_n_6 ,\i_reg_226_reg[12]_i_1_n_7 ,\i_reg_226_reg[12]_i_1_n_8 ,\i_reg_226_reg[12]_i_1_n_9 }),
        .S(i_reg_226_reg__0[15:12]));
  FDRE \i_reg_226_reg[13] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[12]_i_1_n_8 ),
        .Q(i_reg_226_reg__0[13]),
        .R(i_reg_226));
  FDRE \i_reg_226_reg[14] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[12]_i_1_n_7 ),
        .Q(i_reg_226_reg__0[14]),
        .R(i_reg_226));
  FDRE \i_reg_226_reg[15] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[12]_i_1_n_6 ),
        .Q(i_reg_226_reg__0[15]),
        .R(i_reg_226));
  FDRE \i_reg_226_reg[16] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[16]_i_1_n_9 ),
        .Q(i_reg_226_reg__0[16]),
        .R(i_reg_226));
  CARRY4 \i_reg_226_reg[16]_i_1 
       (.CI(\i_reg_226_reg[12]_i_1_n_2 ),
        .CO({\NLW_i_reg_226_reg[16]_i_1_CO_UNCONNECTED [3:2],\i_reg_226_reg[16]_i_1_n_4 ,\i_reg_226_reg[16]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_reg_226_reg[16]_i_1_O_UNCONNECTED [3],\i_reg_226_reg[16]_i_1_n_7 ,\i_reg_226_reg[16]_i_1_n_8 ,\i_reg_226_reg[16]_i_1_n_9 }),
        .S({1'b0,i_reg_226_reg,i_reg_226_reg__0[17:16]}));
  FDRE \i_reg_226_reg[17] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[16]_i_1_n_8 ),
        .Q(i_reg_226_reg__0[17]),
        .R(i_reg_226));
  FDRE \i_reg_226_reg[18] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[16]_i_1_n_7 ),
        .Q(i_reg_226_reg),
        .R(i_reg_226));
  FDRE \i_reg_226_reg[1] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[0]_i_3_n_8 ),
        .Q(i_reg_226_reg__0[1]),
        .R(i_reg_226));
  FDRE \i_reg_226_reg[2] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[0]_i_3_n_7 ),
        .Q(i_reg_226_reg__0[2]),
        .R(i_reg_226));
  FDRE \i_reg_226_reg[3] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[0]_i_3_n_6 ),
        .Q(i_reg_226_reg__0[3]),
        .R(i_reg_226));
  FDRE \i_reg_226_reg[4] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[4]_i_1_n_9 ),
        .Q(i_reg_226_reg__0[4]),
        .R(i_reg_226));
  CARRY4 \i_reg_226_reg[4]_i_1 
       (.CI(\i_reg_226_reg[0]_i_3_n_2 ),
        .CO({\i_reg_226_reg[4]_i_1_n_2 ,\i_reg_226_reg[4]_i_1_n_3 ,\i_reg_226_reg[4]_i_1_n_4 ,\i_reg_226_reg[4]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg_226_reg[4]_i_1_n_6 ,\i_reg_226_reg[4]_i_1_n_7 ,\i_reg_226_reg[4]_i_1_n_8 ,\i_reg_226_reg[4]_i_1_n_9 }),
        .S(i_reg_226_reg__0[7:4]));
  FDRE \i_reg_226_reg[5] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[4]_i_1_n_8 ),
        .Q(i_reg_226_reg__0[5]),
        .R(i_reg_226));
  FDRE \i_reg_226_reg[6] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[4]_i_1_n_7 ),
        .Q(i_reg_226_reg__0[6]),
        .R(i_reg_226));
  FDRE \i_reg_226_reg[7] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[4]_i_1_n_6 ),
        .Q(i_reg_226_reg__0[7]),
        .R(i_reg_226));
  FDRE \i_reg_226_reg[8] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[8]_i_1_n_9 ),
        .Q(i_reg_226_reg__0[8]),
        .R(i_reg_226));
  CARRY4 \i_reg_226_reg[8]_i_1 
       (.CI(\i_reg_226_reg[4]_i_1_n_2 ),
        .CO({\i_reg_226_reg[8]_i_1_n_2 ,\i_reg_226_reg[8]_i_1_n_3 ,\i_reg_226_reg[8]_i_1_n_4 ,\i_reg_226_reg[8]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg_226_reg[8]_i_1_n_6 ,\i_reg_226_reg[8]_i_1_n_7 ,\i_reg_226_reg[8]_i_1_n_8 ,\i_reg_226_reg[8]_i_1_n_9 }),
        .S(i_reg_226_reg__0[11:8]));
  FDRE \i_reg_226_reg[9] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\i_reg_226_reg[8]_i_1_n_8 ),
        .Q(i_reg_226_reg__0[9]),
        .R(i_reg_226));
  FDRE \kbuf_0_0_fu_106_reg[0] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_0_1_fu_110[0]),
        .Q(kbuf_0_0_fu_106[0]),
        .R(1'b0));
  FDRE \kbuf_0_0_fu_106_reg[1] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_0_1_fu_110[1]),
        .Q(kbuf_0_0_fu_106[1]),
        .R(1'b0));
  FDRE \kbuf_0_0_fu_106_reg[2] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_0_1_fu_110[2]),
        .Q(kbuf_0_0_fu_106[2]),
        .R(1'b0));
  FDRE \kbuf_0_0_fu_106_reg[3] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_0_1_fu_110[3]),
        .Q(kbuf_0_0_fu_106[3]),
        .R(1'b0));
  FDRE \kbuf_0_0_fu_106_reg[4] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_0_1_fu_110[4]),
        .Q(kbuf_0_0_fu_106[4]),
        .R(1'b0));
  FDRE \kbuf_0_0_fu_106_reg[5] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_0_1_fu_110[5]),
        .Q(kbuf_0_0_fu_106[5]),
        .R(1'b0));
  FDRE \kbuf_0_0_fu_106_reg[6] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_0_1_fu_110[6]),
        .Q(kbuf_0_0_fu_106[6]),
        .R(1'b0));
  FDRE \kbuf_0_0_fu_106_reg[7] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_0_1_fu_110[7]),
        .Q(kbuf_0_0_fu_106[7]),
        .R(1'b0));
  FDRE \kbuf_0_1_fu_110_reg[0] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_0_q0[0]),
        .Q(kbuf_0_1_fu_110[0]),
        .R(1'b0));
  FDRE \kbuf_0_1_fu_110_reg[1] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_0_q0[1]),
        .Q(kbuf_0_1_fu_110[1]),
        .R(1'b0));
  FDRE \kbuf_0_1_fu_110_reg[2] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_0_q0[2]),
        .Q(kbuf_0_1_fu_110[2]),
        .R(1'b0));
  FDRE \kbuf_0_1_fu_110_reg[3] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_0_q0[3]),
        .Q(kbuf_0_1_fu_110[3]),
        .R(1'b0));
  FDRE \kbuf_0_1_fu_110_reg[4] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_0_q0[4]),
        .Q(kbuf_0_1_fu_110[4]),
        .R(1'b0));
  FDRE \kbuf_0_1_fu_110_reg[5] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_0_q0[5]),
        .Q(kbuf_0_1_fu_110[5]),
        .R(1'b0));
  FDRE \kbuf_0_1_fu_110_reg[6] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_0_q0[6]),
        .Q(kbuf_0_1_fu_110[6]),
        .R(1'b0));
  FDRE \kbuf_0_1_fu_110_reg[7] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_0_q0[7]),
        .Q(kbuf_0_1_fu_110[7]),
        .R(1'b0));
  FDRE \kbuf_1_0_fu_118_reg[0] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_2_reg_669[0]),
        .Q(kbuf_1_0_fu_118[0]),
        .R(1'b0));
  FDRE \kbuf_1_0_fu_118_reg[1] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_2_reg_669[1]),
        .Q(kbuf_1_0_fu_118[1]),
        .R(1'b0));
  FDRE \kbuf_1_0_fu_118_reg[2] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_2_reg_669[2]),
        .Q(kbuf_1_0_fu_118[2]),
        .R(1'b0));
  FDRE \kbuf_1_0_fu_118_reg[3] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_2_reg_669[3]),
        .Q(kbuf_1_0_fu_118[3]),
        .R(1'b0));
  FDRE \kbuf_1_0_fu_118_reg[4] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_2_reg_669[4]),
        .Q(kbuf_1_0_fu_118[4]),
        .R(1'b0));
  FDRE \kbuf_1_0_fu_118_reg[5] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_2_reg_669[5]),
        .Q(kbuf_1_0_fu_118[5]),
        .R(1'b0));
  FDRE \kbuf_1_0_fu_118_reg[6] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_2_reg_669[6]),
        .Q(kbuf_1_0_fu_118[6]),
        .R(1'b0));
  FDRE \kbuf_1_0_fu_118_reg[7] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_2_reg_669[7]),
        .Q(kbuf_1_0_fu_118[7]),
        .R(1'b0));
  FDRE \kbuf_1_0_s_fu_114_reg[0] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_0_fu_118[0]),
        .Q(kbuf_1_0_s_fu_114[0]),
        .R(1'b0));
  FDRE \kbuf_1_0_s_fu_114_reg[1] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_0_fu_118[1]),
        .Q(kbuf_1_0_s_fu_114[1]),
        .R(1'b0));
  FDRE \kbuf_1_0_s_fu_114_reg[2] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_0_fu_118[2]),
        .Q(kbuf_1_0_s_fu_114[2]),
        .R(1'b0));
  FDRE \kbuf_1_0_s_fu_114_reg[3] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_0_fu_118[3]),
        .Q(kbuf_1_0_s_fu_114[3]),
        .R(1'b0));
  FDRE \kbuf_1_0_s_fu_114_reg[4] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_0_fu_118[4]),
        .Q(kbuf_1_0_s_fu_114[4]),
        .R(1'b0));
  FDRE \kbuf_1_0_s_fu_114_reg[5] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_0_fu_118[5]),
        .Q(kbuf_1_0_s_fu_114[5]),
        .R(1'b0));
  FDRE \kbuf_1_0_s_fu_114_reg[6] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_0_fu_118[6]),
        .Q(kbuf_1_0_s_fu_114[6]),
        .R(1'b0));
  FDRE \kbuf_1_0_s_fu_114_reg[7] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_1_0_fu_118[7]),
        .Q(kbuf_1_0_s_fu_114[7]),
        .R(1'b0));
  FDRE \kbuf_1_1_fu_122_reg[0] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_1_q0[0]),
        .Q(kbuf_1_2_reg_669[0]),
        .R(1'b0));
  FDRE \kbuf_1_1_fu_122_reg[1] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_1_q0[1]),
        .Q(kbuf_1_2_reg_669[1]),
        .R(1'b0));
  FDRE \kbuf_1_1_fu_122_reg[2] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_1_q0[2]),
        .Q(kbuf_1_2_reg_669[2]),
        .R(1'b0));
  FDRE \kbuf_1_1_fu_122_reg[3] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_1_q0[3]),
        .Q(kbuf_1_2_reg_669[3]),
        .R(1'b0));
  FDRE \kbuf_1_1_fu_122_reg[4] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_1_q0[4]),
        .Q(kbuf_1_2_reg_669[4]),
        .R(1'b0));
  FDRE \kbuf_1_1_fu_122_reg[5] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_1_q0[5]),
        .Q(kbuf_1_2_reg_669[5]),
        .R(1'b0));
  FDRE \kbuf_1_1_fu_122_reg[6] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_1_q0[6]),
        .Q(kbuf_1_2_reg_669[6]),
        .R(1'b0));
  FDRE \kbuf_1_1_fu_122_reg[7] 
       (.C(ap_clk),
        .CE(we1),
        .D(lbuf_1_q0[7]),
        .Q(kbuf_1_2_reg_669[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \kbuf_1_1_load_reg_664[7]_i_1 
       (.I0(lbuf_1_U_n_13),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(\exitcond1_reg_620_reg_n_2_[0] ),
        .O(kbuf_1_1_load_reg_6640));
  FDRE \kbuf_1_1_load_reg_664_reg[0] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(kbuf_1_2_reg_669[0]),
        .Q(kbuf_1_1_load_reg_664[0]),
        .R(1'b0));
  FDRE \kbuf_1_1_load_reg_664_reg[1] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(kbuf_1_2_reg_669[1]),
        .Q(kbuf_1_1_load_reg_664[1]),
        .R(1'b0));
  FDRE \kbuf_1_1_load_reg_664_reg[2] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(kbuf_1_2_reg_669[2]),
        .Q(kbuf_1_1_load_reg_664[2]),
        .R(1'b0));
  FDRE \kbuf_1_1_load_reg_664_reg[3] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(kbuf_1_2_reg_669[3]),
        .Q(kbuf_1_1_load_reg_664[3]),
        .R(1'b0));
  FDRE \kbuf_1_1_load_reg_664_reg[4] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(kbuf_1_2_reg_669[4]),
        .Q(kbuf_1_1_load_reg_664[4]),
        .R(1'b0));
  FDRE \kbuf_1_1_load_reg_664_reg[5] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(kbuf_1_2_reg_669[5]),
        .Q(kbuf_1_1_load_reg_664[5]),
        .R(1'b0));
  FDRE \kbuf_1_1_load_reg_664_reg[6] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(kbuf_1_2_reg_669[6]),
        .Q(kbuf_1_1_load_reg_664[6]),
        .R(1'b0));
  FDRE \kbuf_1_1_load_reg_664_reg[7] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(kbuf_1_2_reg_669[7]),
        .Q(kbuf_1_1_load_reg_664[7]),
        .R(1'b0));
  FDRE \kbuf_2_0_fu_130_reg[0] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_1_1_reg_613[0]),
        .Q(kbuf_2_0_fu_130[0]),
        .R(1'b0));
  FDRE \kbuf_2_0_fu_130_reg[1] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_1_1_reg_613[1]),
        .Q(kbuf_2_0_fu_130[1]),
        .R(1'b0));
  FDRE \kbuf_2_0_fu_130_reg[2] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_1_1_reg_613[2]),
        .Q(kbuf_2_0_fu_130[2]),
        .R(1'b0));
  FDRE \kbuf_2_0_fu_130_reg[3] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_1_1_reg_613[3]),
        .Q(kbuf_2_0_fu_130[3]),
        .R(1'b0));
  FDRE \kbuf_2_0_fu_130_reg[4] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_1_1_reg_613[4]),
        .Q(kbuf_2_0_fu_130[4]),
        .R(1'b0));
  FDRE \kbuf_2_0_fu_130_reg[5] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_1_1_reg_613[5]),
        .Q(kbuf_2_0_fu_130[5]),
        .R(1'b0));
  FDRE \kbuf_2_0_fu_130_reg[6] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_1_1_reg_613[6]),
        .Q(kbuf_2_0_fu_130[6]),
        .R(1'b0));
  FDRE \kbuf_2_0_fu_130_reg[7] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_1_1_reg_613[7]),
        .Q(kbuf_2_0_fu_130[7]),
        .R(1'b0));
  FDRE \kbuf_2_0_load_6_reg_658_reg[0] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(kbuf_2_0_fu_130[0]),
        .Q(kbuf_2_0_load_6_reg_658[0]),
        .R(1'b0));
  FDRE \kbuf_2_0_load_6_reg_658_reg[1] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(kbuf_2_0_fu_130[1]),
        .Q(kbuf_2_0_load_6_reg_658[1]),
        .R(1'b0));
  FDRE \kbuf_2_0_load_6_reg_658_reg[2] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(kbuf_2_0_fu_130[2]),
        .Q(kbuf_2_0_load_6_reg_658[2]),
        .R(1'b0));
  FDRE \kbuf_2_0_load_6_reg_658_reg[3] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(kbuf_2_0_fu_130[3]),
        .Q(kbuf_2_0_load_6_reg_658[3]),
        .R(1'b0));
  FDRE \kbuf_2_0_load_6_reg_658_reg[4] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(kbuf_2_0_fu_130[4]),
        .Q(kbuf_2_0_load_6_reg_658[4]),
        .R(1'b0));
  FDRE \kbuf_2_0_load_6_reg_658_reg[5] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(kbuf_2_0_fu_130[5]),
        .Q(kbuf_2_0_load_6_reg_658[5]),
        .R(1'b0));
  FDRE \kbuf_2_0_load_6_reg_658_reg[6] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(kbuf_2_0_fu_130[6]),
        .Q(kbuf_2_0_load_6_reg_658[6]),
        .R(1'b0));
  FDRE \kbuf_2_0_load_6_reg_658_reg[7] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(kbuf_2_0_fu_130[7]),
        .Q(kbuf_2_0_load_6_reg_658[7]),
        .R(1'b0));
  FDRE \kbuf_2_0_s_fu_126_reg[0] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_0_fu_130[0]),
        .Q(kbuf_2_0_s_fu_126[0]),
        .R(1'b0));
  FDRE \kbuf_2_0_s_fu_126_reg[1] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_0_fu_130[1]),
        .Q(kbuf_2_0_s_fu_126[1]),
        .R(1'b0));
  FDRE \kbuf_2_0_s_fu_126_reg[2] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_0_fu_130[2]),
        .Q(kbuf_2_0_s_fu_126[2]),
        .R(1'b0));
  FDRE \kbuf_2_0_s_fu_126_reg[3] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_0_fu_130[3]),
        .Q(kbuf_2_0_s_fu_126[3]),
        .R(1'b0));
  FDRE \kbuf_2_0_s_fu_126_reg[4] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_0_fu_130[4]),
        .Q(kbuf_2_0_s_fu_126[4]),
        .R(1'b0));
  FDRE \kbuf_2_0_s_fu_126_reg[5] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_0_fu_130[5]),
        .Q(kbuf_2_0_s_fu_126[5]),
        .R(1'b0));
  FDRE \kbuf_2_0_s_fu_126_reg[6] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_0_fu_130[6]),
        .Q(kbuf_2_0_s_fu_126[6]),
        .R(1'b0));
  FDRE \kbuf_2_0_s_fu_126_reg[7] 
       (.C(ap_clk),
        .CE(ce1),
        .D(kbuf_2_0_fu_130[7]),
        .Q(kbuf_2_0_s_fu_126[7]),
        .R(1'b0));
  FDRE \kbuf_2_1_1_reg_613_reg[0] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(kbuf_2_1_fu_134[0]),
        .Q(kbuf_2_1_1_reg_613[0]),
        .R(1'b0));
  FDRE \kbuf_2_1_1_reg_613_reg[1] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(kbuf_2_1_fu_134[1]),
        .Q(kbuf_2_1_1_reg_613[1]),
        .R(1'b0));
  FDRE \kbuf_2_1_1_reg_613_reg[2] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(kbuf_2_1_fu_134[2]),
        .Q(kbuf_2_1_1_reg_613[2]),
        .R(1'b0));
  FDRE \kbuf_2_1_1_reg_613_reg[3] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(kbuf_2_1_fu_134[3]),
        .Q(kbuf_2_1_1_reg_613[3]),
        .R(1'b0));
  FDRE \kbuf_2_1_1_reg_613_reg[4] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(kbuf_2_1_fu_134[4]),
        .Q(kbuf_2_1_1_reg_613[4]),
        .R(1'b0));
  FDRE \kbuf_2_1_1_reg_613_reg[5] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(kbuf_2_1_fu_134[5]),
        .Q(kbuf_2_1_1_reg_613[5]),
        .R(1'b0));
  FDRE \kbuf_2_1_1_reg_613_reg[6] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(kbuf_2_1_fu_134[6]),
        .Q(kbuf_2_1_1_reg_613[6]),
        .R(1'b0));
  FDRE \kbuf_2_1_1_reg_613_reg[7] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(kbuf_2_1_fu_134[7]),
        .Q(kbuf_2_1_1_reg_613[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_2_1_fu_134[0]_i_1 
       (.I0(sin_V_data_V_0_payload_B[0]),
        .I1(sin_V_data_V_0_payload_A[0]),
        .I2(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_2_1_fu_134[1]_i_1 
       (.I0(sin_V_data_V_0_payload_B[1]),
        .I1(sin_V_data_V_0_payload_A[1]),
        .I2(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_2_1_fu_134[2]_i_1 
       (.I0(sin_V_data_V_0_payload_B[2]),
        .I1(sin_V_data_V_0_payload_A[2]),
        .I2(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_2_1_fu_134[3]_i_1 
       (.I0(sin_V_data_V_0_payload_B[3]),
        .I1(sin_V_data_V_0_payload_A[3]),
        .I2(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_2_1_fu_134[4]_i_1 
       (.I0(sin_V_data_V_0_payload_B[4]),
        .I1(sin_V_data_V_0_payload_A[4]),
        .I2(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_2_1_fu_134[5]_i_1 
       (.I0(sin_V_data_V_0_payload_B[5]),
        .I1(sin_V_data_V_0_payload_A[5]),
        .I2(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_2_1_fu_134[6]_i_1 
       (.I0(sin_V_data_V_0_payload_B[6]),
        .I1(sin_V_data_V_0_payload_A[6]),
        .I2(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_data_out[6]));
  LUT4 #(
    .INIT(16'h0400)) 
    \kbuf_2_1_fu_134[7]_i_1 
       (.I0(lbuf_1_U_n_13),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(i_reg_226_reg),
        .I3(ap_enable_reg_pp0_iter0),
        .O(\kbuf_2_1_fu_134[7]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \kbuf_2_1_fu_134[7]_i_2 
       (.I0(sin_V_data_V_0_payload_B[7]),
        .I1(sin_V_data_V_0_payload_A[7]),
        .I2(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_data_out[7]));
  FDRE \kbuf_2_1_fu_134_reg[0] 
       (.C(ap_clk),
        .CE(\kbuf_2_1_fu_134[7]_i_1_n_2 ),
        .D(sin_V_data_V_0_data_out[0]),
        .Q(kbuf_2_1_fu_134[0]),
        .R(1'b0));
  FDRE \kbuf_2_1_fu_134_reg[1] 
       (.C(ap_clk),
        .CE(\kbuf_2_1_fu_134[7]_i_1_n_2 ),
        .D(sin_V_data_V_0_data_out[1]),
        .Q(kbuf_2_1_fu_134[1]),
        .R(1'b0));
  FDRE \kbuf_2_1_fu_134_reg[2] 
       (.C(ap_clk),
        .CE(\kbuf_2_1_fu_134[7]_i_1_n_2 ),
        .D(sin_V_data_V_0_data_out[2]),
        .Q(kbuf_2_1_fu_134[2]),
        .R(1'b0));
  FDRE \kbuf_2_1_fu_134_reg[3] 
       (.C(ap_clk),
        .CE(\kbuf_2_1_fu_134[7]_i_1_n_2 ),
        .D(sin_V_data_V_0_data_out[3]),
        .Q(kbuf_2_1_fu_134[3]),
        .R(1'b0));
  FDRE \kbuf_2_1_fu_134_reg[4] 
       (.C(ap_clk),
        .CE(\kbuf_2_1_fu_134[7]_i_1_n_2 ),
        .D(sin_V_data_V_0_data_out[4]),
        .Q(kbuf_2_1_fu_134[4]),
        .R(1'b0));
  FDRE \kbuf_2_1_fu_134_reg[5] 
       (.C(ap_clk),
        .CE(\kbuf_2_1_fu_134[7]_i_1_n_2 ),
        .D(sin_V_data_V_0_data_out[5]),
        .Q(kbuf_2_1_fu_134[5]),
        .R(1'b0));
  FDRE \kbuf_2_1_fu_134_reg[6] 
       (.C(ap_clk),
        .CE(\kbuf_2_1_fu_134[7]_i_1_n_2 ),
        .D(sin_V_data_V_0_data_out[6]),
        .Q(kbuf_2_1_fu_134[6]),
        .R(1'b0));
  FDRE \kbuf_2_1_fu_134_reg[7] 
       (.C(ap_clk),
        .CE(\kbuf_2_1_fu_134[7]_i_1_n_2 ),
        .D(sin_V_data_V_0_data_out[7]),
        .Q(kbuf_2_1_fu_134[7]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv_lbuf_0 lbuf_0_U
       (.D(lbuf_0_q0),
        .E(we1),
        .Q(lbuf_1_addr_reg_635),
        .WEA(ce1),
        .ap_clk(ap_clk),
        .ce0(ce0),
        .out(phi_urem_reg_237_reg),
        .ram_reg(kbuf_1_0_s_fu_114),
        .result_3_1_fu_420_p2(result_3_1_fu_420_p2),
        .\result_3_1_reg_674_reg[9] (kbuf_0_0_fu_106),
        .\result_3_1_reg_674_reg[9]_0 (kbuf_1_0_fu_118),
        .\result_3_1_reg_674_reg[9]_1 (kbuf_0_1_fu_110));
  FDRE \lbuf_0_addr_reg_629_reg[0] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6290),
        .D(phi_urem_reg_237_reg[0]),
        .Q(lbuf_1_addr_reg_635[0]),
        .R(1'b0));
  FDRE \lbuf_0_addr_reg_629_reg[1] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6290),
        .D(phi_urem_reg_237_reg[1]),
        .Q(lbuf_1_addr_reg_635[1]),
        .R(1'b0));
  FDRE \lbuf_0_addr_reg_629_reg[2] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6290),
        .D(phi_urem_reg_237_reg[2]),
        .Q(lbuf_1_addr_reg_635[2]),
        .R(1'b0));
  FDRE \lbuf_0_addr_reg_629_reg[3] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6290),
        .D(phi_urem_reg_237_reg[3]),
        .Q(lbuf_1_addr_reg_635[3]),
        .R(1'b0));
  FDRE \lbuf_0_addr_reg_629_reg[4] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6290),
        .D(phi_urem_reg_237_reg[4]),
        .Q(lbuf_1_addr_reg_635[4]),
        .R(1'b0));
  FDRE \lbuf_0_addr_reg_629_reg[5] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6290),
        .D(phi_urem_reg_237_reg[5]),
        .Q(lbuf_1_addr_reg_635[5]),
        .R(1'b0));
  FDRE \lbuf_0_addr_reg_629_reg[6] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6290),
        .D(phi_urem_reg_237_reg[6]),
        .Q(lbuf_1_addr_reg_635[6]),
        .R(1'b0));
  FDRE \lbuf_0_addr_reg_629_reg[7] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6290),
        .D(phi_urem_reg_237_reg[7]),
        .Q(lbuf_1_addr_reg_635[7]),
        .R(1'b0));
  FDRE \lbuf_0_addr_reg_629_reg[8] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6290),
        .D(phi_urem_reg_237_reg[8]),
        .Q(lbuf_1_addr_reg_635[8]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv_lbuf_0_0 lbuf_1_U
       (.D(lbuf_1_q0),
        .E(we1),
        .Q(lbuf_1_addr_reg_635),
        .WEA(ce1),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ce0(ce0),
        .i_reg_226_reg(i_reg_226_reg),
        .out(phi_urem_reg_237_reg),
        .ram_reg(tmp6_fu_447_p2),
        .ram_reg_0(kbuf_2_0_s_fu_126),
        .ram_reg_1(\sin_V_data_V_0_state_reg_n_2_[0] ),
        .ram_reg_2(ap_CS_fsm_pp0_stage0),
        .ram_reg_3(\exitcond1_reg_620_reg_n_2_[0] ),
        .ram_reg_i_4(ap_enable_reg_pp0_iter3_reg_n_2),
        .\sin_V_data_V_0_state_reg[0] (lbuf_1_U_n_13),
        .sout_V_data_V_1_ack_in(sout_V_data_V_1_ack_in),
        .\tmp6_reg_679_reg[9] (kbuf_2_1_fu_134),
        .\tmp6_reg_679_reg[9]_0 (kbuf_2_1_1_reg_613),
        .tmp_7_reg_644_pp0_iter1_reg(tmp_7_reg_644_pp0_iter1_reg),
        .tmp_7_reg_644_pp0_iter2_reg(tmp_7_reg_644_pp0_iter2_reg));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    \phi_urem_reg_237[0]_i_1 
       (.I0(\phi_urem_reg_237[0]_i_3_n_2 ),
        .I1(\phi_urem_reg_237[0]_i_4_n_2 ),
        .I2(next_urem_fu_298_p2[10]),
        .I3(next_urem_fu_298_p2[9]),
        .I4(i_reg_2260),
        .I5(ap_CS_fsm_state1),
        .O(\phi_urem_reg_237[0]_i_1_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \phi_urem_reg_237[0]_i_11 
       (.I0(next_urem_fu_298_p2[13]),
        .I1(next_urem_fu_298_p2[14]),
        .I2(next_urem_fu_298_p2[11]),
        .I3(next_urem_fu_298_p2[12]),
        .O(\phi_urem_reg_237[0]_i_11_n_2 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \phi_urem_reg_237[0]_i_3 
       (.I0(next_urem_fu_298_p2[8]),
        .I1(next_urem_fu_298_p2[7]),
        .I2(next_urem_fu_298_p2[6]),
        .I3(\phi_urem_reg_237[0]_i_8_n_2 ),
        .O(\phi_urem_reg_237[0]_i_3_n_2 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \phi_urem_reg_237[0]_i_4 
       (.I0(next_urem_fu_298_p2[18]),
        .I1(next_urem_fu_298_p2[15]),
        .I2(next_urem_fu_298_p2[17]),
        .I3(next_urem_fu_298_p2[16]),
        .I4(\phi_urem_reg_237[0]_i_11_n_2 ),
        .O(\phi_urem_reg_237[0]_i_4_n_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phi_urem_reg_237[0]_i_6 
       (.I0(phi_urem_reg_237_reg[0]),
        .O(next_urem_fu_298_p2[0]));
  LUT6 #(
    .INIT(64'h4FFFFFFFFFFFFFFF)) 
    \phi_urem_reg_237[0]_i_8 
       (.I0(next_urem_fu_298_p2[1]),
        .I1(phi_urem_reg_237_reg[0]),
        .I2(next_urem_fu_298_p2[5]),
        .I3(next_urem_fu_298_p2[3]),
        .I4(next_urem_fu_298_p2[4]),
        .I5(next_urem_fu_298_p2[2]),
        .O(\phi_urem_reg_237[0]_i_8_n_2 ));
  FDRE \phi_urem_reg_237_reg[0] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[0]_i_2_n_9 ),
        .Q(phi_urem_reg_237_reg[0]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  CARRY4 \phi_urem_reg_237_reg[0]_i_10 
       (.CI(\phi_urem_reg_237_reg[0]_i_5_n_2 ),
        .CO({\phi_urem_reg_237_reg[0]_i_10_n_2 ,\phi_urem_reg_237_reg[0]_i_10_n_3 ,\phi_urem_reg_237_reg[0]_i_10_n_4 ,\phi_urem_reg_237_reg[0]_i_10_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(next_urem_fu_298_p2[16:13]),
        .S(phi_urem_reg_237_reg__0[16:13]));
  CARRY4 \phi_urem_reg_237_reg[0]_i_12 
       (.CI(1'b0),
        .CO({\phi_urem_reg_237_reg[0]_i_12_n_2 ,\phi_urem_reg_237_reg[0]_i_12_n_3 ,\phi_urem_reg_237_reg[0]_i_12_n_4 ,\phi_urem_reg_237_reg[0]_i_12_n_5 }),
        .CYINIT(phi_urem_reg_237_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(next_urem_fu_298_p2[4:1]),
        .S(phi_urem_reg_237_reg[4:1]));
  CARRY4 \phi_urem_reg_237_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\phi_urem_reg_237_reg[0]_i_2_n_2 ,\phi_urem_reg_237_reg[0]_i_2_n_3 ,\phi_urem_reg_237_reg[0]_i_2_n_4 ,\phi_urem_reg_237_reg[0]_i_2_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\phi_urem_reg_237_reg[0]_i_2_n_6 ,\phi_urem_reg_237_reg[0]_i_2_n_7 ,\phi_urem_reg_237_reg[0]_i_2_n_8 ,\phi_urem_reg_237_reg[0]_i_2_n_9 }),
        .S({phi_urem_reg_237_reg[3:1],next_urem_fu_298_p2[0]}));
  CARRY4 \phi_urem_reg_237_reg[0]_i_5 
       (.CI(\phi_urem_reg_237_reg[0]_i_7_n_2 ),
        .CO({\phi_urem_reg_237_reg[0]_i_5_n_2 ,\phi_urem_reg_237_reg[0]_i_5_n_3 ,\phi_urem_reg_237_reg[0]_i_5_n_4 ,\phi_urem_reg_237_reg[0]_i_5_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(next_urem_fu_298_p2[12:9]),
        .S(phi_urem_reg_237_reg__0[12:9]));
  CARRY4 \phi_urem_reg_237_reg[0]_i_7 
       (.CI(\phi_urem_reg_237_reg[0]_i_12_n_2 ),
        .CO({\phi_urem_reg_237_reg[0]_i_7_n_2 ,\phi_urem_reg_237_reg[0]_i_7_n_3 ,\phi_urem_reg_237_reg[0]_i_7_n_4 ,\phi_urem_reg_237_reg[0]_i_7_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(next_urem_fu_298_p2[8:5]),
        .S(phi_urem_reg_237_reg[8:5]));
  CARRY4 \phi_urem_reg_237_reg[0]_i_9 
       (.CI(\phi_urem_reg_237_reg[0]_i_10_n_2 ),
        .CO({\NLW_phi_urem_reg_237_reg[0]_i_9_CO_UNCONNECTED [3:1],\phi_urem_reg_237_reg[0]_i_9_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_phi_urem_reg_237_reg[0]_i_9_O_UNCONNECTED [3:2],next_urem_fu_298_p2[18:17]}),
        .S({1'b0,1'b0,phi_urem_reg_237_reg__0[18:17]}));
  FDRE \phi_urem_reg_237_reg[10] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[8]_i_1_n_7 ),
        .Q(phi_urem_reg_237_reg__0[10]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_237_reg[11] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[8]_i_1_n_6 ),
        .Q(phi_urem_reg_237_reg__0[11]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_237_reg[12] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[12]_i_1_n_9 ),
        .Q(phi_urem_reg_237_reg__0[12]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  CARRY4 \phi_urem_reg_237_reg[12]_i_1 
       (.CI(\phi_urem_reg_237_reg[8]_i_1_n_2 ),
        .CO({\phi_urem_reg_237_reg[12]_i_1_n_2 ,\phi_urem_reg_237_reg[12]_i_1_n_3 ,\phi_urem_reg_237_reg[12]_i_1_n_4 ,\phi_urem_reg_237_reg[12]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phi_urem_reg_237_reg[12]_i_1_n_6 ,\phi_urem_reg_237_reg[12]_i_1_n_7 ,\phi_urem_reg_237_reg[12]_i_1_n_8 ,\phi_urem_reg_237_reg[12]_i_1_n_9 }),
        .S(phi_urem_reg_237_reg__0[15:12]));
  FDRE \phi_urem_reg_237_reg[13] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[12]_i_1_n_8 ),
        .Q(phi_urem_reg_237_reg__0[13]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_237_reg[14] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[12]_i_1_n_7 ),
        .Q(phi_urem_reg_237_reg__0[14]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_237_reg[15] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[12]_i_1_n_6 ),
        .Q(phi_urem_reg_237_reg__0[15]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_237_reg[16] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[16]_i_1_n_9 ),
        .Q(phi_urem_reg_237_reg__0[16]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  CARRY4 \phi_urem_reg_237_reg[16]_i_1 
       (.CI(\phi_urem_reg_237_reg[12]_i_1_n_2 ),
        .CO({\NLW_phi_urem_reg_237_reg[16]_i_1_CO_UNCONNECTED [3:2],\phi_urem_reg_237_reg[16]_i_1_n_4 ,\phi_urem_reg_237_reg[16]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_phi_urem_reg_237_reg[16]_i_1_O_UNCONNECTED [3],\phi_urem_reg_237_reg[16]_i_1_n_7 ,\phi_urem_reg_237_reg[16]_i_1_n_8 ,\phi_urem_reg_237_reg[16]_i_1_n_9 }),
        .S({1'b0,phi_urem_reg_237_reg__0[18:16]}));
  FDRE \phi_urem_reg_237_reg[17] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[16]_i_1_n_8 ),
        .Q(phi_urem_reg_237_reg__0[17]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_237_reg[18] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[16]_i_1_n_7 ),
        .Q(phi_urem_reg_237_reg__0[18]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_237_reg[1] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[0]_i_2_n_8 ),
        .Q(phi_urem_reg_237_reg[1]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_237_reg[2] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[0]_i_2_n_7 ),
        .Q(phi_urem_reg_237_reg[2]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_237_reg[3] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[0]_i_2_n_6 ),
        .Q(phi_urem_reg_237_reg[3]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_237_reg[4] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[4]_i_1_n_9 ),
        .Q(phi_urem_reg_237_reg[4]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  CARRY4 \phi_urem_reg_237_reg[4]_i_1 
       (.CI(\phi_urem_reg_237_reg[0]_i_2_n_2 ),
        .CO({\phi_urem_reg_237_reg[4]_i_1_n_2 ,\phi_urem_reg_237_reg[4]_i_1_n_3 ,\phi_urem_reg_237_reg[4]_i_1_n_4 ,\phi_urem_reg_237_reg[4]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phi_urem_reg_237_reg[4]_i_1_n_6 ,\phi_urem_reg_237_reg[4]_i_1_n_7 ,\phi_urem_reg_237_reg[4]_i_1_n_8 ,\phi_urem_reg_237_reg[4]_i_1_n_9 }),
        .S(phi_urem_reg_237_reg[7:4]));
  FDRE \phi_urem_reg_237_reg[5] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[4]_i_1_n_8 ),
        .Q(phi_urem_reg_237_reg[5]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_237_reg[6] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[4]_i_1_n_7 ),
        .Q(phi_urem_reg_237_reg[6]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_237_reg[7] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[4]_i_1_n_6 ),
        .Q(phi_urem_reg_237_reg[7]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  FDRE \phi_urem_reg_237_reg[8] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[8]_i_1_n_9 ),
        .Q(phi_urem_reg_237_reg[8]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  CARRY4 \phi_urem_reg_237_reg[8]_i_1 
       (.CI(\phi_urem_reg_237_reg[4]_i_1_n_2 ),
        .CO({\phi_urem_reg_237_reg[8]_i_1_n_2 ,\phi_urem_reg_237_reg[8]_i_1_n_3 ,\phi_urem_reg_237_reg[8]_i_1_n_4 ,\phi_urem_reg_237_reg[8]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\phi_urem_reg_237_reg[8]_i_1_n_6 ,\phi_urem_reg_237_reg[8]_i_1_n_7 ,\phi_urem_reg_237_reg[8]_i_1_n_8 ,\phi_urem_reg_237_reg[8]_i_1_n_9 }),
        .S({phi_urem_reg_237_reg__0[11:9],phi_urem_reg_237_reg[8]}));
  FDRE \phi_urem_reg_237_reg[9] 
       (.C(ap_clk),
        .CE(i_reg_2260),
        .D(\phi_urem_reg_237_reg[8]_i_1_n_8 ),
        .Q(phi_urem_reg_237_reg__0[9]),
        .R(\phi_urem_reg_237[0]_i_1_n_2 ));
  FDRE \result_3_1_reg_674_reg[0] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(result_3_1_fu_420_p2[0]),
        .Q(result_3_1_reg_674[0]),
        .R(1'b0));
  FDRE \result_3_1_reg_674_reg[1] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(result_3_1_fu_420_p2[1]),
        .Q(result_3_1_reg_674[1]),
        .R(1'b0));
  FDRE \result_3_1_reg_674_reg[2] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(result_3_1_fu_420_p2[2]),
        .Q(result_3_1_reg_674[2]),
        .R(1'b0));
  FDRE \result_3_1_reg_674_reg[3] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(result_3_1_fu_420_p2[3]),
        .Q(result_3_1_reg_674[3]),
        .R(1'b0));
  FDRE \result_3_1_reg_674_reg[4] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(result_3_1_fu_420_p2[4]),
        .Q(result_3_1_reg_674[4]),
        .R(1'b0));
  FDRE \result_3_1_reg_674_reg[5] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(result_3_1_fu_420_p2[5]),
        .Q(result_3_1_reg_674[5]),
        .R(1'b0));
  FDRE \result_3_1_reg_674_reg[6] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(result_3_1_fu_420_p2[6]),
        .Q(result_3_1_reg_674[6]),
        .R(1'b0));
  FDRE \result_3_1_reg_674_reg[7] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(result_3_1_fu_420_p2[7]),
        .Q(result_3_1_reg_674[7]),
        .R(1'b0));
  FDRE \result_3_1_reg_674_reg[8] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(result_3_1_fu_420_p2[8]),
        .Q(result_3_1_reg_674[8]),
        .R(1'b0));
  FDRE \result_3_1_reg_674_reg[9] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(result_3_1_fu_420_p2[9]),
        .Q(result_3_1_reg_674[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h45)) 
    \sin_V_data_V_0_payload_A[7]_i_1 
       (.I0(sin_V_data_V_0_sel_wr),
        .I1(sin_V_data_V_0_ack_in),
        .I2(\sin_V_data_V_0_state_reg_n_2_[0] ),
        .O(sin_V_data_V_0_load_A));
  FDRE \sin_V_data_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_A),
        .D(sin_TDATA[0]),
        .Q(sin_V_data_V_0_payload_A[0]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_A),
        .D(sin_TDATA[1]),
        .Q(sin_V_data_V_0_payload_A[1]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_A),
        .D(sin_TDATA[2]),
        .Q(sin_V_data_V_0_payload_A[2]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_A),
        .D(sin_TDATA[3]),
        .Q(sin_V_data_V_0_payload_A[3]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_A),
        .D(sin_TDATA[4]),
        .Q(sin_V_data_V_0_payload_A[4]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_A),
        .D(sin_TDATA[5]),
        .Q(sin_V_data_V_0_payload_A[5]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_A),
        .D(sin_TDATA[6]),
        .Q(sin_V_data_V_0_payload_A[6]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_A),
        .D(sin_TDATA[7]),
        .Q(sin_V_data_V_0_payload_A[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h8A)) 
    \sin_V_data_V_0_payload_B[7]_i_1 
       (.I0(sin_V_data_V_0_sel_wr),
        .I1(sin_V_data_V_0_ack_in),
        .I2(\sin_V_data_V_0_state_reg_n_2_[0] ),
        .O(sin_V_data_V_0_load_B));
  FDRE \sin_V_data_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_B),
        .D(sin_TDATA[0]),
        .Q(sin_V_data_V_0_payload_B[0]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_B),
        .D(sin_TDATA[1]),
        .Q(sin_V_data_V_0_payload_B[1]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_B),
        .D(sin_TDATA[2]),
        .Q(sin_V_data_V_0_payload_B[2]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_B),
        .D(sin_TDATA[3]),
        .Q(sin_V_data_V_0_payload_B[3]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_B),
        .D(sin_TDATA[4]),
        .Q(sin_V_data_V_0_payload_B[4]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_B),
        .D(sin_TDATA[5]),
        .Q(sin_V_data_V_0_payload_B[5]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_B),
        .D(sin_TDATA[6]),
        .Q(sin_V_data_V_0_payload_B[6]),
        .R(1'b0));
  FDRE \sin_V_data_V_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(sin_V_data_V_0_load_B),
        .D(sin_TDATA[7]),
        .Q(sin_V_data_V_0_payload_B[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    sin_V_data_V_0_sel_rd_i_1
       (.I0(\kbuf_2_1_fu_134[7]_i_1_n_2 ),
        .I1(sin_V_data_V_0_sel),
        .O(sin_V_data_V_0_sel_rd_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    sin_V_data_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(sin_V_data_V_0_sel_rd_i_1_n_2),
        .Q(sin_V_data_V_0_sel),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    sin_V_data_V_0_sel_wr_i_1
       (.I0(sin_V_data_V_0_ack_in),
        .I1(sin_TVALID),
        .I2(sin_V_data_V_0_sel_wr),
        .O(sin_V_data_V_0_sel_wr_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    sin_V_data_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(sin_V_data_V_0_sel_wr_i_1_n_2),
        .Q(sin_V_data_V_0_sel_wr),
        .R(reset));
  LUT5 #(
    .INIT(32'h8A80AA80)) 
    \sin_V_data_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(sin_TVALID),
        .I2(sin_V_data_V_0_ack_in),
        .I3(\sin_V_data_V_0_state_reg_n_2_[0] ),
        .I4(\kbuf_2_1_fu_134[7]_i_1_n_2 ),
        .O(\sin_V_data_V_0_state[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \sin_V_data_V_0_state[1]_i_1 
       (.I0(\sin_V_data_V_0_state_reg_n_2_[0] ),
        .I1(\kbuf_2_1_fu_134[7]_i_1_n_2 ),
        .I2(sin_TVALID),
        .I3(sin_V_data_V_0_ack_in),
        .O(sin_V_data_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \sin_V_data_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sin_V_data_V_0_state[0]_i_1_n_2 ),
        .Q(\sin_V_data_V_0_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_V_data_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sin_V_data_V_0_state),
        .Q(sin_V_data_V_0_ack_in),
        .R(reset));
  LUT5 #(
    .INIT(32'hD0F0C000)) 
    \sin_V_dest_V_0_state[0]_i_1 
       (.I0(\kbuf_2_1_fu_134[7]_i_1_n_2 ),
        .I1(sin_TVALID),
        .I2(ap_rst_n),
        .I3(sin_TREADY),
        .I4(\sin_V_dest_V_0_state_reg_n_2_[0] ),
        .O(\sin_V_dest_V_0_state[0]_i_1_n_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sin_V_dest_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(reset));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \sin_V_dest_V_0_state[1]_i_2 
       (.I0(sin_TVALID),
        .I1(sin_TREADY),
        .I2(\sin_V_dest_V_0_state_reg_n_2_[0] ),
        .I3(\kbuf_2_1_fu_134[7]_i_1_n_2 ),
        .O(sin_V_dest_V_0_state));
  FDRE #(
    .INIT(1'b0)) 
    \sin_V_dest_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sin_V_dest_V_0_state[0]_i_1_n_2 ),
        .Q(\sin_V_dest_V_0_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sin_V_dest_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sin_V_dest_V_0_state),
        .Q(sin_TREADY),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sout_TDATA[0]_INST_0 
       (.I0(sout_V_data_V_1_payload_B[0]),
        .I1(sout_V_data_V_1_payload_A[0]),
        .I2(sout_V_data_V_1_sel),
        .O(sout_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sout_TDATA[1]_INST_0 
       (.I0(sout_V_data_V_1_payload_B[1]),
        .I1(sout_V_data_V_1_payload_A[1]),
        .I2(sout_V_data_V_1_sel),
        .O(sout_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sout_TDATA[2]_INST_0 
       (.I0(sout_V_data_V_1_payload_B[2]),
        .I1(sout_V_data_V_1_payload_A[2]),
        .I2(sout_V_data_V_1_sel),
        .O(sout_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sout_TDATA[3]_INST_0 
       (.I0(sout_V_data_V_1_payload_B[3]),
        .I1(sout_V_data_V_1_payload_A[3]),
        .I2(sout_V_data_V_1_sel),
        .O(sout_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sout_TDATA[4]_INST_0 
       (.I0(sout_V_data_V_1_payload_B[4]),
        .I1(sout_V_data_V_1_payload_A[4]),
        .I2(sout_V_data_V_1_sel),
        .O(sout_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sout_TDATA[5]_INST_0 
       (.I0(sout_V_data_V_1_payload_B[5]),
        .I1(sout_V_data_V_1_payload_A[5]),
        .I2(sout_V_data_V_1_sel),
        .O(sout_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sout_TDATA[6]_INST_0 
       (.I0(sout_V_data_V_1_payload_B[6]),
        .I1(sout_V_data_V_1_payload_A[6]),
        .I2(sout_V_data_V_1_sel),
        .O(sout_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sout_TDATA[7]_INST_0 
       (.I0(sout_V_data_V_1_payload_B[7]),
        .I1(sout_V_data_V_1_payload_A[7]),
        .I2(sout_V_data_V_1_sel),
        .O(sout_TDATA[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \sout_TLAST[0]_INST_0 
       (.I0(sout_V_last_V_1_payload_B),
        .I1(sout_V_last_V_1_sel),
        .I2(sout_V_last_V_1_payload_A),
        .O(sout_TLAST));
  LUT5 #(
    .INIT(32'h00000002)) 
    \sout_V_data_V_1_payload_A[0]_i_1 
       (.I0(tmp_6_fu_533_p2[0]),
        .I1(tmp_4_fu_500_p4__0[2]),
        .I2(tmp_4_fu_500_p4__0[1]),
        .I3(tmp_4_fu_500_p4__0[0]),
        .I4(tmp_4_fu_500_p4),
        .O(\sout_V_data_V_1_payload_A[0]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \sout_V_data_V_1_payload_A[1]_i_1 
       (.I0(tmp_6_fu_533_p2[1]),
        .I1(tmp_4_fu_500_p4__0[2]),
        .I2(tmp_4_fu_500_p4__0[1]),
        .I3(tmp_4_fu_500_p4__0[0]),
        .I4(tmp_4_fu_500_p4),
        .O(\sout_V_data_V_1_payload_A[1]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \sout_V_data_V_1_payload_A[2]_i_1 
       (.I0(tmp_6_fu_533_p2[2]),
        .I1(tmp_4_fu_500_p4__0[2]),
        .I2(tmp_4_fu_500_p4__0[1]),
        .I3(tmp_4_fu_500_p4__0[0]),
        .I4(tmp_4_fu_500_p4),
        .O(\sout_V_data_V_1_payload_A[2]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \sout_V_data_V_1_payload_A[3]_i_1 
       (.I0(tmp_6_fu_533_p2[3]),
        .I1(tmp_4_fu_500_p4__0[2]),
        .I2(tmp_4_fu_500_p4__0[1]),
        .I3(tmp_4_fu_500_p4__0[0]),
        .I4(tmp_4_fu_500_p4),
        .O(\sout_V_data_V_1_payload_A[3]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sout_V_data_V_1_payload_A[3]_i_10 
       (.I0(kbuf_2_0_load_6_reg_658[2]),
        .I1(tmp3_reg_684[2]),
        .I2(kbuf_1_2_reg_669[2]),
        .O(\sout_V_data_V_1_payload_A[3]_i_10_n_2 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sout_V_data_V_1_payload_A[3]_i_3 
       (.I0(result_3_1_reg_674[2]),
        .I1(\sout_V_data_V_1_payload_A[3]_i_10_n_2 ),
        .I2(kbuf_2_0_load_6_reg_658[1]),
        .I3(kbuf_1_2_reg_669[1]),
        .I4(tmp3_reg_684[1]),
        .O(\sout_V_data_V_1_payload_A[3]_i_3_n_2 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \sout_V_data_V_1_payload_A[3]_i_4 
       (.I0(kbuf_2_0_load_6_reg_658[1]),
        .I1(kbuf_1_2_reg_669[1]),
        .I2(tmp3_reg_684[1]),
        .I3(result_3_1_reg_674[2]),
        .I4(\sout_V_data_V_1_payload_A[3]_i_10_n_2 ),
        .O(\sout_V_data_V_1_payload_A[3]_i_4_n_2 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sout_V_data_V_1_payload_A[3]_i_5 
       (.I0(kbuf_1_2_reg_669[1]),
        .I1(tmp3_reg_684[1]),
        .I2(kbuf_2_0_load_6_reg_658[1]),
        .I3(result_3_1_reg_674[1]),
        .O(\sout_V_data_V_1_payload_A[3]_i_5_n_2 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sout_V_data_V_1_payload_A[3]_i_6 
       (.I0(\sout_V_data_V_1_payload_A[3]_i_3_n_2 ),
        .I1(\sout_V_data_V_1_payload_A[7]_i_41_n_2 ),
        .I2(\sout_V_data_V_1_payload_A_reg[7]_i_30_n_9 ),
        .I3(tmp3_reg_684[2]),
        .I4(kbuf_1_2_reg_669[2]),
        .I5(kbuf_2_0_load_6_reg_658[2]),
        .O(\sout_V_data_V_1_payload_A[3]_i_6_n_2 ));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    \sout_V_data_V_1_payload_A[3]_i_7 
       (.I0(\sout_V_data_V_1_payload_A[3]_i_10_n_2 ),
        .I1(result_3_1_reg_674[2]),
        .I2(kbuf_2_0_load_6_reg_658[1]),
        .I3(tmp3_reg_684[1]),
        .I4(kbuf_1_2_reg_669[1]),
        .I5(result_3_1_reg_674[1]),
        .O(\sout_V_data_V_1_payload_A[3]_i_7_n_2 ));
  LUT4 #(
    .INIT(16'h566A)) 
    \sout_V_data_V_1_payload_A[3]_i_8 
       (.I0(\sout_V_data_V_1_payload_A[3]_i_5_n_2 ),
        .I1(kbuf_2_0_load_6_reg_658[0]),
        .I2(kbuf_1_2_reg_669[0]),
        .I3(tmp3_reg_684[0]),
        .O(\sout_V_data_V_1_payload_A[3]_i_8_n_2 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sout_V_data_V_1_payload_A[3]_i_9 
       (.I0(kbuf_1_2_reg_669[0]),
        .I1(tmp3_reg_684[0]),
        .I2(kbuf_2_0_load_6_reg_658[0]),
        .I3(result_3_1_reg_674[0]),
        .O(\sout_V_data_V_1_payload_A[3]_i_9_n_2 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \sout_V_data_V_1_payload_A[4]_i_1 
       (.I0(tmp_6_fu_533_p2[4]),
        .I1(tmp_4_fu_500_p4__0[2]),
        .I2(tmp_4_fu_500_p4__0[1]),
        .I3(tmp_4_fu_500_p4__0[0]),
        .I4(tmp_4_fu_500_p4),
        .O(\sout_V_data_V_1_payload_A[4]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \sout_V_data_V_1_payload_A[5]_i_1 
       (.I0(tmp_6_fu_533_p2[5]),
        .I1(tmp_4_fu_500_p4__0[2]),
        .I2(tmp_4_fu_500_p4__0[1]),
        .I3(tmp_4_fu_500_p4__0[0]),
        .I4(tmp_4_fu_500_p4),
        .O(\sout_V_data_V_1_payload_A[5]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \sout_V_data_V_1_payload_A[6]_i_1 
       (.I0(tmp_6_fu_533_p2[6]),
        .I1(tmp_4_fu_500_p4__0[2]),
        .I2(tmp_4_fu_500_p4__0[1]),
        .I3(tmp_4_fu_500_p4__0[0]),
        .I4(tmp_4_fu_500_p4),
        .O(\sout_V_data_V_1_payload_A[6]_i_1_n_2 ));
  LUT5 #(
    .INIT(32'h22222220)) 
    \sout_V_data_V_1_payload_A[7]_i_1 
       (.I0(sout_V_data_V_1_load_A),
        .I1(tmp_4_fu_500_p4),
        .I2(tmp_4_fu_500_p4__0[0]),
        .I3(tmp_4_fu_500_p4__0[1]),
        .I4(tmp_4_fu_500_p4__0[2]),
        .O(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h78)) 
    \sout_V_data_V_1_payload_A[7]_i_11 
       (.I0(tmp6_reg_679[9]),
        .I1(\sout_V_data_V_1_payload_A_reg[7]_i_7_n_7 ),
        .I2(\sout_V_data_V_1_payload_A_reg[7]_i_7_n_6 ),
        .O(\sout_V_data_V_1_payload_A[7]_i_11_n_2 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \sout_V_data_V_1_payload_A[7]_i_12 
       (.I0(tmp6_reg_679[8]),
        .I1(\sout_V_data_V_1_payload_A_reg[7]_i_7_n_8 ),
        .I2(\sout_V_data_V_1_payload_A_reg[7]_i_7_n_7 ),
        .I3(tmp6_reg_679[9]),
        .O(\sout_V_data_V_1_payload_A[7]_i_12_n_2 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \sout_V_data_V_1_payload_A[7]_i_13 
       (.I0(kbuf_2_0_load_6_reg_658[7]),
        .I1(tmp6_reg_679[7]),
        .I2(\sout_V_data_V_1_payload_A_reg[7]_i_7_n_9 ),
        .I3(\sout_V_data_V_1_payload_A_reg[7]_i_7_n_8 ),
        .I4(tmp6_reg_679[8]),
        .O(\sout_V_data_V_1_payload_A[7]_i_13_n_2 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sout_V_data_V_1_payload_A[7]_i_14 
       (.I0(\sout_V_data_V_1_payload_A_reg[7]_i_30_n_7 ),
        .I1(\sout_V_data_V_1_payload_A[7]_i_39_n_2 ),
        .I2(kbuf_2_0_load_6_reg_658[4]),
        .I3(kbuf_1_2_reg_669[4]),
        .I4(tmp3_reg_684[4]),
        .O(\sout_V_data_V_1_payload_A[7]_i_14_n_2 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sout_V_data_V_1_payload_A[7]_i_15 
       (.I0(\sout_V_data_V_1_payload_A_reg[7]_i_30_n_8 ),
        .I1(\sout_V_data_V_1_payload_A[7]_i_40_n_2 ),
        .I2(kbuf_2_0_load_6_reg_658[3]),
        .I3(kbuf_1_2_reg_669[3]),
        .I4(tmp3_reg_684[3]),
        .O(\sout_V_data_V_1_payload_A[7]_i_15_n_2 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sout_V_data_V_1_payload_A[7]_i_16 
       (.I0(\sout_V_data_V_1_payload_A_reg[7]_i_30_n_9 ),
        .I1(\sout_V_data_V_1_payload_A[7]_i_41_n_2 ),
        .I2(kbuf_2_0_load_6_reg_658[2]),
        .I3(kbuf_1_2_reg_669[2]),
        .I4(tmp3_reg_684[2]),
        .O(\sout_V_data_V_1_payload_A[7]_i_16_n_2 ));
  LUT6 #(
    .INIT(64'hE187871E871E1E78)) 
    \sout_V_data_V_1_payload_A[7]_i_17 
       (.I0(\sout_V_data_V_1_payload_A[7]_i_42_n_2 ),
        .I1(\sout_V_data_V_1_payload_A_reg[7]_i_30_n_6 ),
        .I2(\sout_V_data_V_1_payload_A[7]_i_43_n_2 ),
        .I3(tmp3_reg_684[6]),
        .I4(kbuf_1_2_reg_669[6]),
        .I5(kbuf_2_0_load_6_reg_658[6]),
        .O(\sout_V_data_V_1_payload_A[7]_i_17_n_2 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sout_V_data_V_1_payload_A[7]_i_18 
       (.I0(\sout_V_data_V_1_payload_A[7]_i_14_n_2 ),
        .I1(\sout_V_data_V_1_payload_A[7]_i_44_n_2 ),
        .I2(\sout_V_data_V_1_payload_A_reg[7]_i_30_n_6 ),
        .I3(tmp3_reg_684[5]),
        .I4(kbuf_1_2_reg_669[5]),
        .I5(kbuf_2_0_load_6_reg_658[5]),
        .O(\sout_V_data_V_1_payload_A[7]_i_18_n_2 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sout_V_data_V_1_payload_A[7]_i_19 
       (.I0(\sout_V_data_V_1_payload_A[7]_i_15_n_2 ),
        .I1(\sout_V_data_V_1_payload_A[7]_i_39_n_2 ),
        .I2(\sout_V_data_V_1_payload_A_reg[7]_i_30_n_7 ),
        .I3(tmp3_reg_684[4]),
        .I4(kbuf_1_2_reg_669[4]),
        .I5(kbuf_2_0_load_6_reg_658[4]),
        .O(\sout_V_data_V_1_payload_A[7]_i_19_n_2 ));
  LUT3 #(
    .INIT(8'h45)) 
    \sout_V_data_V_1_payload_A[7]_i_2 
       (.I0(sout_V_data_V_1_sel_wr),
        .I1(sout_V_data_V_1_ack_in),
        .I2(\sout_V_data_V_1_state_reg_n_2_[0] ),
        .O(sout_V_data_V_1_load_A));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \sout_V_data_V_1_payload_A[7]_i_20 
       (.I0(\sout_V_data_V_1_payload_A[7]_i_16_n_2 ),
        .I1(\sout_V_data_V_1_payload_A[7]_i_40_n_2 ),
        .I2(\sout_V_data_V_1_payload_A_reg[7]_i_30_n_8 ),
        .I3(tmp3_reg_684[3]),
        .I4(kbuf_1_2_reg_669[3]),
        .I5(kbuf_2_0_load_6_reg_658[3]),
        .O(\sout_V_data_V_1_payload_A[7]_i_20_n_2 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \sout_V_data_V_1_payload_A[7]_i_22 
       (.I0(\sout_V_data_V_1_payload_A_reg[7]_i_30_n_6 ),
        .I1(tmp6_reg_679[6]),
        .I2(kbuf_2_0_load_6_reg_658[6]),
        .O(\sout_V_data_V_1_payload_A[7]_i_22_n_2 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sout_V_data_V_1_payload_A[7]_i_23 
       (.I0(\sout_V_data_V_1_payload_A_reg[7]_i_30_n_7 ),
        .I1(tmp6_reg_679[5]),
        .I2(kbuf_2_0_load_6_reg_658[5]),
        .O(\sout_V_data_V_1_payload_A[7]_i_23_n_2 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sout_V_data_V_1_payload_A[7]_i_24 
       (.I0(\sout_V_data_V_1_payload_A_reg[7]_i_30_n_8 ),
        .I1(tmp6_reg_679[4]),
        .I2(kbuf_2_0_load_6_reg_658[4]),
        .O(\sout_V_data_V_1_payload_A[7]_i_24_n_2 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sout_V_data_V_1_payload_A[7]_i_25 
       (.I0(\sout_V_data_V_1_payload_A_reg[7]_i_30_n_9 ),
        .I1(tmp6_reg_679[3]),
        .I2(kbuf_2_0_load_6_reg_658[3]),
        .O(\sout_V_data_V_1_payload_A[7]_i_25_n_2 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sout_V_data_V_1_payload_A[7]_i_26 
       (.I0(\sout_V_data_V_1_payload_A[7]_i_22_n_2 ),
        .I1(tmp6_reg_679[7]),
        .I2(\sout_V_data_V_1_payload_A_reg[7]_i_7_n_9 ),
        .I3(kbuf_2_0_load_6_reg_658[7]),
        .O(\sout_V_data_V_1_payload_A[7]_i_26_n_2 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sout_V_data_V_1_payload_A[7]_i_27 
       (.I0(\sout_V_data_V_1_payload_A_reg[7]_i_30_n_6 ),
        .I1(tmp6_reg_679[6]),
        .I2(kbuf_2_0_load_6_reg_658[6]),
        .I3(\sout_V_data_V_1_payload_A[7]_i_23_n_2 ),
        .O(\sout_V_data_V_1_payload_A[7]_i_27_n_2 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sout_V_data_V_1_payload_A[7]_i_28 
       (.I0(\sout_V_data_V_1_payload_A_reg[7]_i_30_n_7 ),
        .I1(tmp6_reg_679[5]),
        .I2(kbuf_2_0_load_6_reg_658[5]),
        .I3(\sout_V_data_V_1_payload_A[7]_i_24_n_2 ),
        .O(\sout_V_data_V_1_payload_A[7]_i_28_n_2 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sout_V_data_V_1_payload_A[7]_i_29 
       (.I0(\sout_V_data_V_1_payload_A_reg[7]_i_30_n_8 ),
        .I1(tmp6_reg_679[4]),
        .I2(kbuf_2_0_load_6_reg_658[4]),
        .I3(\sout_V_data_V_1_payload_A[7]_i_25_n_2 ),
        .O(\sout_V_data_V_1_payload_A[7]_i_29_n_2 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \sout_V_data_V_1_payload_A[7]_i_3 
       (.I0(tmp_6_fu_533_p2[7]),
        .I1(tmp_4_fu_500_p4__0[2]),
        .I2(tmp_4_fu_500_p4__0[1]),
        .I3(tmp_4_fu_500_p4__0[0]),
        .I4(tmp_4_fu_500_p4),
        .O(\sout_V_data_V_1_payload_A[7]_i_3_n_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sout_V_data_V_1_payload_A[7]_i_31 
       (.I0(result_3_1_reg_674[9]),
        .I1(kbuf_1_1_load_reg_664[6]),
        .O(\sout_V_data_V_1_payload_A[7]_i_31_n_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sout_V_data_V_1_payload_A[7]_i_32 
       (.I0(result_3_1_reg_674[8]),
        .I1(kbuf_1_1_load_reg_664[5]),
        .O(\sout_V_data_V_1_payload_A[7]_i_32_n_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sout_V_data_V_1_payload_A[7]_i_33 
       (.I0(result_3_1_reg_674[7]),
        .I1(kbuf_1_1_load_reg_664[4]),
        .O(\sout_V_data_V_1_payload_A[7]_i_33_n_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sout_V_data_V_1_payload_A[7]_i_34 
       (.I0(result_3_1_reg_674[6]),
        .I1(kbuf_1_1_load_reg_664[3]),
        .O(\sout_V_data_V_1_payload_A[7]_i_34_n_2 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \sout_V_data_V_1_payload_A[7]_i_35 
       (.I0(kbuf_1_1_load_reg_664[6]),
        .I1(result_3_1_reg_674[9]),
        .I2(kbuf_1_1_load_reg_664[7]),
        .O(\sout_V_data_V_1_payload_A[7]_i_35_n_2 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \sout_V_data_V_1_payload_A[7]_i_36 
       (.I0(kbuf_1_1_load_reg_664[5]),
        .I1(result_3_1_reg_674[8]),
        .I2(kbuf_1_1_load_reg_664[6]),
        .I3(result_3_1_reg_674[9]),
        .O(\sout_V_data_V_1_payload_A[7]_i_36_n_2 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \sout_V_data_V_1_payload_A[7]_i_37 
       (.I0(kbuf_1_1_load_reg_664[4]),
        .I1(result_3_1_reg_674[7]),
        .I2(kbuf_1_1_load_reg_664[5]),
        .I3(result_3_1_reg_674[8]),
        .O(\sout_V_data_V_1_payload_A[7]_i_37_n_2 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \sout_V_data_V_1_payload_A[7]_i_38 
       (.I0(kbuf_1_1_load_reg_664[3]),
        .I1(result_3_1_reg_674[6]),
        .I2(kbuf_1_1_load_reg_664[4]),
        .I3(result_3_1_reg_674[7]),
        .O(\sout_V_data_V_1_payload_A[7]_i_38_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sout_V_data_V_1_payload_A[7]_i_39 
       (.I0(kbuf_2_0_load_6_reg_658[5]),
        .I1(tmp3_reg_684[5]),
        .I2(kbuf_1_2_reg_669[5]),
        .O(\sout_V_data_V_1_payload_A[7]_i_39_n_2 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sout_V_data_V_1_payload_A[7]_i_40 
       (.I0(kbuf_2_0_load_6_reg_658[4]),
        .I1(tmp3_reg_684[4]),
        .I2(kbuf_1_2_reg_669[4]),
        .O(\sout_V_data_V_1_payload_A[7]_i_40_n_2 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sout_V_data_V_1_payload_A[7]_i_41 
       (.I0(kbuf_2_0_load_6_reg_658[3]),
        .I1(tmp3_reg_684[3]),
        .I2(kbuf_1_2_reg_669[3]),
        .O(\sout_V_data_V_1_payload_A[7]_i_41_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sout_V_data_V_1_payload_A[7]_i_42 
       (.I0(tmp3_reg_684[5]),
        .I1(kbuf_1_2_reg_669[5]),
        .I2(kbuf_2_0_load_6_reg_658[5]),
        .O(\sout_V_data_V_1_payload_A[7]_i_42_n_2 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sout_V_data_V_1_payload_A[7]_i_43 
       (.I0(kbuf_1_2_reg_669[7]),
        .I1(tmp3_reg_684[7]),
        .I2(kbuf_2_0_load_6_reg_658[7]),
        .I3(\sout_V_data_V_1_payload_A_reg[7]_i_7_n_9 ),
        .O(\sout_V_data_V_1_payload_A[7]_i_43_n_2 ));
  LUT3 #(
    .INIT(8'h96)) 
    \sout_V_data_V_1_payload_A[7]_i_44 
       (.I0(kbuf_2_0_load_6_reg_658[6]),
        .I1(tmp3_reg_684[6]),
        .I2(kbuf_1_2_reg_669[6]),
        .O(\sout_V_data_V_1_payload_A[7]_i_44_n_2 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sout_V_data_V_1_payload_A[7]_i_45 
       (.I0(result_3_1_reg_674[2]),
        .I1(tmp6_reg_679[2]),
        .I2(kbuf_2_0_load_6_reg_658[2]),
        .O(\sout_V_data_V_1_payload_A[7]_i_45_n_2 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sout_V_data_V_1_payload_A[7]_i_46 
       (.I0(result_3_1_reg_674[1]),
        .I1(tmp6_reg_679[1]),
        .I2(kbuf_2_0_load_6_reg_658[1]),
        .O(\sout_V_data_V_1_payload_A[7]_i_46_n_2 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sout_V_data_V_1_payload_A[7]_i_47 
       (.I0(result_3_1_reg_674[0]),
        .I1(tmp6_reg_679[0]),
        .I2(kbuf_2_0_load_6_reg_658[0]),
        .O(\sout_V_data_V_1_payload_A[7]_i_47_n_2 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sout_V_data_V_1_payload_A[7]_i_48 
       (.I0(\sout_V_data_V_1_payload_A_reg[7]_i_30_n_9 ),
        .I1(tmp6_reg_679[3]),
        .I2(kbuf_2_0_load_6_reg_658[3]),
        .I3(\sout_V_data_V_1_payload_A[7]_i_45_n_2 ),
        .O(\sout_V_data_V_1_payload_A[7]_i_48_n_2 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sout_V_data_V_1_payload_A[7]_i_49 
       (.I0(result_3_1_reg_674[2]),
        .I1(tmp6_reg_679[2]),
        .I2(kbuf_2_0_load_6_reg_658[2]),
        .I3(\sout_V_data_V_1_payload_A[7]_i_46_n_2 ),
        .O(\sout_V_data_V_1_payload_A[7]_i_49_n_2 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \sout_V_data_V_1_payload_A[7]_i_50 
       (.I0(result_3_1_reg_674[1]),
        .I1(tmp6_reg_679[1]),
        .I2(kbuf_2_0_load_6_reg_658[1]),
        .I3(\sout_V_data_V_1_payload_A[7]_i_47_n_2 ),
        .O(\sout_V_data_V_1_payload_A[7]_i_50_n_2 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \sout_V_data_V_1_payload_A[7]_i_51 
       (.I0(result_3_1_reg_674[0]),
        .I1(tmp6_reg_679[0]),
        .I2(kbuf_2_0_load_6_reg_658[0]),
        .O(\sout_V_data_V_1_payload_A[7]_i_51_n_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sout_V_data_V_1_payload_A[7]_i_52 
       (.I0(result_3_1_reg_674[5]),
        .I1(kbuf_1_1_load_reg_664[2]),
        .O(\sout_V_data_V_1_payload_A[7]_i_52_n_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sout_V_data_V_1_payload_A[7]_i_53 
       (.I0(result_3_1_reg_674[4]),
        .I1(kbuf_1_1_load_reg_664[1]),
        .O(\sout_V_data_V_1_payload_A[7]_i_53_n_2 ));
  LUT2 #(
    .INIT(4'hB)) 
    \sout_V_data_V_1_payload_A[7]_i_54 
       (.I0(result_3_1_reg_674[3]),
        .I1(kbuf_1_1_load_reg_664[0]),
        .O(\sout_V_data_V_1_payload_A[7]_i_54_n_2 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \sout_V_data_V_1_payload_A[7]_i_55 
       (.I0(kbuf_1_1_load_reg_664[2]),
        .I1(result_3_1_reg_674[5]),
        .I2(kbuf_1_1_load_reg_664[3]),
        .I3(result_3_1_reg_674[6]),
        .O(\sout_V_data_V_1_payload_A[7]_i_55_n_2 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \sout_V_data_V_1_payload_A[7]_i_56 
       (.I0(kbuf_1_1_load_reg_664[1]),
        .I1(result_3_1_reg_674[4]),
        .I2(kbuf_1_1_load_reg_664[2]),
        .I3(result_3_1_reg_674[5]),
        .O(\sout_V_data_V_1_payload_A[7]_i_56_n_2 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \sout_V_data_V_1_payload_A[7]_i_57 
       (.I0(kbuf_1_1_load_reg_664[0]),
        .I1(result_3_1_reg_674[3]),
        .I2(kbuf_1_1_load_reg_664[1]),
        .I3(result_3_1_reg_674[4]),
        .O(\sout_V_data_V_1_payload_A[7]_i_57_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sout_V_data_V_1_payload_A[7]_i_58 
       (.I0(result_3_1_reg_674[3]),
        .I1(kbuf_1_1_load_reg_664[0]),
        .O(\sout_V_data_V_1_payload_A[7]_i_58_n_2 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sout_V_data_V_1_payload_A[7]_i_8 
       (.I0(\sout_V_data_V_1_payload_A_reg[7]_i_7_n_8 ),
        .I1(tmp6_reg_679[8]),
        .O(\sout_V_data_V_1_payload_A[7]_i_8_n_2 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \sout_V_data_V_1_payload_A[7]_i_9 
       (.I0(\sout_V_data_V_1_payload_A_reg[7]_i_7_n_9 ),
        .I1(tmp6_reg_679[7]),
        .I2(kbuf_2_0_load_6_reg_658[7]),
        .O(\sout_V_data_V_1_payload_A[7]_i_9_n_2 ));
  FDSE \sout_V_data_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_A),
        .D(\sout_V_data_V_1_payload_A[0]_i_1_n_2 ),
        .Q(sout_V_data_V_1_payload_A[0]),
        .S(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  FDSE \sout_V_data_V_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_A),
        .D(\sout_V_data_V_1_payload_A[1]_i_1_n_2 ),
        .Q(sout_V_data_V_1_payload_A[1]),
        .S(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  FDSE \sout_V_data_V_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_A),
        .D(\sout_V_data_V_1_payload_A[2]_i_1_n_2 ),
        .Q(sout_V_data_V_1_payload_A[2]),
        .S(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  FDSE \sout_V_data_V_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_A),
        .D(\sout_V_data_V_1_payload_A[3]_i_1_n_2 ),
        .Q(sout_V_data_V_1_payload_A[3]),
        .S(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  CARRY4 \sout_V_data_V_1_payload_A_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\sout_V_data_V_1_payload_A_reg[3]_i_2_n_2 ,\sout_V_data_V_1_payload_A_reg[3]_i_2_n_3 ,\sout_V_data_V_1_payload_A_reg[3]_i_2_n_4 ,\sout_V_data_V_1_payload_A_reg[3]_i_2_n_5 }),
        .CYINIT(1'b0),
        .DI({\sout_V_data_V_1_payload_A[3]_i_3_n_2 ,\sout_V_data_V_1_payload_A[3]_i_4_n_2 ,\sout_V_data_V_1_payload_A[3]_i_5_n_2 ,result_3_1_reg_674[0]}),
        .O(tmp_6_fu_533_p2[3:0]),
        .S({\sout_V_data_V_1_payload_A[3]_i_6_n_2 ,\sout_V_data_V_1_payload_A[3]_i_7_n_2 ,\sout_V_data_V_1_payload_A[3]_i_8_n_2 ,\sout_V_data_V_1_payload_A[3]_i_9_n_2 }));
  FDSE \sout_V_data_V_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_A),
        .D(\sout_V_data_V_1_payload_A[4]_i_1_n_2 ),
        .Q(sout_V_data_V_1_payload_A[4]),
        .S(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  FDSE \sout_V_data_V_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_A),
        .D(\sout_V_data_V_1_payload_A[5]_i_1_n_2 ),
        .Q(sout_V_data_V_1_payload_A[5]),
        .S(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  FDSE \sout_V_data_V_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_A),
        .D(\sout_V_data_V_1_payload_A[6]_i_1_n_2 ),
        .Q(sout_V_data_V_1_payload_A[6]),
        .S(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  FDSE \sout_V_data_V_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_A),
        .D(\sout_V_data_V_1_payload_A[7]_i_3_n_2 ),
        .Q(sout_V_data_V_1_payload_A[7]),
        .S(\sout_V_data_V_1_payload_A[7]_i_1_n_2 ));
  CARRY4 \sout_V_data_V_1_payload_A_reg[7]_i_10 
       (.CI(\sout_V_data_V_1_payload_A_reg[7]_i_7_n_2 ),
        .CO(\NLW_sout_V_data_V_1_payload_A_reg[7]_i_10_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sout_V_data_V_1_payload_A_reg[7]_i_10_O_UNCONNECTED [3:1],\sout_V_data_V_1_payload_A_reg[7]_i_10_n_9 }),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 \sout_V_data_V_1_payload_A_reg[7]_i_21 
       (.CI(1'b0),
        .CO({\sout_V_data_V_1_payload_A_reg[7]_i_21_n_2 ,\sout_V_data_V_1_payload_A_reg[7]_i_21_n_3 ,\sout_V_data_V_1_payload_A_reg[7]_i_21_n_4 ,\sout_V_data_V_1_payload_A_reg[7]_i_21_n_5 }),
        .CYINIT(1'b0),
        .DI({\sout_V_data_V_1_payload_A[7]_i_45_n_2 ,\sout_V_data_V_1_payload_A[7]_i_46_n_2 ,\sout_V_data_V_1_payload_A[7]_i_47_n_2 ,1'b0}),
        .O(\NLW_sout_V_data_V_1_payload_A_reg[7]_i_21_O_UNCONNECTED [3:0]),
        .S({\sout_V_data_V_1_payload_A[7]_i_48_n_2 ,\sout_V_data_V_1_payload_A[7]_i_49_n_2 ,\sout_V_data_V_1_payload_A[7]_i_50_n_2 ,\sout_V_data_V_1_payload_A[7]_i_51_n_2 }));
  CARRY4 \sout_V_data_V_1_payload_A_reg[7]_i_30 
       (.CI(1'b0),
        .CO({\sout_V_data_V_1_payload_A_reg[7]_i_30_n_2 ,\sout_V_data_V_1_payload_A_reg[7]_i_30_n_3 ,\sout_V_data_V_1_payload_A_reg[7]_i_30_n_4 ,\sout_V_data_V_1_payload_A_reg[7]_i_30_n_5 }),
        .CYINIT(1'b0),
        .DI({\sout_V_data_V_1_payload_A[7]_i_52_n_2 ,\sout_V_data_V_1_payload_A[7]_i_53_n_2 ,\sout_V_data_V_1_payload_A[7]_i_54_n_2 ,1'b0}),
        .O({\sout_V_data_V_1_payload_A_reg[7]_i_30_n_6 ,\sout_V_data_V_1_payload_A_reg[7]_i_30_n_7 ,\sout_V_data_V_1_payload_A_reg[7]_i_30_n_8 ,\sout_V_data_V_1_payload_A_reg[7]_i_30_n_9 }),
        .S({\sout_V_data_V_1_payload_A[7]_i_55_n_2 ,\sout_V_data_V_1_payload_A[7]_i_56_n_2 ,\sout_V_data_V_1_payload_A[7]_i_57_n_2 ,\sout_V_data_V_1_payload_A[7]_i_58_n_2 }));
  CARRY4 \sout_V_data_V_1_payload_A_reg[7]_i_4 
       (.CI(\sout_V_data_V_1_payload_A_reg[7]_i_6_n_2 ),
        .CO({\NLW_sout_V_data_V_1_payload_A_reg[7]_i_4_CO_UNCONNECTED [3],\sout_V_data_V_1_payload_A_reg[7]_i_4_n_3 ,\sout_V_data_V_1_payload_A_reg[7]_i_4_n_4 ,\sout_V_data_V_1_payload_A_reg[7]_i_4_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,\sout_V_data_V_1_payload_A_reg[7]_i_7_n_6 ,\sout_V_data_V_1_payload_A[7]_i_8_n_2 ,\sout_V_data_V_1_payload_A[7]_i_9_n_2 }),
        .O({tmp_4_fu_500_p4,tmp_4_fu_500_p4__0}),
        .S({\sout_V_data_V_1_payload_A_reg[7]_i_10_n_9 ,\sout_V_data_V_1_payload_A[7]_i_11_n_2 ,\sout_V_data_V_1_payload_A[7]_i_12_n_2 ,\sout_V_data_V_1_payload_A[7]_i_13_n_2 }));
  CARRY4 \sout_V_data_V_1_payload_A_reg[7]_i_5 
       (.CI(\sout_V_data_V_1_payload_A_reg[3]_i_2_n_2 ),
        .CO({\NLW_sout_V_data_V_1_payload_A_reg[7]_i_5_CO_UNCONNECTED [3],\sout_V_data_V_1_payload_A_reg[7]_i_5_n_3 ,\sout_V_data_V_1_payload_A_reg[7]_i_5_n_4 ,\sout_V_data_V_1_payload_A_reg[7]_i_5_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,\sout_V_data_V_1_payload_A[7]_i_14_n_2 ,\sout_V_data_V_1_payload_A[7]_i_15_n_2 ,\sout_V_data_V_1_payload_A[7]_i_16_n_2 }),
        .O(tmp_6_fu_533_p2[7:4]),
        .S({\sout_V_data_V_1_payload_A[7]_i_17_n_2 ,\sout_V_data_V_1_payload_A[7]_i_18_n_2 ,\sout_V_data_V_1_payload_A[7]_i_19_n_2 ,\sout_V_data_V_1_payload_A[7]_i_20_n_2 }));
  CARRY4 \sout_V_data_V_1_payload_A_reg[7]_i_6 
       (.CI(\sout_V_data_V_1_payload_A_reg[7]_i_21_n_2 ),
        .CO({\sout_V_data_V_1_payload_A_reg[7]_i_6_n_2 ,\sout_V_data_V_1_payload_A_reg[7]_i_6_n_3 ,\sout_V_data_V_1_payload_A_reg[7]_i_6_n_4 ,\sout_V_data_V_1_payload_A_reg[7]_i_6_n_5 }),
        .CYINIT(1'b0),
        .DI({\sout_V_data_V_1_payload_A[7]_i_22_n_2 ,\sout_V_data_V_1_payload_A[7]_i_23_n_2 ,\sout_V_data_V_1_payload_A[7]_i_24_n_2 ,\sout_V_data_V_1_payload_A[7]_i_25_n_2 }),
        .O(\NLW_sout_V_data_V_1_payload_A_reg[7]_i_6_O_UNCONNECTED [3:0]),
        .S({\sout_V_data_V_1_payload_A[7]_i_26_n_2 ,\sout_V_data_V_1_payload_A[7]_i_27_n_2 ,\sout_V_data_V_1_payload_A[7]_i_28_n_2 ,\sout_V_data_V_1_payload_A[7]_i_29_n_2 }));
  CARRY4 \sout_V_data_V_1_payload_A_reg[7]_i_7 
       (.CI(\sout_V_data_V_1_payload_A_reg[7]_i_30_n_2 ),
        .CO({\sout_V_data_V_1_payload_A_reg[7]_i_7_n_2 ,\sout_V_data_V_1_payload_A_reg[7]_i_7_n_3 ,\sout_V_data_V_1_payload_A_reg[7]_i_7_n_4 ,\sout_V_data_V_1_payload_A_reg[7]_i_7_n_5 }),
        .CYINIT(1'b0),
        .DI({\sout_V_data_V_1_payload_A[7]_i_31_n_2 ,\sout_V_data_V_1_payload_A[7]_i_32_n_2 ,\sout_V_data_V_1_payload_A[7]_i_33_n_2 ,\sout_V_data_V_1_payload_A[7]_i_34_n_2 }),
        .O({\sout_V_data_V_1_payload_A_reg[7]_i_7_n_6 ,\sout_V_data_V_1_payload_A_reg[7]_i_7_n_7 ,\sout_V_data_V_1_payload_A_reg[7]_i_7_n_8 ,\sout_V_data_V_1_payload_A_reg[7]_i_7_n_9 }),
        .S({\sout_V_data_V_1_payload_A[7]_i_35_n_2 ,\sout_V_data_V_1_payload_A[7]_i_36_n_2 ,\sout_V_data_V_1_payload_A[7]_i_37_n_2 ,\sout_V_data_V_1_payload_A[7]_i_38_n_2 }));
  LUT5 #(
    .INIT(32'h22222220)) 
    \sout_V_data_V_1_payload_B[7]_i_1 
       (.I0(sout_V_data_V_1_load_B),
        .I1(tmp_4_fu_500_p4),
        .I2(tmp_4_fu_500_p4__0[0]),
        .I3(tmp_4_fu_500_p4__0[1]),
        .I4(tmp_4_fu_500_p4__0[2]),
        .O(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \sout_V_data_V_1_payload_B[7]_i_2 
       (.I0(sout_V_data_V_1_sel_wr),
        .I1(sout_V_data_V_1_ack_in),
        .I2(\sout_V_data_V_1_state_reg_n_2_[0] ),
        .O(sout_V_data_V_1_load_B));
  FDSE \sout_V_data_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_B),
        .D(\sout_V_data_V_1_payload_A[0]_i_1_n_2 ),
        .Q(sout_V_data_V_1_payload_B[0]),
        .S(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  FDSE \sout_V_data_V_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_B),
        .D(\sout_V_data_V_1_payload_A[1]_i_1_n_2 ),
        .Q(sout_V_data_V_1_payload_B[1]),
        .S(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  FDSE \sout_V_data_V_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_B),
        .D(\sout_V_data_V_1_payload_A[2]_i_1_n_2 ),
        .Q(sout_V_data_V_1_payload_B[2]),
        .S(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  FDSE \sout_V_data_V_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_B),
        .D(\sout_V_data_V_1_payload_A[3]_i_1_n_2 ),
        .Q(sout_V_data_V_1_payload_B[3]),
        .S(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  FDSE \sout_V_data_V_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_B),
        .D(\sout_V_data_V_1_payload_A[4]_i_1_n_2 ),
        .Q(sout_V_data_V_1_payload_B[4]),
        .S(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  FDSE \sout_V_data_V_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_B),
        .D(\sout_V_data_V_1_payload_A[5]_i_1_n_2 ),
        .Q(sout_V_data_V_1_payload_B[5]),
        .S(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  FDSE \sout_V_data_V_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_B),
        .D(\sout_V_data_V_1_payload_A[6]_i_1_n_2 ),
        .Q(sout_V_data_V_1_payload_B[6]),
        .S(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  FDSE \sout_V_data_V_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(sout_V_data_V_1_load_B),
        .D(\sout_V_data_V_1_payload_A[7]_i_3_n_2 ),
        .Q(sout_V_data_V_1_payload_B[7]),
        .S(\sout_V_data_V_1_payload_B[7]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    sout_V_data_V_1_sel_rd_i_1
       (.I0(\sout_V_data_V_1_state_reg_n_2_[0] ),
        .I1(sout_TREADY),
        .I2(sout_V_data_V_1_sel),
        .O(sout_V_data_V_1_sel_rd_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    sout_V_data_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(sout_V_data_V_1_sel_rd_i_1_n_2),
        .Q(sout_V_data_V_1_sel),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h9)) 
    sout_V_data_V_1_sel_wr_i_1
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(sout_V_data_V_1_sel_wr),
        .O(sout_V_data_V_1_sel_wr_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    sout_V_data_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(sout_V_data_V_1_sel_wr_i_1_n_2),
        .Q(sout_V_data_V_1_sel_wr),
        .R(reset));
  LUT5 #(
    .INIT(32'h2A00AAAA)) 
    \sout_V_data_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(sout_V_data_V_1_ack_in),
        .I2(sout_TREADY),
        .I3(\sout_V_data_V_1_state_reg_n_2_[0] ),
        .I4(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .O(\sout_V_data_V_1_state[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFBBB)) 
    \sout_V_data_V_1_state[1]_i_1 
       (.I0(sout_TREADY),
        .I1(\sout_V_data_V_1_state_reg_n_2_[0] ),
        .I2(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I3(sout_V_data_V_1_ack_in),
        .O(\sout_V_data_V_1_state[1]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_data_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_data_V_1_state[0]_i_1_n_2 ),
        .Q(\sout_V_data_V_1_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_data_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_data_V_1_state[1]_i_1_n_2 ),
        .Q(sout_V_data_V_1_ack_in),
        .R(reset));
  LUT5 #(
    .INIT(32'h70F05000)) 
    \sout_V_dest_V_1_state[0]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(sout_TREADY),
        .I2(ap_rst_n),
        .I3(\sout_V_dest_V_1_state_reg_n_2_[1] ),
        .I4(sout_TVALID),
        .O(\sout_V_dest_V_1_state[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \sout_V_dest_V_1_state[0]_i_2 
       (.I0(tmp_7_reg_644_pp0_iter1_reg),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(lbuf_1_U_n_13),
        .O(\sout_V_dest_V_1_state[0]_i_2_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF8FF)) 
    \sout_V_dest_V_1_state[1]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(\sout_V_dest_V_1_state_reg_n_2_[1] ),
        .I2(sout_TREADY),
        .I3(sout_TVALID),
        .O(\sout_V_dest_V_1_state[1]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_dest_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_dest_V_1_state[0]_i_1_n_2 ),
        .Q(sout_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_dest_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_dest_V_1_state[1]_i_1_n_2 ),
        .Q(\sout_V_dest_V_1_state_reg_n_2_[1] ),
        .R(reset));
  LUT5 #(
    .INIT(32'h70F05000)) 
    \sout_V_id_V_1_state[0]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(sout_TREADY),
        .I2(ap_rst_n),
        .I3(\sout_V_id_V_1_state_reg_n_2_[1] ),
        .I4(\sout_V_id_V_1_state_reg_n_2_[0] ),
        .O(\sout_V_id_V_1_state[0]_i_1_n_2 ));
  LUT4 #(
    .INIT(16'hF8FF)) 
    \sout_V_id_V_1_state[1]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(\sout_V_id_V_1_state_reg_n_2_[1] ),
        .I2(sout_TREADY),
        .I3(\sout_V_id_V_1_state_reg_n_2_[0] ),
        .O(\sout_V_id_V_1_state[1]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_id_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_id_V_1_state[0]_i_1_n_2 ),
        .Q(\sout_V_id_V_1_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_id_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_id_V_1_state[1]_i_1_n_2 ),
        .Q(\sout_V_id_V_1_state_reg_n_2_[1] ),
        .R(reset));
  LUT5 #(
    .INIT(32'h70F05000)) 
    \sout_V_keep_V_1_state[0]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(sout_TREADY),
        .I2(ap_rst_n),
        .I3(\sout_V_keep_V_1_state_reg_n_2_[1] ),
        .I4(\sout_V_keep_V_1_state_reg_n_2_[0] ),
        .O(\sout_V_keep_V_1_state[0]_i_1_n_2 ));
  LUT4 #(
    .INIT(16'hF8FF)) 
    \sout_V_keep_V_1_state[1]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(\sout_V_keep_V_1_state_reg_n_2_[1] ),
        .I2(sout_TREADY),
        .I3(\sout_V_keep_V_1_state_reg_n_2_[0] ),
        .O(\sout_V_keep_V_1_state[1]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_keep_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_keep_V_1_state[0]_i_1_n_2 ),
        .Q(\sout_V_keep_V_1_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_keep_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_keep_V_1_state[1]_i_1_n_2 ),
        .Q(\sout_V_keep_V_1_state_reg_n_2_[1] ),
        .R(reset));
  LUT5 #(
    .INIT(32'hEFEE2022)) 
    \sout_V_last_V_1_payload_A[0]_i_1 
       (.I0(tmp_last_V_reg_648_pp0_iter1_reg),
        .I1(sout_V_last_V_1_sel_wr),
        .I2(sout_V_last_V_1_ack_in),
        .I3(\sout_V_last_V_1_state_reg_n_2_[0] ),
        .I4(sout_V_last_V_1_payload_A),
        .O(\sout_V_last_V_1_payload_A[0]_i_1_n_2 ));
  FDRE \sout_V_last_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_last_V_1_payload_A[0]_i_1_n_2 ),
        .Q(sout_V_last_V_1_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBB8088)) 
    \sout_V_last_V_1_payload_B[0]_i_1 
       (.I0(tmp_last_V_reg_648_pp0_iter1_reg),
        .I1(sout_V_last_V_1_sel_wr),
        .I2(sout_V_last_V_1_ack_in),
        .I3(\sout_V_last_V_1_state_reg_n_2_[0] ),
        .I4(sout_V_last_V_1_payload_B),
        .O(\sout_V_last_V_1_payload_B[0]_i_1_n_2 ));
  FDRE \sout_V_last_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_last_V_1_payload_B[0]_i_1_n_2 ),
        .Q(sout_V_last_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    sout_V_last_V_1_sel_rd_i_1
       (.I0(\sout_V_last_V_1_state_reg_n_2_[0] ),
        .I1(sout_TREADY),
        .I2(sout_V_last_V_1_sel),
        .O(sout_V_last_V_1_sel_rd_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    sout_V_last_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(sout_V_last_V_1_sel_rd_i_1_n_2),
        .Q(sout_V_last_V_1_sel),
        .R(reset));
  LUT3 #(
    .INIT(8'hB4)) 
    sout_V_last_V_1_sel_wr_i_1
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(sout_V_last_V_1_ack_in),
        .I2(sout_V_last_V_1_sel_wr),
        .O(sout_V_last_V_1_sel_wr_i_1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    sout_V_last_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(sout_V_last_V_1_sel_wr_i_1_n_2),
        .Q(sout_V_last_V_1_sel_wr),
        .R(reset));
  LUT5 #(
    .INIT(32'h20AAA0A0)) 
    \sout_V_last_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(sout_TREADY),
        .I2(\sout_V_last_V_1_state_reg_n_2_[0] ),
        .I3(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I4(sout_V_last_V_1_ack_in),
        .O(\sout_V_last_V_1_state[0]_i_1_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFBBB)) 
    \sout_V_last_V_1_state[1]_i_1 
       (.I0(sout_TREADY),
        .I1(\sout_V_last_V_1_state_reg_n_2_[0] ),
        .I2(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I3(sout_V_last_V_1_ack_in),
        .O(sout_V_last_V_1_state));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_last_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_last_V_1_state[0]_i_1_n_2 ),
        .Q(\sout_V_last_V_1_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_last_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(sout_V_last_V_1_state),
        .Q(sout_V_last_V_1_ack_in),
        .R(reset));
  LUT5 #(
    .INIT(32'h70F05000)) 
    \sout_V_strb_V_1_state[0]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(sout_TREADY),
        .I2(ap_rst_n),
        .I3(\sout_V_strb_V_1_state_reg_n_2_[1] ),
        .I4(\sout_V_strb_V_1_state_reg_n_2_[0] ),
        .O(\sout_V_strb_V_1_state[0]_i_1_n_2 ));
  LUT4 #(
    .INIT(16'hF8FF)) 
    \sout_V_strb_V_1_state[1]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(\sout_V_strb_V_1_state_reg_n_2_[1] ),
        .I2(sout_TREADY),
        .I3(\sout_V_strb_V_1_state_reg_n_2_[0] ),
        .O(\sout_V_strb_V_1_state[1]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_strb_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_strb_V_1_state[0]_i_1_n_2 ),
        .Q(\sout_V_strb_V_1_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_strb_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_strb_V_1_state[1]_i_1_n_2 ),
        .Q(\sout_V_strb_V_1_state_reg_n_2_[1] ),
        .R(reset));
  LUT5 #(
    .INIT(32'h70F05000)) 
    \sout_V_user_V_1_state[0]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(sout_TREADY),
        .I2(ap_rst_n),
        .I3(\sout_V_user_V_1_state_reg_n_2_[1] ),
        .I4(\sout_V_user_V_1_state_reg_n_2_[0] ),
        .O(\sout_V_user_V_1_state[0]_i_1_n_2 ));
  LUT4 #(
    .INIT(16'hF8FF)) 
    \sout_V_user_V_1_state[1]_i_1 
       (.I0(\sout_V_dest_V_1_state[0]_i_2_n_2 ),
        .I1(\sout_V_user_V_1_state_reg_n_2_[1] ),
        .I2(sout_TREADY),
        .I3(\sout_V_user_V_1_state_reg_n_2_[0] ),
        .O(\sout_V_user_V_1_state[1]_i_1_n_2 ));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_user_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_user_V_1_state[0]_i_1_n_2 ),
        .Q(\sout_V_user_V_1_state_reg_n_2_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sout_V_user_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\sout_V_user_V_1_state[1]_i_1_n_2 ),
        .Q(\sout_V_user_V_1_state_reg_n_2_[1] ),
        .R(reset));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp3_reg_684[3]_i_2 
       (.I0(kbuf_2_1_fu_134[3]),
        .I1(kbuf_2_1_1_reg_613[3]),
        .O(\tmp3_reg_684[3]_i_2_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp3_reg_684[3]_i_3 
       (.I0(kbuf_2_1_fu_134[2]),
        .I1(kbuf_2_1_1_reg_613[2]),
        .O(\tmp3_reg_684[3]_i_3_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp3_reg_684[3]_i_4 
       (.I0(kbuf_2_1_fu_134[1]),
        .I1(kbuf_2_1_1_reg_613[1]),
        .O(\tmp3_reg_684[3]_i_4_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp3_reg_684[3]_i_5 
       (.I0(kbuf_2_1_fu_134[0]),
        .I1(kbuf_2_1_1_reg_613[0]),
        .O(\tmp3_reg_684[3]_i_5_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp3_reg_684[7]_i_2 
       (.I0(kbuf_2_1_fu_134[7]),
        .I1(kbuf_2_1_1_reg_613[7]),
        .O(\tmp3_reg_684[7]_i_2_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp3_reg_684[7]_i_3 
       (.I0(kbuf_2_1_fu_134[6]),
        .I1(kbuf_2_1_1_reg_613[6]),
        .O(\tmp3_reg_684[7]_i_3_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp3_reg_684[7]_i_4 
       (.I0(kbuf_2_1_fu_134[5]),
        .I1(kbuf_2_1_1_reg_613[5]),
        .O(\tmp3_reg_684[7]_i_4_n_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    \tmp3_reg_684[7]_i_5 
       (.I0(kbuf_2_1_fu_134[4]),
        .I1(kbuf_2_1_1_reg_613[4]),
        .O(\tmp3_reg_684[7]_i_5_n_2 ));
  FDRE \tmp3_reg_684_reg[0] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp3_fu_453_p2[0]),
        .Q(tmp3_reg_684[0]),
        .R(1'b0));
  FDRE \tmp3_reg_684_reg[1] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp3_fu_453_p2[1]),
        .Q(tmp3_reg_684[1]),
        .R(1'b0));
  FDRE \tmp3_reg_684_reg[2] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp3_fu_453_p2[2]),
        .Q(tmp3_reg_684[2]),
        .R(1'b0));
  FDRE \tmp3_reg_684_reg[3] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp3_fu_453_p2[3]),
        .Q(tmp3_reg_684[3]),
        .R(1'b0));
  CARRY4 \tmp3_reg_684_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\tmp3_reg_684_reg[3]_i_1_n_2 ,\tmp3_reg_684_reg[3]_i_1_n_3 ,\tmp3_reg_684_reg[3]_i_1_n_4 ,\tmp3_reg_684_reg[3]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI(kbuf_2_1_fu_134[3:0]),
        .O(tmp3_fu_453_p2[3:0]),
        .S({\tmp3_reg_684[3]_i_2_n_2 ,\tmp3_reg_684[3]_i_3_n_2 ,\tmp3_reg_684[3]_i_4_n_2 ,\tmp3_reg_684[3]_i_5_n_2 }));
  FDRE \tmp3_reg_684_reg[4] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp3_fu_453_p2[4]),
        .Q(tmp3_reg_684[4]),
        .R(1'b0));
  FDRE \tmp3_reg_684_reg[5] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp3_fu_453_p2[5]),
        .Q(tmp3_reg_684[5]),
        .R(1'b0));
  FDRE \tmp3_reg_684_reg[6] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp3_fu_453_p2[6]),
        .Q(tmp3_reg_684[6]),
        .R(1'b0));
  FDRE \tmp3_reg_684_reg[7] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp3_fu_453_p2[7]),
        .Q(tmp3_reg_684[7]),
        .R(1'b0));
  CARRY4 \tmp3_reg_684_reg[7]_i_1 
       (.CI(\tmp3_reg_684_reg[3]_i_1_n_2 ),
        .CO({\NLW_tmp3_reg_684_reg[7]_i_1_CO_UNCONNECTED [3],\tmp3_reg_684_reg[7]_i_1_n_3 ,\tmp3_reg_684_reg[7]_i_1_n_4 ,\tmp3_reg_684_reg[7]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,kbuf_2_1_fu_134[6:4]}),
        .O(tmp3_fu_453_p2[7:4]),
        .S({\tmp3_reg_684[7]_i_2_n_2 ,\tmp3_reg_684[7]_i_3_n_2 ,\tmp3_reg_684[7]_i_4_n_2 ,\tmp3_reg_684[7]_i_5_n_2 }));
  FDRE \tmp6_reg_679_reg[0] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp6_fu_447_p2[0]),
        .Q(tmp6_reg_679[0]),
        .R(1'b0));
  FDRE \tmp6_reg_679_reg[1] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp6_fu_447_p2[1]),
        .Q(tmp6_reg_679[1]),
        .R(1'b0));
  FDRE \tmp6_reg_679_reg[2] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp6_fu_447_p2[2]),
        .Q(tmp6_reg_679[2]),
        .R(1'b0));
  FDRE \tmp6_reg_679_reg[3] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp6_fu_447_p2[3]),
        .Q(tmp6_reg_679[3]),
        .R(1'b0));
  FDRE \tmp6_reg_679_reg[4] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp6_fu_447_p2[4]),
        .Q(tmp6_reg_679[4]),
        .R(1'b0));
  FDRE \tmp6_reg_679_reg[5] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp6_fu_447_p2[5]),
        .Q(tmp6_reg_679[5]),
        .R(1'b0));
  FDRE \tmp6_reg_679_reg[6] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp6_fu_447_p2[6]),
        .Q(tmp6_reg_679[6]),
        .R(1'b0));
  FDRE \tmp6_reg_679_reg[7] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp6_fu_447_p2[7]),
        .Q(tmp6_reg_679[7]),
        .R(1'b0));
  FDRE \tmp6_reg_679_reg[8] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp6_fu_447_p2[8]),
        .Q(tmp6_reg_679[8]),
        .R(1'b0));
  FDRE \tmp6_reg_679_reg[9] 
       (.C(ap_clk),
        .CE(kbuf_1_1_load_reg_6640),
        .D(tmp6_fu_447_p2[9]),
        .Q(tmp6_reg_679[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \tmp_7_reg_644[0]_i_1 
       (.I0(lbuf_1_U_n_13),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(exitcond1_fu_251_p2),
        .O(lbuf_0_addr_reg_6290));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \tmp_7_reg_644[0]_i_2 
       (.I0(\tmp_7_reg_644[0]_i_3_n_2 ),
        .I1(i_reg_226_reg__0[12]),
        .I2(i_reg_226_reg),
        .I3(\tmp_7_reg_644[0]_i_4_n_2 ),
        .I4(i_reg_226_reg__0[9]),
        .I5(\tmp_7_reg_644[0]_i_5_n_2 ),
        .O(tmp_7_fu_286_p2));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \tmp_7_reg_644[0]_i_3 
       (.I0(i_reg_226_reg__0[10]),
        .I1(i_reg_226_reg__0[17]),
        .I2(i_reg_226_reg__0[11]),
        .O(\tmp_7_reg_644[0]_i_3_n_2 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tmp_7_reg_644[0]_i_4 
       (.I0(i_reg_226_reg__0[14]),
        .I1(i_reg_226_reg__0[13]),
        .I2(i_reg_226_reg__0[16]),
        .I3(i_reg_226_reg__0[15]),
        .O(\tmp_7_reg_644[0]_i_4_n_2 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \tmp_7_reg_644[0]_i_5 
       (.I0(\tmp_7_reg_644[0]_i_6_n_2 ),
        .I1(i_reg_226_reg__0[0]),
        .I2(i_reg_226_reg__0[2]),
        .I3(i_reg_226_reg__0[1]),
        .I4(i_reg_226_reg__0[3]),
        .I5(i_reg_226_reg__0[4]),
        .O(\tmp_7_reg_644[0]_i_5_n_2 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tmp_7_reg_644[0]_i_6 
       (.I0(i_reg_226_reg__0[6]),
        .I1(i_reg_226_reg__0[5]),
        .I2(i_reg_226_reg__0[8]),
        .I3(i_reg_226_reg__0[7]),
        .O(\tmp_7_reg_644[0]_i_6_n_2 ));
  LUT2 #(
    .INIT(4'h4)) 
    \tmp_7_reg_644_pp0_iter1_reg[0]_i_1 
       (.I0(lbuf_1_U_n_13),
        .I1(ap_CS_fsm_pp0_stage0),
        .O(exitcond1_reg_6200));
  FDRE \tmp_7_reg_644_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(tmp_7_reg_644),
        .Q(tmp_7_reg_644_pp0_iter1_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \tmp_7_reg_644_pp0_iter2_reg[0]_i_1 
       (.I0(tmp_7_reg_644_pp0_iter1_reg),
        .I1(lbuf_1_U_n_13),
        .I2(tmp_7_reg_644_pp0_iter2_reg),
        .O(\tmp_7_reg_644_pp0_iter2_reg[0]_i_1_n_2 ));
  FDRE \tmp_7_reg_644_pp0_iter2_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_7_reg_644_pp0_iter2_reg[0]_i_1_n_2 ),
        .Q(tmp_7_reg_644_pp0_iter2_reg),
        .R(1'b0));
  FDRE \tmp_7_reg_644_reg[0] 
       (.C(ap_clk),
        .CE(lbuf_0_addr_reg_6290),
        .D(tmp_7_fu_286_p2),
        .Q(tmp_7_reg_644),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFB00FF04FF00FF00)) 
    \tmp_last_V_reg_648[0]_i_1 
       (.I0(lbuf_1_U_n_13),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(exitcond1_fu_251_p2),
        .I3(\tmp_last_V_reg_648_reg_n_2_[0] ),
        .I4(\tmp_last_V_reg_648[0]_i_2_n_2 ),
        .I5(tmp_7_fu_286_p2),
        .O(\tmp_last_V_reg_648[0]_i_1_n_2 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \tmp_last_V_reg_648[0]_i_2 
       (.I0(\exitcond1_reg_620[0]_i_2_n_2 ),
        .I1(i_reg_226_reg__0[0]),
        .I2(i_reg_226_reg__0[3]),
        .I3(i_reg_226_reg__0[4]),
        .I4(i_reg_226_reg__0[12]),
        .I5(\exitcond1_reg_620[0]_i_3_n_2 ),
        .O(\tmp_last_V_reg_648[0]_i_2_n_2 ));
  FDRE \tmp_last_V_reg_648_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(exitcond1_reg_6200),
        .D(\tmp_last_V_reg_648_reg_n_2_[0] ),
        .Q(tmp_last_V_reg_648_pp0_iter1_reg),
        .R(1'b0));
  FDRE \tmp_last_V_reg_648_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_last_V_reg_648[0]_i_1_n_2 ),
        .Q(\tmp_last_V_reg_648_reg_n_2_[0] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv_lbuf_0
   (D,
    result_3_1_fu_420_p2,
    ap_clk,
    E,
    ce0,
    Q,
    out,
    ram_reg,
    WEA,
    \result_3_1_reg_674_reg[9] ,
    \result_3_1_reg_674_reg[9]_0 ,
    \result_3_1_reg_674_reg[9]_1 );
  output [7:0]D;
  output [9:0]result_3_1_fu_420_p2;
  input ap_clk;
  input [0:0]E;
  input ce0;
  input [8:0]Q;
  input [8:0]out;
  input [7:0]ram_reg;
  input [0:0]WEA;
  input [7:0]\result_3_1_reg_674_reg[9] ;
  input [7:0]\result_3_1_reg_674_reg[9]_0 ;
  input [7:0]\result_3_1_reg_674_reg[9]_1 ;

  wire [7:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]WEA;
  wire ap_clk;
  wire ce0;
  wire [8:0]out;
  wire [7:0]ram_reg;
  wire [9:0]result_3_1_fu_420_p2;
  wire [7:0]\result_3_1_reg_674_reg[9] ;
  wire [7:0]\result_3_1_reg_674_reg[9]_0 ;
  wire [7:0]\result_3_1_reg_674_reg[9]_1 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv_lbuf_0_ram_1 hw_conv_lbuf_0_ram_U
       (.D(D),
        .E(E),
        .Q(Q),
        .WEA(WEA),
        .ap_clk(ap_clk),
        .ce0(ce0),
        .out(out),
        .ram_reg_0(ram_reg),
        .result_3_1_fu_420_p2(result_3_1_fu_420_p2),
        .\result_3_1_reg_674_reg[9] (\result_3_1_reg_674_reg[9] ),
        .\result_3_1_reg_674_reg[9]_0 (\result_3_1_reg_674_reg[9]_0 ),
        .\result_3_1_reg_674_reg[9]_1 (\result_3_1_reg_674_reg[9]_1 ));
endmodule

(* ORIG_REF_NAME = "hw_conv_lbuf_0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv_lbuf_0_0
   (D,
    E,
    ce0,
    WEA,
    \sin_V_data_V_0_state_reg[0] ,
    ram_reg,
    ap_clk,
    Q,
    out,
    ram_reg_0,
    ram_reg_1,
    ap_enable_reg_pp0_iter0,
    i_reg_226_reg,
    ap_enable_reg_pp0_iter2,
    tmp_7_reg_644_pp0_iter1_reg,
    ram_reg_i_4,
    tmp_7_reg_644_pp0_iter2_reg,
    sout_V_data_V_1_ack_in,
    \tmp6_reg_679_reg[9] ,
    \tmp6_reg_679_reg[9]_0 ,
    ram_reg_2,
    ap_enable_reg_pp0_iter1,
    ram_reg_3);
  output [7:0]D;
  output [0:0]E;
  output ce0;
  output [0:0]WEA;
  output \sin_V_data_V_0_state_reg[0] ;
  output [9:0]ram_reg;
  input ap_clk;
  input [8:0]Q;
  input [8:0]out;
  input [7:0]ram_reg_0;
  input ram_reg_1;
  input ap_enable_reg_pp0_iter0;
  input [0:0]i_reg_226_reg;
  input ap_enable_reg_pp0_iter2;
  input tmp_7_reg_644_pp0_iter1_reg;
  input ram_reg_i_4;
  input tmp_7_reg_644_pp0_iter2_reg;
  input sout_V_data_V_1_ack_in;
  input [7:0]\tmp6_reg_679_reg[9] ;
  input [7:0]\tmp6_reg_679_reg[9]_0 ;
  input [0:0]ram_reg_2;
  input ap_enable_reg_pp0_iter1;
  input ram_reg_3;

  wire [7:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]WEA;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ce0;
  wire [0:0]i_reg_226_reg;
  wire [8:0]out;
  wire [9:0]ram_reg;
  wire [7:0]ram_reg_0;
  wire ram_reg_1;
  wire [0:0]ram_reg_2;
  wire ram_reg_3;
  wire ram_reg_i_4;
  wire \sin_V_data_V_0_state_reg[0] ;
  wire sout_V_data_V_1_ack_in;
  wire [7:0]\tmp6_reg_679_reg[9] ;
  wire [7:0]\tmp6_reg_679_reg[9]_0 ;
  wire tmp_7_reg_644_pp0_iter1_reg;
  wire tmp_7_reg_644_pp0_iter2_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv_lbuf_0_ram hw_conv_lbuf_0_ram_U
       (.D(D),
        .E(E),
        .Q(Q),
        .WEA(WEA),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_enable_reg_pp0_iter2(ap_enable_reg_pp0_iter2),
        .ce0(ce0),
        .i_reg_226_reg(i_reg_226_reg),
        .out(out),
        .ram_reg_0(ram_reg),
        .ram_reg_1(ram_reg_0),
        .ram_reg_2(ram_reg_1),
        .ram_reg_3(ram_reg_2),
        .ram_reg_4(ram_reg_3),
        .ram_reg_i_4_0(ram_reg_i_4),
        .\sin_V_data_V_0_state_reg[0] (\sin_V_data_V_0_state_reg[0] ),
        .sout_V_data_V_1_ack_in(sout_V_data_V_1_ack_in),
        .\tmp6_reg_679_reg[9] (\tmp6_reg_679_reg[9] ),
        .\tmp6_reg_679_reg[9]_0 (\tmp6_reg_679_reg[9]_0 ),
        .tmp_7_reg_644_pp0_iter1_reg(tmp_7_reg_644_pp0_iter1_reg),
        .tmp_7_reg_644_pp0_iter2_reg(tmp_7_reg_644_pp0_iter2_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv_lbuf_0_ram
   (D,
    E,
    ce0,
    WEA,
    \sin_V_data_V_0_state_reg[0] ,
    ram_reg_0,
    ap_clk,
    Q,
    out,
    ram_reg_1,
    ram_reg_2,
    ap_enable_reg_pp0_iter0,
    i_reg_226_reg,
    ap_enable_reg_pp0_iter2,
    tmp_7_reg_644_pp0_iter1_reg,
    ram_reg_i_4_0,
    tmp_7_reg_644_pp0_iter2_reg,
    sout_V_data_V_1_ack_in,
    \tmp6_reg_679_reg[9] ,
    \tmp6_reg_679_reg[9]_0 ,
    ram_reg_3,
    ap_enable_reg_pp0_iter1,
    ram_reg_4);
  output [7:0]D;
  output [0:0]E;
  output ce0;
  output [0:0]WEA;
  output \sin_V_data_V_0_state_reg[0] ;
  output [9:0]ram_reg_0;
  input ap_clk;
  input [8:0]Q;
  input [8:0]out;
  input [7:0]ram_reg_1;
  input ram_reg_2;
  input ap_enable_reg_pp0_iter0;
  input [0:0]i_reg_226_reg;
  input ap_enable_reg_pp0_iter2;
  input tmp_7_reg_644_pp0_iter1_reg;
  input ram_reg_i_4_0;
  input tmp_7_reg_644_pp0_iter2_reg;
  input sout_V_data_V_1_ack_in;
  input [7:0]\tmp6_reg_679_reg[9] ;
  input [7:0]\tmp6_reg_679_reg[9]_0 ;
  input [0:0]ram_reg_3;
  input ap_enable_reg_pp0_iter1;
  input ram_reg_4;

  wire [7:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]WEA;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter2;
  wire ce0;
  wire [0:0]i_reg_226_reg;
  wire [8:0]out;
  wire [9:0]ram_reg_0;
  wire [7:0]ram_reg_1;
  wire ram_reg_2;
  wire [0:0]ram_reg_3;
  wire ram_reg_4;
  wire ram_reg_i_4_0;
  wire ram_reg_i_5_n_2;
  wire \sin_V_data_V_0_state_reg[0] ;
  wire sout_V_data_V_1_ack_in;
  wire \tmp6_reg_679[3]_i_2_n_2 ;
  wire \tmp6_reg_679[3]_i_3_n_2 ;
  wire \tmp6_reg_679[3]_i_4_n_2 ;
  wire \tmp6_reg_679[3]_i_5_n_2 ;
  wire \tmp6_reg_679[3]_i_6_n_2 ;
  wire \tmp6_reg_679[3]_i_7_n_2 ;
  wire \tmp6_reg_679[3]_i_8_n_2 ;
  wire \tmp6_reg_679[7]_i_2_n_2 ;
  wire \tmp6_reg_679[7]_i_3_n_2 ;
  wire \tmp6_reg_679[7]_i_4_n_2 ;
  wire \tmp6_reg_679[7]_i_5_n_2 ;
  wire \tmp6_reg_679[7]_i_6_n_2 ;
  wire \tmp6_reg_679[7]_i_7_n_2 ;
  wire \tmp6_reg_679[7]_i_8_n_2 ;
  wire \tmp6_reg_679[7]_i_9_n_2 ;
  wire \tmp6_reg_679[9]_i_2_n_2 ;
  wire \tmp6_reg_679_reg[3]_i_1_n_2 ;
  wire \tmp6_reg_679_reg[3]_i_1_n_3 ;
  wire \tmp6_reg_679_reg[3]_i_1_n_4 ;
  wire \tmp6_reg_679_reg[3]_i_1_n_5 ;
  wire \tmp6_reg_679_reg[7]_i_1_n_2 ;
  wire \tmp6_reg_679_reg[7]_i_1_n_3 ;
  wire \tmp6_reg_679_reg[7]_i_1_n_4 ;
  wire \tmp6_reg_679_reg[7]_i_1_n_5 ;
  wire [7:0]\tmp6_reg_679_reg[9] ;
  wire [7:0]\tmp6_reg_679_reg[9]_0 ;
  wire tmp_7_reg_644_pp0_iter1_reg;
  wire tmp_7_reg_644_pp0_iter2_reg;
  wire [15:0]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;
  wire [3:0]\NLW_tmp6_reg_679_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_tmp6_reg_679_reg[9]_i_1_O_UNCONNECTED ;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4072" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,out,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_reg_1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_ram_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_ram_reg_DOBDO_UNCONNECTED[15:8],D}),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(E),
        .ENBWREN(ce0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'h0040)) 
    ram_reg_i_1
       (.I0(\sin_V_data_V_0_state_reg[0] ),
        .I1(ram_reg_3),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ram_reg_4),
        .O(E));
  LUT3 #(
    .INIT(8'h40)) 
    ram_reg_i_2
       (.I0(\sin_V_data_V_0_state_reg[0] ),
        .I1(ram_reg_3),
        .I2(ap_enable_reg_pp0_iter0),
        .O(ce0));
  LUT3 #(
    .INIT(8'h40)) 
    ram_reg_i_3
       (.I0(\sin_V_data_V_0_state_reg[0] ),
        .I1(ram_reg_3),
        .I2(ap_enable_reg_pp0_iter1),
        .O(WEA));
  LUT4 #(
    .INIT(16'hFF04)) 
    ram_reg_i_4
       (.I0(ram_reg_2),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(i_reg_226_reg),
        .I3(ram_reg_i_5_n_2),
        .O(\sin_V_data_V_0_state_reg[0] ));
  LUT5 #(
    .INIT(32'h0000F888)) 
    ram_reg_i_5
       (.I0(ap_enable_reg_pp0_iter2),
        .I1(tmp_7_reg_644_pp0_iter1_reg),
        .I2(ram_reg_i_4_0),
        .I3(tmp_7_reg_644_pp0_iter2_reg),
        .I4(sout_V_data_V_1_ack_in),
        .O(ram_reg_i_5_n_2));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp6_reg_679[3]_i_2 
       (.I0(D[2]),
        .I1(\tmp6_reg_679_reg[9] [2]),
        .I2(\tmp6_reg_679_reg[9]_0 [2]),
        .O(\tmp6_reg_679[3]_i_2_n_2 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp6_reg_679[3]_i_3 
       (.I0(D[1]),
        .I1(\tmp6_reg_679_reg[9] [1]),
        .I2(\tmp6_reg_679_reg[9]_0 [1]),
        .O(\tmp6_reg_679[3]_i_3_n_2 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp6_reg_679[3]_i_4 
       (.I0(D[0]),
        .I1(\tmp6_reg_679_reg[9] [0]),
        .I2(\tmp6_reg_679_reg[9]_0 [0]),
        .O(\tmp6_reg_679[3]_i_4_n_2 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \tmp6_reg_679[3]_i_5 
       (.I0(D[3]),
        .I1(\tmp6_reg_679_reg[9] [3]),
        .I2(\tmp6_reg_679_reg[9]_0 [3]),
        .I3(\tmp6_reg_679[3]_i_2_n_2 ),
        .O(\tmp6_reg_679[3]_i_5_n_2 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \tmp6_reg_679[3]_i_6 
       (.I0(D[2]),
        .I1(\tmp6_reg_679_reg[9] [2]),
        .I2(\tmp6_reg_679_reg[9]_0 [2]),
        .I3(\tmp6_reg_679[3]_i_3_n_2 ),
        .O(\tmp6_reg_679[3]_i_6_n_2 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \tmp6_reg_679[3]_i_7 
       (.I0(D[1]),
        .I1(\tmp6_reg_679_reg[9] [1]),
        .I2(\tmp6_reg_679_reg[9]_0 [1]),
        .I3(\tmp6_reg_679[3]_i_4_n_2 ),
        .O(\tmp6_reg_679[3]_i_7_n_2 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \tmp6_reg_679[3]_i_8 
       (.I0(D[0]),
        .I1(\tmp6_reg_679_reg[9] [0]),
        .I2(\tmp6_reg_679_reg[9]_0 [0]),
        .O(\tmp6_reg_679[3]_i_8_n_2 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp6_reg_679[7]_i_2 
       (.I0(D[6]),
        .I1(\tmp6_reg_679_reg[9] [6]),
        .I2(\tmp6_reg_679_reg[9]_0 [6]),
        .O(\tmp6_reg_679[7]_i_2_n_2 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp6_reg_679[7]_i_3 
       (.I0(D[5]),
        .I1(\tmp6_reg_679_reg[9] [5]),
        .I2(\tmp6_reg_679_reg[9]_0 [5]),
        .O(\tmp6_reg_679[7]_i_3_n_2 ));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp6_reg_679[7]_i_4 
       (.I0(D[4]),
        .I1(\tmp6_reg_679_reg[9] [4]),
        .I2(\tmp6_reg_679_reg[9]_0 [4]),
        .O(\tmp6_reg_679[7]_i_4_n_2 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp6_reg_679[7]_i_5 
       (.I0(D[3]),
        .I1(\tmp6_reg_679_reg[9] [3]),
        .I2(\tmp6_reg_679_reg[9]_0 [3]),
        .O(\tmp6_reg_679[7]_i_5_n_2 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \tmp6_reg_679[7]_i_6 
       (.I0(\tmp6_reg_679[7]_i_2_n_2 ),
        .I1(\tmp6_reg_679_reg[9] [7]),
        .I2(D[7]),
        .I3(\tmp6_reg_679_reg[9]_0 [7]),
        .O(\tmp6_reg_679[7]_i_6_n_2 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \tmp6_reg_679[7]_i_7 
       (.I0(D[6]),
        .I1(\tmp6_reg_679_reg[9] [6]),
        .I2(\tmp6_reg_679_reg[9]_0 [6]),
        .I3(\tmp6_reg_679[7]_i_3_n_2 ),
        .O(\tmp6_reg_679[7]_i_7_n_2 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \tmp6_reg_679[7]_i_8 
       (.I0(D[5]),
        .I1(\tmp6_reg_679_reg[9] [5]),
        .I2(\tmp6_reg_679_reg[9]_0 [5]),
        .I3(\tmp6_reg_679[7]_i_4_n_2 ),
        .O(\tmp6_reg_679[7]_i_8_n_2 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \tmp6_reg_679[7]_i_9 
       (.I0(D[4]),
        .I1(\tmp6_reg_679_reg[9] [4]),
        .I2(\tmp6_reg_679_reg[9]_0 [4]),
        .I3(\tmp6_reg_679[7]_i_5_n_2 ),
        .O(\tmp6_reg_679[7]_i_9_n_2 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \tmp6_reg_679[9]_i_2 
       (.I0(D[7]),
        .I1(\tmp6_reg_679_reg[9] [7]),
        .I2(\tmp6_reg_679_reg[9]_0 [7]),
        .O(\tmp6_reg_679[9]_i_2_n_2 ));
  CARRY4 \tmp6_reg_679_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\tmp6_reg_679_reg[3]_i_1_n_2 ,\tmp6_reg_679_reg[3]_i_1_n_3 ,\tmp6_reg_679_reg[3]_i_1_n_4 ,\tmp6_reg_679_reg[3]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({\tmp6_reg_679[3]_i_2_n_2 ,\tmp6_reg_679[3]_i_3_n_2 ,\tmp6_reg_679[3]_i_4_n_2 ,1'b0}),
        .O(ram_reg_0[3:0]),
        .S({\tmp6_reg_679[3]_i_5_n_2 ,\tmp6_reg_679[3]_i_6_n_2 ,\tmp6_reg_679[3]_i_7_n_2 ,\tmp6_reg_679[3]_i_8_n_2 }));
  CARRY4 \tmp6_reg_679_reg[7]_i_1 
       (.CI(\tmp6_reg_679_reg[3]_i_1_n_2 ),
        .CO({\tmp6_reg_679_reg[7]_i_1_n_2 ,\tmp6_reg_679_reg[7]_i_1_n_3 ,\tmp6_reg_679_reg[7]_i_1_n_4 ,\tmp6_reg_679_reg[7]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({\tmp6_reg_679[7]_i_2_n_2 ,\tmp6_reg_679[7]_i_3_n_2 ,\tmp6_reg_679[7]_i_4_n_2 ,\tmp6_reg_679[7]_i_5_n_2 }),
        .O(ram_reg_0[7:4]),
        .S({\tmp6_reg_679[7]_i_6_n_2 ,\tmp6_reg_679[7]_i_7_n_2 ,\tmp6_reg_679[7]_i_8_n_2 ,\tmp6_reg_679[7]_i_9_n_2 }));
  CARRY4 \tmp6_reg_679_reg[9]_i_1 
       (.CI(\tmp6_reg_679_reg[7]_i_1_n_2 ),
        .CO({\NLW_tmp6_reg_679_reg[9]_i_1_CO_UNCONNECTED [3:2],ram_reg_0[9],\NLW_tmp6_reg_679_reg[9]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tmp6_reg_679_reg[9]_i_1_O_UNCONNECTED [3:1],ram_reg_0[8]}),
        .S({1'b0,1'b0,1'b1,\tmp6_reg_679[9]_i_2_n_2 }));
endmodule

(* ORIG_REF_NAME = "hw_conv_lbuf_0_ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv_lbuf_0_ram_1
   (D,
    result_3_1_fu_420_p2,
    ap_clk,
    E,
    ce0,
    Q,
    out,
    ram_reg_0,
    WEA,
    \result_3_1_reg_674_reg[9] ,
    \result_3_1_reg_674_reg[9]_0 ,
    \result_3_1_reg_674_reg[9]_1 );
  output [7:0]D;
  output [9:0]result_3_1_fu_420_p2;
  input ap_clk;
  input [0:0]E;
  input ce0;
  input [8:0]Q;
  input [8:0]out;
  input [7:0]ram_reg_0;
  input [0:0]WEA;
  input [7:0]\result_3_1_reg_674_reg[9] ;
  input [7:0]\result_3_1_reg_674_reg[9]_0 ;
  input [7:0]\result_3_1_reg_674_reg[9]_1 ;

  wire [7:0]D;
  wire [0:0]E;
  wire [8:0]Q;
  wire [0:0]WEA;
  wire ap_clk;
  wire ce0;
  wire [8:0]out;
  wire [7:0]ram_reg_0;
  wire [9:0]result_3_1_fu_420_p2;
  wire \result_3_1_reg_674[3]_i_2_n_2 ;
  wire \result_3_1_reg_674[3]_i_3_n_2 ;
  wire \result_3_1_reg_674[3]_i_4_n_2 ;
  wire \result_3_1_reg_674[3]_i_5_n_2 ;
  wire \result_3_1_reg_674[3]_i_6_n_2 ;
  wire \result_3_1_reg_674[3]_i_7_n_2 ;
  wire \result_3_1_reg_674[3]_i_8_n_2 ;
  wire \result_3_1_reg_674[3]_i_9_n_2 ;
  wire \result_3_1_reg_674[7]_i_10_n_2 ;
  wire \result_3_1_reg_674[7]_i_11_n_2 ;
  wire \result_3_1_reg_674[7]_i_12_n_2 ;
  wire \result_3_1_reg_674[7]_i_13_n_2 ;
  wire \result_3_1_reg_674[7]_i_2_n_2 ;
  wire \result_3_1_reg_674[7]_i_3_n_2 ;
  wire \result_3_1_reg_674[7]_i_4_n_2 ;
  wire \result_3_1_reg_674[7]_i_5_n_2 ;
  wire \result_3_1_reg_674[7]_i_6_n_2 ;
  wire \result_3_1_reg_674[7]_i_7_n_2 ;
  wire \result_3_1_reg_674[7]_i_8_n_2 ;
  wire \result_3_1_reg_674[7]_i_9_n_2 ;
  wire \result_3_1_reg_674[9]_i_2_n_2 ;
  wire \result_3_1_reg_674[9]_i_3_n_2 ;
  wire \result_3_1_reg_674[9]_i_4_n_2 ;
  wire \result_3_1_reg_674[9]_i_5_n_2 ;
  wire \result_3_1_reg_674_reg[3]_i_1_n_2 ;
  wire \result_3_1_reg_674_reg[3]_i_1_n_3 ;
  wire \result_3_1_reg_674_reg[3]_i_1_n_4 ;
  wire \result_3_1_reg_674_reg[3]_i_1_n_5 ;
  wire \result_3_1_reg_674_reg[7]_i_1_n_2 ;
  wire \result_3_1_reg_674_reg[7]_i_1_n_3 ;
  wire \result_3_1_reg_674_reg[7]_i_1_n_4 ;
  wire \result_3_1_reg_674_reg[7]_i_1_n_5 ;
  wire [7:0]\result_3_1_reg_674_reg[9] ;
  wire [7:0]\result_3_1_reg_674_reg[9]_0 ;
  wire [7:0]\result_3_1_reg_674_reg[9]_1 ;
  wire [15:0]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;
  wire [3:0]\NLW_result_3_1_reg_674_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_result_3_1_reg_674_reg[9]_i_1_O_UNCONNECTED ;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4072" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({1'b1,Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,out,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,ram_reg_0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_ram_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_ram_reg_DOBDO_UNCONNECTED[15:8],D}),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(E),
        .ENBWREN(ce0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \result_3_1_reg_674[3]_i_2 
       (.I0(\result_3_1_reg_674_reg[9] [2]),
        .I1(\result_3_1_reg_674[3]_i_9_n_2 ),
        .I2(\result_3_1_reg_674_reg[9]_0 [1]),
        .I3(\result_3_1_reg_674_reg[9]_1 [1]),
        .I4(D[1]),
        .O(\result_3_1_reg_674[3]_i_2_n_2 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \result_3_1_reg_674[3]_i_3 
       (.I0(\result_3_1_reg_674_reg[9]_0 [1]),
        .I1(\result_3_1_reg_674_reg[9]_1 [1]),
        .I2(D[1]),
        .I3(\result_3_1_reg_674_reg[9] [2]),
        .I4(\result_3_1_reg_674[3]_i_9_n_2 ),
        .O(\result_3_1_reg_674[3]_i_3_n_2 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \result_3_1_reg_674[3]_i_4 
       (.I0(\result_3_1_reg_674_reg[9]_1 [1]),
        .I1(D[1]),
        .I2(\result_3_1_reg_674_reg[9]_0 [1]),
        .I3(\result_3_1_reg_674_reg[9] [1]),
        .O(\result_3_1_reg_674[3]_i_4_n_2 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \result_3_1_reg_674[3]_i_5 
       (.I0(\result_3_1_reg_674[3]_i_2_n_2 ),
        .I1(\result_3_1_reg_674[7]_i_13_n_2 ),
        .I2(\result_3_1_reg_674_reg[9] [3]),
        .I3(D[2]),
        .I4(\result_3_1_reg_674_reg[9]_1 [2]),
        .I5(\result_3_1_reg_674_reg[9]_0 [2]),
        .O(\result_3_1_reg_674[3]_i_5_n_2 ));
  LUT6 #(
    .INIT(64'h6999999699969666)) 
    \result_3_1_reg_674[3]_i_6 
       (.I0(\result_3_1_reg_674[3]_i_9_n_2 ),
        .I1(\result_3_1_reg_674_reg[9] [2]),
        .I2(\result_3_1_reg_674_reg[9]_0 [1]),
        .I3(D[1]),
        .I4(\result_3_1_reg_674_reg[9]_1 [1]),
        .I5(\result_3_1_reg_674_reg[9] [1]),
        .O(\result_3_1_reg_674[3]_i_6_n_2 ));
  LUT4 #(
    .INIT(16'h566A)) 
    \result_3_1_reg_674[3]_i_7 
       (.I0(\result_3_1_reg_674[3]_i_4_n_2 ),
        .I1(\result_3_1_reg_674_reg[9]_0 [0]),
        .I2(\result_3_1_reg_674_reg[9]_1 [0]),
        .I3(D[0]),
        .O(\result_3_1_reg_674[3]_i_7_n_2 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \result_3_1_reg_674[3]_i_8 
       (.I0(\result_3_1_reg_674_reg[9]_1 [0]),
        .I1(D[0]),
        .I2(\result_3_1_reg_674_reg[9]_0 [0]),
        .I3(\result_3_1_reg_674_reg[9] [0]),
        .O(\result_3_1_reg_674[3]_i_8_n_2 ));
  LUT3 #(
    .INIT(8'h96)) 
    \result_3_1_reg_674[3]_i_9 
       (.I0(\result_3_1_reg_674_reg[9]_0 [2]),
        .I1(D[2]),
        .I2(\result_3_1_reg_674_reg[9]_1 [2]),
        .O(\result_3_1_reg_674[3]_i_9_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \result_3_1_reg_674[7]_i_10 
       (.I0(\result_3_1_reg_674_reg[9]_0 [6]),
        .I1(D[6]),
        .I2(\result_3_1_reg_674_reg[9]_1 [6]),
        .O(\result_3_1_reg_674[7]_i_10_n_2 ));
  LUT3 #(
    .INIT(8'h96)) 
    \result_3_1_reg_674[7]_i_11 
       (.I0(\result_3_1_reg_674_reg[9]_0 [5]),
        .I1(D[5]),
        .I2(\result_3_1_reg_674_reg[9]_1 [5]),
        .O(\result_3_1_reg_674[7]_i_11_n_2 ));
  LUT3 #(
    .INIT(8'h96)) 
    \result_3_1_reg_674[7]_i_12 
       (.I0(\result_3_1_reg_674_reg[9]_0 [4]),
        .I1(D[4]),
        .I2(\result_3_1_reg_674_reg[9]_1 [4]),
        .O(\result_3_1_reg_674[7]_i_12_n_2 ));
  LUT3 #(
    .INIT(8'h96)) 
    \result_3_1_reg_674[7]_i_13 
       (.I0(\result_3_1_reg_674_reg[9]_0 [3]),
        .I1(D[3]),
        .I2(\result_3_1_reg_674_reg[9]_1 [3]),
        .O(\result_3_1_reg_674[7]_i_13_n_2 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \result_3_1_reg_674[7]_i_2 
       (.I0(\result_3_1_reg_674_reg[9] [6]),
        .I1(\result_3_1_reg_674[7]_i_10_n_2 ),
        .I2(\result_3_1_reg_674_reg[9]_0 [5]),
        .I3(\result_3_1_reg_674_reg[9]_1 [5]),
        .I4(D[5]),
        .O(\result_3_1_reg_674[7]_i_2_n_2 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \result_3_1_reg_674[7]_i_3 
       (.I0(\result_3_1_reg_674_reg[9] [5]),
        .I1(\result_3_1_reg_674[7]_i_11_n_2 ),
        .I2(\result_3_1_reg_674_reg[9]_0 [4]),
        .I3(\result_3_1_reg_674_reg[9]_1 [4]),
        .I4(D[4]),
        .O(\result_3_1_reg_674[7]_i_3_n_2 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \result_3_1_reg_674[7]_i_4 
       (.I0(\result_3_1_reg_674_reg[9] [4]),
        .I1(\result_3_1_reg_674[7]_i_12_n_2 ),
        .I2(\result_3_1_reg_674_reg[9]_0 [3]),
        .I3(\result_3_1_reg_674_reg[9]_1 [3]),
        .I4(D[3]),
        .O(\result_3_1_reg_674[7]_i_4_n_2 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \result_3_1_reg_674[7]_i_5 
       (.I0(\result_3_1_reg_674_reg[9] [3]),
        .I1(\result_3_1_reg_674[7]_i_13_n_2 ),
        .I2(\result_3_1_reg_674_reg[9]_0 [2]),
        .I3(\result_3_1_reg_674_reg[9]_1 [2]),
        .I4(D[2]),
        .O(\result_3_1_reg_674[7]_i_5_n_2 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \result_3_1_reg_674[7]_i_6 
       (.I0(\result_3_1_reg_674[7]_i_2_n_2 ),
        .I1(\result_3_1_reg_674[9]_i_4_n_2 ),
        .I2(\result_3_1_reg_674_reg[9] [7]),
        .I3(D[6]),
        .I4(\result_3_1_reg_674_reg[9]_1 [6]),
        .I5(\result_3_1_reg_674_reg[9]_0 [6]),
        .O(\result_3_1_reg_674[7]_i_6_n_2 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \result_3_1_reg_674[7]_i_7 
       (.I0(\result_3_1_reg_674[7]_i_3_n_2 ),
        .I1(\result_3_1_reg_674[7]_i_10_n_2 ),
        .I2(\result_3_1_reg_674_reg[9] [6]),
        .I3(D[5]),
        .I4(\result_3_1_reg_674_reg[9]_1 [5]),
        .I5(\result_3_1_reg_674_reg[9]_0 [5]),
        .O(\result_3_1_reg_674[7]_i_7_n_2 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \result_3_1_reg_674[7]_i_8 
       (.I0(\result_3_1_reg_674[7]_i_4_n_2 ),
        .I1(\result_3_1_reg_674[7]_i_11_n_2 ),
        .I2(\result_3_1_reg_674_reg[9] [5]),
        .I3(D[4]),
        .I4(\result_3_1_reg_674_reg[9]_1 [4]),
        .I5(\result_3_1_reg_674_reg[9]_0 [4]),
        .O(\result_3_1_reg_674[7]_i_8_n_2 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \result_3_1_reg_674[7]_i_9 
       (.I0(\result_3_1_reg_674[7]_i_5_n_2 ),
        .I1(\result_3_1_reg_674[7]_i_12_n_2 ),
        .I2(\result_3_1_reg_674_reg[9] [4]),
        .I3(D[3]),
        .I4(\result_3_1_reg_674_reg[9]_1 [3]),
        .I5(\result_3_1_reg_674_reg[9]_0 [3]),
        .O(\result_3_1_reg_674[7]_i_9_n_2 ));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \result_3_1_reg_674[9]_i_2 
       (.I0(\result_3_1_reg_674_reg[9] [7]),
        .I1(\result_3_1_reg_674[9]_i_4_n_2 ),
        .I2(\result_3_1_reg_674_reg[9]_0 [6]),
        .I3(\result_3_1_reg_674_reg[9]_1 [6]),
        .I4(D[6]),
        .O(\result_3_1_reg_674[9]_i_2_n_2 ));
  LUT5 #(
    .INIT(32'h177E7EE8)) 
    \result_3_1_reg_674[9]_i_3 
       (.I0(\result_3_1_reg_674[9]_i_5_n_2 ),
        .I1(\result_3_1_reg_674_reg[9] [7]),
        .I2(\result_3_1_reg_674_reg[9]_0 [7]),
        .I3(\result_3_1_reg_674_reg[9]_1 [7]),
        .I4(D[7]),
        .O(\result_3_1_reg_674[9]_i_3_n_2 ));
  LUT3 #(
    .INIT(8'h96)) 
    \result_3_1_reg_674[9]_i_4 
       (.I0(\result_3_1_reg_674_reg[9]_0 [7]),
        .I1(D[7]),
        .I2(\result_3_1_reg_674_reg[9]_1 [7]),
        .O(\result_3_1_reg_674[9]_i_4_n_2 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \result_3_1_reg_674[9]_i_5 
       (.I0(D[6]),
        .I1(\result_3_1_reg_674_reg[9]_1 [6]),
        .I2(\result_3_1_reg_674_reg[9]_0 [6]),
        .O(\result_3_1_reg_674[9]_i_5_n_2 ));
  CARRY4 \result_3_1_reg_674_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\result_3_1_reg_674_reg[3]_i_1_n_2 ,\result_3_1_reg_674_reg[3]_i_1_n_3 ,\result_3_1_reg_674_reg[3]_i_1_n_4 ,\result_3_1_reg_674_reg[3]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({\result_3_1_reg_674[3]_i_2_n_2 ,\result_3_1_reg_674[3]_i_3_n_2 ,\result_3_1_reg_674[3]_i_4_n_2 ,\result_3_1_reg_674_reg[9] [0]}),
        .O(result_3_1_fu_420_p2[3:0]),
        .S({\result_3_1_reg_674[3]_i_5_n_2 ,\result_3_1_reg_674[3]_i_6_n_2 ,\result_3_1_reg_674[3]_i_7_n_2 ,\result_3_1_reg_674[3]_i_8_n_2 }));
  CARRY4 \result_3_1_reg_674_reg[7]_i_1 
       (.CI(\result_3_1_reg_674_reg[3]_i_1_n_2 ),
        .CO({\result_3_1_reg_674_reg[7]_i_1_n_2 ,\result_3_1_reg_674_reg[7]_i_1_n_3 ,\result_3_1_reg_674_reg[7]_i_1_n_4 ,\result_3_1_reg_674_reg[7]_i_1_n_5 }),
        .CYINIT(1'b0),
        .DI({\result_3_1_reg_674[7]_i_2_n_2 ,\result_3_1_reg_674[7]_i_3_n_2 ,\result_3_1_reg_674[7]_i_4_n_2 ,\result_3_1_reg_674[7]_i_5_n_2 }),
        .O(result_3_1_fu_420_p2[7:4]),
        .S({\result_3_1_reg_674[7]_i_6_n_2 ,\result_3_1_reg_674[7]_i_7_n_2 ,\result_3_1_reg_674[7]_i_8_n_2 ,\result_3_1_reg_674[7]_i_9_n_2 }));
  CARRY4 \result_3_1_reg_674_reg[9]_i_1 
       (.CI(\result_3_1_reg_674_reg[7]_i_1_n_2 ),
        .CO({\NLW_result_3_1_reg_674_reg[9]_i_1_CO_UNCONNECTED [3:2],result_3_1_fu_420_p2[9],\NLW_result_3_1_reg_674_reg[9]_i_1_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\result_3_1_reg_674[9]_i_2_n_2 }),
        .O({\NLW_result_3_1_reg_674_reg[9]_i_1_O_UNCONNECTED [3:1],result_3_1_fu_420_p2[8]}),
        .S({1'b0,1'b0,1'b1,\result_3_1_reg_674[9]_i_3_n_2 }));
endmodule

(* CHECK_LICENSE_TYPE = "system_hw_conv_0_0,hw_conv,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "HLS" *) 
(* x_core_info = "hw_conv,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ap_clk,
    ap_rst_n,
    sin_TVALID,
    sin_TREADY,
    sin_TDATA,
    sin_TDEST,
    sin_TKEEP,
    sin_TSTRB,
    sin_TUSER,
    sin_TLAST,
    sin_TID,
    sout_TVALID,
    sout_TREADY,
    sout_TDATA,
    sout_TDEST,
    sout_TKEEP,
    sout_TSTRB,
    sout_TUSER,
    sout_TLAST,
    sout_TID);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF sin:sout, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_PS7_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME sin, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_PS7_0_FCLK_CLK0, INSERT_VIP 0" *) input sin_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TREADY" *) output sin_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TDATA" *) input [7:0]sin_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TDEST" *) input [0:0]sin_TDEST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TKEEP" *) input [0:0]sin_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TSTRB" *) input [0:0]sin_TSTRB;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TUSER" *) input [0:0]sin_TUSER;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TLAST" *) input [0:0]sin_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sin TID" *) input [0:0]sin_TID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME sout, TDATA_NUM_BYTES 1, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_PS7_0_FCLK_CLK0, INSERT_VIP 0" *) output sout_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TREADY" *) input sout_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TDATA" *) output [7:0]sout_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TDEST" *) output [0:0]sout_TDEST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TKEEP" *) output [0:0]sout_TKEEP;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TSTRB" *) output [0:0]sout_TSTRB;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TUSER" *) output [0:0]sout_TUSER;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TLAST" *) output [0:0]sout_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 sout TID" *) output [0:0]sout_TID;

  wire ap_clk;
  wire ap_rst_n;
  wire [7:0]sin_TDATA;
  wire [0:0]sin_TDEST;
  wire [0:0]sin_TID;
  wire [0:0]sin_TKEEP;
  wire [0:0]sin_TLAST;
  wire sin_TREADY;
  wire [0:0]sin_TSTRB;
  wire [0:0]sin_TUSER;
  wire sin_TVALID;
  wire [7:0]sout_TDATA;
  wire [0:0]sout_TDEST;
  wire [0:0]sout_TID;
  wire [0:0]sout_TKEEP;
  wire [0:0]sout_TLAST;
  wire sout_TREADY;
  wire [0:0]sout_TSTRB;
  wire [0:0]sout_TUSER;
  wire sout_TVALID;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_conv U0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .sin_TDATA(sin_TDATA),
        .sin_TDEST(sin_TDEST),
        .sin_TID(sin_TID),
        .sin_TKEEP(sin_TKEEP),
        .sin_TLAST(sin_TLAST),
        .sin_TREADY(sin_TREADY),
        .sin_TSTRB(sin_TSTRB),
        .sin_TUSER(sin_TUSER),
        .sin_TVALID(sin_TVALID),
        .sout_TDATA(sout_TDATA),
        .sout_TDEST(sout_TDEST),
        .sout_TID(sout_TID),
        .sout_TKEEP(sout_TKEEP),
        .sout_TLAST(sout_TLAST),
        .sout_TREADY(sout_TREADY),
        .sout_TSTRB(sout_TSTRB),
        .sout_TUSER(sout_TUSER),
        .sout_TVALID(sout_TVALID));
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
