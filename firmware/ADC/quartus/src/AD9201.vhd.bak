library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity registro_paralelo is
	
	generic(
		n : integer := 10
	);
	
	port(
		RST : in std_logic;
		CLK : in std_logic;
		Din : in std_logic_vector(n-1 downto 0);   
		OPC : in std_logic;
		Qout : out std_logic_vector(n-1 downto 0)	
	);
	
end registro_paralelo;


architecture simple of registro_paralelo is

signal qn, qp : std_logic_vector(n-1 downto 0);

begin
	
	c1 : process(qp, OPC, Din)
	begin 
	if (OPC='0') then
			qn <= qp; 
	else
		qn <= Din; 
	end if;
	Qout <= Qp;			
	end process; 

	secuencial : process (RST, CLK)
	begin		
		if(RST='0') then			
			qp <= (others => '0');			
		elsif(CLK'event and CLK='1') then			
			qp <= qn;	
		end if;
	end process;
	
end simple;