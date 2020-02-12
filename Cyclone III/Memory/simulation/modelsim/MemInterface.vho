-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "01/30/2020 10:57:53"

-- 
-- Device: Altera EP3C16Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mem_device_sram IS
    PORT (
	MICRO_A : IN std_logic_vector(18 DOWNTO 0);
	MICRO_D : IN std_logic_vector(11 DOWNTO 0);
	MICRO_CLK : IN std_logic;
	MICRO_WE : IN std_logic;
	FPGA_A : IN std_logic_vector(18 DOWNTO 0);
	FPGA_D : OUT std_logic_vector(11 DOWNTO 0);
	FPGA_CLK : IN std_logic;
	mem_sel : IN std_logic;
	M1_A : OUT std_logic_vector(18 DOWNTO 0);
	M1_D : INOUT std_logic_vector(11 DOWNTO 0);
	M1_WE : OUT std_logic;
	M1_OE : OUT std_logic;
	M1_CLK : OUT std_logic;
	M2_A : OUT std_logic_vector(18 DOWNTO 0);
	M2_D : INOUT std_logic_vector(11 DOWNTO 0);
	M2_WE : OUT std_logic;
	M2_OE : OUT std_logic;
	M2_CLK : OUT std_logic
	);
END mem_device_sram;

-- Design Ports Information
-- FPGA_D[0]	=>  Location: PIN_231,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_D[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_D[2]	=>  Location: PIN_41,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_D[3]	=>  Location: PIN_63,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_D[4]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_D[5]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_D[6]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_D[7]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_D[8]	=>  Location: PIN_226,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_D[9]	=>  Location: PIN_235,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_D[10]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_D[11]	=>  Location: PIN_45,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[1]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[2]	=>  Location: PIN_214,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[3]	=>  Location: PIN_9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[4]	=>  Location: PIN_175,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[5]	=>  Location: PIN_19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[6]	=>  Location: PIN_168,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[7]	=>  Location: PIN_222,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[8]	=>  Location: PIN_189,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[9]	=>  Location: PIN_196,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[10]	=>  Location: PIN_148,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[11]	=>  Location: PIN_161,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[12]	=>  Location: PIN_203,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[13]	=>  Location: PIN_195,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[14]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[15]	=>  Location: PIN_21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[16]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[17]	=>  Location: PIN_194,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_A[18]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_WE	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_OE	=>  Location: PIN_240,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_CLK	=>  Location: PIN_117,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[0]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[1]	=>  Location: PIN_238,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[2]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[3]	=>  Location: PIN_169,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[4]	=>  Location: PIN_200,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[5]	=>  Location: PIN_171,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[6]	=>  Location: PIN_202,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[7]	=>  Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[8]	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[9]	=>  Location: PIN_173,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[10]	=>  Location: PIN_160,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[11]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[12]	=>  Location: PIN_37,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[13]	=>  Location: PIN_159,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[14]	=>  Location: PIN_167,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[15]	=>  Location: PIN_187,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[16]	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[17]	=>  Location: PIN_186,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_A[18]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_WE	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_OE	=>  Location: PIN_230,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_CLK	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_D[0]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_D[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_D[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_D[3]	=>  Location: PIN_217,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_D[4]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_D[5]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_D[6]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_D[7]	=>  Location: PIN_95,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_D[8]	=>  Location: PIN_220,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_D[9]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_D[10]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M1_D[11]	=>  Location: PIN_234,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_D[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_D[1]	=>  Location: PIN_78,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_D[2]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_D[3]	=>  Location: PIN_219,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_D[4]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_D[5]	=>  Location: PIN_94,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_D[6]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_D[7]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_D[8]	=>  Location: PIN_232,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_D[9]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_D[10]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M2_D[11]	=>  Location: PIN_237,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_sel	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[0]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[0]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[1]	=>  Location: PIN_233,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[1]	=>  Location: PIN_236,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[2]	=>  Location: PIN_216,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[2]	=>  Location: PIN_221,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[3]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[3]	=>  Location: PIN_5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[4]	=>  Location: PIN_207,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[4]	=>  Location: PIN_198,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[5]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[5]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[6]	=>  Location: PIN_174,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[6]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[7]	=>  Location: PIN_164,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[7]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[8]	=>  Location: PIN_4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[8]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[9]	=>  Location: PIN_197,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[9]	=>  Location: PIN_107,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[10]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[10]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[11]	=>  Location: PIN_188,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[11]	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[12]	=>  Location: PIN_146,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[12]	=>  Location: PIN_199,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[13]	=>  Location: PIN_185,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[13]	=>  Location: PIN_183,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[14]	=>  Location: PIN_108,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[14]	=>  Location: PIN_18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[15]	=>  Location: PIN_147,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[15]	=>  Location: PIN_109,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[16]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[16]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[17]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[17]	=>  Location: PIN_201,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_A[18]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_A[18]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_WE	=>  Location: PIN_182,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_CLK	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_CLK	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_D[0]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_D[1]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_D[2]	=>  Location: PIN_82,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_D[3]	=>  Location: PIN_218,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_D[4]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_D[5]	=>  Location: PIN_81,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_D[6]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_D[7]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_D[8]	=>  Location: PIN_224,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_D[9]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_D[10]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MICRO_D[11]	=>  Location: PIN_239,	 I/O Standard: 2.5 V,	 Current Strength: Default

ARCHITECTURE structure OF mem_device_sram IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MICRO_A : std_logic_vector(18 DOWNTO 0);
SIGNAL ww_MICRO_D : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_MICRO_CLK : std_logic;
SIGNAL ww_MICRO_WE : std_logic;
SIGNAL ww_FPGA_A : std_logic_vector(18 DOWNTO 0);
SIGNAL ww_FPGA_D : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_FPGA_CLK : std_logic;
SIGNAL ww_mem_sel : std_logic;
SIGNAL ww_M1_A : std_logic_vector(18 DOWNTO 0);
SIGNAL ww_M1_WE : std_logic;
SIGNAL ww_M1_OE : std_logic;
SIGNAL ww_M1_CLK : std_logic;
SIGNAL ww_M2_A : std_logic_vector(18 DOWNTO 0);
SIGNAL ww_M2_WE : std_logic;
SIGNAL ww_M2_OE : std_logic;
SIGNAL ww_M2_CLK : std_logic;
SIGNAL \MICRO_D[0]~input_o\ : std_logic;
SIGNAL \mem_sel~input_o\ : std_logic;
SIGNAL \MICRO_D[1]~input_o\ : std_logic;
SIGNAL \MICRO_D[2]~input_o\ : std_logic;
SIGNAL \MICRO_D[3]~input_o\ : std_logic;
SIGNAL \MICRO_D[4]~input_o\ : std_logic;
SIGNAL \MICRO_D[5]~input_o\ : std_logic;
SIGNAL \MICRO_D[6]~input_o\ : std_logic;
SIGNAL \MICRO_D[7]~input_o\ : std_logic;
SIGNAL \MICRO_D[8]~input_o\ : std_logic;
SIGNAL \MICRO_D[9]~input_o\ : std_logic;
SIGNAL \MICRO_D[10]~input_o\ : std_logic;
SIGNAL \MICRO_D[11]~input_o\ : std_logic;
SIGNAL \M1_D[0]~input_o\ : std_logic;
SIGNAL \M2_D[0]~input_o\ : std_logic;
SIGNAL \FPGA_D~0_combout\ : std_logic;
SIGNAL \M1_D[1]~input_o\ : std_logic;
SIGNAL \M2_D[1]~input_o\ : std_logic;
SIGNAL \FPGA_D~1_combout\ : std_logic;
SIGNAL \M2_D[2]~input_o\ : std_logic;
SIGNAL \M1_D[2]~input_o\ : std_logic;
SIGNAL \FPGA_D~2_combout\ : std_logic;
SIGNAL \M2_D[3]~input_o\ : std_logic;
SIGNAL \M1_D[3]~input_o\ : std_logic;
SIGNAL \FPGA_D~3_combout\ : std_logic;
SIGNAL \M2_D[4]~input_o\ : std_logic;
SIGNAL \M1_D[4]~input_o\ : std_logic;
SIGNAL \FPGA_D~4_combout\ : std_logic;
SIGNAL \M2_D[5]~input_o\ : std_logic;
SIGNAL \M1_D[5]~input_o\ : std_logic;
SIGNAL \FPGA_D~5_combout\ : std_logic;
SIGNAL \M1_D[6]~input_o\ : std_logic;
SIGNAL \M2_D[6]~input_o\ : std_logic;
SIGNAL \FPGA_D~6_combout\ : std_logic;
SIGNAL \M2_D[7]~input_o\ : std_logic;
SIGNAL \M1_D[7]~input_o\ : std_logic;
SIGNAL \FPGA_D~7_combout\ : std_logic;
SIGNAL \M2_D[8]~input_o\ : std_logic;
SIGNAL \M1_D[8]~input_o\ : std_logic;
SIGNAL \FPGA_D~8_combout\ : std_logic;
SIGNAL \M1_D[9]~input_o\ : std_logic;
SIGNAL \M2_D[9]~input_o\ : std_logic;
SIGNAL \FPGA_D~9_combout\ : std_logic;
SIGNAL \M1_D[10]~input_o\ : std_logic;
SIGNAL \M2_D[10]~input_o\ : std_logic;
SIGNAL \FPGA_D~10_combout\ : std_logic;
SIGNAL \M1_D[11]~input_o\ : std_logic;
SIGNAL \M2_D[11]~input_o\ : std_logic;
SIGNAL \FPGA_D~11_combout\ : std_logic;
SIGNAL \FPGA_A[0]~input_o\ : std_logic;
SIGNAL \MICRO_A[0]~input_o\ : std_logic;
SIGNAL \M1_A~0_combout\ : std_logic;
SIGNAL \FPGA_A[1]~input_o\ : std_logic;
SIGNAL \MICRO_A[1]~input_o\ : std_logic;
SIGNAL \M1_A~1_combout\ : std_logic;
SIGNAL \FPGA_A[2]~input_o\ : std_logic;
SIGNAL \MICRO_A[2]~input_o\ : std_logic;
SIGNAL \M1_A~2_combout\ : std_logic;
SIGNAL \FPGA_A[3]~input_o\ : std_logic;
SIGNAL \MICRO_A[3]~input_o\ : std_logic;
SIGNAL \M1_A~3_combout\ : std_logic;
SIGNAL \MICRO_A[4]~input_o\ : std_logic;
SIGNAL \FPGA_A[4]~input_o\ : std_logic;
SIGNAL \M1_A~4_combout\ : std_logic;
SIGNAL \MICRO_A[5]~input_o\ : std_logic;
SIGNAL \FPGA_A[5]~input_o\ : std_logic;
SIGNAL \M1_A~5_combout\ : std_logic;
SIGNAL \FPGA_A[6]~input_o\ : std_logic;
SIGNAL \MICRO_A[6]~input_o\ : std_logic;
SIGNAL \M1_A~6_combout\ : std_logic;
SIGNAL \MICRO_A[7]~input_o\ : std_logic;
SIGNAL \FPGA_A[7]~input_o\ : std_logic;
SIGNAL \M1_A~7_combout\ : std_logic;
SIGNAL \MICRO_A[8]~input_o\ : std_logic;
SIGNAL \FPGA_A[8]~input_o\ : std_logic;
SIGNAL \M1_A~8_combout\ : std_logic;
SIGNAL \MICRO_A[9]~input_o\ : std_logic;
SIGNAL \FPGA_A[9]~input_o\ : std_logic;
SIGNAL \M1_A~9_combout\ : std_logic;
SIGNAL \FPGA_A[10]~input_o\ : std_logic;
SIGNAL \MICRO_A[10]~input_o\ : std_logic;
SIGNAL \M1_A~10_combout\ : std_logic;
SIGNAL \FPGA_A[11]~input_o\ : std_logic;
SIGNAL \MICRO_A[11]~input_o\ : std_logic;
SIGNAL \M1_A~11_combout\ : std_logic;
SIGNAL \FPGA_A[12]~input_o\ : std_logic;
SIGNAL \MICRO_A[12]~input_o\ : std_logic;
SIGNAL \M1_A~12_combout\ : std_logic;
SIGNAL \MICRO_A[13]~input_o\ : std_logic;
SIGNAL \FPGA_A[13]~input_o\ : std_logic;
SIGNAL \M1_A~13_combout\ : std_logic;
SIGNAL \FPGA_A[14]~input_o\ : std_logic;
SIGNAL \MICRO_A[14]~input_o\ : std_logic;
SIGNAL \M1_A~14_combout\ : std_logic;
SIGNAL \FPGA_A[15]~input_o\ : std_logic;
SIGNAL \MICRO_A[15]~input_o\ : std_logic;
SIGNAL \M1_A~15_combout\ : std_logic;
SIGNAL \FPGA_A[16]~input_o\ : std_logic;
SIGNAL \MICRO_A[16]~input_o\ : std_logic;
SIGNAL \M1_A~16_combout\ : std_logic;
SIGNAL \FPGA_A[17]~input_o\ : std_logic;
SIGNAL \MICRO_A[17]~input_o\ : std_logic;
SIGNAL \M1_A~17_combout\ : std_logic;
SIGNAL \MICRO_A[18]~input_o\ : std_logic;
SIGNAL \FPGA_A[18]~input_o\ : std_logic;
SIGNAL \M1_A~18_combout\ : std_logic;
SIGNAL \MICRO_WE~input_o\ : std_logic;
SIGNAL \M1_WE~0_combout\ : std_logic;
SIGNAL \MICRO_CLK~input_o\ : std_logic;
SIGNAL \FPGA_CLK~input_o\ : std_logic;
SIGNAL \M1_CLK~0_combout\ : std_logic;
SIGNAL \M2_A~0_combout\ : std_logic;
SIGNAL \M2_A~1_combout\ : std_logic;
SIGNAL \M2_A~2_combout\ : std_logic;
SIGNAL \M2_A~3_combout\ : std_logic;
SIGNAL \M2_A~4_combout\ : std_logic;
SIGNAL \M2_A~5_combout\ : std_logic;
SIGNAL \M2_A~6_combout\ : std_logic;
SIGNAL \M2_A~7_combout\ : std_logic;
SIGNAL \M2_A~8_combout\ : std_logic;
SIGNAL \M2_A~9_combout\ : std_logic;
SIGNAL \M2_A~10_combout\ : std_logic;
SIGNAL \M2_A~11_combout\ : std_logic;
SIGNAL \M2_A~12_combout\ : std_logic;
SIGNAL \M2_A~13_combout\ : std_logic;
SIGNAL \M2_A~14_combout\ : std_logic;
SIGNAL \M2_A~15_combout\ : std_logic;
SIGNAL \M2_A~16_combout\ : std_logic;
SIGNAL \M2_A~17_combout\ : std_logic;
SIGNAL \M2_A~18_combout\ : std_logic;
SIGNAL \M2_WE~0_combout\ : std_logic;
SIGNAL \M2_CLK~0_combout\ : std_logic;
SIGNAL \ALT_INV_mem_sel~input_o\ : std_logic;

BEGIN

ww_MICRO_A <= MICRO_A;
ww_MICRO_D <= MICRO_D;
ww_MICRO_CLK <= MICRO_CLK;
ww_MICRO_WE <= MICRO_WE;
ww_FPGA_A <= FPGA_A;
FPGA_D <= ww_FPGA_D;
ww_FPGA_CLK <= FPGA_CLK;
ww_mem_sel <= mem_sel;
M1_A <= ww_M1_A;
M1_WE <= ww_M1_WE;
M1_OE <= ww_M1_OE;
M1_CLK <= ww_M1_CLK;
M2_A <= ww_M2_A;
M2_WE <= ww_M2_WE;
M2_OE <= ww_M2_OE;
M2_CLK <= ww_M2_CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_mem_sel~input_o\ <= NOT \mem_sel~input_o\;

-- Location: IOOBUF_X7_Y29_N30
\FPGA_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FPGA_D~0_combout\,
	devoe => ww_devoe,
	o => ww_FPGA_D(0));

-- Location: IOOBUF_X5_Y0_N2
\FPGA_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FPGA_D~1_combout\,
	devoe => ww_devoe,
	o => ww_FPGA_D(1));

-- Location: IOOBUF_X0_Y10_N2
\FPGA_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FPGA_D~2_combout\,
	devoe => ww_devoe,
	o => ww_FPGA_D(2));

-- Location: IOOBUF_X3_Y0_N9
\FPGA_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FPGA_D~3_combout\,
	devoe => ww_devoe,
	o => ww_FPGA_D(3));

-- Location: IOOBUF_X7_Y0_N9
\FPGA_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FPGA_D~4_combout\,
	devoe => ww_devoe,
	o => ww_FPGA_D(4));

-- Location: IOOBUF_X0_Y5_N23
\FPGA_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FPGA_D~5_combout\,
	devoe => ww_devoe,
	o => ww_FPGA_D(5));

-- Location: IOOBUF_X0_Y4_N2
\FPGA_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FPGA_D~6_combout\,
	devoe => ww_devoe,
	o => ww_FPGA_D(6));

-- Location: IOOBUF_X5_Y0_N30
\FPGA_D[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FPGA_D~7_combout\,
	devoe => ww_devoe,
	o => ww_FPGA_D(7));

-- Location: IOOBUF_X7_Y29_N9
\FPGA_D[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FPGA_D~8_combout\,
	devoe => ww_devoe,
	o => ww_FPGA_D(8));

-- Location: IOOBUF_X3_Y29_N16
\FPGA_D[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FPGA_D~9_combout\,
	devoe => ww_devoe,
	o => ww_FPGA_D(9));

-- Location: IOOBUF_X0_Y3_N9
\FPGA_D[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FPGA_D~10_combout\,
	devoe => ww_devoe,
	o => ww_FPGA_D(10));

-- Location: IOOBUF_X0_Y9_N2
\FPGA_D[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FPGA_D~11_combout\,
	devoe => ww_devoe,
	o => ww_FPGA_D(11));

-- Location: IOOBUF_X0_Y5_N16
\M1_A[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~0_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(0));

-- Location: IOOBUF_X0_Y11_N2
\M1_A[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~1_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(1));

-- Location: IOOBUF_X14_Y29_N2
\M1_A[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~2_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(2));

-- Location: IOOBUF_X0_Y26_N16
\M1_A[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~3_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(3));

-- Location: IOOBUF_X41_Y25_N16
\M1_A[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~4_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(4));

-- Location: IOOBUF_X0_Y22_N16
\M1_A[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~5_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(5));

-- Location: IOOBUF_X41_Y23_N9
\M1_A[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~6_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(6));

-- Location: IOOBUF_X11_Y29_N16
\M1_A[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~7_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(7));

-- Location: IOOBUF_X32_Y29_N16
\M1_A[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~8_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(8));

-- Location: IOOBUF_X28_Y29_N16
\M1_A[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~9_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(9));

-- Location: IOOBUF_X41_Y14_N2
\M1_A[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~10_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(10));

-- Location: IOOBUF_X41_Y18_N2
\M1_A[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~11_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(11));

-- Location: IOOBUF_X23_Y29_N9
\M1_A[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~12_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(12));

-- Location: IOOBUF_X28_Y29_N9
\M1_A[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~13_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(13));

-- Location: IOOBUF_X41_Y13_N16
\M1_A[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~14_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(14));

-- Location: IOOBUF_X0_Y21_N2
\M1_A[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~15_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(15));

-- Location: IOOBUF_X26_Y0_N9
\M1_A[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~16_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(16));

-- Location: IOOBUF_X30_Y29_N23
\M1_A[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~17_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(17));

-- Location: IOOBUF_X41_Y8_N2
\M1_A[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_A~18_combout\,
	devoe => ww_devoe,
	o => ww_M1_A(18));

-- Location: IOOBUF_X41_Y9_N23
\M1_WE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_WE~0_combout\,
	devoe => ww_devoe,
	o => ww_M1_WE);

-- Location: IOOBUF_X1_Y29_N30
\M1_OE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_mem_sel~input_o\,
	devoe => ww_devoe,
	o => ww_M1_OE);

-- Location: IOOBUF_X37_Y0_N9
\M1_CLK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M1_CLK~0_combout\,
	devoe => ww_devoe,
	o => ww_M1_CLK);

-- Location: IOOBUF_X0_Y27_N16
\M2_A[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~0_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(0));

-- Location: IOOBUF_X1_Y29_N16
\M2_A[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~1_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(1));

-- Location: IOOBUF_X26_Y0_N2
\M2_A[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~2_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(2));

-- Location: IOOBUF_X41_Y23_N2
\M2_A[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~3_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(3));

-- Location: IOOBUF_X26_Y29_N16
\M2_A[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~4_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(4));

-- Location: IOOBUF_X41_Y24_N9
\M2_A[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~5_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(5));

-- Location: IOOBUF_X23_Y29_N2
\M2_A[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~6_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(6));

-- Location: IOOBUF_X41_Y27_N23
\M2_A[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~7_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(7));

-- Location: IOOBUF_X0_Y22_N23
\M2_A[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~8_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(8));

-- Location: IOOBUF_X41_Y24_N2
\M2_A[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~9_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(9));

-- Location: IOOBUF_X41_Y18_N16
\M2_A[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~10_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(10));

-- Location: IOOBUF_X41_Y13_N23
\M2_A[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~11_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(11));

-- Location: IOOBUF_X0_Y12_N23
\M2_A[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~12_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(12));

-- Location: IOOBUF_X41_Y18_N23
\M2_A[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~13_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(13));

-- Location: IOOBUF_X41_Y23_N16
\M2_A[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~14_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(14));

-- Location: IOOBUF_X32_Y29_N2
\M2_A[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~15_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(15));

-- Location: IOOBUF_X41_Y19_N2
\M2_A[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~16_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(16));

-- Location: IOOBUF_X35_Y29_N9
\M2_A[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~17_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(17));

-- Location: IOOBUF_X39_Y0_N30
\M2_A[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_A~18_combout\,
	devoe => ww_devoe,
	o => ww_M2_A(18));

-- Location: IOOBUF_X41_Y5_N9
\M2_WE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_WE~0_combout\,
	devoe => ww_devoe,
	o => ww_M2_WE);

-- Location: IOOBUF_X7_Y29_N23
\M2_OE~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_sel~input_o\,
	devoe => ww_devoe,
	o => ww_M2_OE);

-- Location: IOOBUF_X41_Y6_N2
\M2_CLK~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \M2_CLK~0_combout\,
	devoe => ww_devoe,
	o => ww_M2_CLK);

-- Location: IOOBUF_X19_Y0_N2
\M1_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[0]~input_o\,
	oe => \mem_sel~input_o\,
	devoe => ww_devoe,
	o => M1_D(0));

-- Location: IOOBUF_X19_Y0_N9
\M1_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[1]~input_o\,
	oe => \mem_sel~input_o\,
	devoe => ww_devoe,
	o => M1_D(1));

-- Location: IOOBUF_X19_Y0_N16
\M1_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[2]~input_o\,
	oe => \mem_sel~input_o\,
	devoe => ww_devoe,
	o => M1_D(2));

-- Location: IOOBUF_X14_Y29_N16
\M1_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[3]~input_o\,
	oe => \mem_sel~input_o\,
	devoe => ww_devoe,
	o => M1_D(3));

-- Location: IOOBUF_X7_Y0_N30
\M1_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[4]~input_o\,
	oe => \mem_sel~input_o\,
	devoe => ww_devoe,
	o => M1_D(4));

-- Location: IOOBUF_X26_Y0_N30
\M1_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[5]~input_o\,
	oe => \mem_sel~input_o\,
	devoe => ww_devoe,
	o => M1_D(5));

-- Location: IOOBUF_X5_Y0_N9
\M1_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[6]~input_o\,
	oe => \mem_sel~input_o\,
	devoe => ww_devoe,
	o => M1_D(6));

-- Location: IOOBUF_X23_Y0_N9
\M1_D[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[7]~input_o\,
	oe => \mem_sel~input_o\,
	devoe => ww_devoe,
	o => M1_D(7));

-- Location: IOOBUF_X11_Y29_N2
\M1_D[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[8]~input_o\,
	oe => \mem_sel~input_o\,
	devoe => ww_devoe,
	o => M1_D(8));

-- Location: IOOBUF_X0_Y3_N2
\M1_D[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[9]~input_o\,
	oe => \mem_sel~input_o\,
	devoe => ww_devoe,
	o => M1_D(9));

-- Location: IOOBUF_X35_Y0_N2
\M1_D[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[10]~input_o\,
	oe => \mem_sel~input_o\,
	devoe => ww_devoe,
	o => M1_D(10));

-- Location: IOOBUF_X3_Y29_N2
\M1_D[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[11]~input_o\,
	oe => \mem_sel~input_o\,
	devoe => ww_devoe,
	o => M1_D(11));

-- Location: IOOBUF_X19_Y0_N30
\M2_D[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[0]~input_o\,
	oe => \ALT_INV_mem_sel~input_o\,
	devoe => ww_devoe,
	o => M2_D(0));

-- Location: IOOBUF_X14_Y0_N16
\M2_D[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[1]~input_o\,
	oe => \ALT_INV_mem_sel~input_o\,
	devoe => ww_devoe,
	o => M2_D(1));

-- Location: IOOBUF_X16_Y0_N2
\M2_D[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[2]~input_o\,
	oe => \ALT_INV_mem_sel~input_o\,
	devoe => ww_devoe,
	o => M2_D(2));

-- Location: IOOBUF_X14_Y29_N30
\M2_D[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[3]~input_o\,
	oe => \ALT_INV_mem_sel~input_o\,
	devoe => ww_devoe,
	o => M2_D(3));

-- Location: IOOBUF_X5_Y0_N23
\M2_D[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[4]~input_o\,
	oe => \ALT_INV_mem_sel~input_o\,
	devoe => ww_devoe,
	o => M2_D(4));

-- Location: IOOBUF_X23_Y0_N23
\M2_D[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[5]~input_o\,
	oe => \ALT_INV_mem_sel~input_o\,
	devoe => ww_devoe,
	o => M2_D(5));

-- Location: IOOBUF_X7_Y0_N23
\M2_D[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[6]~input_o\,
	oe => \ALT_INV_mem_sel~input_o\,
	devoe => ww_devoe,
	o => M2_D(6));

-- Location: IOOBUF_X19_Y0_N23
\M2_D[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[7]~input_o\,
	oe => \ALT_INV_mem_sel~input_o\,
	devoe => ww_devoe,
	o => M2_D(7));

-- Location: IOOBUF_X5_Y29_N2
\M2_D[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[8]~input_o\,
	oe => \ALT_INV_mem_sel~input_o\,
	devoe => ww_devoe,
	o => M2_D(8));

-- Location: IOOBUF_X0_Y4_N23
\M2_D[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[9]~input_o\,
	oe => \ALT_INV_mem_sel~input_o\,
	devoe => ww_devoe,
	o => M2_D(9));

-- Location: IOOBUF_X35_Y0_N23
\M2_D[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[10]~input_o\,
	oe => \ALT_INV_mem_sel~input_o\,
	devoe => ww_devoe,
	o => M2_D(10));

-- Location: IOOBUF_X1_Y29_N9
\M2_D[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MICRO_D[11]~input_o\,
	oe => \ALT_INV_mem_sel~input_o\,
	devoe => ww_devoe,
	o => M2_D(11));

-- Location: IOIBUF_X21_Y0_N22
\MICRO_D[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_D(0),
	o => \MICRO_D[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\mem_sel~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_sel,
	o => \mem_sel~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\MICRO_D[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_D(1),
	o => \MICRO_D[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\MICRO_D[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_D(2),
	o => \MICRO_D[2]~input_o\);

-- Location: IOIBUF_X14_Y29_N22
\MICRO_D[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_D(3),
	o => \MICRO_D[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\MICRO_D[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_D(4),
	o => \MICRO_D[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\MICRO_D[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_D(5),
	o => \MICRO_D[5]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\MICRO_D[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_D(6),
	o => \MICRO_D[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\MICRO_D[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_D(7),
	o => \MICRO_D[7]~input_o\);

-- Location: IOIBUF_X9_Y29_N1
\MICRO_D[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_D(8),
	o => \MICRO_D[8]~input_o\);

-- Location: IOIBUF_X0_Y5_N8
\MICRO_D[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_D(9),
	o => \MICRO_D[9]~input_o\);

-- Location: IOIBUF_X35_Y0_N29
\MICRO_D[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_D(10),
	o => \MICRO_D[10]~input_o\);

-- Location: IOIBUF_X1_Y29_N22
\MICRO_D[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_D(11),
	o => \MICRO_D[11]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\M1_D[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M1_D(0),
	o => \M1_D[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\M2_D[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M2_D(0),
	o => \M2_D[0]~input_o\);

-- Location: LCCOMB_X6_Y4_N24
\FPGA_D~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FPGA_D~0_combout\ = (\mem_sel~input_o\ & ((\M2_D[0]~input_o\))) # (!\mem_sel~input_o\ & (\M1_D[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_D[0]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \M2_D[0]~input_o\,
	combout => \FPGA_D~0_combout\);

-- Location: IOIBUF_X19_Y0_N8
\M1_D[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M1_D(1),
	o => \M1_D[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\M2_D[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M2_D(1),
	o => \M2_D[1]~input_o\);

-- Location: LCCOMB_X6_Y4_N18
\FPGA_D~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FPGA_D~1_combout\ = (\mem_sel~input_o\ & ((\M2_D[1]~input_o\))) # (!\mem_sel~input_o\ & (\M1_D[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_D[1]~input_o\,
	datab => \M2_D[1]~input_o\,
	datac => \mem_sel~input_o\,
	combout => \FPGA_D~1_combout\);

-- Location: IOIBUF_X16_Y0_N1
\M2_D[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M2_D(2),
	o => \M2_D[2]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\M1_D[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M1_D(2),
	o => \M1_D[2]~input_o\);

-- Location: LCCOMB_X6_Y4_N12
\FPGA_D~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FPGA_D~2_combout\ = (\mem_sel~input_o\ & (\M2_D[2]~input_o\)) # (!\mem_sel~input_o\ & ((\M1_D[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_D[2]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \M1_D[2]~input_o\,
	combout => \FPGA_D~2_combout\);

-- Location: IOIBUF_X14_Y29_N29
\M2_D[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M2_D(3),
	o => \M2_D[3]~input_o\);

-- Location: IOIBUF_X14_Y29_N15
\M1_D[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M1_D(3),
	o => \M1_D[3]~input_o\);

-- Location: LCCOMB_X6_Y4_N6
\FPGA_D~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FPGA_D~3_combout\ = (\mem_sel~input_o\ & (\M2_D[3]~input_o\)) # (!\mem_sel~input_o\ & ((\M1_D[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_D[3]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \M1_D[3]~input_o\,
	combout => \FPGA_D~3_combout\);

-- Location: IOIBUF_X5_Y0_N22
\M2_D[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M2_D(4),
	o => \M2_D[4]~input_o\);

-- Location: IOIBUF_X7_Y0_N29
\M1_D[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M1_D(4),
	o => \M1_D[4]~input_o\);

-- Location: LCCOMB_X6_Y4_N16
\FPGA_D~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FPGA_D~4_combout\ = (\mem_sel~input_o\ & (\M2_D[4]~input_o\)) # (!\mem_sel~input_o\ & ((\M1_D[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_D[4]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \M1_D[4]~input_o\,
	combout => \FPGA_D~4_combout\);

-- Location: IOIBUF_X23_Y0_N22
\M2_D[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M2_D(5),
	o => \M2_D[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\M1_D[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M1_D(5),
	o => \M1_D[5]~input_o\);

-- Location: LCCOMB_X6_Y4_N10
\FPGA_D~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FPGA_D~5_combout\ = (\mem_sel~input_o\ & (\M2_D[5]~input_o\)) # (!\mem_sel~input_o\ & ((\M1_D[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_sel~input_o\,
	datac => \M2_D[5]~input_o\,
	datad => \M1_D[5]~input_o\,
	combout => \FPGA_D~5_combout\);

-- Location: IOIBUF_X5_Y0_N8
\M1_D[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M1_D(6),
	o => \M1_D[6]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\M2_D[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M2_D(6),
	o => \M2_D[6]~input_o\);

-- Location: LCCOMB_X6_Y4_N4
\FPGA_D~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FPGA_D~6_combout\ = (\mem_sel~input_o\ & ((\M2_D[6]~input_o\))) # (!\mem_sel~input_o\ & (\M1_D[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_D[6]~input_o\,
	datab => \M2_D[6]~input_o\,
	datac => \mem_sel~input_o\,
	combout => \FPGA_D~6_combout\);

-- Location: IOIBUF_X19_Y0_N22
\M2_D[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M2_D(7),
	o => \M2_D[7]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\M1_D[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M1_D(7),
	o => \M1_D[7]~input_o\);

-- Location: LCCOMB_X6_Y4_N22
\FPGA_D~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FPGA_D~7_combout\ = (\mem_sel~input_o\ & (\M2_D[7]~input_o\)) # (!\mem_sel~input_o\ & ((\M1_D[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M2_D[7]~input_o\,
	datab => \mem_sel~input_o\,
	datac => \M1_D[7]~input_o\,
	combout => \FPGA_D~7_combout\);

-- Location: IOIBUF_X5_Y29_N1
\M2_D[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M2_D(8),
	o => \M2_D[8]~input_o\);

-- Location: IOIBUF_X11_Y29_N1
\M1_D[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M1_D(8),
	o => \M1_D[8]~input_o\);

-- Location: LCCOMB_X6_Y4_N8
\FPGA_D~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FPGA_D~8_combout\ = (\mem_sel~input_o\ & (\M2_D[8]~input_o\)) # (!\mem_sel~input_o\ & ((\M1_D[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M2_D[8]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \M1_D[8]~input_o\,
	combout => \FPGA_D~8_combout\);

-- Location: IOIBUF_X0_Y3_N1
\M1_D[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M1_D(9),
	o => \M1_D[9]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\M2_D[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M2_D(9),
	o => \M2_D[9]~input_o\);

-- Location: LCCOMB_X6_Y4_N26
\FPGA_D~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FPGA_D~9_combout\ = (\mem_sel~input_o\ & ((\M2_D[9]~input_o\))) # (!\mem_sel~input_o\ & (\M1_D[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1_D[9]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \M2_D[9]~input_o\,
	combout => \FPGA_D~9_combout\);

-- Location: IOIBUF_X35_Y0_N1
\M1_D[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M1_D(10),
	o => \M1_D[10]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\M2_D[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M2_D(10),
	o => \M2_D[10]~input_o\);

-- Location: LCCOMB_X6_Y4_N20
\FPGA_D~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FPGA_D~10_combout\ = (\mem_sel~input_o\ & ((\M2_D[10]~input_o\))) # (!\mem_sel~input_o\ & (\M1_D[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1_D[10]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \M2_D[10]~input_o\,
	combout => \FPGA_D~10_combout\);

-- Location: IOIBUF_X3_Y29_N1
\M1_D[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M1_D(11),
	o => \M1_D[11]~input_o\);

-- Location: IOIBUF_X1_Y29_N8
\M2_D[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => M2_D(11),
	o => \M2_D[11]~input_o\);

-- Location: LCCOMB_X6_Y4_N30
\FPGA_D~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \FPGA_D~11_combout\ = (\mem_sel~input_o\ & ((\M2_D[11]~input_o\))) # (!\mem_sel~input_o\ & (\M1_D[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \M1_D[11]~input_o\,
	datab => \M2_D[11]~input_o\,
	datac => \mem_sel~input_o\,
	combout => \FPGA_D~11_combout\);

-- Location: IOIBUF_X0_Y10_N8
\FPGA_A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(0),
	o => \FPGA_A[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\MICRO_A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(0),
	o => \MICRO_A[0]~input_o\);

-- Location: LCCOMB_X6_Y4_N0
\M1_A~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~0_combout\ = (\mem_sel~input_o\ & ((\MICRO_A[0]~input_o\))) # (!\mem_sel~input_o\ & (\FPGA_A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_A[0]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[0]~input_o\,
	combout => \M1_A~0_combout\);

-- Location: IOIBUF_X1_Y29_N1
\FPGA_A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(1),
	o => \FPGA_A[1]~input_o\);

-- Location: IOIBUF_X5_Y29_N22
\MICRO_A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(1),
	o => \MICRO_A[1]~input_o\);

-- Location: LCCOMB_X6_Y4_N2
\M1_A~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~1_combout\ = (\mem_sel~input_o\ & ((\MICRO_A[1]~input_o\))) # (!\mem_sel~input_o\ & (\FPGA_A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_A[1]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[1]~input_o\,
	combout => \M1_A~1_combout\);

-- Location: IOIBUF_X11_Y29_N8
\FPGA_A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(2),
	o => \FPGA_A[2]~input_o\);

-- Location: IOIBUF_X14_Y29_N8
\MICRO_A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(2),
	o => \MICRO_A[2]~input_o\);

-- Location: LCCOMB_X27_Y26_N24
\M1_A~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~2_combout\ = (\mem_sel~input_o\ & ((\MICRO_A[2]~input_o\))) # (!\mem_sel~input_o\ & (\FPGA_A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_A[2]~input_o\,
	datac => \MICRO_A[2]~input_o\,
	datad => \mem_sel~input_o\,
	combout => \M1_A~2_combout\);

-- Location: IOIBUF_X0_Y27_N8
\FPGA_A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(3),
	o => \FPGA_A[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\MICRO_A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(3),
	o => \MICRO_A[3]~input_o\);

-- Location: LCCOMB_X27_Y26_N10
\M1_A~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~3_combout\ = (\mem_sel~input_o\ & ((\MICRO_A[3]~input_o\))) # (!\mem_sel~input_o\ & (\FPGA_A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_A[3]~input_o\,
	datab => \MICRO_A[3]~input_o\,
	datad => \mem_sel~input_o\,
	combout => \M1_A~3_combout\);

-- Location: IOIBUF_X21_Y29_N8
\MICRO_A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(4),
	o => \MICRO_A[4]~input_o\);

-- Location: IOIBUF_X28_Y29_N29
\FPGA_A[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(4),
	o => \FPGA_A[4]~input_o\);

-- Location: LCCOMB_X27_Y26_N12
\M1_A~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~4_combout\ = (\mem_sel~input_o\ & (\MICRO_A[4]~input_o\)) # (!\mem_sel~input_o\ & ((\FPGA_A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MICRO_A[4]~input_o\,
	datac => \FPGA_A[4]~input_o\,
	datad => \mem_sel~input_o\,
	combout => \M1_A~4_combout\);

-- Location: IOIBUF_X28_Y0_N29
\MICRO_A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(5),
	o => \MICRO_A[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\FPGA_A[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(5),
	o => \FPGA_A[5]~input_o\);

-- Location: LCCOMB_X27_Y26_N14
\M1_A~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~5_combout\ = (\mem_sel~input_o\ & (\MICRO_A[5]~input_o\)) # (!\mem_sel~input_o\ & ((\FPGA_A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_sel~input_o\,
	datac => \MICRO_A[5]~input_o\,
	datad => \FPGA_A[5]~input_o\,
	combout => \M1_A~5_combout\);

-- Location: IOIBUF_X23_Y0_N29
\FPGA_A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(6),
	o => \FPGA_A[6]~input_o\);

-- Location: IOIBUF_X41_Y25_N22
\MICRO_A[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(6),
	o => \MICRO_A[6]~input_o\);

-- Location: LCCOMB_X27_Y26_N0
\M1_A~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~6_combout\ = (\mem_sel~input_o\ & ((\MICRO_A[6]~input_o\))) # (!\mem_sel~input_o\ & (\FPGA_A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_sel~input_o\,
	datac => \FPGA_A[6]~input_o\,
	datad => \MICRO_A[6]~input_o\,
	combout => \M1_A~6_combout\);

-- Location: IOIBUF_X41_Y19_N8
\MICRO_A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(7),
	o => \MICRO_A[7]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\FPGA_A[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(7),
	o => \FPGA_A[7]~input_o\);

-- Location: LCCOMB_X27_Y26_N18
\M1_A~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~7_combout\ = (\mem_sel~input_o\ & (\MICRO_A[7]~input_o\)) # (!\mem_sel~input_o\ & ((\FPGA_A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MICRO_A[7]~input_o\,
	datab => \FPGA_A[7]~input_o\,
	datad => \mem_sel~input_o\,
	combout => \M1_A~7_combout\);

-- Location: IOIBUF_X0_Y27_N1
\MICRO_A[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(8),
	o => \MICRO_A[8]~input_o\);

-- Location: IOIBUF_X41_Y9_N15
\FPGA_A[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(8),
	o => \FPGA_A[8]~input_o\);

-- Location: LCCOMB_X27_Y26_N28
\M1_A~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~8_combout\ = (\mem_sel~input_o\ & (\MICRO_A[8]~input_o\)) # (!\mem_sel~input_o\ & ((\FPGA_A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_sel~input_o\,
	datac => \MICRO_A[8]~input_o\,
	datad => \FPGA_A[8]~input_o\,
	combout => \M1_A~8_combout\);

-- Location: IOIBUF_X28_Y29_N22
\MICRO_A[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(9),
	o => \MICRO_A[9]~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\FPGA_A[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(9),
	o => \FPGA_A[9]~input_o\);

-- Location: LCCOMB_X27_Y26_N30
\M1_A~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~9_combout\ = (\mem_sel~input_o\ & (\MICRO_A[9]~input_o\)) # (!\mem_sel~input_o\ & ((\FPGA_A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_sel~input_o\,
	datac => \MICRO_A[9]~input_o\,
	datad => \FPGA_A[9]~input_o\,
	combout => \M1_A~9_combout\);

-- Location: IOIBUF_X30_Y0_N22
\FPGA_A[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(10),
	o => \FPGA_A[10]~input_o\);

-- Location: IOIBUF_X41_Y12_N1
\MICRO_A[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(10),
	o => \MICRO_A[10]~input_o\);

-- Location: LCCOMB_X30_Y21_N0
\M1_A~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~10_combout\ = (\mem_sel~input_o\ & ((\MICRO_A[10]~input_o\))) # (!\mem_sel~input_o\ & (\FPGA_A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_A[10]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[10]~input_o\,
	combout => \M1_A~10_combout\);

-- Location: IOIBUF_X0_Y21_N22
\FPGA_A[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(11),
	o => \FPGA_A[11]~input_o\);

-- Location: IOIBUF_X32_Y29_N8
\MICRO_A[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(11),
	o => \MICRO_A[11]~input_o\);

-- Location: LCCOMB_X30_Y21_N2
\M1_A~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~11_combout\ = (\mem_sel~input_o\ & ((\MICRO_A[11]~input_o\))) # (!\mem_sel~input_o\ & (\FPGA_A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_A[11]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[11]~input_o\,
	combout => \M1_A~11_combout\);

-- Location: IOIBUF_X26_Y29_N1
\FPGA_A[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(12),
	o => \FPGA_A[12]~input_o\);

-- Location: IOIBUF_X41_Y14_N15
\MICRO_A[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(12),
	o => \MICRO_A[12]~input_o\);

-- Location: LCCOMB_X30_Y21_N4
\M1_A~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~12_combout\ = (\mem_sel~input_o\ & ((\MICRO_A[12]~input_o\))) # (!\mem_sel~input_o\ & (\FPGA_A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_A[12]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[12]~input_o\,
	combout => \M1_A~12_combout\);

-- Location: IOIBUF_X35_Y29_N1
\MICRO_A[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(13),
	o => \MICRO_A[13]~input_o\);

-- Location: IOIBUF_X37_Y29_N1
\FPGA_A[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(13),
	o => \FPGA_A[13]~input_o\);

-- Location: LCCOMB_X30_Y21_N22
\M1_A~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~13_combout\ = (\mem_sel~input_o\ & (\MICRO_A[13]~input_o\)) # (!\mem_sel~input_o\ & ((\FPGA_A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_sel~input_o\,
	datac => \MICRO_A[13]~input_o\,
	datad => \FPGA_A[13]~input_o\,
	combout => \M1_A~13_combout\);

-- Location: IOIBUF_X0_Y22_N1
\FPGA_A[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(14),
	o => \FPGA_A[14]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\MICRO_A[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(14),
	o => \MICRO_A[14]~input_o\);

-- Location: LCCOMB_X30_Y21_N16
\M1_A~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~14_combout\ = (\mem_sel~input_o\ & ((\MICRO_A[14]~input_o\))) # (!\mem_sel~input_o\ & (\FPGA_A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_A[14]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[14]~input_o\,
	combout => \M1_A~14_combout\);

-- Location: IOIBUF_X30_Y0_N1
\FPGA_A[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(15),
	o => \FPGA_A[15]~input_o\);

-- Location: IOIBUF_X41_Y14_N8
\MICRO_A[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(15),
	o => \MICRO_A[15]~input_o\);

-- Location: LCCOMB_X30_Y21_N26
\M1_A~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~15_combout\ = (\mem_sel~input_o\ & ((\MICRO_A[15]~input_o\))) # (!\mem_sel~input_o\ & (\FPGA_A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_A[15]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[15]~input_o\,
	combout => \M1_A~15_combout\);

-- Location: IOIBUF_X37_Y0_N1
\FPGA_A[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(16),
	o => \FPGA_A[16]~input_o\);

-- Location: IOIBUF_X37_Y0_N29
\MICRO_A[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(16),
	o => \MICRO_A[16]~input_o\);

-- Location: LCCOMB_X30_Y21_N20
\M1_A~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~16_combout\ = (\mem_sel~input_o\ & ((\MICRO_A[16]~input_o\))) # (!\mem_sel~input_o\ & (\FPGA_A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_A[16]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[16]~input_o\,
	combout => \M1_A~16_combout\);

-- Location: IOIBUF_X26_Y29_N29
\FPGA_A[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(17),
	o => \FPGA_A[17]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\MICRO_A[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(17),
	o => \MICRO_A[17]~input_o\);

-- Location: LCCOMB_X30_Y21_N14
\M1_A~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~17_combout\ = (\mem_sel~input_o\ & ((\MICRO_A[17]~input_o\))) # (!\mem_sel~input_o\ & (\FPGA_A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_A[17]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[17]~input_o\,
	combout => \M1_A~17_combout\);

-- Location: IOIBUF_X0_Y6_N15
\MICRO_A[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_A(18),
	o => \MICRO_A[18]~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\FPGA_A[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_A(18),
	o => \FPGA_A[18]~input_o\);

-- Location: LCCOMB_X40_Y6_N24
\M1_A~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_A~18_combout\ = (\mem_sel~input_o\ & (\MICRO_A[18]~input_o\)) # (!\mem_sel~input_o\ & ((\FPGA_A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MICRO_A[18]~input_o\,
	datac => \FPGA_A[18]~input_o\,
	datad => \mem_sel~input_o\,
	combout => \M1_A~18_combout\);

-- Location: IOIBUF_X39_Y29_N29
\MICRO_WE~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_WE,
	o => \MICRO_WE~input_o\);

-- Location: LCCOMB_X40_Y6_N2
\M1_WE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_WE~0_combout\ = (\MICRO_WE~input_o\) # (\mem_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MICRO_WE~input_o\,
	datad => \mem_sel~input_o\,
	combout => \M1_WE~0_combout\);

-- Location: IOIBUF_X39_Y0_N22
\MICRO_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MICRO_CLK,
	o => \MICRO_CLK~input_o\);

-- Location: IOIBUF_X41_Y5_N1
\FPGA_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_CLK,
	o => \FPGA_CLK~input_o\);

-- Location: LCCOMB_X40_Y6_N4
\M1_CLK~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M1_CLK~0_combout\ = (\mem_sel~input_o\ & (\MICRO_CLK~input_o\)) # (!\mem_sel~input_o\ & ((\FPGA_CLK~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_sel~input_o\,
	datac => \MICRO_CLK~input_o\,
	datad => \FPGA_CLK~input_o\,
	combout => \M1_CLK~0_combout\);

-- Location: LCCOMB_X6_Y4_N28
\M2_A~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~0_combout\ = (\mem_sel~input_o\ & (\FPGA_A[0]~input_o\)) # (!\mem_sel~input_o\ & ((\MICRO_A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_A[0]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[0]~input_o\,
	combout => \M2_A~0_combout\);

-- Location: LCCOMB_X6_Y4_N14
\M2_A~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~1_combout\ = (\mem_sel~input_o\ & (\FPGA_A[1]~input_o\)) # (!\mem_sel~input_o\ & ((\MICRO_A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_A[1]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[1]~input_o\,
	combout => \M2_A~1_combout\);

-- Location: LCCOMB_X27_Y26_N8
\M2_A~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~2_combout\ = (\mem_sel~input_o\ & (\FPGA_A[2]~input_o\)) # (!\mem_sel~input_o\ & ((\MICRO_A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_A[2]~input_o\,
	datac => \MICRO_A[2]~input_o\,
	datad => \mem_sel~input_o\,
	combout => \M2_A~2_combout\);

-- Location: LCCOMB_X27_Y26_N2
\M2_A~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~3_combout\ = (\mem_sel~input_o\ & (\FPGA_A[3]~input_o\)) # (!\mem_sel~input_o\ & ((\MICRO_A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_A[3]~input_o\,
	datab => \MICRO_A[3]~input_o\,
	datad => \mem_sel~input_o\,
	combout => \M2_A~3_combout\);

-- Location: LCCOMB_X27_Y26_N4
\M2_A~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~4_combout\ = (\mem_sel~input_o\ & ((\FPGA_A[4]~input_o\))) # (!\mem_sel~input_o\ & (\MICRO_A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MICRO_A[4]~input_o\,
	datac => \FPGA_A[4]~input_o\,
	datad => \mem_sel~input_o\,
	combout => \M2_A~4_combout\);

-- Location: LCCOMB_X27_Y26_N6
\M2_A~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~5_combout\ = (\mem_sel~input_o\ & ((\FPGA_A[5]~input_o\))) # (!\mem_sel~input_o\ & (\MICRO_A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_sel~input_o\,
	datac => \MICRO_A[5]~input_o\,
	datad => \FPGA_A[5]~input_o\,
	combout => \M2_A~5_combout\);

-- Location: LCCOMB_X27_Y26_N16
\M2_A~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~6_combout\ = (\mem_sel~input_o\ & (\FPGA_A[6]~input_o\)) # (!\mem_sel~input_o\ & ((\MICRO_A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_sel~input_o\,
	datac => \FPGA_A[6]~input_o\,
	datad => \MICRO_A[6]~input_o\,
	combout => \M2_A~6_combout\);

-- Location: LCCOMB_X27_Y26_N26
\M2_A~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~7_combout\ = (\mem_sel~input_o\ & ((\FPGA_A[7]~input_o\))) # (!\mem_sel~input_o\ & (\MICRO_A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MICRO_A[7]~input_o\,
	datab => \FPGA_A[7]~input_o\,
	datad => \mem_sel~input_o\,
	combout => \M2_A~7_combout\);

-- Location: LCCOMB_X27_Y26_N20
\M2_A~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~8_combout\ = (\mem_sel~input_o\ & ((\FPGA_A[8]~input_o\))) # (!\mem_sel~input_o\ & (\MICRO_A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_sel~input_o\,
	datac => \MICRO_A[8]~input_o\,
	datad => \FPGA_A[8]~input_o\,
	combout => \M2_A~8_combout\);

-- Location: LCCOMB_X27_Y26_N22
\M2_A~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~9_combout\ = (\mem_sel~input_o\ & ((\FPGA_A[9]~input_o\))) # (!\mem_sel~input_o\ & (\MICRO_A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_sel~input_o\,
	datac => \MICRO_A[9]~input_o\,
	datad => \FPGA_A[9]~input_o\,
	combout => \M2_A~9_combout\);

-- Location: LCCOMB_X30_Y21_N8
\M2_A~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~10_combout\ = (\mem_sel~input_o\ & (\FPGA_A[10]~input_o\)) # (!\mem_sel~input_o\ & ((\MICRO_A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_A[10]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[10]~input_o\,
	combout => \M2_A~10_combout\);

-- Location: LCCOMB_X30_Y21_N18
\M2_A~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~11_combout\ = (\mem_sel~input_o\ & (\FPGA_A[11]~input_o\)) # (!\mem_sel~input_o\ & ((\MICRO_A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_A[11]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[11]~input_o\,
	combout => \M2_A~11_combout\);

-- Location: LCCOMB_X30_Y21_N12
\M2_A~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~12_combout\ = (\mem_sel~input_o\ & (\FPGA_A[12]~input_o\)) # (!\mem_sel~input_o\ & ((\MICRO_A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_A[12]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[12]~input_o\,
	combout => \M2_A~12_combout\);

-- Location: LCCOMB_X30_Y21_N6
\M2_A~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~13_combout\ = (\mem_sel~input_o\ & ((\FPGA_A[13]~input_o\))) # (!\mem_sel~input_o\ & (\MICRO_A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_sel~input_o\,
	datac => \MICRO_A[13]~input_o\,
	datad => \FPGA_A[13]~input_o\,
	combout => \M2_A~13_combout\);

-- Location: LCCOMB_X30_Y21_N24
\M2_A~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~14_combout\ = (\mem_sel~input_o\ & (\FPGA_A[14]~input_o\)) # (!\mem_sel~input_o\ & ((\MICRO_A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_A[14]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[14]~input_o\,
	combout => \M2_A~14_combout\);

-- Location: LCCOMB_X30_Y21_N10
\M2_A~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~15_combout\ = (\mem_sel~input_o\ & (\FPGA_A[15]~input_o\)) # (!\mem_sel~input_o\ & ((\MICRO_A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FPGA_A[15]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[15]~input_o\,
	combout => \M2_A~15_combout\);

-- Location: LCCOMB_X30_Y21_N28
\M2_A~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~16_combout\ = (\mem_sel~input_o\ & (\FPGA_A[16]~input_o\)) # (!\mem_sel~input_o\ & ((\MICRO_A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_A[16]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[16]~input_o\,
	combout => \M2_A~16_combout\);

-- Location: LCCOMB_X30_Y21_N30
\M2_A~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~17_combout\ = (\mem_sel~input_o\ & (\FPGA_A[17]~input_o\)) # (!\mem_sel~input_o\ & ((\MICRO_A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FPGA_A[17]~input_o\,
	datac => \mem_sel~input_o\,
	datad => \MICRO_A[17]~input_o\,
	combout => \M2_A~17_combout\);

-- Location: LCCOMB_X40_Y6_N30
\M2_A~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_A~18_combout\ = (\mem_sel~input_o\ & ((\FPGA_A[18]~input_o\))) # (!\mem_sel~input_o\ & (\MICRO_A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MICRO_A[18]~input_o\,
	datac => \FPGA_A[18]~input_o\,
	datad => \mem_sel~input_o\,
	combout => \M2_A~18_combout\);

-- Location: LCCOMB_X40_Y6_N16
\M2_WE~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_WE~0_combout\ = (\MICRO_WE~input_o\) # (!\mem_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MICRO_WE~input_o\,
	datad => \mem_sel~input_o\,
	combout => \M2_WE~0_combout\);

-- Location: LCCOMB_X40_Y6_N10
\M2_CLK~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \M2_CLK~0_combout\ = (\mem_sel~input_o\ & ((\FPGA_CLK~input_o\))) # (!\mem_sel~input_o\ & (\MICRO_CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem_sel~input_o\,
	datac => \MICRO_CLK~input_o\,
	datad => \FPGA_CLK~input_o\,
	combout => \M2_CLK~0_combout\);
END structure;


