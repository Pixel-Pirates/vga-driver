library ieee;
use ieee.std_logic_1164.all;
use work.VGA_LIB.all;
use ieee.numeric_std.all;

entity mem_wrapper is
	port (
		M_A, F_A	: in MEM_ADDR_VECTOR;
		S1_A, S2_A	: out MEM_ADDR_VECTOR;
		M_D			: in MEM_DATA_VECTOR;
		F_D			: out MEM_DATA_VECTOR;
		S1_D, S2_D	: inout MEM_DATA_VECTOR;
		
		M_WE		: in std_logic;
		S1_WE, S1_OE: out std_logic;
		S2_WE, S2_OE: out std_logic;
		SL1, SL2	: out std_logic;
		
		MA_O, FA_O	: out std_logic_vector(6 downto 0);
		S_SEL		: out std_logic_vector(6 downto 0);
		
		mem_sel		: in std_logic);
end mem_wrapper;

architecture wrap of mem_wrapper is
	signal micro_access : std_logic;
begin
	U_MEM_CTRL : entity work.mem_device_sram
		port map (
			-- Micro-controller 
			MICRO_A 			=> unsigned(M_A),
			MICRO_D(7 downto 0) => M_D,
			MICRO_WE			=> M_WE,
			
			-- Display Driver
			FPGA_A				=> unsigned(F_A),
			FPGA_D(7 downto 0)	=> F_D,
						
			-- Ping Pong Managment
			mem_sel 	=> mem_sel,
			
			-- SRAM1
			M1_A				=> S1_A,
			M1_D(7 downto 0)	=> S1_D,
			M1_WE				=> S1_WE,
			M1_OE				=> S1_OE,
						
			-- SRAM2
			M2_A				=> S2_A,
			M2_D(7 downto 0)	=> S2_D,
			M2_WE				=> S2_WE,
			M2_OE				=> S2_OE,
						
			-- Visual Out
			SRAM1	=> SL1,
			SRAM2	=> SL2
		);
		
	U_MICRO_ADDR : entity work.decoder7seg
	port map (
		input => std_logic_vector(M_A),
		output => MA_O
	);
	
	U_FPGA_ADDR : entity work.decoder7seg
	port map (
		input => std_logic_vector(F_A),
		output => FA_O
	);
	
	U_MEM_SELECTED : entity work.decoder7seg
	port map (
		input => "00"&not(mem_sel)&mem_sel,
		output => S_SEL
	);
end wrap;