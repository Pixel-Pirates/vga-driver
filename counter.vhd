library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity counter is
	port(
		pixel_clk	: in std_logic;
		rst			: in std_logic;
		row_cnt		: out ROW_COUNT_VECTOR;
		col_cnt		: out COL_COUNT_VECTOR);
end counter;

architecture bhv of counter is
	signal x_cnt : COL_COUNT_RANGE;
	signal y_cnt : ROW_COUNT_RANGE;
begin
	process(pixel_clk, rst)
	begin
		if(rst = '1') then
			x_cnt <= 0;
			y_cnt <= 0;
			
		elsif(rising_edge(pixel_clk)) then
			if(x_cnt = LINE_LEN-1) then			-- IF x_cnt = 799, end of line has been reached. Reset x_cnt and update y_cnt
				x_cnt <= 0;							-- reset x_cnt
				if(y_cnt = SCREEN_LEN-1) then		-- IF y_cnt = 524, end of screen has been reached
					y_cnt <= 0;							-- Reset y_cnt
				else
					y_cnt <= y_cnt + 1;				-- Otherwise increment y_cnt
				end if;
			else								-- If end of line not reached, increment x_cnt
				x_cnt <= x_cnt + 1;
			end if;
		end if;
	end process;
	
	row_cnt <= to_unsigned(x_cnt, 10);
	col_cnt <= to_unsigned(y_cnt, 10);
end bhv;
