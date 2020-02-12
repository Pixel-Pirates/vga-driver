library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity addr_gen is
	port(
		row_cnt		: in ROW_COUNT_VECTOR;
		col_cnt		: in COL_COUNT_VECTOR;
		valid		: in std_logic;
		addr		: out MEM_ADDR_VECTOR); 
end addr_gen;

architecture linear of addr_gen is
begin
	process(row_cnt, col_cnt, valid)
	begin
		addr <= to_unsigned(0, MEM_ADDR_WIDTH);
		if(valid = '1') then
			addr <= resize((col_cnt - H_BACK_LEN) + ((row_cnt - V_BACK_LEN) * 640), MEM_ADDR_WIDTH);
		end if;
	end process;
end linear;

architecture xy of addr_gen is
begin
	process(row_cnt, col_cnt, valid)
	begin
		addr <= to_unsigned(0, MEM_ADDR_WIDTH);
		if(valid = '1') then
			addr <= unsigned((col_cnt - H_BACK_LEN) & resize(row_cnt - V_BACK_LEN,9));
		end if;
	end process;
end xy;