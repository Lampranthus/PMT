library	IEEE;
use IEEE.std_logic_1164.all;

entity Barrel_Shf is
	port(
	AFM : in  std_logic_vector(4  downto 0);
	Y   : in  std_logic_vector(43 downto 0);
	YK  : out std_logic_vector(17 downto 0)
	);
end Barrel_Shf;

architecture Desplazamiento of Barrel_Shf is
begin
	
	process(AFM,Y)
	begin
		case AFM is
			when "00000" => YK <= Y(17 downto  0);
			when "00001" => YK <= Y(18 downto  1);
			when "00010" => YK <= Y(19 downto  2);
			when "00011" => YK <= Y(20 downto  3);
			when "00100" => YK <= Y(21 downto  4);
			when "00101" => YK <= Y(22 downto  5);
			when "00110" => YK <= Y(23 downto  6);
			when "00111" => YK <= Y(24 downto  7);
			when "01000" => YK <= Y(25 downto  8);
			when "01001" => YK <= Y(26 downto  9);
			when "01010" => YK <= Y(27 downto 10);
			when "01011" => YK <= Y(28 downto 11);
			when "01100" => YK <= Y(29 downto 12);
			when "01101" => YK <= Y(30 downto 13);
			when "01110" => YK <= Y(31 downto 14);
			when "01111" => YK <= Y(32 downto 15);
			when "10000" => YK <= Y(33 downto 16);
			when "10001" => YK <= Y(34 downto 17);
			when "10010" => YK <= Y(35 downto 18);
			when "10011" => YK <= Y(36 downto 19);
			when "10100" => YK <= Y(37 downto 20);
			when "10101" => YK <= Y(38 downto 21);
			when "10110" => YK <= Y(39 downto 22);
			when "10111" => YK <= Y(40 downto 23);
			when "11000" => YK <= Y(41 downto 24);
			when "11001" => YK <= Y(42 downto 25);
			when "11010" => YK <= Y(43 downto 26);
			when others  => YK <= (others => '0');
		end case;
	end process;
	
end Desplazamiento;