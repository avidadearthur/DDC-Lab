// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Dec  8 07:46:23 2021
// Host        : DESKTOP-O7RVSTA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/arthu/DigitalConceptsLab/Lab5/Hexadecimal_Editor/Hexadecimal_Editor.srcs/sources_1/bd/design_1/ip/design_1_num_capture_4bit_0_0/design_1_num_capture_4bit_0_0_sim_netlist.v
// Design      : design_1_num_capture_4bit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_num_capture_4bit_0_0,num_capture_4bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "num_capture_4bit,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_num_capture_4bit_0_0
   (iClk,
    iRst,
    iPush,
    iStop,
    oAddr,
    oData,
    oWe);
  input iClk;
  input iRst;
  input iPush;
  input iStop;
  output [9:0]oAddr;
  output [11:0]oData;
  output oWe;

  wire \<const0> ;
  wire iClk;
  wire iPush;
  wire iRst;
  wire iStop;
  wire [9:0]oAddr;
  wire [3:0]\^oData ;
  wire oWe;

  assign oData[11] = \<const0> ;
  assign oData[10] = \<const0> ;
  assign oData[9] = \<const0> ;
  assign oData[8] = \<const0> ;
  assign oData[7] = \<const0> ;
  assign oData[6] = \<const0> ;
  assign oData[5] = \<const0> ;
  assign oData[4] = \<const0> ;
  assign oData[3:0] = \^oData [3:0];
  GND GND
       (.G(\<const0> ));
  design_1_num_capture_4bit_0_0_num_capture_4bit inst
       (.iClk(iClk),
        .iPush(iPush),
        .iRst(iRst),
        .iStop(iStop),
        .oAddr(oAddr),
        .oData(\^oData ),
        .oWe(oWe));
endmodule

(* ORIG_REF_NAME = "num_capture_4bit" *) 
module design_1_num_capture_4bit_0_0_num_capture_4bit
   (oWe,
    oData,
    oAddr,
    iRst,
    iClk,
    iStop,
    iPush);
  output oWe;
  output [3:0]oData;
  output [9:0]oAddr;
  input iRst;
  input iClk;
  input iStop;
  input iPush;

  wire \FSM_onehot_rFSM_current[1]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_current[2]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_current[3]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_current[4]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_current[5]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_current_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_current_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_current_reg_n_0_[3] ;
  wire \FSM_onehot_rFSM_current_reg_n_0_[5] ;
  wire iClk;
  wire iPush;
  wire iRst;
  wire iStop;
  wire [9:0]oAddr;
  wire [3:0]oData;
  wire oWe;
  wire [3:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire \rAddr[9]_i_2_n_0 ;
  wire [9:0]rAddr_reg;
  wire rNumberCurr;
  wire [3:0]rNumberCurr_reg;

  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEFE)) 
    \FSM_onehot_rFSM_current[1]_i_1 
       (.I0(\FSM_onehot_rFSM_current_reg_n_0_[3] ),
        .I1(rNumberCurr),
        .I2(\FSM_onehot_rFSM_current_reg_n_0_[1] ),
        .I3(iStop),
        .I4(iPush),
        .I5(\FSM_onehot_rFSM_current_reg_n_0_[5] ),
        .O(\FSM_onehot_rFSM_current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_rFSM_current[2]_i_1 
       (.I0(\FSM_onehot_rFSM_current_reg_n_0_[1] ),
        .I1(iPush),
        .I2(\FSM_onehot_rFSM_current_reg_n_0_[2] ),
        .O(\FSM_onehot_rFSM_current[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rFSM_current[3]_i_1 
       (.I0(\FSM_onehot_rFSM_current_reg_n_0_[2] ),
        .I1(iPush),
        .O(\FSM_onehot_rFSM_current[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF040)) 
    \FSM_onehot_rFSM_current[4]_i_1 
       (.I0(iPush),
        .I1(\FSM_onehot_rFSM_current_reg_n_0_[1] ),
        .I2(iStop),
        .I3(oWe),
        .O(\FSM_onehot_rFSM_current[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_rFSM_current[5]_i_1 
       (.I0(oWe),
        .I1(iStop),
        .O(\FSM_onehot_rFSM_current[5]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sInit:000001,sIdle:000010,sPush:000100,sChange:001000,sData:010000,sAddr:100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rFSM_current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(1'b0),
        .Q(rNumberCurr),
        .S(iRst));
  (* FSM_ENCODED_STATES = "sInit:000001,sIdle:000010,sPush:000100,sChange:001000,sData:010000,sAddr:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_current[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_current_reg_n_0_[1] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sInit:000001,sIdle:000010,sPush:000100,sChange:001000,sData:010000,sAddr:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_current[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_current_reg_n_0_[2] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sInit:000001,sIdle:000010,sPush:000100,sChange:001000,sData:010000,sAddr:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_current[3]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_current_reg_n_0_[3] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sInit:000001,sIdle:000010,sPush:000100,sChange:001000,sData:010000,sAddr:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_current_reg[4] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_current[4]_i_1_n_0 ),
        .Q(oWe),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sInit:000001,sIdle:000010,sPush:000100,sChange:001000,sData:010000,sAddr:100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_current_reg[5] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_current[5]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_current_reg_n_0_[5] ),
        .R(iRst));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oAddr[0]_INST_0 
       (.I0(oWe),
        .I1(rAddr_reg[0]),
        .O(oAddr[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oAddr[1]_INST_0 
       (.I0(oWe),
        .I1(rAddr_reg[1]),
        .O(oAddr[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oAddr[2]_INST_0 
       (.I0(oWe),
        .I1(rAddr_reg[2]),
        .O(oAddr[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oAddr[3]_INST_0 
       (.I0(oWe),
        .I1(rAddr_reg[3]),
        .O(oAddr[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oAddr[4]_INST_0 
       (.I0(oWe),
        .I1(rAddr_reg[4]),
        .O(oAddr[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oAddr[5]_INST_0 
       (.I0(oWe),
        .I1(rAddr_reg[5]),
        .O(oAddr[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oAddr[6]_INST_0 
       (.I0(oWe),
        .I1(rAddr_reg[6]),
        .O(oAddr[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oAddr[7]_INST_0 
       (.I0(oWe),
        .I1(rAddr_reg[7]),
        .O(oAddr[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oAddr[8]_INST_0 
       (.I0(oWe),
        .I1(rAddr_reg[8]),
        .O(oAddr[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \oAddr[9]_INST_0 
       (.I0(oWe),
        .I1(rAddr_reg[9]),
        .O(oAddr[9]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oData[0]_INST_0 
       (.I0(oWe),
        .I1(rNumberCurr_reg[0]),
        .O(oData[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oData[1]_INST_0 
       (.I0(oWe),
        .I1(rNumberCurr_reg[1]),
        .O(oData[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oData[2]_INST_0 
       (.I0(oWe),
        .I1(rNumberCurr_reg[2]),
        .O(oData[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \oData[3]_INST_0 
       (.I0(oWe),
        .I1(rNumberCurr_reg[3]),
        .O(oData[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \rAddr[0]_i_1 
       (.I0(rAddr_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rAddr[1]_i_1 
       (.I0(rAddr_reg[0]),
        .I1(rAddr_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rAddr[2]_i_1 
       (.I0(rAddr_reg[0]),
        .I1(rAddr_reg[1]),
        .I2(rAddr_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rAddr[3]_i_1 
       (.I0(rAddr_reg[1]),
        .I1(rAddr_reg[0]),
        .I2(rAddr_reg[2]),
        .I3(rAddr_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rAddr[4]_i_1 
       (.I0(rAddr_reg[2]),
        .I1(rAddr_reg[0]),
        .I2(rAddr_reg[1]),
        .I3(rAddr_reg[3]),
        .I4(rAddr_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \rAddr[5]_i_1 
       (.I0(rAddr_reg[3]),
        .I1(rAddr_reg[1]),
        .I2(rAddr_reg[0]),
        .I3(rAddr_reg[2]),
        .I4(rAddr_reg[4]),
        .I5(rAddr_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rAddr[6]_i_1 
       (.I0(\rAddr[9]_i_2_n_0 ),
        .I1(rAddr_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rAddr[7]_i_1 
       (.I0(\rAddr[9]_i_2_n_0 ),
        .I1(rAddr_reg[6]),
        .I2(rAddr_reg[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rAddr[8]_i_1 
       (.I0(rAddr_reg[6]),
        .I1(\rAddr[9]_i_2_n_0 ),
        .I2(rAddr_reg[7]),
        .I3(rAddr_reg[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rAddr[9]_i_1 
       (.I0(rAddr_reg[7]),
        .I1(\rAddr[9]_i_2_n_0 ),
        .I2(rAddr_reg[6]),
        .I3(rAddr_reg[8]),
        .I4(rAddr_reg[9]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \rAddr[9]_i_2 
       (.I0(rAddr_reg[5]),
        .I1(rAddr_reg[3]),
        .I2(rAddr_reg[1]),
        .I3(rAddr_reg[0]),
        .I4(rAddr_reg[2]),
        .I5(rAddr_reg[4]),
        .O(\rAddr[9]_i_2_n_0 ));
  FDRE \rAddr_reg[0] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM_current_reg_n_0_[5] ),
        .D(p_0_in__0[0]),
        .Q(rAddr_reg[0]),
        .R(rNumberCurr));
  FDRE \rAddr_reg[1] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM_current_reg_n_0_[5] ),
        .D(p_0_in__0[1]),
        .Q(rAddr_reg[1]),
        .R(rNumberCurr));
  FDRE \rAddr_reg[2] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM_current_reg_n_0_[5] ),
        .D(p_0_in__0[2]),
        .Q(rAddr_reg[2]),
        .R(rNumberCurr));
  FDRE \rAddr_reg[3] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM_current_reg_n_0_[5] ),
        .D(p_0_in__0[3]),
        .Q(rAddr_reg[3]),
        .R(rNumberCurr));
  FDRE \rAddr_reg[4] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM_current_reg_n_0_[5] ),
        .D(p_0_in__0[4]),
        .Q(rAddr_reg[4]),
        .R(rNumberCurr));
  FDRE \rAddr_reg[5] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM_current_reg_n_0_[5] ),
        .D(p_0_in__0[5]),
        .Q(rAddr_reg[5]),
        .R(rNumberCurr));
  FDRE \rAddr_reg[6] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM_current_reg_n_0_[5] ),
        .D(p_0_in__0[6]),
        .Q(rAddr_reg[6]),
        .R(rNumberCurr));
  FDRE \rAddr_reg[7] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM_current_reg_n_0_[5] ),
        .D(p_0_in__0[7]),
        .Q(rAddr_reg[7]),
        .R(rNumberCurr));
  FDRE \rAddr_reg[8] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM_current_reg_n_0_[5] ),
        .D(p_0_in__0[8]),
        .Q(rAddr_reg[8]),
        .R(rNumberCurr));
  FDRE \rAddr_reg[9] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM_current_reg_n_0_[5] ),
        .D(p_0_in__0[9]),
        .Q(rAddr_reg[9]),
        .R(rNumberCurr));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rNumberCurr[0]_i_1 
       (.I0(rNumberCurr_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rNumberCurr[1]_i_1 
       (.I0(rNumberCurr_reg[0]),
        .I1(rNumberCurr_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rNumberCurr[2]_i_1 
       (.I0(rNumberCurr_reg[0]),
        .I1(rNumberCurr_reg[1]),
        .I2(rNumberCurr_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rNumberCurr[3]_i_1 
       (.I0(rNumberCurr_reg[1]),
        .I1(rNumberCurr_reg[0]),
        .I2(rNumberCurr_reg[2]),
        .I3(rNumberCurr_reg[3]),
        .O(p_0_in[3]));
  FDRE \rNumberCurr_reg[0] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM_current_reg_n_0_[3] ),
        .D(p_0_in[0]),
        .Q(rNumberCurr_reg[0]),
        .R(rNumberCurr));
  FDRE \rNumberCurr_reg[1] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM_current_reg_n_0_[3] ),
        .D(p_0_in[1]),
        .Q(rNumberCurr_reg[1]),
        .R(rNumberCurr));
  FDRE \rNumberCurr_reg[2] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM_current_reg_n_0_[3] ),
        .D(p_0_in[2]),
        .Q(rNumberCurr_reg[2]),
        .R(rNumberCurr));
  FDRE \rNumberCurr_reg[3] 
       (.C(iClk),
        .CE(\FSM_onehot_rFSM_current_reg_n_0_[3] ),
        .D(p_0_in[3]),
        .Q(rNumberCurr_reg[3]),
        .R(rNumberCurr));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
