--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Wed Jan 22 22:12:48 2020
--Host        : WINDOWS-TOMEK running 64-bit major release  (build 9200)
--Command     : generate_target block_ram.bd
--Design      : block_ram
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_ram is
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of block_ram : entity is "block_ram,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=block_ram,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of block_ram : entity is "block_ram.hwdef";
end block_ram;

architecture STRUCTURE of block_ram is
  component block_ram_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 18 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 18 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 8 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component block_ram_blk_mem_gen_0_0;
  signal NLW_blk_mem_gen_0_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_blk_mem_gen_0_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
begin
blk_mem_gen_0: component block_ram_blk_mem_gen_0_0
     port map (
      addra(18 downto 0) => B"0000000000000000000",
      addrb(18 downto 0) => B"0000000000000000000",
      clka => '0',
      clkb => '0',
      dina(8 downto 0) => B"000001000",
      dinb(8 downto 0) => B"000001000",
      douta(8 downto 0) => NLW_blk_mem_gen_0_douta_UNCONNECTED(8 downto 0),
      doutb(8 downto 0) => NLW_blk_mem_gen_0_doutb_UNCONNECTED(8 downto 0),
      ena => '0',
      enb => '0',
      wea(0) => '0',
      web(0) => '0'
    );
end STRUCTURE;
