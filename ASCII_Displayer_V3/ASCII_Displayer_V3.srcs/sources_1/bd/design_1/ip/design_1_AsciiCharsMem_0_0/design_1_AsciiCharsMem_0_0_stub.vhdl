-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Dec  8 07:49:08 2021
-- Host        : DESKTOP-O7RVSTA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/arthu/DigitalConceptsLab/Lab5/Hexadecimal_Editor/Hexadecimal_Editor.srcs/sources_1/bd/design_1/ip/design_1_AsciiCharsMem_0_0/design_1_AsciiCharsMem_0_0_stub.vhdl
-- Design      : design_1_AsciiCharsMem_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_AsciiCharsMem_0_0 is
  Port ( 
    iClk : in STD_LOGIC;
    iAddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    oData : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end design_1_AsciiCharsMem_0_0;

architecture stub of design_1_AsciiCharsMem_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "iClk,iAddr[11:0],oData[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "AsciiCharsMem,Vivado 2020.1";
begin
end;
