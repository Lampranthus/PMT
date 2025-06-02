library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM_LOG10 is
   port(
      CLK : in std_logic;
      I   : in  std_logic_vector(6 downto 0);
      A   : out std_logic_vector(7 downto 0)
      );
   end ROM_LOG10;

architecture ROM of ROM_LOG10 is

subtype word_t is std_logic_vector(7 downto 0);
type memory_t is array(0 to 99) of word_t;

signal rom : memory_t := (         -- Coefficient format 8.0
   "00000000", -- Line 1   Column 1   Coefficient 0.00000000
   "00001110", -- Line 1   Column 2   Coefficient 14.00000000
   "00010110", -- Line 1   Column 3   Coefficient 22.00000000
   "00011100", -- Line 1   Column 4   Coefficient 28.00000000
   "00100000", -- Line 1   Column 5   Coefficient 32.00000000
   "00100100", -- Line 1   Column 6   Coefficient 36.00000000
   "00100111", -- Line 1   Column 7   Coefficient 39.00000000
   "00101010", -- Line 1   Column 8   Coefficient 42.00000000
   "00101100", -- Line 1   Column 9   Coefficient 44.00000000
   "00101110", -- Line 1   Column 10   Coefficient 46.00000000
   "00110000", -- Line 1   Column 11   Coefficient 48.00000000
   "00110010", -- Line 1   Column 12   Coefficient 50.00000000
   "00110011", -- Line 1   Column 13   Coefficient 51.00000000
   "00110101", -- Line 1   Column 14   Coefficient 53.00000000
   "00110110", -- Line 1   Column 15   Coefficient 54.00000000
   "00110111", -- Line 1   Column 16   Coefficient 55.00000000
   "00111001", -- Line 1   Column 17   Coefficient 57.00000000
   "00111010", -- Line 1   Column 18   Coefficient 58.00000000
   "00111011", -- Line 1   Column 19   Coefficient 59.00000000
   "00111100", -- Line 1   Column 20   Coefficient 60.00000000
   "00111101", -- Line 1   Column 21   Coefficient 61.00000000
   "00111110", -- Line 1   Column 22   Coefficient 62.00000000
   "00111111", -- Line 1   Column 23   Coefficient 63.00000000
   "01000000", -- Line 1   Column 24   Coefficient 64.00000000
   "01000000", -- Line 1   Column 25   Coefficient 64.00000000
   "01000001", -- Line 1   Column 26   Coefficient 65.00000000
   "01000010", -- Line 1   Column 27   Coefficient 66.00000000
   "01000011", -- Line 1   Column 28   Coefficient 67.00000000
   "01000011", -- Line 1   Column 29   Coefficient 67.00000000
   "01000100", -- Line 1   Column 30   Coefficient 68.00000000
   "01000101", -- Line 1   Column 31   Coefficient 69.00000000
   "01000101", -- Line 1   Column 32   Coefficient 69.00000000
   "01000110", -- Line 1   Column 33   Coefficient 70.00000000
   "01000111", -- Line 1   Column 34   Coefficient 71.00000000
   "01000111", -- Line 1   Column 35   Coefficient 71.00000000
   "01001000", -- Line 1   Column 36   Coefficient 72.00000000
   "01001000", -- Line 1   Column 37   Coefficient 72.00000000
   "01001001", -- Line 1   Column 38   Coefficient 73.00000000
   "01001001", -- Line 1   Column 39   Coefficient 73.00000000
   "01001010", -- Line 1   Column 40   Coefficient 74.00000000
   "01001010", -- Line 1   Column 41   Coefficient 74.00000000
   "01001011", -- Line 1   Column 42   Coefficient 75.00000000
   "01001011", -- Line 1   Column 43   Coefficient 75.00000000
   "01001100", -- Line 1   Column 44   Coefficient 76.00000000
   "01001100", -- Line 1   Column 45   Coefficient 76.00000000
   "01001101", -- Line 1   Column 46   Coefficient 77.00000000
   "01001101", -- Line 1   Column 47   Coefficient 77.00000000
   "01001101", -- Line 1   Column 48   Coefficient 77.00000000
   "01001110", -- Line 1   Column 49   Coefficient 78.00000000
   "01001110", -- Line 1   Column 50   Coefficient 78.00000000
   "01001111", -- Line 1   Column 51   Coefficient 79.00000000
   "01001111", -- Line 1   Column 52   Coefficient 79.00000000
   "01001111", -- Line 1   Column 53   Coefficient 79.00000000
   "01010000", -- Line 1   Column 54   Coefficient 80.00000000
   "01010000", -- Line 1   Column 55   Coefficient 80.00000000
   "01010001", -- Line 1   Column 56   Coefficient 81.00000000
   "01010001", -- Line 1   Column 57   Coefficient 81.00000000
   "01010001", -- Line 1   Column 58   Coefficient 81.00000000
   "01010010", -- Line 1   Column 59   Coefficient 82.00000000
   "01010010", -- Line 1   Column 60   Coefficient 82.00000000
   "01010010", -- Line 1   Column 61   Coefficient 82.00000000
   "01010011", -- Line 1   Column 62   Coefficient 83.00000000
   "01010011", -- Line 1   Column 63   Coefficient 83.00000000
   "01010011", -- Line 1   Column 64   Coefficient 83.00000000
   "01010011", -- Line 1   Column 65   Coefficient 83.00000000
   "01010100", -- Line 1   Column 66   Coefficient 84.00000000
   "01010100", -- Line 1   Column 67   Coefficient 84.00000000
   "01010100", -- Line 1   Column 68   Coefficient 84.00000000
   "01010101", -- Line 1   Column 69   Coefficient 85.00000000
   "01010101", -- Line 1   Column 70   Coefficient 85.00000000
   "01010101", -- Line 1   Column 71   Coefficient 85.00000000
   "01010110", -- Line 1   Column 72   Coefficient 86.00000000
   "01010110", -- Line 1   Column 73   Coefficient 86.00000000
   "01010110", -- Line 1   Column 74   Coefficient 86.00000000
   "01010110", -- Line 1   Column 75   Coefficient 86.00000000
   "01010111", -- Line 1   Column 76   Coefficient 87.00000000
   "01010111", -- Line 1   Column 77   Coefficient 87.00000000
   "01010111", -- Line 1   Column 78   Coefficient 87.00000000
   "01010111", -- Line 1   Column 79   Coefficient 87.00000000
   "01011000", -- Line 1   Column 80   Coefficient 88.00000000
   "01011000", -- Line 1   Column 81   Coefficient 88.00000000
   "01011000", -- Line 1   Column 82   Coefficient 88.00000000
   "01011000", -- Line 1   Column 83   Coefficient 88.00000000
   "01011001", -- Line 1   Column 84   Coefficient 89.00000000
   "01011001", -- Line 1   Column 85   Coefficient 89.00000000
   "01011001", -- Line 1   Column 86   Coefficient 89.00000000
   "01011001", -- Line 1   Column 87   Coefficient 89.00000000
   "01011010", -- Line 1   Column 88   Coefficient 90.00000000
   "01011010", -- Line 1   Column 89   Coefficient 90.00000000
   "01011010", -- Line 1   Column 90   Coefficient 90.00000000
   "01011010", -- Line 1   Column 91   Coefficient 90.00000000
   "01011010", -- Line 1   Column 92   Coefficient 90.00000000
   "01011011", -- Line 1   Column 93   Coefficient 91.00000000
   "01011011", -- Line 1   Column 94   Coefficient 91.00000000
   "01011011", -- Line 1   Column 95   Coefficient 91.00000000
   "01011011", -- Line 1   Column 96   Coefficient 91.00000000
   "01011011", -- Line 1   Column 97   Coefficient 91.00000000
   "01011100", -- Line 1   Column 98   Coefficient 92.00000000
   "01011100", -- Line 1   Column 99   Coefficient 92.00000000
   "01011100" -- Line 1   Column 100   Coefficient 92.00000000
);
begin
	process(clk)
	begin
	if(rising_edge(CLK)) then
		A <= rom(to_integer(unsigned(I)));
	end if;
	end process;
end ROM;
