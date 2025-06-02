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
	ADC_CLK : 	out std_logic;
	int_rst_in : 	in std_logic;
	int_rst_out : 	out std_logic;
	window : 	out std_logic;
	hit : 	out std_logic

	);	
	
end AD9201;

architecture fsm of AD9201 is 

--------------------------------------------------------------------------------------

component contador_bt is
	
	generic(
	
	n :	integer := 4;
	c : integer := 8
	
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
	bt : in std_logic;
	y : out std_logic
	
	);
	
end component;

--------------------------------------------------------------------------------------

signal ADCLK, bt, s_hit : std_logic;

begin 
	
	ADCLK <= int_rst_in;
	
	int_rst_out <= not ADCLK;
	
	--ADC_CLK <= not ADCLK;
	
	D <= X;
	
	window <= not ADCLK;
	
	--hit <= not ADCLK;
	
	hit <= s_hit;
	
	ADC_CLK <= s_hit;
	
	sc0 : contador_bt port map((not RST) or (int_rst_in), CLK, bt);
	sc1 : fsm_toggle port map(RST, CLK, bt, s_hit);
	
	
end fsm;