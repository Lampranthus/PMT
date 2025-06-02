library	IEEE;
use IEEE.std_logic_1164.all;

entity Resultado_n	is
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
end	Resultado_n;

architecture Registro of Resultado_n is

signal Qn, Qp : std_logic_vector(n-1 downto 0);

begin
	
	Combinacional: process(Qp,LDR,S)
	begin
		if (LDR='0') then
			Qn <= Qp;
		else
			Qn <= S;
		end if;
		R <= Qp;
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