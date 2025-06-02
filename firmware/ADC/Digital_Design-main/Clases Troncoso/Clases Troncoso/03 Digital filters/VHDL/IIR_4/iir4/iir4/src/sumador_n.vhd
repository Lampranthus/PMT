library	IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Sumador_n is
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
end Sumador_n;

architecture Aritmetica of Sumador_n is
begin
	process(A,B,Ci)
	variable Suma : unsigned(n downto 0);
	begin
		Suma := unsigned('0' & A) + unsigned('0' & B) + Ci;
		S    <= std_logic_vector(Suma(n-1 downto 0));
		Co   <= std_logic(Suma(n));
	end process;
end Aritmetica;