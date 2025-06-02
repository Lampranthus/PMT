-- Test bench for Xilinx Spartan-3 RAM
--    2 ports, 1 clock, 1 read/write, 1 read

library	IEEE;
use IEEE.std_logic_1164.all;

entity TST_RAM_sp3_2p1c1rw1r is
	generic(
	m : integer := 8; -- Data bits
	n : integer := 2; -- Address bits
	k : integer := 4  -- Memory locations k=2**n
	);
end TST_RAM_sp3_2p1c1rw1r;

architecture Testbench of TST_RAM_sp3_2p1c1rw1r is

component RAM_sp3_2p1c1rw1r
	generic(
	m : integer := 8; -- Data bits
	n : integer := 2; -- Address bits
	k : integer := 4  -- Memory locations k=2**n
	);
	port(
	RAM_CLK : in  std_logic; -- Positive edge clock
	RAM_ENA : in  std_logic; -- Master enable
	RAM_WRE : in  std_logic; -- Write enable
	RAM_DWR : in  std_logic_vector(m-1 downto 0); -- Input write port
	RAM_ADA : in  std_logic_vector(n-1 downto 0); -- Read/write address A
	RAM_ADB : in  std_logic_vector(n-1 downto 0); -- Read address B
	RAM_RDA : out std_logic_vector(m-1 downto 0); -- Data read port A
	RAM_RDB : out std_logic_vector(m-1 downto 0)  -- Data read port B
	);
end	component;

signal RAM_CLK : std_logic; 
signal RAM_ENA : std_logic; 
signal RAM_WRE : std_logic; 
signal RAM_DWR : std_logic_vector(m-1 downto 0); 
signal RAM_ADA : std_logic_vector(n-1 downto 0);
signal RAM_ADB : std_logic_vector(n-1 downto 0);
signal RAM_RDA : std_logic_vector(m-1 downto 0);
signal RAM_RDB : std_logic_vector(m-1 downto 0); 

begin
	
	-- Device under test
	DUT01: RAM_sp3_2p1c1rw1r generic map(m,n,k) port map(RAM_CLK,RAM_ENA,RAM_WRE,RAM_DWR,RAM_ADA,RAM_ADB,RAM_RDA,RAM_RDB);
	
	-- Master clock at 10 MHz
	M_clock: process
	begin
		RAM_CLK <= '0';
		wait for 50 ns;
		RAM_CLK <= '1';
		wait for 50 ns;
	end process M_clock;
	
	-- RAM testing
	Testing: process
	begin
		RAM_ENA <= '0';        -- RAM disabled
		RAM_WRE <= '0';
		RAM_DWR <= "00000000";
		RAM_ADA <= "00";
		RAM_ADB	<= "00";
		wait for 100 ns;
		RAM_ENA <= '1';        -- RAM enabled
		RAM_WRE <= '1';	       -- Write enabled
		RAM_DWR <= "00001111"; -- Data to be written 0F
		RAM_ADA <= "00";	   -- Write port address 00
		RAM_ADB	<= "00";	   -- Read port address	 00
		wait for 100 ns;
		RAM_ENA <= '1';        -- RAM enabled
		RAM_WRE <= '1';		   -- Write enabled
		RAM_DWR <= "11110000"; -- Data to be written F0
		RAM_ADA <= "01";	   -- Write port address 01
		RAM_ADB	<= "00";	   -- Read port address  00
		wait for 100 ns;
		RAM_ENA <= '1';        -- RAM enabled
		RAM_WRE <= '1';		   -- Write enabled
		RAM_DWR <= "01011010"; -- Data to be written 5A
		RAM_ADA <= "10";	   -- Write port address 10
		RAM_ADB	<= "00";	   -- Read port address  00
		wait for 100 ns;
		RAM_ENA <= '1';        -- RAM enabled
		RAM_WRE <= '1';		   -- Write enabled
		RAM_DWR <= "10100101"; -- Data to be written A5
		RAM_ADA <= "11";	   -- Write port address 11
		RAM_ADB	<= "00";	   -- Read port address  00
		wait for 100 ns;
		RAM_ENA <= '0';        -- RAM disabled
		RAM_WRE <= '0';		   
		RAM_DWR <= "00000000"; 
		RAM_ADA <= "00";	   
		RAM_ADB	<= "00";	   
		wait for 100 ns;
		RAM_ENA <= '1';        -- RAM enabled
		RAM_WRE <= '0';		   -- Write disabled
		RAM_DWR <= "00000000";
		RAM_ADA <= "00";	   -- Read port address  00
		RAM_ADB	<= "11";	   -- Read port address  11
		wait for 100 ns;
		RAM_ENA <= '1';        -- RAM enabled
		RAM_WRE <= '0';		   -- Write disabled
		RAM_DWR <= "00000000";
		RAM_ADA <= "01";	   -- Read port address  01
		RAM_ADB	<= "10";	   -- Read port address  10
		wait for 100 ns;
		RAM_ENA <= '1';        -- RAM enabled
		RAM_WRE <= '0';		   -- Write disabled
		RAM_DWR <= "00000000";
		RAM_ADA <= "10";	   -- Read port address  10
		RAM_ADB	<= "01";	   -- Read port address  01
		wait for 100 ns;
		RAM_ENA <= '1';        -- RAM enabled
		RAM_WRE <= '0';		   -- Write disabled
		RAM_DWR <= "00000000";
		RAM_ADA <= "11";	   -- Read port address  11
		RAM_ADB	<= "00";	   -- Read port address  00
		wait for 100 ns;
		RAM_ENA <= '0';        -- RAM disabled
		RAM_WRE <= '0';		   
		RAM_DWR <= "00000000"; 
		RAM_ADA <= "00";	   
		RAM_ADB	<= "00";	   
		wait;
	end process Testing;
	
end Testbench;