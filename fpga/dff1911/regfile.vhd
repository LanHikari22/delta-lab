library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.custom_types.all;

entity regfile is
generic (DATAW: integer := 4; ADDRW: integer := 3);
port (
	clk: in std_logic;
	rst: in std_logic; -- active low
	wr: in std_logic;
	wr_addr: in unsigned(ADDRW-1 downto 0);
	rd_addrA: in unsigned(ADDRW-1 downto 0);
	rd_addrB: in unsigned(ADDRW-1 downto 0);
	wr_data: in std_logic_vector(DATAW-1 downto 0);
	rd_dataA: out std_logic_vector(DATAW-1 downto 0);
	rd_dataB: out std_logic_vector(DATAW-1 downto 0)
);
end entity;

architecture behavioral of regfile is
	component reg is
	generic (W: integer := 4);
	port(
		clk: in std_logic;
		reset_n: in std_logic;
		enable: in std_logic;
		d: in std_logic_vector(W-1 downto 0);
		q: out std_logic_vector(W-1 downto 0)
	);
	end component;

	component decoder is
	generic (SELW: integer := 4);
	port (
		sel: in unsigned(SELW-1 downto 0);
		en: in std_logic;
		d: out std_logic_vector(2**SELW-1 downto 0)
	);
	end component;

	component busmux_t is 
	generic (DATAW: integer := 8; ADDRW: integer := 4);
	port (
		sel: in unsigned(ADDRW-1 downto 0);
		din: in bus_arr (0 to 2**ADDRW-1)(0 to DATAW-1);
		dout: out std_logic_vector(DATAW-1 downto 0)
	);
	end component;

	signal decoded_wr_addr: std_logic_vector(2**ADDRW-1 downto 0);

	-- declare an array signal of ADDRW-1 std_logic_vectors for each register
	signal qs: bus_arr (0 to 2**ADDRW-1)(0 to DATAW-1) := (others => (others => '0'));
begin
	-- map each register
	GEN: for i in 0 to 2**ADDRW-1 generate
		REG_N: reg generic map (DATAW) port map (clk, rst, decoded_wr_addr(i), wr_data, qs(i)); 
	end generate;

	-- decode wr_addr and enable one of the regisers if wr
	WR_DECODER: decoder generic map (ADDRW) port map (wr_addr, wr, decoded_wr_addr);
	
	-- select one of the register q outputs for A based on rd_dataA
	MUX_A: busmux_t generic map (DATAW, ADDRW) port map (rd_addrA, qs, rd_dataA);

	-- select one of the register q outputs for B based on rd_dataB
	MUX_B: busmux_t generic map (DATAW, ADDRW) port map (rd_addrB, qs, rd_dataB);
	
end architecture;



-- testbench -----------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.custom_types.all;
use work.testbench_utils.all;

entity regfile_tb is end entity;

architecture tb of regfile_tb is
	constant FREQ: integer := 1E9;
	constant T: time := 1 sec / FREQ;

	constant DATAW: integer := 4;
	constant ADDRW: integer := 4;

	signal clk: std_logic;
	signal rst: std_logic; -- active low
	signal wr: std_logic;
	signal wr_addr: unsigned(ADDRW-1 downto 0);
	signal rd_addrA: unsigned(ADDRW-1 downto 0);
	signal rd_addrB: unsigned(ADDRW-1 downto 0);
	signal wr_data: std_logic_vector(DATAW-1 downto 0);

	signal rd_dataA: std_logic_vector(DATAW-1 downto 0);
	signal rd_dataB: std_logic_vector(DATAW-1 downto 0);
begin
	gen_clk(clk, FREQ, 0*T);
	UUT: entity work.regfile generic map (DATAW, ADDRW) port map (clk, rst, wr, wr_addr, rd_addrA, rd_addrB, wr_data, rd_dataA, rd_dataB);

	test: process is
	begin
		-- show undefined input behavior
		wait for 2*T;

		-- reset system -- assuming undefined address behavior to lookup reg 0
		rst <= '0'; wait for 1*T;
		assert_eq(x"0", unsigned(rd_dataA), "0a. non-matching rd_dataA (reset, undefined lookup)");
		assert_eq(x"0", unsigned(rd_dataB), "0a. non-matching rd_dataB (reset, undefined lookup)");

		-- write something to reg0, implied by undefined register.
		rst <= '1'; wr <= '1'; wr_data <= x"C"; wait for 1*T;
		assert_eq(x"C", unsigned(rd_dataA), "0b. non-matching rd_dataA (write, undefined lookup)");
		assert_eq(x"C", unsigned(rd_dataB), "0b. non-matching rd_dataB (write, undefined lookup)");
		
		-- write something to registers, with explicit addresses
		rst <= '1'; wr <= '1'; wr_addr <= x"0"; rd_addrA <= x"0"; rd_addrB <= x"0"; wr_data <= x"A"; wait for 1*T;
		assert_eq(x"A", unsigned(rd_dataA), "1a. non-matching rd_dataA (write)");
		assert_eq(x"A", unsigned(rd_dataB), "1a. non-matching rd_dataB (write)");
		
		-- FIXME: for some reason, we enter an infinite loop if wr_addr and wr_data are updated at the same time!
		rst <= '1'; wr <= '1'; wr_addr <= x"5"; rd_addrA <= x"0"; rd_addrB <= x"5"; wait for 0.1*T; wr_data <= x"C"; wait for 0.9*T;
		assert_eq(x"A", unsigned(rd_dataA), "1b. non-matching rd_dataA (write)");
		assert_eq(x"C", unsigned(rd_dataB), "1b. non-matching rd_dataB (write)");
		
		rst <= '1'; wr <= '1'; wr_addr <= x"F"; rd_addrA <= x"F"; rd_addrB <= x"0"; wait for 0.1*T; wr_data <= x"9"; wait for 0.9*T;
		assert_eq(x"9", unsigned(rd_dataA), "1c. non-matching rd_dataA (write)");
		assert_eq(x"A", unsigned(rd_dataB), "1c. non-matching rd_dataB (read)");

		-- test reading register before writing it behavior
		rst <= '1'; wr <= '1'; wr_addr <= x"F"; rd_addrA <= x"F"; rd_addrB <= x"0"; wait for 0.1*T; 
		assert_eq(x"9", unsigned(rd_dataA), "2a. non-matching rd_dataA (read before write)");
		assert_eq(x"A", unsigned(rd_dataB), "2a. non-matching rd_dataB (read)");
		wr_data <= x"5"; wait for 0.9*T;
		assert_eq(x"5", unsigned(rd_dataA), "2a. non-matching rd_dataA (write)");
		assert_eq(x"A", unsigned(rd_dataB), "2a. non-matching rd_dataB (read)");

		-- test writing behavior when wr is inactive
		rst <= '1'; wr <= '0'; wr_addr <= x"F"; rd_addrA <= x"F"; rd_addrB <= x"0"; wait for 0.1*T; wr_data <= x"B"; wait for 1*T;
		assert_eq(x"5", unsigned(rd_dataA), "2b. non-matching rd_dataA (!write)");
		assert_eq(x"A", unsigned(rd_dataB), "2b. non-matching rd_dataB (read)");

		rst <= '0'; wr <= '1'; wr_addr <= x"F"; rd_addrA <= x"F"; rd_addrB <= x"0"; wait for 0.1*T; wr_data <= x"B"; wait for 0.9*T;
		assert_eq(x"0", unsigned(rd_dataA), "2c. non-matching rd_dataA (reset)");
		assert_eq(x"0", unsigned(rd_dataB), "2c. non-matching rd_dataB (reset)");


		report_tests_pass_status;
		wait;
	end process;

end architecture;
