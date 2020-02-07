library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder is
generic (SELW: integer := 4);
port (
	sel: in unsigned(SELW-1 downto 0);
	en: in std_logic;
	d: out std_logic_vector(2**SELW-1 downto 0)
);
end entity;

architecture structural of decoder is
begin
	process (sel, en) is
	begin
		-- this eliminates unnecessary latches generated with setting signal to default 0
		d <= (others => '0');
		if en = '1' then
			d(to_integer(sel)) <= '1';
		end if;
	end process;
end architecture;


-- testbench -----------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.custom_types.all;
use work.testbench_utils.all;

entity decoder_tb is end entity;

architecture tb of decoder_tb is
	constant FREQ: integer := 1E9;
	constant T: time := 1 sec / FREQ; -- simulation time unit
	signal sim_clk: std_logic;

	constant SELW: integer := 3;
	signal sel: unsigned(SELW-1 downto 0);
	signal en: std_logic;
	signal d: std_logic_vector(2**SELW-1 downto 0);

	type test_vector is record
		sel: std_logic_vector(SELW-1 downto 0);
		d: std_logic_vector(2**SELW-1 downto 0);
	end record;
	type test_vector_arr is array (natural range <>) of test_vector;

	constant td: test_vector_arr := (
		("000", "00000001"),
		("001", "00000010"),
		("010", "00000100"),
		("011", "00001000"),
		("100", "00010000"),
		("101", "00100000"),
		("110", "01000000"),
		("111", "10000000")
	);
begin
	gen_clk(sim_clk, FREQ, 0*T);
	UUT: entity work.decoder generic map (SELW) port map (sel, en, d);

	test: process is
	begin
		-- show undefined behavior
		wait for 2*T;

		-- test truth table
		for i in td'range loop
			sel <= unsigned(td(i).sel); en <= '1'; wait for T;
			assert_eq(unsigned(td(i).d), unsigned(d), "0." & integer'image(i) & ". non-matching d");
		end loop;

		-- test enable behavior
		sel <= "101"; en <= '0'; wait for T;
		assert_eq("00000000", unsigned(d), "1.0. non-matching d (!en)");
		
		sel <= "011"; en <= '0'; wait for T;
		assert_eq("00000000", unsigned(d), "1.1. non-matching d (!en)");

		-- done!
		report_tests_pass_status;
		wait;
	end process;
end architecture;
