library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package testbench_utils is
	impure function disp_cur_test(i: integer) return String;

	function disp_not_eq(exp: std_logic; act: std_logic) return String;
	function disp_not_eq(exp: unsigned; act: unsigned) return String;
	
	procedure report_error_and_inc_count(msg: String);
	procedure assert_eq(exp: std_logic; act: std_logic; msg: String);
	procedure assert_eq(exp: unsigned; act: unsigned; msg: String);

	procedure report_tests_pass_status;
	procedure end_simulation_if_error;

	-- if set to true, halt simulation when encountering error
	shared variable fatal: boolean := false; 
	-- must be shared, or multisim will be angry!
	shared variable error_count: integer := 0; 
	
	procedure gen_clk(signal clk: out std_logic; constant FREQ: integer; constant PHASE: time := 0 sec);
end package;

package body testbench_utils is
	-- displays the current index and at what time. now is impure, so is this function.
	impure function disp_cur_test(i: integer) return String is
	begin
		return "test vector " & integer'image(i) & " (t=" & time'image(now) & ")";
	end function;
	
	
	-- displays exp != act
	function disp_not_eq(exp: std_logic; act: std_logic) return String is
	begin
		return std_logic'image(exp) & " != " & std_logic'image(act); 
	end function;

	function disp_not_eq(exp: unsigned; act: unsigned) return String is
	begin
		return integer'image(to_integer(exp)) & " != " & integer'image(to_integer(act)); 
	end function;


	procedure report_error_and_inc_count(msg: String) is
	begin
		if not fatal then
			report msg
			severity error;
		else
			report msg
			severity failure;
		end if;

		error_count := error_count + 1;
	end procedure;
	

	procedure assert_eq(exp: std_logic; act: std_logic; msg: String) is
	begin		
		if (exp /= act) then
			report_error_and_inc_count(msg & ": " & disp_not_eq(exp, act));
		end if;
	end procedure;
	
	procedure assert_eq(exp: unsigned; act: unsigned; msg: String) is
	begin		
		if (exp /= act) then
			report_error_and_inc_count(msg & ": " & disp_not_eq(exp, act));
		end if;
	end procedure;
	
	
	procedure report_tests_pass_status is
	begin
		if error_count = 0 then
			report "OK! All tests ran successfully!";
		else
			report "FAILED! encountered " & integer'image(error_count) & " during simulation!";
		end if;
	end procedure;

	
	procedure end_simulation_if_error is
	begin
		fatal := true;
	end procedure;


	procedure gen_clk(signal clk: out std_logic; constant FREQ: integer; constant PHASE: time := 0 sec) is
		constant PERIOD: time := 1 sec / FREQ / 2; -- two cycles per period
	begin
		-- only start pulsing after PHASE
		clk <= '0';
		wait for PHASE;
		loop
			clk <= '0';
			wait for PERIOD;
			clk <= '1';
			wait for PERIOD;
		end loop;
	end procedure;
end package body;
