-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Dec  8 07:46:23 2021
-- Host        : DESKTOP-O7RVSTA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/arthu/DigitalConceptsLab/Lab5/Hexadecimal_Editor/Hexadecimal_Editor.srcs/sources_1/bd/design_1/ip/design_1_ScreenBufferMem_0_0/design_1_ScreenBufferMem_0_0_sim_netlist.vhdl
-- Design      : design_1_ScreenBufferMem_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ScreenBufferMem_0_0_ScreenBufferMem is
  port (
    oDataB : out STD_LOGIC_VECTOR ( 11 downto 0 );
    oDataA : out STD_LOGIC_VECTOR ( 11 downto 0 );
    iClk : in STD_LOGIC;
    iAddrB : in STD_LOGIC_VECTOR ( 9 downto 0 );
    iAddrA : in STD_LOGIC_VECTOR ( 9 downto 0 );
    iDataB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    iWeB : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ScreenBufferMem_0_0_ScreenBufferMem : entity is "ScreenBufferMem";
end design_1_ScreenBufferMem_0_0_ScreenBufferMem;

architecture STRUCTURE of design_1_ScreenBufferMem_0_0_ScreenBufferMem is
  signal NLW_rMem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal NLW_rMem_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal NLW_rMem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rMem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of rMem_reg : label is "p0_d12";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of rMem_reg : label is "p0_d12";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of rMem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of rMem_reg : label is 7200;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of rMem_reg : label is "inst/rMem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of rMem_reg : label is "RAM_TDP";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of rMem_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of rMem_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of rMem_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of rMem_reg : label is 11;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of rMem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of rMem_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of rMem_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of rMem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of rMem_reg : label is 11;
begin
rMem_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 4) => iAddrB(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 4) => iAddrA(9 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => iClk,
      CLKBWRCLK => iClk,
      DIADI(15 downto 12) => B"0000",
      DIADI(11 downto 0) => iDataB(11 downto 0),
      DIBDI(15 downto 0) => B"0000111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 12) => NLW_rMem_reg_DOADO_UNCONNECTED(15 downto 12),
      DOADO(11 downto 0) => oDataB(11 downto 0),
      DOBDO(15 downto 12) => NLW_rMem_reg_DOBDO_UNCONNECTED(15 downto 12),
      DOBDO(11 downto 0) => oDataA(11 downto 0),
      DOPADOP(1 downto 0) => NLW_rMem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_rMem_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => iWeB,
      WEA(0) => iWeB,
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ScreenBufferMem_0_0 is
  port (
    iClk : in STD_LOGIC;
    iAddrA : in STD_LOGIC_VECTOR ( 9 downto 0 );
    iAddrB : in STD_LOGIC_VECTOR ( 9 downto 0 );
    iDataB : in STD_LOGIC_VECTOR ( 11 downto 0 );
    iWeB : in STD_LOGIC;
    oDataA : out STD_LOGIC_VECTOR ( 11 downto 0 );
    oDataB : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ScreenBufferMem_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ScreenBufferMem_0_0 : entity is "design_1_ScreenBufferMem_0_0,ScreenBufferMem,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ScreenBufferMem_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_ScreenBufferMem_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ScreenBufferMem_0_0 : entity is "ScreenBufferMem,Vivado 2020.1";
end design_1_ScreenBufferMem_0_0;

architecture STRUCTURE of design_1_ScreenBufferMem_0_0 is
begin
inst: entity work.design_1_ScreenBufferMem_0_0_ScreenBufferMem
     port map (
      iAddrA(9 downto 0) => iAddrA(9 downto 0),
      iAddrB(9 downto 0) => iAddrB(9 downto 0),
      iClk => iClk,
      iDataB(11 downto 0) => iDataB(11 downto 0),
      iWeB => iWeB,
      oDataA(11 downto 0) => oDataA(11 downto 0),
      oDataB(11 downto 0) => oDataB(11 downto 0)
    );
end STRUCTURE;
