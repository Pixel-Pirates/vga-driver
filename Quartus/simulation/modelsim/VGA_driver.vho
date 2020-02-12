-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "01/22/2020 16:29:15"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	R : OUT std_logic_vector(3 DOWNTO 0);
	G : OUT std_logic_vector(3 DOWNTO 0);
	B : OUT std_logic_vector(3 DOWNTO 0)
	);
END vga;

-- Design Ports Information
-- R[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[1]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[2]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G[3]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a80_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a80_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a68_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a68_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a92_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a92_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a81_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a81_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a69_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a93_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a93_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a82_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a82_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a70_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a70_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a94_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a94_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a83_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a83_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a71_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a71_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a95_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a95_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a76_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a76_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a64_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a64_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a88_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a88_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a77_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a77_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a65_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a65_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a89_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a89_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a78_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a78_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a66_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a66_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a90_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a79_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a79_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a67_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a91_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a91_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a72_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a84_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a73_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a73_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a85_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a85_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a74_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a74_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a86_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a86_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a75_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a75_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a87_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a87_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U_CLK|by2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \G[0]~output_o\ : std_logic;
SIGNAL \G[1]~output_o\ : std_logic;
SIGNAL \G[2]~output_o\ : std_logic;
SIGNAL \G[3]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_CLK|by2~0_combout\ : std_logic;
SIGNAL \U_CLK|by2~feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_CLK|by2~q\ : std_logic;
SIGNAL \U_CLK|by2~clkctrl_outclk\ : std_logic;
SIGNAL \U_COUNTER|Add0~13\ : std_logic;
SIGNAL \U_COUNTER|Add0~14_combout\ : std_logic;
SIGNAL \U_COUNTER|Add1~0_combout\ : std_logic;
SIGNAL \U_COUNTER|Add1~1\ : std_logic;
SIGNAL \U_COUNTER|Add1~2_combout\ : std_logic;
SIGNAL \U_COUNTER|Add1~3\ : std_logic;
SIGNAL \U_COUNTER|Add1~4_combout\ : std_logic;
SIGNAL \U_COUNTER|Add1~5\ : std_logic;
SIGNAL \U_COUNTER|Add1~6_combout\ : std_logic;
SIGNAL \U_COUNTER|Add1~7\ : std_logic;
SIGNAL \U_COUNTER|Add1~8_combout\ : std_logic;
SIGNAL \U_COUNTER|Add1~9\ : std_logic;
SIGNAL \U_COUNTER|Add1~10_combout\ : std_logic;
SIGNAL \U_COUNTER|x_cnt~1_combout\ : std_logic;
SIGNAL \U_COUNTER|Add1~11\ : std_logic;
SIGNAL \U_COUNTER|Add1~12_combout\ : std_logic;
SIGNAL \U_COUNTER|Add1~13\ : std_logic;
SIGNAL \U_COUNTER|Add1~14_combout\ : std_logic;
SIGNAL \U_COUNTER|Add1~15\ : std_logic;
SIGNAL \U_COUNTER|Add1~16_combout\ : std_logic;
SIGNAL \U_COUNTER|x_cnt~0_combout\ : std_logic;
SIGNAL \U_COUNTER|Add1~17\ : std_logic;
SIGNAL \U_COUNTER|Add1~18_combout\ : std_logic;
SIGNAL \U_COUNTER|x_cnt~2_combout\ : std_logic;
SIGNAL \U_COUNTER|Equal0~0_combout\ : std_logic;
SIGNAL \U_COUNTER|Equal0~1_combout\ : std_logic;
SIGNAL \U_COUNTER|Equal0~2_combout\ : std_logic;
SIGNAL \U_SYNC_GEN|valid_out~1_combout\ : std_logic;
SIGNAL \U_COUNTER|Add0~0_combout\ : std_logic;
SIGNAL \U_COUNTER|y_cnt~1_combout\ : std_logic;
SIGNAL \U_COUNTER|Add0~1\ : std_logic;
SIGNAL \U_COUNTER|Add0~2_combout\ : std_logic;
SIGNAL \U_COUNTER|Add0~3\ : std_logic;
SIGNAL \U_COUNTER|Add0~4_combout\ : std_logic;
SIGNAL \U_COUNTER|y_cnt~2_combout\ : std_logic;
SIGNAL \U_COUNTER|Add0~15\ : std_logic;
SIGNAL \U_COUNTER|Add0~16_combout\ : std_logic;
SIGNAL \U_COUNTER|Add0~17\ : std_logic;
SIGNAL \U_COUNTER|Add0~18_combout\ : std_logic;
SIGNAL \U_COUNTER|y_cnt~0_combout\ : std_logic;
SIGNAL \U_COUNTER|Equal1~0_combout\ : std_logic;
SIGNAL \U_COUNTER|Equal1~1_combout\ : std_logic;
SIGNAL \U_COUNTER|Add0~5\ : std_logic;
SIGNAL \U_COUNTER|Add0~6_combout\ : std_logic;
SIGNAL \U_COUNTER|y_cnt~3_combout\ : std_logic;
SIGNAL \U_COUNTER|Add0~7\ : std_logic;
SIGNAL \U_COUNTER|Add0~8_combout\ : std_logic;
SIGNAL \U_COUNTER|Add0~9\ : std_logic;
SIGNAL \U_COUNTER|Add0~10_combout\ : std_logic;
SIGNAL \U_COUNTER|Add0~11\ : std_logic;
SIGNAL \U_COUNTER|Add0~12_combout\ : std_logic;
SIGNAL \U_SYNC_GEN|valid_out~4_combout\ : std_logic;
SIGNAL \U_SYNC_GEN|process_0~0_combout\ : std_logic;
SIGNAL \U_SYNC_GEN|valid_out~3_combout\ : std_logic;
SIGNAL \U_SYNC_GEN|valid_out~2_combout\ : std_logic;
SIGNAL \U_SYNC_GEN|process_0~1_combout\ : std_logic;
SIGNAL \U_SYNC_GEN|LessThan1~0_combout\ : std_logic;
SIGNAL \U_SYNC_GEN|valid_out~0_combout\ : std_logic;
SIGNAL \U_SYNC_GEN|valid_out~5_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode444w[3]~0_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~0_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~2_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~1\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~3_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~5_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~4\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~6_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~8_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~7\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~9_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~11_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~10\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~12_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~14_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~13\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~15_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~17_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~16\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~18_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~20_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~19\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~21_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~23_combout\ : std_logic;
SIGNAL \U_SYNC_GEN|valid_out~6_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~22\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~24_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|Add1~26_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|addr[9]~0_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|addr[10]~1_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|addr[11]~2_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|addr[12]~3_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a44~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~1_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode407w[3]~0_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~0_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~1_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a32~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~2_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~3_combout\ : std_logic;
SIGNAL \U_ADDR_GEN|addr[15]~4_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a92~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a80~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a56~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a68~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~0_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~1_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~4_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a93~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a81~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a69~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a57~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~5_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~6_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a33~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~7_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a45~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~8_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~9_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a46~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a34~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~12_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~13_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a82~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a94~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a58~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a70~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~10_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~11_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~14_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a47~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a35~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~17_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~18_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a95~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a59~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a71~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~15_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a83~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~16_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~19_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a88~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a52~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a64~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~20_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a76~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~21_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~22_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a40~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~23_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~24_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a77~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a89~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a65~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a53~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~25_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~26_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a41~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~27_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~28_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~29_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a54~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a66~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~30_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a90~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a78~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~31_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~32_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a42~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~33_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~34_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a91~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a67~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a55~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~35_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a79~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~36_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~37_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a43~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~38_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~39_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a36~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~42_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~43_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a72~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a60~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a48~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~40_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a84~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~41_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~44_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a37~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~47_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~48_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a49~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a61~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~45_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a73~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a85~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~46_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~49_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a38~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~52_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~53_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a62~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a50~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~50_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a74~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a86~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~51_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~54_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~57_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a39~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~58_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a63~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a51~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~55_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a87~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a75~portadataout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~56_combout\ : std_logic;
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~59_combout\ : std_logic;
SIGNAL \U_COUNTER|y_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode484w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_COUNTER|x_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode474w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode464w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode454w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
R <= ww_R;
G <= ww_G;
B <= ww_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a80_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a80~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a80_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a68_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a68~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a68_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a56~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a92_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a92~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a92_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a20~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a32~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a44~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a81_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a81~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a81_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a69_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a69~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a57~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a93_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a93~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a93_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a21~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a33~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a45~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a82_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a82~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a82_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a70_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a70~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a70_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a58~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a94_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a94~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a94_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a22~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a34~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a46~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a83_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a83~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a83_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a71_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a71~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a71_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a59~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a95_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a95~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a95_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a23~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a35~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a47~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a76_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a76~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a76_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a64_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a64~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a64_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a52~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a88_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a88~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a88_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a16~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a28~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a40~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a77_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a77~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a77_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a65_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a65~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a65_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a53~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a89_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a89~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a89_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a17~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a29~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a41~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a78_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a78~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a78_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a66_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a66~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a66_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a54~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a90_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a90~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a18~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a30~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a42~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a79_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a79~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a79_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a67_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a67~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a55~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a91_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a91~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a91_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a19~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a31~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a43~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a72_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a72~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a60~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a48~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a84_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a84~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a24~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a36~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a73_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a73~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a73_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a61~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a49~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a85_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a85~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a85_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a25~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a37~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a74_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a74~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a74_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a62~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a50~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a86_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a86~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a86_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a26~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a38~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a75_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a75~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a75_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a63~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a51~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a87_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a87~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a87_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a27~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\U_ADDR_GEN|addr[12]~3_combout\ & \U_ADDR_GEN|addr[11]~2_combout\ & \U_ADDR_GEN|addr[10]~1_combout\ & \U_ADDR_GEN|addr[9]~0_combout\ & \U_ADDR_GEN|Add1~26_combout\ & 
\U_ADDR_GEN|Add1~23_combout\ & \U_ADDR_GEN|Add1~20_combout\ & \U_ADDR_GEN|Add1~17_combout\ & \U_ADDR_GEN|Add1~14_combout\ & \U_ADDR_GEN|Add1~11_combout\ & \U_ADDR_GEN|Add1~8_combout\ & \U_ADDR_GEN|Add1~5_combout\ & \U_ADDR_GEN|Add1~2_combout\);

\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a39~portadataout\ <= \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\(0);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\U_CLK|by2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_CLK|by2~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X78_Y20_N16
\R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~4_combout\,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~9_combout\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~14_combout\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\R[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~19_combout\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\G[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~24_combout\,
	devoe => ww_devoe,
	o => \G[0]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\G[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~29_combout\,
	devoe => ww_devoe,
	o => \G[1]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\G[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~34_combout\,
	devoe => ww_devoe,
	o => \G[2]~output_o\);

-- Location: IOOBUF_X78_Y23_N23
\G[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~39_combout\,
	devoe => ww_devoe,
	o => \G[3]~output_o\);

-- Location: IOOBUF_X78_Y21_N16
\B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~44_combout\,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~49_combout\,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~54_combout\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~59_combout\,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X45_Y1_N18
\U_CLK|by2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK|by2~0_combout\ = !\U_CLK|by2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLK|by2~q\,
	combout => \U_CLK|by2~0_combout\);

-- Location: LCCOMB_X45_Y1_N0
\U_CLK|by2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK|by2~feeder_combout\ = \U_CLK|by2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLK|by2~0_combout\,
	combout => \U_CLK|by2~feeder_combout\);

-- Location: IOIBUF_X0_Y18_N22
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G1
\rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X45_Y1_N1
\U_CLK|by2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_CLK|by2~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK|by2~q\);

-- Location: CLKCTRL_G16
\U_CLK|by2~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_CLK|by2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_CLK|by2~clkctrl_outclk\);

-- Location: LCCOMB_X58_Y24_N18
\U_COUNTER|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add0~12_combout\ = (\U_COUNTER|y_cnt\(6) & (\U_COUNTER|Add0~11\ $ (GND))) # (!\U_COUNTER|y_cnt\(6) & (!\U_COUNTER|Add0~11\ & VCC))
-- \U_COUNTER|Add0~13\ = CARRY((\U_COUNTER|y_cnt\(6) & !\U_COUNTER|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|y_cnt\(6),
	datad => VCC,
	cin => \U_COUNTER|Add0~11\,
	combout => \U_COUNTER|Add0~12_combout\,
	cout => \U_COUNTER|Add0~13\);

-- Location: LCCOMB_X58_Y24_N20
\U_COUNTER|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add0~14_combout\ = (\U_COUNTER|y_cnt\(7) & (!\U_COUNTER|Add0~13\)) # (!\U_COUNTER|y_cnt\(7) & ((\U_COUNTER|Add0~13\) # (GND)))
-- \U_COUNTER|Add0~15\ = CARRY((!\U_COUNTER|Add0~13\) # (!\U_COUNTER|y_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(7),
	datad => VCC,
	cin => \U_COUNTER|Add0~13\,
	combout => \U_COUNTER|Add0~14_combout\,
	cout => \U_COUNTER|Add0~15\);

-- Location: LCCOMB_X56_Y24_N4
\U_COUNTER|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add1~0_combout\ = \U_COUNTER|x_cnt\(0) $ (VCC)
-- \U_COUNTER|Add1~1\ = CARRY(\U_COUNTER|x_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|x_cnt\(0),
	datad => VCC,
	combout => \U_COUNTER|Add1~0_combout\,
	cout => \U_COUNTER|Add1~1\);

-- Location: FF_X56_Y24_N5
\U_COUNTER|x_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|Add1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|x_cnt\(0));

-- Location: LCCOMB_X56_Y24_N6
\U_COUNTER|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add1~2_combout\ = (\U_COUNTER|x_cnt\(1) & (!\U_COUNTER|Add1~1\)) # (!\U_COUNTER|x_cnt\(1) & ((\U_COUNTER|Add1~1\) # (GND)))
-- \U_COUNTER|Add1~3\ = CARRY((!\U_COUNTER|Add1~1\) # (!\U_COUNTER|x_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|x_cnt\(1),
	datad => VCC,
	cin => \U_COUNTER|Add1~1\,
	combout => \U_COUNTER|Add1~2_combout\,
	cout => \U_COUNTER|Add1~3\);

-- Location: FF_X56_Y24_N7
\U_COUNTER|x_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|Add1~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|x_cnt\(1));

-- Location: LCCOMB_X56_Y24_N8
\U_COUNTER|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add1~4_combout\ = (\U_COUNTER|x_cnt\(2) & (\U_COUNTER|Add1~3\ $ (GND))) # (!\U_COUNTER|x_cnt\(2) & (!\U_COUNTER|Add1~3\ & VCC))
-- \U_COUNTER|Add1~5\ = CARRY((\U_COUNTER|x_cnt\(2) & !\U_COUNTER|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|x_cnt\(2),
	datad => VCC,
	cin => \U_COUNTER|Add1~3\,
	combout => \U_COUNTER|Add1~4_combout\,
	cout => \U_COUNTER|Add1~5\);

-- Location: FF_X56_Y24_N9
\U_COUNTER|x_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|Add1~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|x_cnt\(2));

-- Location: LCCOMB_X56_Y24_N10
\U_COUNTER|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add1~6_combout\ = (\U_COUNTER|x_cnt\(3) & (!\U_COUNTER|Add1~5\)) # (!\U_COUNTER|x_cnt\(3) & ((\U_COUNTER|Add1~5\) # (GND)))
-- \U_COUNTER|Add1~7\ = CARRY((!\U_COUNTER|Add1~5\) # (!\U_COUNTER|x_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|x_cnt\(3),
	datad => VCC,
	cin => \U_COUNTER|Add1~5\,
	combout => \U_COUNTER|Add1~6_combout\,
	cout => \U_COUNTER|Add1~7\);

-- Location: FF_X56_Y24_N11
\U_COUNTER|x_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|Add1~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|x_cnt\(3));

-- Location: LCCOMB_X56_Y24_N12
\U_COUNTER|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add1~8_combout\ = (\U_COUNTER|x_cnt\(4) & (\U_COUNTER|Add1~7\ $ (GND))) # (!\U_COUNTER|x_cnt\(4) & (!\U_COUNTER|Add1~7\ & VCC))
-- \U_COUNTER|Add1~9\ = CARRY((\U_COUNTER|x_cnt\(4) & !\U_COUNTER|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|x_cnt\(4),
	datad => VCC,
	cin => \U_COUNTER|Add1~7\,
	combout => \U_COUNTER|Add1~8_combout\,
	cout => \U_COUNTER|Add1~9\);

-- Location: FF_X56_Y24_N13
\U_COUNTER|x_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|Add1~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|x_cnt\(4));

-- Location: LCCOMB_X56_Y24_N14
\U_COUNTER|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add1~10_combout\ = (\U_COUNTER|x_cnt\(5) & (!\U_COUNTER|Add1~9\)) # (!\U_COUNTER|x_cnt\(5) & ((\U_COUNTER|Add1~9\) # (GND)))
-- \U_COUNTER|Add1~11\ = CARRY((!\U_COUNTER|Add1~9\) # (!\U_COUNTER|x_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|x_cnt\(5),
	datad => VCC,
	cin => \U_COUNTER|Add1~9\,
	combout => \U_COUNTER|Add1~10_combout\,
	cout => \U_COUNTER|Add1~11\);

-- Location: LCCOMB_X57_Y24_N10
\U_COUNTER|x_cnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|x_cnt~1_combout\ = (!\U_COUNTER|Equal0~2_combout\ & \U_COUNTER|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|Equal0~2_combout\,
	datad => \U_COUNTER|Add1~10_combout\,
	combout => \U_COUNTER|x_cnt~1_combout\);

-- Location: FF_X57_Y24_N11
\U_COUNTER|x_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|x_cnt~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|x_cnt\(5));

-- Location: LCCOMB_X56_Y24_N16
\U_COUNTER|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add1~12_combout\ = (\U_COUNTER|x_cnt\(6) & (\U_COUNTER|Add1~11\ $ (GND))) # (!\U_COUNTER|x_cnt\(6) & (!\U_COUNTER|Add1~11\ & VCC))
-- \U_COUNTER|Add1~13\ = CARRY((\U_COUNTER|x_cnt\(6) & !\U_COUNTER|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|x_cnt\(6),
	datad => VCC,
	cin => \U_COUNTER|Add1~11\,
	combout => \U_COUNTER|Add1~12_combout\,
	cout => \U_COUNTER|Add1~13\);

-- Location: FF_X56_Y24_N17
\U_COUNTER|x_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|Add1~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|x_cnt\(6));

-- Location: LCCOMB_X56_Y24_N18
\U_COUNTER|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add1~14_combout\ = (\U_COUNTER|x_cnt\(7) & (!\U_COUNTER|Add1~13\)) # (!\U_COUNTER|x_cnt\(7) & ((\U_COUNTER|Add1~13\) # (GND)))
-- \U_COUNTER|Add1~15\ = CARRY((!\U_COUNTER|Add1~13\) # (!\U_COUNTER|x_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|x_cnt\(7),
	datad => VCC,
	cin => \U_COUNTER|Add1~13\,
	combout => \U_COUNTER|Add1~14_combout\,
	cout => \U_COUNTER|Add1~15\);

-- Location: FF_X56_Y24_N19
\U_COUNTER|x_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|Add1~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|x_cnt\(7));

-- Location: LCCOMB_X56_Y24_N20
\U_COUNTER|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add1~16_combout\ = (\U_COUNTER|x_cnt\(8) & (\U_COUNTER|Add1~15\ $ (GND))) # (!\U_COUNTER|x_cnt\(8) & (!\U_COUNTER|Add1~15\ & VCC))
-- \U_COUNTER|Add1~17\ = CARRY((\U_COUNTER|x_cnt\(8) & !\U_COUNTER|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|x_cnt\(8),
	datad => VCC,
	cin => \U_COUNTER|Add1~15\,
	combout => \U_COUNTER|Add1~16_combout\,
	cout => \U_COUNTER|Add1~17\);

-- Location: LCCOMB_X57_Y24_N28
\U_COUNTER|x_cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|x_cnt~0_combout\ = (!\U_COUNTER|Equal0~2_combout\ & \U_COUNTER|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|Equal0~2_combout\,
	datad => \U_COUNTER|Add1~16_combout\,
	combout => \U_COUNTER|x_cnt~0_combout\);

-- Location: FF_X57_Y24_N29
\U_COUNTER|x_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|x_cnt~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|x_cnt\(8));

-- Location: LCCOMB_X56_Y24_N22
\U_COUNTER|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add1~18_combout\ = \U_COUNTER|Add1~17\ $ (\U_COUNTER|x_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_COUNTER|x_cnt\(9),
	cin => \U_COUNTER|Add1~17\,
	combout => \U_COUNTER|Add1~18_combout\);

-- Location: LCCOMB_X57_Y24_N26
\U_COUNTER|x_cnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|x_cnt~2_combout\ = (!\U_COUNTER|Equal0~2_combout\ & \U_COUNTER|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|Equal0~2_combout\,
	datad => \U_COUNTER|Add1~18_combout\,
	combout => \U_COUNTER|x_cnt~2_combout\);

-- Location: FF_X57_Y24_N27
\U_COUNTER|x_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|x_cnt~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|x_cnt\(9));

-- Location: LCCOMB_X56_Y24_N26
\U_COUNTER|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Equal0~0_combout\ = (!\U_COUNTER|x_cnt\(7) & (!\U_COUNTER|x_cnt\(6) & (!\U_COUNTER|x_cnt\(5) & \U_COUNTER|x_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|x_cnt\(7),
	datab => \U_COUNTER|x_cnt\(6),
	datac => \U_COUNTER|x_cnt\(5),
	datad => \U_COUNTER|x_cnt\(9),
	combout => \U_COUNTER|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y24_N28
\U_COUNTER|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Equal0~1_combout\ = (\U_COUNTER|x_cnt\(4) & (\U_COUNTER|x_cnt\(0) & (\U_COUNTER|x_cnt\(1) & \U_COUNTER|x_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|x_cnt\(4),
	datab => \U_COUNTER|x_cnt\(0),
	datac => \U_COUNTER|x_cnt\(1),
	datad => \U_COUNTER|x_cnt\(8),
	combout => \U_COUNTER|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y24_N2
\U_COUNTER|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Equal0~2_combout\ = (\U_COUNTER|x_cnt\(3) & (\U_COUNTER|x_cnt\(2) & (\U_COUNTER|Equal0~0_combout\ & \U_COUNTER|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|x_cnt\(3),
	datab => \U_COUNTER|x_cnt\(2),
	datac => \U_COUNTER|Equal0~0_combout\,
	datad => \U_COUNTER|Equal0~1_combout\,
	combout => \U_COUNTER|Equal0~2_combout\);

-- Location: FF_X57_Y24_N13
\U_COUNTER|y_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	asdata => \U_COUNTER|Add0~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_COUNTER|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|y_cnt\(7));

-- Location: LCCOMB_X58_Y24_N28
\U_SYNC_GEN|valid_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC_GEN|valid_out~1_combout\ = (!\U_COUNTER|y_cnt\(6) & (!\U_COUNTER|y_cnt\(4) & !\U_COUNTER|y_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|y_cnt\(6),
	datac => \U_COUNTER|y_cnt\(4),
	datad => \U_COUNTER|y_cnt\(5),
	combout => \U_SYNC_GEN|valid_out~1_combout\);

-- Location: LCCOMB_X58_Y24_N6
\U_COUNTER|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add0~0_combout\ = \U_COUNTER|y_cnt\(0) $ (VCC)
-- \U_COUNTER|Add0~1\ = CARRY(\U_COUNTER|y_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(0),
	datad => VCC,
	combout => \U_COUNTER|Add0~0_combout\,
	cout => \U_COUNTER|Add0~1\);

-- Location: LCCOMB_X58_Y24_N30
\U_COUNTER|y_cnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|y_cnt~1_combout\ = (\U_COUNTER|Add0~0_combout\ & (((\U_COUNTER|y_cnt\(7)) # (!\U_COUNTER|Equal1~1_combout\)) # (!\U_SYNC_GEN|valid_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|Add0~0_combout\,
	datab => \U_SYNC_GEN|valid_out~1_combout\,
	datac => \U_COUNTER|Equal1~1_combout\,
	datad => \U_COUNTER|y_cnt\(7),
	combout => \U_COUNTER|y_cnt~1_combout\);

-- Location: FF_X58_Y24_N31
\U_COUNTER|y_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|y_cnt~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_COUNTER|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|y_cnt\(0));

-- Location: LCCOMB_X58_Y24_N8
\U_COUNTER|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add0~2_combout\ = (\U_COUNTER|y_cnt\(1) & (!\U_COUNTER|Add0~1\)) # (!\U_COUNTER|y_cnt\(1) & ((\U_COUNTER|Add0~1\) # (GND)))
-- \U_COUNTER|Add0~3\ = CARRY((!\U_COUNTER|Add0~1\) # (!\U_COUNTER|y_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|y_cnt\(1),
	datad => VCC,
	cin => \U_COUNTER|Add0~1\,
	combout => \U_COUNTER|Add0~2_combout\,
	cout => \U_COUNTER|Add0~3\);

-- Location: FF_X58_Y24_N9
\U_COUNTER|y_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|Add0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_COUNTER|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|y_cnt\(1));

-- Location: LCCOMB_X58_Y24_N10
\U_COUNTER|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add0~4_combout\ = (\U_COUNTER|y_cnt\(2) & (\U_COUNTER|Add0~3\ $ (GND))) # (!\U_COUNTER|y_cnt\(2) & (!\U_COUNTER|Add0~3\ & VCC))
-- \U_COUNTER|Add0~5\ = CARRY((\U_COUNTER|y_cnt\(2) & !\U_COUNTER|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(2),
	datad => VCC,
	cin => \U_COUNTER|Add0~3\,
	combout => \U_COUNTER|Add0~4_combout\,
	cout => \U_COUNTER|Add0~5\);

-- Location: LCCOMB_X58_Y24_N26
\U_COUNTER|y_cnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|y_cnt~2_combout\ = (\U_COUNTER|Add0~4_combout\ & ((\U_COUNTER|y_cnt\(7)) # ((!\U_COUNTER|Equal1~1_combout\) # (!\U_SYNC_GEN|valid_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(7),
	datab => \U_SYNC_GEN|valid_out~1_combout\,
	datac => \U_COUNTER|Equal1~1_combout\,
	datad => \U_COUNTER|Add0~4_combout\,
	combout => \U_COUNTER|y_cnt~2_combout\);

-- Location: FF_X58_Y24_N27
\U_COUNTER|y_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|y_cnt~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_COUNTER|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|y_cnt\(2));

-- Location: LCCOMB_X58_Y24_N22
\U_COUNTER|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add0~16_combout\ = (\U_COUNTER|y_cnt\(8) & (\U_COUNTER|Add0~15\ $ (GND))) # (!\U_COUNTER|y_cnt\(8) & (!\U_COUNTER|Add0~15\ & VCC))
-- \U_COUNTER|Add0~17\ = CARRY((\U_COUNTER|y_cnt\(8) & !\U_COUNTER|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(8),
	datad => VCC,
	cin => \U_COUNTER|Add0~15\,
	combout => \U_COUNTER|Add0~16_combout\,
	cout => \U_COUNTER|Add0~17\);

-- Location: FF_X57_Y24_N17
\U_COUNTER|y_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	asdata => \U_COUNTER|Add0~16_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_COUNTER|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|y_cnt\(8));

-- Location: LCCOMB_X58_Y24_N24
\U_COUNTER|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add0~18_combout\ = \U_COUNTER|Add0~17\ $ (\U_COUNTER|y_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_COUNTER|y_cnt\(9),
	cin => \U_COUNTER|Add0~17\,
	combout => \U_COUNTER|Add0~18_combout\);

-- Location: LCCOMB_X57_Y24_N2
\U_COUNTER|y_cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|y_cnt~0_combout\ = (\U_COUNTER|Add0~18_combout\ & ((\U_COUNTER|y_cnt\(7)) # ((!\U_COUNTER|Equal1~1_combout\) # (!\U_SYNC_GEN|valid_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(7),
	datab => \U_SYNC_GEN|valid_out~1_combout\,
	datac => \U_COUNTER|Equal1~1_combout\,
	datad => \U_COUNTER|Add0~18_combout\,
	combout => \U_COUNTER|y_cnt~0_combout\);

-- Location: FF_X57_Y24_N3
\U_COUNTER|y_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|y_cnt~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_COUNTER|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|y_cnt\(9));

-- Location: LCCOMB_X58_Y24_N2
\U_COUNTER|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Equal1~0_combout\ = (\U_COUNTER|y_cnt\(9) & (\U_COUNTER|y_cnt\(3) & (!\U_COUNTER|y_cnt\(8) & !\U_COUNTER|y_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(9),
	datab => \U_COUNTER|y_cnt\(3),
	datac => \U_COUNTER|y_cnt\(8),
	datad => \U_COUNTER|y_cnt\(0),
	combout => \U_COUNTER|Equal1~0_combout\);

-- Location: LCCOMB_X59_Y24_N12
\U_COUNTER|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Equal1~1_combout\ = (!\U_COUNTER|y_cnt\(1) & (\U_COUNTER|y_cnt\(2) & \U_COUNTER|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(1),
	datac => \U_COUNTER|y_cnt\(2),
	datad => \U_COUNTER|Equal1~0_combout\,
	combout => \U_COUNTER|Equal1~1_combout\);

-- Location: LCCOMB_X58_Y24_N12
\U_COUNTER|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add0~6_combout\ = (\U_COUNTER|y_cnt\(3) & (!\U_COUNTER|Add0~5\)) # (!\U_COUNTER|y_cnt\(3) & ((\U_COUNTER|Add0~5\) # (GND)))
-- \U_COUNTER|Add0~7\ = CARRY((!\U_COUNTER|Add0~5\) # (!\U_COUNTER|y_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|y_cnt\(3),
	datad => VCC,
	cin => \U_COUNTER|Add0~5\,
	combout => \U_COUNTER|Add0~6_combout\,
	cout => \U_COUNTER|Add0~7\);

-- Location: LCCOMB_X58_Y24_N4
\U_COUNTER|y_cnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|y_cnt~3_combout\ = (\U_COUNTER|Add0~6_combout\ & ((\U_COUNTER|y_cnt\(7)) # ((!\U_COUNTER|Equal1~1_combout\) # (!\U_SYNC_GEN|valid_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(7),
	datab => \U_SYNC_GEN|valid_out~1_combout\,
	datac => \U_COUNTER|Equal1~1_combout\,
	datad => \U_COUNTER|Add0~6_combout\,
	combout => \U_COUNTER|y_cnt~3_combout\);

-- Location: FF_X58_Y24_N5
\U_COUNTER|y_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|y_cnt~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_COUNTER|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|y_cnt\(3));

-- Location: LCCOMB_X58_Y24_N14
\U_COUNTER|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add0~8_combout\ = (\U_COUNTER|y_cnt\(4) & (\U_COUNTER|Add0~7\ $ (GND))) # (!\U_COUNTER|y_cnt\(4) & (!\U_COUNTER|Add0~7\ & VCC))
-- \U_COUNTER|Add0~9\ = CARRY((\U_COUNTER|y_cnt\(4) & !\U_COUNTER|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|y_cnt\(4),
	datad => VCC,
	cin => \U_COUNTER|Add0~7\,
	combout => \U_COUNTER|Add0~8_combout\,
	cout => \U_COUNTER|Add0~9\);

-- Location: FF_X58_Y24_N15
\U_COUNTER|y_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|Add0~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_COUNTER|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|y_cnt\(4));

-- Location: LCCOMB_X58_Y24_N16
\U_COUNTER|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Add0~10_combout\ = (\U_COUNTER|y_cnt\(5) & (!\U_COUNTER|Add0~9\)) # (!\U_COUNTER|y_cnt\(5) & ((\U_COUNTER|Add0~9\) # (GND)))
-- \U_COUNTER|Add0~11\ = CARRY((!\U_COUNTER|Add0~9\) # (!\U_COUNTER|y_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|y_cnt\(5),
	datad => VCC,
	cin => \U_COUNTER|Add0~9\,
	combout => \U_COUNTER|Add0~10_combout\,
	cout => \U_COUNTER|Add0~11\);

-- Location: FF_X58_Y24_N17
\U_COUNTER|y_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|Add0~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_COUNTER|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|y_cnt\(5));

-- Location: FF_X58_Y24_N19
\U_COUNTER|y_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK|by2~clkctrl_outclk\,
	d => \U_COUNTER|Add0~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U_COUNTER|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|y_cnt\(6));

-- Location: LCCOMB_X57_Y24_N6
\U_SYNC_GEN|valid_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC_GEN|valid_out~4_combout\ = (\U_COUNTER|y_cnt\(8) & (\U_COUNTER|y_cnt\(9) & ((\U_COUNTER|y_cnt\(7)) # (!\U_SYNC_GEN|valid_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(7),
	datab => \U_COUNTER|y_cnt\(8),
	datac => \U_COUNTER|y_cnt\(9),
	datad => \U_SYNC_GEN|valid_out~1_combout\,
	combout => \U_SYNC_GEN|valid_out~4_combout\);

-- Location: LCCOMB_X57_Y24_N20
\U_SYNC_GEN|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC_GEN|process_0~0_combout\ = (!\U_COUNTER|x_cnt\(5) & (!\U_COUNTER|x_cnt\(8) & (!\U_COUNTER|x_cnt\(6) & !\U_COUNTER|x_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|x_cnt\(5),
	datab => \U_COUNTER|x_cnt\(8),
	datac => \U_COUNTER|x_cnt\(6),
	datad => \U_COUNTER|x_cnt\(7),
	combout => \U_SYNC_GEN|process_0~0_combout\);

-- Location: LCCOMB_X57_Y24_N8
\U_SYNC_GEN|valid_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC_GEN|valid_out~3_combout\ = (\U_COUNTER|x_cnt\(9) & !\U_SYNC_GEN|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_COUNTER|x_cnt\(9),
	datad => \U_SYNC_GEN|process_0~0_combout\,
	combout => \U_SYNC_GEN|valid_out~3_combout\);

-- Location: LCCOMB_X57_Y24_N14
\U_SYNC_GEN|valid_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC_GEN|valid_out~2_combout\ = (!\U_COUNTER|y_cnt\(8) & (!\U_COUNTER|y_cnt\(9) & ((\U_SYNC_GEN|valid_out~1_combout\) # (!\U_COUNTER|y_cnt\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(7),
	datab => \U_COUNTER|y_cnt\(8),
	datac => \U_COUNTER|y_cnt\(9),
	datad => \U_SYNC_GEN|valid_out~1_combout\,
	combout => \U_SYNC_GEN|valid_out~2_combout\);

-- Location: LCCOMB_X57_Y24_N4
\U_SYNC_GEN|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC_GEN|process_0~1_combout\ = (!\U_COUNTER|x_cnt\(9) & (!\U_COUNTER|x_cnt\(8) & (!\U_COUNTER|x_cnt\(6) & !\U_COUNTER|x_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|x_cnt\(9),
	datab => \U_COUNTER|x_cnt\(8),
	datac => \U_COUNTER|x_cnt\(6),
	datad => \U_COUNTER|x_cnt\(7),
	combout => \U_SYNC_GEN|process_0~1_combout\);

-- Location: LCCOMB_X56_Y24_N0
\U_SYNC_GEN|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC_GEN|LessThan1~0_combout\ = (!\U_COUNTER|x_cnt\(4) & (!\U_COUNTER|x_cnt\(3) & ((!\U_COUNTER|x_cnt\(0)) # (!\U_COUNTER|x_cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|x_cnt\(4),
	datab => \U_COUNTER|x_cnt\(1),
	datac => \U_COUNTER|x_cnt\(0),
	datad => \U_COUNTER|x_cnt\(3),
	combout => \U_SYNC_GEN|LessThan1~0_combout\);

-- Location: LCCOMB_X57_Y24_N18
\U_SYNC_GEN|valid_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC_GEN|valid_out~0_combout\ = (\U_COUNTER|x_cnt\(2) & (((\U_SYNC_GEN|process_0~0_combout\)))) # (!\U_COUNTER|x_cnt\(2) & ((\U_SYNC_GEN|LessThan1~0_combout\ & (\U_SYNC_GEN|process_0~1_combout\)) # (!\U_SYNC_GEN|LessThan1~0_combout\ & 
-- ((\U_SYNC_GEN|process_0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|x_cnt\(2),
	datab => \U_SYNC_GEN|process_0~1_combout\,
	datac => \U_SYNC_GEN|LessThan1~0_combout\,
	datad => \U_SYNC_GEN|process_0~0_combout\,
	combout => \U_SYNC_GEN|valid_out~0_combout\);

-- Location: LCCOMB_X57_Y24_N24
\U_SYNC_GEN|valid_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC_GEN|valid_out~5_combout\ = (\U_SYNC_GEN|valid_out~4_combout\) # ((\U_SYNC_GEN|valid_out~3_combout\) # ((\U_SYNC_GEN|valid_out~2_combout\) # (\U_SYNC_GEN|valid_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC_GEN|valid_out~4_combout\,
	datab => \U_SYNC_GEN|valid_out~3_combout\,
	datac => \U_SYNC_GEN|valid_out~2_combout\,
	datad => \U_SYNC_GEN|valid_out~0_combout\,
	combout => \U_SYNC_GEN|valid_out~5_combout\);

-- Location: LCCOMB_X57_Y20_N10
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode444w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode444w[3]~0_combout\ = (\U_COUNTER|y_cnt\(6) & (!\U_COUNTER|y_cnt\(5) & (!\U_COUNTER|y_cnt\(4) & !\U_SYNC_GEN|valid_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(6),
	datab => \U_COUNTER|y_cnt\(5),
	datac => \U_COUNTER|y_cnt\(4),
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode444w[3]~0_combout\);

-- Location: LCCOMB_X55_Y24_N0
\U_ADDR_GEN|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~0_combout\ = \U_COUNTER|x_cnt\(0) $ (VCC)
-- \U_ADDR_GEN|Add1~1\ = CARRY(\U_COUNTER|x_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|x_cnt\(0),
	datad => VCC,
	combout => \U_ADDR_GEN|Add1~0_combout\,
	cout => \U_ADDR_GEN|Add1~1\);

-- Location: LCCOMB_X57_Y24_N12
\U_ADDR_GEN|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~2_combout\ = (!\U_SYNC_GEN|valid_out~5_combout\ & \U_ADDR_GEN|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC_GEN|valid_out~5_combout\,
	datad => \U_ADDR_GEN|Add1~0_combout\,
	combout => \U_ADDR_GEN|Add1~2_combout\);

-- Location: LCCOMB_X55_Y24_N2
\U_ADDR_GEN|Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~3_combout\ = (\U_COUNTER|x_cnt\(1) & (!\U_ADDR_GEN|Add1~1\)) # (!\U_COUNTER|x_cnt\(1) & ((\U_ADDR_GEN|Add1~1\) # (GND)))
-- \U_ADDR_GEN|Add1~4\ = CARRY((!\U_ADDR_GEN|Add1~1\) # (!\U_COUNTER|x_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|x_cnt\(1),
	datad => VCC,
	cin => \U_ADDR_GEN|Add1~1\,
	combout => \U_ADDR_GEN|Add1~3_combout\,
	cout => \U_ADDR_GEN|Add1~4\);

-- Location: LCCOMB_X55_Y24_N18
\U_ADDR_GEN|Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~5_combout\ = (\U_ADDR_GEN|Add1~3_combout\ & !\U_SYNC_GEN|valid_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADDR_GEN|Add1~3_combout\,
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_ADDR_GEN|Add1~5_combout\);

-- Location: LCCOMB_X55_Y24_N4
\U_ADDR_GEN|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~6_combout\ = (\U_COUNTER|x_cnt\(2) & ((GND) # (!\U_ADDR_GEN|Add1~4\))) # (!\U_COUNTER|x_cnt\(2) & (\U_ADDR_GEN|Add1~4\ $ (GND)))
-- \U_ADDR_GEN|Add1~7\ = CARRY((\U_COUNTER|x_cnt\(2)) # (!\U_ADDR_GEN|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|x_cnt\(2),
	datad => VCC,
	cin => \U_ADDR_GEN|Add1~4\,
	combout => \U_ADDR_GEN|Add1~6_combout\,
	cout => \U_ADDR_GEN|Add1~7\);

-- Location: LCCOMB_X55_Y24_N24
\U_ADDR_GEN|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~8_combout\ = (\U_ADDR_GEN|Add1~6_combout\ & !\U_SYNC_GEN|valid_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADDR_GEN|Add1~6_combout\,
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_ADDR_GEN|Add1~8_combout\);

-- Location: LCCOMB_X55_Y24_N6
\U_ADDR_GEN|Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~9_combout\ = (\U_COUNTER|x_cnt\(3) & (\U_ADDR_GEN|Add1~7\ & VCC)) # (!\U_COUNTER|x_cnt\(3) & (!\U_ADDR_GEN|Add1~7\))
-- \U_ADDR_GEN|Add1~10\ = CARRY((!\U_COUNTER|x_cnt\(3) & !\U_ADDR_GEN|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|x_cnt\(3),
	datad => VCC,
	cin => \U_ADDR_GEN|Add1~7\,
	combout => \U_ADDR_GEN|Add1~9_combout\,
	cout => \U_ADDR_GEN|Add1~10\);

-- Location: LCCOMB_X55_Y24_N22
\U_ADDR_GEN|Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~11_combout\ = (\U_ADDR_GEN|Add1~9_combout\ & !\U_SYNC_GEN|valid_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDR_GEN|Add1~9_combout\,
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_ADDR_GEN|Add1~11_combout\);

-- Location: LCCOMB_X55_Y24_N8
\U_ADDR_GEN|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~12_combout\ = (\U_COUNTER|x_cnt\(4) & ((GND) # (!\U_ADDR_GEN|Add1~10\))) # (!\U_COUNTER|x_cnt\(4) & (\U_ADDR_GEN|Add1~10\ $ (GND)))
-- \U_ADDR_GEN|Add1~13\ = CARRY((\U_COUNTER|x_cnt\(4)) # (!\U_ADDR_GEN|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|x_cnt\(4),
	datad => VCC,
	cin => \U_ADDR_GEN|Add1~10\,
	combout => \U_ADDR_GEN|Add1~12_combout\,
	cout => \U_ADDR_GEN|Add1~13\);

-- Location: LCCOMB_X55_Y24_N28
\U_ADDR_GEN|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~14_combout\ = (\U_ADDR_GEN|Add1~12_combout\ & !\U_SYNC_GEN|valid_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADDR_GEN|Add1~12_combout\,
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_ADDR_GEN|Add1~14_combout\);

-- Location: LCCOMB_X55_Y24_N10
\U_ADDR_GEN|Add1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~15_combout\ = (\U_COUNTER|x_cnt\(5) & (!\U_ADDR_GEN|Add1~13\)) # (!\U_COUNTER|x_cnt\(5) & ((\U_ADDR_GEN|Add1~13\) # (GND)))
-- \U_ADDR_GEN|Add1~16\ = CARRY((!\U_ADDR_GEN|Add1~13\) # (!\U_COUNTER|x_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|x_cnt\(5),
	datad => VCC,
	cin => \U_ADDR_GEN|Add1~13\,
	combout => \U_ADDR_GEN|Add1~15_combout\,
	cout => \U_ADDR_GEN|Add1~16\);

-- Location: LCCOMB_X55_Y24_N26
\U_ADDR_GEN|Add1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~17_combout\ = (\U_ADDR_GEN|Add1~15_combout\ & !\U_SYNC_GEN|valid_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDR_GEN|Add1~15_combout\,
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_ADDR_GEN|Add1~17_combout\);

-- Location: LCCOMB_X55_Y24_N12
\U_ADDR_GEN|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~18_combout\ = (\U_COUNTER|x_cnt\(6) & ((GND) # (!\U_ADDR_GEN|Add1~16\))) # (!\U_COUNTER|x_cnt\(6) & (\U_ADDR_GEN|Add1~16\ $ (GND)))
-- \U_ADDR_GEN|Add1~19\ = CARRY((\U_COUNTER|x_cnt\(6)) # (!\U_ADDR_GEN|Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|x_cnt\(6),
	datad => VCC,
	cin => \U_ADDR_GEN|Add1~16\,
	combout => \U_ADDR_GEN|Add1~18_combout\,
	cout => \U_ADDR_GEN|Add1~19\);

-- Location: LCCOMB_X55_Y24_N20
\U_ADDR_GEN|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~20_combout\ = (\U_ADDR_GEN|Add1~18_combout\ & !\U_SYNC_GEN|valid_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ADDR_GEN|Add1~18_combout\,
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_ADDR_GEN|Add1~20_combout\);

-- Location: LCCOMB_X55_Y24_N14
\U_ADDR_GEN|Add1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~21_combout\ = (\U_COUNTER|x_cnt\(7) & (\U_ADDR_GEN|Add1~19\ & VCC)) # (!\U_COUNTER|x_cnt\(7) & (!\U_ADDR_GEN|Add1~19\))
-- \U_ADDR_GEN|Add1~22\ = CARRY((!\U_COUNTER|x_cnt\(7) & !\U_ADDR_GEN|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_COUNTER|x_cnt\(7),
	datad => VCC,
	cin => \U_ADDR_GEN|Add1~19\,
	combout => \U_ADDR_GEN|Add1~21_combout\,
	cout => \U_ADDR_GEN|Add1~22\);

-- Location: LCCOMB_X55_Y24_N30
\U_ADDR_GEN|Add1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~23_combout\ = (\U_ADDR_GEN|Add1~21_combout\ & !\U_SYNC_GEN|valid_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_ADDR_GEN|Add1~21_combout\,
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_ADDR_GEN|Add1~23_combout\);

-- Location: LCCOMB_X54_Y24_N30
\U_SYNC_GEN|valid_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_SYNC_GEN|valid_out~6_combout\ = (\U_SYNC_GEN|valid_out~4_combout\) # ((\U_SYNC_GEN|valid_out~2_combout\) # ((\U_COUNTER|x_cnt\(9) & !\U_SYNC_GEN|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|x_cnt\(9),
	datab => \U_SYNC_GEN|process_0~0_combout\,
	datac => \U_SYNC_GEN|valid_out~4_combout\,
	datad => \U_SYNC_GEN|valid_out~2_combout\,
	combout => \U_SYNC_GEN|valid_out~6_combout\);

-- Location: LCCOMB_X55_Y24_N16
\U_ADDR_GEN|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~24_combout\ = \U_COUNTER|x_cnt\(8) $ (\U_ADDR_GEN|Add1~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|x_cnt\(8),
	cin => \U_ADDR_GEN|Add1~22\,
	combout => \U_ADDR_GEN|Add1~24_combout\);

-- Location: LCCOMB_X54_Y24_N28
\U_ADDR_GEN|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|Add1~26_combout\ = (!\U_SYNC_GEN|valid_out~0_combout\ & (!\U_SYNC_GEN|valid_out~6_combout\ & \U_ADDR_GEN|Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC_GEN|valid_out~0_combout\,
	datac => \U_SYNC_GEN|valid_out~6_combout\,
	datad => \U_ADDR_GEN|Add1~24_combout\,
	combout => \U_ADDR_GEN|Add1~26_combout\);

-- Location: LCCOMB_X57_Y24_N30
\U_ADDR_GEN|addr[9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|addr[9]~0_combout\ = (\U_COUNTER|y_cnt\(0) & !\U_SYNC_GEN|valid_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_COUNTER|y_cnt\(0),
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_ADDR_GEN|addr[9]~0_combout\);

-- Location: LCCOMB_X58_Y24_N0
\U_ADDR_GEN|addr[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|addr[10]~1_combout\ = (\U_COUNTER|y_cnt\(1) & !\U_SYNC_GEN|valid_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_COUNTER|y_cnt\(1),
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_ADDR_GEN|addr[10]~1_combout\);

-- Location: LCCOMB_X57_Y24_N16
\U_ADDR_GEN|addr[11]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|addr[11]~2_combout\ = (\U_COUNTER|y_cnt\(2) & !\U_SYNC_GEN|valid_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(2),
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_ADDR_GEN|addr[11]~2_combout\);

-- Location: LCCOMB_X57_Y24_N0
\U_ADDR_GEN|addr[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|addr[12]~3_combout\ = (\U_COUNTER|y_cnt\(3) & !\U_SYNC_GEN|valid_out~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_COUNTER|y_cnt\(3),
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_ADDR_GEN|addr[12]~3_combout\);

-- Location: M9K_X53_Y16_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a44\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode444w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\);

-- Location: LCCOMB_X57_Y24_N22
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~1_combout\ = (\U_COUNTER|y_cnt\(5) & (!\U_COUNTER|y_cnt\(6) & (!\U_COUNTER|y_cnt\(4) & !\U_SYNC_GEN|valid_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(5),
	datab => \U_COUNTER|y_cnt\(6),
	datac => \U_COUNTER|y_cnt\(4),
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~1_combout\);

-- Location: M9K_X33_Y18_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a20\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: LCCOMB_X56_Y24_N24
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode407w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode407w[3]~0_combout\ = (\U_SYNC_GEN|valid_out~5_combout\) # ((!\U_COUNTER|y_cnt\(6) & (\U_COUNTER|y_cnt\(4) & !\U_COUNTER|y_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(6),
	datab => \U_COUNTER|y_cnt\(4),
	datac => \U_COUNTER|y_cnt\(5),
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode407w[3]~0_combout\);

-- Location: M9K_X33_Y20_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a8\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode407w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X57_Y20_N20
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~0_combout\ = (!\U_SYNC_GEN|valid_out~5_combout\ & (\U_COUNTER|y_cnt\(5) $ (!\U_COUNTER|y_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SYNC_GEN|valid_out~5_combout\,
	datac => \U_COUNTER|y_cnt\(5),
	datad => \U_COUNTER|y_cnt\(4),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~0_combout\);

-- Location: FF_X57_Y20_N21
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1));

-- Location: LCCOMB_X54_Y24_N14
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~1_combout\ = (\U_COUNTER|y_cnt\(5) & (\U_COUNTER|y_cnt\(4) & (!\U_COUNTER|y_cnt\(6) & !\U_SYNC_GEN|valid_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(5),
	datab => \U_COUNTER|y_cnt\(4),
	datac => \U_COUNTER|y_cnt\(6),
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~1_combout\);

-- Location: M9K_X53_Y23_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a32\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\);

-- Location: LCCOMB_X57_Y20_N18
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\ = (!\U_SYNC_GEN|valid_out~5_combout\ & !\U_COUNTER|y_cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_SYNC_GEN|valid_out~5_combout\,
	datad => \U_COUNTER|y_cnt\(4),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\);

-- Location: FF_X57_Y20_N19
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: LCCOMB_X57_Y20_N8
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~2_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a32~portadataout\) # 
-- (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & 
-- ((!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a32~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~2_combout\);

-- Location: LCCOMB_X57_Y20_N26
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~3_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~2_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a44~portadataout\) # 
-- ((!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~2_combout\ & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a20~portadataout\ & 
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a44~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a20~portadataout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~2_combout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~3_combout\);

-- Location: LCCOMB_X57_Y20_N28
\U_ADDR_GEN|addr[15]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ADDR_GEN|addr[15]~4_combout\ = (!\U_SYNC_GEN|valid_out~5_combout\ & (\U_COUNTER|y_cnt\(6) $ (((!\U_COUNTER|y_cnt\(4) & !\U_COUNTER|y_cnt\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(4),
	datab => \U_SYNC_GEN|valid_out~5_combout\,
	datac => \U_COUNTER|y_cnt\(5),
	datad => \U_COUNTER|y_cnt\(6),
	combout => \U_ADDR_GEN|addr[15]~4_combout\);

-- Location: FF_X57_Y20_N29
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U_ADDR_GEN|addr[15]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2));

-- Location: LCCOMB_X54_Y24_N8
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode484w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode484w\(3) = (!\U_COUNTER|y_cnt\(6) & (!\U_COUNTER|y_cnt\(5) & (!\U_COUNTER|y_cnt\(4) & !\U_SYNC_GEN|valid_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(6),
	datab => \U_COUNTER|y_cnt\(5),
	datac => \U_COUNTER|y_cnt\(4),
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode484w\(3));

-- Location: M9K_X73_Y35_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a92\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode484w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a92_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a92_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y24_N12
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode474w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode474w\(3) = (\U_COUNTER|y_cnt\(5) & (\U_COUNTER|y_cnt\(6) & (\U_COUNTER|y_cnt\(4) & !\U_SYNC_GEN|valid_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(5),
	datab => \U_COUNTER|y_cnt\(6),
	datac => \U_COUNTER|y_cnt\(4),
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode474w\(3));

-- Location: M9K_X73_Y24_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a80\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode474w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a80_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a80_PORTADATAOUT_bus\);

-- Location: LCCOMB_X56_Y24_N30
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode454w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode454w\(3) = (\U_COUNTER|y_cnt\(6) & (\U_COUNTER|y_cnt\(4) & (!\U_COUNTER|y_cnt\(5) & !\U_SYNC_GEN|valid_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(6),
	datab => \U_COUNTER|y_cnt\(4),
	datac => \U_COUNTER|y_cnt\(5),
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode454w\(3));

-- Location: M9K_X53_Y22_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a56\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode454w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y24_N18
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode464w[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode464w\(3) = (\U_COUNTER|y_cnt\(5) & (!\U_COUNTER|y_cnt\(4) & (\U_COUNTER|y_cnt\(6) & !\U_SYNC_GEN|valid_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|y_cnt\(5),
	datab => \U_COUNTER|y_cnt\(4),
	datac => \U_COUNTER|y_cnt\(6),
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode464w\(3));

-- Location: M9K_X73_Y16_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a68\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode464w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a68_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a68_PORTADATAOUT_bus\);

-- Location: LCCOMB_X57_Y20_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~0_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a68~portadataout\) # 
-- (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a56~portadataout\ & 
-- ((!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a56~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a68~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~0_combout\);

-- Location: LCCOMB_X57_Y20_N22
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~1_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~0_combout\ & 
-- (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a92~portadataout\)) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~0_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a80~portadataout\))))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a92~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a80~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~0_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~1_combout\);

-- Location: LCCOMB_X57_Y20_N2
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~4_combout\ = (!\U_SYNC_GEN|valid_out~5_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~1_combout\))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~3_combout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~1_combout\,
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~4_combout\);

-- Location: M9K_X53_Y34_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a93\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode484w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a93_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a93_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y25_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a81\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode474w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a81_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a81_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y20_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a69\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode464w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a69_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a69_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y17_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a57\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode454w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\);

-- Location: LCCOMB_X57_Y20_N4
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~5_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a69~portadataout\)) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a57~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a69~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a57~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~5_combout\);

-- Location: LCCOMB_X57_Y20_N30
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~6_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~5_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a93~portadataout\) # 
-- ((!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~5_combout\ & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a81~portadataout\ & 
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a93~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a81~portadataout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~5_combout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~6_combout\);

-- Location: M9K_X73_Y8_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a33\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y14_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a9\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode407w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X57_Y20_N12
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~7_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a33~portadataout\) # 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a9~portadataout\ & 
-- !\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a33~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a9~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~7_combout\);

-- Location: M9K_X33_Y22_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a21\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y12_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a45\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode444w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\);

-- Location: LCCOMB_X57_Y20_N14
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~8_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~7_combout\ & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a45~portadataout\)) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~7_combout\ & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a21~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~7_combout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a21~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a45~portadataout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~8_combout\);

-- Location: LCCOMB_X57_Y20_N16
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~9_combout\ = (!\U_SYNC_GEN|valid_out~5_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & 
-- (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~6_combout\)) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~6_combout\,
	datab => \U_SYNC_GEN|valid_out~5_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~8_combout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~9_combout\);

-- Location: M9K_X53_Y5_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a46\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode444w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y8_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a34\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y26_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a10\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode407w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y23_N8
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~12_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)) # 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a34~portadataout\)))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a10~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a34~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a10~portadataout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~12_combout\);

-- Location: M9K_X33_Y30_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a22\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y23_N30
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~13_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~12_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a46~portadataout\) # 
-- ((!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~12_combout\ & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a22~portadataout\ & 
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a46~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~12_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a22~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~13_combout\);

-- Location: M9K_X73_Y17_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a82\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode474w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a82_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a82_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y11_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a94\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode484w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a94_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a94_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y15_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a58\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode454w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y16_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a70\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode464w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a70_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a70_PORTADATAOUT_bus\);

-- Location: LCCOMB_X57_Y20_N6
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~10_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a70~portadataout\))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a58~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a58~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a70~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~10_combout\);

-- Location: LCCOMB_X57_Y20_N24
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~11_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~10_combout\ & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a94~portadataout\))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~10_combout\ & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a82~portadataout\)))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a82~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a94~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~10_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~11_combout\);

-- Location: LCCOMB_X54_Y20_N8
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~14_combout\ = (!\U_SYNC_GEN|valid_out~5_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~11_combout\))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~13_combout\,
	datab => \U_SYNC_GEN|valid_out~5_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2),
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~11_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~14_combout\);

-- Location: M9K_X53_Y7_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a47\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode444w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y38_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a35\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y19_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a11\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode407w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y23_N20
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~17_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a35~portadataout\) # 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a11~portadataout\ & 
-- !\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a35~portadataout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a11~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~17_combout\);

-- Location: M9K_X53_Y10_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a23\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y23_N10
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~18_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~17_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a47~portadataout\) # 
-- ((!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~17_combout\ & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a23~portadataout\ & 
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a47~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~17_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a23~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~18_combout\);

-- Location: M9K_X53_Y30_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a95\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode484w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a95_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a95_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y27_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a59\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode454w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y23_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a71\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode464w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a71_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a71_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y23_N4
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~15_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a71~portadataout\))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a59~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a59~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a71~portadataout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~15_combout\);

-- Location: M9K_X33_Y24_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a83\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode474w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a83_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a83_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y23_N2
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~16_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~15_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a95~portadataout\) # 
-- ((!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~15_combout\ & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a83~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a95~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~15_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a83~portadataout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~16_combout\);

-- Location: LCCOMB_X54_Y23_N24
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~19_combout\ = (!\U_SYNC_GEN|valid_out~5_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~16_combout\))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~18_combout\,
	datab => \U_SYNC_GEN|valid_out~5_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2),
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~16_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~19_combout\);

-- Location: M9K_X73_Y28_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a88\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode484w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a88_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a88_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y39_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a52\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode454w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y40_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a64\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode464w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a64_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a64_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y28_N24
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~20_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a64~portadataout\))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a52~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a52~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a64~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~20_combout\);

-- Location: M9K_X33_Y32_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a76\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode474w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a76_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a76_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y28_N22
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~21_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~20_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a88~portadataout\) # 
-- ((!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~20_combout\ & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a76~portadataout\ & 
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a88~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~20_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a76~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~21_combout\);

-- Location: M9K_X33_Y29_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a16\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y37_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a28\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y30_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode407w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y23_N18
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~22_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1))))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a28~portadataout\)) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a4~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a28~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~22_combout\);

-- Location: M9K_X33_Y15_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a40\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode444w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y23_N12
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~23_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~22_combout\ & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a40~portadataout\) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~22_combout\ & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a16~portadataout\ & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a16~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~22_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a40~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~23_combout\);

-- Location: LCCOMB_X54_Y23_N14
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~24_combout\ = (!\U_SYNC_GEN|valid_out~5_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & 
-- (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~21_combout\)) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~21_combout\,
	datab => \U_SYNC_GEN|valid_out~5_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2),
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~23_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~24_combout\);

-- Location: M9K_X33_Y13_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a77\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode474w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a77_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a77_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y17_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a89\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode484w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a89_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a89_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y41_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a65\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode464w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a65_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a65_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y18_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a53\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode454w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\);

-- Location: LCCOMB_X61_Y21_N4
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~25_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a65~portadataout\)) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a53~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a65~portadataout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a53~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~25_combout\);

-- Location: LCCOMB_X61_Y21_N18
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~26_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~25_combout\ & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a89~portadataout\) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~25_combout\ & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a77~portadataout\ & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a77~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a89~portadataout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~25_combout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~26_combout\);

-- Location: M9K_X53_Y6_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a41\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode444w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y36_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a17\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y10_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a29\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y21_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a5\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode407w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X61_Y21_N12
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~27_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)) # 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a29~portadataout\)))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a5~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a29~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~27_combout\);

-- Location: LCCOMB_X61_Y21_N6
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~28_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~27_combout\ & 
-- (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a41~portadataout\)) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~27_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a17~portadataout\))))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a41~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a17~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~27_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~28_combout\);

-- Location: LCCOMB_X61_Y21_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~29_combout\ = (!\U_SYNC_GEN|valid_out~5_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & 
-- (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~26_combout\)) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC_GEN|valid_out~5_combout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~26_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2),
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~28_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~29_combout\);

-- Location: M9K_X53_Y21_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a54\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode454w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y24_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a66\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode464w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a66_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a66_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y21_N28
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~30_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a66~portadataout\))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a54~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a54~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a66~portadataout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~30_combout\);

-- Location: M9K_X73_Y22_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a90\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode484w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a90_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a90_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y26_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a78\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode474w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a78_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a78_PORTADATAOUT_bus\);

-- Location: LCCOMB_X61_Y21_N2
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~31_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~30_combout\ & 
-- (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a90~portadataout\)) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~30_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a78~portadataout\))))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~30_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a90~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a78~portadataout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~31_combout\);

-- Location: M9K_X53_Y35_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a18\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y31_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode407w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y31_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a30\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y28_N20
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~32_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a30~portadataout\) # 
-- (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a6~portadataout\ & 
-- ((!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a30~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~32_combout\);

-- Location: M9K_X53_Y9_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a42\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode444w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y28_N10
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~33_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~32_combout\ & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a42~portadataout\) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~32_combout\ & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a18~portadataout\ & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a18~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~32_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a42~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~33_combout\);

-- Location: LCCOMB_X61_Y21_N24
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~34_combout\ = (!\U_SYNC_GEN|valid_out~5_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & 
-- (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~31_combout\)) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC_GEN|valid_out~5_combout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~31_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2),
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~33_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~34_combout\);

-- Location: M9K_X53_Y11_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a91\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode484w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a91_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a91_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y43_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a67\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode464w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a67_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a67_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y40_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a55\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode454w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y28_N8
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~35_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a67~portadataout\)) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a55~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a67~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a55~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~35_combout\);

-- Location: M9K_X33_Y23_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a79\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode474w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a79_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a79_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y23_N16
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~36_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~35_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a91~portadataout\) # 
-- ((!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~35_combout\ & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a79~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a91~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~35_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a79~portadataout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~36_combout\);

-- Location: M9K_X73_Y15_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a7\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode407w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y25_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a31\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y23_N22
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~37_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a31~portadataout\) # 
-- (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a7~portadataout\ & 
-- ((!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a31~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~37_combout\);

-- Location: M9K_X53_Y4_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a43\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode444w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y19_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a19\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y23_N28
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~38_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~37_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a43~portadataout\) # 
-- ((!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~37_combout\ & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a19~portadataout\ & 
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~37_combout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a43~portadataout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a19~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~38_combout\);

-- Location: LCCOMB_X54_Y23_N26
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~39_combout\ = (!\U_SYNC_GEN|valid_out~5_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & 
-- (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~36_combout\)) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2),
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~36_combout\,
	datac => \U_SYNC_GEN|valid_out~5_combout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~38_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~39_combout\);

-- Location: M9K_X53_Y18_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a36\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode444w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y21_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode407w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y25_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a24\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: LCCOMB_X61_Y21_N22
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~42_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)) # 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a24~portadataout\)))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a0~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a24~portadataout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~42_combout\);

-- Location: M9K_X73_Y9_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a12\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X61_Y21_N16
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~43_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~42_combout\ & 
-- (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a36~portadataout\)) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~42_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a12~portadataout\))))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a36~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~42_combout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a12~portadataout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~43_combout\);

-- Location: M9K_X53_Y13_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a72\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode474w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a72_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a72_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y13_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a60\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode464w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y39_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a48\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode454w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\);

-- Location: LCCOMB_X61_Y21_N26
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~40_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a60~portadataout\) # 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a48~portadataout\ & 
-- !\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a60~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a48~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~40_combout\);

-- Location: M9K_X53_Y14_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a84\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode484w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a84_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a84_PORTADATAOUT_bus\);

-- Location: LCCOMB_X61_Y21_N28
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~41_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~40_combout\ & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a84~portadataout\))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~40_combout\ & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a72~portadataout\)))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a72~portadataout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~40_combout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a84~portadataout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~41_combout\);

-- Location: LCCOMB_X61_Y21_N10
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~44_combout\ = (!\U_SYNC_GEN|valid_out~5_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~41_combout\))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SYNC_GEN|valid_out~5_combout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~43_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2),
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~41_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~44_combout\);

-- Location: M9K_X53_Y36_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a13\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y20_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a37\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode444w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y38_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a25\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y35_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a1\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode407w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y28_N30
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~47_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a25~portadataout\) # 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a1~portadataout\ & 
-- !\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a25~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~47_combout\);

-- Location: LCCOMB_X54_Y28_N12
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~48_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~47_combout\ & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a37~portadataout\) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~47_combout\ & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a13~portadataout\ & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a13~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a37~portadataout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~47_combout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~48_combout\);

-- Location: M9K_X73_Y29_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a49\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode454w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y37_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a61\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode464w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\);

-- Location: LCCOMB_X55_Y27_N28
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~45_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a61~portadataout\))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a49~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a49~portadataout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a61~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~45_combout\);

-- Location: M9K_X73_Y33_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a73\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode474w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a73_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a73_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y31_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a85\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode484w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a85_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a85_PORTADATAOUT_bus\);

-- Location: LCCOMB_X55_Y27_N18
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~46_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~45_combout\ & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a85~portadataout\))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~45_combout\ & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a73~portadataout\)))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~45_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a73~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a85~portadataout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~46_combout\);

-- Location: LCCOMB_X55_Y27_N8
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~49_combout\ = (!\U_SYNC_GEN|valid_out~5_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~46_combout\))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~48_combout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~46_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2),
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~49_combout\);

-- Location: M9K_X33_Y19_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a38\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode444w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y10_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y28_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode407w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y28_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a26\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y28_N18
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~52_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a26~portadataout\) # 
-- (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a2~portadataout\ & 
-- ((!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a26~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~52_combout\);

-- Location: LCCOMB_X54_Y23_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~53_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~52_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a38~portadataout\) # 
-- ((!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~52_combout\ & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a14~portadataout\ & 
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a38~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a14~portadataout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~52_combout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~53_combout\);

-- Location: M9K_X53_Y42_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a62\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode464w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y29_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a50\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode454w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y28_N26
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~50_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a62~portadataout\)) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a50~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a62~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a50~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~50_combout\);

-- Location: M9K_X53_Y33_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a74\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode474w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a74_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a74_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y32_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a86\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode484w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a86_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a86_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y28_N28
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~51_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~50_combout\ & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a86~portadataout\) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~50_combout\ & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a74~portadataout\ & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~50_combout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a74~portadataout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a86~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~51_combout\);

-- Location: LCCOMB_X55_Y27_N6
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~54_combout\ = (!\U_SYNC_GEN|valid_out~5_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~51_combout\))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~53_combout\,
	datab => \U_SYNC_GEN|valid_out~5_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2),
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~51_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~54_combout\);

-- Location: M9K_X73_Y38_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a27\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode434w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y27_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a3\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode407w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X55_Y27_N12
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~57_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a27~portadataout\) # 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a3~portadataout\ & 
-- !\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a27~portadataout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~57_combout\);

-- Location: M9K_X73_Y34_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a15\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode424w[3]~1_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y12_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a39\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode444w[3]~0_combout\,
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\);

-- Location: LCCOMB_X55_Y27_N10
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~58_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~57_combout\ & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a39~portadataout\) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~57_combout\ & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a15~portadataout\ & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~57_combout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a15~portadataout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a39~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~58_combout\);

-- Location: M9K_X53_Y44_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a63\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode464w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y32_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a51\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode454w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y28_N4
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~55_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0))))) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a63~portadataout\)) # 
-- (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0) & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a51~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a63~portadataout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a51~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~55_combout\);

-- Location: M9K_X53_Y27_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a87\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode484w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a87_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a87_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y26_N0
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a75\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "gray1.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mem_device:U_MEM_DEV|r1p:U_MEM|altsyncram:altsyncram_component|altsyncram_htr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|rden_decode|w_anode474w\(3),
	portaaddr => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a75_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a75_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y27_N24
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~56_combout\ = (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~55_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a87~portadataout\) # 
-- ((!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~55_combout\ & (((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a75~portadataout\ & 
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~55_combout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a87~portadataout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|ram_block1a75~portadataout\,
	datad => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(1),
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~56_combout\);

-- Location: LCCOMB_X55_Y27_N4
\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~59_combout\ = (!\U_SYNC_GEN|valid_out~5_combout\ & ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & 
-- ((\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~56_combout\))) # (!\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2) & (\U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~58_combout\,
	datab => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~56_combout\,
	datac => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|address_reg_a\(2),
	datad => \U_SYNC_GEN|valid_out~5_combout\,
	combout => \U_MEM_DEV|U_MEM|altsyncram_component|auto_generated|mux2|_~59_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_G(0) <= \G[0]~output_o\;

ww_G(1) <= \G[1]~output_o\;

ww_G(2) <= \G[2]~output_o\;

ww_G(3) <= \G[3]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(3) <= \B[3]~output_o\;
END structure;


