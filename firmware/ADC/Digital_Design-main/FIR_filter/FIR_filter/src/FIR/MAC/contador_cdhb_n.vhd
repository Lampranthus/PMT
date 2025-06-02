library ieee;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity contador_cdhb_n is
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
end contador_cdhb_n;

architecture simple of contador_cdhb_n is	  
signal qp,qn : std_logic_vector(n-1 downto 0);
begin 
	
	c1 : process (qp,OPC,Q)
	begin
		case (OPC) is
			when "01" => qn <= Q;             	   --cargar
			when "10" => qn <= qp - 1;			   --decrementar
			when "11" => qn <= qp;				   --sostener
			when others => qn <= (others => '0');  --borrar
		end case; 
		
		if (qp=1) then
			Z <= '1'; 
		else
			Z <= '0'; 
		end if;
		
		I <= qp;  
		
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