library ieee;
use ieee.std_logic_1164.all;

entity fsm_axis is

	generic(
	
	n :	integer := 4
	
	);

	port(
	
	RST,CLK : in std_logic;
	
	data_valid : in std_logic;
	data_last : in std_logic;
	tready : in std_logic;

	
	tvalid : out std_logic;
	tlast : out std_logic;
	tuser : out std_logic;
	d_mux : out std_logic_vector(2 downto 0);
	
	end_sample : out std_logic
	
	);
end fsm_axis;

architecture fsm of fsm_axis is	


signal qp, qn : std_logic_vector(n-1 downto 0);

begin  
	
	c1 : process(qp,data_valid,tready,data_last)
	begin
		
		case(qp) is
		
		--s0
		when "0000" =>
		tvalid <= '0'; 
		tlast <= '0';
		tuser <= '0';
		d_mux <= "000";
		end_sample <= '0';
		
		if(data_valid='1') then
			qn <= "0001";
		else
			qn <= "0000";
		end if;
		
		--s1
		when "0001" =>
		tvalid <= '1'; 
		tlast <= '0';
		tuser <= '0';
		d_mux <= "000";
		end_sample <= '0';
		
		if(tready='1') then
			qn <= "0010";
		else
			qn <= "0001";
		end if;
		
		--s2
		when "0010" =>
		tvalid <= '1'; 
		tlast <= '0';
		tuser <= '0';
		d_mux <= "001";
		end_sample <= '0';
		
		qn <= "0011";
		
		
		--s3 
		when "0011" =>
		tvalid <= '1'; 
		tlast <= '0';
		tuser <= '0';
		d_mux <= "010";
		end_sample <= '0';
		
		qn <= "0100";
		
		--s4 
		when "0100" =>
		tvalid <= '1'; 
		tlast <= '0';
		tuser <= '0';
		d_mux <= "011";
		end_sample <= '0';
		
		qn <= "0101";
		
		--s5 
		when "0101" =>
		tvalid <= '1'; 
		tlast <= '0';
		tuser <= '0';
		d_mux <= "100";
		end_sample <= '0';
		
		qn <= "0110";
		
		--s6
		when "0110" =>
		tvalid <= '1'; 
		tlast <= '0';
		tuser <= '0';
		d_mux <= "101";
		end_sample <= '1';
		
		if(data_last = '1')then
			qn <= "0111";
		else
		   qn <= "0001";
		end if;
		
		--s7
		when others =>
		tvalid <= '1'; 
		tlast <= '1';
		tuser <= '0';
		d_mux <= "111";
		end_sample <= '0';
		
		qn <= "0000";
		
	
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