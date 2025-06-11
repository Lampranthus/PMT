library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity AD9201 is
	
	generic(	
	n :	integer := 16
	);
	
	port(
	
	--debug
	
	debug_1 : 		out std_logic; 
	--int_debug : 		out std_logic; 
	
	------------------------------------------
	
	RST : 			in std_logic;
	CLK : 			in std_logic;
	X	: 				in std_logic_vector(9 downto 0);
	D	: 				out std_logic_vector(9 downto 0);
	adc_clk : 		out std_logic;
	start : 	in std_logic;
	stop : 	in std_logic;
	int_rst : 		out std_logic;
	
	tx_adc_axis_tdata	: 	out std_logic_vector(7 downto 0);
	tx_adc_axis_tvalid : 	out std_logic;
	tx_adc_axis_tready : 	in std_logic;
	tx_adc_axis_tlast : 	out std_logic;
	tx_adc_axis_tuser : 	out std_logic
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
	c : integer := 23
	
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

component contador_adhb_n is
	generic(
		n : integer :=16
	);
	port(
		RST,CLK : in std_logic;
		opc : in std_logic_vector(1 downto 0);
		Q : out std_logic_vector(n-1 downto 0)
	);
	
end component;

component fsm_pmt	is
	
	port(
	
	RST, CLK : in std_logic;
	
	start_sync : in std_logic;
	stop_sync : in std_logic;
	pmt : out std_logic
	
	);
	
end component;

component fsm_axis is

	generic(
	
	n :	integer := 4
	
	);

	port(
	
	RST,CLK : in std_logic;
	
	data_valid : in std_logic;
	tready : in std_logic;

	
	tvalid : out std_logic;
	tlast : out std_logic;
	tuser : out std_logic;
	d_mux : out std_logic_vector(2 downto 0)
	
	);
	
end component;

component mux_6a1_n is
	generic(
	n	:	integer := 8 		--n-bits
	);
	port(
	x0,x1,x2,x3,x4,x5	: in std_logic_vector(n-1 downto 0);
	s			: in std_logic_vector(2 downto 0);
	y			: out std_logic_vector(n-1 downto 0)
	);
end component;
--------------------------------------------------------------------------------------

signal  s_int_rst, s_adc_clk, s_data_valid, clr_sample, bt_sample, clr_window, bt_window, clr_int, bt_int, clr_n, bt_n, sample_c, ffd_pmt, s_pmt, pmt_one_shot, start_sync, stop_sync, pmt, start_ffd, stop_ffd, start_one_shot, stop_one_shot : std_logic;

signal s_datos : std_logic_vector(9 downto 0);
signal n_sample : std_logic_vector(15 downto 0);
signal n_pmt : std_logic_vector(15 downto 0);
signal d_mux : std_logic_vector(2 downto 0);

begin 
	
	int_rst <= s_int_rst;
	adc_clk <= s_adc_clk;
	
	D <= s_datos;
	
	debug_1 <= pmt;
	--int_debug <= s_adc_clk;
	
	sc0 : contador_bt_sample port map(RST, CLK, clr_sample, bt_sample);
	sc1 : contador_bt_window port map(RST, CLK, clr_window, bt_window);
	sc2 : contador_bt_int port map(RST, CLK, clr_int, bt_int);
	sc3 : contador_bt_n port map(RST, CLK, clr_n, bt_n);
	sc4 : fsm_toggle port map(RST, CLK, pmt, bt_sample, bt_window, bt_int, bt_n, clr_sample, clr_window, clr_int, clr_n, s_adc_clk, s_int_rst,s_data_valid,sample_c);
	sc5 : contador_adhb_n port map(RST, CLK, (not pmt) & sample_c,n_sample);
	sc6 : contador_adhb_n port map(RST, CLK, '0' & start_one_shot,n_pmt);
	sc7 : registro_paralelo_multifuncion port map (X,"00", RST, CLK, s_datos);
	sc8 : fsm_pmt port map (RST,CLK,start_one_shot,stop_one_shot,pmt);
	sc9 : one_shot port map(RST, CLK, start, start_one_shot);
	sc10 : one_shot port map(RST, CLK, stop, stop_one_shot);
	sc11 : fsm_axis port map(RST, CLK, s_data_valid, tx_adc_axis_tready, tx_adc_axis_tvalid, tx_adc_axis_tlast, tx_adc_axis_tuser, d_mux);
	sc12 : mux_6a1_n port map(n_pmt(15 downto 8), n_pmt(7 downto 0), n_sample(15 downto 8), n_sample(7 downto 0), "000000" & s_datos(9 downto 8), s_datos(7 downto 0), d_mux,tx_adc_axis_tdata);
	
	
end fsm;