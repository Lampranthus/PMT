library IEEE;
use IEEE.std_logic_1164.all;

entity LUT is
port (
    F	:	in std_logic_vector(5 downto 0);
    A	: 	out std_logic_vector(12 downto 0)
    );
  end LUT;
  
  architecture tabla of LUT is
 begin
  process(F)
  begin case F is
	  
	when "000000" => A <= "0100000000000"; 
	when "000001" => A <= "1100000000000"; 
	when "000010" => A <= "0100000000000"; 
	when "000011" => A <= "1100000000000"; 
	when "000100" => A <= "0100000000000";
	when others => A <= (others => '0'); 

       end case;
    end process;
  end tabla;
