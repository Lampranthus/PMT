-- Coeficientes del filtro IIR
--
-- FIMEE - Universidad de Guanajuato
--
-- Diseno con DSP
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

architecture Tabla of ROM_IIR is
begin
   process(I)
   begin
      case I is
         -- Formato de salida 4.14
         when "00000000" => A <= "000000000000000011"; -- Indice 0   Coeficiente 0.00018311
         when "00000001" => A <= "000000000000001100"; -- Indice 1   Coeficiente 0.00073242
         when "00000010" => A <= "000000000000010010"; -- Indice 2   Coeficiente 0.00109863
         when "00000011" => A <= "000000000000001100"; -- Indice 3   Coeficiente 0.00073242
         when "00000100" => A <= "000000000000000011"; -- Indice 4   Coeficiente 0.00018311
         when "00000101" => A <= "001101011000000101"; -- Indice 5   Coeficiente 3.34405518
         when "00000110" => A <= "101111000010110110"; -- Indice 6   Coeficiente -4.23889160
         when "00000111" => A <= "001001101000110011"; -- Indice 7   Coeficiente 2.40936279
         when "00001000" => A <= "111101111011100010"; -- Indice 8   Coeficiente -0.51745605
         when others => A <= "000000000000000000"; -- Indices irrelevantes
      end case;
   end process;
end Tabla;
