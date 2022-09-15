// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Nov  9 17:46:46 2021
// Host        : len-x1c6 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Teaching/Courses/2021_DDC/Labs/Lab4/Vivado_LED_toggling/Vivado_LED_toggling.srcs/sources_1/bd/design_1/ip/design_1_LED_toggling_FSM_0_0/design_1_LED_toggling_FSM_0_0_sim_netlist.v
// Design      : design_1_LED_toggling_FSM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_LED_toggling_FSM_0_0,LED_toggling_FSM,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "LED_toggling_FSM,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_LED_toggling_FSM_0_0
   (iClk,
    iRst,
    iPush,
    oLED);
  input iClk;
  input iRst;
  input iPush;
  output oLED;

  wire iClk;
  wire iPush;
  wire iRst;
  wire oLED;

  design_1_LED_toggling_FSM_0_0_LED_toggling_FSM inst
       (.iClk(iClk),
        .iPush(iPush),
        .iRst(iRst),
        .oLED(oLED));
endmodule

(* ORIG_REF_NAME = "LED_toggling_FSM" *) 
module design_1_LED_toggling_FSM_0_0_LED_toggling_FSM
   (oLED,
    iRst,
    iClk,
    iPush);
  output oLED;
  input iRst;
  input iClk;
  input iPush;

  wire \FSM_onehot_rFSM_current[1]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_current[2]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_current[3]_i_1_n_0 ;
  wire \FSM_onehot_rFSM_current_reg_n_0_[1] ;
  wire \FSM_onehot_rFSM_current_reg_n_0_[2] ;
  wire \FSM_onehot_rFSM_current_reg_n_0_[3] ;
  wire iClk;
  wire iPush;
  wire iRst;
  wire oLED;
  wire rToggle_current_i_1_n_0;
  wire wToggle_next;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \FSM_onehot_rFSM_current[1]_i_1 
       (.I0(wToggle_next),
        .I1(\FSM_onehot_rFSM_current_reg_n_0_[1] ),
        .I2(iPush),
        .I3(\FSM_onehot_rFSM_current_reg_n_0_[3] ),
        .O(\FSM_onehot_rFSM_current[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
  (* FSM_ENCODED_STATES = "sInit:0001,sIdle:0010,sToggle:1000,sPush:0100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_rFSM_current_reg[0] 
       (.C(iClk),
        .CE(1'b1),
        .D(1'b0),
        .Q(wToggle_next),
        .S(iRst));
  (* FSM_ENCODED_STATES = "sInit:0001,sIdle:0010,sToggle:1000,sPush:0100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_current_reg[1] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_current[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_current_reg_n_0_[1] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sInit:0001,sIdle:0010,sToggle:1000,sPush:0100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_current_reg[2] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_current[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_current_reg_n_0_[2] ),
        .R(iRst));
  (* FSM_ENCODED_STATES = "sInit:0001,sIdle:0010,sToggle:1000,sPush:0100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rFSM_current_reg[3] 
       (.C(iClk),
        .CE(1'b1),
        .D(\FSM_onehot_rFSM_current[3]_i_1_n_0 ),
        .Q(\FSM_onehot_rFSM_current_reg_n_0_[3] ),
        .R(iRst));
  LUT3 #(
    .INIT(8'h06)) 
    rToggle_current_i_1
       (.I0(oLED),
        .I1(\FSM_onehot_rFSM_current_reg_n_0_[3] ),
        .I2(wToggle_next),
        .O(rToggle_current_i_1_n_0));
  FDRE rToggle_current_reg
       (.C(iClk),
        .CE(1'b1),
        .D(rToggle_current_i_1_n_0),
        .Q(oLED),
        .R(1'b0));
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
