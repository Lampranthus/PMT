library	IEEE;
use IEEE.std_logic_1164.all;

entity Sincroniza is
	port(
	RST : in  std_logic;
	CLK : in  std_logic;
	RDY : in  std_logic;
	LDK : out std_logic
	);
end	Sincroniza;

architecture Control of Sincroniza is

signal Qn, Qp : std_logic_vector(1 downto 0);

begin
	
	Combinacional: process(Qp,RDY)
	begin
		case Qp is						 
			when "00"	=>
			    if (RDY='0') then
				    Qn <= Qp;
				else
					Qn <= "01";
				end if;
				LDK <= '0';
			when "01"   =>
				Qn <= "10";
				LDK <= '1';
			when others =>
			    if (RDY='1') then
				    Qn <= Qp;
				else
					Qn <= "00";
				end if;
				LDK <= '0';
		end case;
	end process Combinacional;
		
	Secuencial: process(RST,CLK)
	begin		  
		if (RST='1') then
			Qp <= (others => '0');
		elsif (CLK'event and CLK='1') then
			Qp <= Qn;
		end if;
	end process Secuencial;

end Control;