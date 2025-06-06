library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity contador_a_n is
	generic(
	n : integer :=16
	);
	
	port(
	RST, CLK : in std_logic;
	Q :out std_logic_vector(n-1 downto 0)
	);
end contador_a_n;
	
architecture simple of contador_a_n is
signal qp, qn : std_logic_vector(n-1 downto 0);
begin
c1 : process(qp)

	begin
		qn <= qp+1;
	end process;
	
secuencial : process(RST,CLK)
	begin
	if(RST='0') then
		qp <= (others =>'0');
	elsif(CLK'event and CLK='1') then
		qp <= qn;
	end if;
	end process; 
	
	Q <= qp;

end simple;