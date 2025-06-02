library	IEEE;
use IEEE.std_logic_1164.all;

entity Registro_n	is
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
end	Registro_n;

architecture Desplazamiento of Registro_n is

signal Qn, Qp : std_logic_vector(n-1 downto 0);

begin
	
	Combinacional: process(Qp,LDK,Xa)
	begin
		if (LDK='0') then
			Qn <= Qp;
		else
			Qn <= Xa;
		end if;
		Xb <= Qp;
	end process Combinacional;
		
	Secuencial: process(RST,CLK)
	begin		  
		if (RST='1') then
			Qp <= (others => '0');
		elsif (CLK'event and CLK='1') then
			Qp <= Qn;
		end if;
	end process Secuencial;
		
end Desplazamiento;