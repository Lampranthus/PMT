library ieee;
use ieee.std_logic_1164.all;

entity FIR_filter is
	
	port(	
	RST : in std_logic;
	CLK : in std_logic;
	N 	: in std_logic_vector(5 downto 0); --orden
	STF : in std_logic;
	X	: in std_logic_vector(9 downto 0);
	EOP : out std_logic;
	Y   : out std_logic_vector(11 downto 0)	
	);	
	
end FIR_filter;

architecture fsm of FIR_filter is	

--------------------------------------------------------------------------------------

component mux_51a1_n is
    generic(
        n : integer := 10
    );
    port(
        x0 : in std_logic_vector(n-1 downto 0);
        x1 : in std_logic_vector(n-1 downto 0);
        x2 : in std_logic_vector(n-1 downto 0);
        x3 : in std_logic_vector(n-1 downto 0);
        x4 : in std_logic_vector(n-1 downto 0);
        x5 : in std_logic_vector(n-1 downto 0);
        x6 : in std_logic_vector(n-1 downto 0);
        x7 : in std_logic_vector(n-1 downto 0);
        x8 : in std_logic_vector(n-1 downto 0);
        x9 : in std_logic_vector(n-1 downto 0);
        x10 : in std_logic_vector(n-1 downto 0);
        x11 : in std_logic_vector(n-1 downto 0);
        x12 : in std_logic_vector(n-1 downto 0);
        x13 : in std_logic_vector(n-1 downto 0);
        x14 : in std_logic_vector(n-1 downto 0);
        x15 : in std_logic_vector(n-1 downto 0);
        x16 : in std_logic_vector(n-1 downto 0);
        x17 : in std_logic_vector(n-1 downto 0);
        x18 : in std_logic_vector(n-1 downto 0);
        x19 : in std_logic_vector(n-1 downto 0);
        x20 : in std_logic_vector(n-1 downto 0);
        x21 : in std_logic_vector(n-1 downto 0);
        x22 : in std_logic_vector(n-1 downto 0);
        x23 : in std_logic_vector(n-1 downto 0);
        x24 : in std_logic_vector(n-1 downto 0);
        x25 : in std_logic_vector(n-1 downto 0);
        x26 : in std_logic_vector(n-1 downto 0);
        x27 : in std_logic_vector(n-1 downto 0);
        x28 : in std_logic_vector(n-1 downto 0);
        x29 : in std_logic_vector(n-1 downto 0);
        x30 : in std_logic_vector(n-1 downto 0);
        x31 : in std_logic_vector(n-1 downto 0);
        x32 : in std_logic_vector(n-1 downto 0);
        x33 : in std_logic_vector(n-1 downto 0);
        x34 : in std_logic_vector(n-1 downto 0);
        x35 : in std_logic_vector(n-1 downto 0);
        x36 : in std_logic_vector(n-1 downto 0);
        x37 : in std_logic_vector(n-1 downto 0);
        x38 : in std_logic_vector(n-1 downto 0);
        x39 : in std_logic_vector(n-1 downto 0);
        x40 : in std_logic_vector(n-1 downto 0);
        x41 : in std_logic_vector(n-1 downto 0);
        x42 : in std_logic_vector(n-1 downto 0);
        x43 : in std_logic_vector(n-1 downto 0);
        x44 : in std_logic_vector(n-1 downto 0);
        x45 : in std_logic_vector(n-1 downto 0);
        x46 : in std_logic_vector(n-1 downto 0);
        x47 : in std_logic_vector(n-1 downto 0);
        x48 : in std_logic_vector(n-1 downto 0);
        x49 : in std_logic_vector(n-1 downto 0);
		x50 : in std_logic_vector(n-1 downto 0);

        s : in std_logic_vector(5 downto 0);
        y : out std_logic_vector(n-1 downto 0)
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
signal M, X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14, X15, X16, X17, X18, X19, X20, X21, X22, X23, X24, X25, X26, X27, X28, X29, X30, X31, X32, X33, X34, X35, X36, X37, X38, X39, X40, X41, X42, X43, X44, X45, X46, X47, X48, X49, X50 : std_logic_vector(9 downto 0);
signal I : std_logic_vector(5 downto 0); 
signal A : std_logic_vector(12 downto 0); 

begin 
	EOP <= EOF;
	
	sc0 :  mux_51a1_n port map(X, X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14, X15, X16, X17, X18, X19, X20, X21, X22, X23, X24, X25, X26, X27, X28, X29, X30, X31, X32, X33, X34, X35, X36, X37, X38, X39, X40, X41, X42, X43, X44, X45, X46, X47, X48, X49, X50, I, M);
	sc1 :  LUT port map(I,A);
	sc2 :  MAC port map(RST,CLK,STF,M,A,N,EOF,I,Y);
	sc3 : registro_paralelo port map(RST,CLK,X,EOF,X1);
    sc4 : registro_paralelo port map(RST,CLK,X1,EOF,X2);
    sc5 : registro_paralelo port map(RST,CLK,X2,EOF,X3);
    sc6 : registro_paralelo port map(RST,CLK,X3,EOF,X4);
    sc7 : registro_paralelo port map(RST,CLK,X4,EOF,X5);
    sc8 : registro_paralelo port map(RST,CLK,X5,EOF,X6);
    sc9 : registro_paralelo port map(RST,CLK,X6,EOF,X7);
    sc10 : registro_paralelo port map(RST,CLK,X7,EOF,X8);
    sc11 : registro_paralelo port map(RST,CLK,X8,EOF,X9);
    sc12 : registro_paralelo port map(RST,CLK,X9,EOF,X10);
    sc13 : registro_paralelo port map(RST,CLK,X10,EOF,X11);
    sc14 : registro_paralelo port map(RST,CLK,X11,EOF,X12);
    sc15 : registro_paralelo port map(RST,CLK,X12,EOF,X13);
    sc16 : registro_paralelo port map(RST,CLK,X13,EOF,X14);
    sc17 : registro_paralelo port map(RST,CLK,X14,EOF,X15);
    sc18 : registro_paralelo port map(RST,CLK,X15,EOF,X16);
    sc19 : registro_paralelo port map(RST,CLK,X16,EOF,X17);
    sc20 : registro_paralelo port map(RST,CLK,X17,EOF,X18);
    sc21 : registro_paralelo port map(RST,CLK,X18,EOF,X19);
    sc22 : registro_paralelo port map(RST,CLK,X19,EOF,X20);
    sc23 : registro_paralelo port map(RST,CLK,X20,EOF,X21);
    sc24 : registro_paralelo port map(RST,CLK,X21,EOF,X22);
    sc25 : registro_paralelo port map(RST,CLK,X22,EOF,X23);
    sc26 : registro_paralelo port map(RST,CLK,X23,EOF,X24);
    sc27 : registro_paralelo port map(RST,CLK,X24,EOF,X25);
    sc28 : registro_paralelo port map(RST,CLK,X25,EOF,X26);
    sc29 : registro_paralelo port map(RST,CLK,X26,EOF,X27);
    sc30 : registro_paralelo port map(RST,CLK,X27,EOF,X28);
    sc31 : registro_paralelo port map(RST,CLK,X28,EOF,X29);
    sc32 : registro_paralelo port map(RST,CLK,X29,EOF,X30);
    sc33 : registro_paralelo port map(RST,CLK,X30,EOF,X31);
    sc34 : registro_paralelo port map(RST,CLK,X31,EOF,X32);
    sc35 : registro_paralelo port map(RST,CLK,X32,EOF,X33);
    sc36 : registro_paralelo port map(RST,CLK,X33,EOF,X34);
    sc37 : registro_paralelo port map(RST,CLK,X34,EOF,X35);
    sc38 : registro_paralelo port map(RST,CLK,X35,EOF,X36);
    sc39 : registro_paralelo port map(RST,CLK,X36,EOF,X37);
    sc40 : registro_paralelo port map(RST,CLK,X37,EOF,X38);
    sc41 : registro_paralelo port map(RST,CLK,X38,EOF,X39);
    sc42 : registro_paralelo port map(RST,CLK,X39,EOF,X40);
    sc43 : registro_paralelo port map(RST,CLK,X40,EOF,X41);
    sc44 : registro_paralelo port map(RST,CLK,X41,EOF,X42);
    sc45 : registro_paralelo port map(RST,CLK,X42,EOF,X43);
    sc46 : registro_paralelo port map(RST,CLK,X43,EOF,X44);
    sc47 : registro_paralelo port map(RST,CLK,X44,EOF,X45);
    sc48 : registro_paralelo port map(RST,CLK,X45,EOF,X46);
    sc49 : registro_paralelo port map(RST,CLK,X46,EOF,X47);
    sc50 : registro_paralelo port map(RST,CLK,X47,EOF,X48);
	sc51 : registro_paralelo port map(RST,CLK,X48,EOF,X49);
    sc52 : registro_paralelo port map(RST,CLK,X49,EOF,X50); ---hasta el 50
	
end fsm;