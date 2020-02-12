library ieee;
use ieee.std_logic_1164.all;
use work.VGA_LIB.all;
use ieee.numeric_std.all;

entity mem_device is
	generic (mem_units : positive := 1);
	port (
		addr	: in MEM_ADDR_VECTOR;
		data	: out MEM_DATA_VECTOR;
		clk		: in std_logic);
end mem_device;

architecture quartus of mem_device is
	signal mem_en : std_logic_vector(4 downto 0);
	type m_array is array (0 to mem_units) of MEM_DATA_VECTOR;
	signal m : m_array;
begin
	--U_MEMS: for i in 0 to mem_units generate
		U_MEM : work.r1p
		PORT MAP (
			address	 => std_logic_vector(addr(15 downto 0)),
			clock	 => clk,
			rden	 => mem_en(0),
			q	 => m(0)
		);
	--end generate;
	
	process(addr)
		variable mem_sel : unsigned(2 downto 0);
	begin
		mem_sel := addr(18 downto 16);
		mem_en <=(others => '0');
		data <= (others => '0');
		mem_en(0) <= '1'; data <= m(0);
		
		--case mem_sel is
			-- when "000" => mem_en(0) <= '1'; data <= m(0);
			-- when "001" => mem_en(1) <= '1'; data <= m(1);
			-- when "010" => mem_en(2) <= '1'; data <= m(2);
			-- when "011" => mem_en(3) <= '1'; data <= m(3);
			-- when "100" => mem_en(4) <= '1'; data <= m(4);
			-- when others => null;
		-- end case;
	end process;
end quartus;

architecture vivado of mem_device is
    component blk_mem_gen_0
        PORT (
            clka : IN STD_LOGIC;
            wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            addra : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
            dina : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
            clkb : IN STD_LOGIC;
            enb : IN STD_LOGIC;
            web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
            addrb : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
            dinb : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
            doutb : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
		);
	end component;
	
	signal we : std_logic_vector(0 downto 0) := "0";
	signal din: STD_LOGIC_VECTOR(8 DOWNTO 0) := X"00";
begin
    blk_mem :  blk_mem_gen_0
    port map(
        clka    => clk,
        wea     => we,
        addra   => std_logic_vector(addr),
        dina    => din,
        douta   => data,
        clkb    => clk,
        web     => we,
        addrb   => std_logic_vector(addr),
        dinb    => din,
        doutb   => open
    );
end vivado;