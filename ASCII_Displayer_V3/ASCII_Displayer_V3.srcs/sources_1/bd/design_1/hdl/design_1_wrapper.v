//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Thu Dec 16 19:06:04 2021
//Host        : XPS-13-9300 running 64-bit Ubuntu 20.04.3 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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
  input iClk;
  input iColor;
  input iPull;
  input iPush;
  input iRst;
  input iStop;
  output [3:0]oBlue;
  output [3:0]oGreen;
  output oHS;
  output [3:0]oRed;
  output oVS;

  wire iClk;
  wire iColor;
  wire iPull;
  wire iPush;
  wire iRst;
  wire iStop;
  wire [3:0]oBlue;
  wire [3:0]oGreen;
  wire oHS;
  wire [3:0]oRed;
  wire oVS;

  design_1 design_1_i
       (.iClk(iClk),
        .iColor(iColor),
        .iPull(iPull),
        .iPush(iPush),
        .iRst(iRst),
        .iStop(iStop),
        .oBlue(oBlue),
        .oGreen(oGreen),
        .oHS(oHS),
        .oRed(oRed),
        .oVS(oVS));
endmodule
