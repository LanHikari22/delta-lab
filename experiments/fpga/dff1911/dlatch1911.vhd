library ieee;
use ieee.std_logic_1164.all;

entity dlatch1911 is
port(
	D: 	in std_logic;
	EN: 	in std_logic;
	Q: 	out std_logic;
	QBAR: out std_logic
);
end entity;

architecture dataflow of dlatch1911 is
	component sr_latch is
	port(
		S: in std_logic;
		R: in std_logic;
		Q: out std_logic;
		QBAR: out std_logic
	);
	end component;
	
	signal S, R: std_logic;
begin
	S <= D and EN;
	R <= not D and EN;
	SR: sr_latch port map (S, R, Q, QBAR);
end architecture;

-- testbench -------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use Work.testbench_utils.all;

entity dlatch1911_tb is end entity;

architecture testbench of dlatch1911_tb is
	signal D, EN, Q, QBAR: std_logic;
	
	type test_vector is record
		D, EN, Q, QBAR: std_logic;
	end record;
	
	type test_vector_arr is array (natural range <>) of test_vector;
	constant test_vectors: test_vector_arr := (
	--   D    EN   Q    QBAR 
		('0', '0', 'U', 'U'),
		('0', '1', '0', '1'),
		('0', '0', '0', '1'),
		('1', '0', '0', '1'),
		('1', '1', '1', '0'),
		('1', '0', '1', '0'),
		('0', '0', '1', '0'),
		('0', '1', '0', '1'),
		('0', '0', '0', '1'),
		('1', '0', '0', '1')
	);
	
begin
	UUT: entity Work.dlatch1911 port map (D, EN, Q, QBAR);
	
	test: process is
	begin
		for i in test_vectors'range loop
			D <= test_vectors(i).D; EN <= test_vectors(i).EN;
			wait for 10 ps;
			
			assert_eq(test_vectors(i).Q, Q, disp_cur_test(i) & " Q");
			assert_eq(test_vectors(i).QBAR, QBAR, disp_cur_test(i) & " QBAR");
		end loop;
		
		report_tests_pass_status;
		wait; -- indefinitely
	end process;
end architecture;
