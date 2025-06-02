library	IEEE;
use IEEE.std_logic_1164.all;

entity Selector_X is
	generic(
	n : integer := 8
	);
port(
	XK,X1,X2,X3,X4 : in  std_logic_vector(n-1 downto 0);
	Y1,Y2,Y3,Y4    : in  std_logic_vector(n-1 downto 0);
	I              : in  std_logic_vector(7   downto 0);
	X              : out std_logic_vector(n-1 downto 0)
	);
end Selector_X;

architecture Multiplexor of Selector_X is
begin
	process(XK,X1,X2,X3,X4,Y1,Y2,Y3,Y4,I)
	begin
		case I is
			when "00000000" => X <= XK;
			when "00000001" => X <= X1;
			when "00000010" => X <= X2;
			when "00000011" => X <= X3;
			when "00000100" => X <= X4;
			when "00000101" => X <= Y1;
			when "00000110" => X <= Y2;
			when "00000111" => X <= Y3;
			when "00001000" => X <= Y4;
			when others     => X <= (others => '0');
		end case;
	end process;
end Multiplexor;