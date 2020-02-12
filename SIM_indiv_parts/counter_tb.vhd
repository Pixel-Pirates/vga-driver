library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity counter_tb is
end counter_tb;

architecture tb of counter_tb is
	signal rst			: std_logic := '1';
	signal row_cnt		: ROW_COUNT_VECTOR;
	signal col_cnt		: COL_COUNT_VECTOR;
	signal clk, done	:	std_logic	:=	'0';
begin
	U_COUNTER : entity work.counter
		port map(
			pixel_clk	=> clk,
			rst			=> rst,
			row_cnt		=> row_cnt,
			col_cnt		=> col_cnt);
	
	-- 25MHz clock with 50% duty cycle
	clk <= not clk after 10 ns when done = '0' else '0';
	
	process
	begin
		for i in 0 to 800*525+10 loop
			wait until clk'event and clk = '1';
			rst <= '0';
		end loop;
		
		done <= '1';
	end process;
end tb;