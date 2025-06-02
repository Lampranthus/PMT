library ieee;
use ieee.std_logic_1164.all;

entity RTF is
	
	port(	
	RST : in std_logic;
	CLK : in std_logic;
	X	: in std_logic_vector(9 downto 0);
	CLKO : 	out std_logic;
	--STF : in std_logic;
	TRI : in std_logic;
	--enable 	: 	out std_logic;
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
	N 	: in std_logic_vector(5 downto 0); --orden
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
	--enable 	: 	out std_logic;
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
		bt	: in std_logic;
		opc	: out std_logic;
		CLKADC	: out std_logic;
		REG	: out std_logic;
		STFIR: out std_logic;
		STSPI : out std_logic	
	);
end component; 

--------------------------------------------------------------------------------------

component PLL IS
	PORT
	(
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC 
	);
end component; 

--------------------------------------------------------------------------------------	

component contador_bt_clear is
	
	generic(
	
	n :	integer := 10;
	c : integer := 893 --fs = 100khz
	
	);
	
	port(
	
	RST : in std_logic;
	CLK : in std_logic;
	CLR : in std_logic;
	BT : out std_logic
	
	);
	
end component;

--------------------------------------------------------------------------------------	
	

signal EOP, busy, reg, STFIR, STSPI, C0, SYNC, bt, opc: std_logic; 
signal D : std_logic_vector(9 downto 0);
signal Y : std_logic_vector(11 downto 0);
signal N : std_logic_vector(5 downto 0); --orden

begin 
	
	N <= "110010"; 		--orden 50
	
	--SYNC <= STF and TRI; --empieza con el trigger para sincronizar la entrada con la toma de datos
	
	sc0 :  FIR_filter port map(RST,C0,N,STFIR,D,EOP,Y);
	sc1 :  AD9201 port map(RST,C0,reg,X,D);
	sc2 :  DAC7564 port map(RST,C0,Y,STSPI,busy,CS,SCLK,MOSI);
	sc4 :  FSM_RTF port map(RST,C0,TRI,EOP,busy,bt,opc,CLKO,reg,STFIR,STSPI);
	sc5 :  PLL port map(CLK,C0);
	sc6 :  contador_bt_clear port map(RST,C0,opc,bt);
	
end fsm;