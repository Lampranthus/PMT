library	IEEE;
use IEEE.std_logic_1164.all;

entity TST_FIR_7 is
	generic(
	n : integer := 18;
	m : integer := 18
	);
end TST_FIR_7;

architecture Prueba of TST_FIR_7 is

component FIR_7
	generic(
	n : integer := 18;
	m : integer := 18
	);
	port(
	RST : in  std_logic;
	CLK : in  std_logic;
	STF : in  std_logic;
	EOF : out std_logic;
	XK  : in  std_logic_vector(n-1 downto 0);
	YK  : out std_logic_vector(n-1 downto 0)
	);
end	component;

signal RST, CLK : std_logic;
signal STF, EOF : std_logic;
signal XK, YK   : std_logic_vector(n-1 downto 0);

begin
	
	-- Dispositivo bajo prueba
	DUT : FIR_7 generic map(n,m) port map(RST,CLK,STF,EOF,XK,YK);
	
	-- Inicializacion
	Reset: process
	begin
		RST <= '1';
		wait for 100 ns;
		RST <= '0';
		wait;
	end process Reset;
	
	-- Reloj maestro de 50 MHz
	Reloj: process
	begin
		CLK <= '0';
		wait for 10 ns;
		CLK <= '1';
		wait for 10 ns;
	end process Reloj;
	
	-- Frecuencia de muestreo de 1 KHz
	Muestreo: process
	begin
		STF <= '1';
		wait for 20 ns;
		STF <= '0';
		wait for 980 ns;
	end process Muestreo;
	
	-- Entrada X como impulso unitario
	-- Para modificar a escalon unitario recompile el archivo con las lineas
	-- 70 y 71 en forma de comentario
	Impulso: process
	begin
		XK <= "010000000000000000";
		wait for 200 ns;
		XK <= "000000000000000000";
		wait;
	end process Impulso;
	
end Prueba;	