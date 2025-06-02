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
	OPC : 	in std_logic;
	X	: 	in std_logic_vector(n-1 downto 0);
	D	: 	out std_logic_vector(n-1 downto 0)
	);	
	
end AD9201;

architecture fsm of AD9201 is 

-------------------------------------------------------------------------------------- 

component registro_paralelo is
	
	generic(
		n : integer := 10
	);
	
	port(
		RST : in std_logic;
		CLK : in std_logic;
		Din : in std_logic_vector(n-1 downto 0);   
		OPC : in std_logic;
		Qout : out std_logic_vector(n-1 downto 0)	
	);
end component;

--------------------------------------------------------------------------------------


begin 	
	c0 :  registro_paralelo port map(RST,CLK,X,OPC,D);
	
end fsm;