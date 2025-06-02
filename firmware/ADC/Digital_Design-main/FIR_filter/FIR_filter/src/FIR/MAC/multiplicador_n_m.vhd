library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity multiplicador_n_m is
	
	generic(
	n : integer := 12;
	m : integer := 12
	);
	
	port(
	A : in std_logic_vector(n-1 downto 0);
	B : in std_logic_vector(m-1 downto 0);
	R : out std_logic_vector((n+m)-1 downto 0)
	);
	
end multiplicador_n_m;


architecture aritmetica of multiplicador_n_m is
begin

	process(A,B)
	variable P : signed((n+m)-1 downto 0);
	begin
		P := signed(A) * signed(B);
		R <= std_logic_vector(P);
	end process;
	
end aritmetica;