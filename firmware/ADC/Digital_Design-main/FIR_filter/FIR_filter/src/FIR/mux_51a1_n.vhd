
library ieee;
use ieee.std_logic_1164.all;

entity mux_51a1_n is
    generic(
        n : integer := 10
    );
    port(
        x0 : in std_logic_vector(n-1 downto 0);
        x1 : in std_logic_vector(n-1 downto 0);
        x2 : in std_logic_vector(n-1 downto 0);
        x3 : in std_logic_vector(n-1 downto 0);
        x4 : in std_logic_vector(n-1 downto 0);
        x5 : in std_logic_vector(n-1 downto 0);
        x6 : in std_logic_vector(n-1 downto 0);
        x7 : in std_logic_vector(n-1 downto 0);
        x8 : in std_logic_vector(n-1 downto 0);
        x9 : in std_logic_vector(n-1 downto 0);
        x10 : in std_logic_vector(n-1 downto 0);
        x11 : in std_logic_vector(n-1 downto 0);
        x12 : in std_logic_vector(n-1 downto 0);
        x13 : in std_logic_vector(n-1 downto 0);
        x14 : in std_logic_vector(n-1 downto 0);
        x15 : in std_logic_vector(n-1 downto 0);
        x16 : in std_logic_vector(n-1 downto 0);
        x17 : in std_logic_vector(n-1 downto 0);
        x18 : in std_logic_vector(n-1 downto 0);
        x19 : in std_logic_vector(n-1 downto 0);
        x20 : in std_logic_vector(n-1 downto 0);
        x21 : in std_logic_vector(n-1 downto 0);
        x22 : in std_logic_vector(n-1 downto 0);
        x23 : in std_logic_vector(n-1 downto 0);
        x24 : in std_logic_vector(n-1 downto 0);
        x25 : in std_logic_vector(n-1 downto 0);
        x26 : in std_logic_vector(n-1 downto 0);
        x27 : in std_logic_vector(n-1 downto 0);
        x28 : in std_logic_vector(n-1 downto 0);
        x29 : in std_logic_vector(n-1 downto 0);
        x30 : in std_logic_vector(n-1 downto 0);
        x31 : in std_logic_vector(n-1 downto 0);
        x32 : in std_logic_vector(n-1 downto 0);
        x33 : in std_logic_vector(n-1 downto 0);
        x34 : in std_logic_vector(n-1 downto 0);
        x35 : in std_logic_vector(n-1 downto 0);
        x36 : in std_logic_vector(n-1 downto 0);
        x37 : in std_logic_vector(n-1 downto 0);
        x38 : in std_logic_vector(n-1 downto 0);
        x39 : in std_logic_vector(n-1 downto 0);
        x40 : in std_logic_vector(n-1 downto 0);
        x41 : in std_logic_vector(n-1 downto 0);
        x42 : in std_logic_vector(n-1 downto 0);
        x43 : in std_logic_vector(n-1 downto 0);
        x44 : in std_logic_vector(n-1 downto 0);
        x45 : in std_logic_vector(n-1 downto 0);
        x46 : in std_logic_vector(n-1 downto 0);
        x47 : in std_logic_vector(n-1 downto 0);
        x48 : in std_logic_vector(n-1 downto 0);
        x49 : in std_logic_vector(n-1 downto 0);
		x50 : in std_logic_vector(n-1 downto 0);

        s : in std_logic_vector(5 downto 0);
        y : out std_logic_vector(n-1 downto 0)
    );
end mux_51a1_n;

architecture combinacional of mux_51a1_n is
begin
    process (s, x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45, x46, x47, x48, x49, x50)
    begin
        case s is
            when "000000" => y <= x50;
            when "000001" => y <= x49;
            when "000010" => y <= x48;
            when "000011" => y <= x47;
            when "000100" => y <= x46;
            when "000101" => y <= x45;
            when "000110" => y <= x44;
            when "000111" => y <= x43;
            when "001000" => y <= x42;
            when "001001" => y <= x41;
            when "001010" => y <= x40;
            when "001011" => y <= x39;
            when "001100" => y <= x38;
            when "001101" => y <= x37;
            when "001110" => y <= x36;
            when "001111" => y <= x35;
            when "010000" => y <= x34;
            when "010001" => y <= x33;
            when "010010" => y <= x32;
            when "010011" => y <= x31;
            when "010100" => y <= x30;
            when "010101" => y <= x29;
            when "010110" => y <= x28;
            when "010111" => y <= x27;
            when "011000" => y <= x26;
            when "011001" => y <= x25;
            when "011010" => y <= x24;
            when "011011" => y <= x23;
            when "011100" => y <= x22;
            when "011101" => y <= x21;
            when "011110" => y <= x20;
            when "011111" => y <= x19;
            when "100000" => y <= x18;
            when "100001" => y <= x17;
            when "100010" => y <= x16;
            when "100011" => y <= x15;
            when "100100" => y <= x14;
            when "100101" => y <= x13;
            when "100110" => y <= x12;
            when "100111" => y <= x11;
            when "101000" => y <= x10;
            when "101001" => y <= x9;
            when "101010" => y <= x8;
            when "101011" => y <= x7;
            when "101100" => y <= x6;
            when "101101" => y <= x5;
            when "101110" => y <= x4;
            when "101111" => y <= x3;
            when "110000" => y <= x2;
            when "110001" => y <= x1;
			when "110010" => y <= x0;

            when others => y <= (others => '0');
        end case;
    end process;
end combinacional;
