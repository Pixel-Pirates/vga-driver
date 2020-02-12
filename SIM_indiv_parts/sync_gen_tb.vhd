library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity sync_gen_tb is
end sync_gen_tb;

architecture tb of sync_gen_tb is
	signal clk, done	:	std_logic	:=	'0';
	signal rst			:	std_logic	:=	'1';
	
	signal row_cnt		: ROW_COUNT_VECTOR;
	signal col_cnt		: COL_COUNT_VECTOR;
	signal h_sync,v_sync: std_logic;
	signal valid		: std_logic;
begin
	U_SYNC : entity work.sync_gen
		port map(
			row_cnt		=> row_cnt,
			col_cnt		=> col_cnt,
			h_sync		=> h_sync,
			v_sync		=> v_sync,
			valid_out	=> valid);
	
	-- 25MHz clock with 50% duty cycle
	clk <= not clk after 20 ns when done = '0' else '0';
	
	process
	begin
		wait until clk'event and clk = '1';
		rst <= '0'; 
		for test in 0 to 2 loop
			for row in 0 to SCREEN_LEN-1 loop
				row_cnt <= to_unsigned(row, 10);
				for col in 0 to LINE_LEN-1 loop
					col_cnt <= to_unsigned(col, 10);
					wait until clk'event and clk = '1';
				end loop;
			end loop;
		end loop;
		
		done <= '1';
	end process;
end tb;