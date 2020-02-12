library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package VGA_LIB is

-----------------------------------------------------------------------------
-- CONSTANTS FOR HORIZONTAL TIMING

constant H_SYNC_LEN		:	integer := 96;
constant H_BACK_LEN		:	integer := 48 + H_SYNC_LEN;
constant H_COUNT		:	integer := 640 + H_BACK_LEN;
constant H_FRONT_LEN	:	integer := 16 + H_COUNT;

-----------------------------------------------------------------------------
-- CONSTANTS FOR VERTICAL TIMING

constant V_SYNC_LEN		:	integer := 2;
constant V_BACK_LEN		:	integer := 33 + V_SYNC_LEN;
constant V_COUNT		:	integer := 480 + V_BACK_LEN;
constant V_FRONT_LEN	:	integer := 10 + V_COUNT;

-----------------------------------------------------------------------------
-- CONSTANTS FOR MEMORY INTERFACE
  
-- constant MEM_ADDR_WIDTH		: integer := 19;
constant MEM_ADDR_WIDTH		: integer := 4;
subtype  MEM_ADDR_RANGE		is natural range MEM_ADDR_WIDTH-1 downto 0;
subtype	 MEM_ADDR_VECTOR	is unsigned(MEM_ADDR_RANGE);

-- constant MEM_DATA_WIDTH		: integer := 12;
constant MEM_DATA_WIDTH		: integer := 8;
subtype  MEM_DATA_RANGE		is natural range MEM_DATA_WIDTH-1 downto 0;
subtype	 MEM_DATA_VECTOR	is std_logic_vector(MEM_DATA_RANGE);

constant SCREEN_LEN			:	integer := 525;
subtype ROW_COUNT_RANGE 	is natural range SCREEN_LEN-1 downto 0;
subtype	ROW_COUNT_VECTOR	is unsigned(9 downto 0);

constant LINE_LEN			:	integer := 800;
subtype COL_COUNT_RANGE 	is natural range LINE_LEN-1 downto 0;
subtype	COL_COUNT_VECTOR	is unsigned(9 downto 0);

-----------------------------------------------------------------------------
-- CONSTANTS FOR COLORS CHANNELS

constant COLOR_BITS	: integer := 4;
subtype	COLOR_CHANNEL	is std_logic_vector(COLOR_BITS-1 downto 0);

end VGA_LIB;
