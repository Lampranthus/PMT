library ieee;
use ieee.std_logic_1164.all;

entity RTF is
	
	port(	
	RST : in std_logic;
	CLK : in std_logic;
	X	: in std_logic_vector(9 downto 0);
	CLKO : 	out std_logic;
	STF : in std_logic;
	enable 	: 	out std_logic;
	CS 		: 	out std_logic;
	SCLK 	: 	out std_logic;
	MOSI	: 	out std_logic
	);	
	
end RTF;

architecture fsm of RTF is	

--------------------------------------------------------------------------------------

component FIR_filter is
	
	port(	
	RST : in std_logic;
	CLK : in std_logic;
	STF : in std_logic;
	X	: in std_logic_vector(9 downto 0);
	EOP : out std_logic;
	Y   : out std_logic_vector(11 downto 0)	
	);
end component;

--------------------------------------------------------------------------------------

component AD9201 is
	
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
end component; 

-------------------------------------------------------------------------------------- 

component DAC7564 is
	
	generic(	
	n :	integer := 12 
	);
	
	port(	
	RST : 	in std_logic;
	CLK : 	in std_logic;
	value	: 	in std_logic_vector(n-1 downto 0);
	--chan	: 	in std_logic_vector(1 downto 0);	
	start 	: 	in std_logic;
	busy 	: 	out std_logic;
	enable 	: 	out std_logic;
	CS 		: 	out std_logic;
	SCLK 	: 	out std_logic;
	MOSI	: 	out std_logic	
	);
end component;

--------------------------------------------------------------------------------------

component FSM_RTF is
	port(	
		RST : in std_logic;
		CLK : in std_logic;
		fs	: in std_logic;
		EOP : in std_logic;
		busy: in std_logic;
		REG	: out std_logic;
		STFIR: out std_logic;
		STSPI : out std_logic	
	);
end component; 

--------------------------------------------------------------------------------------

signal EOP, busy, reg, STFIR, STSPI: std_logic; 
signal D : std_logic_vector(9 downto 0);
signal Y : std_logic_vector(11 downto 0);

begin 
	
	CLKO <= not busy;
	
	sc0 :  FIR_filter port map(RST,CLK,STFIR,D,EOP,Y);
	sc1	:  AD9201 port map(RST,CLK,reg,X,D);
	sc2 :  DAC7564 port map(RST,CLK,Y,STSPI,busy,enable,CS,SCLK,MOSI);
	sc4 :  FSM_RTF port map(RST,CLK,STF,EOP,busy,reg,STFIR,STSPI);
	
end fsm;