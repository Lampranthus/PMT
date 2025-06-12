library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.ALL;


entity fsm_ram is

	generic(
	
	n :	integer := 4
	
	);

	port(
	
	RST,CLK : in std_logic;
	
	stop_one_shot : in std_logic;
	data_last_n : in std_logic_vector(15 downto 0);
	data_c_n : in std_logic_vector(15 downto 0);
	end_sample : in std_logic; 
	
	start_ram : out std_logic;
	rst_sample_c : out std_logic;
	ram_sample_c : out std_logic;
	data_last : out std_logic;
	
	tlast_axi : in std_logic
	
	);
end fsm_ram;

architecture fsm of fsm_ram is	


signal qp, qn : std_logic_vector(n-1 downto 0);

begin  
	
	c1 : process(qp,stop_one_shot,data_last_n, data_c_n,end_sample, tlast_axi)
	begin
		
		case(qp) is
		
		--s0
		when "0000" =>
		start_ram <= '0'; 
		rst_sample_c <= '0';
		ram_sample_c <= '0';
		data_last <= '0';
		
		if(stop_one_shot='1') then
			qn <= "0001";
		else
			qn <= "0000";
		end if;
		
		--s1
		when "0001" =>
		start_ram <= '1'; 
		rst_sample_c <= '0';
		ram_sample_c <= '0';
		data_last <= '0';
		
		if(end_sample = '1' and (unsigned(data_c_n) = (unsigned(data_last_n) - 1))) then
			qn <= "0011";
		elsif(end_sample = '1' and (unsigned(data_c_n) < (unsigned(data_last_n) - 1))) then
			qn <= "0010";
		else
			qn <= "0001";
		end if;
		
		--s2
		when "0010" =>
		start_ram <= '1'; 
		rst_sample_c <= '0';
		ram_sample_c <= '1';
		data_last <= '0';
		
		qn <= "0001";
		
		
		--s3 
		when "0011" =>
		start_ram <= '0'; 
		rst_sample_c <= '0';
		ram_sample_c <= '0';
		data_last <= '1';
		
		if (tlast_axi = '1') then
			qn <= "0100";
		else
			qn <= "0011";
		end if;
		
		--s4 
		when others =>
		start_ram <= '0'; 
		rst_sample_c <= '1';
		ram_sample_c <= '0';
		data_last <= '0';
		
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