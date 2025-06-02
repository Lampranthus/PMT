library ieee;
use ieee.std_logic_1164.all;

entity FIR_filter is
	
	port(	
	RST : in std_logic;
	CLK : in std_logic;
	STF : in std_logic;
	X	: in std_logic_vector(9 downto 0);
	EOP : out std_logic;
	Y   : out std_logic_vector(11 downto 0)	
	);	
	
end FIR_filter;

architecture fsm of FIR_filter is	

--------------------------------------------------------------------------------------

component mux_5a1_n is
	generic(
	n	:	integer := 10
	);
	port(
	x0,x1,x2,x3,x4	: in std_logic_vector(n-1 downto 0);
	s			: in std_logic_vector(5 downto 0);
	y			: out std_logic_vector(n-1 downto 0)
	);
end component;

--------------------------------------------------------------------------------------

component LUT is
port (
    F	:	in std_logic_vector(5 downto 0);
    A	: 	out std_logic_vector(12 downto 0)
    ); 		
end component; 

-------------------------------------------------------------------------------------- 

component MAC is
generic(
	S : integer := 9 
);	 

port( 
	RST : in std_logic; 
	CLK : in std_logic; 
	STF : in std_logic; 
	X : in std_logic_vector(9 downto 0); 
	A : in std_logic_vector(12 downto 0); 
	C : in std_logic_vector(5 downto 0); 	
	EOF : out std_logic; 
	I : out std_logic_vector(5 downto 0);
	Y : out std_logic_vector(11 downto 0)
); 
end component; 

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


signal EOF : std_logic; 
signal M,X1,X2,X3,X4 : std_logic_vector(9 downto 0); 
signal N,I : std_logic_vector(5 downto 0); 
signal A : std_logic_vector(12 downto 0); 

begin 
	
	N <= "000100";
	EOP <= EOF;
	
	sc0 :  mux_5a1_n port map(X,X1,X2,X3,X4,I,M);
	sc1	:  LUT port map(I,A);
	sc2 :  MAC port map(RST,CLK,STF,M,A,N,EOF,I,Y);
	sc3 :  registro_paralelo port map(RST,CLK,X,EOF,X1);
	sc4 :  registro_paralelo port map(RST,CLK,X1,EOF,X2);
	sc5 :  registro_paralelo port map(RST,CLK,X2,EOF,X3);
	sc6 :  registro_paralelo port map(RST,CLK,X3,EOF,X4);
	
end fsm;