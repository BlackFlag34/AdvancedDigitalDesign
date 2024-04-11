// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 12 09:13:31 2023
// Host        : The_Ghost_TWO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/tyqca/OneDrive/School/Labs/1195_Labs/Lab_3/Lab_3.srcs/sources_1/bd/lab_3/ip/lab_3_Multiplyer_unit_0_1/lab_3_Multiplyer_unit_0_1_sim_netlist.v
// Design      : lab_3_Multiplyer_unit_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "lab_3_Multiplyer_unit_0_1,Multiplyer_unit,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Multiplyer_unit,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module lab_3_Multiplyer_unit_0_1
   (A,
    B,
    clk,
    rst,
    done,
    R);
  input [31:0]A;
  input [31:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN lab_3_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output done;
  output [63:0]R;

  wire [31:0]A;
  wire [31:0]B;
  wire [63:0]R;
  wire clk;
  wire done;
  wire rst;

  lab_3_Multiplyer_unit_0_1_Multiplyer_unit U0
       (.A(A),
        .B(B),
        .R(R),
        .clk(clk),
        .done(done),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "Control_Unit" *) 
module lab_3_Multiplyer_unit_0_1_Control_Unit
   (load,
    E,
    clk,
    rst);
  output load;
  output [0:0]E;
  input clk;
  input rst;

  wire [0:0]E;
  wire \FSM_onehot_next_state[1]_i_1_n_0 ;
  wire \FSM_onehot_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg_n_0_[1] ;
  wire LSR_load_i_1_n_0;
  wire LSR_shift_i_1_n_0;
  wire clk;
  wire load;
  wire rst;
  wire shift;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_next_state[1]_i_1 
       (.I0(\FSM_onehot_next_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_next_state_reg_n_0_[0] ),
        .O(\FSM_onehot_next_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:100,iSTATE0:001,iSTATE1:010," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(\FSM_onehot_next_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "iSTATE:100,iSTATE0:001,iSTATE1:010," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_next_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_next_state_reg_n_0_[1] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAFA2)) 
    LSR_load_i_1
       (.I0(load),
        .I1(\FSM_onehot_next_state_reg_n_0_[1] ),
        .I2(rst),
        .I3(\FSM_onehot_next_state_reg_n_0_[0] ),
        .O(LSR_load_i_1_n_0));
  FDRE LSR_load_reg
       (.C(clk),
        .CE(1'b1),
        .D(LSR_load_i_1_n_0),
        .Q(load),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA0AE)) 
    LSR_shift_i_1
       (.I0(shift),
        .I1(\FSM_onehot_next_state_reg_n_0_[1] ),
        .I2(rst),
        .I3(\FSM_onehot_next_state_reg_n_0_[0] ),
        .O(LSR_shift_i_1_n_0));
  FDRE LSR_shift_reg
       (.C(clk),
        .CE(1'b1),
        .D(LSR_shift_i_1_n_0),
        .Q(shift),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \current[31]_i_1 
       (.I0(load),
        .I1(shift),
        .O(E));
endmodule

(* ORIG_REF_NAME = "Generic_bit_counter" *) 
module lab_3_Multiplyer_unit_0_1_Generic_bit_counter
   (done,
    rst,
    clk);
  output done;
  input rst;
  input clk;

  wire clk;
  wire \counter[2]_i_1_n_0 ;
  wire [4:0]counter_reg__0;
  wire done;
  wire done__0_n_0;
  wire [4:0]p_0_in;
  wire rst;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[3]),
        .I4(counter_reg__0[4]),
        .O(p_0_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in[0]),
        .Q(counter_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in[1]),
        .Q(counter_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in[3]),
        .Q(counter_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(p_0_in[4]),
        .Q(counter_reg__0[4]));
  LUT5 #(
    .INIT(32'h80000000)) 
    done__0
       (.I0(counter_reg__0[3]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[0]),
        .I3(counter_reg__0[4]),
        .I4(counter_reg__0[2]),
        .O(done__0_n_0));
  (* XILINX_LEGACY_PRIM = "LDP" *) 
  LDPE #(
    .INIT(1'b1)) 
    done_reg
       (.D(1'b0),
        .G(rst),
        .GE(1'b1),
        .PRE(done__0_n_0),
        .Q(done));
endmodule

(* ORIG_REF_NAME = "LSL_Resgister_AsyncReset" *) 
module lab_3_Multiplyer_unit_0_1_LSL_Resgister_AsyncReset
   (S,
    Q,
    \current_reg[7]_0 ,
    \current_reg[11]_0 ,
    \current_reg[15]_0 ,
    \current_reg[19]_0 ,
    \current_reg[23]_0 ,
    \current_reg[27]_0 ,
    \current_reg[31]_0 ,
    \current_reg[35]_0 ,
    \current_reg[39]_0 ,
    \current_reg[43]_0 ,
    \current_reg[47]_0 ,
    \current_reg[51]_0 ,
    \current_reg[55]_0 ,
    \current_reg[59]_0 ,
    \current_reg[63]_0 ,
    R,
    E,
    clk,
    rst,
    load,
    A);
  output [3:0]S;
  output [62:0]Q;
  output [3:0]\current_reg[7]_0 ;
  output [3:0]\current_reg[11]_0 ;
  output [3:0]\current_reg[15]_0 ;
  output [3:0]\current_reg[19]_0 ;
  output [3:0]\current_reg[23]_0 ;
  output [3:0]\current_reg[27]_0 ;
  output [3:0]\current_reg[31]_0 ;
  output [3:0]\current_reg[35]_0 ;
  output [3:0]\current_reg[39]_0 ;
  output [3:0]\current_reg[43]_0 ;
  output [3:0]\current_reg[47]_0 ;
  output [3:0]\current_reg[51]_0 ;
  output [3:0]\current_reg[55]_0 ;
  output [3:0]\current_reg[59]_0 ;
  output [3:0]\current_reg[63]_0 ;
  input [63:0]R;
  input [0:0]E;
  input clk;
  input rst;
  input load;
  input [31:0]A;

  wire [31:0]A;
  wire [0:0]E;
  wire [62:0]Q;
  wire [63:0]R;
  wire [3:0]S;
  wire clk;
  wire [63:63]current;
  wire [3:0]\current_reg[11]_0 ;
  wire [3:0]\current_reg[15]_0 ;
  wire [3:0]\current_reg[19]_0 ;
  wire [3:0]\current_reg[23]_0 ;
  wire [3:0]\current_reg[27]_0 ;
  wire [3:0]\current_reg[31]_0 ;
  wire [3:0]\current_reg[35]_0 ;
  wire [3:0]\current_reg[39]_0 ;
  wire [3:0]\current_reg[43]_0 ;
  wire [3:0]\current_reg[47]_0 ;
  wire [3:0]\current_reg[51]_0 ;
  wire [3:0]\current_reg[55]_0 ;
  wire [3:0]\current_reg[59]_0 ;
  wire [3:0]\current_reg[63]_0 ;
  wire [3:0]\current_reg[7]_0 ;
  wire load;
  wire [63:0]p_1_in;
  wire rst;

  LUT2 #(
    .INIT(4'h6)) 
    S_carry__0_i_1
       (.I0(Q[7]),
        .I1(R[7]),
        .O(\current_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__0_i_2
       (.I0(Q[6]),
        .I1(R[6]),
        .O(\current_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__0_i_3
       (.I0(Q[5]),
        .I1(R[5]),
        .O(\current_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__0_i_4
       (.I0(Q[4]),
        .I1(R[4]),
        .O(\current_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__10_i_1
       (.I0(Q[47]),
        .I1(R[47]),
        .O(\current_reg[47]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__10_i_2
       (.I0(Q[46]),
        .I1(R[46]),
        .O(\current_reg[47]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__10_i_3
       (.I0(Q[45]),
        .I1(R[45]),
        .O(\current_reg[47]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__10_i_4
       (.I0(Q[44]),
        .I1(R[44]),
        .O(\current_reg[47]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__11_i_1
       (.I0(Q[51]),
        .I1(R[51]),
        .O(\current_reg[51]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__11_i_2
       (.I0(Q[50]),
        .I1(R[50]),
        .O(\current_reg[51]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__11_i_3
       (.I0(Q[49]),
        .I1(R[49]),
        .O(\current_reg[51]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__11_i_4
       (.I0(Q[48]),
        .I1(R[48]),
        .O(\current_reg[51]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__12_i_1
       (.I0(Q[55]),
        .I1(R[55]),
        .O(\current_reg[55]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__12_i_2
       (.I0(Q[54]),
        .I1(R[54]),
        .O(\current_reg[55]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__12_i_3
       (.I0(Q[53]),
        .I1(R[53]),
        .O(\current_reg[55]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__12_i_4
       (.I0(Q[52]),
        .I1(R[52]),
        .O(\current_reg[55]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__13_i_1
       (.I0(Q[59]),
        .I1(R[59]),
        .O(\current_reg[59]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__13_i_2
       (.I0(Q[58]),
        .I1(R[58]),
        .O(\current_reg[59]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__13_i_3
       (.I0(Q[57]),
        .I1(R[57]),
        .O(\current_reg[59]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__13_i_4
       (.I0(Q[56]),
        .I1(R[56]),
        .O(\current_reg[59]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__14_i_1
       (.I0(current),
        .I1(R[63]),
        .O(\current_reg[63]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__14_i_2
       (.I0(Q[62]),
        .I1(R[62]),
        .O(\current_reg[63]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__14_i_3
       (.I0(Q[61]),
        .I1(R[61]),
        .O(\current_reg[63]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__14_i_4
       (.I0(Q[60]),
        .I1(R[60]),
        .O(\current_reg[63]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__1_i_1
       (.I0(Q[11]),
        .I1(R[11]),
        .O(\current_reg[11]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__1_i_2
       (.I0(Q[10]),
        .I1(R[10]),
        .O(\current_reg[11]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__1_i_3
       (.I0(Q[9]),
        .I1(R[9]),
        .O(\current_reg[11]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__1_i_4
       (.I0(Q[8]),
        .I1(R[8]),
        .O(\current_reg[11]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__2_i_1
       (.I0(Q[15]),
        .I1(R[15]),
        .O(\current_reg[15]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__2_i_2
       (.I0(Q[14]),
        .I1(R[14]),
        .O(\current_reg[15]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__2_i_3
       (.I0(Q[13]),
        .I1(R[13]),
        .O(\current_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__2_i_4
       (.I0(Q[12]),
        .I1(R[12]),
        .O(\current_reg[15]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__3_i_1
       (.I0(Q[19]),
        .I1(R[19]),
        .O(\current_reg[19]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__3_i_2
       (.I0(Q[18]),
        .I1(R[18]),
        .O(\current_reg[19]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__3_i_3
       (.I0(Q[17]),
        .I1(R[17]),
        .O(\current_reg[19]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__3_i_4
       (.I0(Q[16]),
        .I1(R[16]),
        .O(\current_reg[19]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__4_i_1
       (.I0(Q[23]),
        .I1(R[23]),
        .O(\current_reg[23]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__4_i_2
       (.I0(Q[22]),
        .I1(R[22]),
        .O(\current_reg[23]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__4_i_3
       (.I0(Q[21]),
        .I1(R[21]),
        .O(\current_reg[23]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__4_i_4
       (.I0(Q[20]),
        .I1(R[20]),
        .O(\current_reg[23]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__5_i_1
       (.I0(Q[27]),
        .I1(R[27]),
        .O(\current_reg[27]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__5_i_2
       (.I0(Q[26]),
        .I1(R[26]),
        .O(\current_reg[27]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__5_i_3
       (.I0(Q[25]),
        .I1(R[25]),
        .O(\current_reg[27]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__5_i_4
       (.I0(Q[24]),
        .I1(R[24]),
        .O(\current_reg[27]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__6_i_1
       (.I0(Q[31]),
        .I1(R[31]),
        .O(\current_reg[31]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__6_i_2
       (.I0(Q[30]),
        .I1(R[30]),
        .O(\current_reg[31]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__6_i_3
       (.I0(Q[29]),
        .I1(R[29]),
        .O(\current_reg[31]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__6_i_4
       (.I0(Q[28]),
        .I1(R[28]),
        .O(\current_reg[31]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__7_i_1
       (.I0(Q[35]),
        .I1(R[35]),
        .O(\current_reg[35]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__7_i_2
       (.I0(Q[34]),
        .I1(R[34]),
        .O(\current_reg[35]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__7_i_3
       (.I0(Q[33]),
        .I1(R[33]),
        .O(\current_reg[35]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__7_i_4
       (.I0(Q[32]),
        .I1(R[32]),
        .O(\current_reg[35]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__8_i_1
       (.I0(Q[39]),
        .I1(R[39]),
        .O(\current_reg[39]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__8_i_2
       (.I0(Q[38]),
        .I1(R[38]),
        .O(\current_reg[39]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__8_i_3
       (.I0(Q[37]),
        .I1(R[37]),
        .O(\current_reg[39]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__8_i_4
       (.I0(Q[36]),
        .I1(R[36]),
        .O(\current_reg[39]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__9_i_1
       (.I0(Q[43]),
        .I1(R[43]),
        .O(\current_reg[43]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__9_i_2
       (.I0(Q[42]),
        .I1(R[42]),
        .O(\current_reg[43]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__9_i_3
       (.I0(Q[41]),
        .I1(R[41]),
        .O(\current_reg[43]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry__9_i_4
       (.I0(Q[40]),
        .I1(R[40]),
        .O(\current_reg[43]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry_i_1
       (.I0(Q[3]),
        .I1(R[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry_i_2
       (.I0(Q[2]),
        .I1(R[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry_i_3
       (.I0(Q[1]),
        .I1(R[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    S_carry_i_4
       (.I0(Q[0]),
        .I1(R[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current[0]_i_1 
       (.I0(load),
        .I1(A[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[10]_i_1 
       (.I0(A[10]),
        .I1(load),
        .I2(Q[9]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[11]_i_1 
       (.I0(A[11]),
        .I1(load),
        .I2(Q[10]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[12]_i_1 
       (.I0(A[12]),
        .I1(load),
        .I2(Q[11]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[13]_i_1 
       (.I0(A[13]),
        .I1(load),
        .I2(Q[12]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[14]_i_1 
       (.I0(A[14]),
        .I1(load),
        .I2(Q[13]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[15]_i_1 
       (.I0(A[15]),
        .I1(load),
        .I2(Q[14]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[16]_i_1 
       (.I0(A[16]),
        .I1(load),
        .I2(Q[15]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[17]_i_1 
       (.I0(A[17]),
        .I1(load),
        .I2(Q[16]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[18]_i_1 
       (.I0(A[18]),
        .I1(load),
        .I2(Q[17]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[19]_i_1 
       (.I0(A[19]),
        .I1(load),
        .I2(Q[18]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[1]_i_1 
       (.I0(A[1]),
        .I1(load),
        .I2(Q[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[20]_i_1 
       (.I0(A[20]),
        .I1(load),
        .I2(Q[19]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[21]_i_1 
       (.I0(A[21]),
        .I1(load),
        .I2(Q[20]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[22]_i_1 
       (.I0(A[22]),
        .I1(load),
        .I2(Q[21]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[23]_i_1 
       (.I0(A[23]),
        .I1(load),
        .I2(Q[22]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[24]_i_1 
       (.I0(A[24]),
        .I1(load),
        .I2(Q[23]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[25]_i_1 
       (.I0(A[25]),
        .I1(load),
        .I2(Q[24]),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[26]_i_1 
       (.I0(A[26]),
        .I1(load),
        .I2(Q[25]),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[27]_i_1 
       (.I0(A[27]),
        .I1(load),
        .I2(Q[26]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[28]_i_1 
       (.I0(A[28]),
        .I1(load),
        .I2(Q[27]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[29]_i_1 
       (.I0(A[29]),
        .I1(load),
        .I2(Q[28]),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[2]_i_1 
       (.I0(A[2]),
        .I1(load),
        .I2(Q[1]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[30]_i_1 
       (.I0(A[30]),
        .I1(load),
        .I2(Q[29]),
        .O(p_1_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[31]_i_1 
       (.I0(A[31]),
        .I1(load),
        .I2(Q[30]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[32]_i_1 
       (.I0(Q[31]),
        .I1(load),
        .O(p_1_in[32]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[33]_i_1 
       (.I0(Q[32]),
        .I1(load),
        .O(p_1_in[33]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[34]_i_1 
       (.I0(Q[33]),
        .I1(load),
        .O(p_1_in[34]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[35]_i_1 
       (.I0(Q[34]),
        .I1(load),
        .O(p_1_in[35]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[36]_i_1 
       (.I0(Q[35]),
        .I1(load),
        .O(p_1_in[36]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[37]_i_1 
       (.I0(Q[36]),
        .I1(load),
        .O(p_1_in[37]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[38]_i_1 
       (.I0(Q[37]),
        .I1(load),
        .O(p_1_in[38]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[39]_i_1 
       (.I0(Q[38]),
        .I1(load),
        .O(p_1_in[39]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[3]_i_1 
       (.I0(A[3]),
        .I1(load),
        .I2(Q[2]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[40]_i_1 
       (.I0(Q[39]),
        .I1(load),
        .O(p_1_in[40]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[41]_i_1 
       (.I0(Q[40]),
        .I1(load),
        .O(p_1_in[41]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[42]_i_1 
       (.I0(Q[41]),
        .I1(load),
        .O(p_1_in[42]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[43]_i_1 
       (.I0(Q[42]),
        .I1(load),
        .O(p_1_in[43]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[44]_i_1 
       (.I0(Q[43]),
        .I1(load),
        .O(p_1_in[44]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[45]_i_1 
       (.I0(Q[44]),
        .I1(load),
        .O(p_1_in[45]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[46]_i_1 
       (.I0(Q[45]),
        .I1(load),
        .O(p_1_in[46]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[47]_i_1 
       (.I0(Q[46]),
        .I1(load),
        .O(p_1_in[47]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[48]_i_1 
       (.I0(Q[47]),
        .I1(load),
        .O(p_1_in[48]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[49]_i_1 
       (.I0(Q[48]),
        .I1(load),
        .O(p_1_in[49]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[4]_i_1 
       (.I0(A[4]),
        .I1(load),
        .I2(Q[3]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[50]_i_1 
       (.I0(Q[49]),
        .I1(load),
        .O(p_1_in[50]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[51]_i_1 
       (.I0(Q[50]),
        .I1(load),
        .O(p_1_in[51]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[52]_i_1 
       (.I0(Q[51]),
        .I1(load),
        .O(p_1_in[52]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[53]_i_1 
       (.I0(Q[52]),
        .I1(load),
        .O(p_1_in[53]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[54]_i_1 
       (.I0(Q[53]),
        .I1(load),
        .O(p_1_in[54]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[55]_i_1 
       (.I0(Q[54]),
        .I1(load),
        .O(p_1_in[55]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[56]_i_1 
       (.I0(Q[55]),
        .I1(load),
        .O(p_1_in[56]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[57]_i_1 
       (.I0(Q[56]),
        .I1(load),
        .O(p_1_in[57]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[58]_i_1 
       (.I0(Q[57]),
        .I1(load),
        .O(p_1_in[58]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[59]_i_1 
       (.I0(Q[58]),
        .I1(load),
        .O(p_1_in[59]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[5]_i_1 
       (.I0(A[5]),
        .I1(load),
        .I2(Q[4]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[60]_i_1 
       (.I0(Q[59]),
        .I1(load),
        .O(p_1_in[60]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[61]_i_1 
       (.I0(Q[60]),
        .I1(load),
        .O(p_1_in[61]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[62]_i_1 
       (.I0(Q[61]),
        .I1(load),
        .O(p_1_in[62]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current[63]_i_1 
       (.I0(Q[62]),
        .I1(load),
        .O(p_1_in[63]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[6]_i_1 
       (.I0(A[6]),
        .I1(load),
        .I2(Q[5]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[7]_i_1 
       (.I0(A[7]),
        .I1(load),
        .I2(Q[6]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[8]_i_1 
       (.I0(A[8]),
        .I1(load),
        .I2(Q[7]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[9]_i_1 
       (.I0(A[9]),
        .I1(load),
        .I2(Q[8]),
        .O(p_1_in[9]));
  FDCE \current_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[0]),
        .Q(Q[0]));
  FDCE \current_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[10]),
        .Q(Q[10]));
  FDCE \current_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[11]),
        .Q(Q[11]));
  FDCE \current_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[12]),
        .Q(Q[12]));
  FDCE \current_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[13]),
        .Q(Q[13]));
  FDCE \current_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[14]),
        .Q(Q[14]));
  FDCE \current_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[15]),
        .Q(Q[15]));
  FDCE \current_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[16]),
        .Q(Q[16]));
  FDCE \current_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[17]),
        .Q(Q[17]));
  FDCE \current_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[18]),
        .Q(Q[18]));
  FDCE \current_reg[19] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[19]),
        .Q(Q[19]));
  FDCE \current_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[1]),
        .Q(Q[1]));
  FDCE \current_reg[20] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[20]),
        .Q(Q[20]));
  FDCE \current_reg[21] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[21]),
        .Q(Q[21]));
  FDCE \current_reg[22] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[22]),
        .Q(Q[22]));
  FDCE \current_reg[23] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[23]),
        .Q(Q[23]));
  FDCE \current_reg[24] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[24]),
        .Q(Q[24]));
  FDCE \current_reg[25] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[25]),
        .Q(Q[25]));
  FDCE \current_reg[26] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[26]),
        .Q(Q[26]));
  FDCE \current_reg[27] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[27]),
        .Q(Q[27]));
  FDCE \current_reg[28] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[28]),
        .Q(Q[28]));
  FDCE \current_reg[29] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[29]),
        .Q(Q[29]));
  FDCE \current_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[2]),
        .Q(Q[2]));
  FDCE \current_reg[30] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[30]),
        .Q(Q[30]));
  FDCE \current_reg[31] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[31]),
        .Q(Q[31]));
  FDCE \current_reg[32] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[32]),
        .Q(Q[32]));
  FDCE \current_reg[33] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[33]),
        .Q(Q[33]));
  FDCE \current_reg[34] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[34]),
        .Q(Q[34]));
  FDCE \current_reg[35] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[35]),
        .Q(Q[35]));
  FDCE \current_reg[36] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[36]),
        .Q(Q[36]));
  FDCE \current_reg[37] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[37]),
        .Q(Q[37]));
  FDCE \current_reg[38] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[38]),
        .Q(Q[38]));
  FDCE \current_reg[39] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[39]),
        .Q(Q[39]));
  FDCE \current_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[3]),
        .Q(Q[3]));
  FDCE \current_reg[40] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[40]),
        .Q(Q[40]));
  FDCE \current_reg[41] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[41]),
        .Q(Q[41]));
  FDCE \current_reg[42] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[42]),
        .Q(Q[42]));
  FDCE \current_reg[43] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[43]),
        .Q(Q[43]));
  FDCE \current_reg[44] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[44]),
        .Q(Q[44]));
  FDCE \current_reg[45] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[45]),
        .Q(Q[45]));
  FDCE \current_reg[46] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[46]),
        .Q(Q[46]));
  FDCE \current_reg[47] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[47]),
        .Q(Q[47]));
  FDCE \current_reg[48] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[48]),
        .Q(Q[48]));
  FDCE \current_reg[49] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[49]),
        .Q(Q[49]));
  FDCE \current_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[4]),
        .Q(Q[4]));
  FDCE \current_reg[50] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[50]),
        .Q(Q[50]));
  FDCE \current_reg[51] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[51]),
        .Q(Q[51]));
  FDCE \current_reg[52] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[52]),
        .Q(Q[52]));
  FDCE \current_reg[53] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[53]),
        .Q(Q[53]));
  FDCE \current_reg[54] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[54]),
        .Q(Q[54]));
  FDCE \current_reg[55] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[55]),
        .Q(Q[55]));
  FDCE \current_reg[56] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[56]),
        .Q(Q[56]));
  FDCE \current_reg[57] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[57]),
        .Q(Q[57]));
  FDCE \current_reg[58] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[58]),
        .Q(Q[58]));
  FDCE \current_reg[59] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[59]),
        .Q(Q[59]));
  FDCE \current_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[5]),
        .Q(Q[5]));
  FDCE \current_reg[60] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[60]),
        .Q(Q[60]));
  FDCE \current_reg[61] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[61]),
        .Q(Q[61]));
  FDCE \current_reg[62] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[62]),
        .Q(Q[62]));
  FDCE \current_reg[63] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[63]),
        .Q(current));
  FDCE \current_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[6]),
        .Q(Q[6]));
  FDCE \current_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[7]),
        .Q(Q[7]));
  FDCE \current_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[8]),
        .Q(Q[8]));
  FDCE \current_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(p_1_in[9]),
        .Q(Q[9]));
endmodule

(* ORIG_REF_NAME = "LSR_Register_AsyncReset" *) 
module lab_3_Multiplyer_unit_0_1_LSR_Register_AsyncReset
   (Q,
    E,
    clk,
    rst,
    B,
    load);
  output [0:0]Q;
  input [0:0]E;
  input clk;
  input rst;
  input [31:0]B;
  input load;

  wire [31:0]B;
  wire [0:0]E;
  wire [0:0]Q;
  wire clk;
  wire \current[0]_i_1_n_0 ;
  wire \current[10]_i_1_n_0 ;
  wire \current[11]_i_1_n_0 ;
  wire \current[12]_i_1_n_0 ;
  wire \current[13]_i_1_n_0 ;
  wire \current[14]_i_1_n_0 ;
  wire \current[15]_i_1_n_0 ;
  wire \current[16]_i_1_n_0 ;
  wire \current[17]_i_1_n_0 ;
  wire \current[18]_i_1_n_0 ;
  wire \current[19]_i_1_n_0 ;
  wire \current[1]_i_1_n_0 ;
  wire \current[20]_i_1_n_0 ;
  wire \current[21]_i_1_n_0 ;
  wire \current[22]_i_1_n_0 ;
  wire \current[23]_i_1_n_0 ;
  wire \current[24]_i_1_n_0 ;
  wire \current[25]_i_1_n_0 ;
  wire \current[26]_i_1_n_0 ;
  wire \current[27]_i_1_n_0 ;
  wire \current[28]_i_1_n_0 ;
  wire \current[29]_i_1_n_0 ;
  wire \current[2]_i_1_n_0 ;
  wire \current[30]_i_1_n_0 ;
  wire \current[31]_i_2_n_0 ;
  wire \current[3]_i_1_n_0 ;
  wire \current[4]_i_1_n_0 ;
  wire \current[5]_i_1_n_0 ;
  wire \current[6]_i_1_n_0 ;
  wire \current[7]_i_1_n_0 ;
  wire \current[8]_i_1_n_0 ;
  wire \current[9]_i_1_n_0 ;
  wire \current_reg_n_0_[10] ;
  wire \current_reg_n_0_[11] ;
  wire \current_reg_n_0_[12] ;
  wire \current_reg_n_0_[13] ;
  wire \current_reg_n_0_[14] ;
  wire \current_reg_n_0_[15] ;
  wire \current_reg_n_0_[16] ;
  wire \current_reg_n_0_[17] ;
  wire \current_reg_n_0_[18] ;
  wire \current_reg_n_0_[19] ;
  wire \current_reg_n_0_[1] ;
  wire \current_reg_n_0_[20] ;
  wire \current_reg_n_0_[21] ;
  wire \current_reg_n_0_[22] ;
  wire \current_reg_n_0_[23] ;
  wire \current_reg_n_0_[24] ;
  wire \current_reg_n_0_[25] ;
  wire \current_reg_n_0_[26] ;
  wire \current_reg_n_0_[27] ;
  wire \current_reg_n_0_[28] ;
  wire \current_reg_n_0_[29] ;
  wire \current_reg_n_0_[2] ;
  wire \current_reg_n_0_[30] ;
  wire \current_reg_n_0_[31] ;
  wire \current_reg_n_0_[3] ;
  wire \current_reg_n_0_[4] ;
  wire \current_reg_n_0_[5] ;
  wire \current_reg_n_0_[6] ;
  wire \current_reg_n_0_[7] ;
  wire \current_reg_n_0_[8] ;
  wire \current_reg_n_0_[9] ;
  wire load;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[0]_i_1 
       (.I0(B[0]),
        .I1(load),
        .I2(\current_reg_n_0_[1] ),
        .O(\current[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[10]_i_1 
       (.I0(B[10]),
        .I1(load),
        .I2(\current_reg_n_0_[11] ),
        .O(\current[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[11]_i_1 
       (.I0(B[11]),
        .I1(load),
        .I2(\current_reg_n_0_[12] ),
        .O(\current[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[12]_i_1 
       (.I0(B[12]),
        .I1(load),
        .I2(\current_reg_n_0_[13] ),
        .O(\current[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[13]_i_1 
       (.I0(B[13]),
        .I1(load),
        .I2(\current_reg_n_0_[14] ),
        .O(\current[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[14]_i_1 
       (.I0(B[14]),
        .I1(load),
        .I2(\current_reg_n_0_[15] ),
        .O(\current[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[15]_i_1 
       (.I0(B[15]),
        .I1(load),
        .I2(\current_reg_n_0_[16] ),
        .O(\current[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[16]_i_1 
       (.I0(B[16]),
        .I1(load),
        .I2(\current_reg_n_0_[17] ),
        .O(\current[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[17]_i_1 
       (.I0(B[17]),
        .I1(load),
        .I2(\current_reg_n_0_[18] ),
        .O(\current[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[18]_i_1 
       (.I0(B[18]),
        .I1(load),
        .I2(\current_reg_n_0_[19] ),
        .O(\current[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[19]_i_1 
       (.I0(B[19]),
        .I1(load),
        .I2(\current_reg_n_0_[20] ),
        .O(\current[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[1]_i_1 
       (.I0(B[1]),
        .I1(load),
        .I2(\current_reg_n_0_[2] ),
        .O(\current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[20]_i_1 
       (.I0(B[20]),
        .I1(load),
        .I2(\current_reg_n_0_[21] ),
        .O(\current[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[21]_i_1 
       (.I0(B[21]),
        .I1(load),
        .I2(\current_reg_n_0_[22] ),
        .O(\current[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[22]_i_1 
       (.I0(B[22]),
        .I1(load),
        .I2(\current_reg_n_0_[23] ),
        .O(\current[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[23]_i_1 
       (.I0(B[23]),
        .I1(load),
        .I2(\current_reg_n_0_[24] ),
        .O(\current[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[24]_i_1 
       (.I0(B[24]),
        .I1(load),
        .I2(\current_reg_n_0_[25] ),
        .O(\current[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[25]_i_1 
       (.I0(B[25]),
        .I1(load),
        .I2(\current_reg_n_0_[26] ),
        .O(\current[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[26]_i_1 
       (.I0(B[26]),
        .I1(load),
        .I2(\current_reg_n_0_[27] ),
        .O(\current[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[27]_i_1 
       (.I0(B[27]),
        .I1(load),
        .I2(\current_reg_n_0_[28] ),
        .O(\current[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[28]_i_1 
       (.I0(B[28]),
        .I1(load),
        .I2(\current_reg_n_0_[29] ),
        .O(\current[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[29]_i_1 
       (.I0(B[29]),
        .I1(load),
        .I2(\current_reg_n_0_[30] ),
        .O(\current[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[2]_i_1 
       (.I0(B[2]),
        .I1(load),
        .I2(\current_reg_n_0_[3] ),
        .O(\current[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[30]_i_1 
       (.I0(B[30]),
        .I1(load),
        .I2(\current_reg_n_0_[31] ),
        .O(\current[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \current[31]_i_2 
       (.I0(load),
        .I1(B[31]),
        .O(\current[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[3]_i_1 
       (.I0(B[3]),
        .I1(load),
        .I2(\current_reg_n_0_[4] ),
        .O(\current[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[4]_i_1 
       (.I0(B[4]),
        .I1(load),
        .I2(\current_reg_n_0_[5] ),
        .O(\current[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[5]_i_1 
       (.I0(B[5]),
        .I1(load),
        .I2(\current_reg_n_0_[6] ),
        .O(\current[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[6]_i_1 
       (.I0(B[6]),
        .I1(load),
        .I2(\current_reg_n_0_[7] ),
        .O(\current[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[7]_i_1 
       (.I0(B[7]),
        .I1(load),
        .I2(\current_reg_n_0_[8] ),
        .O(\current[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[8]_i_1 
       (.I0(B[8]),
        .I1(load),
        .I2(\current_reg_n_0_[9] ),
        .O(\current[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \current[9]_i_1 
       (.I0(B[9]),
        .I1(load),
        .I2(\current_reg_n_0_[10] ),
        .O(\current[9]_i_1_n_0 ));
  FDCE \current_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[0]_i_1_n_0 ),
        .Q(Q));
  FDCE \current_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[10]_i_1_n_0 ),
        .Q(\current_reg_n_0_[10] ));
  FDCE \current_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[11]_i_1_n_0 ),
        .Q(\current_reg_n_0_[11] ));
  FDCE \current_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[12]_i_1_n_0 ),
        .Q(\current_reg_n_0_[12] ));
  FDCE \current_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[13]_i_1_n_0 ),
        .Q(\current_reg_n_0_[13] ));
  FDCE \current_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[14]_i_1_n_0 ),
        .Q(\current_reg_n_0_[14] ));
  FDCE \current_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[15]_i_1_n_0 ),
        .Q(\current_reg_n_0_[15] ));
  FDCE \current_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[16]_i_1_n_0 ),
        .Q(\current_reg_n_0_[16] ));
  FDCE \current_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[17]_i_1_n_0 ),
        .Q(\current_reg_n_0_[17] ));
  FDCE \current_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[18]_i_1_n_0 ),
        .Q(\current_reg_n_0_[18] ));
  FDCE \current_reg[19] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[19]_i_1_n_0 ),
        .Q(\current_reg_n_0_[19] ));
  FDCE \current_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[1]_i_1_n_0 ),
        .Q(\current_reg_n_0_[1] ));
  FDCE \current_reg[20] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[20]_i_1_n_0 ),
        .Q(\current_reg_n_0_[20] ));
  FDCE \current_reg[21] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[21]_i_1_n_0 ),
        .Q(\current_reg_n_0_[21] ));
  FDCE \current_reg[22] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[22]_i_1_n_0 ),
        .Q(\current_reg_n_0_[22] ));
  FDCE \current_reg[23] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[23]_i_1_n_0 ),
        .Q(\current_reg_n_0_[23] ));
  FDCE \current_reg[24] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[24]_i_1_n_0 ),
        .Q(\current_reg_n_0_[24] ));
  FDCE \current_reg[25] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[25]_i_1_n_0 ),
        .Q(\current_reg_n_0_[25] ));
  FDCE \current_reg[26] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[26]_i_1_n_0 ),
        .Q(\current_reg_n_0_[26] ));
  FDCE \current_reg[27] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[27]_i_1_n_0 ),
        .Q(\current_reg_n_0_[27] ));
  FDCE \current_reg[28] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[28]_i_1_n_0 ),
        .Q(\current_reg_n_0_[28] ));
  FDCE \current_reg[29] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[29]_i_1_n_0 ),
        .Q(\current_reg_n_0_[29] ));
  FDCE \current_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[2]_i_1_n_0 ),
        .Q(\current_reg_n_0_[2] ));
  FDCE \current_reg[30] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[30]_i_1_n_0 ),
        .Q(\current_reg_n_0_[30] ));
  FDCE \current_reg[31] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[31]_i_2_n_0 ),
        .Q(\current_reg_n_0_[31] ));
  FDCE \current_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[3]_i_1_n_0 ),
        .Q(\current_reg_n_0_[3] ));
  FDCE \current_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[4]_i_1_n_0 ),
        .Q(\current_reg_n_0_[4] ));
  FDCE \current_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[5]_i_1_n_0 ),
        .Q(\current_reg_n_0_[5] ));
  FDCE \current_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[6]_i_1_n_0 ),
        .Q(\current_reg_n_0_[6] ));
  FDCE \current_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[7]_i_1_n_0 ),
        .Q(\current_reg_n_0_[7] ));
  FDCE \current_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[8]_i_1_n_0 ),
        .Q(\current_reg_n_0_[8] ));
  FDCE \current_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(rst),
        .D(\current[9]_i_1_n_0 ),
        .Q(\current_reg_n_0_[9] ));
endmodule

(* ORIG_REF_NAME = "Multiplyer_unit" *) 
module lab_3_Multiplyer_unit_0_1_Multiplyer_unit
   (done,
    R,
    clk,
    rst,
    B,
    A);
  output done;
  output [63:0]R;
  input clk;
  input rst;
  input [31:0]B;
  input [31:0]A;

  wire [31:0]A;
  wire Accumulator_n_0;
  wire Accumulator_n_1;
  wire Accumulator_n_10;
  wire Accumulator_n_11;
  wire Accumulator_n_12;
  wire Accumulator_n_13;
  wire Accumulator_n_14;
  wire Accumulator_n_15;
  wire Accumulator_n_16;
  wire Accumulator_n_17;
  wire Accumulator_n_18;
  wire Accumulator_n_19;
  wire Accumulator_n_2;
  wire Accumulator_n_20;
  wire Accumulator_n_21;
  wire Accumulator_n_22;
  wire Accumulator_n_23;
  wire Accumulator_n_24;
  wire Accumulator_n_25;
  wire Accumulator_n_26;
  wire Accumulator_n_27;
  wire Accumulator_n_28;
  wire Accumulator_n_29;
  wire Accumulator_n_3;
  wire Accumulator_n_30;
  wire Accumulator_n_31;
  wire Accumulator_n_32;
  wire Accumulator_n_33;
  wire Accumulator_n_34;
  wire Accumulator_n_35;
  wire Accumulator_n_36;
  wire Accumulator_n_37;
  wire Accumulator_n_38;
  wire Accumulator_n_39;
  wire Accumulator_n_4;
  wire Accumulator_n_40;
  wire Accumulator_n_41;
  wire Accumulator_n_42;
  wire Accumulator_n_43;
  wire Accumulator_n_44;
  wire Accumulator_n_45;
  wire Accumulator_n_46;
  wire Accumulator_n_47;
  wire Accumulator_n_48;
  wire Accumulator_n_49;
  wire Accumulator_n_5;
  wire Accumulator_n_50;
  wire Accumulator_n_51;
  wire Accumulator_n_52;
  wire Accumulator_n_53;
  wire Accumulator_n_54;
  wire Accumulator_n_55;
  wire Accumulator_n_56;
  wire Accumulator_n_57;
  wire Accumulator_n_58;
  wire Accumulator_n_59;
  wire Accumulator_n_6;
  wire Accumulator_n_60;
  wire Accumulator_n_61;
  wire Accumulator_n_63;
  wire Accumulator_n_7;
  wire Accumulator_n_8;
  wire Accumulator_n_9;
  wire [31:0]B;
  wire Controller_n_1;
  wire D;
  wire Multiplicand_n_0;
  wire Multiplicand_n_1;
  wire Multiplicand_n_100;
  wire Multiplicand_n_101;
  wire Multiplicand_n_102;
  wire Multiplicand_n_103;
  wire Multiplicand_n_104;
  wire Multiplicand_n_105;
  wire Multiplicand_n_106;
  wire Multiplicand_n_107;
  wire Multiplicand_n_108;
  wire Multiplicand_n_109;
  wire Multiplicand_n_110;
  wire Multiplicand_n_111;
  wire Multiplicand_n_112;
  wire Multiplicand_n_113;
  wire Multiplicand_n_114;
  wire Multiplicand_n_115;
  wire Multiplicand_n_116;
  wire Multiplicand_n_117;
  wire Multiplicand_n_118;
  wire Multiplicand_n_119;
  wire Multiplicand_n_120;
  wire Multiplicand_n_121;
  wire Multiplicand_n_122;
  wire Multiplicand_n_123;
  wire Multiplicand_n_124;
  wire Multiplicand_n_125;
  wire Multiplicand_n_126;
  wire Multiplicand_n_2;
  wire Multiplicand_n_3;
  wire Multiplicand_n_67;
  wire Multiplicand_n_68;
  wire Multiplicand_n_69;
  wire Multiplicand_n_70;
  wire Multiplicand_n_71;
  wire Multiplicand_n_72;
  wire Multiplicand_n_73;
  wire Multiplicand_n_74;
  wire Multiplicand_n_75;
  wire Multiplicand_n_76;
  wire Multiplicand_n_77;
  wire Multiplicand_n_78;
  wire Multiplicand_n_79;
  wire Multiplicand_n_80;
  wire Multiplicand_n_81;
  wire Multiplicand_n_82;
  wire Multiplicand_n_83;
  wire Multiplicand_n_84;
  wire Multiplicand_n_85;
  wire Multiplicand_n_86;
  wire Multiplicand_n_87;
  wire Multiplicand_n_88;
  wire Multiplicand_n_89;
  wire Multiplicand_n_90;
  wire Multiplicand_n_91;
  wire Multiplicand_n_92;
  wire Multiplicand_n_93;
  wire Multiplicand_n_94;
  wire Multiplicand_n_95;
  wire Multiplicand_n_96;
  wire Multiplicand_n_97;
  wire Multiplicand_n_98;
  wire Multiplicand_n_99;
  wire Multiplier_n_0;
  wire [63:0]R;
  wire clk;
  wire [62:0]current;
  wire done;
  wire load;
  wire rst;

  lab_3_Multiplyer_unit_0_1_adder Accumulator
       (.O3({Accumulator_n_0,Accumulator_n_1,Accumulator_n_2,Accumulator_n_3,Accumulator_n_4,Accumulator_n_5,Accumulator_n_6,Accumulator_n_7,Accumulator_n_8,Accumulator_n_9,Accumulator_n_10,Accumulator_n_11,Accumulator_n_12,Accumulator_n_13,Accumulator_n_14,Accumulator_n_15,Accumulator_n_16,Accumulator_n_17,Accumulator_n_18,Accumulator_n_19,Accumulator_n_20,Accumulator_n_21,Accumulator_n_22,Accumulator_n_23,Accumulator_n_24,Accumulator_n_25,Accumulator_n_26,Accumulator_n_27,Accumulator_n_28,Accumulator_n_29,Accumulator_n_30,Accumulator_n_31,Accumulator_n_32,Accumulator_n_33,Accumulator_n_34,Accumulator_n_35,Accumulator_n_36,Accumulator_n_37,Accumulator_n_38,Accumulator_n_39,Accumulator_n_40,Accumulator_n_41,Accumulator_n_42,Accumulator_n_43,Accumulator_n_44,Accumulator_n_45,Accumulator_n_46,Accumulator_n_47,Accumulator_n_48,Accumulator_n_49,Accumulator_n_50,Accumulator_n_51,Accumulator_n_52,Accumulator_n_53,Accumulator_n_54,Accumulator_n_55,Accumulator_n_56,Accumulator_n_57,Accumulator_n_58,Accumulator_n_59,Accumulator_n_60,Accumulator_n_61,D,Accumulator_n_63}),
        .Q(current),
        .Q_reg({Multiplicand_n_67,Multiplicand_n_68,Multiplicand_n_69,Multiplicand_n_70}),
        .Q_reg_0({Multiplicand_n_71,Multiplicand_n_72,Multiplicand_n_73,Multiplicand_n_74}),
        .Q_reg_1({Multiplicand_n_75,Multiplicand_n_76,Multiplicand_n_77,Multiplicand_n_78}),
        .Q_reg_10({Multiplicand_n_111,Multiplicand_n_112,Multiplicand_n_113,Multiplicand_n_114}),
        .Q_reg_11({Multiplicand_n_115,Multiplicand_n_116,Multiplicand_n_117,Multiplicand_n_118}),
        .Q_reg_12({Multiplicand_n_119,Multiplicand_n_120,Multiplicand_n_121,Multiplicand_n_122}),
        .Q_reg_13({Multiplicand_n_123,Multiplicand_n_124,Multiplicand_n_125,Multiplicand_n_126}),
        .Q_reg_2({Multiplicand_n_79,Multiplicand_n_80,Multiplicand_n_81,Multiplicand_n_82}),
        .Q_reg_3({Multiplicand_n_83,Multiplicand_n_84,Multiplicand_n_85,Multiplicand_n_86}),
        .Q_reg_4({Multiplicand_n_87,Multiplicand_n_88,Multiplicand_n_89,Multiplicand_n_90}),
        .Q_reg_5({Multiplicand_n_91,Multiplicand_n_92,Multiplicand_n_93,Multiplicand_n_94}),
        .Q_reg_6({Multiplicand_n_95,Multiplicand_n_96,Multiplicand_n_97,Multiplicand_n_98}),
        .Q_reg_7({Multiplicand_n_99,Multiplicand_n_100,Multiplicand_n_101,Multiplicand_n_102}),
        .Q_reg_8({Multiplicand_n_103,Multiplicand_n_104,Multiplicand_n_105,Multiplicand_n_106}),
        .Q_reg_9({Multiplicand_n_107,Multiplicand_n_108,Multiplicand_n_109,Multiplicand_n_110}),
        .S({Multiplicand_n_0,Multiplicand_n_1,Multiplicand_n_2,Multiplicand_n_3}));
  lab_3_Multiplyer_unit_0_1_Control_Unit Controller
       (.E(Controller_n_1),
        .clk(clk),
        .load(load),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_Generic_bit_counter Counter
       (.clk(clk),
        .done(done),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_LSL_Resgister_AsyncReset Multiplicand
       (.A(A),
        .E(Controller_n_1),
        .Q(current),
        .R(R),
        .S({Multiplicand_n_0,Multiplicand_n_1,Multiplicand_n_2,Multiplicand_n_3}),
        .clk(clk),
        .\current_reg[11]_0 ({Multiplicand_n_71,Multiplicand_n_72,Multiplicand_n_73,Multiplicand_n_74}),
        .\current_reg[15]_0 ({Multiplicand_n_75,Multiplicand_n_76,Multiplicand_n_77,Multiplicand_n_78}),
        .\current_reg[19]_0 ({Multiplicand_n_79,Multiplicand_n_80,Multiplicand_n_81,Multiplicand_n_82}),
        .\current_reg[23]_0 ({Multiplicand_n_83,Multiplicand_n_84,Multiplicand_n_85,Multiplicand_n_86}),
        .\current_reg[27]_0 ({Multiplicand_n_87,Multiplicand_n_88,Multiplicand_n_89,Multiplicand_n_90}),
        .\current_reg[31]_0 ({Multiplicand_n_91,Multiplicand_n_92,Multiplicand_n_93,Multiplicand_n_94}),
        .\current_reg[35]_0 ({Multiplicand_n_95,Multiplicand_n_96,Multiplicand_n_97,Multiplicand_n_98}),
        .\current_reg[39]_0 ({Multiplicand_n_99,Multiplicand_n_100,Multiplicand_n_101,Multiplicand_n_102}),
        .\current_reg[43]_0 ({Multiplicand_n_103,Multiplicand_n_104,Multiplicand_n_105,Multiplicand_n_106}),
        .\current_reg[47]_0 ({Multiplicand_n_107,Multiplicand_n_108,Multiplicand_n_109,Multiplicand_n_110}),
        .\current_reg[51]_0 ({Multiplicand_n_111,Multiplicand_n_112,Multiplicand_n_113,Multiplicand_n_114}),
        .\current_reg[55]_0 ({Multiplicand_n_115,Multiplicand_n_116,Multiplicand_n_117,Multiplicand_n_118}),
        .\current_reg[59]_0 ({Multiplicand_n_119,Multiplicand_n_120,Multiplicand_n_121,Multiplicand_n_122}),
        .\current_reg[63]_0 ({Multiplicand_n_123,Multiplicand_n_124,Multiplicand_n_125,Multiplicand_n_126}),
        .\current_reg[7]_0 ({Multiplicand_n_67,Multiplicand_n_68,Multiplicand_n_69,Multiplicand_n_70}),
        .load(load),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_LSR_Register_AsyncReset Multiplier
       (.B(B),
        .E(Controller_n_1),
        .Q(Multiplier_n_0),
        .clk(clk),
        .load(load),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_Register_AsyncReset Product
       (.O3({Accumulator_n_0,Accumulator_n_1,Accumulator_n_2,Accumulator_n_3,Accumulator_n_4,Accumulator_n_5,Accumulator_n_6,Accumulator_n_7,Accumulator_n_8,Accumulator_n_9,Accumulator_n_10,Accumulator_n_11,Accumulator_n_12,Accumulator_n_13,Accumulator_n_14,Accumulator_n_15,Accumulator_n_16,Accumulator_n_17,Accumulator_n_18,Accumulator_n_19,Accumulator_n_20,Accumulator_n_21,Accumulator_n_22,Accumulator_n_23,Accumulator_n_24,Accumulator_n_25,Accumulator_n_26,Accumulator_n_27,Accumulator_n_28,Accumulator_n_29,Accumulator_n_30,Accumulator_n_31,Accumulator_n_32,Accumulator_n_33,Accumulator_n_34,Accumulator_n_35,Accumulator_n_36,Accumulator_n_37,Accumulator_n_38,Accumulator_n_39,Accumulator_n_40,Accumulator_n_41,Accumulator_n_42,Accumulator_n_43,Accumulator_n_44,Accumulator_n_45,Accumulator_n_46,Accumulator_n_47,Accumulator_n_48,Accumulator_n_49,Accumulator_n_50,Accumulator_n_51,Accumulator_n_52,Accumulator_n_53,Accumulator_n_54,Accumulator_n_55,Accumulator_n_56,Accumulator_n_57,Accumulator_n_58,Accumulator_n_59,Accumulator_n_60,Accumulator_n_61,D,Accumulator_n_63}),
        .Q(Multiplier_n_0),
        .R(R),
        .clk(clk),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "Register_AsyncReset" *) 
module lab_3_Multiplyer_unit_0_1_Register_AsyncReset
   (R,
    Q,
    O3,
    clk,
    rst);
  output [63:0]R;
  input [0:0]Q;
  input [63:0]O3;
  input clk;
  input rst;

  wire [63:0]O3;
  wire [0:0]Q;
  wire [63:0]R;
  wire clk;
  wire rst;

  lab_3_Multiplyer_unit_0_1_flipflop \L1[0].FF 
       (.O3(O3[0]),
        .Q(Q),
        .R(R[0]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_0 \L1[10].FF 
       (.O3(O3[10]),
        .Q(Q),
        .R(R[10]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_1 \L1[11].FF 
       (.O3(O3[11]),
        .Q(Q),
        .R(R[11]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_2 \L1[12].FF 
       (.O3(O3[12]),
        .Q(Q),
        .R(R[12]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_3 \L1[13].FF 
       (.O3(O3[13]),
        .Q(Q),
        .R(R[13]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_4 \L1[14].FF 
       (.O3(O3[14]),
        .Q(Q),
        .R(R[14]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_5 \L1[15].FF 
       (.O3(O3[15]),
        .Q(Q),
        .R(R[15]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_6 \L1[16].FF 
       (.O3(O3[16]),
        .Q(Q),
        .R(R[16]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_7 \L1[17].FF 
       (.O3(O3[17]),
        .Q(Q),
        .R(R[17]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_8 \L1[18].FF 
       (.O3(O3[18]),
        .Q(Q),
        .R(R[18]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_9 \L1[19].FF 
       (.O3(O3[19]),
        .Q(Q),
        .R(R[19]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_10 \L1[1].FF 
       (.O3(O3[1]),
        .Q(Q),
        .R(R[1]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_11 \L1[20].FF 
       (.O3(O3[20]),
        .Q(Q),
        .R(R[20]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_12 \L1[21].FF 
       (.O3(O3[21]),
        .Q(Q),
        .R(R[21]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_13 \L1[22].FF 
       (.O3(O3[22]),
        .Q(Q),
        .R(R[22]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_14 \L1[23].FF 
       (.O3(O3[23]),
        .Q(Q),
        .R(R[23]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_15 \L1[24].FF 
       (.O3(O3[24]),
        .Q(Q),
        .R(R[24]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_16 \L1[25].FF 
       (.O3(O3[25]),
        .Q(Q),
        .R(R[25]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_17 \L1[26].FF 
       (.O3(O3[26]),
        .Q(Q),
        .R(R[26]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_18 \L1[27].FF 
       (.O3(O3[27]),
        .Q(Q),
        .R(R[27]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_19 \L1[28].FF 
       (.O3(O3[28]),
        .Q(Q),
        .R(R[28]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_20 \L1[29].FF 
       (.O3(O3[29]),
        .Q(Q),
        .R(R[29]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_21 \L1[2].FF 
       (.O3(O3[2]),
        .Q(Q),
        .R(R[2]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_22 \L1[30].FF 
       (.O3(O3[30]),
        .Q(Q),
        .R(R[30]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_23 \L1[31].FF 
       (.O3(O3[31]),
        .Q(Q),
        .R(R[31]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_24 \L1[32].FF 
       (.O3(O3[32]),
        .Q(Q),
        .R(R[32]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_25 \L1[33].FF 
       (.O3(O3[33]),
        .Q(Q),
        .R(R[33]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_26 \L1[34].FF 
       (.O3(O3[34]),
        .Q(Q),
        .R(R[34]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_27 \L1[35].FF 
       (.O3(O3[35]),
        .Q(Q),
        .R(R[35]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_28 \L1[36].FF 
       (.O3(O3[36]),
        .Q(Q),
        .R(R[36]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_29 \L1[37].FF 
       (.O3(O3[37]),
        .Q(Q),
        .R(R[37]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_30 \L1[38].FF 
       (.O3(O3[38]),
        .Q(Q),
        .R(R[38]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_31 \L1[39].FF 
       (.O3(O3[39]),
        .Q(Q),
        .R(R[39]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_32 \L1[3].FF 
       (.O3(O3[3]),
        .Q(Q),
        .R(R[3]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_33 \L1[40].FF 
       (.O3(O3[40]),
        .Q(Q),
        .R(R[40]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_34 \L1[41].FF 
       (.O3(O3[41]),
        .Q(Q),
        .R(R[41]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_35 \L1[42].FF 
       (.O3(O3[42]),
        .Q(Q),
        .R(R[42]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_36 \L1[43].FF 
       (.O3(O3[43]),
        .Q(Q),
        .R(R[43]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_37 \L1[44].FF 
       (.O3(O3[44]),
        .Q(Q),
        .R(R[44]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_38 \L1[45].FF 
       (.O3(O3[45]),
        .Q(Q),
        .R(R[45]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_39 \L1[46].FF 
       (.O3(O3[46]),
        .Q(Q),
        .R(R[46]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_40 \L1[47].FF 
       (.O3(O3[47]),
        .Q(Q),
        .R(R[47]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_41 \L1[48].FF 
       (.O3(O3[48]),
        .Q(Q),
        .R(R[48]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_42 \L1[49].FF 
       (.O3(O3[49]),
        .Q(Q),
        .R(R[49]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_43 \L1[4].FF 
       (.O3(O3[4]),
        .Q(Q),
        .R(R[4]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_44 \L1[50].FF 
       (.O3(O3[50]),
        .Q(Q),
        .R(R[50]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_45 \L1[51].FF 
       (.O3(O3[51]),
        .Q(Q),
        .R(R[51]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_46 \L1[52].FF 
       (.O3(O3[52]),
        .Q(Q),
        .R(R[52]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_47 \L1[53].FF 
       (.O3(O3[53]),
        .Q(Q),
        .R(R[53]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_48 \L1[54].FF 
       (.O3(O3[54]),
        .Q(Q),
        .R(R[54]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_49 \L1[55].FF 
       (.O3(O3[55]),
        .Q(Q),
        .R(R[55]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_50 \L1[56].FF 
       (.O3(O3[56]),
        .Q(Q),
        .R(R[56]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_51 \L1[57].FF 
       (.O3(O3[57]),
        .Q(Q),
        .R(R[57]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_52 \L1[58].FF 
       (.O3(O3[58]),
        .Q(Q),
        .R(R[58]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_53 \L1[59].FF 
       (.O3(O3[59]),
        .Q(Q),
        .R(R[59]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_54 \L1[5].FF 
       (.O3(O3[5]),
        .Q(Q),
        .R(R[5]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_55 \L1[60].FF 
       (.O3(O3[60]),
        .Q(Q),
        .R(R[60]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_56 \L1[61].FF 
       (.O3(O3[61]),
        .Q(Q),
        .R(R[61]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_57 \L1[62].FF 
       (.O3(O3[62]),
        .Q(Q),
        .R(R[62]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_58 \L1[63].FF 
       (.O3(O3[63]),
        .Q(Q),
        .R(R[63]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_59 \L1[6].FF 
       (.O3(O3[6]),
        .Q(Q),
        .R(R[6]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_60 \L1[7].FF 
       (.O3(O3[7]),
        .Q(Q),
        .R(R[7]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_61 \L1[8].FF 
       (.O3(O3[8]),
        .Q(Q),
        .R(R[8]),
        .clk(clk),
        .rst(rst));
  lab_3_Multiplyer_unit_0_1_flipflop_62 \L1[9].FF 
       (.O3(O3[9]),
        .Q(Q),
        .R(R[9]),
        .clk(clk),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module lab_3_Multiplyer_unit_0_1_adder
   (O3,
    Q,
    S,
    Q_reg,
    Q_reg_0,
    Q_reg_1,
    Q_reg_2,
    Q_reg_3,
    Q_reg_4,
    Q_reg_5,
    Q_reg_6,
    Q_reg_7,
    Q_reg_8,
    Q_reg_9,
    Q_reg_10,
    Q_reg_11,
    Q_reg_12,
    Q_reg_13);
  output [63:0]O3;
  input [62:0]Q;
  input [3:0]S;
  input [3:0]Q_reg;
  input [3:0]Q_reg_0;
  input [3:0]Q_reg_1;
  input [3:0]Q_reg_2;
  input [3:0]Q_reg_3;
  input [3:0]Q_reg_4;
  input [3:0]Q_reg_5;
  input [3:0]Q_reg_6;
  input [3:0]Q_reg_7;
  input [3:0]Q_reg_8;
  input [3:0]Q_reg_9;
  input [3:0]Q_reg_10;
  input [3:0]Q_reg_11;
  input [3:0]Q_reg_12;
  input [3:0]Q_reg_13;

  wire [63:0]O3;
  wire [62:0]Q;
  wire [3:0]Q_reg;
  wire [3:0]Q_reg_0;
  wire [3:0]Q_reg_1;
  wire [3:0]Q_reg_10;
  wire [3:0]Q_reg_11;
  wire [3:0]Q_reg_12;
  wire [3:0]Q_reg_13;
  wire [3:0]Q_reg_2;
  wire [3:0]Q_reg_3;
  wire [3:0]Q_reg_4;
  wire [3:0]Q_reg_5;
  wire [3:0]Q_reg_6;
  wire [3:0]Q_reg_7;
  wire [3:0]Q_reg_8;
  wire [3:0]Q_reg_9;
  wire [3:0]S;
  wire S_carry__0_n_0;
  wire S_carry__0_n_1;
  wire S_carry__0_n_2;
  wire S_carry__0_n_3;
  wire S_carry__10_n_0;
  wire S_carry__10_n_1;
  wire S_carry__10_n_2;
  wire S_carry__10_n_3;
  wire S_carry__11_n_0;
  wire S_carry__11_n_1;
  wire S_carry__11_n_2;
  wire S_carry__11_n_3;
  wire S_carry__12_n_0;
  wire S_carry__12_n_1;
  wire S_carry__12_n_2;
  wire S_carry__12_n_3;
  wire S_carry__13_n_0;
  wire S_carry__13_n_1;
  wire S_carry__13_n_2;
  wire S_carry__13_n_3;
  wire S_carry__14_n_1;
  wire S_carry__14_n_2;
  wire S_carry__14_n_3;
  wire S_carry__1_n_0;
  wire S_carry__1_n_1;
  wire S_carry__1_n_2;
  wire S_carry__1_n_3;
  wire S_carry__2_n_0;
  wire S_carry__2_n_1;
  wire S_carry__2_n_2;
  wire S_carry__2_n_3;
  wire S_carry__3_n_0;
  wire S_carry__3_n_1;
  wire S_carry__3_n_2;
  wire S_carry__3_n_3;
  wire S_carry__4_n_0;
  wire S_carry__4_n_1;
  wire S_carry__4_n_2;
  wire S_carry__4_n_3;
  wire S_carry__5_n_0;
  wire S_carry__5_n_1;
  wire S_carry__5_n_2;
  wire S_carry__5_n_3;
  wire S_carry__6_n_0;
  wire S_carry__6_n_1;
  wire S_carry__6_n_2;
  wire S_carry__6_n_3;
  wire S_carry__7_n_0;
  wire S_carry__7_n_1;
  wire S_carry__7_n_2;
  wire S_carry__7_n_3;
  wire S_carry__8_n_0;
  wire S_carry__8_n_1;
  wire S_carry__8_n_2;
  wire S_carry__8_n_3;
  wire S_carry__9_n_0;
  wire S_carry__9_n_1;
  wire S_carry__9_n_2;
  wire S_carry__9_n_3;
  wire S_carry_n_0;
  wire S_carry_n_1;
  wire S_carry_n_2;
  wire S_carry_n_3;
  wire [3:3]NLW_S_carry__14_CO_UNCONNECTED;

  CARRY4 S_carry
       (.CI(1'b0),
        .CO({S_carry_n_0,S_carry_n_1,S_carry_n_2,S_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(O3[3:0]),
        .S(S));
  CARRY4 S_carry__0
       (.CI(S_carry_n_0),
        .CO({S_carry__0_n_0,S_carry__0_n_1,S_carry__0_n_2,S_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(O3[7:4]),
        .S(Q_reg));
  CARRY4 S_carry__1
       (.CI(S_carry__0_n_0),
        .CO({S_carry__1_n_0,S_carry__1_n_1,S_carry__1_n_2,S_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(O3[11:8]),
        .S(Q_reg_0));
  CARRY4 S_carry__10
       (.CI(S_carry__9_n_0),
        .CO({S_carry__10_n_0,S_carry__10_n_1,S_carry__10_n_2,S_carry__10_n_3}),
        .CYINIT(1'b0),
        .DI(Q[47:44]),
        .O(O3[47:44]),
        .S(Q_reg_9));
  CARRY4 S_carry__11
       (.CI(S_carry__10_n_0),
        .CO({S_carry__11_n_0,S_carry__11_n_1,S_carry__11_n_2,S_carry__11_n_3}),
        .CYINIT(1'b0),
        .DI(Q[51:48]),
        .O(O3[51:48]),
        .S(Q_reg_10));
  CARRY4 S_carry__12
       (.CI(S_carry__11_n_0),
        .CO({S_carry__12_n_0,S_carry__12_n_1,S_carry__12_n_2,S_carry__12_n_3}),
        .CYINIT(1'b0),
        .DI(Q[55:52]),
        .O(O3[55:52]),
        .S(Q_reg_11));
  CARRY4 S_carry__13
       (.CI(S_carry__12_n_0),
        .CO({S_carry__13_n_0,S_carry__13_n_1,S_carry__13_n_2,S_carry__13_n_3}),
        .CYINIT(1'b0),
        .DI(Q[59:56]),
        .O(O3[59:56]),
        .S(Q_reg_12));
  CARRY4 S_carry__14
       (.CI(S_carry__13_n_0),
        .CO({NLW_S_carry__14_CO_UNCONNECTED[3],S_carry__14_n_1,S_carry__14_n_2,S_carry__14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[62:60]}),
        .O(O3[63:60]),
        .S(Q_reg_13));
  CARRY4 S_carry__2
       (.CI(S_carry__1_n_0),
        .CO({S_carry__2_n_0,S_carry__2_n_1,S_carry__2_n_2,S_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(O3[15:12]),
        .S(Q_reg_1));
  CARRY4 S_carry__3
       (.CI(S_carry__2_n_0),
        .CO({S_carry__3_n_0,S_carry__3_n_1,S_carry__3_n_2,S_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(O3[19:16]),
        .S(Q_reg_2));
  CARRY4 S_carry__4
       (.CI(S_carry__3_n_0),
        .CO({S_carry__4_n_0,S_carry__4_n_1,S_carry__4_n_2,S_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[23:20]),
        .O(O3[23:20]),
        .S(Q_reg_3));
  CARRY4 S_carry__5
       (.CI(S_carry__4_n_0),
        .CO({S_carry__5_n_0,S_carry__5_n_1,S_carry__5_n_2,S_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[27:24]),
        .O(O3[27:24]),
        .S(Q_reg_4));
  CARRY4 S_carry__6
       (.CI(S_carry__5_n_0),
        .CO({S_carry__6_n_0,S_carry__6_n_1,S_carry__6_n_2,S_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI(Q[31:28]),
        .O(O3[31:28]),
        .S(Q_reg_5));
  CARRY4 S_carry__7
       (.CI(S_carry__6_n_0),
        .CO({S_carry__7_n_0,S_carry__7_n_1,S_carry__7_n_2,S_carry__7_n_3}),
        .CYINIT(1'b0),
        .DI(Q[35:32]),
        .O(O3[35:32]),
        .S(Q_reg_6));
  CARRY4 S_carry__8
       (.CI(S_carry__7_n_0),
        .CO({S_carry__8_n_0,S_carry__8_n_1,S_carry__8_n_2,S_carry__8_n_3}),
        .CYINIT(1'b0),
        .DI(Q[39:36]),
        .O(O3[39:36]),
        .S(Q_reg_7));
  CARRY4 S_carry__9
       (.CI(S_carry__8_n_0),
        .CO({S_carry__9_n_0,S_carry__9_n_1,S_carry__9_n_2,S_carry__9_n_3}),
        .CYINIT(1'b0),
        .DI(Q[43:40]),
        .O(O3[43:40]),
        .S(Q_reg_8));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_0
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_1
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_10
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_11
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_12
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_13
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_14
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_15
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_16
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_17
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_18
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_19
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_2
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_20
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_21
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_22
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_23
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_24
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_25
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_26
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_27
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_28
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_29
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_3
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_30
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_31
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_32
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_33
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_34
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_35
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_36
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_37
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_38
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_39
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_4
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_40
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_41
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_42
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_43
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_44
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_45
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_46
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_47
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_48
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_49
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_5
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_50
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_51
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_52
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_53
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_54
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_55
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_56
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_57
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_58
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_59
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_6
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_60
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_61
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_62
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_7
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_8
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module lab_3_Multiplyer_unit_0_1_flipflop_9
   (R,
    Q,
    O3,
    clk,
    rst);
  output [0:0]R;
  input [0:0]Q;
  input [0:0]O3;
  input clk;
  input rst;

  wire [0:0]O3;
  wire [0:0]Q;
  wire [0:0]R;
  wire clk;
  wire rst;

  FDCE Q_reg
       (.C(clk),
        .CE(Q),
        .CLR(rst),
        .D(O3),
        .Q(R));
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
