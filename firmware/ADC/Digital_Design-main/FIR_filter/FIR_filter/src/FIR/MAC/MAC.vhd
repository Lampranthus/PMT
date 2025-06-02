library IEEE; 
use IEEE.std_logic_1164.all; 
 
entity MAC is
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
end MAC; 
 
architecture Bloques of MAC is
------------------------------------------------ 
component multiplicador_n_m is
	
	generic(
	n : integer := 11;
	m : integer := 13
	);
	
	port(
	A : in std_logic_vector(n-1 downto 0);
	B : in std_logic_vector(m-1 downto 0);
	R : out std_logic_vector((n+m)-1 downto 0)
	);
end component; 
------------------------------------------------ 
component sumador_n is
	generic(
	n : integer :=30
	);
	port(
	A :	in std_logic_vector(n-1 downto 0);
	B :	in std_logic_vector(n-1 downto 0);
	S :	out std_logic_vector(n-1 downto 0)
	);
end component;
------------------------------------------------ 
component registro_ac is	
	generic(
		n : integer := 30
	);	
	port(
		RST : in std_logic;
		CLK : in std_logic;
		OPC : in std_logic;
		D   : in std_logic_vector(n-1 downto 0);   
		Q   : out std_logic_vector(n-1 downto 0)	
	);
end component; 
------------------------------------------------ 
component registro_r is	
	generic(
		n : integer := 30; 
		m : integer := 12
	);	
	port(
		RST : in std_logic;
		CLK : in std_logic;
		OPC : in std_logic;
		D   : in std_logic_vector(n-1 downto 0);   
		Q   : out std_logic_vector(m-1 downto 0);
		A   : in integer
	);	
end component; 
------------------------------------------------ 
component contador_cdhb_n is
	generic(
		n : integer :=6
	);
	port(
		RST	: in std_logic;
		CLK : in std_logic;
		OPC : in std_logic_vector(1 downto 0);
		Q 	: in std_logic_vector(n-1 downto 0);
		I 	: out std_logic_vector(n-1 downto 0);
		Z 	: out std_logic
	);
end component; 
------------------------------------------------ 
component FSM_MAC is
	port(
		RST : in std_logic;
		CLK : in std_logic;
		fs	: in std_logic;
		Z 	: in std_logic;
		RAC	: out std_logic;
		RR	: out std_logic;
		OPC : out std_logic_vector(1 downto 0);
		EOP : out std_logic
	);
end component; 
------------------------------------------------ 
signal Z, LDA, LDR : std_logic; 
signal OPC : std_logic_vector(1 downto 0); 
signal QM : std_logic_vector(23 downto 0); 
signal P, U, Q : std_logic_vector(29 downto 0);
signal XN : std_logic_vector(10 downto 0);
 
begin

P(29 downto 24) <= (others => P(23)); 
P(23 downto 0) <= QM;

XN(10) <= X(9);
XN(9 downto 0) <= X;

Bloque_1 : multiplicador_n_m port map(XN,A,QM); 
Bloque_2 : sumador_n port map(Q,P,U); 
Bloque_3 : registro_ac port map(RST,CLK,LDA,U,Q); 
Bloque_4 : registro_r port map(RST,CLK,LDR,U,Y,S); 
Bloque_5 : contador_cdhb_n port map(RST,CLK,OPC,C,I,Z); 
Bloque_6 : FSM_MAC port map(RST,CLK,STF,Z,LDA,LDR,OPC,EOF); 

end Bloques;