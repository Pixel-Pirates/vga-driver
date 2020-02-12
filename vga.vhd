library ieee;
use ieee.std_logic_1164.all;
use work.VGA_LIB.all;

entity vga is
	port(
		rst	: in std_logic;
		clk	: in std_logic;
		R	: out COLOR_CHANNEL;
		G	: out COLOR_CHANNEL;
		B	: out COLOR_CHANNEL
	);
end vga;

architecture bhv of vga is
	signal pixel_clk		: std_logic;
	signal row_count		: ROW_COUNT_VECTOR;
	signal col_count		: COL_COUNT_VECTOR;
	
	signal h_sync, v_sync	: std_logic;
	signal px_valid			: std_logic;
	
	signal pixel			: MEM_ADDR_VECTOR;
	signal color_data		: MEM_DATA_VECTOR;
begin
	U_CLK : entity work.clk_div
		port map(
			rst		=> rst,
			in_clk	=> clk,
			div_2	=> pixel_clk,
			div_4	=> open,
			div_8	=> open);
			
	U_COUNTER : entity work.counter
		port map(
			pixel_clk	=> pixel_clk,
			rst			=> rst,
			row_cnt		=> row_count,
			col_cnt		=> col_count);
	
	U_SYNC_GEN : entity work.sync_gen
		port map(
			row_cnt		=> row_count,
			col_cnt		=> col_count,
			h_sync		=> h_sync,
			v_sync		=> v_sync,
			valid_out	=> px_valid); 

	U_ADDR_GEN : entity work.addr_gen(xy)
		port map(
			row_cnt		=> row_count,
			col_cnt		=> col_count,
			valid		=> px_valid,
			addr		=> pixel); 
			
	U_COLOR_CHANNELS : entity work.color_split
		port map(
			colors	=> color_data,
			valid	=> px_valid,
			red		=> R,
			green	=> G,
			blue	=> B);

	U_MEM_DEV : entity work.mem_device(vivado)
		port map(
			clk		=> clk,
			addr	=> pixel,
			data	=> color_data);
end bhv;