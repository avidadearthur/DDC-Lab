//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Thu Dec 16 19:06:03 2021
//Host        : XPS-13-9300 running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (iClk,
    iColor,
    iPull,
    iPush,
    iRst,
    iStop,
    oBlue,
    oGreen,
    oHS,
    oRed,
    oVS);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ICLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ICLK, CLK_DOMAIN design_1_iClk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input iClk;
  input iColor;
  input iPull;
  input iPush;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.IRST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.IRST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input iRst;
  input iStop;
  output [3:0]oBlue;
  output [3:0]oGreen;
  output oHS;
  output [3:0]oRed;
  output oVS;

  wire [15:0]AsciiCharsMem_0_oData;
  wire Debounce_Switch_0_o_Switch;
  wire Debounce_Switch_1_o_Switch;
  wire [11:0]ScreenBufferMem_0_oDataA;
  wire [9:0]VGA_pattern_0_oAddrA;
  wire [11:0]VGA_pattern_0_oAddrA2;
  wire [3:0]VGA_pattern_0_oBlue;
  wire [3:0]VGA_pattern_0_oGreen;
  wire VGA_pattern_0_oHS;
  wire [3:0]VGA_pattern_0_oRed;
  wire VGA_pattern_0_oVS;
  wire [9:0]VGA_timings_0_oCountH;
  wire [9:0]VGA_timings_0_oCountV;
  wire VGA_timings_0_oHS;
  wire VGA_timings_0_oVS;
  wire clk_wiz_0_clk_out1;
  wire iClk_1;
  wire iColor_0_1;
  wire iPull_0_1;
  wire iRst_1;
  wire i_Switch_0_1;
  wire i_Switch_0_2;
  wire [9:0]num_capture_4bit_0_oAddr;
  wire [11:0]num_capture_4bit_0_oData;
  wire num_capture_4bit_0_oWe;

  assign iClk_1 = iClk;
  assign iColor_0_1 = iColor;
  assign iPull_0_1 = iPull;
  assign iRst_1 = iRst;
  assign i_Switch_0_1 = iPush;
  assign i_Switch_0_2 = iStop;
  assign oBlue[3:0] = VGA_pattern_0_oBlue;
  assign oGreen[3:0] = VGA_pattern_0_oGreen;
  assign oHS = VGA_pattern_0_oHS;
  assign oRed[3:0] = VGA_pattern_0_oRed;
  assign oVS = VGA_pattern_0_oVS;
  design_1_AsciiCharsMem_0_0 AsciiCharsMem_0
       (.iAddr(VGA_pattern_0_oAddrA2),
        .iClk(clk_wiz_0_clk_out1),
        .oData(AsciiCharsMem_0_oData));
  design_1_Debounce_Switch_0_0 Debounce_Switch_0
       (.i_Clk(iClk_1),
        .i_Switch(i_Switch_0_1),
        .o_Switch(Debounce_Switch_0_o_Switch));
  design_1_Debounce_Switch_1_0 Debounce_Switch_1
       (.i_Clk(iClk_1),
        .i_Switch(i_Switch_0_2),
        .o_Switch(Debounce_Switch_1_o_Switch));
  design_1_ScreenBufferMem_0_0 ScreenBufferMem_0
       (.iAddrA(VGA_pattern_0_oAddrA),
        .iAddrB(num_capture_4bit_0_oAddr),
        .iClk(clk_wiz_0_clk_out1),
        .iDataB(num_capture_4bit_0_oData),
        .iRst(iRst_1),
        .iWeB(num_capture_4bit_0_oWe),
        .oDataA(ScreenBufferMem_0_oDataA));
  design_1_VGA_pattern_0_0 VGA_pattern_0
       (.iClk(clk_wiz_0_clk_out1),
        .iColor(iColor_0_1),
        .iCountH(VGA_timings_0_oCountH),
        .iCountV(VGA_timings_0_oCountV),
        .iDataA(ScreenBufferMem_0_oDataA),
        .iDataA2(AsciiCharsMem_0_oData),
        .iHS(VGA_timings_0_oHS),
        .iRst(iRst_1),
        .iVS(VGA_timings_0_oVS),
        .oAddrA(VGA_pattern_0_oAddrA),
        .oAddrA2(VGA_pattern_0_oAddrA2),
        .oBlue(VGA_pattern_0_oBlue),
        .oGreen(VGA_pattern_0_oGreen),
        .oHS(VGA_pattern_0_oHS),
        .oRed(VGA_pattern_0_oRed),
        .oVS(VGA_pattern_0_oVS));
  design_1_VGA_timings_0_0 VGA_timings_0
       (.iClk(clk_wiz_0_clk_out1),
        .iRst(iRst_1),
        .oCountH(VGA_timings_0_oCountH),
        .oCountV(VGA_timings_0_oCountV),
        .oHS(VGA_timings_0_oHS),
        .oVS(VGA_timings_0_oVS));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(iClk_1),
        .clk_out1(clk_wiz_0_clk_out1));
  design_1_num_capture_4bit_0_0 num_capture_4bit_0
       (.iClk(clk_wiz_0_clk_out1),
        .iPull(iPull_0_1),
        .iPush(Debounce_Switch_0_o_Switch),
        .iRst(iRst_1),
        .iStop(Debounce_Switch_1_o_Switch),
        .oAddr(num_capture_4bit_0_oAddr),
        .oData(num_capture_4bit_0_oData),
        .oWe(num_capture_4bit_0_oWe));
endmodule
