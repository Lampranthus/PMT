-- IIR filter coefficients
--
-- FI - UAQ
--
-- Electronica Avanzada III
--
-- Rene Romero Troncoso
--

library IEEE;
use IEEE.std_logic_1164.all;

entity ROM_IIR is
   port(
      I : in  std_logic_vector(7 downto 0);
      A : out std_logic_vector(17 downto 0)
      );
   end ROM_IIR;

architecture LUTable of ROM_IIR is
begin
   process(I)
   begin
      case I is
         -- Coefficient format 6.12
         when "00000000" => A <= "000000010010000100"; -- Index 0   Coefficient 0.28222656
         when "00000001" => A <= "111110010101111000"; -- Index 1   Coefficient -1.65820313
         when "00000010" => A <= "000101001110000001"; -- Index 2   Coefficient 5.21899414
         when "00000011" => A <= "110101000110111000"; -- Index 3   Coefficient -10.89257813
         when "00000100" => A <= "010000100011110100"; -- Index 4   Coefficient 16.55957031
         when "00000101" => A <= "101101000010111000"; -- Index 5   Coefficient -18.95507813
         when "00000110" => A <= "010000100011110100"; -- Index 6   Coefficient 16.55957031
         when "00000111" => A <= "110101000110111000"; -- Index 7   Coefficient -10.89257813
         when "00001000" => A <= "000101001110000001"; -- Index 8   Coefficient 5.21899414
         when "00001001" => A <= "111110010101111000"; -- Index 9   Coefficient -1.65820313
         when "00001010" => A <= "000000010010000100"; -- Index 10   Coefficient 0.28222656
         when "00001011" => A <= "000100011101111011"; -- Index 11   Coefficient 4.46752930
         when "00001100" => A <= "110101100101010001"; -- Index 12   Coefficient -10.41772461
         when "00001101" => A <= "010000010011101100"; -- Index 13   Coefficient 16.30761719
         when "00001110" => A <= "101101000110011100"; -- Index 14   Coefficient -18.89941406
         when "00001111" => A <= "010000101111110100"; -- Index 15   Coefficient 16.74707031
         when "00010000" => A <= "110100100011001010"; -- Index 16   Coefficient -11.45068359
         when "00010001" => A <= "000101111101000100"; -- Index 17   Coefficient 5.95410156
         when "00010010" => A <= "111101101110011110"; -- Index 18   Coefficient -2.27392578
         when "00010011" => A <= "000000100101001001"; -- Index 19   Coefficient 0.58032227
         when "00010100" => A <= "111111111010111010"; -- Index 20   Coefficient -0.07958984
         when others => A <= "000000000000000000"; -- Irrelevant indexes
      end case;
   end process;
end LUTable;
