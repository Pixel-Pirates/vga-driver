library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clk_div is
	port (
		rst		: in std_logic;
		in_clk	: in std_logic;
		div_2	: out std_logic;
		div_4	: out std_logic;
		div_8	: out std_logic);
end clk_div;

architecture bhv of clk_div is
	signal pulse_count : unsigned(1 downto 0) := "00";
	signal by2, by4, by8	: std_logic;
begin
	process(rst, in_clk)
	begin
		if(rst = '1') then
			by2 <= '0';
			by4 <= '0';
			by8 <= '0';
		elsif(rising_edge(in_clk)) then
			pulse_count <= pulse_count + 1;
			
			by2 <= not by2;
						
			case pulse_count is
				when "01" => by4 <= not by4;
				when "11" => by4 <= not by4; by8 <= not by8;
				when others => null;
			end case;
		end if;
	end process;
	
	div_2 <= by2;
	div_4 <= by4;
	div_8 <= by8;
end bhv;