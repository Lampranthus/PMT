-- FIR filter coefficients
--
-- FI - UAQ
--
-- Electronica Avanzada III
--
-- Rene Romero Troncoso
--

library IEEE;
use IEEE.std_logic_1164.all;

entity ROM_FIR is
   port(
      I : in  std_logic_vector(5 downto 0);
      A : out std_logic_vector(12 downto 0)
      );
   end ROM_FIR;

architecture LUTable of ROM_FIR is
begin
   process(I)
   begin
      case I is
         -- Coefficient format 1.12
         when "000000" => A <= "0000000000000"; -- Index 0   Coefficient 0.00000000
         when "000001" => A <= "0000000000000"; -- Index 1   Coefficient 0.00000000
         when "000010" => A <= "0000000000001"; -- Index 2   Coefficient 0.00024414
         when "000011" => A <= "0000000000010"; -- Index 3   Coefficient 0.00048828
         when "000100" => A <= "0000000000011"; -- Index 4   Coefficient 0.00073242
         when "000101" => A <= "0000000000110"; -- Index 5   Coefficient 0.00146484
         when "000110" => A <= "0000000001001"; -- Index 6   Coefficient 0.00219727
         when "000111" => A <= "0000000001101"; -- Index 7   Coefficient 0.00317383
         when "001000" => A <= "0000000010011"; -- Index 8   Coefficient 0.00463867
         when "001001" => A <= "0000000011010"; -- Index 9   Coefficient 0.00634766
         when "001010" => A <= "0000000100010"; -- Index 10   Coefficient 0.00830078
         when "001011" => A <= "0000000101100"; -- Index 11   Coefficient 0.01074219
         when "001100" => A <= "0000000110111"; -- Index 12   Coefficient 0.01342773
         when "001101" => A <= "0000001000100"; -- Index 13   Coefficient 0.01660156
         when "001110" => A <= "0000001010010"; -- Index 14   Coefficient 0.02001953
         when "001111" => A <= "0000001100000"; -- Index 15   Coefficient 0.02343750
         when "010000" => A <= "0000001110000"; -- Index 16   Coefficient 0.02734375
         when "010001" => A <= "0000001111111"; -- Index 17   Coefficient 0.03100586
         when "010010" => A <= "0000010001111"; -- Index 18   Coefficient 0.03491211
         when "010011" => A <= "0000010011101"; -- Index 19   Coefficient 0.03833008
         when "010100" => A <= "0000010101011"; -- Index 20   Coefficient 0.04174805
         when "010101" => A <= "0000010110111"; -- Index 21   Coefficient 0.04467773
         when "010110" => A <= "0000011000000"; -- Index 22   Coefficient 0.04687500
         when "010111" => A <= "0000011000111"; -- Index 23   Coefficient 0.04858398
         when "011000" => A <= "0000011001100"; -- Index 24   Coefficient 0.04980469
         when "011001" => A <= "0000011001101"; -- Index 25   Coefficient 0.05004883
         when "011010" => A <= "0000011001100"; -- Index 26   Coefficient 0.04980469
         when "011011" => A <= "0000011000111"; -- Index 27   Coefficient 0.04858398
         when "011100" => A <= "0000011000000"; -- Index 28   Coefficient 0.04687500
         when "011101" => A <= "0000010110111"; -- Index 29   Coefficient 0.04467773
         when "011110" => A <= "0000010101011"; -- Index 30   Coefficient 0.04174805
         when "011111" => A <= "0000010011101"; -- Index 31   Coefficient 0.03833008
         when "100000" => A <= "0000010001111"; -- Index 32   Coefficient 0.03491211
         when "100001" => A <= "0000001111111"; -- Index 33   Coefficient 0.03100586
         when "100010" => A <= "0000001110000"; -- Index 34   Coefficient 0.02734375
         when "100011" => A <= "0000001100000"; -- Index 35   Coefficient 0.02343750
         when "100100" => A <= "0000001010010"; -- Index 36   Coefficient 0.02001953
         when "100101" => A <= "0000001000100"; -- Index 37   Coefficient 0.01660156
         when "100110" => A <= "0000000110111"; -- Index 38   Coefficient 0.01342773
         when "100111" => A <= "0000000101100"; -- Index 39   Coefficient 0.01074219
         when "101000" => A <= "0000000100010"; -- Index 40   Coefficient 0.00830078
         when "101001" => A <= "0000000011010"; -- Index 41   Coefficient 0.00634766
         when "101010" => A <= "0000000010011"; -- Index 42   Coefficient 0.00463867
         when "101011" => A <= "0000000001101"; -- Index 43   Coefficient 0.00317383
         when "101100" => A <= "0000000001001"; -- Index 44   Coefficient 0.00219727
         when "101101" => A <= "0000000000110"; -- Index 45   Coefficient 0.00146484
         when "101110" => A <= "0000000000011"; -- Index 46   Coefficient 0.00073242
         when "101111" => A <= "0000000000010"; -- Index 47   Coefficient 0.00048828
         when "110000" => A <= "0000000000001"; -- Index 48   Coefficient 0.00024414
         when "110001" => A <= "0000000000000"; -- Index 49   Coefficient 0.00000000
         when "110010" => A <= "0000000000000"; -- Index 50   Coefficient 0.00000000
         when others => A <= "0000000000000"; -- Irrelevant indexes
      end case;
   end process;
end LUTable;
