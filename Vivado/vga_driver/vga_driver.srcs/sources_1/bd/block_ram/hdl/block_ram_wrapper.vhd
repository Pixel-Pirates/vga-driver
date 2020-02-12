--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Wed Jan 22 22:12:48 2020
--Host        : WINDOWS-TOMEK running 64-bit major release  (build 9200)
--Command     : generate_target block_ram_wrapper.bd
--Design      : block_ram_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity block_ram_wrapper is
end block_ram_wrapper;

architecture STRUCTURE of block_ram_wrapper is
  component block_ram is
  end component block_ram;
begin
block_ram_i: component block_ram
 ;
end STRUCTURE;
