library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.custom_types.all;

entity de10_lite_top is 
port (
	--clocks
	ADC_CLK_10 				: 	in 	std_logic;
	MAX10_CLK1_50			:	in		std_logic;
	MAX10_CLK2_50			:	in		std_logic;
	--DRAM
	DRAM_ADDR					: 	out	std_logic_vector(12	downto 0	);
	DRAM_BA						:	out	std_logic_vector(1 	downto 0	);
	DRAM_CAS_N					:	out	std_logic;
	DRAM_CKE						:	out	std_logic;
	DRAM_CLK						:	out	std_logic;
	DRAM_CS_N					:	out	std_logic;
	DRAM_DQ						:	inout	std_logic_vector(15 downto 0);
	DRAM_LDQM					:	out	std_logic;
	DRAM_UDQM					:	out	std_logic;
	DRAM_RAS_N					:	out	std_logic;
	DRAM_WE_N					:	out	std_logic;
	--seven seg
	HEX0, HEX1, HEX2,
	HEX3, HEX4, HEX5		:	out	std_logic_vector(7 downto 0);
	--general human interface
	KEY						:	in		std_logic_vector(1 downto 0);
	SW							:	in		std_logic_vector(9 downto 0);
	LEDR						:	out	std_logic_vector(9 downto 0);
	--VGA
	VGA_B, VGA_G, VGA_R	:	out	std_logic_vector(3 downto 0);
	VGA_HS, VGA_VS			:	out	std_logic;
	--gsensor
	GSENSOR_CS_N			:	out	std_logic;
	GSENSOR_INT				:	in		std_logic_vector(2 downto 1);
	GSENSOR_SCLK			:	out	std_logic;
	GSENSOR_SDI, 
	GSENSOR_SDO				:	inout	std_logic;
	--arduino
	ARDUINO_IO				:	inout std_logic_vector(15 downto 0);
	ARDUINO_RESET_N		:	inout	std_logic;
	--IDE/GPIO
	GPIO						:	inout	std_logic_vector(35 downto 0)
);
end entity;


architecture top of de10_lite_top is
    component updown_counter is
    generic(W: integer := 4);
    port(
        clk: in std_logic;
        reset_n: in std_logic;
        enable: in std_logic;
        up: in std_logic; -- up=1, down=0
        saturate: in std_logic;
        counter: out unsigned(W-1 downto 0)
    );
    end component;


    component clock_div is
    generic (FCLK_IN: integer := 50E6; FCLK_OUT: integer := 50 );
    port (
        clk_in: in std_logic;
        clk_out: inout std_logic
    );
    end component;

    component seg7 is
    port (
        A: in std_logic_vector(3 downto 0);
        seg: out std_logic_vector(7 downto 0)
    );
    end component;

    signal clk_8hz: std_logic;
    signal counter0, counter1, counter2, counter3, counter4, counter5: unsigned(3 downto 0);
begin
    U_CLK: clock_div generic map (50E6, 4) port map (MAX10_CLK1_50, clk_8hz);
    U_CNT0: updown_counter generic map (4) port map (clk=>clk_8hz, reset_n=>'1', enable=>'1', up=>'1', saturate=>'0', counter=>counter0);
    U_CNT1: updown_counter generic map (4) port map (clk=>clk_8hz, reset_n=>'1', enable=>'1', up=>'0', saturate=>'0', counter=>counter1);
    U_CNT2: updown_counter generic map (4) port map (clk=>clk_8hz, reset_n=>'1', enable=>'1', up=>'1', saturate=>'0', counter=>counter2);
    U_CNT3: updown_counter generic map (4) port map (clk=>clk_8hz, reset_n=>'1', enable=>'1', up=>'1', saturate=>'0', counter=>counter3);
    U_CNT4: updown_counter generic map (4) port map (clk=>clk_8hz, reset_n=>'1', enable=>'1', up=>'0', saturate=>'0', counter=>counter4);
    U_CNT5: updown_counter generic map (4) port map (clk=>clk_8hz, reset_n=>'1', enable=>'1', up=>'1', saturate=>'0', counter=>counter5);
    U_SEG0: seg7 port map (std_logic_vector(counter0), HEX0);
    U_SEG1: seg7 port map (std_logic_vector(counter1), HEX1);
    U_SEG2: seg7 port map (std_logic_vector(counter2), HEX2);
    U_SEG3: seg7 port map (std_logic_vector(counter3), HEX3);
    U_SEG4: seg7 port map (std_logic_vector(counter4), HEX4);
    U_SEG5: seg7 port map (std_logic_vector(counter5), HEX5);
	--unused below
	-- HEX0 <= "00000000";
--	HEX1 <= "00000000";
--	HEX2 <= "00000000";
--	HEX3 <= "00000000";
--	HEX4 <= "00000000";
--	HEX5 <= "00000000";
	
	--DRAM
	DRAM_ADDR		<= (others => '0');
	DRAM_BA			<= "11";
	DRAM_CAS_N		<= '1';
	DRAM_CKE			<= '1';
	DRAM_CLK			<= '1';
	DRAM_CS_N		<= '1';
	DRAM_DQ			<= (others => 'Z');
	DRAM_LDQM		<= '1';
	DRAM_RAS_N		<= '1';
	DRAM_UDQM		<= '1';
	DRAM_WE_N		<= '1';
	
	--LEDS
	LEDR <= "0000000000";
	
	--VGA
	VGA_B		<= x"0";
	VGA_R		<= x"0";
	VGA_G		<= x"0";
	VGA_HS 	<= '0';
	VGA_VS	<= '0';
	
	--GSENSOR
	GSENSOR_CS_N	<= '0';
	GSENSOR_SCLK	<= '0';
	GSENSOR_SDI		<= '0';
	GSENSOR_SDO		<= '0';
	
	--ARDUINO and IDE
	ARDUINO_IO			<= x"0000";
	ARDUINO_RESET_N	<= '1';
	GPIO					<= x"000000000";	
end architecture;
