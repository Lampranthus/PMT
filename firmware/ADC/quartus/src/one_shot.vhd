library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity one_shot	is
	
	port(
	
	RST, CLK : in std_logic;
	
	x : in std_logic;
	y : out std_logic
	
	);
	
end one_shot;

architecture simple of one_shot is
signal qp,qn : std_logic_vector(1 downto 0);
begin  
	
	c1 : process(qp,x)
	begin 
		
		case (qp) is
		
			when "00" => 
			y <= '0';
			
			if(x='1') then
				qn <= "01";
			else
				qn <= qp;
			end if;
			
			when "01" =>
			
			y <= '1';
			
			qn <= "11";
			
			when others =>
			
			y <= '0';
			
			if(x='0') then
				qn <= "00";
			else
				qn <= qp;
			end if;
		
		end case;

	end process;	
	
	secuencial : process(RST,CLK)
	begin
		if(RST='0') then
			qp <= (others => '0');
		elsif(CLK'event and CLK='1') then
			qp <= qn;
		end if;
	end process;	
	
end simple;