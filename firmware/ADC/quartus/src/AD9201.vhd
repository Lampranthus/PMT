library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity AD9201 is
	
	generic(	
	n :	integer := 10 
	);
	
	port(
	RST : 	in std_logic;
	CLK : 	in std_logic;
	X	: 	in std_logic_vector(n-1 downto 0);
	D	: 	out std_logic_vector(n-1 downto 0);
	adc_clk : 	out std_logic;
	pmt_active : 	in std_logic;
	int_rst : 	out std_logic;
	window_debug : 	out std_logic;
	hit_debug : 	out std_logic

	);	
	
end AD9201;

architecture fsm of AD9201 is 

--------------------------------------------------------------------------------------

component contador_bt_250 is
	
	generic(
	
	n :	integer := 8;
	c : integer := 250
	
	);
	
	port(
	
	RST : in std_logic;
	CLK : in std_logic;
	BT : out std_logic
	
	);
	
end component;

component contador_bt_n is
	
	generic(
	
	n :	integer := 4;
	c : integer := 9
	
	);
	
	port(
	
	RST : in std_logic;
	CLK : in std_logic;
	BT : out std_logic
	
	);
	
end component;

component contador_bt_10 is
	
	generic(
	
	n :	integer := 4;
	c : integer := 10
	
	);
	
	port(
	
	RST : in std_logic;
	CLK : in std_logic;
	BT : out std_logic
	
	);
	
end component;

component fsm_toggle is

	generic(
	
	n :	integer := 2
	
	);

	port(
	
	RST,CLK : in std_logic;
	window : in std_logic;
	bt250 : in std_logic;
	btn : in std_logic;
	bt10 : in std_logic;
	opc250 : out std_logic;
	opcn : out std_logic;
	opc10 : out std_logic;
	adc_clk : out std_logic;
	int_rst : out std_logic
	
	);
	
end component;

--------------------------------------------------------------------------------------

signal bt_250, bt_n, bt_10, opc_250, opc_n, opc_10, s_int_rst, s_adc_clk : std_logic;

begin 
	
	window_debug <= s_int_rst;
	int_rst <= s_int_rst;
	
	hit_debug <= s_adc_clk;
	adc_clk <= s_adc_clk;
	
	D <= X;
	
	sc0 : contador_bt_250 port map(opc_250, CLK, bt_250);
	sc2 : contador_bt_n port map(opc_n, CLK, bt_n);
	sc3 : contador_bt_10 port map(opc_10, CLK, bt_10);
	sc4 : fsm_toggle port map(RST, CLK, pmt_active, bt_250, bt_n, bt_10, opc_250, opc_n, opc_10, s_adc_clk, s_int_rst);
	
	
end fsm;