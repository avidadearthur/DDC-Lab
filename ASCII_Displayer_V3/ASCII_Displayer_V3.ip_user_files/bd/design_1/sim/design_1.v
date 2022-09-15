//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Tue Nov  9 17:45:43 2021
//Host        : len-x1c6 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (iClk,
    iPush,
    iRst,
    oLED);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ICLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ICLK, CLK_DOMAIN design_1_clk_in1_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input iClk;
  input iPush;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.IRST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.IRST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input iRst;
  output oLED;

  wire Debounce_Switch_0_o_Switch;
  wire LED_toggling_FSM_0_oLED;
  wire clk_in1_0_1;
  wire clk_wiz_0_clk_out1;
  wire i_Switch_0_1;
  wire reset_0_1;

  assign clk_in1_0_1 = iClk;
  assign i_Switch_0_1 = iPush;
  assign oLED = LED_toggling_FSM_0_oLED;
  assign reset_0_1 = iRst;
  design_1_Debounce_Switch_0_0 Debounce_Switch_0
       (.i_Clk(clk_wiz_0_clk_out1),
        .i_Switch(i_Switch_0_1),
        .o_Switch(Debounce_Switch_0_o_Switch));
  design_1_LED_toggling_FSM_0_0 LED_toggling_FSM_0
       (.iClk(clk_wiz_0_clk_out1),
        .iPush(Debounce_Switch_0_o_Switch),
        .iRst(reset_0_1),
        .oLED(LED_toggling_FSM_0_oLED));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .clk_out1(clk_wiz_0_clk_out1));
endmodule
