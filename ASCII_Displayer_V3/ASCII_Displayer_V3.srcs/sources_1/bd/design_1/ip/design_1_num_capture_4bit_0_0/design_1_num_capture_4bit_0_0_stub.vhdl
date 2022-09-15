-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Dec 16 18:35:23 2021
-- Host        : XPS-13-9300 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /media/kamranpoladov/db5e1c1b-558e-4f71-be03-2e729f28bda5/KUL/ddc/ASCII_Displayer_V3/ASCII_Displayer_V3.srcs/sources_1/bd/design_1/ip/design_1_num_capture_4bit_0_0/design_1_num_capture_4bit_0_0_stub.vhdl
-- Design      : design_1_num_capture_4bit_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_num_capture_4bit_0_0 is
  Port ( 
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iPush : in STD_LOGIC;
    iPull : in STD_LOGIC;
    iStop : in STD_LOGIC;
    oAddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    oData : out STD_LOGIC_VECTOR ( 11 downto 0 );
    oWe : out STD_LOGIC
  );

end design_1_num_capture_4bit_0_0;

architecture stub of design_1_num_capture_4bit_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "iClk,iRst,iPush,iPull,iStop,oAddr[9:0],oData[11:0],oWe";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "num_capture_4bit,Vivado 2020.1";
begin
end;
