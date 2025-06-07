library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity AD9201 is
	
	generic(	
	n :	integer := 16
	);
	
	port(
	
	--debug
	
	
	
	
	------------------------------------------
	
	
	
	RST : 			in std_logic;
	CLK : 			in std_logic;
	X	: 				in std_logic_vector(9 downto 0);
	D	: 				out std_logic_vector(9 downto 0);
	adc_clk : 		out std_logic;
	pmt : 	in std_logic;
	int_rst : 		out std_logic;
	data_valid : 	out std_logic;
	n_sample	: 	out std_logic_vector(n-1 downto 0);
	n_pmt	: 	out std_logic_vector(n-1 downto 0)
	

	);	
	
end AD9201;

architecture fsm of AD9201 is 

--------------------------------------------------------------------------------------

component contador_bt_sample is
	
	generic(
	
	n :	integer := 11;
	c : integer := 624
	
	);
	
	port(
	
	RST,CLK : in std_logic;
	
	CLR : in std_logic;
	
	BT : out std_logic
	
	);
	
	
end component;

component contador_bt_window is
	
	generic(
	
	n :	integer := 6;
	c : integer := 25
	
	);
	
	port(
	
	RST,CLK : in std_logic;
	
	CLR : in std_logic;
	
	BT : out std_logic
	
	);
	
end component;

component contador_bt_int is
	
	generic(
	
	n :	integer := 6;
	c : integer := 22
	
	);
	
	port(
	
	RST,CLK : in std_logic;
	
	CLR : in std_logic;
	
	BT : out std_logic
	
	);
	
end component;

component contador_bt_n is
	
	generic(
	
	n :	integer := 3;
	c : integer := 3
	
	);
	
	port(
	
	RST,CLK : in std_logic;
	
	CLR : in std_logic;
	
	BT : out std_logic
	
	);

end component;

component fsm_toggle is

	generic(
	
	n :	integer := 4
	
	);

	port(
	
	RST,CLK : in std_logic;
	
	pmt : in std_logic;
	
	bt_sample : in std_logic;
	bt_window : in std_logic;
	bt_int : in std_logic;
	bt_n : in std_logic;
	
	clr_sample : out std_logic;
	clr_window : out std_logic;
	clr_int : out std_logic;
	clr_n : out std_logic;
	
	adc_clk : out std_logic;
	int_rst : out std_logic;
	data_valid : out std_logic;
	sample_c : out std_logic
	
	);
	
end component;

component count IS
  GENERIC (width: POSITIVE := 16);
  PORT (
    clk   : IN std_logic;
    reset : IN std_logic;
    enable: IN std_logic;
    count : OUT std_logic_vector(width-1 DOWNTO 0)
  );

end component;


component FFD is

port(
RST, CLK, D : in std_logic;
Q : out std_logic
);

end component;

component one_shot	is
	
	port(
	
	RST, CLK : in std_logic;
	
	x : in std_logic;
	y : out std_logic
	
	);
	
end component;

component registro_paralelo_multifuncion is
	
	generic(
	
	n : integer := 10
	
	);
	
	port(
	
	Din : in std_logic_vector(n-1 downto 0);   
	
	OPR : in std_logic_vector(1 downto 0);
	
	RST,CLK : in std_logic; 
	
	Qout : out std_logic_vector(n-1 downto 0)	
	
	);
	
end component;

--------------------------------------------------------------------------------------

signal  s_int_rst, s_adc_clk, s_data_valid, clr_sample, bt_sample, clr_window, bt_window, clr_int, bt_int, clr_n, bt_n, sample_c, ffd_pmt, s_pmt, pmt_one_shot : std_logic := '0';
signal datos : std_logic_vector(9 downto 0) := "0000000000";
signal s_datos : std_logic_vector(9 downto 0) := "0000000000";

begin 
	
	int_rst <= s_int_rst;
	adc_clk <= s_adc_clk;
	data_valid <= s_data_valid;
	
	datos <= X;
	
	D <= s_datos;
	
	sc0 : contador_bt_sample port map(RST, CLK, clr_sample, bt_sample);
	sc1 : contador_bt_window port map(RST, CLK, clr_window, bt_window);
	sc2 : contador_bt_int port map(RST, CLK, clr_int, bt_int);
	sc3 : contador_bt_n port map(RST, CLK, clr_n, bt_n);
	sc4 : fsm_toggle port map(RST, CLK, s_pmt, bt_sample, bt_window, bt_int, bt_n, clr_sample, clr_window, clr_int, clr_n, s_adc_clk, s_int_rst,s_data_valid,sample_c);
	sc5 : count port map(CLK, RST and (s_pmt), sample_c,n_sample);
	sc6 : count port map(CLK, RST, pmt_one_shot,n_pmt);
	sc7 : FFD port map(RST, CLK, ffd_pmt, s_pmt);
	sc8 : FFD port map(RST, CLK, pmt, ffd_pmt);
	sc9 : one_shot port map(RST, CLK, s_pmt, pmt_one_shot);
	sc10 : registro_paralelo_multifuncion port map (datos,"00", RST, CLK, s_datos);
	
	
end fsm;