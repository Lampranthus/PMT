
library ieee;
use ieee.std_logic_1164.all;

entity mux_64a1_n is
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

        s : in std_logic_vector(5 downto 0);
        y : out std_logic_vector(n-1 downto 0)
    );
end mux_64a1_n;

architecture combinacional of mux_64a1_n is
begin
    process (s, x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31, x32, x33, x34, x35, x36, x37, x38, x39, x40, x41, x42, x43, x44, x45, x46, x47, x48, x49)
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

            when others => y <= (others => '0');
        end case;
    end process;
end combinacional;

signal M, X0, X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14, X15, X16, X17, X18, X19, X20, X21, X22, X23, X24, X25, X26, X27, X28, X29, X30, X31, X32, X33, X34, X35, X36, X37, X38, X39, X40, X41, X42, X43, X44, X45, X46, X47, X48, X49 : std_logic_vector(9 downto 0);

    sc0 : mux_64a1_n port map(X0, X1, X2, X3, X4, X5, X6, X7, X8, X9, X10, X11, X12, X13, X14, X15, X16, X17, X18, X19, X20, X21, X22, X23, X24, X25, X26, X27, X28, X29, X30, X31, X32, X33, X34, X35, X36, X37, X38, X39, X40, X41, X42, X43, X44, X45, X46, X47, X48, X49, I, M);

    sc3 : registro_paralelo port map(RST,CLK,X0,EOF,X1);
    sc4 : registro_paralelo port map(RST,CLK,X1,EOF,X2);
    sc5 : registro_paralelo port map(RST,CLK,X2,EOF,X3);
    sc6 : registro_paralelo port map(RST,CLK,X3,EOF,X4);
    sc7 : registro_paralelo port map(RST,CLK,X4,EOF,X5);
    sc8 : registro_paralelo port map(RST,CLK,X5,EOF,X6);
    sc9 : registro_paralelo port map(RST,CLK,X6,EOF,X7);
    sc10 : registro_paralelo port map(RST,CLK,X7,EOF,X8);
    sc11 : registro_paralelo port map(RST,CLK,X8,EOF,X9);
    sc12 : registro_paralelo port map(RST,CLK,X9,EOF,X10);
    sc13 : registro_paralelo port map(RST,CLK,X10,EOF,X11);
    sc14 : registro_paralelo port map(RST,CLK,X11,EOF,X12);
    sc15 : registro_paralelo port map(RST,CLK,X12,EOF,X13);
    sc16 : registro_paralelo port map(RST,CLK,X13,EOF,X14);
    sc17 : registro_paralelo port map(RST,CLK,X14,EOF,X15);
    sc18 : registro_paralelo port map(RST,CLK,X15,EOF,X16);
    sc19 : registro_paralelo port map(RST,CLK,X16,EOF,X17);
    sc20 : registro_paralelo port map(RST,CLK,X17,EOF,X18);
    sc21 : registro_paralelo port map(RST,CLK,X18,EOF,X19);
    sc22 : registro_paralelo port map(RST,CLK,X19,EOF,X20);
    sc23 : registro_paralelo port map(RST,CLK,X20,EOF,X21);
    sc24 : registro_paralelo port map(RST,CLK,X21,EOF,X22);
    sc25 : registro_paralelo port map(RST,CLK,X22,EOF,X23);
    sc26 : registro_paralelo port map(RST,CLK,X23,EOF,X24);
    sc27 : registro_paralelo port map(RST,CLK,X24,EOF,X25);
    sc28 : registro_paralelo port map(RST,CLK,X25,EOF,X26);
    sc29 : registro_paralelo port map(RST,CLK,X26,EOF,X27);
    sc30 : registro_paralelo port map(RST,CLK,X27,EOF,X28);
    sc31 : registro_paralelo port map(RST,CLK,X28,EOF,X29);
    sc32 : registro_paralelo port map(RST,CLK,X29,EOF,X30);
    sc33 : registro_paralelo port map(RST,CLK,X30,EOF,X31);
    sc34 : registro_paralelo port map(RST,CLK,X31,EOF,X32);
    sc35 : registro_paralelo port map(RST,CLK,X32,EOF,X33);
    sc36 : registro_paralelo port map(RST,CLK,X33,EOF,X34);
    sc37 : registro_paralelo port map(RST,CLK,X34,EOF,X35);
    sc38 : registro_paralelo port map(RST,CLK,X35,EOF,X36);
    sc39 : registro_paralelo port map(RST,CLK,X36,EOF,X37);
    sc40 : registro_paralelo port map(RST,CLK,X37,EOF,X38);
    sc41 : registro_paralelo port map(RST,CLK,X38,EOF,X39);
    sc42 : registro_paralelo port map(RST,CLK,X39,EOF,X40);
    sc43 : registro_paralelo port map(RST,CLK,X40,EOF,X41);
    sc44 : registro_paralelo port map(RST,CLK,X41,EOF,X42);
    sc45 : registro_paralelo port map(RST,CLK,X42,EOF,X43);
    sc46 : registro_paralelo port map(RST,CLK,X43,EOF,X44);
    sc47 : registro_paralelo port map(RST,CLK,X44,EOF,X45);
    sc48 : registro_paralelo port map(RST,CLK,X45,EOF,X46);
    sc49 : registro_paralelo port map(RST,CLK,X46,EOF,X47);
    sc50 : registro_paralelo port map(RST,CLK,X47,EOF,X48);
    sc51 : registro_paralelo port map(RST,CLK,X48,EOF,X49);
    sc52 : registro_paralelo port map(RST,CLK,X49,EOF,M);
