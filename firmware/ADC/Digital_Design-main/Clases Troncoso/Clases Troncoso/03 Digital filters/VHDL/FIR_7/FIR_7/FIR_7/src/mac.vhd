library	IEEE;
use IEEE.std_logic_1164.all;

entity MAC is
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
end MAC;

architecture Completa of MAC is

component Sumador_n
	generic(
	n : integer := 8
	);
	port(
	A  : in  std_logic_vector(n-1 downto 0);
	B  : in  std_logic_vector(n-1 downto 0);
	Ci : in  std_logic;
	S  : out std_logic_vector(n-1 downto 0);
	Co : out std_logic
	);
end component;

component Multiplicador_nm_ss
	generic(
	n : integer := 8;
	m : integer := 8
	);
	port(
	X : in  std_logic_vector(n-1   downto 0);
	A : in  std_logic_vector(m-1   downto 0);
	R : out std_logic_vector(m+n-1 downto 0)
	);
end component;

component Acumulador_n
	generic(
	n : integer := 8
	);
	port(
	RST : in  std_logic;
	CLK : in  std_logic;
	LDA : in  std_logic;
	S   : in  std_logic_vector(n-1 downto 0);
	A   : out std_logic_vector(n-1 downto 0)
	);
end component;

component Resultado_n
	generic(
	n : integer := 8
	);
	port(
	RST : in  std_logic;
	CLK : in  std_logic;
	LDR : in  std_logic;
	S   : in  std_logic_vector(n-1 downto 0);
	R   : out std_logic_vector(n-1 downto 0)
	);
end component;

component Contador_8
	port(
	RST : in  std_logic;
	CLK : in  std_logic;
	OPC : in  std_logic_vector(1 downto 0);
	K   : in  std_logic_vector(7 downto 0);
	Z   : out std_logic;
	I   : out std_logic_vector(7 downto 0)
	);
end component;

component FSM_MAC
	port(
	RST : in  std_logic;
	CLK : in  std_logic;
	STM : in  std_logic;
	Z   : in  std_logic;
	LDA : out std_logic;
	LDR : out std_logic;
	OPC : out std_logic_vector(1 downto 0);
	RDY : out std_logic
	);
end component;

signal Ci, Co, Z  : std_logic;
signal LDA, LDR   : std_logic;
signal OPC        : std_logic_vector(1     downto 0);
signal P          : std_logic_vector(n+m-1 downto 0);
signal PP, S, ACC :	std_logic_vector(n+m+7 downto 0);

begin
	
	Bloque_1 : Sumador_n   
	           generic map(n+m+8)
	           port    map(ACC,PP,Ci,S,Co);
	Bloque_2 : Multiplicador_nm_ss 
	           generic map(n,m)
	           port    map(X,A,P);
	Bloque_3 : Acumulador_n       
	           generic map(n+m+8)
	           port    map(RST,CLK,LDA,S,ACC);
	Bloque_4 : Resultado_n 
	           generic map(n+m+8)
	           port    map(RST,CLK,LDR,S,Y);
	Bloque_5 : Contador_8
	           port    map(RST,CLK,OPC,K,Z,I);
	Bloque_6 : FSM_MAC
	           port    map(RST,CLK,STM,Z,LDA,LDR,OPC,RDY);
	
	PP(n+m+7 downto n+m) <= (others => P(n+m-1));
	PP(n+m-1 downto   0) <= P;
	Ci <= '0';
	
end Completa;