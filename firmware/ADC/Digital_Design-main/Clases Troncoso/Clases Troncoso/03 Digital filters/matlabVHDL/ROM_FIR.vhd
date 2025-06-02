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
      I : in  std_logic_vector(7 downto 0);
      A : out std_logic_vector(17 downto 0)
      );
   end ROM_FIR;

architecture LUTable of ROM_FIR is
begin
   process(I)
   begin
      case I is
         -- Coefficient format 1.17
         when "00000000" => A <= "000000000000000000"; -- Index 0   Coefficient 0.00000000
         when "00000001" => A <= "000000000000000001"; -- Index 1   Coefficient 0.00000763
         when "00000010" => A <= "000000000000000000"; -- Index 2   Coefficient 0.00000000
         when "00000011" => A <= "111111111111111001"; -- Index 3   Coefficient -0.00005341
         when "00000100" => A <= "111111111111101011"; -- Index 4   Coefficient -0.00016022
         when "00000101" => A <= "111111111111011101"; -- Index 5   Coefficient -0.00026703
         when "00000110" => A <= "111111111111011111"; -- Index 6   Coefficient -0.00025177
         when "00000111" => A <= "000000000000000000"; -- Index 7   Coefficient 0.00000000
         when "00001000" => A <= "000000000001000100"; -- Index 8   Coefficient 0.00051880
         when "00001001" => A <= "000000000010010110"; -- Index 9   Coefficient 0.00114441
         when "00001010" => A <= "000000000011001001"; -- Index 10   Coefficient 0.00153351
         when "00001011" => A <= "000000000010100011"; -- Index 11   Coefficient 0.00124359
         when "00001100" => A <= "000000000000000000"; -- Index 12   Coefficient 0.00000000
         when "00001101" => A <= "111111111011110011"; -- Index 13   Coefficient -0.00205231
         when "00001110" => A <= "111111110111011100"; -- Index 14   Coefficient -0.00418091
         when "00001111" => A <= "111111110101010101"; -- Index 15   Coefficient -0.00521088
         when "00010000" => A <= "111111110111110111"; -- Index 16   Coefficient -0.00397491
         when "00010001" => A <= "000000000000000000"; -- Index 17   Coefficient 0.00000000
         when "00010010" => A <= "000000001100001001"; -- Index 18   Coefficient 0.00592804
         when "00010011" => A <= "000000010111110010"; -- Index 19   Coefficient 0.01161194
         when "00010100" => A <= "000000011100101010"; -- Index 20   Coefficient 0.01399231
         when "00010101" => A <= "000000010101010011"; -- Index 21   Coefficient 0.01039886
         when "00010110" => A <= "000000000000000000"; -- Index 22   Coefficient 0.00000000
         when "00010111" => A <= "111111100001010010"; -- Index 23   Coefficient -0.01499939
         when "00011000" => A <= "111111000100000011"; -- Index 24   Coefficient -0.02927399
         when "00011001" => A <= "111110110111001100"; -- Index 25   Coefficient -0.03555298
         when "00011010" => A <= "111111001000101011"; -- Index 26   Coefficient -0.02701569
         when "00011011" => A <= "000000000000000000"; -- Index 27   Coefficient 0.00000000
         when "00011100" => A <= "000001011001111010"; -- Index 28   Coefficient 0.04389954
         when "00011101" => A <= "000011000111011011"; -- Index 29   Coefficient 0.09737396
         when "00011110" => A <= "000100110001000111"; -- Index 30   Coefficient 0.14897919
         when "00011111" => A <= "000101111101101001"; -- Index 31   Coefficient 0.18634796
         when "00100000" => A <= "000110011001100101"; -- Index 32   Coefficient 0.19998932
         when "00100001" => A <= "000101111101101001"; -- Index 33   Coefficient 0.18634796
         when "00100010" => A <= "000100110001000111"; -- Index 34   Coefficient 0.14897919
         when "00100011" => A <= "000011000111011011"; -- Index 35   Coefficient 0.09737396
         when "00100100" => A <= "000001011001111010"; -- Index 36   Coefficient 0.04389954
         when "00100101" => A <= "000000000000000000"; -- Index 37   Coefficient 0.00000000
         when "00100110" => A <= "111111001000101011"; -- Index 38   Coefficient -0.02701569
         when "00100111" => A <= "111110110111001100"; -- Index 39   Coefficient -0.03555298
         when "00101000" => A <= "111111000100000011"; -- Index 40   Coefficient -0.02927399
         when "00101001" => A <= "111111100001010010"; -- Index 41   Coefficient -0.01499939
         when "00101010" => A <= "000000000000000000"; -- Index 42   Coefficient 0.00000000
         when "00101011" => A <= "000000010101010011"; -- Index 43   Coefficient 0.01039886
         when "00101100" => A <= "000000011100101010"; -- Index 44   Coefficient 0.01399231
         when "00101101" => A <= "000000010111110010"; -- Index 45   Coefficient 0.01161194
         when "00101110" => A <= "000000001100001001"; -- Index 46   Coefficient 0.00592804
         when "00101111" => A <= "000000000000000000"; -- Index 47   Coefficient 0.00000000
         when "00110000" => A <= "111111110111110111"; -- Index 48   Coefficient -0.00397491
         when "00110001" => A <= "111111110101010101"; -- Index 49   Coefficient -0.00521088
         when "00110010" => A <= "111111110111011100"; -- Index 50   Coefficient -0.00418091
         when "00110011" => A <= "111111111011110011"; -- Index 51   Coefficient -0.00205231
         when "00110100" => A <= "000000000000000000"; -- Index 52   Coefficient 0.00000000
         when "00110101" => A <= "000000000010100011"; -- Index 53   Coefficient 0.00124359
         when "00110110" => A <= "000000000011001001"; -- Index 54   Coefficient 0.00153351
         when "00110111" => A <= "000000000010010110"; -- Index 55   Coefficient 0.00114441
         when "00111000" => A <= "000000000001000100"; -- Index 56   Coefficient 0.00051880
         when "00111001" => A <= "000000000000000000"; -- Index 57   Coefficient 0.00000000
         when "00111010" => A <= "111111111111011111"; -- Index 58   Coefficient -0.00025177
         when "00111011" => A <= "111111111111011101"; -- Index 59   Coefficient -0.00026703
         when "00111100" => A <= "111111111111101011"; -- Index 60   Coefficient -0.00016022
         when "00111101" => A <= "111111111111111001"; -- Index 61   Coefficient -0.00005341
         when "00111110" => A <= "000000000000000000"; -- Index 62   Coefficient 0.00000000
         when "00111111" => A <= "000000000000000001"; -- Index 63   Coefficient 0.00000763
         when "01000000" => A <= "000000000000000000"; -- Index 64   Coefficient 0.00000000
         when others => A <= "000000000000000000"; -- Irrelevant indexes
      end case;
   end process;
end LUTable;
