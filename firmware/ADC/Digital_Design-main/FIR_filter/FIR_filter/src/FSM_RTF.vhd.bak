library ieee;
use ieee.std_logic_1164.all;

entity FSM_RTF is
	port(	
		RST : in std_logic;
		CLK : in std_logic;
		fs	: in std_logic;
		EOP : in std_logic;
		busy: in std_logic;
		REG	: out std_logic;
		STFIR: out std_logic;
		STSPI : out std_logic	
	);
end FSM_RTF;

architecture fsm of FSM_RTF is	


signal qp, qn : std_logic_vector(2 downto 0); 

begin  
	
	c1 : process(qp,fs,EOP,busy)
	begin
		
		case(qp) is
		
		--s0
		when "000" =>
		
		REG <= '0';		--no registra
		STFIR	<= '0';	--no fir
		STSPI <= '0';	--no spi
		
		if(fs='1') then
			qn <= "001";
		else
			qn <= qp;
		end if;
		
		--s1
		when "001" =>
		
		REG <= '0';		--no registra
		STFIR	<= '0';	--no fir
		STSPI <= '0';	--no spi
		
		qn <= "010"; 
		
		--s2
		when "010" =>
		
		REG <= '1';		--registra
		STFIR	<= '0';	--no fir
		STSPI <= '0';	--no spi
		
		qn <= "011";

		--s3--
		when "011" => 
		
		REG <= '0';		--no registra
		STFIR	<= '1';	--fir
		STSPI <= '0';	--no spi
		
		qn <= "100";
		
		--s4--
		when "100" => 
		
		REG <= '0';		--no registra
		STFIR	<= '0';	--no fir
		STSPI <= '0';	--no spi
		
		if(EOP='1') then
			qn <= "101";
		else
			qn <= qp;
		end if;
		
		--s5--
		when "101" => 
		
		REG <= '0';		--no registra
		STFIR	<= '0';	--no fir
		STSPI <= '1';	--spi
		
		qn <= "110";
		
		--s6--
		when others => 
		
		REG <= '0';		--no registra
		STFIR	<= '0';	--no fir
		STSPI <= '0';	--spi
		
		if(busy='0' and fs='1') then
			qn <= "001";
		elsif(busy='0') then
			qn <= "000";
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
	
end fsm;