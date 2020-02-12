library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity clk_div_tb is
end clk_div_tb;

architecture tb of clk_div_tb is
	signal clk, sim_done	:	std_logic	:=	'0';
	signal rst			:	std_logic	:=	'1';
	
	signal div_2, div_4, div_8		: std_logic;
begin
	U_ADDR : entity work.clk_div
		port map(
			rst		=> rst,
			in_clk	=> clk,
			div_2	=> div_2,
			div_4	=> div_4,
			div_8	=> div_8);
		
	-- 25MHz clock with 50% duty cycle
	clk <= not clk after 10 ns when sim_done = '0' else '0';
	
	process
	begin
		wait until clk'event and clk = '1';
		rst <= '0'; 
		
		for test in 0 to 100 loop
			wait until clk'event and clk = '1';
		end loop;
		
		sim_done <= '1';
	end process;
end tb;