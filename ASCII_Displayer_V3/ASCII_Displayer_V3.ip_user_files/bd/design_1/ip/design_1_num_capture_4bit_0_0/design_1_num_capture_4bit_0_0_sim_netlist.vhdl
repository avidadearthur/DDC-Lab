-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Dec  8 07:46:23 2021
-- Host        : DESKTOP-O7RVSTA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/arthu/DigitalConceptsLab/Lab5/Hexadecimal_Editor/Hexadecimal_Editor.srcs/sources_1/bd/design_1/ip/design_1_num_capture_4bit_0_0/design_1_num_capture_4bit_0_0_sim_netlist.vhdl
-- Design      : design_1_num_capture_4bit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_num_capture_4bit_0_0_num_capture_4bit is
  port (
    oWe : out STD_LOGIC;
    oData : out STD_LOGIC_VECTOR ( 3 downto 0 );
    oAddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC;
    iStop : in STD_LOGIC;
    iPush : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_num_capture_4bit_0_0_num_capture_4bit : entity is "num_capture_4bit";
end design_1_num_capture_4bit_0_0_num_capture_4bit;

architecture STRUCTURE of design_1_num_capture_4bit_0_0_num_capture_4bit is
  signal \FSM_onehot_rFSM_current[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_current[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_current[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_current[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_current[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_current_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_current_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_current_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_current_reg_n_0_[5]\ : STD_LOGIC;
  signal \^owe\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \rAddr[9]_i_2_n_0\ : STD_LOGIC;
  signal rAddr_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rNumberCurr : STD_LOGIC;
  signal rNumberCurr_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_current[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_current[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_current[5]_i_1\ : label is "soft_lutpair9";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_current_reg[0]\ : label is "sInit:000001,sIdle:000010,sPush:000100,sChange:001000,sData:010000,sAddr:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_current_reg[1]\ : label is "sInit:000001,sIdle:000010,sPush:000100,sChange:001000,sData:010000,sAddr:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_current_reg[2]\ : label is "sInit:000001,sIdle:000010,sPush:000100,sChange:001000,sData:010000,sAddr:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_current_reg[3]\ : label is "sInit:000001,sIdle:000010,sPush:000100,sChange:001000,sData:010000,sAddr:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_current_reg[4]\ : label is "sInit:000001,sIdle:000010,sPush:000100,sChange:001000,sData:010000,sAddr:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_current_reg[5]\ : label is "sInit:000001,sIdle:000010,sPush:000100,sChange:001000,sData:010000,sAddr:100000";
  attribute SOFT_HLUTNM of \oAddr[0]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \oAddr[1]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \oAddr[2]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \oAddr[3]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \oAddr[4]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \oAddr[5]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \oAddr[6]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \oAddr[7]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \oAddr[8]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \oData[0]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \oData[1]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \oData[2]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \oData[3]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rAddr[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rAddr[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rAddr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rAddr[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rAddr[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rAddr[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rAddr[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rAddr[9]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rNumberCurr[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rNumberCurr[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rNumberCurr[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rNumberCurr[3]_i_1\ : label is "soft_lutpair2";
begin
  oWe <= \^owe\;
\FSM_onehot_rFSM_current[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEEEFE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_current_reg_n_0_[3]\,
      I1 => rNumberCurr,
      I2 => \FSM_onehot_rFSM_current_reg_n_0_[1]\,
      I3 => iStop,
      I4 => iPush,
      I5 => \FSM_onehot_rFSM_current_reg_n_0_[5]\,
      O => \FSM_onehot_rFSM_current[1]_i_1_n_0\
    );
\FSM_onehot_rFSM_current[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_current_reg_n_0_[1]\,
      I1 => iPush,
      I2 => \FSM_onehot_rFSM_current_reg_n_0_[2]\,
      O => \FSM_onehot_rFSM_current[2]_i_1_n_0\
    );
\FSM_onehot_rFSM_current[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_rFSM_current_reg_n_0_[2]\,
      I1 => iPush,
      O => \FSM_onehot_rFSM_current[3]_i_1_n_0\
    );
\FSM_onehot_rFSM_current[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F040"
    )
        port map (
      I0 => iPush,
      I1 => \FSM_onehot_rFSM_current_reg_n_0_[1]\,
      I2 => iStop,
      I3 => \^owe\,
      O => \FSM_onehot_rFSM_current[4]_i_1_n_0\
    );
\FSM_onehot_rFSM_current[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^owe\,
      I1 => iStop,
      O => \FSM_onehot_rFSM_current[5]_i_1_n_0\
    );
\FSM_onehot_rFSM_current_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => '1',
      D => '0',
      Q => rNumberCurr,
      S => iRst
    );
\FSM_onehot_rFSM_current_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_current[1]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_current_reg_n_0_[1]\,
      R => iRst
    );
\FSM_onehot_rFSM_current_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_current[2]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_current_reg_n_0_[2]\,
      R => iRst
    );
\FSM_onehot_rFSM_current_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_current[3]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_current_reg_n_0_[3]\,
      R => iRst
    );
\FSM_onehot_rFSM_current_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_current[4]_i_1_n_0\,
      Q => \^owe\,
      R => iRst
    );
\FSM_onehot_rFSM_current_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_current[5]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_current_reg_n_0_[5]\,
      R => iRst
    );
\oAddr[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^owe\,
      I1 => rAddr_reg(0),
      O => oAddr(0)
    );
\oAddr[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^owe\,
      I1 => rAddr_reg(1),
      O => oAddr(1)
    );
\oAddr[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^owe\,
      I1 => rAddr_reg(2),
      O => oAddr(2)
    );
\oAddr[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^owe\,
      I1 => rAddr_reg(3),
      O => oAddr(3)
    );
\oAddr[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^owe\,
      I1 => rAddr_reg(4),
      O => oAddr(4)
    );
\oAddr[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^owe\,
      I1 => rAddr_reg(5),
      O => oAddr(5)
    );
\oAddr[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^owe\,
      I1 => rAddr_reg(6),
      O => oAddr(6)
    );
\oAddr[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^owe\,
      I1 => rAddr_reg(7),
      O => oAddr(7)
    );
\oAddr[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^owe\,
      I1 => rAddr_reg(8),
      O => oAddr(8)
    );
\oAddr[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^owe\,
      I1 => rAddr_reg(9),
      O => oAddr(9)
    );
\oData[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^owe\,
      I1 => rNumberCurr_reg(0),
      O => oData(0)
    );
\oData[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^owe\,
      I1 => rNumberCurr_reg(1),
      O => oData(1)
    );
\oData[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^owe\,
      I1 => rNumberCurr_reg(2),
      O => oData(2)
    );
\oData[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^owe\,
      I1 => rNumberCurr_reg(3),
      O => oData(3)
    );
\rAddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rAddr_reg(0),
      O => \p_0_in__0\(0)
    );
\rAddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rAddr_reg(0),
      I1 => rAddr_reg(1),
      O => \p_0_in__0\(1)
    );
\rAddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rAddr_reg(0),
      I1 => rAddr_reg(1),
      I2 => rAddr_reg(2),
      O => \p_0_in__0\(2)
    );
\rAddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rAddr_reg(1),
      I1 => rAddr_reg(0),
      I2 => rAddr_reg(2),
      I3 => rAddr_reg(3),
      O => \p_0_in__0\(3)
    );
\rAddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rAddr_reg(2),
      I1 => rAddr_reg(0),
      I2 => rAddr_reg(1),
      I3 => rAddr_reg(3),
      I4 => rAddr_reg(4),
      O => \p_0_in__0\(4)
    );
\rAddr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rAddr_reg(3),
      I1 => rAddr_reg(1),
      I2 => rAddr_reg(0),
      I3 => rAddr_reg(2),
      I4 => rAddr_reg(4),
      I5 => rAddr_reg(5),
      O => \p_0_in__0\(5)
    );
\rAddr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rAddr[9]_i_2_n_0\,
      I1 => rAddr_reg(6),
      O => \p_0_in__0\(6)
    );
\rAddr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \rAddr[9]_i_2_n_0\,
      I1 => rAddr_reg(6),
      I2 => rAddr_reg(7),
      O => \p_0_in__0\(7)
    );
\rAddr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rAddr_reg(6),
      I1 => \rAddr[9]_i_2_n_0\,
      I2 => rAddr_reg(7),
      I3 => rAddr_reg(8),
      O => \p_0_in__0\(8)
    );
\rAddr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rAddr_reg(7),
      I1 => \rAddr[9]_i_2_n_0\,
      I2 => rAddr_reg(6),
      I3 => rAddr_reg(8),
      I4 => rAddr_reg(9),
      O => \p_0_in__0\(9)
    );
\rAddr[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rAddr_reg(5),
      I1 => rAddr_reg(3),
      I2 => rAddr_reg(1),
      I3 => rAddr_reg(0),
      I4 => rAddr_reg(2),
      I5 => rAddr_reg(4),
      O => \rAddr[9]_i_2_n_0\
    );
\rAddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM_current_reg_n_0_[5]\,
      D => \p_0_in__0\(0),
      Q => rAddr_reg(0),
      R => rNumberCurr
    );
\rAddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM_current_reg_n_0_[5]\,
      D => \p_0_in__0\(1),
      Q => rAddr_reg(1),
      R => rNumberCurr
    );
\rAddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM_current_reg_n_0_[5]\,
      D => \p_0_in__0\(2),
      Q => rAddr_reg(2),
      R => rNumberCurr
    );
\rAddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM_current_reg_n_0_[5]\,
      D => \p_0_in__0\(3),
      Q => rAddr_reg(3),
      R => rNumberCurr
    );
\rAddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM_current_reg_n_0_[5]\,
      D => \p_0_in__0\(4),
      Q => rAddr_reg(4),
      R => rNumberCurr
    );
\rAddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM_current_reg_n_0_[5]\,
      D => \p_0_in__0\(5),
      Q => rAddr_reg(5),
      R => rNumberCurr
    );
\rAddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM_current_reg_n_0_[5]\,
      D => \p_0_in__0\(6),
      Q => rAddr_reg(6),
      R => rNumberCurr
    );
\rAddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM_current_reg_n_0_[5]\,
      D => \p_0_in__0\(7),
      Q => rAddr_reg(7),
      R => rNumberCurr
    );
\rAddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM_current_reg_n_0_[5]\,
      D => \p_0_in__0\(8),
      Q => rAddr_reg(8),
      R => rNumberCurr
    );
\rAddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM_current_reg_n_0_[5]\,
      D => \p_0_in__0\(9),
      Q => rAddr_reg(9),
      R => rNumberCurr
    );
\rNumberCurr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rNumberCurr_reg(0),
      O => p_0_in(0)
    );
\rNumberCurr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rNumberCurr_reg(0),
      I1 => rNumberCurr_reg(1),
      O => p_0_in(1)
    );
\rNumberCurr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rNumberCurr_reg(0),
      I1 => rNumberCurr_reg(1),
      I2 => rNumberCurr_reg(2),
      O => p_0_in(2)
    );
\rNumberCurr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rNumberCurr_reg(1),
      I1 => rNumberCurr_reg(0),
      I2 => rNumberCurr_reg(2),
      I3 => rNumberCurr_reg(3),
      O => p_0_in(3)
    );
\rNumberCurr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM_current_reg_n_0_[3]\,
      D => p_0_in(0),
      Q => rNumberCurr_reg(0),
      R => rNumberCurr
    );
\rNumberCurr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM_current_reg_n_0_[3]\,
      D => p_0_in(1),
      Q => rNumberCurr_reg(1),
      R => rNumberCurr
    );
\rNumberCurr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM_current_reg_n_0_[3]\,
      D => p_0_in(2),
      Q => rNumberCurr_reg(2),
      R => rNumberCurr
    );
\rNumberCurr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \FSM_onehot_rFSM_current_reg_n_0_[3]\,
      D => p_0_in(3),
      Q => rNumberCurr_reg(3),
      R => rNumberCurr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_num_capture_4bit_0_0 is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iPush : in STD_LOGIC;
    iStop : in STD_LOGIC;
    oAddr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    oData : out STD_LOGIC_VECTOR ( 11 downto 0 );
    oWe : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_num_capture_4bit_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_num_capture_4bit_0_0 : entity is "design_1_num_capture_4bit_0_0,num_capture_4bit,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_num_capture_4bit_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_num_capture_4bit_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_num_capture_4bit_0_0 : entity is "num_capture_4bit,Vivado 2020.1";
end design_1_num_capture_4bit_0_0;

architecture STRUCTURE of design_1_num_capture_4bit_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^odata\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  oData(11) <= \<const0>\;
  oData(10) <= \<const0>\;
  oData(9) <= \<const0>\;
  oData(8) <= \<const0>\;
  oData(7) <= \<const0>\;
  oData(6) <= \<const0>\;
  oData(5) <= \<const0>\;
  oData(4) <= \<const0>\;
  oData(3 downto 0) <= \^odata\(3 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_num_capture_4bit_0_0_num_capture_4bit
     port map (
      iClk => iClk,
      iPush => iPush,
      iRst => iRst,
      iStop => iStop,
      oAddr(9 downto 0) => oAddr(9 downto 0),
      oData(3 downto 0) => \^odata\(3 downto 0),
      oWe => oWe
    );
end STRUCTURE;
