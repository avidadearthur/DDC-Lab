-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Dec 15 17:13:38 2021
-- Host        : DESKTOP-O7RVSTA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/arthu/DigitalConceptsLab/ASCII_Displayer_V3/ASCII_Displayer_V3.srcs/sources_1/bd/design_1/ip/design_1_VGA_timings_0_0/design_1_VGA_timings_0_0_sim_netlist.vhdl
-- Design      : design_1_VGA_timings_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_VGA_timings_0_0_VGA_timings is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \V_r_CntCurr_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    oHS : out STD_LOGIC;
    oVS : out STD_LOGIC;
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_VGA_timings_0_0_VGA_timings : entity is "VGA_timings";
end design_1_VGA_timings_0_0_VGA_timings;

architecture STRUCTURE of design_1_VGA_timings_0_0_VGA_timings is
  signal \H_r_CntCurr[9]_i_3_n_0\ : STD_LOGIC;
  signal \H_r_CntCurr[9]_i_4_n_0\ : STD_LOGIC;
  signal H_w_CntNext : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal H_w_Rst : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \V_r_CntCurr[9]_i_2_n_0\ : STD_LOGIC;
  signal \V_r_CntCurr[9]_i_4_n_0\ : STD_LOGIC;
  signal \V_r_CntCurr[9]_i_5_n_0\ : STD_LOGIC;
  signal \V_r_CntCurr[9]_i_6_n_0\ : STD_LOGIC;
  signal \^v_r_cntcurr_reg[9]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal V_w_Rst : STD_LOGIC;
  signal oVS_INST_0_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \H_r_CntCurr[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \H_r_CntCurr[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \H_r_CntCurr[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \H_r_CntCurr[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \H_r_CntCurr[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \H_r_CntCurr[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \H_r_CntCurr[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \H_r_CntCurr[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \H_r_CntCurr[9]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \H_r_CntCurr[9]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \V_r_CntCurr[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \V_r_CntCurr[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \V_r_CntCurr[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \V_r_CntCurr[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \V_r_CntCurr[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \V_r_CntCurr[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \V_r_CntCurr[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \V_r_CntCurr[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \V_r_CntCurr[9]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of oVS_INST_0 : label is "soft_lutpair5";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  \V_r_CntCurr_reg[9]_0\(9 downto 0) <= \^v_r_cntcurr_reg[9]_0\(9 downto 0);
\H_r_CntCurr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => H_w_CntNext(0)
    );
\H_r_CntCurr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => H_w_CntNext(1)
    );
\H_r_CntCurr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => H_w_CntNext(2)
    );
\H_r_CntCurr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => H_w_CntNext(3)
    );
\H_r_CntCurr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => H_w_CntNext(4)
    );
\H_r_CntCurr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => H_w_CntNext(5)
    );
\H_r_CntCurr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^q\(5),
      I1 => \H_r_CntCurr[9]_i_3_n_0\,
      I2 => \^q\(6),
      O => H_w_CntNext(6)
    );
\H_r_CntCurr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^q\(6),
      I1 => \H_r_CntCurr[9]_i_3_n_0\,
      I2 => \^q\(5),
      I3 => \^q\(7),
      O => H_w_CntNext(7)
    );
\H_r_CntCurr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(5),
      I2 => \H_r_CntCurr[9]_i_3_n_0\,
      I3 => \^q\(6),
      I4 => \^q\(8),
      O => H_w_CntNext(8)
    );
\H_r_CntCurr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10000000"
    )
        port map (
      I0 => \H_r_CntCurr[9]_i_3_n_0\,
      I1 => \^q\(7),
      I2 => \^q\(8),
      I3 => \^q\(9),
      I4 => \H_r_CntCurr[9]_i_4_n_0\,
      I5 => iRst,
      O => H_w_Rst
    );
\H_r_CntCurr[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(6),
      I2 => \H_r_CntCurr[9]_i_3_n_0\,
      I3 => \^q\(5),
      I4 => \^q\(7),
      I5 => \^q\(9),
      O => H_w_CntNext(9)
    );
\H_r_CntCurr[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \H_r_CntCurr[9]_i_3_n_0\
    );
\H_r_CntCurr[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      O => \H_r_CntCurr[9]_i_4_n_0\
    );
\H_r_CntCurr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => H_w_CntNext(0),
      Q => \^q\(0),
      R => H_w_Rst
    );
\H_r_CntCurr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => H_w_CntNext(1),
      Q => \^q\(1),
      R => H_w_Rst
    );
\H_r_CntCurr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => H_w_CntNext(2),
      Q => \^q\(2),
      R => H_w_Rst
    );
\H_r_CntCurr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => H_w_CntNext(3),
      Q => \^q\(3),
      R => H_w_Rst
    );
\H_r_CntCurr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => H_w_CntNext(4),
      Q => \^q\(4),
      R => H_w_Rst
    );
\H_r_CntCurr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => H_w_CntNext(5),
      Q => \^q\(5),
      R => H_w_Rst
    );
\H_r_CntCurr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => H_w_CntNext(6),
      Q => \^q\(6),
      R => H_w_Rst
    );
\H_r_CntCurr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => H_w_CntNext(7),
      Q => \^q\(7),
      R => H_w_Rst
    );
\H_r_CntCurr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => H_w_CntNext(8),
      Q => \^q\(8),
      R => H_w_Rst
    );
\H_r_CntCurr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => H_w_CntNext(9),
      Q => \^q\(9),
      R => H_w_Rst
    );
\V_r_CntCurr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^v_r_cntcurr_reg[9]_0\(0),
      O => p_0_in(0)
    );
\V_r_CntCurr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^v_r_cntcurr_reg[9]_0\(0),
      I1 => \^v_r_cntcurr_reg[9]_0\(1),
      O => p_0_in(1)
    );
\V_r_CntCurr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^v_r_cntcurr_reg[9]_0\(1),
      I1 => \^v_r_cntcurr_reg[9]_0\(0),
      I2 => \^v_r_cntcurr_reg[9]_0\(2),
      O => p_0_in(2)
    );
\V_r_CntCurr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^v_r_cntcurr_reg[9]_0\(2),
      I1 => \^v_r_cntcurr_reg[9]_0\(0),
      I2 => \^v_r_cntcurr_reg[9]_0\(1),
      I3 => \^v_r_cntcurr_reg[9]_0\(3),
      O => p_0_in(3)
    );
\V_r_CntCurr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^v_r_cntcurr_reg[9]_0\(3),
      I1 => \^v_r_cntcurr_reg[9]_0\(1),
      I2 => \^v_r_cntcurr_reg[9]_0\(0),
      I3 => \^v_r_cntcurr_reg[9]_0\(2),
      I4 => \^v_r_cntcurr_reg[9]_0\(4),
      O => p_0_in(4)
    );
\V_r_CntCurr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^v_r_cntcurr_reg[9]_0\(4),
      I1 => \^v_r_cntcurr_reg[9]_0\(2),
      I2 => \^v_r_cntcurr_reg[9]_0\(0),
      I3 => \^v_r_cntcurr_reg[9]_0\(1),
      I4 => \^v_r_cntcurr_reg[9]_0\(3),
      I5 => \^v_r_cntcurr_reg[9]_0\(5),
      O => p_0_in(5)
    );
\V_r_CntCurr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \V_r_CntCurr[9]_i_6_n_0\,
      I1 => \^v_r_cntcurr_reg[9]_0\(6),
      O => p_0_in(6)
    );
\V_r_CntCurr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \^v_r_cntcurr_reg[9]_0\(6),
      I1 => \V_r_CntCurr[9]_i_6_n_0\,
      I2 => \^v_r_cntcurr_reg[9]_0\(7),
      O => p_0_in(7)
    );
\V_r_CntCurr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \^v_r_cntcurr_reg[9]_0\(7),
      I1 => \V_r_CntCurr[9]_i_6_n_0\,
      I2 => \^v_r_cntcurr_reg[9]_0\(6),
      I3 => \^v_r_cntcurr_reg[9]_0\(8),
      O => p_0_in(8)
    );
\V_r_CntCurr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => \H_r_CntCurr[9]_i_3_n_0\,
      I1 => \V_r_CntCurr[9]_i_4_n_0\,
      I2 => \H_r_CntCurr[9]_i_4_n_0\,
      I3 => \^v_r_cntcurr_reg[9]_0\(0),
      I4 => \V_r_CntCurr[9]_i_5_n_0\,
      I5 => iRst,
      O => V_w_Rst
    );
\V_r_CntCurr[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(9),
      I3 => \^q\(8),
      I4 => \^q\(7),
      I5 => \H_r_CntCurr[9]_i_3_n_0\,
      O => \V_r_CntCurr[9]_i_2_n_0\
    );
\V_r_CntCurr[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^v_r_cntcurr_reg[9]_0\(8),
      I1 => \^v_r_cntcurr_reg[9]_0\(6),
      I2 => \V_r_CntCurr[9]_i_6_n_0\,
      I3 => \^v_r_cntcurr_reg[9]_0\(7),
      I4 => \^v_r_cntcurr_reg[9]_0\(9),
      O => p_0_in(9)
    );
\V_r_CntCurr[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \^v_r_cntcurr_reg[9]_0\(9),
      I1 => \^q\(7),
      I2 => \^v_r_cntcurr_reg[9]_0\(7),
      I3 => \^v_r_cntcurr_reg[9]_0\(8),
      I4 => \^q\(9),
      I5 => \^q\(8),
      O => \V_r_CntCurr[9]_i_4_n_0\
    );
\V_r_CntCurr[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \^v_r_cntcurr_reg[9]_0\(3),
      I1 => \^v_r_cntcurr_reg[9]_0\(4),
      I2 => \^v_r_cntcurr_reg[9]_0\(2),
      I3 => \^v_r_cntcurr_reg[9]_0\(1),
      I4 => \^v_r_cntcurr_reg[9]_0\(6),
      I5 => \^v_r_cntcurr_reg[9]_0\(5),
      O => \V_r_CntCurr[9]_i_5_n_0\
    );
\V_r_CntCurr[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^v_r_cntcurr_reg[9]_0\(4),
      I1 => \^v_r_cntcurr_reg[9]_0\(2),
      I2 => \^v_r_cntcurr_reg[9]_0\(0),
      I3 => \^v_r_cntcurr_reg[9]_0\(1),
      I4 => \^v_r_cntcurr_reg[9]_0\(3),
      I5 => \^v_r_cntcurr_reg[9]_0\(5),
      O => \V_r_CntCurr[9]_i_6_n_0\
    );
\V_r_CntCurr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \V_r_CntCurr[9]_i_2_n_0\,
      D => p_0_in(0),
      Q => \^v_r_cntcurr_reg[9]_0\(0),
      R => V_w_Rst
    );
\V_r_CntCurr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \V_r_CntCurr[9]_i_2_n_0\,
      D => p_0_in(1),
      Q => \^v_r_cntcurr_reg[9]_0\(1),
      R => V_w_Rst
    );
\V_r_CntCurr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \V_r_CntCurr[9]_i_2_n_0\,
      D => p_0_in(2),
      Q => \^v_r_cntcurr_reg[9]_0\(2),
      R => V_w_Rst
    );
\V_r_CntCurr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \V_r_CntCurr[9]_i_2_n_0\,
      D => p_0_in(3),
      Q => \^v_r_cntcurr_reg[9]_0\(3),
      R => V_w_Rst
    );
\V_r_CntCurr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \V_r_CntCurr[9]_i_2_n_0\,
      D => p_0_in(4),
      Q => \^v_r_cntcurr_reg[9]_0\(4),
      R => V_w_Rst
    );
\V_r_CntCurr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \V_r_CntCurr[9]_i_2_n_0\,
      D => p_0_in(5),
      Q => \^v_r_cntcurr_reg[9]_0\(5),
      R => V_w_Rst
    );
\V_r_CntCurr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \V_r_CntCurr[9]_i_2_n_0\,
      D => p_0_in(6),
      Q => \^v_r_cntcurr_reg[9]_0\(6),
      R => V_w_Rst
    );
\V_r_CntCurr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \V_r_CntCurr[9]_i_2_n_0\,
      D => p_0_in(7),
      Q => \^v_r_cntcurr_reg[9]_0\(7),
      R => V_w_Rst
    );
\V_r_CntCurr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \V_r_CntCurr[9]_i_2_n_0\,
      D => p_0_in(8),
      Q => \^v_r_cntcurr_reg[9]_0\(8),
      R => V_w_Rst
    );
\V_r_CntCurr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \V_r_CntCurr[9]_i_2_n_0\,
      D => p_0_in(9),
      Q => \^v_r_cntcurr_reg[9]_0\(9),
      R => V_w_Rst
    );
oHS_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBBBBFFFFFFFFF"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      I2 => \^q\(4),
      I3 => \^q\(5),
      I4 => \^q\(6),
      I5 => \^q\(7),
      O => oHS
    );
oVS_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \^v_r_cntcurr_reg[9]_0\(1),
      I1 => \^v_r_cntcurr_reg[9]_0\(2),
      I2 => \^v_r_cntcurr_reg[9]_0\(3),
      I3 => oVS_INST_0_i_1_n_0,
      O => oVS
    );
oVS_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => \^v_r_cntcurr_reg[9]_0\(9),
      I1 => \^v_r_cntcurr_reg[9]_0\(8),
      I2 => \^v_r_cntcurr_reg[9]_0\(6),
      I3 => \^v_r_cntcurr_reg[9]_0\(7),
      I4 => \^v_r_cntcurr_reg[9]_0\(5),
      I5 => \^v_r_cntcurr_reg[9]_0\(4),
      O => oVS_INST_0_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_VGA_timings_0_0 is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    oHS : out STD_LOGIC;
    oVS : out STD_LOGIC;
    oCountH : out STD_LOGIC_VECTOR ( 9 downto 0 );
    oCountV : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_VGA_timings_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_VGA_timings_0_0 : entity is "design_1_VGA_timings_0_0,VGA_timings,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_VGA_timings_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_VGA_timings_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_VGA_timings_0_0 : entity is "VGA_timings,Vivado 2020.1";
end design_1_VGA_timings_0_0;

architecture STRUCTURE of design_1_VGA_timings_0_0 is
begin
inst: entity work.design_1_VGA_timings_0_0_VGA_timings
     port map (
      Q(9 downto 0) => oCountH(9 downto 0),
      \V_r_CntCurr_reg[9]_0\(9 downto 0) => oCountV(9 downto 0),
      iClk => iClk,
      iRst => iRst,
      oHS => oHS,
      oVS => oVS
    );
end STRUCTURE;
