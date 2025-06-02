library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity registro_ac is	
	generic(
		n : integer := 60
	);	
	port(
		RST : in std_logic;
		CLK : in std_logic;
		OPC : in std_logic;
		D   : in std_logic_vector(n-1 downto 0);   
		Q   : out std_logic_vector(n-1 downto 0)	
	);	
end registro_ac;


architecture simple of registro_ac is

signal qn, qp : std_logic_vector(n-1 downto 0);

begin
	
	c1 : process(qp, OPC, D)
	begin
		if (OPC='0') then
			qn <= (others => '0'); 
		else
			qn <= D; 
		end if;
		Q <= qp;	
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