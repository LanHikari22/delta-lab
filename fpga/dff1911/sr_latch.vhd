library ieee;
use ieee.std_logic_1164.all;

entity sr_latch is
port(
	S: in std_logic;
	R: in std_logic;
	Q: out std_logic;
	QBAR: out std_logic
);
end entity;

architecture dataflow of sr_latch is
	signal QBAR_TMP: std_logic;
	signal Q_TMP: std_logic;
begin
	Q_TMP <= R nor QBAR_TMP;
	QBAR_TMP <= Q_TMP nor S;
	
	Q <= Q_TMP;
	QBAR <= QBAR_TMP;
end architecture;

-- testbench --------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity sr_latch_tb is end entity;

architecture testbench of sr_latch_tb is
	signal S, R, Q, QBAR: std_logic;
	
	type test_vector is record
		S, R, Q, QBAR: std_logic;
	end record;
	type test_vector_arr is array (natural range <>) of test_vector;
	
	constant test_vectors: test_vector_arr := ( -- needs at least two entries to compile
	   --S,   R,   Q,   QBAR
		('0', '0', 'U', 'U'),
		('0', '0', 'U', 'U'),
		('1', '0', '1', '0'),
		('0', '0', '1', '0'),
		('0', '1', '0', '1'),
		('0', '0', '0', '1')
		--('1', '1', '0', '0'), -- undefined state
		--('0', '0', '0', '0') -- breaks simulation, instable read results
	);
	
	-- displays the current index and at what time. now is impure, so is this function.
	impure function disp_cur_test(i: integer) return String is
	begin
		return "test vector " & integer'image(i) & " (t=" & time'image(now) & ")";
	end function;
	
	-- displays exp != act
	function disp_not_equal(exp: std_logic; act: std_logic) return String is
	begin
		return std_logic'image(exp) & " != " & std_logic'image(act); 
	end function;
		
begin
	UUT: entity work.sr_latch port map (
		S => S,
		R => R,
		Q => Q,
		QBAR => QBAR
	);
	
	tb1: process
	begin
		for i in test_vectors'range loop
			S <= test_vectors(i).S;
			R <= test_vectors(i).R;
			wait for 10 ps;	
				
			assert (test_vectors(i).Q = Q)
			report disp_cur_test(i) & " Q: " & disp_not_equal(test_vectors(i).Q, Q)
			severity error;
			
			assert (test_vectors(i).QBAR = QBAR)
			report disp_cur_test(i) & " QBAR: " & disp_not_equal(test_vectors(i).QBAR, QBAR)
			severity error;
		end loop;
		
		report "Finished running simulation.";
		wait; -- wait indefinitely
	end process;
end architecture;