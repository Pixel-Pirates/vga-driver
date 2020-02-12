library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity color_split is
	port(
		colors	: in MEM_DATA_VECTOR;
		valid	: in std_logic;
		red, green, blue : out COLOR_CHANNEL);
end color_split;

architecture bhv of color_split is
begin
	process(colors, valid)
	begin
		red		<= (others => '0');
		green	<= (others => '0');
		blue	<= (others => '0');
		
		if(valid = '1') then
			red		<= colors(11 downto 8);
			green	<= colors( 7 downto 4);
			blue	<= colors( 3 downto 0);
		end if;
	end process;
end bhv;