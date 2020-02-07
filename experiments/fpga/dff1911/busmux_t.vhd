library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.custom_types.all;


entity busmux_t is -- conflicts with megafunction library from Quartus Prime
generic (DATAW: integer := 8; ADDRW: integer := 4);
port (
	sel: in unsigned(ADDRW-1 downto 0);
	din: in bus_arr (0 to 2**ADDRW-1)(0 to DATAW-1);
	dout: out std_logic_vector(DATAW-1 downto 0)
);
end entity;

architecture dataflow of busmux_t is
begin
	dout <= din(to_integer(sel));
end architecture;



-- testbench ----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.custom_types.all;	
use work.testbench_utils.all;

entity busmux_t_tb is end entity;

architecture tb of busmux_t_tb is
	constant FREQ: integer := 1E9;
	constant T: time := 1 sec / FREQ; -- wait period of simulation
	signal sim_clk: std_logic;

	constant DATAW: integer := 4;
	constant ADDRW: integer := 3;

	signal sel: unsigned(ADDRW-1 downto 0);
	signal din: bus_arr (0 to 2**ADDRW-1)(0 to DATAW-1) := (x"A", x"B", x"C", x"D", x"0", x"1", x"2", x"3");
	signal dout: std_logic_vector(DATAW-1 downto 0);
	signal dout_exp: std_logic_vector(DATAW-1 downto 0);

begin
	gen_clk(sim_clk, FREQ, 0*T);
	UUT: entity work.busmux_t generic map (DATAW, ADDRW) port map (sel, din, dout);

	test: process is
	begin
		-- show undefined input behavior
		wait for 2*T;

		sel <= "001"; dout_exp <= x"B"; wait for T;
		assert_eq(unsigned(dout_exp), unsigned(dout), "0a. non-matching dout");
		
		sel <= "000"; dout_exp <= x"A"; wait for T;
		assert_eq(unsigned(dout_exp), unsigned(dout), "0b. non-matching dout");
		
		sel <= "011"; dout_exp <= x"D"; wait for T;
		assert_eq(unsigned(dout_exp), unsigned(dout), "0c. non-matching dout");

		sel <= "010"; dout_exp <= x"C"; wait for T;
		assert_eq(unsigned(dout_exp), unsigned(dout), "0d. non-matching dout");

		sel <= "110"; dout_exp <= x"2"; wait for T;
		assert_eq(unsigned(dout_exp), unsigned(dout), "0e. non-matching dout");

		
		report_tests_pass_status;
		wait;
	end process;
end architecture;
