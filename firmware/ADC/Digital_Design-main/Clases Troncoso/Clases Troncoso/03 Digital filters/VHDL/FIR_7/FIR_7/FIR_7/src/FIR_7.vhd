library	IEEE;
use IEEE.std_logic_1164.all;

entity FIR_7 is
	generic(
	n : integer := 18;
	m : integer := 18
	);
	port(
	RST : in  std_logic;
	CLK : in  std_logic;
	STF : in  std_logic;
	EOF : out std_logic;
	XK  : in  std_logic_vector(n-1 downto 0);
	YK  : out std_logic_vector(n-1 downto 0)
	);
end FIR_7;

architecture Filtro of FIR_7 is

component MAC
	generic(
	n : integer := 18;
	m : integer := 18
	);
	port(
	RST : in  std_logic;
	CLK : in  std_logic;
	STM : in  std_logic;
	RDY : out std_logic;
	K   : in  std_logic_vector(7     downto 0);
	I   : out std_logic_vector(7     downto 0);
	X   : in  std_logic_vector(n-1   downto 0);
	A   : in  std_logic_vector(m-1   downto 0);
	Y   : out std_logic_vector(m+n+7 downto 0)
	);
end component;

component Registro_n
	generic(
	n : integer := 8
	);
	port(
	RST : in  std_logic;
	CLK : in  std_logic;
	LDK : in  std_logic;
	Xa  : in  std_logic_vector(n-1 downto 0);
	Xb  : out std_logic_vector(n-1 downto 0)
	);
end component;
	
component Selector_X
	generic(
	n : integer := 8
	);
	port(
	XK,X1,X2,X3,X4,X5,X6,X7 : in  std_logic_vector(n-1 downto 0);
	I                       : in  std_logic_vector(7   downto 0);
	X                       : out std_logic_vector(n-1 downto 0)
	);
end component; 

component ROM_FIR is
   port(
      I : in  std_logic_vector(7 downto 0);
      A : out std_logic_vector(17 downto 0)
      );
end component;

component Barrel_Shf
	port(
	AFM : in  std_logic_vector(4  downto 0);
	Y   : in  std_logic_vector(43 downto 0);
	YK  : out std_logic_vector(17 downto 0)
	);
end component;

component Sincroniza
	port(
	RST : in  std_logic;
	CLK : in  std_logic;
	RDY : in  std_logic;
	LDK : out std_logic
	);
end component;

signal X,X1,X2,X3,X4,X5,X6,X7 : std_logic_vector(n-1   downto 0);
signal A                      : std_logic_vector(m-1   downto 0);
signal K,I                    : std_logic_vector(7     downto 0);
signal Y                      : std_logic_vector(n+m+7 downto 0);
signal AFM                    : std_logic_vector(4     downto 0);
signal RDY,LDK                : std_logic;

begin				   
	
	K   <= "00000111";
	AFM <= "10001";
	
	Unidad_1   : MAC        generic map(n,m) port map(RST,CLK,STF,RDY,K,I,X,A,Y);
	
	Registro_1 : Registro_n generic map(n)   port map(RST,CLK,LDK,XK,X1);
	Registro_2 : Registro_n generic map(n)   port map(RST,CLK,LDK,X1,X2);
	Registro_3 : Registro_n generic map(n)   port map(RST,CLK,LDK,X2,X3);
	Registro_4 : Registro_n generic map(n)   port map(RST,CLK,LDK,X3,X4);
	Registro_5 : Registro_n generic map(n)   port map(RST,CLK,LDK,X4,X5);
	Registro_6 : Registro_n generic map(n)   port map(RST,CLK,LDK,X5,X6);
	Registro_7 : Registro_n generic map(n)   port map(RST,CLK,LDK,X6,X7);
	
	Unidad_2   : Selector_X generic	map(n)   port map(XK,X1,X2,X3,X4,X5,X6,X7,I,X);
	Unidad_3   : ROM_FIR                     port map(I,A);
	Unidad_4   : Barrel_Shf	                 port map(AFM,Y,YK);
	Unidad_5   : Sincroniza                  port map(RST,CLK,RDY,LDK);
	
	EOF <= RDY;
	
end Filtro;