/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : O-2018.06-SP1
// Date      : Fri Sep 25 21:57:43 2020
/////////////////////////////////////////////////////////////


module FSM ( Clk, Reset, CurrentState );
  output [2:0] CurrentState;
  input Clk, Reset;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32;
  wire   [2:0] Next_State;

  GTECH_AND2 C7 ( .A(N9), .B(N10), .Z(N12) );
  GTECH_AND2 C8 ( .A(N12), .B(N11), .Z(N13) );
  GTECH_OR2 C10 ( .A(CurrentState[2]), .B(CurrentState[1]), .Z(N14) );
  GTECH_OR2 C11 ( .A(N14), .B(N11), .Z(N15) );
  GTECH_OR2 C14 ( .A(CurrentState[2]), .B(N10), .Z(N17) );
  GTECH_OR2 C15 ( .A(N17), .B(CurrentState[0]), .Z(N18) );
  GTECH_OR2 C19 ( .A(CurrentState[2]), .B(N10), .Z(N20) );
  GTECH_OR2 C20 ( .A(N20), .B(N11), .Z(N21) );
  GTECH_OR2 C23 ( .A(N9), .B(CurrentState[1]), .Z(N23) );
  GTECH_OR2 C24 ( .A(N23), .B(CurrentState[0]), .Z(N24) );
  GTECH_AND2 C26 ( .A(CurrentState[2]), .B(CurrentState[0]), .Z(N26) );
  GTECH_AND2 C27 ( .A(CurrentState[2]), .B(CurrentState[1]), .Z(N27) );
  \**SEQGEN**  \Current_State_reg[2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N32), .clocked_on(Clk), .data_in(1'b0), .enable(1'b0), .Q(
        CurrentState[2]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \Current_State_reg[1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N31), .clocked_on(Clk), .data_in(1'b0), .enable(1'b0), .Q(
        CurrentState[1]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  \**SEQGEN**  \Current_State_reg[0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N30), .clocked_on(Clk), .data_in(1'b0), .enable(1'b0), .Q(
        CurrentState[0]), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(1'b1) );
  SELECT_OP C56 ( .DATA1({1'b0, 1'b1}), .DATA2({1'b1, 1'b0}), .DATA3({1'b1, 
        1'b1}), .DATA4({1'b0, 1'b0}), .DATA5({1'b0, 1'b1}), .DATA6({1'b0, 1'b0}), .CONTROL1(N0), .CONTROL2(N1), .CONTROL3(N2), .CONTROL4(N3), .CONTROL5(N4), 
        .CONTROL6(N5), .Z(Next_State[1:0]) );
  GTECH_BUF B_0 ( .A(N13), .Z(N0) );
  GTECH_BUF B_1 ( .A(N16), .Z(N1) );
  GTECH_BUF B_2 ( .A(N19), .Z(N2) );
  GTECH_BUF B_3 ( .A(N22), .Z(N3) );
  GTECH_BUF B_4 ( .A(N25), .Z(N4) );
  GTECH_BUF B_5 ( .A(N28), .Z(N5) );
  SELECT_OP C57 ( .DATA1(1'b1), .DATA2(1'b0), .CONTROL1(N3), .CONTROL2(N6), 
        .Z(Next_State[2]) );
  GTECH_BUF B_6 ( .A(N21), .Z(N6) );
  SELECT_OP C58 ( .DATA1({1'b0, 1'b0, 1'b0}), .DATA2(Next_State), .CONTROL1(N7), .CONTROL2(N8), .Z({N32, N31, N30}) );
  GTECH_BUF B_7 ( .A(Reset), .Z(N7) );
  GTECH_BUF B_8 ( .A(N29), .Z(N8) );
  GTECH_NOT I_0 ( .A(CurrentState[2]), .Z(N9) );
  GTECH_NOT I_1 ( .A(CurrentState[1]), .Z(N10) );
  GTECH_NOT I_2 ( .A(CurrentState[0]), .Z(N11) );
  GTECH_NOT I_3 ( .A(N15), .Z(N16) );
  GTECH_NOT I_4 ( .A(N18), .Z(N19) );
  GTECH_NOT I_5 ( .A(N21), .Z(N22) );
  GTECH_NOT I_6 ( .A(N24), .Z(N25) );
  GTECH_OR2 C73 ( .A(N26), .B(N27), .Z(N28) );
  GTECH_NOT I_7 ( .A(Reset), .Z(N29) );
endmodule


module DECODE ( Zro_Flag, Carry_Flag, Neg_Flag, CurrentState, Crnt_Instrn, 
        Incrmnt_PC, Ld_Brnch_Addr, Ld_Rtn_Addr );
  input [2:0] CurrentState;
  input [31:0] Crnt_Instrn;
  input Zro_Flag, Carry_Flag, Neg_Flag;
  output Incrmnt_PC, Ld_Brnch_Addr, Ld_Rtn_Addr;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, Crnt_Instrn_31, Crnt_Instrn_30,
         Crnt_Instrn_29, Crnt_Instrn_28, Crnt_Instrn_27, Crnt_Instrn_25, N9,
         N10, Neg, N11, Carry, N12, Zro, Jmp, N13, N14, N15, N16, N17, N18,
         N19, N20, Take_Branch, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54;
  assign Crnt_Instrn_31 = Crnt_Instrn[31];
  assign Crnt_Instrn_30 = Crnt_Instrn[30];
  assign Crnt_Instrn_29 = Crnt_Instrn[29];
  assign Crnt_Instrn_28 = Crnt_Instrn[28];
  assign Crnt_Instrn_27 = Crnt_Instrn[27];
  assign Crnt_Instrn_25 = Crnt_Instrn[25];

  GTECH_OR2 C33 ( .A(N17), .B(CurrentState[1]), .Z(N18) );
  GTECH_OR2 C34 ( .A(N18), .B(CurrentState[0]), .Z(N19) );
  GTECH_OR2 C77 ( .A(Crnt_Instrn_30), .B(Crnt_Instrn_31), .Z(N26) );
  GTECH_NOT I_0 ( .A(N26), .Z(N27) );
  GTECH_NOT I_1 ( .A(Crnt_Instrn[21]), .Z(N28) );
  GTECH_NOT I_2 ( .A(Crnt_Instrn[20]), .Z(N29) );
  GTECH_NOT I_3 ( .A(Crnt_Instrn[19]), .Z(N30) );
  GTECH_NOT I_4 ( .A(Crnt_Instrn[18]), .Z(N31) );
  GTECH_NOT I_5 ( .A(Crnt_Instrn[17]), .Z(N32) );
  GTECH_NOT I_6 ( .A(Crnt_Instrn[16]), .Z(N33) );
  GTECH_OR2 C85 ( .A(Crnt_Instrn[22]), .B(Crnt_Instrn[23]), .Z(N34) );
  GTECH_OR2 C86 ( .A(N28), .B(N34), .Z(N35) );
  GTECH_OR2 C87 ( .A(N29), .B(N35), .Z(N36) );
  GTECH_OR2 C88 ( .A(N30), .B(N36), .Z(N37) );
  GTECH_OR2 C89 ( .A(N31), .B(N37), .Z(N38) );
  GTECH_OR2 C90 ( .A(N32), .B(N38), .Z(N39) );
  GTECH_OR2 C91 ( .A(N33), .B(N39), .Z(N40) );
  GTECH_NOT I_7 ( .A(N40), .Z(N41) );
  GTECH_OR2 C95 ( .A(Crnt_Instrn[21]), .B(N34), .Z(N42) );
  GTECH_OR2 C96 ( .A(Crnt_Instrn[20]), .B(N42), .Z(N43) );
  GTECH_OR2 C97 ( .A(Crnt_Instrn[19]), .B(N43), .Z(N44) );
  GTECH_OR2 C98 ( .A(Crnt_Instrn[18]), .B(N44), .Z(N45) );
  GTECH_OR2 C99 ( .A(N32), .B(N45), .Z(N46) );
  GTECH_OR2 C100 ( .A(Crnt_Instrn[16]), .B(N46), .Z(N47) );
  GTECH_NOT I_8 ( .A(N47), .Z(N48) );
  GTECH_OR2 C108 ( .A(Crnt_Instrn[17]), .B(N45), .Z(N49) );
  GTECH_OR2 C109 ( .A(N33), .B(N49), .Z(N50) );
  GTECH_NOT I_9 ( .A(N50), .Z(N51) );
  GTECH_OR2 C117 ( .A(Crnt_Instrn[16]), .B(N49), .Z(N52) );
  GTECH_NOT I_10 ( .A(N52), .Z(N53) );
  SELECT_OP C119 ( .DATA1(N10), .DATA2(Neg_Flag), .CONTROL1(N0), .CONTROL2(N9), 
        .Z(Neg) );
  GTECH_BUF B_0 ( .A(Crnt_Instrn_25), .Z(N0) );
  SELECT_OP C120 ( .DATA1(N11), .DATA2(Carry_Flag), .CONTROL1(N0), .CONTROL2(
        N9), .Z(Carry) );
  SELECT_OP C121 ( .DATA1(N12), .DATA2(Zro_Flag), .CONTROL1(N0), .CONTROL2(N9), 
        .Z(Zro) );
  GTECH_NOT I_11 ( .A(Crnt_Instrn_25), .Z(Jmp) );
  SELECT_OP C123 ( .DATA1(Neg), .DATA2(Zro), .DATA3(Carry), .DATA4(Jmp), 
        .DATA5(1'b0), .CONTROL1(N1), .CONTROL2(N2), .CONTROL3(N3), .CONTROL4(
        N4), .CONTROL5(N16), .Z(Take_Branch) );
  GTECH_BUF B_1 ( .A(N53), .Z(N1) );
  GTECH_BUF B_2 ( .A(N51), .Z(N2) );
  GTECH_BUF B_3 ( .A(N48), .Z(N3) );
  GTECH_BUF B_4 ( .A(N41), .Z(N4) );
  SELECT_OP C124 ( .DATA1(N21), .DATA2(1'b0), .CONTROL1(N5), .CONTROL2(N6), 
        .Z(N22) );
  GTECH_BUF B_5 ( .A(N27), .Z(N5) );
  GTECH_BUF B_6 ( .A(N26), .Z(N6) );
  SELECT_OP C125 ( .DATA1(Crnt_Instrn_27), .DATA2(1'b0), .CONTROL1(N5), 
        .CONTROL2(N6), .Z(N23) );
  GTECH_NOT I_12 ( .A(N24), .Z(N25) );
  SELECT_OP C127 ( .DATA1(N23), .DATA2(1'b0), .CONTROL1(N7), .CONTROL2(N8), 
        .Z(Ld_Rtn_Addr) );
  GTECH_BUF B_7 ( .A(N20), .Z(N7) );
  GTECH_BUF B_8 ( .A(N19), .Z(N8) );
  SELECT_OP C128 ( .DATA1(N22), .DATA2(1'b0), .CONTROL1(N7), .CONTROL2(N8), 
        .Z(Ld_Brnch_Addr) );
  SELECT_OP C129 ( .DATA1(N25), .DATA2(1'b0), .CONTROL1(N7), .CONTROL2(N8), 
        .Z(Incrmnt_PC) );
  GTECH_NOT I_13 ( .A(Crnt_Instrn_25), .Z(N9) );
  GTECH_NOT I_14 ( .A(Neg_Flag), .Z(N10) );
  GTECH_NOT I_15 ( .A(Carry_Flag), .Z(N11) );
  GTECH_NOT I_16 ( .A(Zro_Flag), .Z(N12) );
  GTECH_OR2 C141 ( .A(N51), .B(N53), .Z(N13) );
  GTECH_OR2 C142 ( .A(N48), .B(N13), .Z(N14) );
  GTECH_OR2 C143 ( .A(N41), .B(N14), .Z(N15) );
  GTECH_NOT I_17 ( .A(N15), .Z(N16) );
  GTECH_NOT I_18 ( .A(CurrentState[2]), .Z(N17) );
  GTECH_NOT I_19 ( .A(N19), .Z(N20) );
  GTECH_AND2 C151 ( .A(N54), .B(Take_Branch), .Z(N21) );
  GTECH_OR2 C152 ( .A(Crnt_Instrn_29), .B(Crnt_Instrn_28), .Z(N54) );
  GTECH_OR2 C155 ( .A(Ld_Rtn_Addr), .B(Ld_Brnch_Addr), .Z(N24) );
endmodule


module COUNT ( Reset, Clk, Incrmnt_PC, Ld_Brnch_Addr, Ld_Rtn_Addr, Imm_Addr, 
        Return_Addr, PC );
  input [7:0] Imm_Addr;
  input [7:0] Return_Addr;
  output [7:0] PC;
  input Reset, Clk, Incrmnt_PC, Ld_Brnch_Addr, Ld_Rtn_Addr;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30;

  \**SEQGEN**  \PCint_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N22), 
        .clocked_on(Clk), .data_in(1'b0), .enable(1'b0), .Q(PC[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \PCint_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N21), 
        .clocked_on(Clk), .data_in(1'b0), .enable(1'b0), .Q(PC[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \PCint_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N20), 
        .clocked_on(Clk), .data_in(1'b0), .enable(1'b0), .Q(PC[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \PCint_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N19), 
        .clocked_on(Clk), .data_in(1'b0), .enable(1'b0), .Q(PC[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \PCint_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N18), 
        .clocked_on(Clk), .data_in(1'b0), .enable(1'b0), .Q(PC[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \PCint_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N17), 
        .clocked_on(Clk), .data_in(1'b0), .enable(1'b0), .Q(PC[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \PCint_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N16), 
        .clocked_on(Clk), .data_in(1'b0), .enable(1'b0), .Q(PC[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  \**SEQGEN**  \PCint_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N15), 
        .clocked_on(Clk), .data_in(1'b0), .enable(1'b0), .Q(PC[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N14) );
  ADD_UNS_OP add_211 ( .A(PC), .B(1'b1), .Z({N13, N12, N11, N10, N9, N8, N7, 
        N6}) );
  SELECT_OP C50 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b1), .DATA4(1'b1), 
        .DATA5(1'b0), .CONTROL1(N0), .CONTROL2(N24), .CONTROL3(N27), 
        .CONTROL4(N30), .CONTROL5(N4), .Z(N14) );
  GTECH_BUF B_0 ( .A(Reset), .Z(N0) );
  SELECT_OP C51 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA2({N13, N12, N11, N10, N9, N8, N7, N6}), .DATA3(Return_Addr), 
        .DATA4(Imm_Addr), .CONTROL1(N0), .CONTROL2(N24), .CONTROL3(N27), 
        .CONTROL4(N30), .Z({N22, N21, N20, N19, N18, N17, N16, N15}) );
  GTECH_OR2 C58 ( .A(Incrmnt_PC), .B(Reset), .Z(N1) );
  GTECH_OR2 C59 ( .A(Ld_Rtn_Addr), .B(N1), .Z(N2) );
  GTECH_OR2 C60 ( .A(Ld_Brnch_Addr), .B(N2), .Z(N3) );
  GTECH_NOT I_0 ( .A(N3), .Z(N4) );
  GTECH_BUF B_1 ( .A(N24), .Z(N5) );
  GTECH_NOT I_1 ( .A(Reset), .Z(N23) );
  GTECH_AND2 C64 ( .A(Incrmnt_PC), .B(N23), .Z(N24) );
  GTECH_AND2 C65 ( .A(N5), .B(N23) );
  GTECH_NOT I_2 ( .A(Incrmnt_PC), .Z(N25) );
  GTECH_AND2 C67 ( .A(N23), .B(N25), .Z(N26) );
  GTECH_AND2 C68 ( .A(Ld_Rtn_Addr), .B(N26), .Z(N27) );
  GTECH_NOT I_3 ( .A(Ld_Rtn_Addr), .Z(N28) );
  GTECH_AND2 C70 ( .A(N26), .B(N28), .Z(N29) );
  GTECH_AND2 C71 ( .A(Ld_Brnch_Addr), .B(N29), .Z(N30) );
endmodule


module TOP ( Clk, Reset, Crnt_Instrn, Zro_Flag, Carry_Flag, Neg_Flag, 
        Return_Addr, Current_State, PC );
  input [31:0] Crnt_Instrn;
  input [7:0] Return_Addr;
  output [2:0] Current_State;
  output [7:0] PC;
  input Clk, Reset, Zro_Flag, Carry_Flag, Neg_Flag;
  wire   Incrmnt_PC, Ld_Brnch_Addr, Ld_Rtn_Addr;

  FSM I_FSM ( .Clk(Clk), .Reset(Reset), .CurrentState(Current_State) );
  DECODE I_DECODE ( .Zro_Flag(Zro_Flag), .Carry_Flag(Carry_Flag), .Neg_Flag(
        Neg_Flag), .CurrentState(Current_State), .Crnt_Instrn(Crnt_Instrn), 
        .Incrmnt_PC(Incrmnt_PC), .Ld_Brnch_Addr(Ld_Brnch_Addr), .Ld_Rtn_Addr(
        Ld_Rtn_Addr) );
  COUNT I_COUNT ( .Reset(Reset), .Clk(Clk), .Incrmnt_PC(Incrmnt_PC), 
        .Ld_Brnch_Addr(Ld_Brnch_Addr), .Ld_Rtn_Addr(Ld_Rtn_Addr), .Imm_Addr(
        Crnt_Instrn[7:0]), .Return_Addr(Return_Addr), .PC(PC) );
endmodule

