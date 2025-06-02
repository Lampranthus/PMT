library	IEEE;
use IEEE.std_logic_1164.all;

entity FSM_MAC is
	port(
	RST : in  std_logic;
	CLK : in  std_logic;
	STM : in  std_logic;
	Z   : in  std_logic;
	LDA : out std_logic;
	LDR : out std_logic;
	OPC : out std_logic_vector(1 downto 0);
	RDY : out std_logic
	);
end	FSM_MAC;

architecture Control of FSM_MAC is

signal Qn, Qp : std_logic_vector(1 downto 0);

begin
	
	Combinacional: process(Qp,STM,Z)
	begin
		case Qp is						 
			when "00"	=>
			    if (STM='0') then
				    Qn <= Qp;
				else
					Qn <= "01";
				end if;
				LDA <= '0';
				LDR <= '0';
				OPC <= "10";
				RDY <= '1';
			when "01"   =>
			    if (Z='0') then
				    Qn <= Qp;
				else
					Qn <= "10";
				end if;
				LDA <= '1';
				LDR <= '0';
				OPC <= "11";
				RDY <= '0';
			when others =>
				Qn <= "00";
				LDA <= '0';
				LDR <= '1';
				OPC <= "01";
				RDY <= '0';
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