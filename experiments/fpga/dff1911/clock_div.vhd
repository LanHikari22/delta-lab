library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_div is
generic (FCLK_IN: integer := 50E6; FCLK_OUT: integer := 50 );
port (
	clk_in: in std_logic;
	clk_out: inout std_logic
);
end entity;


architecture behavioral of clock_div is
	constant PERIOD_CNT: integer := FCLK_IN / FCLK_OUT;
begin
	gen_clk: process (clk_in) is
		variable counter: integer := 0;
	begin
		if falling_edge(clk_in) then
			counter := counter + 1;
			if counter = PERIOD_CNT / 2 then
				clk_out <= '1';
			elsif counter = PERIOD_CNT or counter = 0 then
				clk_out <= '0';
				counter := 0;
			end if;
		end if;
	end process;
end architecture;



-- testbench ----------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.testbench_utils.all;

entity clock_div_tb is end entity;

architecture tb of clock_div_tb is
	constant FCLK_IN: integer := 50E6;
	constant T: time := 1 sec / FCLK_IN;
	signal clk_in: std_logic;
	signal clk_50, clk_25, clk_16, clk_12, clk_01: std_logic;
begin
	CLK_GEN: gen_clk(clk_in, FCLK_IN, 0*T);
	UUT_50: entity work.clock_div generic map (FCLK_IN, 50E6) port map (clk_in, clk_50);
	UUT_25: entity work.clock_div generic map (FCLK_IN, 25E6) port map (clk_in, clk_25);
	UUT_16: entity work.clock_div generic map (FCLK_IN, 1667E4) port map (clk_in, clk_16);
	UUT_12: entity work.clock_div generic map (FCLK_IN, 125E5) port map (clk_in, clk_12);
	UUT_01: entity work.clock_div generic map (FCLK_IN, 1E6) port map (clk_in, clk_01);

end architecture;
