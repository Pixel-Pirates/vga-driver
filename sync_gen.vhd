library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity sync_gen is
	port(
		row_cnt		: in ROW_COUNT_VECTOR;
		col_cnt		: in COL_COUNT_VECTOR;
		h_sync		: out std_logic;
		v_sync		: out std_logic;
		valid_out	: out std_logic); 
end sync_gen;

architecture bhv of sync_gen is
	signal h, v : std_logic;
begin
	process(row_cnt, col_cnt)
	begin
		h_sync		<= '1';
		v_sync		<= '1';
		valid_out	<= '0';
		
		if(row_cnt < V_SYNC_LEN) then	-- Set V_SYNC pulse when appropriate
			v_sync <= '0';
		end if;

		-- IF row_cnt and col_cnt are in range corresponding to valid pixel data...
		if(row_cnt >= V_BACK_LEN and row_cnt < V_COUNT) then
			if(col_cnt < H_SYNC_LEN) then	-- Set H_SYNC pulse when appropriate
				h_sync <= '0';
			end if;
			
			if(col_cnt >= H_BACK_LEN and col_cnt < H_COUNT) then
				valid_out <= '1';		-- Set valid_out
			end if;
		end if;
	end process;
end bhv;