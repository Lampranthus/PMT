-- RAM block for Xilinx Spartan-3
--    2 ports, 1 clock, 1 read/write, 1 read

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity RAM_sp3_2p1c1rw1r is
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
end RAM_sp3_2p1c1rw1r;

architecture Xilinx_block of RAM_sp3_2p1c1rw1r is  
-- Register width definition
subtype Register_width is std_logic_vector(m-1 downto 0);
-- Memory as an array of registers
type    Memory is array(natural range <>) of Register_width;
-- Memory size
signal  RAM_MEM : Memory(0 to k-1);
begin	
	process (RAM_CLK)
	begin
		-- All processes synchronized to master clock
   		if (RAM_CLK'event and RAM_CLK = '1') then
			-- All access enabled by RAM_ENA
      		if (RAM_ENA = '1') then	
				-- Write enabled by RAM_WRE
         		if (RAM_WRE = '1') then
            		RAM_MEM(conv_integer(RAM_ADA)) <= RAM_DWR;
         		end if;
         	RAM_RDA <= RAM_MEM(conv_integer(RAM_ADA));
         	RAM_RDB <= RAM_MEM(conv_integer(RAM_ADB));
      		end if;
   		end if;
	end process;
end Xilinx_block;