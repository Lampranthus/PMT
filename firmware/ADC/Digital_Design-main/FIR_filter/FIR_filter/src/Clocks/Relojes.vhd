library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Relojes is
	
	port(	
	RST : 	in std_logic;
	CLK1 : 	in std_logic;
	CLK10 	: 	out std_logic;
	CLK50	: 	out std_logic	
	);	
	
end Relojes;

architecture fsm of Relojes is

component toggle_10ns_100ns is	
	
	port(
	
	RST,CLK : in std_logic;
	y : out std_logic
	
	);	
	
end component;

component toggle_10ns_500ns is	
	
	port(
	
	RST,CLK : in std_logic;
	y : out std_logic
	
	);
	
end component;

begin 	
	
	
	sc0 : toggle_10ns_100ns port map(RST,CLK1,CLK10);
	sc1 : toggle_10ns_500ns port map(RST,CLK1,CLK50);
	
end fsm;