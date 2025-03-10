// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Nov  7 12:28:26 2023
// Host        : The_Ghost_TWO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/tyqca/OneDrive/School/Labs/1195_Labs/Lab_4/Lab_4.srcs/sources_1/bd/Lab_4/ip/Lab_4_Mips_CPU_0_0/Lab_4_Mips_CPU_0_0_stub.v
// Design      : Lab_4_Mips_CPU_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Mips_CPU,Vivado 2018.3" *)
module Lab_4_Mips_CPU_0_0(Reset, Clock, MemoryDataIn, MemoryAddress, 
  MemoryDataOut, MemWrite)
/* synthesis syn_black_box black_box_pad_pin="Reset,Clock,MemoryDataIn[31:0],MemoryAddress[31:0],MemoryDataOut[31:0],MemWrite" */;
  input Reset;
  input Clock;
  input [31:0]MemoryDataIn;
  output [31:0]MemoryAddress;
  output [31:0]MemoryDataOut;
  output MemWrite;
endmodule
