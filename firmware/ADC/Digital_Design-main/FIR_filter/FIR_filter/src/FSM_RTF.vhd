library ieee;
use ieee.std_logic_1164.all;

entity FSM_RTF is
	port(	
		RST : in std_logic;
		CLK : in std_logic;
		fs	: in std_logic;
		EOP : in std_logic;
		busy: in std_logic;
		bt	: in std_logic;
		opc	: out std_logic;
		CLKADC	: out std_logic;
		REG	: out std_logic;
		STFIR: out std_logic;
		STSPI : out std_logic	
	);
end FSM_RTF;

architecture fsm of FSM_RTF is	


signal qp, qn : std_logic_vector(2 downto 0); 

begin  
	
	c1 : process(qp,fs,bt,EOP,busy)
	begin
		
		case(qp) is
		
		--s0
		when "000" =>
		
		REG <= '0';		--no registra
		STFIR	<= '0';	--no fir
		STSPI <= '0';	--no spi 
		opc <='0'; --no bt
		CLKADC <='0'; --no lee adc
		
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
		opc <='0'; -- no bt
		CLKADC <='1'; --lee adc
		
		qn <= "010";
		
		--s2
		when "010" =>
		
		REG <= '0';		--no registra
		STFIR	<= '0';	--no fir
		STSPI <= '0';	--no spi
		opc <='0'; --no bt
		CLKADC <='1'; --lee adc
		
		qn <= "011";
	
		--s3
		when "011" =>
		
		REG <= '1';		--registra
		STFIR	<= '0';	--no fir
		STSPI <= '0';	--no spi
		opc <='1'; --bt
		CLKADC <='1'; --lee adc
		
		if(bt='1') then
			qn <= "100";
		else
			qn <= qp;
		end if;	
		
		--s4
		when "100" =>
		
		REG <= '0';		--no registra
		STFIR	<= '1';	--fir
		STSPI <= '0';	--no spi
		opc <='0'; -- no bt
		CLKADC <='0'; --no lee adc
		
		qn <= "101";

		--s5--
		when "101" => 
		
		REG <= '0';		--no registra
		STFIR	<= '0';	--no fir
		STSPI <= '0';	--no spi
		opc <='0'; -- no bt
		CLKADC <='0'; --no lee adc
		
		if(EOP='1') then
			qn <= "110";
		else
			qn <= qp;
		end if;
		
		--s6--
		when "110" => 
		
		REG <= '0';		--no registra
		STFIR	<= '0';	--no fir
		STSPI <= '1';	--spi
		opc <='0'; -- no bt
		CLKADC <='0'; --no lee adc
		
		qn <= "111";
		
		--s7--
		when others => 
		
		REG <= '0';		--no registra
		STFIR	<= '0';	--no fir
		STSPI <= '0';	--spi
		opc <='0'; -- no bt
		CLKADC <='0'; --no lee adc
		
		if(busy='0') then
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