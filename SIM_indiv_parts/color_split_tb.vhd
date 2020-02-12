library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity color_split_tb is
end color_split_tb;

architecture tb of color_split_tb is
	signal clk, done	:	std_logic	:=	'0';
	signal rst			:	std_logic	:=	'1';
	
	signal r, g, b		: COLOR_CHANNEL;
	signal data			: std_logic_vector(15 downto 0);
	signal valid		: std_logic;
begin
	U_ADDR : entity work.color_split
		port map(
			colors	=> data,
			valid	=> valid,
			red		=> r,
			green	=> g,
			blue	=> b);
		
	-- 25MHz clock with 50% duty cycle
	clk <= not clk after 10 ns when done = '0' else '0';
	
	process
	begin
		wait until clk'event and clk = '1';
		rst <= '0'; 
		
		data <= X"0123";
		valid <= '1';
		wait until clk'event and clk = '1';
		valid <= '0';
		wait until clk'event and clk = '1';
		
		data <= X"0246";
		valid <= '1';
		wait until clk'event and clk = '1';
		valid <= '0';
		wait until clk'event and clk = '1';
		
		data <= X"0369";
		valid <= '1';
		wait until clk'event and clk = '1';
		valid <= '0';
		wait until clk'event and clk = '1';
		
		data <= X"0AAA";
		valid <= '1';
		wait until clk'event and clk = '1';
		valid <= '0';
		wait until clk'event and clk = '1';
		
		done <= '1';
	end process;
end tb;