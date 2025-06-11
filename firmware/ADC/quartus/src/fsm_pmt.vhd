library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity fsm_pmt	is
	
	port(
	
	RST, CLK : in std_logic;
	
	start_sync : in std_logic;
	stop_sync : in std_logic;
	pmt : out std_logic
	
	);
	
end fsm_pmt;

architecture simple of fsm_pmt is
signal qp,qn : std_logic_vector(1 downto 0);
begin  
	
	c1 : process(qp,start_sync,stop_sync)
	begin 
		
		case (qp) is
		
			when "00" => 
			pmt <= '0';
			
			if(start_sync='1') then
				qn <= "01";
			else
				qn <= "00";
			end if;
			
			when others =>
			
			pmt <= '1';
			
			if(stop_sync='1') then
				qn <= "00";
			else
				qn <= "01";
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