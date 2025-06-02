library ieee;
use ieee.std_logic_1164.all;

entity FSM_MAC is
	port(	
		RST : in std_logic;
		CLK : in std_logic;
		fs	: in std_logic;
		Z 	: in std_logic;
		RAC	: out std_logic;
		RR	: out std_logic;
		OPC : out std_logic_vector(1 downto 0);
		EOP : out std_logic	
	);
end FSM_MAC;

architecture fsm of FSM_MAC is	


signal qp, qn : std_logic_vector(1 downto 0); 

begin  
	
	c1 : process(qp,fs,Z)
	begin
		
		case(qp) is
		
		--s0
		when "00" =>
		
		RAC <= '0';		--borra
		RR	<= '0';		--borra
		OPC <= "01";	--carga

		
		EOP <= '0';		--no fin
		
		if(fs='1') then
			qn <= "01";
		else
			qn <= qp;
		end if;
		
		--s1--
		when "01" => 
		
		RAC <= '1';		--guardar
		RR	<= '0';		--borra
		OPC <= "10";	--decrementa

		
		EOP <= '0';		--no fin
		
		if(Z='1') then
			qn <= "10";
		else
			qn <= qp;
		end if;
		
		--s2--
		when others => 
		
		RAC <= '0';		--mantiene
		RR	<= '1';		--guarda
		OPC <= "01";	--carga
		
		EOP <= '1';		--fin
		
		if(fs='1') then
			qn <= "01";
		else
			qn <= "00";	    --regresa a s0
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
	
end fsm;