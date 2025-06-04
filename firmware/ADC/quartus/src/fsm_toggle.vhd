library ieee;
use ieee.std_logic_1164.all;

entity fsm_toggle is

	generic(
	
	n :	integer := 3
	
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
	int_rst : out std_logic;
	data_valid : out std_logic
	
	);
end fsm_toggle;

architecture fsm of fsm_toggle is	


signal qp, qn : std_logic_vector(n-1 downto 0);

begin  
	
	c1 : process(qp,window,bt250,btn,bt10)
	begin
		
		case(qp) is
		
		--s0
		when "000" =>
		opc250 <= '0'; 
		opcn <= '0';
		opc10 <= '0';
		adc_clk <= '0';
		int_rst <= '1';
		data_valid <= '0';
		if(window='1') then
			qn <= "001";
		else
			qn <= "000";
		end if;
		
		--s1
		when "001" =>
		opc250 <= '1'; 
		opcn <= '1';
		opc10 <= '0';
		adc_clk <= '0';
		int_rst <= '0';
		data_valid <= '0';
		if(btn='1') then
			qn <= "010";
		else
			qn <= "001";
		end if;
		
		--s2
		when "010" =>
		opc250 <= '1'; 
		opcn <= '1';
		opc10 <= '1';
		adc_clk <= '1';
		int_rst <= '0'; 
		data_valid <= '0';
		
		qn <= "011";
		
		--s3
		when "011" =>
		opc250 <= '1'; 
		opcn <= '1';
		opc10 <= '1';
		adc_clk <= '1';
		int_rst <= '1'; 
		data_valid <= '0';
		
		if(btn='1' and bt10='1') then
			qn <= "101";
		elsif(bt10='1') then
			qn <= "100";
		else
			qn <= "011";
		end if;
		
		--s4
		when "100" =>
		opc250 <= '1'; 
		opcn <= '1';
		opc10 <= '1';
		adc_clk <= '0';
		int_rst <= '1'; 
		data_valid <= '0';
		if(btn='1' and bt10='1') then
			qn <= "101";
		elsif(bt10='1') then
			qn <= "011";
		else
			qn <= "100";
		end if;
		
		--s5
		when "101" =>
		opc250 <= '1'; 
		opcn <= '0';
		opc10 <= '0';
		adc_clk <= '0';
		int_rst <= '1'; 
		data_valid <= '1';
		
		qn <= "110";
		
		--s6
		when others =>
		opc250 <= '1'; 
		opcn <= '0';
		opc10 <= '0';
		adc_clk <= '0';
		int_rst <= '1';
		data_valid <= '0';
		
		if(bt250='1') then
			qn <= "000";
		else
			qn <= "110";
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