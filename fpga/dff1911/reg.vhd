library ieee;
use ieee.std_logic_1164.all;

entity reg is
generic (W: integer := 4);
port(
	clk: in std_logic;
	reset_n: in std_logic;
	enable: in std_logic;
	d: in std_logic_vector(W-1 downto 0);
	q: out std_logic_vector(W-1 downto 0)
);
end entity;

architecture dataflow of reg is
	component dff1911 is 
	port(
		clk: in std_logic;
		reset_n: in std_logic;
		enable: in std_logic;
		D: in std_logic;
		Q: out std_logic;
		QBAR: out std_logic
	);
	end component;
begin
	GEN: for i in 0 to W-1 generate
		REG: dff1911 port map(clk, reset_n, enable, d(i), q(i));
	end generate;
end architecture;

-- testbench ----------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use Work.testbench_utils.all;

entity reg_tb is end entity;

architecture tb of reg_tb is
	constant FREQ: integer := 1E9;
	constant T: time := 1 sec / FREQ;
	constant W: integer := 4;
	signal clk, reset_n, enable: std_logic;
	signal d, q, q_exp: std_logic_vector(W-1 downto 0);
begin
	gen_clk(clk, FREQ);
	UUT: entity Work.reg generic map (W) port map (clk, reset_n, enable, d, q);
	
	test: process
	begin
		-- testing normal behavior
		reset_n <= '1'; enable <= '1'; d <= x"5"; q_exp <= x"5";
		wait for T;
		assert_eq(unsigned(q_exp), unsigned(q), "0a. non-matching q (normal)");

		reset_n <= '1'; enable <= '1'; d <= x"A"; q_exp <= x"A";
		wait for T;
		assert_eq(unsigned(q_exp), unsigned(q), "0b. non-matching q (normal)");

		-- testing !enable behavior
		reset_n <= '1'; enable <= '0'; d <= x"5"; q_exp <= x"A";
		wait for T;
		assert_eq(unsigned(q_exp), unsigned(q), "1a. non-matching q (!enable)");
		
		reset_n <= '1'; enable <= '0'; d <= x"B"; q_exp <= x"A";
		wait for 4*T;
		assert_eq(unsigned(q_exp), unsigned(q), "1b. non-matching q (!enable)");

		-- testing sync reset behavior
		reset_n <= '0'; enable <= '1'; d <= x"5"; q_exp <= x"A";
		wait for 0.1*T;
		assert_eq(unsigned(q_exp), unsigned(q), "2a. non-matching q (async reset)");

		reset_n <= '0'; enable <= '1'; d <= x"5"; q_exp <= x"0";
		wait for 0.9*T;
		assert_eq(unsigned(q_exp), unsigned(q), "2b. non-matching q (sync reset)");

		-- set to some value
		reset_n <= '1'; enable <= '1'; d <= x"6"; q_exp <= x"6";
		wait for T;
		assert_eq(unsigned(q_exp), unsigned(q), "3a. non-matching q (normal)");

		-- now disable register
		reset_n <= '1'; enable <= '0'; d <= x"A"; q_exp <= x"6";
		wait for T;
		assert_eq(unsigned(q_exp), unsigned(q), "3b. non-matching q (!enable)");

		-- reset, making sure that reset works even when disabled
		reset_n <= '0'; enable <= '0'; d <= x"A"; q_exp <= x"0";
		wait for T;
		assert_eq(unsigned(q_exp), unsigned(q), "3c. non-matching q (reset, !enable)");

		-- done!
		report_tests_pass_status;
		wait;
	end process;
end architecture;

