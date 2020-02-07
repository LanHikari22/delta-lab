library ieee;
use ieee.std_logic_1164.all;

entity dff1911 is 
port(
	clk: in std_logic;
	reset_n: in std_logic;
	enable: in std_logic;
	D: in std_logic;
	Q: out std_logic;
	QBAR: out std_logic
);
end entity;

architecture dataflow of dff1911 is
	component dlatch1911 is
	port(
		D: 	in std_logic;
		EN: 	in std_logic;
		Q: 	out std_logic;
		QBAR: out std_logic
	);
	end component;
	
	signal D1, EN1, Q1, EN2: std_logic;
begin
	D1 <= D and reset_n;
	EN1 <= not clk and (enable or not reset_n);
	EN2 <= clk and (enable or not reset_n);
	
	DL1: dlatch1911 port map(D1, EN1, Q1, open);
	DL2: dlatch1911 port map(Q1, EN2, Q, QBAR);
end architecture;

-- testbench ---------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use Work.testbench_utils.all;

entity dff1911_tb is end entity;

architecture tb of dff1911_tb is
	signal clk, reset_n, enable, D, Q, QBAR: std_logic;
	
	type test_vector is record
		clk, reset_n, enable, D, Q, QBAR: std_logic;
	end record;
	type test_vector_arr is array (natural range <>) of test_vector;
	
	constant td: test_vector_arr := (
	--	  clk  !rst en   D    Q    QBAR 
		-- results are undefined at clk=0
		('0', '0', '0', '0', 'U', 'U'),
		('1', '0', '0', '0', '0', '1'),
		('0', '0', '0', '0', '0', '1'),
		
		-- on the rising edge, writing values to D when enable='1' writes to Q
		('1', '1', '1', '0', '0', '1'),
		('0', '1', '1', '1', '0', '1'),
		('1', '1', '1', '1', '1', '0'),
		('0', '1', '0', '0', '1', '0'),

		-- the value is held, regardless of enable and reset_n, if the clock isn't progressing
		('0', '0', '0', '0', '1', '0'),
		('0', '0', '1', '0', '1', '0'),
		('0', '1', '0', '0', '1', '0'),
		('0', '1', '1', '0', '1', '0'),

		-- syncronous reset_n clears Q, and takes priority over enable
		('1', '0', '0', '1', '0', '1'),
		('0', '0', '0', '1', '0', '1'),
		('1', '1', '1', '1', '0', '1'),
		('0', '1', '1', '1', '0', '1'),
		('1', '1', '1', '1', '1', '0'),
		('0', '0', '1', '1', '1', '0'),
		('1', '0', '1', '1', '0', '1'),

		('0', '1', '1', '1', '0', '1'),
		('1', '1', '1', '1', '1', '0')
	);
	
begin
	UUT: entity Work.dff1911 port map (clk, reset_n, enable, D, Q, QBAR);
	
	test: process
	begin
		for i in td'range loop
			clk <= td(i).clk; reset_n <= td(i).reset_n; enable <= td(i).enable; D <= td(i).D;
			wait for 10 ps;
			
			assert_eq(td(i).Q, Q, disp_cur_test(i) & " Q");
			assert_eq(td(i).QBAR, QBAR, disp_cur_test(i) & " QBAR");
			if (error_count /= 0) then
				exit;
			end if;
		end loop;
		report_tests_pass_status;
		wait; -- indefinitely
	end process;
end architecture;
