// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Sep 28 13:19:02 2023
// Host        : The_Ghost_TWO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/tyqca/OneDrive/School/Labs/1195_Labs/Lab_2/Lab_2.srcs/sources_1/bd/Lab_2/ip/Lab_2_ALU_0_0/Lab_2_ALU_0_0_stub.v
// Design      : Lab_2_ALU_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ALU,Vivado 2018.3" *)
module Lab_2_ALU_0_0(A, B, SHAMT, ALUOp, Overflow, Zero, R)
/* synthesis syn_black_box black_box_pad_pin="A[31:0],B[31:0],SHAMT[4:0],ALUOp[3:0],Overflow,Zero,R[31:0]" */;
  input [31:0]A;
  input [31:0]B;
  input [4:0]SHAMT;
  input [3:0]ALUOp;
  output Overflow;
  output Zero;
  output [31:0]R;
endmodule
