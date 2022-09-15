-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Dec 16 19:07:03 2021
-- Host        : XPS-13-9300 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/kamranpoladov/db5e1c1b-558e-4f71-be03-2e729f28bda5/KUL/ddc/ASCII_Displayer_V3/ASCII_Displayer_V3.srcs/sources_1/bd/design_1/ip/design_1_VGA_pattern_0_0/design_1_VGA_pattern_0_0_sim_netlist.vhdl
-- Design      : design_1_VGA_pattern_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_VGA_pattern_0_0_VGA_pattern is
  port (
    oAddrA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    oAddrA20 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    iCountH : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iCountV : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    iDataA : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_VGA_pattern_0_0_VGA_pattern : entity is "VGA_pattern";
end design_1_VGA_pattern_0_0_VGA_pattern;

architecture STRUCTURE of design_1_VGA_pattern_0_0_VGA_pattern is
  signal \oAddrA2[11]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \oAddrA2[11]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \oAddrA2[11]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \oAddrA2[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oAddrA2[3]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \oAddrA2[3]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \oAddrA2[3]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \oAddrA2[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oAddrA2[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \oAddrA2[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \oAddrA2[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \oAddrA2[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oAddrA2[7]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \oAddrA2[7]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \oAddrA2[7]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \oAddrA2[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oAddrA[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oAddrA[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oAddrA[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \oAddrA[2]_INST_0_n_0\ : STD_LOGIC;
  signal \oAddrA[2]_INST_0_n_1\ : STD_LOGIC;
  signal \oAddrA[2]_INST_0_n_2\ : STD_LOGIC;
  signal \oAddrA[2]_INST_0_n_3\ : STD_LOGIC;
  signal \oAddrA[6]_INST_0_n_1\ : STD_LOGIC;
  signal \oAddrA[6]_INST_0_n_2\ : STD_LOGIC;
  signal \oAddrA[6]_INST_0_n_3\ : STD_LOGIC;
  signal \NLW_oAddrA2[11]_INST_0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_oAddrA[6]_INST_0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \oAddrA2[11]_INST_0_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \oAddrA2[3]_INST_0_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \oAddrA2[7]_INST_0_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \oAddrA[2]_INST_0\ : label is 35;
  attribute ADDER_THRESHOLD of \oAddrA[6]_INST_0\ : label is 35;
begin
\oAddrA2[11]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \oAddrA2[7]_INST_0_i_1_n_0\,
      CO(3) => \NLW_oAddrA2[11]_INST_0_i_1_CO_UNCONNECTED\(3),
      CO(2) => \oAddrA2[11]_INST_0_i_1_n_1\,
      CO(1) => \oAddrA2[11]_INST_0_i_1_n_2\,
      CO(0) => \oAddrA2[11]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => oAddrA20(11 downto 8),
      S(3 downto 0) => iDataA(11 downto 8)
    );
\oAddrA2[3]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \oAddrA2[3]_INST_0_i_1_n_0\,
      CO(2) => \oAddrA2[3]_INST_0_i_1_n_1\,
      CO(1) => \oAddrA2[3]_INST_0_i_1_n_2\,
      CO(0) => \oAddrA2[3]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => iDataA(3 downto 0),
      O(3 downto 0) => oAddrA20(3 downto 0),
      S(3) => \oAddrA2[3]_INST_0_i_2_n_0\,
      S(2) => \oAddrA2[3]_INST_0_i_3_n_0\,
      S(1) => \oAddrA2[3]_INST_0_i_4_n_0\,
      S(0) => \oAddrA2[3]_INST_0_i_5_n_0\
    );
\oAddrA2[3]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iDataA(3),
      I1 => iCountV(3),
      O => \oAddrA2[3]_INST_0_i_2_n_0\
    );
\oAddrA2[3]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iDataA(2),
      I1 => iCountV(2),
      O => \oAddrA2[3]_INST_0_i_3_n_0\
    );
\oAddrA2[3]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iDataA(1),
      I1 => iCountV(1),
      O => \oAddrA2[3]_INST_0_i_4_n_0\
    );
\oAddrA2[3]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iDataA(0),
      I1 => iCountV(0),
      O => \oAddrA2[3]_INST_0_i_5_n_0\
    );
\oAddrA2[7]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \oAddrA2[3]_INST_0_i_1_n_0\,
      CO(3) => \oAddrA2[7]_INST_0_i_1_n_0\,
      CO(2) => \oAddrA2[7]_INST_0_i_1_n_1\,
      CO(1) => \oAddrA2[7]_INST_0_i_1_n_2\,
      CO(0) => \oAddrA2[7]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => iDataA(4),
      O(3 downto 0) => oAddrA20(7 downto 4),
      S(3 downto 1) => iDataA(7 downto 5),
      S(0) => \oAddrA2[7]_INST_0_i_2_n_0\
    );
\oAddrA2[7]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iDataA(4),
      I1 => iCountV(4),
      O => \oAddrA2[7]_INST_0_i_2_n_0\
    );
\oAddrA[2]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \oAddrA[2]_INST_0_n_0\,
      CO(2) => \oAddrA[2]_INST_0_n_1\,
      CO(1) => \oAddrA[2]_INST_0_n_2\,
      CO(0) => \oAddrA[2]_INST_0_n_3\,
      CYINIT => '0',
      DI(3) => iCountH(3),
      DI(2 downto 1) => iCountV(6 downto 5),
      DI(0) => '0',
      O(3 downto 0) => oAddrA(3 downto 0),
      S(3) => \oAddrA[2]_INST_0_i_1_n_0\,
      S(2) => \oAddrA[2]_INST_0_i_2_n_0\,
      S(1) => \oAddrA[2]_INST_0_i_3_n_0\,
      S(0) => iCountH(0)
    );
\oAddrA[2]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => iCountV(5),
      I1 => iCountV(7),
      I2 => iCountH(3),
      O => \oAddrA[2]_INST_0_i_1_n_0\
    );
\oAddrA[2]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iCountV(6),
      I1 => iCountH(2),
      O => \oAddrA[2]_INST_0_i_2_n_0\
    );
\oAddrA[2]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => iCountV(5),
      I1 => iCountH(1),
      O => \oAddrA[2]_INST_0_i_3_n_0\
    );
\oAddrA[6]_INST_0\: unisim.vcomponents.CARRY4
     port map (
      CI => \oAddrA[2]_INST_0_n_0\,
      CO(3) => \NLW_oAddrA[6]_INST_0_CO_UNCONNECTED\(3),
      CO(2) => \oAddrA[6]_INST_0_n_1\,
      CO(1) => \oAddrA[6]_INST_0_n_2\,
      CO(0) => \oAddrA[6]_INST_0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => oAddrA(7 downto 4),
      S(3 downto 0) => S(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_VGA_pattern_0_0 is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iDataA : in STD_LOGIC_VECTOR ( 11 downto 0 );
    iDataA2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    iCountH : in STD_LOGIC_VECTOR ( 9 downto 0 );
    iCountV : in STD_LOGIC_VECTOR ( 9 downto 0 );
    iHS : in STD_LOGIC;
    iVS : in STD_LOGIC;
    iColor : in STD_LOGIC;
    oHS : out STD_LOGIC;
    oVS : out STD_LOGIC;
    oRed : out STD_LOGIC_VECTOR ( 3 downto 0 );
    oGreen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    oBlue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    oAddrA : out STD_LOGIC_VECTOR ( 9 downto 0 );
    oAddrA2 : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_VGA_pattern_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_VGA_pattern_0_0 : entity is "design_1_VGA_pattern_0_0,VGA_pattern,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_VGA_pattern_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_VGA_pattern_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_VGA_pattern_0_0 : entity is "VGA_pattern,Vivado 2020.1";
end design_1_VGA_pattern_0_0;

architecture STRUCTURE of design_1_VGA_pattern_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^icounth\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^ihs\ : STD_LOGIC;
  signal \^ivs\ : STD_LOGIC;
  signal \^oaddra\ : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal oAddrA0 : STD_LOGIC_VECTOR ( 9 downto 6 );
  signal oAddrA20 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^oblue\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \^ogreen\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \oGreen[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \oGreen[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \oGreen[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \oGreen[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \oGreen[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \oGreen[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \oGreen[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \oGreen[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \oGreen[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \oGreen[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \oGreen[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \oGreen[0]_INST_0_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \oGreen[0]_INST_0_i_8\ : label is "soft_lutpair0";
begin
  \^icounth\(9 downto 0) <= iCountH(9 downto 0);
  \^ihs\ <= iHS;
  \^ivs\ <= iVS;
  oAddrA(9 downto 2) <= \^oaddra\(9 downto 2);
  oAddrA(1 downto 0) <= \^icounth\(5 downto 4);
  oBlue(3) <= \^oblue\(3);
  oBlue(2) <= \^oblue\(3);
  oBlue(1) <= \^oblue\(3);
  oBlue(0) <= \^oblue\(3);
  oGreen(3) <= \^ogreen\(3);
  oGreen(2) <= \^ogreen\(3);
  oGreen(1) <= \^ogreen\(3);
  oGreen(0) <= \^ogreen\(3);
  oHS <= \^ihs\;
  oRed(3) <= \<const0>\;
  oRed(2) <= \<const0>\;
  oRed(1) <= \<const0>\;
  oRed(0) <= \<const0>\;
  oVS <= \^ivs\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_VGA_pattern_0_0_VGA_pattern
     port map (
      S(3 downto 0) => oAddrA0(9 downto 6),
      iCountH(3 downto 0) => \^icounth\(9 downto 6),
      iCountV(7 downto 0) => iCountV(7 downto 0),
      iDataA(11 downto 0) => iDataA(11 downto 0),
      oAddrA(7 downto 0) => \^oaddra\(9 downto 2),
      oAddrA20(11 downto 0) => oAddrA20(11 downto 0)
    );
\oAddrA2[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \oGreen[0]_INST_0_i_2_n_0\,
      I1 => \oGreen[0]_INST_0_i_1_n_0\,
      I2 => oAddrA20(0),
      O => oAddrA2(0)
    );
\oAddrA2[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \oGreen[0]_INST_0_i_2_n_0\,
      I1 => \oGreen[0]_INST_0_i_1_n_0\,
      I2 => oAddrA20(10),
      O => oAddrA2(10)
    );
\oAddrA2[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \oGreen[0]_INST_0_i_2_n_0\,
      I1 => \oGreen[0]_INST_0_i_1_n_0\,
      I2 => oAddrA20(11),
      O => oAddrA2(11)
    );
\oAddrA2[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \oGreen[0]_INST_0_i_2_n_0\,
      I1 => \oGreen[0]_INST_0_i_1_n_0\,
      I2 => oAddrA20(1),
      O => oAddrA2(1)
    );
\oAddrA2[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \oGreen[0]_INST_0_i_2_n_0\,
      I1 => \oGreen[0]_INST_0_i_1_n_0\,
      I2 => oAddrA20(2),
      O => oAddrA2(2)
    );
\oAddrA2[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \oGreen[0]_INST_0_i_2_n_0\,
      I1 => \oGreen[0]_INST_0_i_1_n_0\,
      I2 => oAddrA20(3),
      O => oAddrA2(3)
    );
\oAddrA2[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \oGreen[0]_INST_0_i_2_n_0\,
      I1 => \oGreen[0]_INST_0_i_1_n_0\,
      I2 => oAddrA20(4),
      O => oAddrA2(4)
    );
\oAddrA2[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \oGreen[0]_INST_0_i_2_n_0\,
      I1 => \oGreen[0]_INST_0_i_1_n_0\,
      I2 => oAddrA20(5),
      O => oAddrA2(5)
    );
\oAddrA2[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \oGreen[0]_INST_0_i_2_n_0\,
      I1 => \oGreen[0]_INST_0_i_1_n_0\,
      I2 => oAddrA20(6),
      O => oAddrA2(6)
    );
\oAddrA2[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \oGreen[0]_INST_0_i_2_n_0\,
      I1 => \oGreen[0]_INST_0_i_1_n_0\,
      I2 => oAddrA20(7),
      O => oAddrA2(7)
    );
\oAddrA2[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \oGreen[0]_INST_0_i_2_n_0\,
      I1 => \oGreen[0]_INST_0_i_1_n_0\,
      I2 => oAddrA20(8),
      O => oAddrA2(8)
    );
\oAddrA2[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \oGreen[0]_INST_0_i_2_n_0\,
      I1 => \oGreen[0]_INST_0_i_1_n_0\,
      I2 => oAddrA20(9),
      O => oAddrA2(9)
    );
\oAddrA[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F5FA080"
    )
        port map (
      I0 => iCountV(7),
      I1 => iCountV(5),
      I2 => iCountV(8),
      I3 => iCountV(6),
      I4 => iCountV(9),
      O => oAddrA0(9)
    );
\oAddrA[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"015FF800"
    )
        port map (
      I0 => iCountV(6),
      I1 => iCountV(5),
      I2 => iCountV(9),
      I3 => iCountV(7),
      I4 => iCountV(8),
      O => oAddrA0(8)
    );
\oAddrA[6]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E83F17C0"
    )
        port map (
      I0 => iCountV(5),
      I1 => iCountV(8),
      I2 => iCountV(6),
      I3 => iCountV(7),
      I4 => iCountV(9),
      O => oAddrA0(7)
    );
\oAddrA[6]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => iCountV(7),
      I1 => iCountV(5),
      I2 => iCountV(6),
      I3 => iCountV(8),
      O => oAddrA0(6)
    );
\oBlue[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => iColor,
      I1 => \oGreen[0]_INST_0_i_1_n_0\,
      I2 => \oGreen[0]_INST_0_i_2_n_0\,
      I3 => \oGreen[0]_INST_0_i_3_n_0\,
      O => \^oblue\(3)
    );
\oGreen[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => iColor,
      I1 => \oGreen[0]_INST_0_i_1_n_0\,
      I2 => \oGreen[0]_INST_0_i_2_n_0\,
      I3 => \oGreen[0]_INST_0_i_3_n_0\,
      O => \^ogreen\(3)
    );
\oGreen[0]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0155FFFF"
    )
        port map (
      I0 => \^icounth\(8),
      I1 => \^icounth\(0),
      I2 => \oGreen[0]_INST_0_i_4_n_0\,
      I3 => \^icounth\(7),
      I4 => \^icounth\(9),
      O => \oGreen[0]_INST_0_i_1_n_0\
    );
\oGreen[0]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \^icounth\(1),
      I1 => \^icounth\(0),
      I2 => \^icounth\(2),
      O => \oGreen[0]_INST_0_i_10_n_0\
    );
\oGreen[0]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCAF0CA0FCA00C"
    )
        port map (
      I0 => iDataA2(12),
      I1 => iDataA2(11),
      I2 => \^icounth\(0),
      I3 => \^icounth\(1),
      I4 => iDataA2(14),
      I5 => iDataA2(13),
      O => \oGreen[0]_INST_0_i_11_n_0\
    );
\oGreen[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF7FFF"
    )
        port map (
      I0 => iCountV(6),
      I1 => iCountV(5),
      I2 => iCountV(8),
      I3 => iCountV(7),
      I4 => \oGreen[0]_INST_0_i_5_n_0\,
      I5 => iCountV(9),
      O => \oGreen[0]_INST_0_i_2_n_0\
    );
\oGreen[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \oGreen[0]_INST_0_i_6_n_0\,
      I1 => \oGreen[0]_INST_0_i_7_n_0\,
      I2 => \oGreen[0]_INST_0_i_8_n_0\,
      I3 => \oGreen[0]_INST_0_i_9_n_0\,
      I4 => \oGreen[0]_INST_0_i_10_n_0\,
      I5 => \oGreen[0]_INST_0_i_11_n_0\,
      O => \oGreen[0]_INST_0_i_3_n_0\
    );
\oGreen[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^icounth\(2),
      I1 => \^icounth\(1),
      I2 => \^icounth\(5),
      I3 => \^icounth\(6),
      I4 => \^icounth\(3),
      I5 => \^icounth\(4),
      O => \oGreen[0]_INST_0_i_4_n_0\
    );
\oGreen[0]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => iCountV(3),
      I1 => iCountV(4),
      I2 => iCountV(1),
      I3 => iCountV(2),
      I4 => iCountV(0),
      O => \oGreen[0]_INST_0_i_5_n_0\
    );
\oGreen[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCAF0CA0FCA00C"
    )
        port map (
      I0 => iDataA2(0),
      I1 => iDataA2(15),
      I2 => \^icounth\(0),
      I3 => \^icounth\(1),
      I4 => iDataA2(2),
      I5 => iDataA2(1),
      O => \oGreen[0]_INST_0_i_6_n_0\
    );
\oGreen[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCAF0CA0FCA00C"
    )
        port map (
      I0 => iDataA2(4),
      I1 => iDataA2(3),
      I2 => \^icounth\(0),
      I3 => \^icounth\(1),
      I4 => iDataA2(6),
      I5 => iDataA2(5),
      O => \oGreen[0]_INST_0_i_7_n_0\
    );
\oGreen[0]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \^icounth\(2),
      I1 => \^icounth\(0),
      I2 => \^icounth\(1),
      I3 => \^icounth\(3),
      O => \oGreen[0]_INST_0_i_8_n_0\
    );
\oGreen[0]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCAF0CA0FCA00C"
    )
        port map (
      I0 => iDataA2(8),
      I1 => iDataA2(7),
      I2 => \^icounth\(0),
      I3 => \^icounth\(1),
      I4 => iDataA2(10),
      I5 => iDataA2(9),
      O => \oGreen[0]_INST_0_i_9_n_0\
    );
end STRUCTURE;
