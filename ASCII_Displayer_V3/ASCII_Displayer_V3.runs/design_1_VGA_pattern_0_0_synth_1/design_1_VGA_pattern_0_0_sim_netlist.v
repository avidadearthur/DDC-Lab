// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Thu Dec 16 19:07:03 2021
// Host        : XPS-13-9300 running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_VGA_pattern_0_0_sim_netlist.v
// Design      : design_1_VGA_pattern_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_pattern
   (oAddrA,
    oAddrA20,
    iCountH,
    iCountV,
    S,
    iDataA);
  output [7:0]oAddrA;
  output [11:0]oAddrA20;
  input [3:0]iCountH;
  input [7:0]iCountV;
  input [3:0]S;
  input [11:0]iDataA;

  wire [3:0]S;
  wire [3:0]iCountH;
  wire [7:0]iCountV;
  wire [11:0]iDataA;
  wire [7:0]oAddrA;
  wire [11:0]oAddrA20;
  wire \oAddrA2[11]_INST_0_i_1_n_1 ;
  wire \oAddrA2[11]_INST_0_i_1_n_2 ;
  wire \oAddrA2[11]_INST_0_i_1_n_3 ;
  wire \oAddrA2[3]_INST_0_i_1_n_0 ;
  wire \oAddrA2[3]_INST_0_i_1_n_1 ;
  wire \oAddrA2[3]_INST_0_i_1_n_2 ;
  wire \oAddrA2[3]_INST_0_i_1_n_3 ;
  wire \oAddrA2[3]_INST_0_i_2_n_0 ;
  wire \oAddrA2[3]_INST_0_i_3_n_0 ;
  wire \oAddrA2[3]_INST_0_i_4_n_0 ;
  wire \oAddrA2[3]_INST_0_i_5_n_0 ;
  wire \oAddrA2[7]_INST_0_i_1_n_0 ;
  wire \oAddrA2[7]_INST_0_i_1_n_1 ;
  wire \oAddrA2[7]_INST_0_i_1_n_2 ;
  wire \oAddrA2[7]_INST_0_i_1_n_3 ;
  wire \oAddrA2[7]_INST_0_i_2_n_0 ;
  wire \oAddrA[2]_INST_0_i_1_n_0 ;
  wire \oAddrA[2]_INST_0_i_2_n_0 ;
  wire \oAddrA[2]_INST_0_i_3_n_0 ;
  wire \oAddrA[2]_INST_0_n_0 ;
  wire \oAddrA[2]_INST_0_n_1 ;
  wire \oAddrA[2]_INST_0_n_2 ;
  wire \oAddrA[2]_INST_0_n_3 ;
  wire \oAddrA[6]_INST_0_n_1 ;
  wire \oAddrA[6]_INST_0_n_2 ;
  wire \oAddrA[6]_INST_0_n_3 ;
  wire [3:3]\NLW_oAddrA2[11]_INST_0_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_oAddrA[6]_INST_0_CO_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \oAddrA2[11]_INST_0_i_1 
       (.CI(\oAddrA2[7]_INST_0_i_1_n_0 ),
        .CO({\NLW_oAddrA2[11]_INST_0_i_1_CO_UNCONNECTED [3],\oAddrA2[11]_INST_0_i_1_n_1 ,\oAddrA2[11]_INST_0_i_1_n_2 ,\oAddrA2[11]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(oAddrA20[11:8]),
        .S(iDataA[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \oAddrA2[3]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\oAddrA2[3]_INST_0_i_1_n_0 ,\oAddrA2[3]_INST_0_i_1_n_1 ,\oAddrA2[3]_INST_0_i_1_n_2 ,\oAddrA2[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(iDataA[3:0]),
        .O(oAddrA20[3:0]),
        .S({\oAddrA2[3]_INST_0_i_2_n_0 ,\oAddrA2[3]_INST_0_i_3_n_0 ,\oAddrA2[3]_INST_0_i_4_n_0 ,\oAddrA2[3]_INST_0_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \oAddrA2[3]_INST_0_i_2 
       (.I0(iDataA[3]),
        .I1(iCountV[3]),
        .O(\oAddrA2[3]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oAddrA2[3]_INST_0_i_3 
       (.I0(iDataA[2]),
        .I1(iCountV[2]),
        .O(\oAddrA2[3]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oAddrA2[3]_INST_0_i_4 
       (.I0(iDataA[1]),
        .I1(iCountV[1]),
        .O(\oAddrA2[3]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oAddrA2[3]_INST_0_i_5 
       (.I0(iDataA[0]),
        .I1(iCountV[0]),
        .O(\oAddrA2[3]_INST_0_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \oAddrA2[7]_INST_0_i_1 
       (.CI(\oAddrA2[3]_INST_0_i_1_n_0 ),
        .CO({\oAddrA2[7]_INST_0_i_1_n_0 ,\oAddrA2[7]_INST_0_i_1_n_1 ,\oAddrA2[7]_INST_0_i_1_n_2 ,\oAddrA2[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,iDataA[4]}),
        .O(oAddrA20[7:4]),
        .S({iDataA[7:5],\oAddrA2[7]_INST_0_i_2_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \oAddrA2[7]_INST_0_i_2 
       (.I0(iDataA[4]),
        .I1(iCountV[4]),
        .O(\oAddrA2[7]_INST_0_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \oAddrA[2]_INST_0 
       (.CI(1'b0),
        .CO({\oAddrA[2]_INST_0_n_0 ,\oAddrA[2]_INST_0_n_1 ,\oAddrA[2]_INST_0_n_2 ,\oAddrA[2]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({iCountH[3],iCountV[6:5],1'b0}),
        .O(oAddrA[3:0]),
        .S({\oAddrA[2]_INST_0_i_1_n_0 ,\oAddrA[2]_INST_0_i_2_n_0 ,\oAddrA[2]_INST_0_i_3_n_0 ,iCountH[0]}));
  LUT3 #(
    .INIT(8'h96)) 
    \oAddrA[2]_INST_0_i_1 
       (.I0(iCountV[5]),
        .I1(iCountV[7]),
        .I2(iCountH[3]),
        .O(\oAddrA[2]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oAddrA[2]_INST_0_i_2 
       (.I0(iCountV[6]),
        .I1(iCountH[2]),
        .O(\oAddrA[2]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \oAddrA[2]_INST_0_i_3 
       (.I0(iCountV[5]),
        .I1(iCountH[1]),
        .O(\oAddrA[2]_INST_0_i_3_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \oAddrA[6]_INST_0 
       (.CI(\oAddrA[2]_INST_0_n_0 ),
        .CO({\NLW_oAddrA[6]_INST_0_CO_UNCONNECTED [3],\oAddrA[6]_INST_0_n_1 ,\oAddrA[6]_INST_0_n_2 ,\oAddrA[6]_INST_0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(oAddrA[7:4]),
        .S(S));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_VGA_pattern_0_0,VGA_pattern,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "VGA_pattern,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (iClk,
    iRst,
    iDataA,
    iDataA2,
    iCountH,
    iCountV,
    iHS,
    iVS,
    iColor,
    oHS,
    oVS,
    oRed,
    oGreen,
    oBlue,
    oAddrA,
    oAddrA2);
  input iClk;
  input iRst;
  input [11:0]iDataA;
  input [15:0]iDataA2;
  input [9:0]iCountH;
  input [9:0]iCountV;
  input iHS;
  input iVS;
  input iColor;
  output oHS;
  output oVS;
  output [3:0]oRed;
  output [3:0]oGreen;
  output [3:0]oBlue;
  output [9:0]oAddrA;
  output [11:0]oAddrA2;

  wire \<const0> ;
  wire iColor;
  wire [9:0]iCountH;
  wire [9:0]iCountV;
  wire [11:0]iDataA;
  wire [15:0]iDataA2;
  wire iHS;
  wire iVS;
  wire [9:2]\^oAddrA ;
  wire [9:6]oAddrA0;
  wire [11:0]oAddrA2;
  wire [11:0]oAddrA20;
  wire [3:3]\^oBlue ;
  wire [3:3]\^oGreen ;
  wire \oGreen[0]_INST_0_i_10_n_0 ;
  wire \oGreen[0]_INST_0_i_11_n_0 ;
  wire \oGreen[0]_INST_0_i_1_n_0 ;
  wire \oGreen[0]_INST_0_i_2_n_0 ;
  wire \oGreen[0]_INST_0_i_3_n_0 ;
  wire \oGreen[0]_INST_0_i_4_n_0 ;
  wire \oGreen[0]_INST_0_i_5_n_0 ;
  wire \oGreen[0]_INST_0_i_6_n_0 ;
  wire \oGreen[0]_INST_0_i_7_n_0 ;
  wire \oGreen[0]_INST_0_i_8_n_0 ;
  wire \oGreen[0]_INST_0_i_9_n_0 ;

  assign oAddrA[9:2] = \^oAddrA [9:2];
  assign oAddrA[1:0] = iCountH[5:4];
  assign oBlue[3] = \^oBlue [3];
  assign oBlue[2] = \^oBlue [3];
  assign oBlue[1] = \^oBlue [3];
  assign oBlue[0] = \^oBlue [3];
  assign oGreen[3] = \^oGreen [3];
  assign oGreen[2] = \^oGreen [3];
  assign oGreen[1] = \^oGreen [3];
  assign oGreen[0] = \^oGreen [3];
  assign oHS = iHS;
  assign oRed[3] = \<const0> ;
  assign oRed[2] = \<const0> ;
  assign oRed[1] = \<const0> ;
  assign oRed[0] = \<const0> ;
  assign oVS = iVS;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_VGA_pattern inst
       (.S(oAddrA0),
        .iCountH(iCountH[9:6]),
        .iCountV(iCountV[7:0]),
        .iDataA(iDataA),
        .oAddrA(\^oAddrA ),
        .oAddrA20(oAddrA20));
  LUT3 #(
    .INIT(8'h80)) 
    \oAddrA2[0]_INST_0 
       (.I0(\oGreen[0]_INST_0_i_2_n_0 ),
        .I1(\oGreen[0]_INST_0_i_1_n_0 ),
        .I2(oAddrA20[0]),
        .O(oAddrA2[0]));
  LUT3 #(
    .INIT(8'h80)) 
    \oAddrA2[10]_INST_0 
       (.I0(\oGreen[0]_INST_0_i_2_n_0 ),
        .I1(\oGreen[0]_INST_0_i_1_n_0 ),
        .I2(oAddrA20[10]),
        .O(oAddrA2[10]));
  LUT3 #(
    .INIT(8'h80)) 
    \oAddrA2[11]_INST_0 
       (.I0(\oGreen[0]_INST_0_i_2_n_0 ),
        .I1(\oGreen[0]_INST_0_i_1_n_0 ),
        .I2(oAddrA20[11]),
        .O(oAddrA2[11]));
  LUT3 #(
    .INIT(8'h80)) 
    \oAddrA2[1]_INST_0 
       (.I0(\oGreen[0]_INST_0_i_2_n_0 ),
        .I1(\oGreen[0]_INST_0_i_1_n_0 ),
        .I2(oAddrA20[1]),
        .O(oAddrA2[1]));
  LUT3 #(
    .INIT(8'h80)) 
    \oAddrA2[2]_INST_0 
       (.I0(\oGreen[0]_INST_0_i_2_n_0 ),
        .I1(\oGreen[0]_INST_0_i_1_n_0 ),
        .I2(oAddrA20[2]),
        .O(oAddrA2[2]));
  LUT3 #(
    .INIT(8'h80)) 
    \oAddrA2[3]_INST_0 
       (.I0(\oGreen[0]_INST_0_i_2_n_0 ),
        .I1(\oGreen[0]_INST_0_i_1_n_0 ),
        .I2(oAddrA20[3]),
        .O(oAddrA2[3]));
  LUT3 #(
    .INIT(8'h80)) 
    \oAddrA2[4]_INST_0 
       (.I0(\oGreen[0]_INST_0_i_2_n_0 ),
        .I1(\oGreen[0]_INST_0_i_1_n_0 ),
        .I2(oAddrA20[4]),
        .O(oAddrA2[4]));
  LUT3 #(
    .INIT(8'h80)) 
    \oAddrA2[5]_INST_0 
       (.I0(\oGreen[0]_INST_0_i_2_n_0 ),
        .I1(\oGreen[0]_INST_0_i_1_n_0 ),
        .I2(oAddrA20[5]),
        .O(oAddrA2[5]));
  LUT3 #(
    .INIT(8'h80)) 
    \oAddrA2[6]_INST_0 
       (.I0(\oGreen[0]_INST_0_i_2_n_0 ),
        .I1(\oGreen[0]_INST_0_i_1_n_0 ),
        .I2(oAddrA20[6]),
        .O(oAddrA2[6]));
  LUT3 #(
    .INIT(8'h80)) 
    \oAddrA2[7]_INST_0 
       (.I0(\oGreen[0]_INST_0_i_2_n_0 ),
        .I1(\oGreen[0]_INST_0_i_1_n_0 ),
        .I2(oAddrA20[7]),
        .O(oAddrA2[7]));
  LUT3 #(
    .INIT(8'h80)) 
    \oAddrA2[8]_INST_0 
       (.I0(\oGreen[0]_INST_0_i_2_n_0 ),
        .I1(\oGreen[0]_INST_0_i_1_n_0 ),
        .I2(oAddrA20[8]),
        .O(oAddrA2[8]));
  LUT3 #(
    .INIT(8'h80)) 
    \oAddrA2[9]_INST_0 
       (.I0(\oGreen[0]_INST_0_i_2_n_0 ),
        .I1(\oGreen[0]_INST_0_i_1_n_0 ),
        .I2(oAddrA20[9]),
        .O(oAddrA2[9]));
  LUT5 #(
    .INIT(32'h0F5FA080)) 
    \oAddrA[6]_INST_0_i_1 
       (.I0(iCountV[7]),
        .I1(iCountV[5]),
        .I2(iCountV[8]),
        .I3(iCountV[6]),
        .I4(iCountV[9]),
        .O(oAddrA0[9]));
  LUT5 #(
    .INIT(32'h015FF800)) 
    \oAddrA[6]_INST_0_i_2 
       (.I0(iCountV[6]),
        .I1(iCountV[5]),
        .I2(iCountV[9]),
        .I3(iCountV[7]),
        .I4(iCountV[8]),
        .O(oAddrA0[8]));
  LUT5 #(
    .INIT(32'hE83F17C0)) 
    \oAddrA[6]_INST_0_i_3 
       (.I0(iCountV[5]),
        .I1(iCountV[8]),
        .I2(iCountV[6]),
        .I3(iCountV[7]),
        .I4(iCountV[9]),
        .O(oAddrA0[7]));
  LUT4 #(
    .INIT(16'h8778)) 
    \oAddrA[6]_INST_0_i_4 
       (.I0(iCountV[7]),
        .I1(iCountV[5]),
        .I2(iCountV[6]),
        .I3(iCountV[8]),
        .O(oAddrA0[6]));
  LUT4 #(
    .INIT(16'h8000)) 
    \oBlue[0]_INST_0 
       (.I0(iColor),
        .I1(\oGreen[0]_INST_0_i_1_n_0 ),
        .I2(\oGreen[0]_INST_0_i_2_n_0 ),
        .I3(\oGreen[0]_INST_0_i_3_n_0 ),
        .O(\^oBlue ));
  LUT4 #(
    .INIT(16'h4000)) 
    \oGreen[0]_INST_0 
       (.I0(iColor),
        .I1(\oGreen[0]_INST_0_i_1_n_0 ),
        .I2(\oGreen[0]_INST_0_i_2_n_0 ),
        .I3(\oGreen[0]_INST_0_i_3_n_0 ),
        .O(\^oGreen ));
  LUT5 #(
    .INIT(32'h0155FFFF)) 
    \oGreen[0]_INST_0_i_1 
       (.I0(iCountH[8]),
        .I1(iCountH[0]),
        .I2(\oGreen[0]_INST_0_i_4_n_0 ),
        .I3(iCountH[7]),
        .I4(iCountH[9]),
        .O(\oGreen[0]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \oGreen[0]_INST_0_i_10 
       (.I0(iCountH[1]),
        .I1(iCountH[0]),
        .I2(iCountH[2]),
        .O(\oGreen[0]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    \oGreen[0]_INST_0_i_11 
       (.I0(iDataA2[12]),
        .I1(iDataA2[11]),
        .I2(iCountH[0]),
        .I3(iCountH[1]),
        .I4(iDataA2[14]),
        .I5(iDataA2[13]),
        .O(\oGreen[0]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF7FFF)) 
    \oGreen[0]_INST_0_i_2 
       (.I0(iCountV[6]),
        .I1(iCountV[5]),
        .I2(iCountV[8]),
        .I3(iCountV[7]),
        .I4(\oGreen[0]_INST_0_i_5_n_0 ),
        .I5(iCountV[9]),
        .O(\oGreen[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \oGreen[0]_INST_0_i_3 
       (.I0(\oGreen[0]_INST_0_i_6_n_0 ),
        .I1(\oGreen[0]_INST_0_i_7_n_0 ),
        .I2(\oGreen[0]_INST_0_i_8_n_0 ),
        .I3(\oGreen[0]_INST_0_i_9_n_0 ),
        .I4(\oGreen[0]_INST_0_i_10_n_0 ),
        .I5(\oGreen[0]_INST_0_i_11_n_0 ),
        .O(\oGreen[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \oGreen[0]_INST_0_i_4 
       (.I0(iCountH[2]),
        .I1(iCountH[1]),
        .I2(iCountH[5]),
        .I3(iCountH[6]),
        .I4(iCountH[3]),
        .I5(iCountH[4]),
        .O(\oGreen[0]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \oGreen[0]_INST_0_i_5 
       (.I0(iCountV[3]),
        .I1(iCountV[4]),
        .I2(iCountV[1]),
        .I3(iCountV[2]),
        .I4(iCountV[0]),
        .O(\oGreen[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    \oGreen[0]_INST_0_i_6 
       (.I0(iDataA2[0]),
        .I1(iDataA2[15]),
        .I2(iCountH[0]),
        .I3(iCountH[1]),
        .I4(iDataA2[2]),
        .I5(iDataA2[1]),
        .O(\oGreen[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    \oGreen[0]_INST_0_i_7 
       (.I0(iDataA2[4]),
        .I1(iDataA2[3]),
        .I2(iCountH[0]),
        .I3(iCountH[1]),
        .I4(iDataA2[6]),
        .I5(iDataA2[5]),
        .O(\oGreen[0]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \oGreen[0]_INST_0_i_8 
       (.I0(iCountH[2]),
        .I1(iCountH[0]),
        .I2(iCountH[1]),
        .I3(iCountH[3]),
        .O(\oGreen[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFFCAF0CA0FCA00C)) 
    \oGreen[0]_INST_0_i_9 
       (.I0(iDataA2[8]),
        .I1(iDataA2[7]),
        .I2(iCountH[0]),
        .I3(iCountH[1]),
        .I4(iDataA2[10]),
        .I5(iDataA2[9]),
        .O(\oGreen[0]_INST_0_i_9_n_0 ));
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
