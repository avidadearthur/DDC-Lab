-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Nov  9 17:46:46 2021
-- Host        : len-x1c6 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Teaching/Courses/2021_DDC/Labs/Lab4/Vivado_LED_toggling/Vivado_LED_toggling.srcs/sources_1/bd/design_1/ip/design_1_LED_toggling_FSM_0_0/design_1_LED_toggling_FSM_0_0_sim_netlist.vhdl
-- Design      : design_1_LED_toggling_FSM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_LED_toggling_FSM_0_0_LED_toggling_FSM is
  port (
    oLED : out STD_LOGIC;
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC;
    iPush : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_LED_toggling_FSM_0_0_LED_toggling_FSM : entity is "LED_toggling_FSM";
end design_1_LED_toggling_FSM_0_0_LED_toggling_FSM;

architecture STRUCTURE of design_1_LED_toggling_FSM_0_0_LED_toggling_FSM is
  signal \FSM_onehot_rFSM_current[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_current[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_current[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_current_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_current_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_current_reg_n_0_[3]\ : STD_LOGIC;
  signal \^oled\ : STD_LOGIC;
  signal rToggle_current_i_1_n_0 : STD_LOGIC;
  signal wToggle_next : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_current[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_current[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_current_reg[0]\ : label is "sInit:0001,sIdle:0010,sToggle:1000,sPush:0100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_current_reg[1]\ : label is "sInit:0001,sIdle:0010,sToggle:1000,sPush:0100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_current_reg[2]\ : label is "sInit:0001,sIdle:0010,sToggle:1000,sPush:0100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_current_reg[3]\ : label is "sInit:0001,sIdle:0010,sToggle:1000,sPush:0100";
begin
  oLED <= \^oled\;
\FSM_onehot_rFSM_current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => wToggle_next,
      I1 => \FSM_onehot_rFSM_current_reg_n_0_[1]\,
      I2 => iPush,
      I3 => \FSM_onehot_rFSM_current_reg_n_0_[3]\,
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
\FSM_onehot_rFSM_current_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => '1',
      D => '0',
      Q => wToggle_next,
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
rToggle_current_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^oled\,
      I1 => \FSM_onehot_rFSM_current_reg_n_0_[3]\,
      I2 => wToggle_next,
      O => rToggle_current_i_1_n_0
    );
rToggle_current_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rToggle_current_i_1_n_0,
      Q => \^oled\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_LED_toggling_FSM_0_0 is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iPush : in STD_LOGIC;
    oLED : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_LED_toggling_FSM_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_LED_toggling_FSM_0_0 : entity is "design_1_LED_toggling_FSM_0_0,LED_toggling_FSM,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_LED_toggling_FSM_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_LED_toggling_FSM_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_LED_toggling_FSM_0_0 : entity is "LED_toggling_FSM,Vivado 2020.1";
end design_1_LED_toggling_FSM_0_0;

architecture STRUCTURE of design_1_LED_toggling_FSM_0_0 is
begin
inst: entity work.design_1_LED_toggling_FSM_0_0_LED_toggling_FSM
     port map (
      iClk => iClk,
      iPush => iPush,
      iRst => iRst,
      oLED => oLED
    );
end STRUCTURE;
