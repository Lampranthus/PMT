library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity sumador_n is
	generic(
	n : integer :=30
	);
	port(
	A :	in std_logic_vector(n-1 downto 0);
	B :	in std_logic_vector(n-1 downto 0);
	S :	out std_logic_vector(n-1 downto 0)
	);
end sumador_n;

architecture aritmetica of sumador_n is
begin

	process(A,B)
	Variable suma	:	signed(n downto 0);
	begin
		suma := signed('0' & A) + signed('0' & B)+ '0';
		S <= std_logic_vector(suma(n-1 downto 0));
	end process;
	
end aritmetica;