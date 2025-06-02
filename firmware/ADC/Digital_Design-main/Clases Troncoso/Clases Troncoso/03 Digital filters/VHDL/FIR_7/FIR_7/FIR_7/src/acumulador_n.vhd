library	IEEE;
use IEEE.std_logic_1164.all;

entity Acumulador_n	is
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
end	Acumulador_n;

architecture Registro of Acumulador_n is

signal Qn, Qp : std_logic_vector(n-1 downto 0);

begin
	
	Combinacional: process(Qp,LDA,S)
	begin
		if (LDA='0') then
			Qn <= (others => '0');
		else
			Qn <= S;
		end if;
		A <= Qp;
	end process Combinacional;
		
	Secuencial: process(RST,CLK)
	begin		  
		if (RST='1') then
			Qp <= (others => '0');
		elsif (CLK'event and CLK='1') then
			Qp <= Qn;
		end if;
	end process Secuencial;
		
end Registro;