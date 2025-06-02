library ieee;
use ieee.std_logic_1164.all;

entity fsm_toggle is

	generic(
	
	n :	integer := 2
	
	);

	port(
	
	RST,CLK : in std_logic;
	bt : in std_logic;
	y : out std_logic
	
	);
end fsm_toggle;

architecture fsm of fsm_toggle is	


signal qp, qn : std_logic_vector(n-1 downto 0);

begin  
	
	c1 : process(qp,bt)
	begin
		
		case(qp) is
		
		--s0
		when "00" =>
		y <= '0'; 
		if(bt='1') then
			qn <= "01";
		else
			qn <= "00";
		end if;
		
		--s1
		when "01" =>
		y <= '1'; 
	
		qn <= "10";
		
		--s2
		when "10" =>
		y <= '1'; 
		
		qn <= "11";
		
		
		--s3
		when others =>
		y <= '1'; 
		
		qn <= "00";
	
		
		
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
	
end fsm;