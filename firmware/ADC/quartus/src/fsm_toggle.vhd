library ieee;
use ieee.std_logic_1164.all;

entity fsm_toggle is

	generic(
	
	n :	integer := 2
	
	);

	port(
	
	RST,CLK : in std_logic;
	window : in std_logic;
	bt250 : in std_logic;
	btn : in std_logic;
	bt10 : in std_logic;
	opc250 : out std_logic;
	opcn : out std_logic;
	opc10 : out std_logic;
	adc_clk : out std_logic;
	int_rst : out std_logic
	
	);
end fsm_toggle;

architecture fsm of fsm_toggle is	


signal qp, qn : std_logic_vector(n-1 downto 0);

begin  
	
	c1 : process(qp,window,bt250,btn,bt10)
	begin
		
		case(qp) is
		
		--s0
		when "00" =>
		opc250 <= '0'; 
		opcn <= '0';
		opc10 <= '0';
		adc_clk <= '0';
		int_rst <= '1';
		if(window='1') then
			qn <= "01";
		else
			qn <= "00";
		end if;
		
		--s1
		when "01" =>
		opc250 <= '1'; 
		opcn <= '1';
		opc10 <= '1';
		adc_clk <= '0';
		int_rst <= '0';
	
		if(btn='1') then
			qn <= "10";
		else
			qn <= "01";
		end if;
		
		--s2
		when "10" =>
		opc250 <= '1'; 
		opcn <= '0';
		opc10 <= '1';
		adc_clk <= '1';
		int_rst <= '0'; 
		
		if(bt10='1') then
			qn <= "11";
		else
			qn <= "10";
		end if;
		
		
		--s3
		when others =>
		opc250 <= '1'; 
		opcn <= '0';
		opc10 <= '0';
		adc_clk <= '0';
		int_rst <= '1'; 
		
		if(bt250='1') then
			qn <= "00";
		else
			qn <= "11";
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