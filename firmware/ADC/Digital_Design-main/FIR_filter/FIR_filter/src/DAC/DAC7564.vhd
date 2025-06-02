library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity DAC7564 is
	
	generic(	
	n :	integer := 12 
	);
	
	port(	
	RST : 	in std_logic;
	CLK : 	in std_logic;
	value	: 	in std_logic_vector(n-1 downto 0);
	--chan	: 	in std_logic_vector(1 downto 0);	
	start 	: 	in std_logic;
	busy 	: 	out std_logic;
	--enable 	: 	out std_logic;
	CS 		: 	out std_logic;
	SCLK 	: 	out std_logic;
	MOSI	: 	out std_logic	
	);	
	
end DAC7564;

architecture fsm of DAC7564 is

component spi_master IS
  GENERIC(
  	data_length : INTEGER := 24;     --data length in bits
  	cpol    : STD_LOGIC := '1';  									--clock polarity mode
  	cpha    : STD_LOGIC := '0'  									--clock phase mode
	);
  PORT(
  	reset_n : IN     STD_LOGIC;                             --asynchronous active low reset
  	clk     : IN     STD_LOGIC;                             --system clock
    enable  : IN     STD_LOGIC;                             --initiate communication
    --miso    : IN     STD_LOGIC;                             --master in slave out
    sclk    : OUT    STD_LOGIC;                             --spi clock
    ss_n    : OUT    STD_LOGIC;                             --slave select
    mosi    : OUT    STD_LOGIC;                             --master out slave in
    busy    : OUT    STD_LOGIC;                             --master busy signal
    tx		: IN     STD_LOGIC_VECTOR(data_length-1 DOWNTO 0)  --data to transmit
    --rx	    : OUT    STD_LOGIC_VECTOR(data_length-1 DOWNTO 0) --data received
	);
	
end component;


signal dato : std_logic_vector(23 downto 0);


begin 	
	
	--enable <='0';
	
	dato(23 downto 16) <="00010000";
	dato(15 downto 4) <= value;
	dato(3 downto 0) <="1111";
	
	sc0 : spi_master port map(RST,CLK,start,SCLK,CS,MOSI,busy,dato);
	
end fsm;