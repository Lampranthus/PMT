library	IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Contador_8 is
	port(
	RST : in  std_logic;
	CLK : in  std_logic;
	OPC : in  std_logic_vector(1 downto 0);
	K   : in  std_logic_vector(7 downto 0);
	Z   : out std_logic;
	I   : out std_logic_vector(7 downto 0)
	);
end Contador_8;

architecture Programable of Contador_8 is

signal Qn, Qp : std_logic_vector(7 downto 0);

begin
	
	Combinacional: process(Qp,OPC,K)
	begin
		case OPC is						 
			when "00"	=> Qn <= Qp;
			when "01"   => Qn <= (others => '0');
			when "10"   => Qn <= K;
			when others => Qn <= Qp - 1;
		end case;
		if (Qp="00000001") then
			Z <= '1';
		else
			Z <= '0';
		end if;
		I <= Qp;
	end process Combinacional;
		
	Secuencial: process(RST,CLK)
	begin		  
		if (RST='1') then
			Qp <= (others => '0');
		elsif (CLK'event and CLK='1') then
			Qp <= Qn;
		end if;
	end process Secuencial;
	
end Programable;