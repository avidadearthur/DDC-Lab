// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Dec 16 18:35:22 2021
// Host        : XPS-13-9300 running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_num_capture_4bit_0_0_stub.v
// Design      : design_1_num_capture_4bit_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "num_capture_4bit,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(iClk, iRst, iPush, iPull, iStop, oAddr, oData, oWe)
/* synthesis syn_black_box black_box_pad_pin="iClk,iRst,iPush,iPull,iStop,oAddr[9:0],oData[11:0],oWe" */;
  input iClk;
  input iRst;
  input iPush;
  input iPull;
  input iStop;
  output [9:0]oAddr;
  output [11:0]oData;
  output oWe;
endmodule
