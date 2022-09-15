-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Dec 16 18:35:23 2021
-- Host        : XPS-13-9300 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_num_capture_4bit_0_0_sim_netlist.vhdl
-- Design      : design_1_num_capture_4bit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_num_capture_4bit is
  port (
    oAddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    oData : out STD_LOGIC_VECTOR ( 6 downto 0 );
    oWe : out STD_LOGIC;
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC;
    iPull : in STD_LOGIC;
    iPush : in STD_LOGIC;
    iStop : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_num_capture_4bit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_num_capture_4bit is
  signal B : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \__0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \rAddr[9]_i_1_n_0\ : STD_LOGIC;
  signal \rAddr[9]_i_2_n_0\ : STD_LOGIC;
  signal \rAddr[9]_i_4_n_0\ : STD_LOGIC;
  signal rAddr_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rFSM_current : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rFSM_current[1]_i_2_n_0\ : STD_LOGIC;
  signal \rFSM_current[2]_i_2_n_0\ : STD_LOGIC;
  signal rNumberNext : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \rNumberNext[1]_i_2_n_0\ : STD_LOGIC;
  signal \rNumberNext[3]_i_2_n_0\ : STD_LOGIC;
  signal \rNumberNext[3]_i_3_n_0\ : STD_LOGIC;
  signal \rNumberNext[4]_i_2_n_0\ : STD_LOGIC;
  signal \rNumberNext[4]_i_3_n_0\ : STD_LOGIC;
  signal \rNumberNext[4]_i_4_n_0\ : STD_LOGIC;
  signal \rNumberNext[4]_i_5_n_0\ : STD_LOGIC;
  signal \rNumberNext[5]_i_2_n_0\ : STD_LOGIC;
  signal \rNumberNext[6]_i_1_n_0\ : STD_LOGIC;
  signal \rNumberNext[6]_i_4_n_0\ : STD_LOGIC;
  signal \rNumberNext[6]_i_5_n_0\ : STD_LOGIC;
  signal \rNumberNext[6]_i_6_n_0\ : STD_LOGIC;
  signal wFSM_next : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \oAddr[0]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \oAddr[8]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \oAddr[9]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of oWe_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rAddr[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rAddr[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rAddr[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rAddr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rAddr[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rAddr[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rAddr[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rAddr[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rAddr[9]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rNumberNext[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rNumberNext[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rNumberNext[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rNumberNext[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rNumberNext[3]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rNumberNext[4]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rNumberNext[4]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rNumberNext[5]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rNumberNext[6]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rNumberNext[6]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rNumberNext[6]_i_6\ : label is "soft_lutpair5";
begin
\oAddr[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rAddr_reg(0),
      O => oAddr(0)
    );
\oAddr[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rAddr_reg(1),
      O => oAddr(1)
    );
\oAddr[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rAddr_reg(2),
      O => oAddr(2)
    );
\oAddr[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rAddr_reg(3),
      O => oAddr(3)
    );
\oAddr[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rAddr_reg(4),
      O => oAddr(4)
    );
\oAddr[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rAddr_reg(5),
      O => oAddr(5)
    );
\oAddr[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rAddr_reg(6),
      O => oAddr(6)
    );
\oAddr[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rAddr_reg(7),
      O => oAddr(7)
    );
\oAddr[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rAddr_reg(8),
      O => oAddr(8)
    );
\oAddr[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rAddr_reg(9),
      O => oAddr(9)
    );
\oData[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rNumberNext(5),
      O => oData(5)
    );
\oData[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000400000"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rNumberNext(6),
      I5 => rNumberNext(5),
      O => oData(6)
    );
\oData[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rNumberNext(0),
      O => oData(0)
    );
\oData[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rNumberNext(1),
      O => oData(1)
    );
\oData[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rNumberNext(2),
      O => oData(2)
    );
\oData[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rNumberNext(3),
      O => oData(3)
    );
\oData[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rNumberNext(4),
      O => oData(4)
    );
oWe_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => rFSM_current(1),
      I1 => rFSM_current(3),
      I2 => rFSM_current(0),
      I3 => rFSM_current(2),
      O => oWe
    );
\rAddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rAddr_reg(0),
      O => p_0_in(0)
    );
\rAddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rAddr_reg(0),
      I1 => rAddr_reg(1),
      O => p_0_in(1)
    );
\rAddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rAddr_reg(1),
      I1 => rAddr_reg(0),
      I2 => rAddr_reg(2),
      O => p_0_in(2)
    );
\rAddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rAddr_reg(2),
      I1 => rAddr_reg(0),
      I2 => rAddr_reg(1),
      I3 => rAddr_reg(3),
      O => p_0_in(3)
    );
\rAddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rAddr_reg(3),
      I1 => rAddr_reg(1),
      I2 => rAddr_reg(0),
      I3 => rAddr_reg(2),
      I4 => rAddr_reg(4),
      O => p_0_in(4)
    );
\rAddr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rAddr_reg(4),
      I1 => rAddr_reg(2),
      I2 => rAddr_reg(0),
      I3 => rAddr_reg(1),
      I4 => rAddr_reg(3),
      I5 => rAddr_reg(5),
      O => p_0_in(5)
    );
\rAddr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rAddr[9]_i_4_n_0\,
      I1 => rAddr_reg(6),
      O => p_0_in(6)
    );
\rAddr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rAddr_reg(6),
      I1 => \rAddr[9]_i_4_n_0\,
      I2 => rAddr_reg(7),
      O => p_0_in(7)
    );
\rAddr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \rAddr[9]_i_4_n_0\,
      I1 => rAddr_reg(6),
      I2 => rAddr_reg(7),
      I3 => rAddr_reg(8),
      O => p_0_in(8)
    );
\rAddr[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      O => \rAddr[9]_i_1_n_0\
    );
\rAddr[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => rFSM_current(0),
      I1 => rFSM_current(1),
      I2 => rFSM_current(3),
      I3 => rFSM_current(2),
      O => \rAddr[9]_i_2_n_0\
    );
\rAddr[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \rAddr[9]_i_4_n_0\,
      I1 => rAddr_reg(8),
      I2 => rAddr_reg(7),
      I3 => rAddr_reg(6),
      I4 => rAddr_reg(9),
      O => p_0_in(9)
    );
\rAddr[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rAddr_reg(4),
      I1 => rAddr_reg(2),
      I2 => rAddr_reg(0),
      I3 => rAddr_reg(1),
      I4 => rAddr_reg(3),
      I5 => rAddr_reg(5),
      O => \rAddr[9]_i_4_n_0\
    );
\rAddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rAddr[9]_i_2_n_0\,
      D => p_0_in(0),
      Q => rAddr_reg(0),
      R => \rAddr[9]_i_1_n_0\
    );
\rAddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rAddr[9]_i_2_n_0\,
      D => p_0_in(1),
      Q => rAddr_reg(1),
      R => \rAddr[9]_i_1_n_0\
    );
\rAddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rAddr[9]_i_2_n_0\,
      D => p_0_in(2),
      Q => rAddr_reg(2),
      R => \rAddr[9]_i_1_n_0\
    );
\rAddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rAddr[9]_i_2_n_0\,
      D => p_0_in(3),
      Q => rAddr_reg(3),
      R => \rAddr[9]_i_1_n_0\
    );
\rAddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rAddr[9]_i_2_n_0\,
      D => p_0_in(4),
      Q => rAddr_reg(4),
      R => \rAddr[9]_i_1_n_0\
    );
\rAddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rAddr[9]_i_2_n_0\,
      D => p_0_in(5),
      Q => rAddr_reg(5),
      R => \rAddr[9]_i_1_n_0\
    );
\rAddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rAddr[9]_i_2_n_0\,
      D => p_0_in(6),
      Q => rAddr_reg(6),
      R => \rAddr[9]_i_1_n_0\
    );
\rAddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rAddr[9]_i_2_n_0\,
      D => p_0_in(7),
      Q => rAddr_reg(7),
      R => \rAddr[9]_i_1_n_0\
    );
\rAddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rAddr[9]_i_2_n_0\,
      D => p_0_in(8),
      Q => rAddr_reg(8),
      R => \rAddr[9]_i_1_n_0\
    );
\rAddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rAddr[9]_i_2_n_0\,
      D => p_0_in(9),
      Q => rAddr_reg(9),
      R => \rAddr[9]_i_1_n_0\
    );
\rFSM_current[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000F00FFF301FF"
    )
        port map (
      I0 => iPull,
      I1 => iPush,
      I2 => rFSM_current(2),
      I3 => rFSM_current(0),
      I4 => rFSM_current(1),
      I5 => rFSM_current(3),
      O => wFSM_next(0)
    );
\rFSM_current[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAAAAAAAEAFAA"
    )
        port map (
      I0 => \rFSM_current[1]_i_2_n_0\,
      I1 => iPush,
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      I4 => rFSM_current(0),
      I5 => rFSM_current(2),
      O => wFSM_next(1)
    );
\rFSM_current[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A000F200000000"
    )
        port map (
      I0 => iStop,
      I1 => iPull,
      I2 => rFSM_current(2),
      I3 => rFSM_current(3),
      I4 => rFSM_current(1),
      I5 => rFSM_current(0),
      O => \rFSM_current[1]_i_2_n_0\
    );
\rFSM_current[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABFAAAFAAA"
    )
        port map (
      I0 => \rFSM_current[2]_i_2_n_0\,
      I1 => iPull,
      I2 => rFSM_current(0),
      I3 => rFSM_current(2),
      I4 => rFSM_current(1),
      I5 => rFSM_current(3),
      O => wFSM_next(2)
    );
\rFSM_current[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => iPull,
      I1 => iStop,
      I2 => iPush,
      I3 => rFSM_current(0),
      I4 => rFSM_current(1),
      I5 => rFSM_current(3),
      O => \rFSM_current[2]_i_2_n_0\
    );
\rFSM_current[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000F00F20A00"
    )
        port map (
      I0 => iPull,
      I1 => iPush,
      I2 => rFSM_current(1),
      I3 => rFSM_current(3),
      I4 => rFSM_current(0),
      I5 => rFSM_current(2),
      O => wFSM_next(3)
    );
\rFSM_current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wFSM_next(0),
      Q => rFSM_current(0),
      R => iRst
    );
\rFSM_current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wFSM_next(1),
      Q => rFSM_current(1),
      R => iRst
    );
\rFSM_current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wFSM_next(2),
      Q => rFSM_current(2),
      R => iRst
    );
\rFSM_current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wFSM_next(3),
      Q => rFSM_current(3),
      R => iRst
    );
\rNumberNext[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rNumberNext(0),
      O => B(0)
    );
\rNumberNext[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFAFCC"
    )
        port map (
      I0 => \rNumberNext[4]_i_5_n_0\,
      I1 => \rNumberNext[6]_i_6_n_0\,
      I2 => \rNumberNext[1]_i_2_n_0\,
      I3 => rNumberNext(0),
      I4 => rNumberNext(1),
      O => B(1)
    );
\rNumberNext[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => rNumberNext(0),
      I1 => rNumberNext(5),
      I2 => rNumberNext(6),
      I3 => \rNumberNext[6]_i_5_n_0\,
      O => \rNumberNext[1]_i_2_n_0\
    );
\rNumberNext[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFAAEEEEAAAAE"
    )
        port map (
      I0 => \rNumberNext[4]_i_2_n_0\,
      I1 => \rNumberNext[6]_i_6_n_0\,
      I2 => rNumberNext(1),
      I3 => rNumberNext(0),
      I4 => rNumberNext(2),
      I5 => \rNumberNext[4]_i_5_n_0\,
      O => B(2)
    );
\rNumberNext[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFEFEEEEEEEEEE"
    )
        port map (
      I0 => \rNumberNext[4]_i_2_n_0\,
      I1 => \rNumberNext[3]_i_2_n_0\,
      I2 => \rNumberNext[3]_i_3_n_0\,
      I3 => rNumberNext(0),
      I4 => rNumberNext(3),
      I5 => \rNumberNext[4]_i_5_n_0\,
      O => B(3)
    );
\rNumberNext[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888882"
    )
        port map (
      I0 => \rNumberNext[6]_i_6_n_0\,
      I1 => rNumberNext(3),
      I2 => rNumberNext(2),
      I3 => rNumberNext(1),
      I4 => rNumberNext(0),
      O => \rNumberNext[3]_i_2_n_0\
    );
\rNumberNext[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => rNumberNext(1),
      I1 => rNumberNext(2),
      O => \rNumberNext[3]_i_3_n_0\
    );
\rNumberNext[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFEFEEEEEEEEEE"
    )
        port map (
      I0 => \rNumberNext[4]_i_2_n_0\,
      I1 => \rNumberNext[4]_i_3_n_0\,
      I2 => \rNumberNext[4]_i_4_n_0\,
      I3 => rNumberNext(0),
      I4 => rNumberNext(4),
      I5 => \rNumberNext[4]_i_5_n_0\,
      O => B(4)
    );
\rNumberNext[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \rNumberNext[6]_i_6_n_0\,
      I1 => \rNumberNext[6]_i_5_n_0\,
      I2 => rNumberNext(6),
      I3 => rNumberNext(5),
      I4 => rNumberNext(0),
      O => \rNumberNext[4]_i_2_n_0\
    );
\rNumberNext[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888882"
    )
        port map (
      I0 => \rNumberNext[6]_i_6_n_0\,
      I1 => rNumberNext(4),
      I2 => rNumberNext(3),
      I3 => rNumberNext(1),
      I4 => rNumberNext(2),
      I5 => rNumberNext(0),
      O => \rNumberNext[4]_i_3_n_0\
    );
\rNumberNext[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => rNumberNext(2),
      I1 => rNumberNext(1),
      I2 => rNumberNext(3),
      O => \rNumberNext[4]_i_4_n_0\
    );
\rNumberNext[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \rNumberNext[6]_i_4_n_0\,
      I1 => rNumberNext(0),
      I2 => rNumberNext(6),
      I3 => \rNumberNext[6]_i_6_n_0\,
      O => \rNumberNext[4]_i_5_n_0\
    );
\rNumberNext[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0D2A5D2"
    )
        port map (
      I0 => \rNumberNext[6]_i_6_n_0\,
      I1 => \rNumberNext[6]_i_5_n_0\,
      I2 => rNumberNext(5),
      I3 => rNumberNext(0),
      I4 => \rNumberNext[5]_i_2_n_0\,
      O => B(5)
    );
\rNumberNext[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => rNumberNext(3),
      I1 => rNumberNext(1),
      I2 => rNumberNext(2),
      I3 => rNumberNext(4),
      O => \rNumberNext[5]_i_2_n_0\
    );
\rNumberNext[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1001"
    )
        port map (
      I0 => rFSM_current(3),
      I1 => rFSM_current(0),
      I2 => rFSM_current(2),
      I3 => rFSM_current(1),
      O => \rNumberNext[6]_i_1_n_0\
    );
\rNumberNext[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0402"
    )
        port map (
      I0 => rFSM_current(2),
      I1 => rFSM_current(0),
      I2 => rFSM_current(3),
      I3 => rFSM_current(1),
      O => \__0\
    );
\rNumberNext[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF003C03BB55BB55"
    )
        port map (
      I0 => \rNumberNext[6]_i_4_n_0\,
      I1 => rNumberNext(0),
      I2 => rNumberNext(5),
      I3 => rNumberNext(6),
      I4 => \rNumberNext[6]_i_5_n_0\,
      I5 => \rNumberNext[6]_i_6_n_0\,
      O => B(6)
    );
\rNumberNext[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => rNumberNext(4),
      I1 => rNumberNext(2),
      I2 => rNumberNext(1),
      I3 => rNumberNext(3),
      I4 => rNumberNext(5),
      O => \rNumberNext[6]_i_4_n_0\
    );
\rNumberNext[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => rNumberNext(3),
      I1 => rNumberNext(1),
      I2 => rNumberNext(2),
      I3 => rNumberNext(4),
      O => \rNumberNext[6]_i_5_n_0\
    );
\rNumberNext[6]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => rFSM_current(1),
      I1 => rFSM_current(3),
      I2 => rFSM_current(0),
      I3 => rFSM_current(2),
      O => \rNumberNext[6]_i_6_n_0\
    );
\rNumberNext_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \__0\,
      D => B(0),
      Q => rNumberNext(0),
      R => \rNumberNext[6]_i_1_n_0\
    );
\rNumberNext_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \__0\,
      D => B(1),
      Q => rNumberNext(1),
      R => \rNumberNext[6]_i_1_n_0\
    );
\rNumberNext_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \__0\,
      D => B(2),
      Q => rNumberNext(2),
      R => \rNumberNext[6]_i_1_n_0\
    );
\rNumberNext_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \__0\,
      D => B(3),
      Q => rNumberNext(3),
      R => \rNumberNext[6]_i_1_n_0\
    );
\rNumberNext_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \__0\,
      D => B(4),
      Q => rNumberNext(4),
      R => \rNumberNext[6]_i_1_n_0\
    );
\rNumberNext_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \__0\,
      D => B(5),
      Q => rNumberNext(5),
      R => \rNumberNext[6]_i_1_n_0\
    );
\rNumberNext_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \__0\,
      D => B(6),
      Q => rNumberNext(6),
      R => \rNumberNext[6]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iPush : in STD_LOGIC;
    iPull : in STD_LOGIC;
    iStop : in STD_LOGIC;
    oAddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    oData : out STD_LOGIC_VECTOR ( 11 downto 0 );
    oWe : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_num_capture_4bit_0_0,num_capture_4bit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "num_capture_4bit,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^odata\ : STD_LOGIC_VECTOR ( 11 downto 5 );
begin
  oData(11 downto 5) <= \^odata\(11 downto 5);
  oData(4) <= \<const0>\;
  oData(3) <= \<const0>\;
  oData(2) <= \<const0>\;
  oData(1) <= \<const0>\;
  oData(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_num_capture_4bit
     port map (
      iClk => iClk,
      iPull => iPull,
      iPush => iPush,
      iRst => iRst,
      iStop => iStop,
      oAddr(9 downto 0) => oAddr(9 downto 0),
      oData(6 downto 0) => \^odata\(11 downto 5),
      oWe => oWe
    );
end STRUCTURE;
