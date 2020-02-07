library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity updown_counter is
generic(W: integer := 4);
port(
	clk: in std_logic;
	reset_n: in std_logic;
	enable: in std_logic;
	up: in std_logic; -- up=1, down=0
    saturate: in std_logic;
	counter: out unsigned(W-1 downto 0)
);
end entity;

architecture sequential of updown_counter is
begin
	count: process(clk, reset_n) is
		variable counter_v: unsigned(W-1 downto 0) :=(others => '0');
	begin
		if reset_n = '0' then
			counter_v := (others => '0');
		elsif rising_edge(clk) and enable = '1' then
			if up = '1' and (saturate = '0' or counter_v /= 2**W - 1) then
                counter_v := counter_v + 1;
			elsif up = '0' and (saturate = '0' or counter_v /= x"0") then
                counter_v := counter_v - 1;
			end if;
		end if;
		counter <= counter_v;
	end process;
end architecture;

-- testbench -------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use Work.testbench_utils.all;

entity updown_counter_tb is end entity;

architecture tb of updown_counter_tb is
	constant W: integer := 4;
	constant FREQ: integer := 1E9;
	constant T: time := 1 sec / FREQ;
	signal clk, reset_n, enable, up, saturate: std_logic;
	signal counter: unsigned(W-1 downto 0);
begin
    gen_clk(clk, FREQ, 0.5 * T); -- this procedure gets its own process since it's outside one!
	UUT: entity Work.updown_counter generic map (W) port map(clk, reset_n, enable, up, saturate, counter);

	test: process is
	begin
		-- 0. test default configuration (t: 0T)
		reset_n <= '1'; enable <= '1'; up <= '1'; saturate <= '0';
		wait for 5*T;
		assert_eq(to_unsigned(4, W), counter, "0. non-matching counter (normal)");
		wait for 5*T;
		
		-- 1. reset counter (counter=0xA, t: 10T)
		reset_n <= '0'; enable <= '1'; up <= '1'; saturate <= '0';
		wait for 1*T;
		assert_eq(to_unsigned(0, W), counter, "1. non-matching counter (reset)");
		wait for 4*T;

		-- 2. continue as normal (t: 15T)
		reset_n <= '1'; enable <= '1'; up <= '1'; saturate <= '0';
		wait for 2*T;
		assert_eq(to_unsigned(2, W), counter, "2a. non-matching counter (normal)");
		wait for 8*T;
		assert_eq(to_unsigned(16#A#, W), counter, "2b. non-matching counter (normal)");
		
		-- pause counter (t: 25T)
		reset_n <= '1'; enable <= '0'; up <= '1'; saturate <= '0';
		wait for 10*T;
		assert_eq(to_unsigned(16#A#, W), counter, "2c. non-matching counter (!enable)");
		
		-- 3. count backwards (t: 35T)
		reset_n <= '1'; enable <= '1'; up <= '0'; saturate <= '0';
		wait for 3*T;
		assert_eq(to_unsigned(7, W), counter, "3a. non-matching counter (!up)");
        wait for 7*T;
		assert_eq(to_unsigned(0, W), counter, "3b. non-matching counter (!up)");
		
        -- 4. reset counter
		reset_n <= '0'; enable <= '1'; up <= '1'; saturate <= '0';
        wait for 1*T;
		assert_eq(to_unsigned(0, W), counter, "4a. non-matching counter (reset)");

        -- count up to 0xF, and saturate there
		reset_n <= '1'; enable <= '1'; up <= '1'; saturate <= '1';
        wait for 20*T;
		assert_eq(to_unsigned(16#F#, W), counter, "4b. non-matching counter (saturate)");

        -- 5. count backwards
		reset_n <= '1'; enable <= '1'; up <= '0'; saturate <= '1';
        wait for 1*T;
		assert_eq(to_unsigned(16#E#, W), counter, "5a. non-matching counter (!up)");
        wait for 19*T;
		assert_eq(to_unsigned(0, W), counter, "5b. non-matching counter (saturate, !up)");


        -- done!
		report_tests_pass_status;
		wait;
	end process;
end architecture;
