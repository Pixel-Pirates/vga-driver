library ieee;
use ieee.std_logic_1164.all;
use work.VGA_LIB.all;
use ieee.numeric_std.all;

entity mem_device_sram is
	port (
		-- Micro-controller 
		MICRO_A 	: in MEM_ADDR_VECTOR;
		MICRO_D 	: in MEM_DATA_VECTOR;
		-- MICRO_CLK	: in std_logic;
		MICRO_WE	: in std_logic;
		
		-- Display Driver
		FPGA_A		: in MEM_ADDR_VECTOR;
		FPGA_D		: out MEM_DATA_VECTOR;
		-- FPGA_CLK	: in std_logic;
		
		-- Ping Pong Managment
		mem_sel : in std_logic;
		
		-- SRAM1
		M1_A	: out MEM_ADDR_VECTOR;
		M1_D	: inout MEM_DATA_VECTOR;
		M1_WE	: out std_logic;
		M1_OE	: out std_logic;
		-- M1_CLK	: out std_logic;
		
		-- SRAM2
		M2_A	: out MEM_ADDR_VECTOR;
		M2_D	: inout MEM_DATA_VECTOR;
		M2_WE	: out std_logic;
		M2_OE	: out std_logic;
		-- M2_CLK	: out std_logic;
		
		-- Visual Out
		SRAM1	: out std_logic;
		SRAM2	: out std_logic);
end mem_device_sram;

architecture quartus of mem_device_sram is
	-- signal DATA_IN_1, DATA_IN_2 : MEM_DATA_VECTOR;
begin
	-- Denotes which SRAM the FPGA is reading from
	SRAM1 <= not mem_sel;
	SRAM2 <= mem_sel;

	process(MICRO_A, MICRO_D, MICRO_WE, FPGA_A, mem_sel, M1_D, M2_D)
	begin
		-- FPGA has selected Memory 2
		if(mem_sel = '1') then
			M1_A <= MICRO_A;
			M2_A <= FPGA_A;
			
			M1_WE <= MICRO_WE;
			M2_WE <= '1';
			
			M1_OE <= '1';
			M2_OE <= '0';
			
			-- M1_CLK <= MICRO_CLK;
			-- M2_CLK <= FPGA_CLK;
			
			M1_D <= MICRO_D;
			M2_D <= (others => 'Z');
			
			FPGA_D <= M2_D;
		else
			M1_A <= FPGA_A;
			M2_A <= MICRO_A;
			
			M1_WE <= '1';
			M2_WE <= MICRO_WE;
			
			M1_OE <= '0';
			M2_OE <= '1';
			
			-- M1_CLK <= FPGA_CLK;
			-- M2_CLK <= MICRO_CLK;
			
			M1_D <= (others => 'Z');
			M2_D <= MICRO_D;
			
			FPGA_D <= M1_D;			
		end if;
	end process;
end quartus;
