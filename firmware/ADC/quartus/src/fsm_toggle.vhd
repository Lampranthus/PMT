library ieee;
use ieee.std_logic_1164.all;

entity fsm_toggle is

	generic(
	
	n :	integer := 4
	
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
signal btn_d : std_logic;

begin  
	
	c1 : process(qp,window,bt250,btn,bt10)
	begin
		
		case(qp) is
		
		--s0
		when "0000" =>
		opc250 <= '0'; 
		opcn <= '0';
		opc10 <= '0';
		adc_clk <= '0';
		int_rst <= '1';
		data_valid <= '0';
		if(window='1') then
			qn <= "0001";
		else
			qn <= "0000";
		end if;
		
		--s1
		when "0001" =>
		opc250 <= '1'; 
		opcn <= '1';
		opc10 <= '0';
		adc_clk <= '0';
		int_rst <= '0';
		data_valid <= '0';
		if(btn='1') then
			qn <= "0010";
		else
			qn <= "0001";
		end if;
		
		--s2
		when "0010" =>
		opc250 <= '1'; 
		opcn <= '1';
		opc10 <= '1';
		adc_clk <= '1';
		int_rst <= '0'; 
		data_valid <= '0';
		
		qn <= "0011";
		
		--s3 subes 1
		when "0011" =>
		opc250 <= '1'; 
		opcn <= '1';
		opc10 <= '1';
		adc_clk <= '1';
		int_rst <= '1'; 
		data_valid <= '0';
		
		if(bt10='1') then
			qn <= "0100";
		else
			qn <= "0011";
		end if;
		
		--s4 bajas
		when "0100" =>
		opc250 <= '1'; 
		opcn <= '1';
		opc10 <= '1';
		adc_clk <= '0';
		int_rst <= '1'; 
		data_valid <= '0';
		if(bt10='1') then
			qn <= "0101";
		else
			qn <= "0100";
		end if;
		
		--s5 subes 2
		when "0101" =>
		opc250 <= '1'; 
		opcn <= '1';
		opc10 <= '1';
		adc_clk <= '1';
		int_rst <= '1'; 
		data_valid <= '0';
		
		if(bt10='1') then
			qn <= "0110";
		else
			qn <= "0101";
		end if;
		
		--s6 bajas
		when "0110" =>
		opc250 <= '1'; 
		opcn <= '1';
		opc10 <= '1';
		adc_clk <= '0';
		int_rst <= '1'; 
		data_valid <= '0';
		if(bt10='1') then
			qn <= "0111";
		else
			qn <= "0110";
		end if;
		
		--s7 subes 3
		when "0111" =>
		opc250 <= '1'; 
		opcn <= '1';
		opc10 <= '1';
		adc_clk <= '1';
		int_rst <= '1'; 
		data_valid <= '0';
		
		if(bt10='1') then
			qn <= "1000";
		else
			qn <= "0111";
		end if;
		
		--s8 bajas 
		when "1000" =>
		opc250 <= '1'; 
		opcn <= '1';
		opc10 <= '1';
		adc_clk <= '0';
		int_rst <= '1'; 
		data_valid <= '0';
		if(bt10='1') then
			qn <= "1001";
		else
			qn <= "1000";
		end if;
		
		
		--s9 subes 4
		when "1001" =>
		opc250 <= '1'; 
		opcn <= '1';
		opc10 <= '1';
		adc_clk <= '1';
		int_rst <= '1'; 
		data_valid <= '0';
		
		if(bt10='1') then
			qn <= "1010";
		else
			qn <= "1001";
		end if;
		
		--s10
		when "1010" =>
		opc250 <= '1'; 
		opcn <= '0';
		opc10 <= '0';
		adc_clk <= '0';
		int_rst <= '1'; 
		data_valid <= '1';
		
		qn <= "1011";
		
		--s11
		when "1011" =>
		opc250 <= '1'; 
		opcn <= '0';
		opc10 <= '0';
		adc_clk <= '0';
		int_rst <= '1'; 
		data_valid <= '1';
		
		qn <= "1100";
		
		--s12
		when others =>
		opc250 <= '1'; 
		opcn <= '0';
		opc10 <= '0';
		adc_clk <= '0';
		int_rst <= '1';
		data_valid <= '0';
		
		if(bt250='1') then
			qn <= "0000";
		else
			qn <= "1100";
		end if;
	
		end case;
		
	end process;
	
	secuencial : process(RST,CLK)
	begin
		if(RST='0') then
			qp <= (others => '0');
		elsif(CLK'event and CLK='1') then
			btn_d <= btn;
			qp <= qn;
		end if;
	end process;
	
end fsm;