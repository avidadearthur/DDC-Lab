// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Dec  8 07:46:23 2021
// Host        : DESKTOP-O7RVSTA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/arthu/DigitalConceptsLab/Lab5/Hexadecimal_Editor/Hexadecimal_Editor.srcs/sources_1/bd/design_1/ip/design_1_ScreenBufferMem_0_0/design_1_ScreenBufferMem_0_0_sim_netlist.v
// Design      : design_1_ScreenBufferMem_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ScreenBufferMem_0_0,ScreenBufferMem,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ScreenBufferMem,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_ScreenBufferMem_0_0
   (iClk,
    iAddrA,
    iAddrB,
    iDataB,
    iWeB,
    oDataA,
    oDataB);
  input iClk;
  input [9:0]iAddrA;
  input [9:0]iAddrB;
  input [11:0]iDataB;
  input iWeB;
  output [11:0]oDataA;
  output [11:0]oDataB;

  wire [9:0]iAddrA;
  wire [9:0]iAddrB;
  wire iClk;
  wire [11:0]iDataB;
  wire iWeB;
  wire [11:0]oDataA;
  wire [11:0]oDataB;

  design_1_ScreenBufferMem_0_0_ScreenBufferMem inst
       (.iAddrA(iAddrA),
        .iAddrB(iAddrB),
        .iClk(iClk),
        .iDataB(iDataB),
        .iWeB(iWeB),
        .oDataA(oDataA),
        .oDataB(oDataB));
endmodule

(* ORIG_REF_NAME = "ScreenBufferMem" *) 
module design_1_ScreenBufferMem_0_0_ScreenBufferMem
   (oDataB,
    oDataA,
    iClk,
    iAddrB,
    iAddrA,
    iDataB,
    iWeB);
  output [11:0]oDataB;
  output [11:0]oDataA;
  input iClk;
  input [9:0]iAddrB;
  input [9:0]iAddrA;
  input [11:0]iDataB;
  input iWeB;

  wire [9:0]iAddrA;
  wire [9:0]iAddrB;
  wire iClk;
  wire [11:0]iDataB;
  wire iWeB;
  wire [11:0]oDataA;
  wire [11:0]oDataB;
  wire [15:12]NLW_rMem_reg_DOADO_UNCONNECTED;
  wire [15:12]NLW_rMem_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_rMem_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_rMem_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d12" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d12" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "7200" *) 
  (* RTL_RAM_NAME = "inst/rMem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "11" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "11" *) 
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
    rMem_reg
       (.ADDRARDADDR({iAddrB,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({iAddrA,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(iClk),
        .CLKBWRCLK(iClk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,iDataB}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({NLW_rMem_reg_DOADO_UNCONNECTED[15:12],oDataB}),
        .DOBDO({NLW_rMem_reg_DOBDO_UNCONNECTED[15:12],oDataA}),
        .DOPADOP(NLW_rMem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_rMem_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({iWeB,iWeB}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
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
