-- Coeficientes del filtro FIR
--
-- FIMEE - Universidad de Guanajuato
--
-- Diseno con DSP
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

architecture Tabla of ROM_FIR is
begin
   process(I)
   begin
      case I is
         -- Formato de salida 1.17
         when "00000000" => A <= "000000001011100110"; -- Indice 0   Coeficiente 0.00566101
         when "00000001" => A <= "000001110101100101"; -- Indice 1   Coeficiente 0.05741119
         when "00000010" => A <= "000101000110100111"; -- Indice 2   Coeficiente 0.15947723
         when "00000011" => A <= "001000111000001101"; -- Indice 3   Coeficiente 0.27744293
         when "00000100" => A <= "001000111000001101"; -- Indice 4   Coeficiente 0.27744293
         when "00000101" => A <= "000101000110100111"; -- Indice 5   Coeficiente 0.15947723
         when "00000110" => A <= "000001110101100101"; -- Indice 6   Coeficiente 0.05741119
         when "00000111" => A <= "000000001011100110"; -- Indice 7   Coeficiente 0.00566101
         when others => A <= "000000000000000000"; -- Indices irrelevantes
      end case;
   end process;
end Tabla;
